@interface PKPaymentContentItemValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKPaymentContentItemValidator)initWithContentItem:(id)a3;
@end

@implementation PKPaymentContentItemValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithContentItem:v3];

  return v4;
}

- (PKPaymentContentItemValidator)initWithContentItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentContentItemValidator;
  v6 = [(PKPaymentContentItemValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = [(PKPaymentContentItem *)self->_item isCentered];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  item = self->_item;
  v9 = objc_opt_class();
  if (!_PKPaymentValidateProperty(item, @"label", v9, !v7, a3, a4))
  {
    goto LABEL_9;
  }

  v10 = self->_item;
  v11 = objc_opt_class();
  if (!v7)
  {
    if (_PKPaymentValidateProperty(v10, @"title", v11, 1, a3, a4))
    {
      goto LABEL_7;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  item = [(PKPaymentContentItem *)self->_item label];
  if ((_PKPaymentValidateProperty(v10, @"title", v11, item == 0, a3, a4) & 1) == 0)
  {
    v12 = 0;
LABEL_8:

    goto LABEL_10;
  }

LABEL_7:
  v13 = self->_item;
  v14 = objc_opt_class();
  v12 = _PKPaymentValidateProperty(v13, @"imageRequest", v14, 0, a3, a4);
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (a4 && (v12 & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"%@ has an invalid property";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v15 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v16];
  }

  return v12;
}

@end