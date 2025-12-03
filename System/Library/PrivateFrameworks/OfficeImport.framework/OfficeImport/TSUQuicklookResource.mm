@interface TSUQuicklookResource
+ (id)imagePathForQuicklookResource:(id)resource;
@end

@implementation TSUQuicklookResource

+ (id)imagePathForQuicklookResource:(id)resource
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iwork.iWorkImport"];
  result = [v4 pathForResource:resource ofType:@"png"];
  if (!result)
  {
    result = [v4 pathForResource:objc_msgSend(resource ofType:{"stringByAppendingString:", @"@2x", @"png"}];
    if (!result)
    {
      v6 = [resource stringByAppendingString:@"@3x"];

      return [v4 pathForResource:v6 ofType:@"png"];
    }
  }

  return result;
}

@end