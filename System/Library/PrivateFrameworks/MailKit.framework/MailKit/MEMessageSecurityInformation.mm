@interface MEMessageSecurityInformation
- (BOOL)isEqual:(id)a3;
- (MEMessageSecurityInformation)initWithCoder:(id)a3;
- (MEMessageSecurityInformation)initWithSigners:(NSArray *)signers isEncrypted:(BOOL)isEncrypted signingError:(NSError *)signingError encryptionError:(NSError *)encryptionError shouldBlockRemoteContent:(BOOL)shouldBlockRemoteContent localizedRemoteContentBlockingReason:(NSString *)localizedRemoteContentBlockingReason;
- (MEMessageSecurityInformation)initWithSigners:(id)a3 isEncrypted:(BOOL)a4 signingError:(id)a5 encryptionError:(id)a6 shouldBlockRemoteContent:(BOOL)a7 disallowUsersToLoadRemoteContent:(BOOL)a8 localizedRemoteContentBlockingReason:(id)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessageSecurityInformation

- (MEMessageSecurityInformation)initWithSigners:(NSArray *)signers isEncrypted:(BOOL)isEncrypted signingError:(NSError *)signingError encryptionError:(NSError *)encryptionError shouldBlockRemoteContent:(BOOL)shouldBlockRemoteContent localizedRemoteContentBlockingReason:(NSString *)localizedRemoteContentBlockingReason
{
  v21 = signers;
  v15 = signingError;
  v16 = encryptionError;
  v17 = localizedRemoteContentBlockingReason;
  v22.receiver = self;
  v22.super_class = MEMessageSecurityInformation;
  v18 = [(MEMessageSecurityInformation *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signers, signers);
    v19->_isEncrypted = isEncrypted;
    objc_storeStrong(&v19->_signingError, signingError);
    objc_storeStrong(&v19->_encryptionError, encryptionError);
    v19->_shouldBlockRemoteContent = shouldBlockRemoteContent;
    objc_storeStrong(&v19->_localizedRemoteContentBlockingReason, localizedRemoteContentBlockingReason);
  }

  return v19;
}

- (MEMessageSecurityInformation)initWithSigners:(id)a3 isEncrypted:(BOOL)a4 signingError:(id)a5 encryptionError:(id)a6 shouldBlockRemoteContent:(BOOL)a7 disallowUsersToLoadRemoteContent:(BOOL)a8 localizedRemoteContentBlockingReason:(id)a9
{
  v22 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = MEMessageSecurityInformation;
  v18 = [(MEMessageSecurityInformation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signers, a3);
    v19->_isEncrypted = a4;
    objc_storeStrong(&v19->_signingError, a5);
    objc_storeStrong(&v19->_encryptionError, a6);
    v19->_shouldBlockRemoteContent = a7;
    v19->_disallowUsersToLoadRemoteContent = a8;
    objc_storeStrong(&v19->_localizedRemoteContentBlockingReason, a9);
  }

  return v19;
}

- (MEMessageSecurityInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_signers"];

  v9 = [v4 decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signingError"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encryptionError"];
  v12 = [v4 decodeBoolForKey:@"EFPropertyKey_shouldBlockRemoteContent"];
  v13 = [v4 decodeBoolForKey:@"EFPropertyKey_disallowUsersToLoadRemoteContent"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_localizedRemoteContentBlockingReason"];
  v15 = [(MEMessageSecurityInformation *)self initWithSigners:v8 isEncrypted:v9 signingError:v10 encryptionError:v11 shouldBlockRemoteContent:v12 disallowUsersToLoadRemoteContent:v13 localizedRemoteContentBlockingReason:v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MEMessageSecurityInformation *)self signers];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_signers"];

  [v8 encodeBool:-[MEMessageSecurityInformation isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  v5 = [(MEMessageSecurityInformation *)self signingError];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_signingError"];

  v6 = [(MEMessageSecurityInformation *)self encryptionError];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_encryptionError"];

  [v8 encodeBool:-[MEMessageSecurityInformation shouldBlockRemoteContent](self forKey:{"shouldBlockRemoteContent"), @"EFPropertyKey_shouldBlockRemoteContent"}];
  [v8 encodeBool:-[MEMessageSecurityInformation disallowUsersToLoadRemoteContent](self forKey:{"disallowUsersToLoadRemoteContent"), @"EFPropertyKey_disallowUsersToLoadRemoteContent"}];
  v7 = [(MEMessageSecurityInformation *)self localizedRemoteContentBlockingReason];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_localizedRemoteContentBlockingReason"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageSecurityInformation *)self signers];
    v8 = [v6 signers];
    if ([v7 isEqual:v8] && (v9 = -[MEMessageSecurityInformation isEncrypted](self, "isEncrypted"), v9 == objc_msgSend(v6, "isEncrypted")))
    {
      v11 = [(MEMessageSecurityInformation *)self signingError];
      v12 = [v6 signingError];
      if (EFObjectsAreEqual())
      {
        v13 = [(MEMessageSecurityInformation *)self encryptionError];
        v14 = [v6 encryptionError];
        if (EFObjectsAreEqual() && (v15 = -[MEMessageSecurityInformation shouldBlockRemoteContent](self, "shouldBlockRemoteContent"), v15 == [v6 shouldBlockRemoteContent]) && (v16 = -[MEMessageSecurityInformation disallowUsersToLoadRemoteContent](self, "disallowUsersToLoadRemoteContent"), v16 == objc_msgSend(v6, "disallowUsersToLoadRemoteContent")))
        {
          v19 = [(MEMessageSecurityInformation *)self localizedRemoteContentBlockingReason];
          v18 = [v6 localizedRemoteContentBlockingReason];
          v10 = EFObjectsAreEqual();
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_signers hash];
  isEncrypted = self->_isEncrypted;
  v5 = [(NSError *)self->_signingError hash];
  v6 = [(NSError *)self->_encryptionError hash];
  shouldBlockRemoteContent = self->_shouldBlockRemoteContent;
  return 33 * (33 * (33 * (33 * (33 * v3 + isEncrypted) + v5) + v6) + shouldBlockRemoteContent) + [(NSString *)self->_localizedRemoteContentBlockingReason hash]+ 0x65207DF04C5;
}

@end