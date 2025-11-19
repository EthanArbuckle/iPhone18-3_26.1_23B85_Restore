@interface CKConversationListEmbeddedStandardTableViewCell
+ (id)reuseIdentifier;
- (CGRect)containerBounds;
- (CKConversationListEmbeddedStandardTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)marginInsets;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)prepareForReuse;
@end

@implementation CKConversationListEmbeddedStandardTableViewCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CKConversationListEmbeddedStandardTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = CKConversationListEmbeddedStandardTableViewCell;
  v4 = [(CKConversationListStandardCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKConversationListStandardCell *)v4 avatarView];
    [v6 setAsynchronousRendering:1];

    v7 = [(CKConversationListStandardCell *)v5 avatarView];
    [v7 setShowsContactOnTap:0];

    v8 = [(CKConversationListStandardCell *)v5 avatarView];
    [v8 setBypassActionValidation:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationListEmbeddedStandardTableViewCell;
  [(CKConversationListStandardCell *)&v4 prepareForReuse];
  v3 = [(CKConversationListCell *)self summaryLabel];
  [v3 setAttributedText:0];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v15.receiver = self;
  v15.super_class = CKConversationListEmbeddedStandardTableViewCell;
  v5 = [(CKConversationListEmbeddedStandardTableViewCell *)&v15 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = [(CKConversationListStandardCell *)self avatarView];
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(CKConversationListStandardCell *)self avatarView];
    v8 = [v5 isDescendantOfView:v7];
  }

  v9 = [(CKConversationListCell *)self closeButton];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = (CKIsRunningInMacCatalyst() == 0) & v8;
  if (v5 == v9)
  {
    v11 = 1;
  }

  if ((v11 | isKindOfClass))
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
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