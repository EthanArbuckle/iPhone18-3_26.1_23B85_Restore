@interface CalDAVChecksumVersionsItem
- (BOOL)supportsVersion:(id)a3;
- (id)copyParseRules;
- (void)addVersionSupported:(id)a3;
@end

@implementation CalDAVChecksumVersionsItem

- (void)addVersionSupported:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (!self->_versionStringsSupported)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    versionStringsSupported = self->_versionStringsSupported;
    self->_versionStringsSupported = v5;

    v4 = v11;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 nameSpace];
  v9 = [v11 name];
  v10 = [v7 CDVStringWithNameSpace:v8 andName:v9];

  [(NSMutableSet *)self->_versionStringsSupported addObject:v10];
}

- (BOOL)supportsVersion:(id)a3
{
  versionStringsSupported = self->_versionStringsSupported;
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v5 nameSpace];
  v7 = [v5 name];

  v8 = [v4 CDVStringWithNameSpace:v6 andName:v7];
  LOBYTE(versionStringsSupported) = [(NSMutableSet *)versionStringsSupported containsObject:v8];

  return versionStringsSupported;
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDE90] elementName:@"checksum-v1" objectClass:objc_opt_class() setterMethod:sel_addVersionSupported_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"checksum-v1"];
  v6 = [v2 initWithObjectsAndKeys:{v4, v5, 0}];

  return v6;
}

@end