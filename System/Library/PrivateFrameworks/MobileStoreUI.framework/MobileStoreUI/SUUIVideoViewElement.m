@interface SUUIVideoViewElement
- (BOOL)isEnabled;
- (NSArray)assets;
- (SUUIImageViewElement)thumbnailImage;
- (SUUIVideoViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIVideoViewElement

- (SUUIVideoViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a5;
  v36.receiver = self;
  v36.super_class = SUUIVideoViewElement;
  v10 = [(SUUIViewElement *)&v36 initWithDOMElement:v8 parent:a4 elementFactory:v9];
  if (!v10)
  {
    goto LABEL_31;
  }

  v35 = [v8 getAttribute:@"playback"];
  if ([v35 isEqualToString:@"inline"])
  {
    v10->_playbackStyle = 1;
  }

  v34 = [(SUUIViewElement *)v10 firstChildForElementType:49];
  if (!v34)
  {
    v11 = objc_opt_class();
    [v11 registerClass:objc_opt_class() forElementName:@"video" elementType:49];
    v12 = [[SUUIImageViewElement alloc] initWithDOMElement:v8 parent:v10 elementFactory:v9];
    thumbnailImage = v10->_thumbnailImage;
    v10->_thumbnailImage = v12;

    v14 = [(SUUIImageViewElement *)v10->_thumbnailImage URL];

    if (!v14)
    {
      v15 = v10->_thumbnailImage;
      v10->_thumbnailImage = 0;
    }

    v16 = objc_opt_class();
    [v16 registerClass:objc_opt_class() forElementName:@"video" elementType:152];
  }

  v17 = [v8 getAttribute:@"disabled"];
  if ([v17 length])
  {
    v18 = [v17 BOOLValue] ^ 1;
  }

  else
  {
    v18 = -1;
  }

  v33 = v17;
  v10->_enabled = v18;
  v19 = [v8 getAttribute:@"data-content-id"];
  if ([v19 length])
  {
    v10->_itemIdentifier = [v19 longLongValue];
  }

  v20 = [v8 getAttribute:@"data-metrics"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
    v22 = v21;
    if (v21)
    {
      v23 = MEMORY[0x277CCAAA0];
      v24 = [v21 dataUsingEncoding:4];
      v25 = [v23 JSONObjectWithData:v24 options:0 error:0];

      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0;
  }

  v25 = 0;
LABEL_18:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = 0;
    goto LABEL_22;
  }

  v26 = v25;
  v27 = v26;
  if (!v26)
  {
LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

  v28 = [v26 objectForKey:@"kind"];
LABEL_23:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if ([v29 isEqualToString:@"movie"])
  {
    v30 = 1;
  }

  else
  {
    v31 = [v29 isEqualToString:@"tvEpisode"];
    v30 = 2;
    if (!v31)
    {
      v30 = 0;
    }
  }

  v10->_kind = v30;

LABEL_31:
  return v10;
}

- (NSArray)assets
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SUUIVideoViewElement_assets__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __30__SUUIVideoViewElement_assets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 5)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SUUIImageViewElement)thumbnailImage
{
  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    v3 = thumbnailImage;
  }

  else
  {
    v3 = [(SUUIViewElement *)self firstChildForElementType:49];
  }

  return v3;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIVideoViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_enabled = v4->_enabled;
    self->_itemIdentifier = [(SUUIVideoViewElement *)v4 itemIdentifier];
    self->_playbackStyle = [(SUUIVideoViewElement *)v4 playbackStyle];
    objc_storeStrong(&self->_thumbnailImage, v4->_thumbnailImage);
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SUUIVideoViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

@end