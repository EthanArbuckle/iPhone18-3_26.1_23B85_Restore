@interface BRLTBrailleStateManager
- (BOOL)_deleteBrailleCharSilently:(BOOL)silently;
- (BOOL)_generateBrailleBuffer:(BOOL)buffer;
- (BOOL)_selectionIsValidForDelete;
- (BOOL)_selectionIsValidForInsert;
- (BOOL)_setBrailleSelection:(_NSRange)selection newScriptLocation:(unint64_t *)location;
- (BOOL)deleteBrailleChar;
- (BOOL)deleteBrailleCharSilently;
- (BOOL)forwardDeleteBrailleChar;
- (BOOL)forwardDeleteBrailleCharSilently;
- (BRLTBrailleStateManager)initWithDelegate:(id)delegate translationDelegate:(id)translationDelegate;
- (_NSRange)_brailleRangeForTextRange:(_NSRange)range textPositions:(id)positions brailleLength:(unint64_t)length;
- (_NSRange)_textRangeForBrailleRange:(_NSRange)range textPositions:(id)positions scriptLength:(int64_t)length;
- (_NSRange)backwardEditingAtomForScriptString:(id)string;
- (_NSRange)brailleFocus;
- (_NSRange)brailleRangeForScriptRange:(_NSRange)range;
- (_NSRange)brailleSelection;
- (_NSRange)brailleSuggestion;
- (_NSRange)deleteMergeAtomForScriptString:(id)string;
- (_NSRange)forwardEditingAtomForScriptString:(id)string;
- (_NSRange)scriptEditingRange;
- (_NSRange)scriptRangeForBrailleRange:(_NSRange)range;
- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(unint64_t)index;
- (id)brailleDisplayString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)outputScriptString;
- (id)translationDelegate;
- (unint64_t)brailleLocationForScriptLocation:(unint64_t)location;
- (unint64_t)scriptLocationForBrailleLocation:(unint64_t)location;
- (void)insertBrailleChar:(id)char modifiers:(id)modifiers;
- (void)insertBrailleChar:(id)char modifiers:(id)modifiers silently:(BOOL)silently;
- (void)setBrailleSelection:(_NSRange)selection needsForwardToScreenReader:(BOOL *)reader newScriptLocation:(unint64_t *)location;
- (void)setDelegate:(id)delegate;
- (void)setInputTranslationMode:(unint64_t)mode;
- (void)setOutputTranslationMode:(unint64_t)mode;
- (void)setScriptString:(id)string;
- (void)setTranslationDelegate:(id)delegate;
- (void)translate;
- (void)translateForced:(BOOL)forced;
@end

@implementation BRLTBrailleStateManager

- (BRLTBrailleStateManager)initWithDelegate:(id)delegate translationDelegate:(id)translationDelegate
{
  v15.receiver = self;
  v15.super_class = BRLTBrailleStateManager;
  translationDelegateCopy = translationDelegate;
  delegateCopy = delegate;
  v7 = [(BRLTBrailleStateManager *)&v15 init];
  v8 = objc_alloc_init(BRLTBrailleBuffer);
  v9 = *(v7 + 2);
  *(v7 + 2) = v8;

  objc_storeWeak(v7 + 27, delegateCopy);
  objc_storeWeak(v7 + 28, translationDelegateCopy);

  *(v7 + 10) = xmmword_241E38B50;
  *(v7 + 11) = xmmword_241E38B50;
  *(v7 + 12) = xmmword_241E38B50;
  *(v7 + 232) = xmmword_241E38B50;
  v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
  v11 = *(v7 + 31);
  *(v7 + 31) = v10;

  array = [MEMORY[0x277CBEB18] array];
  v13 = *(v7 + 32);
  *(v7 + 32) = array;

  return v7;
}

- (void)setDelegate:(id)delegate
{
  apiLock = self->_apiLock;
  delegateCopy = delegate;
  [(NSRecursiveLock *)apiLock lock];
  objc_storeWeak(&self->_delegate, delegateCopy);

  v6 = self->_apiLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)setTranslationDelegate:(id)delegate
{
  apiLock = self->_apiLock;
  delegateCopy = delegate;
  [(NSRecursiveLock *)apiLock lock];
  objc_storeWeak(&self->_translationDelegate, delegateCopy);

  v6 = self->_apiLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (id)translationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_loadWeakRetained(&self->_translationDelegate);
  v8 = [v5 initWithDelegate:WeakRetained translationDelegate:v7];

  objc_storeStrong((v8 + 8), self->_scriptString);
  v9 = [(BRLTBrailleBuffer *)self->_brailleBuffer copyWithZone:zone];
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

- (void)setScriptString:(id)string
{
  stringCopy = string;
  [(NSRecursiveLock *)self->_apiLock lock];
  string = [stringCopy string];
  p_scriptString = &self->_scriptString;
  string2 = [(BRLTScriptString *)self->_scriptString string];
  if ([string isEqual:string2])
  {
    selection = [stringCopy selection];
    v11 = v10;
    v14 = selection != [(BRLTScriptString *)*p_scriptString selection]|| v11 != v12;
  }

  else
  {
    v14 = 1;
  }

  v15 = self->_pendingScriptSelection.location != 0x7FFFFFFFFFFFFFFFLL && ([stringCopy selection] != self->_pendingScriptSelection.location || v16 != self->_pendingScriptSelection.length);
  if (!v14 && !v15 && !self->_scriptDirty)
  {
    v27 = BRLTLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241DFD000, v27, OS_LOG_TYPE_INFO, "setScriptString: not processing the input since it is identical to the current script string.", buf, 2u);
    }

    v28 = [stringCopy copy];
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
    string3 = [stringCopy string];
    string4 = [(BRLTScriptString *)*p_scriptString string];
    if ([string3 isEqualToString:string4] && objc_msgSend(stringCopy, "selection") == self->_pendingScriptSelection.location && v21 == self->_pendingScriptSelection.length)
    {
      textFormattingRanges = [stringCopy textFormattingRanges];
      textFormattingRanges2 = [(BRLTScriptString *)*p_scriptString textFormattingRanges];
      v24 = textFormattingRanges2;
      if (textFormattingRanges == textFormattingRanges2)
      {

        goto LABEL_34;
      }

      textFormattingRanges3 = [stringCopy textFormattingRanges];
      textFormattingRanges4 = [(BRLTScriptString *)*p_scriptString textFormattingRanges];
      v31 = [textFormattingRanges3 isEqual:textFormattingRanges4];

      if (v31)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_scriptString, string);
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
  v34 = stringCopy;
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

- (void)insertBrailleChar:(id)char modifiers:(id)modifiers
{
  apiLock = self->_apiLock;
  modifiersCopy = modifiers;
  charCopy = char;
  [(NSRecursiveLock *)apiLock lock];
  [(BRLTBrailleStateManager *)self insertBrailleChar:charCopy modifiers:modifiersCopy silently:0];

  v9 = self->_apiLock;

  [(NSRecursiveLock *)v9 unlock];
}

- (void)insertBrailleChar:(id)char modifiers:(id)modifiers silently:(BOOL)silently
{
  charCopy = char;
  modifiersCopy = modifiers;
  [(NSRecursiveLock *)self->_apiLock lock];
  [(BRLTBrailleStateManager *)self _generateBrailleBufferForInsert];
  [(BRLTBrailleBuffer *)self->_brailleBuffer insertBrailleChar:charCopy modifiers:modifiersCopy inputMode:self->_inputTranslationMode];
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
  if (!silently)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained brailleDisplayInsertedCharacter:charCopy modifiers:modifiersCopy];
  }

  v14 = objc_loadWeakRetained(&self->_delegate);
  brailleDisplayString = [(BRLTBrailleStateManager *)self brailleDisplayString];
  [v14 brailleDisplayStringDidChange:brailleDisplayString brailleSelection:self->_brailleSelection.location brailleUIOptions:self->_brailleSelection.length modifiers:{0, modifiersCopy}];

  [(NSRecursiveLock *)self->_apiLock unlock];
}

- (_NSRange)forwardEditingAtomForScriptString:(id)string
{
  if (self->_inputTranslationMode == 2)
  {
    selection = [string selection];
  }

  else
  {
    selection = [string forwardEditingAtom];
  }

  result.length = v4;
  result.location = selection;
  return result;
}

- (_NSRange)backwardEditingAtomForScriptString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_inputTranslationMode == 2)
  {
    if ([stringCopy selection])
    {
      [v5 selection];
      if (!v6)
      {
        v9 = [v5 selection] - 1;
        v10 = 1;
        goto LABEL_7;
      }
    }

    selection = [v5 selection];
  }

  else
  {
    selection = [stringCopy backwardEditingAtom];
  }

  v9 = selection;
  v10 = v8;
LABEL_7:

  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)deleteMergeAtomForScriptString:(id)string
{
  if (self->_inputTranslationMode == 2)
  {
    deleteMergeAtom = [(BRLTBrailleStateManager *)self backwardEditingAtomForScriptString:string];
  }

  else
  {
    deleteMergeAtom = [string deleteMergeAtom];
  }

  result.length = v4;
  result.location = deleteMergeAtom;
  return result;
}

- (BOOL)_selectionIsValidForDelete
{
  brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v4 = [brailleString length];

  if (v4)
  {
    location = self->_activeBrailleEditingRegion.location;
    brailleString2 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    v7 = [brailleString2 length];

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
  brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v4 = [brailleString length];

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
  brailleString2 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v7 = [brailleString2 length];

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

- (BOOL)_generateBrailleBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  v41 = *MEMORY[0x277D85DE8];
  brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v6 = [brailleString length];
  v7 = v6;
  if (bufferCopy)
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

  brailleString2 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v13 = [brailleString2 length];

  if (v13)
  {
    goto LABEL_16;
  }

  if (self->_inputTranslationMode == self->_outputTranslationMode)
  {
    brailleChars = [(BRLTBrailleString *)self->_staticBrailleString brailleChars];
    brailleChars2 = [brailleChars subarrayWithRange:{self->_activeBrailleEditingRegion.location, self->_activeBrailleEditingRegion.length}];
  }

  else
  {
    string = [(BRLTScriptString *)self->_scriptString string];
    brailleChars = [string substringWithRange:{self->_activeScriptEditingRegion.location, self->_activeScriptEditingRegion.length}];

    WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
    v21 = [WeakRetained printBrailleForText:brailleChars language:0 mode:self->_inputTranslationMode textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

    v22 = [[BRLTBrailleString alloc] initWithUnicode:v21];
    brailleChars2 = [(BRLTBrailleString *)v22 brailleChars];
  }

  location = self->_activeBrailleEditingRegion.location;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = brailleChars2;
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
  brailleString3 = [(BRLTBrailleBuffer *)brailleBuffer brailleString];
  v34 = [brailleString3 length];

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

- (BOOL)_deleteBrailleCharSilently:(BOOL)silently
{
  brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  if ([brailleString length])
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
      brailleString2 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
      v16 = [brailleString2 length];

      if (!v16)
      {
        [(BRLTBrailleStateManager *)self translate];
      }

      v8 = 1;
      goto LABEL_20;
    }

    brailleString3 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    if ([brailleString3 length])
    {
      cursor = [(BRLTBrailleBuffer *)self->_brailleBuffer cursor];

      if (cursor)
      {
        brailleString4 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
        brailleChars = [brailleString4 brailleChars];
        v13 = [brailleChars objectAtIndex:{-[BRLTBrailleBuffer cursor](self->_brailleBuffer, "cursor") - 1}];

        [(BRLTBrailleBuffer *)self->_brailleBuffer deleteBrailleChar];
        --self->_brailleSelection.location;
        self->_brailleDirty = 1;
        if (!silently)
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
    brailleDisplayString = [(BRLTBrailleStateManager *)self brailleDisplayString];
    [v17 brailleDisplayStringDidChange:brailleDisplayString brailleSelection:self->_brailleSelection.location brailleUIOptions:self->_brailleSelection.length modifiers:{0, 0}];

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

- (void)setBrailleSelection:(_NSRange)selection needsForwardToScreenReader:(BOOL *)reader newScriptLocation:(unint64_t *)location
{
  length = selection.length;
  location = selection.location;
  [(NSRecursiveLock *)self->_apiLock lock];
  location = [(BRLTBrailleStateManager *)self _setBrailleSelection:location newScriptLocation:length, location];
  if (reader)
  {
    *reader = location;
  }

  apiLock = self->_apiLock;

  [(NSRecursiveLock *)apiLock unlock];
}

- (BOOL)_setBrailleSelection:(_NSRange)selection newScriptLocation:(unint64_t *)location
{
  length = selection.length;
  location = selection.location;
  brailleDisplayString = [(BRLTBrailleStateManager *)self brailleDisplayString];
  v9 = [brailleDisplayString length];

  if (location > v9)
  {
    brailleDisplayString2 = [(BRLTBrailleStateManager *)self brailleDisplayString];
    location = [brailleDisplayString2 length];
  }

  self->_brailleSelection.location = location;
  self->_brailleSelection.length = length;
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  brailleDisplayString3 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  unicode = [brailleDisplayString3 unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v48 = 0;
  v15 = [WeakRetained textForPrintBraille:unicode language:0 mode:outputTranslationMode locations:&v48];
  v16 = v48;

  v17 = -[BRLTBrailleStateManager _textRangeForBrailleRange:textPositions:scriptLength:](self, "_textRangeForBrailleRange:textPositions:scriptLength:", self->_brailleSelection.location, self->_brailleSelection.length, v16, [v15 length]);
  v19 = v18;
  if ([(BRLTBrailleStateManager *)self _selectionIsValidForInsert]&& [(BRLTBrailleStateManager *)self _selectionIsValidForDelete])
  {
    brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    v21 = [brailleString length];

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

  locationCopy = location;
  v23 = [BRLTScriptString alloc];
  string = [(BRLTScriptString *)self->_scriptString string];
  v25 = [(BRLTScriptString *)v23 initWithString:string selection:v17, v19];

  string2 = [(BRLTScriptString *)self->_scriptString string];
  v27 = [string2 length];

  v28 = objc_loadWeakRetained(&self->_translationDelegate);
  string3 = [(BRLTScriptString *)self->_scriptString string];
  v30 = self->_outputTranslationMode;
  v47 = 0;
  v31 = [v28 printBrailleForText:string3 language:0 mode:v30 textPositionsRange:0 locations:v27 textFormattingRanges:{&v47, 0}];
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
  location = locationCopy;
LABEL_15:
  self->_pendingScriptSelection.location = v17;
  self->_pendingScriptSelection.length = v19;
  if (location)
  {
    *location = v17;
  }

  v43 = objc_loadWeakRetained(&self->_delegate);
  brailleDisplayString4 = [(BRLTBrailleStateManager *)self brailleDisplayString];
  [v43 brailleDisplayStringDidChange:brailleDisplayString4 brailleSelection:self->_brailleSelection.location brailleUIOptions:self->_brailleSelection.length modifiers:{0, 0}];

  return v22;
}

- (_NSRange)_textRangeForBrailleRange:(_NSRange)range textPositions:(id)positions scriptLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  positionsCopy = positions;
  bytes = [positionsCopy bytes];
  v10 = [positionsCopy length];
  lengthCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 8)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = location + length;
  lengthCopy = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v15 = *(bytes + 8 * v12);
    if (lengthCopy == 0x7FFFFFFFFFFFFFFFLL && v15 >= location)
    {
      lengthCopy = v12;
    }

    if (lengthCopy2 == 0x7FFFFFFFFFFFFFFFLL && v15 >= v13)
    {
      lengthCopy2 = v12;
    }

    ++v12;
  }

  while (v10 >> 3 != v12);
  if (lengthCopy == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    lengthCopy = length;
  }

  if (lengthCopy2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lengthCopy2 = length;
  }

  v18 = lengthCopy2 - lengthCopy;

  v19 = lengthCopy;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)_brailleRangeForTextRange:(_NSRange)range textPositions:(id)positions brailleLength:(unint64_t)length
{
  length = range.length;
  location = range.location;
  positionsCopy = positions;
  bytes = [positionsCopy bytes];
  v10 = [positionsCopy length];
  lengthCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 8)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = location + length;
  lengthCopy = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v15 = *(bytes + 8 * v12);
    if (lengthCopy == 0x7FFFFFFFFFFFFFFFLL && v15 >= location)
    {
      lengthCopy = v12;
    }

    if (lengthCopy2 == 0x7FFFFFFFFFFFFFFFLL && v15 >= v13)
    {
      lengthCopy2 = v12;
    }

    ++v12;
  }

  while (v10 >> 3 != v12);
  if (lengthCopy == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    lengthCopy = length;
  }

  if (lengthCopy2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lengthCopy2 = length;
  }

  v18 = lengthCopy2 - lengthCopy;

  v19 = lengthCopy;
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

- (void)translateForced:(BOOL)forced
{
  if (forced)
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
    brailleString = self->_staticBrailleString;
    goto LABEL_6;
  }

  if (!self->_editable || self->_activeBrailleEditingRegion.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
LABEL_6:
    v4 = brailleString;
    goto LABEL_7;
  }

  brailleChars = [(BRLTBrailleString *)self->_staticBrailleString brailleChars];
  v11 = [brailleChars mutableCopy];

  brailleString2 = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  brailleChars2 = [brailleString2 brailleChars];
  [v11 replaceObjectsInRange:self->_activeBrailleEditingRegion.location withObjectsFromArray:{self->_activeBrailleEditingRegion.length, brailleChars2}];

  v4 = [[BRLTBrailleString alloc] initWithBrailleChars:v11];
LABEL_7:
  if (self->_isTerminalOutput)
  {
    unicode = [(BRLTBrailleString *)v4 unicode];
    v6 = [@"⠿⠀" stringByAppendingString:unicode];
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
  brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
  v4 = [brailleString length];

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

- (unint64_t)scriptLocationForBrailleLocation:(unint64_t)location
{
  [(NSRecursiveLock *)self->_apiLock lock];
  if (self->_editable && (length = self->_activeBrailleEditingRegion.length) != 0 && ((location = self->_activeBrailleEditingRegion.location, v8 = location >= location, v7 = location - location, v8) ? (v8 = v7 >= length) : (v8 = 1), !v8))
  {
    [(NSRecursiveLock *)self->_apiLock unlock];
    return self->_activeBrailleEditingRegion.location;
  }

  else if (self->_brailleDirty)
  {
    WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
    brailleDisplayString = [(BRLTBrailleStateManager *)self brailleDisplayString];
    unicode = [brailleDisplayString unicode];
    outputTranslationMode = self->_outputTranslationMode;
    v26 = 0;
    v13 = [WeakRetained textForPrintBraille:unicode language:0 mode:outputTranslationMode locations:&v26];
    v14 = v26;

    v24 = -[BRLTBrailleStateManager _textRangeForBrailleRange:textPositions:scriptLength:](self, "_textRangeForBrailleRange:textPositions:scriptLength:", location, 0, v14, [v13 length]);
    [(NSRecursiveLock *)self->_apiLock unlock];
  }

  else
  {
    string = [(BRLTScriptString *)self->_scriptString string];
    v16 = [string length];

    v17 = objc_loadWeakRetained(&self->_translationDelegate);
    string2 = [(BRLTScriptString *)self->_scriptString string];
    v19 = self->_outputTranslationMode;
    v27 = 0;
    v20 = [v17 printBrailleForText:string2 language:0 mode:v19 textPositionsRange:0 locations:v16 textFormattingRanges:{&v27, 0}];
    v21 = v27;

    if (location >= [v21 length] >> 3)
    {
      [(NSRecursiveLock *)self->_apiLock unlock];
      string3 = [(BRLTScriptString *)self->_scriptString string];
      v24 = [string3 length];
    }

    else
    {
      bytes = [v21 bytes];
      [(NSRecursiveLock *)self->_apiLock unlock];
      v24 = *(bytes + 8 * location);
    }
  }

  return v24;
}

- (unint64_t)brailleLocationForScriptLocation:(unint64_t)location
{
  [(NSRecursiveLock *)self->_apiLock lock];
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  unicode = [(BRLTBrailleString *)self->_staticBrailleString unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v14 = 0;
  v8 = [WeakRetained textForPrintBraille:unicode language:0 mode:outputTranslationMode locations:&v14];
  v9 = v14;

  brailleDisplayString = [(BRLTBrailleStateManager *)self brailleDisplayString];
  unicode2 = [brailleDisplayString unicode];
  v12 = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", location, 0, v9, [unicode2 length]);

  [(NSRecursiveLock *)self->_apiLock unlock];
  return v12;
}

- (_NSRange)brailleRangeForScriptRange:(_NSRange)range
{
  location = range.location;
  [(NSRecursiveLock *)self->_apiLock lock:range.location];
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  unicode = [(BRLTBrailleString *)self->_staticBrailleString unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v18 = 0;
  v8 = [WeakRetained textForPrintBraille:unicode language:0 mode:outputTranslationMode locations:&v18];
  v9 = v18;

  brailleDisplayString = [(BRLTBrailleStateManager *)self brailleDisplayString];
  unicode2 = [brailleDisplayString unicode];
  v12 = -[BRLTBrailleStateManager _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", location, 0, v9, [unicode2 length]);
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

- (_NSRange)scriptRangeForBrailleRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(unint64_t)index
{
  [(NSRecursiveLock *)self->_apiLock lock];
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);
  unicode = [(BRLTBrailleString *)self->_staticBrailleString unicode];
  outputTranslationMode = self->_outputTranslationMode;
  v21 = 0;
  v8 = [WeakRetained textForPrintBraille:unicode language:0 mode:outputTranslationMode locations:&v21];
  v9 = v21;

  bytes = [v9 bytes];
  v11 = [v9 length] >> 3;
  if (v11 <= index)
  {
    [(NSRecursiveLock *)self->_apiLock unlock];
    v18 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
    v13 = *(bytes + 8 * index);
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v16 = *(bytes + 8 * v12);
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

- (void)setOutputTranslationMode:(unint64_t)mode
{
  if (self->_outputTranslationMode != mode)
  {
    self->_outputTranslationMode = mode;
    self->_scriptDirty = 1;
  }
}

- (void)setInputTranslationMode:(unint64_t)mode
{
  if (self->_inputTranslationMode != mode)
  {
    self->_inputTranslationMode = mode;
    brailleString = [(BRLTBrailleBuffer *)self->_brailleBuffer brailleString];
    v5 = [brailleString length];

    if (v5)
    {
      self->_brailleDirty = 1;
    }
  }
}

@end