@interface JavaUtilServiceLoader_ServiceIterator
- (BOOL)hasNext;
- (id)next;
- (id)readClass;
- (void)dealloc;
@end

@implementation JavaUtilServiceLoader_ServiceIterator

- (BOOL)hasNext
{
  if (!self->isRead_)
  {
    [JavaUtilServiceLoader_ServiceIterator readClass]_0(self);
  }

  queue = self->queue_;
  if (queue)
  {
    LOBYTE(queue) = ![(JavaUtilAbstractCollection *)queue isEmpty];
  }

  return queue;
}

- (id)readClass
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = *(self + 24);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  result = [*(self + 24) countByEnumeratingWithState:&v15 objects:v19 count:16];
  v4 = result;
  if (result)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v1);
        }

        if (!*(*(&v15 + 1) + 8 * v6))
        {
          JreThrowNullPointerException();
        }

        v7 = new_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_([*(*(&v15 + 1) + 8 * v6) openStream], @"UTF-8");
        v8 = new_JavaIoBufferedReader_initWithJavaIoReader_(v7);
        while (1)
        {
          readLine = [(JavaIoBufferedReader *)v8 readLine];
          v10 = readLine;
          if (!readLine)
          {
            break;
          }

          v11 = [readLine indexOf:35];
          if (v11 != -1 && (v10 = [v10 substring:0 endIndex:v11]) == 0 || (v12 = objc_msgSend(v10, "trim"), (v13 = v12) == 0))
          {
            JreThrowNullPointerException();
          }

          if (([v12 isEmpty] & 1) == 0)
          {
            sub_100250A28(v13);
            v14 = *(self + 40);
            if (!v14)
            {
              JreThrowNullPointerException();
            }

            if (([v14 containsWithId:v13] & 1) == 0)
            {
              [*(self + 40) addWithId:v13];
            }
          }
        }

        *(self + 32) = 1;
        LibcoreIoIoUtils_closeQuietlyWithJavaLangAutoCloseable_(v8);
        v6 = v6 + 1;
      }

      while (v6 != v4);
      result = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)next
{
  if (![(JavaUtilServiceLoader_ServiceIterator *)self hasNext])
  {
    v9 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v9);
  }

  queue = self->queue_;
  if (!queue)
  {
    JreThrowNullPointerException();
  }

  remove = [(JavaUtilLinkedList *)queue remove];
  service = self->service_;
  if (!service || (classLoader = self->classLoader_) == 0 || (v7 = [(JavaLangClassLoader *)classLoader loadClassWithNSString:remove]) == 0)
  {
    JreThrowNullPointerException();
  }

  return -[IOSClass cast:](service, "cast:", [v7 newInstance]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilServiceLoader_ServiceIterator;
  [(JavaUtilServiceLoader_ServiceIterator *)&v3 dealloc];
}

@end