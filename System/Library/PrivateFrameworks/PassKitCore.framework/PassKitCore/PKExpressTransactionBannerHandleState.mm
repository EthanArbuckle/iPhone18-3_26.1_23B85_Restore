@interface PKExpressTransactionBannerHandleState
+ (id)createForTransactionState:(id)state;
- (PKExpressTransactionBannerHandleState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExpressTransactionBannerHandleState

+ (id)createForTransactionState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = stateCopy;
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

- (PKExpressTransactionBannerHandleState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKExpressTransactionBannerHandleState;
  v5 = [(PKBannerHandleState *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionState"];
    transactionState = v5->_transactionState;
    v5->_transactionState = v6;

    if (!v5->_transactionState)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressTransactionBannerHandleState" code:0 userInfo:0];
      [coderCopy failWithError:v8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKExpressTransactionBannerHandleState;
  coderCopy = coder;
  [(PKBannerHandleState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_transactionState forKey:{@"transactionState", v5.receiver, v5.super_class}];
}

@end