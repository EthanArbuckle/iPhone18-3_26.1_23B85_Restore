@interface GDPersonNameComponentsBuilder
- (GDPersonNameComponentsBuilder)init;
@end

@implementation GDPersonNameComponentsBuilder

- (GDPersonNameComponentsBuilder)init
{
  v16.receiver = self;
  v16.super_class = GDPersonNameComponentsBuilder;
  v2 = [(GDPersonNameComponentsBuilder *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    prefixes = v2->_prefixes;
    v2->_prefixes = v3;

    v5 = objc_opt_new();
    givenNames = v2->_givenNames;
    v2->_givenNames = v5;

    v7 = objc_opt_new();
    middleNames = v2->_middleNames;
    v2->_middleNames = v7;

    v9 = objc_opt_new();
    familyNames = v2->_familyNames;
    v2->_familyNames = v9;

    v11 = objc_opt_new();
    suffixes = v2->_suffixes;
    v2->_suffixes = v11;

    v13 = objc_opt_new();
    nicknames = v2->_nicknames;
    v2->_nicknames = v13;
  }

  return v2;
}

@end