@interface SparseBundleBackendXPC
+ (BOOL)isSparseBundleWithURL:(id)l;
- (BOOL)isUnlocked;
- (SparseBundleBackendXPC)initWithCoder:(id)coder;
- (SparseBundleBackendXPC)initWithURL:(id)l fileOpenFlags:(int)flags;
- (SparseBundleBackendXPC)initWithURL:(id)l fileOpenFlags:(int)flags bandSize:(unint64_t)size;
- (id)newWithCryptoFormat:(const void *)format error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)replaceWithBackendXPC:(id)c;
@end

@implementation SparseBundleBackendXPC

- (SparseBundleBackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SparseBundleBackendXPC;
  v5 = [(BackendXPC *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle_handle"];
    fileDescriptor = [objc_claimAutoreleasedReturnValue() fileDescriptor];
    v12 = dup(fileDescriptor);
    v11 = [coderCopy decodeBoolForKey:@"is_writable"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lock_backend"];
    v10 = 0uLL;
    if (v7)
    {
      [v7 backend];
      v10 = v9;
    }

    [(BackendXPC *)v5 cryptoHeader];
    sub_1000D9CE0(coderCopy, &v9);
    sub_1000DE74C();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(BackendXPC *)self backend];
  v6 = v16;
  v5 = v17;
  v15.receiver = self;
  v15.super_class = SparseBundleBackendXPC;
  [(BackendXPC *)&v15 encodeWithCoder:coderCopy];
  v7 = [[NSFileHandle alloc] initWithFileDescriptor:(**(v6 + 24))()];
  [coderCopy encodeObject:v7 forKey:@"bundle_handle"];
  [coderCopy encodeBool:(*(*v6 + 48))(v6) forKey:@"is_writable"];
  v8 = *(v6 + 88);
  if (v8)
  {
    sub_1000DA06C(coderCopy, v8);
  }

  if ((*(*v6 + 208))(v6))
  {
    v9 = objc_alloc_init(FileLocalXPC);
    v10 = v9;
    v12 = *(v6 + 104);
    v11 = *(v6 + 112);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v12;
    v14 = v11;
    [(BackendXPC *)v9 setBackend:&v13];
    if (v14)
    {
      sub_10000367C(v14);
    }

    [coderCopy encodeObject:v10 forKey:@"lock_backend"];
  }

  if (v5)
  {
    sub_10000367C(v5);
  }
}

- (SparseBundleBackendXPC)initWithURL:(id)l fileOpenFlags:(int)flags bandSize:(unint64_t)size
{
  lCopy = l;
  flagsCopy = flags;
  sizeCopy = size;
  v10.receiver = self;
  v10.super_class = SparseBundleBackendXPC;
  if ([(SparseBundleBackendXPC *)&v10 init])
  {
    [lCopy fileSystemRepresentation];
    sub_1000DE8F0();
  }

  return 0;
}

- (SparseBundleBackendXPC)initWithURL:(id)l fileOpenFlags:(int)flags
{
  lCopy = l;
  flagsCopy = flags;
  v8.receiver = self;
  v8.super_class = SparseBundleBackendXPC;
  if ([(SparseBundleBackendXPC *)&v8 init])
  {
    [lCopy fileSystemRepresentation];
    sub_1000DEAB8();
  }

  return 0;
}

- (void)replaceWithBackendXPC:(id)c
{
  cCopy = c;
  [(BackendXPC *)self backend];
  v5 = v13;
  v7 = *(v12 + 88);
  v6 = *(v12 + 96);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11.receiver = self;
  v11.super_class = SparseBundleBackendXPC;
  [(BackendXPC *)&v11 replaceWithBackendXPC:cCopy];
  [(BackendXPC *)self backend];
  v8 = v12;
  v9 = v13;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 96);
  *(v8 + 88) = v7;
  *(v8 + 96) = v6;
  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v6)
  {
    sub_10000367C(v6);
  }

  if (v5)
  {
    sub_10000367C(v5);
  }
}

- (BOOL)isUnlocked
{
  [(BackendXPC *)self backend];
  v2 = *(v4 + 88);
  if (v5)
  {
    sub_10000367C(v5);
  }

  return v2 != 0;
}

- (id)newWithCryptoFormat:(const void *)format error:(id *)error
{
  v6 = objc_alloc_init(SparseBundleBackendXPC);
  [(BackendXPC *)self backend];
  v8 = v19;
  v7 = v20;
  v10 = *format;
  v9 = *(format + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v19 + 96);
  *(v19 + 88) = v10;
  *(v8 + 96) = v9;
  if (v11)
  {
    sub_10000367C(v11);
  }

  v17 = v8;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(BackendXPC *)v6 setBackend:&v17];
  if (v18)
  {
    sub_10000367C(v18);
  }

  v13 = **format;
  v12 = *(*format + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  cryptoHeader = [(BackendXPC *)v6 cryptoHeader];
  v15 = cryptoHeader[1];
  *cryptoHeader = v13;
  cryptoHeader[1] = v12;
  if (v15)
  {
    sub_10000367C(v15);
  }

  if (v7)
  {
    sub_10000367C(v7);
  }

  return v6;
}

+ (BOOL)isSparseBundleWithURL:(id)l
{
  lCopy = l;
  v4 = [NSURL fileURLWithPath:@"Info.plist" relativeToURL:lCopy];
  v5 = [NSURL fileURLWithPath:@"token" relativeToURL:lCopy];
  v6 = +[NSFileManager defaultManager];
  path = [v4 path];
  if ([v6 fileExistsAtPath:path])
  {
    v8 = +[NSFileManager defaultManager];
    path2 = [v5 path];
    v10 = [v8 fileExistsAtPath:path2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end