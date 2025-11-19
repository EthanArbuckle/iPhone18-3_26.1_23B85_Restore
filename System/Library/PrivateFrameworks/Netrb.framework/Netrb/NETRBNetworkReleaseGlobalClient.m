@interface NETRBNetworkReleaseGlobalClient
@end

@implementation NETRBNetworkReleaseGlobalClient

uint64_t ____NETRBNetworkReleaseGlobalClient_block_invoke()
{
  v0 = _NETRBNetworkClientRefCnt;
  if (!_NETRBNetworkClientRefCnt)
  {
    ____NETRBNetworkReleaseGlobalClient_block_invoke_cold_1();
  }

  --_NETRBNetworkClientRefCnt;
  result = _NETRBNetworkClient;
  if (v0 == 1 && _NETRBNetworkClient != 0)
  {
    result = _NETRBClientDestroy(_NETRBNetworkClient);
    _NETRBNetworkClient = 0;
  }

  return result;
}

@end