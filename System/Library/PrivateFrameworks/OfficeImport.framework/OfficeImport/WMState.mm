@interface WMState
- (BOOL)containsParagraph:(id)a3;
- (BOOL)isCurrentListDefinitionId:(int)a3;
- (WMState)init;
- (float)pageOffset;
- (id)listStateForListDefinitionId:(int)a3;
- (id)listStateForListDefinitionWithId:(int)a3 settingUpStateIfNeededWithDocument:(id)a4;
- (void)clearCurrentListState;
- (void)dealloc;
- (void)popParagraph;
- (void)pushParagraph:(id)a3;
- (void)setCurrentListState:(id)a3;
- (void)setListState:(id)a3 forListDefinitionId:(int)a4;
@end

@implementation WMState

- (WMState)init
{
  v11.receiver = self;
  v11.super_class = WMState;
  v2 = [(CMState *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(CMOutlineState);
    outlineState = v2->outlineState;
    v2->outlineState = v3;

    v2->mCurrentPage = 0;
    v2->mPageHeight = 980.0;
    mLastHeader = v2->mLastHeader;
    v2->mLastHeader = 0;

    mLastFooter = v2->mLastFooter;
    v2->mLastFooter = 0;

    v7 = objc_opt_new();
    paragraphStack = v2->_paragraphStack;
    v2->_paragraphStack = v7;

    v9 = v2;
  }

  return v2;
}

- (void)clearCurrentListState
{
  currentListState = self->currentListState;
  self->currentListState = 0;
}

- (void)dealloc
{
  [(WMState *)self clearCurrentListState];
  v3.receiver = self;
  v3.super_class = WMState;
  [(WMState *)&v3 dealloc];
}

- (float)pageOffset
{
  mCurrentPage = self->mCurrentPage;
  if (mCurrentPage)
  {
    return mCurrentPage * self->mPageHeight;
  }

  else
  {
    return 0.0;
  }
}

- (void)setCurrentListState:(id)a3
{
  v4 = a3;
  [(WMState *)self clearCurrentListState];
  currentListState = self->currentListState;
  self->currentListState = v4;
}

- (BOOL)isCurrentListDefinitionId:(int)a3
{
  if (![(WMState *)self isCurrentListStateOverridden])
  {
    return 0;
  }

  v5 = [(WMState *)self currentListState];
  v6 = [v5 listDefinition];
  v7 = [v6 listDefinitionId] == a3;

  return v7;
}

- (id)listStateForListDefinitionId:(int)a3
{
  listStates = self->listStates;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v5 = [(NSMutableDictionary *)listStates objectForKey:v4];

  return v5;
}

- (id)listStateForListDefinitionWithId:(int)a3 settingUpStateIfNeededWithDocument:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(WMState *)self listStateForListDefinitionId:v4];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [v6 listDefinitionWithListDefinitionId:v4];
    v10 = [[CMOutlineState alloc] initWithListDefinition:v9];
    [(WMState *)self setListState:v10 forListDefinitionId:v4];
    v8 = v10;
  }

  return v8;
}

- (void)setListState:(id)a3 forListDefinitionId:(int)a4
{
  v4 = *&a4;
  v10 = a3;
  listStates = self->listStates;
  if (!listStates)
  {
    v7 = objc_opt_new();
    v8 = self->listStates;
    self->listStates = v7;

    listStates = self->listStates;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)listStates setObject:v10 forKey:v9];
}

- (void)pushParagraph:(id)a3
{
  v5 = a3;
  v4 = [(WMState *)self paragraphStack];
  [v4 addObject:v5];
}

- (void)popParagraph
{
  v2 = [(WMState *)self paragraphStack];
  [v2 removeLastObject];
}

- (BOOL)containsParagraph:(id)a3
{
  v4 = a3;
  v5 = [(WMState *)self paragraphStack];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end