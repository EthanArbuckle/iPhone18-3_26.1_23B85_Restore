@interface PKDASession
- (NSString)description;
- (PKDASession)initWithDelegate:(id)a3;
- (PKSessionDelegate)delegate;
- (void)daSession:(id)a3 didBecomeActive:(id)a4;
- (void)daSession:(id)a3 didEnd:(id)a4;
- (void)dealloc;
- (void)endSession;
@end

@implementation PKDASession

- (PKDASession)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PKDASession *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    atomic_store(1u, &v6->_sessionState);
  }

  return v6;
}

- (void)dealloc
{
  if ([(PKDASession *)self state]!= 3 && [(PKDASession *)self state]!= 4)
  {
    [(PKDASession *)self endSession];
  }

  v3.receiver = self;
  v3.super_class = PKDASession;
  [(PKDASession *)&v3 dealloc];
}

- (void)endSession
{
  v7 = *MEMORY[0x1E69E9840];
  atomic_store(3u, &self->_sessionState);
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Ending DA Session %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained session:self didChangeState:3];
  }

  [(DASession *)self->_session endSession];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = self->_session;
  v5 = [v3 stringWithFormat:@"<%@: %p state: %ld; session: %@ >", objc_opt_class(), self, -[PKDASession state](self, "state"), v4];;

  return v5;
}

- (void)daSession:(id)a3 didBecomeActive:(id)a4
{
  atomic_store(2u, &self->_sessionState);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained session:self didChangeState:2];
  }
}

- (void)daSession:(id)a3 didEnd:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  atomic_store(4u, &self->_sessionState);
  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v10 = "Session %@ invalidated with error %@";
    v11 = v8;
    v12 = 22;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v15 = 138412290;
    v16 = v6;
    v10 = "Session %@ has ended";
    v11 = v8;
    v12 = 12;
  }

  _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
LABEL_7:

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained session:self didChangeState:4];
  }

  session = self->_session;
  self->_session = 0;
}

- (PKSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end