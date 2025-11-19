@interface EMFQueryResultOverride
- (EMFQueryResultOverride)initWithOverridesArray:(id)a3 searchType:(unint64_t)a4 behavior:(unint64_t)a5;
@end

@implementation EMFQueryResultOverride

- (EMFQueryResultOverride)initWithOverridesArray:(id)a3 searchType:(unint64_t)a4 behavior:(unint64_t)a5
{
  v9 = a3;
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = EMFQueryResultOverride;
    v10 = [(EMFQueryResultOverride *)&v14 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_results, a3);
      v11->_overrideSearchType = a4;
      v11->_overrideBehavior = a5;
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end