@interface _MFNanoServerMessageContentURLProtocolRegistry
+ (id)sharedRegistry;
- (_MFNanoServerMessageContentURLProtocolRegistry)init;
- (id)URLForLoadingContext:(id)a3 scheme:(id)a4;
- (id)loadingContextForURL:(id)a3;
@end

@implementation _MFNanoServerMessageContentURLProtocolRegistry

+ (id)sharedRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091718;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185AA0 != -1)
  {
    dispatch_once(&qword_100185AA0, block);
  }

  v2 = qword_100185A98;

  return v2;
}

- (_MFNanoServerMessageContentURLProtocolRegistry)init
{
  v8.receiver = self;
  v8.super_class = _MFNanoServerMessageContentURLProtocolRegistry;
  v2 = [(_MFNanoServerMessageContentURLProtocolRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = +[NSMapTable weakToWeakObjectsMapTable];
    storage = v2->_storage;
    v2->_storage = v5;
  }

  return v2;
}

- (id)URLForLoadingContext:(id)a3 scheme:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSLock *)self->_lock lock];
  v8 = objc_getAssociatedObject(v6, off_1001845D0);
  if (!v8)
  {
    v9 = objc_alloc_init(NSURLComponents);
    [v9 setScheme:v7];
    v10 = qword_100185AA8++;
    v11 = [NSString stringWithFormat:@"/%lu", v10];
    [v9 setPath:v11];

    v8 = [v9 URL];
    objc_setAssociatedObject(v6, off_1001845D0, v8, 0x301);
    v12 = [(_MFNanoServerMessageContentURLProtocolRegistry *)self storage];
    [v12 setObject:v6 forKey:v8];
  }

  [(NSLock *)self->_lock unlock];

  return v8;
}

- (id)loadingContextForURL:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v5 = [(_MFNanoServerMessageContentURLProtocolRegistry *)self storage];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v6 = [v7 query];

    if (v6)
    {
      [v7 setQuery:0];
      v8 = [(_MFNanoServerMessageContentURLProtocolRegistry *)self storage];
      v9 = [v7 URL];
      v6 = [v8 objectForKey:v9];
    }
  }

  [(NSLock *)self->_lock unlock];

  return v6;
}

@end