@interface WFHTMLToMarkdown
- (BOOL)onlywhite:(id)onlywhite;
- (BOOL)skipwrap:(id)skipwrap;
- (NSDictionary)nameToCodepointMapping;
- (NSDictionary)unifiableN;
- (WFHTMLToMarkdown)initWithBaseURL:(id)l;
- (id)charref:(id)charref;
- (id)entityref:(id)entityref;
- (id)escapeMD:(id)d;
- (id)escapeMDSection:(id)section snob:(BOOL)snob;
- (id)handleHTML:(id)l;
- (id)optwrap:(id)optwrap;
- (id)previousIndex:(id)index;
- (id)wrapText:(id)text toWidth:(int64_t)width;
- (int)tagHeaderNumber:(id)number;
- (unsigned)nameToCodepoint:(id)codepoint;
- (void)addOutput:(id)output;
- (void)close;
- (void)handleTag:(id)tag attributes:(id)attributes start:(BOOL)start;
- (void)output:(id)output pureData:(BOOL)data force:(id)force;
- (void)parser:(id)parser foundCharacterRef:(id)ref;
- (void)parser:(id)parser foundData:(id)data;
- (void)parser:(id)parser foundEntityRef:(id)ref;
- (void)parser:(id)parser foundStartTag:(id)tag attributes:(id)attributes;
- (void)pbr;
@end

@implementation WFHTMLToMarkdown

- (NSDictionary)unifiableN
{
  unifiableN = self->_unifiableN;
  if (!unifiableN)
  {
    v4 = objc_opt_new();
    unifiable = [(WFHTMLToMarkdown *)self unifiable];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __30__WFHTMLToMarkdown_unifiableN__block_invoke;
    v14 = &unk_278349AD8;
    v6 = v4;
    v15 = v6;
    selfCopy = self;
    [unifiable enumerateKeysAndObjectsUsingBlock:&v11];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[WFHTMLToMarkdown nameToCodepoint:](self, "nameToCodepoint:", @"nbsp", v11, v12, v13, v14)}];
    [(NSDictionary *)v6 removeObjectForKey:v7];

    v8 = self->_unifiableN;
    self->_unifiableN = v6;
    v9 = v6;

    unifiableN = self->_unifiableN;
  }

  return unifiableN;
}

void __30__WFHTMLToMarkdown_unifiableN__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v4 numberWithUnsignedShort:{objc_msgSend(v6, "nameToCodepoint:", a2)}];
  [v5 setObject:v7 forKey:v8];
}

- (unsigned)nameToCodepoint:(id)codepoint
{
  codepointCopy = codepoint;
  if ([codepointCopy isEqualToString:@"apos"])
  {
    unsignedShortValue = 39;
  }

  else
  {
    nameToCodepointMapping = [(WFHTMLToMarkdown *)self nameToCodepointMapping];
    v7 = [nameToCodepointMapping objectForKey:codepointCopy];
    unsignedShortValue = [v7 unsignedShortValue];
  }

  return unsignedShortValue;
}

- (NSDictionary)nameToCodepointMapping
{
  nameToCodepointMapping = self->_nameToCodepointMapping;
  if (!nameToCodepointMapping)
  {
    self->_nameToCodepointMapping = &unk_282F7C008;
    nameToCodepointMapping = &unk_282F7C008;
  }

  return nameToCodepointMapping;
}

- (void)parser:(id)parser foundData:(id)data
{
  dataCopy = data;
  if ([dataCopy containsString:@"/script>"])
  {
    [(WFHTMLToMarkdown *)self setQuiet:[(WFHTMLToMarkdown *)self quiet]- 1];
  }

  maybeAutomaticLink = [(WFHTMLToMarkdown *)self maybeAutomaticLink];

  if (maybeAutomaticLink)
  {
    maybeAutomaticLink2 = [(WFHTMLToMarkdown *)self maybeAutomaticLink];
    if ([maybeAutomaticLink2 isEqualToString:dataCopy] && +[WFURLDetector stringMatchesExactly:](WFURLDetector, "stringMatchesExactly:", maybeAutomaticLink2))
    {
      dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", dataCopy];
      [(WFHTMLToMarkdown *)self output:dataCopy];

      goto LABEL_13;
    }

    [(WFHTMLToMarkdown *)self output:@"["];
    [(WFHTMLToMarkdown *)self setMaybeAutomaticLink:0];
  }

  if ([(WFHTMLToMarkdown *)self code]|| [(WFHTMLToMarkdown *)self pre])
  {
    v8 = dataCopy;
  }

  else
  {
    v9 = [(WFHTMLToMarkdown *)self escapeMDSection:dataCopy snob:[(WFHTMLToMarkdown *)self escapeSnob]];

    v8 = v9;
  }

  dataCopy = v8;
  [(WFHTMLToMarkdown *)self output:v8 pureData:1 force:0];
LABEL_13:
}

- (void)output:(id)output pureData:(BOOL)data force:(id)force
{
  dataCopy = data;
  v93 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  forceCopy = force;
  abbreviationData = self->_abbreviationData;
  if (abbreviationData)
  {
    v11 = [(NSString *)abbreviationData stringByAppendingString:outputCopy];
    v12 = self->_abbreviationData;
    self->_abbreviationData = v11;
  }

  if (![(WFHTMLToMarkdown *)self quiet])
  {
    selfCopy = self;
    if (dataCopy && ![(WFHTMLToMarkdown *)self pre])
    {
      v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[ \t\n\r\f\v]+" options:0 error:0];
      v14 = [v13 stringByReplacingMatchesInString:outputCopy options:0 range:0 withTemplate:{objc_msgSend(outputCopy, "length"), @" "}];

      if ([v14 length] && objc_msgSend(v14, "characterAtIndex:", 0) == 32)
      {
        [(WFHTMLToMarkdown *)self setSpace:1];
        outputCopy = [v14 substringFromIndex:1];
      }

      else
      {
        outputCopy = v14;
      }
    }

    v15 = [outputCopy length];
    if (forceCopy || v15)
    {
      if (-[WFHTMLToMarkdown startpre](self, "startpre") && ([outputCopy hasPrefix:@"\n"] & 1) == 0)
      {
        v16 = [@"\n" stringByAppendingString:outputCopy];

        outputCopy = v16;
      }

      v17 = objc_opt_new();
      if ([(WFHTMLToMarkdown *)self blockquote]>= 1)
      {
        v18 = 0;
        do
        {
          [v17 appendString:@">"];
          ++v18;
        }

        while ([(WFHTMLToMarkdown *)selfCopy blockquote]> v18);
      }

      if ((!forceCopy || ![outputCopy length] || objc_msgSend(outputCopy, "characterAtIndex:", 0) != 62) && -[WFHTMLToMarkdown blockquote](selfCopy, "blockquote"))
      {
        [v17 appendString:@" "];
      }

      if ([(WFHTMLToMarkdown *)selfCopy pre])
      {
        list = [(WFHTMLToMarkdown *)selfCopy list];
        v20 = [list count];

        if (v20)
        {
          list2 = [(WFHTMLToMarkdown *)selfCopy list];
          v22 = [list2 count];

          if (v22)
          {
            v23 = 0;
            do
            {
              [v17 appendString:@"    "];
              ++v23;
              list3 = [(WFHTMLToMarkdown *)selfCopy list];
              v25 = [list3 count];
            }

            while (v25 > v23);
          }
        }

        else
        {
          [v17 appendString:@"    "];
        }

        v26 = [@"\n" stringByAppendingString:v17];
        v27 = [outputCopy stringByReplacingOccurrencesOfString:@"\n" withString:v26];

        outputCopy = v27;
      }

      if ([(WFHTMLToMarkdown *)selfCopy startpre])
      {
        [(WFHTMLToMarkdown *)selfCopy setStartpre:0];
        list4 = [(WFHTMLToMarkdown *)selfCopy list];
        v29 = [list4 count];

        if (v29)
        {
          v30 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\n"];
          v31 = [outputCopy wf_stringByTrimmingLeadingCharactersInSet:v30];

          outputCopy = v31;
        }
      }

      if ([(WFHTMLToMarkdown *)selfCopy start])
      {
        [(WFHTMLToMarkdown *)selfCopy setSpace:0];
        [(WFHTMLToMarkdown *)selfCopy setP_p:0];
        [(WFHTMLToMarkdown *)selfCopy setStart:0];
      }

      if ([forceCopy isEqualToString:@"end"])
      {
        [(WFHTMLToMarkdown *)selfCopy setP_p:0];
        [(WFHTMLToMarkdown *)selfCopy addOutput:@"\n"];
        [(WFHTMLToMarkdown *)selfCopy setSpace:0];
      }

      if ([(WFHTMLToMarkdown *)selfCopy p_p])
      {
        v32 = objc_opt_new();
        if ([(WFHTMLToMarkdown *)selfCopy p_p]>= 1)
        {
          v33 = 0;
          do
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v17];
            [v32 appendString:v34];

            ++v33;
          }

          while ([(WFHTMLToMarkdown *)selfCopy p_p]> v33);
        }

        [(WFHTMLToMarkdown *)selfCopy addOutput:v32];
        [(WFHTMLToMarkdown *)selfCopy setSpace:0];
      }

      if ([(WFHTMLToMarkdown *)selfCopy space])
      {
        if (![(WFHTMLToMarkdown *)selfCopy lastWasNewline])
        {
          [(WFHTMLToMarkdown *)selfCopy addOutput:@" "];
        }

        [(WFHTMLToMarkdown *)selfCopy setSpace:0];
      }

      v35 = [(WFHTMLToMarkdown *)selfCopy a];
      if ([v35 count])
      {
        if ([(WFHTMLToMarkdown *)selfCopy p_p]== 2 && [(WFHTMLToMarkdown *)selfCopy linksEachParagraph])
        {
        }

        else
        {
          v36 = [forceCopy isEqualToString:@"end"];

          if ((v36 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        v75 = v17;
        v77 = outputCopy;
        v74 = forceCopy;
        v37 = [forceCopy isEqualToString:@"end"];
        v38 = selfCopy;
        if (v37)
        {
          [(WFHTMLToMarkdown *)selfCopy addOutput:@"\n"];
        }

        v79 = objc_opt_new();
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [(WFHTMLToMarkdown *)selfCopy a];
        v39 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = @"outcount";
          v42 = *v88;
          v78 = *v88;
          do
          {
            v43 = 0;
            v80 = v40;
            do
            {
              if (*v88 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v44 = *(*(&v87 + 1) + 8 * v43);
              outCount = [(WFHTMLToMarkdown *)v38 outCount];
              v46 = [v44 objectForKey:v41];
              integerValue = [v46 integerValue];

              if (outCount <= integerValue)
              {
                [v79 addObject:v44];
              }

              else
              {
                v48 = v41;
                v49 = MEMORY[0x277CCACA8];
                v50 = [v44 objectForKey:@"count"];
                v51 = MEMORY[0x277CBEBC0];
                v52 = [v44 objectForKey:@"href"];
                baseURL = [(WFHTMLToMarkdown *)v38 baseURL];
                v54 = [v51 URLWithString:v52 relativeToURL:baseURL];
                v55 = [v49 stringWithFormat:@"   [%@]: %@", v50, v54];

                v38 = selfCopy;
                [(WFHTMLToMarkdown *)selfCopy addOutput:v55];
                v56 = [v44 objectForKey:@"title"];

                if (v56)
                {
                  v57 = MEMORY[0x277CCACA8];
                  v58 = [v44 objectForKey:@"title"];
                  v59 = [v57 stringWithFormat:@" (\"%@\"", v58];
                  [(WFHTMLToMarkdown *)selfCopy addOutput:v59];
                }

                [(WFHTMLToMarkdown *)selfCopy addOutput:@"\n"];

                v41 = v48;
                v42 = v78;
                v40 = v80;
              }

              ++v43;
            }

            while (v40 != v43);
            v40 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
          }

          while (v40);
        }

        v60 = [(WFHTMLToMarkdown *)v38 a];
        v61 = [v60 isEqualToArray:v79];

        v17 = v75;
        outputCopy = v77;
        if ((v61 & 1) == 0)
        {
          [(WFHTMLToMarkdown *)v38 addOutput:@" "];
        }

        [(WFHTMLToMarkdown *)v38 setA:v79];

        forceCopy = v74;
      }

      else
      {
      }

LABEL_70:
      abbreviationList = [(WFHTMLToMarkdown *)selfCopy abbreviationList];
      if ([abbreviationList count])
      {
        v63 = [forceCopy isEqualToString:@"end"];

        if (!v63)
        {
LABEL_81:
          [(WFHTMLToMarkdown *)selfCopy setP_p:0];
          [(WFHTMLToMarkdown *)selfCopy addOutput:outputCopy];
          [(WFHTMLToMarkdown *)selfCopy setOutCount:[(WFHTMLToMarkdown *)selfCopy outCount]+ 1];

          goto LABEL_82;
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        abbreviationList = [(WFHTMLToMarkdown *)selfCopy abbreviationList];
        v64 = [abbreviationList countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v64)
        {
          v65 = v64;
          v76 = v17;
          v66 = forceCopy;
          v67 = *v84;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v84 != v67)
              {
                objc_enumerationMutation(abbreviationList);
              }

              v69 = *(*(&v83 + 1) + 8 * i);
              v70 = MEMORY[0x277CCACA8];
              abbreviation = [v69 abbreviation];
              title = [v69 title];
              v73 = [v70 stringWithFormat:@"  *[%@]: %@\n", abbreviation, title];
              [(WFHTMLToMarkdown *)selfCopy addOutput:v73];
            }

            v65 = [abbreviationList countByEnumeratingWithState:&v83 objects:v91 count:16];
          }

          while (v65);
          forceCopy = v66;
          v17 = v76;
        }
      }

      goto LABEL_81;
    }
  }

LABEL_82:
}

- (void)pbr
{
  if (![(WFHTMLToMarkdown *)self p_p])
  {

    [(WFHTMLToMarkdown *)self setP_p:1];
  }
}

- (void)handleTag:(id)tag attributes:(id)attributes start:(BOOL)start
{
  startCopy = start;
  v111[2] = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  attributesCopy = attributes;
  v10 = [attributesCopy mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = [(WFHTMLToMarkdown *)self tagHeaderNumber:tagCopy];
  if (v13)
  {
    v14 = v13;
    [(WFHTMLToMarkdown *)self p];
    if (!startCopy)
    {
      goto LABEL_151;
    }

    v15 = objc_opt_new();
    if (v14 >= 1)
    {
      do
      {
        [v15 appendString:@"#"];
        --v14;
      }

      while (v14);
    }

    [v15 appendString:@" "];
    [(WFHTMLToMarkdown *)self output:v15];
  }

  if (([tagCopy isEqualToString:@"p"] & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"div"))
  {
    [(WFHTMLToMarkdown *)self p];
  }

  if ([tagCopy isEqualToString:@"br"] && startCopy)
  {
    [(WFHTMLToMarkdown *)self output:@"  \n"];
  }

  if ([tagCopy isEqualToString:@"hr"] && startCopy)
  {
    [(WFHTMLToMarkdown *)self p];
    [(WFHTMLToMarkdown *)self output:@"* * *"];
    [(WFHTMLToMarkdown *)self p];
  }

  if (([tagCopy isEqualToString:@"head"] & 1) != 0 || (objc_msgSend(tagCopy, "isEqualToString:", @"style") & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"script"))
  {
    quiet = [(WFHTMLToMarkdown *)self quiet];
    if (startCopy)
    {
      [(WFHTMLToMarkdown *)self setQuiet:quiet + 1];
      if (([tagCopy isEqualToString:@"style"] & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    [(WFHTMLToMarkdown *)self setQuiet:quiet - 1];
    if (([tagCopy isEqualToString:@"style"] & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if ([tagCopy isEqualToString:@"style"])
  {
    if (startCopy)
    {
LABEL_23:
      v17 = 1;
LABEL_26:
      [(WFHTMLToMarkdown *)self setStyle:[(WFHTMLToMarkdown *)self style]+ v17];
      goto LABEL_27;
    }

LABEL_25:
    v17 = -1;
    goto LABEL_26;
  }

LABEL_27:
  if ([tagCopy isEqualToString:@"body"])
  {
    [(WFHTMLToMarkdown *)self setQuiet:0];
  }

  if ([tagCopy isEqualToString:@"blockquote"])
  {
    if (startCopy)
    {
      [(WFHTMLToMarkdown *)self p];
      [(WFHTMLToMarkdown *)self output:@"> " pureData:0 force:@"1"];
      [(WFHTMLToMarkdown *)self setStart:1];
      [(WFHTMLToMarkdown *)self setBlockquote:[(WFHTMLToMarkdown *)self blockquote]+ 1];
    }

    else
    {
      [(WFHTMLToMarkdown *)self setBlockquote:[(WFHTMLToMarkdown *)self blockquote]- 1];
      [(WFHTMLToMarkdown *)self p];
    }
  }

  if ((([tagCopy isEqualToString:@"em"] & 1) != 0 || (objc_msgSend(tagCopy, "isEqualToString:", @"i") & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"u")) && !-[WFHTMLToMarkdown ignoreEmphasis](self, "ignoreEmphasis"))
  {
    emphasisMark = [(WFHTMLToMarkdown *)self emphasisMark];
    [(WFHTMLToMarkdown *)self output:emphasisMark];
  }

  if ((([tagCopy isEqualToString:@"strong"] & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"b")) && !-[WFHTMLToMarkdown ignoreEmphasis](self, "ignoreEmphasis"))
  {
    strongMark = [(WFHTMLToMarkdown *)self strongMark];
    [(WFHTMLToMarkdown *)self output:strongMark];
  }

  if (([tagCopy isEqualToString:@"del"] & 1) != 0 || (objc_msgSend(tagCopy, "isEqualToString:", @"strike") & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"s"))
  {
    if (startCopy)
    {
      v20 = @"<%@>";
    }

    else
    {
      v20 = @"</%@>";
    }

    tagCopy = [MEMORY[0x277CCACA8] stringWithFormat:v20, tagCopy];
    [(WFHTMLToMarkdown *)self output:tagCopy];
  }

  if ((([tagCopy isEqualToString:@"code"] & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"tt")) && !-[WFHTMLToMarkdown pre](self, "pre"))
  {
  }

  if ([tagCopy isEqualToString:@"abbr"])
  {
    if (startCopy)
    {
      [(WFHTMLToMarkdown *)self setAbbreviationData:&stru_282F53518];
      v22 = [v12 objectForKey:@"title"];
      [(WFHTMLToMarkdown *)self setAbbreviationTitle:v22];
    }

    else
    {
      abbreviationTitle = [(WFHTMLToMarkdown *)self abbreviationTitle];

      if (abbreviationTitle)
      {
        v24 = objc_opt_new();
        abbreviationData = [(WFHTMLToMarkdown *)self abbreviationData];
        [v24 setAbbreviation:abbreviationData];

        abbreviationTitle2 = [(WFHTMLToMarkdown *)self abbreviationTitle];
        [v24 setTitle:abbreviationTitle2];

        abbreviationList = [(WFHTMLToMarkdown *)self abbreviationList];
        [abbreviationList addObject:v24];

        [(WFHTMLToMarkdown *)self setAbbreviationTitle:0];
      }

      [(WFHTMLToMarkdown *)self setAbbreviationData:&stru_282F53518];
    }
  }

  if (![tagCopy isEqualToString:@"a"] || -[WFHTMLToMarkdown ignoreLinks](self, "ignoreLinks"))
  {
    goto LABEL_75;
  }

  if (startCopy)
  {
    v28 = [v12 objectForKey:@"href"];
    if (v28)
    {
      v29 = v28;
      if ([(WFHTMLToMarkdown *)self skipInternalLinks])
      {
        v30 = [v12 objectForKey:@"href"];
        v31 = [v30 hasPrefix:@"#"];

        if (v31)
        {
          goto LABEL_65;
        }
      }

      else
      {
      }

      aStack = [(WFHTMLToMarkdown *)self aStack];
      v41 = [v12 mutableCopy];
      [aStack addObject:v41];

      aStack2 = [v12 objectForKey:@"href"];
      [(WFHTMLToMarkdown *)self setMaybeAutomaticLink:aStack2];
      goto LABEL_74;
    }

LABEL_65:
    aStack2 = [(WFHTMLToMarkdown *)self aStack];
    null = [MEMORY[0x277CBEB68] null];
    [aStack2 addObject:null];

LABEL_74:
LABEL_75:
    if ([tagCopy isEqualToString:@"img"])
    {
      if (startCopy && ![(WFHTMLToMarkdown *)self ignoreImages])
      {
        v42 = [v12 objectForKey:@"src"];

        if (v42)
        {
          v43 = [v12 objectForKey:@"src"];
          [v12 setObject:v43 forKey:@"href"];

          v44 = [v12 objectForKey:@"alt"];
          v45 = v44;
          v46 = &stru_282F53518;
          if (v44)
          {
            v46 = v44;
          }

          v47 = v46;

          v48 = MEMORY[0x277CCACA8];
          v49 = [(WFHTMLToMarkdown *)self escapeMD:v47];
          v50 = [v48 stringWithFormat:@"![%@]", v49];
          [(WFHTMLToMarkdown *)self output:v50];

          v51 = attributesCopy;
          if ([(WFHTMLToMarkdown *)self inlineLinks])
          {
            v52 = MEMORY[0x277CCACA8];
            v53 = [v12 objectForKey:@"href"];
            v54 = [(WFHTMLToMarkdown *)self escapeMD:v53];
            [v52 stringWithFormat:@"(%@)", v54];
          }

          else
          {
            v53 = [(WFHTMLToMarkdown *)self previousIndex:v12];
            if (v53)
            {
              v55 = [(WFHTMLToMarkdown *)self a];
              v56 = [v55 objectAtIndex:{objc_msgSend(v53, "unsignedIntegerValue")}];

              v12 = v56;
            }

            else
            {
              [(WFHTMLToMarkdown *)self setACount:[(WFHTMLToMarkdown *)self aCount]+ 1];
              v62 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFHTMLToMarkdown aCount](self, "aCount")}];
              [v12 setObject:v62 forKey:@"count"];

              v63 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFHTMLToMarkdown outCount](self, "outCount")}];
              [v12 setObject:v63 forKey:@"outcount"];

              v55 = [(WFHTMLToMarkdown *)self a];
              [v55 addObject:v12];
            }

            v64 = MEMORY[0x277CCACA8];
            v54 = [v12 objectForKey:@"count"];
            [v64 stringWithFormat:@"[%@]", v54];
          }
          v65 = ;
          [(WFHTMLToMarkdown *)self output:v65];

          attributesCopy = v51;
        }
      }
    }

    if ([tagCopy isEqualToString:@"dl"] && startCopy)
    {
      [(WFHTMLToMarkdown *)self p];
    }

    goto LABEL_100;
  }

  aStack3 = [(WFHTMLToMarkdown *)self aStack];
  v35 = [aStack3 count];

  if (v35)
  {
    aStack4 = [(WFHTMLToMarkdown *)self aStack];
    lastObject = [aStack4 lastObject];

    aStack5 = [(WFHTMLToMarkdown *)self aStack];
    [aStack5 removeLastObject];

    maybeAutomaticLink = [(WFHTMLToMarkdown *)self maybeAutomaticLink];

    if (maybeAutomaticLink)
    {
      [(WFHTMLToMarkdown *)self setMaybeAutomaticLink:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([(WFHTMLToMarkdown *)self inlineLinks])
        {
          v57 = MEMORY[0x277CCACA8];
          v58 = [lastObject objectForKey:@"href"];
          [(WFHTMLToMarkdown *)self escapeMD:v58];
          v60 = v59 = attributesCopy;
          v61 = [v57 stringWithFormat:@"](%@)", v60];
          [(WFHTMLToMarkdown *)self output:v61];

          attributesCopy = v59;
        }

        else
        {
          v66 = attributesCopy;
          v67 = [(WFHTMLToMarkdown *)self previousIndex:lastObject];
          if (v67)
          {
            v68 = [(WFHTMLToMarkdown *)self a];
            v69 = [v68 objectAtIndex:{objc_msgSend(v67, "unsignedIntegerValue")}];

            lastObject = v69;
          }

          else
          {
            [(WFHTMLToMarkdown *)self setACount:[(WFHTMLToMarkdown *)self aCount]+ 1];
            v70 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFHTMLToMarkdown aCount](self, "aCount")}];
            [lastObject setObject:v70 forKey:@"count"];

            v71 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFHTMLToMarkdown outCount](self, "outCount")}];
            [lastObject setObject:v71 forKey:@"outcount"];

            v68 = [(WFHTMLToMarkdown *)self a];
            [v68 addObject:lastObject];
          }

          v72 = MEMORY[0x277CCACA8];
          v73 = [lastObject objectForKey:@"count"];
          v74 = [v72 stringWithFormat:@"][%@]", v73];
          [(WFHTMLToMarkdown *)self output:v74];

          attributesCopy = v66;
        }
      }
    }
  }

  [tagCopy isEqualToString:@"img"];
  [tagCopy isEqualToString:@"dl"];
LABEL_100:
  if ([tagCopy isEqualToString:@"dt"] && !startCopy)
  {
    [(WFHTMLToMarkdown *)self pbr];
  }

  if ([tagCopy isEqualToString:@"dd"] && startCopy)
  {
    [(WFHTMLToMarkdown *)self output:@"    "];
  }

  if ([tagCopy isEqualToString:@"dd"] && !startCopy)
  {
    [(WFHTMLToMarkdown *)self pbr];
  }

  if (([tagCopy isEqualToString:@"ol"] & 1) != 0 || objc_msgSend(tagCopy, "isEqualToString:", @"ul"))
  {
    list = [(WFHTMLToMarkdown *)self list];
    if ([list count])
    {
    }

    else
    {
      lastWasList = [(WFHTMLToMarkdown *)self lastWasList];

      if (!lastWasList)
      {
        [(WFHTMLToMarkdown *)self p];
      }
    }

    if (startCopy)
    {
      v77 = [v12 objectForKey:@"start"];

      if (v77)
      {
        v78 = [v12 objectForKey:@"start"];
        v77 = [v78 intValue] - 1;
      }

      v110[0] = @"name";
      v110[1] = @"num";
      v111[0] = tagCopy;
      v79 = [MEMORY[0x277CCABB0] numberWithInt:v77];
      v111[1] = v79;
      v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];

      list2 = [(WFHTMLToMarkdown *)self list];
      v82 = [v80 mutableCopy];
      [list2 addObject:v82];
    }

    else
    {
      list3 = [(WFHTMLToMarkdown *)self list];
      v84 = [list3 count];

      if (v84)
      {
        list4 = [(WFHTMLToMarkdown *)self list];
        [list4 removeLastObject];
      }
    }

    selfCopy2 = self;
    v87 = 1;
  }

  else
  {
    selfCopy2 = self;
    v87 = 0;
  }

  [(WFHTMLToMarkdown *)selfCopy2 setLastWasList:v87];
  if ([tagCopy isEqualToString:@"li"])
  {
    [(WFHTMLToMarkdown *)self pbr];
    if (!startCopy)
    {
      if (([tagCopy isEqualToString:@"table"] & 1) == 0)
      {
        [tagCopy isEqualToString:@"tr"];
      }

      goto LABEL_145;
    }

    list5 = [(WFHTMLToMarkdown *)self list];
    v89 = [list5 count];

    v109 = attributesCopy;
    if (v89)
    {
      list6 = [(WFHTMLToMarkdown *)self list];
      lastObject2 = [list6 lastObject];
    }

    else
    {
      lastObject2 = [&unk_282F7BFE0 mutableCopy];
    }

    v92 = objc_opt_new();
    list7 = [(WFHTMLToMarkdown *)self list];
    v94 = [list7 count];

    if (v94)
    {
      v95 = 0;
      do
      {
        [v92 appendString:@"  "];
        ++v95;
        list8 = [(WFHTMLToMarkdown *)self list];
        v97 = [list8 count];
      }

      while (v97 > v95);
    }

    [(WFHTMLToMarkdown *)self output:v92];
    v98 = [lastObject2 objectForKey:@"name"];
    v99 = [v98 isEqualToString:@"ul"];

    if (v99)
    {
      ulItemMark = [(WFHTMLToMarkdown *)self ulItemMark];
      v100 = [ulItemMark stringByAppendingString:@" "];
    }

    else
    {
      v102 = [lastObject2 objectForKey:@"name"];
      v103 = [v102 isEqualToString:@"ol"];

      if (!v103)
      {
LABEL_138:
        [(WFHTMLToMarkdown *)self setStart:1];

        attributesCopy = v109;
        goto LABEL_139;
      }

      v104 = MEMORY[0x277CCABB0];
      v105 = [lastObject2 objectForKey:@"num"];
      v106 = [v104 numberWithInt:{objc_msgSend(v105, "intValue") + 1}];
      [lastObject2 setObject:v106 forKey:@"num"];

      v107 = MEMORY[0x277CCACA8];
      ulItemMark = [lastObject2 objectForKey:@"num"];
      v100 = [v107 stringWithFormat:@"%@. ", ulItemMark];
    }

    v108 = v100;
    [(WFHTMLToMarkdown *)self output:v100];

    goto LABEL_138;
  }

LABEL_139:
  if ([tagCopy isEqualToString:@"table"])
  {
    if (!startCopy)
    {
      goto LABEL_145;
    }
  }

  else if (![tagCopy isEqualToString:@"tr"] || !startCopy)
  {
    goto LABEL_145;
  }

  [(WFHTMLToMarkdown *)self p];
LABEL_145:
  if ([tagCopy isEqualToString:@"td"])
  {
    [(WFHTMLToMarkdown *)self pbr];
  }

  if ([tagCopy isEqualToString:@"pre"])
  {
    if (startCopy)
    {
      [(WFHTMLToMarkdown *)self setStartpre:1];
    }

    [(WFHTMLToMarkdown *)self setPre:1];
    [(WFHTMLToMarkdown *)self p];
  }

LABEL_151:
}

- (id)escapeMDSection:(id)section snob:(BOOL)snob
{
  snobCopy = snob;
  v5 = MEMORY[0x277CCAC68];
  v6 = MEMORY[0x277CCACA8];
  v8 = v7 = section;
  v9 = [v5 regularExpressionWithPattern:v8 options:0 error:0];

  v10 = [v9 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"\\\\$1"}];

  if (snobCopy)
    v11 = {;
    v12 = [v11 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{objc_msgSend(v10, "length"), @"\\\\$1"}];

    v10 = v12;
  }

  v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(\\s*\\d+)(\\.)(?=\\s)" options:0 error:0];
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(\\s*)(\\+)(?=\\s)" options:0 error:0];
  v15 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(\\s*)(-)(?=\\s|\\-)" options:0 error:0];
  v16 = [v13 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{objc_msgSend(v10, "length"), @"$1\\\\$2"}];

  v17 = [v14 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{objc_msgSend(v16, "length"), @"$1\\\\$2"}];

  v18 = [v15 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{objc_msgSend(v17, "length"), @"$1\\\\$2"}];

  return v18;
}

- (id)escapeMD:(id)d
{
  v3 = MEMORY[0x277CCAC68];
  dCopy = d;
  v5 = [v3 regularExpressionWithPattern:@"([\\\\\\[\\]\\(\\)])" options:0 error:0];
  v6 = [v5 stringByReplacingMatchesInString:dCopy options:0 range:0 withTemplate:{objc_msgSend(dCopy, "length"), @"\\\\$1"}];

  return v6;
}

- (int)tagHeaderNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy length] == 2 && objc_msgSend(numberCopy, "characterAtIndex:", 0) == 104)
  {
    v4 = [numberCopy characterAtIndex:1];
    if ((v4 - 49) >= 9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 - 48;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)previousIndex:(id)index
{
  v36 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v5 = [indexCopy objectForKey:@"href"];

  if (v5)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(WFHTMLToMarkdown *)self a];
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v30 = indexCopy;
      v8 = *v32;
      v9 = -1;
      while (2)
      {
        v10 = 0;
        v11 = (v9 + 1);
        v28 = v9 + v7;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * v10);
          v13 = [v12 objectForKey:@"href"];
          if (v13)
          {
            v14 = v13;
            v15 = [v12 objectForKey:@"href"];
            v16 = [v30 objectForKey:@"href"];
            v17 = [v15 isEqualToString:v16];

            if (v17)
            {
              v18 = [v12 objectForKey:@"title"];
              if (v18)
              {
              }

              else
              {
                v19 = [v30 objectForKey:@"title"];

                if (!v19)
                {
                  goto LABEL_20;
                }
              }

              v20 = [v12 objectForKey:@"title"];
              if (v20)
              {
                v21 = v20;
                v22 = [v30 objectForKey:@"title"];
                if (v22)
                {
                  v23 = v22;
                  v24 = [v12 objectForKey:@"title"];
                  v25 = [v30 objectForKey:@"title"];
                  v26 = [v24 isEqualToString:v25];

                  if (v26)
                  {
LABEL_20:
                    v5 = [MEMORY[0x277CCABB0] numberWithInt:v11];
                    goto LABEL_21;
                  }
                }

                else
                {
                }
              }
            }
          }

          ++v10;
          v11 = (v11 + 1);
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        v9 = v28;
        if (v7)
        {
          continue;
        }

        break;
      }

      v5 = 0;
LABEL_21:
      indexCopy = v30;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)parser:(id)parser foundStartTag:(id)tag attributes:(id)attributes
{
  v26 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  attributesCopy = attributes;
  v9 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = attributesCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        name = [v15 name];
        if (name)
        {
          v17 = name;
          value = [v15 value];

          if (value)
          {
            value2 = [v15 value];
            name2 = [v15 name];
            [v9 setObject:value2 forKey:name2];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [(WFHTMLToMarkdown *)self handleTag:tagCopy attributes:v9 start:1];
}

- (void)parser:(id)parser foundEntityRef:(id)ref
{
  v5 = [(WFHTMLToMarkdown *)self entityref:ref];
  [(WFHTMLToMarkdown *)self output:v5 pureData:1 force:0];
}

- (void)parser:(id)parser foundCharacterRef:(id)ref
{
  v5 = [(WFHTMLToMarkdown *)self charref:ref];
  [(WFHTMLToMarkdown *)self output:v5 pureData:1 force:0];
}

- (id)entityref:(id)entityref
{
  entityrefCopy = entityref;
  unifiable = [(WFHTMLToMarkdown *)self unifiable];
  v6 = [unifiable objectForKey:entityrefCopy];

  if ([(WFHTMLToMarkdown *)self unicodeSnob]|| !v6)
  {
    v8 = [(WFHTMLToMarkdown *)self nameToCodepoint:entityrefCopy];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v8];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"&%@;", entityrefCopy];
    }
    v7 = ;
  }

  else
  {
    v7 = v6;
  }

  v9 = v7;

  return v9;
}

- (id)charref:(id)charref
{
  charrefCopy = charref;
  if (([charrefCopy hasPrefix:@"x"] & 1) != 0 || objc_msgSend(charrefCopy, "hasPrefix:", @"X"))
  {
    v5 = [charrefCopy substringFromIndex:1];
    intValue = strtol([v5 UTF8String], 0, 16);
  }

  else
  {
    intValue = [charrefCopy intValue];
  }

  if (-[WFHTMLToMarkdown unicodeSnob](self, "unicodeSnob") || (-[WFHTMLToMarkdown unifiableN](self, "unifiableN"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithUnsignedShort:intValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", intValue];
  }

  else
  {
    unifiableN = [(WFHTMLToMarkdown *)self unifiableN];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:intValue];
    v12 = [unifiableN objectForKey:v11];
  }

  return v12;
}

- (void)close
{
  parser = [(WFHTMLToMarkdown *)self parser];
  [parser close];

  [(WFHTMLToMarkdown *)self pbr];
  [(WFHTMLToMarkdown *)self output:&stru_282F53518 pureData:0 force:@"end"];
  outTextList = [(WFHTMLToMarkdown *)self outTextList];
  v5 = [outTextList componentsJoinedByString:&stru_282F53518];
  [(WFHTMLToMarkdown *)self setOutText:v5];

  if ([(WFHTMLToMarkdown *)self unicodeSnob])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", -[WFHTMLToMarkdown nameToCodepoint:](self, "nameToCodepoint:", @"nbsp"];
  }

  else
  {
    v6 = @" ";
  }

  v9 = v6;
  outText = [(WFHTMLToMarkdown *)self outText];
  v8 = [outText stringByReplacingOccurrencesOfString:@"&nbsp_place_holder" withString:v9];;
  [(WFHTMLToMarkdown *)self setOutText:v8];
}

- (id)optwrap:(id)optwrap
{
  v22 = *MEMORY[0x277D85DE8];
  optwrapCopy = optwrap;
  if ([(WFHTMLToMarkdown *)self bodyWidth])
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = optwrapCopy;
    v6 = [optwrapCopy componentsSeparatedByString:@"\n"];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 length])
        {
          if ([(WFHTMLToMarkdown *)self skipwrap:v12])
          {
            if ([(WFHTMLToMarkdown *)self onlywhite:v12])
            {
              continue;
            }

            v13 = [v12 stringByAppendingString:@"\n"];
            [v5 appendString:v13];

            goto LABEL_15;
          }

          v14 = [(WFHTMLToMarkdown *)self wrapText:v12 toWidth:[(WFHTMLToMarkdown *)self bodyWidth]];
          [v5 appendString:v14];

          if ([v12 hasSuffix:@"  "])
          {
            [v5 appendString:@"  \n"];
LABEL_15:
            v9 = 1;
            continue;
          }

          [v5 appendString:@"\n\n"];
        }

        else if (v9 <= 1)
        {
          [v5 appendString:@"\n"];
          ++v9;
          continue;
        }

        v9 = 2;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v8)
      {
LABEL_20:

        optwrapCopy = v16;
        goto LABEL_22;
      }
    }
  }

  v5 = optwrapCopy;
LABEL_22:

  return v5;
}

- (BOOL)onlywhite:(id)onlywhite
{
  onlywhiteCopy = onlywhite;
  if ([onlywhiteCopy isEqualToString:@" "])
  {
    v4 = 1;
  }

  else
  {
    v4 = [onlywhiteCopy isEqualToString:@"  "];
  }

  return v4;
}

- (id)wrapText:(id)text toWidth:(int64_t)width
{
  textCopy = text;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  whitespaceCharacterSet = [MEMORY[0x277CCAB50] whitespaceCharacterSet];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", 160];
  [whitespaceCharacterSet removeCharactersInString:v8];

  v22 = whitespaceCharacterSet;
  v23 = textCopy;
  v9 = [textCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
  v10 = [v9 count];
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x277CCAB68] stringWithCapacity:1];
      v15 = [v14 length];
      do
      {
        if (v13 + v15 + 1 > width)
        {
          break;
        }

        v16 = [v9 objectAtIndex:v12];
        v13 = [v16 length];

        v17 = [v9 objectAtIndex:v12];
        [v14 appendString:v17];

        if (++v12 < v11)
        {
          [v14 appendString:@" "];
        }

        v15 = [v14 length];
      }

      while (v12 < v11);
      whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v19 = [v14 wf_stringByTrimmingTrailingCharactersInSet:whitespaceCharacterSet2];

      if ([v19 length])
      {
        [v6 addObject:v19];
      }
    }

    while (v12 < v11);
  }

  v20 = [v6 componentsJoinedByString:@"\n"];

  return v20;
}

- (BOOL)skipwrap:(id)skipwrap
{
  skipwrapCopy = skipwrap;
  if (([skipwrapCopy hasPrefix:@"    "] & 1) != 0 || objc_msgSend(skipwrapCopy, "length") && objc_msgSend(skipwrapCopy, "characterAtIndex:", 0) == 9)
  {
    v4 = 1;
  }

  else
  {
    wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters = [skipwrapCopy wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters];
    if ([wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters hasPrefix:@"--"] && objc_msgSend(wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters, "length") >= 3 && objc_msgSend(wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters, "characterAtIndex:", 2) != 45)
    {
      v4 = 0;
    }

    else if ([wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters hasPrefix:@"-"] & 1) != 0 || (objc_msgSend(wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters, "hasPrefix:", @"*"))
    {
      v4 = 1;
    }

    else
    {
      v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\d+\\.\\s" options:0 error:0];
      if ([v6 numberOfMatchesInString:wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters options:4 range:{0, objc_msgSend(wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters, "length")}])
      {
        v4 = 1;
      }

      else
      {
        v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[-\\*\\+]\\s" options:0 error:0];
        v4 = [v7 numberOfMatchesInString:wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters options:4 range:{0, objc_msgSend(wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters, "length")}] != 0;
      }
    }
  }

  return v4;
}

- (id)handleHTML:(id)l
{
  lCopy = l;
  parser = [(WFHTMLToMarkdown *)self parser];
  [parser feed:lCopy];

  [(WFHTMLToMarkdown *)self close];
  outText = [(WFHTMLToMarkdown *)self outText];
  v7 = [(WFHTMLToMarkdown *)self optwrap:outText];

  return v7;
}

- (void)addOutput:(id)output
{
  outputCopy = output;
  outTextList = [(WFHTMLToMarkdown *)self outTextList];
  [outTextList addObject:outputCopy];

  if ([outputCopy length])
  {
    -[WFHTMLToMarkdown setLastWasNewline:](self, "setLastWasNewline:", [outputCopy hasSuffix:@"\n"]);
  }
}

- (WFHTMLToMarkdown)initWithBaseURL:(id)l
{
  lCopy = l;
  v27.receiver = self;
  v27.super_class = WFHTMLToMarkdown;
  v6 = [(WFHTMLToMarkdown *)&v27 init];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = *(v6 + 5);
    *(v6 + 5) = v7;

    [*(v6 + 5) setDelegate:v6];
    objc_storeStrong(v6 + 3, l);
    *(v6 + 4) = 0;
    v6[10] = 0;
    *(v6 + 4) = 0;
    *(v6 + 11) = 257;
    v6[15] = 0;
    v9 = *(v6 + 23);
    *(v6 + 23) = @"*";

    v10 = *(v6 + 24);
    *(v6 + 24) = @"_";

    v11 = *(v6 + 25);
    *(v6 + 25) = @"**";

    v12 = objc_opt_new();
    v13 = *(v6 + 8);
    *(v6 + 8) = v12;

    *(v6 + 10) = 0;
    *(v6 + 11) = 0;
    *(v6 + 12) = 0;
    *(v6 + 8) = 1;
    v14 = objc_opt_new();
    v15 = *(v6 + 13);
    *(v6 + 13) = v14;

    v16 = objc_opt_new();
    v17 = *(v6 + 14);
    *(v6 + 14) = v16;

    v18 = *(v6 + 15);
    *(v6 + 15) = 0;

    *(v6 + 16) = 0;
    v19 = objc_opt_new();
    v20 = *(v6 + 17);
    *(v6 + 17) = v19;

    v6[22] = 0;
    *(v6 + 18) = 0;
    *(v6 + 18) = 0;
    *(v6 + 19) = 0;
    v21 = *(v6 + 20);
    *(v6 + 20) = 0;

    v22 = *(v6 + 21);
    *(v6 + 21) = 0;

    v23 = objc_opt_new();
    v24 = *(v6 + 22);
    *(v6 + 22) = v23;

    v25 = v6;
  }

  return v6;
}

@end