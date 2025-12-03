@interface DMFAppManagementInformation
+ (id)stringForState:(unint64_t)state;
- (DMFAppManagementInformation)initWithCoder:(id)coder;
- (id)_stringForOptions:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFAppManagementInformation

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setState:{-[DMFAppManagementInformation state](self, "state")}];
  [v4 setOptions:{-[DMFAppManagementInformation options](self, "options")}];
  redemptionCode = [(DMFAppManagementInformation *)self redemptionCode];
  [v4 setRedemptionCode:redemptionCode];

  unusedRedemptionCode = [(DMFAppManagementInformation *)self unusedRedemptionCode];
  [v4 setUnusedRedemptionCode:unusedRedemptionCode];

  return v4;
}

- (DMFAppManagementInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DMFAppManagementInformation;
  v5 = [(DMFAppManagementInformation *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v6 integerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    v5->_options = [v7 integerValue];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"redemptionCode"];
    redemptionCode = v5->_redemptionCode;
    v5->_redemptionCode = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"unusedRedemptionCode"];
    unusedRedemptionCode = v5->_unusedRedemptionCode;
    v5->_unusedRedemptionCode = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[DMFAppManagementInformation state](self, "state")}];
  [coderCopy encodeObject:v6 forKey:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFAppManagementInformation options](self, "options")}];
  [coderCopy encodeObject:v7 forKey:@"options"];

  redemptionCode = [(DMFAppManagementInformation *)self redemptionCode];
  [coderCopy encodeObject:redemptionCode forKey:@"redemptionCode"];

  unusedRedemptionCode = [(DMFAppManagementInformation *)self unusedRedemptionCode];
  [coderCopy encodeObject:unusedRedemptionCode forKey:@"unusedRedemptionCode"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [objc_opt_class() stringForState:{-[DMFAppManagementInformation state](self, "state")}];
  [v3 appendFormat:@"State                  : %@\n", v4];

  v5 = [(DMFAppManagementInformation *)self _stringForOptions:[(DMFAppManagementInformation *)self options]];
  [v3 appendFormat:@"Options                : %@\n", v5];

  redemptionCode = [(DMFAppManagementInformation *)self redemptionCode];
  [v3 appendFormat:@"Redemption Code        : %@\n", redemptionCode];

  unusedRedemptionCode = [(DMFAppManagementInformation *)self unusedRedemptionCode];
  [v3 appendFormat:@"Unused Redemption Code : %@\n", unusedRedemptionCode];

  [v3 appendString:@"}>"];
  v8 = [v3 copy];

  return v8;
}

+ (id)stringForState:(unint64_t)state
{
  if (state > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8615F78[state];
  }
}

- (id)_stringForOptions:(unint64_t)options
{
  v4 = objc_opt_new();
  v5 = v4;
  if (!options)
  {
    [v4 appendString:@"None"];
    goto LABEL_12;
  }

  v6 = &stru_1F57A0020;
  if (options)
  {
    [v4 appendFormat:@"%@Remove App", &stru_1F57A0020];
    v6 = @", ";
    if ((options & 2) == 0)
    {
LABEL_4:
      if ((options & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      [v5 appendFormat:@"%@Prevent Backup", v6];
      v6 = @", ";
      if ((options & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 appendFormat:@"%@Remove Keychain Group", v6];
  v6 = @", ";
  if ((options & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((options & 8) != 0)
  {
LABEL_11:
    [v5 appendFormat:@"%@Prevent Document Sync", v6];
  }

LABEL_12:
  v7 = [v5 copy];

  return v7;
}

@end