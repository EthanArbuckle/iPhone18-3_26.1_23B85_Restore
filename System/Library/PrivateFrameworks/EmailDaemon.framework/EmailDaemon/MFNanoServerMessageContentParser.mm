@interface MFNanoServerMessageContentParser
- (BOOL)_parseMimeParts:(id)a3 messageBody:(id)a4 attributedString:(id)a5 maxLength:(unint64_t)a6 maxImageWidth:(double)a7 maxImageAttachments:(unint64_t)a8 shouldTryAlternatives:(BOOL)a9 urlsForValidation:(id)a10 nanoAttachmentsList:(id)a11 attachmentURLsToLoad:(id)a12 usingAlternativePart:(BOOL *)a13 partiallyLoaded:(BOOL *)a14;
- (MFNanoServerMessageContentParser)init;
- (id)_attachmentForURL:(id)a3 mimePart:(id)a4;
- (id)_nanoAttachmentForURL:(id)a3 mimePart:(id)a4;
- (id)_parseStringMimePart:(id)a3 maxLength:(unint64_t)a4;
- (id)_parseTextAttachmentMimePart:(id)a3 messageBody:(id)a4 maxImageAttachments:(unint64_t)a5 nanoAttachmentsList:(id)a6 attachmentURLsToLoad:(id)a7;
- (id)_parseWebMessageDocumentMimePart:(id)a3 messageBody:(id)a4 maxLength:(unint64_t)a5 maxImageWidth:(double)a6 maxImageAttachments:(unint64_t)a7 shouldTryAlternatives:(BOOL)a8 urlsForValidation:(id)a9 finalNanoAttachmentsList:(id)a10 finalAttachmentsURLsToLoad:(id)a11 usingAlternativePart:(BOOL *)a12 partiallyLoaded:(BOOL *)a13;
- (id)parseMessageWithLoadingContextEvent:(id)a3 maxImageWidth:(double)a4 messageBody:(id *)a5 attachmentURLsToLoad:(id *)a6;
- (void)_parseAttachmentsFromMimePart:(id)a3 messageBody:(id)a4 maxImageAttachments:(unint64_t)a5 nanoAttachmentsList:(id)a6 attachmentURLsToLoad:(id)a7;
- (void)dealloc;
- (void)parseMessage:(id)a3 maxImageWidth:(double)a4 completionBlock:(id)a5;
@end

@implementation MFNanoServerMessageContentParser

- (void)dealloc
{
  [(EFCancelable *)self->_cancelable cancel];
  v3.receiver = self;
  v3.super_class = MFNanoServerMessageContentParser;
  [(MFNanoServerMessageContentParser *)&v3 dealloc];
}

- (MFNanoServerMessageContentParser)init
{
  v6.receiver = self;
  v6.super_class = MFNanoServerMessageContentParser;
  v2 = [(MFNanoServerMessageContentParser *)&v6 init];
  if (v2)
  {
    v3 = +[NSURLSession sharedSession];
    htmlContentURLSession = v2->_htmlContentURLSession;
    v2->_htmlContentURLSession = v3;
  }

  return v2;
}

- (void)parseMessage:(id)a3 maxImageWidth:(double)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(EFCancelable *)self->_cancelable cancel];
  cancelable = self->_cancelable;
  self->_cancelable = 0;

  v11 = [MFMessageLoadingContext alloc];
  v12 = sub_100027C70();
  v13 = [v12 defaultAttachmentManager];
  v14 = [v11 initWithMessage:v8 attachmentManager:v13];
  loadingContext = self->_loadingContext;
  self->_loadingContext = v14;

  v16 = [MFNanoServerMessageContentURLProtocol URLForLoadingContext:self->_loadingContext];
  v17 = self->_loadingContext;
  if (!v17)
  {
    (*(v9 + 2))(v9, 0, 0, 0);
    v17 = self->_loadingContext;
  }

  [(MFMessageLoadingContext *)v17 load:0];
  objc_initWeak(&location, self);
  v18 = self->_loadingContext;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008FA88;
  v23[3] = &unk_100159A58;
  objc_copyWeak(v26, &location);
  v26[1] = *&a4;
  v19 = v16;
  v24 = v19;
  v20 = v9;
  v25 = v20;
  v21 = [(MFMessageLoadingContext *)v18 addLoadObserver:v23];
  v22 = self->_cancelable;
  self->_cancelable = v21;

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (id)parseMessageWithLoadingContextEvent:(id)a3 maxImageWidth:(double)a4 messageBody:(id *)a5 attachmentURLsToLoad:(id *)a6
{
  v10 = a3;
  v11 = [v10 context];
  v12 = [v11 message];
  v26 = [v12 messageSize];
  if ([v10 hasLoadedCompleteBody])
  {
    v25 = [v10 content];
    *a5 = [v11 messageBody];
    v28 = 0;
    v13 = objc_alloc_init(NSMutableAttributedString);
    v27 = objc_alloc_init(NSMutableArray);
    v14 = objc_alloc_init(NSMutableSet);
    *a6 = 0;
    v15 = [(MFNanoServerMessageContentParser *)self _parseMimeParts:v25 messageBody:*a5 attributedString:v13 maxLength:NNMKHTMLParserMaxContentTextLength maxImageWidth:NNMKHTMLParserMaxImageAttachmentsToSync maxImageAttachments:1 shouldTryAlternatives:a4 urlsForValidation:0 nanoAttachmentsList:v27 attachmentURLsToLoad:v14 usingAlternativePart:&v28 + 1 partiallyLoaded:&v28];
    v16 = objc_alloc_init(NNMKMessageContent);
    v17 = [v12 mf_externalReference];
    v18 = [v17 absoluteString];
    [v16 setMessageId:v18];

    v19 = [v16 messageId];
    LODWORD(v18) = v19 == 0;

    if (v18)
    {
      v20 = MFLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [v12 messageID];
        objc_claimAutoreleasedReturnValue();
        [v12 externalID];
        objc_claimAutoreleasedReturnValue();
        sub_1000D5060();
      }
    }

    if (v15)
    {
      [v16 setMainAlternativeValid:(v28 & 0x100) == 0];
      if (objc_opt_respondsToSelector())
      {
        [v16 setHasTextData:{objc_msgSend(v13, "length") != 0}];
      }

      v21 = [NNMKContentAttributedStringHTMLParser trimAttributedString:v13];
      v22 = [NSKeyedArchiver archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
      [v16 setTextData:v22];

      [v16 setAttachments:v27];
      [v16 setPartiallyLoaded:v28];
      v23 = v14;
      *a6 = v14;
    }
  }

  else
  {
    v16 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v16 setOriginalContentSize:v26];
  }

  return v16;
}

- (BOOL)_parseMimeParts:(id)a3 messageBody:(id)a4 attributedString:(id)a5 maxLength:(unint64_t)a6 maxImageWidth:(double)a7 maxImageAttachments:(unint64_t)a8 shouldTryAlternatives:(BOOL)a9 urlsForValidation:(id)a10 nanoAttachmentsList:(id)a11 attachmentURLsToLoad:(id)a12 usingAlternativePart:(BOOL *)a13 partiallyLoaded:(BOOL *)a14
{
  v34 = a9;
  v17 = a3;
  v39 = a4;
  v18 = a5;
  v35 = a10;
  v38 = a11;
  v19 = a12;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v20)
  {
    LOBYTE(v30) = 1;
    goto LABEL_23;
  }

  v21 = *v43;
  do
  {
    v22 = 0;
    do
    {
      if (*v43 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v42 + 1) + 8 * v22);
      v24 = [v18 length];
      v25 = [v19 count];
      v26 = objc_autoreleasePoolPush();
      objc_opt_class();
      v27 = a8 - v25;
      if (objc_opt_isKindOfClass())
      {
        v28 = [(MFNanoServerMessageContentParser *)self _parseTextAttachmentMimePart:v23 messageBody:v39 maxImageAttachments:v27 nanoAttachmentsList:v38 attachmentURLsToLoad:v19];
        [v18 appendAttributedString:v28];
LABEL_13:
        v30 = 1;
        goto LABEL_14;
      }

      objc_opt_class();
      v29 = a6 - v24;
      if (objc_opt_isKindOfClass())
      {
        v28 = [(MFNanoServerMessageContentParser *)self _parseStringMimePart:v23 maxLength:v29];
        [v18 appendAttributedString:v28];
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 1;
        goto LABEL_15;
      }

      v28 = [(MFNanoServerMessageContentParser *)self _parseWebMessageDocumentMimePart:v23 messageBody:v39 maxLength:v29 maxImageWidth:v27 maxImageAttachments:v34 shouldTryAlternatives:v35 urlsForValidation:a7 finalNanoAttachmentsList:v38 finalAttachmentsURLsToLoad:v19 usingAlternativePart:a13 partiallyLoaded:a14];
      v30 = v28 != 0;
      if (v28)
      {
        [v18 appendAttributedString:v28];
        goto LABEL_13;
      }

LABEL_14:

LABEL_15:
      objc_autoreleasePoolPop(v26);
      if (!v30 || *a14)
      {
        goto LABEL_23;
      }

      v22 = v22 + 1;
    }

    while (v20 != v22);
    v31 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    v20 = v31;
    LOBYTE(v30) = 1;
  }

  while (v31);
LABEL_23:

  v32 = [v39 topLevelPart];
  -[MFNanoServerMessageContentParser _parseAttachmentsFromMimePart:messageBody:maxImageAttachments:nanoAttachmentsList:attachmentURLsToLoad:](self, "_parseAttachmentsFromMimePart:messageBody:maxImageAttachments:nanoAttachmentsList:attachmentURLsToLoad:", v32, v39, a8 - [v19 count], v38, v19);

  return v30;
}

- (id)_parseTextAttachmentMimePart:(id)a3 messageBody:(id)a4 maxImageAttachments:(unint64_t)a5 nanoAttachmentsList:(id)a6 attachmentURLsToLoad:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v12 mimePart];
  [v16 setMimeBody:v13];

  v17 = sub_100027C70();
  v18 = [v17 defaultAttachmentManager];
  v19 = [v18 attachmentForTextAttachment:v12 error:0];

  v20 = [v19 contentID];
  if (v20)
  {
    if ([v19 nanoAttachmentType] == 5)
    {
      [NNMKContentAttributedStringHTMLParser imageAttachmentAttributedStringWithContentId:v20 imageSize:0 mergingAttributes:CGSizeZero.width, CGSizeZero.height];
    }

    else
    {
      [NNMKContentAttributedStringHTMLParser attachmentAttributedStringWithContentId:v20 mergingAttributes:0];
    }
    v21 = ;
    v22 = [v12 mimePart];
    [(MFNanoServerMessageContentParser *)self _parseAttachmentsFromMimePart:v22 messageBody:v13 maxImageAttachments:a5 nanoAttachmentsList:v14 attachmentURLsToLoad:v15];
  }

  else
  {
    v21 = [[NSAttributedString alloc] initWithString:&stru_10015BEC8];
  }

  return v21;
}

- (id)_parseStringMimePart:(id)a3 maxLength:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length] <= a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 substringToIndex:a4];
  }

  v7 = v6;
  v8 = [[NSAttributedString alloc] initWithString:v6];

  return v8;
}

- (id)_parseWebMessageDocumentMimePart:(id)a3 messageBody:(id)a4 maxLength:(unint64_t)a5 maxImageWidth:(double)a6 maxImageAttachments:(unint64_t)a7 shouldTryAlternatives:(BOOL)a8 urlsForValidation:(id)a9 finalNanoAttachmentsList:(id)a10 finalAttachmentsURLsToLoad:(id)a11 usingAlternativePart:(BOOL *)a12 partiallyLoaded:(BOOL *)a13
{
  v14 = a8;
  v17 = a3;
  v53 = a4;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v48 = [v17 htmlData];
  v21 = [v17 preferredCharacterSet];
  LODWORD(a4) = MFEncodingForCharset();

  v22 = CFStringConvertEncodingToNSStringEncoding(a4);
  v47 = MFCreateStringWithData();
  if (!self->_htmlParser)
  {
    v23 = objc_alloc_init(NNMKContentAttributedStringHTMLParser);
    htmlParser = self->_htmlParser;
    self->_htmlParser = v23;
  }

  v25 = self->_htmlParser;
  if (v18)
  {
    v26 = [(NNMKContentAttributedStringHTMLParser *)v25 parseHTMLBody:v47 encoding:v22 maxLength:a5 maxImageWidth:a13 partiallyParsed:0 imageAttachmentsLoaded:v18 urlsForValidation:a6];
    if (v26)
    {
LABEL_5:
      v27 = [v17 mimePart];
      [(MFNanoServerMessageContentParser *)self _parseAttachmentsFromMimePart:v27 messageBody:v53 maxImageAttachments:a7 nanoAttachmentsList:v19 attachmentURLsToLoad:v20];

      goto LABEL_25;
    }
  }

  else
  {
    v57[0] = 0;
    v28 = [(NNMKContentAttributedStringHTMLParser *)v25 parseHTMLBody:v47 encoding:v22 maxLength:a5 maxImageWidth:a13 partiallyParsed:0 imageAttachmentsLoaded:v57 urlsFound:a6];
    v18 = v57[0];
    v26 = v28;
    if (v28)
    {
      goto LABEL_5;
    }
  }

  if (v14)
  {
    v44 = v17;
    v45 = v20;
    v46 = v19;
    v49 = v18;
    v29 = [v17 mimePart];
    while (1)
    {
      v30 = [v29 parentPart];

      if (!v30)
      {
        break;
      }

      v31 = [v30 type];
      if ([v31 isEqualToString:@"multipart"])
      {
        v32 = [v30 subtype];
        v33 = [v32 isEqualToString:@"alternative"];

        v29 = v30;
        if (v33)
        {
          break;
        }
      }

      else
      {

        v29 = v30;
      }
    }

    v54 = 0;
    v34 = [v30 numberOfAlternatives] - 2;
    while (1)
    {
      if ((v34 + 1) <= 1)
      {
        *a12 = 1;
        if (v34)
        {
          break;
        }
      }

      v35 = [v30 alternativeAtIndex:v34];
      v36 = [v35 contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1];
      v37 = objc_alloc_init(NSMutableAttributedString);
      v38 = objc_alloc_init(NSMutableArray);
      v39 = objc_alloc_init(NSMutableSet);
      v56 = *a12;
      v55 = 0;
      v40 = [(MFNanoServerMessageContentParser *)self _parseMimeParts:v36 messageBody:v53 attributedString:v37 maxLength:a5 maxImageWidth:a7 maxImageAttachments:0 shouldTryAlternatives:a6 urlsForValidation:v49 nanoAttachmentsList:v38 attachmentURLsToLoad:v39 usingAlternativePart:&v56 partiallyLoaded:&v55];
      v41 = v40;
      if (v40)
      {
        v26 = v37;

        [v46 addObjectsFromArray:v38];
        v42 = [v39 allObjects];
        [v45 addObjectsFromArray:v42];

        *a13 = v55;
        *a12 = 1;
        v54 = v26;
      }

      else
      {
        v26 = v54;
      }

      --v34;
      if (v41)
      {
        goto LABEL_24;
      }
    }

    v26 = v54;
LABEL_24:

    v17 = v44;
    v20 = v45;
    v19 = v46;
    v18 = v49;
  }

  else
  {
    v26 = 0;
    *a12 = 1;
  }

LABEL_25:

  return v26;
}

- (void)_parseAttachmentsFromMimePart:(id)a3 messageBody:(id)a4 maxImageAttachments:(unint64_t)a5 nanoAttachmentsList:(id)a6 attachmentURLsToLoad:(id)a7
{
  v29 = a4;
  v30 = a6;
  v23 = a7;
  [a3 attachmentURLs];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v25 = 0;
    v27 = *v39;
    do
    {
      v31 = v10;
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v38 + 1) + 8 * i);
        v12 = [v32 mf_lastPartNumber];
        v33 = [v29 partWithNumber:v12];

        v13 = [(MFNanoServerMessageContentParser *)self _nanoAttachmentForURL:v32 mimePart:v33];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = v30;
        v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (!v15)
        {

LABEL_16:
          if ([v13 isImage])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v13;
              if (++v25 <= a5)
              {
                [v23 addObject:v32];
              }

              [v22 setRenderOnClient:v25 <= a5];
            }
          }

          else if ([v13 isActionable])
          {
            [v23 addObject:v32];
          }

          [v14 addObject:v13];
          goto LABEL_24;
        }

        v16 = 0;
        v17 = *v35;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v34 + 1) + 8 * j) contentId];
            v20 = [v13 contentId];
            v21 = [v19 isEqualToString:v20];

            v16 |= v21;
          }

          v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v15);

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_24:
      }

      v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }
}

- (id)_nanoAttachmentForURL:(id)a3 mimePart:(id)a4
{
  v6 = a4;
  v7 = [(MFNanoServerMessageContentParser *)self _attachmentForURL:a3 mimePart:v6];
  v8 = [v7 isImageFile];
  v9 = NNMKImageAttachment_ptr;
  if (!v8)
  {
    v9 = NNMKAttachment_ptr;
  }

  v10 = objc_alloc_init(*v9);
  v11 = [v7 contentID];
  [v10 setContentId:v11];

  v12 = [v7 fileName];
  [v10 setFileName:v12];

  [v10 setFileSize:{3 * (objc_msgSend(v7, "encodedFileSize") >> 2)}];
  v13 = [v6 partNumber];
  [v10 setMimePartNumber:v13];

  [v10 setType:{objc_msgSend(v7, "nanoAttachmentType")}];

  return v10;
}

- (id)_attachmentForURL:(id)a3 mimePart:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100027C70();
  v8 = [v7 defaultAttachmentManager];
  v9 = [v6 mimeBody];
  v10 = [v8 attachmentForURL:v5 withMimeBody:v9 error:0];

  [v10 setPart:v6];
  v11 = [v6 contentID];

  if (v11)
  {
    v12 = [v6 contentID];
    [v10 setContentID:v12];
  }

  v13 = [v6 type];
  v14 = [v6 subtype];
  v15 = [NSString stringWithFormat:@"%@/%@", v13, v14];
  [v10 setMimeType:v15];

  v16 = [v6 attachmentFilename];
  [v10 setFileName:v16];

  [v10 setEncodedFileSize:{objc_msgSend(v6, "approximateRawSize")}];
  v17 = [v6 disposition];
  [v10 setDisposition:v17];

  return v10;
}

@end