@interface EBReaderSheetState
- (EBReaderSheetState)initWithReaderState:(id)state;
- (id).cxx_construct;
- (unint64_t)nextChartIndex;
- (unint64_t)sharedFormulaIndexForRowCol:(int)col;
- (void)reportWorksheetWarning:(id)warning;
- (void)setSharedFormulaIndex:(unint64_t)index forRowCol:(int)col;
@end

@implementation EBReaderSheetState

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 4) = 0;
  *(self + 3) = self + 32;
  return self;
}

- (unint64_t)nextChartIndex
{
  mChartIndex = self->mChartIndex;
  self->mChartIndex = mChartIndex + 1;
  return mChartIndex;
}

- (EBReaderSheetState)initWithReaderState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = EBReaderSheetState;
  v6 = [(EBReaderSheetState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mReaderState, state);
    v7->mChartIndex = 0;
  }

  return v7;
}

- (unint64_t)sharedFormulaIndexForRowCol:(int)col
{
  left = self->mSharedFormulas.__tree_.__end_node_.__left_;
  p_end_node = &self->mSharedFormulas.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return -1;
  }

  v6 = p_end_node;
  do
  {
    if (SLODWORD(v4[4].__left_) >= col)
    {
      v6 = v4;
    }

    v4 = v4[SLODWORD(v4[4].__left_) < col].__left_;
  }

  while (v4);
  if (v6 != p_end_node && SLODWORD(v6[4].__left_) <= col)
  {
    return v6[5].__left_;
  }

  else
  {
    return -1;
  }
}

- (void)setSharedFormulaIndex:(unint64_t)index forRowCol:(int)col
{
  colCopy = col;
  v5 = &colCopy;
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&self->mSharedFormulas, &colCopy)[5] = index;
}

- (void)reportWorksheetWarning:(id)warning
{
  warningCopy = warning;
  if (self->mEDSheet)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      worksheetWarnings = [self->mEDSheet worksheetWarnings];
      [worksheetWarnings addWarning:warningCopy];
    }
  }
}

@end