@interface MNNavigationServiceEmptyProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (MNNavigationServiceEmptyProxy)initWithPeer:(id)peer;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MNNavigationServiceEmptyProxy

- (BOOL)respondsToSelector:(SEL)selector
{
  if ([(MNNavigationServiceEmptyProxy *)self _isSelectorValidForForwarding:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MNNavigationServiceEmptyProxy;
  return [(MNNavigationServiceEmptyProxy *)&v6 respondsToSelector:selector];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if ([(MNNavigationServiceEmptyProxy *)self _isSelectorValidForForwarding:?])
  {
    _navigation_methodSignatureForEmptyMethod = [MEMORY[0x1E695DF68] _navigation_methodSignatureForEmptyMethod];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MNNavigationServiceEmptyProxy;
    _navigation_methodSignatureForEmptyMethod = [(MNNavigationServiceEmptyProxy *)&v7 methodSignatureForSelector:selector];
  }

  return _navigation_methodSignatureForEmptyMethod;
}

- (void)forwardInvocation:(id)invocation
{
  v14 = *MEMORY[0x1E69E9840];
  selector = [invocation selector];
  if ([(MNNavigationServiceEmptyProxy *)self _isSelectorValidForForwarding:selector])
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(selector);
      peer = self->_peer;
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = peer;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "%@ is not allowed because %@ is missing the required entitlement.", &v10, 0x16u);
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    [(MNNavigationServiceEmptyProxy *)self doesNotRecognizeSelector:selector];
  }
}

- (MNNavigationServiceEmptyProxy)initWithPeer:(id)peer
{
  peerCopy = peer;
  v9.receiver = self;
  v9.super_class = MNNavigationServiceEmptyProxy;
  v6 = [(MNNavigationServiceEmptyProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peer, peer);
  }

  return v7;
}

@end