@interface WFHTMLToMarkdown
- (BOOL)onlywhite:(id)a3;
- (BOOL)skipwrap:(id)a3;
- (NSDictionary)nameToCodepointMapping;
- (NSDictionary)unifiableN;
- (WFHTMLToMarkdown)initWithBaseURL:(id)a3;
- (id)charref:(id)a3;
- (id)entityref:(id)a3;
- (id)escapeMD:(id)a3;
- (id)escapeMDSection:(id)a3 snob:(BOOL)a4;
- (id)handleHTML:(id)a3;
- (id)optwrap:(id)a3;
- (id)previousIndex:(id)a3;
- (id)wrapText:(id)a3 toWidth:(int64_t)a4;
- (int)tagHeaderNumber:(id)a3;
- (unsigned)nameToCodepoint:(id)a3;
- (void)addOutput:(id)a3;
- (void)close;
- (void)handleTag:(id)a3 attributes:(id)a4 start:(BOOL)a5;
- (void)output:(id)a3 pureData:(BOOL)a4 force:(id)a5;
- (void)parser:(id)a3 foundCharacterRef:(id)a4;
- (void)parser:(id)a3 foundData:(id)a4;
- (void)parser:(id)a3 foundEntityRef:(id)a4;
- (void)parser:(id)a3 foundStartTag:(id)a4 attributes:(id)a5;
- (void)pbr;
@end

@implementation WFHTMLToMarkdown

- (NSDictionary)unifiableN
{
  unifiableN = self->_unifiableN;
  if (!unifiableN)
  {
    v4 = objc_opt_new();
    v5 = [(WFHTMLToMarkdown *)self unifiable];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __30__WFHTMLToMarkdown_unifiableN__block_invoke;
    v14 = &unk_278349AD8;
    v6 = v4;
    v15 = v6;
    v16 = self;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];
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

- (unsigned)nameToCodepoint:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"apos"])
  {
    v5 = 39;
  }

  else
  {
    v6 = [(WFHTMLToMarkdown *)self nameToCodepointMapping];
    v7 = [v6 objectForKey:v4];
    v5 = [v7 unsignedShortValue];
  }

  return v5;
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

- (void)parser:(id)a3 foundData:(id)a4
{
  v10 = a4;
  if ([v10 containsString:@"/script>"])
  {
    [(WFHTMLToMarkdown *)self setQuiet:[(WFHTMLToMarkdown *)self quiet]- 1];
  }

  v5 = [(WFHTMLToMarkdown *)self maybeAutomaticLink];

  if (v5)
  {
    v6 = [(WFHTMLToMarkdown *)self maybeAutomaticLink];
    if ([v6 isEqualToString:v10] && +[WFURLDetector stringMatchesExactly:](WFURLDetector, "stringMatchesExactly:", v6))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", v10];
      [(WFHTMLToMarkdown *)self output:v7];

      goto LABEL_13;
    }

    [(WFHTMLToMarkdown *)self output:@"["];
    [(WFHTMLToMarkdown *)self setMaybeAutomaticLink:0];
  }

  if ([(WFHTMLToMarkdown *)self code]|| [(WFHTMLToMarkdown *)self pre])
  {
    v8 = v10;
  }

  else
  {
    v9 = [(WFHTMLToMarkdown *)self escapeMDSection:v10 snob:[(WFHTMLToMarkdown *)self escapeSnob]];

    v8 = v9;
  }

  v10 = v8;
  [(WFHTMLToMarkdown *)self output:v8 pureData:1 force:0];
LABEL_13:
}

- (void)output:(id)a3 pureData:(BOOL)a4 force:(id)a5
{
  v6 = a4;
  v93 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  abbreviationData = self->_abbreviationData;
  if (abbreviationData)
  {
    v11 = [(NSString *)abbreviationData stringByAppendingString:v8];
    v12 = self->_abbreviationData;
    self->_abbreviationData = v11;
  }

  if (![(WFHTMLToMarkdown *)self quiet])
  {
    v82 = self;
    if (v6 && ![(WFHTMLToMarkdown *)self pre])
    {
      v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[ \t\n\r\f\v]+" options:0 error:0];
      v14 = [v13 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v8, "length"), @" "}];

      if ([v14 length] && objc_msgSend(v14, "characterAtIndex:", 0) == 32)
      {
        [(WFHTMLToMarkdown *)self setSpace:1];
        v8 = [v14 substringFromIndex:1];
      }

      else
      {
        v8 = v14;
      }
    }

    v15 = [v8 length];
    if (v9 || v15)
    {
      if (-[WFHTMLToMarkdown startpre](self, "startpre") && ([v8 hasPrefix:@"\n"] & 1) == 0)
      {
        v16 = [@"\n" stringByAppendingString:v8];

        v8 = v16;
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

        while ([(WFHTMLToMarkdown *)v82 blockquote]> v18);
      }

      if ((!v9 || ![v8 length] || objc_msgSend(v8, "characterAtIndex:", 0) != 62) && -[WFHTMLToMarkdown blockquote](v82, "blockquote"))
      {
        [v17 appendString:@" "];
      }

      if ([(WFHTMLToMarkdown *)v82 pre])
      {
        v19 = [(WFHTMLToMarkdown *)v82 list];
        v20 = [v19 count];

        if (v20)
        {
          v21 = [(WFHTMLToMarkdown *)v82 list];
          v22 = [v21 count];

          if (v22)
          {
            v23 = 0;
            do
            {
              [v17 appendString:@"    "];
              ++v23;
              v24 = [(WFHTMLToMarkdown *)v82 list];
              v25 = [v24 count];
            }

            while (v25 > v23);
          }
        }

        else
        {
          [v17 appendString:@"    "];
        }

        v26 = [@"\n" stringByAppendingString:v17];
        v27 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:v26];

        v8 = v27;
      }

      if ([(WFHTMLToMarkdown *)v82 startpre])
      {
        [(WFHTMLToMarkdown *)v82 setStartpre:0];
        v28 = [(WFHTMLToMarkdown *)v82 list];
        v29 = [v28 count];

        if (v29)
        {
          v30 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\n"];
          v31 = [v8 wf_stringByTrimmingLeadingCharactersInSet:v30];

          v8 = v31;
        }
      }

      if ([(WFHTMLToMarkdown *)v82 start])
      {
        [(WFHTMLToMarkdown *)v82 setSpace:0];
        [(WFHTMLToMarkdown *)v82 setP_p:0];
        [(WFHTMLToMarkdown *)v82 setStart:0];
      }

      if ([v9 isEqualToString:@"end"])
      {
        [(WFHTMLToMarkdown *)v82 setP_p:0];
        [(WFHTMLToMarkdown *)v82 addOutput:@"\n"];
        [(WFHTMLToMarkdown *)v82 setSpace:0];
      }

      if ([(WFHTMLToMarkdown *)v82 p_p])
      {
        v32 = objc_opt_new();
        if ([(WFHTMLToMarkdown *)v82 p_p]>= 1)
        {
          v33 = 0;
          do
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v17];
            [v32 appendString:v34];

            ++v33;
          }

          while ([(WFHTMLToMarkdown *)v82 p_p]> v33);
        }

        [(WFHTMLToMarkdown *)v82 addOutput:v32];
        [(WFHTMLToMarkdown *)v82 setSpace:0];
      }

      if ([(WFHTMLToMarkdown *)v82 space])
      {
        if (![(WFHTMLToMarkdown *)v82 lastWasNewline])
        {
          [(WFHTMLToMarkdown *)v82 addOutput:@" "];
        }

        [(WFHTMLToMarkdown *)v82 setSpace:0];
      }

      v35 = [(WFHTMLToMarkdown *)v82 a];
      if ([v35 count])
      {
        if ([(WFHTMLToMarkdown *)v82 p_p]== 2 && [(WFHTMLToMarkdown *)v82 linksEachParagraph])
        {
        }

        else
        {
          v36 = [v9 isEqualToString:@"end"];

          if ((v36 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        v75 = v17;
        v77 = v8;
        v74 = v9;
        v37 = [v9 isEqualToString:@"end"];
        v38 = v82;
        if (v37)
        {
          [(WFHTMLToMarkdown *)v82 addOutput:@"\n"];
        }

        v79 = objc_opt_new();
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [(WFHTMLToMarkdown *)v82 a];
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
              v45 = [(WFHTMLToMarkdown *)v38 outCount];
              v46 = [v44 objectForKey:v41];
              v47 = [v46 integerValue];

              if (v45 <= v47)
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
                v53 = [(WFHTMLToMarkdown *)v38 baseURL];
                v54 = [v51 URLWithString:v52 relativeToURL:v53];
                v55 = [v49 stringWithFormat:@"   [%@]: %@", v50, v54];

                v38 = v82;
                [(WFHTMLToMarkdown *)v82 addOutput:v55];
                v56 = [v44 objectForKey:@"title"];

                if (v56)
                {
                  v57 = MEMORY[0x277CCACA8];
                  v58 = [v44 objectForKey:@"title"];
                  v59 = [v57 stringWithFormat:@" (\"%@\"", v58];
                  [(WFHTMLToMarkdown *)v82 addOutput:v59];
                }

                [(WFHTMLToMarkdown *)v82 addOutput:@"\n"];

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
        v8 = v77;
        if ((v61 & 1) == 0)
        {
          [(WFHTMLToMarkdown *)v38 addOutput:@" "];
        }

        [(WFHTMLToMarkdown *)v38 setA:v79];

        v9 = v74;
      }

      else
      {
      }

LABEL_70:
      v62 = [(WFHTMLToMarkdown *)v82 abbreviationList];
      if ([v62 count])
      {
        v63 = [v9 isEqualToString:@"end"];

        if (!v63)
        {
LABEL_81:
          [(WFHTMLToMarkdown *)v82 setP_p:0];
          [(WFHTMLToMarkdown *)v82 addOutput:v8];
          [(WFHTMLToMarkdown *)v82 setOutCount:[(WFHTMLToMarkdown *)v82 outCount]+ 1];

          goto LABEL_82;
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v62 = [(WFHTMLToMarkdown *)v82 abbreviationList];
        v64 = [v62 countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v64)
        {
          v65 = v64;
          v76 = v17;
          v66 = v9;
          v67 = *v84;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v84 != v67)
              {
                objc_enumerationMutation(v62);
              }

              v69 = *(*(&v83 + 1) + 8 * i);
              v70 = MEMORY[0x277CCACA8];
              v71 = [v69 abbreviation];
              v72 = [v69 title];
              v73 = [v70 stringWithFormat:@"  *[%@]: %@\n", v71, v72];
              [(WFHTMLToMarkdown *)v82 addOutput:v73];
            }

            v65 = [v62 countByEnumeratingWithState:&v83 objects:v91 count:16];
          }

          while (v65);
          v9 = v66;
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

- (void)handleTag:(id)a3 attributes:(id)a4 start:(BOOL)a5
{
  v5 = a5;
  v111[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = [(WFHTMLToMarkdown *)self tagHeaderNumber:v8];
  if (v13)
  {
    v14 = v13;
    [(WFHTMLToMarkdown *)self p];
    if (!v5)
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

  if (([v8 isEqualToString:@"p"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"div"))
  {
    [(WFHTMLToMarkdown *)self p];
  }

  if ([v8 isEqualToString:@"br"] && v5)
  {
    [(WFHTMLToMarkdown *)self output:@"  \n"];
  }

  if ([v8 isEqualToString:@"hr"] && v5)
  {
    [(WFHTMLToMarkdown *)self p];
    [(WFHTMLToMarkdown *)self output:@"* * *"];
    [(WFHTMLToMarkdown *)self p];
  }

  if (([v8 isEqualToString:@"head"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"style") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"script"))
  {
    v16 = [(WFHTMLToMarkdown *)self quiet];
    if (v5)
    {
      [(WFHTMLToMarkdown *)self setQuiet:v16 + 1];
      if (([v8 isEqualToString:@"style"] & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    [(WFHTMLToMarkdown *)self setQuiet:v16 - 1];
    if (([v8 isEqualToString:@"style"] & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if ([v8 isEqualToString:@"style"])
  {
    if (v5)
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
  if ([v8 isEqualToString:@"body"])
  {
    [(WFHTMLToMarkdown *)self setQuiet:0];
  }

  if ([v8 isEqualToString:@"blockquote"])
  {
    if (v5)
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

  if ((([v8 isEqualToString:@"em"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"i") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"u")) && !-[WFHTMLToMarkdown ignoreEmphasis](self, "ignoreEmphasis"))
  {
    v18 = [(WFHTMLToMarkdown *)self emphasisMark];
    [(WFHTMLToMarkdown *)self output:v18];
  }

  if ((([v8 isEqualToString:@"strong"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"b")) && !-[WFHTMLToMarkdown ignoreEmphasis](self, "ignoreEmphasis"))
  {
    v19 = [(WFHTMLToMarkdown *)self strongMark];
    [(WFHTMLToMarkdown *)self output:v19];
  }

  if (([v8 isEqualToString:@"del"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"strike") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"s"))
  {
    if (v5)
    {
      v20 = @"<%@>";
    }

    else
    {
      v20 = @"</%@>";
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:v20, v8];
    [(WFHTMLToMarkdown *)self output:v21];
  }

  if ((([v8 isEqualToString:@"code"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"tt")) && !-[WFHTMLToMarkdown pre](self, "pre"))
  {
  }

  if ([v8 isEqualToString:@"abbr"])
  {
    if (v5)
    {
      [(WFHTMLToMarkdown *)self setAbbreviationData:&stru_282F53518];
      v22 = [v12 objectForKey:@"title"];
      [(WFHTMLToMarkdown *)self setAbbreviationTitle:v22];
    }

    else
    {
      v23 = [(WFHTMLToMarkdown *)self abbreviationTitle];

      if (v23)
      {
        v24 = objc_opt_new();
        v25 = [(WFHTMLToMarkdown *)self abbreviationData];
        [v24 setAbbreviation:v25];

        v26 = [(WFHTMLToMarkdown *)self abbreviationTitle];
        [v24 setTitle:v26];

        v27 = [(WFHTMLToMarkdown *)self abbreviationList];
        [v27 addObject:v24];

        [(WFHTMLToMarkdown *)self setAbbreviationTitle:0];
      }

      [(WFHTMLToMarkdown *)self setAbbreviationData:&stru_282F53518];
    }
  }

  if (![v8 isEqualToString:@"a"] || -[WFHTMLToMarkdown ignoreLinks](self, "ignoreLinks"))
  {
    goto LABEL_75;
  }

  if (v5)
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

      v40 = [(WFHTMLToMarkdown *)self aStack];
      v41 = [v12 mutableCopy];
      [v40 addObject:v41];

      v32 = [v12 objectForKey:@"href"];
      [(WFHTMLToMarkdown *)self setMaybeAutomaticLink:v32];
      goto LABEL_74;
    }

LABEL_65:
    v32 = [(WFHTMLToMarkdown *)self aStack];
    v33 = [MEMORY[0x277CBEB68] null];
    [v32 addObject:v33];

LABEL_74:
LABEL_75:
    if ([v8 isEqualToString:@"img"])
    {
      if (v5 && ![(WFHTMLToMarkdown *)self ignoreImages])
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

          v51 = v9;
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

          v9 = v51;
        }
      }
    }

    if ([v8 isEqualToString:@"dl"] && v5)
    {
      [(WFHTMLToMarkdown *)self p];
    }

    goto LABEL_100;
  }

  v34 = [(WFHTMLToMarkdown *)self aStack];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [(WFHTMLToMarkdown *)self aStack];
    v37 = [v36 lastObject];

    v38 = [(WFHTMLToMarkdown *)self aStack];
    [v38 removeLastObject];

    v39 = [(WFHTMLToMarkdown *)self maybeAutomaticLink];

    if (v39)
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
          v58 = [v37 objectForKey:@"href"];
          [(WFHTMLToMarkdown *)self escapeMD:v58];
          v60 = v59 = v9;
          v61 = [v57 stringWithFormat:@"](%@)", v60];
          [(WFHTMLToMarkdown *)self output:v61];

          v9 = v59;
        }

        else
        {
          v66 = v9;
          v67 = [(WFHTMLToMarkdown *)self previousIndex:v37];
          if (v67)
          {
            v68 = [(WFHTMLToMarkdown *)self a];
            v69 = [v68 objectAtIndex:{objc_msgSend(v67, "unsignedIntegerValue")}];

            v37 = v69;
          }

          else
          {
            [(WFHTMLToMarkdown *)self setACount:[(WFHTMLToMarkdown *)self aCount]+ 1];
            v70 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFHTMLToMarkdown aCount](self, "aCount")}];
            [v37 setObject:v70 forKey:@"count"];

            v71 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFHTMLToMarkdown outCount](self, "outCount")}];
            [v37 setObject:v71 forKey:@"outcount"];

            v68 = [(WFHTMLToMarkdown *)self a];
            [v68 addObject:v37];
          }

          v72 = MEMORY[0x277CCACA8];
          v73 = [v37 objectForKey:@"count"];
          v74 = [v72 stringWithFormat:@"][%@]", v73];
          [(WFHTMLToMarkdown *)self output:v74];

          v9 = v66;
        }
      }
    }
  }

  [v8 isEqualToString:@"img"];
  [v8 isEqualToString:@"dl"];
LABEL_100:
  if ([v8 isEqualToString:@"dt"] && !v5)
  {
    [(WFHTMLToMarkdown *)self pbr];
  }

  if ([v8 isEqualToString:@"dd"] && v5)
  {
    [(WFHTMLToMarkdown *)self output:@"    "];
  }

  if ([v8 isEqualToString:@"dd"] && !v5)
  {
    [(WFHTMLToMarkdown *)self pbr];
  }

  if (([v8 isEqualToString:@"ol"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"ul"))
  {
    v75 = [(WFHTMLToMarkdown *)self list];
    if ([v75 count])
    {
    }

    else
    {
      v76 = [(WFHTMLToMarkdown *)self lastWasList];

      if (!v76)
      {
        [(WFHTMLToMarkdown *)self p];
      }
    }

    if (v5)
    {
      v77 = [v12 objectForKey:@"start"];

      if (v77)
      {
        v78 = [v12 objectForKey:@"start"];
        v77 = [v78 intValue] - 1;
      }

      v110[0] = @"name";
      v110[1] = @"num";
      v111[0] = v8;
      v79 = [MEMORY[0x277CCABB0] numberWithInt:v77];
      v111[1] = v79;
      v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];

      v81 = [(WFHTMLToMarkdown *)self list];
      v82 = [v80 mutableCopy];
      [v81 addObject:v82];
    }

    else
    {
      v83 = [(WFHTMLToMarkdown *)self list];
      v84 = [v83 count];

      if (v84)
      {
        v85 = [(WFHTMLToMarkdown *)self list];
        [v85 removeLastObject];
      }
    }

    v86 = self;
    v87 = 1;
  }

  else
  {
    v86 = self;
    v87 = 0;
  }

  [(WFHTMLToMarkdown *)v86 setLastWasList:v87];
  if ([v8 isEqualToString:@"li"])
  {
    [(WFHTMLToMarkdown *)self pbr];
    if (!v5)
    {
      if (([v8 isEqualToString:@"table"] & 1) == 0)
      {
        [v8 isEqualToString:@"tr"];
      }

      goto LABEL_145;
    }

    v88 = [(WFHTMLToMarkdown *)self list];
    v89 = [v88 count];

    v109 = v9;
    if (v89)
    {
      v90 = [(WFHTMLToMarkdown *)self list];
      v91 = [v90 lastObject];
    }

    else
    {
      v91 = [&unk_282F7BFE0 mutableCopy];
    }

    v92 = objc_opt_new();
    v93 = [(WFHTMLToMarkdown *)self list];
    v94 = [v93 count];

    if (v94)
    {
      v95 = 0;
      do
      {
        [v92 appendString:@"  "];
        ++v95;
        v96 = [(WFHTMLToMarkdown *)self list];
        v97 = [v96 count];
      }

      while (v97 > v95);
    }

    [(WFHTMLToMarkdown *)self output:v92];
    v98 = [v91 objectForKey:@"name"];
    v99 = [v98 isEqualToString:@"ul"];

    if (v99)
    {
      v100 = [(WFHTMLToMarkdown *)self ulItemMark];
      v101 = [v100 stringByAppendingString:@" "];
    }

    else
    {
      v102 = [v91 objectForKey:@"name"];
      v103 = [v102 isEqualToString:@"ol"];

      if (!v103)
      {
LABEL_138:
        [(WFHTMLToMarkdown *)self setStart:1];

        v9 = v109;
        goto LABEL_139;
      }

      v104 = MEMORY[0x277CCABB0];
      v105 = [v91 objectForKey:@"num"];
      v106 = [v104 numberWithInt:{objc_msgSend(v105, "intValue") + 1}];
      [v91 setObject:v106 forKey:@"num"];

      v107 = MEMORY[0x277CCACA8];
      v100 = [v91 objectForKey:@"num"];
      v101 = [v107 stringWithFormat:@"%@. ", v100];
    }

    v108 = v101;
    [(WFHTMLToMarkdown *)self output:v101];

    goto LABEL_138;
  }

LABEL_139:
  if ([v8 isEqualToString:@"table"])
  {
    if (!v5)
    {
      goto LABEL_145;
    }
  }

  else if (![v8 isEqualToString:@"tr"] || !v5)
  {
    goto LABEL_145;
  }

  [(WFHTMLToMarkdown *)self p];
LABEL_145:
  if ([v8 isEqualToString:@"td"])
  {
    [(WFHTMLToMarkdown *)self pbr];
  }

  if ([v8 isEqualToString:@"pre"])
  {
    if (v5)
    {
      [(WFHTMLToMarkdown *)self setStartpre:1];
    }

    [(WFHTMLToMarkdown *)self setPre:1];
    [(WFHTMLToMarkdown *)self p];
  }

LABEL_151:
}

- (id)escapeMDSection:(id)a3 snob:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277CCAC68];
  v6 = MEMORY[0x277CCACA8];
  v8 = v7 = a3;
  v9 = [v5 regularExpressionWithPattern:v8 options:0 error:0];

  v10 = [v9 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"\\\\$1"}];

  if (v4)
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

- (id)escapeMD:(id)a3
{
  v3 = MEMORY[0x277CCAC68];
  v4 = a3;
  v5 = [v3 regularExpressionWithPattern:@"([\\\\\\[\\]\\(\\)])" options:0 error:0];
  v6 = [v5 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @"\\\\$1"}];

  return v6;
}

- (int)tagHeaderNumber:(id)a3
{
  v3 = a3;
  if ([v3 length] == 2 && objc_msgSend(v3, "characterAtIndex:", 0) == 104)
  {
    v4 = [v3 characterAtIndex:1];
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

- (id)previousIndex:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"href"];

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
      v30 = v4;
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
      v4 = v30;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)parser:(id)a3 foundStartTag:(id)a4 attributes:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
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
        v16 = [v15 name];
        if (v16)
        {
          v17 = v16;
          v18 = [v15 value];

          if (v18)
          {
            v19 = [v15 value];
            v20 = [v15 name];
            [v9 setObject:v19 forKey:v20];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [(WFHTMLToMarkdown *)self handleTag:v7 attributes:v9 start:1];
}

- (void)parser:(id)a3 foundEntityRef:(id)a4
{
  v5 = [(WFHTMLToMarkdown *)self entityref:a4];
  [(WFHTMLToMarkdown *)self output:v5 pureData:1 force:0];
}

- (void)parser:(id)a3 foundCharacterRef:(id)a4
{
  v5 = [(WFHTMLToMarkdown *)self charref:a4];
  [(WFHTMLToMarkdown *)self output:v5 pureData:1 force:0];
}

- (id)entityref:(id)a3
{
  v4 = a3;
  v5 = [(WFHTMLToMarkdown *)self unifiable];
  v6 = [v5 objectForKey:v4];

  if ([(WFHTMLToMarkdown *)self unicodeSnob]|| !v6)
  {
    v8 = [(WFHTMLToMarkdown *)self nameToCodepoint:v4];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v8];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"&%@;", v4];
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

- (id)charref:(id)a3
{
  v4 = a3;
  if (([v4 hasPrefix:@"x"] & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"X"))
  {
    v5 = [v4 substringFromIndex:1];
    v6 = strtol([v5 UTF8String], 0, 16);
  }

  else
  {
    v6 = [v4 intValue];
  }

  if (-[WFHTMLToMarkdown unicodeSnob](self, "unicodeSnob") || (-[WFHTMLToMarkdown unifiableN](self, "unifiableN"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v6];
  }

  else
  {
    v10 = [(WFHTMLToMarkdown *)self unifiableN];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
    v12 = [v10 objectForKey:v11];
  }

  return v12;
}

- (void)close
{
  v3 = [(WFHTMLToMarkdown *)self parser];
  [v3 close];

  [(WFHTMLToMarkdown *)self pbr];
  [(WFHTMLToMarkdown *)self output:&stru_282F53518 pureData:0 force:@"end"];
  v4 = [(WFHTMLToMarkdown *)self outTextList];
  v5 = [v4 componentsJoinedByString:&stru_282F53518];
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
  v7 = [(WFHTMLToMarkdown *)self outText];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"&nbsp_place_holder" withString:v9];;
  [(WFHTMLToMarkdown *)self setOutText:v8];
}

- (id)optwrap:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WFHTMLToMarkdown *)self bodyWidth])
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v4;
    v6 = [v4 componentsSeparatedByString:@"\n"];
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

        v4 = v16;
        goto LABEL_22;
      }
    }
  }

  v5 = v4;
LABEL_22:

  return v5;
}

- (BOOL)onlywhite:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@" "])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"  "];
  }

  return v4;
}

- (id)wrapText:(id)a3 toWidth:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v7 = [MEMORY[0x277CCAB50] whitespaceCharacterSet];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", 160];
  [v7 removeCharactersInString:v8];

  v22 = v7;
  v23 = v5;
  v9 = [v5 componentsSeparatedByCharactersInSet:v7];
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
        if (v13 + v15 + 1 > a4)
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
      v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v19 = [v14 wf_stringByTrimmingTrailingCharactersInSet:v18];

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

- (BOOL)skipwrap:(id)a3
{
  v3 = a3;
  if (([v3 hasPrefix:@"    "] & 1) != 0 || objc_msgSend(v3, "length") && objc_msgSend(v3, "characterAtIndex:", 0) == 9)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters];
    if ([v5 hasPrefix:@"--"] && objc_msgSend(v5, "length") >= 3 && objc_msgSend(v5, "characterAtIndex:", 2) != 45)
    {
      v4 = 0;
    }

    else if ([v5 hasPrefix:@"-"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"*"))
    {
      v4 = 1;
    }

    else
    {
      v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\d+\\.\\s" options:0 error:0];
      if ([v6 numberOfMatchesInString:v5 options:4 range:{0, objc_msgSend(v5, "length")}])
      {
        v4 = 1;
      }

      else
      {
        v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[-\\*\\+]\\s" options:0 error:0];
        v4 = [v7 numberOfMatchesInString:v5 options:4 range:{0, objc_msgSend(v5, "length")}] != 0;
      }
    }
  }

  return v4;
}

- (id)handleHTML:(id)a3
{
  v4 = a3;
  v5 = [(WFHTMLToMarkdown *)self parser];
  [v5 feed:v4];

  [(WFHTMLToMarkdown *)self close];
  v6 = [(WFHTMLToMarkdown *)self outText];
  v7 = [(WFHTMLToMarkdown *)self optwrap:v6];

  return v7;
}

- (void)addOutput:(id)a3
{
  v5 = a3;
  v4 = [(WFHTMLToMarkdown *)self outTextList];
  [v4 addObject:v5];

  if ([v5 length])
  {
    -[WFHTMLToMarkdown setLastWasNewline:](self, "setLastWasNewline:", [v5 hasSuffix:@"\n"]);
  }
}

- (WFHTMLToMarkdown)initWithBaseURL:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = WFHTMLToMarkdown;
  v6 = [(WFHTMLToMarkdown *)&v27 init];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = *(v6 + 5);
    *(v6 + 5) = v7;

    [*(v6 + 5) setDelegate:v6];
    objc_storeStrong(v6 + 3, a3);
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