@interface NSString(KCJoiningMessages)
+ (id)decodeFromDER:()KCJoiningMessages error:;
@end

@implementation NSString(KCJoiningMessages)

+ (id)decodeFromDER:()KCJoiningMessages error:
{
  v5 = a3;
  v17 = 0;
  v6 = kcder_decode_string(&v17, a4, [v5 bytes], objc_msgSend(v5, "bytes") + objc_msgSend(v5, "length"));
  v7 = v17;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v5 bytes];
  if (v6 != v8 + [v5 length])
  {
    KCJoiningErrorCreate(1, a4, @"extra data in string", v9, v10, v11, v12, v13, v16);
LABEL_4:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = v7;
LABEL_6:

  return v14;
}

@end