@interface NSUUID(MSVBase64)
+ (id)msv_UUIDWithData:()MSVBase64;
+ (id)msv_uuidWithCFUUID:()MSVBase64;
+ (id)uuidWithMSVBase64UUID:()MSVBase64;
- (CFUUIDRef)msv_copyCFUUID;
- (id)MSVBase64UUIDString;
- (id)initWithMSVBase64UUIDString:()MSVBase64;
- (id)msv_UUIDData;
@end

@implementation NSUUID(MSVBase64)

- (CFUUIDRef)msv_copyCFUUID
{
  *&v2.byte0 = 0;
  *&v2.byte8 = 0;
  [self getUUIDBytes:&v2];
  return CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v2);
}

- (id)msv_UUIDData
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)MSVBase64UUIDString
{
  msv_UUIDData = [self msv_UUIDData];
  v2 = [msv_UUIDData base64EncodedStringWithOptions:0];
  v3 = [v2 substringToIndex:22];

  return v3;
}

- (id)initWithMSVBase64UUIDString:()MSVBase64
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 stringByAppendingString:@"=="];

  v8 = [v6 initWithBase64EncodedString:v7 options:0];
  if ([v8 length] == 16)
  {
    self = [self initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)msv_uuidWithCFUUID:()MSVBase64
{
  v5 = CFUUIDGetUUIDBytes(uuid);
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v5];

  return v3;
}

+ (id)msv_UUIDWithData:()MSVBase64
{
  v4 = a3;
  if ([v4 length] == 16)
  {
    v5 = [[self alloc] initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)uuidWithMSVBase64UUID:()MSVBase64
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithMSVBase64UUIDString:v3];

  return v4;
}

@end