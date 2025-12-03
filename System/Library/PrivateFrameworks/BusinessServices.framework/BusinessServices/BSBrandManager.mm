@interface BSBrandManager
- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error;
- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithURI:(id)i completion:(id)completion;
- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion;
- (void)clearUnusedCachedLogos:(id)logos;
- (void)fetchAssetWithURL:(id)l type:(int64_t)type completion:(id)completion;
- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
@end

@implementation BSBrandManager

- (void)brandWithURI:(id)i completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BSBrandManager_brandWithURI_completion___block_invoke;
  v8[3] = &unk_2781C1688;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BSBrandManager *)self brandWithURI:i completion:v8];
}

void __42__BSBrandManager_brandWithURI_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[BSBrand alloc] _initWithShim:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BSBrandManager_brandWithURI_usingSim_completion___block_invoke;
  v10[3] = &unk_2781C1688;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BSBrandManager *)self brandWithURI:i usingSim:sim completion:v10];
}

void __51__BSBrandManager_brandWithURI_usingSim_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[BSBrand alloc] _initWithShim:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)clearUnusedCachedLogos:(id)logos
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self clearUnusedCachedLogos:logos];
}

- (void)fetchAssetWithURL:(id)l type:(int64_t)type completion:(id)completion
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self fetchAssetWithURL:l assetType:type completion:completion];
}

- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self isBrandRegisteredWithIdentifier:identifier forService:service completion:completion];
}

- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error
{
  if (self)
  {
    self = self->_shim;
  }

  return [(BSBrandManager *)self isBrandRegisteredWithIdentifier:identifier forService:service timeout:error error:timeout];
}

- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__BSBrandManager_brandWithIdentifier_forService_completion___block_invoke;
  v10[3] = &unk_2781C1688;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BSBrandManager *)self brandWithIdentifier:identifier forService:service completion:v10];
}

void __60__BSBrandManager_brandWithIdentifier_forService_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[BSBrand alloc] _initWithShim:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__BSBrandManager_brandAssetWithIdentifier_forService_completion___block_invoke;
  v10[3] = &unk_2781C16B0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BSBrandManager *)self brandAssetWithIdentifier:identifier forService:service completion:v10];
}

@end