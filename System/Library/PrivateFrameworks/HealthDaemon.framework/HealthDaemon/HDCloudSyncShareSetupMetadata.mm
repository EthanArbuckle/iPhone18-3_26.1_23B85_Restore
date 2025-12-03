@interface HDCloudSyncShareSetupMetadata
+ (HDCloudSyncShareSetupMetadata)cloudSyncShareSetupMetadataWithCodableSharingSetupMetadata:(id)metadata error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncShareSetupMetadata)init;
- (HDCloudSyncShareSetupMetadata)initWithCoder:(id)coder;
- (HDCloudSyncShareSetupMetadata)initWithSyncCircleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier shareURLs:(id)ls ownerCloudKitEmailAddress:(id)address shareParticipant:(id)participant invitationTokensByShareURL:(id)l;
- (id)codableSharingSetupMetadataWithError:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDCloudSyncShareSetupMetadata

- (HDCloudSyncShareSetupMetadata)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncShareSetupMetadata)initWithSyncCircleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier shareURLs:(id)ls ownerCloudKitEmailAddress:(id)address shareParticipant:(id)participant invitationTokensByShareURL:(id)l
{
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  lsCopy = ls;
  addressCopy = address;
  participantCopy = participant;
  lCopy = l;
  if (addressCopy)
  {
    if (participantCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncShareSetupMetadata.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"ownerCloudKitEmailAddress"}];

    if (participantCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncShareSetupMetadata.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"shareParticipant"}];

LABEL_3:
  v35.receiver = self;
  v35.super_class = HDCloudSyncShareSetupMetadata;
  v21 = [(HDCloudSyncShareSetupMetadata *)&v35 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    syncCircleIdentifier = v21->_syncCircleIdentifier;
    v21->_syncCircleIdentifier = v22;

    v24 = [profileIdentifierCopy copy];
    profileIdentifier = v21->_profileIdentifier;
    v21->_profileIdentifier = v24;

    v26 = [lsCopy copy];
    shareURLs = v21->_shareURLs;
    v21->_shareURLs = v26;

    v28 = [addressCopy copy];
    ownerCloudKitEmailAddress = v21->_ownerCloudKitEmailAddress;
    v21->_ownerCloudKitEmailAddress = v28;

    objc_storeStrong(&v21->_shareParticipant, participant);
    v30 = [lCopy copy];
    invitationTokensByShareURL = v21->_invitationTokensByShareURL;
    v21->_invitationTokensByShareURL = v30;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  syncCircleIdentifier = self->_syncCircleIdentifier;
  v6 = equalCopy[1];
  if (syncCircleIdentifier != v6 && (!v6 || ![(NSString *)syncCircleIdentifier isEqualToString:?]))
  {
    goto LABEL_18;
  }

  profileIdentifier = self->_profileIdentifier;
  v8 = equalCopy[2];
  if (profileIdentifier != v8 && (!v8 || ![(HKProfileIdentifier *)profileIdentifier isEqual:?]))
  {
    goto LABEL_18;
  }

  if (((shareURLs = self->_shareURLs, v10 = equalCopy[3], shareURLs == v10) || v10 && [(NSArray *)shareURLs isEqualToArray:?]) && ((ownerCloudKitEmailAddress = self->_ownerCloudKitEmailAddress, v12 = equalCopy[5], ownerCloudKitEmailAddress == v12) || v12 && [(NSString *)ownerCloudKitEmailAddress isEqualToString:?]) && ((shareParticipant = self->_shareParticipant, v14 = equalCopy[6], shareParticipant == v14) || v14 && [(CKShareParticipant *)shareParticipant isEqual:?]))
  {
    v15 = [(NSDictionary *)self->_invitationTokensByShareURL isEqualToDictionary:equalCopy[4]];
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_syncCircleIdentifier hash];
  v4 = [(HKProfileIdentifier *)self->_profileIdentifier hash]^ v3;
  v5 = [(NSArray *)self->_shareURLs hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_ownerCloudKitEmailAddress hash];
  v7 = [(CKShareParticipant *)self->_shareParticipant hash];
  return v6 ^ v7 ^ [(NSDictionary *)self->_invitationTokensByShareURL hash];
}

- (void)encodeWithCoder:(id)coder
{
  syncCircleIdentifier = self->_syncCircleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:syncCircleIdentifier forKey:@"sync_circle"];
  [coderCopy encodeObject:self->_profileIdentifier forKey:@"profile_id"];
  [coderCopy encodeObject:self->_ownerCloudKitEmailAddress forKey:@"email"];
  [coderCopy encodeObject:self->_shareParticipant forKey:@"share_participant"];
  [coderCopy encodeObject:self->_shareURLs forKey:@"share_urls"];
  [coderCopy encodeObject:self->_invitationTokensByShareURL forKey:@"tokens"];
}

- (HDCloudSyncShareSetupMetadata)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sync_circle"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profile_id"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share_participant"];
  v7 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"share_urls"];

  v11 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v12 = v4;
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v14 = [v11 setWithArray:v13];

  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"tokens"];

  v16 = 0;
  if (v4)
  {
    v18 = v21;
    selfCopy2 = self;
    if (v21 && v5 && v6 && v10 && v15)
    {
      selfCopy2 = [(HDCloudSyncShareSetupMetadata *)self initWithSyncCircleIdentifier:v12 profileIdentifier:v21 shareURLs:v10 ownerCloudKitEmailAddress:v5 shareParticipant:v6 invitationTokensByShareURL:v15];
      v16 = selfCopy2;
    }
  }

  else
  {
    v18 = v21;
    selfCopy2 = self;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (HDCloudSyncShareSetupMetadata)cloudSyncShareSetupMetadataWithCodableSharingSetupMetadata:(id)metadata error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_opt_class();
  sourceProfileIdentifier = [metadataCopy sourceProfileIdentifier];
  v9 = [v6 unarchivedObjectOfClass:v7 fromData:sourceProfileIdentifier error:error];

  if (!v9)
  {
    v30 = 0;
    goto LABEL_25;
  }

  errorCopy = error;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = metadataCopy;
  obj = [metadataCopy invitationTokens];
  v11 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CBEBC0]);
        shareURL = [v15 shareURL];
        v18 = [v16 initWithString:shareURL];

        [v10 addObject:v18];
        token = [v15 token];

        if (token)
        {
          v20 = MEMORY[0x277CCAAC8];
          v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
          token2 = [v15 token];
          v23 = [v20 _strictlyUnarchivedObjectOfClasses:v21 fromData:token2 error:errorCopy];

          if (!v23)
          {
            v30 = 0;
            metadataCopy = v37;
            goto LABEL_24;
          }

          [v40 setObject:v23 forKeyedSubscript:v18];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v24 = MEMORY[0x277CCAAC8];
  v25 = objc_opt_class();
  metadataCopy = v37;
  shareParticipant = [v37 shareParticipant];
  v41 = 0;
  v18 = [v24 unarchivedObjectOfClass:v25 fromData:shareParticipant error:&v41];
  obj = v41;

  if (v18)
  {
    v27 = [HDCloudSyncShareSetupMetadata alloc];
    syncCircleIdentifier = [v37 syncCircleIdentifier];
    ownerCloudKitEmailAddress = [v37 ownerCloudKitEmailAddress];
    v30 = [(HDCloudSyncShareSetupMetadata *)v27 initWithSyncCircleIdentifier:syncCircleIdentifier profileIdentifier:v9 shareURLs:v10 ownerCloudKitEmailAddress:ownerCloudKitEmailAddress shareParticipant:v18 invitationTokensByShareURL:v40];

    goto LABEL_23;
  }

  _HKInitializeLogging();
  v31 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v35 = v31;
    shareParticipant2 = [v37 shareParticipant];
    *buf = 138543618;
    v47 = shareParticipant2;
    v48 = 2114;
    v49 = obj;
    _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to unarchive share participant %{public}@: %{public}@", buf, 0x16u);
  }

  syncCircleIdentifier = obj;
  if (syncCircleIdentifier)
  {
    if (errorCopy)
    {
      v32 = syncCircleIdentifier;
      v30 = 0;
      *errorCopy = syncCircleIdentifier;
      goto LABEL_23;
    }

    _HKLogDroppedError();
  }

  v30 = 0;
LABEL_23:

LABEL_24:
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)codableSharingSetupMetadataWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(HDCodableSharingSetupMetadata);
  syncCircleIdentifier = [(HDCloudSyncShareSetupMetadata *)self syncCircleIdentifier];
  v25 = v4;
  [(HDCodableSharingSetupMetadata *)v4 setSyncCircleIdentifier:syncCircleIdentifier];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  shareURLs = [(HDCloudSyncShareSetupMetadata *)self shareURLs];
  v8 = [shareURLs countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(shareURLs);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = objc_alloc_init(HDCodableSharingSetupInvitationToken);
        absoluteString = [v12 absoluteString];
        [(HDCodableSharingSetupInvitationToken *)v13 setShareURL:absoluteString];

        v15 = [(NSDictionary *)self->_invitationTokensByShareURL objectForKeyedSubscript:v12];
        if (v15)
        {
          v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:error];
          [(HDCodableSharingSetupInvitationToken *)v13 setToken:v16];

          token = [(HDCodableSharingSetupInvitationToken *)v13 token];

          if (!token)
          {

            sourceProfileIdentifier = 0;
            v18 = v25;
            goto LABEL_15;
          }
        }

        [v6 addObject:v13];
      }

      v9 = [shareURLs countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = v25;
  [(HDCodableSharingSetupMetadata *)v25 setInvitationTokens:v6];
  [(HDCodableSharingSetupMetadata *)v25 setOwnerCloudKitEmailAddress:self->_ownerCloudKitEmailAddress];
  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_shareParticipant requiringSecureCoding:1 error:error];
  [(HDCodableSharingSetupMetadata *)v25 setShareParticipant:v19];

  shareParticipant = [(HDCodableSharingSetupMetadata *)v25 shareParticipant];

  if (shareParticipant)
  {
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_profileIdentifier requiringSecureCoding:1 error:error];
    [(HDCodableSharingSetupMetadata *)v25 setSourceProfileIdentifier:v21];

    sourceProfileIdentifier = [(HDCodableSharingSetupMetadata *)v25 sourceProfileIdentifier];

    if (sourceProfileIdentifier)
    {
      sourceProfileIdentifier = v25;
    }
  }

  else
  {
    sourceProfileIdentifier = 0;
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return sourceProfileIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  syncCircleIdentifier = [(HDCloudSyncShareSetupMetadata *)self syncCircleIdentifier];
  profileIdentifier = [(HDCloudSyncShareSetupMetadata *)self profileIdentifier];
  shareURLs = [(HDCloudSyncShareSetupMetadata *)self shareURLs];
  ownerCloudKitEmailAddress = [(HDCloudSyncShareSetupMetadata *)self ownerCloudKitEmailAddress];
  shareParticipant = [(HDCloudSyncShareSetupMetadata *)self shareParticipant];
  invitationTokensByShareURL = [(HDCloudSyncShareSetupMetadata *)self invitationTokensByShareURL];
  v12 = [v3 stringWithFormat:@"<%@ %p: \n%@, \n%@, \n%@, \n%@, \n%@, \n%@>", v5, self, syncCircleIdentifier, profileIdentifier, shareURLs, ownerCloudKitEmailAddress, shareParticipant, invitationTokensByShareURL];

  return v12;
}

@end