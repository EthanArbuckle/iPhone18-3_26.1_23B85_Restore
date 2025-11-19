@interface PKStandaloneTransactionBannerHandleRequest
+ (id)createForPassUniqueIdentifier:(id)a3 withDisplayableName:(id)a4 transactionType:(int64_t)a5 walletForeground:(BOOL)a6;
- (PKStandaloneTransactionBannerHandleRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKStandaloneTransactionBannerHandleRequest

+ (id)createForPassUniqueIdentifier:(id)a3 withDisplayableName:(id)a4 transactionType:(int64_t)a5 walletForeground:(BOOL)a6
{
  v9 = a3;
  v10 = 0;
  if (v9 && a5)
  {
    v11 = a4;
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

    v14 = [v9 copy];
    v15 = v10[3];
    v10[3] = v14;

    v16 = [v11 copy];
    v17 = v10[4];
    v10[4] = v16;

    v10[5] = a5;
    *(v10 + 16) = a6;
  }

  return v10;
}

- (PKStandaloneTransactionBannerHandleRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKStandaloneTransactionBannerHandleRequest;
  v5 = [(PKBannerHandleRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    if (!v5->_passUniqueIdentifier || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayableName"], v8 = objc_claimAutoreleasedReturnValue(), displayableName = v5->_displayableName, v5->_displayableName = v8, displayableName, v10 = objc_msgSend(v4, "decodeIntegerForKey:", @"transactionType"), (v5->_transactionType = v10) == 0))
    {
      v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKStandaloneTransactionBannerHandleRequest" code:0 userInfo:0];
      [v4 failWithError:v12];

      v11 = 0;
      goto LABEL_7;
    }

    v5->_walletForeground = [v4 decodeBoolForKey:@"walletForeground"];
  }

  v11 = v5;
LABEL_7:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKStandaloneTransactionBannerHandleRequest;
  v4 = a3;
  [(PKBannerHandleRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_passUniqueIdentifier forKey:{@"passUniqueIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_displayableName forKey:@"displayableName"];
  [v4 encodeInteger:self->_transactionType forKey:@"transactionType"];
  [v4 encodeBool:self->_walletForeground forKey:@"walletForeground"];
}

@end