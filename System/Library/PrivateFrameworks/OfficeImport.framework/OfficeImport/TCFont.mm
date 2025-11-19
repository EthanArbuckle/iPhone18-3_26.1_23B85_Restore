@interface TCFont
+ (id)fontWithFont:(id)a3;
- (TCFont)initWithDictionary:(id)a3;
- (TCFont)initWithNamesByLanguage:(id)a3 psName:(id)a4 styling:(TCFontStyling)a5;
- (TCFontStyling)styling;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)englishName;
- (id)equivalentDictionary;
- (id)localizedFontName;
- (int)preferredLanguage;
@end

@implementation TCFont

- (TCFont)initWithNamesByLanguage:(id)a3 psName:(id)a4 styling:(TCFontStyling)a5
{
  v5 = *&a5.weight;
  v6 = *&a5.fontClass;
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = TCFont;
  v11 = [(TCFont *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    namesByLanguage = v11->_namesByLanguage;
    v11->_namesByLanguage = v12;

    v14 = [v10 copy];
    psName = v11->_psName;
    v11->_psName = v14;

    *&v11->_styling.fontClass = v6;
    *&v11->_styling.weight = v5;
  }

  return v11;
}

- (id)equivalentDictionary
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(TCFont *)self namesByLanguage];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v4 = v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:v8];
        v10 = TCFontMacLanguageIDToNSString([v8 unsignedShortValue]);
        v11 = [v9 equivalentDictionary];
        [v3 setObject:v11 forKeyedSubscript:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v12 = MEMORY[0x277CBEAC0];
  v13 = [(TCFont *)self psName];
  *&v18.fontClass = [(TCFont *)self styling];
  *&v18.weight = v14;
  v15 = TCFontStyling::equivalentDictionary(&v18);
  v16 = [v12 dictionaryWithObjectsAndKeys:{v3, @"font-names", v13, @"PostScript-name", v15, @"styling", 0}];

  return v16;
}

- (TCFont)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v22 objectForKeyedSubscript:@"font-names"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v4 = v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = TCFontMacLanguageIDFromNSString(v8);
        v10 = [TCFontName alloc];
        v11 = [v4 objectForKeyedSubscript:v8];
        v12 = [(TCFontName *)v10 initWithDictionary:v11];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
        [v3 setObject:v12 forKeyedSubscript:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v14 = [v22 objectForKeyedSubscript:@"PostScript-name"];
  v15 = [v22 objectForKeyedSubscript:@"styling"];
  v17 = TCFontStyling::createWithDictionary(v15, v16);
  v19 = [(TCFont *)self initWithNamesByLanguage:v3 psName:v14 styling:v17, v18, 0];

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(TCFont *)self equivalentDictionary];
  v6 = [v4 initWithDictionary:v5];

  return v6;
}

+ (id)fontWithFont:(id)a3
{
  v3 = [a3 copy];

  return v3;
}

- (id)englishName
{
  v2 = [(TCFont *)self namesByLanguage];
  v3 = [v2 objectForKeyedSubscript:&unk_286F6D860];

  return v3;
}

- (id)description
{
  v2 = [(TCFont *)self equivalentDictionary];
  v3 = [v2 description];

  return v3;
}

- (int)preferredLanguage
{
  v2 = [(TCFont *)self styling];
  if (HIDWORD(v2) == 25)
  {
    v3 = 33;
  }

  else
  {
    v3 = 0;
  }

  if (HIDWORD(v2) == 3)
  {
    v4 = 23;
  }

  else
  {
    v4 = v3;
  }

  if (HIDWORD(v2) == 2)
  {
    v5 = 19;
  }

  else
  {
    v5 = 0;
  }

  if (HIDWORD(v2) == 1)
  {
    v6 = 11;
  }

  else
  {
    v6 = v5;
  }

  if (SHIDWORD(v2) <= 2)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (id)localizedFontName
{
  v3 = [(TCFont *)self namesByLanguage];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TCFont preferredLanguage](self, "preferredLanguage")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = [(TCFont *)self englishName];
  }

  return v5;
}

- (TCFontStyling)styling
{
  v2 = *&self->_styling.weight;
  v3 = *&self->_styling.fontClass;
  result.weight = v2;
  result.italic = BYTE1(v2);
  result.width = HIDWORD(v2);
  result.fontClass = v3;
  result.stringEncoding = HIDWORD(v3);
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 4) = 0;
  *(self + 20) = 0;
  return self;
}

@end