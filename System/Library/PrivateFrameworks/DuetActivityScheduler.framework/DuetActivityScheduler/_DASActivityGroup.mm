@interface _DASActivityGroup
+ (id)groupWithName:(id)a3 maxConcurrent:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (_DASActivityGroup)initWithCoder:(id)a3;
- (_DASActivityGroup)initWithName:(id)a3 maxConcurrent:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASActivityGroup

- (_DASActivityGroup)initWithName:(id)a3 maxConcurrent:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _DASActivityGroup;
  v8 = [(_DASActivityGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_maxConcurrent = a4;
  }

  return v9;
}

+ (id)groupWithName:(id)a3 maxConcurrent:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithName:v5 maxConcurrent:a4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_DASActivityGroup *)self name];
  v6 = [v4 initWithName:v5 maxConcurrent:{-[_DASActivityGroup maxConcurrent](self, "maxConcurrent")}];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxConcurrent];
  [v5 encodeObject:v6 forKey:@"max"];
}

- (_DASActivityGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"max"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(objc_opt_class()) initWithName:v5 maxConcurrent:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  name = self->_name;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxConcurrent];
  v5 = [v2 stringWithFormat:@"<_DASActivityGroup: %@ (%@)>", name, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = self->_name;
      v6 = [(_DASActivityGroup *)v4 name];
      v7 = [(NSString *)name isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end