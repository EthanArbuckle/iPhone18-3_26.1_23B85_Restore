@interface IDSLocalPairingRecord
- (IDSLocalPairingRecord)initWithCoder:(id)a3;
- (IDSLocalPairingRecord)initWithIdentityDataClassA:(id)a3 classC:(id)a4 classD:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSLocalPairingRecord

- (IDSLocalPairingRecord)initWithIdentityDataClassA:(id)a3 classC:(id)a4 classD:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingRecord;
  v11 = [(IDSLocalPairingRecord *)&v15 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSDictionary *)v12 setObject:v8 forKeyedSubscript:&unk_1F0A29948];
    [(NSDictionary *)v12 setObject:v9 forKeyedSubscript:&unk_1F0A29960];
    [(NSDictionary *)v12 setObject:v10 forKeyedSubscript:&unk_1F0A29978];
    protectionClassIdentityDataMap = v11->_protectionClassIdentityDataMap;
    v11->_protectionClassIdentityDataMap = v12;
  }

  return v11;
}

- (IDSLocalPairingRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IDSLocalPairingRecord;
  v5 = [(IDSLocalPairingRecord *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"kIdentityDataMap"];
    protectionClassIdentityDataMap = v5->_protectionClassIdentityDataMap;
    v5->_protectionClassIdentityDataMap = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSLocalPairingRecord *)self protectionClassIdentityDataMap];
  [v4 encodeObject:v5 forKey:@"kIdentityDataMap"];
}

@end