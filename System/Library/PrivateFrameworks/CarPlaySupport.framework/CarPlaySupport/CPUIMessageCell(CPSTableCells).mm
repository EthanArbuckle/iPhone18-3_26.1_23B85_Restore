@interface CPUIMessageCell(CPSTableCells)
- (void)configureWithMessageListItem:()CPSTableCells;
@end

@implementation CPUIMessageCell(CPSTableCells)

- (void)configureWithMessageListItem:()CPSTableCells
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = MEMORY[0x277CF9140];
  text = [location[0] text];
  detailText = [location[0] detailText];
  leadingConfiguration = [location[0] leadingConfiguration];
  leadingImage = [leadingConfiguration leadingImage];
  leadingConfiguration2 = [location[0] leadingConfiguration];
  isUnread = [leadingConfiguration2 isUnread];
  leadingConfiguration3 = [location[0] leadingConfiguration];
  v9 = [leadingConfiguration3 leadingItem] == 1;
  leadingConfiguration4 = [location[0] leadingConfiguration];
  v10 = [leadingConfiguration4 leadingItem] == 2;
  trailingConfiguration = [location[0] trailingConfiguration];
  v6 = [trailingConfiguration trailingItem] == 1;
  trailingText = [location[0] trailingText];
  trailingConfiguration2 = [location[0] trailingConfiguration];
  trailingImage = [trailingConfiguration2 trailingImage];
  isEnabled = [location[0] isEnabled];
  leadingDetailTextImage = [location[0] leadingDetailTextImage];
  LOBYTE(v4) = v6;
  LOBYTE(v5) = isEnabled;
  v24 = [v11 configurationWithText:text detailText:detailText image:leadingImage unread:isUnread showsPin:v9 showsStar:v10 showsMute:v4 trailingText:trailingText trailingImage:trailingImage enabled:v5 leadingDetailTextImage:leadingDetailTextImage];
  MEMORY[0x277D82BD8](leadingDetailTextImage);
  MEMORY[0x277D82BD8](trailingImage);
  MEMORY[0x277D82BD8](trailingConfiguration2);
  MEMORY[0x277D82BD8](trailingText);
  MEMORY[0x277D82BD8](trailingConfiguration);
  MEMORY[0x277D82BD8](leadingConfiguration4);
  MEMORY[0x277D82BD8](leadingConfiguration3);
  MEMORY[0x277D82BD8](leadingConfiguration2);
  MEMORY[0x277D82BD8](leadingImage);
  MEMORY[0x277D82BD8](leadingConfiguration);
  MEMORY[0x277D82BD8](detailText);
  *&v3 = MEMORY[0x277D82BD8](text).n128_u64[0];
  [selfCopy applyConfiguration:{v24, v3}];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

@end