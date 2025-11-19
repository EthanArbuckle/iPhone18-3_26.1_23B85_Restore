@interface _KSTextReplacementEntry(Sorting)
- (__CFString)shortcutForSorting;
@end

@implementation _KSTextReplacementEntry(Sorting)

- (__CFString)shortcutForSorting
{
  result = [a1 shortcut];
  if (!result)
  {
    return &stru_28679E3A8;
  }

  return result;
}

@end