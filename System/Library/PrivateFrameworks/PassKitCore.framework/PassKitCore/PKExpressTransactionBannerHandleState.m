@interface PKExpressTransactionBannerHandleState
+ (id)createForTransactionState:(id)a3;
- (PKExpressTransactionBannerHandleState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExpressTransactionBannerHandleState

+ (id)createForTransactionState:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v4;
  v5 = [PKExpressTransactionBannerHandleState alloc];
  if (!v5)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_5;
  }

  v10.receiver = v5;
  v10.super_class = PKBannerHandleState;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = v6;
  if (v6)
  {
    v6[1] = 0;
  }

LABEL_5:
  v8 = v7[2];
  v7[2] = v3;

  return v7;
}

- (PKExpressTransactionBannerHandleState)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKExpressTransactionBannerHandleState;
  v5 = [(PKBannerHandleState *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionState"];
    transactionState = v5->_transactionState;
    v5->_transactionState = v6;

    if (!v5->_transactionState)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressTransactionBannerHandleState" code:0 userInfo:0];
      [v4 failWithError:v8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKExpressTransactionBannerHandleState;
  v4 = a3;
  [(PKBannerHandleState *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transactionState forKey:{@"transactionState", v5.receiver, v5.super_class}];
}

@end