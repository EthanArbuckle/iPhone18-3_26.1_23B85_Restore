@interface CKTextStorage
- (id)defaultAttributes;
- (void)processEditing;
@end

@implementation CKTextStorage

- (void)processEditing
{
  v3 = [(CKTextStorage *)self editedRange];
  v5 = v4;
  [(CKTextStorage *)self invalidateAttributesInRange:v3, v4];
  v6 = [(CKTextStorage *)self editedMask];
  v7 = [(CKTextStorage *)self changeInLength];
  v8 = [(CKTextStorage *)self textStorageObserver];
  [v8 processEditingForTextStorage:self edited:v6 range:v3 changeInLength:v5 invalidatedRange:{v7, v3, v5}];
}

- (id)defaultAttributes
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[CKUIBehavior sharedBehaviors];
  v8[0] = *MEMORY[0x1E69DB648];
  v3 = [v2 balloonTextFont];
  v9[0] = v3;
  v8[1] = *MEMORY[0x1E69DB650];
  v4 = [v2 theme];
  v5 = [v4 entryFieldTextColor];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end