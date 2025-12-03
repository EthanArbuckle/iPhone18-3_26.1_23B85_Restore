@interface NPKTransientPassAssertion
- (NPKTransientPassAssertion)initWithPassWithUniqueID:(id)d;
- (void)_resyncState;
@end

@implementation NPKTransientPassAssertion

- (NPKTransientPassAssertion)initWithPassWithUniqueID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NPKTransientPassAssertion;
  v6 = [(NPKTransientAssertion *)&v9 initWithQueue:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueID, d);
    [(NPKTransientPassAssertion *)v7 _resyncState];
  }

  return v7;
}

- (void)_resyncState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138412290;
      *&v11[4] = objc_opt_class();
      v6 = *&v11[4];
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@: Transient pass assertion: resyncing state", v11, 0xCu);
    }
  }

  _remoteObjectProxy = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [_remoteObjectProxy setTransientPassUniqueID:self->_uniqueID];

  _remoteObjectProxy2 = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [_remoteObjectProxy2 setServiceModeRequested:self->_requestServiceMode];

  _remoteObjectProxy3 = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [_remoteObjectProxy3 setDisableCardSelection:self->_disableCardSelection];

  v10 = *MEMORY[0x277D85DE8];
}

@end