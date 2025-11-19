@interface UnifiedTabBarItem
+ (id)placeholderItem;
- (id)secondaryItem;
- (void)_updateHidden;
- (void)setIcon:(id)a3;
- (void)setIsPlaceholder:(BOOL)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setPinned:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUUID:(id)a3;
@end

@implementation UnifiedTabBarItem

+ (id)placeholderItem
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277CCAD78] UUID];
  [v2 setUUID:v3];

  [v2 setIsPlaceholder:1];

  return v2;
}

- (void)setIsPlaceholder:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  [(SFUnifiedBarItem *)&v5 setIsPlaceholder:?];
  [(UnifiedTabBarItem *)self _updateHidden];
  [(UnifiedTabBarItem *)self->_secondaryItem setIsPlaceholder:v3];
}

- (void)_updateHidden
{
  v3 = [(SFUnifiedBarItem *)self isPlaceholder]|| [(UnifiedTabBarItem *)self isDropping];

  [(SFUnifiedBarItem *)self setHidden:v3];
}

- (id)secondaryItem
{
  secondaryItem = self->_secondaryItem;
  if (!secondaryItem)
  {
    v4 = objc_alloc_init(UnifiedTabBarItem);
    v5 = self->_secondaryItem;
    self->_secondaryItem = v4;

    v6 = [(SFUnifiedTabBarItem *)self icon];
    [(UnifiedTabBarItem *)self->_secondaryItem setIcon:v6];

    v7 = [(SFUnifiedTabBarItem *)self title];
    [(UnifiedTabBarItem *)self->_secondaryItem setTitle:v7];

    [(UnifiedTabBarItem *)self->_secondaryItem setMediaStateIcon:[(SFUnifiedTabBarItem *)self mediaStateIcon]];
    v8 = [(SFUnifiedTabBarItem *)self UUID];
    [(UnifiedTabBarItem *)self->_secondaryItem setUUID:v8];

    [(UnifiedTabBarItem *)self->_secondaryItem setPinned:[(SFUnifiedBarItem *)self isPinned]];
    [(UnifiedTabBarItem *)self->_secondaryItem setIsPlaceholder:[(SFUnifiedBarItem *)self isPlaceholder]];
    secondaryItem = self->_secondaryItem;
  }

  v9 = secondaryItem;

  return v9;
}

- (void)setIcon:(id)a3
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  v4 = a3;
  [(SFUnifiedTabBarItem *)&v5 setIcon:v4];
  [(UnifiedTabBarItem *)self->_secondaryItem setIcon:v4, v5.receiver, v5.super_class];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  v4 = a3;
  [(SFUnifiedTabBarItem *)&v5 setTitle:v4];
  [(UnifiedTabBarItem *)self->_secondaryItem setTitle:v4, v5.receiver, v5.super_class];
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  [(SFUnifiedTabBarItem *)&v5 setMediaStateIcon:?];
  [(UnifiedTabBarItem *)self->_secondaryItem setMediaStateIcon:a3];
}

- (void)setUUID:(id)a3
{
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  v4 = a3;
  [(SFUnifiedTabBarItem *)&v5 setUUID:v4];
  [(UnifiedTabBarItem *)self->_secondaryItem setUUID:v4, v5.receiver, v5.super_class];
}

- (void)setPinned:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UnifiedTabBarItem;
  [(SFUnifiedBarItem *)&v5 setPinned:?];
  [(UnifiedTabBarItem *)self->_secondaryItem setPinned:v3];
}

@end