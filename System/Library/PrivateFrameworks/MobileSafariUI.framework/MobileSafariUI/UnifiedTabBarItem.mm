@interface UnifiedTabBarItem
+ (id)placeholderItem;
- (id)secondaryItem;
- (void)_updateHidden;
- (void)setIcon:(id)icon;
- (void)setIsPlaceholder:(BOOL)placeholder;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setPinned:(BOOL)pinned;
- (void)setTitle:(id)title;
- (void)setUUID:(id)d;
@end

@implementation UnifiedTabBarItem

+ (id)placeholderItem
{
  v2 = objc_alloc_init(self);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v2 setUUID:uUID];

  [v2 setIsPlaceholder:1];

  return v2;
}

- (void)setIsPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  [(SFUnifiedBarItem *)&v5 setIsPlaceholder:?];
  [(UnifiedTabBarItem *)self _updateHidden];
  [(UnifiedTabBarItem *)self->_secondaryItem setIsPlaceholder:placeholderCopy];
}

- (void)_updateHidden
{
  isDropping = [(SFUnifiedBarItem *)self isPlaceholder]|| [(UnifiedTabBarItem *)self isDropping];

  [(SFUnifiedBarItem *)self setHidden:isDropping];
}

- (id)secondaryItem
{
  secondaryItem = self->_secondaryItem;
  if (!secondaryItem)
  {
    v4 = objc_alloc_init(UnifiedTabBarItem);
    v5 = self->_secondaryItem;
    self->_secondaryItem = v4;

    icon = [(SFUnifiedTabBarItem *)self icon];
    [(UnifiedTabBarItem *)self->_secondaryItem setIcon:icon];

    title = [(SFUnifiedTabBarItem *)self title];
    [(UnifiedTabBarItem *)self->_secondaryItem setTitle:title];

    [(UnifiedTabBarItem *)self->_secondaryItem setMediaStateIcon:[(SFUnifiedTabBarItem *)self mediaStateIcon]];
    uUID = [(SFUnifiedTabBarItem *)self UUID];
    [(UnifiedTabBarItem *)self->_secondaryItem setUUID:uUID];

    [(UnifiedTabBarItem *)self->_secondaryItem setPinned:[(SFUnifiedBarItem *)self isPinned]];
    [(UnifiedTabBarItem *)self->_secondaryItem setIsPlaceholder:[(SFUnifiedBarItem *)self isPlaceholder]];
    secondaryItem = self->_secondaryItem;
  }

  v9 = secondaryItem;

  return v9;
}

- (void)setIcon:(id)icon
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  iconCopy = icon;
  [(SFUnifiedTabBarItem *)&v5 setIcon:iconCopy];
  [(UnifiedTabBarItem *)self->_secondaryItem setIcon:iconCopy, v5.receiver, v5.super_class];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  titleCopy = title;
  [(SFUnifiedTabBarItem *)&v5 setTitle:titleCopy];
  [(UnifiedTabBarItem *)self->_secondaryItem setTitle:titleCopy, v5.receiver, v5.super_class];
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  [(SFUnifiedTabBarItem *)&v5 setMediaStateIcon:?];
  [(UnifiedTabBarItem *)self->_secondaryItem setMediaStateIcon:icon];
}

- (void)setUUID:(id)d
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  dCopy = d;
  [(SFUnifiedTabBarItem *)&v5 setUUID:dCopy];
  [(UnifiedTabBarItem *)self->_secondaryItem setUUID:dCopy, v5.receiver, v5.super_class];
}

- (void)setPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  [(SFUnifiedBarItem *)&v5 setPinned:?];
  [(UnifiedTabBarItem *)self->_secondaryItem setPinned:pinnedCopy];
}

@end