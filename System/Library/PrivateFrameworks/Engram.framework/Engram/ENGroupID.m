@interface ENGroupID
- (BOOL)compare:(id)a3 withResult:(int64_t *)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (ENGroupID)initWithCoder:(id)a3;
- (ENGroupID)initWithDataRepresentation:(id)a3;
- (ENGroupID)initWithStableGroupID:(id)a3 generation:(int)a4;
- (NSData)dataRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENGroupID

- (ENGroupID)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = +[ENStableGroupID stableGroupIDLength];
  if ([v4 length] == v5 + 4)
  {
    v6 = [v4 subdataWithRange:{0, v5}];
    v7 = [v4 subdataWithRange:{v5, 4}];
    v8 = [[ENStableGroupID alloc] initWithDataRepresentation:v6];
    if (v8)
    {
      v11 = -1431655766;
      [v7 getBytes:&v11 length:4];
      self = [(ENGroupID *)self initWithStableGroupID:v8 generation:v11];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = +[ENLog groupID];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_24A059538(v4, v6);
    }

    v9 = 0;
  }

  return v9;
}

- (ENGroupID)initWithStableGroupID:(id)a3 generation:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ENGroupID;
  v8 = [(ENGroupID *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stableGroupID, a3);
    v9->_generation = a4;
  }

  return v9;
}

- (ENGroupID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupIDStableGroupID"];
  v6 = [v4 decodeInt32ForKey:@"kENGroupIDGeneration"];

  v7 = [(ENGroupID *)self initWithStableGroupID:v5 generation:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ENGroupID *)self stableGroupID];
  [v5 encodeObject:v4 forKey:@"kENGroupIDStableGroupID"];

  [v5 encodeInt32:-[ENGroupID generation](self forKey:{"generation"), @"kENGroupIDGeneration"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ENGroupID *)self stableGroupID];
    v7 = [v5 stableGroupID];
    if ([v6 isEqual:v7])
    {
      v8 = [(ENGroupID *)self generation];
      v9 = v8 == [v5 generation];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(ENGroupID *)self generation];
  v4 = [(ENGroupID *)self stableGroupID];
  v5 = [v4 hash] + 23 * v3;

  return v5 + 8993;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ENGroupID *)self stableGroupID];
  v6 = [v3 stringWithFormat:@"<%@: %p stableGroupID: %@ generation: %d>", v4, self, v5, -[ENGroupID generation](self, "generation")];

  return v6;
}

- (NSData)dataRepresentation
{
  v3 = [(ENGroupID *)self stableGroupID];
  v4 = [v3 _mutableDataRepresentation];
  v5 = [v4 mutableCopy];

  [v5 appendBytes:&self->_generation length:4];

  return v5;
}

- (BOOL)compare:(id)a3 withResult:(int64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(ENGroupID *)self stableGroupID];
  v10 = [v8 stableGroupID];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [v8 generation];
    v13 = [(ENGroupID *)self generation];
    v14 = [v8 generation];
    v15 = [(ENGroupID *)self generation];
    if (a4)
    {
      if (v12 <= v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = -1;
      }

      if (v14 < v15)
      {
        v16 = 1;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:ENGroupIDErrorDomain code:-1000 userInfo:0];
    }

    if (a4)
    {
      v16 = 0;
LABEL_13:
      *a4 = v16;
    }
  }

  return v11;
}

@end