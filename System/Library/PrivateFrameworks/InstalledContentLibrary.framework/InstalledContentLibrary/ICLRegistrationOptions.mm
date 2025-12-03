@interface ICLRegistrationOptions
- (BOOL)isEqual:(id)equal;
- (ICLRegistrationOptions)initWithCoder:(id)coder;
- (ICLRegistrationOptions)initWithTargetUID:(unsigned int)d;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLRegistrationOptions

- (ICLRegistrationOptions)initWithTargetUID:(unsigned int)d
{
  v3 = *&d;
  v7.receiver = self;
  v7.super_class = ICLRegistrationOptions;
  v4 = [(ICLRegistrationOptions *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICLRegistrationOptions *)v4 setTargetUID:v3];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInt:{-[ICLRegistrationOptions targetUID](self, "targetUID")}];
  [coderCopy encodeObject:v6 forKey:@"targetUID"];
}

- (ICLRegistrationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICLRegistrationOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetUID"];
    v5->_targetUID = [v6 unsignedIntValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTargetUID:{-[ICLRegistrationOptions targetUID](self, "targetUID")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      targetUID = [(ICLRegistrationOptions *)equalCopy targetUID];
      v6 = targetUID == [(ICLRegistrationOptions *)self targetUID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ICLRegistrationOptions targetUID](self, "targetUID")}];
  v3 = [v2 hash];

  return v3;
}

@end