@interface AXLTTranscribedData
- (AXLTTranscribedData)initWithCoder:(id)a3;
- (AXLTTranscribedData)initWithTranscription:(id)a3 requestType:(int64_t)a4 timestamp:(id)a5 pid:(int)a6 appID:(id)a7 appName:(id)a8 assetState:(int64_t)a9 silence:(BOOL)a10;
- (id)_initWithTranscribedText:(id)a3 requestType:(int64_t)a4 timestamp:(id)a5 pid:(int)a6 appID:(id)a7 appName:(id)a8 assetState:(int64_t)a9 silence:(BOOL)a10 resultType:(int64_t)a11 isV2:(BOOL)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXLTTranscribedData

- (AXLTTranscribedData)initWithTranscription:(id)a3 requestType:(int64_t)a4 timestamp:(id)a5 pid:(int)a6 appID:(id)a7 appName:(id)a8 assetState:(int64_t)a9 silence:(BOOL)a10
{
  v17 = a3;
  v18 = a5;
  v19 = a7;
  v29 = a8;
  v30.receiver = self;
  v30.super_class = AXLTTranscribedData;
  v20 = [(AXLTTranscribedData *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_transcription, a3);
    v22 = [v17 nonUpdatingSegments];
    nonUpdatingSegments = v21->_nonUpdatingSegments;
    v21->_nonUpdatingSegments = v22;

    v21->_requestType = a4;
    v21->_pid = a6;
    objc_storeStrong(&v21->_timestamp, a5);
    objc_storeStrong(&v21->_appID, a7);
    objc_storeStrong(&v21->_appName, a8);
    v21->_assetState = a9;
    v21->_downloadState = a9;
    v21->_silence = a10;
    if (!v17)
    {
      transcribedText = v21->_transcribedText;
      v21->_transcribedText = &stru_2868176E0;
    }

    v25 = [(AXLTTranscribedData *)v21 transcription];
    v26 = [v25 formattedString];
    v27 = v21->_transcribedText;
    v21->_transcribedText = v26;
  }

  return v21;
}

- (id)_initWithTranscribedText:(id)a3 requestType:(int64_t)a4 timestamp:(id)a5 pid:(int)a6 appID:(id)a7 appName:(id)a8 assetState:(int64_t)a9 silence:(BOOL)a10 resultType:(int64_t)a11 isV2:(BOOL)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v27.receiver = self;
  v27.super_class = AXLTTranscribedData;
  v22 = [(AXLTTranscribedData *)&v27 init];
  v23 = v22;
  if (v22)
  {
    transcription = v22->_transcription;
    v22->_transcription = 0;

    objc_storeStrong(&v23->_transcribedText, a3);
    v23->_requestType = a4;
    v23->_pid = a6;
    objc_storeStrong(&v23->_timestamp, a5);
    objc_storeStrong(&v23->_appID, a7);
    objc_storeStrong(&v23->_appName, a8);
    v23->_assetState = a9;
    v23->_silence = a10;
    v23->_isV2 = a12;
    v23->_downloadState = a9;
    v23->_resultTypeV2 = a11;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(AXLTTranscribedData *)self transcription];
  [v9 encodeObject:v4 forKey:@"AXLTTranscribedDataTranscriptionKey"];

  v5 = [(AXLTTranscribedData *)self transcribedText];
  [v9 encodeObject:v5 forKey:@"AXLTTranscribedDataTranscribedTextKey"];

  [v9 encodeInteger:-[AXLTTranscribedData requestType](self forKey:{"requestType"), @"AXLTTranscribedDataRequestTypeKey"}];
  [v9 encodeInt:-[AXLTTranscribedData pid](self forKey:{"pid"), @"AXLTTranscribedDataPIDKey"}];
  v6 = [(AXLTTranscribedData *)self timestamp];
  [v9 encodeObject:v6 forKey:@"AXLTTranscribedDataTimestampKey"];

  v7 = [(AXLTTranscribedData *)self appID];
  [v9 encodeObject:v7 forKey:@"AXLTTranscribedDataAppIDKey"];

  v8 = [(AXLTTranscribedData *)self appName];
  [v9 encodeObject:v8 forKey:@"AXLTTranscribedDataAppNameKey"];

  [v9 encodeInteger:-[AXLTTranscribedData assetState](self forKey:{"assetState"), @"AXLTTranscribedDataDownloadProgressKey"}];
  [v9 encodeBool:-[AXLTTranscribedData isSilence](self forKey:{"isSilence"), @"AXLTTranscribedDataIsSilenceKey"}];
}

- (AXLTTranscribedData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXLTTranscribedData *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataTranscriptionKey"];
    transcription = v5->_transcription;
    v5->_transcription = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataTranscribedTextKey"];
    transcribedText = v5->_transcribedText;
    v5->_transcribedText = v8;

    v5->_requestType = [v4 decodeIntegerForKey:@"AXLTTranscribedDataRequestTypeKey"];
    v5->_pid = [v4 decodeIntForKey:@"AXLTTranscribedDataPIDKey"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataTimestampKey"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataAppIDKey"];
    appID = v5->_appID;
    v5->_appID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataAppNameKey"];
    appName = v5->_appName;
    v5->_appName = v14;

    v5->_assetState = [v4 decodeIntegerForKey:@"AXLTTranscribedDataDownloadProgressKey"];
    v5->_silence = [v4 decodeBoolForKey:@"AXLTTranscribedDataIsSilenceKey"];
  }

  return v5;
}

@end