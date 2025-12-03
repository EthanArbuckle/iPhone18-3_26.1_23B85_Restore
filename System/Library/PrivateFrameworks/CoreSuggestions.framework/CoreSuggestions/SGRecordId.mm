@interface SGRecordId
+ (SGRecordId)recordIdWithInternalEntityId:(int64_t)id;
+ (SGRecordId)recordIdWithNumericValue:(int64_t)value;
- (BOOL)isEqual:(id)equal;
- (SGRecordId)initWithCoder:(id)coder;
- (SGRecordId)initWithInternalEntityId:(int64_t)id;
- (id)description;
@end

@implementation SGRecordId

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGRecordId %llu>", self->_internalEntityId];

  return v2;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRecordId *)self isEqualToRecordId:v5];
  }

  return v6;
}

- (SGRecordId)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SGRecordId;
  v5 = [(SGRecordId *)&v7 init];
  if (v5)
  {
    v5->_internalEntityId = [coderCopy decodeInt64ForKey:@"internalEntityId"];
  }

  return v5;
}

- (SGRecordId)initWithInternalEntityId:(int64_t)id
{
  v5.receiver = self;
  v5.super_class = SGRecordId;
  result = [(SGRecordId *)&v5 init];
  if (result)
  {
    result->_internalEntityId = id;
  }

  return result;
}

+ (SGRecordId)recordIdWithNumericValue:(int64_t)value
{
  v3 = [[SGRecordId alloc] initWithInternalEntityId:value];

  return v3;
}

+ (SGRecordId)recordIdWithInternalEntityId:(int64_t)id
{
  v3 = [[SGRecordId alloc] initWithInternalEntityId:id];

  return v3;
}

@end