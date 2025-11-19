@interface GKGameSettingsInternal
+ (id)secureCodedPropertyKeys;
- (GKGameSettingsInternal)initWithCoder:(id)a3;
- (id)allowFriendListAccessString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serverAllowFriendListAccessValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKGameSettingsInternal

- (id)serverAllowFriendListAccessValue
{
  v2 = [(GKGameSettingsInternal *)self allowFriendListAccess];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_2785E0A60[v2 - 1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setAllowFriendListAccess:{-[GKGameSettingsInternal allowFriendListAccess](self, "allowFriendListAccess")}];
  v5 = [(GKGameSettingsInternal *)self bundleID];
  [v4 setBundleID:v5];

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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GKGameSettingsInternal;
  v4 = a3;
  [(GKInternalRepresentation *)&v7 encodeWithCoder:v4];
  v5 = [(GKGameSettingsInternal *)self bundleID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"bundleID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKGameSettingsInternal allowFriendListAccess](self, "allowFriendListAccess")}];
  [v4 encodeObject:v6 forKey:@"allowFriendListAccess"];
}

- (GKGameSettingsInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKGameSettingsInternal;
  v5 = [(GKInternalRepresentation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(GKGameSettingsInternal *)v5 setBundleID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowFriendListAccess"];
    -[GKGameSettingsInternal setAllowFriendListAccess:](v5, "setAllowFriendListAccess:", [v7 integerValue]);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(GKGameSettingsInternal *)self bundleID];
  v6 = [(GKGameSettingsInternal *)self allowFriendListAccessString];
  v7 = [v3 stringWithFormat:@"                <%@: %p>\n                bundleID: %@\n                allowFriendListAccess: %@            ", v4, self, v5, v6];

  return v7;
}

- (id)allowFriendListAccessString
{
  v2 = [(GKGameSettingsInternal *)self allowFriendListAccess];
  if (v2 > 3)
  {
    return @"GKAllowFriendListAccessInvalid";
  }

  else
  {
    return off_2785E0A78[v2];
  }
}

@end