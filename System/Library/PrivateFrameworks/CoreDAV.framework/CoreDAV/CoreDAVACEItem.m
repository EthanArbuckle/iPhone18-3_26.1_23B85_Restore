@interface CoreDAVACEItem
+ (id)copyParseRules;
+ (id)privilegeItemWithNameSpace:(id)a3 andName:(id)a4;
- (CoreDAVACEItem)initWithPrincipal:(id)a3 shouldInvert:(BOOL)a4 action:(int)a5 withPrivileges:(id)a6;
- (id)description;
- (void)write:(id)a3;
@end

@implementation CoreDAVACEItem

- (CoreDAVACEItem)initWithPrincipal:(id)a3 shouldInvert:(BOOL)a4 action:(int)a5 withPrivileges:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a6;
  v13 = [(CoreDAVACEItem *)self init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    v15 = [(CoreDAVItem *)[CoreDAVInvertItem alloc] initWithNameSpace:@"DAV:" andName:@"invert"];
    invert = v14->_invert;
    v14->_invert = v15;

    [(CoreDAVInvertItem *)v14->_invert setPrincipal:v11];
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = &OBJC_IVAR___CoreDAVACEItem__grant;
    v18 = cdXMLGrant;
    v19 = off_278E30B38;
    goto LABEL_8;
  }

  objc_storeStrong(&v13->_principal, a3);
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (a5 == 1)
  {
    v17 = &OBJC_IVAR___CoreDAVACEItem__deny;
    v18 = cdXMLDeny;
    v19 = off_278E30B08;
LABEL_8:
    v20 = [objc_alloc(*v19) initWithNameSpace:@"DAV:" andName:*v18];
    v21 = *v17;
    v22 = *(&v14->super.super.isa + v21);
    *(&v14->super.super.isa + v21) = v20;

    v23 = [v12 mutableCopy];
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

  v5 = [(CoreDAVACEItem *)self principal];
  [v3 appendFormat:@"\n  Principal: [%@]", v5];

  v6 = [(CoreDAVACEItem *)self invert];
  [v3 appendFormat:@"\n  Invert: [%@]", v6];

  v7 = [(CoreDAVACEItem *)self grant];
  [v3 appendFormat:@"\n  Grant: [%@]", v7];

  v8 = [(CoreDAVACEItem *)self deny];
  [v3 appendFormat:@"\n  Deny: [%@]", v8];

  v9 = [(CoreDAVACEItem *)self protectedItem];
  [v3 appendFormat:@"\n  Protected: [%@]", v9];

  v10 = [(CoreDAVACEItem *)self inherited];
  [v3 appendFormat:@"\n  Inherited: [%@]", v10];

  return v3;
}

- (void)write:(id)a3
{
  v12 = a3;
  v4 = [(CoreDAVItem *)self name];
  v5 = [(CoreDAVItem *)self nameSpace];
  [v12 startElement:v4 inNamespace:v5 withAttributeNamesAndValues:0];

  v6 = [(CoreDAVACEItem *)self invert];

  if (v6)
  {
    [(CoreDAVACEItem *)self invert];
  }

  else
  {
    [(CoreDAVACEItem *)self principal];
  }
  v7 = ;
  [v7 write:v12];

  v8 = [(CoreDAVACEItem *)self grant];

  if (v8)
  {
    [(CoreDAVACEItem *)self grant];
  }

  else
  {
    [(CoreDAVACEItem *)self deny];
  }
  v9 = ;
  [v9 write:v12];

  v10 = [(CoreDAVItem *)self name];
  v11 = [(CoreDAVItem *)self nameSpace];
  [v12 endElement:v10 inNamespace:v11];
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
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
    v11 = NSStringFromClass(a1);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

+ (id)privilegeItemWithNameSpace:(id)a3 andName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CoreDAVItem alloc] initWithNameSpace:@"DAV:" andName:@"privilege"];
  v8 = [(CoreDAVItem *)v7 extraChildItems];
  v9 = [[CoreDAVItem alloc] initWithNameSpace:v6 andName:v5];

  [v8 addObject:v9];

  return v7;
}

@end