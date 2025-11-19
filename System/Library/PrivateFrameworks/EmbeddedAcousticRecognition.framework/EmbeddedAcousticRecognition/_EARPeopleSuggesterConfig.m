@interface _EARPeopleSuggesterConfig
- (_EARPeopleSuggesterConfig)initWithContactsCount:(unsigned int)a3 bestContactsCount:(unsigned int)a4 bestContactsBonus:(unsigned int)a5;
@end

@implementation _EARPeopleSuggesterConfig

- (_EARPeopleSuggesterConfig)initWithContactsCount:(unsigned int)a3 bestContactsCount:(unsigned int)a4 bestContactsBonus:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = _EARPeopleSuggesterConfig;
  result = [(_EARPeopleSuggesterConfig *)&v9 init];
  result->_contactsCount = a3;
  result->_bestContactsCount = a4;
  result->_bestContactsBonus = a5;
  return result;
}

@end