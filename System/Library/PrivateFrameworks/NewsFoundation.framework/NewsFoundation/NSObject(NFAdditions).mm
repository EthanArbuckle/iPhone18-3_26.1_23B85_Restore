@interface NSObject(NFAdditions)
+ (uint64_t)nf_compareObject:()NFAdditions toObject:;
+ (uint64_t)nf_object:()NFAdditions isEqualToObject:;
@end

@implementation NSObject(NFAdditions)

+ (uint64_t)nf_object:()NFAdditions isEqualToObject:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    if (v5)
    {
      v6 = v5;
      v8 = v7;
    }

    else
    {
      if (!v6)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v8 = 0;
    }

    v9 = [v6 isEqual:v8];
  }

LABEL_8:

  return v9;
}

+ (uint64_t)nf_compareObject:()NFAdditions toObject:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else if (v5)
  {
    if (v6)
    {
      v8 = [v5 compare:v6];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end