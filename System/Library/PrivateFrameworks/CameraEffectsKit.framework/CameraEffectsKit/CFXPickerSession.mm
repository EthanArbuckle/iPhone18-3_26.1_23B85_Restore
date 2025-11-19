@interface CFXPickerSession
- (CFXPickerSession)initWithIdentifier:(id)a3 isCompact:(BOOL)a4;
- (NSDictionary)effectChangesDict;
- (double)sessionDuration;
- (void)didChangePresentationMode;
- (void)didDismiss;
- (void)didModifyEffectOfType:(id)a3 wasRemoval:(BOOL)a4;
@end

@implementation CFXPickerSession

- (CFXPickerSession)initWithIdentifier:(id)a3 isCompact:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = CFXPickerSession;
  v8 = [(CFXPickerSession *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pickerBundleIdentifier, a3);
    v10 = [MEMORY[0x277CBEAA8] now];
    sessionStartTime = v9->_sessionStartTime;
    v9->_sessionStartTime = v10;

    if (v4)
    {
      v12 = 48;
    }

    else
    {
      v12 = 56;
    }

    v9->_isCompactPresentation = v4;
    *(&v9->super.isa + v12) = [MEMORY[0x277CBEAA8] now];
    *&v9->_didModifyEffectsStack = 0;
    v9->_typeOfRemovedEffect = 0;
  }

  return v9;
}

- (double)sessionDuration
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(CFXPickerSession *)self sessionStartTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (NSDictionary)effectChangesDict
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CFXPickerSession didModifyEffectsStack](self, "didModifyEffectsStack")}];
  [v3 setObject:v4 forKeyedSubscript:@"DidChangeEffectsKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CFXPickerSession didRemoveEffect](self, "didRemoveEffect")}];
  [v3 setObject:v5 forKeyedSubscript:@"DidRemoveEffectsKey"];

  v6 = [(CFXPickerSession *)self typeOfRemovedEffect];

  if (v6)
  {
    v7 = [(CFXPickerSession *)self typeOfRemovedEffect];
    [v3 setObject:v7 forKeyedSubscript:@"RemovedEffectTypeKey"];
  }

  return v3;
}

- (void)didChangePresentationMode
{
  v3 = [(CFXPickerSession *)self isCompactPresentation];
  v4 = [MEMORY[0x277CBEAA8] now];
  if (v3)
  {
    v5 = [(CFXPickerSession *)self lastCompactPresentationTime];
    [v4 timeIntervalSinceDate:v5];
    self->_compactPresentationDuration = v6 + self->_compactPresentationDuration;

    [(CFXPickerSession *)self setLastCompactPresentationTime:0];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(CFXPickerSession *)self setLastExpandedPresentationTime:v7];
    v8 = 0;
  }

  else
  {
    v9 = [(CFXPickerSession *)self lastExpandedPresentationTime];
    [v4 timeIntervalSinceDate:v9];
    self->_expandedPresentationDuration = v10 + self->_expandedPresentationDuration;

    [(CFXPickerSession *)self setLastExpandedPresentationTime:0];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(CFXPickerSession *)self setLastCompactPresentationTime:v7];
    v8 = 1;
  }

  self->_isCompactPresentation = v8;
}

- (void)didModifyEffectOfType:(id)a3 wasRemoval:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(CFXPickerSession *)self setDidModifyEffectsStack:1];
  if (([v7 isEqualToString:@"Filter"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"Animoji"))
  {
    [(CFXPickerSession *)self setDidRemoveEffect:v4];
    if (v4)
    {
      v6 = v7;
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
  v3 = [(CFXPickerSession *)self isCompactPresentation];
  v7 = [MEMORY[0x277CBEAA8] now];
  if (v3)
  {
    v4 = [(CFXPickerSession *)self lastCompactPresentationTime];
    v5 = 24;
  }

  else
  {
    v4 = [(CFXPickerSession *)self lastExpandedPresentationTime];
    v5 = 32;
  }

  [v7 timeIntervalSinceDate:v4];
  *(&self->super.isa + v5) = v6 + *(&self->super.isa + v5);
}

@end