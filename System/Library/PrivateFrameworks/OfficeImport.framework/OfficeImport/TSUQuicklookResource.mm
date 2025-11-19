@interface TSUQuicklookResource
+ (id)imagePathForQuicklookResource:(id)a3;
@end

@implementation TSUQuicklookResource

+ (id)imagePathForQuicklookResource:(id)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iwork.iWorkImport"];
  result = [v4 pathForResource:a3 ofType:@"png"];
  if (!result)
  {
    result = [v4 pathForResource:objc_msgSend(a3 ofType:{"stringByAppendingString:", @"@2x", @"png"}];
    if (!result)
    {
      v6 = [a3 stringByAppendingString:@"@3x"];

      return [v4 pathForResource:v6 ofType:@"png"];
    }
  }

  return result;
}

@end