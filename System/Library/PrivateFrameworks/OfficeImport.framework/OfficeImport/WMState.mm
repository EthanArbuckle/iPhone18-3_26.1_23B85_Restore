@interface WMState
- (BOOL)containsParagraph:(id)paragraph;
- (BOOL)isCurrentListDefinitionId:(int)id;
- (WMState)init;
- (float)pageOffset;
- (id)listStateForListDefinitionId:(int)id;
- (id)listStateForListDefinitionWithId:(int)id settingUpStateIfNeededWithDocument:(id)document;
- (void)clearCurrentListState;
- (void)dealloc;
- (void)popParagraph;
- (void)pushParagraph:(id)paragraph;
- (void)setCurrentListState:(id)state;
- (void)setListState:(id)state forListDefinitionId:(int)id;
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

- (void)setCurrentListState:(id)state
{
  stateCopy = state;
  [(WMState *)self clearCurrentListState];
  currentListState = self->currentListState;
  self->currentListState = stateCopy;
}

- (BOOL)isCurrentListDefinitionId:(int)id
{
  if (![(WMState *)self isCurrentListStateOverridden])
  {
    return 0;
  }

  currentListState = [(WMState *)self currentListState];
  listDefinition = [currentListState listDefinition];
  v7 = [listDefinition listDefinitionId] == id;

  return v7;
}

- (id)listStateForListDefinitionId:(int)id
{
  listStates = self->listStates;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&id];
  v5 = [(NSMutableDictionary *)listStates objectForKey:v4];

  return v5;
}

- (id)listStateForListDefinitionWithId:(int)id settingUpStateIfNeededWithDocument:(id)document
{
  v4 = *&id;
  documentCopy = document;
  v7 = [(WMState *)self listStateForListDefinitionId:v4];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [documentCopy listDefinitionWithListDefinitionId:v4];
    v10 = [[CMOutlineState alloc] initWithListDefinition:v9];
    [(WMState *)self setListState:v10 forListDefinitionId:v4];
    v8 = v10;
  }

  return v8;
}

- (void)setListState:(id)state forListDefinitionId:(int)id
{
  v4 = *&id;
  stateCopy = state;
  listStates = self->listStates;
  if (!listStates)
  {
    v7 = objc_opt_new();
    v8 = self->listStates;
    self->listStates = v7;

    listStates = self->listStates;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)listStates setObject:stateCopy forKey:v9];
}

- (void)pushParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  paragraphStack = [(WMState *)self paragraphStack];
  [paragraphStack addObject:paragraphCopy];
}

- (void)popParagraph
{
  paragraphStack = [(WMState *)self paragraphStack];
  [paragraphStack removeLastObject];
}

- (BOOL)containsParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  paragraphStack = [(WMState *)self paragraphStack];
  v6 = [paragraphStack containsObject:paragraphCopy];

  return v6;
}

@end