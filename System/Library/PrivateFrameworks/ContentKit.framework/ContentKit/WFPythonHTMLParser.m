@interface WFPythonHTMLParser
- (NSRegularExpression)interestingExpression;
- (WFPythonHTMLParser)init;
- (WFPythonHTMLParserDelegate)delegate;
- (id)scanName:(int64_t)a3 declarationStartPosition:(int64_t)a4 location:(int64_t *)a5;
- (int64_t)checkForWholeStartTag:(int64_t)a3;
- (int64_t)parseBogusComment:(int64_t)a3;
- (int64_t)parseComment:(int64_t)a3;
- (int64_t)parseEndTag:(int64_t)a3;
- (int64_t)parseHTMLDeclaration:(int64_t)a3;
- (int64_t)parseMarkedSection:(int64_t)a3;
- (int64_t)parseProcessingInstruction:(int64_t)a3;
- (int64_t)parseStartTag:(int64_t)a3;
- (int64_t)updatePosition:(int64_t)a3 j:(int64_t)a4;
- (void)feed:(id)a3;
- (void)handleCharacterRef:(id)a3;
- (void)handleComment:(id)a3;
- (void)handleData:(id)a3;
- (void)handleDoctypeDeclaration:(id)a3;
- (void)handleEndTag:(id)a3;
- (void)handleEntityRef:(id)a3;
- (void)handleProcessingInstruction:(id)a3;
- (void)handleStartEndTag:(id)a3 attributes:(id)a4;
- (void)handleStartTag:(id)a3 attributes:(id)a4;
- (void)handleUnknownDeclaration:(id)a3;
- (void)parseDataAndEnd:(BOOL)a3;
- (void)reset;
- (void)setCdataElement:(id)a3;
@end

@implementation WFPythonHTMLParser

- (WFPythonHTMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleUnknownDeclaration:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundUnknownDeclaration:v7];
  }
}

- (void)handleProcessingInstruction:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundProcessingInstruction:v7];
  }
}

- (void)handleDoctypeDeclaration:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundDoctypeDeclaration:v7];
  }
}

- (void)handleComment:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundComment:v7];
  }
}

- (void)handleCharacterRef:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundCharacterRef:v7];
  }
}

- (void)handleEntityRef:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundEntityRef:v7];
  }
}

- (void)handleEndTag:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundEndTag:v7];
  }
}

- (void)handleData:(id)a3
{
  v7 = a3;
  v4 = [(WFPythonHTMLParser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFPythonHTMLParser *)self delegate];
    [v6 parser:self foundData:v7];
  }
}

- (void)handleStartTag:(id)a3 attributes:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFPythonHTMLParser *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WFPythonHTMLParser *)self delegate];
    [v9 parser:self foundStartTag:v10 attributes:v6];
  }
}

- (void)handleStartEndTag:(id)a3 attributes:(id)a4
{
  v6 = a3;
  [(WFPythonHTMLParser *)self handleStartTag:v6 attributes:a4];
  [(WFPythonHTMLParser *)self handleEndTag:v6];
}

- (int64_t)updatePosition:(int64_t)a3 j:(int64_t)a4
{
  v5 = a4 - a3;
  if (a4 > a3)
  {
    v8 = [(WFPythonHTMLParser *)self rawData];
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\n" options:0 error:0];
    v10 = [v9 numberOfMatchesInString:v8 options:0 range:{a3, v5}];
    if (v10)
    {
      [(WFPythonHTMLParser *)self setCurrentLineNumber:[(WFPythonHTMLParser *)self currentLineNumber]+ v10];
      v11 = ~[v8 rangeOfString:@"\n" options:4 range:{a3, v5}] + a4;
    }

    else
    {
      v11 = [(WFPythonHTMLParser *)self currentOffset]+ v5;
    }

    [(WFPythonHTMLParser *)self setCurrentOffset:v11];
  }

  return a4;
}

- (int64_t)parseEndTag:(int64_t)a3
{
  v6 = [(WFPythonHTMLParser *)self rawData];
  v7 = [v6 substringFromIndex:a3];
  v8 = [v7 hasPrefix:@"</"];

  if ((v8 & 1) == 0)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:429 description:@"Unexpected call to -parseEndTag:"];
  }

  v9 = [(WFPythonHTMLParser *)self endEndTagExpression];
  v10 = [v9 firstMatchInString:v6 options:0 range:{a3 + 1, objc_msgSend(v6, "length") - (a3 + 1)}];

  if (v10)
  {
    v11 = [v10 range];
    [v10 range];
    v13 = v12 + v11;
    v14 = [(WFPythonHTMLParser *)self endTagFindExpression];
    v15 = [v14 firstMatchInString:v6 options:4 range:{a3, objc_msgSend(v6, "length") - a3}];

    if (v15)
    {
      v16 = [v15 rangeAtIndex:1];
      v18 = [v6 substringWithRange:{v16, v17}];
      v19 = [v18 lowercaseString];

      v20 = [(WFPythonHTMLParser *)self cdataElement];

      if (v20 && (-[WFPythonHTMLParser cdataElement](self, "cdataElement"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v19 isEqualToString:v21], v21, (v22 & 1) == 0))
      {
        v24 = [v6 substringWithRange:{a3, v13 - a3}];
        [(WFPythonHTMLParser *)self handleData:v24];
      }

      else
      {
        [(WFPythonHTMLParser *)self handleEndTag:v19];
        [(WFPythonHTMLParser *)self setCdataElement:0];
      }
    }

    else
    {
      v23 = [(WFPythonHTMLParser *)self cdataElement];

      if (v23)
      {
        v19 = [v6 substringWithRange:{a3, v13 - a3}];
        [(WFPythonHTMLParser *)self handleData:v19];
      }

      else
      {
        v25 = [(WFPythonHTMLParser *)self tagFindExpression];
        v19 = [v25 firstMatchInString:v6 options:4 range:{a3 + 2, objc_msgSend(v6, "length") - (a3 + 2)}];

        if (v19)
        {
          v26 = [v19 rangeAtIndex:1];
          v28 = [v6 substringWithRange:{v26, v27}];
          v29 = [v28 lowercaseString];

          v30 = [v19 range];
          [v19 range];
          v32 = [v6 rangeOfString:@">" options:0 range:{v31 + v30, objc_msgSend(v6, "length") - (v31 + v30)}];
          [(WFPythonHTMLParser *)self handleEndTag:v29];
          v13 = v32 + 1;
        }

        else
        {
          v33 = [v6 substringWithRange:{a3, 3}];
          v34 = [v33 isEqualToString:@"</>"];

          if (v34)
          {
            v19 = 0;
            v13 = a3 + 3;
          }

          else
          {
            v13 = [(WFPythonHTMLParser *)self parseBogusComment:a3];
            v19 = 0;
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

- (int64_t)checkForWholeStartTag:(int64_t)a3
{
  v6 = [(WFPythonHTMLParser *)self rawData];
  v7 = [(WFPythonHTMLParser *)self locateStartTagEndExpression];
  v8 = [v7 firstMatchInString:v6 options:4 range:{a3, objc_msgSend(v6, "length") - a3}];

  if (v8)
  {
    v9 = [v8 range];
    [v8 range];
    v11 = v10 + v9;
    v12 = [v6 substringWithRange:{v10 + v9, 1}];
    if ([v12 isEqualToString:@">"])
    {
      v13 = v11 + 1;
    }

    else
    {
      if ([v12 isEqualToString:@"/"])
      {
        v14 = [v6 substringFromIndex:v11];
        v15 = [v14 hasPrefix:@"/>"];

        if (v15)
        {
          v13 = v11 + 2;
          goto LABEL_18;
        }

        v16 = [v6 substringFromIndex:v11];
        v17 = [v16 hasPrefix:@"/"];
      }

      else
      {
        if ([v12 isEqualToString:&stru_282F53518])
        {
          v13 = -1;
          goto LABEL_18;
        }

        v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz=/ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        v17 = [v16 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", 0)}];
      }

      v18 = v17;

      if (v11 <= a3)
      {
        v19 = a3 + 1;
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
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:422 description:@"Apparently this isn't supposed to happen"];
    v13 = 700;
  }

LABEL_18:

  return v13;
}

- (int64_t)parseStartTag:(int64_t)a3
{
  v47 = [(WFPythonHTMLParser *)self checkForWholeStartTag:?];
  if ((v47 & 0x8000000000000000) == 0)
  {
    v6 = [(WFPythonHTMLParser *)self rawData];
    v46 = objc_opt_new();
    v7 = [(WFPythonHTMLParser *)self tagFindExpression];
    v44 = a3;
    v8 = [v7 firstMatchInString:v6 options:4 range:{a3 + 1, objc_msgSend(v6, "length") - (a3 + 1)}];

    if ([v8 numberOfRanges] <= 1)
    {
      v43 = [MEMORY[0x277CCA890] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:349 description:@"Uh ohhhh"];
    }

    v9 = [v8 range];
    [v8 range];
    v11 = v10 + v9;
    v12 = [v8 rangeAtIndex:1];
    v14 = [v6 substringWithRange:{v12, v13}];
    v45 = [v14 lowercaseString];

    while (v11 < v47)
    {
      v15 = [(WFPythonHTMLParser *)self attributeFindExpression];
      v16 = [v15 firstMatchInString:v6 options:4 range:{v11, objc_msgSend(v6, "length") - v11}];

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
        v26 = [v6 substringWithRange:{v17, v19}];
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = 1;
      }

      else
      {
        v28 = [v6 substringWithRange:{v20, v22}];

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
        v29 = [v6 substringWithRange:{v23, v25}];
        if (v27)
        {
LABEL_22:
          v31 = 0;
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
        v31 = 0;
        goto LABEL_24;
      }

      v31 = [v29 gtm_stringByUnescapingFromHTML];
LABEL_23:

LABEL_24:
      v32 = [WFPythonHTMLAttribute alloc];
      v33 = [v26 lowercaseString];
      v34 = [(WFPythonHTMLAttribute *)v32 initWithName:v33 value:v31];

      [v46 addObject:v34];
      v35 = [v16 range];
      [v16 range];
      v11 = v36 + v35;
    }

    v37 = [v6 substringWithRange:{v11, v47 - v11}];
    v38 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v39 = [v37 stringByTrimmingCharactersInSet:v38];

    if ([v39 isEqualToString:@">"] & 1) != 0 || (objc_msgSend(v39, "isEqualToString:", @"/>"))
    {
      if ([v39 hasSuffix:@"/>"])
      {
        v40 = v45;
        [(WFPythonHTMLParser *)self handleStartEndTag:v45 attributes:v46];
      }

      else
      {
        v40 = v45;
        [(WFPythonHTMLParser *)self handleStartTag:v45 attributes:v46];
        if (([v45 isEqualToString:@"script"] & 1) != 0 || objc_msgSend(v45, "isEqualToString:", @"style"))
        {
          [(WFPythonHTMLParser *)self setCdataElement:v45];
        }
      }
    }

    else
    {
      v41 = [v6 substringWithRange:{v44, v47 - v44}];
      [(WFPythonHTMLParser *)self handleData:v41];

      v40 = v45;
    }
  }

  return v47;
}

- (int64_t)parseProcessingInstruction:(int64_t)a3
{
  v6 = [(WFPythonHTMLParser *)self rawData];
  v7 = [v6 substringFromIndex:a3];

  if (([v7 hasPrefix:@"<?"] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:329 description:@"Unexpected call to -parseProcessingInstruction"];
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

    v9 = a3 + v10 + 1;
  }

  return v9;
}

- (int64_t)parseBogusComment:(int64_t)a3
{
  v6 = [(WFPythonHTMLParser *)self rawData];
  v7 = [v6 substringFromIndex:a3];

  if (([v7 hasPrefix:@"<!"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"</") & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:316 description:@"Unexpected call to -parseBogusComment"];
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

    v9 = a3 + v10 + 1;
  }

  return v9;
}

- (int64_t)parseHTMLDeclaration:(int64_t)a3
{
  v5 = [(WFPythonHTMLParser *)self rawData];
  v6 = [v5 substringFromIndex:a3];

  if ([v6 hasPrefix:@"<!--"])
  {
    v7 = [(WFPythonHTMLParser *)self parseComment:a3];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  if ([v6 hasPrefix:@"<!["])
  {
    v7 = [(WFPythonHTMLParser *)self parseMarkedSection:a3];
    goto LABEL_7;
  }

  if ([v6 rangeOfString:@"<!doctype" options:9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(WFPythonHTMLParser *)self parseBogusComment:a3];
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

    v8 = a3 + v11 + 1;
  }

LABEL_8:

  return v8;
}

- (int64_t)parseComment:(int64_t)a3
{
  v6 = [(WFPythonHTMLParser *)self rawData];
  v7 = [v6 substringFromIndex:a3];

  if (([v7 hasPrefix:@"<!--"] & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:284 description:@"Unexpected call to -parseComment:"];
  }

  v8 = [(WFPythonHTMLParser *)self commentCloseExpression];
  v9 = [v8 firstMatchInString:v7 options:0 range:{4, objc_msgSend(v7, "length") - 4}];

  if (v9)
  {
    v10 = [v7 substringWithRange:{4, objc_msgSend(v9, "range") - 4}];
    [(WFPythonHTMLParser *)self handleComment:v10];

    v11 = [v9 range] + a3;
    [v9 range];
    v13 = v11 + v12;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (int64_t)parseMarkedSection:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [(WFPythonHTMLParser *)self rawData];
  v7 = [v6 substringFromIndex:a3];

  if (([v7 hasPrefix:@"<!["] & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFPythonHTMLParser.m" lineNumber:253 description:@"Unexpected call to -parseMarkedSection:"];
  }

  v19 = 0;
  v8 = [(WFPythonHTMLParser *)self scanName:a3 + 3 declarationStartPosition:a3 location:&v19];
  v9 = v19;
  if ((v19 & 0x8000000000000000) == 0)
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
          v16 = [v7 substringWithRange:{3, v19}];
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
      v19 = [v12 range];
      v13 = [v7 substringWithRange:{3, v19}];
      [(WFPythonHTMLParser *)self handleUnknownDeclaration:v13];

      v14 = [v12 range]+ a3;
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

- (id)scanName:(int64_t)a3 declarationStartPosition:(int64_t)a4 location:(int64_t *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = [(WFPythonHTMLParser *)self rawData];
  v10 = [v9 substringFromIndex:a3];

  v11 = [v10 length];
  if (v11 == a3)
  {
    v12 = 0;
    *a5 = -1;
  }

  else
  {
    v13 = v11;
    v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[a-zA-Z][-_.a-zA-Z0-9]*\\s*" options:0 error:0];
    v15 = [v14 firstMatchInString:v10 options:4 range:{0, objc_msgSend(v10, "length")}];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 range];
      v19 = [v10 substringWithRange:{v17, v18}];
      v20 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v21 = [v19 stringByTrimmingCharactersInSet:v20];

      if ([v19 length] + a3 == v13)
      {
        v12 = 0;
        *a5 = -1;
      }

      else
      {
        v23 = [v16 range] + a3;
        [v16 range];
        *a5 = v23 + v24;
        v12 = [v21 lowercaseString];
      }
    }

    else
    {
      [(WFPythonHTMLParser *)self updatePosition:a4 j:a3];
      v22 = getWFGeneralLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315138;
        v27 = "[WFPythonHTMLParser scanName:declarationStartPosition:location:]";
        _os_log_impl(&dword_21E1BD000, v22, OS_LOG_TYPE_ERROR, "%s Python HTML parser expected name token", &v26, 0xCu);
      }

      v12 = 0;
    }
  }

  return v12;
}

- (void)parseDataAndEnd:(BOOL)a3
{
  v63 = a3;
  v3 = self;
  v65 = [(WFPythonHTMLParser *)self rawData];
  v4 = [v65 length];
  v5 = 0;
  while (v4 > v5)
  {
    v6 = [(WFPythonHTMLParser *)v3 interestingExpression];
    v7 = [v6 firstMatchInString:v65 options:0 range:{v5, v4 - v5}];

    if (v7)
    {
      v8 = [v7 range];
    }

    else
    {
      v9 = [(WFPythonHTMLParser *)v3 cdataElement];

      v8 = v4;
      if (v9)
      {
        v7 = 0;
        goto LABEL_64;
      }
    }

    if (v8 > v5)
    {
      v10 = [v65 substringWithRange:{v5, v8 - v5}];
      [(WFPythonHTMLParser *)v3 handleData:v10];
    }

    v11 = [(WFPythonHTMLParser *)v3 updatePosition:v5 j:v8];
    if (v11 == v4)
    {
      v5 = v4;
LABEL_64:

      break;
    }

    v5 = v11;
    v12 = [v65 substringFromIndex:v11];
    v64 = v7;
    if ([v12 hasPrefix:@"<"])
    {
      v13 = [(WFPythonHTMLParser *)v3 startTagOpenExpression];
      v14 = [v13 numberOfMatchesInString:v12 options:4 range:{0, objc_msgSend(v12, "length")}];

      if (v14)
      {
        v15 = [(WFPythonHTMLParser *)v3 parseStartTag:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"</"])
      {
        v15 = [(WFPythonHTMLParser *)v3 parseEndTag:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"<!--"])
      {
        v15 = [(WFPythonHTMLParser *)v3 parseComment:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"<?"])
      {
        v15 = [(WFPythonHTMLParser *)v3 parseProcessingInstruction:v5];
        goto LABEL_42;
      }

      if ([v12 hasPrefix:@"<!"])
      {
        v15 = [(WFPythonHTMLParser *)v3 parseHTMLDeclaration:v5];
LABEL_42:
        v51 = v15;
        if (v15 < 0)
        {
LABEL_43:
          if (!v63)
          {
            goto LABEL_63;
          }

          if ([v65 rangeOfString:@">" options:0 range:{1, objc_msgSend(v65, "length") - 1}] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v52 = [v65 rangeOfString:@"<" options:0 range:{1, objc_msgSend(v65, "length") - 1}];
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

          v53 = [v65 substringWithRange:{v5, v51 - v5}];
          [(WFPythonHTMLParser *)v3 handleData:v53];
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

        [(WFPythonHTMLParser *)v3 handleData:@"<"];
        if (v51 < 0)
        {
          goto LABEL_43;
        }
      }

      v54 = v3;
      v55 = v5;
      v56 = v51;
LABEL_51:
      v5 = [(WFPythonHTMLParser *)v54 updatePosition:v55 j:v56];
      v21 = 0;
      goto LABEL_52;
    }

    if ([v12 hasPrefix:@"&#"])
    {
      v16 = [(WFPythonHTMLParser *)v3 charrefExpression];
      v17 = [v16 firstMatchInString:v65 options:4 range:{v5, objc_msgSend(v65, "length") - v5}];

      if (v17)
      {
        v18 = [v17 range];
        v20 = [v65 substringWithRange:{v18, v19}];
        v21 = 2;
        v61 = [v20 substringWithRange:{2, objc_msgSend(v20, "length") - 3}];
        [(WFPythonHTMLParser *)v3 handleCharacterRef:v61];
        v22 = [v17 range];
        [v17 range];
        v62 = v17;
        v23 = v4;
        v24 = v3;
        v26 = v25 + v22;
        v27 = v25 + v22 - 1;
        v28 = [v65 substringFromIndex:v27];
        v29 = [v28 hasPrefix:@";"];

        if (v29)
        {
          v30 = v26;
        }

        else
        {
          v30 = v27;
        }

        v3 = v24;
        v4 = v23;
        v17 = v62;
        v5 = [(WFPythonHTMLParser *)v3 updatePosition:v5 j:v30];

        goto LABEL_30;
      }

      if ([v65 rangeOfString:@";" options:0 range:{v5, objc_msgSend(v65, "length") - v5}] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = [v65 substringWithRange:{v5, 2}];
        [(WFPythonHTMLParser *)v3 handleData:v44];

        v5 = [(WFPythonHTMLParser *)v3 updatePosition:v5 j:v5 + 2];
      }

LABEL_29:
      v21 = 3;
LABEL_30:

      goto LABEL_52;
    }

    if ([v12 hasPrefix:@"&"])
    {
      v31 = [(WFPythonHTMLParser *)v3 entityrefExpression];
      v17 = [v31 firstMatchInString:v65 options:4 range:{v5, objc_msgSend(v65, "length") - v5}];

      if (v17)
      {
        v32 = [v17 rangeAtIndex:1];
        v34 = [v65 substringWithRange:{v32, v33}];
        [(WFPythonHTMLParser *)v3 handleEntityRef:v34];
        v35 = [v17 range];
        [v17 range];
        v36 = v3;
        v38 = v37 + v35;
        v39 = v37 + v35 - 1;
        v40 = [v65 substringFromIndex:v39];
        v41 = [v40 hasPrefix:@";"];

        if (v41)
        {
          v42 = v38;
        }

        else
        {
          v42 = v39;
        }

        v3 = v36;
        v5 = [(WFPythonHTMLParser *)v36 updatePosition:v5 j:v42];

        v21 = 2;
        goto LABEL_30;
      }

      v45 = [(WFPythonHTMLParser *)v3 incompleteExpression];
      v17 = [v45 firstMatchInString:v65 options:4 range:{v5, objc_msgSend(v65, "length") - v5}];

      if (v17)
      {
        if (v63)
        {
          v46 = [v17 range];
          v48 = [v65 substringWithRange:{v46, v47}];
          v49 = [v65 substringFromIndex:v5];
          v50 = [v48 isEqualToString:v49];

          if (v50)
          {
            [v17 range];
            [v17 range];
            v5 = [(WFPythonHTMLParser *)v3 updatePosition:v5 j:v5 + 1];
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
        [(WFPythonHTMLParser *)v3 handleData:@"&"];
        v54 = v3;
        v55 = v5;
        v56 = v5 + 1;
        goto LABEL_51;
      }

      v17 = 0;
      goto LABEL_29;
    }

    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:v3 file:@"WFPythonHTMLParser.m" lineNumber:211 description:@"There is nothing interesting to consume!"];

    v21 = 0;
LABEL_52:

    if (v21 == 3)
    {
      break;
    }
  }

  if (v63 && v4 > v5)
  {
    v57 = [(WFPythonHTMLParser *)v3 cdataElement];

    if (!v57)
    {
      v58 = [v65 substringWithRange:{v5, v4 - v5}];
      [(WFPythonHTMLParser *)v3 handleData:v58];

      v5 = [(WFPythonHTMLParser *)v3 updatePosition:v5 j:v4];
    }
  }

  v59 = [v65 substringFromIndex:v5];
  [(WFPythonHTMLParser *)v3 setRawData:v59];
}

- (void)setCdataElement:(id)a3
{
  v9 = a3;
  v4 = [v9 copy];
  cdataElement = self->_cdataElement;
  self->_cdataElement = v4;

  if (v9)
  {
    v6 = MEMORY[0x277CCAC68];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"</\\s*%@\\s*>", v9];
    v8 = [v6 regularExpressionWithPattern:v7 options:1 error:0];
    [(WFPythonHTMLParser *)self setInterestingExpression:v8];
  }

  else
  {
    [(WFPythonHTMLParser *)self setInterestingExpression:0];
  }
}

- (void)feed:(id)a3
{
  v4 = a3;
  v5 = [(WFPythonHTMLParser *)self rawData];
  v6 = [v5 stringByAppendingString:v4];

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