@interface SUUIGiftValidator
- (SUUIGiftValidator)initWithValidationURL:(id)a3 clientContext:(id)a4;
- (void)_finishValidationWithResponse:(id)a3 error:(id)a4 attemptNumber:(int64_t)a5 block:(id)a6;
- (void)_validateWithBodyDictionary:(id)a3 completionBlock:(id)a4;
- (void)cancelValidation;
- (void)validateDonation:(id)a3 withCompletionBlock:(id)a4;
- (void)validateGift:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation SUUIGiftValidator

- (SUUIGiftValidator)initWithValidationURL:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SUUIGiftValidator;
  v8 = [(SUUIGiftValidator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, a4);
    v10 = [v6 copy];
    validationURL = v9->_validationURL;
    v9->_validationURL = v10;
  }

  return v9;
}

- (void)cancelValidation
{
  [(SSVLoadURLOperation *)self->_validationOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_validationOperation cancel];
  validationOperation = self->_validationOperation;
  self->_validationOperation = 0;
}

- (void)validateDonation:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 HTTPBodyDictionary];
  [(SUUIGiftValidator *)self _validateWithBodyDictionary:v7 completionBlock:v6];
}

- (void)validateGift:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 HTTPBodyDictionary];
  [(SUUIGiftValidator *)self _validateWithBodyDictionary:v7 completionBlock:v6];
}

- (void)_finishValidationWithResponse:(id)a3 error:(id)a4 attemptNumber:(int64_t)a5 block:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a6;
  if (self->_validationCount == a5)
  {
    [(SSVLoadURLOperation *)self->_validationOperation setOutputBlock:0];
    validationOperation = self->_validationOperation;
    self->_validationOperation = 0;

    if (v11)
    {
      v13 = [[SUUIGiftValidationResponse alloc] initWithValidationDictionary:v14];
      v11[2](v11, v13, v10);
    }
  }
}

- (void)_validateWithBodyDictionary:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SUUIGiftValidator *)self cancelValidation];
  v24 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:&v24];
  v9 = v24;
  if (v8)
  {
    v10 = (self->_validationCount + 1);
    self->_validationCount = v10;
    v11 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:self->_validationURL];
    [v11 setHTTPBody:v8];
    [v11 setHTTPMethod:@"POST"];
    [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:v11];
    validationOperation = self->_validationOperation;
    self->_validationOperation = v12;

    v14 = self->_validationOperation;
    v15 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
    [(SSVLoadURLOperation *)v14 setDataConsumer:v15];

    v16 = self->_validationOperation;
    v17 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [(SSVLoadURLOperation *)v16 setStoreFrontSuffix:v17];

    objc_initWeak(&location, self);
    v18 = self->_validationOperation;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__SUUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke;
    v20[3] = &unk_2798FDE50;
    objc_copyWeak(v22, &location);
    v22[1] = v10;
    v21 = v7;
    [(SSVLoadURLOperation *)v18 setOutputBlock:v20];
    v19 = [(SUUIGiftValidator *)self operationQueue];
    [v19 addOperation:self->_validationOperation];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __65__SUUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke_2;
  block[3] = &unk_2798F7BB0;
  objc_copyWeak(v13, a1 + 5);
  v10 = v5;
  v11 = v6;
  v13[1] = a1[6];
  v12 = a1[4];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v13);
}

void __65__SUUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishValidationWithResponse:*(a1 + 32) error:*(a1 + 40) attemptNumber:*(a1 + 64) block:*(a1 + 48)];
}

@end