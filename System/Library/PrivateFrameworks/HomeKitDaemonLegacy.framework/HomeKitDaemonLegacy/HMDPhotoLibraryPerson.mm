@interface HMDPhotoLibraryPerson
- (BOOL)isEqual:(id)equal;
- (HMDPhotoLibraryPerson)initWithHMPerson:(id)person;
- (HMDPhotoLibraryPerson)initWithUUID:(id)d name:(id)name;
- (id)attributeDescriptions;
- (id)createHMPerson;
- (unint64_t)hash;
- (void)updateHMPerson:(id)person;
@end

@implementation HMDPhotoLibraryPerson

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMDPhotoLibraryPerson *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:uUID];
  [array addObject:v6];

  name = [(HMDPhotoLibraryPerson *)self name];

  if (name)
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    name2 = [(HMDPhotoLibraryPerson *)self name];
    v10 = [v8 initWithName:@"Name" value:name2];
    [array addObject:v10];
  }

  v11 = [array copy];

  return v11;
}

- (unint64_t)hash
{
  uUID = [(HMDPhotoLibraryPerson *)self UUID];
  v3 = [uUID hash];

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
    uUID = [(HMDPhotoLibraryPerson *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2])
    {
      name = [(HMDPhotoLibraryPerson *)self name];
      name2 = [v6 name];
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

- (void)updateHMPerson:(id)person
{
  personCopy = person;
  name = [(HMDPhotoLibraryPerson *)self name];
  [personCopy setName:name];

  uUID = [(HMDPhotoLibraryPerson *)self UUID];
  [personCopy setExternalPersonUUID:uUID];
}

- (id)createHMPerson
{
  uUID = [(HMDPhotoLibraryPerson *)self UUID];
  v4 = [objc_alloc(MEMORY[0x277CD1C70]) initWithUUID:uUID];
  [(HMDPhotoLibraryPerson *)self updateHMPerson:v4];
  v5 = [v4 copy];

  return v5;
}

- (HMDPhotoLibraryPerson)initWithUUID:(id)d name:(id)name
{
  dCopy = d;
  nameCopy = name;
  if (dCopy)
  {
    v8 = nameCopy;
    v18.receiver = self;
    v18.super_class = HMDPhotoLibraryPerson;
    v9 = [(HMDPhotoLibraryPerson *)&v18 init];
    if (v9)
    {
      v10 = [dCopy copy];
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

- (HMDPhotoLibraryPerson)initWithHMPerson:(id)person
{
  personCopy = person;
  externalPersonUUID = [personCopy externalPersonUUID];
  v6 = externalPersonUUID;
  if (externalPersonUUID)
  {
    uUID = externalPersonUUID;
  }

  else
  {
    uUID = [personCopy UUID];
  }

  v8 = uUID;

  name = [personCopy name];
  v10 = [(HMDPhotoLibraryPerson *)self initWithUUID:v8 name:name];

  return v10;
}

@end