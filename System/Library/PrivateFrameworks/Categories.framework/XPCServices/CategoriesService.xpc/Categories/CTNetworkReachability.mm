@interface CTNetworkReachability
+ (BOOL)_isReachableWithFlags:(unsigned int)flags;
+ (BOOL)networkReachable;
+ (BOOL)networkReachableWithTargetURL:(id)l;
@end

@implementation CTNetworkReachability

+ (BOOL)networkReachable
{
  v2 = objc_opt_class();
  v3 = [NSURL URLWithString:@"http://www.apple.com"];
  LOBYTE(v2) = [v2 networkReachableWithTargetURL:v3];

  return v2;
}

+ (BOOL)networkReachableWithTargetURL:(id)l
{
  host = [l host];
  v4 = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [host UTF8String]);

  flags = 0;
  if (SCNetworkReachabilityGetFlags(v4, &flags))
  {
    v5 = [objc_opt_class() _isReachableWithFlags:flags];
    if (v4)
    {
LABEL_3:
      CFRelease(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003F90();
    }

    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  return v5;
}

+ (BOOL)_isReachableWithFlags:(unsigned int)flags
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = flags;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "_isReachableWithFlags %d", v7, 8u);
  }

  v4 = (flags & 0x28) != 0 && (flags & 0x10) == 0;
  v5 = (flags & 4) == 0 || v4;
  return (flags & 2) != 0 && v5;
}

@end