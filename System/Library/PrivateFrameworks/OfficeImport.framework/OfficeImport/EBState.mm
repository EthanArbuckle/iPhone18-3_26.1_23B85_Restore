@interface EBState
- (EBState)initWithCancelDelegate:(id)delegate;
- (void)dealloc;
- (void)setResources:(id)resources;
@end

@implementation EBState

- (void)dealloc
{
  mXlLinkTable = self->mXlLinkTable;
  if (mXlLinkTable)
  {
    (*(*mXlLinkTable + 8))(mXlLinkTable, a2);
  }

  self->mXlLinkTable = 0;
  mXlNameTable = self->mXlNameTable;
  if (mXlNameTable)
  {
    (*(*mXlNameTable + 8))(mXlNameTable, a2);
  }

  self->mXlNameTable = 0;
  mXlFormulaProcessor = self->mXlFormulaProcessor;
  if (mXlFormulaProcessor)
  {
    (*(*mXlFormulaProcessor + 8))(mXlFormulaProcessor, a2);
  }

  self->mXlFormulaProcessor = 0;
  mSheetNames = self->mSheetNames;
  if (mSheetNames)
  {
    v8 = self->mSheetNames;
    std::vector<OcText,ChAllocator<OcText>>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x25F897000](mSheetNames, 0x20C40960023A9);
  }

  self->mSheetNames = 0;
  v7.receiver = self;
  v7.super_class = EBState;
  [(EBState *)&v7 dealloc];
}

- (EBState)initWithCancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = EBState;
  v6 = [(EBState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 24) = 0u;
    *(v6 + 8) = 0u;
    objc_storeStrong(v6 + 7, delegate);
  }

  return v7;
}

- (void)setResources:(id)resources
{
  resourcesCopy = resources;
  mResources = self->mResources;
  p_mResources = &self->mResources;
  if (mResources != resourcesCopy)
  {
    v8 = resourcesCopy;
    objc_storeStrong(p_mResources, resources);
    resourcesCopy = v8;
  }
}

@end