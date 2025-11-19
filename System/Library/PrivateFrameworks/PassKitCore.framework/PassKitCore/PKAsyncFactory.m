@interface PKAsyncFactory
+ (id)createObjectWithOperation:(id)a3 completion:(id)a4;
@end

@implementation PKAsyncFactory

+ (id)createObjectWithOperation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__PKAsyncFactory_createObjectWithOperation_completion___block_invoke;
      v14[3] = &unk_1E79CBA40;
      v15 = v5;
      [(PKAsyncUnaryOperationComposer *)v8 addOperation:v14];
      v9 = objc_alloc_init(PKAsyncFactoryOperationContainer);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__PKAsyncFactory_createObjectWithOperation_completion___block_invoke_3;
      v12[3] = &unk_1E79CBA68;
      v13 = v7;
      v10 = [(PKAsyncUnaryOperationComposer *)v8 evaluateWithInput:v9 completion:v12];

      goto LABEL_6;
    }

    (*(v6 + 2))(v6, 0, 0, 0);
  }

  v10 = 0;
LABEL_6:

  return v10;
}

void __55__PKAsyncFactory_createObjectWithOperation_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PKAsyncFactory_createObjectWithOperation_completion___block_invoke_2;
  v13[3] = &unk_1E79CBA18;
  v14 = v7;
  v15 = v8;
  v10 = *(v9 + 16);
  v11 = v8;
  v12 = v7;
  v10(v9, a2, v13);
}

uint64_t __55__PKAsyncFactory_createObjectWithOperation_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __55__PKAsyncFactory_createObjectWithOperation_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [a3 object];
  (*(v6 + 16))(v6, a2, v8, v7);
}

@end