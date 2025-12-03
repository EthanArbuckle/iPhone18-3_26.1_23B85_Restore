@interface CoreLocationDelegate
- (CoreLocationDelegate)initWithQueue:(id)queue;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation CoreLocationDelegate

- (CoreLocationDelegate)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CoreLocationDelegate;
  v6 = [(CoreLocationDelegate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    atomic_store(0, &v6->_authStatus);
    objc_storeStrong(&v6->_queue, queue);
    v8 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundlePath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle" delegate:v7 onQueue:queueCopy];
    locationManager = v7->_locationManager;
    v7->_locationManager = v8;
  }

  return v7;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  atomic_store([authorizationCopy authorizationStatus], &self->_authStatus);
  v12 = 7;
  strcpy(v11, "loc.del");
  v7[0] = 0;
  v10 = 0;
  v5 = ims::debug(v11, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Auth status ", 12);
  *(v5 + 17) = 0;
  v6 = atomic_load(&self->_authStatus);
  MEMORY[0x1E6923340](*(v5 + 8), v6);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

@end