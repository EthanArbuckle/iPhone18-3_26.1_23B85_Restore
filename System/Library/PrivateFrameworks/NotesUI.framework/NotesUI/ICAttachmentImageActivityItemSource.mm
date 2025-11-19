@interface ICAttachmentImageActivityItemSource
- (id)_resolveItemProvider;
@end

@implementation ICAttachmentImageActivityItemSource

- (id)_resolveItemProvider
{
  itemProvider = self->_itemProvider;
  if (!itemProvider)
  {
    v4 = [(ICAttachmentActivityItemSource *)self attachment];
    v5 = [v4 ic_permanentObjectID];

    v6 = [MEMORY[0x1E69B7800] sharedContext];
    v7 = [v6 workerManagedObjectContext];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke;
    aBlock[3] = &unk_1E846D1B0;
    v8 = v7;
    v36 = v8;
    v9 = v5;
    v37 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(ICAttachmentActivityItemSource *)self attachmentTypeUTI];
    v12 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v13 = [(ICAttachmentActivityItemSource *)self attachment];
    v14 = [v13 isPasswordProtected];

    if (v14)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_3;
      v33[3] = &unk_1E846D200;
      v15 = &v34;
      v34 = v10;
      [(NSItemProvider *)v12 registerDataRepresentationForTypeIdentifier:v11 visibility:0 loadHandler:v33];
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_5;
      v31[3] = &unk_1E846D228;
      v15 = &v32;
      v16 = v10;
      v32 = v16;
      [(NSItemProvider *)v12 registerFileRepresentationForTypeIdentifier:v11 fileOptions:0 visibility:0 loadHandler:v31];
      v17 = [*MEMORY[0x1E6982DB8] identifier];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_7;
      v29[3] = &unk_1E846D250;
      v30 = v16;
      [(NSItemProvider *)v12 registerItemForTypeIdentifier:v17 loadHandler:v29];
    }

    v18 = [*MEMORY[0x1E6982D60] identifier];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_9;
    v27[3] = &unk_1E846D250;
    v19 = v10;
    v28 = v19;
    [(NSItemProvider *)v12 registerItemForTypeIdentifier:v18 loadHandler:v27];

    v20 = objc_opt_class();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_11;
    v25[3] = &unk_1E846D278;
    v26 = v19;
    v21 = v19;
    [(NSItemProvider *)v12 registerObjectOfClass:v20 visibility:0 loadHandler:v25];
    v22 = self->_itemProvider;
    self->_itemProvider = v12;
    v23 = v12;

    itemProvider = self->_itemProvider;
  }

  return itemProvider;
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_2;
  v6[3] = &unk_1E846BA48;
  v7 = v4;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v7 performBlock:v6];
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v3 = ICDynamicCast();

  (*(*(a1 + 48) + 16))();
}

uint64_t __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_4;
  v8[3] = &unk_1E846D1D8;
  v9 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8);

  return 0;
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 media];
  v3 = [v4 data];
  (*(v2 + 16))(v2, v3, 0);
}

uint64_t __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_6;
  v8[3] = &unk_1E846D1D8;
  v9 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8);

  return 0;
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 media];
  v3 = [v4 mediaURL];
  (*(v2 + 16))(v2, v3, 0, 0);
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_8;
  v7[3] = &unk_1E846D1D8;
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 media];
  v3 = [v4 mediaURL];
  (*(v2 + 16))(v2, v3, 0);
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_10;
  v7[3] = &unk_1E846D1D8;
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 media];
  v3 = [v4 data];
  (*(v2 + 16))(v2, v3, 0);
}

uint64_t __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_12;
  v8[3] = &unk_1E846D1D8;
  v9 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8);

  return 0;
}

void __59__ICAttachmentImageActivityItemSource__resolveItemProvider__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isPasswordProtected];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E69DCAB8];
  v10 = [v3 media];

  if (v4)
  {
    v7 = [v10 data];
    v8 = [v6 imageWithData:v7];
    (*(v5 + 16))(v5, v8, 0);
  }

  else
  {
    v7 = [v10 mediaURL];
    v8 = [v7 path];
    v9 = [v6 imageWithContentsOfFile:v8];
    (*(v5 + 16))(v5, v9, 0);
  }
}

@end