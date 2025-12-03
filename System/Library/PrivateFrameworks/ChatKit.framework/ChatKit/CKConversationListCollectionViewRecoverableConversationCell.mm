@interface CKConversationListCollectionViewRecoverableConversationCell
+ (id)reuseIdentifier;
+ (id)reuseIdentifierForAXFontSize:(BOOL)size;
+ (id)reuseIdentifiers;
- (void)updateDateLabel:(id)label conversation:(id)conversation;
@end

@implementation CKConversationListCollectionViewRecoverableConversationCell

+ (id)reuseIdentifiers
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [self reuseIdentifierForAXFontSize:0];
  v4 = [self reuseIdentifierForAXFontSize:1];
  v7[0] = v3;
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)reuseIdentifier
{
  v3 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  return [self reuseIdentifierForAXFontSize:isAccessibilityPreferredContentSizeCategory];
}

+ (id)reuseIdentifierForAXFontSize:(BOOL)size
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@+%@", v4, v7];

  return v8;
}

- (void)updateDateLabel:(id)label conversation:(id)conversation
{
  labelCopy = label;
  v7 = [(CKConversationListCollectionViewRecoverableConversationCell *)self _daysUntilDeletion:conversation];
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

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v15 = @"\u200F";
  }

  else
  {
    v15 = @"\u200E";
  }

  v16 = [(__CFString *)v15 stringByAppendingString:v12];

  [labelCopy setTextForOverride:v16];
}

@end