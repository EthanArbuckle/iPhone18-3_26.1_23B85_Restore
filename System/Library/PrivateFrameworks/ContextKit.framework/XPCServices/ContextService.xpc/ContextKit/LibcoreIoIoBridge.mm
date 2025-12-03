@interface LibcoreIoIoBridge
+ (BOOL)isDirectoryWithNSString:(id)string;
@end

@implementation LibcoreIoIoBridge

+ (BOOL)isDirectoryWithNSString:(id)string
{
  v3 = -[NSDictionary fileType]([+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:string, 0], "fileType");

  return [(NSString *)v3 isEqualToString:NSFileTypeDirectory];
}

@end