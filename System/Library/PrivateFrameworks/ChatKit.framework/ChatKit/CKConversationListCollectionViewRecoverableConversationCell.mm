@interface CKConversationListCollectionViewRecoverableConversationCell
+ (id)reuseIdentifier;
+ (id)reuseIdentifierForAXFontSize:(BOOL)a3;
+ (id)reuseIdentifiers;
- (void)updateDateLabel:(id)a3 conversation:(id)a4;
@end

@implementation CKConversationListCollectionViewRecoverableConversationCell

+ (id)reuseIdentifiers
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 reuseIdentifierForAXFontSize:0];
  v4 = [a1 reuseIdentifierForAXFontSize:1];
  v7[0] = v3;
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)reuseIdentifier
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  return [a1 reuseIdentifierForAXFontSize:v4];
}

+ (id)reuseIdentifierForAXFontSize:(BOOL)a3
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@+%@", v4, v7];

  return v8;
}

- (void)updateDateLabel:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = [(CKConversationListCollectionViewRecoverableConversationCell *)self _daysUntilDeletion:a4];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"COUNT_DAYS" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [v9 localizedStringWithFormat:v11, v8];

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v14 = [v13 userInterfaceLayoutDirection];

  if (v14 == 1)
  {
    v15 = @"\u200F";
  }

  else
  {
    v15 = @"\u200E";
  }

  v16 = [(__CFString *)v15 stringByAppendingString:v12];

  [v6 setTextForOverride:v16];
}

@end