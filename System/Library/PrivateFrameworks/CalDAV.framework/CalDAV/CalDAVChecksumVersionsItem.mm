@interface CalDAVChecksumVersionsItem
- (BOOL)supportsVersion:(id)version;
- (id)copyParseRules;
- (void)addVersionSupported:(id)supported;
@end

@implementation CalDAVChecksumVersionsItem

- (void)addVersionSupported:(id)supported
{
  supportedCopy = supported;
  v11 = supportedCopy;
  if (!self->_versionStringsSupported)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    versionStringsSupported = self->_versionStringsSupported;
    self->_versionStringsSupported = v5;

    supportedCopy = v11;
  }

  v7 = MEMORY[0x277CCACA8];
  nameSpace = [supportedCopy nameSpace];
  name = [v11 name];
  v10 = [v7 CDVStringWithNameSpace:nameSpace andName:name];

  [(NSMutableSet *)self->_versionStringsSupported addObject:v10];
}

- (BOOL)supportsVersion:(id)version
{
  versionStringsSupported = self->_versionStringsSupported;
  v4 = MEMORY[0x277CCACA8];
  versionCopy = version;
  nameSpace = [versionCopy nameSpace];
  name = [versionCopy name];

  v8 = [v4 CDVStringWithNameSpace:nameSpace andName:name];
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