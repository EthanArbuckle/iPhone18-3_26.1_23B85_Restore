@interface CFXPickerSession
- (CFXPickerSession)initWithIdentifier:(id)identifier isCompact:(BOOL)compact;
- (NSDictionary)effectChangesDict;
- (double)sessionDuration;
- (void)didChangePresentationMode;
- (void)didDismiss;
- (void)didModifyEffectOfType:(id)type wasRemoval:(BOOL)removal;
@end

@implementation CFXPickerSession

- (CFXPickerSession)initWithIdentifier:(id)identifier isCompact:(BOOL)compact
{
  compactCopy = compact;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CFXPickerSession;
  v8 = [(CFXPickerSession *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pickerBundleIdentifier, identifier);
    v10 = [MEMORY[0x277CBEAA8] now];
    sessionStartTime = v9->_sessionStartTime;
    v9->_sessionStartTime = v10;

    if (compactCopy)
    {
      v12 = 48;
    }

    else
    {
      v12 = 56;
    }

    v9->_isCompactPresentation = compactCopy;
    *(&v9->super.isa + v12) = [MEMORY[0x277CBEAA8] now];
    *&v9->_didModifyEffectsStack = 0;
    v9->_typeOfRemovedEffect = 0;
  }

  return v9;
}

- (double)sessionDuration
{
  v3 = [MEMORY[0x277CBEAA8] now];
  sessionStartTime = [(CFXPickerSession *)self sessionStartTime];
  [v3 timeIntervalSinceDate:sessionStartTime];
  v6 = v5;

  return v6;
}

- (NSDictionary)effectChangesDict
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CFXPickerSession didModifyEffectsStack](self, "didModifyEffectsStack")}];
  [dictionary setObject:v4 forKeyedSubscript:@"DidChangeEffectsKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CFXPickerSession didRemoveEffect](self, "didRemoveEffect")}];
  [dictionary setObject:v5 forKeyedSubscript:@"DidRemoveEffectsKey"];

  typeOfRemovedEffect = [(CFXPickerSession *)self typeOfRemovedEffect];

  if (typeOfRemovedEffect)
  {
    typeOfRemovedEffect2 = [(CFXPickerSession *)self typeOfRemovedEffect];
    [dictionary setObject:typeOfRemovedEffect2 forKeyedSubscript:@"RemovedEffectTypeKey"];
  }

  return dictionary;
}

- (void)didChangePresentationMode
{
  isCompactPresentation = [(CFXPickerSession *)self isCompactPresentation];
  v4 = [MEMORY[0x277CBEAA8] now];
  if (isCompactPresentation)
  {
    lastCompactPresentationTime = [(CFXPickerSession *)self lastCompactPresentationTime];
    [v4 timeIntervalSinceDate:lastCompactPresentationTime];
    self->_compactPresentationDuration = v6 + self->_compactPresentationDuration;

    [(CFXPickerSession *)self setLastCompactPresentationTime:0];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(CFXPickerSession *)self setLastExpandedPresentationTime:v7];
    v8 = 0;
  }

  else
  {
    lastExpandedPresentationTime = [(CFXPickerSession *)self lastExpandedPresentationTime];
    [v4 timeIntervalSinceDate:lastExpandedPresentationTime];
    self->_expandedPresentationDuration = v10 + self->_expandedPresentationDuration;

    [(CFXPickerSession *)self setLastExpandedPresentationTime:0];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(CFXPickerSession *)self setLastCompactPresentationTime:v7];
    v8 = 1;
  }

  self->_isCompactPresentation = v8;
}

- (void)didModifyEffectOfType:(id)type wasRemoval:(BOOL)removal
{
  removalCopy = removal;
  typeCopy = type;
  [(CFXPickerSession *)self setDidModifyEffectsStack:1];
  if (([typeCopy isEqualToString:@"Filter"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"Animoji"))
  {
    [(CFXPickerSession *)self setDidRemoveEffect:removalCopy];
    if (removalCopy)
    {
      v6 = typeCopy;
    }

    else
    {
      v6 = 0;
    }

    [(CFXPickerSession *)self setTypeOfRemovedEffect:v6];
  }
}

- (void)didDismiss
{
  isCompactPresentation = [(CFXPickerSession *)self isCompactPresentation];
  v7 = [MEMORY[0x277CBEAA8] now];
  if (isCompactPresentation)
  {
    lastCompactPresentationTime = [(CFXPickerSession *)self lastCompactPresentationTime];
    v5 = 24;
  }

  else
  {
    lastCompactPresentationTime = [(CFXPickerSession *)self lastExpandedPresentationTime];
    v5 = 32;
  }

  [v7 timeIntervalSinceDate:lastCompactPresentationTime];
  *(&self->super.isa + v5) = v6 + *(&self->super.isa + v5);
}

@end