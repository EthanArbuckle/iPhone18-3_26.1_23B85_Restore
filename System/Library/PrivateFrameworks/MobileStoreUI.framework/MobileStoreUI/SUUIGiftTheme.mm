@interface SUUIGiftTheme
- (SUUIGiftTheme)initWithThemeDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SUUIGiftTheme

- (SUUIGiftTheme)initWithThemeDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SUUIGiftTheme;
  v5 = [(SUUIGiftTheme *)&v23 init];
  if (v5)
  {
    v6 = [[SUUIUber alloc] initWithUberDictionary:v4];
    v7 = [(SUUIUber *)v6 colorScheme];
    v8 = [v7 backgroundColor];
    [(SUUIGiftTheme *)v5 setBackgroundColor:v8];

    v9 = [v7 primaryTextColor];
    [(SUUIGiftTheme *)v5 setBodyTextColor:v9];

    v10 = [v7 secondaryTextColor];
    [(SUUIGiftTheme *)v5 setPrimaryTextColor:v10];

    v11 = [v4 objectForKey:@"fcId"];
    if (objc_opt_respondsToSelector())
    {
      v5->_themeIdentifier = [v11 longLongValue];
    }

    v12 = [v4 objectForKey:@"localized_name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      themeName = v5->_themeName;
      v5->_themeName = v13;
    }

    v15 = [(SUUIUber *)v6 artworkProvider];
    if ([v15 hasArtwork])
    {
      v16 = [MEMORY[0x277D759A0] mainScreen];
      [v16 scale];
      v18 = v17;

      if (v18 == 2.0)
      {
        [v15 largestArtwork];
      }

      else
      {
        [v15 smallestArtwork];
      }
      v19 = ;
      v20 = [v19 URL];
      headerImageURL = v5->_headerImageURL;
      v5->_headerImageURL = v20;
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIGiftTheme;
  v4 = [(SUUIGiftTheme *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%lld, %@, %@]", v4, self->_themeIdentifier, self->_themeName, self->_headerImageURL];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(UIColor *)self->_backgroundColor copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(UIColor *)self->_bodyTextColor copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  objc_storeStrong((v5 + 24), self->_headerImage);
  objc_storeStrong((v5 + 32), self->_headerImageURL);
  v10 = [(UIColor *)self->_primaryTextColor copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 48) = self->_themeIdentifier;
  v12 = [(NSString *)self->_themeName copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  return v5;
}

@end