@interface BMBookmarkNode
- (BMBookmarkNode)initWithCoder:(id)coder;
- (BMBookmarkNode)initWithValue:(id)value upstreams:(id)upstreams name:(id)name;
- (BOOL)isEqual:(id)equal;
- (id)descriptionAtLevel:(int64_t)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMBookmarkNode

- (BMBookmarkNode)initWithValue:(id)value upstreams:(id)upstreams name:(id)name
{
  valueCopy = value;
  upstreamsCopy = upstreams;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = BMBookmarkNode;
  v12 = [(BMBookmarkNode *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_value, value);
    objc_storeStrong(&v13->_upstreams, upstreams);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(BMBookmarkNode *)self value];

  if (value)
  {
    value2 = [(BMBookmarkNode *)self value];
    [coderCopy encodeObject:value2 forKey:@"value"];
  }

  upstreams = [(BMBookmarkNode *)self upstreams];

  if (upstreams)
  {
    upstreams2 = [(BMBookmarkNode *)self upstreams];
    [coderCopy encodeObject:upstreams2 forKey:@"upstreams"];
  }

  name = [(BMBookmarkNode *)self name];

  v9 = coderCopy;
  if (name)
  {
    name2 = [(BMBookmarkNode *)self name];
    [coderCopy encodeObject:name2 forKey:@"name"];

    v9 = coderCopy;
  }
}

- (BMBookmarkNode)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AB10];
  coderCopy = coder;
  bm_allowedClassesForSecureCodingBMBookmark = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"value"];
  v8 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"upstreams"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v10 = [(BMBookmarkNode *)self initWithValue:v7 upstreams:v8 name:v9];
  return v10;
}

- (id)descriptionAtLevel:(int64_t)level
{
  v5 = [&stru_1F485B050 mutableCopy];
  v6 = [&stru_1F485B050 mutableCopy];
  if (level >= 1)
  {
    levelCopy = level;
    do
    {
      [v6 appendString:@"  "];
      --levelCopy;
    }

    while (levelCopy);
  }

  name = [(BMBookmarkNode *)self name];
  [v5 appendFormat:@"%@\n", name];

  upstreams = [(BMBookmarkNode *)self upstreams];
  v10 = [upstreams count];

  if (v10)
  {
    v11 = 0;
    do
    {
      upstreams2 = [(BMBookmarkNode *)self upstreams];
      v13 = [upstreams2 objectAtIndexedSubscript:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 descriptionAtLevel:level + 1];
        [v5 appendFormat:@"%@%@\n", v6, v14];
      }

      else
      {
        [v5 appendFormat:@"%@%@\n", v6, v13];
      }

      ++v11;
      upstreams3 = [(BMBookmarkNode *)self upstreams];
      v16 = [upstreams3 count];
    }

    while (v11 < v16);
  }

  v17 = [v5 copy];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(BMBookmarkNode *)self name];
      name2 = [(BMBookmarkNode *)v5 name];
      if (name == name2)
      {
        v10 = 1;
      }

      else
      {
        name3 = [(BMBookmarkNode *)self name];
        name4 = [(BMBookmarkNode *)v5 name];
        v10 = [name3 isEqual:name4];
      }

      value = [(BMBookmarkNode *)self value];
      value2 = [(BMBookmarkNode *)v5 value];
      if (value == value2)
      {
        v16 = 1;
      }

      else
      {
        value3 = [(BMBookmarkNode *)self value];
        value4 = [(BMBookmarkNode *)v5 value];
        v16 = [value3 isEqual:value4];
      }

      upstreams = [(BMBookmarkNode *)self upstreams];
      upstreams2 = [(BMBookmarkNode *)v5 upstreams];
      if (upstreams == upstreams2)
      {
        v21 = 1;
      }

      else
      {
        upstreams3 = [(BMBookmarkNode *)self upstreams];
        upstreams4 = [(BMBookmarkNode *)v5 upstreams];
        v21 = [upstreams3 isEqual:upstreams4];
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