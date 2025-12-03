@interface NSString(CUByteCodable)
+ (id)createWithBytesNoCopy:()CUByteCodable length:error:;
- (const)encodedBytesAndReturnLength:()CUByteCodable error:;
- (id)encodedDataAndReturnError:()CUByteCodable;
@end

@implementation NSString(CUByteCodable)

- (id)encodedDataAndReturnError:()CUByteCodable
{
  v4 = [self dataUsingEncoding:4];
  v11 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else if (a3)
  {
    *a3 = NSErrorWithOSStatusF(4294960596, "UTF-8 conversion failed", v5, v6, v7, v8, v9, v10, v14);
  }

  return v11;
}

- (const)encodedBytesAndReturnLength:()CUByteCodable error:
{
  uTF8String = [self UTF8String];
  v13 = uTF8String;
  if (uTF8String)
  {
    *a3 = strlen(uTF8String);
  }

  else if (a4)
  {
    *a4 = NSErrorWithOSStatusF(4294960596, "UTF-8 conversion failed", v7, v8, v9, v10, v11, v12, v15);
  }

  return v13;
}

+ (id)createWithBytesNoCopy:()CUByteCodable length:error:
{
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a3 length:a4 encoding:4 freeWhenDone:1];
  v13 = v6;
  if (v6)
  {
    v14 = v6;
  }

  else if (a5)
  {
    *a5 = NSErrorWithOSStatusF(4294960554, "Bad UTF-8", v7, v8, v9, v10, v11, v12, v16);
  }

  return v13;
}

@end