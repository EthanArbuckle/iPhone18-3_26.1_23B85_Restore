@interface CKNameAndPhotoMenuElement
+ (id)menuElementWithNickname:(id)a3;
@end

@implementation CKNameAndPhotoMenuElement

+ (id)menuElementWithNickname:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CKNameAndPhotoMenuElement_menuElementWithNickname___block_invoke;
  v9[3] = &unk_1E72ECBE8;
  v10 = v4;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CKNameAndPhotoMenuElement;
  v5 = v4;
  v6 = objc_msgSendSuper2(&v8, sel_elementWithViewProvider_, v9);

  return v6;
}

id __53__CKNameAndPhotoMenuElement_menuElementWithNickname___block_invoke(uint64_t a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v3 = [*(a1 + 32) firstName];
  [v2 setGivenName:v3];

  v4 = [*(a1 + 32) lastName];
  [v2 setFamilyName:v4];

  v5 = MEMORY[0x1E69DCAB8];
  v6 = [*(a1 + 32) avatar];
  v7 = [v6 imageFilePath];
  v8 = [v5 imageWithContentsOfFile:v7];

  v9 = [MEMORY[0x1E695CD80] stringFromContact:v2 style:0];
  v36 = v8;
  v37 = v2;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    [(CKAvatarView *)v10 setContentMode:1];
    v11 = [(CKAvatarView *)v10 layer];
    [v11 setCornerRadius:25.0];

    v12 = [(CKAvatarView *)v10 layer];
    [v12 setMasksToBounds:1];

    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v17 = [CKAvatarView alloc];
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(CKAvatarView *)v17 initWithFrame:*MEMORY[0x1E695F058], v14, v15, v16];
    [(CKAvatarView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarView *)v10 setContact:v2];
  }

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
  [v18 setText:v9];
  v19 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*MEMORY[0x1E69DDD00] weight:*MEMORY[0x1E69DB958]];
  [v18 setFont:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
  v21 = CKFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"NAME_AND_PHOTO_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  [v20 setText:v22];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v20 setFont:v23];

  v24 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v20 setTextColor:v24];

  v25 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v13, v14, v15, v16}];
  [v25 setAxis:1];
  [v25 setAlignment:1];
  v35 = v18;
  [v25 addArrangedSubview:v18];
  [v25 setCustomSpacing:v18 afterView:2.0];
  [v25 addArrangedSubview:v20];
  [v25 setCustomSpacing:v20 afterView:12.0];
  v26 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v13, v14, v15, v16}];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setAxis:0];
  [v26 setAlignment:3];
  [v26 setLayoutMarginsRelativeArrangement:1];
  [v26 setDirectionalLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  [v26 addArrangedSubview:v10];
  [v26 setCustomSpacing:v10 afterView:9.0];
  [v26 addArrangedSubview:v25];
  v27 = MEMORY[0x1E696ACD8];
  v28 = [(CKAvatarView *)v10 widthAnchor];
  [v28 constraintEqualToConstant:50.0];
  v29 = v34 = v9;
  v38[0] = v29;
  v30 = [(CKAvatarView *)v10 heightAnchor];
  v31 = [v30 constraintEqualToConstant:50.0];
  v38[1] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v27 activateConstraints:v32];

  return v26;
}

@end