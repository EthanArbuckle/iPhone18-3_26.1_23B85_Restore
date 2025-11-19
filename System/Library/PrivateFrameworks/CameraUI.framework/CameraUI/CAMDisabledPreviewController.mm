@interface CAMDisabledPreviewController
- (BOOL)isPreviewDisabled;
- (CAMDisabledPreviewController)init;
- (CAMDisabledPreviewControllerDelegate)delegate;
- (id)_descriptionForReasons:(id)a3;
- (id)_descriptionStringForReason:(int64_t)a3;
- (void)addDisabledPreviewReason:(int64_t)a3;
- (void)removeDisabledPreviewReason:(int64_t)a3;
@end

@implementation CAMDisabledPreviewController

- (CAMDisabledPreviewController)init
{
  v7.receiver = self;
  v7.super_class = CAMDisabledPreviewController;
  v2 = [(CAMDisabledPreviewController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    reasonsForDisablingPreview = v2->__reasonsForDisablingPreview;
    v2->__reasonsForDisablingPreview = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isPreviewDisabled
{
  v2 = [(CAMDisabledPreviewController *)self _reasonsForDisablingPreview];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)addDisabledPreviewReason:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(CAMDisabledPreviewController *)self _reasonsForDisablingPreview];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 addObject:v7];

  v8 = [v5 count];
  if (v6 || !v8)
  {
    if (v6 == v8)
    {
      goto LABEL_8;
    }

    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CAMDisabledPreviewController *)self _descriptionStringForReason:a3];
      v13 = [(CAMDisabledPreviewController *)self _descriptionForReasons:v5];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Added disabled preview reason %{public}@: %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMDisabledPreviewController *)self _descriptionStringForReason:a3];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Disabled preview for reason %{public}@", &v14, 0xCu);
    }

    v11 = [(CAMDisabledPreviewController *)self delegate];
    [v11 disabledPreviewController:self wantsPreviewDisabledForReason:a3];
  }

LABEL_8:
}

- (void)removeDisabledPreviewReason:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(CAMDisabledPreviewController *)self _reasonsForDisablingPreview];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 removeObject:v7];

  v8 = [v5 count];
  if (!v6 || v8)
  {
    if (v6 == v8)
    {
      goto LABEL_8;
    }

    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CAMDisabledPreviewController *)self _descriptionStringForReason:a3];
      v13 = [(CAMDisabledPreviewController *)self _descriptionForReasons:v5];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Removed disabled preview reason %{public}@: %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMDisabledPreviewController *)self _descriptionStringForReason:a3];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Enabling disabled preview for final reason %{public}@", &v14, 0xCu);
    }

    v11 = [(CAMDisabledPreviewController *)self delegate];
    [v11 disabledPreviewController:self wantsPreviewEnabledForReason:a3];
  }

LABEL_8:
}

- (id)_descriptionStringForReason:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76FB288[a3];
  }
}

- (id)_descriptionForReasons:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__CAMDisabledPreviewController__descriptionForReasons___block_invoke;
    v21[3] = &unk_1E76FA878;
    v22 = v5;
    v23 = self;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v21];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_27];

    v9 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __55__CAMDisabledPreviewController__descriptionForReasons___block_invoke_3;
    v18 = &unk_1E76FA8C0;
    v10 = v9;
    v19 = v10;
    v20 = v8;
    v11 = v8;
    [v11 enumerateObjectsUsingBlock:&v15];
    [v10 appendString:@""], v15, v16, v17, v18);
    v12 = v20;
    v13 = v10;
  }

  else
  {
    v13 = &stru_1F1660A30;
  }

  return v13;
}

void __55__CAMDisabledPreviewController__descriptionForReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _descriptionStringForReason:v3];
  [v4 addObject:v5];
}

uint64_t __55__CAMDisabledPreviewController__descriptionForReasons___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) appendString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 > a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:{@", "}];
  }

  return result;
}

- (CAMDisabledPreviewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end