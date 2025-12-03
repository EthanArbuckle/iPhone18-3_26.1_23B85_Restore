@interface HMBShareInvitation
- (BOOL)isEqual:(id)equal;
- (HMBShareInvitation)initWithCoder:(id)coder;
- (HMBShareInvitation)initWithURL:(id)l token:(id)token context:(id)context cloudZoneID:(id)d;
- (HMBShareInvitation)initWithURL:(id)l token:(id)token context:(id)context cloudZoneID:(id)d dateCreated:(id)created;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBShareInvitation

- (HMBShareInvitation)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.t"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.c"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.czi"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.dc"];
  v10 = v9;
  if (v5 && v6 && v7 && v8 && v9)
  {
    selfCopy = [(HMBShareInvitation *)self initWithURL:v5 token:v6 context:v7 cloudZoneID:v8 dateCreated:v9];
    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138544642;
      v19 = v15;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded shareURL: %@ token: %@ context: %@ cloudZoneID: %@ dateCreated: %@", &v18, 0x3Eu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  shareURL = [(HMBShareInvitation *)self shareURL];
  [coderCopy encodeObject:shareURL forKey:@"HMBUI.u"];

  token = [(HMBShareInvitation *)self token];
  [coderCopy encodeObject:token forKey:@"HMBUI.t"];

  context = [(HMBShareInvitation *)self context];
  [coderCopy encodeObject:context forKey:@"HMBUI.c"];

  cloudZoneID = [(HMBShareInvitation *)self cloudZoneID];
  [coderCopy encodeObject:cloudZoneID forKey:@"HMBUI.czi"];

  dateCreated = [(HMBShareInvitation *)self dateCreated];
  [coderCopy encodeObject:dateCreated forKey:@"HMBUI.dc"];
}

- (unint64_t)hash
{
  shareURL = [(HMBShareInvitation *)self shareURL];
  v4 = [shareURL hash];

  token = [(HMBShareInvitation *)self token];
  v6 = [token hash] ^ v4;

  context = [(HMBShareInvitation *)self context];
  v8 = [context hash];

  cloudZoneID = [(HMBShareInvitation *)self cloudZoneID];
  v10 = v6 ^ v8 ^ [cloudZoneID hash];

  dateCreated = [(HMBShareInvitation *)self dateCreated];
  v12 = [dateCreated hash];

  return v10 ^ v12;
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
  if (v6)
  {
    shareURL = [(HMBShareInvitation *)self shareURL];
    shareURL2 = [v6 shareURL];
    if ([shareURL isEqual:shareURL2])
    {
      token = [(HMBShareInvitation *)self token];
      token2 = [v6 token];
      if ([token isEqual:token2])
      {
        context = [(HMBShareInvitation *)self context];
        context2 = [v6 context];
        if ([context isEqual:context2])
        {
          cloudZoneID = [(HMBShareInvitation *)self cloudZoneID];
          cloudZoneID2 = [v6 cloudZoneID];
          v21 = cloudZoneID;
          v15 = cloudZoneID;
          v16 = cloudZoneID2;
          if ([v15 isEqual:cloudZoneID2])
          {
            dateCreated = [(HMBShareInvitation *)self dateCreated];
            dateCreated2 = [v6 dateCreated];
            v17 = [dateCreated isEqualToDate:dateCreated2];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  shareURL = [(HMBShareInvitation *)self shareURL];
  v4 = [v3 initWithName:@"Share URL" value:shareURL];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  token = [(HMBShareInvitation *)self token];
  v7 = [v5 initWithName:@"Token" value:token];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  context = [(HMBShareInvitation *)self context];
  v10 = [v8 initWithName:@"Context" value:context];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  cloudZoneID = [(HMBShareInvitation *)self cloudZoneID];
  v13 = [v11 initWithName:@"Cloud Zone ID" value:cloudZoneID];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  dateCreated = [(HMBShareInvitation *)self dateCreated];
  v16 = [v14 initWithName:@"Date Created" value:dateCreated];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMBShareInvitation)initWithURL:(id)l token:(id)token context:(id)context cloudZoneID:(id)d dateCreated:(id)created
{
  lCopy = l;
  tokenCopy = token;
  contextCopy = context;
  dCopy = d;
  createdCopy = created;
  v21.receiver = self;
  v21.super_class = HMBShareInvitation;
  v17 = [(HMBShareInvitation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_shareURL, l);
    objc_storeStrong(&v18->_token, token);
    objc_storeStrong(&v18->_context, context);
    objc_storeStrong(&v18->_cloudZoneID, d);
    objc_storeStrong(&v18->_dateCreated, created);
  }

  return v18;
}

- (HMBShareInvitation)initWithURL:(id)l token:(id)token context:(id)context cloudZoneID:(id)d
{
  v10 = MEMORY[0x277CBEAA8];
  dCopy = d;
  contextCopy = context;
  tokenCopy = token;
  lCopy = l;
  date = [v10 date];
  v16 = [(HMBShareInvitation *)self initWithURL:lCopy token:tokenCopy context:contextCopy cloudZoneID:dCopy dateCreated:date];

  return v16;
}

@end