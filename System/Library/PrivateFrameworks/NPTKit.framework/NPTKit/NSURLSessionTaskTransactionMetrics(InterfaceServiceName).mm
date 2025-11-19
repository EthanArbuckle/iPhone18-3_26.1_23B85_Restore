@interface NSURLSessionTaskTransactionMetrics(InterfaceServiceName)
- (__CFString)interfaceServiceName;
@end

@implementation NSURLSessionTaskTransactionMetrics(InterfaceServiceName)

- (__CFString)interfaceServiceName
{
  v2 = [a1 interfaceName];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D02B18]);
    [v3 activate];
    v4 = [v3 requestParameters];
    [v4 setInterfaceName:v2];

    v5 = [v3 networkServiceName];
    [v3 invalidate];
    if (!v5)
    {
      v6 = [a1 interfaceName];
      v7 = [v6 containsString:@"pdp_ip"];

      if (v7)
      {
        v5 = @"Cellular";
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end