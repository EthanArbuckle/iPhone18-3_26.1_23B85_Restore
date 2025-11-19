@interface SFStartPageBackgroundImageModel
- (BOOL)isEqual:(id)a3;
- (SFStartPageBackgroundImageModel)initWithIndex:(int64_t)a3 inDataSource:(id)a4 selected:(BOOL)a5;
- (SFStartPageBackgroundImageModel)initWithItemProvider:(id)a3;
- (SFStartPageBackgroundImageModel)initWithItemProvider:(id)a3 fileName:(id)a4 selected:(BOOL)a5;
- (SFStartPageBackgroundImageModel)initWithItemProvider:(id)a3 symbolName:(id)a4 profileIdentifier:(id)a5 selected:(BOOL)a6;
- (id)description;
- (unint64_t)hash;
- (void)getThumbnailImageWithCompletionHandler:(id)a3;
@end

@implementation SFStartPageBackgroundImageModel

- (SFStartPageBackgroundImageModel)initWithItemProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFStartPageBackgroundImageModel;
  v6 = [(SFStartPageBackgroundImageModel *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemProvider, a3);
    v7->_selected = v5 != 0;
    v8 = v7;
  }

  return v7;
}

- (SFStartPageBackgroundImageModel)initWithItemProvider:(id)a3 symbolName:(id)a4 profileIdentifier:(id)a5 selected:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = SFStartPageBackgroundImageModel;
  v14 = [(SFStartPageBackgroundImageModel *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemProvider, a3);
    v15->_selected = a6;
    objc_storeStrong(&v15->_symbolName, a4);
    objc_storeStrong(&v15->_profileIdentifier, a5);
    v16 = v15;
  }

  return v15;
}

- (SFStartPageBackgroundImageModel)initWithItemProvider:(id)a3 fileName:(id)a4 selected:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = SFStartPageBackgroundImageModel;
  v11 = [(SFStartPageBackgroundImageModel *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemProvider, a3);
    v12->_selected = a5;
    v13 = [v10 copy];
    mobileAssetFileName = v12->_mobileAssetFileName;
    v12->_mobileAssetFileName = v13;

    v15 = v12;
  }

  return v12;
}

- (SFStartPageBackgroundImageModel)initWithIndex:(int64_t)a3 inDataSource:(id)a4 selected:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SFStartPageBackgroundImageModel;
  v10 = [(SFStartPageBackgroundImageModel *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dataSource, a4);
    v11->_index = a3;
    v11->_selected = a5;
    v12 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_itemProvider)
  {
    [v3 appendFormat:@"itemProvider = %@", self->_itemProvider];
  }

  else if (self->_dataSource)
  {
    [v3 appendFormat:@"dataSource = %@; index = %zd", self->_dataSource, self->_index];
  }

  else
  {
    [v3 appendFormat:@"no-content"];
  }

  if ([(SFStartPageBackgroundImageModel *)self isCustomImage])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_selected)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v5;
  [v4 appendFormat:@"; isCustom = %@; isSelected = %@>", v7, v6];

  return v4;
}

- (void)getThumbnailImageWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_itemProvider;
  v6 = v5;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E721D2D0;
    v14 = v5;
    v15 = v4;
    [(NSItemProvider *)v14 loadPreviewImageWithOptions:0 completionHandler:v13];

    v7 = v14;
  }

  else
  {
    dataSource = self->_dataSource;
    if (!dataSource)
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
      (*(v4 + 2))(v4, v10, 1);

      goto LABEL_6;
    }

    index = self->_index;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke_5;
    v11[3] = &unk_1E721D2F8;
    v12 = v4;
    [(WBSStartPageBackgroundImagesDataSource *)dataSource imageThumbnailWithItemIndex:index completion:v11];
    v7 = v12;
  }

LABEL_6:
}

void __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke_4;
    block[3] = &unk_1E721D280;
    v9 = &v15;
    v15 = *(a1 + 40);
    v14 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E721D2A8;
    v17 = *(a1 + 40);
    v12 = [v10 loadObjectOfClass:v11 completionHandler:v16];
    v9 = &v17;
  }
}

void __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E721D280;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __74__SFStartPageBackgroundImageModel_getThumbnailImageWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v3, "CGImage")}];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self->_dataSource == *(v5 + 1) && self->_index == *(v5 + 2) && self->_itemProvider == *(v5 + 3) && self->_selected == v5[32] && WBSIsEqual() && WBSIsEqual())
    {
      v7 = WBSIsEqual();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(WBSStartPageBackgroundImagesDataSource *)self->_dataSource hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_index];
  v5 = [v4 hash];
  v6 = [(NSItemProvider *)self->_itemProvider hash];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_selected];
  v8 = v5 ^ v3;
  v9 = v6 ^ [v7 hash];

  return v8 ^ v9;
}

@end