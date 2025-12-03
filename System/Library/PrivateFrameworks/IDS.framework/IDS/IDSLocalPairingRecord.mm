@interface IDSLocalPairingRecord
- (IDSLocalPairingRecord)initWithCoder:(id)coder;
- (IDSLocalPairingRecord)initWithIdentityDataClassA:(id)a classC:(id)c classD:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSLocalPairingRecord

- (IDSLocalPairingRecord)initWithIdentityDataClassA:(id)a classC:(id)c classD:(id)d
{
  aCopy = a;
  cCopy = c;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingRecord;
  v11 = [(IDSLocalPairingRecord *)&v15 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSDictionary *)v12 setObject:aCopy forKeyedSubscript:&unk_1F0A29948];
    [(NSDictionary *)v12 setObject:cCopy forKeyedSubscript:&unk_1F0A29960];
    [(NSDictionary *)v12 setObject:dCopy forKeyedSubscript:&unk_1F0A29978];
    protectionClassIdentityDataMap = v11->_protectionClassIdentityDataMap;
    v11->_protectionClassIdentityDataMap = v12;
  }

  return v11;
}

- (IDSLocalPairingRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IDSLocalPairingRecord;
  v5 = [(IDSLocalPairingRecord *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"kIdentityDataMap"];
    protectionClassIdentityDataMap = v5->_protectionClassIdentityDataMap;
    v5->_protectionClassIdentityDataMap = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protectionClassIdentityDataMap = [(IDSLocalPairingRecord *)self protectionClassIdentityDataMap];
  [coderCopy encodeObject:protectionClassIdentityDataMap forKey:@"kIdentityDataMap"];
}

@end