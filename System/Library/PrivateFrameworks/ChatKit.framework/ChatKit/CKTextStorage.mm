@interface CKTextStorage
- (id)defaultAttributes;
- (void)processEditing;
@end

@implementation CKTextStorage

- (void)processEditing
{
  editedRange = [(CKTextStorage *)self editedRange];
  v5 = v4;
  [(CKTextStorage *)self invalidateAttributesInRange:editedRange, v4];
  editedMask = [(CKTextStorage *)self editedMask];
  changeInLength = [(CKTextStorage *)self changeInLength];
  textStorageObserver = [(CKTextStorage *)self textStorageObserver];
  [textStorageObserver processEditingForTextStorage:self edited:editedMask range:editedRange changeInLength:v5 invalidatedRange:{changeInLength, editedRange, v5}];
}

- (id)defaultAttributes
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[CKUIBehavior sharedBehaviors];
  v8[0] = *MEMORY[0x1E69DB648];
  balloonTextFont = [v2 balloonTextFont];
  v9[0] = balloonTextFont;
  v8[1] = *MEMORY[0x1E69DB650];
  theme = [v2 theme];
  entryFieldTextColor = [theme entryFieldTextColor];
  v9[1] = entryFieldTextColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end