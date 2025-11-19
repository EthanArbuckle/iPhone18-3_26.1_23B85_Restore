@interface CWFPowerTableElectionTelemetry
+ (id)sharedObj;
- (CWFPowerTableElectionTelemetry)init;
- (id)getElectionSummaryStringForABC;
- (void)sendTelemetryAndClear;
- (void)setCandidatePowerTableVersionBluetooth:(id)a3;
- (void)setCandidatePowerTableVersionWiFi:(id)a3;
- (void)setCurrentPowerTableVersionAtReadiness:(id)a3 fileName:(id)a4;
- (void)setFinalPowerTableVersion:(id)a3;
- (void)setFinalResultAndSendTelemetry:(id)a3;
- (void)setPowerTableReadiness:(BOOL)a3;
- (void)setPowerTableVote:(BOOL)a3;
@end

@implementation CWFPowerTableElectionTelemetry

+ (id)sharedObj
{
  if (qword_1ED7E3A18 != -1)
  {
    dispatch_once(&qword_1ED7E3A18, &unk_1F5B89CB0);
  }

  v3 = qword_1ED7E3A10;

  return v3;
}

- (CWFPowerTableElectionTelemetry)init
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CWFPowerTableElectionTelemetry;
  v2 = [(CWFPowerTableElectionTelemetry *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    v5 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [(NSDateFormatter *)v2->_dateFormatter setTimeZone:v5];

    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"MMM dd yyyy HH:mm:ss"];
  }

  else
  {
    v8 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "[CWFPowerTableElectionTelemetry init]";
      v12 = 1024;
      v13 = 83;
      _os_log_impl(&dword_1E0BBF000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:CWFPowerTableElectionTelemetry super init failed", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)setCandidatePowerTableVersionWiFi:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  handoffAvailableDate = self->_handoffAvailableDate;
  self->_handoffAvailableDate = v5;

  handoffWiFiAssetVersionInfo = self->_handoffWiFiAssetVersionInfo;
  self->_handoffWiFiAssetVersionInfo = v4;
}

- (void)setCandidatePowerTableVersionBluetooth:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  handoffAvailableDate = self->_handoffAvailableDate;
  self->_handoffAvailableDate = v5;

  handoffBTAssetVersionInfo = self->_handoffBTAssetVersionInfo;
  self->_handoffBTAssetVersionInfo = v4;
}

- (void)setCurrentPowerTableVersionAtReadiness:(id)a3 fileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] now];
  initialAssetVersionInfoDate = self->_initialAssetVersionInfoDate;
  self->_initialAssetVersionInfoDate = v8;

  initialAssetVersionInfoVersion = self->_initialAssetVersionInfoVersion;
  self->_initialAssetVersionInfoVersion = v6;
  v12 = v6;

  initialAssetFilename = self->_initialAssetFilename;
  self->_initialAssetFilename = v7;
}

- (void)setPowerTableReadiness:(BOOL)a3
{
  v5 = [MEMORY[0x1E695DF00] now];
  readinessReplyDeliveredDate = self->_readinessReplyDeliveredDate;
  self->_readinessReplyDeliveredDate = v5;

  self->_readinessReply = a3;
}

- (void)setPowerTableVote:(BOOL)a3
{
  v5 = [MEMORY[0x1E695DF00] now];
  voteDeliveredDate = self->_voteDeliveredDate;
  self->_voteDeliveredDate = v5;

  self->_voteResult = a3;
}

- (void)setFinalPowerTableVersion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  finalAssetVersionInfoDate = self->_finalAssetVersionInfoDate;
  self->_finalAssetVersionInfoDate = v5;

  finalAssetVersionInfoVersion = self->_finalAssetVersionInfoVersion;
  self->_finalAssetVersionInfoVersion = v4;
}

- (void)setFinalResultAndSendTelemetry:(id)a3
{
  objc_storeStrong(&self->_finalResultString, a3);

  [(CWFPowerTableElectionTelemetry *)self sendTelemetryAndClear];
}

- (id)getElectionSummaryStringForABC
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  if (self->_handoffWiFiAssetVersionInfo)
  {
    [v3 appendFormat:@"WiFiVer: %@, ", self->_handoffWiFiAssetVersionInfo];
  }

  if (self->_handoffBTAssetVersionInfo)
  {
    [v4 appendFormat:@"BTVer: %@, ", self->_handoffBTAssetVersionInfo];
    if (self->_handoffBTAssetVersionInfo)
    {
      [v4 appendFormat:@"WiFiReady: %d, ", self->_readinessReply];
      if (self->_handoffBTAssetVersionInfo)
      {
        [v4 appendFormat:@"WiFiVote: %d, ", self->_voteResult];
      }
    }
  }

  return v4;
}

- (void)sendTelemetryAndClear
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v17 = "[CWFPowerTableElectionTelemetry sendTelemetryAndClear]";
    v18 = 1024;
    v19 = 164;
    v20 = 2080;
    v21 = "[CWFPowerTableElectionTelemetry sendTelemetryAndClear]";
    _os_log_impl(&dword_1E0BBF000, v3, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Attempting to send telemetry", buf, 0x1Cu);
  }

  AnalyticsSendEventLazy();
  handoffAvailableDate = self->_handoffAvailableDate;
  self->_handoffAvailableDate = 0;

  handoffWiFiAssetVersionInfo = self->_handoffWiFiAssetVersionInfo;
  self->_handoffWiFiAssetVersionInfo = 0;

  handoffBTAssetVersionInfo = self->_handoffBTAssetVersionInfo;
  self->_handoffBTAssetVersionInfo = 0;

  initialAssetVersionInfoDate = self->_initialAssetVersionInfoDate;
  self->_initialAssetVersionInfoDate = 0;

  initialAssetVersionInfoVersion = self->_initialAssetVersionInfoVersion;
  self->_initialAssetVersionInfoVersion = 0;

  initialAssetFilename = self->_initialAssetFilename;
  self->_initialAssetFilename = 0;

  readinessReplyDeliveredDate = self->_readinessReplyDeliveredDate;
  self->_readinessReplyDeliveredDate = 0;

  self->_readinessReply = 0;
  voteDeliveredDate = self->_voteDeliveredDate;
  self->_voteDeliveredDate = 0;

  self->_voteResult = 0;
  finalAssetVersionInfoDate = self->_finalAssetVersionInfoDate;
  self->_finalAssetVersionInfoDate = 0;

  finalAssetVersionInfoVersion = self->_finalAssetVersionInfoVersion;
  self->_finalAssetVersionInfoVersion = 0;

  finalResultString = self->_finalResultString;
  self->_finalResultString = 0;

  v15 = *MEMORY[0x1E69E9840];
}

@end