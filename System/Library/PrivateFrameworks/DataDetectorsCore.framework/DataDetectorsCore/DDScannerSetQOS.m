@interface DDScannerSetQOS
@end

@implementation DDScannerSetQOS

__CFBundle *__DDScannerSetQOS_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetIdentifier(result);
    if (result)
    {
      result = CFStringHasPrefix(result, @"com.apple.WebKit.WebContent");
      DDScannerSetQOS_inWebProcess = result;
    }
  }

  return result;
}

@end