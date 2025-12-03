@interface CoreDAVACEItem
+ (id)copyParseRules;
+ (id)privilegeItemWithNameSpace:(id)space andName:(id)name;
- (CoreDAVACEItem)initWithPrincipal:(id)principal shouldInvert:(BOOL)invert action:(int)action withPrivileges:(id)privileges;
- (id)description;
- (void)write:(id)write;
@end

@implementation CoreDAVACEItem

- (CoreDAVACEItem)initWithPrincipal:(id)principal shouldInvert:(BOOL)invert action:(int)action withPrivileges:(id)privileges
{
  invertCopy = invert;
  principalCopy = principal;
  privilegesCopy = privileges;
  v13 = [(CoreDAVACEItem *)self init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  if (invertCopy)
  {
    v15 = [(CoreDAVItem *)[CoreDAVInvertItem alloc] initWithNameSpace:@"DAV:" andName:@"invert"];
    invert = v14->_invert;
    v14->_invert = v15;

    [(CoreDAVInvertItem *)v14->_invert setPrincipal:principalCopy];
    if (action)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = &OBJC_IVAR___CoreDAVACEItem__grant;
    v18 = cdXMLGrant;
    v19 = off_278E30B38;
    goto LABEL_8;
  }

  objc_storeStrong(&v13->_principal, principal);
  if (!action)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (action == 1)
  {
    v17 = &OBJC_IVAR___CoreDAVACEItem__deny;
    v18 = cdXMLDeny;
    v19 = off_278E30B08;
LABEL_8:
    v20 = [objc_alloc(*v19) initWithNameSpace:@"DAV:" andName:*v18];
    v21 = *v17;
    v22 = *(&v14->super.super.isa + v21);
    *(&v14->super.super.isa + v21) = v20;

    v23 = [privilegesCopy mutableCopy];
    [*(&v14->super.super.isa + v21) setPrivileges:v23];
  }

LABEL_9:

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12.receiver = self;
  v12.super_class = CoreDAVACEItem;
  v4 = [(CoreDAVItem *)&v12 description];
  [v3 appendFormat:@"[%@]", v4];

  principal = [(CoreDAVACEItem *)self principal];
  [v3 appendFormat:@"\n  Principal: [%@]", principal];

  invert = [(CoreDAVACEItem *)self invert];
  [v3 appendFormat:@"\n  Invert: [%@]", invert];

  grant = [(CoreDAVACEItem *)self grant];
  [v3 appendFormat:@"\n  Grant: [%@]", grant];

  deny = [(CoreDAVACEItem *)self deny];
  [v3 appendFormat:@"\n  Deny: [%@]", deny];

  protectedItem = [(CoreDAVACEItem *)self protectedItem];
  [v3 appendFormat:@"\n  Protected: [%@]", protectedItem];

  inherited = [(CoreDAVACEItem *)self inherited];
  [v3 appendFormat:@"\n  Inherited: [%@]", inherited];

  return v3;
}

- (void)write:(id)write
{
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  invert = [(CoreDAVACEItem *)self invert];

  if (invert)
  {
    [(CoreDAVACEItem *)self invert];
  }

  else
  {
    [(CoreDAVACEItem *)self principal];
  }
  v7 = ;
  [v7 write:writeCopy];

  grant = [(CoreDAVACEItem *)self grant];

  if (grant)
  {
    [(CoreDAVACEItem *)self grant];
  }

  else
  {
    [(CoreDAVACEItem *)self deny];
  }
  v9 = ;
  [v9 write:writeCopy];

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
    v21 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"principal" objectClass:objc_opt_class() setterMethod:sel_setPrincipal_];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"principal"];
    v18 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"invert" objectClass:objc_opt_class() setterMethod:sel_setInvert_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"invert"];
    v17 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"grant" objectClass:objc_opt_class() setterMethod:sel_setGrant_];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"grant"];
    v14 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"deny" objectClass:objc_opt_class() setterMethod:sel_setDeny_];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"deny"];
    v13 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"protected" objectClass:objc_opt_class() setterMethod:sel_setProtectedItem_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"protected"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"inherited" objectClass:objc_opt_class() setterMethod:sel_setInherited_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"inherited"];
    v5 = [v20 initWithObjectsAndKeys:{v21, v19, v18, v15, v17, v16, v14, v6, v13, v7, v8, v9, 0}];

    v10 = +[CoreDAVItem parseRuleCache];
    v11 = NSStringFromClass(self);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

+ (id)privilegeItemWithNameSpace:(id)space andName:(id)name
{
  nameCopy = name;
  spaceCopy = space;
  v7 = [[CoreDAVItem alloc] initWithNameSpace:@"DAV:" andName:@"privilege"];
  extraChildItems = [(CoreDAVItem *)v7 extraChildItems];
  v9 = [[CoreDAVItem alloc] initWithNameSpace:spaceCopy andName:nameCopy];

  [extraChildItems addObject:v9];

  return v7;
}

@end