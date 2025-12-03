@interface CNCollationLanguage
- (CNCollationLanguage)initWithSections:(id)sections lastCharacter:(id)character firstCharacterAfterLanguage:(id)language;
@end

@implementation CNCollationLanguage

- (CNCollationLanguage)initWithSections:(id)sections lastCharacter:(id)character firstCharacterAfterLanguage:(id)language
{
  sectionsCopy = sections;
  characterCopy = character;
  languageCopy = language;
  v20.receiver = self;
  v20.super_class = CNCollationLanguage;
  v11 = [(CNCollationLanguage *)&v20 init];
  if (v11)
  {
    v12 = [sectionsCopy copy];
    sections = v11->_sections;
    v11->_sections = v12;

    v14 = [characterCopy copy];
    lastCharacter = v11->_lastCharacter;
    v11->_lastCharacter = v14;

    v16 = [languageCopy copy];
    firstCharacterAfterLanguage = v11->_firstCharacterAfterLanguage;
    v11->_firstCharacterAfterLanguage = v16;

    v18 = v11;
  }

  return v11;
}

@end