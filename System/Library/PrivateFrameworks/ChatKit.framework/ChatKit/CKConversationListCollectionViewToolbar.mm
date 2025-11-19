@interface CKConversationListCollectionViewToolbar
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)contractHeight;
- (void)expandHeight;
@end

@implementation CKConversationListCollectionViewToolbar

- (CGSize)sizeThatFits:(CGSize)a3
{
  v12.receiver = self;
  v12.super_class = CKConversationListCollectionViewToolbar;
  [(CKConversationListCollectionViewToolbar *)&v12 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  if ([(CKConversationListCollectionViewToolbar *)self shouldExpandHeight])
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 expandedToolbarHeightForMiiC];
    v7 = v9;
  }

  v10 = v5;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)expandHeight
{
  [(CKConversationListCollectionViewToolbar *)self setShouldExpandHeight:1];

  [(CKConversationListCollectionViewToolbar *)self sizeToFit];
}

- (void)contractHeight
{
  [(CKConversationListCollectionViewToolbar *)self setShouldExpandHeight:0];

  [(CKConversationListCollectionViewToolbar *)self sizeToFit];
}

@end