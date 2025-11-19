@interface SUUIMediaSocialSuggestedHandlesOperation
- (NSArray)words;
- (SUUIMediaSocialSuggestedHandlesOperation)initWithClientContext:(id)a3;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)a3;
- (void)setWords:(id)a3;
@end

@implementation SUUIMediaSocialSuggestedHandlesOperation

- (SUUIMediaSocialSuggestedHandlesOperation)initWithClientContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SUUIMediaSocialSuggestedHandlesOperation;
  v6 = [(SSVOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v7->_lock;
    v7->_lock = v8;

    [(NSLock *)v7->_lock setName:@"com.apple.MediaSocial.suggestedHandles"];
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

- (NSArray)words
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSArray *)self->_words copy];
  [(NSLock *)self->_lock unlock];

  return v3;
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

- (void)setWords:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_words != v6)
  {
    v4 = [(NSArray *)v6 copy];
    words = self->_words;
    self->_words = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__68;
  v45 = __Block_byref_object_dispose__68;
  v46 = 0;
  v3 = [(SUUIClientContext *)self->_clientContext URLBag];
  v4 = *MEMORY[0x277D6A670];
  v5 = (v42 + 5);
  obj = v42[5];
  v6 = [v3 valueForKey:v4 error:&obj];
  objc_storeStrong(v5, obj);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"suggestedHandles"];
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc(MEMORY[0x277CCACE0]);
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v10 = [v8 initWithURL:v9 resolvingAgainstBaseURL:0];

    v11 = [(SUUIMediaSocialSuggestedHandlesOperation *)self words];
    v12 = [v11 componentsJoinedByString:{@", "}];

    v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"words" value:v12];
    v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v13, 0}];
    [v10 setQueryItems:v14];
    v15 = objc_alloc(MEMORY[0x277CBAB50]);
    v16 = [v10 URL];
    v17 = [v15 initWithURL:v16];

    SSVAddMediaSocialHeadersToURLRequest();
    v18 = [(SSVComplexOperation *)self newLoadURLOperationWithRequest:v17];
    v19 = [MEMORY[0x277D69D48] consumer];
    [v18 setDataConsumer:v19];
    v32 = v13;

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__68;
    v38 = __Block_byref_object_dispose__68;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __48__SUUIMediaSocialSuggestedHandlesOperation_main__block_invoke;
    v33[3] = &unk_2798F8158;
    v33[4] = &v34;
    v33[5] = &v41;
    [v18 setOutputBlock:v33];
    [(SSVOperation *)self runChildOperation:v18];
    v20 = v12;
    v21 = v35[5];
    if (v21)
    {
      v22 = [v21 objectForKey:@"status"];
      v23 = v22;
      if (v22 && [v22 isEqualToString:@"success"])
      {
        v24 = [v35[5] objectForKey:@"suggestions"];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    if (!(v42[5] | v24))
    {
      v26 = [v18 URLResponse];
      if ([v26 statusCode] == 403)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:v27 userInfo:0];
      v29 = v42[5];
      v42[5] = v28;
    }

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v25 = SSError();
    v24 = 0;
    v10 = v42[5];
    v42[5] = v25;
  }

  v30 = [(SUUIMediaSocialSuggestedHandlesOperation *)self outputBlock];
  v31 = v30;
  if (v30)
  {
    (*(v30 + 16))(v30, v24, v42[5]);
  }

  _Block_object_dispose(&v41, 8);
}

void __48__SUUIMediaSocialSuggestedHandlesOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
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

@end