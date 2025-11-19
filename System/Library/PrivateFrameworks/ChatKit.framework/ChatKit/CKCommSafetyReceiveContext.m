@interface CKCommSafetyReceiveContext
+ (id)contextWithIndexPath:(id)a3;
+ (id)contextWithIndexPath:(id)a3 shouldTargetAssociatedMessages:(BOOL)a4;
- (CKCommSafetyReceiveContext)initWithIndexPath:(id)a3 shouldTargetAssociatedMessages:(BOOL)a4;
@end

@implementation CKCommSafetyReceiveContext

+ (id)contextWithIndexPath:(id)a3
{
  v3 = a3;
  v4 = [[CKCommSafetyReceiveContext alloc] initWithIndexPath:v3 shouldTargetAssociatedMessages:0];

  return v4;
}

+ (id)contextWithIndexPath:(id)a3 shouldTargetAssociatedMessages:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CKCommSafetyReceiveContext alloc] initWithIndexPath:v5 shouldTargetAssociatedMessages:v4];

  return v6;
}

- (CKCommSafetyReceiveContext)initWithIndexPath:(id)a3 shouldTargetAssociatedMessages:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKCommSafetyReceiveContext;
  v8 = [(CKCommSafetyReceiveContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_indexPath, a3);
    v9->_shouldTargetAssociatedMessages = a4;
  }

  return v9;
}

@end