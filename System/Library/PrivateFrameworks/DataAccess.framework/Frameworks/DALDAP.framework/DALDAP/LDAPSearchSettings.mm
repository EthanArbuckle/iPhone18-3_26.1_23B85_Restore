@interface LDAPSearchSettings
- (BOOL)hasSameScopeAndBaseAsOther:(id)other;
- (BOOL)isEqual:(id)equal;
- (LDAPSearchSettings)initWithSettingsDict:(id)dict;
- (id)description;
- (id)settingsDict;
- (unint64_t)hash;
@end

@implementation LDAPSearchSettings

- (LDAPSearchSettings)initWithSettingsDict:(id)dict
{
  dictCopy = dict;
  v12.receiver = self;
  v12.super_class = LDAPSearchSettings;
  v5 = [(LDAPSearchSettings *)&v12 init];
  if (v5)
  {
    v6 = [dictCopy objectForKeyedSubscript:@"LDAPAccountSearchDescription"];
    searchDescription = v5->_searchDescription;
    v5->_searchDescription = v6;

    v8 = [dictCopy objectForKeyedSubscript:@"LDAPAccountSearchBase"];
    searchBase = v5->_searchBase;
    v5->_searchBase = v8;

    v10 = [dictCopy objectForKeyedSubscript:@"LDAPAccountScope"];
    v5->_scope = [v10 intValue];
  }

  return v5;
}

- (id)settingsDict
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  searchDescription = [(LDAPSearchSettings *)self searchDescription];

  if (searchDescription)
  {
    searchDescription2 = [(LDAPSearchSettings *)self searchDescription];
    [v3 setObject:searchDescription2 forKeyedSubscript:@"LDAPAccountSearchDescription"];
  }

  searchBase = [(LDAPSearchSettings *)self searchBase];

  if (searchBase)
  {
    searchBase2 = [(LDAPSearchSettings *)self searchBase];
    [v3 setObject:searchBase2 forKeyedSubscript:@"LDAPAccountSearchBase"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LDAPSearchSettings scope](self, "scope")}];
  [v3 setObject:v8 forKeyedSubscript:@"LDAPAccountScope"];

  return v3;
}

- (BOOL)hasSameScopeAndBaseAsOther:(id)other
{
  otherCopy = other;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = otherCopy;
    scope = [v6 scope];
    if (scope != [(LDAPSearchSettings *)self scope])
    {
      v12 = 0;
LABEL_12:

      goto LABEL_13;
    }

    searchBase = [v6 searchBase];
    v9 = [searchBase length];
    if (v9 || (-[LDAPSearchSettings searchBase](self, "searchBase"), v3 = objc_claimAutoreleasedReturnValue(), [v3 length]))
    {
      searchBase2 = [v6 searchBase];
      searchBase3 = [(LDAPSearchSettings *)self searchBase];
      v12 = [searchBase2 isEqualToString:searchBase3];

      if (v9)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (unint64_t)hash
{
  searchBase = [(LDAPSearchSettings *)self searchBase];
  v4 = [searchBase hash];
  scope = [(LDAPSearchSettings *)self scope];

  return scope + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(LDAPSearchSettings *)self hasSameScopeAndBaseAsOther:equalCopy])
  {
    v6 = equalCopy;
    searchDescription = [v6 searchDescription];
    v8 = [searchDescription length];
    if (v8 || (-[LDAPSearchSettings searchDescription](self, "searchDescription"), v3 = objc_claimAutoreleasedReturnValue(), [v3 length]))
    {
      searchDescription2 = [v6 searchDescription];
      searchDescription3 = [(LDAPSearchSettings *)self searchDescription];
      v11 = [searchDescription2 isEqualToString:searchDescription3];

      if (v8)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = LDAPSearchSettings;
  v4 = [(LDAPSearchSettings *)&v9 description];
  searchDescription = [(LDAPSearchSettings *)self searchDescription];
  searchBase = [(LDAPSearchSettings *)self searchBase];
  v7 = [v3 stringWithFormat:@"%@: SearchDescription %@ SearchBase %@ Scope %ld", v4, searchDescription, searchBase, -[LDAPSearchSettings scope](self, "scope")];

  return v7;
}

@end