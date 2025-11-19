@interface CKTranscriptLayoutEnvironment
- (CKTranscriptLayoutEnvironment)initWithDatasource:(id)a3 collectionLayoutEnvironment:(id)a4 collectionView:(id)a5 marginInsets:(UIEdgeInsets)a6 layoutContext:(int64_t)a7 messageEditingContext:(id)a8;
- (UIEdgeInsets)marginInsets;
@end

@implementation CKTranscriptLayoutEnvironment

- (CKTranscriptLayoutEnvironment)initWithDatasource:(id)a3 collectionLayoutEnvironment:(id)a4 collectionView:(id)a5 marginInsets:(UIEdgeInsets)a6 layoutContext:(int64_t)a7 messageEditingContext:(id)a8
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = CKTranscriptLayoutEnvironment;
  v22 = [(CKTranscriptLayoutEnvironment *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_datasource, a3);
    objc_storeStrong(&v23->_collectionLayoutEnvironment, a4);
    objc_storeStrong(&v23->_collectionView, a5);
    v23->_marginInsets.top = top;
    v23->_marginInsets.left = left;
    v23->_marginInsets.bottom = bottom;
    v23->_marginInsets.right = right;
    v23->_layoutContext = a7;
    objc_storeStrong(&v23->_messageEditingContext, a8);
  }

  return v23;
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end