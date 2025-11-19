@interface NSString
@end

@implementation NSString

void __70__NSString_SGNSString__sg_dataEnumeratorUsingEncoding_nullTerminated___block_invoke_3(uint64_t a1, uint64_t a2, NSRange range1, _BYTE *a4)
{
  length = range1.length;
  location = range1.location;
  v15 = *(a1 + 48);
  v14.location = location;
  v14.length = length;
  v9 = NSIntersectionRange(v14, v15);
  if (v9.length)
  {
    if (v9.length == *(a1 + 64))
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
      *a4 = 1;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E695DEF0]);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__NSString_SGNSString__sg_dataEnumeratorUsingEncoding_nullTerminated___block_invoke_4;
      v12[3] = &unk_1E7EFCC08;
      v13 = *(a1 + 40);
      v11 = [v10 initWithBytesNoCopy:a2 length:v9.length deallocator:v12];
      [*(a1 + 32) addObject:v11];
    }
  }
}

@end