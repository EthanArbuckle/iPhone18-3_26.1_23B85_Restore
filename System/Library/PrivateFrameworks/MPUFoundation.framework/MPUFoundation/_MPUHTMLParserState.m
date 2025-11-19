@interface _MPUHTMLParserState
- (BOOL)parse:(id *)a3;
- (_MPUHTMLParserState)initWithParser:(id)a3 data:(id)a4;
- (id)attributedString;
- (id)currentTagAttributes;
- (id)tagStack;
- (void)_appendString:(id)a3;
- (void)_characters:(const char *)a3 length:(int)a4;
- (void)_endElement:(const char *)a3;
- (void)_error:(int64_t)a3 msg:(const char *)a4 args:(char *)a5;
- (void)_startDocument;
- (void)_startElement:(const char *)a3 attrs:(const char *)a4;
@end

@implementation _MPUHTMLParserState

- (void)_startDocument
{
  if (*&self->_delegateCapabilites)
  {
    v4 = [(MPUHTMLParserDelegate *)self->_delegate defaultAttributesForParser:self->_parser];
    if (v4)
    {
      [(NSMutableArray *)self->_attributeDictionaries addObject:v4];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)_startElement:(const char *)a3 attrs:(const char *)a4
{
  v20 = _MPUHTMLStringFromXMLString(a3, 1);
  [(NSMutableArray *)self->_tagStack addObject:?];
  v6 = [(NSMutableArray *)self->_stringStack lastObject];
  [(_MPUHTMLParserState *)self _appendString:v6];
  v7 = [(NSMutableArray *)self->_stringStack lastObject];
  [v7 setString:&stru_2868E4110];

  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(NSMutableArray *)self->_stringStack addObject:v8];
  delegateCapabilites = self->_delegateCapabilites;
  if ((delegateCapabilites & 4) != 0)
  {
    v10 = [(MPUHTMLParserDelegate *)self->_delegate parser:self->_parser prependStringForTagName:v20];
    if (v10)
    {
      [v8 appendString:v10];
    }

    delegateCapabilites = self->_delegateCapabilites;
  }

  if ((delegateCapabilites & 2) != 0)
  {
    if (a4)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = *a4;
      if (*a4)
      {
        v13 = a4 + 2;
        do
        {
          v14 = *(v13 - 1);
          if (!v14)
          {
            break;
          }

          v15 = _MPUHTMLStringFromXMLString(v14, 0);
          v16 = _MPUHTMLStringFromXMLString(v12, 1);
          [v11 setValue:v15 forKey:v16];

          v17 = *v13;
          v13 += 2;
          v12 = v17;
        }

        while (v17);
      }
    }

    else
    {
      v11 = 0;
    }

    v18 = [(MPUHTMLParserDelegate *)self->_delegate parser:self->_parser attributesForTagName:v20 tagAttributes:v11 currentState:self];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x277CBEC10];
    }

    [(NSMutableArray *)self->_attributeDictionaries addObject:v19];
  }
}

- (void)_endElement:(const char *)a3
{
  v4 = [(NSMutableArray *)self->_stringStack lastObject];
  [(_MPUHTMLParserState *)self _appendString:v4];
  [(NSMutableArray *)self->_attributeDictionaries removeLastObject];
  [(NSMutableArray *)self->_tagStack removeLastObject];
  [(NSMutableArray *)self->_stringStack removeLastObject];
}

- (void)_characters:(const char *)a3 length:(int)a4
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
  v5 = [(NSMutableArray *)self->_stringStack lastObject];
  [v5 appendString:v6];
}

- (void)_error:(int64_t)a3 msg:(const char *)a4 args:(char *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v10 = [v8 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%s" error:0, a5];

  v11 = MEMORY[0x277CCA9B8];
  v18 = *MEMORY[0x277CCA450];
  v19[0] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v13 = [v11 errorWithDomain:@"com.apple.music.htmlparsererror" code:a3 userInfo:v12];

  v14 = @"WARNING";
  if (a3 == 2)
  {
    v14 = @"FATAL";
  }

  if (a3 == 1)
  {
    v14 = @"ERROR";
  }

  NSLog(&cfstr_Xml.isa, v14, v10);
  errors = self->_errors;
  if (!errors)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = self->_errors;
    self->_errors = v16;

    errors = self->_errors;
  }

  [(NSMutableArray *)errors addObject:v13];
}

- (void)_appendString:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(_MPUHTMLParserState *)self currentTagAttributes];
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v4];
    [(NSMutableAttributedString *)self->_attributedString appendAttributedString:v5];
  }
}

- (id)currentTagAttributes
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_attributeDictionaries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addEntriesFromDictionary:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (_MPUHTMLParserState)initWithParser:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _MPUHTMLParserState;
  v9 = [(_MPUHTMLParserState *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_selfRef = v9;
    objc_storeStrong(&v9->_parser, a3);
    objc_storeStrong(&v10->_data, a4);
    v11 = [v7 delegate];
    delegate = v10->_delegate;
    v10->_delegate = v11;

    *&v10->_delegateCapabilites = *&v10->_delegateCapabilites & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&v10->_delegateCapabilites = *&v10->_delegateCapabilites & 0xFD | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&v10->_delegateCapabilites = *&v10->_delegateCapabilites & 0xFB | v14;
  }

  return v10;
}

- (BOOL)parse:(id *)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAB48]);
  attributedString = self->_attributedString;
  self->_attributedString = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  attributeDictionaries = self->_attributeDictionaries;
  self->_attributeDictionaries = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  tagStack = self->_tagStack;
  self->_tagStack = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  stringStack = self->_stringStack;
  self->_stringStack = v11;

  v13 = xmlCharStrndup([(NSData *)self->_data bytes], [(NSData *)self->_data length]);
  CharEncodingName = xmlGetCharEncodingName(XML_CHAR_ENCODING_UTF8);
  if (_MPUHTMLParserStateSAXInitSharedHandler_onceToken != -1)
  {
    [_MPUHTMLParserState parse:];
  }

  htmlSAXParseDoc(v13, CharEncodingName, _MPUHTMLParserStateSAXInitSharedHandler___gMPUHTMLParserStateSAXHandler, self->_selfRef);
  xmlCleanupParser();
  free(v13);
  if (a3)
  {
    if ([(NSMutableArray *)self->_errors count])
    {
      v15 = MEMORY[0x277CCA9B8];
      v27 = @"errors";
      v16 = [(NSMutableArray *)self->_errors copy];
      v28[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *a3 = [v15 errorWithDomain:@"com.apple.music.htmlparsererror" code:0 userInfo:v17];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v18 = self->_errors;
      a3 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (a3)
      {
        v19 = *v23;
        while (2)
        {
          v20 = 0;
          do
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v18);
            }

            if ([*(*(&v22 + 1) + 8 * v20) code])
            {
              LOBYTE(a3) = 1;
              goto LABEL_15;
            }

            v20 = (v20 + 1);
          }

          while (a3 != v20);
          a3 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (a3)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(a3) = 0;
    }
  }

  return a3;
}

- (id)attributedString
{
  v2 = [(NSMutableAttributedString *)self->_attributedString copy];

  return v2;
}

- (id)tagStack
{
  v2 = [(NSMutableArray *)self->_tagStack copy];

  return v2;
}

@end