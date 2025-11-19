@interface CKDetailsAddMemberCell
+ (Class)cellClass;
- (CKDetailsAddMemberCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setEnabled:(BOOL)a3;
@end

@implementation CKDetailsAddMemberCell

+ (Class)cellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];
  v3 = objc_opt_class();

  return v3;
}

- (CKDetailsAddMemberCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v24.receiver = self;
  v24.super_class = CKDetailsAddMemberCell;
  v4 = [(CKDetailsCell *)&v24 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKDetailsAddMemberCell *)v4 setAddLabel:v6];

    v7 = [(CKDetailsAddMemberCell *)v4 addLabel];
    [v7 setNumberOfLines:0];

    v8 = [(CKDetailsAddMemberCell *)v4 addLabel];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"ADD_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];
    [v8 setText:v10];

    v11 = [(CKDetailsAddMemberCell *)v4 addLabel];
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 addContactFont];
    [v11 setFont:v13];

    v14 = [(CKDetailsAddMemberCell *)v4 addLabel];
    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [v15 theme];
    v17 = [v16 detailsTextColor];
    [v14 setTextColor:v17];

    v18 = [(CKDetailsAddMemberCell *)v4 addLabel];
    [v18 sizeToFit];

    v19 = [(CKDetailsAddMemberCell *)v4 contentView];
    v20 = [(CKDetailsAddMemberCell *)v4 addLabel];
    [v19 addSubview:v20];

    v21 = [(CKDetailsAddMemberCell *)v4 contentView];
    [v21 setBackgroundColor:0];

    v22 = [(CKDetailsCell *)v4 bottomSeperator];
    [v22 setHidden:1];
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  [(CKDetailsAddMemberCell *)self setUserInteractionEnabled:?];
  v5 = [(CKDetailsAddMemberCell *)self addLabel];
  [v5 setEnabled:v3];

  v6 = [(CKDetailsAddMemberCell *)self addLabel];
  [v6 setUserInteractionEnabled:v3];
}

@end