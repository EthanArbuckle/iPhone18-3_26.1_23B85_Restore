@interface WBEscher
+ (id)readRootWithType:(int *)a3 reader:(id)a4;
+ (void)readRootContainer:(id *)a3 type:(int *)a4 reader:(id)a5;
@end

@implementation WBEscher

+ (id)readRootWithType:(int *)a3 reader:(id)a4
{
  v5 = a4;
  v13 = *a3;
  v6 = [v5 wrdReader];
  (*(*v6 + 440))(v6, &v13);
  v7 = v13;
  *a3 = v13;
  if (v7)
  {
    v8 = [ESDRoot alloc];
    v9 = [v5 wrdReader];
    if (v9)
    {
      v10 = v9 + 8;
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

+ (void)readRootContainer:(id *)a3 type:(int *)a4 reader:(id)a5
{
  v8 = a5;
  *a4 = 0;
  v13 = v8;
  v9 = [a1 readRootWithType:a4 reader:?];
  v10 = v9;
  if (v9 && [v9 childCount])
  {
    [v10 childCount];
    v11 = [v10 childAt:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      *a3 = v11;
    }
  }
}

@end