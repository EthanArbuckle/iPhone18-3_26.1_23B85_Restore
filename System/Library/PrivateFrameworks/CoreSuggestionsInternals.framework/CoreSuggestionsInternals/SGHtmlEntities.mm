@interface SGHtmlEntities
+ (id)decodeEntities:(id)entities;
@end

@implementation SGHtmlEntities

+ (id)decodeEntities:(id)entities
{
  v3 = [entities stringByReplacingOccurrencesOfString:@"<" withString:@"&lt"];;
  v4 = objc_opt_new();
  PushParserCtxt = htmlCreatePushParserCtxt(&htmlEntitiesSAXHandlerStruct, v4, 0, 0, 0, XML_CHAR_ENCODING_UTF8);
  htmlCtxtUseOptions(PushParserCtxt, 2107393);
  v6 = objc_autoreleasePoolPush();
  uTF8String = [v3 UTF8String];
  v8 = strlen(uTF8String);
  htmlParseChunk(PushParserCtxt, uTF8String, v8, 1);
  objc_autoreleasePoolPop(v6);
  MEMORY[0x238380570](PushParserCtxt);

  return v4;
}

@end