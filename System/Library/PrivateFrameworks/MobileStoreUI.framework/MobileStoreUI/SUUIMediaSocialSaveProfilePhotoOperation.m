@interface SUUIMediaSocialSaveProfilePhotoOperation
- (SUUIMediaSocialSaveProfilePhotoOperation)initWithClientContext:(id)a3;
- (id)_photoUploadWithResponseDictionary:(id)a3;
- (id)_requestWithError:(id *)a3;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)a3;
- (void)setPhoto:(id)a3;
@end

@implementation SUUIMediaSocialSaveProfilePhotoOperation

- (SUUIMediaSocialSaveProfilePhotoOperation)initWithClientContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SUUIMediaSocialSaveProfilePhotoOperation;
  v6 = [(SSVOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v7->_lock;
    v7->_lock = v8;

    [(NSLock *)v7->_lock setName:@"com.apple.MediaSocial.saveProfilePhoto"];
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

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setPhoto:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  v6 = [v5 copy];

  photo = self->_photo;
  self->_photo = v6;

  v8 = self->_lock;

  [(NSLock *)v8 unlock];
}

- (void)main
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__46;
  v25 = __Block_byref_object_dispose__46;
  v26 = 0;
  obj = 0;
  v3 = [(SUUIMediaSocialSaveProfilePhotoOperation *)self _requestWithError:&obj];
  objc_storeStrong(&v26, obj);
  if (v3)
  {
    v4 = [(SSVComplexOperation *)self newLoadURLOperationWithRequest:v3];
    v5 = [MEMORY[0x277D69D48] consumer];
    [v4 setDataConsumer:v5];

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__46;
    v18 = __Block_byref_object_dispose__46;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__SUUIMediaSocialSaveProfilePhotoOperation_main__block_invoke;
    v13[3] = &unk_2798F8158;
    v13[4] = &v14;
    v13[5] = &v21;
    [v4 setOutputBlock:v13];
    [(SSVOperation *)self runChildOperation:v4];
    if (v22[5])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v4 URLResponse];
      if ([v7 statusCode] < 200 || objc_msgSend(v7, "statusCode") > 299)
      {
        if ([v7 statusCode] == 403)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:v8 userInfo:0];
        v10 = v22[5];
        v22[5] = v9;

        v6 = 0;
      }

      else
      {
        v6 = [(SUUIMediaSocialSaveProfilePhotoOperation *)self _photoUploadWithResponseDictionary:v15[5]];
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = 0;
  }

  v11 = [(SUUIMediaSocialSaveProfilePhotoOperation *)self outputBlock];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v6, v22[5]);
  }

  _Block_object_dispose(&v21, 8);
}

void __48__SUUIMediaSocialSaveProfilePhotoOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 32;
    v7 = v11;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

LABEL_6:
}

- (id)_photoUploadWithResponseDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SUUIMediaSocialPhotoUpload alloc] initWithUploadDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_requestWithError:(id *)a3
{
  v5 = [(SUUIClientContext *)self->_clientContext URLBag];
  v6 = [v5 valueForKey:@"directUploaderRichPostImage" error:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_photo)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      v8 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v7];
      [v8 setHTTPMethod:@"POST"];
      [v8 setValue:@"image/jpeg" forHTTPHeaderField:@"Content-Type"];
      v9 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v9 UUIDString];

      v11 = [v10 stringByAppendingPathExtension:@"jpg"];

      [v8 setValue:v11 forHTTPHeaderField:@"X-Original-Filename"];
      v12 = UIImageJPEGRepresentation(self->_photo, 0.8);
      [v8 setHTTPBody:v12];
      SSVAddMediaSocialHeadersToURLRequest();

      goto LABEL_10;
    }

    if (a3)
    {
      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SUUIErrorDomain" code:4 userInfo:0];
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    v13 = SSError();
LABEL_8:
    v8 = 0;
    *a3 = v13;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end