@interface DMFAppManagementInformation
+ (id)stringForState:(unint64_t)a3;
- (DMFAppManagementInformation)initWithCoder:(id)a3;
- (id)_stringForOptions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFAppManagementInformation

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setState:{-[DMFAppManagementInformation state](self, "state")}];
  [v4 setOptions:{-[DMFAppManagementInformation options](self, "options")}];
  v5 = [(DMFAppManagementInformation *)self redemptionCode];
  [v4 setRedemptionCode:v5];

  v6 = [(DMFAppManagementInformation *)self unusedRedemptionCode];
  [v4 setUnusedRedemptionCode:v6];

  return v4;
}

- (DMFAppManagementInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DMFAppManagementInformation;
  v5 = [(DMFAppManagementInformation *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    v5->_options = [v7 integerValue];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"redemptionCode"];
    redemptionCode = v5->_redemptionCode;
    v5->_redemptionCode = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"unusedRedemptionCode"];
    unusedRedemptionCode = v5->_unusedRedemptionCode;
    v5->_unusedRedemptionCode = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[DMFAppManagementInformation state](self, "state")}];
  [v5 encodeObject:v6 forKey:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFAppManagementInformation options](self, "options")}];
  [v5 encodeObject:v7 forKey:@"options"];

  v8 = [(DMFAppManagementInformation *)self redemptionCode];
  [v5 encodeObject:v8 forKey:@"redemptionCode"];

  v9 = [(DMFAppManagementInformation *)self unusedRedemptionCode];
  [v5 encodeObject:v9 forKey:@"unusedRedemptionCode"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [objc_opt_class() stringForState:{-[DMFAppManagementInformation state](self, "state")}];
  [v3 appendFormat:@"State                  : %@\n", v4];

  v5 = [(DMFAppManagementInformation *)self _stringForOptions:[(DMFAppManagementInformation *)self options]];
  [v3 appendFormat:@"Options                : %@\n", v5];

  v6 = [(DMFAppManagementInformation *)self redemptionCode];
  [v3 appendFormat:@"Redemption Code        : %@\n", v6];

  v7 = [(DMFAppManagementInformation *)self unusedRedemptionCode];
  [v3 appendFormat:@"Unused Redemption Code : %@\n", v7];

  [v3 appendString:@"}>"];
  v8 = [v3 copy];

  return v8;
}

+ (id)stringForState:(unint64_t)a3
{
  if (a3 > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8615F78[a3];
  }
}

- (id)_stringForOptions:(unint64_t)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  if (!a3)
  {
    [v4 appendString:@"None"];
    goto LABEL_12;
  }

  v6 = &stru_1F57A0020;
  if (a3)
  {
    [v4 appendFormat:@"%@Remove App", &stru_1F57A0020];
    v6 = @", ";
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      [v5 appendFormat:@"%@Prevent Backup", v6];
      v6 = @", ";
      if ((a3 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 appendFormat:@"%@Remove Keychain Group", v6];
  v6 = @", ";
  if ((a3 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a3 & 8) != 0)
  {
LABEL_11:
    [v5 appendFormat:@"%@Prevent Document Sync", v6];
  }

LABEL_12:
  v7 = [v5 copy];

  return v7;
}

@end