@interface ENStableGroupID
+ (ENStableGroupID)stableGroupIDWithCurrentTime;
- (BOOL)isEqual:(id)equal;
- (ENStableGroupID)initWithCoder:(id)coder;
- (ENStableGroupID)initWithDataRepresentation:(id)representation;
- (ENStableGroupID)initWithUUID:(id)d;
- (id)_mutableDataRepresentation;
- (id)description;
- (int)customUUIDCompare:(unsigned __int8)compare[16] u2:(unsigned __int8)u2[16];
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENStableGroupID

+ (ENStableGroupID)stableGroupIDWithCurrentTime
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [[self alloc] initWithUUID:uUID];

  return v4;
}

- (id)_mutableDataRepresentation
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  uuid = [(ENStableGroupID *)self uuid];
  [uuid getUUIDBytes:v7];

  [v3 appendBytes:v7 length:16];
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (ENStableGroupID)initWithDataRepresentation:(id)representation
{
  v12 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy length];
  if (v5 == [objc_opt_class() stableGroupIDLength])
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    [representationCopy getBytes:&v11 length:16];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v11];
    self = [(ENStableGroupID *)self initWithUUID:v6];

    selfCopy = self;
  }

  else
  {
    v8 = +[ENLog groupID];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 138543362;
      *(&v11 + 4) = representationCopy;
      _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_DEFAULT, "ENStableGroupID initWithDataRepresentation - Wrong data length -- Failed {data: %{public}@}", &v11, 0xCu);
    }

    selfCopy = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (ENStableGroupID)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ENStableGroupID;
  v6 = [(ENStableGroupID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (ENStableGroupID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENStableGroupIDUUID"];

  v6 = [(ENStableGroupID *)self initWithUUID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(ENStableGroupID *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"kENStableGroupIDUUID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [equalCopy uuid];
    uuid2 = [(ENStableGroupID *)self uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(ENStableGroupID *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (int64_t)compare:(id)compare
{
  v10[4] = *MEMORY[0x277D85DE8];
  memset(v10, 170, 32);
  compareCopy = compare;
  uuid = [(ENStableGroupID *)self uuid];
  [uuid getUUIDBytes:&v10[2]];

  uuid2 = [compareCopy uuid];

  [uuid2 getUUIDBytes:v10];
  v7 = [(ENStableGroupID *)self customUUIDCompare:&v10[2] u2:v10];
  if (v7 < 0)
  {
    result = -1;
  }

  else
  {
    result = v7 > 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)customUUIDCompare:(unsigned __int8)compare[16] u2:(unsigned __int8)u2[16]
{
  v4 = compare[6] & 0xF;
  v5 = u2[6] & 0xF;
  result = v4 - v5;
  if (v4 == v5)
  {
    v7 = compare[7];
    v8 = u2[7];
    result = v7 - v8;
    if (v7 == v8)
    {
      v9 = compare[4];
      v10 = u2[4];
      result = v9 - v10;
      if (v9 == v10)
      {
        v11 = compare[5];
        v12 = u2[5];
        result = v11 - v12;
        if (v11 == v12)
        {
          v13 = *compare;
          v14 = *u2;
          result = v13 - v14;
          if (v13 == v14)
          {
            v15 = compare[1];
            v16 = u2[1];
            result = v15 - v16;
            if (v15 == v16)
            {
              v17 = compare[2];
              v18 = u2[2];
              result = v17 - v18;
              if (v17 == v18)
              {
                return compare[3] - u2[3];
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uuid = [(ENStableGroupID *)self uuid];
  v6 = [v3 stringWithFormat:@"<%@ %p uuid: %@>", v4, self, uuid];

  return v6;
}

@end