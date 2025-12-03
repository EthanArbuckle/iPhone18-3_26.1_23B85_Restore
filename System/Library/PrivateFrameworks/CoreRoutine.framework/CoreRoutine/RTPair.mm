@interface RTPair
+ (Class)getClusterClassOfObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (RTPair)initWithCoder:(id)coder;
- (RTPair)initWithFirstObject:(id)object secondObject:(id)secondObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPair

- (RTPair)initWithFirstObject:(id)object secondObject:(id)secondObject
{
  objectCopy = object;
  secondObjectCopy = secondObject;
  v9 = secondObjectCopy;
  if (!objectCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: firstObject";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!secondObjectCopy)
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
    objc_storeStrong(&v10->_firstObject, object);
    objc_storeStrong(p_isa + 2, secondObject);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (Class)getClusterClassOfObject:(id)object
{
  objectCopy = object;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  firstObject = self->_firstObject;
  secondObject = self->_secondObject;

  return [v4 initWithFirstObject:firstObject secondObject:secondObject];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [objc_opt_class() getClusterClassOfObject:self->_firstObject];
  v5 = [objc_opt_class() getClusterClassOfObject:self->_secondObject];
  if ([v4 conformsToProtocol:&unk_1F3DE48F0] && objc_msgSend(v5, "conformsToProtocol:", &unk_1F3DE48F0))
  {
    [coderCopy encodeObject:self->_firstObject forKey:@"firstObject"];
    [coderCopy encodeObject:self->_secondObject forKey:@"secondObject"];
  }
}

- (RTPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  allowedClasses = [coderCopy allowedClasses];
  v6 = [coderCopy decodeObjectOfClasses:allowedClasses forKey:@"firstObject"];

  allowedClasses2 = [coderCopy allowedClasses];
  v8 = [coderCopy decodeObjectOfClasses:allowedClasses2 forKey:@"secondObject"];

  selfCopy = 0;
  if (v6 && v8)
  {
    self = [(RTPair *)self initWithFirstObject:v6 secondObject:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [self->_firstObject description];
  v5 = [self->_secondObject description];
  v6 = [v3 stringWithFormat:@"firstObject, %@, secondObject, %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  firstObject = [(RTPair *)self firstObject];
  firstObject2 = [equalCopy firstObject];
  if ([firstObject isEqual:firstObject2])
  {
    secondObject = [(RTPair *)self secondObject];
    secondObject2 = [equalCopy secondObject];
    v9 = [secondObject isEqual:secondObject2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  firstObject = [(RTPair *)self firstObject];
  v4 = [firstObject hash];
  secondObject = [(RTPair *)self secondObject];
  v6 = [secondObject hash];

  return v6 ^ v4;
}

@end