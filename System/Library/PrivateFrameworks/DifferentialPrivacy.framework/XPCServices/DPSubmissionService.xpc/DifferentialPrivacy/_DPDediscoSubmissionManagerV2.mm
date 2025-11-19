@interface _DPDediscoSubmissionManagerV2
- (_DPDediscoSubmissionManagerV2)init;
- (id)payloadEncoderForDonation:(id)a3 keys:(id)a4 error:(id *)a5;
- (id)payloadForDonation:(id)a3 keys:(id)a4 error:(id *)a5;
@end

@implementation _DPDediscoSubmissionManagerV2

- (_DPDediscoSubmissionManagerV2)init
{
  v3 = [NSURL URLWithString:@"https://unlinkability.apple.com/config/global-dap-ppm-config.plist"];
  v4 = [[_DPDediscoNetworkingService alloc] initWithDomain:@"https://unlinkability.apple.com" configurationURL:v3];
  v5 = [(_DPDediscoSubmissionManager *)self initWithNetworkingService:v4];

  return v5;
}

- (id)payloadEncoderForDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Expected v2 key configurations." userInfo:0];
    objc_exception_throw(v14);
  }

  v9 = [_DPDAPPayloadEncoder encoderForDonation:v7 keys:v8 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v7 key];
    LOBYTE(v15) = [v7 isTelemetryAllowed];
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:v12 eventPhase:4 uuid:0 succeeded:0 errorCode:405 errorMessage:@"Failed to create payload encoder for Dedisco V2" aggregateFunction:0x100000001 count:v15 telemetryAllowed:?];
  }

  return v10;
}

- (id)payloadForDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(_DPDediscoSubmissionManagerV2 *)self payloadEncoderForDonation:v8 keys:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 dediscoPayloadWithError:a5];
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

  v13 = [v8 key];
  LOBYTE(v15) = [v8 isTelemetryAllowed];
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v13 eventPhase:4 uuid:0 succeeded:0 errorCode:406 errorMessage:v12 aggregateFunction:0x100000001 count:v15 telemetryAllowed:?];

LABEL_6:

  return v11;
}

@end