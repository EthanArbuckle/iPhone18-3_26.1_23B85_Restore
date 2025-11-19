@interface SBSHomeScreenService(DOCExtensions)
- (uint64_t)doc_hasConfiguredFilesStackWithURL:()DOCExtensions;
- (void)doc_addFileStackWithURL:()DOCExtensions;
- (void)doc_removeFileStackWithURL:()DOCExtensions;
@end

@implementation SBSHomeScreenService(DOCExtensions)

- (uint64_t)doc_hasConfiguredFilesStackWithURL:()DOCExtensions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 hasConfiguredFilesStackWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)doc_addFileStackWithURL:()DOCExtensions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 addFileStackWithURL:v4];
  }
}

- (void)doc_removeFileStackWithURL:()DOCExtensions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 removeFileStackWithURL:v4];
  }
}

@end