@interface CoreDAVPrincipalItem
+ (id)copyParseRules;
- (id)description;
- (id)hashString;
- (id)initTypeIsAll;
- (id)initTypeIsAuthenticated;
- (id)initTypeIsHREFWithURL:(id)l;
- (id)initTypeIsProperty:(id)property;
- (id)initTypeIsSelf;
- (id)initTypeIsUnauthenticated;
- (void)write:(id)write;
@end

@implementation CoreDAVPrincipalItem

- (id)initTypeIsAll
{
  v2 = [(CoreDAVPrincipalItem *)self init];
  if (v2)
  {
    v3 = [[CoreDAVItemWithNoChildren alloc] initWithNameSpace:@"DAV:" andName:@"all"];
    [(CoreDAVPrincipalItem *)v2 setAll:v3];
  }

  return v2;
}

- (id)initTypeIsHREFWithURL:(id)l
{
  lCopy = l;
  v5 = [(CoreDAVPrincipalItem *)self init];
  if (v5)
  {
    v6 = [[CoreDAVHrefItem alloc] initWithURL:lCopy];
    [(CoreDAVPrincipalItem *)v5 setHref:v6];
  }

  return v5;
}

- (id)initTypeIsProperty:(id)property
{
  propertyCopy = property;
  v5 = [(CoreDAVPrincipalItem *)self init];
  v6 = v5;
  if (v5)
  {
    [(CoreDAVPrincipalItem *)v5 setProperty:propertyCopy];
  }

  return v6;
}

- (id)initTypeIsAuthenticated
{
  v2 = [(CoreDAVPrincipalItem *)self init];
  if (v2)
  {
    v3 = [[CoreDAVItemWithNoChildren alloc] initWithNameSpace:@"DAV:" andName:@"authenticated"];
    [(CoreDAVPrincipalItem *)v2 setAuthenticated:v3];
  }

  return v2;
}

- (id)initTypeIsUnauthenticated
{
  v2 = [(CoreDAVPrincipalItem *)self init];
  if (v2)
  {
    v3 = [[CoreDAVItemWithNoChildren alloc] initWithNameSpace:@"DAV:" andName:@"unauthenticated"];
    [(CoreDAVPrincipalItem *)v2 setUnauthenticated:v3];
  }

  return v2;
}

- (id)initTypeIsSelf
{
  v2 = [(CoreDAVPrincipalItem *)self init];
  if (v2)
  {
    v3 = [[CoreDAVItemWithNoChildren alloc] initWithNameSpace:@"DAV:" andName:@"self"];
    [(CoreDAVPrincipalItem *)v2 setSelfItem:v3];
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12.receiver = self;
  v12.super_class = CoreDAVPrincipalItem;
  v4 = [(CoreDAVItem *)&v12 description];
  [v3 appendFormat:@"[%@]", v4];

  href = [(CoreDAVPrincipalItem *)self href];
  [v3 appendFormat:@"\n  HREF: [%@]", href];

  v6 = [(CoreDAVPrincipalItem *)self all];
  [v3 appendFormat:@"\n  All: [%@]", v6];

  authenticated = [(CoreDAVPrincipalItem *)self authenticated];
  [v3 appendFormat:@"\n  Authenticated: [%@]", authenticated];

  unauthenticated = [(CoreDAVPrincipalItem *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", unauthenticated];

  property = [(CoreDAVPrincipalItem *)self property];
  [v3 appendFormat:@"\n  Property: [%@]", property];

  selfItem = [(CoreDAVPrincipalItem *)self selfItem];
  [v3 appendFormat:@"\n  Self: [%@]", selfItem];

  return v3;
}

- (void)write:(id)write
{
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  href = [(CoreDAVPrincipalItem *)self href];

  if (href)
  {
    href2 = [(CoreDAVPrincipalItem *)self href];
  }

  else
  {
    v8 = [(CoreDAVPrincipalItem *)self all];

    if (v8)
    {
      href2 = [(CoreDAVPrincipalItem *)self all];
    }

    else
    {
      authenticated = [(CoreDAVPrincipalItem *)self authenticated];

      if (authenticated)
      {
        href2 = [(CoreDAVPrincipalItem *)self authenticated];
      }

      else
      {
        unauthenticated = [(CoreDAVPrincipalItem *)self unauthenticated];

        if (unauthenticated)
        {
          href2 = [(CoreDAVPrincipalItem *)self unauthenticated];
        }

        else
        {
          property = [(CoreDAVPrincipalItem *)self property];

          if (property)
          {
            href2 = [(CoreDAVPrincipalItem *)self property];
          }

          else
          {
            selfItem = [(CoreDAVPrincipalItem *)self selfItem];

            if (!selfItem)
            {
              goto LABEL_14;
            }

            href2 = [(CoreDAVPrincipalItem *)self selfItem];
          }
        }
      }
    }
  }

  v13 = href2;
  [href2 write:writeCopy];

LABEL_14:
  name2 = [(CoreDAVItem *)self name];
  nameSpace2 = [(CoreDAVItem *)self nameSpace];
  [writeCopy endElement:name2 inNamespace:nameSpace2];
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v20 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"href" objectClass:objc_opt_class() setterMethod:sel_setHref_];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"href"];
    v18 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"all" objectClass:objc_opt_class() setterMethod:sel_setAll_];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"all"];
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"authenticated" objectClass:objc_opt_class() setterMethod:sel_setAuthenticated_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"authenticated"];
    v14 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"unauthenticated" objectClass:objc_opt_class() setterMethod:sel_setUnauthenticated_];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"unauthenticated"];
    v13 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"property" objectClass:objc_opt_class() setterMethod:sel_setProperty_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"property"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"self" objectClass:objc_opt_class() setterMethod:sel_setSelfItem_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"self"];
    v5 = [v20 initWithObjectsAndKeys:{v21, v19, v18, v17, v16, v15, v14, v6, v13, v7, v8, v9, 0}];

    v10 = +[CoreDAVItem parseRuleCache];
    v11 = NSStringFromClass(self);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

- (id)hashString
{
  v15 = MEMORY[0x277CCACA8];
  href = [(CoreDAVPrincipalItem *)self href];
  payloadAsString = [href payloadAsString];
  v16 = [(CoreDAVPrincipalItem *)self all];
  if (v16)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  authenticated = [(CoreDAVPrincipalItem *)self authenticated];
  if (authenticated)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  unauthenticated = [(CoreDAVPrincipalItem *)self unauthenticated];
  if (unauthenticated)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  property = [(CoreDAVPrincipalItem *)self property];
  hashString = [property hashString];
  selfItem = [(CoreDAVPrincipalItem *)self selfItem];
  if (selfItem)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v15 stringWithFormat:@"href: [%@], isAll: [%@], isAuthenticated: [%@], isUnauthenticated: [%@], property: [%@], isSelf: [%@]", payloadAsString, v3, v5, v7, hashString, v11];

  return v12;
}

@end