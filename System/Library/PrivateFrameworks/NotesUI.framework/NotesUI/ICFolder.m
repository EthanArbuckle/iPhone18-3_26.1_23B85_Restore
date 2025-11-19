@interface ICFolder
@end

@implementation ICFolder

uint64_t __47__ICFolder_UI__foldersWithHashtagAsOnlyFilter___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 smartFolderQuery];
  v5 = [v3 managedObjectContext];

  v6 = [v4 tagSelectionWithManagedObjectContext:v5];

  v7 = [v6 tagIdentifiers];
  v8 = [*(a1 + 32) standardizedContent];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v7 isEqual:v9];

  return v10;
}

void __42__ICFolder_UI__navigationBarIconWithSize___block_invoke(uint64_t a1)
{
  v15 = [objc_opt_class() defaultNavigationBarIcon];
  [v15 drawInRect:0 blendMode:0.0 alpha:{0.0, *(a1 + 40), *(a1 + 48), 1.0}];
  v2 = [*(a1 + 32) navigationBarIconOverlaySystemImage];
  v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v4 = [v2 imageWithTintColor:v3];

  v5 = *(a1 + 40);
  [v4 size];
  *&v6 = (v5 - v6) * 0.5;
  v7 = roundf(*&v6);
  v8 = *(a1 + 48);
  [v4 size];
  v10 = v8 - v9 + *(a1 + 48) / -5.0;
  v11 = roundf(v10);
  [v4 size];
  v13 = v12;
  [v4 size];
  [v4 drawInRect:26 blendMode:v7 alpha:{v11, v13, v14, 1.0}];
}

@end