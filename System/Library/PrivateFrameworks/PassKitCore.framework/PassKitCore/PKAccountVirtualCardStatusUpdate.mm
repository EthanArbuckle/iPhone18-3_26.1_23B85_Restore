@interface PKAccountVirtualCardStatusUpdate
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountVirtualCardStatusUpdate)initWithCoder:(id)a3;
- (PKAccountVirtualCardStatusUpdate)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountVirtualCardStatusUpdate

- (PKAccountVirtualCardStatusUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountVirtualCardStatusUpdate;
  v5 = [(PKAccountVirtualCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"updatedVirtualCards"];
    updatedVirtualCards = v5->_updatedVirtualCards;
    v5->_updatedVirtualCards = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeInteger:reason forKey:@"reason"];
  [v5 encodeObject:self->_updatedVirtualCards forKey:@"updatedVirtualCards"];
}

- (PKAccountVirtualCardStatusUpdate)initWithRecord:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountVirtualCardStatusUpdate;
  v5 = [(PKAccountVirtualCardStatusUpdate *)&v12 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"reason"];
    v5->_reason = PKAccountVirtualCardStatusUpdateReasonFromString(v6);

    v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v8 = [v4 pk_encryptedArrayOfClasses:v7 forKey:@"updatedVirtualCards"];
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

- (void)encodeWithRecord:(id)a3
{
  v4 = [a3 encryptedValues];
  v5 = self->_reason - 1;
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79E0700[v5];
  }

  v10 = v4;
  [v4 setObject:v6 forKey:@"reason"];
  v7 = [(NSArray *)self->_updatedVirtualCards pk_arrayByApplyingBlock:&__block_literal_global_43];
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:0];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  [v10 setObject:v9 forKey:@"updatedVirtualCards"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_reason == v4[1])
  {
    updatedVirtualCards = self->_updatedVirtualCards;
    v6 = v4[2];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_updatedVirtualCards];
  v4 = PKCombinedHash(17, v3);
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