@interface JavaNetContentHandler
- (id)getContentWithJavaNetURLConnection:(id)connection withIOSClassArray:(id)array;
@end

@implementation JavaNetContentHandler

- (id)getContentWithJavaNetURLConnection:(id)connection withIOSClassArray:(id)array
{
  v5 = [(JavaNetContentHandler *)self getContentWithJavaNetURLConnection:connection];
  if (!array)
  {
    goto LABEL_9;
  }

  if (*(array + 2) >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = *(array + v7 + 3);
      if (!v8)
      {
        break;
      }

      if ([v8 isInstance:v6])
      {
        return v6;
      }

      if (++v7 >= *(array + 2))
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