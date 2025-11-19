@interface NDANFHelperProxyWithFallback
- (NDANFHelperProxyWithFallback)init;
- (id)manifestFromANFDocumentData:(id)a3;
- (void)popInterest;
- (void)pushInterest;
@end

@implementation NDANFHelperProxyWithFallback

- (NDANFHelperProxyWithFallback)init
{
  v8.receiver = self;
  v8.super_class = NDANFHelperProxyWithFallback;
  v2 = [(NDANFHelperProxyWithFallback *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NDANFHelperProxy);
    proxyHelper = v2->_proxyHelper;
    v2->_proxyHelper = v3;

    v5 = objc_alloc_init(NDANFHelper);
    inProcessHelper = v2->_inProcessHelper;
    v2->_inProcessHelper = v5;
  }

  return v2;
}

- (void)pushInterest
{
  v3 = [(NDANFHelperProxyWithFallback *)self proxyHelper];
  [v3 pushInterest];

  v4 = [(NDANFHelperProxyWithFallback *)self inProcessHelper];
  [v4 pushInterest];
}

- (void)popInterest
{
  v3 = [(NDANFHelperProxyWithFallback *)self proxyHelper];
  [v3 popInterest];

  v4 = [(NDANFHelperProxyWithFallback *)self inProcessHelper];
  [v4 popInterest];
}

- (id)manifestFromANFDocumentData:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [(NDANFHelperProxy *)self->_proxyHelper manifestFromANFDocumentData:v4 reachedService:&v13];
  v6 = v13;
  if (v13 == 1)
  {
    v7 = *MEMORY[0x277D30988];
    if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25BE24000, v7, OS_LOG_TYPE_DEFAULT, "Decoded ANF via XPC Service", buf, 2u);
    }

    v6 = v13;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = [(NDANFHelper *)self->_inProcessHelper manifestFromANFDocumentData:v4];

    v9 = *MEMORY[0x277D30988];
    if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25BE24000, v9, OS_LOG_TYPE_DEFAULT, "Decoded ANF in process", v11, 2u);
    }
  }

  return v8;
}

@end