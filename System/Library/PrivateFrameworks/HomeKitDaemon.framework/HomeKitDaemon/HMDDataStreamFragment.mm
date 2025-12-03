@interface HMDDataStreamFragment
- (BOOL)isEqual:(id)equal;
- (BOOL)isInitial;
- (HMDDataStreamFragment)initWithData:(id)data sequenceNumber:(id)number type:(id)type;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDDataStreamFragment

- (unint64_t)hash
{
  data = [(HMDDataStreamFragment *)self data];
  v4 = [data hash];

  sequenceNumber = [(HMDDataStreamFragment *)self sequenceNumber];
  v6 = [sequenceNumber hash] ^ v4;

  type = [(HMDDataStreamFragment *)self type];
  v8 = [type hash];

  return v6 ^ v8;
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
    data = [v6 data];
    data2 = [(HMDDataStreamFragment *)self data];
    if ([data isEqualToData:data2])
    {
      sequenceNumber = [v7 sequenceNumber];
      sequenceNumber2 = [(HMDDataStreamFragment *)self sequenceNumber];
      if ([sequenceNumber isEqualToNumber:sequenceNumber2])
      {
        type = [v7 type];
        type2 = [(HMDDataStreamFragment *)self type];
        v14 = [type isEqualToString:type2];
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
  sequenceNumber = [(HMDDataStreamFragment *)self sequenceNumber];
  v3 = [sequenceNumber unsignedLongLongValue] == 1;

  return v3;
}

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  data = [(HMDDataStreamFragment *)self data];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
  v7 = [v3 initWithName:@"Data Length" value:v6];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  sequenceNumber = [(HMDDataStreamFragment *)self sequenceNumber];
  v10 = [v8 initWithName:@"Sequence Number" value:sequenceNumber];
  v17[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  type = [(HMDDataStreamFragment *)self type];
  v13 = [v11 initWithName:@"Type" value:type];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDDataStreamFragment)initWithData:(id)data sequenceNumber:(id)number type:(id)type
{
  dataCopy = data;
  numberCopy = number;
  typeCopy = type;
  if (!dataCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!numberCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = typeCopy;
  if (!typeCopy)
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
    objc_storeStrong(&v13->_data, data);
    v15 = [numberCopy copy];
    sequenceNumber = v14->_sequenceNumber;
    v14->_sequenceNumber = v15;

    v17 = [v12 copy];
    type = v14->_type;
    v14->_type = v17;
  }

  return v14;
}

@end