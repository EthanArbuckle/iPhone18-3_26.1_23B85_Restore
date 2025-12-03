@interface CVNLPCTCTextDecodingPath
+ (id)_getQueue;
+ (void)applyWordLanguageModelProbabilityToPath:(id)path stemmedFromPath:(id)fromPath isCommittingToken:(BOOL)token;
- (BOOL)hasProblematicMixedScriptWords;
- (CVNLPCTCTextDecodingPath)initWithLanguageResourceBundle:(id)bundle scoringFunction:(id)function initialCharacterLMState:(CVNLPLanguageModelWithState *)state characterTokenIDs:(vector<unsigned)int wordTokenIDs:(std:(vector<unsigned)int :(std:(BOOL)std :(BOOL)a9 allocator<unsigned int>> *)a7 allocator<unsigned int>> *)a6 optimizingAlignment:hasContext:;
- (NSString)latestExpandedSymbol;
- (double)lastTokenBoundaryLogProbability;
- (double)modelLogProbability;
- (double)normalizedTotalLogProbability;
- (double)scoreForTokenIndex:(int64_t)index;
- (float)_wordLanguageModelLogProbabilityForString:(id)string originalWordRanges:(id)ranges originalWordIDs:(vector<unsigned)int wordRanges:(std:(id)wordRanges :(vector<unsigned)int allocator<unsigned int>> *)a5 wordIDs:(std::allocator<unsigned int>> *)ds;
- (id).cxx_construct;
- (id)childPathWithBlankLogProb:(double)prob;
- (id)debugDescription;
- (id)description;
- (id)pathByExtendingWithString:(id)string extendedPathString:(id)pathString blankLogProb:(double)prob nonBlankLogProb:(double)logProb timestep:(int64_t)timestep commitAction:(int64_t)action symbolLogProb:(double)symbolLogProb;
- (int64_t)compare:(id)compare;
- (unint64_t)_currentTokenStringLength;
- (void)_updateCharacterLanguageModelLogProbabilityForString:(id)string stemmingFromPath:(id)path normalizedCodepoint:(unsigned int)codepoint;
- (void)_updateLexiconLogProbabilityForString:(id)string stemmingFromPath:(id)path;
- (void)commitTokenAtTimestep:(int64_t)timestep currentSymbolLogProbability:(double)probability commitAction:(int64_t)action string:(id)string stemmingFromPath:(id)path;
- (void)dealloc;
- (void)merge:(id)merge logProbCumulator:(id)cumulator;
- (void)setCharacterLMState:(CVNLPLanguageModelWithState *)state;
- (void)setLastTokenBoundaryLogProbability:(double)probability;
- (void)updateLastTokenWithMaxActivation:(int64_t)activation totalLogProbability:(double)probability tokenBoundaryLogProbability:(double)logProbability;
@end

@implementation CVNLPCTCTextDecodingPath

- (CVNLPCTCTextDecodingPath)initWithLanguageResourceBundle:(id)bundle scoringFunction:(id)function initialCharacterLMState:(CVNLPLanguageModelWithState *)state characterTokenIDs:(vector<unsigned)int wordTokenIDs:(std:(vector<unsigned)int :(std:(BOOL)std :(BOOL)a9 allocator<unsigned int>> *)a7 allocator<unsigned int>> *)a6 optimizingAlignment:hasContext:
{
  bundleCopy = bundle;
  functionCopy = function;
  v24.receiver = self;
  v24.super_class = CVNLPCTCTextDecodingPath;
  v18 = [(CVNLPTextDecodingPath *)&v24 init];
  v19 = v18;
  if (v18)
  {
    *(v18 + 37) = 0xC08FF00000000000;
    *(v18 + 38) = 0xC08FF00000000000;
    *(v18 + 39) = 0;
    *(v18 + 40) = 0;
    *(v18 + 33) = 0;
    v18[281] = 0;
    v18[282] = 0;
    *(v18 + 71) = 0;
    v20 = (v18 + 80);
    if (v19 + 80 != a6)
    {
      sub_1D9D829B4(v20, a6->__begin_, a6->__end_, a6->__end_ - a6->__begin_);
    }

    if (v19 + 104 != a7)
    {
      sub_1D9D829B4(v19 + 13, a7->__begin_, a7->__end_, a7->__end_ - a7->__begin_);
    }

    *(v19 + 16) = 0;
    v19[288] = std;
    v21 = MEMORY[0x1DA741A60](functionCopy);
    v22 = *(v19 + 45);
    *(v19 + 45) = v21;

    v19[256] = a9;
    objc_storeStrong(v19 + 44, bundle);
    v19[280] = 0;
    if (state)
    {
      *(v19 + 43) = CFRetain(state);
    }
  }

  return v19;
}

- (void)dealloc
{
  characterLMState = self->_characterLMState;
  if (characterLMState)
  {
    CFRelease(characterLMState);
    self->_characterLMState = 0;
  }

  v4.receiver = self;
  v4.super_class = CVNLPCTCTextDecodingPath;
  [(CVNLPCTCTextDecodingPath *)&v4 dealloc];
}

- (void)setCharacterLMState:(CVNLPLanguageModelWithState *)state
{
  characterLMState = self->_characterLMState;
  if (characterLMState != state)
  {
    CFRelease(characterLMState);
    self->_characterLMState = CFRetain(state);
  }
}

- (void)setLastTokenBoundaryLogProbability:(double)probability
{
  end = self->_tokenBoundaryLogProbabilities.__end_;
  if (end != self->_tokenBoundaryLogProbabilities.__begin_)
  {
    *(end - 1) = probability;
  }
}

- (double)modelLogProbability
{
  blankLogProbability = self->_blankLogProbability;
  nonBlankLogProbability = self->_nonBlankLogProbability;
  v4 = fmax(blankLogProbability, nonBlankLogProbability);
  v5 = fmin(blankLogProbability, nonBlankLogProbability);
  if (v5 >= -1021.0)
  {
    v6 = exp(v5 - v4);
    return log1p(v6) + v4;
  }

  return v4;
}

- (double)normalizedTotalLogProbability
{
  result = self->_normalizedTotalLogProbability;
  if (result == 0.0)
  {
    result = (*(self->_scoringFunction + 2))(self->_scoringFunction, self);
    self->_normalizedTotalLogProbability = result;
  }

  return result;
}

- (BOOL)hasProblematicMixedScriptWords
{
  characterCount = self->super._characterCount;
  if (characterCount)
  {
    if (self->_hasCalculatedHasProblematicMixedScriptWords)
    {
      characterCount = &self->_hasProblematicMixedScriptWords;
    }

    else
    {
      v4 = sub_1D9D9FC4C(self->super._string);
      characterCount = &self->_hasProblematicMixedScriptWords;
      self->_hasProblematicMixedScriptWords = v4;
      self->_hasCalculatedHasProblematicMixedScriptWords = 1;
    }

    LOBYTE(characterCount) = *characterCount;
  }

  return characterCount & 1;
}

- (double)lastTokenBoundaryLogProbability
{
  end = self->_tokenBoundaryLogProbabilities.__end_;
  if (end == self->_tokenBoundaryLogProbabilities.__begin_)
  {
    return 0.0;
  }

  else
  {
    return *(end - 1);
  }
}

- (double)scoreForTokenIndex:(int64_t)index
{
  begin = self->_cumulativeTokenLogProbabilities.__begin_;
  if (index < 1)
  {
    return begin[index] - 0.0;
  }

  else
  {
    return begin[index] - begin[index - 1];
  }
}

- (NSString)latestExpandedSymbol
{
  v3 = self->_latestExpandedSymbolIncludingPseudospace;
  if (objc_msgSend_length(v3, v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_characterAtIndex_(v3, v7, 0, v8);

    if (v9 == 57427)
    {
      v10 = 0;

      return v10;
    }
  }

  else
  {
  }

  v10 = self->_latestExpandedSymbolIncludingPseudospace;

  return v10;
}

- (unint64_t)_currentTokenStringLength
{
  end = self->_tokenStringSegmentationPositions.__end_;
  if (end == self->_tokenStringSegmentationPositions.__begin_)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(end - 1);
  }

  string = self->super._string;
  v7 = objc_msgSend_length(string, a2, v2, v3);
  v9 = objc_msgSend_substringWithRange_(string, v8, v5, v7 - v5);
  v12 = objc_msgSend_lengthOfBytesUsingEncoding_(v9, v10, 2348810496, v11) >> 2;

  return v12;
}

- (void)commitTokenAtTimestep:(int64_t)timestep currentSymbolLogProbability:(double)probability commitAction:(int64_t)action string:(id)string stemmingFromPath:(id)path
{
  stringCopy = string;
  pathCopy = path;
  if (action)
  {
    v17 = timestep + 1;
    p_tokenMaxActivations = &self->_tokenMaxActivations;
    begin = self->_tokenMaxActivations.__begin_;
    end = self->_tokenMaxActivations.__end_;
    v21 = end == begin || v17 > *(end - 1);
    if (objc_msgSend__currentTokenStringLength(self, v13, v14, v15))
    {
      v25 = v21;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      if (action == 1)
      {
        v74 = 0;
        sub_1D9D17338(&self->_tokenCommitCharacterLengths.__begin_, &v74);
      }

      else if (action == 2)
      {
        v74 = objc_msgSend_lengthOfBytesUsingEncoding_(stringCopy, v22, 2348810496, v24) >> 2;
        sub_1D9D93888(&self->_tokenCommitCharacterLengths, &v74);
      }

      v30 = objc_msgSend_length(self->super._string, v22, v23, v24);
      p_tokenStringSegmentationPositions = &self->_tokenStringSegmentationPositions;
      v36 = self->_tokenStringSegmentationPositions.__end_;
      cap = self->_tokenStringSegmentationPositions.__cap_;
      if (v36 >= cap)
      {
        v38 = p_tokenStringSegmentationPositions->__begin_;
        v39 = v36 - p_tokenStringSegmentationPositions->__begin_;
        v40 = v39 >> 3;
        v41 = (v39 >> 3) + 1;
        if (v41 >> 61)
        {
          sub_1D9D84AB0();
        }

        v42 = cap - v38;
        if (v42 >> 2 > v41)
        {
          v41 = v42 >> 2;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          if (!(v43 >> 61))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        *(8 * v40) = v30;
        v37 = (8 * v40 + 8);
        memcpy(0, v38, v39);
        p_tokenStringSegmentationPositions->__begin_ = 0;
        self->_tokenStringSegmentationPositions.__end_ = v37;
        self->_tokenStringSegmentationPositions.__cap_ = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v36 = v30;
        v37 = v36 + 1;
      }

      self->_tokenStringSegmentationPositions.__end_ = v37;
      v45 = self->_tokenMaxActivations.__end_;
      v44 = self->_tokenMaxActivations.__cap_;
      if (v45 >= v44)
      {
        v47 = p_tokenMaxActivations->__begin_;
        v48 = v45 - p_tokenMaxActivations->__begin_;
        v49 = v48 >> 3;
        v50 = (v48 >> 3) + 1;
        if (v50 >> 61)
        {
          sub_1D9D84AB0();
        }

        v51 = v44 - v47;
        if (v51 >> 2 > v50)
        {
          v50 = v51 >> 2;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          if (!(v52 >> 61))
          {
            operator new();
          }

          goto LABEL_75;
        }

        *(8 * v49) = v17;
        v46 = (8 * v49 + 8);
        memcpy(0, v47, v48);
        p_tokenMaxActivations->__begin_ = 0;
        self->_tokenMaxActivations.__end_ = v46;
        self->_tokenMaxActivations.__cap_ = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v45 = v17;
        v46 = v45 + 1;
      }

      self->_tokenMaxActivations.__end_ = v46;
      objc_msgSend_modelLogProbability(self, v31, v32, v33);
      p_cumulativeTokenLogProbabilities = &self->_cumulativeTokenLogProbabilities;
      v56 = self->_cumulativeTokenLogProbabilities.__end_;
      v55 = self->_cumulativeTokenLogProbabilities.__cap_;
      if (v56 >= v55)
      {
        v58 = p_cumulativeTokenLogProbabilities->__begin_;
        v59 = v56 - p_cumulativeTokenLogProbabilities->__begin_;
        v60 = v59 >> 3;
        v61 = (v59 >> 3) + 1;
        if (v61 >> 61)
        {
          sub_1D9D84AB0();
        }

        v62 = v55 - v58;
        if (v62 >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        *(8 * v60) = v53;
        v57 = (8 * v60 + 8);
        memcpy(0, v58, v59);
        p_cumulativeTokenLogProbabilities->__begin_ = 0;
        self->_cumulativeTokenLogProbabilities.__end_ = v57;
        self->_cumulativeTokenLogProbabilities.__cap_ = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v56 = v53;
        v57 = v56 + 1;
      }

      self->_cumulativeTokenLogProbabilities.__end_ = v57;
      p_tokenBoundaryLogProbabilities = &self->_tokenBoundaryLogProbabilities;
      v66 = self->_tokenBoundaryLogProbabilities.__end_;
      v65 = self->_tokenBoundaryLogProbabilities.__cap_;
      if (v66 < v65)
      {
        *v66 = probability;
        v67 = (v66 + 1);
LABEL_73:
        p_tokenBoundaryLogProbabilities->__end_ = v67;
        goto LABEL_74;
      }

      v68 = p_tokenBoundaryLogProbabilities->__begin_;
      v69 = v66 - p_tokenBoundaryLogProbabilities->__begin_;
      v70 = v69 >> 3;
      v71 = (v69 >> 3) + 1;
      if (v71 >> 61)
      {
        sub_1D9D84AB0();
      }

      v72 = v65 - v68;
      if (v72 >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (!v73)
      {
        *(8 * v70) = probability;
        v67 = 8 * v70 + 8;
        memcpy(0, v68, v69);
        p_tokenBoundaryLogProbabilities->__begin_ = 0;
        p_tokenBoundaryLogProbabilities->__end_ = v67;
        p_tokenBoundaryLogProbabilities->__cap_ = 0;
        if (v68)
        {
          operator delete(v68);
        }

        goto LABEL_73;
      }

      if (!(v73 >> 61))
      {
        operator new();
      }

LABEL_75:
      sub_1D9D10E9C();
    }

    if (!v21 || self->_optimizingAlignment && ((objc_msgSend_lastTokenBoundaryLogProbability(self, v22, v23, v24), end != begin) ? (v27 = v26 < probability) : (v27 = 0), v27))
    {
      objc_msgSend_modelLogProbability(self, v22, v23, v24);
      objc_msgSend_updateLastTokenWithMaxActivation_totalLogProbability_tokenBoundaryLogProbability_(self, v28, v17, v29);
    }
  }

LABEL_74:
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_string(self, a2, v2, v3);
  v7 = sub_1D9D9FF48(v6);
  objc_msgSend_modelLogProbability(self, v8, v9, v10);
  v12 = v11;
  objc_msgSend_normalizedTotalLogProbability(self, v13, v14, v15);
  v17 = v16;
  objc_msgSend_blankLogProbability(self, v18, v19, v20);
  v22 = v21;
  objc_msgSend_nonBlankLogProbability(self, v23, v24, v25);
  v29 = objc_msgSend_stringWithFormat_(v5, v26, @"[%@], modelLogProb=%.8f, logProbTotalNorm=%.8f, logProbBlank=%.8f, logProbNonBlank=%.8f, %lu tokens", v27, v7, v12, v17, v22, v28, self->_tokenStringSegmentationPositions.__end_ - self->_tokenStringSegmentationPositions.__begin_);

  return v29;
}

- (id)debugDescription
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_string(self, a2, v2, v3);
  objc_msgSend_modelLogProbability(self, v7, v8, v9);
  v11 = v10;
  objc_msgSend_normalizedTotalLogProbability(self, v12, v13, v14);
  v16 = v15;
  objc_msgSend_wordLanguageModelLogProbability(self, v17, v18, v19);
  v21 = v20;
  objc_msgSend_historyLexiconLogProbability(self, v22, v23, v24);
  v26 = v25;
  objc_msgSend_activeWordLexiconLogProbability(self, v27, v28, v29);
  v31 = v30;
  objc_msgSend_characterLanguageModelLogProbability(self, v32, v33, v34);
  v38 = objc_msgSend_stringWithFormat_(v5, v35, @"[%@], logProbTotal=%.8f, logProbNormTotal=%.8f, logProbWordLM=%.8f, logProbHistoryLex=%.8f, logProbActiveLex=%.8f, logProbCharacterLM=%.8f, %lu tokens", v36, v6, v11, v16, v21, v26, v31, v37, self->_tokenStringSegmentationPositions.__end_ - self->_tokenStringSegmentationPositions.__begin_);

  return v38;
}

- (int64_t)compare:(id)compare
{
  objc_msgSend_normalizedTotalLogProbability(compare, a2, compare, v3);
  v6 = v5;
  objc_msgSend_normalizedTotalLogProbability(self, v7, v8, v9);
  if (v6 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v6 > v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

- (void)merge:(id)merge logProbCumulator:(id)cumulator
{
  mergeCopy = merge;
  cumulatorCopy = cumulator;
  self->_nonBlankLogProbability = cumulatorCopy[2](cumulatorCopy, self->_nonBlankLogProbability, *(mergeCopy + 38));
  self->_blankLogProbability = cumulatorCopy[2](cumulatorCopy, self->_blankLogProbability, *(mergeCopy + 37));
  if (self->_optimizingAlignment)
  {
    v10 = mergeCopy + 208;
    v12 = *(mergeCopy + 26);
    v11 = *(mergeCopy + 27);
    v13 = v11 - v12;
    if (v11 != v12)
    {
      p_tokenMaxActivations = &self->_tokenMaxActivations;
      begin = self->_tokenMaxActivations.__begin_;
      end = self->_tokenMaxActivations.__end_;
      objc_msgSend_lastTokenBoundaryLogProbability(mergeCopy, v7, v8, v9);
      v18 = v17;
      objc_msgSend_lastTokenBoundaryLogProbability(self, v19, v20, v21);
      v25 = (v13 >> 3) - 1;
      v26 = end - begin;
      if (v18 <= v27)
      {
        objc_msgSend_lastTokenBoundaryLogProbability(mergeCopy, v22, v23, v24);
        v31 = v30;
        objc_msgSend_lastTokenBoundaryLogProbability(self, v32, v33, v34);
        v29 = 0;
        v28 = p_tokenMaxActivations->__begin_;
        v35 = self->_tokenMaxActivations.__end_;
        if (v31 == v36 && v35 != v28)
        {
          objc_msgSend_scoreForTokenIndex_(mergeCopy, v22, v25, v24);
          v38 = v37;
          objc_msgSend_scoreForTokenIndex_(self, v39, (v26 >> 3) - 1, v40);
          v29 = v38 > v41;
          v28 = p_tokenMaxActivations->__begin_;
          v35 = self->_tokenMaxActivations.__end_;
        }

        if ((v35 - v28) > 8)
        {
LABEL_10:
          v42 = *(*v10 + 8 * v25);
          if (*(v28 + v26 - 16) > v42 || !v29)
          {
            goto LABEL_16;
          }

LABEL_15:
          v43 = *(*(mergeCopy + 17) + 8 * v25);
          objc_msgSend_lastTokenBoundaryLogProbability(mergeCopy, v22, v23, v24);
          objc_msgSend_updateLastTokenWithMaxActivation_totalLogProbability_tokenBoundaryLogProbability_(self, v44, v42, v45, v43, v46);
          goto LABEL_16;
        }

        if (!v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v28 = p_tokenMaxActivations->__begin_;
        if ((self->_tokenMaxActivations.__end_ - self->_tokenMaxActivations.__begin_) >= 9)
        {
          LOBYTE(v29) = 1;
          goto LABEL_10;
        }
      }

      v42 = *(*v10 + 8 * v25);
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)updateLastTokenWithMaxActivation:(int64_t)activation totalLogProbability:(double)probability tokenBoundaryLogProbability:(double)logProbability
{
  end = self->_tokenMaxActivations.__end_;
  v7 = end - self->_tokenMaxActivations.__begin_;
  if (v7)
  {
    *(end - 1) = activation;
    *(self->_cumulativeTokenLogProbabilities.__begin_ + v7 - 8) = probability;
    objc_msgSend_setLastTokenBoundaryLogProbability_(self, a2, activation, v5, logProbability);
  }
}

- (id)childPathWithBlankLogProb:(double)prob
{
  v6 = [CVNLPCTCTextDecodingPath alloc];
  languageResourceBundle = self->_languageResourceBundle;
  scoringFunction = self->_scoringFunction;
  characterLMState = self->_characterLMState;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  begin = self->_tokenString.__begin_;
  end = self->_tokenString.__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v66 = 0;
  v67 = 0;
  __p = 0;
  v13 = self->_histWordTokenIDs.__begin_;
  v12 = self->_histWordTokenIDs.__end_;
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  hasContext = self->_hasContext;
  v17 = objc_msgSend_initWithLanguageResourceBundle_scoringFunction_initialCharacterLMState_characterTokenIDs_wordTokenIDs_optimizingAlignment_hasContext_(v6, v5, languageResourceBundle, scoringFunction, characterLMState, &v68, &__p, self->_optimizingAlignment, hasContext);
  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v17)
  {
    v18 = objc_msgSend_string(self, v14, v15, v16);
    v19 = *(v17 + 72);
    *(v17 + 72) = v18;

    objc_storeStrong((v17 + 272), self->_latestExpandedSymbolIncludingPseudospace);
    objc_msgSend_setBlankLogProbability_(v17, v20, v21, v22, prob);
    objc_msgSend_setCharacterLanguageModelLogProbability_(v17, v23, v24, v25, self->super._characterLanguageModelLogProbability);
    objc_msgSend_setHistoryLexiconLogProbability_(v17, v26, v27, v28, self->_historyLexiconLogProbability);
    objc_msgSend_setActiveWordLexiconLogProbability_(v17, v29, v30, v31, self->_activeWordLexiconLogProbability);
    objc_msgSend_setWordLanguageModelLogProbability_(v17, v32, v33, v34, self->super._wordLanguageModelLogProbability);
    objc_msgSend_lastTokenBoundaryLogProbability(self, v35, v36, v37);
    objc_msgSend_setLastTokenBoundaryLogProbability_(v17, v38, v39, v40);
    objc_msgSend_setCharacterCount_(v17, v41, self->super._characterCount, v42);
    objc_msgSend_setPseudoSpaceCount_(v17, v43, self->super._pseudoSpaceCount, v44);
    v48 = objc_msgSend_cursors(self, v45, v46, v47);
    v52 = objc_msgSend_count(v48, v49, v50, v51);

    if (v52 >= 1)
    {
      v56 = objc_msgSend_cursors(self, v53, v54, v55);
      v60 = objc_msgSend_copy(v56, v57, v58, v59);
      objc_msgSend_setCursors_(v17, v61, v60, v62);
    }

    *(v17 + 128) = self->_beginningCurrentWord;
    if (v17 != self)
    {
      sub_1D9D64204((v17 + 136), self->_cumulativeTokenLogProbabilities.__begin_, self->_cumulativeTokenLogProbabilities.__end_, self->_cumulativeTokenLogProbabilities.__end_ - self->_cumulativeTokenLogProbabilities.__begin_);
      sub_1D9D64204((v17 + 160), self->_tokenBoundaryLogProbabilities.__begin_, self->_tokenBoundaryLogProbabilities.__end_, self->_tokenBoundaryLogProbabilities.__end_ - self->_tokenBoundaryLogProbabilities.__begin_);
      sub_1D9D64204((v17 + 184), self->_tokenStringSegmentationPositions.__begin_, self->_tokenStringSegmentationPositions.__end_, self->_tokenStringSegmentationPositions.__end_ - self->_tokenStringSegmentationPositions.__begin_);
      sub_1D9D64204((v17 + 208), self->_tokenMaxActivations.__begin_, self->_tokenMaxActivations.__end_, self->_tokenMaxActivations.__end_ - self->_tokenMaxActivations.__begin_);
      sub_1D9D64204((v17 + 232), self->_tokenCommitCharacterLengths.__begin_, self->_tokenCommitCharacterLengths.__end_, self->_tokenCommitCharacterLengths.__end_ - self->_tokenCommitCharacterLengths.__begin_);
    }

    *(v17 + 281) = self->_hasProblematicMixedScriptWords;
    *(v17 + 282) = self->_hasCalculatedHasProblematicMixedScriptWords;
    *(v17 + 284) = self->_lastCodeUnitType;
  }

  return v17;
}

- (id)pathByExtendingWithString:(id)string extendedPathString:(id)pathString blankLogProb:(double)prob nonBlankLogProb:(double)logProb timestep:(int64_t)timestep commitAction:(int64_t)action symbolLogProb:(double)symbolLogProb
{
  stringCopy = string;
  pathStringCopy = pathString;
  v16 = [CVNLPCTCTextDecodingPath alloc];
  languageResourceBundle = self->_languageResourceBundle;
  scoringFunction = self->_scoringFunction;
  characterLMState = self->_characterLMState;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  begin = self->_tokenString.__begin_;
  end = self->_tokenString.__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v111 = 0;
  v112 = 0;
  __p = 0;
  v23 = self->_histWordTokenIDs.__begin_;
  v22 = self->_histWordTokenIDs.__end_;
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  hasContext = objc_msgSend_initWithLanguageResourceBundle_scoringFunction_initialCharacterLMState_characterTokenIDs_wordTokenIDs_optimizingAlignment_hasContext_(v16, v15, languageResourceBundle, scoringFunction, characterLMState, &v113, &__p, self->_optimizingAlignment, self->_hasContext);
  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (hasContext != self)
  {
    sub_1D9D64204((hasContext + 136), self->_cumulativeTokenLogProbabilities.__begin_, self->_cumulativeTokenLogProbabilities.__end_, self->_cumulativeTokenLogProbabilities.__end_ - self->_cumulativeTokenLogProbabilities.__begin_);
    sub_1D9D64204((hasContext + 160), self->_tokenBoundaryLogProbabilities.__begin_, self->_tokenBoundaryLogProbabilities.__end_, self->_tokenBoundaryLogProbabilities.__end_ - self->_tokenBoundaryLogProbabilities.__begin_);
    sub_1D9D64204((hasContext + 184), self->_tokenStringSegmentationPositions.__begin_, self->_tokenStringSegmentationPositions.__end_, self->_tokenStringSegmentationPositions.__end_ - self->_tokenStringSegmentationPositions.__begin_);
    sub_1D9D64204((hasContext + 208), self->_tokenMaxActivations.__begin_, self->_tokenMaxActivations.__end_, self->_tokenMaxActivations.__end_ - self->_tokenMaxActivations.__begin_);
    sub_1D9D64204((hasContext + 232), self->_tokenCommitCharacterLengths.__begin_, self->_tokenCommitCharacterLengths.__end_, self->_tokenCommitCharacterLengths.__end_ - self->_tokenCommitCharacterLengths.__begin_);
  }

  v25 = stringCopy;
  v31 = objc_msgSend_length(v25, v26, v27, v28) == 1 && objc_msgSend_characterAtIndex_(v25, v29, 0, v30) == 57427;

  objc_storeStrong((hasContext + 72), pathString);
  objc_storeStrong((hasContext + 272), string);
  *(hasContext + 280) = 1;
  objc_msgSend_setCharacterCount_(hasContext, v32, self->super._characterCount + 1, v33);
  objc_msgSend_setPseudoSpaceCount_(hasContext, v34, self->super._pseudoSpaceCount + v31, v35);
  v39 = *(hasContext + 296);
  v40 = fmax(v39, prob);
  v41 = fmin(v39, prob);
  if (v41 >= -1021.0)
  {
    v42 = exp(v41 - v40);
    v40 = log1p(v42) + v40;
  }

  *(hasContext + 296) = v40;
  v43 = *(hasContext + 304);
  v44 = fmax(v43, logProb);
  v45 = fmin(v43, logProb);
  if (v45 >= -1021.0)
  {
    v46 = exp(v45 - v44);
    v44 = log1p(v46) + v44;
  }

  *(hasContext + 304) = v44;
  objc_msgSend_lastTokenBoundaryLogProbability(self, v36, v37, v38);
  objc_msgSend_setLastTokenBoundaryLogProbability_(hasContext, v47, v48, v49);
  objc_msgSend_commitTokenAtTimestep_currentSymbolLogProbability_commitAction_string_stemmingFromPath_(hasContext, v50, timestep, action, v25, self, symbolLogProb);
  v57 = objc_msgSend_wordLanguageModel(self->_languageResourceBundle, v51, v52, v53);
  if (v57)
  {
    v58 = objc_msgSend_wordLanguageModel(self->_languageResourceBundle, v54, v55, v56);
    v62 = objc_msgSend_lmSPIType(v58, v59, v60, v61);

    if (v62 == 1)
    {
      v63 = objc_opt_class();
      objc_msgSend_applyWordLanguageModelProbabilityToPath_stemmedFromPath_isCommittingToken_(v63, v64, hasContext, self, action != 0);
    }
  }

  v65 = v25;
  if (objc_msgSend_length(v65, v66, v67, v68) == 1)
  {
    v72 = objc_msgSend_characterAtIndex_(v65, v69, 0, v71);
  }

  else if (objc_msgSend_length(v65, v69, v70, v71) == 2)
  {
    v72 = objc_msgSend_characterAtIndex_(v65, v73, 0, v74);
    v77 = objc_msgSend_characterAtIndex_(v65, v75, 1, v76);
    if ((v77 & 0xFFF0) != 0xFE00)
    {
      v72 = (v77 + (v72 << 10) - 56613888);
    }
  }

  else
  {
    v72 = 0xFFFFFFFFLL;
  }

  v78 = sub_1D9D9D270(v72);
  v109 = v78;
  v82 = objc_msgSend_string(self, v79, v80, v81);
  if (!objc_msgSend_length(v82, v83, v84, v85))
  {
    v87 = self->_hasContext;

    if (v31 || !v87)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!v31)
  {
LABEL_33:
    objc_msgSend__updateCharacterLanguageModelLogProbabilityForString_stemmingFromPath_normalizedCodepoint_(hasContext, v86, v65, self, v78);
  }

LABEL_34:
  objc_msgSend__updateLexiconLogProbabilityForString_stemmingFromPath_(hasContext, v86, v65, self);
  *(hasContext + 284) = self->_lastCodeUnitType;
  *(hasContext + 281) = self->_hasProblematicMixedScriptWords;
  v91 = objc_msgSend_string(hasContext, v88, v89, v90);
  v95 = objc_msgSend_string(hasContext, v92, v93, v94);
  v99 = objc_msgSend_length(v95, v96, v97, v98);
  v102 = objc_msgSend_characterAtIndex_(v91, v100, v99 - 1, v101);
  sub_1D9D9FE00(v102, (hasContext + 281), (hasContext + 284), v103);

  *(hasContext + 282) = 1;
  if (!v31)
  {
    sub_1D9D9F374(hasContext + 80, &v109);
  }

  return hasContext;
}

- (void)_updateCharacterLanguageModelLogProbabilityForString:(id)string stemmingFromPath:(id)path normalizedCodepoint:(unsigned int)codepoint
{
  stringCopy = string;
  pathCopy = path;
  v11 = objc_msgSend_languageResourceBundle(self, v8, v9, v10);
  v15 = objc_msgSend_characterLanguageModel(v11, v12, v13, v14);

  if (v15)
  {
    v19 = objc_msgSend_lmSPIType(v15, v16, v17, v18);
    v23 = 0.0;
    if (v19 == 1)
    {
      v25 = objc_msgSend_length(stringCopy, v20, v21, v22);
      if (objc_msgSend_requiredContextLengthForStringLength_(v15, v26, v25, v27) <= ((pathCopy[11] - pathCopy[10]) >> 2))
      {
        objc_msgSend_languageModel(v15, v20, v21, v22);
        LMLanguageModelConditionalProbability();
        v23 = v28 * 2.30258509;
      }
    }

    else if (v19 == 2)
    {
      CVNLPLanguageModelWithStateConditionalProbability(self->_characterLMState, stringCopy);
      v23 = logf(v24);
    }

    v29 = objc_msgSend_languageResourceBundle(self, v20, v21, v22);
    v33 = objc_msgSend_characterLanguageModel(v29, v30, v31, v32);
    objc_msgSend_lowerBoundLogProbabilityValue(v33, v34, v35, v36);
    v38 = v37;

    objc_msgSend_characterLanguageModelLogProbability(pathCopy, v39, v40, v41);
    self->super._characterLanguageModelLogProbability = fmin(v42 + fmax(v23, v38), 0.0);
  }
}

- (void)_updateLexiconLogProbabilityForString:(id)string stemmingFromPath:(id)path
{
  stringCopy = string;
  pathCopy = path;
  if (CVNLPIsWordSeparatorForLexicon_0(stringCopy))
  {
    objc_msgSend_historyLexiconLogProbability(pathCopy, v8, v9, v10);
    v12 = v11;
    objc_msgSend_activeWordLexiconLogProbability(pathCopy, v13, v14, v15);
    self->_historyLexiconLogProbability = v16 + v12;
    self->_activeWordLexiconLogProbability = 0.0;
    v20 = objc_msgSend_packagedLexiconRootCursors(self->_languageResourceBundle, v17, v18, v19);
    objc_msgSend_setCursors_(self, v21, v20, v22);

    goto LABEL_23;
  }

  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  v23 = sub_1D9D9F9CC(stringCopy);
  v24 = sub_1D9D9FA5C(stringCopy);
  v25 = stringCopy;
  if (objc_msgSend_length(v25, v26, v27, v28) == 1)
  {
    v31 = objc_msgSend_characterAtIndex_(v25, v29, 0, v30) != 39;

    if (!v23)
    {
LABEL_5:
      v35 = !v24 && v31;
      goto LABEL_8;
    }
  }

  else
  {
    v31 = 1;

    if (!v23)
    {
      goto LABEL_5;
    }
  }

  v35 = 0;
LABEL_8:
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  v36 = objc_msgSend_cursors(pathCopy, v32, v33, v34);
  v40 = objc_msgSend_count(v36, v37, v38, v39);

  if (v40 >= 1)
  {
    v44 = objc_msgSend_lexicons(self->_languageResourceBundle, v41, v42, v43);
    v48 = objc_msgSend_count(v44, v45, v46, v47);
    v49 = log(v48);

    v111 = 0;
    v112 = &v111;
    v113 = 0x4812000000;
    v114 = sub_1D9DAED9C;
    v115 = sub_1D9DAEDC0;
    v116 = &unk_1D9DF809A;
    v118 = 0;
    v119 = 0;
    __p = 0;
    v53 = objc_msgSend_lexicons(self->_languageResourceBundle, v50, v51, v52);
    if (objc_msgSend_inputNormalizationFunction(v53, v54, v55, v56))
    {
      v60 = objc_msgSend_lexicons(self->_languageResourceBundle, v57, v58, v59);
      v64 = objc_msgSend_inputNormalizationFunction(v60, v61, v62, v63);
      v65 = v64(v25);
    }

    else
    {
      v65 = v25;
    }

    v69 = objc_msgSend_cursors(pathCopy, v66, v67, v68);
    v102 = MEMORY[0x1E69E9820];
    v103 = 3221225472;
    v104 = sub_1D9DAEDD8;
    v105 = &unk_1E858E1C0;
    v70 = v65;
    v106 = v70;
    v107 = &v111;
    v108 = &v120;
    v109 = &v124;
    v110 = v49;
    objc_msgSend_enumerateLexiconCursorsSortedByPriorityWithBlock_(v69, v71, &v102, v72);

    v73 = [CVNLPLexiconCursors alloc];
    v76 = objc_msgSend_initWithSortedCursors_(v73, v74, (v112 + 6), v75, v102, v103, v104, v105);
    objc_msgSend_setCursors_(self, v77, v76, v78);

    _Block_object_dispose(&v111, 8);
    if (__p)
    {
      v118 = __p;
      operator delete(__p);
    }
  }

  if (v35)
  {
    v125[3] = -2.99573227;
  }

  v79 = objc_msgSend_languageResourceBundle(self, v41, v42, v43);
  v83 = objc_msgSend_lexicons(v79, v80, v81, v82);
  objc_msgSend_lowerBoundLogProbabilityValue(v83, v84, v85, v86);
  v88 = v87;

  if ((v35 & 1) != 0 || *(v121 + 24) == 1)
  {
    v92 = v125[3];
    objc_msgSend_activeWordLexiconLogProbability(pathCopy, v89, v90, v91);
    if (v96 + v92 > v88)
    {
      v97 = v125[3];
      objc_msgSend_activeWordLexiconLogProbability(pathCopy, v93, v94, v95);
      v88 = v98 + v97;
    }
  }

  else
  {
    objc_msgSend_activeWordLexiconLogProbability(pathCopy, v89, v90, v91);
    if (v99 + -36.0436534 > v88)
    {
      objc_msgSend_activeWordLexiconLogProbability(pathCopy, v93, v94, v95);
      v88 = v100 + -36.0436534;
    }
  }

  self->_activeWordLexiconLogProbability = v88;
  objc_msgSend_historyLexiconLogProbability(pathCopy, v93, v94, v95);
  self->_historyLexiconLogProbability = v101;
  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v124, 8);
LABEL_23:
}

+ (void)applyWordLanguageModelProbabilityToPath:(id)path stemmedFromPath:(id)fromPath isCommittingToken:(BOOL)token
{
  tokenCopy = token;
  v56[5] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fromPathCopy = fromPath;
  v12 = objc_msgSend_languageResourceBundle(pathCopy, v9, v10, v11);
  v16 = objc_msgSend_wordLanguageModel(v12, v13, v14, v15);

  if (pathCopy != fromPathCopy)
  {
    sub_1D9D829B4(pathCopy + 13, fromPathCopy[13], fromPathCopy[14], (fromPathCopy[14] - fromPathCopy[13]) >> 2);
  }

  if (v16 && tokenCopy)
  {
    v20 = objc_msgSend_string(fromPathCopy, v17, v18, v19);
    v24 = objc_msgSend_length(v20, v21, v22, v23) - *(fromPathCopy + 32);

    if (v24 >= 1)
    {
      v28 = fromPathCopy[16];
      v29 = objc_msgSend_string(fromPathCopy, v25, v26, v27);
      v31 = objc_msgSend_substringWithRange_(v29, v30, v28, v24);

      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v56[3] = 0;
      v52 = 0;
      v53 = &v52;
      v54 = 0x2020000000;
      v55 = 0;
      v35 = objc_msgSend__getQueue(CVNLPCTCTextDecodingPath, v32, v33, v34, v31);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1D9DAF584;
      block[3] = &unk_1E858E1E8;
      block[6] = &v52;
      block[4] = v16;
      block[5] = v31;
      block[7] = v56;
      dispatch_sync(v35, block);
      v36 = *(v53 + 6);
      operator new();
    }

    objc_msgSend_wordLanguageModelLogProbability(fromPathCopy, v25, v26, v27);
    objc_msgSend_setWordLanguageModelLogProbability_(pathCopy, v40, v41, v42);
    v46 = objc_msgSend_string(fromPathCopy, v43, v44, v45);
    pathCopy[16] = (objc_msgSend_length(v46, v47, v48, v49) + 1);
  }

  else
  {
    objc_msgSend_wordLanguageModelLogProbability(fromPathCopy, v17, v18, v19);
    objc_msgSend_setWordLanguageModelLogProbability_(pathCopy, v37, v38, v39);
    pathCopy[16] = fromPathCopy[16];
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (float)_wordLanguageModelLogProbabilityForString:(id)string originalWordRanges:(id)ranges originalWordIDs:(vector<unsigned)int wordRanges:(std:(id)wordRanges :(vector<unsigned)int allocator<unsigned int>> *)a5 wordIDs:(std::allocator<unsigned int>> *)ds
{
  stringCopy = string;
  rangesCopy = ranges;
  wordRangesCopy = wordRanges;
  if (qword_1ECB71BF0 != -1)
  {
    dispatch_once(&qword_1ECB71BF0, &unk_1F554F998);
  }

  v12 = objc_msgSend_objectAtIndexedSubscript_(rangesCopy, v9, 0, v10);
  v43 = objc_msgSend_rangeValue(v12, v13, v14, v15);
  v42 = v16;

  begin = self->_histWordTokenIDs.__begin_;
  end = self->_histWordTokenIDs.__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (objc_msgSend_count(wordRangesCopy, v17, v18, v19))
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(wordRangesCopy, v22, 0, v23);
    v28 = objc_msgSend_rangeValue(v24, v25, v26, v27);
    v30 = v29;

    objc_msgSend_rangeOfCharacterFromSet_options_range_(stringCopy, v31, qword_1ECB71BE0, 2, v28, v30);
    if (v28 != v43 || v30 != v42 || (v35 = *a5->__begin_) == 0)
    {
      v35 = *ds->__begin_;
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v36 = objc_msgSend__getQueue(CVNLPCTCTextDecodingPath, v32, v33, v34);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = sub_1D9DAFB90;
    block[3] = &unk_1F554F9C0;
    block[4] = self;
    block[5] = &v48;
    v47 = v35;
    memset(&block[6], 0, 24);
    dispatch_sync(v36, block);
    v37 = v49[3];
    operator new();
  }

  return 0.0;
}

+ (id)_getQueue
{
  if (qword_1ECB71BF8 == -1)
  {
    v3 = qword_1ECB71C00;
  }

  else
  {
    dispatch_once(&qword_1ECB71BF8, &unk_1F554F9F0);
    v3 = qword_1ECB71C00;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 26) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 29) = 0;
  return self;
}

@end