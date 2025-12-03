@interface MEMessageSecurityInformation
- (BOOL)isEqual:(id)equal;
- (MEMessageSecurityInformation)initWithCoder:(id)coder;
- (MEMessageSecurityInformation)initWithSigners:(NSArray *)signers isEncrypted:(BOOL)isEncrypted signingError:(NSError *)signingError encryptionError:(NSError *)encryptionError shouldBlockRemoteContent:(BOOL)shouldBlockRemoteContent localizedRemoteContentBlockingReason:(NSString *)localizedRemoteContentBlockingReason;
- (MEMessageSecurityInformation)initWithSigners:(id)signers isEncrypted:(BOOL)encrypted signingError:(id)error encryptionError:(id)encryptionError shouldBlockRemoteContent:(BOOL)content disallowUsersToLoadRemoteContent:(BOOL)remoteContent localizedRemoteContentBlockingReason:(id)reason;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (MEMessageSecurityInformation)initWithSigners:(id)signers isEncrypted:(BOOL)encrypted signingError:(id)error encryptionError:(id)encryptionError shouldBlockRemoteContent:(BOOL)content disallowUsersToLoadRemoteContent:(BOOL)remoteContent localizedRemoteContentBlockingReason:(id)reason
{
  signersCopy = signers;
  errorCopy = error;
  encryptionErrorCopy = encryptionError;
  reasonCopy = reason;
  v23.receiver = self;
  v23.super_class = MEMessageSecurityInformation;
  v18 = [(MEMessageSecurityInformation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signers, signers);
    v19->_isEncrypted = encrypted;
    objc_storeStrong(&v19->_signingError, error);
    objc_storeStrong(&v19->_encryptionError, encryptionError);
    v19->_shouldBlockRemoteContent = content;
    v19->_disallowUsersToLoadRemoteContent = remoteContent;
    objc_storeStrong(&v19->_localizedRemoteContentBlockingReason, reason);
  }

  return v19;
}

- (MEMessageSecurityInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_signers"];

  v9 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signingError"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encryptionError"];
  v12 = [coderCopy decodeBoolForKey:@"EFPropertyKey_shouldBlockRemoteContent"];
  v13 = [coderCopy decodeBoolForKey:@"EFPropertyKey_disallowUsersToLoadRemoteContent"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_localizedRemoteContentBlockingReason"];
  v15 = [(MEMessageSecurityInformation *)self initWithSigners:v8 isEncrypted:v9 signingError:v10 encryptionError:v11 shouldBlockRemoteContent:v12 disallowUsersToLoadRemoteContent:v13 localizedRemoteContentBlockingReason:v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signers = [(MEMessageSecurityInformation *)self signers];
  [coderCopy encodeObject:signers forKey:@"EFPropertyKey_signers"];

  [coderCopy encodeBool:-[MEMessageSecurityInformation isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  signingError = [(MEMessageSecurityInformation *)self signingError];
  [coderCopy encodeObject:signingError forKey:@"EFPropertyKey_signingError"];

  encryptionError = [(MEMessageSecurityInformation *)self encryptionError];
  [coderCopy encodeObject:encryptionError forKey:@"EFPropertyKey_encryptionError"];

  [coderCopy encodeBool:-[MEMessageSecurityInformation shouldBlockRemoteContent](self forKey:{"shouldBlockRemoteContent"), @"EFPropertyKey_shouldBlockRemoteContent"}];
  [coderCopy encodeBool:-[MEMessageSecurityInformation disallowUsersToLoadRemoteContent](self forKey:{"disallowUsersToLoadRemoteContent"), @"EFPropertyKey_disallowUsersToLoadRemoteContent"}];
  localizedRemoteContentBlockingReason = [(MEMessageSecurityInformation *)self localizedRemoteContentBlockingReason];
  [coderCopy encodeObject:localizedRemoteContentBlockingReason forKey:@"EFPropertyKey_localizedRemoteContentBlockingReason"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    signers = [(MEMessageSecurityInformation *)self signers];
    signers2 = [v6 signers];
    if ([signers isEqual:signers2] && (v9 = -[MEMessageSecurityInformation isEncrypted](self, "isEncrypted"), v9 == objc_msgSend(v6, "isEncrypted")))
    {
      signingError = [(MEMessageSecurityInformation *)self signingError];
      signingError2 = [v6 signingError];
      if (EFObjectsAreEqual())
      {
        encryptionError = [(MEMessageSecurityInformation *)self encryptionError];
        encryptionError2 = [v6 encryptionError];
        if (EFObjectsAreEqual() && (v15 = -[MEMessageSecurityInformation shouldBlockRemoteContent](self, "shouldBlockRemoteContent"), v15 == [v6 shouldBlockRemoteContent]) && (v16 = -[MEMessageSecurityInformation disallowUsersToLoadRemoteContent](self, "disallowUsersToLoadRemoteContent"), v16 == objc_msgSend(v6, "disallowUsersToLoadRemoteContent")))
        {
          localizedRemoteContentBlockingReason = [(MEMessageSecurityInformation *)self localizedRemoteContentBlockingReason];
          localizedRemoteContentBlockingReason2 = [v6 localizedRemoteContentBlockingReason];
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