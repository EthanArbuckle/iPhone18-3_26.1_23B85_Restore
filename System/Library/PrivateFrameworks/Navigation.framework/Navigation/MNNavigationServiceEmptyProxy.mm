@interface MNNavigationServiceEmptyProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (MNNavigationServiceEmptyProxy)initWithPeer:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation MNNavigationServiceEmptyProxy

- (BOOL)respondsToSelector:(SEL)a3
{
  if ([(MNNavigationServiceEmptyProxy *)self _isSelectorValidForForwarding:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MNNavigationServiceEmptyProxy;
  return [(MNNavigationServiceEmptyProxy *)&v6 respondsToSelector:a3];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if ([(MNNavigationServiceEmptyProxy *)self _isSelectorValidForForwarding:?])
  {
    v5 = [MEMORY[0x1E695DF68] _navigation_methodSignatureForEmptyMethod];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MNNavigationServiceEmptyProxy;
    v5 = [(MNNavigationServiceEmptyProxy *)&v7 methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 selector];
  if ([(MNNavigationServiceEmptyProxy *)self _isSelectorValidForForwarding:v4])
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(v4);
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

    [(MNNavigationServiceEmptyProxy *)self doesNotRecognizeSelector:v4];
  }
}

- (MNNavigationServiceEmptyProxy)initWithPeer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MNNavigationServiceEmptyProxy;
  v6 = [(MNNavigationServiceEmptyProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peer, a3);
  }

  return v7;
}

@end