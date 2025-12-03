@interface CKDetailsAddMemberCell
+ (Class)cellClass;
- (CKDetailsAddMemberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CKDetailsAddMemberCell

+ (Class)cellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];
  v3 = objc_opt_class();

  return v3;
}

- (CKDetailsAddMemberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v24.receiver = self;
  v24.super_class = CKDetailsAddMemberCell;
  v4 = [(CKDetailsCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKDetailsAddMemberCell *)v4 setAddLabel:v6];

    addLabel = [(CKDetailsAddMemberCell *)v4 addLabel];
    [addLabel setNumberOfLines:0];

    addLabel2 = [(CKDetailsAddMemberCell *)v4 addLabel];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"ADD_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];
    [addLabel2 setText:v10];

    addLabel3 = [(CKDetailsAddMemberCell *)v4 addLabel];
    v12 = +[CKUIBehavior sharedBehaviors];
    addContactFont = [v12 addContactFont];
    [addLabel3 setFont:addContactFont];

    addLabel4 = [(CKDetailsAddMemberCell *)v4 addLabel];
    v15 = +[CKUIBehavior sharedBehaviors];
    theme = [v15 theme];
    detailsTextColor = [theme detailsTextColor];
    [addLabel4 setTextColor:detailsTextColor];

    addLabel5 = [(CKDetailsAddMemberCell *)v4 addLabel];
    [addLabel5 sizeToFit];

    contentView = [(CKDetailsAddMemberCell *)v4 contentView];
    addLabel6 = [(CKDetailsAddMemberCell *)v4 addLabel];
    [contentView addSubview:addLabel6];

    contentView2 = [(CKDetailsAddMemberCell *)v4 contentView];
    [contentView2 setBackgroundColor:0];

    bottomSeperator = [(CKDetailsCell *)v4 bottomSeperator];
    [bottomSeperator setHidden:1];
  }

  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(CKDetailsAddMemberCell *)self setUserInteractionEnabled:?];
  addLabel = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel setEnabled:enabledCopy];

  addLabel2 = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel2 setUserInteractionEnabled:enabledCopy];
}

@end