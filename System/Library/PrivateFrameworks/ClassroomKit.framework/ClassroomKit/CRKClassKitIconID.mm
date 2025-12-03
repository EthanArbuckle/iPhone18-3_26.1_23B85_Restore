@interface CRKClassKitIconID
+ (id)stringBySanitizingString:(id)string;
- (CRKClassKitIconID)initWithClass:(id)class;
- (CRKClassKitIconID)initWithIconID:(id)d;
- (CRKClassKitIconID)initWithMascotIdentifier:(id)identifier colorIdentifier:(id)colorIdentifier;
- (NSString)stringValue;
@end

@implementation CRKClassKitIconID

- (CRKClassKitIconID)initWithClass:(id)class
{
  iconID = [class iconID];
  v5 = [(CRKClassKitIconID *)self initWithIconID:iconID];

  return v5;
}

- (CRKClassKitIconID)initWithIconID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = [dCopy rangeOfString:@"*" options:4];
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

+ (id)stringBySanitizingString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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

- (CRKClassKitIconID)initWithMascotIdentifier:(id)identifier colorIdentifier:(id)colorIdentifier
{
  identifierCopy = identifier;
  colorIdentifierCopy = colorIdentifier;
  v14.receiver = self;
  v14.super_class = CRKClassKitIconID;
  v8 = [(CRKClassKitIconID *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    mascotIdentifier = v8->_mascotIdentifier;
    v8->_mascotIdentifier = v9;

    v11 = [colorIdentifierCopy copy];
    colorIdentifier = v8->_colorIdentifier;
    v8->_colorIdentifier = v11;
  }

  return v8;
}

- (NSString)stringValue
{
  mascotIdentifier = [(CRKClassKitIconID *)self mascotIdentifier];
  v4 = mascotIdentifier;
  if (mascotIdentifier)
  {
    v5 = mascotIdentifier;
  }

  else
  {
    v5 = &stru_285643BE8;
  }

  v6 = v5;

  colorIdentifier = [(CRKClassKitIconID *)self colorIdentifier];
  v8 = colorIdentifier;
  if (colorIdentifier)
  {
    v9 = colorIdentifier;
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