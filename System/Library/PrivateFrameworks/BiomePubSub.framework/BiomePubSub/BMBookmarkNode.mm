@interface BMBookmarkNode
- (BMBookmarkNode)initWithCoder:(id)a3;
- (BMBookmarkNode)initWithValue:(id)a3 upstreams:(id)a4 name:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)descriptionAtLevel:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMBookmarkNode

- (BMBookmarkNode)initWithValue:(id)a3 upstreams:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMBookmarkNode;
  v12 = [(BMBookmarkNode *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a5);
    objc_storeStrong(&v13->_value, a3);
    objc_storeStrong(&v13->_upstreams, a4);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(BMBookmarkNode *)self value];

  if (v4)
  {
    v5 = [(BMBookmarkNode *)self value];
    [v11 encodeObject:v5 forKey:@"value"];
  }

  v6 = [(BMBookmarkNode *)self upstreams];

  if (v6)
  {
    v7 = [(BMBookmarkNode *)self upstreams];
    [v11 encodeObject:v7 forKey:@"upstreams"];
  }

  v8 = [(BMBookmarkNode *)self name];

  v9 = v11;
  if (v8)
  {
    v10 = [(BMBookmarkNode *)self name];
    [v11 encodeObject:v10 forKey:@"name"];

    v9 = v11;
  }
}

- (BMBookmarkNode)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AB10];
  v5 = a3;
  v6 = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"value"];
  v8 = [v5 decodeObjectOfClasses:v6 forKey:@"upstreams"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v10 = [(BMBookmarkNode *)self initWithValue:v7 upstreams:v8 name:v9];
  return v10;
}

- (id)descriptionAtLevel:(int64_t)a3
{
  v5 = [&stru_1F485B050 mutableCopy];
  v6 = [&stru_1F485B050 mutableCopy];
  if (a3 >= 1)
  {
    v7 = a3;
    do
    {
      [v6 appendString:@"  "];
      --v7;
    }

    while (v7);
  }

  v8 = [(BMBookmarkNode *)self name];
  [v5 appendFormat:@"%@\n", v8];

  v9 = [(BMBookmarkNode *)self upstreams];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = [(BMBookmarkNode *)self upstreams];
      v13 = [v12 objectAtIndexedSubscript:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 descriptionAtLevel:a3 + 1];
        [v5 appendFormat:@"%@%@\n", v6, v14];
      }

      else
      {
        [v5 appendFormat:@"%@%@\n", v6, v13];
      }

      ++v11;
      v15 = [(BMBookmarkNode *)self upstreams];
      v16 = [v15 count];
    }

    while (v11 < v16);
  }

  v17 = [v5 copy];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BMBookmarkNode *)self name];
      v7 = [(BMBookmarkNode *)v5 name];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(BMBookmarkNode *)self name];
        v9 = [(BMBookmarkNode *)v5 name];
        v10 = [v8 isEqual:v9];
      }

      v12 = [(BMBookmarkNode *)self value];
      v13 = [(BMBookmarkNode *)v5 value];
      if (v12 == v13)
      {
        v16 = 1;
      }

      else
      {
        v14 = [(BMBookmarkNode *)self value];
        v15 = [(BMBookmarkNode *)v5 value];
        v16 = [v14 isEqual:v15];
      }

      v17 = [(BMBookmarkNode *)self upstreams];
      v18 = [(BMBookmarkNode *)v5 upstreams];
      if (v17 == v18)
      {
        v21 = 1;
      }

      else
      {
        v19 = [(BMBookmarkNode *)self upstreams];
        v20 = [(BMBookmarkNode *)v5 upstreams];
        v21 = [v19 isEqual:v20];
      }

      v11 = v10 & v16 & v21;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end