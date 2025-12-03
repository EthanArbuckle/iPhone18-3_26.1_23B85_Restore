@interface NNMKContentAttributedStringHTMLParser
+ (CGSize)_scaledDownSize:(CGSize)result maxWidth:(double)width;
+ (id)_scaleAndPrepareImageForClient:(id)client maxWidth:(double)width screenScale:(double)scale;
+ (id)attachmentAttributedStringWithContentId:(id)id mergingAttributes:(id)attributes;
+ (id)imageAttachmentAttributedStringWithContentId:(id)id imageSize:(CGSize)size mergingAttributes:(id)attributes;
+ (id)trimAttributedString:(id)string;
- (BOOL)_validateURLsAndHTMLTagsInParsedString:(id)string urlsFound:(id *)found;
- (BOOL)isElementBlocked:(id)blocked attributeQueryBlock:(id)block;
- (BOOL)isElementIgnorable:(id)ignorable;
- (BOOL)isWebLink:(id)link;
- (NSDataDetector)dataDetector;
- (id)_parseHTMLBody:(id)body encoding:(unint64_t)encoding maxLength:(unint64_t)length maxImageWidth:(double)width partiallyParsed:(BOOL *)parsed imageAttachmentsLoaded:(id *)loaded urlsForValidation:(id)validation urlsFound:(id *)self0;
- (id)_parsePlainTextBody:(id)body encoding:(unint64_t)encoding;
- (void)_addDataDetectionAttributes:(id)attributes;
- (void)_appendComponentWithKey:(id)key from:(id)from to:(id)to;
- (void)appendImageWithSource:(id)source width:(double)width height:(double)height stringAttributes:(id)attributes;
- (void)appendString:(id)string stringAttributes:(id)attributes;
- (void)dataDetector;
@end

@implementation NNMKContentAttributedStringHTMLParser

+ (id)attachmentAttributedStringWithContentId:(id)id mergingAttributes:(id)attributes
{
  if (attributes)
  {
    attributesCopy = attributes;
  }

  else
  {
    attributesCopy = MEMORY[0x277CBEC10];
  }

  idCopy = id;
  v6 = [attributesCopy mutableCopy];
  [v6 setObject:idCopy forKeyedSubscript:@"NNMKInlineAttachment"];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  65532 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 65532];
  v9 = [v7 initWithString:65532 attributes:v6];

  return v9;
}

+ (id)imageAttachmentAttributedStringWithContentId:(id)id imageSize:(CGSize)size mergingAttributes:(id)attributes
{
  height = size.height;
  width = size.width;
  v20[2] = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (attributes)
  {
    attributesCopy = attributes;
  }

  else
  {
    attributesCopy = MEMORY[0x277CBEC10];
  }

  v10 = [attributesCopy mutableCopy];
  if (idCopy)
  {
    v11 = idCopy;
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
  65532 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 65532];
  v16 = [v14 initWithString:65532 attributes:v10];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)trimAttributedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    string = [stringCopy string];
    for (i = 0; i < [string length]; ++i)
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v8 = [whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", i)}];

      if (!v8)
      {
        break;
      }
    }

    v9 = [string length];
    v10 = [string length];
    if (v10 > i)
    {
      v9 = v10 + 1;
      do
      {
        whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v12 = v9 - 2;
        v13 = [whitespaceAndNewlineCharacterSet2 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v9 - 2)}];

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

- (id)_parseHTMLBody:(id)body encoding:(unint64_t)encoding maxLength:(unint64_t)length maxImageWidth:(double)width partiallyParsed:(BOOL *)parsed imageAttachmentsLoaded:(id *)loaded urlsForValidation:(id)validation urlsFound:(id *)self0
{
  lock = self->_lock;
  validationCopy = validation;
  bodyCopy = body;
  [(NSLock *)lock lock];
  v19 = objc_alloc_init(MEMORY[0x277CCAB48]);
  parsedAttributedString = self->_parsedAttributedString;
  self->_parsedAttributedString = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  imageAtachmentsDataByContentId = self->_imageAtachmentsDataByContentId;
  self->_imageAtachmentsDataByContentId = v21;

  self->_maxLength = length;
  self->_maxImageWidth = width;
  self->_partiallyParsed = parsed;
  if (parsed)
  {
    *parsed = 0;
  }

  [(NNMKHTMLParser *)self parseHTMLBody:bodyCopy encoding:encoding];

  v23 = [(NNMKContentAttributedStringHTMLParser *)self _validateURLsAndHTMLTagsInParsedString:validationCopy urlsFound:found];
  v24 = 0;
  if (![(NNMKHTMLParser *)self containsBlockedElements]&& v23)
  {
    [(NNMKContentAttributedStringHTMLParser *)self _addDataDetectionAttributes:self->_parsedAttributedString];
    v24 = self->_parsedAttributedString;
  }

  [(NSLock *)self->_lock unlock];
  if (loaded)
  {
    *loaded = self->_imageAtachmentsDataByContentId;
  }

  return v24;
}

- (id)_parsePlainTextBody:(id)body encoding:(unint64_t)encoding
{
  [(NSLock *)self->_lock lock:body];
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

- (BOOL)isElementBlocked:(id)blocked attributeQueryBlock:(id)block
{
  blockedCopy = blocked;
  blockCopy = block;
  LOBYTE(v7) = 1;
  if ([blockedCopy compare:@"table" options:1])
  {
    if ([blockedCopy compare:@"img" options:1])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = blockCopy[2](blockCopy, @"src");
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

- (BOOL)isElementIgnorable:(id)ignorable
{
  ignorableCopy = ignorable;
  v4 = 1;
  if ([ignorableCopy compare:@"head" options:1])
  {
    v4 = [ignorableCopy compare:@"style" options:1] == 0;
  }

  return v4;
}

- (void)appendImageWithSource:(id)source width:(double)width height:(double)height stringAttributes:(id)attributes
{
  sourceCopy = source;
  attributesCopy = attributes;
  if ([sourceCopy hasPrefix:@"cid:"])
  {
    uUIDString = [sourceCopy substringFromIndex:{objc_msgSend(@"cid:", "length")}];
  }

  else if ([sourceCopy hasPrefix:@"data:"])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v13 = [sourceCopy rangeOfString:{@";base64, "}];
    v15 = [sourceCopy substringFromIndex:v13 + v14];
    v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
    if (v16)
    {
      imageAtachmentsDataByContentId = [(NNMKContentAttributedStringHTMLParser *)self imageAtachmentsDataByContentId];
      [imageAtachmentsDataByContentId setObject:v16 forKeyedSubscript:uUIDString];
    }
  }

  else
  {
    uUIDString = 0;
  }

  v18 = objc_opt_class();
  [(NNMKContentAttributedStringHTMLParser *)self maxImageWidth];
  [v18 _scaledDownSize:width maxWidth:{height, v19}];
  v21 = v20;
  v23 = v22;
  if (self->_maxLength == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableAttributedString *)self->_parsedAttributedString length]< self->_maxLength)
  {
    v24 = [objc_opt_class() imageAttachmentAttributedStringWithContentId:uUIDString imageSize:attributesCopy mergingAttributes:{v21, v23}];
    parsedAttributedString = [(NNMKContentAttributedStringHTMLParser *)self parsedAttributedString];
    [parsedAttributedString appendAttributedString:v24];
  }

  else
  {
    *self->_partiallyParsed = 1;
    [(NNMKHTMLParser *)self setCancelled:1];
  }
}

- (void)appendString:(id)string stringAttributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  maxLength = self->_maxLength;
  if (maxLength != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = maxLength - [(NSMutableAttributedString *)self->_parsedAttributedString length];
    if ([stringCopy length] > v8)
    {
      v9 = [stringCopy substringToIndex:v8];

      *self->_partiallyParsed = 1;
      [(NNMKHTMLParser *)self setCancelled:1];
      stringCopy = v9;
    }
  }

  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:stringCopy attributes:attributesCopy];
  [(NSMutableAttributedString *)self->_parsedAttributedString appendAttributedString:v10];
}

- (void)_addDataDetectionAttributes:(id)attributes
{
  v30 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v28 = 0;
  v4 = DDScannerCreate();
  if (v4)
  {
    v5 = v4;
    [attributesCopy string];
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
        v23 = attributesCopy;
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
        attributesCopy = v23;
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

- (void)_appendComponentWithKey:(id)key from:(id)from to:(id)to
{
  toCopy = to;
  v7 = [from objectForKeyedSubscript:key];
  if (v7)
  {
    if ([toCopy length])
    {
      [toCopy appendFormat:@", %@", v7];
    }

    else
    {
      [toCopy appendString:v7];
    }
  }
}

+ (id)_scaleAndPrepareImageForClient:(id)client maxWidth:(double)width screenScale:(double)scale
{
  v7 = MEMORY[0x277CBEB28];
  clientCopy = client;
  data = [v7 data];
  v10 = UIImageJPEGRepresentation(clientCopy, 0.9);

  v11 = width * scale;
  *&v11 = width * scale;
  [NNMKImageUtility scaleImageFromData:v10 destinationData:data maxWidth:v11];

  v12 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:data];

  return v12;
}

+ (CGSize)_scaledDownSize:(CGSize)result maxWidth:(double)width
{
  if (result.width > width)
  {
    v4 = width / result.width;
    result.width = result.width * v4;
    result.height = result.height * v4;
  }

  return result;
}

- (BOOL)_validateURLsAndHTMLTagsInParsedString:(id)string urlsFound:(id *)found
{
  stringCopy = string;
  v7 = [MEMORY[0x277CBEB58] set];
  selfCopy = self;
  string = [(NSMutableAttributedString *)self->_parsedAttributedString string];
  if (![string length])
  {
    v25 = 1;
    if (!found)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  foundCopy = found;
  v29 = v7;
  v9 = 0;
  v10 = 0x277CCA000uLL;
  v31 = stringCopy;
  v30 = string;
  while (1)
  {
    whitespaceAndNewlineCharacterSet = [*(v10 + 2304) whitespaceAndNewlineCharacterSet];
    v12 = [string rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:0 range:{v9, objc_msgSend(string, "length") - v9}];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [string length];
    }

    v13 = [string substringWithRange:{v9, v12 - v9}];
    v14 = v13;
    if (stringCopy)
    {
      if (([v13 isEqualToString:@"<b>"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"<i>") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<br") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<img") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<div") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<span") & 1) != 0 || (objc_msgSend(v14, "hasPrefix:", @"<p") & 1) != 0 || objc_msgSend(v14, "hasPrefix:", @"<font"))
      {
        break;
      }
    }

    punctuationCharacterSet = [*(v10 + 2304) punctuationCharacterSet];
    v16 = [punctuationCharacterSet mutableCopy];

    [v16 removeCharactersInString:@"?/}&"];
    [v16 addCharactersInString:@"<>"];
    v17 = [v14 stringByTrimmingCharactersInSet:v16];
    if (([v17 hasPrefix:@"http:"] & 1) != 0 || (objc_msgSend(v17, "hasPrefix:", @"https:") & 1) != 0 || (objc_msgSend(v17, "hasPrefix:", @"mailto:") & 1) != 0 || (objc_msgSend(v17, "hasPrefix:", @"ftp:") & 1) != 0 || -[NNMKContentAttributedStringHTMLParser isWebLink:](selfCopy, "isWebLink:", v17))
    {
      v18 = v10;
      if (stringCopy)
      {
        v19 = [stringCopy containsObject:v17] ^ 1;
      }

      else
      {
        [v29 addObject:v17];
        v19 = 0;
      }

      v20 = [v14 rangeOfString:v17];
      v22 = v21;
      parsedAttributedString = selfCopy->_parsedAttributedString;
      v24 = [MEMORY[0x277CCABB0] numberWithBool:v19];
      [(NSMutableAttributedString *)parsedAttributedString addAttribute:@"NNMKCollapsableURL" value:v24 range:v20 + v9, v22];

      stringCopy = v31;
      v10 = v18;
      string = v30;
    }

    v9 = v12 + 1;

    if (v12 + 1 >= [string length])
    {
      v25 = 1;
      goto LABEL_26;
    }
  }

  v25 = 0;
LABEL_26:
  found = foundCopy;
  v7 = v29;
  if (foundCopy)
  {
LABEL_27:
    v26 = v7;
    *found = v7;
  }

LABEL_28:

  return v25;
}

- (BOOL)isWebLink:(id)link
{
  v18 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  dataDetector = [(NNMKContentAttributedStringHTMLParser *)self dataDetector];
  v6 = [dataDetector matchesInString:linkCopy options:0 range:{0, objc_msgSend(linkCopy, "length")}];

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
  selfCopy = self;
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