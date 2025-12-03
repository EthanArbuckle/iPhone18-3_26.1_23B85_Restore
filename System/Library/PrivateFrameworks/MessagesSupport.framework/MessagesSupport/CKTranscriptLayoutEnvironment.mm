@interface CKTranscriptLayoutEnvironment
- (CKTranscriptLayoutEnvironment)initWithDatasource:(id)datasource collectionLayoutEnvironment:(id)environment collectionView:(id)view marginInsets:(UIEdgeInsets)insets layoutContext:(int64_t)context messageEditingContext:(id)editingContext;
- (UIEdgeInsets)marginInsets;
@end

@implementation CKTranscriptLayoutEnvironment

- (CKTranscriptLayoutEnvironment)initWithDatasource:(id)datasource collectionLayoutEnvironment:(id)environment collectionView:(id)view marginInsets:(UIEdgeInsets)insets layoutContext:(int64_t)context messageEditingContext:(id)editingContext
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  datasourceCopy = datasource;
  environmentCopy = environment;
  viewCopy = view;
  editingContextCopy = editingContext;
  v25.receiver = self;
  v25.super_class = CKTranscriptLayoutEnvironment;
  v22 = [(CKTranscriptLayoutEnvironment *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_datasource, datasource);
    objc_storeStrong(&v23->_collectionLayoutEnvironment, environment);
    objc_storeStrong(&v23->_collectionView, view);
    v23->_marginInsets.top = top;
    v23->_marginInsets.left = left;
    v23->_marginInsets.bottom = bottom;
    v23->_marginInsets.right = right;
    v23->_layoutContext = context;
    objc_storeStrong(&v23->_messageEditingContext, editingContext);
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