@interface WXBookmark
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXBookmark

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v8 = stateCopy;
  if (from && from->name)
  {
    wXMainNamespace = [stateCopy WXMainNamespace];
    v10 = CXRequiredLongAttribute(from, wXMainNamespace, "id");

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:from->name];
    if ([v11 hasSuffix:@"Start"])
    {
      wXMainNamespace2 = [v8 WXMainNamespace];
      v13 = CXRequiredStringAttribute(from, wXMainNamespace2, "name");

      [toCopy setBookmarkType:0];
      [toCopy setName:v13];
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

      [toCopy setBookmarkType:1];
      v13 = [v8 bookmarkName:v10];
      [toCopy setName:v13];
    }

    goto LABEL_9;
  }

LABEL_10:
}

@end