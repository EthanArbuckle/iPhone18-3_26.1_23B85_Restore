@interface CRSDashboardFocusableItem
- (CGRect)frameInWindow;
- (CRSDashboardFocusableItem)init;
- (CRSDashboardFocusableItem)initWithCoder:(id)coder;
- (CRSDashboardFocusableItem)initWithFocusableView:(id)view;
- (CRSUIDashboardFocusableItemProviding)focusProvidingItem;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSDashboardFocusableItem

- (CRSDashboardFocusableItem)init
{
  v6.receiver = self;
  v6.super_class = CRSDashboardFocusableItem;
  v2 = [(CRSDashboardFocusableItem *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

- (CRSDashboardFocusableItem)initWithFocusableView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = CRSDashboardFocusableItem;
  v5 = [(CRSDashboardFocusableItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_focusProvidingItem, viewCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v6->_identifier;
    v6->_identifier = uUID;
  }

  return v6;
}

- (CRSDashboardFocusableItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRSDashboardFocusableItem;
  v5 = [(CRSDashboardFocusableItem *)&v9 init];
  if (v5)
  {
    [coderCopy decodeCGRectForKey:@"frameInWindow"];
    [(CRSDashboardFocusableItem *)v5 setFrameInWindow:?];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"focusableIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSDashboardFocusableItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"focusableIdentifier"];

  [(CRSDashboardFocusableItem *)self frameInWindow];
  [coderCopy encodeCGRect:@"frameInWindow" forKey:?];
}

- (CGRect)frameInWindow
{
  x = self->_frameInWindow.origin.x;
  y = self->_frameInWindow.origin.y;
  width = self->_frameInWindow.size.width;
  height = self->_frameInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CRSUIDashboardFocusableItemProviding)focusProvidingItem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusProvidingItem);

  return WeakRetained;
}

@end