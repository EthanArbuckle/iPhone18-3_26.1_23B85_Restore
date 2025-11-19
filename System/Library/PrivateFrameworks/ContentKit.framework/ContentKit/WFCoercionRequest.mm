@interface WFCoercionRequest
+ (id)_requestForCoercingToContentClasses:(id)a3 itemCompletionHandler:(id)a4;
+ (id)requestForCoercingToContentClasses:(id)a3 completionHandler:(id)a4;
+ (id)requestForCoercingToFileType:(id)a3 completionHandler:(id)a4;
+ (id)requestForCoercingToObjectClass:(Class)a3 completionHandler:(id)a4;
- (WFCoercionOptions)options;
- (id)contentCollectionResultHandler;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fileRepresentationResultHandler;
- (id)objectRepresentationResultHandler;
- (void)completeContentItemCoercionRequestWithResultItems:(id)a3 originalItem:(id)a4 error:(id)a5;
@end

@implementation WFCoercionRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v4[6] = [(WFCoercionRequest *)self requestType];
  v5 = [(objc_class *)[(WFCoercionRequest *)self objectClass] copy];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(WFCoercionRequest *)self objectRepresentationResultHandler];
  v8 = [v7 copy];
  v9 = v4[1];
  v4[1] = v8;

  v10 = [(WFCoercionRequest *)self fileType];
  v11 = v4[8];
  v4[8] = v10;

  v12 = [(WFCoercionRequest *)self fileRepresentationResultHandler];
  v13 = [v12 copy];
  v14 = v4[2];
  v4[2] = v13;

  v15 = [(WFCoercionRequest *)self contentItemClasses];
  v16 = [v15 copy];
  v17 = v4[9];
  v4[9] = v16;

  v18 = [(WFCoercionRequest *)self contentCollectionResultHandler];
  v19 = [v18 copy];
  v20 = v4[4];
  v4[4] = v19;

  v21 = [(WFCoercionRequest *)self contentItemsCompletionHandler];
  v22 = [v21 copy];
  v23 = v4[3];
  v4[3] = v22;

  v24 = [(WFCoercionRequest *)self options];
  v25 = [v24 copy];
  v26 = v4[5];
  v4[5] = v25;

  return v4;
}

- (void)completeContentItemCoercionRequestWithResultItems:(id)a3 originalItem:(id)a4 error:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFCoercionRequest.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"originalItem"}];
  }

  contentItemsCompletionHandler = self->_contentItemsCompletionHandler;
  if (contentItemsCompletionHandler)
  {
    contentItemsCompletionHandler[2](contentItemsCompletionHandler, v9, v11);
  }

  else if (self->_contentCollectionResultHandler)
  {
    if (v9)
    {
      v13 = [WFContentCollection collectionWithItems:v9];
    }

    else
    {
      v13 = 0;
    }

    if ([v9 count])
    {
      v14 = objc_opt_new();
    }

    else
    {
      v17[0] = v10;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v14 = [WFContentCollection collectionWithItems:v15];
    }

    (*(self->_contentCollectionResultHandler + 2))();
  }
}

- (id)contentCollectionResultHandler
{
  contentCollectionResultHandler = self->_contentCollectionResultHandler;
  if (contentCollectionResultHandler)
  {
    v4 = _Block_copy(contentCollectionResultHandler);
  }

  else
  {
    v5 = _Block_copy(self->_contentItemsCompletionHandler);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__WFCoercionRequest_contentCollectionResultHandler__block_invoke;
    aBlock[3] = &unk_2783455F0;
    v9 = v5;
    v6 = v5;
    v4 = _Block_copy(aBlock);
  }

  return v4;
}

void __51__WFCoercionRequest_contentCollectionResultHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    v7 = [a2 items];
    (*(v4 + 16))(v4, v7, v6);
  }
}

- (id)objectRepresentationResultHandler
{
  if (self->_objectRepresentationResultHandler)
  {
    objectRepresentationResultHandler = self->_objectRepresentationResultHandler;
  }

  else
  {
    objectRepresentationResultHandler = &__block_literal_global_173;
  }

  v3 = _Block_copy(objectRepresentationResultHandler);

  return v3;
}

- (id)fileRepresentationResultHandler
{
  if (self->_fileRepresentationResultHandler)
  {
    fileRepresentationResultHandler = self->_fileRepresentationResultHandler;
  }

  else
  {
    fileRepresentationResultHandler = &__block_literal_global_3367;
  }

  v3 = _Block_copy(fileRepresentationResultHandler);

  return v3;
}

- (WFCoercionOptions)options
{
  options = self->_options;
  if (!options)
  {
    v4 = +[WFCoercionOptions new];
    v5 = self->_options;
    self->_options = v4;

    options = self->_options;
  }

  return options;
}

+ (id)_requestForCoercingToContentClasses:(id)a3 itemCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"WFCoercionRequest.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"contentItemClasses"}];
  }

  v9 = objc_opt_new();
  v10 = v9;
  if (v9)
  {
    *(v9 + 48) = 2;
    v11 = [v8 copy];
    v12 = v10[3];
    v10[3] = v11;

    v13 = [v7 copy];
    v14 = v10[9];
    v10[9] = v13;

    v15 = v10;
  }

  return v10;
}

+ (id)requestForCoercingToContentClasses:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"WFCoercionRequest.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"contentItemClasses"}];
  }

  v9 = objc_opt_new();
  v10 = v9;
  if (v9)
  {
    *(v9 + 48) = 2;
    v11 = [v8 copy];
    v12 = v10[4];
    v10[4] = v11;

    v13 = [v7 copy];
    v14 = v10[9];
    v10[9] = v13;

    v15 = v10;
  }

  return v10;
}

+ (id)requestForCoercingToFileType:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    *(v8 + 48) = 1;
    v10 = [v7 copy];
    v11 = *(v9 + 16);
    *(v9 + 16) = v10;

    objc_storeStrong((v9 + 64), a3);
    v12 = v9;
  }

  return v9;
}

+ (id)requestForCoercingToObjectClass:(Class)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    *(v6 + 48) = 0;
    v8 = [v5 copy];
    v9 = *(v7 + 8);
    *(v7 + 8) = v8;

    objc_storeStrong((v7 + 56), a3);
    v10 = v7;
  }

  return v7;
}

@end