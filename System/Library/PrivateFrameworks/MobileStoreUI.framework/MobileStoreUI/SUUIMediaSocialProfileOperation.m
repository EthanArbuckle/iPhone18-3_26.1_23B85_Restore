@interface SUUIMediaSocialProfileOperation
- (SUUIMediaSocialProfileOperation)init;
- (SUUIMediaSocialProfileOperation)initWithClientContext:(id)a3;
- (id)_profileWithResponseDictionary:(id)a3;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)a3;
@end

@implementation SUUIMediaSocialProfileOperation

- (SUUIMediaSocialProfileOperation)init
{
  v6.receiver = self;
  v6.super_class = SUUIMediaSocialProfileOperation;
  v2 = [(SSVOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSLock *)v2->_lock setName:@"com.apple.MediaSocial.profile"];
  }

  return v2;
}

- (SUUIMediaSocialProfileOperation)initWithClientContext:(id)a3
{
  v4 = a3;
  v5 = [(SUUIMediaSocialProfileOperation *)self init];
  if (v5)
  {
    v6 = [v4 URLBag];
    [(SSVComplexOperation *)v5 configureWithURLBag:v6];
  }

  return v5;
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

- (void)main
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__106;
  v41 = __Block_byref_object_dispose__106;
  v42 = 0;
  v3 = [(SSVComplexOperation *)self URLBagDictionary];
  v4 = [v3 objectForKey:*MEMORY[0x277D6A670]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"userProfile"];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc(MEMORY[0x277CCACE0]);
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:0];

    v9 = [MEMORY[0x277D69A20] defaultStore];
    v10 = [v9 activeAccount];

    v11 = objc_alloc(MEMORY[0x277CCAD18]);
    v12 = [v10 uniqueIdentifier];
    v13 = [v12 stringValue];
    v14 = [v11 initWithName:@"user" value:v13];
    v29 = v10;

    v15 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v14, 0}];
    [v8 setQueryItems:v15];
    v16 = objc_alloc(MEMORY[0x277CBAB50]);
    v17 = [v8 URL];
    v18 = [v16 initWithURL:v17];

    SSVAddMediaSocialHeadersToURLRequest();
    v19 = [(SSVComplexOperation *)self newLoadURLOperationWithRequest:v18];
    v20 = [MEMORY[0x277D69D48] consumer];
    [v19 setDataConsumer:v20];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__106;
    v35 = __Block_byref_object_dispose__106;
    v36 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__SUUIMediaSocialProfileOperation_main__block_invoke;
    v30[3] = &unk_2798F8158;
    v30[4] = &v31;
    v30[5] = &v37;
    [v19 setOutputBlock:v30];
    [(SSVOperation *)self runChildOperation:v19];
    if (v32[5])
    {
      v21 = [(SUUIMediaSocialProfileOperation *)self _profileWithResponseDictionary:?];
    }

    else
    {
      v21 = 0;
    }

    if (!(v38[5] | v21))
    {
      v23 = [v19 URLResponse];
      if ([v23 statusCode] == 403)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:v24 userInfo:0];
      v26 = v38[5];
      v38[5] = v25;
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v22 = SSError();
    v21 = 0;
    v8 = v38[5];
    v38[5] = v22;
  }

  v27 = [(SUUIMediaSocialProfileOperation *)self outputBlock];
  v28 = v27;
  if (v27)
  {
    (*(v27 + 16))(v27, v21, v38[5]);
  }

  _Block_object_dispose(&v37, 8);
}

void __39__SUUIMediaSocialProfileOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v11;
LABEL_5:
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_6;
  }

  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    goto LABEL_5;
  }

  v9 = SSError();
  v10 = *(*(a1 + 40) + 8);
  v8 = *(v10 + 40);
  *(v10 + 40) = v9;
LABEL_6:
}

- (id)_profileWithResponseDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"profile"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SUUIMediaSocialProfile alloc] initWithProfileDictionary:v3];
    v5 = [v3 objectForKey:@"backgroundImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x277D69B48]) initWithLookupDictionary:v5];
      v7 = [v6 URLWithHeight:objc_msgSend(v6 width:{"height"), objc_msgSend(v6, "width")}];
      [(SUUIMediaSocialProfile *)v4 setBackgroundImageURL:v7];
    }

    v8 = [v3 objectForKey:@"profileImage"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x277D69B48]) initWithLookupDictionary:v8];
      v10 = [v9 URLWithHeight:objc_msgSend(v9 width:{"height"), objc_msgSend(v9, "width")}];
      [(SUUIMediaSocialProfile *)v4 setProfileImageURL:v10];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end