@interface HMDWatchSync
- (BOOL)isEqual:(id)equal;
- (HMDWatchSync)initWithIdentifier:(id)identifier syncOption:(unint64_t)option inProgress:(BOOL)progress isRetry:(BOOL)retry;
- (HMDWatchSync)initWithSyncOption:(unint64_t)option;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDWatchSync

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDWatchSync *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:identifier];
  v19[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  syncOption = [(HMDWatchSync *)self syncOption];
  if (syncOption > 2)
  {
    v8 = @"Unknown watch sync option";
  }

  else
  {
    v8 = off_279723608[syncOption];
  }

  v9 = [v6 initWithName:@"Sync Option" value:v8];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDWatchSync *)self inProgress];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"In Progress" value:v11];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDWatchSync *)self isRetry];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"Is Retry" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDWatchSync alloc];
  identifier = [(HMDWatchSync *)self identifier];
  v6 = [(HMDWatchSync *)v4 initWithIdentifier:identifier syncOption:[(HMDWatchSync *)self syncOption] inProgress:[(HMDWatchSync *)self inProgress] isRetry:[(HMDWatchSync *)self isRetry]];

  return v6;
}

- (unint64_t)hash
{
  identifier = [(HMDWatchSync *)self identifier];
  v4 = [identifier hash];

  v5 = [(HMDWatchSync *)self syncOption]^ v4;
  v6 = v5 ^ [(HMDWatchSync *)self inProgress];
  return v6 ^ [(HMDWatchSync *)self isRetry];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    identifier = [v6 identifier];
    identifier2 = [(HMDWatchSync *)self identifier];
    if ([identifier isEqual:identifier2] && (v10 = objc_msgSend(v7, "syncOption"), v10 == -[HMDWatchSync syncOption](self, "syncOption")) && (v11 = objc_msgSend(v7, "inProgress"), v11 == -[HMDWatchSync inProgress](self, "inProgress")))
    {
      isRetry = [v7 isRetry];
      v12 = isRetry ^ [(HMDWatchSync *)self isRetry]^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (HMDWatchSync)initWithSyncOption:(unint64_t)option
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [(HMDWatchSync *)self initWithIdentifier:uUID syncOption:option inProgress:0 isRetry:0];

  return v6;
}

- (HMDWatchSync)initWithIdentifier:(id)identifier syncOption:(unint64_t)option inProgress:(BOOL)progress isRetry:(BOOL)retry
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = HMDWatchSync;
  v12 = [(HMDWatchSync *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v13->_syncOption = option;
    v13->_inProgress = progress;
    v13->_isRetry = retry;
  }

  return v13;
}

@end