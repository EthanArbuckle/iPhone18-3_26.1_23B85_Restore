@interface HMBShareInvitation
- (BOOL)isEqual:(id)a3;
- (HMBShareInvitation)initWithCoder:(id)a3;
- (HMBShareInvitation)initWithURL:(id)a3 token:(id)a4 context:(id)a5 cloudZoneID:(id)a6;
- (HMBShareInvitation)initWithURL:(id)a3 token:(id)a4 context:(id)a5 cloudZoneID:(id)a6 dateCreated:(id)a7;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBShareInvitation

- (HMBShareInvitation)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.t"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.c"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.czi"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.dc"];
  v10 = v9;
  if (v5 && v6 && v7 && v8 && v9)
  {
    v11 = [(HMBShareInvitation *)self initWithURL:v5 token:v6 context:v7 cloudZoneID:v8 dateCreated:v9];
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBShareInvitation *)self shareURL];
  [v4 encodeObject:v5 forKey:@"HMBUI.u"];

  v6 = [(HMBShareInvitation *)self token];
  [v4 encodeObject:v6 forKey:@"HMBUI.t"];

  v7 = [(HMBShareInvitation *)self context];
  [v4 encodeObject:v7 forKey:@"HMBUI.c"];

  v8 = [(HMBShareInvitation *)self cloudZoneID];
  [v4 encodeObject:v8 forKey:@"HMBUI.czi"];

  v9 = [(HMBShareInvitation *)self dateCreated];
  [v4 encodeObject:v9 forKey:@"HMBUI.dc"];
}

- (unint64_t)hash
{
  v3 = [(HMBShareInvitation *)self shareURL];
  v4 = [v3 hash];

  v5 = [(HMBShareInvitation *)self token];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMBShareInvitation *)self context];
  v8 = [v7 hash];

  v9 = [(HMBShareInvitation *)self cloudZoneID];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMBShareInvitation *)self dateCreated];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMBShareInvitation *)self shareURL];
    v8 = [v6 shareURL];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMBShareInvitation *)self token];
      v10 = [v6 token];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMBShareInvitation *)self context];
        v12 = [v6 context];
        if ([v11 isEqual:v12])
        {
          v13 = [(HMBShareInvitation *)self cloudZoneID];
          v14 = [v6 cloudZoneID];
          v21 = v13;
          v15 = v13;
          v16 = v14;
          if ([v15 isEqual:v14])
          {
            v20 = [(HMBShareInvitation *)self dateCreated];
            v19 = [v6 dateCreated];
            v17 = [v20 isEqualToDate:v19];
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
  v20 = [(HMBShareInvitation *)self shareURL];
  v4 = [v3 initWithName:@"Share URL" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMBShareInvitation *)self token];
  v7 = [v5 initWithName:@"Token" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMBShareInvitation *)self context];
  v10 = [v8 initWithName:@"Context" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMBShareInvitation *)self cloudZoneID];
  v13 = [v11 initWithName:@"Cloud Zone ID" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMBShareInvitation *)self dateCreated];
  v16 = [v14 initWithName:@"Date Created" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMBShareInvitation)initWithURL:(id)a3 token:(id)a4 context:(id)a5 cloudZoneID:(id)a6 dateCreated:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMBShareInvitation;
  v17 = [(HMBShareInvitation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_shareURL, a3);
    objc_storeStrong(&v18->_token, a4);
    objc_storeStrong(&v18->_context, a5);
    objc_storeStrong(&v18->_cloudZoneID, a6);
    objc_storeStrong(&v18->_dateCreated, a7);
  }

  return v18;
}

- (HMBShareInvitation)initWithURL:(id)a3 token:(id)a4 context:(id)a5 cloudZoneID:(id)a6
{
  v10 = MEMORY[0x277CBEAA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  v16 = [(HMBShareInvitation *)self initWithURL:v14 token:v13 context:v12 cloudZoneID:v11 dateCreated:v15];

  return v16;
}

@end