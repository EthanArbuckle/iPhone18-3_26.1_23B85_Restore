@interface SFUnifiedBarContentArrangement
- (BOOL)isEqual:(id)a3;
- (NSArray)allContentViews;
- (SFUnifiedBarContentArrangement)initWithInlineContentView:(id)a3 standaloneContentViews:(id)a4;
@end

@implementation SFUnifiedBarContentArrangement

- (SFUnifiedBarContentArrangement)initWithInlineContentView:(id)a3 standaloneContentViews:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SFUnifiedBarContentArrangement;
  v9 = [(SFUnifiedBarContentArrangement *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inlineContentView, a3);
    v11 = [v8 copy];
    standaloneContentViews = v10->_standaloneContentViews;
    v10->_standaloneContentViews = v11;

    v13 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_inlineContentView == v4->_inlineContentView && [(NSArray *)self->_standaloneContentViews isEqualToArray:v4->_standaloneContentViews];
  }

  return v5;
}

- (NSArray)allContentViews
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safari_addObjectUnlessNil:self->_inlineContentView];
  [v3 addObjectsFromArray:self->_standaloneContentViews];
  v4 = [v3 copy];

  return v4;
}

@end