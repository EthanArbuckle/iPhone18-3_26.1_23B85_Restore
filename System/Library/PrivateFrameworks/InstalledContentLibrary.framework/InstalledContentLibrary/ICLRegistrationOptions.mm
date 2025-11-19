@interface ICLRegistrationOptions
- (BOOL)isEqual:(id)a3;
- (ICLRegistrationOptions)initWithCoder:(id)a3;
- (ICLRegistrationOptions)initWithTargetUID:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLRegistrationOptions

- (ICLRegistrationOptions)initWithTargetUID:(unsigned int)a3
{
  v3 = *&a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInt:{-[ICLRegistrationOptions targetUID](self, "targetUID")}];
  [v5 encodeObject:v6 forKey:@"targetUID"];
}

- (ICLRegistrationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICLRegistrationOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetUID"];
    v5->_targetUID = [v6 unsignedIntValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setTargetUID:{-[ICLRegistrationOptions targetUID](self, "targetUID")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ICLRegistrationOptions *)v4 targetUID];
      v6 = v5 == [(ICLRegistrationOptions *)self targetUID];
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