@interface CPUIMessageCell(CPSTableCells)
- (void)configureWithMessageListItem:()CPSTableCells;
@end

@implementation CPUIMessageCell(CPSTableCells)

- (void)configureWithMessageListItem:()CPSTableCells
{
  v26 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = MEMORY[0x277CF9140];
  v23 = [location[0] text];
  v22 = [location[0] detailText];
  v21 = [location[0] leadingConfiguration];
  v20 = [v21 leadingImage];
  v19 = [location[0] leadingConfiguration];
  v8 = [v19 isUnread];
  v18 = [location[0] leadingConfiguration];
  v9 = [v18 leadingItem] == 1;
  v17 = [location[0] leadingConfiguration];
  v10 = [v17 leadingItem] == 2;
  v16 = [location[0] trailingConfiguration];
  v6 = [v16 trailingItem] == 1;
  v15 = [location[0] trailingText];
  v14 = [location[0] trailingConfiguration];
  v13 = [v14 trailingImage];
  v7 = [location[0] isEnabled];
  v12 = [location[0] leadingDetailTextImage];
  LOBYTE(v4) = v6;
  LOBYTE(v5) = v7;
  v24 = [v11 configurationWithText:v23 detailText:v22 image:v20 unread:v8 showsPin:v9 showsStar:v10 showsMute:v4 trailingText:v15 trailingImage:v13 enabled:v5 leadingDetailTextImage:v12];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *&v3 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v26 applyConfiguration:{v24, v3}];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

@end