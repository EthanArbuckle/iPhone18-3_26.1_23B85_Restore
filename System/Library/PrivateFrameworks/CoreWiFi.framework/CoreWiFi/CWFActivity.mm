@interface CWFActivity
+ (id)activityWithType:(int64_t)type reason:(id)reason;
+ (id)activityWithType:(int64_t)type reason:(id)reason UUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActivity:(id)activity;
- (CWFActivity)init;
- (CWFActivity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFActivity

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  type = self->_type;
  timeout = self->_timeout;
  reason = self->_reason;
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v7 = [uUIDString substringToIndex:5];
  v8 = [v2 stringWithFormat:@"type=%ld reason=%@ timeout=%lluns uuid=%@", type, reason, timeout, v7];

  return v8;
}

- (CWFActivity)init
{
  v6.receiver = self;
  v6.super_class = CWFActivity;
  v2 = [(CWFActivity *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;
  }

  return v2;
}

+ (id)activityWithType:(int64_t)type reason:(id)reason
{
  reasonCopy = reason;
  v6 = objc_alloc_init(CWFActivity);
  [(CWFActivity *)v6 setType:type];
  [(CWFActivity *)v6 setReason:reasonCopy];

  return v6;
}

+ (id)activityWithType:(int64_t)type reason:(id)reason UUID:(id)d
{
  dCopy = d;
  reasonCopy = reason;
  v9 = objc_alloc_init(CWFActivity);
  [(CWFActivity *)v9 setType:type];
  [(CWFActivity *)v9 setReason:reasonCopy];

  if (dCopy)
  {
    [(CWFActivity *)v9 setUUID:dCopy];
  }

  return v9;
}

- (BOOL)isEqualToActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_UUID)
  {
    uUID = [activityCopy UUID];
    if (uUID)
    {
      UUID = self->_UUID;
      uUID2 = [v5 UUID];
      if ([(NSUUID *)UUID isEqual:uUID2])
      {
        type = self->_type;
        v10 = type == [v5 type];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFActivity *)self isEqualToActivity:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFActivity allocWithZone:?]];
  [(CWFActivity *)v4 setUUID:self->_UUID];
  [(CWFActivity *)v4 setReason:self->_reason];
  [(CWFActivity *)v4 setType:self->_type];
  [(CWFActivity *)v4 setTimeout:self->_timeout];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"_UUID"];
  [coderCopy encodeObject:self->_reason forKey:@"_reason"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeout];
  [coderCopy encodeObject:v6 forKey:@"_timeout"];
}

- (CWFActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CWFActivity;
  v5 = [(CWFActivity *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timeout"];
    v5->_timeout = [v10 unsignedLongLongValue];
  }

  return v5;
}

@end