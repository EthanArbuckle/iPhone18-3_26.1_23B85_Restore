@interface PKPeerPaymentDynamicFraudPageBodyBulletedListLine
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyBulletedListLine)initWithArray:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyBulletedListLine)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyBulletedListLine

- (PKPeerPaymentDynamicFraudPageBodyBulletedListLine)initWithArray:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListLine;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyBulletedListLine *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [PKPeerPaymentDynamicFraudPageBodyContent bodyContentWithDictionary:*(*(&v16 + 1) + 8 * v11), v16];
          [v6 safelyAddObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    contents = v5->_contents;
    v5->_contents = v13;
  }

  return v5;
}

- (PKPeerPaymentDynamicFraudPageBodyBulletedListLine)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListLine;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyBulletedListLine *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"contents"];
    contents = v5->_contents;
    v5->_contents = v9;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"contents: '%@'; ", self->_contents];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = self->_contents;
    v6 = v4[1];
    if (contents && v6)
    {
      v7 = [(NSArray *)contents isEqual:?];
    }

    else
    {
      v7 = contents == v6;
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
  [v3 safelyAddObject:self->_contents];
  v4 = PKCombinedHash(17, v3);
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListLine;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyBulletedListLine *)&v7 hash]+ 32 * v4 - v4;

  return v5;
}

@end