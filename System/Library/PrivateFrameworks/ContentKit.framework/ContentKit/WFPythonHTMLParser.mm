@interface WFPythonHTMLParser
- (NSRegularExpression)interestingExpression;
- (WFPythonHTMLParser)init;
- (WFPythonHTMLParserDelegate)delegate;
- (id)scanName:(int64_t)name declarationStartPosition:(int64_t)position location:(int64_t *)location;
- (int64_t)checkForWholeStartTag:(int64_t)tag;
- (int64_t)parseBogusComment:(int64_t)comment;
- (int64_t)parseComment:(int64_t)comment;
- (int64_t)parseEndTag:(int64_t)tag;
- (int64_t)parseHTMLDeclaration:(int64_t)declaration;
- (int64_t)parseMarkedSection:(int64_t)section;
- (int64_t)parseProcessingInstruction:(int64_t)instruction;
- (int64_t)parseStartTag:(int64_t)tag;
- (int64_t)updatePosition:(int64_t)position j:(int64_t)j;
- (void)feed:(id)feed;
- (void)handleCharacterRef:(id)ref;
- (void)handleComment:(id)comment;
- (void)handleData:(id)data;
- (void)handleDoctypeDeclaration:(id)declaration;
- (void)handleEndTag:(id)tag;
- (void)handleEntityRef:(id)ref;
- (void)handleProcessingInstruction:(id)instruction;
- (void)handleStartEndTag:(id)tag attributes:(id)attributes;
- (void)handleStartTag:(id)tag attributes:(id)attributes;
- (void)handleUnknownDeclaration:(id)declaration;
- (void)parseDataAndEnd:(BOOL)end;
- (void)reset;
- (void)setCdataElement:(id)element;
@end

@implementation WFPythonHTMLParser

- (WFPythonHTMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleUnknownDeclaration:(id)declaration
{
  declarationCopy = declaration;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundUnknownDeclaration:declarationCopy];
  }
}

- (void)handleProcessingInstruction:(id)instruction
{
  instructionCopy = instruction;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundProcessingInstruction:instructionCopy];
  }
}

- (void)handleDoctypeDeclaration:(id)declaration
{
  declarationCopy = declaration;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundDoctypeDeclaration:declarationCopy];
  }
}

- (void)handleComment:(id)comment
{
  commentCopy = comment;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundComment:commentCopy];
  }
}

- (void)handleCharacterRef:(id)ref
{
  refCopy = ref;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundCharacterRef:refCopy];
  }
}

- (void)handleEntityRef:(id)ref
{
  refCopy = ref;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundEntityRef:refCopy];
  }
}

- (void)handleEndTag:(id)tag
{
  tagCopy = tag;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundEndTag:tagCopy];
  }
}

- (void)handleData:(id)data
{
  dataCopy = data;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundData:dataCopy];
  }
}

- (void)handleStartTag:(id)tag attributes:(id)attributes
{
  tagCopy = tag;
  attributesCopy = attributes;
  delegate = [(WFPythonHTMLParser *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WFPythonHTMLParser *)self delegate];
    [delegate2 parser:self foundStartTag:tagCopy attributes:attributesCopy];
  }
}

- (void)handleStartEndTag:(id)tag attributes:(id)attributes
{
  tagCopy = tag;
  [(WFPythonHTMLParser *)self handleStartTag:tagCopy attributes:attributes];
  [(WFPythonHTMLParser *)self handleEndTag:tagCopy];
}

- (int64_t)updatePosition:(int64_t)position j:(int64_t)j
{
  v5 = j - position;
  if (j > position)
  {
    rawData = [(WFPythonHTMLParser *)self rawData];
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\n" options:0 error:0];
    v10 = [v9 numberOfMatchesInString:rawData options:0 range:{position, v5}];
    if (v10)
    {
      [(WFPythonHTMLParser *)self setCurrentLineNumber:[(WFPythonHTMLParser *)self currentLineNumber]+ v10];
      v11 = ~[rawData rangeOfString:@"\n" options:4 range:{position, v5}] + j;
    }

    else
    {
      v11 = [(WFPythonHTMLParser *)self currentOffset]+ v5;
    }

    [(WFPythonHTMLParser *)self setCurrentOffset:v11];
  }

  return j;
}

- (int64_t)parseEndTag:(int64_t)tag
{
  rawData = [(WFPythonHTMLParser *)self rawData];
  v7 = [rawData substringFromIndex:tag];
  v8 = [v7 hasPrefix:@"</"];

  if ((v8 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:429 description:@"Unexpected call to -parseEndTag:"];
  }

  endEndTagExpression = [(WFPythonHTMLParser *)self endEndTagExpression];
  v10 = [endEndTagExpression firstMatchInString:rawData options:0 range:{tag + 1, objc_msgSend(rawData, "length") - (tag + 1)}];

  if (v10)
  {
    range = [v10 range];
    [v10 range];
    v13 = v12 + range;
    endTagFindExpression = [(WFPythonHTMLParser *)self endTagFindExpression];
    v15 = [endTagFindExpression firstMatchInString:rawData options:4 range:{tag, objc_msgSend(rawData, "length") - tag}];

    if (v15)
    {
      v16 = [v15 rangeAtIndex:1];
      v18 = [rawData substringWithRange:{v16, v17}];
      lowercaseString = [v18 lowercaseString];

      cdataElement = [(WFPythonHTMLParser *)self cdataElement];

      if (cdataElement && (-[WFPythonHTMLParser cdataElement](self, "cdataElement"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [lowercaseString isEqualToString:v21], v21, (v22 & 1) == 0))
      {
        v24 = [rawData substringWithRange:{tag, v13 - tag}];
        [(WFPythonHTMLParser *)self handleData:v24];
      }

      else
      {
        [(WFPythonHTMLParser *)self handleEndTag:lowercaseString];
        [(WFPythonHTMLParser *)self setCdataElement:0];
      }
    }

    else
    {
      cdataElement2 = [(WFPythonHTMLParser *)self cdataElement];

      if (cdataElement2)
      {
        lowercaseString = [rawData substringWithRange:{tag, v13 - tag}];
        [(WFPythonHTMLParser *)self handleData:lowercaseString];
      }

      else
      {
        tagFindExpression = [(WFPythonHTMLParser *)self tagFindExpression];
        lowercaseString = [tagFindExpression firstMatchInString:rawData options:4 range:{tag + 2, objc_msgSend(rawData, "length") - (tag + 2)}];

        if (lowercaseString)
        {
          v26 = [lowercaseString rangeAtIndex:1];
          v28 = [rawData substringWithRange:{v26, v27}];
          lowercaseString2 = [v28 lowercaseString];

          range2 = [lowercaseString range];
          [lowercaseString range];
          v32 = [rawData rangeOfString:@">" options:0 range:{v31 + range2, objc_msgSend(rawData, "length") - (v31 + range2)}];
          [(WFPythonHTMLParser *)self handleEndTag:lowercaseString2];
          v13 = v32 + 1;
        }

        else
        {
          v33 = [rawData substringWithRange:{tag, 3}];
          v34 = [v33 isEqualToString:@"</>"];

          if (v34)
          {
            lowercaseString = 0;
            v13 = tag + 3;
          }

          else
          {
            v13 = [(WFPythonHTMLParser *)self parseBogusComment:tag];
            lowercaseString = 0;
          }
        }
      }
    }
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (int64_t)checkForWholeStartTag:(int64_t)tag
{
  rawData = [(WFPythonHTMLParser *)self rawData];
  locateStartTagEndExpression = [(WFPythonHTMLParser *)self locateStartTagEndExpression];
  v8 = [locateStartTagEndExpression firstMatchInString:rawData options:4 range:{tag, objc_msgSend(rawData, "length") - tag}];

  if (v8)
  {
    range = [v8 range];
    [v8 range];
    v11 = v10 + range;
    currentHandler = [rawData substringWithRange:{v10 + range, 1}];
    if ([currentHandler isEqualToString:@">"])
    {
      v13 = v11 + 1;
    }

    else
    {
      if ([currentHandler isEqualToString:@"/"])
      {
        v14 = [rawData substringFromIndex:v11];
        v15 = [v14 hasPrefix:@"/>"];

        if (v15)
        {
          v13 = v11 + 2;
          goto LABEL_18;
        }

        v16 = [rawData substringFromIndex:v11];
        v17 = [v16 hasPrefix:@"/"];
      }

      else
      {
        if ([currentHandler isEqualToString:&stru_282F53518])
        {
          v13 = -1;
          goto LABEL_18;
        }

        v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz=/ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        v17 = [v16 characterIsMember:{objc_msgSend(currentHandler, "characterAtIndex:", 0)}];
      }

      v18 = v17;

      if (v11 <= tag)
      {
        v19 = tag + 1;
      }

      else
      {
        v19 = v11;
      }

      if (v18)
      {
        v13 = -1;
      }

      else
      {
        v13 = v19;
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:422 description:@"Apparently this isn't supposed to happen"];
    v13 = 700;
  }

LABEL_18:

  return v13;
}

- (int64_t)parseStartTag:(int64_t)tag
{
  v47 = [(WFPythonHTMLParser *)self checkForWholeStartTag:?];
  if ((v47 & 0x8000000000000000) == 0)
  {
    rawData = [(WFPythonHTMLParser *)self rawData];
    v46 = objc_opt_new();
    tagFindExpression = [(WFPythonHTMLParser *)self tagFindExpression];
    tagCopy = tag;
    v8 = [tagFindExpression firstMatchInString:rawData options:4 range:{tag + 1, objc_msgSend(rawData, "length") - (tag + 1)}];

    if ([v8 numberOfRanges] <= 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:349 description:@"Uh ohhhh"];
    }

    range = [v8 range];
    [v8 range];
    v11 = v10 + range;
    v12 = [v8 rangeAtIndex:1];
    v14 = [rawData substringWithRange:{v12, v13}];
    lowercaseString = [v14 lowercaseString];

    while (v11 < v47)
    {
      attributeFindExpression = [(WFPythonHTMLParser *)self attributeFindExpression];
      v16 = [attributeFindExpression firstMatchInString:rawData options:4 range:{v11, objc_msgSend(rawData, "length") - v11}];

      if (!v16)
      {
        break;
      }

      v17 = [v16 rangeAtIndex:1];
      v19 = v18;
      v20 = [v16 rangeAtIndex:2];
      v22 = v21;
      v23 = [v16 rangeAtIndex:3];
      v25 = v24;
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = 0;
      }

      else
      {
        v26 = [rawData substringWithRange:{v17, v19}];
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = 1;
      }

      else
      {
        v28 = [rawData substringWithRange:{v20, v22}];

        v27 = v28 == 0;
      }

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = 0;
        if (v27)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v29 = [rawData substringWithRange:{v23, v25}];
        if (v27)
        {
LABEL_22:
          gtm_stringByUnescapingFromHTML = 0;
          goto LABEL_23;
        }
      }

      if ([v29 hasPrefix:@"'"] && (objc_msgSend(v29, "hasSuffix:", @"'") & 1) != 0 || objc_msgSend(v29, "hasPrefix:", @") && objc_msgSend(v29, "hasSuffix:", @"))
      {
        v30 = [v29 substringWithRange:{1, objc_msgSend(v29, "length") - 2}];

        v29 = v30;
      }

      if (!v29)
      {
        gtm_stringByUnescapingFromHTML = 0;
        goto LABEL_24;
      }

      gtm_stringByUnescapingFromHTML = [v29 gtm_stringByUnescapingFromHTML];
LABEL_23:

LABEL_24:
      v32 = [WFPythonHTMLAttribute alloc];
      lowercaseString2 = [v26 lowercaseString];
      v34 = [(WFPythonHTMLAttribute *)v32 initWithName:lowercaseString2 value:gtm_stringByUnescapingFromHTML];

      [v46 addObject:v34];
      range2 = [v16 range];
      [v16 range];
      v11 = v36 + range2;
    }

    v37 = [rawData substringWithRange:{v11, v47 - v11}];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v39 = [v37 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v39 isEqualToString:@">"] & 1) != 0 || (objc_msgSend(v39, "isEqualToString:", @"/>"))
    {
      if ([v39 hasSuffix:@"/>"])
      {
        v40 = lowercaseString;
        [(WFPythonHTMLParser *)self handleStartEndTag:lowercaseString attributes:v46];
      }

      else
      {
        v40 = lowercaseString;
        [(WFPythonHTMLParser *)self handleStartTag:lowercaseString attributes:v46];
        if (([lowercaseString isEqualToString:@"script"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"style"))
        {
          [(WFPythonHTMLParser *)self setCdataElement:lowercaseString];
        }
      }
    }

    else
    {
      v41 = [rawData substringWithRange:{tagCopy, v47 - tagCopy}];
      [(WFPythonHTMLParser *)self handleData:v41];

      v40 = lowercaseString;
    }
  }

  return v47;
}

- (int64_t)parseProcessingInstruction:(int64_t)instruction
{
  rawData = [(WFPythonHTMLParser *)self rawData];
  v7 = [rawData substringFromIndex:instruction];

  if (([v7 hasPrefix:@"<?"] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:329 description:@"Unexpected call to -parseProcessingInstruction"];
  }

  v8 = [v7 rangeOfString:@">" options:0 range:{2, objc_msgSend(v7, "length") - 2}];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v10 = v8;
    v11 = [v7 substringWithRange:{2, v8 - 2}];
    [(WFPythonHTMLParser *)self handleProcessingInstruction:v11];

    v9 = instruction + v10 + 1;
  }

  return v9;
}

- (int64_t)parseBogusComment:(int64_t)comment
{
  rawData = [(WFPythonHTMLParser *)self rawData];
  v7 = [rawData substringFromIndex:comment];

  if (([v7 hasPrefix:@"<!"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"</") & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:316 description:@"Unexpected call to -parseBogusComment"];
  }

  v8 = [v7 rangeOfString:@">" options:0 range:{2, objc_msgSend(v7, "length") - 2}];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v10 = v8;
    v11 = [v7 substringWithRange:{2, v8 - 2}];
    [(WFPythonHTMLParser *)self handleComment:v11];

    v9 = comment + v10 + 1;
  }

  return v9;
}

- (int64_t)parseHTMLDeclaration:(int64_t)declaration
{
  rawData = [(WFPythonHTMLParser *)self rawData];
  v6 = [rawData substringFromIndex:declaration];

  if ([v6 hasPrefix:@"<!--"])
  {
    v7 = [(WFPythonHTMLParser *)self parseComment:declaration];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  if ([v6 hasPrefix:@"<!["])
  {
    v7 = [(WFPythonHTMLParser *)self parseMarkedSection:declaration];
    goto LABEL_7;
  }

  if ([v6 rangeOfString:@"<!doctype" options:9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(WFPythonHTMLParser *)self parseBogusComment:declaration];
    goto LABEL_7;
  }

  v10 = [v6 rangeOfString:@">" options:0 range:{9, objc_msgSend(v6, "length") - 9}];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = -1;
  }

  else
  {
    v11 = v10;
    v12 = [v6 substringWithRange:{2, v10 - 2}];
    [(WFPythonHTMLParser *)self handleDoctypeDeclaration:v12];

    v8 = declaration + v11 + 1;
  }

LABEL_8:

  return v8;
}

- (int64_t)parseComment:(int64_t)comment
{
  rawData = [(WFPythonHTMLParser *)self rawData];
  v7 = [rawData substringFromIndex:comment];

  if (([v7 hasPrefix:@"<!--"] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:284 description:@"Unexpected call to -parseComment:"];
  }

  commentCloseExpression = [(WFPythonHTMLParser *)self commentCloseExpression];
  v9 = [commentCloseExpression firstMatchInString:v7 options:0 range:{4, objc_msgSend(v7, "length") - 4}];

  if (v9)
  {
    v10 = [v7 substringWithRange:{4, objc_msgSend(v9, "range") - 4}];
    [(WFPythonHTMLParser *)self handleComment:v10];

    v11 = [v9 range] + comment;
    [v9 range];
    v13 = v11 + v12;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (int64_t)parseMarkedSection:(int64_t)section
{
  v24 = *MEMORY[0x277D85DE8];
  rawData = [(WFPythonHTMLParser *)self rawData];
  v7 = [rawData substringFromIndex:section];

  if (([v7 hasPrefix:@"<!["] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:253 description:@"Unexpected call to -parseMarkedSection:"];
  }

  range = 0;
  v8 = [(WFPythonHTMLParser *)self scanName:section + 3 declarationStartPosition:section location:&range];
  v9 = range;
  if ((range & 0x8000000000000000) == 0)
  {
    if ([&unk_282F7BEA8 containsObject:v8])
    {
      v10 = @"]\\s*]\\s*>";
    }

    else
    {
      if (([&unk_282F7BEC0 containsObject:v8] & 1) == 0)
      {
        v12 = getWFGeneralLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = [v7 substringWithRange:{3, range}];
          *buf = 136315394;
          v21 = "[WFPythonHTMLParser parseMarkedSection:]";
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_ERROR, "%s Unknown status keyword %@ in marked section", buf, 0x16u);
        }

        v9 = -1;
        goto LABEL_14;
      }

      v10 = @"]\\s*>";
    }

    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v10 options:0 error:0];
    v12 = [v11 firstMatchInString:v7 options:0 range:{3, objc_msgSend(v7, "length") - 3}];

    if (v12)
    {
      range = [v12 range];
      v13 = [v7 substringWithRange:{3, range}];
      [(WFPythonHTMLParser *)self handleUnknownDeclaration:v13];

      v14 = [v12 range]+ section;
      [v12 range];
      v9 = v14 + v15;
LABEL_14:

      goto LABEL_15;
    }

    v9 = -1;
  }

LABEL_15:

  return v9;
}

- (id)scanName:(int64_t)name declarationStartPosition:(int64_t)position location:(int64_t *)location
{
  v28 = *MEMORY[0x277D85DE8];
  rawData = [(WFPythonHTMLParser *)self rawData];
  v10 = [rawData substringFromIndex:name];

  v11 = [v10 length];
  if (v11 == name)
  {
    lowercaseString = 0;
    *location = -1;
  }

  else
  {
    v13 = v11;
    v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[a-zA-Z][-_.a-zA-Z0-9]*\\s*" options:0 error:0];
    v15 = [v14 firstMatchInString:v10 options:4 range:{0, objc_msgSend(v10, "length")}];
    v16 = v15;
    if (v15)
    {
      range = [v15 range];
      v19 = [v10 substringWithRange:{range, v18}];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v21 = [v19 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      if ([v19 length] + name == v13)
      {
        lowercaseString = 0;
        *location = -1;
      }

      else
      {
        v23 = [v16 range] + name;
        [v16 range];
        *location = v23 + v24;
        lowercaseString = [v21 lowercaseString];
      }
    }

    else
    {
      [(WFPythonHTMLParser *)self updatePosition:position j:name];
      v22 = getWFGeneralLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315138;
        v27 = "[WFPythonHTMLParser scanName:declarationStartPosition:location:]";
        _os_log_impl(&dword_21E1BD000, v22, OS_LOG_TYPE_ERROR, "%s Python HTML parser expected name token", &v26, 0xCu);
      }

      lowercaseString = 0;
    }
  }

  return lowercaseString;
}

- (void)parseDataAndEnd:(BOOL)end
{
  endCopy = end;
  selfCopy = self;
  rawData = [(WFPythonHTMLParser *)self rawData];
  v4 = [rawData length];
  v5 = 0;
  while (v4 > v5)
  {
    interestingExpression = [(WFPythonHTMLParser *)selfCopy interestingExpression];
    v7 = [interestingExpression firstMatchInString:rawData options:0 range:{v5, v4 - v5}];

    if (v7)
    {
      range = [v7 range];
    }

    else
    {
      cdataElement = [(WFPythonHTMLParser *)selfCopy cdataElement];

      range = v4;
      if (cdataElement)
      {
        v7 = 0;
        goto LABEL_64;
      }
    }

    if (range > v5)
    {
      v10 = [rawData substringWithRange:{v5, range - v5}];
      [(WFPythonHTMLParser *)selfCopy handleData:v10];
    }

    v11 = [(WFPythonHTMLParser *)selfCopy updatePosition:v5 j:range];
    if (v11 == v4)
    {
      v5 = v4;
LABEL_64:

      break;
    }

    v5 = v11;
    v12 = [rawData substringFromIndex:v11];
    v64 = v7;
    if ([v12 hasPrefix:@"<"])
    {
      startTagOpenExpression = [(WFPythonHTMLParser *)selfCopy startTagOpenExpression];
      v14 = [startTagOpenExpression numberOfMatchesInString:v12 options:4 range:{0, objc_msgSend(v12, "length")}];

      if (v14)
      {
        v15 = [(WFPythonHTMLParser *)selfCopy parseStartTag:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"</"])
      {
        v15 = [(WFPythonHTMLParser *)selfCopy parseEndTag:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"<!--"])
      {
        v15 = [(WFPythonHTMLParser *)selfCopy parseComment:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"<?"])
      {
        v15 = [(WFPythonHTMLParser *)selfCopy parseProcessingInstruction:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"<!"])
      {
        v15 = [(WFPythonHTMLParser *)selfCopy parseHTMLDeclaration:v5];
LABEL_42:
        v51 = v15;
        if (v15 < 0)
        {
LABEL_43:
          if (!endCopy)
          {
            goto LABEL_63;
          }

          if ([rawData rangeOfString:@">" options:0 range:{1, objc_msgSend(rawData, "length") - 1}] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v52 = [rawData rangeOfString:@"<" options:0 range:{1, objc_msgSend(rawData, "length") - 1}];
            if (v52 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v51 = v5 + 1;
            }

            else
            {
              v51 = v52;
            }
          }

          else
          {
            v51 = v5 + 1;
          }

          v53 = [rawData substringWithRange:{v5, v51 - v5}];
          [(WFPythonHTMLParser *)selfCopy handleData:v53];
        }
      }

      else
      {
        v51 = v5 + 1;
        if (v5 + 1 >= v4)
        {
LABEL_63:

          goto LABEL_64;
        }

        [(WFPythonHTMLParser *)selfCopy handleData:@"<"];
        if (v51 < 0)
        {
          goto LABEL_43;
        }
      }

      v54 = selfCopy;
      v55 = v5;
      v56 = v51;
LABEL_51:
      v5 = [(WFPythonHTMLParser *)v54 updatePosition:v55 j:v56];
      v21 = 0;
      goto LABEL_52;
    }

    if ([v12 hasPrefix:@"&#"])
    {
      charrefExpression = [(WFPythonHTMLParser *)selfCopy charrefExpression];
      v17 = [charrefExpression firstMatchInString:rawData options:4 range:{v5, objc_msgSend(rawData, "length") - v5}];

      if (v17)
      {
        range2 = [v17 range];
        v20 = [rawData substringWithRange:{range2, v19}];
        v21 = 2;
        v61 = [v20 substringWithRange:{2, objc_msgSend(v20, "length") - 3}];
        [(WFPythonHTMLParser *)selfCopy handleCharacterRef:v61];
        range3 = [v17 range];
        [v17 range];
        v62 = v17;
        v23 = v4;
        v24 = selfCopy;
        v26 = v25 + range3;
        v27 = v25 + range3 - 1;
        v28 = [rawData substringFromIndex:v27];
        v29 = [v28 hasPrefix:@";"];

        if (v29)
        {
          v30 = v26;
        }

        else
        {
          v30 = v27;
        }

        selfCopy = v24;
        v4 = v23;
        v17 = v62;
        v5 = [(WFPythonHTMLParser *)selfCopy updatePosition:v5 j:v30];

        goto LABEL_30;
      }

      if ([rawData rangeOfString:@";" options:0 range:{v5, objc_msgSend(rawData, "length") - v5}] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = [rawData substringWithRange:{v5, 2}];
        [(WFPythonHTMLParser *)selfCopy handleData:v44];

        v5 = [(WFPythonHTMLParser *)selfCopy updatePosition:v5 j:v5 + 2];
      }

LABEL_29:
      v21 = 3;
LABEL_30:

      goto LABEL_52;
    }

    if ([v12 hasPrefix:@"&"])
    {
      entityrefExpression = [(WFPythonHTMLParser *)selfCopy entityrefExpression];
      v17 = [entityrefExpression firstMatchInString:rawData options:4 range:{v5, objc_msgSend(rawData, "length") - v5}];

      if (v17)
      {
        v32 = [v17 rangeAtIndex:1];
        v34 = [rawData substringWithRange:{v32, v33}];
        [(WFPythonHTMLParser *)selfCopy handleEntityRef:v34];
        range4 = [v17 range];
        [v17 range];
        v36 = selfCopy;
        v38 = v37 + range4;
        v39 = v37 + range4 - 1;
        v40 = [rawData substringFromIndex:v39];
        v41 = [v40 hasPrefix:@";"];

        if (v41)
        {
          v42 = v38;
        }

        else
        {
          v42 = v39;
        }

        selfCopy = v36;
        v5 = [(WFPythonHTMLParser *)v36 updatePosition:v5 j:v42];

        v21 = 2;
        goto LABEL_30;
      }

      incompleteExpression = [(WFPythonHTMLParser *)selfCopy incompleteExpression];
      v17 = [incompleteExpression firstMatchInString:rawData options:4 range:{v5, objc_msgSend(rawData, "length") - v5}];

      if (v17)
      {
        if (endCopy)
        {
          range5 = [v17 range];
          v48 = [rawData substringWithRange:{range5, v47}];
          v49 = [rawData substringFromIndex:v5];
          v50 = [v48 isEqualToString:v49];

          if (v50)
          {
            [v17 range];
            [v17 range];
            v5 = [(WFPythonHTMLParser *)selfCopy updatePosition:v5 j:v5 + 1];
          }

          v21 = 3;
        }

        else
        {
          v21 = 3;
        }

        goto LABEL_30;
      }

      if (v5 + 1 < v4)
      {
        [(WFPythonHTMLParser *)selfCopy handleData:@"&"];
        v54 = selfCopy;
        v55 = v5;
        v56 = v5 + 1;
        goto LABEL_51;
      }

      v17 = 0;
      goto LABEL_29;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"WFPythonHTMLParser.m" lineNumber:211 description:@"There is nothing interesting to consume!"];

    v21 = 0;
LABEL_52:

    if (v21 == 3)
    {
      break;
    }
  }

  if (endCopy && v4 > v5)
  {
    cdataElement2 = [(WFPythonHTMLParser *)selfCopy cdataElement];

    if (!cdataElement2)
    {
      v58 = [rawData substringWithRange:{v5, v4 - v5}];
      [(WFPythonHTMLParser *)selfCopy handleData:v58];

      v5 = [(WFPythonHTMLParser *)selfCopy updatePosition:v5 j:v4];
    }
  }

  v59 = [rawData substringFromIndex:v5];
  [(WFPythonHTMLParser *)selfCopy setRawData:v59];
}

- (void)setCdataElement:(id)element
{
  elementCopy = element;
  v4 = [elementCopy copy];
  cdataElement = self->_cdataElement;
  self->_cdataElement = v4;

  if (elementCopy)
  {
    v6 = MEMORY[0x277CCAC68];
    elementCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"</\\s*%@\\s*>", elementCopy];
    v8 = [v6 regularExpressionWithPattern:elementCopy options:1 error:0];
    [(WFPythonHTMLParser *)self setInterestingExpression:v8];
  }

  else
  {
    [(WFPythonHTMLParser *)self setInterestingExpression:0];
  }
}

- (void)feed:(id)feed
{
  feedCopy = feed;
  rawData = [(WFPythonHTMLParser *)self rawData];
  v6 = [rawData stringByAppendingString:feedCopy];

  [(WFPythonHTMLParser *)self setRawData:v6];

  [(WFPythonHTMLParser *)self parseDataAndEnd:0];
}

- (void)reset
{
  rawData = self->_rawData;
  self->_rawData = &stru_282F53518;

  interestingExpression = self->_interestingExpression;
  self->_interestingExpression = 0;

  cdataElement = self->_cdataElement;
  self->_cdataElement = 0;

  *&self->_currentLineNumber = xmmword_21E354130;
}

- (NSRegularExpression)interestingExpression
{
  interestingExpression = self->_interestingExpression;
  if (!interestingExpression)
  {
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[&<]" options:0 error:0];
    v5 = self->_interestingExpression;
    self->_interestingExpression = v4;

    interestingExpression = self->_interestingExpression;
  }

  return interestingExpression;
}

- (WFPythonHTMLParser)init
{
  v25.receiver = self;
  v25.super_class = WFPythonHTMLParser;
  v2 = [(WFPythonHTMLParser *)&v25 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"&[a-zA-Z#]" options:0 error:0];
    incompleteExpression = v2->_incompleteExpression;
    v2->_incompleteExpression = v3;

    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"&([a-zA-Z][-.a-zA-Z0-9]*)[^a-zA-Z0-9]" options:0 error:0];
    entityrefExpression = v2->_entityrefExpression;
    v2->_entityrefExpression = v5;

    v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"&#(?:[0-9]+|[xX][0-9a-fA-F]+)[^0-9a-fA-F]" options:0 error:0];
    charrefExpression = v2->_charrefExpression;
    v2->_charrefExpression = v7;

    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<[a-zA-Z]" options:0 error:0];
    startTagOpenExpression = v2->_startTagOpenExpression;
    v2->_startTagOpenExpression = v9;

    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"--\\s*>" options:0 error:0];
    commentCloseExpression = v2->_commentCloseExpression;
    v2->_commentCloseExpression = v11;

    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-zA-Z][^\\t\\n\\r\\f />\\x00]*)(?:\\s|/(?!>))*" options:0 error:0];
    tagFindExpression = v2->_tagFindExpression;
    v2->_tagFindExpression = v13;

    v15 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"((?<=['\\s/])[^\\s/>][^\\s/=>]*)(\\s*=+\\s*('[^']*'|[^]*|(?!['])[^>\\s]*))?(?:\\s|/(?!>))*" options:0 error:0];
    attributeFindExpression = v2->_attributeFindExpression;
    v2->_attributeFindExpression = v15;

    v17 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<[a-zA-Z][^\\t\\n\\r\\f />\\x00]*(?:[\\s/]*(?:(?<=['\\s/])[^\\s/>][^\\s/=>]*(?:\\s*=+\\s*(?:'[^']*'|[^]*|(?!['])[^>\\s]*)(?:\\s* options:)*)?(?:\\s|/(?!>))*)*)?\\s*" error:{0, 0}];
    locateStartTagEndExpression = v2->_locateStartTagEndExpression;
    v2->_locateStartTagEndExpression = v17;

    v19 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@">" options:0 error:0];
    endEndTagExpression = v2->_endEndTagExpression;
    v2->_endEndTagExpression = v19;

    v21 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"</\\s*([a-zA-Z][-.a-zA-Z0-9:_]*)\\s*" options:0 error:0];
    endTagFindExpression = v2->_endTagFindExpression;
    v2->_endTagFindExpression = v21;

    [(WFPythonHTMLParser *)v2 reset];
    v23 = v2;
  }

  return v2;
}

@end