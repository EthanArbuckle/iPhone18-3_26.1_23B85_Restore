@interface SUUIWriteAReviewTemplateViewElement
- (NSString)reviewMetadataURLString;
- (SUUIWriteAReviewTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIWriteAReviewTemplateViewElement

- (SUUIWriteAReviewTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUIWriteAReviewTemplateViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"data-content-id"];
    v9->_itemIdentifier = [v10 longLongValue];

    v11 = [v8 getAttribute:@"src"];
    reviewMetadataURLString = v9->_reviewMetadataURLString;
    v9->_reviewMetadataURLString = v11;
  }

  return v9;
}

- (NSString)reviewMetadataURLString
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = self->_reviewMetadataURLString;
  if (self->_itemIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x277D69C68]);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__72;
    v25 = __Block_byref_object_dispose__72;
    v26 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemIdentifier];
    v27[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__SUUIWriteAReviewTemplateViewElement_reviewMetadataURLString__block_invoke;
    v18[3] = &unk_2798F7FC8;
    v20 = &v21;
    v8 = v5;
    v19 = v8;
    [v4 getLibraryItemsForITunesStoreItemIdentifiers:v7 completionBlock:v18];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (v22[5])
    {
      v9 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:self->_reviewMetadataURLString];
      v10 = [v9 queryItems];
      v11 = [v10 mutableCopy];

      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v12 = MEMORY[0x277CCAD18];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v22[5], "longLongValue")];
      v14 = [v12 queryItemWithName:@"version-to-review" value:v13];
      [v11 addObject:v14];

      [v9 setQueryItems:v11];
      v15 = [v9 URL];
      v16 = [v15 absoluteString];

      v3 = v16;
    }

    _Block_object_dispose(&v21, 8);
  }

  return v3;
}

void __62__SUUIWriteAReviewTemplateViewElement_reviewMetadataURLString__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 firstObject];
  v3 = [v6 valueForProperty:*MEMORY[0x277D6A5D8]];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIWriteAReviewTemplateViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_itemIdentifier = [(SUUIWriteAReviewTemplateViewElement *)v4 itemIdentifier];
    v7 = [(SUUIWriteAReviewTemplateViewElement *)v4 reviewMetadataURLString];
    reviewMetadataURLString = self->_reviewMetadataURLString;
    self->_reviewMetadataURLString = v7;
  }

  return v6;
}

@end