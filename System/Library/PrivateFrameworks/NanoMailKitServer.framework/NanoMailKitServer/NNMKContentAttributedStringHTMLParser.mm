@interface NNMKContentAttributedStringHTMLParser
+ (CGSize)_scaledDownSize:(CGSize)result maxWidth:(double)a4;
+ (id)_scaleAndPrepareImageForClient:(id)a3 maxWidth:(double)a4 screenScale:(double)a5;
+ (id)attachmentAttributedStringWithContentId:(id)a3 mergingAttributes:(id)a4;
+ (id)imageAttachmentAttributedStringWithContentId:(id)a3 imageSize:(CGSize)a4 mergingAttributes:(id)a5;
+ (id)trimAttributedString:(id)a3;
- (BOOL)_validateURLsAndHTMLTagsInParsedString:(id)a3 urlsFound:(id *)a4;
- (BOOL)isElementBlocked:(id)a3 attributeQueryBlock:(id)a4;
- (BOOL)isElementIgnorable:(id)a3;
- (BOOL)isWebLink:(id)a3;
- (NSDataDetector)dataDetector;
- (id)_parseHTMLBody:(id)a3 encoding:(unint64_t)a4 maxLength:(unint64_t)a5 maxImageWidth:(double)a6 partiallyParsed:(BOOL *)a7 imageAttachmentsLoaded:(id *)a8 urlsForValidation:(id)a9 urlsFound:(id *)a10;
- (id)_parsePlainTextBody:(id)a3 encoding:(unint64_t)a4;
- (void)_addDataDetectionAttributes:(id)a3;
- (void)_appendComponentWithKey:(id)a3 from:(id)a4 to:(id)a5;
- (void)appendImageWithSource:(id)a3 width:(double)a4 height:(double)a5 stringAttributes:(id)a6;
- (void)appendString:(id)a3 stringAttributes:(id)a4;
- (void)dataDetector;
@end

@implementation NNMKContentAttributedStringHTMLParser

+ (id)attachmentAttributedStringWithContentId:(id)a3 mergingAttributes:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = a3;
  v6 = [v4 mutableCopy];
  [v6 setObject:v5 forKeyedSubscript:@"NNMKInlineAttachment"];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 65532];
  v9 = [v7 initWithString:v8 attributes:v6];

  return v9;
}

+ (id)imageAttachmentAttributedStringWithContentId:(id)a3 imageSize:(CGSize)a4 mergingAttributes:(id)a5
{
  height = a4.height;
  width = a4.width;
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = [v9 mutableCopy];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_286C69F68;
  }

  v19[0] = @"cid";
  v19[1] = @"size";
  v20[0] = v11;
  v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  v20[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v10 setObject:v13 forKeyedSubscript:@"NNMKInlineImage"];

  v14 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 65532];
  v16 = [v14 initWithString:v15 attributes:v10];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)trimAttributedString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 string];
    for (i = 0; i < [v5 length]; ++i)
    {
      v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v8 = [v7 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", i)}];

      if (!v8)
      {
        break;
      }
    }

    v9 = [v5 length];
    v10 = [v5 length];
    if (v10 > i)
    {
      v9 = v10 + 1;
      do
      {
        v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v12 = v9 - 2;
        v13 = [v11 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v9 - 2)}];

        --v9;
        if (v13)
        {
          v14 = v12 > i;
        }

        else
        {
          v14 = 0;
        }
      }

      while (v14);
    }

    v15 = [v4 attributedSubstringFromRange:{i, v9 - i}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_parseHTMLBody:(id)a3 encoding:(unint64_t)a4 maxLength:(unint64_t)a5 maxImageWidth:(double)a6 partiallyParsed:(BOOL *)a7 imageAttachmentsLoaded:(id *)a8 urlsForValidation:(id)a9 urlsFound:(id *)a10
{
  lock = self->_lock;
  v17 = a9;
  v18 = a3;
  [(NSLock *)lock lock];
  v19 = objc_alloc_init(MEMORY[0x277CCAB48]);
  parsedAttributedString = self->_parsedAttributedString;
  self->_parsedAttributedString = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  imageAtachmentsDataByContentId = self->_imageAtachmentsDataByContentId;
  self->_imageAtachmentsDataByContentId = v21;

  self->_maxLength = a5;
  self->_maxImageWidth = a6;
  self->_partiallyParsed = a7;
  if (a7)
  {
    *a7 = 0;
  }

  [(NNMKHTMLParser *)self parseHTMLBody:v18 encoding:a4];

  v23 = [(NNMKContentAttributedStringHTMLParser *)self _validateURLsAndHTMLTagsInParsedString:v17 urlsFound:a10];
  v24 = 0;
  if (![(NNMKHTMLParser *)self containsBlockedElements]&& v23)
  {
    [(NNMKContentAttributedStringHTMLParser *)self _addDataDetectionAttributes:self->_parsedAttributedString];
    v24 = self->_parsedAttributedString;
  }

  [(NSLock *)self->_lock unlock];
  if (a8)
  {
    *a8 = self->_imageAtachmentsDataByContentId;
  }

  return v24;
}

- (id)_parsePlainTextBody:(id)a3 encoding:(unint64_t)a4
{
  [(NSLock *)self->_lock lock:a3];
  v5 = objc_alloc_init(MEMORY[0x277CCAB48]);
  parsedAttributedString = self->_parsedAttributedString;
  self->_parsedAttributedString = v5;

  [(NNMKContentAttributedStringHTMLParser *)self _addDataDetectionAttributes:self->_parsedAttributedString];
  v7 = self->_parsedAttributedString;
  [(NSLock *)self->_lock unlock];

  return v7;
}

- (NSDataDetector)dataDetector
{
  dataDetector = self->_dataDetector;
  if (!dataDetector)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:2096 error:&v9];
    v5 = v9;
    v6 = self->_dataDetector;
    self->_dataDetector = v4;

    if (v5)
    {
      v7 = __logCategories;
      if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
      {
        [(NNMKContentAttributedStringHTMLParser *)v5 dataDetector];
      }
    }

    dataDetector = self->_dataDetector;
  }

  return dataDetector;
}

- (BOOL)isElementBlocked:(id)a3 attributeQueryBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  LOBYTE(v7) = 1;
  if ([v5 compare:@"table" options:1])
  {
    if ([v5 compare:@"img" options:1])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = v6[2](v6, @"src");
      if ([v8 hasPrefix:@"cid:"])
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = [v8 hasPrefix:@"data:image/"] ^ 1;
      }
    }
  }

  return v7;
}

- (BOOL)isElementIgnorable:(id)a3
{
  v3 = a3;
  v4 = 1;
  if ([v3 compare:@"head" options:1])
  {
    v4 = [v3 compare:@"style" options:1] == 0;
  }

  return v4;
}

- (void)appendImageWithSource:(id)a3 width:(double)a4 height:(double)a5 stringAttributes:(id)a6
{
  v26 = a3;
  v10 = a6;
  if ([v26 hasPrefix:@"cid:"])
  {
    v11 = [v26 substringFromIndex:{objc_msgSend(@"cid:", "length")}];
  }

  else if ([v26 hasPrefix:@"data:"])
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v12 UUIDString];

    v13 = [v26 rangeOfString:{@";base64, "}];
    v15 = [v26 substringFromIndex:v13 + v14];
    v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
    if (v16)
    {
      v17 = [(NNMKContentAttributedStringHTMLParser *)self imageAtachmentsDataByContentId];
      [v17 setObject:v16 forKeyedSubscript:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = objc_opt_class();
  [(NNMKContentAttributedStringHTMLParser *)self maxImageWidth];
  [v18 _scaledDownSize:a4 maxWidth:{a5, v19}];
  v21 = v20;
  v23 = v22;
  if (self->_maxLength == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableAttributedString *)self->_parsedAttributedString length]< self->_maxLength)
  {
    v24 = [objc_opt_class() imageAttachmentAttributedStringWithContentId:v11 imageSize:v10 mergingAttributes:{v21, v23}];
    v25 = [(NNMKContentAttributedStringHTMLParser *)self parsedAttributedString];
    [v25 appendAttributedString:v24];
  }

  else
  {
    *self->_partiallyParsed = 1;
    [(NNMKHTMLParser *)self setCancelled:1];
  }
}

- (void)appendString:(id)a3 stringAttributes:(id)a4
{
  v11 = a3;
  v6 = a4;
  maxLength = self->_maxLength;
  if (maxLength != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = maxLength - [(NSMutableAttributedString *)self->_parsedAttributedString length];
    if ([v11 length] > v8)
    {
      v9 = [v11 substringToIndex:v8];

      *self->_partiallyParsed = 1;
      [(NNMKHTMLParser *)self setCancelled:1];
      v11 = v9;
    }
  }

  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11 attributes:v6];
  [(NSMutableAttributedString *)self->_parsedAttributedString appendAttributedString:v10];
}

- (void)_addDataDetectionAttributes:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = 0;
  v4 = DDScannerCreate();
  if (v4)
  {
    v5 = v4;
    [v3 string];
    if (DDScannerScanString())
    {
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = DDScannerCopyResultsWithOptions();
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        cf = v5;
        v23 = v3;
        v9 = 0;
        v10 = *v25;
        v11 = *MEMORY[0x277D041D8];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            Category = DDResultGetCategory();
            Range = DDResultGetRange();
            if ((Category - 1) <= 2)
            {
              v17 = Range;
              v18 = v16;
              v19 = [MEMORY[0x277D04218] resultFromCoreResult:{v13, cf}];
              [v23 addAttribute:v11 value:v19 range:{v17, v18}];

              v9 = 1;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v8);

        CFRelease(cf);
        v3 = v23;
        if (v9)
        {
          [v23 dd_replaceResultAttributesWithSimpleLinksForTypes:7 context:0];
        }

        goto LABEL_19;
      }
    }

    CFRelease(v5);
    goto LABEL_19;
  }

  v20 = __logCategories;
  if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
  {
    [(NNMKContentAttributedStringHTMLParser *)v20 _addDataDetectionAttributes:v28];
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_appendComponentWithKey:(id)a3 from:(id)a4 to:(id)a5
{
  v8 = a5;
  v7 = [a4 objectForKeyedSubscript:a3];
  if (v7)
  {
    if ([v8 length])
    {
      [v8 appendFormat:@", %@", v7];
    }

    else
    {
      [v8 appendString:v7];
    }
  }
}

+ (id)_scaleAndPrepareImageForClient:(id)a3 maxWidth:(double)a4 screenScale:(double)a5
{
  v7 = MEMORY[0x277CBEB28];
  v8 = a3;
  v9 = [v7 data];
  v10 = UIImageJPEGRepresentation(v8, 0.9);

  v11 = a4 * a5;
  *&v11 = a4 * a5;
  [NNMKImageUtility scaleImageFromData:v10 destinationData:v9 maxWidth:v11];

  v12 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v9];

  return v12;
}

+ (CGSize)_scaledDownSize:(CGSize)result maxWidth:(double)a4
{
  if (result.width > a4)
  {
    v4 = a4 / result.width;
    result.width = result.width * v4;
    result.height = result.height * v4;
  }

  return result;
}

- (BOOL)_validateURLsAndHTMLTagsInParsedString:(id)a3 urlsFound:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB58] set];
  v32 = self;
  v8 = [(NSMutableAttributedString *)self->_parsedAttributedString string];
  if (![v8 length])
  {
    v25 = 1;
    if (!a4)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v28 = a4;
  v29 = v7;
  v9 = 0;
  v10 = 0x277CCA000uLL;
  v31 = v6;
  v30 = v8;
  while (1)
  {
    v11 = [*(v10 + 2304) whitespaceAndNewlineCharacterSet];
    v12 = [v8 rangeOfCharacterFromSet:v11 options:0 range:{v9, objc_msgSend(v8, "length") - v9}];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v8 length];
    }

    v13 = [v8 substringWithRange:{v9, v12 - v9}];
    v14 = v13;
    if (v6)
    {
      if (([v13 isEqualToString:@"<b>"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"<i>") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<br") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<img") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<div") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<span") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<p") & 1) != 0 || objc_msgSend(v14, "hasPrefix:", @"<font"))
      {
        break;
      }
    }

    v15 = [*(v10 + 2304) punctuationCharacterSet];
    v16 = [v15 mutableCopy];

    [v16 removeCharactersInString:@"?/}&"];
    [v16 addCharactersInString:@"<>"];
    v17 = [v14 stringByTrimmingCharactersInSet:v16];
    if (([v17 hasPrefix:@"http:"] & 1) != 0 || (objc_msgSend(v17, "hasPrefix:", @"https:") & 1) != 0 || (objc_msgSend(v17, "hasPrefix:", @"mailto:") & 1) != 0 || (objc_msgSend(v17, "hasPrefix:", @"ftp:") & 1) != 0 || -[NNMKContentAttributedStringHTMLParser isWebLink:](v32, "isWebLink:", v17))
    {
      v18 = v10;
      if (v6)
      {
        v19 = [v6 containsObject:v17] ^ 1;
      }

      else
      {
        [v29 addObject:v17];
        v19 = 0;
      }

      v20 = [v14 rangeOfString:v17];
      v22 = v21;
      parsedAttributedString = v32->_parsedAttributedString;
      v24 = [MEMORY[0x277CCABB0] numberWithBool:v19];
      [(NSMutableAttributedString *)parsedAttributedString addAttribute:@"NNMKCollapsableURL" value:v24 range:v20 + v9, v22];

      v6 = v31;
      v10 = v18;
      v8 = v30;
    }

    v9 = v12 + 1;

    if (v12 + 1 >= [v8 length])
    {
      v25 = 1;
      goto LABEL_26;
    }
  }

  v25 = 0;
LABEL_26:
  a4 = v28;
  v7 = v29;
  if (v28)
  {
LABEL_27:
    v26 = v7;
    *a4 = v7;
  }

LABEL_28:

  return v25;
}

- (BOOL)isWebLink:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NNMKContentAttributedStringHTMLParser *)self dataDetector];
  v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) resultType] == 32)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dataDetector
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Error instantiating NSDataDetector: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addDataDetectionAttributes:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Unable to create DDScanner: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end