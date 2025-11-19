@interface BRLTBrailleStateManager
- (BOOL)_deleteBrailleCharSilently:(BOOL)a3;
- (BOOL)_generateBrailleBuffer:(BOOL)a3;
- (BOOL)_selectionIsValidForDelete;
- (BOOL)_selectionIsValidForInsert;
- (BOOL)_setBrailleSelection:(_NSRange)a3 newScriptLocation:(unint64_t *)a4;
- (BOOL)deleteBrailleChar;
- (BOOL)deleteBrailleCharSilently;
- (BOOL)forwardDeleteBrailleChar;
- (BOOL)forwardDeleteBrailleCharSilently;
- (BRLTBrailleStateManager)initWithDelegate:(id)a3 translationDelegate:(id)a4;
- (_NSRange)_brailleRangeForTextRange:(_NSRange)a3 textPositions:(id)a4 brailleLength:(unint64_t)a5;
- (_NSRange)_textRangeForBrailleRange:(_NSRange)a3 textPositions:(id)a4 scriptLength:(int64_t)a5;
- (_NSRange)backwardEditingAtomForScriptString:(id)a3;
- (_NSRange)brailleFocus;
- (_NSRange)brailleRangeForScriptRange:(_NSRange)a3;
- (_NSRange)brailleSelection;
- (_NSRange)brailleSuggestion;
- (_NSRange)deleteMergeAtomForScriptString:(id)a3;
- (_NSRange)forwardEditingAtomForScriptString:(id)a3;
- (_NSRange)scriptEditingRange;
- (_NSRange)scriptRangeForBrailleRange:(_NSRange)a3;
- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(unint64_t)a3;
- (id)brailleDisplayString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)outputScriptString;
- (id)translationDelegate;
- (unint64_t)brailleLocationForScriptLocation:(unint64_t)a3;
- (unint64_t)scriptLocationForBrailleLocation:(unint64_t)a3;
- (void)insertBrailleChar:(id)a3 modifiers:(id)a4;
- (void)insertBrailleChar:(id)a3 modifiers:(id)a4 silently:(BOOL)a5;
- (void)setBrailleSelection:(_NSRange)a3 needsForwardToScreenReader:(BOOL *)a4 newScriptLocation:(unint64_t *)a5;
- (void)setDelegate:(id)a3;
- (void)setInputTranslationMode:(unint64_t)a3;
- (void)setOutputTranslationMode:(unint64_t)a3;
- (void)setScriptString:(id)a3;
- (void)setTranslationDelegate:(id)a3;
- (void)translate;
- (void)translateForced:(BOOL)a3;
@end

@implementation BRLTBrailleStateManager

- (BRLTBrailleStateManager)initWithDelegate:(id)a3 translationDelegate:(id)a4
{
  v15.receiver = self;
  v15.super_class = BRLTBrailleStateManager;
  v5 = a4;
  v6 = a3;
  v7 = [(BRLTBrailleStateManager *)&v15 init];
  v8 = objc_alloc_init(BRLTBrailleBuffer);
  v9 = *(v7 + 2);
  *(v7 + 2) = v8;

  objc_storeWeak(v7 + 27, v6);
  objc_storeWeak(v7 + 28, v5);

  *(v7 + 10) = xmmword_241E38B50;
  *(v7 + 11) = xmmword_241E38B50;
  *(v7 + 12) = xmmword_241E38B50;
  *(v7 + 232) = xmmword_241E38B50;
  v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
  v11 = *(v7 + 31);
  *(v7 + 31) = v10;

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = *(v7 + 32);
  *(v7 + 32) = v12;

  return v7;
}

- (void)setDelegate:(id)a3
{
  apiLock = self->_apiLock;
  v5 = a3;
  [(NSRecursiveLock *)apiLock lock];
  objc_storeWeak(&self->_delegate, v5);

  v6 = self->_apiLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)setTranslationDelegate:(id)a3
{
  apiLock = self->_apiLock;
  v5 = a3;
  [(NSRecursiveLock *)apiLock lock];
  objc_storeWeak(&self->_translationDelegate, v5);

  v6 = self->_apiLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (id)translationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_loadWeakRetained(&self->_translationDelegate);
  v8 = [v5 initWithDelegate:WeakRetained translationDelegate:v7];

  objc_storeStrong((v8 + 8), self->_scriptString);
  v9 = [(BRLTBrailleBuffer *)self->_brailleBuffer copyWithZone:a3];
  v10 = *(v8 + 16);
  *(v8 + 16) = v9;

  objc_storeStrong((v8 + 24), self->_staticBrailleString);
  *(v8 + 32) = self->_scriptForwardEditingRegion;
  *(v8 + 48) = self->_scriptBackwardEditingRegion;
  *(v8 + 64) = self->_scriptMergeEditingRegion;
  *(v8 + 80) = self->_brailleForwardEditingRegion;
  *(v8 + 96) = self->_brailleBackwardEditingRegion;
  *(v8 + 112) = self->_brailleMergeEditingRegion;
  *(v8 + 128) = self->_activeScriptEditingRegion;
  *(v8 + 144) = self->_activeBrailleEditingRegion;
  *(v8 + 160) = self->_brailleSelection;
  *(v8 + 176) = self->_brailleFocus;
  *(v8 + 160) = self->_brailleSelection;
  *(v8 + 208) = self->_brailleDirty;
  *(v8 + 209) = self->_scriptDirty;
  *(v8 + 280) = self->_inputTranslationMode;
  *(v8 + 288) = self->_outputTranslationMode;
  v11 = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak((v8 + 216), v11);

  v12 = objc_loadWeakRetained(&self->_translationDelegate);
  objc_storeWeak((v8 + 224), v12);

  return v8;
}

- (void)setScriptString:(id)a3
{
  v5 = a3;
  [(NSRecursiveLock *)self->_apiLock lock];
  v6 = [v5 string];
  p_scriptString = &self->_scriptString;
  v8 = [(BRLTScriptString *)self->_scriptString string];
  if ([v6 isEqual:v8])
  {
    v9 = [v5 selection];
    v11 = v10;
    v14 = v9 != [(BRLTScriptString *)*p_scriptString selection]|| v11 != v12;
  }

  else
  {
    v14 = 1;
  }

  v15 = self->_pendingScriptSelection.location != 0x7FFFFFFFFFFFFFFFLL && ([v5 selection] != self->_pendingScriptSelection.location || v16 != self->_pendingScriptSelection.length);
  if (!v14 && !v15 && !self->_scriptDirty)
  {
    v27 = BRLTLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241DFD000, v27, OS_LOG_TYPE_INFO, "setScriptString: not processing the input since it is identical to the current script string.", buf, 2u);
    }

    v28 = [v5 copy];
    scriptString = self->_scriptString;
    self->_scriptString = v28;

    [(NSMutableArray *)self->_runningScriptStringHistory removeAllObjects];
    goto LABEL_34;
  }

  if (self->_brailleDirty)
  {
    goto LABEL_34;
  }

  if (CFAbsoluteTimeGetCurrent() - self->_lastScriptStringOutputTime >= 5.0)
  {
LABEL_23:
    v19 = [v5 string];
    v20 = [(BRLTScriptString *)*p_scriptString string];
    if ([v19 isEqualToString:v20] && objc_msgSend(v5, "selection") == self->_pendingScriptSelection.location && v21 == self->_pendingScriptSelection.length)
    {
      v22 = [v5 textFormattingRanges];
      v23 = [(BRLTScriptString *)*p_scriptString textFormattingRanges];
      v24 = v23;
      if (v22 == v23)
      {

        goto LABEL_34;
      }

      v25 = [v5 textFormattingRanges];
      v26 = [(BRLTScriptString *)*p_scriptString textFormattingRanges];
      v31 = [v25 isEqual:v26];

      if (v31)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_scriptString, a3);
    self->_scriptDirty = 1;
    self->_pendingScriptSelection = xmmword_241E38B50;
    [(BRLTBrailleStateManager *)self translate];
LABEL_34:
    [(NSRecursiveLock *)self->_apiLock unlock];
    goto LABEL_35;
  }

  *buf = 0;
  v37 = buf;
  v38 = 0x2020000000;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  runningScriptStringHistory = self->_runningScriptStringHistory;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __43__BRLTBrailleStateManager_setScriptString___block_invoke;
  v33[3] = &unk_278D20B28;
  v33[4] = self;
  v34 = v5;
  v35 = buf;
  [(NSMutableArray *)runningScriptStringHistory enumerateObjectsUsingBlock:v33];
  if (*(v37 + 3) == 0x7FFFFFFFFFFFFFFFLL)
  {

    _Block_object_dispose(buf, 8);
    goto LABEL_23;
  }

  v30 = BRLTLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *v32 = 0;
    _os_log_impl(&dword_241DFD000, v30, OS_LOG_TYPE_INFO, "setScriptString: not processing the input since it is found in the running history of script strings.", v32, 2u);
  }

  [(NSRecursiveLock *)self->_apiLock unlock];
  [(NSMutableArray *)self->_runningScriptStringHistory removeObjectsInRange:0, *(v37 + 3) + 1];

  _Block_object_dispose(buf, 8);
LABEL_35:
}

void __43__BRLTBrailleStateManager_setScriptString___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1[4] + 256) count] - 1 != a3)
  {
    if (![v7 isEqual:a1[5]])
    {
      goto LABEL_5;
    }

    *(*(a1[6] + 8) + 24) = a3;
  }

  *a4 = 1;
LABEL_5:
}

- (void)insertBrailleChar:(id)a3 modifiers:(id)a4
{
  apiLock = self->_apiLock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)apiLock lock];
  [(BRLTBrailleStateManager *)self insertBrailleChar:v8 modifiers:v7 silently:0];

  v9 = self->_apiLock;

  [(NSRecursiveLock *)v9 unlock];
}

- (void)insertBrailleChar:(id)a3 modifiers:(id)a4 silently:(BOOL)a5
{
  v16 = a3;
  v8 = a4;
  [(NSRecursiveLock *)self->_apiLock lock];
  [(BRLTBrailleStateManager *)self _generateBrailleBufferForInsert];
  [(BRLTBrailleBuffer *)self->_brailleBuffer insertBrailleChar:v16 modifiers:v8 inputMode:self->_inputTranslationMode];
  location = self->_brailleSelection.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = self->_brailleSelection.length;
    v11 = length == 0;
    if (length)
    {
      location = self->_brailleSelection.length;
    }

    v12 = 168;
    if (v11)
    {
      v12 = 160;
    }

    *(&self->super.isa + v12) = (location + 1);
  }

  self->_brailleDirty = 1;
  if (!a5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained brailleDisplayInsertedCharacter:v16 modifiers:v8];
  }

  v14 = objc_loadWeakRetained(&self->_delegate);
  v15 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  [v14 brailleDisplayStringDidChange:v15 brailleSelection:self->_brailleSelection.location brailleUIOptions:self->_brailleSelection.length modifiers:{0, v8}];

  [(NSRecursiveLock *)self->_apiLock unlock];
}

- (_NSRange)forwardEditingAtomForScriptString:(id)a3
{
  if (self->_inputTranslationMode == 2)
  {
    v3 = [a3 selection];
  }

  else
  {
    v3 = [a3 forwardEditingAtom];
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)backwardEditingAtomForScriptString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inputTranslationMode == 2)
  {
    if ([v4 selection])
    {
      [v5 selection];
      if (!v6)
      {
        v9 = [v5 selection] - 1;
        v10 = 1;
        goto LABEL_7;
      }
    }

    v7 = [v5 selection];
  }

  else
  {
    v7 = [v4 backwardEditingAtom];
  }

  v9 = v7;
  v10 = v8;
LABEL_7:

  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)deleteMergeAtomForScriptString:(id)a3
{
  if (self->_inputTranslationMode == 2)
  {
    v3 = [(BRLTBrailleStateManager *)self backwardEditingAtomForScriptString:a3];
  }

  else
  {
    v3 = [a3 deleteMergeAtom];
  }

  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_selectionIsValidForDelete
{
  v3 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v4 = [v3 length];

  if (v4)
  {
    location = self->_activeBrailleEditingRegion.location;
    v6 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    v7 = [v6 length];

    v8 = self->_brailleSelection.location;
    if (location != 0x7FFFFFFFFFFFFFFELL && location + 1 <= v8)
    {
      return v7 + location >= v8;
    }

    return 0;
  }

  v11 = self->_brailleBackwardEditingRegion.location;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v12 = self->_brailleSelection.location;
  length = self->_brailleBackwardEditingRegion.length;
  if (!length)
  {
    return v11 == v12;
  }

  v14 = length + v11 >= v12;
  return v11 < v12 && v14;
}

- (BOOL)_selectionIsValidForInsert
{
  v3 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v4 = [v3 length];

  if (!v4)
  {
    location = self->_brailleSelection.location;
    v11 = self->_brailleForwardEditingRegion.location;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v11 > location)
    {
      return 0;
    }

    v10 = self->_brailleForwardEditingRegion.length + v11;
    return v10 >= location;
  }

  v5 = self->_activeBrailleEditingRegion.location;
  v6 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v7 = [v6 length];

  result = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = self->_brailleSelection.location;
    if (v5 <= location)
    {
      v10 = v7 + v5;
      return v10 >= location;
    }
  }

  return result;
}

- (BOOL)_generateBrailleBuffer:(BOOL)a3
{
  v3 = a3;
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v6 = [v5 length];
  v7 = v6;
  if (v3)
  {
    if (v6 && [(BRLTBrailleBuffer *)self->_brailleBuffer cursor])
    {
      length = self->_brailleSelection.length;

      if (!length)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v10 = 96;
    if (self->_brailleBackwardEditingRegion.length == 1)
    {
      v10 = 112;
    }

    v9 = 48;
    if (self->_brailleBackwardEditingRegion.length == 1)
    {
      v9 = 64;
    }
  }

  else
  {

    if (v7)
    {
LABEL_16:
      LOBYTE(v14) = 0;
      goto LABEL_17;
    }

    v9 = 32;
    v10 = 80;
  }

  v11 = *(&self->super.isa + v10);
  self->_activeScriptEditingRegion = *(&self->super.isa + v9);
  self->_activeBrailleEditingRegion = v11;
  if (!self->_activeBrailleEditingRegion.length)
  {
    goto LABEL_16;
  }

  if (self->_activeBrailleEditingRegion.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v12 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v13 = [v12 length];

  if (v13)
  {
    goto LABEL_16;
  }

  if (self->_inputTranslationMode == self->_outputTranslationMode)
  {
    v17 = [(BRLTBrailleString *)self->_staticBrailleString brailleChars];
    v18 = [v17 subarrayWithRange:{self->_activeBrailleEditingRegion.location, self->_activeBrailleEditingRegion.length}];
  }

  else
  {
    v19 = [(BRLTScriptString *)self->_scriptString string];
    v17 = [v19 substringWithRange:{self->_activeScriptEditingRegion.location, self->_activeScriptEditingRegion.length}];

    WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
    v21 = [WeakRetained printBrailleForText:v17 language:0 mode:self->_inputTranslationMode textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

    v22 = [[BRLTBrailleString alloc] initWithUnicode:v21];
    v18 = [(BRLTBrailleString *)v22 brailleChars];
  }

  location = self->_activeBrailleEditingRegion.location;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v14 = 0;
    v27 = *v37;
    do
    {
      v28 = 0;
      v29 = v14;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v36 + 1) + 8 * v28);
        v14 = 1;
        v42.location = location;
        v42.length = 1;
        if (!NSIntersectionRange(self[160], v42).length)
        {
          [(BRLTBrailleBuffer *)self->_brailleBuffer insertBrailleChar:v30 modifiers:0 inputMode:self->_inputTranslationMode];
          v14 = v29;
        }

        ++location;
        ++v28;
        v29 = v14;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v26);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  brailleBuffer = self->_brailleBuffer;
  v32 = self->_brailleSelection.location - self->_activeBrailleEditingRegion.location;
  v33 = [(BRLTBrailleBuffer *)brailleBuffer brailleString];
  v34 = [v33 length];

  if (v32 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v32;
  }

  [(BRLTBrailleBuffer *)brailleBuffer setCursor:v35];

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (BOOL)deleteBrailleChar
{
  [(NSRecursiveLock *)self->_apiLock lock];
  v3 = [(BRLTBrailleStateManager *)self _deleteBrailleCharSilently:0];
  [(NSRecursiveLock *)self->_apiLock unlock];
  return v3;
}

- (BOOL)deleteBrailleCharSilently
{
  [(NSRecursiveLock *)self->_apiLock lock];
  v3 = [(BRLTBrailleStateManager *)self _deleteBrailleCharSilently:1];
  [(NSRecursiveLock *)self->_apiLock unlock];
  return v3;
}

- (BOOL)_deleteBrailleCharSilently:(BOOL)a3
{
  v5 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  if ([v5 length])
  {

    goto LABEL_4;
  }

  v6 = [(BRLTBrailleString *)self->_staticBrailleString length];

  if (v6)
  {
LABEL_4:
    [(BRLTScriptString *)self->_scriptString selection];
    if (v7)
    {
      return 0;
    }

    if (![(BRLTBrailleStateManager *)self _selectionIsValidForDelete])
    {
      [(BRLTBrailleStateManager *)self translate];
    }

    if ([(BRLTBrailleStateManager *)self _generateBrailleBufferForDelete])
    {
      self->_brailleDirty = 1;
LABEL_15:
      v15 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
      v16 = [v15 length];

      if (!v16)
      {
        [(BRLTBrailleStateManager *)self translate];
      }

      v8 = 1;
      goto LABEL_20;
    }

    v9 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    if ([v9 length])
    {
      v10 = [(BRLTBrailleBuffer *)self->_brailleBuffer cursor];

      if (v10)
      {
        v11 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
        v12 = [v11 brailleChars];
        v13 = [v12 objectAtIndex:{-[BRLTBrailleBuffer cursor](self->_brailleBuffer, "cursor") - 1}];

        [(BRLTBrailleBuffer *)self->_brailleBuffer deleteBrailleChar];
        --self->_brailleSelection.location;
        self->_brailleDirty = 1;
        if (!a3)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained brailleDisplayDeletedCharacter:v13];
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v8 = 0;
LABEL_20:
    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = [(BRLTBrailleStateManager *)self brailleDisplayString];
    [v17 brailleDisplayStringDidChange:v18 brailleSelection:self->_brailleSelection.location brailleUIOptions:self->_brailleSelection.length modifiers:{0, 0}];

    return v8;
  }

  return 0;
}

- (BOOL)forwardDeleteBrailleChar
{
  [(NSRecursiveLock *)self->_apiLock lock];
  v3 = [(BRLTBrailleStateManager *)self _forwardDeleteBrailleCharSilently:0];
  [(NSRecursiveLock *)self->_apiLock unlock];
  return v3;
}

- (BOOL)forwardDeleteBrailleCharSilently
{
  [(NSRecursiveLock *)self->_apiLock lock];
  v3 = [(BRLTBrailleStateManager *)self _forwardDeleteBrailleCharSilently:1];
  [(NSRecursiveLock *)self->_apiLock unlock];
  return v3;
}

- (void)setBrailleSelection:(_NSRange)a3 needsForwardToScreenReader:(BOOL *)a4 newScriptLocation:(unint64_t *)a5
{
  length = a3.length;
  location = a3.location;
  [(NSRecursiveLock *)self->_apiLock lock];
  v10 = [(BRLTBrailleStateManager *)self _setBrailleSelection:location newScriptLocation:length, a5];
  if (a4)
  {
    *a4 = v10;
  }

  apiLock = self->_apiLock;

  [(NSRecursiveLock *)apiLock unlock];
}

- (BOOL)_setBrailleSelection:(_NSRange)a3 newScriptLocation:(unint64_t *)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  v9 = [v8 length];

  if (location > v9)
  {
    v10 = [(BRLTBrailleStateManager *)self brailleDisplayString];
    location = [v10 length];
  }

  self->_brailleSelection.location = location;
  self->_brailleSelection.length = length;
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  v12 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  v13 = [v12 unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v48 = 0;
  v15 = [WeakRetained textForPrintBraille:v13 language:0 mode:outputTranslationMode locations:&v48];
  v16 = v48;

  v17 = -[BRLTBrailleStateManager _textRangeForBrailleRange:textPositions:scriptLength:](self, "_textRangeForBrailleRange:textPositions:scriptLength:", self->_brailleSelection.location, self->_brailleSelection.length, v16, [v15 length]);
  v19 = v18;
  if ([(BRLTBrailleStateManager *)self _selectionIsValidForInsert]&& [(BRLTBrailleStateManager *)self _selectionIsValidForDelete])
  {
    v20 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    v21 = [v20 length];

    if (v21)
    {
      [(BRLTBrailleBuffer *)self->_brailleBuffer setCursor:self->_brailleSelection.location - self->_activeBrailleEditingRegion.location];
LABEL_9:
      v22 = 0;
      goto LABEL_15;
    }

LABEL_11:
    v22 = 1;
    goto LABEL_15;
  }

  if (self->_brailleDirty)
  {
    [(BRLTBrailleStateManager *)self translate];
    goto LABEL_9;
  }

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v46 = a4;
  v23 = [BRLTScriptString alloc];
  v24 = [(BRLTScriptString *)self->_scriptString string];
  v25 = [(BRLTScriptString *)v23 initWithString:v24 selection:v17, v19];

  v26 = [(BRLTScriptString *)self->_scriptString string];
  v27 = [v26 length];

  v28 = objc_loadWeakRetained(&self->_translationDelegate);
  v29 = [(BRLTScriptString *)self->_scriptString string];
  v30 = self->_outputTranslationMode;
  v47 = 0;
  v31 = [v28 printBrailleForText:v29 language:0 mode:v30 textPositionsRange:0 locations:v27 textFormattingRanges:{&v47, 0}];
  v32 = v47;

  self->_scriptForwardEditingRegion.location = [(BRLTBrailleStateManager *)self forwardEditingAtomForScriptString:v25];
  self->_scriptForwardEditingRegion.length = v33;
  self->_scriptBackwardEditingRegion.location = [(BRLTBrailleStateManager *)self backwardEditingAtomForScriptString:v25];
  self->_scriptBackwardEditingRegion.length = v34;
  self->_scriptMergeEditingRegion.location = [(BRLTBrailleStateManager *)self deleteMergeAtomForScriptString:v25];
  self->_scriptMergeEditingRegion.length = v35;
  self->_brailleForwardEditingRegion.location = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", self->_scriptForwardEditingRegion.location, self->_scriptForwardEditingRegion.length, v32, [v31 length]);
  self->_brailleForwardEditingRegion.length = v36;
  self->_brailleBackwardEditingRegion.location = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", self->_scriptBackwardEditingRegion.location, self->_scriptBackwardEditingRegion.length, v32, [v31 length]);
  self->_brailleBackwardEditingRegion.length = v37;
  self->_brailleMergeEditingRegion.location = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", self->_scriptMergeEditingRegion.location, self->_scriptMergeEditingRegion.length, v32, [v31 length]);
  self->_brailleMergeEditingRegion.length = v38;
  self->_activeScriptEditingRegion = xmmword_241E38B50;
  self->_activeBrailleEditingRegion = xmmword_241E38B50;
  v39 = objc_alloc_init(BRLTBrailleBuffer);
  brailleBuffer = self->_brailleBuffer;
  self->_brailleBuffer = v39;

  v41 = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v28) = objc_opt_respondsToSelector();

  if (v28)
  {
    v42 = objc_loadWeakRetained(&self->_delegate);
    [v42 scriptSelectionDidChange:{v17, v19}];
  }

  v22 = 1;
  a4 = v46;
LABEL_15:
  self->_pendingScriptSelection.location = v17;
  self->_pendingScriptSelection.length = v19;
  if (a4)
  {
    *a4 = v17;
  }

  v43 = objc_loadWeakRetained(&self->_delegate);
  v44 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  [v43 brailleDisplayStringDidChange:v44 brailleSelection:self->_brailleSelection.location brailleUIOptions:self->_brailleSelection.length modifiers:{0, 0}];

  return v22;
}

- (_NSRange)_textRangeForBrailleRange:(_NSRange)a3 textPositions:(id)a4 scriptLength:(int64_t)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = [v8 bytes];
  v10 = [v8 length];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 8)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = location + length;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v15 = *(v9 + 8 * v12);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL && v15 >= location)
    {
      v14 = v12;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL && v15 >= v13)
    {
      v11 = v12;
    }

    ++v12;
  }

  while (v10 >> 3 != v12);
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    v14 = a5;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = a5;
  }

  v18 = v11 - v14;

  v19 = v14;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)_brailleRangeForTextRange:(_NSRange)a3 textPositions:(id)a4 brailleLength:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = [v8 bytes];
  v10 = [v8 length];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 8)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = location + length;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v15 = *(v9 + 8 * v12);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL && v15 >= location)
    {
      v14 = v12;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL && v15 >= v13)
    {
      v11 = v12;
    }

    ++v12;
  }

  while (v10 >> 3 != v12);
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    v14 = a5;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = a5;
  }

  v18 = v11 - v14;

  v19 = v14;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (void)translate
{
  [(NSRecursiveLock *)self->_apiLock lock];
  [(BRLTBrailleStateManager *)self _translate:0];
  apiLock = self->_apiLock;

  [(NSRecursiveLock *)apiLock unlock];
}

- (void)translateForced:(BOOL)a3
{
  if (a3)
  {
    self->_scriptDirty = 1;
  }

  [(BRLTBrailleStateManager *)self translate];
}

- (id)brailleDisplayString
{
  [(NSRecursiveLock *)self->_apiLock lock];
  if (!self->_brailleDirty)
  {
    v3 = self->_staticBrailleString;
    goto LABEL_6;
  }

  if (!self->_editable || self->_activeBrailleEditingRegion.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
LABEL_6:
    v4 = v3;
    goto LABEL_7;
  }

  v10 = [(BRLTBrailleString *)self->_staticBrailleString brailleChars];
  v11 = [v10 mutableCopy];

  v12 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v13 = [v12 brailleChars];
  [v11 replaceObjectsInRange:self->_activeBrailleEditingRegion.location withObjectsFromArray:{self->_activeBrailleEditingRegion.length, v13}];

  v4 = [[BRLTBrailleString alloc] initWithBrailleChars:v11];
LABEL_7:
  if (self->_isTerminalOutput)
  {
    v5 = [(BRLTBrailleString *)v4 unicode];
    v6 = [@"⠿⠀" stringByAppendingString:v5];
    v7 = [v6 stringByAppendingString:@"⠀⠿"];

    v8 = [[BRLTBrailleString alloc] initWithUnicode:v7];
    v4 = v8;
  }

  [(NSRecursiveLock *)self->_apiLock unlock];

  return v4;
}

- (_NSRange)brailleSelection
{
  length = self->_brailleSelection.length;
  location = self->_brailleSelection.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)brailleFocus
{
  length = self->_brailleFocus.length;
  location = self->_brailleFocus.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)brailleSuggestion
{
  length = self->_brailleSuggestion.length;
  location = self->_brailleSuggestion.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)outputScriptString
{
  [(NSRecursiveLock *)self->_apiLock lock];
  v3 = [(BRLTScriptString *)self->_scriptString copy];
  [(NSRecursiveLock *)self->_apiLock unlock];

  return v3;
}

- (_NSRange)scriptEditingRange
{
  [(NSRecursiveLock *)self->_apiLock lock];
  v3 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v4 = [v3 length];

  if (v4)
  {
    location = self->_activeScriptEditingRegion.location;
    length = self->_activeScriptEditingRegion.length;
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(NSRecursiveLock *)self->_apiLock unlock];
  v7 = location;
  v8 = length;
  result.length = v8;
  result.location = v7;
  return result;
}

- (unint64_t)scriptLocationForBrailleLocation:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_apiLock lock];
  if (self->_editable && (length = self->_activeBrailleEditingRegion.length) != 0 && ((location = self->_activeBrailleEditingRegion.location, v8 = a3 >= location, v7 = a3 - location, v8) ? (v8 = v7 >= length) : (v8 = 1), !v8))
  {
    [(NSRecursiveLock *)self->_apiLock unlock];
    return self->_activeBrailleEditingRegion.location;
  }

  else if (self->_brailleDirty)
  {
    WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
    v10 = [(BRLTBrailleStateManager *)self brailleDisplayString];
    v11 = [v10 unicode];
    outputTranslationMode = self->_outputTranslationMode;
    v26 = 0;
    v13 = [WeakRetained textForPrintBraille:v11 language:0 mode:outputTranslationMode locations:&v26];
    v14 = v26;

    v24 = -[BRLTBrailleStateManager _textRangeForBrailleRange:textPositions:scriptLength:](self, "_textRangeForBrailleRange:textPositions:scriptLength:", a3, 0, v14, [v13 length]);
    [(NSRecursiveLock *)self->_apiLock unlock];
  }

  else
  {
    v15 = [(BRLTScriptString *)self->_scriptString string];
    v16 = [v15 length];

    v17 = objc_loadWeakRetained(&self->_translationDelegate);
    v18 = [(BRLTScriptString *)self->_scriptString string];
    v19 = self->_outputTranslationMode;
    v27 = 0;
    v20 = [v17 printBrailleForText:v18 language:0 mode:v19 textPositionsRange:0 locations:v16 textFormattingRanges:{&v27, 0}];
    v21 = v27;

    if (a3 >= [v21 length] >> 3)
    {
      [(NSRecursiveLock *)self->_apiLock unlock];
      v23 = [(BRLTScriptString *)self->_scriptString string];
      v24 = [v23 length];
    }

    else
    {
      v22 = [v21 bytes];
      [(NSRecursiveLock *)self->_apiLock unlock];
      v24 = *(v22 + 8 * a3);
    }
  }

  return v24;
}

- (unint64_t)brailleLocationForScriptLocation:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_apiLock lock];
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  v6 = [(BRLTBrailleString *)self->_staticBrailleString unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v14 = 0;
  v8 = [WeakRetained textForPrintBraille:v6 language:0 mode:outputTranslationMode locations:&v14];
  v9 = v14;

  v10 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  v11 = [v10 unicode];
  v12 = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", a3, 0, v9, [v11 length]);

  [(NSRecursiveLock *)self->_apiLock unlock];
  return v12;
}

- (_NSRange)brailleRangeForScriptRange:(_NSRange)a3
{
  location = a3.location;
  [(NSRecursiveLock *)self->_apiLock lock:a3.location];
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  v6 = [(BRLTBrailleString *)self->_staticBrailleString unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v18 = 0;
  v8 = [WeakRetained textForPrintBraille:v6 language:0 mode:outputTranslationMode locations:&v18];
  v9 = v18;

  v10 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  v11 = [v10 unicode];
  v12 = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", location, 0, v9, [v11 length]);
  v14 = v13;

  if (self->_editable)
  {
    v15.length = self->_activeBrailleEditingRegion.length;
    if (v15.length)
    {
      v15.location = self->_activeBrailleEditingRegion.location;
      v19.location = v12;
      v19.length = v14;
      if (NSIntersectionRange(v19, v15).location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 += self->_activeBrailleEditingRegion.length;
      }
    }
  }

  [(NSRecursiveLock *)self->_apiLock unlock];

  v16 = v12;
  v17 = v14;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)scriptRangeForBrailleRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(NSRecursiveLock *)self->_apiLock lock];
  v6 = [(BRLTBrailleStateManager *)self scriptLocationForBrailleLocation:location];
  v7 = [(BRLTBrailleStateManager *)self scriptLocationForBrailleLocation:location + length];
  [(NSRecursiveLock *)self->_apiLock unlock];
  v8 = v7 - v6;
  v9 = v6;
  result.length = v8;
  result.location = v9;
  return result;
}

- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_apiLock lock];
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  v6 = [(BRLTBrailleString *)self->_staticBrailleString unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v21 = 0;
  v8 = [WeakRetained textForPrintBraille:v6 language:0 mode:outputTranslationMode locations:&v21];
  v9 = v21;

  v10 = [v9 bytes];
  v11 = [v9 length] >> 3;
  if (v11 <= a3)
  {
    [(NSRecursiveLock *)self->_apiLock unlock];
    v18 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 8 * a3);
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v16 = *(v10 + 8 * v12);
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v16 == v13)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v16 == v13)
        {
          v17 = v12;
        }

        else
        {
          v17 = v14;
        }
      }

      else
      {
        v17 = v12;
        if (v16 != v13)
        {
          break;
        }
      }

      ++v12;
      v14 = v17;
    }

    while (v11 != v12);
    [(NSRecursiveLock *)self->_apiLock unlock];
    v18 = v14 - v15 + 1;
  }

  v19 = v15;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (void)setOutputTranslationMode:(unint64_t)a3
{
  if (self->_outputTranslationMode != a3)
  {
    self->_outputTranslationMode = a3;
    self->_scriptDirty = 1;
  }
}

- (void)setInputTranslationMode:(unint64_t)a3
{
  if (self->_inputTranslationMode != a3)
  {
    self->_inputTranslationMode = a3;
    v4 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    v5 = [v4 length];

    if (v5)
    {
      self->_brailleDirty = 1;
    }
  }
}

@end