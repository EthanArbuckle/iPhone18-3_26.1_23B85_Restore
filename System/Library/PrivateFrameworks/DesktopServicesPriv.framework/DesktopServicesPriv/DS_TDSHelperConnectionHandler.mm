@interface DS_TDSHelperConnectionHandler
- (DS_TDSHelperConnectionHandler)initWithHelper:(void *)helper;
- (id).cxx_construct;
- (void)clearHelper;
- (void)handleHelperEvent:(id)event;
@end

@implementation DS_TDSHelperConnectionHandler

- (DS_TDSHelperConnectionHandler)initWithHelper:(void *)helper
{
  result = [(DS_TDSHelperConnectionHandler *)self init];
  *(result + 1) = helper;
  return result;
}

- (void)handleHelperEvent:(id)event
{
  eventCopy = event;
  std::mutex::lock((self + 16));
  v4 = *(self + 1);
  if (v4)
  {
    TDSHelperContext::HandleHelperEvent(v4, eventCopy);
  }

  std::mutex::unlock((self + 16));
}

- (void)clearHelper
{
  std::mutex::lock((self + 16));
  *(self + 1) = 0;

  std::mutex::unlock((self + 16));
}

- (id).cxx_construct
{
  *(self + 2) = 850045863;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

@end