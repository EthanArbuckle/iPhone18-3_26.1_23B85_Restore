@interface HMDPhotoLibraryPerson
- (BOOL)isEqual:(id)a3;
- (HMDPhotoLibraryPerson)initWithHMPerson:(id)a3;
- (HMDPhotoLibraryPerson)initWithUUID:(id)a3 name:(id)a4;
- (id)attributeDescriptions;
- (id)createHMPerson;
- (unint64_t)hash;
- (void)updateHMPerson:(id)a3;
@end

@implementation HMDPhotoLibraryPerson

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDPhotoLibraryPerson *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:v5];
  [v3 addObject:v6];

  v7 = [(HMDPhotoLibraryPerson *)self name];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    v9 = [(HMDPhotoLibraryPerson *)self name];
    v10 = [v8 initWithName:@"Name" value:v9];
    [v3 addObject:v10];
  }

  v11 = [v3 copy];

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HMDPhotoLibraryPerson *)self UUID];
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
    v7 = [(HMDPhotoLibraryPerson *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDPhotoLibraryPerson *)self name];
      v10 = [v6 name];
      v11 = HMFEqualObjects();
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

- (void)updateHMPerson:(id)a3
{
  v4 = a3;
  v5 = [(HMDPhotoLibraryPerson *)self name];
  [v4 setName:v5];

  v6 = [(HMDPhotoLibraryPerson *)self UUID];
  [v4 setExternalPersonUUID:v6];
}

- (id)createHMPerson
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [objc_alloc(MEMORY[0x277CD1C70]) initWithUUID:v3];
  [(HMDPhotoLibraryPerson *)self updateHMPerson:v4];
  v5 = [v4 copy];

  return v5;
}

- (HMDPhotoLibraryPerson)initWithUUID:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v18.receiver = self;
    v18.super_class = HMDPhotoLibraryPerson;
    v9 = [(HMDPhotoLibraryPerson *)&v18 init];
    if (v9)
    {
      v10 = [v6 copy];
      UUID = v9->_UUID;
      v9->_UUID = v10;

      v12 = [v8 copy];
      name = v9->_name;
      v9->_name = v12;
    }

    return v9;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMDPhotoLibraryPerson *)v15 initWithHMPerson:v16, v17];
  }
}

- (HMDPhotoLibraryPerson)initWithHMPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 externalPersonUUID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 UUID];
  }

  v8 = v7;

  v9 = [v4 name];
  v10 = [(HMDPhotoLibraryPerson *)self initWithUUID:v8 name:v9];

  return v10;
}

@end