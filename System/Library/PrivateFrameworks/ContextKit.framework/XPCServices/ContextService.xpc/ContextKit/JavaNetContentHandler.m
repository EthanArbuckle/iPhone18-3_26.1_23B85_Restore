@interface JavaNetContentHandler
- (id)getContentWithJavaNetURLConnection:(id)a3 withIOSClassArray:(id)a4;
@end

@implementation JavaNetContentHandler

- (id)getContentWithJavaNetURLConnection:(id)a3 withIOSClassArray:(id)a4
{
  v5 = [(JavaNetContentHandler *)self getContentWithJavaNetURLConnection:a3];
  if (!a4)
  {
    goto LABEL_9;
  }

  if (*(a4 + 2) >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = *(a4 + v7 + 3);
      if (!v8)
      {
        break;
      }

      if ([v8 isInstance:v6])
      {
        return v6;
      }

      if (++v7 >= *(a4 + 2))
      {
        return 0;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  return 0;
}

@end