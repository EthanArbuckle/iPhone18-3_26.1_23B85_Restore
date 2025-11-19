@interface MSVLyricsTTMLParser
- (MSVLyricsTTMLParser)initWithTTMLData:(id)a3;
- (MSVLyricsTTMLParser)initWithTTMLStream:(id)a3;
- (id)_parentTextElement;
- (id)_translatedLyrics:(id)a3 forLanguage:(id)a4;
- (id)_updateWords:(id)a3 withWord:(id)a4 parentText:(id)a5;
- (id)parseWithError:(id *)a3;
- (void)_stripParenthesesFromBackgroundVocalWord:(id)a3 backgroundVocalText:(id)a4;
- (void)parseWithCompletion:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
@end

@implementation MSVLyricsTTMLParser

- (void)_stripParenthesesFromBackgroundVocalWord:(id)a3 backgroundVocalText:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([v7 isBackgroundVocal] & 1) == 0)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:736 description:@"MSVLyricsWord must be background vocal"];
  }

  v9 = [v8 mutableCopy];
  [v9 msvl_trimTrailingWhitespace];
  if ([v9 hasSuffix:@""]))
  {
    [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 1, 1}];
    [v9 deleteCharactersInRange:{0, 1}];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
    [v7 setLyricsText:v10];

    v11 = [v8 rangeOfString:v9];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __assert_rtn("[MSVLyricsTTMLParser _stripParenthesesFromBackgroundVocalWord:backgroundVocalText:]", "MSVLyricsTTMLParser.m", 752, "relativeRange.location != NSNotFound");
    }

    [v7 setCharacterRange:{objc_msgSend(v7, "characterRange") + v11, v12}];
    v13 = [v7 subwords];
    v14 = [v13 firstObject];

    v15 = [v14 lyricsText];
    v16 = [v15 string];
    v17 = objc_msgSend(v16, "hasPrefix:", @"(");

    if (v17)
    {
      v18 = [v14 lyricsText];
      v19 = [v14 lyricsText];
      v20 = [v18 attributedSubstringFromRange:{1, objc_msgSend(v19, "length") - 1}];
      [v14 setLyricsText:v20];
    }

    v54 = v14;
    v55 = v9;
    v56 = v8;
    v21 = [v7 subwords];
    v22 = [v21 lastObject];

    v23 = [v22 lyricsText];
    v24 = [v23 string];
    v25 = [v24 hasSuffix:@""]);

    if (v25)
    {
      v26 = [v22 lyricsText];
      v27 = [v22 lyricsText];
      v28 = [v26 attributedSubstringFromRange:{0, objc_msgSend(v27, "length") - 1}];
      [v22 setLyricsText:v28];
    }

    v53 = v22;
    v29 = MEMORY[0x1E695DF70];
    v30 = [v7 subwords];
    v58 = [v29 arrayWithCapacity:{objc_msgSend(v30, "count")}];

    v31 = [v7 lyricsText];
    v32 = [v31 string];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v57 = v7;
    obj = [v7 subwords];
    v33 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = 0;
      v36 = 0;
      v37 = *v61;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v60 + 1) + 8 * i);
          v40 = [v39 lyricsText];
          v41 = [v40 length];

          if (v41)
          {
            v36 += v35;
            v42 = [v32 length] - v36;
            v43 = [v39 lyricsText];
            v44 = [v43 string];
            v45 = [v32 rangeOfString:v44 options:0 range:v36 locale:{v42, 0}];
            v35 = v46;

            if (v45 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v47 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v48 = [v39 lyricsText];
                v49 = [v48 string];
                *buf = 138412546;
                v65 = v49;
                v66 = 2112;
                v67 = v32;
                _os_log_impl(&dword_1AC81F000, v47, OS_LOG_TYPE_ERROR, "Did not find word %@ within background vocal %@", buf, 0x16u);
              }

              v35 = 0;
            }

            else
            {
              [v39 setCharacterRange:{v45, v35}];
              [v39 setWordIndex:{objc_msgSend(v58, "count")}];
              [v58 addObject:v39];
              if (v45 + v35 >= [v32 length])
              {
                goto LABEL_23;
              }

              v36 = v45;
            }
          }
        }

        v34 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v34);
    }

LABEL_23:

    v50 = [v58 copy];
    v7 = v57;
    [v57 setSubwords:v50];

    v9 = v55;
    v8 = v56;
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_updateWords:(id)a3 withWord:(id)a4 parentText:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 arrayByAddingObject:v8];
  }

  else
  {
    v17[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  v11 = v10;
  [v8 setWordIndex:{objc_msgSend(v10, "count") - 1}];
  if ([v8 wordIndex] >= 1)
  {
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "wordIndex") - 1}];
    [v12 setNextWord:v8];
  }

  v13 = [v8 mutableText];
  v14 = [v13 length];

  [v8 setCharacterRange:{objc_msgSend(v9, "length") - v14, v14}];
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_translatedLyrics:(id)a3 forLanguage:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MSVLyricsTTMLParser *)self translations];

  if (v8)
  {
    if ([v7 hasPrefix:@"zh-Hant"])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = [(MSVLyricsTTMLParser *)self translations];
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v47;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * v13);
          if (![v14 type])
          {
            v15 = [v14 language];
            v16 = [v15 hasPrefix:@"zh-Hant"];

            if (v16)
            {
              goto LABEL_24;
            }
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      if (![v7 hasPrefix:@"zh-Hans"])
      {
LABEL_38:
        v8 = 0;
        goto LABEL_39;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = [(MSVLyricsTTMLParser *)self translations];
      v17 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v43;
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * v20);
          if (![v14 type])
          {
            v21 = [v14 language];
            v22 = [v21 hasPrefix:@"zh-Hans"];

            if (v22)
            {
              break;
            }
          }

          if (v18 == ++v20)
          {
            v18 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }
        }

LABEL_24:
        v23 = v9;
        v9 = [v14 linesMap];

        if (v9)
        {
          v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = v6;
          v24 = v6;
          v25 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v39;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v39 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v38 + 1) + 8 * i);
                v30 = [v29 translationKey];

                if (v30 && ([v29 translationKey], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v31), v32 = objc_claimAutoreleasedReturnValue(), v31, v32))
                {
                  [v29 startTime];
                  [v32 setStartTime:?];
                  [v29 endTime];
                  [v32 setEndTime:?];
                  v33 = [v29 agent];
                  [v32 setAgent:v33];

                  v34 = [v29 translationKey];
                  [v32 setTranslationKey:v34];

                  [v8 addObject:v32];
                }

                else
                {
                  [v8 addObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v26);
          }

          v6 = v37;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

LABEL_23:
    v8 = 0;
LABEL_37:
  }

LABEL_39:

  v35 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_parentTextElement
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(MSVLyricsTTMLParser *)self elementStack];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_ERROR, "Parse error: %@", &v8, 0xCu);
  }

  [(MSVLyricsTTMLParser *)self setParserError:v5];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v18 = a4;
  v5 = [(MSVLyricsTTMLParser *)self currentTextElement];

  if (v5)
  {
    v6 = [(MSVLyricsTTMLParser *)self currentTextElement];
    v7 = [v6 mutableText];
    [v7 appendString:v18];

    v8 = [(MSVLyricsTTMLParser *)self currentTextElement];
    v9 = [v8 type];

    v10 = v18;
    if (v9 != 2)
    {
      goto LABEL_7;
    }

    v11 = [(MSVLyricsTTMLParser *)self currentTextElement];
    v12 = [v11 parentLine];
    v13 = [v12 mutableText];
    [v13 appendString:v18];

    v14 = [v11 parentWord];
    v15 = [v14 mutableText];
    [v15 appendString:v18];
  }

  else
  {
    v16 = [(MSVLyricsTTMLParser *)self elementStack];
    v17 = [v16 lastObject];
    v11 = [v17 mutableText];

    if (v11)
    {
      [v11 appendString:v18];
    }
  }

  v10 = v18;
LABEL_7:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v116 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(MSVLyricsTTMLParser *)self elementStack];
  v12 = [v11 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v12 elementName];
  v16 = [v10 caseInsensitiveCompare:v15];

  if (!v16)
  {
    v23 = [(MSVLyricsTTMLParser *)self elementStack];
    [v23 removeLastObject];

    v24 = [(MSVLyricsTTMLParser *)self elementStack];
    v17 = [v24 lastObject];

    if ([v10 msvl_isElementType:@"body"])
    {
      v25 = [(MSVLyricsTTMLParser *)self lyricLines];
      v26 = [MEMORY[0x1E695DF58] preferredLanguages];
      v27 = [v26 firstObject];
      v28 = [(MSVLyricsTTMLParser *)self _translatedLyrics:v25 forLanguage:v27];

      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = [(MSVLyricsTTMLParser *)self lyricLines];
      }

      v31 = v29;
      if ([(MSVLyricsTTMLParser *)self linesAreSortedByStartTime])
      {
        v32 = [(MSVLyricsTTMLParser *)self lyricsInfo];
        [v32 setLyricsLinesSortedByStartTime:v31];
      }

      else
      {
        v33 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC81F000, v33, OS_LOG_TYPE_DEFAULT, "Lyrics lines are out of order: they should be ordered by start time", buf, 2u);
        }

        v32 = [(MSVLyricsTTMLParser *)self lyricsInfo];
        [v32 setLyricsLines:v31];
      }

      v34 = [(MSVLyricsTTMLParser *)self agents];
      v35 = [v34 copy];
      v36 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [v36 setAgents:v35];

      goto LABEL_22;
    }

    if ([v10 msvl_isElementType:@"tt"])
    {
      goto LABEL_23;
    }

    if ([v10 msvl_isElementType:@"songwriter"])
    {
      v18 = v12;
      v30 = [v18 mutableText];
      [v18 setName:v30];

      [v18 setMutableText:0];
      goto LABEL_8;
    }

    if (!v14)
    {
      if (![v10 msvl_isElementType:@"name"])
      {
        goto LABEL_23;
      }

      v48 = [v17 elementName];
      v49 = [v48 msvl_isElementType:@"agent"];

      if (!v49)
      {
        v18 = _MSVLogCategoryLyricsTTMLParser();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v19 = "Element ignored: <ttm:name> element must be inside <ttm:agent>";
        v20 = v18;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = 2;
        goto LABEL_7;
      }

      v50 = [(MSVLyricsTTMLParser *)self agents];
      v28 = [v50 lastObject];

      if (v28 != v17)
      {
        v102 = [MEMORY[0x1E696AAA8] currentHandler];
        [v102 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:589 description:@"Unexpected agent element"];
      }

      v51 = [v12 mutableText];
      [v28 setName:v51];

      [v12 setMutableText:0];
LABEL_22:

      goto LABEL_23;
    }

    v38 = [(MSVLyricsTTMLParser *)self _parentTextElement];
    v111 = v38;
    if ([v14 type])
    {
      if ([v14 type] == 1 || objc_msgSend(v14, "type") == 3 || objc_msgSend(v14, "type") == 4)
      {
        v39 = v14;
        v40 = [(MSVLyricsTTMLParser *)self lyricLines];
        [v39 setLineIndex:{objc_msgSend(v40, "count")}];

        [v39 setOriginalLineIndex:{objc_msgSend(v39, "lineIndex")}];
        v41 = [(MSVLyricsTTMLParser *)self lyricLines];
        v42 = [v41 lastObject];

        if (v42)
        {
          [v42 setNextLine:v39];
        }

        v109 = v42;
        if ([v39 type] == 3)
        {
          v43 = [v17 elementName];
          if ([v43 msvl_isElementType:@"translation"])
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v45 = v17;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v103 = [MEMORY[0x1E696AAA8] currentHandler];
                [v103 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:483 description:{@"At end of <text> element, an MSVLyricsTranslationText object should be top of stack"}];
              }

              v106 = v12;
              v46 = [v106 lyricsLineKey];
              if (!v46)
              {
                log = _MSVLogCategoryLyricsTTMLParser();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v113 = [v9 lineNumber];
                  v114 = 2112;
                  v115 = v106;
                  v47 = "Invalid translation text element at line %ld: %@";
LABEL_72:
                  _os_log_impl(&dword_1AC81F000, log, OS_LOG_TYPE_DEFAULT, v47, buf, 0x16u);
                  goto LABEL_73;
                }

                goto LABEL_73;
              }

              goto LABEL_51;
            }

            goto LABEL_75;
          }
        }

        else if ([v39 type] == 4)
        {
          v43 = [v17 elementName];
          if ([v43 msvl_isElementType:@"transliteration"])
          {
            objc_opt_class();
            v56 = objc_opt_isKindOfClass();

            if (v56)
            {
              v45 = v17;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v104 = [MEMORY[0x1E696AAA8] currentHandler];
                [v104 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:497 description:{@"At end of <text> element, an MSVLyricsTransliterationText object should be top of stack"}];
              }

              v106 = v12;
              v46 = [v106 lyricsLineKey];
              if (!v46)
              {
                log = _MSVLogCategoryLyricsTTMLParser();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v113 = [v9 lineNumber];
                  v114 = 2112;
                  v115 = v106;
                  v47 = "Invalid transliteration text element at line %ld: %@";
                  goto LABEL_72;
                }

LABEL_73:

                goto LABEL_74;
              }

LABEL_51:
              [v45 linesMap];
              v57 = log = v45;
              [v57 setObject:v39 forKeyedSubscript:v46];

              v45 = log;
LABEL_74:
            }

LABEL_75:
            v75 = [v39 backgroundVocals];

            if (v75)
            {
              v76 = [v39 mutableText];
              v77 = [v76 mutableCopy];

              v78 = [v39 backgroundVocals];
              v79 = [v78 characterRange];
              [v77 deleteCharactersInRange:{v79, v80}];

              v108 = v77;
              [v77 replaceOccurrencesOfString:@"()" withString:&stru_1F214F018 options:0 range:{0, objc_msgSend(v77, "length")}];
              v81 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              [v77 stringByTrimmingCharactersInSet:v81];
              v83 = v82 = v39;

              v84 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v83];
              [v82 setPrimaryVocalText:v84];

              v39 = v82;
            }

            objc_opt_class();
            v38 = v111;
            if (objc_opt_isKindOfClass())
            {
              v85 = v39;
              v86 = v17;
              v87 = [v86 lines];

              if (!v87)
              {
                v101 = [MEMORY[0x1E696AAA8] currentHandler];
                [v101 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:526 description:@"-[MSVLyricsSection lines] should never be nil"];
              }

              v88 = [v86 lines];
              v89 = [v88 arrayByAddingObject:v85];
              [v86 setLines:v89];

              v39 = v85;
              [v85 setParentSection:v86];

              v38 = v111;
            }

            goto LABEL_82;
          }
        }

        else
        {
          v43 = [(MSVLyricsTTMLParser *)self lyricLines];
          [v43 addObject:v39];
        }

        goto LABEL_75;
      }

      if ([v14 type] == 2)
      {
        v58 = v14;
        v59 = [v58 parentLine];
        v60 = v59;
        v110 = v59;
        if (v59 == v38)
        {
          v61 = [v59 words];
          v62 = [v110 mutableText];
          v63 = [(MSVLyricsTTMLParser *)self _updateWords:v61 withWord:v58 parentText:v62];
          [v110 setWords:v63];

          v60 = v110;
        }

        v107 = [v58 parentWord];
        if (v107)
        {
          v64 = [v107 subwords];
          v65 = [v107 mutableText];
          v66 = [(MSVLyricsTTMLParser *)self _updateWords:v64 withWord:v58 parentText:v65];
          [v107 setSubwords:v66];

          v60 = v110;
          if ([v107 isBackgroundVocal])
          {
            [v58 setIsBackgroundVocal:1];
          }
        }

        if ([v60 type] == 3)
        {
          v67 = [(MSVLyricsTTMLParser *)self translations];
          v68 = [v67 lastObject];
          v69 = [v68 type] == 1;

          v60 = v110;
        }

        else
        {
          v69 = 0;
        }

        if (![v58 isBackgroundVocal])
        {
          goto LABEL_91;
        }

        v70 = [v58 subwords];
        v71 = [v70 count] != 0 || v69;

        v60 = v110;
        if (!v71)
        {
          goto LABEL_91;
        }

        if ([v110 hasBackgroundVocal])
        {
          v72 = _MSVLogCategoryLyricsTTMLParser();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v73 = [v110 lyricsText];
            v74 = [v73 string];
            *buf = 138412290;
            v113 = v74;
            _os_log_impl(&dword_1AC81F000, v72, OS_LOG_TYPE_DEFAULT, "Warning: Ignoring additional background vocals for lyrics line %@", buf, 0xCu);
          }
        }

        else
        {
          [v110 setHasBackgroundVocal:1];
          [v110 setBackgroundVocals:v58];
          if ([v58 keepParentheses])
          {
            goto LABEL_91;
          }

          v99 = [v58 mutableText];
          v100 = objc_msgSend(v99, "hasPrefix:", @"(");

          v60 = v110;
          if (!v100)
          {
            goto LABEL_91;
          }

          v72 = [v58 mutableText];
          [(MSVLyricsTTMLParser *)self _stripParenthesesFromBackgroundVocalWord:v58 backgroundVocalText:v72];
        }

        v60 = v110;
LABEL_91:

        v38 = v111;
      }
    }

    else
    {
      v52 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      v53 = [v52 lyricsSections];
      v54 = [v53 arrayByAddingObject:v14];
      v55 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [v55 setLyricsSections:v54];

      v38 = v111;
    }

LABEL_82:
    v90 = [(MSVLyricsTTMLParser *)self currentTextElement];

    if (v14 == v90)
    {
      v91 = [(MSVLyricsTTMLParser *)self currentTextElement];
      v92 = [v91 lyricsText];

      if (!v92)
      {
        v93 = objc_alloc(MEMORY[0x1E696AAB0]);
        v94 = [(MSVLyricsTTMLParser *)self currentTextElement];
        v95 = [v94 mutableText];
        v96 = [v93 initWithString:v95];
        v97 = [(MSVLyricsTTMLParser *)self currentTextElement];
        [v97 setLyricsText:v96];

        v38 = v111;
      }

      v98 = [(MSVLyricsTTMLParser *)self currentTextElement];
      [v98 setMutableText:0];

      [(MSVLyricsTTMLParser *)self setCurrentTextElement:v38];
    }

    goto LABEL_23;
  }

  v17 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v12 elementName];
    *buf = 138412546;
    v113 = v18;
    v114 = 2112;
    v115 = v10;
    v19 = "Mismatched element names! start:%@, end:%@";
    v20 = v17;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 22;
LABEL_7:
    _os_log_impl(&dword_1AC81F000, v20, v21, v19, buf, v22);
LABEL_8:
  }

LABEL_23:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v139 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a7;
  v12 = [(MSVLyricsTTMLParser *)self elementStack];
  v13 = [v12 lastObject];

  if ([v10 msvl_isElementType:@"span"])
  {
    v14 = objc_opt_new();
    v15 = [(MSVLyricsTTMLParser *)self _parentTextElement];
    if ([v15 type] == 1 || objc_msgSend(v15, "type") == 3 || objc_msgSend(v15, "type") == 4)
    {
      [v14 setParentLine:v15];
    }

    else
    {
      if ([v15 type] == 2)
      {
        v22 = v15;
        [v14 setParentWord:v22];
        v23 = [v22 parentLine];

        [v14 setParentLine:v23];
      }

      else
      {
        v23 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC81F000, v23, OS_LOG_TYPE_DEFAULT, "Warning: <span> must be a descendent of <p> or <span>.", buf, 2u);
        }
      }
    }

    goto LABEL_55;
  }

  if ([v10 msvl_isElementType:@"p"])
  {
    v14 = objc_opt_new();
    v16 = [v11 objectForKeyedSubscript:@"itunes:key"];
    [v14 setTranslationKey:v16];
LABEL_12:

LABEL_55:
    v50 = 0;
    goto LABEL_56;
  }

  if ([v10 msvl_isElementType:@"div"])
  {
    v14 = objc_opt_new();
    v16 = [v11 objectForKeyedSubscript:@"itunes:songPart"];
    if (v16)
    {
      [v14 setSongPartText:v16];
    }

    goto LABEL_12;
  }

  if ([v10 msvl_isElementType:@"body"])
  {
    v17 = [v11 objectForKeyedSubscript:@"dur"];
    v18 = v17;
    if (v17)
    {
      [v17 msvl_timeValue];
      v20 = v19;
      v21 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [v21 setSongDuration:v20];

LABEL_53:
      goto LABEL_54;
    }

    v39 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC81F000, v39, OS_LOG_TYPE_DEFAULT, "Warning: Document body element must specify song duration", buf, 2u);
    }

LABEL_52:

    goto LABEL_53;
  }

  if ([v10 msvl_isElementType:@"tt"])
  {
    v24 = objc_opt_new();
    [(MSVLyricsTTMLParser *)self setLyricsInfo:v24];

    v25 = [v11 objectForKeyedSubscript:@"itunes:lyricGenId"];
    v26 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v26 setLyricGenId:v25];

    v27 = [v11 objectForKeyedSubscript:@"xml:lang"];
    v28 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v28 setLanguage:v27];

    v29 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    v30 = [v29 songwriters];

    if (!v30)
    {
      v125 = [MEMORY[0x1E696AAA8] currentHandler];
      [v125 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:217 description:@"songwriters array must not be nil"];
    }

    v31 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    v32 = [v31 lyricsSections];

    if (!v32)
    {
      v126 = [MEMORY[0x1E696AAA8] currentHandler];
      [v126 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:218 description:@"lyricsSections array must not be nil"];
    }

    v33 = [v11 objectForKeyedSubscript:@"itunes:timing"];
    v18 = v33;
    if (v33)
    {
      if ([v33 caseInsensitiveCompare:@"line"])
      {
        v34 = 2 * ([v18 caseInsensitiveCompare:@"word"] == 0);
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {
      v34 = 0;
    }

    v39 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v39 setType:v34];
    goto LABEL_52;
  }

  if ([v10 msvl_isElementType:@"songwriters"])
  {
    v35 = [v13 elementName];
    v36 = [v35 msvl_isElementType:@"iTunesMetadata"];

    if ((v36 & 1) == 0)
    {
      v37 = _MSVLogCategoryLyricsTTMLParser();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:

        goto LABEL_54;
      }

      *buf = 0;
      v38 = "Warning: <songwriters> element should be inside <iTunesMetadata>";
LABEL_33:
      _os_log_impl(&dword_1AC81F000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
      goto LABEL_34;
    }

LABEL_54:
    v14 = 0;
    goto LABEL_55;
  }

  if ([v10 msvl_isElementType:@"audio"])
  {
    v40 = [v13 elementName];
    v41 = [v40 msvl_isElementType:@"iTunesMetadata"];

    if ((v41 & 1) == 0)
    {
      v42 = _MSVLogCategoryLyricsTTMLParser();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC81F000, v42, OS_LOG_TYPE_DEFAULT, "Warning: <audio> element should be inside <iTunesMetadata>", buf, 2u);
      }
    }

    v18 = objc_opt_new();
    v43 = [v11 objectForKeyedSubscript:@"lyricOffset"];
    v44 = v43;
    if (v43)
    {
      [v43 msvl_timeValue];
      [v18 setLyricsOffset:?];
    }

    v45 = [v11 objectForKeyedSubscript:@"role"];
    [v18 setRole:v45];

    v46 = [v18 role];
    [v18 setSpatialRole:{objc_msgSend(v46, "isEqualToString:", @"spatial"}];

    v47 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v47 setAudioAttributes:v18];

    goto LABEL_53;
  }

  if ([v10 msvl_isElementType:@"songwriter"])
  {
    v48 = [v13 elementName];
    v49 = [v48 msvl_isElementType:@"songwriters"];

    if (!v49)
    {
      v37 = _MSVLogCategoryLyricsTTMLParser();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v38 = "Warning: <songwriter> element must be inside <songwriters>";
      goto LABEL_33;
    }

    v50 = objc_opt_new();
    v51 = [v11 objectForKeyedSubscript:@"artistId"];
    [v50 setArtistID:v51];

    v52 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    v53 = [v52 songwriters];
    v54 = [v53 arrayByAddingObject:v50];

    v55 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v55 setSongwriters:v54];

LABEL_49:
    v14 = 0;
    goto LABEL_56;
  }

  if ([v10 msvl_isElementType:@"translations"])
  {
    v84 = [v13 elementName];
    v85 = [v84 msvl_isElementType:@"iTunesMetadata"];

    if ((v85 & 1) == 0)
    {
      v86 = _MSVLogCategoryLyricsTTMLParser();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC81F000, v86, OS_LOG_TYPE_DEFAULT, "Warning: <translations> element should be inside <iTunesMetadata>", buf, 2u);
      }
    }

    v87 = objc_opt_new();
    [(MSVLyricsTTMLParser *)self setTranslations:v87];
LABEL_98:

    goto LABEL_54;
  }

  if ([v10 msvl_isElementType:@"transliterations"])
  {
    v88 = [v13 elementName];
    v89 = [v88 msvl_isElementType:@"iTunesMetadata"];

    if ((v89 & 1) == 0)
    {
      v90 = _MSVLogCategoryLyricsTTMLParser();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC81F000, v90, OS_LOG_TYPE_DEFAULT, "Warning: <transliterations> element should be inside <iTunesMetadata>", buf, 2u);
      }
    }

    v87 = objc_opt_new();
    [(MSVLyricsTTMLParser *)self setTransliterations:v87];
    goto LABEL_98;
  }

  if ([v10 msvl_isElementType:@"translation"])
  {
    v91 = [v13 elementName];
    v92 = [v91 msvl_isElementType:@"translations"];

    if (!v92)
    {
      v37 = _MSVLogCategoryLyricsTTMLParser();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v38 = "Warning: <translation> element must be inside <translations>";
      goto LABEL_33;
    }

    v93 = [(MSVLyricsTTMLParser *)self translations];

    if (!v93)
    {
      v128 = [MEMORY[0x1E696AAA8] currentHandler];
      [v128 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:280 description:@"<translation> end element expects translations to be set by start of <translations> element"];
    }

    v94 = [v11 objectForKeyedSubscript:@"xml:lang"];
    if (v94)
    {
      v95 = objc_opt_new();
      [v95 setLanguage:v94];
      v96 = [v11 objectForKeyedSubscript:@"automaticallyCreated"];
      [v95 setAutomaticallyCreated:{objc_msgSend(v96, "isEqualToString:", @"true"}];

      v97 = [v11 objectForKeyedSubscript:@"type"];
      [v95 setTypeText:v97];

      v98 = objc_opt_new();
      [v95 setLinesMap:v98];

      v50 = v95;
      v99 = [(MSVLyricsTTMLParser *)self translations];
LABEL_111:
      v106 = v99;
      [v99 addObject:v50];

LABEL_137:
      goto LABEL_49;
    }

    v113 = _MSVLogCategoryLyricsTTMLParser();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v114 = "<translation> element must specify a language with <xml:lang> attribute";
LABEL_135:
      _os_log_impl(&dword_1AC81F000, v113, OS_LOG_TYPE_DEFAULT, v114, buf, 2u);
      goto LABEL_136;
    }

    goto LABEL_136;
  }

  if ([v10 msvl_isElementType:@"transliteration"])
  {
    v100 = [v13 elementName];
    v101 = [v100 msvl_isElementType:@"transliterations"];

    if (!v101)
    {
      v37 = _MSVLogCategoryLyricsTTMLParser();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v38 = "Warning: <transliteration> element must be inside <transliterations>";
      goto LABEL_33;
    }

    v102 = [(MSVLyricsTTMLParser *)self transliterations];

    if (!v102)
    {
      v129 = [MEMORY[0x1E696AAA8] currentHandler];
      [v129 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:301 description:@"<transliteration> end element expects transliterations to be set by start of <transliterations> element"];
    }

    v94 = [v11 objectForKeyedSubscript:@"xml:lang"];
    if (v94)
    {
      v103 = objc_opt_new();
      v104 = [v11 objectForKeyedSubscript:@"automaticallyCreated"];
      [v103 setAutomaticallyCreated:{objc_msgSend(v104, "isEqualToString:", @"true"}];

      [v103 setLanguage:v94];
      v105 = objc_opt_new();
      [v103 setLinesMap:v105];

      v50 = v103;
      v99 = [(MSVLyricsTTMLParser *)self transliterations];
      goto LABEL_111;
    }

    v113 = _MSVLogCategoryLyricsTTMLParser();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v114 = "<transliteration> element must specify a language with <xml:lang> attribute";
      goto LABEL_135;
    }

LABEL_136:

    v50 = 0;
    goto LABEL_137;
  }

  if ([v10 msvl_isElementType:@"text"])
  {
    v107 = [v13 elementName];
    v108 = [v107 msvl_isElementType:@"translation"];

    if (v108 || ([v13 elementName], v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v115, "msvl_isElementType:", @"transliteration"), v115, v116))
    {
      v14 = objc_opt_new();
      v16 = [v11 objectForKeyedSubscript:@"for"];
      [v14 setLyricsLineKey:v16];
      goto LABEL_12;
    }

    goto LABEL_54;
  }

  if ([v10 msvl_isElementType:@"iTunesMetadata"])
  {
    v109 = [v11 objectForKeyedSubscript:@"leadingSilence"];
    v37 = v109;
    if (v109)
    {
      [v109 msvl_timeValue];
      v111 = v110;
      v112 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [v112 setLeadingSilence:v111];
    }

    goto LABEL_34;
  }

  if ([v10 msvl_isElementType:@"agent"])
  {
    v117 = [v13 elementName];
    v118 = [v117 msvl_isElementType:@"metadata"];

    if ((v118 & 1) == 0)
    {
      v119 = _MSVLogCategoryLyricsTTMLParser();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC81F000, v119, OS_LOG_TYPE_DEFAULT, "Warning: <ttm:agent> element should be inside <metadata>", buf, 2u);
      }
    }

    v50 = objc_opt_new();
    v120 = [v11 objectForKeyedSubscript:@"type"];
    [v50 setType:v120];

    v121 = [v11 objectForKeyedSubscript:@"itunes:artistId"];
    [v50 setArtistID:v121];

    v122 = [(MSVLyricsTTMLParser *)self agents];
    [v122 addObject:v50];
    goto LABEL_132;
  }

  if ([v10 msvl_isElementType:@"name"])
  {
    v123 = [v13 elementName];
    v124 = [v123 msvl_isElementType:@"agent"];

    if (v124)
    {
      v50 = objc_opt_new();
      v122 = [MEMORY[0x1E696AD60] string];
      [v50 setMutableText:v122];
LABEL_132:

      v14 = 0;
      goto LABEL_56;
    }

    v127 = _MSVLogCategoryLyricsTTMLParser();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC81F000, v127, OS_LOG_TYPE_DEFAULT, "<ttm:name> element should be inside <ttm:agent>", buf, 2u);
    }
  }

  v14 = 0;
  v50 = 0;
LABEL_56:
  v56 = [(MSVLyricsTTMLParser *)self lyricsInfo];

  if (v56)
  {
    if (v14)
    {
LABEL_58:
      v131 = v13;
      v57 = v14;

      v58 = [v11 objectForKeyedSubscript:@"begin"];
      v59 = v58;
      if (v58)
      {
        [v58 msvl_timeValue];
        [v57 setStartTime:?];
      }

      v60 = [v11 objectForKeyedSubscript:@"end"];
      v61 = v60;
      if (v60)
      {
        [v60 msvl_timeValue];
        [v57 setEndTime:?];
      }

      [v57 endTime];
      if (v62 != 0.0)
      {
        [v57 startTime];
        v64 = v63;
        [(MSVLyricsTTMLParser *)self currentStartTime];
        if (v64 < v65)
        {
          [(MSVLyricsTTMLParser *)self setLinesAreSortedByStartTime:0];
        }

        [v57 startTime];
        [(MSVLyricsTTMLParser *)self setCurrentStartTime:?];
      }

      v132 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MSVLyricsTTMLParser *)self setCurrentTextElement:v57];
      }

      v66 = [v11 objectForKeyedSubscript:@"ttm:agent"];
      if (v66)
      {
        v130 = v11;
        v67 = [(MSVLyricsTTMLParser *)self agents];
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = __84__MSVLyricsTTMLParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke;
        v133[3] = &unk_1E7981C40;
        v68 = v66;
        v134 = v68;
        v69 = [v67 indexOfObjectPassingTest:v133];

        if (v69 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v70 = self;
          v71 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v136 = v68;
            v137 = 2112;
            v138 = v57;
            _os_log_impl(&dword_1AC81F000, v71, OS_LOG_TYPE_DEFAULT, "No agent exists for identifier %@ in element: %@", buf, 0x16u);
          }
        }

        else
        {
          v70 = self;
          v71 = [(MSVLyricsTTMLParser *)self agents];
          v73 = [v71 objectAtIndexedSubscript:v69];
          [v57 setAgent:v73];
        }

        v11 = v130;
        self = v70;
      }

      v74 = [v11 objectForKeyedSubscript:@"ttm:role"];
      [v57 setRole:v74];

      v75 = [v57 role];
      [v57 setIsBackgroundVocal:{objc_msgSend(v75, "isEqualToString:", @"x-bg"}];

      v76 = [v11 objectForKeyedSubscript:@"itunes:parenthesis"];
      if (v76)
      {
        v77 = v76;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v79 = [v11 objectForKeyedSubscript:@"itunes:parenthesis"];
          v80 = [v79 isEqualToString:@"keep"];

          [v57 setKeepParentheses:v80];
        }
      }

      v13 = v131;
      v10 = v132;
      goto LABEL_83;
    }
  }

  else
  {
    v72 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC81F000, v72, OS_LOG_TYPE_ERROR, "PARSE ERROR: Top-level element must be <tt> for TTML documents", buf, 2u);
    }

    if (v14)
    {
      goto LABEL_58;
    }
  }

  v57 = v50;
  if (!v50)
  {
    v57 = objc_opt_new();
  }

LABEL_83:
  [v57 setElementName:v10];
  v81 = [v11 objectForKeyedSubscript:@"xml:id"];
  [v57 setIdentifier:v81];

  v82 = [(MSVLyricsTTMLParser *)self elementStack];
  [v82 addObject:v57];

  v83 = *MEMORY[0x1E69E9840];
}

uint64_t __84__MSVLyricsTTMLParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)parseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MSVLyricsTTMLParser *)self parseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MSVLyricsTTMLParser_parseWithCompletion___block_invoke;
  v7[3] = &unk_1E7982B00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__MSVLyricsTTMLParser_parseWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 parseWithError:&v7];
  v4 = v7;
  v5 = *(a1 + 40);
  if (v4)
  {
    (*(v5 + 16))(*(a1 + 40), 0, v4);
  }

  else
  {
    v6 = [*(a1 + 32) lyricsInfo];
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (id)parseWithError:(id *)a3
{
  [(MSVLyricsTTMLParser *)self setLinesAreSortedByStartTime:1];
  [(MSVLyricsTTMLParser *)self setCurrentStartTime:0.0];
  v5 = [(MSVLyricsTTMLParser *)self elementStack];
  [v5 removeAllObjects];

  v6 = [(MSVLyricsTTMLParser *)self lyricLines];
  [v6 removeAllObjects];

  v7 = objc_alloc(MEMORY[0x1E696B0A8]);
  v8 = [(MSVLyricsTTMLParser *)self inputStream];
  v9 = [v7 initWithStream:v8];

  [v9 setDelegate:self];
  [v9 setShouldProcessNamespaces:1];
  [v9 parse];
  v10 = [(MSVLyricsTTMLParser *)self translations];

  if (v10)
  {
    v11 = [(MSVLyricsTTMLParser *)self translations];
    v12 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v12 setTranslations:v11];
  }

  v13 = [(MSVLyricsTTMLParser *)self transliterations];

  if (v13)
  {
    v14 = [(MSVLyricsTTMLParser *)self transliterations];
    v15 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [v15 setTransliterations:v14];
  }

  if (a3)
  {
    v16 = [(MSVLyricsTTMLParser *)self parserError];

    if (v16)
    {
      *a3 = [(MSVLyricsTTMLParser *)self parserError];
    }
  }

  v17 = [(MSVLyricsTTMLParser *)self lyricsInfo];

  return v17;
}

- (MSVLyricsTTMLParser)initWithTTMLStream:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MSVLyricsTTMLParser;
  v6 = [(MSVLyricsTTMLParser *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputStream, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.MediaServices.MSVLyricsTTMLParser", v8);
    parseQueue = v7->_parseQueue;
    v7->_parseQueue = v9;

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    elementStack = v7->_elementStack;
    v7->_elementStack = v11;

    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
    lyricLines = v7->_lyricLines;
    v7->_lyricLines = v13;

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    agents = v7->_agents;
    v7->_agents = v15;
  }

  return v7;
}

- (MSVLyricsTTMLParser)initWithTTMLData:(id)a3
{
  v4 = MEMORY[0x1E695DF48];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  v7 = [(MSVLyricsTTMLParser *)self initWithTTMLStream:v6];
  return v7;
}

@end