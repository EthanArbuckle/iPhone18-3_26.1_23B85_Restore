@interface OrchestratorClientIOLapseHandler
- (OrchestratorClientIOLapseHandler)init;
- (void)ioHasStartedOnDevice:(BOOL)a3;
@end

@implementation OrchestratorClientIOLapseHandler

- (OrchestratorClientIOLapseHandler)init
{
  v5.receiver = self;
  v5.super_class = OrchestratorClientIOLapseHandler;
  v2 = [(OrchestratorClientIOLapseHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mDeviceID = 0;
    std::unique_ptr<IOLapseHandler>::reset[abi:ne200100](&v2->mLapseHandler.__ptr_, 0);
  }

  return v3;
}

- (void)ioHasStartedOnDevice:(BOOL)a3
{
  ptr = self->mLapseHandler.__ptr_;
  if (ptr)
  {
    IOLapseHandler::setIOHasStarted(ptr, a3);
  }
}

@end