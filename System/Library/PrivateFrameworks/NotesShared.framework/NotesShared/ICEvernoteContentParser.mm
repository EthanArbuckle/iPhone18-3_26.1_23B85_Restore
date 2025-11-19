@interface ICEvernoteContentParser
- (BOOL)shouldSelfCloseTagForStartElementName:(id)a3;
- (id)htmlStringFromEvernoteContentString:(id)a3;
- (id)stringFromAttributes:(id)a3;
- (id)titleFromHTMLString:(id)a3;
- (void)parseContentString:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)teardownParser;
@end

@implementation ICEvernoteContentParser

- (id)htmlStringFromEvernoteContentString:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(ICEvernoteContentParser *)self setParserType:0];
  [(ICEvernoteContentParser *)self parseContentString:v4];
  v6 = [(ICEvernoteContentParser *)self htmlString];
  v7 = [v6 copy];

  [(ICEvernoteContentParser *)self teardownParser];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)titleFromHTMLString:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(ICEvernoteContentParser *)self setParserType:1];
  [(ICEvernoteContentParser *)self parseContentString:v4];
  v6 = [(ICEvernoteContentParser *)self htmlString];
  v7 = [v6 copy];

  [(ICEvernoteContentParser *)self teardownParser];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v32 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = [a4 lowercaseString];
  if (![(ICEvernoteContentParser *)self parserType])
  {
    v18 = [(ICEvernoteContentParser *)self bufferString];
    v19 = [v18 length];

    if (v19)
    {
      v20 = [(ICEvernoteContentParser *)self htmlString];
      v21 = [(ICEvernoteContentParser *)self bufferString];
      [v20 appendString:v21];

      [(ICEvernoteContentParser *)self setBufferString:0];
    }

    if ([v16 isEqualToString:@"en-note"])
    {
      v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
      [(ICEvernoteContentParser *)self setHtmlString:v22];

      v23 = [(ICEvernoteContentParser *)self htmlString];
      [v23 appendString:@"<html><head><meta charset=utf-8></head><body>"];
LABEL_9:

      goto LABEL_15;
    }

    if ([v16 isEqualToString:@"en-media"])
    {
      v17 = [v14 objectForKeyedSubscript:@"hash"];
      v24 = [(ICEvernoteContentParser *)self htmlString];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{NotesAttachment:%@}}", v17];
      [v24 appendString:v25];
    }

    else
    {
      if ([v16 isEqualToString:@"en-todo"])
      {
        v26 = [v14 objectForKeyedSubscript:@"checked"];
        v27 = [v26 BOOLValue];

        v23 = [(ICEvernoteContentParser *)self htmlString];
        v28 = @"NO";
        if (v27)
        {
          v28 = @"YES";
        }

        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{NotesCheckbox:%@}}", v28];
        [v23 appendString:v29];

        goto LABEL_9;
      }

      if ([(ICEvernoteContentParser *)self shouldSelfCloseTagForStartElementName:v16])
      {
        goto LABEL_15;
      }

      if (v14 && ([v14 allKeys], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, v31))
      {
        v17 = [(ICEvernoteContentParser *)self stringFromAttributes:v14];
      }

      else
      {
        v17 = &stru_2827172C0;
      }

      v24 = [(ICEvernoteContentParser *)self htmlString];
      [v24 appendFormat:@"<%@%@>", v16, v17];
    }

    goto LABEL_13;
  }

  if ([(ICEvernoteContentParser *)self parserType]!= 1)
  {
    goto LABEL_15;
  }

  if ([v16 isEqualToString:@"title"])
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

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(ICEvernoteContentParser *)self bufferString];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(ICEvernoteContentParser *)self setBufferString:v9];
  }

  v10 = [(ICEvernoteContentParser *)self bufferString];
  [v10 appendString:v6];

  objc_autoreleasePoolPop(v7);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v25 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [a4 lowercaseString];
  if (![(ICEvernoteContentParser *)self parserType])
  {
    if ([v13 isEqualToString:@"en-note"])
    {
      v14 = [(ICEvernoteContentParser *)self htmlString];
      v16 = MEMORY[0x277CCACA8];
      v17 = [(ICEvernoteContentParser *)self bufferString];
      v15 = v17;
      v18 = &stru_2827172C0;
      if (v17)
      {
        v18 = v17;
      }

      [v16 stringWithFormat:@"%@</body></html>", v18, v24];
    }

    else
    {
      if ([v13 isEqualToString:@"en-media"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"en-todo") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"en-crypt"))
      {
        goto LABEL_14;
      }

      v20 = [(ICEvernoteContentParser *)self shouldSelfCloseTagForStartElementName:v13];
      v14 = [(ICEvernoteContentParser *)self htmlString];
      v21 = MEMORY[0x277CCACA8];
      v22 = [(ICEvernoteContentParser *)self bufferString];
      v15 = v22;
      v23 = &stru_2827172C0;
      if (v22)
      {
        v23 = v22;
      }

      if (v20)
      {
        [v21 stringWithFormat:@"%@<%@/>", v23, v13];
      }

      else
      {
        [v21 stringWithFormat:@"%@</%@>", v23, v13];
      }
    }
    v19 = ;
    [v14 appendString:v19];

    goto LABEL_10;
  }

  if (-[ICEvernoteContentParser parserType](self, "parserType") == 1 && [v13 isEqualToString:@"title"])
  {
    v14 = [(ICEvernoteContentParser *)self htmlString];
    v15 = [(ICEvernoteContentParser *)self bufferString];
    [v14 appendString:v15];
LABEL_10:
  }

LABEL_14:
  [(ICEvernoteContentParser *)self setBufferString:0];
  objc_autoreleasePoolPop(v12);
}

- (id)stringFromAttributes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
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

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)parseContentString:(id)a3
{
  v4 = a3;
  [(ICEvernoteContentParser *)self setShouldAppendCharactersToBuffer:1];
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v4 stringByTrimmingCharactersInSet:v5];

  v6 = objc_alloc(MEMORY[0x277CCAE70]);
  v7 = [v11 dataUsingEncoding:4];
  v8 = [v6 initWithData:v7];
  [(ICEvernoteContentParser *)self setParser:v8];

  v9 = [(ICEvernoteContentParser *)self parser];
  [v9 setDelegate:self];

  v10 = [(ICEvernoteContentParser *)self parser];
  [v10 parse];
}

- (void)teardownParser
{
  [(ICEvernoteContentParser *)self setParser:0];
  [(ICEvernoteContentParser *)self setBufferString:0];

  [(ICEvernoteContentParser *)self setHtmlString:0];
}

- (BOOL)shouldSelfCloseTagForStartElementName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = shouldSelfCloseTagForStartElementName__ignoreList;
    if (!shouldSelfCloseTagForStartElementName__ignoreList)
    {
      shouldSelfCloseTagForStartElementName__ignoreList = &unk_282748048;

      v4 = &unk_282748048;
    }

    v5 = [v3 lowercaseString];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end