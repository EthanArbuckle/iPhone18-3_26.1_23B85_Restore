@interface NSMutableData(NSDataUtils)
- (char)mf_convertNetworkLineEndingsToUnixInRange:()NSDataUtils;
- (uint64_t)mf_appendCString:()NSDataUtils;
- (uint64_t)mf_convertNetworkLineEndingsToUnix;
@end

@implementation NSMutableData(NSDataUtils)

- (uint64_t)mf_appendCString:()NSDataUtils
{
  v5 = strlen(__s);

  return [a1 appendBytes:__s length:v5];
}

- (char)mf_convertNetworkLineEndingsToUnixInRange:()NSDataUtils
{
  result = [a1 length];
  if (a4 < 2)
  {
    return result;
  }

  v21 = result;
  v8 = [a1 mutableBytes];
  v20 = a3;
  v9 = (v8 + a3);
  v10 = (v8 + a3 + a4);
  if (a4 < 1)
  {
    result = (v8 + a3);
    goto LABEL_22;
  }

  v11 = (v8 + a3);
  v12 = (v8 + a3);
  while (1)
  {
    v13 = memchr(v12, 13, v10 - v12 - 1);
    v14 = v13;
    v15 = v13 != 0;
    if (v13)
    {
      v16 = v13 >= v10;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      while (v14[1] != 10)
      {
        v18 = memchr(v14 + 1, 13, v10 - 2 - v14);
        v14 = v18;
        v15 = v18 != 0;
        if (!v18 || v18 >= v10)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_10;
    }

LABEL_9:
    if (!v15)
    {
      break;
    }

LABEL_10:
    v17 = v14;
    if (v12 != v11)
    {
      memmove(v11, v12, v14 - v12);
      v17 = &v11[v14 - v12];
    }

    *v17 = 10;
    result = v17 + 1;
    v12 = v14 + 2;
    v11 = result;
    if (v14 + 2 >= v10)
    {
      goto LABEL_22;
    }
  }

  if (v11 != v9)
  {
    memmove(v11, v12, v10 - v12);
  }

  result = &v11[v10 - v12];
LABEL_22:
  v19 = (result - v9);
  if (result - v9 != a4 && v21 != a4)
  {
    result = memmove(result, v10, &v21[-v20 - a4]);
  }

  if (v19 != a4)
  {

    return [a1 setLength:&v21[v19 - a4]];
  }

  return result;
}

- (uint64_t)mf_convertNetworkLineEndingsToUnix
{
  v2 = [a1 length];

  return [a1 mf_convertNetworkLineEndingsToUnixInRange:{0, v2}];
}

@end