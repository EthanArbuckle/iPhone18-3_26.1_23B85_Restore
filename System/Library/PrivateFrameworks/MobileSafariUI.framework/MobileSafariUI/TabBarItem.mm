@interface TabBarItem
+ (id)placeholderItem;
- (TabBar)tabBar;
- (TabBarItem)init;
- (id)menuElementRepresentationWithSelectionHandler:(id)handler;
- (void)setActive:(BOOL)active;
- (void)setIcon:(id)icon;
- (void)setIsPlaceholder:(BOOL)placeholder;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setPinned:(BOOL)pinned;
- (void)setShareParticipants:(id)participants;
- (void)setTabBar:(id)bar;
- (void)setTitle:(id)title;
- (void)setUnread:(BOOL)unread;
@end

@implementation TabBarItem

+ (id)placeholderItem
{
  v2 = objc_alloc_init(self);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v2 setUUID:uUID];

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

- (void)setTabBar:(id)bar
{
  obj = bar;
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

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    v5 = [title copy];
    title = self->_title;
    self->_title = v5;

    layoutInfo = self->_layoutInfo;

    [(TabBarItemLayoutInfo *)layoutInfo itemDidUpdateTitle];
  }
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, icon);
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIcon];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsActive];
  }
}

- (void)setIsPlaceholder:(BOOL)placeholder
{
  if (self->_isPlaceholder != placeholder)
  {
    self->_isPlaceholder = placeholder;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsPlaceholder];
  }
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  if (self->_mediaStateIcon != icon)
  {
    self->_mediaStateIcon = icon;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateMediaState];
  }
}

- (void)setPinned:(BOOL)pinned
{
  if (self->_pinned != pinned)
  {
    self->_pinned = pinned;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsPinned];
  }
}

- (id)menuElementRepresentationWithSelectionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277D750C8];
  title = self->_title;
  icon = self->_icon;
  fallbackFavicon = icon;
  if (!icon)
  {
    fallbackFavicon = [MEMORY[0x277D28F20] fallbackFavicon];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__TabBarItem_menuElementRepresentationWithSelectionHandler___block_invoke;
  v12[3] = &unk_2781D96B0;
  v12[4] = self;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v5 actionWithTitle:title image:fallbackFavicon identifier:0 handler:v12];

  if (!icon)
  {
  }

  return v10;
}

- (void)setUnread:(BOOL)unread
{
  if (self->_unread != unread)
  {
    self->_unread = unread;
    [(TabBarItemLayoutInfo *)self->_layoutInfo itemDidUpdateIsUnread];
  }
}

- (void)setShareParticipants:(id)participants
{
  participantsCopy = participants;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [participantsCopy copy];
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