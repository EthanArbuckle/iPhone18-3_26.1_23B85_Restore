@interface ECMessageBodyHTMLParser
- (BOOL)_isMilestoneTagName:(id)a3;
- (BOOL)parse;
- (ECMessageBodyHTMLParser)initWithHTML:(id)a3;
- (void)_consumeNodesFromNode:(id)a3 upToNode:(id)a4;
- (void)_findBody;
- (void)dealloc;
- (void)didFindError:(id)a3;
@end

@implementation ECMessageBodyHTMLParser

- (ECMessageBodyHTMLParser)initWithHTML:(id)a3
{
  v7.receiver = self;
  v7.super_class = ECMessageBodyHTMLParser;
  v4 = [(ECMessageBodyParser *)&v7 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:a3];
    v4->_scanner = v5;
    [(NSScanner *)v5 setCharactersToBeSkipped:0];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ECMessageBodyHTMLParser;
  [(ECMessageBodyParser *)&v3 dealloc];
}

- (void)_consumeNodesFromNode:(id)a3 upToNode:(id)a4
{
  do
  {
    if (a3 == a4)
    {
      break;
    }

    v7 = objc_autoreleasePoolPush();
    if ([a3 endLocation] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [a3 firstChild];
    }

    else
    {
      -[ECMessageBodyParser enqueueParagraphNode:withTagName:](self, "enqueueParagraphNode:withTagName:", a3, [a3 tagName]);
      v8 = [a3 nextSibling];
      if (!v8)
      {
        while (1)
        {
          v8 = [a3 nextSibling];
          if (v8)
          {
            break;
          }

          a3 = [a3 parentNode];
          if (!a3)
          {
            objc_autoreleasePoolPop(v7);
            goto LABEL_11;
          }
        }
      }
    }

    a3 = v8;
    objc_autoreleasePoolPop(v7);
  }

  while (a3);
LABEL_11:

  [(ECMessageBodyParser *)self flushParagraphNodes];
}

- (BOOL)_isMilestoneTagName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 hasPrefix:@"!"])
  {
    return 1;
  }

  return [a3 caseInsensitiveCompare:@"br"] == 0;
}

- (void)_findBody
{
  if (!_findBody_regex)
  {
    _findBody_regex = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"<(body|BODY)(\\s|>)" options:0 error:0];
  }

  scanner = self->_scanner;

  [(NSScanner *)scanner ec_scanUpToRegularExpression:?];
}

- (BOOL)parse
{
  if (parse_onceToken != -1)
  {
    [ECMessageBodyHTMLParser parse];
  }

  [(ECMessageBodyHTMLParser *)self _findBody];
  v3 = objc_alloc_init(_ECParsedHTMLNode);
  v4 = v3;
  v5 = 0x277CBE000uLL;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
  v67 = [v6 count];
  [(ECMessageBodyParser *)self willBeginParsing];
  if ([(NSScanner *)self->_scanner isAtEnd])
  {
    goto LABEL_91;
  }

  v7 = @"<";
  v68 = v3;
  while (1)
  {
    if (![(ECMessageBodyParser *)self shouldProceedParsing])
    {
      goto LABEL_91;
    }

    v8 = [(NSScanner *)self->_scanner scanLocation];
    v9 = [(NSScanner *)self->_scanner scanUpToString:v7 intoString:0];
    v10 = v9;
    if (v9)
    {
      v11 = v5;
      v12 = v7;
      v13 = objc_alloc_init(_ECParsedHTMLText);
      [(_ECParsedHTMLNode *)v13 setHtmlString:[(NSScanner *)self->_scanner string]];
      [(_ECParsedHTMLNode *)v13 setStartLocation:v8];
      [(_ECParsedHTMLNode *)v13 setEndLocation:[(NSScanner *)self->_scanner scanLocation]];
      v14 = v6;
      v15 = [v6 lastObject];
      v16 = [v15 lastChild];
      [v15 appendChild:v13];
      if (-[ECMessageBodyParser isLandmarkTagName:](self, "isLandmarkTagName:", [v16 tagName]))
      {
        [(ECMessageBodyHTMLParser *)self _consumeNodesFromNode:v4 upToNode:v13];

        v4 = v13;
      }

      v7 = v12;
      v5 = v11;
      v3 = v68;
      v6 = v14;
    }

    v17 = [(NSScanner *)self->_scanner scanLocation];
    if ([(NSScanner *)self->_scanner scanString:v7 intoString:0])
    {
      break;
    }

    if (!v10)
    {
      v60 = MEMORY[0x277CCA9B8];
      v61 = 3;
      goto LABEL_90;
    }

LABEL_15:
    if ([(NSScanner *)self->_scanner isAtEnd])
    {
      goto LABEL_91;
    }
  }

  v18 = [(NSScanner *)self->_scanner scanString:@"!--" intoString:0];
  scanner = self->_scanner;
  if (v18)
  {
    [(NSScanner *)scanner scanUpToString:@"-->" intoString:0];
    if (![(NSScanner *)self->_scanner scanString:@"-->" intoString:0])
    {
      v60 = MEMORY[0x277CCA9B8];
      v61 = 2;
LABEL_90:
      -[ECMessageBodyHTMLParser didFindError:](self, "didFindError:", [v60 errorWithDomain:@"ECMessageBodyHTMLParserErrorDomain" code:v61 userInfo:0]);
      goto LABEL_91;
    }

    goto LABEL_15;
  }

  v20 = [(NSScanner *)scanner scanString:@"/" intoString:0];
  v81 = 0;
  if (![(NSScanner *)self->_scanner scanUpToCharactersFromSet:parse_tagNameEndCharacterSet intoString:&v81])
  {
    v61 = 0;
    v57 = 0x277CCA000;
LABEL_89:
    v60 = *(v57 + 2488);
    goto LABEL_90;
  }

  v64 = v20;
  v65 = v17;
  v66 = v6;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if ([(NSScanner *)self->_scanner isAtEnd])
    {
LABEL_87:
      v6 = v66;
      v57 = 0x277CCA000;
      v61 = 1;
      goto LABEL_89;
    }

    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [(NSScanner *)self->_scanner scanUpToCharactersFromSet:parse_tagEndCharacterSet intoString:0];
      v24 = [(NSScanner *)self->_scanner scanCharactersFromSet:parse_singularMilestoneCharacterSet intoString:0];
      v25 = [(NSScanner *)self->_scanner scanCharactersFromSet:parse_singularTagEndCharacterSet intoString:0];
      if (!v23 && !v24 && !v25)
      {
        v57 = 0x277CCA000uLL;
        -[ECMessageBodyHTMLParser didFindError:](self, "didFindError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"ECMessageBodyHTMLParserErrorDomain" code:3 userInfo:0]);
        objc_autoreleasePoolPop(v22);
        v61 = 1;
        v6 = v66;
        goto LABEL_89;
      }

      if (v25)
      {
        break;
      }

      objc_autoreleasePoolPop(v22);
      if ([(NSScanner *)self->_scanner isAtEnd])
      {
        goto LABEL_87;
      }
    }

    v26 = [(NSScanner *)self->_scanner scanLocation];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_29;
    }

    if (v26 - v21 >= 0x401)
    {
      break;
    }

    v26 = v21;
LABEL_29:
    v63 = v26;
    v27 = [(NSScanner *)self->_scanner scanLocation];
    v80 = 0xAAAAAAAAAAAAAAAALL;
    v28 = v27 - v65;
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v29;
    v79 = v29;
    v76 = v29;
    *theString = v29;
    v74 = v29;
    v75 = v29;
    v72 = v29;
    v73 = v29;
    v70 = v29;
    v71 = v29;
    *buffer = v29;
    v30 = [(NSScanner *)self->_scanner string];
    theString[0] = v30;
    *(&v78 + 1) = v65;
    *&v79 = v28;
    theString[1] = CFStringGetCharactersPtr(v30);
    if (theString[1])
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v30, 0x600u);
    }

    *&v78 = CStringPtr;
    *(&v79 + 1) = 0;
    v80 = 0;
    if (v28 < 1)
    {
      goto LABEL_65;
    }

    v62 = v4;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 64;
    while (2)
    {
      if (v34 >= 4)
      {
        v38 = 4;
      }

      else
      {
        v38 = v34;
      }

      v39 = v79;
      if (v79 <= v34)
      {
        v41 = 0;
      }

      else
      {
        if (theString[1])
        {
          v40 = theString[1] + *(&v78 + 1);
          goto LABEL_40;
        }

        if (v78)
        {
          v41 = *(v78 + *(&v78 + 1) + v34);
        }

        else
        {
          if (v80 <= v34 || v33 > v34)
          {
            v45 = -v38;
            v46 = v38 + v32;
            v47 = v37 - v38;
            v48 = v34 + v45;
            v49 = v48 + 64;
            if (v48 + 64 >= v79)
            {
              v49 = v79;
            }

            *(&v79 + 1) = v48;
            v80 = v49;
            if (v79 >= v47)
            {
              v39 = v47;
            }

            v82.location = v48 + *(&v78 + 1);
            v82.length = v39 + v46;
            CFStringGetCharacters(theString[0], v82, buffer);
            v33 = *(&v79 + 1);
          }

          v40 = &buffer[-v33];
LABEL_40:
          v41 = v40[v34];
        }
      }

      v43 = v35 != 92 && v41 == 34;
      v36 ^= v43;
      ++v34;
      --v32;
      ++v37;
      v35 = v41;
      if (v28 != v34)
      {
        continue;
      }

      break;
    }

    objc_autoreleasePoolPop(v22);
    v4 = v62;
    v21 = v63;
    v3 = v68;
    v5 = 0x277CBE000;
    if ((v36 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  [(NSScanner *)self->_scanner setScanLocation:v21];
LABEL_65:
  objc_autoreleasePoolPop(v22);
LABEL_66:
  v50 = [(NSScanner *)self->_scanner scanLocation];
  v51 = v81;
  if (v24)
  {
    v52 = 1;
  }

  else
  {
    v52 = [(ECMessageBodyHTMLParser *)self _isMilestoneTagName:v81];
    v51 = v81;
  }

  v6 = v66;
  if ([(ECMessageBodyParser *)self shouldIgnoreTagWithTagName:v51])
  {
    v53 = objc_alloc(MEMORY[0x277CCACA8]);
    v54 = [v53 initWithFormat:@"</%@", v81];
    [(NSScanner *)self->_scanner scanUpToString:v54 intoString:0];
    if (![(NSScanner *)self->_scanner scanString:v54 intoString:0]|| ![(NSScanner *)self->_scanner scanString:@">" intoString:0])
    {
      -[ECMessageBodyHTMLParser didFindError:](self, "didFindError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"ECMessageBodyHTMLParserErrorDomain" code:1 userInfo:0]);
    }

    v7 = @"<";
LABEL_74:

    goto LABEL_15;
  }

  if (!v64)
  {
    v54 = objc_alloc_init(_ECParsedHTMLTag);
    [(_ECParsedHTMLTag *)v54 setTagName:v81];
    [(_ECParsedHTMLNode *)v54 setHtmlString:[(NSScanner *)self->_scanner string]];
    [(_ECParsedHTMLNode *)v54 setStartLocation:v65];
    [objc_msgSend(v66 "lastObject")];
    if (v52)
    {
      [(_ECParsedHTMLNode *)v54 setEndLocation:v50];
    }

    else
    {
      if ([v66 count] >= 0x201)
      {
        -[ECMessageBodyHTMLParser didFindError:](self, "didFindError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"ECMessageBodyHTMLParserErrorDomain" code:4 userInfo:0]);
      }

      [v66 addObject:v54];
    }

    v7 = @"<";
    if ([(ECMessageBodyParser *)self isLandmarkTagName:v81])
    {
      [(ECMessageBodyHTMLParser *)self _consumeNodesFromNode:v4 upToNode:v54];

      v4 = v54;
    }

    goto LABEL_74;
  }

  do
  {
    if ([v66 count] <= v67)
    {
      break;
    }

    v55 = [v66 lastObject];
    [v55 setEndLocation:v50];
    v56 = [v55 tagName];
    LODWORD(v55) = [v56 isEqualToString:v81];
    [v66 removeLastObject];
  }

  while (!v55);
  if ([v66 count] >= v67)
  {
    v7 = @"<";
    goto LABEL_15;
  }

LABEL_91:

  if ([(ECMessageBodyParser *)self shouldProceedParsing])
  {
    [(ECMessageBodyHTMLParser *)self _consumeNodesFromNode:v4 upToNode:0];
    [(ECMessageBodyParser *)self didFinishParsing];
  }

  v58 = objc_alloc_init(*(v5 + 2840));
  [(_ECParsedHTMLNode *)v3 collectDescendanceIntoArray:v58];
  [(_ECParsedHTMLNode *)v4 collectDescendanceIntoArray:v58];

  return self->super._parserError == 0;
}

uint64_t __32__ECMessageBodyHTMLParser_parse__block_invoke()
{
  parse_tagNameEndCharacterSet = [objc_msgSend(MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"> /", "copy"}];
  parse_tagEndCharacterSet = [objc_msgSend(MEMORY[0x277CCA900] characterSetWithCharactersInString:{@">/", "copy"}];
  parse_singularMilestoneCharacterSet = [objc_msgSend(MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"/", "copy"}];
  result = [objc_msgSend(MEMORY[0x277CCA900] characterSetWithCharactersInString:{@">", "copy"}];
  parse_singularTagEndCharacterSet = result;
  return result;
}

- (void)didFindError:(id)a3
{
  v5.receiver = self;
  v5.super_class = ECMessageBodyHTMLParser;
  [(ECMessageBodyParser *)&v5 didFindError:a3];
  v4 = _ef_log_ECMessageBodyParser();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ECMessageBodyHTMLParser *)self didFindError:v4];
  }
}

- (void)didFindError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 112) scanLocation];
  v5 = [*(a1 + 112) string];
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_22D092000, a2, OS_LOG_TYPE_ERROR, "Scanner info: %lu %@", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end