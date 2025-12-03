@interface PKAccountVirtualCardStatusUpdate
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountVirtualCardStatusUpdate)initWithCoder:(id)coder;
- (PKAccountVirtualCardStatusUpdate)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountVirtualCardStatusUpdate

- (PKAccountVirtualCardStatusUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKAccountVirtualCardStatusUpdate;
  v5 = [(PKAccountVirtualCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"updatedVirtualCards"];
    updatedVirtualCards = v5->_updatedVirtualCards;
    v5->_updatedVirtualCards = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInteger:reason forKey:@"reason"];
  [coderCopy encodeObject:self->_updatedVirtualCards forKey:@"updatedVirtualCards"];
}

- (PKAccountVirtualCardStatusUpdate)initWithRecord:(id)record
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = PKAccountVirtualCardStatusUpdate;
  v5 = [(PKAccountVirtualCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"reason"];
    v5->_reason = PKAccountVirtualCardStatusUpdateReasonFromString(v6);

    v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v8 = [recordCopy pk_encryptedArrayOfClasses:v7 forKey:@"updatedVirtualCards"];
    v9 = [v8 pk_arrayByApplyingBlock:&__block_literal_global_203];
    updatedVirtualCards = v5->_updatedVirtualCards;
    v5->_updatedVirtualCards = v9;
  }

  return v5;
}

PKVirtualCard *__51__PKAccountVirtualCardStatusUpdate_initWithRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKVirtualCard alloc] initWithDictionary:v2];

  return v3;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  v5 = self->_reason - 1;
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79E0700[v5];
  }

  v10 = encryptedValues;
  [encryptedValues setObject:v6 forKey:@"reason"];
  v7 = [(NSArray *)self->_updatedVirtualCards pk_arrayByApplyingBlock:&__block_literal_global_43];
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:0];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  [v10 setObject:v9 forKey:@"updatedVirtualCards"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_reason == equalCopy[1])
  {
    updatedVirtualCards = self->_updatedVirtualCards;
    v6 = equalCopy[2];
    if (updatedVirtualCards && v6)
    {
      v7 = [(NSArray *)updatedVirtualCards isEqual:?];
    }

    else
    {
      v7 = updatedVirtualCards == v6;
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
  [array safelyAddObject:self->_updatedVirtualCards];
  v4 = PKCombinedHash(17, array);
  v5 = self->_reason - v4 + 32 * v4;

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  v5 = self->_reason - 1;
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79E0700[v5];
  }

  [v3 appendFormat:@"reason: '%@'; ", v6];
  v7 = [(NSArray *)self->_updatedVirtualCards description];
  [v4 appendFormat:@"updatedVirtualCards: '%@'; ", v7];

  [v4 appendFormat:@">"];

  return v4;
}

@end