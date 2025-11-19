@interface PKPeerPaymentDynamicFraudPage
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudPage)initWithCoder:(id)a3;
- (PKPeerPaymentDynamicFraudPage)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentDynamicFraudPage

- (PKPeerPaymentDynamicFraudPage)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKPeerPaymentDynamicFraudPage;
  v5 = [(PKPeerPaymentDynamicFraudPage *)&v28 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 PKStringForKey:@"cancelButtonTitle"];
    cancelButtonTitle = v5->_cancelButtonTitle;
    v5->_cancelButtonTitle = v8;

    v10 = [v4 PKStringForKey:@"confirmButtonTitle"];
    confirmButtonTitle = v5->_confirmButtonTitle;
    v5->_confirmButtonTitle = v10;

    v12 = [v4 PKArrayContaining:objc_opt_class() forKey:@"bodyContents"];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [PKPeerPaymentDynamicFraudPageBodyContent bodyContentWithDictionary:*(*(&v24 + 1) + 8 * v18), v24];
          [v13 safelyAddObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    if ([v13 count])
    {
      v20 = [v13 copy];
      bodyContents = v5->_bodyContents;
      v5->_bodyContents = v20;
    }

    if (!v5->_title && !v5->_confirmButtonTitle && !v5->_bodyContents)
    {

      v22 = 0;
      goto LABEL_16;
    }
  }

  v22 = v5;
LABEL_16:

  return v22;
}

- (PKPeerPaymentDynamicFraudPage)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentDynamicFraudPage;
  v5 = [(PKPeerPaymentDynamicFraudPage *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"bodyContents"];
    bodyContents = v5->_bodyContents;
    v5->_bodyContents = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButtonTitle"];
    cancelButtonTitle = v5->_cancelButtonTitle;
    v5->_cancelButtonTitle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmButtonTitle"];
    confirmButtonTitle = v5->_confirmButtonTitle;
    v5->_confirmButtonTitle = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_bodyContents forKey:@"bodyContents"];
  [v5 encodeObject:self->_cancelButtonTitle forKey:@"cancelButtonTitle"];
  [v5 encodeObject:self->_confirmButtonTitle forKey:@"confirmButtonTitle"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"bodyContents: '%@'; ", self->_bodyContents];
  [v3 appendFormat:@"cancelButtonTitle: '%@'; ", self->_cancelButtonTitle];
  [v3 appendFormat:@"confirmButtonTitle: '%@'; ", self->_confirmButtonTitle];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[1];
    v6 = self->_title;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      LOBYTE(v9) = 0;
      if (!v6 || !v7)
      {
        goto LABEL_24;
      }

      v9 = [(NSString *)v6 isEqualToString:v7];

      if (!v9)
      {
        goto LABEL_25;
      }
    }

    bodyContents = self->_bodyContents;
    v11 = v4[2];
    if (bodyContents && v11)
    {
      if (([(NSArray *)bodyContents isEqual:?]& 1) != 0)
      {
LABEL_11:
        v12 = v4[3];
        v6 = self->_cancelButtonTitle;
        v13 = v12;
        v8 = v13;
        if (v6 == v13)
        {

LABEL_19:
          confirmButtonTitle = self->_confirmButtonTitle;
          v15 = v4[4];
          v6 = confirmButtonTitle;
          v16 = v15;
          v8 = v16;
          if (v6 == v16)
          {
            LOBYTE(v9) = 1;
          }

          else
          {
            LOBYTE(v9) = 0;
            if (v6 && v16)
            {
              LOBYTE(v9) = [(NSString *)v6 isEqualToString:v16];
            }
          }

          goto LABEL_24;
        }

        LOBYTE(v9) = 0;
        if (v6 && v13)
        {
          v9 = [(NSString *)v6 isEqualToString:v13];

          if (!v9)
          {
            goto LABEL_25;
          }

          goto LABEL_19;
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    else if (bodyContents == v11)
    {
      goto LABEL_11;
    }
  }

  LOBYTE(v9) = 0;
LABEL_25:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_bodyContents];
  [v3 safelyAddObject:self->_cancelButtonTitle];
  [v3 safelyAddObject:self->_confirmButtonTitle];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end