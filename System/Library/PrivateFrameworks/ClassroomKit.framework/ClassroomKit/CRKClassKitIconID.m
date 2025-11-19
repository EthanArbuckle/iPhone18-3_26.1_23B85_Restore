@interface CRKClassKitIconID
+ (id)stringBySanitizingString:(id)a3;
- (CRKClassKitIconID)initWithClass:(id)a3;
- (CRKClassKitIconID)initWithIconID:(id)a3;
- (CRKClassKitIconID)initWithMascotIdentifier:(id)a3 colorIdentifier:(id)a4;
- (NSString)stringValue;
@end

@implementation CRKClassKitIconID

- (CRKClassKitIconID)initWithClass:(id)a3
{
  v4 = [a3 iconID];
  v5 = [(CRKClassKitIconID *)self initWithIconID:v4];

  return v5;
}

- (CRKClassKitIconID)initWithIconID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rangeOfString:@"*" options:4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [objc_opt_class() stringBySanitizingString:v5];
      v9 = [(CRKClassKitIconID *)self initWithMascotIdentifier:v8 colorIdentifier:0];
    }

    else
    {
      v10 = v6;
      v11 = v7;
      v12 = [v5 substringToIndex:v6];
      v13 = [v5 substringFromIndex:v10 + v11];
      v14 = [objc_opt_class() stringBySanitizingString:v12];

      v15 = [objc_opt_class() stringBySanitizingString:v13];

      v9 = [(CRKClassKitIconID *)self initWithMascotIdentifier:v14 colorIdentifier:v15];
    }
  }

  else
  {
    v9 = [(CRKClassKitIconID *)self initWithMascotIdentifier:0 colorIdentifier:0];
  }

  return v9;
}

+ (id)stringBySanitizingString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v6 length] && (objc_msgSend(v6, "isEqualToString:", @"(null)") & 1) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CRKClassKitIconID)initWithMascotIdentifier:(id)a3 colorIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CRKClassKitIconID;
  v8 = [(CRKClassKitIconID *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    mascotIdentifier = v8->_mascotIdentifier;
    v8->_mascotIdentifier = v9;

    v11 = [v7 copy];
    colorIdentifier = v8->_colorIdentifier;
    v8->_colorIdentifier = v11;
  }

  return v8;
}

- (NSString)stringValue
{
  v3 = [(CRKClassKitIconID *)self mascotIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_285643BE8;
  }

  v6 = v5;

  v7 = [(CRKClassKitIconID *)self colorIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_285643BE8;
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@*%@", v6, v10];

  return v11;
}

@end