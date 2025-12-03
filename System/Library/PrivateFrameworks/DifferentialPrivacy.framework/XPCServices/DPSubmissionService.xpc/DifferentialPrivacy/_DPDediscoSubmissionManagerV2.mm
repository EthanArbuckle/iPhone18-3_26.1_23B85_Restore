@interface _DPDediscoSubmissionManagerV2
- (_DPDediscoSubmissionManagerV2)init;
- (id)payloadEncoderForDonation:(id)donation keys:(id)keys error:(id *)error;
- (id)payloadForDonation:(id)donation keys:(id)keys error:(id *)error;
@end

@implementation _DPDediscoSubmissionManagerV2

- (_DPDediscoSubmissionManagerV2)init
{
  v3 = [NSURL URLWithString:@"https://unlinkability.apple.com/config/global-dap-ppm-config.plist"];
  v4 = [[_DPDediscoNetworkingService alloc] initWithDomain:@"https://unlinkability.apple.com" configurationURL:v3];
  v5 = [(_DPDediscoSubmissionManager *)self initWithNetworkingService:v4];

  return v5;
}

- (id)payloadEncoderForDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  keysCopy = keys;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Expected v2 key configurations." userInfo:0];
    objc_exception_throw(v14);
  }

  v9 = [_DPDAPPayloadEncoder encoderForDonation:donationCopy keys:keysCopy error:error];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [donationCopy key];
    LOBYTE(v15) = [donationCopy isTelemetryAllowed];
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:v12 eventPhase:4 uuid:0 succeeded:0 errorCode:405 errorMessage:@"Failed to create payload encoder for Dedisco V2" aggregateFunction:0x100000001 count:v15 telemetryAllowed:?];
  }

  return v10;
}

- (id)payloadForDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  v9 = [(_DPDediscoSubmissionManagerV2 *)self payloadEncoderForDonation:donationCopy keys:keys error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 dediscoPayloadWithError:error];
    if (v11)
    {
      goto LABEL_6;
    }

    v12 = @"Failed to create payload for Dedisco V2";
  }

  else
  {
    v11 = 0;
    v12 = @"Failed to create DAP payload encoder";
  }

  v13 = [donationCopy key];
  LOBYTE(v15) = [donationCopy isTelemetryAllowed];
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v13 eventPhase:4 uuid:0 succeeded:0 errorCode:406 errorMessage:v12 aggregateFunction:0x100000001 count:v15 telemetryAllowed:?];

LABEL_6:

  return v11;
}

@end