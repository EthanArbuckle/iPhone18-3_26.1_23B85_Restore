@interface _MFNanoServerMessageContentURLProtocolRegistry
+ (id)sharedRegistry;
- (_MFNanoServerMessageContentURLProtocolRegistry)init;
- (id)URLForLoadingContext:(id)context scheme:(id)scheme;
- (id)loadingContextForURL:(id)l;
@end

@implementation _MFNanoServerMessageContentURLProtocolRegistry

+ (id)sharedRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091718;
  block[3] = &unk_1001562E8;
  block[4] = self;
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

- (id)URLForLoadingContext:(id)context scheme:(id)scheme
{
  contextCopy = context;
  schemeCopy = scheme;
  [(NSLock *)self->_lock lock];
  v8 = objc_getAssociatedObject(contextCopy, off_1001845D0);
  if (!v8)
  {
    v9 = objc_alloc_init(NSURLComponents);
    [v9 setScheme:schemeCopy];
    v10 = qword_100185AA8++;
    v11 = [NSString stringWithFormat:@"/%lu", v10];
    [v9 setPath:v11];

    v8 = [v9 URL];
    objc_setAssociatedObject(contextCopy, off_1001845D0, v8, 0x301);
    storage = [(_MFNanoServerMessageContentURLProtocolRegistry *)self storage];
    [storage setObject:contextCopy forKey:v8];
  }

  [(NSLock *)self->_lock unlock];

  return v8;
}

- (id)loadingContextForURL:(id)l
{
  lCopy = l;
  [(NSLock *)self->_lock lock];
  storage = [(_MFNanoServerMessageContentURLProtocolRegistry *)self storage];
  query = [storage objectForKey:lCopy];

  if (!query)
  {
    v7 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    query = [v7 query];

    if (query)
    {
      [v7 setQuery:0];
      storage2 = [(_MFNanoServerMessageContentURLProtocolRegistry *)self storage];
      v9 = [v7 URL];
      query = [storage2 objectForKey:v9];
    }
  }

  [(NSLock *)self->_lock unlock];

  return query;
}

@end