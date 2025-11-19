@interface CWFActivity
+ (id)activityWithType:(int64_t)a3 reason:(id)a4;
+ (id)activityWithType:(int64_t)a3 reason:(id)a4 UUID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActivity:(id)a3;
- (CWFActivity)init;
- (CWFActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFActivity

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  type = self->_type;
  timeout = self->_timeout;
  reason = self->_reason;
  v6 = [(NSUUID *)self->_UUID UUIDString];
  v7 = [v6 substringToIndex:5];
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

+ (id)activityWithType:(int64_t)a3 reason:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CWFActivity);
  [(CWFActivity *)v6 setType:a3];
  [(CWFActivity *)v6 setReason:v5];

  return v6;
}

+ (id)activityWithType:(int64_t)a3 reason:(id)a4 UUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(CWFActivity);
  [(CWFActivity *)v9 setType:a3];
  [(CWFActivity *)v9 setReason:v8];

  if (v7)
  {
    [(CWFActivity *)v9 setUUID:v7];
  }

  return v9;
}

- (BOOL)isEqualToActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_UUID)
  {
    v6 = [v4 UUID];
    if (v6)
    {
      UUID = self->_UUID;
      v8 = [v5 UUID];
      if ([(NSUUID *)UUID isEqual:v8])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFActivity *)self isEqualToActivity:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFActivity allocWithZone:?]];
  [(CWFActivity *)v4 setUUID:self->_UUID];
  [(CWFActivity *)v4 setReason:self->_reason];
  [(CWFActivity *)v4 setType:self->_type];
  [(CWFActivity *)v4 setTimeout:self->_timeout];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"_UUID"];
  [v5 encodeObject:self->_reason forKey:@"_reason"];
  [v5 encodeInteger:self->_type forKey:@"_type"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeout];
  [v5 encodeObject:v6 forKey:@"_timeout"];
}

- (CWFActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CWFActivity;
  v5 = [(CWFActivity *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeout"];
    v5->_timeout = [v10 unsignedLongLongValue];
  }

  return v5;
}

@end