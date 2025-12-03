@interface NSURLSessionTaskTransactionMetrics(TLSVersionString)
+ (__CFString)_c2_stringForTLSProtocolVersion:()TLSVersionString;
- (id)c2_NegotiatedTLSProtocolVersionString;
@end

@implementation NSURLSessionTaskTransactionMetrics(TLSVersionString)

- (id)c2_NegotiatedTLSProtocolVersionString
{
  v2 = objc_opt_class();
  negotiatedTLSProtocolVersion = [self negotiatedTLSProtocolVersion];
  v4 = [v2 _c2_stringForTLSProtocolVersion:{objc_msgSend(negotiatedTLSProtocolVersion, "unsignedLongLongValue")}];

  return v4;
}

+ (__CFString)_c2_stringForTLSProtocolVersion:()TLSVersionString
{
  if (a3 > 771)
  {
    if (a3 == 772)
    {
      return @"TLSv13";
    }

    if (a3 != 65277)
    {
      if (a3 == 65279)
      {
        return @"DTLSv10";
      }

      return @"Unknown";
    }

    return @"DTLSv12";
  }

  else
  {
    if (a3 == 769)
    {
      return @"TLSv10";
    }

    if (a3 != 770)
    {
      if (a3 == 771)
      {
        return @"TLSv12";
      }

      return @"Unknown";
    }

    return @"TLSv11";
  }
}

@end