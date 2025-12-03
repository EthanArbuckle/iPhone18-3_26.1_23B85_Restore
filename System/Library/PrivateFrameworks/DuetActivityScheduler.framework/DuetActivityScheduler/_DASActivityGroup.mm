@interface _DASActivityGroup
+ (id)groupWithName:(id)name maxConcurrent:(unint64_t)concurrent;
- (BOOL)isEqual:(id)equal;
- (_DASActivityGroup)initWithCoder:(id)coder;
- (_DASActivityGroup)initWithName:(id)name maxConcurrent:(unint64_t)concurrent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASActivityGroup

- (_DASActivityGroup)initWithName:(id)name maxConcurrent:(unint64_t)concurrent
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = _DASActivityGroup;
  v8 = [(_DASActivityGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_maxConcurrent = concurrent;
  }

  return v9;
}

+ (id)groupWithName:(id)name maxConcurrent:(unint64_t)concurrent
{
  nameCopy = name;
  v6 = [objc_alloc(objc_opt_class()) initWithName:nameCopy maxConcurrent:concurrent];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  name = [(_DASActivityGroup *)self name];
  v6 = [v4 initWithName:name maxConcurrent:{-[_DASActivityGroup maxConcurrent](self, "maxConcurrent")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxConcurrent];
  [coderCopy encodeObject:v6 forKey:@"max"];
}

- (_DASActivityGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"max"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = self->_name;
      name = [(_DASActivityGroup *)equalCopy name];
      v7 = [(NSString *)name isEqualToString:name];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end