@interface CNCollationLanguage
- (CNCollationLanguage)initWithSections:(id)a3 lastCharacter:(id)a4 firstCharacterAfterLanguage:(id)a5;
@end

@implementation CNCollationLanguage

- (CNCollationLanguage)initWithSections:(id)a3 lastCharacter:(id)a4 firstCharacterAfterLanguage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CNCollationLanguage;
  v11 = [(CNCollationLanguage *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    sections = v11->_sections;
    v11->_sections = v12;

    v14 = [v9 copy];
    lastCharacter = v11->_lastCharacter;
    v11->_lastCharacter = v14;

    v16 = [v10 copy];
    firstCharacterAfterLanguage = v11->_firstCharacterAfterLanguage;
    v11->_firstCharacterAfterLanguage = v16;

    v18 = v11;
  }

  return v11;
}

@end