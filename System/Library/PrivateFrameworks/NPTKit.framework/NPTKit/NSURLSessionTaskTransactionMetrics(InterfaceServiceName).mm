@interface NSURLSessionTaskTransactionMetrics(InterfaceServiceName)
- (__CFString)interfaceServiceName;
@end

@implementation NSURLSessionTaskTransactionMetrics(InterfaceServiceName)

- (__CFString)interfaceServiceName
{
  interfaceName = [self interfaceName];
  if (interfaceName)
  {
    v3 = objc_alloc_init(MEMORY[0x277D02B18]);
    [v3 activate];
    requestParameters = [v3 requestParameters];
    [requestParameters setInterfaceName:interfaceName];

    networkServiceName = [v3 networkServiceName];
    [v3 invalidate];
    if (!networkServiceName)
    {
      interfaceName2 = [self interfaceName];
      v7 = [interfaceName2 containsString:@"pdp_ip"];

      if (v7)
      {
        networkServiceName = @"Cellular";
      }

      else
      {
        networkServiceName = 0;
      }
    }
  }

  else
  {
    networkServiceName = 0;
  }

  return networkServiceName;
}

@end