@interface CKConversationListEmbeddedStandardTableViewCell
+ (id)reuseIdentifier;
- (CGRect)containerBounds;
- (CKConversationListEmbeddedStandardTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)marginInsets;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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

- (CKConversationListEmbeddedStandardTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = CKConversationListEmbeddedStandardTableViewCell;
  v4 = [(CKConversationListStandardCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    avatarView = [(CKConversationListStandardCell *)v4 avatarView];
    [avatarView setAsynchronousRendering:1];

    avatarView2 = [(CKConversationListStandardCell *)v5 avatarView];
    [avatarView2 setShowsContactOnTap:0];

    avatarView3 = [(CKConversationListStandardCell *)v5 avatarView];
    [avatarView3 setBypassActionValidation:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationListEmbeddedStandardTableViewCell;
  [(CKConversationListStandardCell *)&v4 prepareForReuse];
  summaryLabel = [(CKConversationListCell *)self summaryLabel];
  [summaryLabel setAttributedText:0];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = CKConversationListEmbeddedStandardTableViewCell;
  v5 = [(CKConversationListEmbeddedStandardTableViewCell *)&v15 hitTest:event withEvent:test.x, test.y];
  avatarView = [(CKConversationListStandardCell *)self avatarView];
  if (v5 == avatarView)
  {
    v8 = 1;
  }

  else
  {
    avatarView2 = [(CKConversationListStandardCell *)self avatarView];
    v8 = [v5 isDescendantOfView:avatarView2];
  }

  closeButton = [(CKConversationListCell *)self closeButton];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = (CKIsRunningInMacCatalyst() == 0) & v8;
  if (v5 == closeButton)
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