@interface KSHardwareInputModeTableCell
- (id)subtitle;
@end

@implementation KSHardwareInputModeTableCell

- (id)subtitle
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] isExtensionInputMode])
  {
    v17.receiver = self;
    v17.super_class = KSHardwareInputModeTableCell;
    result = [(KSInputModeTableCell *)&v17 subtitle];
  }

  else
  {
    identifier = [(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] identifier];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = +[KSKeyboardListController inputModes];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([identifier isEqualToString:TIInputModeGetNormalizedIdentifier()])
        {
          v8 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
          if ([v8 length])
          {
            break;
          }
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    result = [KSKeyboardListController displayNameForHardwareLayout:v8 inputMode:[(KSInputModeTableCell *)self inputMode]];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end