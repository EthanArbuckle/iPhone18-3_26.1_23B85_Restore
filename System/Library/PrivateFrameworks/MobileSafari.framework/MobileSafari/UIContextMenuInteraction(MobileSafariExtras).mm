@interface UIContextMenuInteraction(MobileSafariExtras)
- (_SFUIViewPopoverSourceInfo)safari_popoverSourceInfo;
@end

@implementation UIContextMenuInteraction(MobileSafariExtras)

- (_SFUIViewPopoverSourceInfo)safari_popoverSourceInfo
{
  view = [self view];
  [self locationInView:view];
  v4 = v3;
  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = view;
    v8 = [v7 indexPathForItemAtPoint:{v4, v6}];
    if (v8)
    {
      v9 = [v7 cellForItemAtIndexPath:v8];
      if (v9)
      {
        v10 = v9;
        v11 = [[_SFUIViewPopoverSourceInfo alloc] initWithView:v9];

        goto LABEL_7;
      }
    }
  }

  v12 = [_SFUIViewPopoverSourceInfo alloc];
  v11 = [(_SFUIViewPopoverSourceInfo *)v12 initWithView:view rect:v4, v6, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
LABEL_7:

  return v11;
}

@end