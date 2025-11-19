@interface UIAlertController
@end

@implementation UIAlertController

void __77__UIAlertController_MailUI__mf_addAvatarWithAvatarGenerator_messageListItem___block_invoke(id *a1, void *a2)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [MUIAvatarImageGenerator roundAvatarView:v4 withBorder:0 size:56.0];
  v5 = [v3 image];

  [v4 setImage:v5];
  [a1[4] addSubview:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = MEMORY[0x277CCAAD0];
  v21 = [v4 centerXAnchor];
  v20 = [a1[4] centerXAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v18 = [v4 topAnchor];
  v17 = [a1[4] topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:28.0];
  v22[1] = v16;
  v14 = [v4 bottomAnchor];
  v6 = [a1[4] bottomAnchor];
  v7 = [v14 constraintEqualToAnchor:v6];
  v22[2] = v7;
  v8 = [v4 heightAnchor];
  v9 = [v8 constraintEqualToConstant:56.0];
  v22[3] = v9;
  v10 = [v4 widthAnchor];
  v11 = [v4 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v22[4] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
  [v15 activateConstraints:v13];

  [a1[5] setView:a1[4]];
  [a1[6] _setHeaderContentViewController:a1[5]];
}

@end