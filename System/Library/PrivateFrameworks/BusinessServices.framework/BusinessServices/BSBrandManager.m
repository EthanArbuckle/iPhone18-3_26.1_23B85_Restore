@interface BSBrandManager
- (BOOL)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 timeout:(double)a5 error:(id *)a6;
- (void)brandAssetWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5;
- (void)brandWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5;
- (void)brandWithURI:(id)a3 completion:(id)a4;
- (void)brandWithURI:(id)a3 usingSim:(id)a4 completion:(id)a5;
- (void)clearUnusedCachedLogos:(id)a3;
- (void)fetchAssetWithURL:(id)a3 type:(int64_t)a4 completion:(id)a5;
- (void)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5;
@end

@implementation BSBrandManager

- (void)brandWithURI:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (self)
  {
    self = self->_shim;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BSBrandManager_brandWithURI_completion___block_invoke;
  v8[3] = &unk_2781C1688;
  v9 = v6;
  v7 = v6;
  [(BSBrandManager *)self brandWithURI:a3 completion:v8];
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

- (void)brandWithURI:(id)a3 usingSim:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BSBrandManager_brandWithURI_usingSim_completion___block_invoke;
  v10[3] = &unk_2781C1688;
  v11 = v8;
  v9 = v8;
  [(BSBrandManager *)self brandWithURI:a3 usingSim:a4 completion:v10];
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

- (void)clearUnusedCachedLogos:(id)a3
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self clearUnusedCachedLogos:a3];
}

- (void)fetchAssetWithURL:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self fetchAssetWithURL:a3 assetType:a4 completion:a5];
}

- (void)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self isBrandRegisteredWithIdentifier:a3 forService:a4 completion:a5];
}

- (BOOL)isBrandRegisteredWithIdentifier:(id)a3 forService:(id)a4 timeout:(double)a5 error:(id *)a6
{
  if (self)
  {
    self = self->_shim;
  }

  return [(BSBrandManager *)self isBrandRegisteredWithIdentifier:a3 forService:a4 timeout:a6 error:a5];
}

- (void)brandWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__BSBrandManager_brandWithIdentifier_forService_completion___block_invoke;
  v10[3] = &unk_2781C1688;
  v11 = v8;
  v9 = v8;
  [(BSBrandManager *)self brandWithIdentifier:a3 forService:a4 completion:v10];
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

- (void)brandAssetWithIdentifier:(id)a3 forService:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__BSBrandManager_brandAssetWithIdentifier_forService_completion___block_invoke;
  v10[3] = &unk_2781C16B0;
  v11 = v8;
  v9 = v8;
  [(BSBrandManager *)self brandAssetWithIdentifier:a3 forService:a4 completion:v10];
}

@end