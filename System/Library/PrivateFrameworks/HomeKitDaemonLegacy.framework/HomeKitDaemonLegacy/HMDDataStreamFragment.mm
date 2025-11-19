@interface HMDDataStreamFragment
- (BOOL)isEqual:(id)a3;
- (BOOL)isInitial;
- (HMDDataStreamFragment)initWithData:(id)a3 sequenceNumber:(id)a4 type:(id)a5;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDDataStreamFragment

- (unint64_t)hash
{
  v3 = [(HMDDataStreamFragment *)self data];
  v4 = [v3 hash];

  v5 = [(HMDDataStreamFragment *)self sequenceNumber];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDDataStreamFragment *)self type];
  v8 = [v7 hash];

  return v6 ^ v8;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 data];
    v9 = [(HMDDataStreamFragment *)self data];
    if ([v8 isEqualToData:v9])
    {
      v10 = [v7 sequenceNumber];
      v11 = [(HMDDataStreamFragment *)self sequenceNumber];
      if ([v10 isEqualToNumber:v11])
      {
        v12 = [v7 type];
        v13 = [(HMDDataStreamFragment *)self type];
        v14 = [v12 isEqualToString:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isInitial
{
  v2 = [(HMDDataStreamFragment *)self sequenceNumber];
  v3 = [v2 unsignedLongLongValue] == 1;

  return v3;
}

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDDataStreamFragment *)self data];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
  v7 = [v3 initWithName:@"Data Length" value:v6];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDDataStreamFragment *)self sequenceNumber];
  v10 = [v8 initWithName:@"Sequence Number" value:v9];
  v17[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDDataStreamFragment *)self type];
  v13 = [v11 initWithName:@"Type" value:v12];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDDataStreamFragment)initWithData:(id)a3 sequenceNumber:(id)a4 type:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    [(HMDBulletinBoardNotification *)v20 .cxx_destruct];
    return result;
  }

  v22.receiver = self;
  v22.super_class = HMDDataStreamFragment;
  v13 = [(HMDDataStreamFragment *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_data, a3);
    v15 = [v10 copy];
    sequenceNumber = v14->_sequenceNumber;
    v14->_sequenceNumber = v15;

    v17 = [v12 copy];
    type = v14->_type;
    v14->_type = v17;
  }

  return v14;
}

@end