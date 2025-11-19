@interface SGRecordId
+ (SGRecordId)recordIdWithInternalEntityId:(int64_t)a3;
+ (SGRecordId)recordIdWithNumericValue:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (SGRecordId)initWithCoder:(id)a3;
- (SGRecordId)initWithInternalEntityId:(int64_t)a3;
- (id)description;
@end

@implementation SGRecordId

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGRecordId %llu>", self->_internalEntityId];

  return v2;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRecordId *)self isEqualToRecordId:v5];
  }

  return v6;
}

- (SGRecordId)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SGRecordId;
  v5 = [(SGRecordId *)&v7 init];
  if (v5)
  {
    v5->_internalEntityId = [v4 decodeInt64ForKey:@"internalEntityId"];
  }

  return v5;
}

- (SGRecordId)initWithInternalEntityId:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SGRecordId;
  result = [(SGRecordId *)&v5 init];
  if (result)
  {
    result->_internalEntityId = a3;
  }

  return result;
}

+ (SGRecordId)recordIdWithNumericValue:(int64_t)a3
{
  v3 = [[SGRecordId alloc] initWithInternalEntityId:a3];

  return v3;
}

+ (SGRecordId)recordIdWithInternalEntityId:(int64_t)a3
{
  v3 = [[SGRecordId alloc] initWithInternalEntityId:a3];

  return v3;
}

@end