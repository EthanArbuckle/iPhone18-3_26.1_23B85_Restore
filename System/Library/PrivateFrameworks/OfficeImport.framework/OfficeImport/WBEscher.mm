@interface WBEscher
+ (id)readRootWithType:(int *)type reader:(id)reader;
+ (void)readRootContainer:(id *)container type:(int *)type reader:(id)reader;
@end

@implementation WBEscher

+ (id)readRootWithType:(int *)type reader:(id)reader
{
  readerCopy = reader;
  v13 = *type;
  wrdReader = [readerCopy wrdReader];
  (*(*wrdReader + 440))(wrdReader, &v13);
  v7 = v13;
  *type = v13;
  if (v7)
  {
    v8 = [ESDRoot alloc];
    wrdReader2 = [readerCopy wrdReader];
    if (wrdReader2)
    {
      v10 = wrdReader2 + 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(ESDRoot *)v8 initFromReader:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)readRootContainer:(id *)container type:(int *)type reader:(id)reader
{
  readerCopy = reader;
  *type = 0;
  v13 = readerCopy;
  v9 = [self readRootWithType:type reader:?];
  v10 = v9;
  if (v9 && [v9 childCount])
  {
    [v10 childCount];
    v11 = [v10 childAt:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      *container = v11;
    }
  }
}

@end