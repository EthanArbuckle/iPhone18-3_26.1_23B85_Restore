@interface SUUIMediaSocialLoadProfilePhotoOperation
- (SUUIMediaSocialLoadProfilePhotoOperation)initWithClientContext:(id)context;
- (id)_silhouette;
- (id)outputBlock;
- (void)_fetchMonogram;
- (void)_fetchPhoto;
- (void)_fetchProfile;
- (void)_returnPhoto:(id)photo isFinal:(BOOL)final;
- (void)main;
- (void)setOutputBlock:(id)block;
@end

@implementation SUUIMediaSocialLoadProfilePhotoOperation

- (SUUIMediaSocialLoadProfilePhotoOperation)initWithClientContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SUUIMediaSocialLoadProfilePhotoOperation;
  v6 = [(SSVOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v7->_lock;
    v7->_lock = v8;

    [(NSLock *)v7->_lock setName:@"com.apple.MediaSocial.loadProfilePhoto"];
  }

  return v7;
}

- (id)outputBlock
{
  [(NSLock *)self->_lock lock];
  v3 = [self->_outputBlock copy];
  [(NSLock *)self->_lock unlock];
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  _silhouette = [(SUUIMediaSocialLoadProfilePhotoOperation *)self _silhouette];
  [(SUUIMediaSocialLoadProfilePhotoOperation *)self _returnPhoto:_silhouette isFinal:0];

  [(SUUIMediaSocialLoadProfilePhotoOperation *)self _fetchProfile];
}

- (void)_fetchMonogram
{
  name = [(SUUIMediaSocialProfile *)self->_profile name];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = SUUIContactsUIFramework();
    _silhouette2 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cnmonogrammer.isa v3))];
    v5 = [name componentsSeparatedByString:@" "];
    v6 = [v5 count];
    if (!v6)
    {
      goto LABEL_8;
    }

    if (v6 == 1)
    {
      firstObject = [v5 firstObject];
      _silhouette = [_silhouette2 monogramForPersonWithFirstName:firstObject lastName:0];
    }

    else
    {
      firstObject = [v5 firstObject];
      lastObject = [v5 lastObject];
      _silhouette = [_silhouette2 monogramForPersonWithFirstName:firstObject lastName:lastObject];
    }

    if (!_silhouette)
    {
LABEL_8:
      _silhouette = [(SUUIMediaSocialLoadProfilePhotoOperation *)self _silhouette];
    }

    [(SUUIMediaSocialLoadProfilePhotoOperation *)self _returnPhoto:_silhouette isFinal:1];
  }

  else
  {
    _silhouette2 = [(SUUIMediaSocialLoadProfilePhotoOperation *)self _silhouette];
    [(SUUIMediaSocialLoadProfilePhotoOperation *)self _returnPhoto:_silhouette2 isFinal:1];
  }
}

- (void)_fetchPhoto
{
  profileImageURL = [(SUUIMediaSocialProfile *)self->_profile profileImageURL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:profileImageURL];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__SUUIMediaSocialLoadProfilePhotoOperation__fetchPhoto__block_invoke;
    v5[3] = &unk_2798F8800;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [v4 setOutputBlock:v5];
    [(SSVOperation *)self runChildOperation:v4];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SUUIMediaSocialLoadProfilePhotoOperation *)self _fetchMonogram];
  }
}

void __55__SUUIMediaSocialLoadProfilePhotoOperation__fetchPhoto__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a3)
  {
    [WeakRetained _fetchMonogram];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] imageWithData:v10];
    v8 = [[SUUIStyledImageDataConsumer alloc] initWithSize:10 treatment:56.0, 56.0];
    v9 = [(SUUIStyledImageDataConsumer *)v8 imageForImage:v7];
    if (v9)
    {
      [v6 _returnPhoto:v9 isFinal:1];
    }

    else
    {
      [*(a1 + 32) _fetchMonogram];
    }
  }
}

- (void)_fetchProfile
{
  v3 = +[SUUIMediaSocialProfileCoordinator sharedCoordinator];
  v4 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SUUIMediaSocialLoadProfilePhotoOperation__fetchProfile__block_invoke;
  v6[3] = &unk_2798F8828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [v3 getProfileWithOptions:0 profileBlock:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__SUUIMediaSocialLoadProfilePhotoOperation__fetchProfile__block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v11 = a2;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (a4)
    {
      v10 = [WeakRetained _silhouette];
      [v9 _returnPhoto:v10 isFinal:1];
    }

    else
    {
      objc_storeStrong((*(a1 + 32) + 336), a2);
      [v9 _fetchPhoto];
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_returnPhoto:(id)photo isFinal:(BOOL)final
{
  photoCopy = photo;
  outputBlock = [(SUUIMediaSocialLoadProfilePhotoOperation *)self outputBlock];
  if (outputBlock)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__SUUIMediaSocialLoadProfilePhotoOperation__returnPhoto_isFinal___block_invoke;
    block[3] = &unk_2798F8850;
    v11 = outputBlock;
    v10 = photoCopy;
    finalCopy = final;
    dispatch_async(v8, block);
  }
}

- (id)_silhouette
{
  v2 = SUUIContactsUIFramework();
  v3 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cnmonogrammer.isa v2))];
  silhouetteMonogram = [v3 silhouetteMonogram];

  return silhouetteMonogram;
}

@end