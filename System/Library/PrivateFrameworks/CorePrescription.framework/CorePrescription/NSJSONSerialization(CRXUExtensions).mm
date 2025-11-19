@interface NSJSONSerialization(CRXUExtensions)
+ (id)crxu_JSONObjectWithString:()CRXUExtensions error:;
+ (id)crxu_stringWithJSONObject:()CRXUExtensions error:;
@end

@implementation NSJSONSerialization(CRXUExtensions)

+ (id)crxu_stringWithJSONObject:()CRXUExtensions error:
{
  v10 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:3 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v8 = v6;
    *a4 = v6;
  }

LABEL_7:

  return v7;
}

+ (id)crxu_JSONObjectWithString:()CRXUExtensions error:
{
  if (a3)
  {
    v5 = [a3 dataUsingEncoding:4];
    v9 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:1 error:&v9];
    v7 = v9;
    if (a4 && v7)
    {
      v7 = v7;
      *a4 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end