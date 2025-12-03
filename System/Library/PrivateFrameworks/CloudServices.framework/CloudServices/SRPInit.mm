@interface SRPInit
- (NSString)dsid;
- (NSString)recoveryPassphrase;
- (SRPInit)initWithSecureBackup:(id)backup;
@end

@implementation SRPInit

- (SRPInit)initWithSecureBackup:(id)backup
{
  backupCopy = backup;
  v9.receiver = self;
  v9.super_class = SRPInit;
  v6 = [(SRPInit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sb, backup);
  }

  return v7;
}

- (NSString)dsid
{
  v3 = objc_msgSend_sb(self, a2, v2);
  v6 = objc_msgSend_dsid(v3, v4, v5);

  return v6;
}

- (NSString)recoveryPassphrase
{
  v3 = objc_msgSend_sb(self, a2, v2);
  v6 = objc_msgSend_passphrase(v3, v4, v5);

  return v6;
}

@end