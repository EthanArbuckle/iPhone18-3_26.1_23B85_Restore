@interface MSVLyricsTTMLParser
- (MSVLyricsTTMLParser)initWithTTMLData:(id)data;
- (MSVLyricsTTMLParser)initWithTTMLStream:(id)stream;
- (id)_parentTextElement;
- (id)_translatedLyrics:(id)lyrics forLanguage:(id)language;
- (id)_updateWords:(id)words withWord:(id)word parentText:(id)text;
- (id)parseWithError:(id *)error;
- (void)_stripParenthesesFromBackgroundVocalWord:(id)word backgroundVocalText:(id)text;
- (void)parseWithCompletion:(id)completion;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
@end

@implementation MSVLyricsTTMLParser

- (void)_stripParenthesesFromBackgroundVocalWord:(id)word backgroundVocalText:(id)text
{
  v69 = *MEMORY[0x1E69E9840];
  wordCopy = word;
  textCopy = text;
  if (([wordCopy isBackgroundVocal] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:736 description:@"MSVLyricsWord must be background vocal"];
  }

  v9 = [textCopy mutableCopy];
  [v9 msvl_trimTrailingWhitespace];
  if ([v9 hasSuffix:@""]))
  {
    [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 1, 1}];
    [v9 deleteCharactersInRange:{0, 1}];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
    [wordCopy setLyricsText:v10];

    v11 = [textCopy rangeOfString:v9];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __assert_rtn("[MSVLyricsTTMLParser _stripParenthesesFromBackgroundVocalWord:backgroundVocalText:]", "MSVLyricsTTMLParser.m", 752, "relativeRange.location != NSNotFound");
    }

    [wordCopy setCharacterRange:{objc_msgSend(wordCopy, "characterRange") + v11, v12}];
    subwords = [wordCopy subwords];
    firstObject = [subwords firstObject];

    lyricsText = [firstObject lyricsText];
    string = [lyricsText string];
    v17 = objc_msgSend(string, "hasPrefix:", @"(");

    if (v17)
    {
      lyricsText2 = [firstObject lyricsText];
      lyricsText3 = [firstObject lyricsText];
      v20 = [lyricsText2 attributedSubstringFromRange:{1, objc_msgSend(lyricsText3, "length") - 1}];
      [firstObject setLyricsText:v20];
    }

    v54 = firstObject;
    v55 = v9;
    v56 = textCopy;
    subwords2 = [wordCopy subwords];
    lastObject = [subwords2 lastObject];

    lyricsText4 = [lastObject lyricsText];
    string2 = [lyricsText4 string];
    v25 = [string2 hasSuffix:@""]);

    if (v25)
    {
      lyricsText5 = [lastObject lyricsText];
      lyricsText6 = [lastObject lyricsText];
      v28 = [lyricsText5 attributedSubstringFromRange:{0, objc_msgSend(lyricsText6, "length") - 1}];
      [lastObject setLyricsText:v28];
    }

    v53 = lastObject;
    v29 = MEMORY[0x1E695DF70];
    subwords3 = [wordCopy subwords];
    v58 = [v29 arrayWithCapacity:{objc_msgSend(subwords3, "count")}];

    lyricsText7 = [wordCopy lyricsText];
    string3 = [lyricsText7 string];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v57 = wordCopy;
    obj = [wordCopy subwords];
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
          lyricsText8 = [v39 lyricsText];
          v41 = [lyricsText8 length];

          if (v41)
          {
            v36 += v35;
            v42 = [string3 length] - v36;
            lyricsText9 = [v39 lyricsText];
            string4 = [lyricsText9 string];
            v45 = [string3 rangeOfString:string4 options:0 range:v36 locale:{v42, 0}];
            v35 = v46;

            if (v45 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v47 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                lyricsText10 = [v39 lyricsText];
                string5 = [lyricsText10 string];
                *buf = 138412546;
                v65 = string5;
                v66 = 2112;
                v67 = string3;
                _os_log_impl(&dword_1AC81F000, v47, OS_LOG_TYPE_ERROR, "Did not find word %@ within background vocal %@", buf, 0x16u);
              }

              v35 = 0;
            }

            else
            {
              [v39 setCharacterRange:{v45, v35}];
              [v39 setWordIndex:{objc_msgSend(v58, "count")}];
              [v58 addObject:v39];
              if (v45 + v35 >= [string3 length])
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
    wordCopy = v57;
    [v57 setSubwords:v50];

    v9 = v55;
    textCopy = v56;
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)_updateWords:(id)words withWord:(id)word parentText:(id)text
{
  v17[1] = *MEMORY[0x1E69E9840];
  wordsCopy = words;
  wordCopy = word;
  textCopy = text;
  if (wordsCopy)
  {
    v10 = [wordsCopy arrayByAddingObject:wordCopy];
  }

  else
  {
    v17[0] = wordCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  v11 = v10;
  [wordCopy setWordIndex:{objc_msgSend(v10, "count") - 1}];
  if ([wordCopy wordIndex] >= 1)
  {
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(wordCopy, "wordIndex") - 1}];
    [v12 setNextWord:wordCopy];
  }

  mutableText = [wordCopy mutableText];
  v14 = [mutableText length];

  [wordCopy setCharacterRange:{objc_msgSend(textCopy, "length") - v14, v14}];
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_translatedLyrics:(id)lyrics forLanguage:(id)language
{
  v53 = *MEMORY[0x1E69E9840];
  lyricsCopy = lyrics;
  languageCopy = language;
  translations = [(MSVLyricsTTMLParser *)self translations];

  if (translations)
  {
    if ([languageCopy hasPrefix:@"zh-Hant"])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      translations2 = [(MSVLyricsTTMLParser *)self translations];
      v10 = [translations2 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
            objc_enumerationMutation(translations2);
          }

          v14 = *(*(&v46 + 1) + 8 * v13);
          if (![v14 type])
          {
            language = [v14 language];
            v16 = [language hasPrefix:@"zh-Hant"];

            if (v16)
            {
              goto LABEL_24;
            }
          }

          if (v11 == ++v13)
          {
            v11 = [translations2 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
      if (![languageCopy hasPrefix:@"zh-Hans"])
      {
LABEL_38:
        translations = 0;
        goto LABEL_39;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      translations2 = [(MSVLyricsTTMLParser *)self translations];
      v17 = [translations2 countByEnumeratingWithState:&v42 objects:v51 count:16];
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
            objc_enumerationMutation(translations2);
          }

          v14 = *(*(&v42 + 1) + 8 * v20);
          if (![v14 type])
          {
            language2 = [v14 language];
            v22 = [language2 hasPrefix:@"zh-Hans"];

            if (v22)
            {
              break;
            }
          }

          if (v18 == ++v20)
          {
            v18 = [translations2 countByEnumeratingWithState:&v42 objects:v51 count:16];
            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }
        }

LABEL_24:
        v23 = translations2;
        translations2 = [v14 linesMap];

        if (translations2)
        {
          translations = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(lyricsCopy, "count")}];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = lyricsCopy;
          v24 = lyricsCopy;
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
                translationKey = [v29 translationKey];

                if (translationKey && ([v29 translationKey], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(translations2, "objectForKeyedSubscript:", v31), v32 = objc_claimAutoreleasedReturnValue(), v31, v32))
                {
                  [v29 startTime];
                  [v32 setStartTime:?];
                  [v29 endTime];
                  [v32 setEndTime:?];
                  agent = [v29 agent];
                  [v32 setAgent:agent];

                  translationKey2 = [v29 translationKey];
                  [v32 setTranslationKey:translationKey2];

                  [translations addObject:v32];
                }

                else
                {
                  [translations addObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v26);
          }

          lyricsCopy = v37;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

LABEL_23:
    translations = 0;
LABEL_37:
  }

LABEL_39:

  v35 = *MEMORY[0x1E69E9840];

  return translations;
}

- (id)_parentTextElement
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  elementStack = [(MSVLyricsTTMLParser *)self elementStack];
  reverseObjectEnumerator = [elementStack reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  v10 = *MEMORY[0x1E69E9840];
  occurredCopy = occurred;
  v6 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = occurredCopy;
    _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_ERROR, "Parse error: %@", &v8, 0xCu);
  }

  [(MSVLyricsTTMLParser *)self setParserError:occurredCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  currentTextElement = [(MSVLyricsTTMLParser *)self currentTextElement];

  if (currentTextElement)
  {
    currentTextElement2 = [(MSVLyricsTTMLParser *)self currentTextElement];
    mutableText = [currentTextElement2 mutableText];
    [mutableText appendString:charactersCopy];

    currentTextElement3 = [(MSVLyricsTTMLParser *)self currentTextElement];
    type = [currentTextElement3 type];

    v10 = charactersCopy;
    if (type != 2)
    {
      goto LABEL_7;
    }

    currentTextElement4 = [(MSVLyricsTTMLParser *)self currentTextElement];
    parentLine = [currentTextElement4 parentLine];
    mutableText2 = [parentLine mutableText];
    [mutableText2 appendString:charactersCopy];

    parentWord = [currentTextElement4 parentWord];
    mutableText3 = [parentWord mutableText];
    [mutableText3 appendString:charactersCopy];
  }

  else
  {
    elementStack = [(MSVLyricsTTMLParser *)self elementStack];
    lastObject = [elementStack lastObject];
    currentTextElement4 = [lastObject mutableText];

    if (currentTextElement4)
    {
      [currentTextElement4 appendString:charactersCopy];
    }
  }

  v10 = charactersCopy;
LABEL_7:
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v116 = *MEMORY[0x1E69E9840];
  parserCopy = parser;
  elementCopy = element;
  elementStack = [(MSVLyricsTTMLParser *)self elementStack];
  lastObject = [elementStack lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = lastObject;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  elementName = [lastObject elementName];
  v16 = [elementCopy caseInsensitiveCompare:elementName];

  if (!v16)
  {
    elementStack2 = [(MSVLyricsTTMLParser *)self elementStack];
    [elementStack2 removeLastObject];

    elementStack3 = [(MSVLyricsTTMLParser *)self elementStack];
    lastObject2 = [elementStack3 lastObject];

    if ([elementCopy msvl_isElementType:@"body"])
    {
      lyricLines = [(MSVLyricsTTMLParser *)self lyricLines];
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      firstObject = [preferredLanguages firstObject];
      lastObject3 = [(MSVLyricsTTMLParser *)self _translatedLyrics:lyricLines forLanguage:firstObject];

      if (lastObject3)
      {
        lyricLines2 = lastObject3;
      }

      else
      {
        lyricLines2 = [(MSVLyricsTTMLParser *)self lyricLines];
      }

      v31 = lyricLines2;
      if ([(MSVLyricsTTMLParser *)self linesAreSortedByStartTime])
      {
        lyricsInfo = [(MSVLyricsTTMLParser *)self lyricsInfo];
        [lyricsInfo setLyricsLinesSortedByStartTime:v31];
      }

      else
      {
        v33 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC81F000, v33, OS_LOG_TYPE_DEFAULT, "Lyrics lines are out of order: they should be ordered by start time", buf, 2u);
        }

        lyricsInfo = [(MSVLyricsTTMLParser *)self lyricsInfo];
        [lyricsInfo setLyricsLines:v31];
      }

      agents = [(MSVLyricsTTMLParser *)self agents];
      v35 = [agents copy];
      lyricsInfo2 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [lyricsInfo2 setAgents:v35];

      goto LABEL_22;
    }

    if ([elementCopy msvl_isElementType:@"tt"])
    {
      goto LABEL_23;
    }

    if ([elementCopy msvl_isElementType:@"songwriter"])
    {
      elementName4 = lastObject;
      mutableText = [elementName4 mutableText];
      [elementName4 setName:mutableText];

      [elementName4 setMutableText:0];
      goto LABEL_8;
    }

    if (!v14)
    {
      if (![elementCopy msvl_isElementType:@"name"])
      {
        goto LABEL_23;
      }

      elementName2 = [lastObject2 elementName];
      v49 = [elementName2 msvl_isElementType:@"agent"];

      if (!v49)
      {
        elementName4 = _MSVLogCategoryLyricsTTMLParser();
        if (!os_log_type_enabled(elementName4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v19 = "Element ignored: <ttm:name> element must be inside <ttm:agent>";
        v20 = elementName4;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = 2;
        goto LABEL_7;
      }

      agents2 = [(MSVLyricsTTMLParser *)self agents];
      lastObject3 = [agents2 lastObject];

      if (lastObject3 != lastObject2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:589 description:@"Unexpected agent element"];
      }

      mutableText2 = [lastObject mutableText];
      [lastObject3 setName:mutableText2];

      [lastObject setMutableText:0];
LABEL_22:

      goto LABEL_23;
    }

    _parentTextElement = [(MSVLyricsTTMLParser *)self _parentTextElement];
    v111 = _parentTextElement;
    if ([v14 type])
    {
      if ([v14 type] == 1 || objc_msgSend(v14, "type") == 3 || objc_msgSend(v14, "type") == 4)
      {
        v39 = v14;
        lyricLines3 = [(MSVLyricsTTMLParser *)self lyricLines];
        [v39 setLineIndex:{objc_msgSend(lyricLines3, "count")}];

        [v39 setOriginalLineIndex:{objc_msgSend(v39, "lineIndex")}];
        lyricLines4 = [(MSVLyricsTTMLParser *)self lyricLines];
        lastObject4 = [lyricLines4 lastObject];

        if (lastObject4)
        {
          [lastObject4 setNextLine:v39];
        }

        v109 = lastObject4;
        if ([v39 type] == 3)
        {
          elementName3 = [lastObject2 elementName];
          if ([elementName3 msvl_isElementType:@"translation"])
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v45 = lastObject2;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:483 description:{@"At end of <text> element, an MSVLyricsTranslationText object should be top of stack"}];
              }

              v106 = lastObject;
              lyricsLineKey = [v106 lyricsLineKey];
              if (!lyricsLineKey)
              {
                log = _MSVLogCategoryLyricsTTMLParser();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  lineNumber = [parserCopy lineNumber];
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
          elementName3 = [lastObject2 elementName];
          if ([elementName3 msvl_isElementType:@"transliteration"])
          {
            objc_opt_class();
            v56 = objc_opt_isKindOfClass();

            if (v56)
            {
              v45 = lastObject2;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler3 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:497 description:{@"At end of <text> element, an MSVLyricsTransliterationText object should be top of stack"}];
              }

              v106 = lastObject;
              lyricsLineKey = [v106 lyricsLineKey];
              if (!lyricsLineKey)
              {
                log = _MSVLogCategoryLyricsTTMLParser();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  lineNumber = [parserCopy lineNumber];
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
              [v57 setObject:v39 forKeyedSubscript:lyricsLineKey];

              v45 = log;
LABEL_74:
            }

LABEL_75:
            backgroundVocals = [v39 backgroundVocals];

            if (backgroundVocals)
            {
              mutableText3 = [v39 mutableText];
              v77 = [mutableText3 mutableCopy];

              backgroundVocals2 = [v39 backgroundVocals];
              characterRange = [backgroundVocals2 characterRange];
              [v77 deleteCharactersInRange:{characterRange, v80}];

              v108 = v77;
              [v77 replaceOccurrencesOfString:@"()" withString:&stru_1F214F018 options:0 range:{0, objc_msgSend(v77, "length")}];
              whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              [v77 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
              v83 = v82 = v39;

              v84 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v83];
              [v82 setPrimaryVocalText:v84];

              v39 = v82;
            }

            objc_opt_class();
            _parentTextElement = v111;
            if (objc_opt_isKindOfClass())
            {
              v85 = v39;
              v86 = lastObject2;
              lines = [v86 lines];

              if (!lines)
              {
                currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler4 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:526 description:@"-[MSVLyricsSection lines] should never be nil"];
              }

              lines2 = [v86 lines];
              v89 = [lines2 arrayByAddingObject:v85];
              [v86 setLines:v89];

              v39 = v85;
              [v85 setParentSection:v86];

              _parentTextElement = v111;
            }

            goto LABEL_82;
          }
        }

        else
        {
          elementName3 = [(MSVLyricsTTMLParser *)self lyricLines];
          [elementName3 addObject:v39];
        }

        goto LABEL_75;
      }

      if ([v14 type] == 2)
      {
        v58 = v14;
        parentLine = [v58 parentLine];
        v60 = parentLine;
        v110 = parentLine;
        if (parentLine == _parentTextElement)
        {
          words = [parentLine words];
          mutableText4 = [v110 mutableText];
          v63 = [(MSVLyricsTTMLParser *)self _updateWords:words withWord:v58 parentText:mutableText4];
          [v110 setWords:v63];

          v60 = v110;
        }

        parentWord = [v58 parentWord];
        if (parentWord)
        {
          subwords = [parentWord subwords];
          mutableText5 = [parentWord mutableText];
          v66 = [(MSVLyricsTTMLParser *)self _updateWords:subwords withWord:v58 parentText:mutableText5];
          [parentWord setSubwords:v66];

          v60 = v110;
          if ([parentWord isBackgroundVocal])
          {
            [v58 setIsBackgroundVocal:1];
          }
        }

        if ([v60 type] == 3)
        {
          translations = [(MSVLyricsTTMLParser *)self translations];
          lastObject5 = [translations lastObject];
          v69 = [lastObject5 type] == 1;

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

        subwords2 = [v58 subwords];
        v71 = [subwords2 count] != 0 || v69;

        v60 = v110;
        if (!v71)
        {
          goto LABEL_91;
        }

        if ([v110 hasBackgroundVocal])
        {
          mutableText7 = _MSVLogCategoryLyricsTTMLParser();
          if (os_log_type_enabled(mutableText7, OS_LOG_TYPE_DEFAULT))
          {
            lyricsText = [v110 lyricsText];
            string = [lyricsText string];
            *buf = 138412290;
            lineNumber = string;
            _os_log_impl(&dword_1AC81F000, mutableText7, OS_LOG_TYPE_DEFAULT, "Warning: Ignoring additional background vocals for lyrics line %@", buf, 0xCu);
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

          mutableText6 = [v58 mutableText];
          v100 = objc_msgSend(mutableText6, "hasPrefix:", @"(");

          v60 = v110;
          if (!v100)
          {
            goto LABEL_91;
          }

          mutableText7 = [v58 mutableText];
          [(MSVLyricsTTMLParser *)self _stripParenthesesFromBackgroundVocalWord:v58 backgroundVocalText:mutableText7];
        }

        v60 = v110;
LABEL_91:

        _parentTextElement = v111;
      }
    }

    else
    {
      lyricsInfo3 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      lyricsSections = [lyricsInfo3 lyricsSections];
      v54 = [lyricsSections arrayByAddingObject:v14];
      lyricsInfo4 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [lyricsInfo4 setLyricsSections:v54];

      _parentTextElement = v111;
    }

LABEL_82:
    currentTextElement = [(MSVLyricsTTMLParser *)self currentTextElement];

    if (v14 == currentTextElement)
    {
      currentTextElement2 = [(MSVLyricsTTMLParser *)self currentTextElement];
      lyricsText2 = [currentTextElement2 lyricsText];

      if (!lyricsText2)
      {
        v93 = objc_alloc(MEMORY[0x1E696AAB0]);
        currentTextElement3 = [(MSVLyricsTTMLParser *)self currentTextElement];
        mutableText8 = [currentTextElement3 mutableText];
        v96 = [v93 initWithString:mutableText8];
        currentTextElement4 = [(MSVLyricsTTMLParser *)self currentTextElement];
        [currentTextElement4 setLyricsText:v96];

        _parentTextElement = v111;
      }

      currentTextElement5 = [(MSVLyricsTTMLParser *)self currentTextElement];
      [currentTextElement5 setMutableText:0];

      [(MSVLyricsTTMLParser *)self setCurrentTextElement:_parentTextElement];
    }

    goto LABEL_23;
  }

  lastObject2 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
  if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_ERROR))
  {
    elementName4 = [lastObject elementName];
    *buf = 138412546;
    lineNumber = elementName4;
    v114 = 2112;
    v115 = elementCopy;
    v19 = "Mismatched element names! start:%@, end:%@";
    v20 = lastObject2;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 22;
LABEL_7:
    _os_log_impl(&dword_1AC81F000, v20, v21, v19, buf, v22);
LABEL_8:
  }

LABEL_23:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v139 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  attributesCopy = attributes;
  elementStack = [(MSVLyricsTTMLParser *)self elementStack];
  lastObject = [elementStack lastObject];

  if ([elementCopy msvl_isElementType:@"span"])
  {
    v14 = objc_opt_new();
    _parentTextElement = [(MSVLyricsTTMLParser *)self _parentTextElement];
    if ([_parentTextElement type] == 1 || objc_msgSend(_parentTextElement, "type") == 3 || objc_msgSend(_parentTextElement, "type") == 4)
    {
      [v14 setParentLine:_parentTextElement];
    }

    else
    {
      if ([_parentTextElement type] == 2)
      {
        v22 = _parentTextElement;
        [v14 setParentWord:v22];
        parentLine = [v22 parentLine];

        [v14 setParentLine:parentLine];
      }

      else
      {
        parentLine = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
        if (os_log_type_enabled(parentLine, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC81F000, parentLine, OS_LOG_TYPE_DEFAULT, "Warning: <span> must be a descendent of <p> or <span>.", buf, 2u);
        }
      }
    }

    goto LABEL_55;
  }

  if ([elementCopy msvl_isElementType:@"p"])
  {
    v14 = objc_opt_new();
    v16 = [attributesCopy objectForKeyedSubscript:@"itunes:key"];
    [v14 setTranslationKey:v16];
LABEL_12:

LABEL_55:
    v50 = 0;
    goto LABEL_56;
  }

  if ([elementCopy msvl_isElementType:@"div"])
  {
    v14 = objc_opt_new();
    v16 = [attributesCopy objectForKeyedSubscript:@"itunes:songPart"];
    if (v16)
    {
      [v14 setSongPartText:v16];
    }

    goto LABEL_12;
  }

  if ([elementCopy msvl_isElementType:@"body"])
  {
    v17 = [attributesCopy objectForKeyedSubscript:@"dur"];
    v18 = v17;
    if (v17)
    {
      [v17 msvl_timeValue];
      v20 = v19;
      lyricsInfo = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [lyricsInfo setSongDuration:v20];

LABEL_53:
      goto LABEL_54;
    }

    lyricsInfo6 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
    if (os_log_type_enabled(lyricsInfo6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC81F000, lyricsInfo6, OS_LOG_TYPE_DEFAULT, "Warning: Document body element must specify song duration", buf, 2u);
    }

LABEL_52:

    goto LABEL_53;
  }

  if ([elementCopy msvl_isElementType:@"tt"])
  {
    v24 = objc_opt_new();
    [(MSVLyricsTTMLParser *)self setLyricsInfo:v24];

    v25 = [attributesCopy objectForKeyedSubscript:@"itunes:lyricGenId"];
    lyricsInfo2 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo2 setLyricGenId:v25];

    v27 = [attributesCopy objectForKeyedSubscript:@"xml:lang"];
    lyricsInfo3 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo3 setLanguage:v27];

    lyricsInfo4 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    songwriters = [lyricsInfo4 songwriters];

    if (!songwriters)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:217 description:@"songwriters array must not be nil"];
    }

    lyricsInfo5 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    lyricsSections = [lyricsInfo5 lyricsSections];

    if (!lyricsSections)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:218 description:@"lyricsSections array must not be nil"];
    }

    v33 = [attributesCopy objectForKeyedSubscript:@"itunes:timing"];
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

    lyricsInfo6 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo6 setType:v34];
    goto LABEL_52;
  }

  if ([elementCopy msvl_isElementType:@"songwriters"])
  {
    elementName = [lastObject elementName];
    v36 = [elementName msvl_isElementType:@"iTunesMetadata"];

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

  if ([elementCopy msvl_isElementType:@"audio"])
  {
    elementName2 = [lastObject elementName];
    v41 = [elementName2 msvl_isElementType:@"iTunesMetadata"];

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
    v43 = [attributesCopy objectForKeyedSubscript:@"lyricOffset"];
    v44 = v43;
    if (v43)
    {
      [v43 msvl_timeValue];
      [v18 setLyricsOffset:?];
    }

    v45 = [attributesCopy objectForKeyedSubscript:@"role"];
    [v18 setRole:v45];

    role = [v18 role];
    [v18 setSpatialRole:{objc_msgSend(role, "isEqualToString:", @"spatial"}];

    lyricsInfo7 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo7 setAudioAttributes:v18];

    goto LABEL_53;
  }

  if ([elementCopy msvl_isElementType:@"songwriter"])
  {
    elementName3 = [lastObject elementName];
    v49 = [elementName3 msvl_isElementType:@"songwriters"];

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
    v51 = [attributesCopy objectForKeyedSubscript:@"artistId"];
    [v50 setArtistID:v51];

    lyricsInfo8 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    songwriters2 = [lyricsInfo8 songwriters];
    v54 = [songwriters2 arrayByAddingObject:v50];

    lyricsInfo9 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo9 setSongwriters:v54];

LABEL_49:
    v14 = 0;
    goto LABEL_56;
  }

  if ([elementCopy msvl_isElementType:@"translations"])
  {
    elementName4 = [lastObject elementName];
    v85 = [elementName4 msvl_isElementType:@"iTunesMetadata"];

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

  if ([elementCopy msvl_isElementType:@"transliterations"])
  {
    elementName5 = [lastObject elementName];
    v89 = [elementName5 msvl_isElementType:@"iTunesMetadata"];

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

  if ([elementCopy msvl_isElementType:@"translation"])
  {
    elementName6 = [lastObject elementName];
    v92 = [elementName6 msvl_isElementType:@"translations"];

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

    translations = [(MSVLyricsTTMLParser *)self translations];

    if (!translations)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:280 description:@"<translation> end element expects translations to be set by start of <translations> element"];
    }

    v94 = [attributesCopy objectForKeyedSubscript:@"xml:lang"];
    if (v94)
    {
      v95 = objc_opt_new();
      [v95 setLanguage:v94];
      v96 = [attributesCopy objectForKeyedSubscript:@"automaticallyCreated"];
      [v95 setAutomaticallyCreated:{objc_msgSend(v96, "isEqualToString:", @"true"}];

      v97 = [attributesCopy objectForKeyedSubscript:@"type"];
      [v95 setTypeText:v97];

      v98 = objc_opt_new();
      [v95 setLinesMap:v98];

      v50 = v95;
      translations2 = [(MSVLyricsTTMLParser *)self translations];
LABEL_111:
      v106 = translations2;
      [translations2 addObject:v50];

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

  if ([elementCopy msvl_isElementType:@"transliteration"])
  {
    elementName7 = [lastObject elementName];
    v101 = [elementName7 msvl_isElementType:@"transliterations"];

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

    transliterations = [(MSVLyricsTTMLParser *)self transliterations];

    if (!transliterations)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"MSVLyricsTTMLParser.m" lineNumber:301 description:@"<transliteration> end element expects transliterations to be set by start of <transliterations> element"];
    }

    v94 = [attributesCopy objectForKeyedSubscript:@"xml:lang"];
    if (v94)
    {
      v103 = objc_opt_new();
      v104 = [attributesCopy objectForKeyedSubscript:@"automaticallyCreated"];
      [v103 setAutomaticallyCreated:{objc_msgSend(v104, "isEqualToString:", @"true"}];

      [v103 setLanguage:v94];
      v105 = objc_opt_new();
      [v103 setLinesMap:v105];

      v50 = v103;
      translations2 = [(MSVLyricsTTMLParser *)self transliterations];
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

  if ([elementCopy msvl_isElementType:@"text"])
  {
    elementName8 = [lastObject elementName];
    v108 = [elementName8 msvl_isElementType:@"translation"];

    if (v108 || ([lastObject elementName], v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v115, "msvl_isElementType:", @"transliteration"), v115, v116))
    {
      v14 = objc_opt_new();
      v16 = [attributesCopy objectForKeyedSubscript:@"for"];
      [v14 setLyricsLineKey:v16];
      goto LABEL_12;
    }

    goto LABEL_54;
  }

  if ([elementCopy msvl_isElementType:@"iTunesMetadata"])
  {
    v109 = [attributesCopy objectForKeyedSubscript:@"leadingSilence"];
    v37 = v109;
    if (v109)
    {
      [v109 msvl_timeValue];
      v111 = v110;
      lyricsInfo10 = [(MSVLyricsTTMLParser *)self lyricsInfo];
      [lyricsInfo10 setLeadingSilence:v111];
    }

    goto LABEL_34;
  }

  if ([elementCopy msvl_isElementType:@"agent"])
  {
    elementName9 = [lastObject elementName];
    v118 = [elementName9 msvl_isElementType:@"metadata"];

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
    v120 = [attributesCopy objectForKeyedSubscript:@"type"];
    [v50 setType:v120];

    v121 = [attributesCopy objectForKeyedSubscript:@"itunes:artistId"];
    [v50 setArtistID:v121];

    agents = [(MSVLyricsTTMLParser *)self agents];
    [agents addObject:v50];
    goto LABEL_132;
  }

  if ([elementCopy msvl_isElementType:@"name"])
  {
    elementName10 = [lastObject elementName];
    v124 = [elementName10 msvl_isElementType:@"agent"];

    if (v124)
    {
      v50 = objc_opt_new();
      agents = [MEMORY[0x1E696AD60] string];
      [v50 setMutableText:agents];
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
  lyricsInfo11 = [(MSVLyricsTTMLParser *)self lyricsInfo];

  if (lyricsInfo11)
  {
    if (v14)
    {
LABEL_58:
      v131 = lastObject;
      v57 = v14;

      v58 = [attributesCopy objectForKeyedSubscript:@"begin"];
      v59 = v58;
      if (v58)
      {
        [v58 msvl_timeValue];
        [v57 setStartTime:?];
      }

      v60 = [attributesCopy objectForKeyedSubscript:@"end"];
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

      v132 = elementCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MSVLyricsTTMLParser *)self setCurrentTextElement:v57];
      }

      v66 = [attributesCopy objectForKeyedSubscript:@"ttm:agent"];
      if (v66)
      {
        v130 = attributesCopy;
        agents2 = [(MSVLyricsTTMLParser *)self agents];
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = __84__MSVLyricsTTMLParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke;
        v133[3] = &unk_1E7981C40;
        v68 = v66;
        v134 = v68;
        v69 = [agents2 indexOfObjectPassingTest:v133];

        if (v69 == 0x7FFFFFFFFFFFFFFFLL)
        {
          selfCopy2 = self;
          agents3 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
          if (os_log_type_enabled(agents3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v136 = v68;
            v137 = 2112;
            v138 = v57;
            _os_log_impl(&dword_1AC81F000, agents3, OS_LOG_TYPE_DEFAULT, "No agent exists for identifier %@ in element: %@", buf, 0x16u);
          }
        }

        else
        {
          selfCopy2 = self;
          agents3 = [(MSVLyricsTTMLParser *)self agents];
          v73 = [agents3 objectAtIndexedSubscript:v69];
          [v57 setAgent:v73];
        }

        attributesCopy = v130;
        self = selfCopy2;
      }

      v74 = [attributesCopy objectForKeyedSubscript:@"ttm:role"];
      [v57 setRole:v74];

      role2 = [v57 role];
      [v57 setIsBackgroundVocal:{objc_msgSend(role2, "isEqualToString:", @"x-bg"}];

      v76 = [attributesCopy objectForKeyedSubscript:@"itunes:parenthesis"];
      if (v76)
      {
        v77 = v76;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v79 = [attributesCopy objectForKeyedSubscript:@"itunes:parenthesis"];
          v80 = [v79 isEqualToString:@"keep"];

          [v57 setKeepParentheses:v80];
        }
      }

      lastObject = v131;
      elementCopy = v132;
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
  [v57 setElementName:elementCopy];
  v81 = [attributesCopy objectForKeyedSubscript:@"xml:id"];
  [v57 setIdentifier:v81];

  elementStack2 = [(MSVLyricsTTMLParser *)self elementStack];
  [elementStack2 addObject:v57];

  v83 = *MEMORY[0x1E69E9840];
}

uint64_t __84__MSVLyricsTTMLParser_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)parseWithCompletion:(id)completion
{
  completionCopy = completion;
  parseQueue = [(MSVLyricsTTMLParser *)self parseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MSVLyricsTTMLParser_parseWithCompletion___block_invoke;
  v7[3] = &unk_1E7982B00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(parseQueue, v7);
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

- (id)parseWithError:(id *)error
{
  [(MSVLyricsTTMLParser *)self setLinesAreSortedByStartTime:1];
  [(MSVLyricsTTMLParser *)self setCurrentStartTime:0.0];
  elementStack = [(MSVLyricsTTMLParser *)self elementStack];
  [elementStack removeAllObjects];

  lyricLines = [(MSVLyricsTTMLParser *)self lyricLines];
  [lyricLines removeAllObjects];

  v7 = objc_alloc(MEMORY[0x1E696B0A8]);
  inputStream = [(MSVLyricsTTMLParser *)self inputStream];
  v9 = [v7 initWithStream:inputStream];

  [v9 setDelegate:self];
  [v9 setShouldProcessNamespaces:1];
  [v9 parse];
  translations = [(MSVLyricsTTMLParser *)self translations];

  if (translations)
  {
    translations2 = [(MSVLyricsTTMLParser *)self translations];
    lyricsInfo = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo setTranslations:translations2];
  }

  transliterations = [(MSVLyricsTTMLParser *)self transliterations];

  if (transliterations)
  {
    transliterations2 = [(MSVLyricsTTMLParser *)self transliterations];
    lyricsInfo2 = [(MSVLyricsTTMLParser *)self lyricsInfo];
    [lyricsInfo2 setTransliterations:transliterations2];
  }

  if (error)
  {
    parserError = [(MSVLyricsTTMLParser *)self parserError];

    if (parserError)
    {
      *error = [(MSVLyricsTTMLParser *)self parserError];
    }
  }

  lyricsInfo3 = [(MSVLyricsTTMLParser *)self lyricsInfo];

  return lyricsInfo3;
}

- (MSVLyricsTTMLParser)initWithTTMLStream:(id)stream
{
  streamCopy = stream;
  v18.receiver = self;
  v18.super_class = MSVLyricsTTMLParser;
  v6 = [(MSVLyricsTTMLParser *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputStream, stream);
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

- (MSVLyricsTTMLParser)initWithTTMLData:(id)data
{
  v4 = MEMORY[0x1E695DF48];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy];

  v7 = [(MSVLyricsTTMLParser *)self initWithTTMLStream:v6];
  return v7;
}

@end