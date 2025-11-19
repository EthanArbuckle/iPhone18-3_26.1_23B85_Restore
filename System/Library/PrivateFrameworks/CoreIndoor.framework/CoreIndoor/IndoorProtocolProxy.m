@interface IndoorProtocolProxy
- (CLIndoorDelegateProtocol)delegate;
- (IndoorProtocolProxy)initWithDelegate:(id)a3;
- (void)indoorDidFailWithError:(id)a3;
- (void)indoorDidShutdown:(id)a3;
- (void)indoorDidUpdateToLocation:(id)a3 fromLocation:(id)a4;
- (void)indoorGivesUpWithLocation:(id)a3;
- (void)indoorIsUncertainWithLocation:(id)a3;
@end

@implementation IndoorProtocolProxy

- (IndoorProtocolProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IndoorProtocolProxy;
  v5 = [(IndoorProtocolProxy *)&v14 init];
  v10 = v5;
  if (v5)
  {
    if (!v4)
    {
      v13 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v6, v7, v8, v9, *MEMORY[0x277CBE660], @"no delegate", 0);
      objc_exception_throw(v13);
    }

    objc_storeWeak(&v5->_delegate, v4);
    v11 = v10;
  }

  return v10;
}

- (void)indoorDidUpdateToLocation:(id)a3 fromLocation:(id)a4
{
  v16 = a3;
  v6 = a4;
  v11 = objc_msgSend_delegate(self, v7, v8, v9, v10);
  objc_msgSend_indoorDidUpdateToLocation_fromLocation_(v11, v12, v13, v14, v15, v16, v6);
}

- (void)indoorIsUncertainWithLocation:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_indoorIsUncertainWithLocation_(v8, v9, v10, v11, v12, v13);
  }
}

- (void)indoorGivesUpWithLocation:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_indoorGivesUpWithLocation_(v8, v9, v10, v11, v12, v13);
  }
}

- (void)indoorDidFailWithError:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_indoorDidFailWithError_(v8, v9, v10, v11, v12, v13);
  }
}

- (void)indoorDidShutdown:(id)a3
{
  v4 = a3;
  if (v4)
  {
    shutdownReason = self->_shutdownReason;
    self->_shutdownReason = v4;
  }

  else
  {
    NSLog(&cfstr_ErrorDidnTGetA.isa);
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = objc_msgSend_initWithDomain_code_userInfo_(v6, v7, v8, v9, v10, @"com.apple.pipelined", -1, &unk_2858A4348);
    shutdownReason = self->_shutdownReason;
    self->_shutdownReason = v11;
  }
}

- (CLIndoorDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end