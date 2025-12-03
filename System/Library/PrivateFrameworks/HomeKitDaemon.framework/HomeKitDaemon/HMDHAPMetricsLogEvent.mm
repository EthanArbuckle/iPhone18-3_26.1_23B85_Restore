@interface HMDHAPMetricsLogEvent
- (void)updateWithHAPAccessoryServer:(id)server;
@end

@implementation HMDHAPMetricsLogEvent

- (void)updateWithHAPAccessoryServer:(id)server
{
  serverCopy = server;
  if ([serverCopy conformsToProtocol:&unk_2840169A8])
  {
    v4 = serverCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 readAndResetHAPMetrics:1];
    if (v6)
    {
      if ([serverCopy linkType] == 1)
      {
        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        v8 = [v6 hmf_numberForKey:&unk_283E73178];
        self->_accessoryServerInvalidations += [v8 unsignedIntegerValue];

        v9 = [v6 hmf_numberForKey:&unk_283E73190];
        self->_sentHTTPRequests += [v9 unsignedIntegerValue];

        v10 = [v6 hmf_numberForKey:&unk_283E731A8];
        self->_receivedHTTPResponses += [v10 unsignedIntegerValue];

        v11 = [v6 hmf_numberForKey:&unk_283E731C0];
        unsignedIntegerValue = [v11 unsignedIntegerValue];
        v13 = &OBJC_IVAR___HMDHAPMetricsLogEvent__receivedHTTPEvents;
LABEL_10:
        *(&self->super.super.isa + *v13) = (*(&self->super.super.isa + *v13) + unsignedIntegerValue);

        os_unfair_lock_unlock(p_lock);
        goto LABEL_11;
      }

      if ([serverCopy linkType] == 2)
      {
        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        v14 = [v6 hmf_numberForKey:&unk_283E73178];
        self->_btleConnections += [v14 unsignedIntegerValue];

        v15 = [v6 hmf_numberForKey:&unk_283E73190];
        self->_btleDiscoveries += [v15 unsignedIntegerValue];

        v11 = [v6 hmf_numberForKey:&unk_283E731A8];
        unsignedIntegerValue = [v11 unsignedIntegerValue];
        v13 = &OBJC_IVAR___HMDHAPMetricsLogEvent__btleConnectionPerReasons;
        goto LABEL_10;
      }
    }

LABEL_11:
  }
}

@end