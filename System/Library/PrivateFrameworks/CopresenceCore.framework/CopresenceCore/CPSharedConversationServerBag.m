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
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-participant-prune-timeout"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (unint64_t)sessionCleanupTimeout
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-session-cleanup-timeout"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (unint64_t)AVCBlobRecoveryGracePeriod
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-session-avc-blob-recovery-grace-period"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)AVCBlobRecoveryTimeout
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-session-avc-blob-recovery-timeout"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 65;
  }

  return v4;
}

- (unint64_t)rebroadcastTimeThreshold
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-session-rebroadcast-threshold"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)activeParticipantRefreshDelay
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-session-participant-refresh-delay"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)backgroundAppPolicyHandleExpiryDays
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"background-app-policy-handle-expiry-days"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (unint64_t)maxActiveParticipantFetchRetries
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-active-participant-fetch-retries"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)qrPluginMaxConnectionAttempts
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-plugin-max-connection-attempts"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)qrPluginConnectionRetryIntervalMillis
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-plugin-connection-retry-interval-millis"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5000;
  }

  return v4;
}

- (unint64_t)qrPluginMaxRpcStreamAttempts
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-plugin-rpc-stream-attempts"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)qrPluginRpcStreamRetryIntervalMillis
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"qr-plugin-rpc-stream-retry-interval-millis"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (unint64_t)unreliableMessengerEstablishChannelMaxAttempts
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-establish-channel-max-attempts"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (unint64_t)unreliableMessengerEstablishChannelRetryIntervalMillis
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-establish-channel-retry-interval-millis"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (unint64_t)unreliableMessengerEgressMessagePayloadMaxSizeBytes
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-egress-message-payload-max-size-bytes"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1180;
  }

  return v4;
}

- (unint64_t)unreliableMessengerChannelStreamMaxQueueSize
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-channel-stream-max-queue-size"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (unint64_t)unreliableMessengerChannelStreamMaxTries
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-channel-stream-max-tries"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)unreliableMessengerChannelStreamRetryIntervalMillis
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-channel-stream-retry-interval-millis"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (unint64_t)unreliableMessengerSeqNumBufferSize
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"unreliable-messenger-seq-num-buffer-size"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1024;
  }

  return v4;
}

- (unint64_t)timeBetweenMacOSSharePlayNotificationsSeconds
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"shareplay-time-between-macos-notifications"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1200;
  }

  return v4;
}

- (NSArray)blockedActivitySessionBundleIdentifiers
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"shareplay-blocked-bundle-identifiers"];

  return v3;
}

- (BOOL)fastSyncRecoveryMessageHandlingEnabled
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"fastsync-recovery-message-handling"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end