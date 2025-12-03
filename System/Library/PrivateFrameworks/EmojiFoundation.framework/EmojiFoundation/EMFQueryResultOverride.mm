@interface EMFQueryResultOverride
- (EMFQueryResultOverride)initWithOverridesArray:(id)array searchType:(unint64_t)type behavior:(unint64_t)behavior;
@end

@implementation EMFQueryResultOverride

- (EMFQueryResultOverride)initWithOverridesArray:(id)array searchType:(unint64_t)type behavior:(unint64_t)behavior
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v14.receiver = self;
    v14.super_class = EMFQueryResultOverride;
    v10 = [(EMFQueryResultOverride *)&v14 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_results, array);
      v11->_overrideSearchType = type;
      v11->_overrideBehavior = behavior;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end