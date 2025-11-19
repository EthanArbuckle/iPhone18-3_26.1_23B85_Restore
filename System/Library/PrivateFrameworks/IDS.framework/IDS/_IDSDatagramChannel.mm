@interface _IDSDatagramChannel
- (_IDSDatagramChannel)init;
@end

@implementation _IDSDatagramChannel

- (_IDSDatagramChannel)init
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _IDSDatagramChannel;
  v2 = [(_IDSDatagramChannel *)&v15 init];
  if (v2)
  {
    v2->_verboseFunctionalLogging = IMGetDomainBoolForKey();
    v2->_hbhHalfThePackets = IMGetDomainBoolForKeyWithDefaultValue();
    v2->_shouldCollectMetrics = IMGetDomainBoolForKeyWithDefaultValue();
    v3 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (v2->_verboseFunctionalLogging)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "IDSDatagramChannel verboseFunctionalLogging: %@", buf, 0xCu);
    }

    v5 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2->_hbhHalfThePackets)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "IDSDatagramChannel hbhHalfThePackets: %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E69A60F0] sharedInstance];
    [v7 isInternalInstall];
    v2->_shouldUsePacketLog = IMGetDomainBoolForKeyWithDefaultValue();

    v8 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v2->_shouldUsePacketLog)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Packet timestamp logs enabled: %@", buf, 0xCu);
    }

    v2->_shouldForcePathMTUEvaluationPeriodically = IMGetDomainBoolForKeyWithDefaultValue();
    v10 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v2->_shouldForcePathMTUEvaluationPeriodically)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "IDSDatagramChannel shouldForcePathMTUEvaluationPeriodically: %@", buf, 0xCu);
    }

    v2->_shouldReportPMTUChangesOnIPv4 = IMGetDomainBoolForKeyWithDefaultValue();
    v2->_directConnectionsByLinkIDLock._os_unfair_lock_opaque = 0;
    v12 = v2;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

@end