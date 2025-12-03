@interface TCFontName
- (TCFontName)initWithDictionary:(id)dictionary;
- (TCFontName)initWithStyleName:(id)name fullName:(id)fullName;
- (id)description;
- (id)equivalentDictionary;
@end

@implementation TCFontName

- (TCFontName)initWithStyleName:(id)name fullName:(id)fullName
{
  nameCopy = name;
  fullNameCopy = fullName;
  v14.receiver = self;
  v14.super_class = TCFontName;
  v8 = [(TCFontName *)&v14 init];
  if (v8)
  {
    if (nameCopy)
    {
      v9 = [nameCopy copy];
    }

    else
    {
      v9 = &stru_286EE1130;
    }

    styleName = v8->_styleName;
    v8->_styleName = v9;

    if (fullNameCopy)
    {
      v11 = [fullNameCopy copy];
    }

    else
    {
      v11 = &stru_286EE1130;
    }

    fullName = v8->_fullName;
    v8->_fullName = v11;
  }

  return v8;
}

- (id)equivalentDictionary
{
  v3 = MEMORY[0x277CBEAC0];
  fullName = [(TCFontName *)self fullName];
  if (fullName)
  {
    fullName2 = [(TCFontName *)self fullName];
  }

  else
  {
    fullName2 = &stru_286EE1130;
  }

  styleName = [(TCFontName *)self styleName];
  if (styleName)
  {
    styleName2 = [(TCFontName *)self styleName];
  }

  else
  {
    styleName2 = &stru_286EE1130;
  }

  v8 = [v3 dictionaryWithObjectsAndKeys:{fullName2, @"full-name", styleName2, @"style-name", 0}];
  if (styleName)
  {
  }

  if (fullName)
  {
  }

  return v8;
}

- (TCFontName)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"style-name"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"full-name"];
  v7 = [(TCFontName *)self initWithStyleName:v5 fullName:v6];

  return v7;
}

- (id)description
{
  equivalentDictionary = [(TCFontName *)self equivalentDictionary];
  v3 = [equivalentDictionary description];

  return v3;
}

@end