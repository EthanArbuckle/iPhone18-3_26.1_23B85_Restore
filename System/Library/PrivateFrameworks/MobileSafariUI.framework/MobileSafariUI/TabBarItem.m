@interface TabBarItem
+ (id)placeholderItem;
- (TabBar)tabBar;
- (TabBarItem)init;
- (id)menuElementRepresentationWithSelectionHandler:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setIsPlaceholder:(BOOL)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setPinned:(BOOL)a3;
- (void)setShareParticipants:(id)a3;
- (void)setTabBar:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUnread:(BOOL)a3;
@end

@implementation TabBarItem

+ (id)placeholderItem
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277CCAD78] UUID];
  [v2 setUUID:v3];

  [v2 setIsPlaceholder:1];

  return v2;
}

- (TabBarItem)init
{
  v7.receiver = self;
  v7.super_class = TabBarItem;
  v2 = [(TabBarItem *)&v7 init];
  v3 = v2;
  if (v2)
  {
    shareParticipants = v2->_shareParticipants;
    v2->_shareParticipants = MEMORY[0x277CBEBF8];

    v5 = v3;
  }

  return v3;
}

- (void)setTabBar:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tabBar, obj);
    v6 = obj;
    if (obj)
    {
      v6 = [[TabBarItemLayoutInfo alloc] initWithTabBar:obj item:self];
    }

    layoutInfo = self->_layoutInfo;
    self->_layoutInfo = v6;

    v5 = obj;
  }
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v5 = [a3 copy];
    title = self->_title;
    self->_title = v5;

    layoutInfo = self->_layoutInfo;

    [(TabBarItemLayoutInfo *)layoutInfo itemDidUpdateTitle];
  }
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, a3);
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIcon];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsActive];
  }
}

- (void)setIsPlaceholder:(BOOL)a3
{
  if (self->_isPlaceholder != a3)
  {
    self->_isPlaceholder = a3;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsPlaceholder];
  }
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  if (self->_mediaStateIcon != a3)
  {
    self->_mediaStateIcon = a3;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateMediaState];
  }
}

- (void)setPinned:(BOOL)a3
{
  if (self->_pinned != a3)
  {
    self->_pinned = a3;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsPinned];
  }
}

- (id)menuElementRepresentationWithSelectionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D750C8];
  title = self->_title;
  icon = self->_icon;
  v8 = icon;
  if (!icon)
  {
    v8 = [MEMORY[0x277D28F20] fallbackFavicon];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__TabBarItem_menuElementRepresentationWithSelectionHandler___block_invoke;
  v12[3] = &unk_2781D96B0;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [v5 actionWithTitle:title image:v8 identifier:0 handler:v12];

  if (!icon)
  {
  }

  return v10;
}

- (void)setUnread:(BOOL)a3
{
  if (self->_unread != a3)
  {
    self->_unread = a3;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsUnread];
  }
}

- (void)setShareParticipants:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [v6 copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateShareParticipants];
  }
}

- (TabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

@end