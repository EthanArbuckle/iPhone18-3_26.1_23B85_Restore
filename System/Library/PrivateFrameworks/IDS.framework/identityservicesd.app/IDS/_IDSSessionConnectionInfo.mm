@interface _IDSSessionConnectionInfo
- (_IDSSessionConnectionInfo)init;
- (id)description;
- (unsigned)_numberOfOutagesSinceInterval:(double)interval;
- (void)_addRemotePacketOutage;
@end

@implementation _IDSSessionConnectionInfo

- (_IDSSessionConnectionInfo)init
{
  v13.receiver = self;
  v13.super_class = _IDSSessionConnectionInfo;
  v2 = [(_IDSSessionConnectionInfo *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    if (qword_100CBF058 != -1)
    {
      sub_100929C30();
    }

    copyIdentity = [qword_100CBF060 copyIdentity];
    if (copyIdentity)
    {
      cf = 0xAAAAAAAAAAAAAAAALL;
      if (qword_100CBF070 != -1)
      {
        sub_100929C58();
      }

      v5 = 0;
      if (!off_100CBF068(copyIdentity, &cf) && cf)
      {
        if (qword_100CBF080 != -1)
        {
          sub_100929C80();
        }

        v6 = off_100CBF078(cf);
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "array_ref = %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v12 = v6;
          _IDSLogV();
        }

        firstObject = [(NSString *)v6 firstObject];
        v5 = [firstObject copy];

        if (v6)
        {
          CFRelease(v6);
        }

        CFRelease(cf);
      }

      CFRelease(copyIdentity);
    }

    else
    {
      v5 = 0;
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "firstCommonName = %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    localCN = v3->_localCN;
    v3->_localCN = v5;
  }

  return v3;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _IDSSessionConnectionInfo;
  v3 = [(_IDSSessionConnectionInfo *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@:state = %d, isFinished = %d, isBeingHandedOff = %d, callID = %d, state = %d, inviteNeedsDelivery = %d", v3, [(_IDSSessionConnectionInfo *)self state], [(_IDSSessionConnectionInfo *)self isFinished], [(_IDSSessionConnectionInfo *)self isBeingHandedOff], self->_callID, self->_state, self->_inviteNeedsDelivery];

  return v4;
}

- (void)_addRemotePacketOutage
{
  remotePacketOutageTimes = self->_remotePacketOutageTimes;
  if (!remotePacketOutageTimes)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_remotePacketOutageTimes;
    self->_remotePacketOutageTimes = v4;

    remotePacketOutageTimes = self->_remotePacketOutageTimes;
  }

  IMTimeOfDay();
  v6 = [NSNumber numberWithDouble:?];
  [(NSMutableArray *)remotePacketOutageTimes addObject:v6];
}

- (unsigned)_numberOfOutagesSinceInterval:(double)interval
{
  if (!self->_remotePacketOutageTimes)
  {
    v5 = objc_alloc_init(NSMutableArray);
    remotePacketOutageTimes = self->_remotePacketOutageTimes;
    self->_remotePacketOutageTimes = v5;
  }

  IMTimeOfDay();
  v8 = v7;
  v9 = [[NSMutableArray alloc] initWithCapacity:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_remotePacketOutageTimes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        [v15 doubleValue];
        if (v8 - v16 > interval)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_remotePacketOutageTimes removeObjectsInArray:v9];
  v17 = [(NSMutableArray *)self->_remotePacketOutageTimes count];

  return v17;
}

@end