@interface PKAccountPhysicalCardStatusUpdate
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountPhysicalCardStatusUpdate)initWithCoder:(id)a3;
- (PKAccountPhysicalCardStatusUpdate)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountPhysicalCardStatusUpdate

- (PKAccountPhysicalCardStatusUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountPhysicalCardStatusUpdate;
  v5 = [(PKAccountPhysicalCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"physicalCards"];
    updatedPhysicalCards = v5->_updatedPhysicalCards;
    v5->_updatedPhysicalCards = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeInteger:reason forKey:@"reason"];
  [v5 encodeObject:self->_updatedPhysicalCards forKey:@"physicalCards"];
}

- (PKAccountPhysicalCardStatusUpdate)initWithRecord:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountPhysicalCardStatusUpdate;
  v5 = [(PKAccountPhysicalCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"reason"];
    v5->_reason = PKAccountPhysicalCardStatusUpdateReasonFromString(v6);

    v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v8 = [v4 pk_encryptedArrayOfClasses:v7 forKey:@"physicalCards"];
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

- (void)encodeWithRecord:(id)a3
{
  v8 = [a3 encryptedValues];
  v4 = PKStringFromAccountPhysicalCardStatusUpdateReason(self->_reason);
  [v8 setObject:v4 forKey:@"reason"];

  v5 = [(NSArray *)self->_updatedPhysicalCards pk_arrayByApplyingBlock:&__block_literal_global_70_1];
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  [v8 setObject:v7 forKey:@"physicalCards"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_reason == v4[1])
  {
    updatedPhysicalCards = self->_updatedPhysicalCards;
    v6 = v4[2];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_updatedPhysicalCards];
  v4 = PKCombinedHash(17, v3);
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