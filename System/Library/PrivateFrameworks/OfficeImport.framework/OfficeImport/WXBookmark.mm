@interface WXBookmark
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXBookmark

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = v7;
  if (a3 && a3->name)
  {
    v9 = [v7 WXMainNamespace];
    v10 = CXRequiredLongAttribute(a3, v9, "id");

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->name];
    if ([v11 hasSuffix:@"Start"])
    {
      v12 = [v8 WXMainNamespace];
      v13 = CXRequiredStringAttribute(a3, v12, "name");

      [v14 setBookmarkType:0];
      [v14 setName:v13];
      if (v13)
      {
        [v8 addBookmarkId:v10 name:v13];
      }
    }

    else
    {
      if (![v11 hasSuffix:@"End"])
      {
LABEL_9:

        goto LABEL_10;
      }

      [v14 setBookmarkType:1];
      v13 = [v8 bookmarkName:v10];
      [v14 setName:v13];
    }

    goto LABEL_9;
  }

LABEL_10:
}

@end