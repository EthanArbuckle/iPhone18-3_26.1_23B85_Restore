@interface FCSubmitNewsletterPersonalizationVectorCommand
- (FCSubmitNewsletterPersonalizationVectorCommand)initWithCoder:(id)a3;
- (FCSubmitNewsletterPersonalizationVectorCommand)initWithPersonalizationVector:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCSubmitNewsletterPersonalizationVectorCommand

- (FCSubmitNewsletterPersonalizationVectorCommand)initWithPersonalizationVector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCSubmitNewsletterPersonalizationVectorCommand;
  v6 = [(FCSubmitNewsletterPersonalizationVectorCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personalizationVector, a3);
  }

  return v7;
}

- (FCSubmitNewsletterPersonalizationVectorCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPersonalizationVectorKey"];

  v6 = [(FCSubmitNewsletterPersonalizationVectorCommand *)self initWithPersonalizationVector:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCSubmitNewsletterPersonalizationVectorCommand *)self personalizationVector];
  [v4 encodeObject:v5 forKey:@"kPersonalizationVectorKey"];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 newsletterEndpointConnection];
  personalizationVector = self->_personalizationVector;
  v11 = dispatch_get_global_queue(-2, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__FCSubmitNewsletterPersonalizationVectorCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v14[3] = &unk_1E7C3CA10;
  v15 = v8;
  v16 = self;
  v17 = v7;
  v12 = v7;
  v13 = v8;
  [v9 submitPersonalizationVector:personalizationVector withCallbackQueue:v11 completion:v14];
}

void __95__FCSubmitNewsletterPersonalizationVectorCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v20 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 32) command:*(a1 + 40) didFinishWithStatus:0];
    v15 = [*(a1 + 48) newsletterManager];
    [v15 updateCacheWithNewsletterString:v20 includeArray:v11 newsletters:v12];
  }

  else
  {
    if ([v13 fc_isNetworkUnavailableError])
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 1;
    }

    else
    {
      v19 = [v14 fc_shouldRetry];
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      if (v19)
      {
        v18 = 2;
      }

      else
      {
        v18 = 3;
      }
    }

    [v16 command:v17 didFinishWithStatus:v18];
  }
}

@end