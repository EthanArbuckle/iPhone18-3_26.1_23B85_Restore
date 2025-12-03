@interface PKAccountPhysicalCardStatusUpdate
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountPhysicalCardStatusUpdate)initWithCoder:(id)coder;
- (PKAccountPhysicalCardStatusUpdate)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountPhysicalCardStatusUpdate

- (PKAccountPhysicalCardStatusUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKAccountPhysicalCardStatusUpdate;
  v5 = [(PKAccountPhysicalCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"physicalCards"];
    updatedPhysicalCards = v5->_updatedPhysicalCards;
    v5->_updatedPhysicalCards = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInteger:reason forKey:@"reason"];
  [coderCopy encodeObject:self->_updatedPhysicalCards forKey:@"physicalCards"];
}

- (PKAccountPhysicalCardStatusUpdate)initWithRecord:(id)record
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = PKAccountPhysicalCardStatusUpdate;
  v5 = [(PKAccountPhysicalCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"reason"];
    v5->_reason = PKAccountPhysicalCardStatusUpdateReasonFromString(v6);

    v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v8 = [recordCopy pk_encryptedArrayOfClasses:v7 forKey:@"physicalCards"];
    v9 = [v8 pk_arrayByApplyingBlock:&__block_literal_global_224];
    updatedPhysicalCards = v5->_updatedPhysicalCards;
    v5->_updatedPhysicalCards = v9;
  }

  return v5;
}

PKPhysicalCard *__52__PKAccountPhysicalCardStatusUpdate_initWithRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPhysicalCard alloc] initWithDictionary:v2];

  return v3;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  v4 = PKStringFromAccountPhysicalCardStatusUpdateReason(self->_reason);
  [encryptedValues setObject:v4 forKey:@"reason"];

  v5 = [(NSArray *)self->_updatedPhysicalCards pk_arrayByApplyingBlock:&__block_literal_global_70_1];
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  [encryptedValues setObject:v7 forKey:@"physicalCards"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_reason == equalCopy[1])
  {
    updatedPhysicalCards = self->_updatedPhysicalCards;
    v6 = equalCopy[2];
    if (updatedPhysicalCards && v6)
    {
      v7 = [(NSArray *)updatedPhysicalCards isEqual:?];
    }

    else
    {
      v7 = updatedPhysicalCards == v6;
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
  [array safelyAddObject:self->_updatedPhysicalCards];
  v4 = PKCombinedHash(17, array);
  v5 = self->_reason - v4 + 32 * v4;

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKStringFromAccountPhysicalCardStatusUpdateReason(self->_reason);
  [v3 appendFormat:@"reason: '%@'; ", v4];

  v5 = [(NSArray *)self->_updatedPhysicalCards description];
  [v3 appendFormat:@"udpatedPhysicalCards: '%@'; ", v5];

  [v3 appendFormat:@">"];

  return v3;
}

@end