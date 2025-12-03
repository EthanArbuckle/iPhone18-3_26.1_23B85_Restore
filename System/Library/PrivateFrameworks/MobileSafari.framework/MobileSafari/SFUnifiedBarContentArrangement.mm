@interface SFUnifiedBarContentArrangement
- (BOOL)isEqual:(id)equal;
- (NSArray)allContentViews;
- (SFUnifiedBarContentArrangement)initWithInlineContentView:(id)view standaloneContentViews:(id)views;
@end

@implementation SFUnifiedBarContentArrangement

- (SFUnifiedBarContentArrangement)initWithInlineContentView:(id)view standaloneContentViews:(id)views
{
  viewCopy = view;
  viewsCopy = views;
  v15.receiver = self;
  v15.super_class = SFUnifiedBarContentArrangement;
  v9 = [(SFUnifiedBarContentArrangement *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inlineContentView, view);
    v11 = [viewsCopy copy];
    standaloneContentViews = v10->_standaloneContentViews;
    v10->_standaloneContentViews = v11;

    v13 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_inlineContentView == equalCopy->_inlineContentView && [(NSArray *)self->_standaloneContentViews isEqualToArray:equalCopy->_standaloneContentViews];
  }

  return v5;
}

- (NSArray)allContentViews
{
  array = [MEMORY[0x1E695DF70] array];
  [array safari_addObjectUnlessNil:self->_inlineContentView];
  [array addObjectsFromArray:self->_standaloneContentViews];
  v4 = [array copy];

  return v4;
}

@end