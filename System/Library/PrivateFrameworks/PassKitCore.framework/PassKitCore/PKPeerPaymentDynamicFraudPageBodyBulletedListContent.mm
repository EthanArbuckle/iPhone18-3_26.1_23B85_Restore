@interface PKPeerPaymentDynamicFraudPageBodyBulletedListContent
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyBulletedListContent)initWithCoder:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyBulletedListContent)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyBulletedListContent

- (PKPeerPaymentDynamicFraudPageBodyBulletedListContent)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v26 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKArrayContaining:objc_opt_class() forKey:@"lines"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          v14 = [PKPeerPaymentDynamicFraudPageBodyBulletedListLine alloc];
          v15 = [(PKPeerPaymentDynamicFraudPageBodyBulletedListLine *)v14 initWithArray:v13, v22];
          [v7 safelyAddObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    lines = v5->_lines;
    v5->_lines = v16;

    v18 = [v4 PKDictionaryForKey:@"footer"];
    v19 = [PKPeerPaymentDynamicFraudPageBodyContent bodyContentWithDictionary:v18];
    footer = v5->_footer;
    v5->_footer = v19;
  }

  return v5;
}

- (PKPeerPaymentDynamicFraudPageBodyBulletedListContent)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"lines"];
    lines = v5->_lines;
    v5->_lines = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListContent;
  v4 = a3;
  [(PKPeerPaymentDynamicFraudPageBodyContent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_lines forKey:{@"lines", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_footer forKey:@"footer"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPeerPaymentDynamicFraudPageBodyContent *)self type];
  if (v4 - 1 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CDA10[v4 - 1];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  [v3 appendFormat:@"lines: '%@'; ", self->_lines];
  [v3 appendFormat:@"footer: '%@'; ", self->_footer];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13.receiver = self;
  v13.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListContent;
  if (![(PKPeerPaymentDynamicFraudPageBodyContent *)&v13 isEqual:v4])
  {
    goto LABEL_9;
  }

  lines = self->_lines;
  v6 = v4[2];
  if (lines)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSArray *)lines isEqual:?]& 1) != 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (lines != v6)
  {
    goto LABEL_9;
  }

LABEL_12:
  footer = self->_footer;
  v11 = v4[3];
  if (footer)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v8 = footer == v11;
  }

  else
  {
    v8 = [(PKPeerPaymentDynamicFraudPageBodyContent *)footer isEqual:?];
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_lines];
  [v3 safelyAddObject:self->_footer];
  v4 = PKCombinedHash(17, v3);
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudPageBodyBulletedListContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v7 hash]+ 32 * v4 - v4;

  return v5;
}

@end