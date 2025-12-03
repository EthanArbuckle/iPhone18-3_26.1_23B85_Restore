@interface PMState
- (PMState)init;
- (void)setCurrentRowStyle:(id)style;
@end

@implementation PMState

- (PMState)init
{
  v6.receiver = self;
  v6.super_class = PMState;
  v2 = [(CMState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CMOutlineState);
    mListState = v2->mListState;
    v2->mListState = v3;
  }

  return v2;
}

- (void)setCurrentRowStyle:(id)style
{
  styleCopy = style;
  if (self->mCurrentRowStyle != styleCopy)
  {
    v6 = styleCopy;
    objc_storeStrong(&self->mCurrentRowStyle, style);
    styleCopy = v6;
  }
}

@end