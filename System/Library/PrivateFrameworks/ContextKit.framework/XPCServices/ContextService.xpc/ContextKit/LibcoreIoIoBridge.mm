@interface LibcoreIoIoBridge
+ (BOOL)isDirectoryWithNSString:(id)a3;
@end

@implementation LibcoreIoIoBridge

+ (BOOL)isDirectoryWithNSString:(id)a3
{
  v3 = -[NSDictionary fileType]([+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:a3, 0], "fileType");

  return [(NSString *)v3 isEqualToString:NSFileTypeDirectory];
}

@end