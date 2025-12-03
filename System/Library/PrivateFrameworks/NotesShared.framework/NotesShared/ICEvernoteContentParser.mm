@interface ICEvernoteContentParser
- (BOOL)shouldSelfCloseTagForStartElementName:(id)name;
- (id)htmlStringFromEvernoteContentString:(id)string;
- (id)stringFromAttributes:(id)attributes;
- (id)titleFromHTMLString:(id)string;
- (void)parseContentString:(id)string;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)teardownParser;
@end

@implementation ICEvernoteContentParser

- (id)htmlStringFromEvernoteContentString:(id)string
{
  stringCopy = string;
  v5 = objc_autoreleasePoolPush();
  [(ICEvernoteContentParser *)self setParserType:0];
  [(ICEvernoteContentParser *)self parseContentString:stringCopy];
  htmlString = [(ICEvernoteContentParser *)self htmlString];
  v7 = [htmlString copy];

  [(ICEvernoteContentParser *)self teardownParser];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)titleFromHTMLString:(id)string
{
  stringCopy = string;
  v5 = objc_autoreleasePoolPush();
  [(ICEvernoteContentParser *)self setParserType:1];
  [(ICEvernoteContentParser *)self parseContentString:stringCopy];
  htmlString = [(ICEvernoteContentParser *)self htmlString];
  v7 = [htmlString copy];

  [(ICEvernoteContentParser *)self teardownParser];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  v15 = objc_autoreleasePoolPush();
  lowercaseString = [element lowercaseString];
  if (![(ICEvernoteContentParser *)self parserType])
  {
    bufferString = [(ICEvernoteContentParser *)self bufferString];
    v19 = [bufferString length];

    if (v19)
    {
      htmlString = [(ICEvernoteContentParser *)self htmlString];
      bufferString2 = [(ICEvernoteContentParser *)self bufferString];
      [htmlString appendString:bufferString2];

      [(ICEvernoteContentParser *)self setBufferString:0];
    }

    if ([lowercaseString isEqualToString:@"en-note"])
    {
      v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
      [(ICEvernoteContentParser *)self setHtmlString:v22];

      htmlString2 = [(ICEvernoteContentParser *)self htmlString];
      [htmlString2 appendString:@"<html><head><meta charset=utf-8></head><body>"];
LABEL_9:

      goto LABEL_15;
    }

    if ([lowercaseString isEqualToString:@"en-media"])
    {
      v17 = [attributesCopy objectForKeyedSubscript:@"hash"];
      htmlString3 = [(ICEvernoteContentParser *)self htmlString];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{NotesAttachment:%@}}", v17];
      [htmlString3 appendString:v25];
    }

    else
    {
      if ([lowercaseString isEqualToString:@"en-todo"])
      {
        v26 = [attributesCopy objectForKeyedSubscript:@"checked"];
        bOOLValue = [v26 BOOLValue];

        htmlString2 = [(ICEvernoteContentParser *)self htmlString];
        v28 = @"NO";
        if (bOOLValue)
        {
          v28 = @"YES";
        }

        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{NotesCheckbox:%@}}", v28];
        [htmlString2 appendString:v29];

        goto LABEL_9;
      }

      if ([(ICEvernoteContentParser *)self shouldSelfCloseTagForStartElementName:lowercaseString])
      {
        goto LABEL_15;
      }

      if (attributesCopy && ([attributesCopy allKeys], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, v31))
      {
        v17 = [(ICEvernoteContentParser *)self stringFromAttributes:attributesCopy];
      }

      else
      {
        v17 = &stru_2827172C0;
      }

      htmlString3 = [(ICEvernoteContentParser *)self htmlString];
      [htmlString3 appendFormat:@"<%@%@>", lowercaseString, v17];
    }

    goto LABEL_13;
  }

  if ([(ICEvernoteContentParser *)self parserType]!= 1)
  {
    goto LABEL_15;
  }

  if ([lowercaseString isEqualToString:@"title"])
  {
    [(ICEvernoteContentParser *)self setShouldAppendCharactersToBuffer:1];
    v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(ICEvernoteContentParser *)self setHtmlString:v17];
LABEL_13:

    goto LABEL_15;
  }

  [(ICEvernoteContentParser *)self setShouldAppendCharactersToBuffer:0];
LABEL_15:
  objc_autoreleasePoolPop(v15);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  parserCopy = parser;
  charactersCopy = characters;
  v7 = objc_autoreleasePoolPush();
  bufferString = [(ICEvernoteContentParser *)self bufferString];

  if (!bufferString)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(ICEvernoteContentParser *)self setBufferString:v9];
  }

  bufferString2 = [(ICEvernoteContentParser *)self bufferString];
  [bufferString2 appendString:charactersCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  iCopy = i;
  nameCopy = name;
  v12 = objc_autoreleasePoolPush();
  lowercaseString = [element lowercaseString];
  if (![(ICEvernoteContentParser *)self parserType])
  {
    if ([lowercaseString isEqualToString:@"en-note"])
    {
      htmlString = [(ICEvernoteContentParser *)self htmlString];
      v16 = MEMORY[0x277CCACA8];
      bufferString = [(ICEvernoteContentParser *)self bufferString];
      bufferString3 = bufferString;
      v18 = &stru_2827172C0;
      if (bufferString)
      {
        v18 = bufferString;
      }

      [v16 stringWithFormat:@"%@</body></html>", v18, v24];
    }

    else
    {
      if ([lowercaseString isEqualToString:@"en-media"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"en-todo") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"en-crypt"))
      {
        goto LABEL_14;
      }

      v20 = [(ICEvernoteContentParser *)self shouldSelfCloseTagForStartElementName:lowercaseString];
      htmlString = [(ICEvernoteContentParser *)self htmlString];
      v21 = MEMORY[0x277CCACA8];
      bufferString2 = [(ICEvernoteContentParser *)self bufferString];
      bufferString3 = bufferString2;
      v23 = &stru_2827172C0;
      if (bufferString2)
      {
        v23 = bufferString2;
      }

      if (v20)
      {
        [v21 stringWithFormat:@"%@<%@/>", v23, lowercaseString];
      }

      else
      {
        [v21 stringWithFormat:@"%@</%@>", v23, lowercaseString];
      }
    }
    v19 = ;
    [htmlString appendString:v19];

    goto LABEL_10;
  }

  if (-[ICEvernoteContentParser parserType](self, "parserType") == 1 && [lowercaseString isEqualToString:@"title"])
  {
    htmlString = [(ICEvernoteContentParser *)self htmlString];
    bufferString3 = [(ICEvernoteContentParser *)self bufferString];
    [htmlString appendString:bufferString3];
LABEL_10:
  }

LABEL_14:
  [(ICEvernoteContentParser *)self setBufferString:0];
  objc_autoreleasePoolPop(v12);
}

- (id)stringFromAttributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [attributesCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [attributesCopy objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = &stru_2827172C0;
        }

        [v4 appendFormat:@" %@=%@", v10, v13];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)parseContentString:(id)string
{
  stringCopy = string;
  [(ICEvernoteContentParser *)self setShouldAppendCharactersToBuffer:1];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v6 = objc_alloc(MEMORY[0x277CCAE70]);
  v7 = [v11 dataUsingEncoding:4];
  v8 = [v6 initWithData:v7];
  [(ICEvernoteContentParser *)self setParser:v8];

  parser = [(ICEvernoteContentParser *)self parser];
  [parser setDelegate:self];

  parser2 = [(ICEvernoteContentParser *)self parser];
  [parser2 parse];
}

- (void)teardownParser
{
  [(ICEvernoteContentParser *)self setParser:0];
  [(ICEvernoteContentParser *)self setBufferString:0];

  [(ICEvernoteContentParser *)self setHtmlString:0];
}

- (BOOL)shouldSelfCloseTagForStartElementName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = shouldSelfCloseTagForStartElementName__ignoreList;
    if (!shouldSelfCloseTagForStartElementName__ignoreList)
    {
      shouldSelfCloseTagForStartElementName__ignoreList = &unk_282748048;

      v4 = &unk_282748048;
    }

    lowercaseString = [nameCopy lowercaseString];
    v6 = [v4 containsObject:lowercaseString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end