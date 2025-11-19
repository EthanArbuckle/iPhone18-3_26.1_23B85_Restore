@interface ICGalleryAttachmentViewCollectionViewLayout
+ (double)contentWidthForAttachmentGalleryModel:(id)a3 itemHeight:(double)a4 itemSpacing:(double)a5;
- (CGSize)cachedContentSize;
- (CGSize)margins;
- (ICGalleryAttachmentViewCollectionViewLayout)initWithAttachmentGalleryModel:(id)a3 itemHeight:(double)a4 itemSpacing:(double)a5 margins:(CGSize)a6;
- (void)invalidateLayoutWithNewItemHeight:(double)a3;
@end

@implementation ICGalleryAttachmentViewCollectionViewLayout

- (ICGalleryAttachmentViewCollectionViewLayout)initWithAttachmentGalleryModel:(id)a3 itemHeight:(double)a4 itemSpacing:(double)a5 margins:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ICGalleryAttachmentViewCollectionViewLayout;
  v12 = [(UICollectionViewFlowLayout *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(ICGalleryAttachmentViewCollectionViewLayout *)v12 setAttachmentModel:v11];
    [(ICGalleryAttachmentViewCollectionViewLayout *)v13 setItemHeight:a4];
    [(ICGalleryAttachmentViewCollectionViewLayout *)v13 setItemSpacing:a5];
    [(ICGalleryAttachmentViewCollectionViewLayout *)v13 setMargins:width, height];
    [(UICollectionViewFlowLayout *)v13 setMinimumInteritemSpacing:a5];
    [(UICollectionViewFlowLayout *)v13 setItemSize:a4, a4];
    [(UICollectionViewFlowLayout *)v13 setScrollDirection:1];
  }

  return v13;
}

+ (double)contentWidthForAttachmentGalleryModel:(id)a3 itemHeight:(double)a4 itemSpacing:(double)a5
{
  v7 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__ICGalleryAttachmentViewCollectionViewLayout_contentWidthForAttachmentGalleryModel_itemHeight_itemSpacing___block_invoke;
  v11[3] = &unk_2781AFBB0;
  v11[4] = &v12;
  *&v11[5] = a4;
  [v7 enumerateSubAttachmentsWithBlock:v11];
  if ([v7 subAttachmentCount] <= 1)
  {
    v9 = v13[3];
  }

  else
  {
    v8 = [v7 subAttachmentCount];
    v9 = v13[3] + (v8 - 1) * a5;
    v13[3] = v9;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

double __108__ICGalleryAttachmentViewCollectionViewLayout_contentWidthForAttachmentGalleryModel_itemHeight_itemSpacing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 sizeWidth];
  v5 = v4;
  [v3 sizeHeight];
  v7 = v6;

  [ICGalleryAttachmentView effectiveAspectRatioForWidth:v5 height:v7];
  v9 = *(*(a1 + 32) + 8);
  result = round(v8 * *(a1 + 40)) + *(v9 + 24);
  *(v9 + 24) = result;
  return result;
}

- (void)invalidateLayoutWithNewItemHeight:(double)a3
{
  [(ICGalleryAttachmentViewCollectionViewLayout *)self setItemHeight:?];
  [(UICollectionViewFlowLayout *)self setItemSize:a3, a3];

  [(ICGalleryAttachmentViewCollectionViewLayout *)self invalidateLayout];
}

- (CGSize)margins
{
  width = self->_margins.width;
  height = self->_margins.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)cachedContentSize
{
  width = self->_cachedContentSize.width;
  height = self->_cachedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end