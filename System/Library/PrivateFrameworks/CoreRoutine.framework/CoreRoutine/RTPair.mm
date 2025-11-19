@interface RTPair
+ (Class)getClusterClassOfObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RTPair)initWithCoder:(id)a3;
- (RTPair)initWithFirstObject:(id)a3 secondObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPair

- (RTPair)initWithFirstObject:(id)a3 secondObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: firstObject";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: secondObject";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTPair;
  v10 = [(RTPair *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_firstObject, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

+ (Class)getClusterClassOfObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            objc_opt_isKindOfClass();
          }
        }
      }
    }
  }

  v4 = objc_opt_class();

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  firstObject = self->_firstObject;
  secondObject = self->_secondObject;

  return [v4 initWithFirstObject:firstObject secondObject:secondObject];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [objc_opt_class() getClusterClassOfObject:self->_firstObject];
  v5 = [objc_opt_class() getClusterClassOfObject:self->_secondObject];
  if ([v4 conformsToProtocol:&unk_1F3DE48F0] && objc_msgSend(v5, "conformsToProtocol:", &unk_1F3DE48F0))
  {
    [v6 encodeObject:self->_firstObject forKey:@"firstObject"];
    [v6 encodeObject:self->_secondObject forKey:@"secondObject"];
  }
}

- (RTPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 allowedClasses];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"firstObject"];

  v7 = [v4 allowedClasses];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"secondObject"];

  v9 = 0;
  if (v6 && v8)
  {
    self = [(RTPair *)self initWithFirstObject:v6 secondObject:v8];
    v9 = self;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [self->_firstObject description];
  v5 = [self->_secondObject description];
  v6 = [v3 stringWithFormat:@"firstObject, %@, secondObject, %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(RTPair *)self firstObject];
  v6 = [v4 firstObject];
  if ([v5 isEqual:v6])
  {
    v7 = [(RTPair *)self secondObject];
    v8 = [v4 secondObject];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(RTPair *)self firstObject];
  v4 = [v3 hash];
  v5 = [(RTPair *)self secondObject];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end