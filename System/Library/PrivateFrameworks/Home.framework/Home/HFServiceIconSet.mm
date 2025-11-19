@interface HFServiceIconSet
+ (id)placeholderIconSet;
+ (id)setWithDefaultIcon:(id)a3 alternateIcons:(id)a4;
+ (id)setWithImageIdentifier:(id)a3;
@end

@implementation HFServiceIconSet

+ (id)placeholderIconSet
{
  v3 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
  v4 = [a1 setWithDefaultIcon:v3];

  return v4;
}

+ (id)setWithImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v4];

  v6 = [a1 setWithDefaultIcon:v5];

  return v6;
}

+ (id)setWithDefaultIcon:(id)a3 alternateIcons:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[2] = v5;
  v9 = v5;

  if (v6)
  {
    v10 = v6;
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