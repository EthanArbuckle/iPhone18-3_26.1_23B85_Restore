@interface NSURL(filePath)
+ (id)fileURLWithString:()filePath;
@end

@implementation NSURL(filePath)

+ (id)fileURLWithString:()filePath
{
  v3 = a3;
  v4 = [v3 hasPrefix:@"file://"];
  v5 = MEMORY[0x277CBEBC0];
  if (v4)
  {
    v6 = [v3 substringFromIndex:{objc_msgSend(@"file://", "length")}];
    v7 = [v5 fileURLWithPath:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  return v7;
}

@end