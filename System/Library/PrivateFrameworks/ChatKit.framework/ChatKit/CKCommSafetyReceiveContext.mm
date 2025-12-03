@interface CKCommSafetyReceiveContext
+ (id)contextWithIndexPath:(id)path;
+ (id)contextWithIndexPath:(id)path shouldTargetAssociatedMessages:(BOOL)messages;
- (CKCommSafetyReceiveContext)initWithIndexPath:(id)path shouldTargetAssociatedMessages:(BOOL)messages;
@end

@implementation CKCommSafetyReceiveContext

+ (id)contextWithIndexPath:(id)path
{
  pathCopy = path;
  v4 = [[CKCommSafetyReceiveContext alloc] initWithIndexPath:pathCopy shouldTargetAssociatedMessages:0];

  return v4;
}

+ (id)contextWithIndexPath:(id)path shouldTargetAssociatedMessages:(BOOL)messages
{
  messagesCopy = messages;
  pathCopy = path;
  v6 = [[CKCommSafetyReceiveContext alloc] initWithIndexPath:pathCopy shouldTargetAssociatedMessages:messagesCopy];

  return v6;
}

- (CKCommSafetyReceiveContext)initWithIndexPath:(id)path shouldTargetAssociatedMessages:(BOOL)messages
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = CKCommSafetyReceiveContext;
  v8 = [(CKCommSafetyReceiveContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_indexPath, path);
    v9->_shouldTargetAssociatedMessages = messages;
  }

  return v9;
}

@end