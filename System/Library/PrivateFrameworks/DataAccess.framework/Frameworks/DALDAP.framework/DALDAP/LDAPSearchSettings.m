@interface LDAPSearchSettings
- (BOOL)hasSameScopeAndBaseAsOther:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LDAPSearchSettings)initWithSettingsDict:(id)a3;
- (id)description;
- (id)settingsDict;
- (unint64_t)hash;
@end

@implementation LDAPSearchSettings

- (LDAPSearchSettings)initWithSettingsDict:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LDAPSearchSettings;
  v5 = [(LDAPSearchSettings *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"LDAPAccountSearchDescription"];
    searchDescription = v5->_searchDescription;
    v5->_searchDescription = v6;

    v8 = [v4 objectForKeyedSubscript:@"LDAPAccountSearchBase"];
    searchBase = v5->_searchBase;
    v5->_searchBase = v8;

    v10 = [v4 objectForKeyedSubscript:@"LDAPAccountScope"];
    v5->_scope = [v10 intValue];
  }

  return v5;
}

- (id)settingsDict
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = [(LDAPSearchSettings *)self searchDescription];

  if (v4)
  {
    v5 = [(LDAPSearchSettings *)self searchDescription];
    [v3 setObject:v5 forKeyedSubscript:@"LDAPAccountSearchDescription"];
  }

  v6 = [(LDAPSearchSettings *)self searchBase];

  if (v6)
  {
    v7 = [(LDAPSearchSettings *)self searchBase];
    [v3 setObject:v7 forKeyedSubscript:@"LDAPAccountSearchBase"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LDAPSearchSettings scope](self, "scope")}];
  [v3 setObject:v8 forKeyedSubscript:@"LDAPAccountScope"];

  return v3;
}

- (BOOL)hasSameScopeAndBaseAsOther:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 scope];
    if (v7 != [(LDAPSearchSettings *)self scope])
    {
      v12 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [v6 searchBase];
    v9 = [v8 length];
    if (v9 || (-[LDAPSearchSettings searchBase](self, "searchBase"), v3 = objc_claimAutoreleasedReturnValue(), [v3 length]))
    {
      v10 = [v6 searchBase];
      v11 = [(LDAPSearchSettings *)self searchBase];
      v12 = [v10 isEqualToString:v11];

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
  v3 = [(LDAPSearchSettings *)self searchBase];
  v4 = [v3 hash];
  v5 = [(LDAPSearchSettings *)self scope];

  return v5 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([(LDAPSearchSettings *)self hasSameScopeAndBaseAsOther:v5])
  {
    v6 = v5;
    v7 = [v6 searchDescription];
    v8 = [v7 length];
    if (v8 || (-[LDAPSearchSettings searchDescription](self, "searchDescription"), v3 = objc_claimAutoreleasedReturnValue(), [v3 length]))
    {
      v9 = [v6 searchDescription];
      v10 = [(LDAPSearchSettings *)self searchDescription];
      v11 = [v9 isEqualToString:v10];

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
  v5 = [(LDAPSearchSettings *)self searchDescription];
  v6 = [(LDAPSearchSettings *)self searchBase];
  v7 = [v3 stringWithFormat:@"%@: SearchDescription %@ SearchBase %@ Scope %ld", v4, v5, v6, -[LDAPSearchSettings scope](self, "scope")];

  return v7;
}

@end