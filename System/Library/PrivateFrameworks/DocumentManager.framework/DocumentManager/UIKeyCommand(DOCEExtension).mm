@interface UIKeyCommand(DOCEExtension)
- (BOOL)doc_isCancellingKeyCommand;
- (BOOL)doc_isDismissingKeyCommand;
- (BOOL)doc_isShortcutEqualToKeyCommand:()DOCEExtension;
- (id)_doc_erasedKeyCommandWithWrappedAction:()DOCEExtension;
@end

@implementation UIKeyCommand(DOCEExtension)

- (id)_doc_erasedKeyCommandWithWrappedAction:()DOCEExtension
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"com.apple.DocumentManager.keyCommands.originalKeyCommandAction";
  v5 = NSStringFromSelector([self action]);
  v16[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v7 = MEMORY[0x1E69DCBA0];
  discoverabilityTitle = [self discoverabilityTitle];
  input = [self input];
  modifierFlags = [self modifierFlags];
  alternates = [self alternates];
  v12 = [v7 commandWithTitle:discoverabilityTitle image:0 action:a3 input:input modifierFlags:modifierFlags propertyList:v6 alternates:alternates];

  discoverabilityTitle2 = [self discoverabilityTitle];
  [v12 setDiscoverabilityTitle:discoverabilityTitle2];

  [v12 setAttributes:{objc_msgSend(self, "attributes")}];

  return v12;
}

- (BOOL)doc_isCancellingKeyCommand
{
  v2 = [DOCKeyCommandController cancellingKeyCommandsWithAction:sel_description];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__UIKeyCommand_DOCEExtension__doc_isCancellingKeyCommand__block_invoke;
  v7[3] = &unk_1E8783608;
  v7[4] = self;
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:v7];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [v4 count] != 0;
  return v5;
}

- (BOOL)doc_isDismissingKeyCommand
{
  v2 = [DOCKeyCommandController dismissingKeyCommandsWithAction:sel_description];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__UIKeyCommand_DOCEExtension__doc_isDismissingKeyCommand__block_invoke;
  v7[3] = &unk_1E8783608;
  v7[4] = self;
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:v7];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [v4 count] != 0;
  return v5;
}

- (BOOL)doc_isShortcutEqualToKeyCommand:()DOCEExtension
{
  v4 = a3;
  input = [self input];
  input2 = [v4 input];
  if ([input isEqualToString:input2])
  {
    modifierFlags = [self modifierFlags];
    v8 = modifierFlags == [v4 modifierFlags];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end