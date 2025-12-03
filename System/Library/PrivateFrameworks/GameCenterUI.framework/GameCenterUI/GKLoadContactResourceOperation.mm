@interface GKLoadContactResourceOperation
+ (double)mainScreenScale;
- (GKLoadContactResourceOperation)initWithContactId:(id)id;
- (id)imageCreationError;
- (id)makeFetchError;
- (void)main;
@end

@implementation GKLoadContactResourceOperation

- (GKLoadContactResourceOperation)initWithContactId:(id)id
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = GKLoadContactResourceOperation;
  v5 = [(GKLoadContactResourceOperation *)&v13 init];
  if (v5)
  {
    v6 = [idCopy copy];
    contactId = v5->_contactId;
    v5->_contactId = v6;

    v8 = objc_alloc(MEMORY[0x277CBDBD0]);
    defaultSettings = [MEMORY[0x277CBDBD8] defaultSettings];
    v10 = [v8 initWithSettings:defaultSettings];
    monogrammer = v5->_monogrammer;
    v5->_monogrammer = v10;
  }

  return v5;
}

- (void)main
{
  v30 = *MEMORY[0x277D85DE8];
  if (([(GKLoadContactResourceOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v4 = *MEMORY[0x277CBD028];
    v21[0] = v3;
    v21[1] = v4;
    v5 = *MEMORY[0x277CBD020];
    v22 = *MEMORY[0x277CBD158];
    v23 = v5;
    v6 = *MEMORY[0x277CBD000];
    v24 = v22;
    v25 = v6;
    v7 = *MEMORY[0x277CBD160];
    v26 = *MEMORY[0x277CBCFF8];
    v27 = v7;
    v8 = *MEMORY[0x277CBD098];
    v28 = *MEMORY[0x277CBCFC0];
    v29 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:10];

    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactId = [(GKLoadContactResourceOperation *)self contactId];
    v12 = [v10 unifiedContactWithIdentifier:contactId keysToFetch:v9 error:0];

    imageData = [v12 imageData];

    if (imageData)
    {
      v14 = MEMORY[0x277D755B8];
      imageData2 = [v12 imageData];
      monogrammer = [v14 _gkImageWithCheckedData:imageData2];

      if (monogrammer)
      {
        [(GKLoadResourceOperation *)self didCompleteWithResource:monogrammer error:0];
LABEL_8:

        return;
      }

      imageCreationError = [(GKLoadContactResourceOperation *)self imageCreationError];
      [(GKLoadResourceOperation *)self didCompleteWithResource:0 error:imageCreationError];
    }

    else
    {
      monogrammer = [(GKLoadContactResourceOperation *)self monogrammer];
      v20 = v12;
      imageCreationError = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __38__GKLoadContactResourceOperation_main__block_invoke;
      v19[3] = &unk_2796699D0;
      v19[4] = self;
      v18 = [monogrammer renderAvatarsForContacts:imageCreationError handler:v19];
    }

    goto LABEL_8;
  }
}

void __38__GKLoadContactResourceOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndex:0];

  if (v3)
  {
    v4 = [v8 objectAtIndex:0];
    +[GKLoadContactResourceOperation mainScreenScale];
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

- (id)imageCreationError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  contactId = [(GKLoadContactResourceOperation *)self contactId];
  v4 = [v2 stringWithFormat:@"Unable to create photo with Id: %@", contactId];

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"GKLoadContactResourceOperationErrorDomain" code:560557415 userInfo:v6];

  return v7;
}

- (id)makeFetchError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  contactId = [(GKLoadContactResourceOperation *)self contactId];
  v4 = [v2 stringWithFormat:@"Unable to contact photo with Id: %@", contactId];

  v5 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"GKLoadContactResourceOperationErrorDomain" code:560557415 userInfo:v6];

  return v7;
}

+ (double)mainScreenScale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  screens = [MEMORY[0x277D759A0] screens];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__GKLoadContactResourceOperation_mainScreenScale__block_invoke;
  v5[3] = &unk_2796699F8;
  v5[4] = &v6;
  [screens enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__GKLoadContactResourceOperation_mainScreenScale__block_invoke(uint64_t a1, void *a2)
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