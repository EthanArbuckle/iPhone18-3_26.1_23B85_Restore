@interface HMDHAPMetricsLogEvent
- (void)updateWithHAPAccessoryServer:(id)a3;
@end

@implementation HMDHAPMetricsLogEvent

- (void)updateWithHAPAccessoryServer:(id)a3
{
  v16 = a3;
  if ([v16 conformsToProtocol:&unk_28678F7A8])
  {
    v4 = v16;
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
      if ([v16 linkType] == 1)
      {
        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        v8 = [v6 hmf_numberForKey:&unk_286628720];
        self->_accessoryServerInvalidations += [v8 unsignedIntegerValue];

        v9 = [v6 hmf_numberForKey:&unk_286628738];
        self->_sentHTTPRequests += [v9 unsignedIntegerValue];

        v10 = [v6 hmf_numberForKey:&unk_286628750];
        self->_receivedHTTPResponses += [v10 unsignedIntegerValue];

        v11 = [v6 hmf_numberForKey:&unk_286628768];
        v12 = [v11 unsignedIntegerValue];
        v13 = &OBJC_IVAR___HMDHAPMetricsLogEvent__receivedHTTPEvents;
LABEL_10:
        *(&self->super.super.isa + *v13) = (*(&self->super.super.isa + *v13) + v12);

        os_unfair_lock_unlock(p_lock);
        goto LABEL_11;
      }

      if ([v16 linkType] == 2)
      {
        p_lock = &self->_lock;
        os_unfair_lock_lock_with_options();
        v14 = [v6 hmf_numberForKey:&unk_286628720];
        self->_btleConnections += [v14 unsignedIntegerValue];

        v15 = [v6 hmf_numberForKey:&unk_286628738];
        self->_btleDiscoveries += [v15 unsignedIntegerValue];

        v11 = [v6 hmf_numberForKey:&unk_286628750];
        v12 = [v11 unsignedIntegerValue];
        v13 = &OBJC_IVAR___HMDHAPMetricsLogEvent__btleConnectionPerReasons;
        goto LABEL_10;
      }
    }

LABEL_11:
  }
}

@end