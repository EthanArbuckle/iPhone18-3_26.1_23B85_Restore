@interface GKGameSettingsInternal
+ (id)secureCodedPropertyKeys;
- (GKGameSettingsInternal)initWithCoder:(id)coder;
- (id)allowFriendListAccessString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serverAllowFriendListAccessValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKGameSettingsInternal

- (id)serverAllowFriendListAccessValue
{
  allowFriendListAccess = [(GKGameSettingsInternal *)self allowFriendListAccess];
  if ((allowFriendListAccess - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_2785E0A60[allowFriendListAccess - 1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setAllowFriendListAccess:{-[GKGameSettingsInternal allowFriendListAccess](self, "allowFriendListAccess")}];
  bundleID = [(GKGameSettingsInternal *)self bundleID];
  [v4 setBundleID:bundleID];

  return v4;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_10 != -1)
  {
    +[GKGameSettingsInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_10;

  return v3;
}

void __49__GKGameSettingsInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"bundleID";
  v3[1] = @"allowFriendListAccess";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_10;
  secureCodedPropertyKeys_sSecureCodedKeys_10 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GKGameSettingsInternal;
  coderCopy = coder;
  [(GKInternalRepresentation *)&v7 encodeWithCoder:coderCopy];
  v5 = [(GKGameSettingsInternal *)self bundleID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKGameSettingsInternal allowFriendListAccess](self, "allowFriendListAccess")}];
  [coderCopy encodeObject:v6 forKey:@"allowFriendListAccess"];
}

- (GKGameSettingsInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GKGameSettingsInternal;
  v5 = [(GKInternalRepresentation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(GKGameSettingsInternal *)v5 setBundleID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowFriendListAccess"];
    -[GKGameSettingsInternal setAllowFriendListAccess:](v5, "setAllowFriendListAccess:", [v7 integerValue]);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleID = [(GKGameSettingsInternal *)self bundleID];
  allowFriendListAccessString = [(GKGameSettingsInternal *)self allowFriendListAccessString];
  v7 = [v3 stringWithFormat:@"                <%@: %p>\n                bundleID: %@\n                allowFriendListAccess: %@            ", v4, self, bundleID, allowFriendListAccessString];

  return v7;
}

- (id)allowFriendListAccessString
{
  allowFriendListAccess = [(GKGameSettingsInternal *)self allowFriendListAccess];
  if (allowFriendListAccess > 3)
  {
    return @"GKAllowFriendListAccessInvalid";
  }

  else
  {
    return off_2785E0A78[allowFriendListAccess];
  }
}

@end