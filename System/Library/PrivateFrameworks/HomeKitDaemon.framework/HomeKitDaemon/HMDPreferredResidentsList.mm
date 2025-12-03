@interface HMDPreferredResidentsList
- (BOOL)isEqual:(id)equal;
- (HMDPreferredResidentsList)initWithResidentIDSIdentifiers:(id)identifiers modifiedTimestamp:(id)timestamp;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDPreferredResidentsList

- (id)description
{
  residentIDSIdentifiers = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
  v4 = [residentIDSIdentifiers count];

  residentIDSIdentifiers2 = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
  v6 = residentIDSIdentifiers2;
  if (v4 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v4;
  }

  v8 = [residentIDSIdentifiers2 subarrayWithRange:{0, v7}];

  v9 = MEMORY[0x277CCACA8];
  modifiedTimestamp = [(HMDPreferredResidentsList *)self modifiedTimestamp];
  localTimeDescription = [modifiedTimestamp localTimeDescription];
  v12 = [v9 stringWithFormat:@"modifiedTimestamp %@ residentIDSIdentifiers (%lu) %@", localTimeDescription, v4, v8];

  return v12;
}

- (unint64_t)hash
{
  residentIDSIdentifiers = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
  v3 = [residentIDSIdentifiers hash];

  return v3;
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
    residentIDSIdentifiers = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
    residentIDSIdentifiers2 = [v6 residentIDSIdentifiers];
    if ([residentIDSIdentifiers isEqualToArray:residentIDSIdentifiers2])
    {
      modifiedTimestamp = [(HMDPreferredResidentsList *)self modifiedTimestamp];
      modifiedTimestamp2 = [v6 modifiedTimestamp];
      v11 = [modifiedTimestamp isEqualToDate:modifiedTimestamp2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMDPreferredResidentsList)initWithResidentIDSIdentifiers:(id)identifiers modifiedTimestamp:(id)timestamp
{
  identifiersCopy = identifiers;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = HMDPreferredResidentsList;
  v8 = [(HMDPreferredResidentsList *)&v12 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    residentIDSIdentifiers = v8->_residentIDSIdentifiers;
    v8->_residentIDSIdentifiers = v9;

    objc_storeStrong(&v8->_modifiedTimestamp, timestamp);
  }

  return v8;
}

@end