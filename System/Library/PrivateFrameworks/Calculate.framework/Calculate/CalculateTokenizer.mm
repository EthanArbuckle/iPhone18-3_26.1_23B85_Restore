@interface CalculateTokenizer
+ (NSSet)laTeXNonTrigFunctionSet;
+ (NSSet)laTeXTrigonometricSet;
+ (NSSet)nonTrigFunctionSet;
+ (NSSet)trigonometricSet;
+ (id)localizedSymbolsTrie:(id)trie;
+ (id)nonWhitespaceLanguageSet;
+ (id)punctuationSet;
+ (id)symbolSet;
+ (id)tokenizerWithUnits:(id)units;
+ (int)displayNameExponent:(id)exponent;
+ (void)_addSymbols:(id)symbols normalized:(id)normalized tokenType:(unint64_t)type isLaTeX:(BOOL)x trie:(id)trie;
+ (void)addLocalizedSymbols:(id)symbols locales:(id)locales;
+ (void)addSymbols:(id)symbols;
+ (void)addUnits:(id)units builtIn:(BOOL)in;
+ (void)loadPunctuationSet;
+ (void)loadSymbolSet;
- ($0F7EB6B36CDCC9CA6BC7BE76F6527CA8)singleLetterVariables;
- (CalculateTokenizer)initWithUnits:(id)units;
- (_NSRange)range;
- (id)nextToken;
- (id)peekNonWhitespaceToken;
- (id)peekToken;
- (id)peekTokenAtOffset:(int64_t)offset;
- (void)_findNextToken;
- (void)_loadIfNeeded;
- (void)addDeclaredVariable:(id)variable;
- (void)addVariable:(id)variable;
- (void)dealloc;
- (void)reset;
- (void)setGraphableVariable:(id)variable;
- (void)setLocales:(id)locales;
- (void)setRange:(_NSRange)range;
- (void)setSingleLetterVariables:(id *)variables;
- (void)setString:(id)string;
- (void)setVariables:(id)variables;
- (void)update;
@end

@implementation CalculateTokenizer

- (id)nextToken
{
  peekToken = [(CalculateTokenizer *)self peekToken];
  if (peekToken)
  {
    peekTokens = [(CalculateTokenizer *)self peekTokens];
    [peekTokens removeObjectAtIndex:0];
  }

  [(CalculateTokenizer *)self setLastToken:peekToken];

  return peekToken;
}

- (id)peekToken
{
  peekTokens = [(CalculateTokenizer *)self peekTokens];
  v4 = [peekTokens count];

  if (!v4)
  {
    [(CalculateTokenizer *)self _findNextToken];
  }

  peekTokens2 = [(CalculateTokenizer *)self peekTokens];
  v6 = [peekTokens2 count];

  if (v6)
  {
    peekTokens3 = [(CalculateTokenizer *)self peekTokens];
    v8 = [peekTokens3 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_findNextToken
{
  selfCopy = self;
  v261 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdate)
  {
    [(CalculateTokenizer *)self update];
  }

  peekIndex = [(CalculateTokenizer *)selfCopy peekIndex];
  if (peekIndex >= [(CalculateTokenizer *)selfCopy stringLength])
  {
    goto LABEL_100;
  }

  for (i = selfCopy; ; [(CalculateTokenizer *)i setWordBreakIndicesIndex:[(CalculateTokenizer *)i wordBreakIndicesIndex]+ 1])
  {
    wordBreakIndices = [(CalculateTokenizer *)selfCopy wordBreakIndices];
    v5 = [wordBreakIndices objectAtIndexedSubscript:{-[CalculateTokenizer wordBreakIndicesIndex](i, "wordBreakIndicesIndex")}];
    intValue = [v5 intValue];
    selfCopy = i;
    peekIndex2 = [(CalculateTokenizer *)i peekIndex];

    if (peekIndex2 < intValue)
    {
      break;
    }
  }

  v251 = 0;
  v252 = &v251;
  v253 = 0x3032000000;
  v254 = __Block_byref_object_copy__886;
  v255 = __Block_byref_object_dispose__887;
  v256 = 0;
  v247 = 0;
  v248 = &v247;
  v249 = 0x2020000000;
  v250 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CalculateTokenizer__findNextToken__block_invoke;
  aBlock[3] = &unk_1E815C990;
  aBlock[4] = i;
  aBlock[5] = &v251;
  aBlock[6] = &v247;
  v155 = _Block_copy(aBlock);
  stringLength = [(CalculateTokenizer *)i stringLength];
  peekIndex3 = [(CalculateTokenizer *)i peekIndex];
  wordBreakIndices2 = [(CalculateTokenizer *)i wordBreakIndices];
  v9 = [wordBreakIndices2 objectAtIndexedSubscript:{-[CalculateTokenizer wordBreakIndicesIndex](i, "wordBreakIndicesIndex")}];
  intValue2 = [v9 intValue];

  v156 = intValue2;
  v11 = i;
  if (!i->_prevToken && (([(NSString *)i->_string characterAtIndex:peekIndex3]& 0xFFDF) - 65) <= 0x19u)
  {
    *&v257 = 0;
    *(&v257 + 1) = &v257;
    *&v258 = 0x2020000000;
    BYTE8(v258) = 0;
    v239 = 0;
    v240 = &v239;
    v241 = 0x2020000000;
    LOBYTE(v242) = 0;
    string = [(CalculateTokenizer *)i string];
    v245[0] = MEMORY[0x1E69E9820];
    v245[1] = 3221225472;
    v245[2] = __36__CalculateTokenizer__findNextToken__block_invoke_2;
    v245[3] = &unk_1E815C9B8;
    v245[4] = &v257;
    v245[5] = &v239;
    [Trie enumerateCharactersInKey:string range:intValue2 usingBlock:stringLength - intValue2, v245];

    if (*(*(&v257 + 1) + 24) == 1 && *(v240 + 24) == 1)
    {
      v13 = (*(v155 + 2))(v155, 39, intValue2, 0, 0);
      _Block_object_dispose(&v239, 8);
      _Block_object_dispose(&v257, 8);
      goto LABEL_99;
    }

    _Block_object_dispose(&v239, 8);
    _Block_object_dispose(&v257, 8);
    v11 = i;
  }

  v154 = intValue2 - peekIndex3;
  if (intValue2 <= peekIndex3 || v154 != 1 && v154 > v11->_variableBufferLength && v154 > v11->_graphableVariableLength || (([(NSString *)v11->_string characterAtIndex:peekIndex3]& 0xFFDF) - 65) > 0x19u)
  {
    goto LABEL_69;
  }

  if (v154 == 1 || v154 <= v11->_variableBufferLength || v154 <= v11->_graphableVariableLength)
  {
    v14 = [(NSString *)v11->_string substringWithRange:peekIndex3];
    lowercaseString = [v14 lowercaseString];

    p_isa = &i->super.isa;
    v17 = [(NSDictionary *)i->_variables objectForKey:lowercaseString];
    if (v17)
    {

      p_isa = &i->super.isa;
      graphableVariable = i->_graphableVariable;
      if (!graphableVariable)
      {
        *(v248 + 24) = 0;
        goto LABEL_33;
      }

      v19 = 1;
    }

    else
    {
      v19 = [(NSMutableSet *)i->_lowercasedVariables containsObject:lowercaseString];
      graphableVariable = i->_graphableVariable;
      if (!graphableVariable)
      {
        *(v248 + 24) = 0;
        if (v19)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    v20 = [(NSString *)graphableVariable caseInsensitiveCompare:lowercaseString];
    *(v248 + 24) = v20 == 0;
    if (v19)
    {
      goto LABEL_33;
    }

    if (!v20)
    {
      v21 = [p_isa[4] substringWithRange:{peekIndex3, v154}];
      v22 = v252[5];
      v252[5] = v21;

      p_isa = &i->super.isa;
      if (v248[3])
      {
        goto LABEL_33;
      }
    }

LABEL_31:
    if ([lowercaseString isEqualToString:@"x"])
    {
      if ((v248[3] & 1) == 0)
      {
        v23 = 52;
        goto LABEL_34;
      }

LABEL_33:
      v23 = 39;
LABEL_34:
      v24 = (*(v155 + 2))(v155, v23, intValue2, 0, 0);
      if ([v24 isMaybeX])
      {
        [p_isa _findNextToken];
        lastObject = [p_isa[18] lastObject];
        v26 = lastObject;
        if (!lastObject || [lastObject tokenType] == 1)
        {
          [p_isa _findNextToken];
        }
      }

      goto LABEL_99;
    }

    *(v248 + 24) = 0;

    v11 = i;
  }

  if (!v11->_variables || !v11->_variableBuffer || v154 > v11->_variableBufferLength)
  {
    goto LABEL_69;
  }

  [NSString getCharacters:"getCharacters:range:" range:?];
  v27 = 0;
  v28 = 0;
  v257 = 0u;
  v258 = 0u;
  variableBuffer = v11->_variableBuffer;
  v30 = 1;
  v31 = intValue2 - peekIndex3;
  v32 = 1;
  while (1)
  {
    v34 = *variableBuffer++;
    v33 = v34;
    v35 = (v34 - 97);
    v36 = (v34 - 97);
    v37 = -97;
    if (v36 >= 0x1A)
    {
      break;
    }

LABEL_48:
    v38 = v11->_singleLetterVariables.letters[v37 + v33];
    if (!v38)
    {
      v28 = v33;
    }

    v27 += !v38;
    if (v36 > 0x19)
    {
      v40 = (v33 - 65);
      if (v40 > 0x19)
      {
        goto LABEL_59;
      }

      v39 = &v257 + v40;
    }

    else
    {
      v39 = &v257 + v35;
    }

    if (*v39)
    {
      goto LABEL_59;
    }

    *v39 = 1;
    v32 = v30++ < v154;
    if (!--v31)
    {
      v32 = 0;
      goto LABEL_59;
    }
  }

  if ((v33 - 65) < 0x1A)
  {
    v37 = -65;
    goto LABEL_48;
  }

  ++v27;
  v28 = v33;
LABEL_59:
  if (v11->_declaredVariable && v27 == 1)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v28];
    v42 = v252[5];
    v252[5] = v41;

    if (i->_graphableVariable)
    {
      if (![v252[5] caseInsensitiveCompare:?])
      {
        *(v248 + 24) = 1;
        if (!v32)
        {
          goto LABEL_64;
        }
      }
    }
  }

  else if (!v32 && v27 <= 0)
  {
LABEL_64:
    v43 = peekIndex3 + 1;
    do
    {
      v44 = (*(v155 + 2))(v155, 39, v43++, 0, 0);
      --v154;
    }

    while (v154);
    goto LABEL_99;
  }

  *(v248 + 24) = 0;
LABEL_69:
  v45 = 0;
  *&v257 = 0;
  *(&v257 + 1) = &v257;
  *&v258 = 0x3032000000;
  *(&v258 + 1) = __Block_byref_object_copy__886;
  v259 = __Block_byref_object_dispose__887;
  v260 = 0;
  v239 = 0;
  v240 = &v239;
  v241 = 0x3032000000;
  v242 = __Block_byref_object_copy__886;
  v243 = __Block_byref_object_dispose__887;
  v244 = 0;
  v235 = 0;
  v236 = &v235;
  v237 = 0x2020000000;
  v238 = 0;
  v46 = 1;
  while (2)
  {
    v47 = v46;
    v229 = 0;
    v230 = &v229;
    v231 = 0x3032000000;
    v232 = __Block_byref_object_copy__886;
    v233 = __Block_byref_object_dispose__887;
    trie = [(CalculateTokenizer *)i trie];
    v49 = trie;
    if (trie)
    {
      v50 = [*(trie + 32) copy];
    }

    else
    {
      v50 = 0;
    }

    v234 = v50;

    v196 = 0;
    v197 = &v196;
    v198 = 0x2020000000;
    wordBreakIndicesIndex = [(CalculateTokenizer *)i wordBreakIndicesIndex];
    v184 = 0;
    v185 = &v184;
    v186 = 0x2020000000;
    v187 = intValue2;
    string2 = [(CalculateTokenizer *)i string];
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __36__CalculateTokenizer__findNextToken__block_invoke_3;
    v227[3] = &unk_1E815C9E0;
    v228 = v45;
    v227[5] = &v229;
    v227[4] = i;
    v227[6] = &v239;
    v227[7] = &v257;
    v227[8] = &v235;
    v227[9] = &v184;
    v227[11] = peekIndex3;
    v227[10] = &v196;
    [Trie enumerateCharactersInKey:string2 range:peekIndex3 usingBlock:stringLength - peekIndex3, v227];

    ranks = [*(*(&v257 + 1) + 40) ranks];
    if ([ranks count] != 1)
    {

LABEL_76:
      _Block_object_dispose(&v184, 8);
      _Block_object_dispose(&v196, 8);
      _Block_object_dispose(&v229, 8);

      v46 = 0;
      v45 = 1;
      if ((v47 & 1) == 0)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v53 = [*(*(&v257 + 1) + 40) tokenType] == 2;

  if (v53)
  {
    goto LABEL_76;
  }

  _Block_object_dispose(&v184, 8);
  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v229, 8);

LABEL_79:
  v54 = *(*(&v257 + 1) + 40);
  v55 = i;
  if (v54 && [v54 tokenType] != 33)
  {
    if ([*(*(&v257 + 1) + 40) tokenType] != 2 && objc_msgSend(*(*(&v257 + 1) + 40), "tokenType") != 35)
    {
      tokenType = [*(*(&v257 + 1) + 40) tokenType];
      v68 = (*(v155 + 2))(v155, tokenType, v236[3], 0, 0);
      normalized = [*(*(&v257 + 1) + 40) normalized];
      [v68 setNormalizedText:normalized];

      goto LABEL_98;
    }

    if ([*(*(&v257 + 1) + 40) tokenType] != 35)
    {
      goto LABEL_148;
    }

    ranks2 = [*(*(&v257 + 1) + 40) ranks];
    v60 = [ranks2 count];

    v61 = v236[3];
    v55 = i;
    if (v61 >= stringLength)
    {
      goto LABEL_147;
    }

    while (1)
    {
      string3 = [(CalculateTokenizer *)v55 string];
      v63 = [string3 characterAtIndex:v61];

      v55 = i;
      if (v63 == 95)
      {
        goto LABEL_153;
      }

      if (v63 != 32 && (v63 - 48) >= 0xAu)
      {
        break;
      }

      if (stringLength == ++v61)
      {
        goto LABEL_147;
      }
    }

    if (v63 != 40)
    {
LABEL_147:
      if (v60 != 1)
      {
LABEL_148:
        if (!v252[5] && v154 == 1)
        {
          v109 = [(NSString *)v55->_string substringWithRange:peekIndex3, 1];
          v110 = v252[5];
          v252[5] = v109;

          v111 = v252[5];
          letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
          LODWORD(v111) = [v111 rangeOfCharacterFromSet:letterCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

          if (v111)
          {
            v113 = v252[5];
            v252[5] = 0;
          }
        }

        v114 = (*(v155 + 2))(v155, 2, v236[3], 0, *(*(&v257 + 1) + 40));
        goto LABEL_98;
      }
    }

LABEL_153:
    v115 = (*(v155 + 2))(v155, 35, v236[3], 0, 0);
    normalized2 = [*(*(&v257 + 1) + 40) normalized];
    [v115 setNormalizedText:normalized2];

    goto LABEL_98;
  }

  v56 = [v240[5] length] + peekIndex3;
  v223 = 0;
  v224 = &v223;
  v225 = 0x2020000000;
  v226 = v56;
  if ([v240[5] rangeOfCharacterFromSet:newlineSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    tokenType2 = 32;
    goto LABEL_96;
  }

  if ([v240[5] rangeOfCharacterFromSet:whitespaceSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    string4 = [(CalculateTokenizer *)i string];
    v222[0] = MEMORY[0x1E69E9820];
    v222[1] = 3221225472;
    v222[2] = __36__CalculateTokenizer__findNextToken__block_invoke_4;
    v222[3] = &unk_1E815CA08;
    v222[4] = &v223;
    [Trie enumerateCharactersInKey:string4 range:peekIndex3 usingBlock:v154, v222];

    v56 = v224[3];
    tokenType2 = 1;
    goto LABEL_96;
  }

  v57 = [digitToCharacterType objectForKeyedSubscript:v240[5]];
  if (v57)
  {
  }

  else if ([v240[5] rangeOfCharacterFromSet:i->_localizedDecimalSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_175;
  }

  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  v70 = v240[5];
  v71 = [digitToCharacterType objectForKeyedSubscript:v70];
  v72 = v71;
  if (v71)
  {
    integerValue = [v71 integerValue];
  }

  else if ([v70 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v70, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v70 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v70 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        integerValue = 1;
      }

      else
      {
        integerValue = 4;
      }
    }

    else
    {
      integerValue = 3;
    }
  }

  else
  {
    integerValue = 2;
  }

  v221 = integerValue;
  v214 = 0;
  v215 = &v214;
  v216 = 0x2020000000;
  v74 = i;
  v217 = [v240[5] rangeOfCharacterFromSet:i->_localizedDecimalSet] == 0x7FFFFFFFFFFFFFFFLL;
  v212[0] = 0;
  v212[1] = v212;
  v212[2] = 0x2020000000;
  v213 = 1;
  v210[0] = 0;
  v210[1] = v210;
  v210[2] = 0x2020000000;
  v211 = 0;
  v208[0] = 0;
  v208[1] = v208;
  v208[2] = 0x2020000000;
  v209 = *(v215 + 24);
  v206[0] = 0;
  v206[1] = v206;
  v206[2] = 0x2020000000;
  v207 = 0;
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v205 = 0;
  if ((v215[3] & 1) == 0)
  {
    *(v219 + 6) = 1;
  }

  v75 = 0;
  v229 = 0;
  v230 = &v229;
  v231 = 0x3032000000;
  v232 = __Block_byref_object_copy__886;
  v233 = __Block_byref_object_dispose__887;
  v234 = 0;
  v196 = 0;
  v197 = &v196;
  v198 = 0x3032000000;
  wordBreakIndicesIndex = __Block_byref_object_copy__886;
  v200 = __Block_byref_object_dispose__887;
  v201 = 0;
  if (i->_normalizeNumbers)
  {
    v76 = objc_opt_new();
    v75 = v76;
    if (v215[3])
    {
      v77 = [digitToNormalizedDigit objectForKeyedSubscript:v240[5]];
      v78 = v77;
      if (!v77)
      {
        v78 = v240[5];
      }

      [v75 appendString:v78];
    }

    else
    {
      [v76 appendString:@"."];
    }

    v79 = [digitToNumberingSystem objectForKeyedSubscript:v240[5]];
    v80 = v230[5];
    v230[5] = v79;

    v74 = i;
  }

  v194[0] = 0;
  v194[1] = v194;
  v194[2] = 0x2020000000;
  v195 = 0;
  v190 = 0;
  v191 = &v190;
  v192 = 0x2020000000;
  v193 = 0;
  v184 = 0;
  v185 = &v184;
  v186 = 0x3032000000;
  v187 = __Block_byref_object_copy__886;
  v188 = __Block_byref_object_dispose__887;
  v189 = v240[5];
  v182[0] = 0;
  v182[1] = v182;
  v182[2] = 0x3032000000;
  v182[3] = __Block_byref_object_copy__886;
  v182[4] = __Block_byref_object_dispose__887;
  v183 = 0;
  v178 = 0;
  v179 = &v178;
  v180 = 0x2020000000;
  v181 = v56;
  if (v74->_normalizeNumbers && *(v219 + 6) != 5)
  {
    v195 = 1;
  }

  v224[3] = v56;
  string5 = [(CalculateTokenizer *)v74 string];
  v161[0] = MEMORY[0x1E69E9820];
  v161[1] = 3221225472;
  v161[2] = __36__CalculateTokenizer__findNextToken__block_invoke_5;
  v161[3] = &unk_1E815CA30;
  v163 = &v218;
  v161[4] = v74;
  v164 = &v229;
  v165 = v210;
  v166 = &v202;
  v167 = v206;
  v168 = v194;
  v169 = &v190;
  v170 = &v196;
  v82 = v75;
  v162 = v82;
  v171 = v208;
  v172 = v182;
  v173 = &v214;
  v174 = v212;
  v175 = &v184;
  v176 = &v223;
  v177 = &v178;
  [Trie enumerateCharactersInKey:string5 range:v56 usingBlock:stringLength - v56, v161];

  if (v224[3] == peekIndex3 + 1 && [v240[5] isEqualToString:@"."])
  {
    v83 = (*(v155 + 2))(v155, 6, v224[3], v240[5], 0);
    goto LABEL_173;
  }

  if ((v203[3] & 1) != 0 || [v185[5] isEqualToString:{@", "}])
  {
    --v224[3];
    if (i->_normalizeNumbers)
    {
      [v82 deleteCharactersInRange:{objc_msgSend(v82, "length") - 1, 1}];
    }
  }

  v84 = v224[3];
  if (v84 <= [(CalculateTokenizer *)i peekIndex])
  {
    v108 = 1;
    goto LABEL_174;
  }

  lastToken = [(CalculateTokenizer *)i lastToken];
  if (!lastToken)
  {
    goto LABEL_162;
  }

  lastToken2 = [(CalculateTokenizer *)i lastToken];
  v87 = [lastToken2 tokenType] == 2;

  if (!v87)
  {
    goto LABEL_162;
  }

  v153 = 0;
  v149 = 0;
  v150 = 0;
  v88 = i;
  while (2)
  {
    lastToken3 = [(CalculateTokenizer *)v88 lastToken];
    ranks3 = [lastToken3 ranks];
    v90Ranks = [ranks3 ranks];
    v151 = [v90Ranks count];

    if (v151 <= v153)
    {
      v88 = i;
      goto LABEL_155;
    }

    lastToken4 = [(CalculateTokenizer *)i lastToken];
    ranks4 = [lastToken4 ranks];
    v93Ranks = [ranks4 ranks];
    v95 = [v93Ranks objectAtIndexedSubscript:v153];
    v96 = [v95 unitID] < 1;

    if (v96)
    {
      goto LABEL_143;
    }

    unitsInfo = [(CalculateTokenizer *)i unitsInfo];
    lastToken5 = [(CalculateTokenizer *)i lastToken];
    ranks5 = [lastToken5 ranks];
    v99Ranks = [ranks5 ranks];
    v101 = [v99Ranks objectAtIndexedSubscript:v153];
    v102 = [unitsInfo objectAtIndexedSubscript:{objc_msgSend(v101, "unitID")}];
    typeInfo = [v102 typeInfo];
    isCurrency = [typeInfo isCurrency];

    if (!isCurrency)
    {
      v150 = 1;
LABEL_143:
      v88 = i;
      goto LABEL_144;
    }

    v88 = i;
    if ((v150 & 1) == 0)
    {
      goto LABEL_155;
    }

    string6 = [(CalculateTokenizer *)i string];
    peekIndex4 = [(CalculateTokenizer *)i peekIndex];
    v107 = [string6 substringWithRange:{peekIndex4, v224[3] - -[CalculateTokenizer peekIndex](i, "peekIndex")}];

    v88 = i;
    if ([v107 isEqualToString:@"2"] & 1) != 0 || (objc_msgSend(v107, "isEqualToString:", @"3"))
    {
      v150 = 1;
      v149 = v107;
LABEL_144:
      ++v153;
      continue;
    }

    break;
  }

  v149 = v107;
LABEL_155:
  lastToken6 = [(CalculateTokenizer *)v88 lastToken];
  text = [lastToken6 text];
  lastToken7 = [(CalculateTokenizer *)i lastToken];
  text2 = [lastToken7 text];
  peekTokens = [text substringFromIndex:{objc_msgSend(text2, "length") - 1}];

  if ([peekTokens rangeOfCharacterFromSet:symbolSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v122 = 0;
LABEL_164:

    v127 = v149;
    goto LABEL_165;
  }

  v122 = 0;
  if ([peekTokens rangeOfCharacterFromSet:punctuationSet] != 0x7FFFFFFFFFFFFFFFLL || v151 > v153)
  {
    goto LABEL_164;
  }

  string7 = [(CalculateTokenizer *)i string];
  peekIndex5 = [(CalculateTokenizer *)i peekIndex];
  v125 = [string7 substringWithRange:{peekIndex5, v224[3] - -[CalculateTokenizer peekIndex](i, "peekIndex")}];

  if (([v125 isEqualToString:@"2"] & 1) == 0 && !objc_msgSend(v125, "isEqualToString:", @"3"))
  {
    v122 = 0;
    v149 = v125;
    goto LABEL_164;
  }

  v149 = v125;

  if (v149)
  {
    peekTokens = [(CalculateTokenizer *)i peekTokens];
    v126 = [CalculateToken tokenWithType:11 range:[(CalculateTokenizer *)i peekIndex] text:0 ranks:@"^", 0];
    [peekTokens addObject:v126];

    v122 = v149;
    goto LABEL_164;
  }

LABEL_162:
  v127 = 0;
  v122 = 0;
LABEL_165:
  v128 = v127;
  v129 = (*(v155 + 2))(v155, 3, v224[3]);
  v130 = v129;
  if (i->_normalizeNumbers)
  {
    [v129 setNormalizedText:v82];
    [v130 setNumberingSystem:v230[5]];
  }

  if (v191[6] >= 1 && v179[3] > v224[3])
  {
    string8 = [(CalculateTokenizer *)i string];
    v132 = v224[3];
    v133 = v179[3] - v132;
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __36__CalculateTokenizer__findNextToken__block_invoke_6;
    v159[3] = &unk_1E815CA58;
    v159[4] = i;
    v134 = v155;
    v160 = v134;
    [Trie enumerateCharactersInKey:string8 range:v132 usingBlock:v133, v159];

    v135 = v179[3];
    if (v135 > [(CalculateTokenizer *)i peekIndex])
    {
      v136 = (*(v155 + 2))(v134, 3, v179[3], 0, 0);
    }
  }

LABEL_173:
  v108 = 0;
LABEL_174:

  _Block_object_dispose(&v178, 8);
  _Block_object_dispose(v182, 8);

  _Block_object_dispose(&v184, 8);
  _Block_object_dispose(&v190, 8);
  _Block_object_dispose(v194, 8);
  _Block_object_dispose(&v196, 8);

  _Block_object_dispose(&v229, 8);
  _Block_object_dispose(&v202, 8);
  _Block_object_dispose(v206, 8);
  _Block_object_dispose(v208, 8);
  _Block_object_dispose(v210, 8);
  _Block_object_dispose(v212, 8);
  _Block_object_dispose(&v214, 8);
  _Block_object_dispose(&v218, 8);
  v55 = i;
  if (v108)
  {
LABEL_175:
    v137 = *(*(&v257 + 1) + 40);
    if (v137 && [v137 tokenType] == 33)
    {
      tokenType2 = [*(*(&v257 + 1) + 40) tokenType];
      v56 = v236[3];
      goto LABEL_96;
    }

    trie = v55->_trie;
    v139 = [CalculateTokenizer localizedSymbolsTrie:v55->_locales];
    if (trie != v139)
    {

      goto LABEL_180;
    }

    v144 = v55->_unitsInfo == 0;

    if (!v144)
    {
      v145 = +[AvailableUnitRanks shared];
      v146 = [v145 ranksWithLocales:i->_locales];
      v147 = i->_trie;
      i->_trie = v146;

      [(CalculateTokenizer *)i _findNextToken];
      goto LABEL_97;
    }

LABEL_180:
    if ([(CalculateTokenizer *)i peekIndex]+ 1 != v156)
    {
      goto LABEL_184;
    }

    v140 = characterTypeForCharacter(v240[5]);
    if (v140 == 2)
    {
      v141 = 54;
LABEL_190:
      v148 = (*(v155 + 2))(v155, v141, v156, 0, 0);
    }

    else
    {
      if (v140 == 3)
      {
        v141 = 53;
        goto LABEL_190;
      }

LABEL_184:
      if (!v252[5])
      {
        v154 = [(NSString *)i->_string substringWithRange:peekIndex3, v154];
        v143 = v252[5];
        v252[5] = v154;
      }

      tokenType2 = 52;
      v56 = v156;
LABEL_96:
      v65 = (*(v155 + 2))(v155, tokenType2, v56, 0, 0);
    }
  }

LABEL_97:
  _Block_object_dispose(&v223, 8);
LABEL_98:
  _Block_object_dispose(&v235, 8);
  _Block_object_dispose(&v239, 8);

  _Block_object_dispose(&v257, 8);
LABEL_99:

  _Block_object_dispose(&v247, 8);
  _Block_object_dispose(&v251, 8);

LABEL_100:
  v66 = *MEMORY[0x1E69E9840];
}

- (void)update
{
  v50 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    [(CalculateTokenizer *)self _loadIfNeeded];
    wordBreakIndices = [(CalculateTokenizer *)self wordBreakIndices];
    [wordBreakIndices removeAllObjects];

    locales = [(CalculateTokenizer *)self locales];
    if (![locales count])
    {
      v5 = +[Localize systemLocales];

      locales = v5;
    }

    firstObject = [locales firstObject];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = locales;
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v46;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          if (([v12 usesWhitespace] & 1) == 0)
          {
            v13 = v12;

            firstObject = v13;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v14 = self->_numberFormatter;
    if (!v14)
    {
      firstObject2 = [v7 firstObject];
      v14 = [CalculateResult performSelector:sel_defaultNumberFormatter_ withObject:firstObject2];
    }

    groupingSeparator = [(NSNumberFormatter *)v14 groupingSeparator];
    groupingSeparator = self->_groupingSeparator;
    self->_groupingSeparator = groupingSeparator;

    decimalSeparator = [(NSNumberFormatter *)v14 decimalSeparator];
    decimalSeparator = self->_decimalSeparator;
    self->_decimalSeparator = decimalSeparator;

    currencyGroupingSeparator = [(NSNumberFormatter *)v14 currencyGroupingSeparator];
    currencyGroupingSeparator = self->_currencyGroupingSeparator;
    self->_currencyGroupingSeparator = currencyGroupingSeparator;

    v43 = v14;
    currencyDecimalSeparator = [(NSNumberFormatter *)v14 currencyDecimalSeparator];
    currencyDecimalSeparator = self->_currencyDecimalSeparator;
    self->_currencyDecimalSeparator = currencyDecimalSeparator;

    v24 = objc_opt_new();
    localizedGroupingSet = self->_localizedGroupingSet;
    self->_localizedGroupingSet = v24;

    if (self->_groupingSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:?];
    }

    if (self->_currencyGroupingSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:?];
    }

    if ([(NSString *)self->_groupingSeparator isEqualToString:@"’"]|| [(NSString *)self->_currencyGroupingSeparator isEqualToString:@"’"])
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:@"'"];
    }

    if ([(NSString *)self->_groupingSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)self->_currencyGroupingSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:@" "];
    }

    if (![(NSString *)self->_decimalSeparator isEqualToString:@", "]&& ![(NSString *)self->_currencyDecimalSeparator isEqualToString:@", "])
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:@", "];
    }

    v26 = objc_opt_new();
    localizedDecimalSet = self->_localizedDecimalSet;
    self->_localizedDecimalSet = v26;

    if (self->_decimalSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:?];
    }

    if (self->_currencyDecimalSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:?];
    }

    if ([(NSString *)self->_decimalSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)self->_currencyDecimalSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:@" "];
    }

    if (![(NSString *)self->_groupingSeparator isEqualToString:@"."]&& ![(NSString *)self->_currencyGroupingSeparator isEqualToString:@"."])
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:@"."];
    }

    v28 = *MEMORY[0x1E695E480];
    string = [(CalculateTokenizer *)self string];
    v51.location = self->_startIndex;
    v51.length = self->_stringLength - v51.location;
    v30 = CFStringTokenizerCreate(v28, string, v51, 0, firstObject);

    startIndex = [(CalculateTokenizer *)self startIndex];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __28__CalculateTokenizer_update__block_invoke;
    aBlock[3] = &unk_1E815C850;
    aBlock[4] = self;
    v32 = _Block_copy(aBlock);
    while (CFStringTokenizerAdvanceToNextToken(v30))
    {
      stringLength = [(CalculateTokenizer *)self stringLength];
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v30);
      if (CurrentTokenRange.location != -1)
      {
        stringLength = CurrentTokenRange.location + CurrentTokenRange.length;
      }

      v32[2](v32, startIndex, stringLength);
      startIndex = stringLength;
    }

    wordBreakIndices2 = [(CalculateTokenizer *)self wordBreakIndices];
    if ([wordBreakIndices2 count])
    {
      [(CalculateTokenizer *)self wordBreakIndices];
      v36 = v42 = firstObject;
      [v36 lastObject];
      v38 = v37 = v7;
      intValue = [v38 intValue];
      stringLength2 = [(CalculateTokenizer *)self stringLength];

      v7 = v37;
      firstObject = v42;

      if (stringLength2 <= intValue)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v32[2](v32, startIndex, [(CalculateTokenizer *)self stringLength]);
LABEL_49:
    CFRelease(v30);
    [(CalculateTokenizer *)self reset];
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_loadIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CalculateTokenizer__loadIfNeeded__block_invoke;
  block[3] = &unk_1E815C940;
  block[4] = self;
  if (_loadIfNeeded_onceToken[0] != -1)
  {
    dispatch_once(_loadIfNeeded_onceToken, block);
  }

  if (!self->_trie)
  {
    if (self->_unitsInfo)
    {
      v3 = +[AvailableUnitRanks shared];
      v4 = [v3 ranksWithLocales:self->_locales cachedOnly:1];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = [CalculateTokenizer localizedSymbolsTrie:self->_locales];
      }

      trie = self->_trie;
      self->_trie = v6;
    }

    else
    {
      v7 = [CalculateTokenizer localizedSymbolsTrie:self->_locales];
      v3 = self->_trie;
      self->_trie = v7;
    }
  }
}

void __35__CalculateTokenizer__loadIfNeeded__block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v2 = newlineSet;
  newlineSet = v1;

  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 addCharactersInString:@"\u061C"];
  [v4 addCharactersInString:@"\u200E"];
  [v4 addCharactersInString:@"\u200F"];
  [v4 addCharactersInString:@"\u202D"];
  [v4 addCharactersInString:@"\u202E"];
  v43 = v4;
  v5 = [v4 copy];
  v6 = whitespaceSet;
  whitespaceSet = v5;

  v7 = objc_opt_new();
  v8 = &unk_1EDC30000;
  v9 = digitToCharacterType;
  digitToCharacterType = v7;

  v10 = objc_opt_new();
  v11 = digitToNormalizedDigit;
  digitToNormalizedDigit = v10;

  v12 = objc_opt_new();
  v13 = digitToNumberingSystem;
  digitToNumberingSystem = v12;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = +[Localize numberingSystems];
  v46 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v46)
  {
    v45 = *v55;
    v14 = 5;
    do
    {
      v15 = 0;
      do
      {
        if (*v55 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v15;
        v16 = *(*(&v54 + 1) + 8 * v15);
        v48 = v14;
        v17 = [MEMORY[0x1E696AD98] numberWithInt:v14];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v49 = [v16 digits];
        v18 = [v49 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v18)
        {
          v19 = v18;
          LODWORD(v20) = 0;
          v21 = *v51;
          do
          {
            v22 = 0;
            v20 = v20;
            do
            {
              if (*v51 != v21)
              {
                objc_enumerationMutation(v49);
              }

              v23 = *(*(&v50 + 1) + 8 * v22);
              [v8[466] setObject:v17 forKeyedSubscript:v23];
              [digitToNumberingSystem setObject:v16 forKeyedSubscript:v23];
              if (v20 <= 9)
              {
                [&unk_1F419A6F0 objectAtIndexedSubscript:v20];
                v25 = v24 = v8;
                [digitToNormalizedDigit setObject:v25 forKeyedSubscript:v23];

                v8 = v24;
              }

              ++v20;
              ++v22;
            }

            while (v19 != v22);
            v19 = [v49 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v19);
        }

        v14 = (v48 + 1);

        v15 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v46);
  }

  v26 = objc_opt_new();
  [v26 addCharactersInRange:{8304, 16}];
  [v26 addCharactersInString:@"¹²³"];
  v27 = [v26 copy];
  v28 = superscriptSet;
  superscriptSet = v27;

  v29 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+＋➕"];
  v30 = addSet;
  addSet = v29;

  v31 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-﹣－➖–−"];
  v32 = subtractSet;
  subtractSet = v31;

  v33 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"=＝"];
  v34 = equalSet;
  equalSet = v33;

  v35 = *(a1 + 32);
  [objc_opt_class() loadSymbolSet];
  v36 = *(a1 + 32);
  [objc_opt_class() loadPunctuationSet];
  v37 = [MEMORY[0x1E696AB08] characterSetWithRange:{1424, 112}];
  v38 = hebrewSet;
  hebrewSet = v37;

  v39 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"  "];
  v40 = nbspSet;
  nbspSet = v39;

  v41 = *MEMORY[0x1E69E9840];
}

+ (void)loadSymbolSet
{
  if (loadSymbolSet_onceToken[0] != -1)
  {
    dispatch_once(loadSymbolSet_onceToken, &__block_literal_global_89);
  }
}

void __35__CalculateTokenizer_loadSymbolSet__block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  [v3 addCharactersInString:@"\\#*×⋅⌈⌉⌊⌋＊"];
  [v3 addCharactersInString:@"+＋➕"];
  [v3 addCharactersInString:@"-﹣－➖–−"];
  [v3 addCharactersInString:@"/÷⁄／"];
  objc_msgSend(v3, "addCharactersInString:", @"(（");
  [v3 addCharactersInString:@"）"]);
  [v3 addCharactersInString:@"^"];
  [v3 addCharactersInString:@"<≪"];
  [v3 addCharactersInString:@">≫"];
  [v3 addCharactersInString:@"<⋘"];
  [v3 addCharactersInString:@">⋙"];
  [v3 addCharactersInString:@"%٪"];
  [v3 addCharactersInString:@"&"];
  [v3 addCharactersInString:@"|"];
  [v3 addCharactersInString:@"=＝"];
  [v3 addCharactersInString:{@", "}];
  [v3 addCharactersInString:@"!"];
  [v3 addCharactersInString:@"πΠ𝜋𝝥𝝅𝚷"];
  [v3 addCharactersInString:@"{"];
  [v3 addCharactersInString:@"}"];
  [v3 addCharactersInString:@"["];
  [v3 addCharactersInString:@"]"];
  v1 = [v3 copy];
  v2 = symbolSet;
  symbolSet = v1;
}

+ (void)loadPunctuationSet
{
  if (loadPunctuationSet_onceToken[0] != -1)
  {
    dispatch_once(loadPunctuationSet_onceToken, &__block_literal_global_159);
  }
}

uint64_t __40__CalculateTokenizer_loadPunctuationSet__block_invoke()
{
  punctuationSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSSet)nonTrigFunctionSet
{
  if (nonTrigFunctionSet_onceToken != -1)
  {
    dispatch_once(&nonTrigFunctionSet_onceToken, &__block_literal_global_879);
  }

  v3 = nonTrigFunctionSet_nonTrigFunctionSet;

  return v3;
}

uint64_t __40__CalculateTokenizer_nonTrigFunctionSet__block_invoke()
{
  nonTrigFunctionSet_nonTrigFunctionSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"√", @"sqrt", @"∛", @"cbrt", @"ln", @"log", @"pow", @"root", @"fact", @"exp", @"flip", @"ceil", @"floor", @"round", @"rint", @"abs", @"fabs", @"j0", @"j1", @"y0", @"y1", @"erf", @"erfc", @"fmod", @"hypot", @"rem", @"min", @"max", @"lgamma", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __45__CalculateTokenizer_laTeXNonTrigFunctionSet__block_invoke()
{
  laTeXNonTrigFunctionSet_nonTrigFunctionSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"\\sqrt", @"\\lg", @"\\log", @"\\ln", @"\\min", @"\\max", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSSet)laTeXNonTrigFunctionSet
{
  if (laTeXNonTrigFunctionSet_onceToken != -1)
  {
    dispatch_once(&laTeXNonTrigFunctionSet_onceToken, &__block_literal_global_971);
  }

  v3 = laTeXNonTrigFunctionSet_nonTrigFunctionSet;

  return v3;
}

+ (NSSet)laTeXTrigonometricSet
{
  if (laTeXTrigonometricSet_onceToken != -1)
  {
    dispatch_once(&laTeXTrigonometricSet_onceToken, &__block_literal_global_991);
  }

  v3 = laTeXTrigonometricSet_trigonometricSet;

  return v3;
}

uint64_t __43__CalculateTokenizer_laTeXTrigonometricSet__block_invoke()
{
  laTeXTrigonometricSet_trigonometricSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"\\cos", @"\\sin", @"\\tan", @"\\arccos", @"\\arcsin", @"\\arctan", @"\\cosh", @"\\sinh", @"\\tanh", @"\\sec", @"\\csc", @"\\cot", @"\\sech", @"\\csch", @"\\coth", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __28__CalculateTokenizer_update__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6 = [*(a1 + 32) string];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__CalculateTokenizer_update__block_invoke_2;
  v9[3] = &unk_1E815C968;
  v9[4] = *(a1 + 32);
  v9[5] = v10;
  [Trie enumerateCharactersInKey:v6 range:a2 usingBlock:a3 - a2, v9];

  v7 = [*(a1 + 32) wordBreakIndices];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v7 addObject:v8];

  _Block_object_dispose(v10, 8);
}

- (void)reset
{
  self->_peekIndex = self->_startIndex;
  [(NSMutableArray *)self->_peekTokens removeAllObjects];
  lastToken = self->_lastToken;
  self->_lastToken = 0;

  prevToken2 = self->_prevToken2;
  self->_prevToken2 = 0;

  prevToken = self->_prevToken;
  self->_prevToken = 0;

  self->_prevTokenCount = 0;
  self->_graphableType = 0;
  self->_foundGraphableValue = 0;
  declaredVariables = self->_declaredVariables;
  self->_declaredVariables = 0;

  declaredVariable = self->_declaredVariable;
  self->_declaredVariable = 0;

  suggestedGraphableVariable = self->_suggestedGraphableVariable;
  self->_suggestedGraphableVariable = 0;

  self->_foundGraphableVariable = 0;

  [(CalculateTokenizer *)self setWordBreakIndicesIndex:0];
}

- (void)dealloc
{
  variableBuffer = self->_variableBuffer;
  if (variableBuffer)
  {
    free(variableBuffer);
    self->_variableBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CalculateTokenizer;
  [(CalculateTokenizer *)&v4 dealloc];
}

- (void)setSingleLetterVariables:(id *)variables
{
  v3 = *&variables->var0[16];
  *self->_singleLetterVariables.letters = *variables->var0;
  *&self->_singleLetterVariables.letters[16] = v3;
}

- ($0F7EB6B36CDCC9CA6BC7BE76F6527CA8)singleLetterVariables
{
  v3 = *self[9].var0;
  *retstr->var0 = *&self[8].var0[16];
  *&retstr->var0[16] = v3;
  return self;
}

- (id)peekNonWhitespaceToken
{
  peekToken = [(CalculateTokenizer *)self peekToken];
  if ([peekToken tokenType] == 1)
  {
    v4 = [(CalculateTokenizer *)self peekTokenAtOffset:1];
  }

  else
  {
    v4 = peekToken;
  }

  v5 = v4;

  return v5;
}

- (id)peekTokenAtOffset:(int64_t)offset
{
  peekTokens = [(CalculateTokenizer *)self peekTokens];
  v6 = [peekTokens count];

  if (v6 <= offset)
  {
    v7 = offset - v6 + 1;
    do
    {
      [(CalculateTokenizer *)self _findNextToken];
      --v7;
    }

    while (v7);
  }

  if (offset < 0 || (-[CalculateTokenizer peekTokens](self, "peekTokens"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 <= offset))
  {
    v11 = 0;
  }

  else
  {
    peekTokens2 = [(CalculateTokenizer *)self peekTokens];
    v11 = [peekTokens2 objectAtIndexedSubscript:offset];
  }

  return v11;
}

id __36__CalculateTokenizer__findNextToken__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = [*(a1 + 32) peekIndex];
  v12 = a3 - [*(a1 + 32) peekIndex];
  if (!v9)
  {
    v13 = [*(a1 + 32) string];
    v9 = [v13 substringWithRange:{v11, v12}];
  }

  v14 = [CalculateToken tokenWithType:a2 range:v11 text:v12 ranks:v9, v10];
  v15 = [*(a1 + 32) peekTokens];
  [v15 addObject:v14];

  [*(a1 + 32) setPeekIndex:a3];
  v16 = *(a1 + 32);
  if (v16[9] == 1 && [v16 isGraphable] && objc_msgSend(v14, "isOperand"))
  {
    *(*(a1 + 32) + 10) = 1;
  }

  if (!*(*(*(a1 + 40) + 8) + 40) || a2 != 2 && a2 != 52 && *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    goto LABEL_19;
  }

  v17 = *(a1 + 32);
  if (!v17[9] || ([v17 _isGraphableReserved] & 1) != 0)
  {
    goto LABEL_19;
  }

  v18 = *(a1 + 32);
  if ((*(v18 + 15) & 1) == 0)
  {
    *(v18 + 15) = 1;
    v21 = *(a1 + 32);
    v22 = *(*(*(a1 + 40) + 8) + 40);
    v20 = *(v21 + 88);
    *(v21 + 88) = v22;
    goto LABEL_17;
  }

  if (([*(*(*(a1 + 40) + 8) + 40) isEqualToString:*(v18 + 88)] & 1) == 0)
  {
    v19 = *(a1 + 32);
    v20 = *(v19 + 88);
    *(v19 + 88) = 0;
LABEL_17:
  }

  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;

LABEL_19:
  if (a2 == 3 || [CalculateToken isOpen:a2])
  {
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    goto LABEL_49;
  }

  if (a2 == 52 || a2 == 5)
  {
LABEL_21:
    v25 = [*(*(a1 + 32) + 200) isMaybeX];
    if (a2 == 5)
    {
      v25 = ([*(*(a1 + 32) + 200) tokenType] != 39) & v25;
    }

    if ([*(*(a1 + 32) + 208) isOperand])
    {
      if (!v25)
      {
LABEL_28:
        if (a2 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_29;
      }
    }

    else if ((+[CalculateToken isClose:](CalculateToken, "isClose:", [*(*(a1 + 32) + 208) tokenType]) & v25 & 1) == 0)
    {
      goto LABEL_28;
    }

    [*(*(a1 + 32) + 200) setTokenType:6];
    goto LABEL_28;
  }

LABEL_29:
  objc_storeStrong((*(a1 + 32) + 208), *(*(a1 + 32) + 200));
  objc_storeStrong((*(a1 + 32) + 200), v14);
  ++*(*(a1 + 32) + 16);
  v26 = *(a1 + 32);
  if (v26[9] == 1 && ([v26 isGraphable] & 1) == 0)
  {
    v27 = *(a1 + 32);
    if (*(v27 + 16) == 2 && [*(v27 + 200) tokenType] == 31 && objc_msgSend(*(*(a1 + 32) + 208), "tokenType") == 39)
    {
      v28 = [*(*(a1 + 32) + 208) text];
      v29 = *(a1 + 32);
      v30 = *(v29 + 72);
      *(v29 + 72) = v28;

      [*(*(a1 + 32) + 208) range];
      if (v31 == 1)
      {
        v32 = [*(*(a1 + 32) + 208) text];
        if ([v32 isEqualToString:@"y"])
        {

LABEL_42:
          *(*(a1 + 32) + 15) = 1;
          *(*(a1 + 32) + 80) = 1;
          v35 = @"x";
LABEL_48:
          [*(a1 + 32) addDeclaredVariable:v35];
          goto LABEL_49;
        }

        v33 = [*(*(a1 + 32) + 208) text];
        v34 = [v33 isEqualToString:@"Y"];

        if (v34)
        {
          goto LABEL_42;
        }
      }

      [*(*(a1 + 32) + 208) range];
      if (v36 != 1)
      {
        goto LABEL_49;
      }

      v37 = [*(*(a1 + 32) + 208) text];
      if ([v37 isEqualToString:@"z"])
      {
      }

      else
      {
        v38 = [*(*(a1 + 32) + 208) text];
        v39 = [v38 isEqualToString:@"Z"];

        if (!v39)
        {
          goto LABEL_49;
        }
      }

      *(*(a1 + 32) + 15) = 1;
      *(*(a1 + 32) + 80) = 2;
      [*(a1 + 32) addDeclaredVariable:@"x"];
      v35 = @"y";
      goto LABEL_48;
    }
  }

LABEL_49:

  return v14;
}

void __36__CalculateTokenizer__findNextToken__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if ([v7 rangeOfCharacterFromSet:whitespaceSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_5:
      *a5 = 1;
      goto LABEL_7;
    }

    if ([v7 rangeOfCharacterFromSet:equalSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_7:
}

void __36__CalculateTokenizer__findNextToken__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = v9;
  if (*(a1 + 96) == 1)
  {
    obja = v9;
    v11 = [v9 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];
    v12 = [v11 lowercaseString];

    objb = [CalculateTokenizer prepareString:v12];

    v10 = objb;
  }

  obj = v10;
  if (([(TrieNode *)*(*(*(a1 + 40) + 8) + 40) visit:v10]& 1) == 0)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v27 = [digitToNormalizedDigit objectForKeyedSubscript:obj];
      if (v27 && ([(TrieNode *)*(*(*(a1 + 40) + 8) + 40) visit:v27]& 1) != 0)
      {

        goto LABEL_4;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = *(*(a1 + 48) + 8);
    v31 = *(v29 + 40);
    v30 = (v29 + 40);
    if (!v31)
    {
      objc_storeStrong(v30, obj);
    }

    *a5 = 1;
    goto LABEL_28;
  }

LABEL_4:
  v13 = *(*(a1 + 48) + 8);
  v15 = *(v13 + 40);
  v14 = (v13 + 40);
  if (!v15)
  {
    objc_storeStrong(v14, obj);
  }

  v16 = a3 + a4;
  if (*(*(a1 + 32) + 11) == 1 && v16 == *(a1 + 88) + 2 && [*(*(*(a1 + 48) + 8) + 40) isEqualToString:@"\\"] && objc_msgSend(obj, "isEqualToString:", @" ""))
  {
    v17 = [(TrieNode *)*(*(*(a1 + 40) + 8) + 40) object];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 64) + 8) + 24) = v16;
  }

  if (v16 == *(*(*(a1 + 72) + 8) + 24))
  {
    v20 = [(TrieNode *)*(*(*(a1 + 40) + 8) + 40) object];
    if (v20)
    {
      v21 = *(*(*(a1 + 64) + 8) + 24);

      if (v16 > v21)
      {
        v22 = [(TrieNode *)*(*(*(a1 + 40) + 8) + 40) object];
        v23 = v22;
        if ((*(*(a1 + 32) + 11) & 1) != 0 || ([v22 isLaTeX] & 1) == 0)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v23);
          *(*(*(a1 + 64) + 8) + 24) = v16;
        }
      }
    }

    v24 = ++*(*(*(a1 + 80) + 8) + 24);
    v25 = [*(a1 + 32) wordBreakIndices];
    v26 = [v25 count];

    if (v24 < v26)
    {
      v27 = [*(a1 + 32) wordBreakIndices];
      v28 = [v27 objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
      *(*(*(a1 + 72) + 8) + 24) = [v28 intValue];

LABEL_28:
    }
  }
}

uint64_t __36__CalculateTokenizer__findNextToken__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 rangeOfCharacterFromSet:whitespaceSet];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a5 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + a4;
  }

  return result;
}

void __36__CalculateTokenizer__findNextToken__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v38 = a2;
  v10 = [digitToCharacterType objectForKeyedSubscript:v38];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else if ([v38 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v38, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v38 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v38 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 1;
      }

      else
      {
        v12 = 4;
      }
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 2;
  }

  v13 = *(*(a1 + 48) + 8);
  if (*(v13 + 24) == 1)
  {
    *(v13 + 24) = v12;
  }

  if (*(*(a1 + 32) + 8) == 1 && !*(*(*(a1 + 56) + 8) + 40))
  {
    v14 = [digitToNumberingSystem objectForKeyedSubscript:v38];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = [digitToCharacterType objectForKeyedSubscript:v38];

  if (v17)
  {
    if (v12 == *(*(*(a1 + 48) + 8) + 24))
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
      if (v12 != 5)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
      }

      v18 = *(*(a1 + 96) + 8);
      v19 = *(v18 + 24);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 == v20)
      {
        *(v18 + 24) = v21;
        if (*(*(a1 + 32) + 8) == 1)
        {
          v22 = *(*(*(a1 + 104) + 8) + 40);
          if (!v22)
          {
            v23 = objc_opt_new();
            v24 = *(*(a1 + 104) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            v22 = *(*(*(a1 + 104) + 8) + 40);
          }

          v26 = [digitToNormalizedDigit objectForKeyedSubscript:v38];
          if (v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v38;
          }

          [v22 appendString:v27];

          if (!*(*(*(a1 + 96) + 8) + 24))
          {
            [*(a1 + 40) appendString:*(*(*(a1 + 104) + 8) + 40)];
            v28 = *(*(a1 + 104) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = 0;
          }
        }

        goto LABEL_61;
      }

LABEL_37:
      if (*(*(a1 + 32) + 8) == 1)
      {
        v30 = *(a1 + 40);
        v31 = [digitToNormalizedDigit objectForKeyedSubscript:v38];
        if (v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v38;
        }

        [v30 appendString:v32];
      }

      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1 && [v38 rangeOfCharacterFromSet:*(*(a1 + 32) + 248)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = *(*(*(a1 + 120) + 8) + 40);
    if (v34 && ([v34 isEqualToString:v38] & 1) == 0)
    {
      goto LABEL_59;
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 120) + 8) + 40), a2);
    if ([v38 isEqualToString:{@", "}])
    {
      *(*(*(a1 + 96) + 8) + 24) = 3;
    }

    else
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
    }

    goto LABEL_61;
  }

  if (*(*(*(a1 + 128) + 8) + 24) == 1 && [v38 rangeOfCharacterFromSet:*(*(a1 + 32) + 256)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(*(*(a1 + 96) + 8) + 24) < 1)
    {
      *(*(*(a1 + 128) + 8) + 24) = 0;
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 112) + 8) + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
      if (*(*(a1 + 32) + 8) == 1)
      {
        [*(a1 + 40) appendString:@"."];
        if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0 && ([v38 isEqualToString:@"."] & 1) == 0)
        {
          *(*(*(a1 + 88) + 8) + 24) = 1;
        }
      }

      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (*(*(*(a1 + 136) + 8) + 24) != 1 || ([v38 isEqualToString:@"e"] & 1) == 0 && !objc_msgSend(v38, "isEqualToString:", @"E"))
  {
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_59;
    }

    if ([v38 rangeOfCharacterFromSet:subtractSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 || [v38 rangeOfCharacterFromSet:addSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_59;
      }

      v33 = v38;
      if (*(*(*(a1 + 96) + 8) + 24) >= 1)
      {
        *a5 = 1;
        goto LABEL_66;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
      if (*(*(a1 + 32) + 8) != 1)
      {
        goto LABEL_61;
      }

      v36 = *(a1 + 40);
      v37 = @"+";
      goto LABEL_71;
    }

    if (*(*(*(a1 + 96) + 8) + 24) >= 1)
    {
      goto LABEL_59;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if (*(*(a1 + 32) + 8) == 1)
    {
      v36 = *(a1 + 40);
      v37 = @"-";
LABEL_71:
      [v36 appendString:v37];
    }

LABEL_61:
    if (*(*(*(a1 + 96) + 8) + 24))
    {
      v35 = a3 + a4;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 144) + 8) + 40), a2);
      v35 = a3 + a4;
      *(*(*(a1 + 152) + 8) + 24) = a3 + a4;
    }

    *(*(*(a1 + 160) + 8) + 24) = v35;
    goto LABEL_65;
  }

  if (*(*(*(a1 + 96) + 8) + 24) < 1)
  {
    *(*(*(a1 + 136) + 8) + 24) = 0;
    *(*(*(a1 + 128) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 112) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    goto LABEL_37;
  }

LABEL_59:
  *a5 = 1;
LABEL_65:
  v33 = v38;
LABEL_66:
}

id __36__CalculateTokenizer__findNextToken__block_invoke_6(uint64_t a1, void *a2, unint64_t a3)
{
  result = [a2 isEqualToString:{@", "}];
  if (result)
  {
    if (a3 > [*(a1 + 32) peekIndex])
    {
      v6 = (*(*(a1 + 40) + 16))();
    }

    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

- (void)setLocales:(id)locales
{
  self->_needsUpdate = 1;
  objc_storeStrong(&self->_locales, locales);

  [(CalculateTokenizer *)self setTrie:0];
}

void __28__CalculateTokenizer_update__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [digitToCharacterType objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else if ([v13 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v13, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v13 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v13 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 1;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 2;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24);
  if (v9)
  {
    if ((v7 & 0xFFFFFFFE) == 2 || v7 != v9)
    {
      v11 = [*(a1 + 32) wordBreakIndices];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v11 addObject:v12];

      v8 = *(*(a1 + 40) + 8);
    }
  }

  *(v8 + 24) = v7;
}

- (void)setVariables:(id)variables
{
  v21 = *MEMORY[0x1E69E9840];
  variablesCopy = variables;
  self->_needsUpdate = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = variablesCopy;
  }

  else
  {
    v5 = 0;
  }

  variables = self->_variables;
  self->_variables = v5;

  lowercasedVariables = self->_lowercasedVariables;
  self->_lowercasedVariables = 0;

  self->_variableBufferLength = 0;
  variableBuffer = self->_variableBuffer;
  if (variableBuffer)
  {
    free(variableBuffer);
    self->_variableBuffer = 0;
  }

  v9 = self->_variables;
  if (v9)
  {
    *self->_singleLetterVariables.letters = 0u;
    *&self->_singleLetterVariables.letters[16] = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(CalculateTokenizer *)self addVariable:*(*(&v16 + 1) + 8 * v14++), v16];
        }

        while (v12 != v14);
        v12 = [(NSDictionary *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    self->_variableBuffer = malloc_type_realloc(self->_variableBuffer, 2 * self->_variableBufferLength + 2, 0x1000040BDFB0063uLL);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addDeclaredVariable:(id)variable
{
  if (self->_findDeclaredVariables)
  {
    lowercaseString = [variable lowercaseString];
    [(CalculateTokenizer *)self addVariable:?];
    lowercasedVariables = self->_lowercasedVariables;
    if (!lowercasedVariables)
    {
      v6 = objc_opt_new();
      v7 = self->_lowercasedVariables;
      self->_lowercasedVariables = v6;

      lowercasedVariables = self->_lowercasedVariables;
    }

    [(NSMutableSet *)lowercasedVariables addObject:lowercaseString];
    declaredVariables = self->_declaredVariables;
    if (!declaredVariables)
    {
      v9 = objc_opt_new();
      v10 = self->_declaredVariables;
      self->_declaredVariables = v9;

      declaredVariables = self->_declaredVariables;
    }

    [(NSSet *)declaredVariables addObject:lowercaseString];
  }
}

- (void)addVariable:(id)variable
{
  variableCopy = variable;
  v4 = [variableCopy length] + 1;
  variableBufferLength = self->_variableBufferLength;
  if (v4 > variableBufferLength)
  {
    self->_variableBufferLength = v4;
  }

  v6 = [variableCopy length] == 1;
  v7 = variableCopy;
  if (v6)
  {
    v8 = [variableCopy characterAtIndex:0];
    v9 = (v8 - 97);
    if (v9 <= 0x19 || (v9 = (v8 - 65), v9 <= 0x19))
    {
      v10 = &self->_singleLetterVariables.letters[v9];
      if (!*v10)
      {
        *v10 = 1;
        ++self->_singleLetterVariables.count;
      }
    }

    v11 = self->_singleLetterVariables.count + 1;
    v7 = variableCopy;
    if (self->_variableBufferLength < v11)
    {
      self->_variableBufferLength = v11;
    }
  }

  lowercaseString = [v7 lowercaseString];
  if (([variableCopy isEqualToString:lowercaseString] & 1) == 0)
  {
    lowercasedVariables = self->_lowercasedVariables;
    if (!lowercasedVariables)
    {
      v14 = objc_opt_new();
      v15 = self->_lowercasedVariables;
      self->_lowercasedVariables = v14;

      lowercasedVariables = self->_lowercasedVariables;
    }

    [(NSMutableSet *)lowercasedVariables addObject:lowercaseString];
  }

  v16 = self->_variableBufferLength;
  if (v16 > variableBufferLength)
  {
    variableBuffer = self->_variableBuffer;
    if (variableBuffer)
    {
      self->_variableBuffer = malloc_type_realloc(variableBuffer, 2 * v16 + 2, 0x1000040BDFB0063uLL);
    }
  }
}

- (void)setGraphableVariable:(id)variable
{
  objc_storeStrong(&self->_graphableVariable, variable);
  variableCopy = variable;
  v6 = [(NSString *)self->_graphableVariable length];

  self->_graphableVariableLength = v6;
}

- (void)setRange:(_NSRange)range
{
  self->_needsUpdate = 1;
  self->_stringLength = range.location + range.length;
  self->_startIndex = range.location;
}

- (_NSRange)range
{
  stringLength = self->_stringLength;
  startIndex = self->_startIndex;
  result.length = stringLength;
  result.location = startIndex;
  return result;
}

- (void)setString:(id)string
{
  self->_needsUpdate = 1;
  objc_storeStrong(&self->_string, string);
  stringCopy = string;
  v6 = [stringCopy length];

  self->_stringLength = v6;
  self->_startIndex = 0;
}

- (CalculateTokenizer)initWithUnits:(id)units
{
  unitsCopy = units;
  v13.receiver = self;
  v13.super_class = CalculateTokenizer;
  v6 = [(CalculateTokenizer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitsInfo, units);
    v8 = objc_opt_new();
    peekTokens = v7->_peekTokens;
    v7->_peekTokens = v8;

    v10 = objc_opt_new();
    wordBreakIndices = v7->_wordBreakIndices;
    v7->_wordBreakIndices = v10;

    v7->_needsUpdate = 1;
    v7->_findDeclaredVariables = 1;
  }

  return v7;
}

+ (int)displayNameExponent:(id)exponent
{
  exponentCopy = exponent;
  if ([exponentCopy hasSuffix:@"2"] & 1) != 0 || (objc_msgSend(exponentCopy, "hasSuffix:", @"²"))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
    if (([exponentCopy hasSuffix:@"3"] & 1) == 0)
    {
      if ([exponentCopy hasSuffix:@"³"])
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

+ (id)tokenizerWithUnits:(id)units
{
  unitsCopy = units;
  v4 = [[CalculateTokenizer alloc] initWithUnits:unitsCopy];

  return v4;
}

+ (NSSet)trigonometricSet
{
  if (trigonometricSet_onceToken != -1)
  {
    dispatch_once(&trigonometricSet_onceToken, &__block_literal_global_969);
  }

  v3 = trigonometricSet_trigonometricSet;

  return v3;
}

uint64_t __38__CalculateTokenizer_trigonometricSet__block_invoke()
{
  trigonometricSet_trigonometricSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"sin", @"cos", @"tan", @"asin", @"acos", @"atan", @"sinh", @"cosh", @"tanh", @"asinh", @"acosh", @"atanh", @"arcsin", @"arccos", @"arctan", @"arcsind", @"arccosd", @"arctand", @"arcsinh", @"arccosh", @"arctanh", @"sind", @"cosd", @"tand", @"asind", @"acosd", @"atand", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)addUnits:(id)units builtIn:(BOOL)in
{
  inCopy = in;
  v29 = *MEMORY[0x1E69E9840];
  unitsCopy = units;
  v6 = +[UnitsInfo converterUnits];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__CalculateTokenizer_addUnits_builtIn___block_invoke;
  aBlock[3] = &unk_1E815C8F0;
  v7 = unitsCopy;
  v26 = v7;
  v8 = v6;
  v27 = v8;
  v9 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__CalculateTokenizer_addUnits_builtIn___block_invoke_2;
  v23[3] = &unk_1E815C918;
  v10 = v9;
  v24 = v10;
  v11 = _Block_copy(v23);
  if (addUnits_builtIn__onceToken != -1)
  {
    dispatch_once(&addUnits_builtIn__onceToken, &__block_literal_global_763);
  }

  v12 = v11[2];
  if (inCopy)
  {
    v12(v11, @"degree", addUnits_builtIn__circ, 0.6);
  }

  else
  {
    v12(v11, @"fahrenheit", addUnits_builtIn__circ, 0.0);
    (v11[2])(v11, @"celsius", addUnits_builtIn__circ, 0.0);
    (v11[2])(v11, @"USD", addUnits_builtIn__dollar, 0.2);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = addUnits_builtIn__dollarCountries;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (v11[2])(v11, *(*(&v19 + 1) + 8 * i), addUnits_builtIn__dollar, 1.0);
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __39__CalculateTokenizer_addUnits_builtIn___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, float a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [(Trie *)*(a1 + 32) objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = [UnitRanks unitRanksWithUnitsInfo:0];
          [(Trie *)*(a1 + 32) setObject:v15 forKeyedSubscript:v14];
        }

        v16 = [*(a1 + 40) infoForUnitName:v9];
        v17 = [UnitRank alloc];
        v18 = [v16 unitID];
        *&v19 = a5;
        v20 = [(UnitRank *)v17 initWithUnitID:v18 rank:0 locale:v19];
        [(UnitRank *)v20 setIsLaTeX:a4];
        [v15 addUnitRank:v20];
        [v15 sort];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __39__CalculateTokenizer_addUnits_builtIn___block_invoke_3()
{
  v0 = addUnits_builtIn__deg;
  addUnits_builtIn__deg = &unk_1F419A690;

  v1 = addUnits_builtIn__circ;
  addUnits_builtIn__circ = &unk_1F419A6A8;

  v2 = addUnits_builtIn__dollar;
  addUnits_builtIn__dollar = &unk_1F419A6C0;

  v3 = addUnits_builtIn__dollarCountries;
  addUnits_builtIn__dollarCountries = &unk_1F419A6D8;
}

+ (void)addSymbols:(id)symbols
{
  v39 = *MEMORY[0x1E69E9840];
  symbolsCopy = symbols;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__CalculateTokenizer_addSymbols___block_invoke;
  aBlock[3] = &unk_1E815C8A0;
  selfCopy = self;
  v5 = symbolsCopy;
  v36 = v5;
  v6 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __33__CalculateTokenizer_addSymbols___block_invoke_2;
  v32[3] = &unk_1E815C8C8;
  selfCopy2 = self;
  v7 = v5;
  v33 = v7;
  v8 = _Block_copy(v32);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __33__CalculateTokenizer_addSymbols___block_invoke_3;
  v29[3] = &unk_1E815C8A0;
  selfCopy3 = self;
  v24 = v7;
  v30 = v24;
  v23 = _Block_copy(v29);
  v6[2](v6, 4, &unk_1F419A0C0);
  v6[2](v6, 5, &unk_1F419A0D8);
  v6[2](v6, 6, &unk_1F419A0F0);
  v6[2](v6, 7, &unk_1F419A108);
  v6[2](v6, 8, &unk_1F419A120);
  v6[2](v6, 9, &unk_1F419A138);
  v6[2](v6, 10, &unk_1F419A150);
  v6[2](v6, 19, &unk_1F419A168);
  v6[2](v6, 20, &unk_1F419A180);
  v6[2](v6, 21, &unk_1F419A198);
  v6[2](v6, 22, &unk_1F419A1B0);
  v6[2](v6, 12, &unk_1F419A1C8);
  v6[2](v6, 36, &unk_1F419A1E0);
  v6[2](v6, 13, &unk_1F419A1F8);
  v6[2](v6, 14, &unk_1F419A210);
  v6[2](v6, 15, &unk_1F419A228);
  v6[2](v6, 16, &unk_1F419A240);
  v6[2](v6, 17, &unk_1F419A258);
  v6[2](v6, 18, &unk_1F419A270);
  v6[2](v6, 31, &unk_1F419A288);
  v6[2](v6, 33, &unk_1F419A2A0);
  v6[2](v6, 34, &unk_1F419A2B8);
  v6[2](v6, 37, &unk_1F419A2D0);
  v6[2](v6, 38, &unk_1F419A2E8);
  v6[2](v6, 27, &unk_1F419A300);
  v6[2](v6, 28, &unk_1F419A318);
  v6[2](v6, 29, &unk_1F419A330);
  v6[2](v6, 30, &unk_1F419A348);
  v6[2](v6, 23, &unk_1F419A360);
  v6[2](v6, 24, &unk_1F419A378);
  v6[2](v6, 25, &unk_1F419A390);
  v6[2](v6, 26, &unk_1F419A3A8);
  v9 = +[CalculateTokenizer nonTrigFunctionSet];
  allObjects = [v9 allObjects];
  v6[2](v6, 35, allObjects);

  v6[2](v6, 35, &unk_1F419A3C0);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [&unk_1F419A7A8 allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v25 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [&unk_1F419A7A8 objectForKeyedSubscript:v16];
        v8[2](v8, 35, v16, v17);
      }

      v13 = [allKeys countByEnumeratingWithState:&v25 objects:v38 count:16];
    }

    while (v13);
  }

  v23[2](v23, 43, &unk_1F419A4B0);
  v23[2](v23, 44, &unk_1F419A4C8);
  v23[2](v23, 7, &unk_1F419A4E0);
  v23[2](v23, 6, &unk_1F419A4F8);
  v23[2](v23, 12, &unk_1F419A510);
  v23[2](v23, 37, &unk_1F419A528);
  v18 = +[CalculateTokenizer laTeXNonTrigFunctionSet];
  allObjects2 = [v18 allObjects];
  v23[2](v23, 35, allObjects2);

  v20 = +[CalculateTokenizer laTeXTrigonometricSet];
  allObjects3 = [v20 allObjects];
  v23[2](v23, 35, allObjects3);

  v23[2](v23, 40, &unk_1F419A540);
  v23[2](v23, 51, &unk_1F419A558);
  v23[2](v23, 41, &unk_1F419A570);
  v23[2](v23, 42, &unk_1F419A588);
  v23[2](v23, 1, &unk_1F419A5A0);
  v23[2](v23, 36, &unk_1F419A5B8);
  v23[2](v23, 13, &unk_1F419A5D0);
  v23[2](v23, 31, &unk_1F419A5E8);
  v23[2](v23, 45, &unk_1F419A600);
  v23[2](v23, 46, &unk_1F419A618);
  v23[2](v23, 47, &unk_1F419A630);
  v23[2](v23, 48, &unk_1F419A648);
  v23[2](v23, 49, &unk_1F419A660);
  v23[2](v23, 50, &unk_1F419A678);
  [CalculateTokenizer addUnits:v24 builtIn:1];

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)_addSymbols:(id)symbols normalized:(id)normalized tokenType:(unint64_t)type isLaTeX:(BOOL)x trie:(id)trie
{
  xCopy = x;
  v44 = *MEMORY[0x1E69E9840];
  symbolsCopy = symbols;
  normalizedCopy = normalized;
  trieCopy = trie;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = symbolsCopy;
  v13 = [symbolsCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = xCopy;
    if (type != 35)
    {
      v15 = 1;
    }

    v35 = v15;
    v34 = *v38;
    v32 = trieCopy;
    typeCopy = type;
    do
    {
      v16 = 0;
      v31 = v14;
      do
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        v18 = [(Trie *)trieCopy objectForKeyedSubscript:v17];
        if (!v18)
        {
          v18 = [UnitRanks unitRanksWithUnitsInfo:0];
          [(Trie *)trieCopy setObject:v18 forKeyedSubscript:v17];
        }

        v19 = [UnitRank alloc];
        LODWORD(v20) = -1.0;
        v21 = [(UnitRank *)v19 initWithUnitID:0 rank:0 locale:v20];
        [(UnitRank *)v21 setTokenType:type];
        [(UnitRank *)v21 setIsLaTeX:xCopy];
        [(UnitRank *)v21 setNormalized:normalizedCopy];
        [v18 addUnitRank:v21];
        if ((v35 & 1) == 0)
        {
          if ([v17 containsString:@"_"])
          {
            v22 = [v17 stringByReplacingOccurrencesOfString:@"_" withString:&stru_1F418FCD8];
            v42 = v22;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
            v24 = trieCopy;
            v25 = v23;
            [self _addSymbols:v23 normalized:normalizedCopy tokenType:35 isLaTeX:0 trie:v24];
          }

          else
          {
            if (![v17 hasSuffix:@"^-1"])
            {
              goto LABEL_16;
            }

            v22 = [v17 stringByReplacingOccurrencesOfString:@"^-1" withString:@"-1"];
            v41[0] = v22;
            v25 = [v17 stringByReplacingOccurrencesOfString:@"^-1" withString:@"^(-1)"];
            v41[1] = v25;
            v26 = [v17 stringByReplacingOccurrencesOfString:@"^-1" withString:@"⁻¹"];
            v41[2] = v26;
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
            [self _addSymbols:v27 normalized:normalizedCopy tokenType:35 isLaTeX:0 trie:v32];

            type = typeCopy;
          }

          v14 = v31;
          trieCopy = v32;
        }

LABEL_16:

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v14);
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (void)addLocalizedSymbols:(id)symbols locales:(id)locales
{
  symbolsCopy = symbols;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CalculateTokenizer_addLocalizedSymbols_locales___block_invoke;
  v8[3] = &unk_1E815C878;
  v9 = symbolsCopy;
  selfCopy = self;
  v7 = symbolsCopy;
  [Localize enumerateLocales:locales withBlock:v8];
}

void __50__CalculateTokenizer_addLocalizedSymbols_locales___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([v6 isEqualToString:@"en"] & 1) == 0)
  {
    v21 = v7;
    v22 = v6;
    v23 = v5;
    v8 = [Localize localizedStringsForTable:@"LocalizableMath" localization:v6];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          if (v13 && [*(*(&v24 + 1) + 8 * v12) length])
          {
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = v14;
            if (v14 && [v14 length])
            {
              if ([v13 isEqualToString:@"π"])
              {
                v16 = 37;
              }

              else if ([v13 isEqualToString:@"𝑒"])
              {
                v16 = 38;
              }

              else
              {
                v16 = 35;
              }

              v17 = *(a1 + 40);
              v18 = objc_opt_class();
              v28 = v15;
              v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
              [v18 _addSymbols:v19 normalized:v13 tokenType:v16 isLaTeX:0 trie:*(a1 + 32)];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v6 = v22;
    v5 = v23;
    v7 = v21;
  }

  objc_autoreleasePoolPop(v7);

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)localizedSymbolsTrie:(id)trie
{
  trieCopy = trie;
  if (localizedSymbolsTrie__onceToken != -1)
  {
    dispatch_once(&localizedSymbolsTrie__onceToken, &__block_literal_global_164);
  }

  v4 = [Localize keyForLocales:trieCopy];
  [localizedSymbolsTrie__lock lock];
  v5 = [localizedSymbolsTrie__tries objectForKey:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    [CalculateTokenizer addSymbols:v5];
    [CalculateTokenizer addLocalizedSymbols:v5 locales:trieCopy];
    [localizedSymbolsTrie__tries setObject:v5 forKey:v4];
  }

  [localizedSymbolsTrie__lock unlock];
  v6 = v5;

  return v6;
}

uint64_t __43__CalculateTokenizer_localizedSymbolsTrie___block_invoke()
{
  v0 = objc_opt_new();
  v1 = localizedSymbolsTrie__lock;
  localizedSymbolsTrie__lock = v0;

  v2 = objc_opt_new();
  v3 = localizedSymbolsTrie__tries;
  localizedSymbolsTrie__tries = v2;

  v4 = localizedSymbolsTrie__tries;

  return [v4 setCountLimit:2];
}

+ (id)nonWhitespaceLanguageSet
{
  if (nonWhitespaceLanguageSet_onceToken != -1)
  {
    dispatch_once(&nonWhitespaceLanguageSet_onceToken, &__block_literal_global_161);
  }

  v3 = nonWhitespaceLanguageSet_nonWhitespaceLanguageSet;

  return v3;
}

void __46__CalculateTokenizer_nonWhitespaceLanguageSet__block_invoke()
{
  v0 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CalculateTokenizer_nonWhitespaceLanguageSet__block_invoke_2;
  aBlock[3] = &unk_1E815C850;
  v6 = v0;
  v1 = v0;
  v2 = _Block_copy(aBlock);
  v2[2](v2, 12288, 12543);
  v2[2](v2, 65280, 65519);
  v2[2](v2, 19968, 40879);
  v2[2](v2, 3584, 3711);
  v3 = [v1 copy];
  v4 = nonWhitespaceLanguageSet_nonWhitespaceLanguageSet;
  nonWhitespaceLanguageSet_nonWhitespaceLanguageSet = v3;
}

+ (id)punctuationSet
{
  [self loadPunctuationSet];
  v2 = punctuationSet;

  return v2;
}

+ (id)symbolSet
{
  [self loadSymbolSet];
  v2 = symbolSet;

  return v2;
}

@end