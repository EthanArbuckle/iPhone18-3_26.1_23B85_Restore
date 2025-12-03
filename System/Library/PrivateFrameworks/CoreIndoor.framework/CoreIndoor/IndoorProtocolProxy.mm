@interface IndoorProtocolProxy
- (CLIndoorDelegateProtocol)delegate;
- (IndoorProtocolProxy)initWithDelegate:(id)delegate;
- (void)indoorDidFailWithError:(id)error;
- (void)indoorDidShutdown:(id)shutdown;
- (void)indoorDidUpdateToLocation:(id)location fromLocation:(id)fromLocation;
- (void)indoorGivesUpWithLocation:(id)location;
- (void)indoorIsUncertainWithLocation:(id)location;
@end

@implementation IndoorProtocolProxy

- (IndoorProtocolProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = IndoorProtocolProxy;
  v5 = [(IndoorProtocolProxy *)&v14 init];
  v10 = v5;
  if (v5)
  {
    if (!delegateCopy)
    {
      v13 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v6, v7, v8, v9, *MEMORY[0x277CBE660], @"no delegate", 0);
      objc_exception_throw(v13);
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v11 = v10;
  }

  return v10;
}

- (void)indoorDidUpdateToLocation:(id)location fromLocation:(id)fromLocation
{
  locationCopy = location;
  fromLocationCopy = fromLocation;
  v11 = objc_msgSend_delegate(self, v7, v8, v9, v10);
  objc_msgSend_indoorDidUpdateToLocation_fromLocation_(v11, v12, v13, v14, v15, locationCopy, fromLocationCopy);
}

- (void)indoorIsUncertainWithLocation:(id)location
{
  locationCopy = location;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_indoorIsUncertainWithLocation_(v8, v9, v10, v11, v12, locationCopy);
  }
}

- (void)indoorGivesUpWithLocation:(id)location
{
  locationCopy = location;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_indoorGivesUpWithLocation_(v8, v9, v10, v11, v12, locationCopy);
  }
}

- (void)indoorDidFailWithError:(id)error
{
  errorCopy = error;
  v8 = objc_msgSend_delegate(self, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_indoorDidFailWithError_(v8, v9, v10, v11, v12, errorCopy);
  }
}

- (void)indoorDidShutdown:(id)shutdown
{
  shutdownCopy = shutdown;
  if (shutdownCopy)
  {
    shutdownReason = self->_shutdownReason;
    self->_shutdownReason = shutdownCopy;
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