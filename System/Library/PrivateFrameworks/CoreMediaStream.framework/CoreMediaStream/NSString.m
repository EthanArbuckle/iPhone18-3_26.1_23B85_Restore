@interface NSString
@end

@implementation NSString

void __53__NSString_MSStringUtilities__MSTempFileOutFileName___block_invoke()
{
  v2 = NSTemporaryDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"asset-XXXXXX"];
  v1 = MSTempFileOutFileName__formatString;
  MSTempFileOutFileName__formatString = v0;
}

@end