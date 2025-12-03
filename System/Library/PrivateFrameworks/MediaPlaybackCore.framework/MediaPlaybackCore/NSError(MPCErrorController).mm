@interface NSError(MPCErrorController)
- (BOOL)mpc_isAirplayDeviceBusyError;
- (BOOL)mpc_isAirplayStreamingNotSupportedError;
- (BOOL)mpc_isAssetUnavailableFailure;
- (BOOL)mpc_isFileDoesNotExistError;
- (BOOL)mpc_isKeyServerNoOfflineSlotError;
- (BOOL)mpc_isLeaseTakenError;
- (BOOL)mpc_isNetworkReachabilityError;
- (BOOL)mpc_isNoPermissionsToReadFileError;
- (BOOL)mpc_isQueueLoadingFailure;
- (BOOL)mpc_isRentalContentRequiresDownloadError;
- (BOOL)mpc_isResourceUnavailableError;
- (BOOL)mpc_isSubscriptionRequiredError;
- (BOOL)mpc_isUnrecoverableAssetLoadingError;
- (uint64_t)mpc_isStreamingSlotError;
@end

@implementation NSError(MPCErrorController)

- (BOOL)mpc_isNoPermissionsToReadFileError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1102];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isFileDoesNotExistError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1100];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isNetworkReachabilityError
{
  v1 = [self msv_errorByUnwrappingDomain:@"MPCError" code:56];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)mpc_isStreamingSlotError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69E41B8]];
  code = [v1 code];

  return ((code - 3047) < 0xE) & (0x3005u >> (code + 25));
}

- (BOOL)mpc_isKeyServerNoOfflineSlotError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69E41B8] code:-1004];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isLeaseTakenError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69E42B8] code:3084];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isSubscriptionRequiredError
{
  v1 = [self msv_errorByUnwrappingDomain:@"MPCError" code:17];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isResourceUnavailableError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1008];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isUnrecoverableAssetLoadingError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4198]];
  code = [v1 code];

  return code == -7403 || code == -7007 || code == -7004;
}

- (BOOL)mpc_isAssetUnavailableFailure
{
  v1 = [self msv_errorByUnwrappingDomain:@"MPCError" code:24];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isQueueLoadingFailure
{
  v2 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696F790] code:3];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [self msv_errorByUnwrappingDomain:@"MPCError" code:62];
    v3 = v4 != 0;
  }

  return v3;
}

- (BOOL)mpc_isAirplayStreamingNotSupportedError
{
  v2 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E69874D8] code:-11870];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696A768] code:-17226];
    v3 = v4 != 0;
  }

  return v3;
}

- (BOOL)mpc_isRentalContentRequiresDownloadError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696A768] code:-17220];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)mpc_isAirplayDeviceBusyError
{
  v1 = [self msv_errorByUnwrappingDomain:*MEMORY[0x1E696A768] code:-12926];
  v2 = v1 != 0;

  return v2;
}

@end