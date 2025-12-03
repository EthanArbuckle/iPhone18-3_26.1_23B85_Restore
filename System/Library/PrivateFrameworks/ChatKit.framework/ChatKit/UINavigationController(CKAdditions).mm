@interface UINavigationController(CKAdditions)
- (id)__ck_popToRootViewControllerAnimated:()CKAdditions completion:;
- (id)__ck_popToViewController:()CKAdditions animated:completion:;
- (id)__ck_popViewControllerAnimated:()CKAdditions completion:;
- (void)__ck_callDelegateBlocks;
- (void)__ck_enqueueCompletionBlock:()CKAdditions;
- (void)__ck_pushViewController:()CKAdditions animated:completion:;
@end

@implementation UINavigationController(CKAdditions)

- (void)__ck_callDelegateBlocks
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, &key);
  objc_setAssociatedObject(self, &key, 0, 0x301);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)__ck_enqueueCompletionBlock:()CKAdditions
{
  v5 = a3;
  if (v5)
  {
    aBlock = v5;
    delegate = [self delegate];

    if (!delegate)
    {
      [(UINavigationController(CKAdditions) *)a2 __ck_enqueueCompletionBlock:self];
    }

    array = objc_getAssociatedObject(self, &key);
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      objc_setAssociatedObject(self, &key, array, 0x301);
    }

    v8 = _Block_copy(aBlock);
    [array addObject:v8];

    v5 = aBlock;
  }
}

- (void)__ck_pushViewController:()CKAdditions animated:completion:
{
  v8 = a3;
  [self __ck_enqueueCompletionBlock:a5];
  [self pushViewController:v8 animated:a4];
}

- (id)__ck_popViewControllerAnimated:()CKAdditions completion:
{
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __81__UINavigationController_CKAdditions____ck_popViewControllerAnimated_completion___block_invoke;
  v15 = &unk_1E72F7950;
  v17 = &v18;
  v7 = v6;
  v16 = v7;
  v8 = _Block_copy(&v12);
  [self __ck_enqueueCompletionBlock:{v8, v12, v13, v14, v15}];
  v9 = [self popViewControllerAnimated:a3];
  v10 = v9;
  *(v19 + 24) = v9 != 0;
  if (v7 && !v9)
  {
    v7[2](v7);
  }

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)__ck_popToViewController:()CKAdditions animated:completion:
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __84__UINavigationController_CKAdditions____ck_popToViewController_animated_completion___block_invoke;
  v18 = &unk_1E72F7950;
  v20 = &v21;
  v10 = v9;
  v19 = v10;
  v11 = _Block_copy(&v15);
  [self __ck_enqueueCompletionBlock:{v11, v15, v16, v17, v18}];
  v12 = [self popToViewController:v8 animated:a4];
  v13 = [v12 count];
  *(v22 + 24) = v13 != 0;
  if (v10 && !v13)
  {
    v10[2](v10);
  }

  _Block_object_dispose(&v21, 8);

  return v12;
}

- (id)__ck_popToRootViewControllerAnimated:()CKAdditions completion:
{
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __87__UINavigationController_CKAdditions____ck_popToRootViewControllerAnimated_completion___block_invoke;
  v15 = &unk_1E72F7950;
  v17 = &v18;
  v7 = v6;
  v16 = v7;
  v8 = _Block_copy(&v12);
  [self __ck_enqueueCompletionBlock:{v8, v12, v13, v14, v15}];
  v9 = [self popToRootViewControllerAnimated:a3];
  v10 = [v9 count];
  *(v19 + 24) = v10 != 0;
  if (v7 && !v10)
  {
    v7[2](v7);
  }

  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)__ck_enqueueCompletionBlock:()CKAdditions .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"UINavigationController_CKAdditions.m" lineNumber:18 description:{@"Calling %@ on a navigation controller with no delegate is incorrect usage.", v4}];
}

@end