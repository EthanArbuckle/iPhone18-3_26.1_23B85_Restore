@interface FCNewsletterSubscribeCommand
- (FCNewsletterSubscribeCommand)initWithCoder:(id)a3;
- (FCNewsletterSubscribeCommand)initWithNewsletter:(id)a3 includeArray:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCNewsletterSubscribeCommand

- (FCNewsletterSubscribeCommand)initWithNewsletter:(id)a3 includeArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCNewsletterSubscribeCommand;
  v9 = [(FCNewsletterSubscribeCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_newsletter, a3);
    objc_storeStrong(&v10->_includeArray, a4);
  }

  return v10;
}

- (FCNewsletterSubscribeCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNewsletterKey"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kIncludeKey"];

  v10 = [(FCNewsletterSubscribeCommand *)self initWithNewsletter:v5 includeArray:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCNewsletterSubscribeCommand *)self newsletter];
  [v4 encodeObject:v5 forKey:@"kNewsletterKey"];

  v6 = [(FCNewsletterSubscribeCommand *)self includeArray];
  [v4 encodeObject:v6 forKey:@"kIncludeKey"];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 newsletterEndpointConnection];
  newsletter = self->_newsletter;
  includeArray = self->_includeArray;
  v12 = dispatch_get_global_queue(-2, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__FCNewsletterSubscribeCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v15[3] = &unk_1E7C415A0;
  v16 = v8;
  v17 = self;
  v18 = v7;
  v13 = v7;
  v14 = v8;
  [v9 newsletterSubscribeTo:newsletter includeArray:includeArray callbackQueue:v12 completion:v15];
}

void __77__FCNewsletterSubscribeCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v14)
  {
    [*(a1 + 32) command:*(a1 + 40) didFinishWithStatus:0];
    v12 = [*(a1 + 48) newsletterManager];
    [v12 updateCacheWithNewsletterString:v14 includeArray:v9 newsletters:v10];
  }

  else
  {
    if ([v11 fc_isNetworkUnavailableError])
    {
      v13 = 1;
    }

    else if ([v11 fc_shouldRetry])
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    [*(a1 + 32) command:*(a1 + 40) didFinishWithStatus:v13];
  }
}

@end