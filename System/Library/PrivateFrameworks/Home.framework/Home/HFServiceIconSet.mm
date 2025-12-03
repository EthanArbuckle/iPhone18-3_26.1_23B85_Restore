@interface HFServiceIconSet
+ (id)placeholderIconSet;
+ (id)setWithDefaultIcon:(id)icon alternateIcons:(id)icons;
+ (id)setWithImageIdentifier:(id)identifier;
@end

@implementation HFServiceIconSet

+ (id)placeholderIconSet
{
  v3 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
  v4 = [self setWithDefaultIcon:v3];

  return v4;
}

+ (id)setWithImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:identifierCopy];

  v6 = [self setWithDefaultIcon:v5];

  return v6;
}

+ (id)setWithDefaultIcon:(id)icon alternateIcons:(id)icons
{
  iconCopy = icon;
  iconsCopy = icons;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[2] = iconCopy;
  v9 = iconCopy;

  if (iconsCopy)
  {
    v10 = iconsCopy;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];

  v12 = [v11 setByAddingObject:v9];
  v13 = v7[1];
  v7[1] = v12;

  return v7;
}

@end