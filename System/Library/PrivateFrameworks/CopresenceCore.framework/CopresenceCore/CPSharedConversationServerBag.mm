@interface CPSharedConversationServerBag
- (BOOL)fastSyncRecoveryMessageHandlingEnabled;
- (NSArray)blockedActivitySessionBundleIdentifiers;
- (unint64_t)AVCBlobRecoveryGracePeriod;
- (unint64_t)AVCBlobRecoveryTimeout;
- (unint64_t)activeParticipantPruningTimeout;
- (unint64_t)activeParticipantRefreshDelay;
- (unint64_t)backgroundAppPolicyHandleExpiryDays;
- (unint64_t)maxActiveParticipantFetchRetries;
- (unint64_t)qrPluginConnectionRetryIntervalMillis;
- (unint64_t)qrPluginMaxConnectionAttempts;
- (unint64_t)qrPluginMaxRpcStreamAttempts;
- (unint64_t)qrPluginRpcStreamRetryIntervalMillis;
- (unint64_t)rebroadcastTimeThreshold;
- (unint64_t)sessionCleanupTimeout;
- (unint64_t)timeBetweenMacOSSharePlayNotificationsSeconds;
- (unint64_t)unreliableMessengerChannelStreamMaxQueueSize;
- (unint64_t)unreliableMessengerChannelStreamMaxTries;
- (unint64_t)unreliableMessengerChannelStreamRetryIntervalMillis;
- (unint64_t)unreliableMessengerEgressMessagePayloadMaxSizeBytes;
- (unint64_t)unreliableMessengerEstablishChannelMaxAttempts;
- (unint64_t)unreliableMessengerEstablishChannelRetryIntervalMillis;
- (unint64_t)unreliableMessengerSeqNumBufferSize;
@end

@implementation CPSharedConversationServerBag

- (unint64_t)activeParticipantPruningTimeout
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-participant-prune-timeout"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 30;
  }

  return unsignedIntegerValue;
}

- (unint64_t)sessionCleanupTimeout
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-session-cleanup-timeout"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 30;
  }

  return unsignedIntegerValue;
}

- (unint64_t)AVCBlobRecoveryGracePeriod
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-session-avc-blob-recovery-grace-period"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  return unsignedIntegerValue;
}

- (unint64_t)AVCBlobRecoveryTimeout
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-session-avc-blob-recovery-timeout"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 65;
  }

  return unsignedIntegerValue;
}

- (unint64_t)rebroadcastTimeThreshold
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-session-rebroadcast-threshold"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 10;
  }

  return unsignedIntegerValue;
}

- (unint64_t)activeParticipantRefreshDelay
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-session-participant-refresh-delay"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  return unsignedIntegerValue;
}

- (unint64_t)backgroundAppPolicyHandleExpiryDays
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"background-app-policy-handle-expiry-days"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 30;
  }

  return unsignedIntegerValue;
}

- (unint64_t)maxActiveParticipantFetchRetries
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-active-participant-fetch-retries"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  return unsignedIntegerValue;
}

- (unint64_t)qrPluginMaxConnectionAttempts
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-plugin-max-connection-attempts"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  return unsignedIntegerValue;
}

- (unint64_t)qrPluginConnectionRetryIntervalMillis
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-plugin-connection-retry-interval-millis"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5000;
  }

  return unsignedIntegerValue;
}

- (unint64_t)qrPluginMaxRpcStreamAttempts
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-plugin-rpc-stream-attempts"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  return unsignedIntegerValue;
}

- (unint64_t)qrPluginRpcStreamRetryIntervalMillis
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"qr-plugin-rpc-stream-retry-interval-millis"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1000;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerEstablishChannelMaxAttempts
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-establish-channel-max-attempts"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerEstablishChannelRetryIntervalMillis
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-establish-channel-retry-interval-millis"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1000;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerEgressMessagePayloadMaxSizeBytes
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-egress-message-payload-max-size-bytes"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1180;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerChannelStreamMaxQueueSize
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-channel-stream-max-queue-size"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1000;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerChannelStreamMaxTries
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-channel-stream-max-tries"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerChannelStreamRetryIntervalMillis
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-channel-stream-retry-interval-millis"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1000;
  }

  return unsignedIntegerValue;
}

- (unint64_t)unreliableMessengerSeqNumBufferSize
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"unreliable-messenger-seq-num-buffer-size"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1024;
  }

  return unsignedIntegerValue;
}

- (unint64_t)timeBetweenMacOSSharePlayNotificationsSeconds
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"shareplay-time-between-macos-notifications"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1200;
  }

  return unsignedIntegerValue;
}

- (NSArray)blockedActivitySessionBundleIdentifiers
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"shareplay-blocked-bundle-identifiers"];

  return v3;
}

- (BOOL)fastSyncRecoveryMessageHandlingEnabled
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"fastsync-recovery-message-handling"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end