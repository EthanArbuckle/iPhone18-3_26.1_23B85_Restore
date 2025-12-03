@interface CNAutocompleteContactsOnVisionTableViewCell
- (BOOL)shouldUseAXSizing;
- (CNAutocompleteContactsOnVisionTableViewCell)initWithSuggestion:(id)suggestion;
- (double)avatarDimension;
- (double)avatarNamePadding;
@end

@implementation CNAutocompleteContactsOnVisionTableViewCell

- (CNAutocompleteContactsOnVisionTableViewCell)initWithSuggestion:(id)suggestion
{
  v50[4] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v48.receiver = self;
  v48.super_class = CNAutocompleteContactsOnVisionTableViewCell;
  v6 = [(CNAutocompleteContactsOnVisionTableViewCell *)&v48 initWithStyle:0 reuseIdentifier:@"VisionCell"];
  v7 = v6;
  if (v6)
  {
    [(CNAutocompleteContactsOnVisionTableViewCell *)v6 setSelectionStyle:0];
    objc_storeStrong(&v7->_suggestion, suggestion);
    v8 = MEMORY[0x1E695CD80];
    [suggestionCopy contact];
    v9 = v46 = suggestionCopy;
    v47 = [v8 stringFromContact:v9 style:0];

    v10 = objc_alloc(MEMORY[0x1E695D0C0]);
    contact = [(CNComposeRecipient *)v7->_suggestion contact];
    v12 = [v10 initWithContact:contact];
    avatarView = v7->_avatarView;
    v7->_avatarView = v12;

    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 addSubview:v7->_avatarView];
    [(CNAvatarView *)v7->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = MEMORY[0x1E696ACD8];
    widthAnchor = [(CNAvatarView *)v7->_avatarView widthAnchor];
    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 avatarDimension];
    v42 = [widthAnchor constraintEqualToConstant:?];
    v50[0] = v42;
    heightAnchor = [(CNAvatarView *)v7->_avatarView heightAnchor];
    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 avatarDimension];
    v15 = [heightAnchor constraintEqualToConstant:?];
    v50[1] = v15;
    centerYAnchor = [(CNAvatarView *)v7->_avatarView centerYAnchor];
    centerYAnchor2 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v50[2] = v18;
    leadingAnchor = [(CNAvatarView *)v7->_avatarView leadingAnchor];
    leadingAnchor2 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v50[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [v40 activateConstraints:v22];

    v23 = objc_alloc(MEMORY[0x1E69DCC10]);
    v24 = [v23 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    nameLabel = v7->_nameLabel;
    v7->_nameLabel = v24;

    [(UILabel *)v7->_nameLabel setText:v47];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7->_nameLabel setTextColor:labelColor];

    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v7->_nameLabel setFont:v27];

    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 addSubview:v7->_nameLabel];
    [(UILabel *)v7->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UILabel *)v7->_nameLabel leadingAnchor];
    leadingAnchor4 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 leadingAnchor];
    [(CNAutocompleteContactsOnVisionTableViewCell *)v7 avatarNamePadding];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v49[0] = v41;
    topAnchor = [(UILabel *)v7->_nameLabel topAnchor];
    topAnchor2 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[1] = v29;
    bottomAnchor = [(UILabel *)v7->_nameLabel bottomAnchor];
    bottomAnchor2 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v49[2] = v32;
    trailingAnchor = [(UILabel *)v7->_nameLabel trailingAnchor];
    trailingAnchor2 = [(CNAutocompleteContactsOnVisionTableViewCell *)v7 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v49[3] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v38 activateConstraints:v36];

    suggestionCopy = v46;
  }

  return v7;
}

- (double)avatarDimension
{
  shouldUseAXSizing = [(CNAutocompleteContactsOnVisionTableViewCell *)self shouldUseAXSizing];
  result = 44.0;
  if (shouldUseAXSizing)
  {
    return 68.0;
  }

  return result;
}

- (double)avatarNamePadding
{
  shouldUseAXSizing = [(CNAutocompleteContactsOnVisionTableViewCell *)self shouldUseAXSizing];
  result = 72.0;
  if (shouldUseAXSizing)
  {
    return 96.0;
  }

  return result;
}

- (BOOL)shouldUseAXSizing
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (preferredContentSizeCategory)
  {
    v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) == NSOrderedDescending;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end