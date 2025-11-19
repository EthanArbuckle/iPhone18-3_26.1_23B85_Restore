@interface TCFontName
- (TCFontName)initWithDictionary:(id)a3;
- (TCFontName)initWithStyleName:(id)a3 fullName:(id)a4;
- (id)description;
- (id)equivalentDictionary;
@end

@implementation TCFontName

- (TCFontName)initWithStyleName:(id)a3 fullName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TCFontName;
  v8 = [(TCFontName *)&v14 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 copy];
    }

    else
    {
      v9 = &stru_286EE1130;
    }

    styleName = v8->_styleName;
    v8->_styleName = v9;

    if (v7)
    {
      v11 = [v7 copy];
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
  v4 = [(TCFontName *)self fullName];
  if (v4)
  {
    v5 = [(TCFontName *)self fullName];
  }

  else
  {
    v5 = &stru_286EE1130;
  }

  v6 = [(TCFontName *)self styleName];
  if (v6)
  {
    v7 = [(TCFontName *)self styleName];
  }

  else
  {
    v7 = &stru_286EE1130;
  }

  v8 = [v3 dictionaryWithObjectsAndKeys:{v5, @"full-name", v7, @"style-name", 0}];
  if (v6)
  {
  }

  if (v4)
  {
  }

  return v8;
}

- (TCFontName)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"style-name"];
  v6 = [v4 objectForKeyedSubscript:@"full-name"];
  v7 = [(TCFontName *)self initWithStyleName:v5 fullName:v6];

  return v7;
}

- (id)description
{
  v2 = [(TCFontName *)self equivalentDictionary];
  v3 = [v2 description];

  return v3;
}

@end