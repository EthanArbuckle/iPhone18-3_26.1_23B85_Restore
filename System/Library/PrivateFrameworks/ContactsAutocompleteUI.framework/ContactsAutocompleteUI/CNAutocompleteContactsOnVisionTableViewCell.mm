@interface CNAutocompleteContactsOnVisionTableViewCell
- (BOOL)shouldUseAXSizing;
- (CNAutocompleteContactsOnVisionTableViewCell)initWithSuggestion:(id)a3;
- (double)avatarDimension;
- (double)avatarNamePadding;
@end

@implementation CNAutocompleteContactsOnVisionTableViewCell

- (CNAutocompleteContactsOnVisionTableViewCell)initWithSuggestion:(id)a3
{
  v50[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v48.receiver = self;
  v48.super_class = CNAutocompleteContactsOnVisionTableViewCell;
  v6 = [(CNAutocompleteContactsOnVisionTableViewCell *)&v48 initWithStyle:0 reuseIdentifier:@"VisionCell"];
  v7 = v6;
  if (v6)
  {
    [(CNAutocompleteContactsOnVisionTableViewCell *)v6 setSelectionStyle:0];
    objc_storeStrong(&v7->_suggestion, a3);
    v8 = MEMORY[0x1E695CD80];
    [v5 contact];
    v9 = v46 = v5;
    v47 = [v8 stringFromContact:v9 style:0];

    v10 = objc_alloc(MEMORY[0x1E695D0C0]);
    v11 = [(CNComposeRecipient *)v7->_suggestion contact];
    v12 = [v10 initWithContact:v11];
    avatarView = v7->_avatarView;
    v7->_avatarView = v12;

    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 addSubview:v7->_avatarView];
    [(CNAvatarView *)v7->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = MEMORY[0x1E696ACD8];
    v44 = [(CNAvatarView *)v7->_avatarView widthAnchor];
    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 avatarDimension];
    v42 = [v44 constraintEqualToConstant:?];
    v50[0] = v42;
    v14 = [(CNAvatarView *)v7->_avatarView heightAnchor];
    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 avatarDimension];
    v15 = [v14 constraintEqualToConstant:?];
    v50[1] = v15;
    v16 = [(CNAvatarView *)v7->_avatarView centerYAnchor];
    v17 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v50[2] = v18;
    v19 = [(CNAvatarView *)v7->_avatarView leadingAnchor];
    v20 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:12.0];
    v50[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [v40 activateConstraints:v22];

    v23 = objc_alloc(MEMORY[0x1E69DCC10]);
    v24 = [v23 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    nameLabel = v7->_nameLabel;
    v7->_nameLabel = v24;

    [(UILabel *)v7->_nameLabel setText:v47];
    v26 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7->_nameLabel setTextColor:v26];

    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v7->_nameLabel setFont:v27];

    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 addSubview:v7->_nameLabel];
    [(UILabel *)v7->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = MEMORY[0x1E696ACD8];
    v45 = [(UILabel *)v7->_nameLabel leadingAnchor];
    v43 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 leadingAnchor];
    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 avatarNamePadding];
    v41 = [v45 constraintEqualToAnchor:v43 constant:?];
    v49[0] = v41;
    v39 = [(UILabel *)v7->_nameLabel topAnchor];
    v28 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 topAnchor];
    v29 = [v39 constraintEqualToAnchor:v28];
    v49[1] = v29;
    v30 = [(UILabel *)v7->_nameLabel bottomAnchor];
    v31 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v49[2] = v32;
    v33 = [(UILabel *)v7->_nameLabel trailingAnchor];
    v34 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v49[3] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v38 activateConstraints:v36];

    v5 = v46;
  }

  return v7;
}

- (double)avatarDimension
{
  v2 = [(CNAutocompleteContactsOnVisionTableViewCell *)self shouldUseAXSizing];
  result = 44.0;
  if (v2)
  {
    return 68.0;
  }

  return result;
}

- (double)avatarNamePadding
{
  v2 = [(CNAutocompleteContactsOnVisionTableViewCell *)self shouldUseAXSizing];
  result = 72.0;
  if (v2)
  {
    return 96.0;
  }

  return result;
}

- (BOOL)shouldUseAXSizing
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  if (v3)
  {
    v4 = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC50]) == NSOrderedDescending;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end