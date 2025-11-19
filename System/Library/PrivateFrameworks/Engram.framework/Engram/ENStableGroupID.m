@interface ENStableGroupID
+ (ENStableGroupID)stableGroupIDWithCurrentTime;
- (BOOL)isEqual:(id)a3;
- (ENStableGroupID)initWithCoder:(id)a3;
- (ENStableGroupID)initWithDataRepresentation:(id)a3;
- (ENStableGroupID)initWithUUID:(id)a3;
- (id)_mutableDataRepresentation;
- (id)description;
- (int)customUUIDCompare:(unsigned __int8)a3[16] u2:(unsigned __int8)a4[16];
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENStableGroupID

+ (ENStableGroupID)stableGroupIDWithCurrentTime
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [[a1 alloc] initWithUUID:v3];

  return v4;
}

- (id)_mutableDataRepresentation
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = [(ENStableGroupID *)self uuid];
  [v4 getUUIDBytes:v7];

  [v3 appendBytes:v7 length:16];
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (ENStableGroupID)initWithDataRepresentation:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  if (v5 == [objc_opt_class() stableGroupIDLength])
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    [v4 getBytes:&v11 length:16];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v11];
    self = [(ENStableGroupID *)self initWithUUID:v6];

    v7 = self;
  }

  else
  {
    v8 = +[ENLog groupID];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 138543362;
      *(&v11 + 4) = v4;
      _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_DEFAULT, "ENStableGroupID initWithDataRepresentation - Wrong data length -- Failed {data: %{public}@}", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (ENStableGroupID)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ENStableGroupID;
  v6 = [(ENStableGroupID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (ENStableGroupID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENStableGroupIDUUID"];

  v6 = [(ENStableGroupID *)self initWithUUID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENStableGroupID *)self uuid];
  [v4 encodeObject:v5 forKey:@"kENStableGroupIDUUID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uuid];
    v6 = [(ENStableGroupID *)self uuid];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(ENStableGroupID *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v10[4] = *MEMORY[0x277D85DE8];
  memset(v10, 170, 32);
  v4 = a3;
  v5 = [(ENStableGroupID *)self uuid];
  [v5 getUUIDBytes:&v10[2]];

  v6 = [v4 uuid];

  [v6 getUUIDBytes:v10];
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

- (int)customUUIDCompare:(unsigned __int8)a3[16] u2:(unsigned __int8)a4[16]
{
  v4 = a3[6] & 0xF;
  v5 = a4[6] & 0xF;
  result = v4 - v5;
  if (v4 == v5)
  {
    v7 = a3[7];
    v8 = a4[7];
    result = v7 - v8;
    if (v7 == v8)
    {
      v9 = a3[4];
      v10 = a4[4];
      result = v9 - v10;
      if (v9 == v10)
      {
        v11 = a3[5];
        v12 = a4[5];
        result = v11 - v12;
        if (v11 == v12)
        {
          v13 = *a3;
          v14 = *a4;
          result = v13 - v14;
          if (v13 == v14)
          {
            v15 = a3[1];
            v16 = a4[1];
            result = v15 - v16;
            if (v15 == v16)
            {
              v17 = a3[2];
              v18 = a4[2];
              result = v17 - v18;
              if (v17 == v18)
              {
                return a3[3] - a4[3];
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
  v5 = [(ENStableGroupID *)self uuid];
  v6 = [v3 stringWithFormat:@"<%@ %p uuid: %@>", v4, self, v5];

  return v6;
}

@end