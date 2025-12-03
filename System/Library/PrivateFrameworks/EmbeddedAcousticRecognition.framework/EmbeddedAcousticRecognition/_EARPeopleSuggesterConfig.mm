@interface _EARPeopleSuggesterConfig
- (_EARPeopleSuggesterConfig)initWithContactsCount:(unsigned int)count bestContactsCount:(unsigned int)contactsCount bestContactsBonus:(unsigned int)bonus;
@end

@implementation _EARPeopleSuggesterConfig

- (_EARPeopleSuggesterConfig)initWithContactsCount:(unsigned int)count bestContactsCount:(unsigned int)contactsCount bestContactsBonus:(unsigned int)bonus
{
  v9.receiver = self;
  v9.super_class = _EARPeopleSuggesterConfig;
  result = [(_EARPeopleSuggesterConfig *)&v9 init];
  result->_contactsCount = count;
  result->_bestContactsCount = contactsCount;
  result->_bestContactsBonus = bonus;
  return result;
}

@end