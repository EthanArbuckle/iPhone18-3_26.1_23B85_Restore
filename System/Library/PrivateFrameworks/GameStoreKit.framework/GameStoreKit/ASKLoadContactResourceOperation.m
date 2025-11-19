@interface ASKLoadContactResourceOperation
+ (double)mainScreenScale;
- (ASKLoadContactResourceOperation)initWithContactId:(id)a3;
- (ASKLoadContactResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5;
- (id)makeFetchError;
- (id)makePlatformUnsupportedError;
- (void)main;
@end

@implementation ASKLoadContactResourceOperation

- (ASKLoadContactResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5
{
  v6 = [a3 URL];
  v7 = [v6 host];
  v8 = [v7 stringByRemovingPercentEncoding];

  v9 = [(ASKLoadContactResourceOperation *)self initWithContactId:v8];
  return v9;
}

- (ASKLoadContactResourceOperation)initWithContactId:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASKLoadContactResourceOperation;
  v5 = [(ASKLoadContactResourceOperation *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    contactId = v5->_contactId;
    v5->_contactId = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBDBD0]);
    monogrammer = v5->_monogrammer;
    v5->_monogrammer = v8;
  }

  return v5;
}

- (void)main
{
  v32 = *MEMORY[0x277D85DE8];
  if (([(ASKLoadContactResourceOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v4 = *MEMORY[0x277CBD028];
    v23[0] = v3;
    v23[1] = v4;
    v5 = *MEMORY[0x277CBD020];
    v24 = *MEMORY[0x277CBD158];
    v25 = v5;
    v6 = *MEMORY[0x277CBD000];
    v26 = v24;
    v27 = v6;
    v7 = *MEMORY[0x277CBD160];
    v28 = *MEMORY[0x277CBCFF8];
    v29 = v7;
    v8 = *MEMORY[0x277CBD098];
    v30 = *MEMORY[0x277CBCFC0];
    v31 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:10];

    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v11 = [(ASKLoadContactResourceOperation *)self contactId];
    v21 = 0;
    v12 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v9 error:&v21];
    v13 = v21;

    if (v13 || !v12)
    {
      [(ASKLoadResourceOperation *)self didCompleteWithResource:0 error:v13];
    }

    else
    {
      v14 = [v12 imageData];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277D755B8]);
        v16 = [v12 imageData];
        v17 = [v15 initWithData:v16];

        [(ASKLoadResourceOperation *)self didCompleteWithResource:v17 error:0];
      }

      else
      {
        v17 = [(ASKLoadContactResourceOperation *)self monogrammer];
        v22 = v12;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __39__ASKLoadContactResourceOperation_main__block_invoke;
        v20[3] = &unk_27968B890;
        v20[4] = self;
        v19 = [v17 renderAvatarsForContacts:v18 handler:v20];
      }
    }
  }
}

void __39__ASKLoadContactResourceOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndex:0];

  if (v3)
  {
    v4 = [v8 objectAtIndex:0];
    +[ASKLoadContactResourceOperation mainScreenScale];
    v6 = [v4 imageForSize:300.0 scale:{300.0, v5}];
    [*(a1 + 32) didCompleteWithResource:v6 error:0];
  }

  else
  {
    v7 = *(a1 + 32);
    v4 = [v7 makeFetchError];
    [v7 didCompleteWithResource:0 error:v4];
  }
}

- (id)makeFetchError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ASKLoadContactResourceOperation *)self contactId];
  v4 = [v2 stringWithFormat:@"Unable to contact photo with Id: %@", v3];

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"ASKLoadContactResourceOperationErrorDomain" code:560557415 userInfo:v6];

  return v7;
}

- (id)makePlatformUnsupportedError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ASKLoadContactResourceOperation *)self contactId];
  v4 = [v2 stringWithFormat:@"Unable to contact photo with Id: %@. This platform is not currently supported, see code comments in ASKLoadContactResourceOperation for more information", v3];

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"ASKLoadContactResourceOperationErrorDomain" code:560557415 userInfo:v6];

  return v7;
}

+ (double)mainScreenScale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [MEMORY[0x277D759A0] screens];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ASKLoadContactResourceOperation_mainScreenScale__block_invoke;
  v5[3] = &unk_27968B8B8;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__ASKLoadContactResourceOperation_mainScreenScale__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 scale];
  v5 = *(*(a1 + 32) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }

  return result;
}

@end