@interface PKPeerPaymentDynamicFraudContent
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentDynamicFraudContent)initWithCoder:(id)coder;
- (PKPeerPaymentDynamicFraudContent)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentDynamicFraudContent

- (PKPeerPaymentDynamicFraudContent)initWithDictionary:(id)dictionary
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = PKPeerPaymentDynamicFraudContent;
  v5 = [(PKPeerPaymentDynamicFraudContent *)&v42 init];
  if (v5)
  {
    v6 = [PKPeerPaymentDynamicFraudAlertContent alloc];
    v7 = [dictionaryCopy PKDictionaryForKey:@"alertContent"];
    v8 = [(PKPeerPaymentDynamicFraudAlertContent *)v6 initWithDictionary:v7];
    alertContent = v5->_alertContent;
    v5->_alertContent = v8;

    v10 = [PKPeerPaymentDynamicFraudTitleMessageContent alloc];
    v11 = [dictionaryCopy PKDictionaryForKey:@"paymentSheetContent"];
    v12 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)v10 initWithDictionary:v11];
    paymentSheetContent = v5->_paymentSheetContent;
    v5->_paymentSheetContent = v12;

    v14 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"pages"];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        v20 = 0;
        do
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v38 + 1) + 8 * v20);
          v22 = [PKPeerPaymentDynamicFraudPage alloc];
          v23 = [(PKPeerPaymentDynamicFraudPage *)v22 initWithDictionary:v21, v38];
          [v15 safelyAddObject:v23];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v18);
    }

    if ([v15 count])
    {
      v24 = [v15 copy];
      pages = v5->_pages;
      v5->_pages = v24;
    }

    if (!v5->_alertContent && !v5->_paymentSheetContent && !v5->_pages)
    {
      v26 = [dictionaryCopy PKStringForKey:@"header"];
      v27 = [dictionaryCopy PKStringForKey:@"message"];
      v28 = [dictionaryCopy PKStringForKey:@"otherButtonTitle"];
      v29 = [dictionaryCopy PKStringForKey:@"defaultButtonTitle"];
      v30 = v29;
      if (v26 && v27 && v28 && v29)
      {
        v31 = [PKPeerPaymentDynamicFraudAlertContent alloc];
        v43[0] = @"title";
        v43[1] = @"message";
        v44[0] = v26;
        v44[1] = v27;
        v43[2] = @"confirmButtonTitle";
        v43[3] = @"cancelButtonTitle";
        v44[2] = v28;
        v44[3] = v30;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];
        v33 = [(PKPeerPaymentDynamicFraudAlertContent *)v31 initWithDictionary:v32];
        v34 = v5->_alertContent;
        v5->_alertContent = v33;
      }

      v35 = v5->_alertContent;

      if (!v35)
      {

        v36 = 0;
        goto LABEL_22;
      }
    }
  }

  v36 = v5;
LABEL_22:

  return v36;
}

- (PKPeerPaymentDynamicFraudContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentDynamicFraudContent;
  v5 = [(PKPeerPaymentDynamicFraudContent *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertContent"];
    alertContent = v5->_alertContent;
    v5->_alertContent = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentSheetContent"];
    paymentSheetContent = v5->_paymentSheetContent;
    v5->_paymentSheetContent = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"pages"];
    pages = v5->_pages;
    v5->_pages = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  alertContent = self->_alertContent;
  coderCopy = coder;
  [coderCopy encodeObject:alertContent forKey:@"alertContent"];
  [coderCopy encodeObject:self->_paymentSheetContent forKey:@"paymentSheetContent"];
  [coderCopy encodeObject:self->_pages forKey:@"pages"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"alertContent: '%@'; ", self->_alertContent];
  [v3 appendFormat:@"paymentSheetContent: '%@'; ", self->_paymentSheetContent];
  [v3 appendFormat:@"pages: '%@'; ", self->_pages];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  alertContent = self->_alertContent;
  v6 = equalCopy[1];
  if (alertContent && v6)
  {
    if (![(PKPeerPaymentDynamicFraudAlertContent *)alertContent isEqual:?])
    {
      goto LABEL_14;
    }
  }

  else if (alertContent != v6)
  {
    goto LABEL_14;
  }

  paymentSheetContent = self->_paymentSheetContent;
  v8 = equalCopy[2];
  if (!paymentSheetContent || !v8)
  {
    if (paymentSheetContent == v8)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (![(PKPeerPaymentDynamicFraudTitleMessageContent *)paymentSheetContent isEqual:?])
  {
    goto LABEL_14;
  }

LABEL_10:
  pages = self->_pages;
  v10 = equalCopy[3];
  if (pages && v10)
  {
    v11 = [(NSArray *)pages isEqual:?];
  }

  else
  {
    v11 = pages == v10;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_alertContent];
  [array safelyAddObject:self->_paymentSheetContent];
  [array safelyAddObject:self->_pages];
  v4 = PKCombinedHash(17, array);

  return v4;
}

@end