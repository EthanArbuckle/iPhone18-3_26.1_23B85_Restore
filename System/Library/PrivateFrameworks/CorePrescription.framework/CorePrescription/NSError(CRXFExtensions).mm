@interface NSError(CRXFExtensions)
+ (__CFString)crxf_descriptionForErrorCode:()CRXFExtensions;
+ (id)crxf_errorWithCode:()CRXFExtensions file:line:userInfo:;
- (__CFString)crxf_errorToken;
@end

@implementation NSError(CRXFExtensions)

- (__CFString)crxf_errorToken
{
  v1 = [a1 code];
  if (v1 > 0x31)
  {
    return @"UnknownError";
  }

  else
  {
    return off_278E9FFD8[v1];
  }
}

+ (id)crxf_errorWithCode:()CRXFExtensions file:line:userInfo:
{
  v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a6];
  v11 = [a1 crxf_descriptionForErrorCode:a3];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA450]];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA068]];
  v12 = strrchr(a4, 47);
  if (v12)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = a4;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", v13, a5];
  [v10 setObject:v14 forKeyedSubscript:@"sourceLocation"];
  v17.receiver = a1;
  v17.super_class = off_285938C78;
  v15 = [objc_msgSendSuper2(&v17 alloc)];

  return v15;
}

+ (__CFString)crxf_descriptionForErrorCode:()CRXFExtensions
{
  if (a3 > 0x31)
  {
    return @"Unknown error";
  }

  else
  {
    return off_278EA0168[a3];
  }
}

@end