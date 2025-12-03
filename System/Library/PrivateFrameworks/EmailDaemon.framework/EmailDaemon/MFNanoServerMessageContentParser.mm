@interface MFNanoServerMessageContentParser
- (BOOL)_parseMimeParts:(id)parts messageBody:(id)body attributedString:(id)string maxLength:(unint64_t)length maxImageWidth:(double)width maxImageAttachments:(unint64_t)attachments shouldTryAlternatives:(BOOL)alternatives urlsForValidation:(id)self0 nanoAttachmentsList:(id)self1 attachmentURLsToLoad:(id)self2 usingAlternativePart:(BOOL *)self3 partiallyLoaded:(BOOL *)self4;
- (MFNanoServerMessageContentParser)init;
- (id)_attachmentForURL:(id)l mimePart:(id)part;
- (id)_nanoAttachmentForURL:(id)l mimePart:(id)part;
- (id)_parseStringMimePart:(id)part maxLength:(unint64_t)length;
- (id)_parseTextAttachmentMimePart:(id)part messageBody:(id)body maxImageAttachments:(unint64_t)attachments nanoAttachmentsList:(id)list attachmentURLsToLoad:(id)load;
- (id)_parseWebMessageDocumentMimePart:(id)part messageBody:(id)body maxLength:(unint64_t)length maxImageWidth:(double)width maxImageAttachments:(unint64_t)attachments shouldTryAlternatives:(BOOL)alternatives urlsForValidation:(id)validation finalNanoAttachmentsList:(id)self0 finalAttachmentsURLsToLoad:(id)self1 usingAlternativePart:(BOOL *)self2 partiallyLoaded:(BOOL *)self3;
- (id)parseMessageWithLoadingContextEvent:(id)event maxImageWidth:(double)width messageBody:(id *)body attachmentURLsToLoad:(id *)load;
- (void)_parseAttachmentsFromMimePart:(id)part messageBody:(id)body maxImageAttachments:(unint64_t)attachments nanoAttachmentsList:(id)list attachmentURLsToLoad:(id)load;
- (void)dealloc;
- (void)parseMessage:(id)message maxImageWidth:(double)width completionBlock:(id)block;
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

- (void)parseMessage:(id)message maxImageWidth:(double)width completionBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  [(EFCancelable *)self->_cancelable cancel];
  cancelable = self->_cancelable;
  self->_cancelable = 0;

  v11 = [MFMessageLoadingContext alloc];
  v12 = sub_100027C70();
  defaultAttachmentManager = [v12 defaultAttachmentManager];
  v14 = [v11 initWithMessage:messageCopy attachmentManager:defaultAttachmentManager];
  loadingContext = self->_loadingContext;
  self->_loadingContext = v14;

  v16 = [MFNanoServerMessageContentURLProtocol URLForLoadingContext:self->_loadingContext];
  v17 = self->_loadingContext;
  if (!v17)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
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
  v26[1] = *&width;
  v19 = v16;
  v24 = v19;
  v20 = blockCopy;
  v25 = v20;
  v21 = [(MFMessageLoadingContext *)v18 addLoadObserver:v23];
  v22 = self->_cancelable;
  self->_cancelable = v21;

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (id)parseMessageWithLoadingContextEvent:(id)event maxImageWidth:(double)width messageBody:(id *)body attachmentURLsToLoad:(id *)load
{
  eventCopy = event;
  context = [eventCopy context];
  message = [context message];
  messageSize = [message messageSize];
  if ([eventCopy hasLoadedCompleteBody])
  {
    content = [eventCopy content];
    *body = [context messageBody];
    v28 = 0;
    v13 = objc_alloc_init(NSMutableAttributedString);
    v27 = objc_alloc_init(NSMutableArray);
    v14 = objc_alloc_init(NSMutableSet);
    *load = 0;
    v15 = [(MFNanoServerMessageContentParser *)self _parseMimeParts:content messageBody:*body attributedString:v13 maxLength:NNMKHTMLParserMaxContentTextLength maxImageWidth:NNMKHTMLParserMaxImageAttachmentsToSync maxImageAttachments:1 shouldTryAlternatives:width urlsForValidation:0 nanoAttachmentsList:v27 attachmentURLsToLoad:v14 usingAlternativePart:&v28 + 1 partiallyLoaded:&v28];
    v16 = objc_alloc_init(NNMKMessageContent);
    mf_externalReference = [message mf_externalReference];
    absoluteString = [mf_externalReference absoluteString];
    [v16 setMessageId:absoluteString];

    messageId = [v16 messageId];
    LODWORD(absoluteString) = messageId == 0;

    if (absoluteString)
    {
      v20 = MFLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [message messageID];
        objc_claimAutoreleasedReturnValue();
        [message externalID];
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
      *load = v14;
    }
  }

  else
  {
    v16 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v16 setOriginalContentSize:messageSize];
  }

  return v16;
}

- (BOOL)_parseMimeParts:(id)parts messageBody:(id)body attributedString:(id)string maxLength:(unint64_t)length maxImageWidth:(double)width maxImageAttachments:(unint64_t)attachments shouldTryAlternatives:(BOOL)alternatives urlsForValidation:(id)self0 nanoAttachmentsList:(id)self1 attachmentURLsToLoad:(id)self2 usingAlternativePart:(BOOL *)self3 partiallyLoaded:(BOOL *)self4
{
  alternativesCopy = alternatives;
  partsCopy = parts;
  bodyCopy = body;
  stringCopy = string;
  validationCopy = validation;
  listCopy = list;
  loadCopy = load;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = partsCopy;
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
      v24 = [stringCopy length];
      v25 = [loadCopy count];
      v26 = objc_autoreleasePoolPush();
      objc_opt_class();
      v27 = attachments - v25;
      if (objc_opt_isKindOfClass())
      {
        v28 = [(MFNanoServerMessageContentParser *)self _parseTextAttachmentMimePart:v23 messageBody:bodyCopy maxImageAttachments:v27 nanoAttachmentsList:listCopy attachmentURLsToLoad:loadCopy];
        [stringCopy appendAttributedString:v28];
LABEL_13:
        v30 = 1;
        goto LABEL_14;
      }

      objc_opt_class();
      v29 = length - v24;
      if (objc_opt_isKindOfClass())
      {
        v28 = [(MFNanoServerMessageContentParser *)self _parseStringMimePart:v23 maxLength:v29];
        [stringCopy appendAttributedString:v28];
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 1;
        goto LABEL_15;
      }

      v28 = [(MFNanoServerMessageContentParser *)self _parseWebMessageDocumentMimePart:v23 messageBody:bodyCopy maxLength:v29 maxImageWidth:v27 maxImageAttachments:alternativesCopy shouldTryAlternatives:validationCopy urlsForValidation:width finalNanoAttachmentsList:listCopy finalAttachmentsURLsToLoad:loadCopy usingAlternativePart:part partiallyLoaded:loaded];
      v30 = v28 != 0;
      if (v28)
      {
        [stringCopy appendAttributedString:v28];
        goto LABEL_13;
      }

LABEL_14:

LABEL_15:
      objc_autoreleasePoolPop(v26);
      if (!v30 || *loaded)
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

  topLevelPart = [bodyCopy topLevelPart];
  -[MFNanoServerMessageContentParser _parseAttachmentsFromMimePart:messageBody:maxImageAttachments:nanoAttachmentsList:attachmentURLsToLoad:](self, "_parseAttachmentsFromMimePart:messageBody:maxImageAttachments:nanoAttachmentsList:attachmentURLsToLoad:", topLevelPart, bodyCopy, attachments - [loadCopy count], listCopy, loadCopy);

  return v30;
}

- (id)_parseTextAttachmentMimePart:(id)part messageBody:(id)body maxImageAttachments:(unint64_t)attachments nanoAttachmentsList:(id)list attachmentURLsToLoad:(id)load
{
  partCopy = part;
  bodyCopy = body;
  listCopy = list;
  loadCopy = load;
  mimePart = [partCopy mimePart];
  [mimePart setMimeBody:bodyCopy];

  v17 = sub_100027C70();
  defaultAttachmentManager = [v17 defaultAttachmentManager];
  v19 = [defaultAttachmentManager attachmentForTextAttachment:partCopy error:0];

  contentID = [v19 contentID];
  if (contentID)
  {
    if ([v19 nanoAttachmentType] == 5)
    {
      [NNMKContentAttributedStringHTMLParser imageAttachmentAttributedStringWithContentId:contentID imageSize:0 mergingAttributes:CGSizeZero.width, CGSizeZero.height];
    }

    else
    {
      [NNMKContentAttributedStringHTMLParser attachmentAttributedStringWithContentId:contentID mergingAttributes:0];
    }
    v21 = ;
    mimePart2 = [partCopy mimePart];
    [(MFNanoServerMessageContentParser *)self _parseAttachmentsFromMimePart:mimePart2 messageBody:bodyCopy maxImageAttachments:attachments nanoAttachmentsList:listCopy attachmentURLsToLoad:loadCopy];
  }

  else
  {
    v21 = [[NSAttributedString alloc] initWithString:&stru_10015BEC8];
  }

  return v21;
}

- (id)_parseStringMimePart:(id)part maxLength:(unint64_t)length
{
  partCopy = part;
  if ([partCopy length] <= length)
  {
    v6 = partCopy;
  }

  else
  {
    v6 = [partCopy substringToIndex:length];
  }

  v7 = v6;
  v8 = [[NSAttributedString alloc] initWithString:v6];

  return v8;
}

- (id)_parseWebMessageDocumentMimePart:(id)part messageBody:(id)body maxLength:(unint64_t)length maxImageWidth:(double)width maxImageAttachments:(unint64_t)attachments shouldTryAlternatives:(BOOL)alternatives urlsForValidation:(id)validation finalNanoAttachmentsList:(id)self0 finalAttachmentsURLsToLoad:(id)self1 usingAlternativePart:(BOOL *)self2 partiallyLoaded:(BOOL *)self3
{
  alternativesCopy = alternatives;
  partCopy = part;
  bodyCopy = body;
  validationCopy = validation;
  listCopy = list;
  loadCopy = load;
  htmlData = [partCopy htmlData];
  preferredCharacterSet = [partCopy preferredCharacterSet];
  LODWORD(body) = MFEncodingForCharset();

  v22 = CFStringConvertEncodingToNSStringEncoding(body);
  v47 = MFCreateStringWithData();
  if (!self->_htmlParser)
  {
    v23 = objc_alloc_init(NNMKContentAttributedStringHTMLParser);
    htmlParser = self->_htmlParser;
    self->_htmlParser = v23;
  }

  v25 = self->_htmlParser;
  if (validationCopy)
  {
    v26 = [(NNMKContentAttributedStringHTMLParser *)v25 parseHTMLBody:v47 encoding:v22 maxLength:length maxImageWidth:loaded partiallyParsed:0 imageAttachmentsLoaded:validationCopy urlsForValidation:width];
    if (v26)
    {
LABEL_5:
      mimePart = [partCopy mimePart];
      [(MFNanoServerMessageContentParser *)self _parseAttachmentsFromMimePart:mimePart messageBody:bodyCopy maxImageAttachments:attachments nanoAttachmentsList:listCopy attachmentURLsToLoad:loadCopy];

      goto LABEL_25;
    }
  }

  else
  {
    v57[0] = 0;
    v28 = [(NNMKContentAttributedStringHTMLParser *)v25 parseHTMLBody:v47 encoding:v22 maxLength:length maxImageWidth:loaded partiallyParsed:0 imageAttachmentsLoaded:v57 urlsFound:width];
    validationCopy = v57[0];
    v26 = v28;
    if (v28)
    {
      goto LABEL_5;
    }
  }

  if (alternativesCopy)
  {
    v44 = partCopy;
    v45 = loadCopy;
    v46 = listCopy;
    v49 = validationCopy;
    mimePart2 = [partCopy mimePart];
    while (1)
    {
      parentPart = [mimePart2 parentPart];

      if (!parentPart)
      {
        break;
      }

      type = [parentPart type];
      if ([type isEqualToString:@"multipart"])
      {
        subtype = [parentPart subtype];
        v33 = [subtype isEqualToString:@"alternative"];

        mimePart2 = parentPart;
        if (v33)
        {
          break;
        }
      }

      else
      {

        mimePart2 = parentPart;
      }
    }

    v54 = 0;
    v34 = [parentPart numberOfAlternatives] - 2;
    while (1)
    {
      if ((v34 + 1) <= 1)
      {
        *alternativePart = 1;
        if (v34)
        {
          break;
        }
      }

      v35 = [parentPart alternativeAtIndex:v34];
      v36 = [v35 contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1];
      v37 = objc_alloc_init(NSMutableAttributedString);
      v38 = objc_alloc_init(NSMutableArray);
      v39 = objc_alloc_init(NSMutableSet);
      v56 = *alternativePart;
      v55 = 0;
      v40 = [(MFNanoServerMessageContentParser *)self _parseMimeParts:v36 messageBody:bodyCopy attributedString:v37 maxLength:length maxImageWidth:attachments maxImageAttachments:0 shouldTryAlternatives:width urlsForValidation:v49 nanoAttachmentsList:v38 attachmentURLsToLoad:v39 usingAlternativePart:&v56 partiallyLoaded:&v55];
      v41 = v40;
      if (v40)
      {
        v26 = v37;

        [v46 addObjectsFromArray:v38];
        allObjects = [v39 allObjects];
        [v45 addObjectsFromArray:allObjects];

        *loaded = v55;
        *alternativePart = 1;
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

    partCopy = v44;
    loadCopy = v45;
    listCopy = v46;
    validationCopy = v49;
  }

  else
  {
    v26 = 0;
    *alternativePart = 1;
  }

LABEL_25:

  return v26;
}

- (void)_parseAttachmentsFromMimePart:(id)part messageBody:(id)body maxImageAttachments:(unint64_t)attachments nanoAttachmentsList:(id)list attachmentURLsToLoad:(id)load
{
  bodyCopy = body;
  listCopy = list;
  loadCopy = load;
  [part attachmentURLs];
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
        mf_lastPartNumber = [v32 mf_lastPartNumber];
        v33 = [bodyCopy partWithNumber:mf_lastPartNumber];

        v13 = [(MFNanoServerMessageContentParser *)self _nanoAttachmentForURL:v32 mimePart:v33];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = listCopy;
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
              if (++v25 <= attachments)
              {
                [loadCopy addObject:v32];
              }

              [v22 setRenderOnClient:v25 <= attachments];
            }
          }

          else if ([v13 isActionable])
          {
            [loadCopy addObject:v32];
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

            contentId = [*(*(&v34 + 1) + 8 * j) contentId];
            contentId2 = [v13 contentId];
            v21 = [contentId isEqualToString:contentId2];

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

- (id)_nanoAttachmentForURL:(id)l mimePart:(id)part
{
  partCopy = part;
  v7 = [(MFNanoServerMessageContentParser *)self _attachmentForURL:l mimePart:partCopy];
  isImageFile = [v7 isImageFile];
  v9 = NNMKImageAttachment_ptr;
  if (!isImageFile)
  {
    v9 = NNMKAttachment_ptr;
  }

  v10 = objc_alloc_init(*v9);
  contentID = [v7 contentID];
  [v10 setContentId:contentID];

  fileName = [v7 fileName];
  [v10 setFileName:fileName];

  [v10 setFileSize:{3 * (objc_msgSend(v7, "encodedFileSize") >> 2)}];
  partNumber = [partCopy partNumber];
  [v10 setMimePartNumber:partNumber];

  [v10 setType:{objc_msgSend(v7, "nanoAttachmentType")}];

  return v10;
}

- (id)_attachmentForURL:(id)l mimePart:(id)part
{
  lCopy = l;
  partCopy = part;
  v7 = sub_100027C70();
  defaultAttachmentManager = [v7 defaultAttachmentManager];
  mimeBody = [partCopy mimeBody];
  v10 = [defaultAttachmentManager attachmentForURL:lCopy withMimeBody:mimeBody error:0];

  [v10 setPart:partCopy];
  contentID = [partCopy contentID];

  if (contentID)
  {
    contentID2 = [partCopy contentID];
    [v10 setContentID:contentID2];
  }

  type = [partCopy type];
  subtype = [partCopy subtype];
  v15 = [NSString stringWithFormat:@"%@/%@", type, subtype];
  [v10 setMimeType:v15];

  attachmentFilename = [partCopy attachmentFilename];
  [v10 setFileName:attachmentFilename];

  [v10 setEncodedFileSize:{objc_msgSend(partCopy, "approximateRawSize")}];
  disposition = [partCopy disposition];
  [v10 setDisposition:disposition];

  return v10;
}

@end