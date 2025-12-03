@interface FCNewsletterSubscribeCommand
- (FCNewsletterSubscribeCommand)initWithCoder:(id)coder;
- (FCNewsletterSubscribeCommand)initWithNewsletter:(id)newsletter includeArray:(id)array;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCNewsletterSubscribeCommand

- (FCNewsletterSubscribeCommand)initWithNewsletter:(id)newsletter includeArray:(id)array
{
  newsletterCopy = newsletter;
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = FCNewsletterSubscribeCommand;
  v9 = [(FCNewsletterSubscribeCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_newsletter, newsletter);
    objc_storeStrong(&v10->_includeArray, array);
  }

  return v10;
}

- (FCNewsletterSubscribeCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNewsletterKey"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kIncludeKey"];

  v10 = [(FCNewsletterSubscribeCommand *)self initWithNewsletter:v5 includeArray:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  newsletter = [(FCNewsletterSubscribeCommand *)self newsletter];
  [coderCopy encodeObject:newsletter forKey:@"kNewsletterKey"];

  includeArray = [(FCNewsletterSubscribeCommand *)self includeArray];
  [coderCopy encodeObject:includeArray forKey:@"kIncludeKey"];
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  contextCopy = context;
  delegateCopy = delegate;
  newsletterEndpointConnection = [contextCopy newsletterEndpointConnection];
  newsletter = self->_newsletter;
  includeArray = self->_includeArray;
  v12 = dispatch_get_global_queue(-2, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__FCNewsletterSubscribeCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v15[3] = &unk_1E7C415A0;
  v16 = delegateCopy;
  selfCopy = self;
  v18 = contextCopy;
  v13 = contextCopy;
  v14 = delegateCopy;
  [newsletterEndpointConnection newsletterSubscribeTo:newsletter includeArray:includeArray callbackQueue:v12 completion:v15];
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