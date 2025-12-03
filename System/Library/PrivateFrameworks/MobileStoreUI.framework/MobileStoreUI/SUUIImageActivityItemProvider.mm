@interface SUUIImageActivityItemProvider
+ (id)placeholderItem;
- (id)item;
@end

@implementation SUUIImageActivityItemProvider

+ (id)placeholderItem
{
  v2 = objc_alloc_init(MEMORY[0x277D755B8]);

  return v2;
}

- (id)item
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__88;
  v17 = __Block_byref_object_dispose__88;
  v18 = 0;
  activityType = [(UIActivityItemProvider *)self activityType];
  if ([MEMORY[0x277D546D0] activityTypeShouldProvideImage:activityType])
  {
    productPageItem = [(SUUIDeferredActivityItemProvider *)self productPageItem];
    artworksProvider = [productPageItem artworksProvider];
    v6 = [artworksProvider bestArtworkForScaledSize:{100.0, 100.0}];
    v7 = [v6 URL];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v7];
      v9 = +[SUUIStyledImageDataConsumer shareSheetIconConsumer];
      [v8 setDataConsumer:v9];

      [v8 setITunesStoreRequest:0];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __37__SUUIImageActivityItemProvider_item__block_invoke;
      v12[3] = &unk_2798F6580;
      v12[4] = &v13;
      [v8 setOutputBlock:v12];
      [v8 main];
    }
  }

  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

@end