@interface PKStandaloneTransactionBannerHandleRequest
+ (id)createForPassUniqueIdentifier:(id)identifier withDisplayableName:(id)name transactionType:(int64_t)type walletForeground:(BOOL)foreground;
- (PKStandaloneTransactionBannerHandleRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStandaloneTransactionBannerHandleRequest

+ (id)createForPassUniqueIdentifier:(id)identifier withDisplayableName:(id)name transactionType:(int64_t)type walletForeground:(BOOL)foreground
{
  identifierCopy = identifier;
  v10 = 0;
  if (identifierCopy && type)
  {
    nameCopy = name;
    v12 = [PKStandaloneTransactionBannerHandleRequest alloc];
    if (v12)
    {
      v19.receiver = v12;
      v19.super_class = PKBannerHandleRequest;
      v13 = objc_msgSendSuper2(&v19, sel_init);
      v10 = v13;
      if (v13)
      {
        v13[1] = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    v14 = [identifierCopy copy];
    v15 = v10[3];
    v10[3] = v14;

    v16 = [nameCopy copy];
    v17 = v10[4];
    v10[4] = v16;

    v10[5] = type;
    *(v10 + 16) = foreground;
  }

  return v10;
}

- (PKStandaloneTransactionBannerHandleRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKStandaloneTransactionBannerHandleRequest;
  v5 = [(PKBannerHandleRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    if (!v5->_passUniqueIdentifier || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayableName"], v8 = objc_claimAutoreleasedReturnValue(), displayableName = v5->_displayableName, v5->_displayableName = v8, displayableName, v10 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"transactionType"), (v5->_transactionType = v10) == 0))
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKStandaloneTransactionBannerHandleRequest" code:0 userInfo:0];
      [coderCopy failWithError:v12];

      v11 = 0;
      goto LABEL_7;
    }

    v5->_walletForeground = [coderCopy decodeBoolForKey:@"walletForeground"];
  }

  v11 = v5;
LABEL_7:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKStandaloneTransactionBannerHandleRequest;
  coderCopy = coder;
  [(PKBannerHandleRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:{@"passUniqueIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayableName forKey:@"displayableName"];
  [coderCopy encodeInteger:self->_transactionType forKey:@"transactionType"];
  [coderCopy encodeBool:self->_walletForeground forKey:@"walletForeground"];
}

@end