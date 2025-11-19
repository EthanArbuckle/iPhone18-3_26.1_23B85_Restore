@interface HMDPreferredResidentsList
- (BOOL)isEqual:(id)a3;
- (HMDPreferredResidentsList)initWithResidentIDSIdentifiers:(id)a3 modifiedTimestamp:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDPreferredResidentsList

- (id)description
{
  v3 = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
  v4 = [v3 count];

  v5 = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
  v6 = v5;
  if (v4 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v4;
  }

  v8 = [v5 subarrayWithRange:{0, v7}];

  v9 = MEMORY[0x277CCACA8];
  v10 = [(HMDPreferredResidentsList *)self modifiedTimestamp];
  v11 = [v10 localTimeDescription];
  v12 = [v9 stringWithFormat:@"modifiedTimestamp %@ residentIDSIdentifiers (%lu) %@", v11, v4, v8];

  return v12;
}

- (unint64_t)hash
{
  v2 = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
  v3 = [v2 hash];

  return v3;
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
    v7 = [(HMDPreferredResidentsList *)self residentIDSIdentifiers];
    v8 = [v6 residentIDSIdentifiers];
    if ([v7 isEqualToArray:v8])
    {
      v9 = [(HMDPreferredResidentsList *)self modifiedTimestamp];
      v10 = [v6 modifiedTimestamp];
      v11 = [v9 isEqualToDate:v10];
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

- (HMDPreferredResidentsList)initWithResidentIDSIdentifiers:(id)a3 modifiedTimestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDPreferredResidentsList;
  v8 = [(HMDPreferredResidentsList *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    residentIDSIdentifiers = v8->_residentIDSIdentifiers;
    v8->_residentIDSIdentifiers = v9;

    objc_storeStrong(&v8->_modifiedTimestamp, a4);
  }

  return v8;
}

@end