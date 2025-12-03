@interface PKAccountUserInfoUpdate
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountUserInfoUpdate)initWithCoder:(id)coder;
- (PKAccountUserInfoUpdate)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountUserInfoUpdate

- (PKAccountUserInfoUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAccountUserInfoUpdate;
  v5 = [(PKAccountUserInfoUpdate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInfoUpdatedDate"];
    updatedDate = v5->_updatedDate;
    v5->_updatedDate = v6;
  }

  return v5;
}

- (PKAccountUserInfoUpdate)initWithRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = PKAccountUserInfoUpdate;
  v5 = [(PKAccountUserInfoUpdate *)&v9 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedDateForKey:@"userInfoUpdatedDate"];
    updatedDate = v5->_updatedDate;
    v5->_updatedDate = v6;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  [encryptedValues setObject:self->_updatedDate forKey:@"userInfoUpdatedDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    updatedDate = self->_updatedDate;
    v6 = equalCopy[1];
    if (updatedDate && v6)
    {
      v7 = [(NSDate *)updatedDate isEqual:?];
    }

    else
    {
      v7 = updatedDate == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_updatedDate];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDate *)self->_updatedDate description];
  [v3 appendFormat:@"updateDate: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

@end