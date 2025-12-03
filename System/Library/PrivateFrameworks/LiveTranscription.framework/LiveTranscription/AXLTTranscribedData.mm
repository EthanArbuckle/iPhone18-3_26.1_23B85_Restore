@interface AXLTTranscribedData
- (AXLTTranscribedData)initWithCoder:(id)coder;
- (AXLTTranscribedData)initWithTranscription:(id)transcription requestType:(int64_t)type timestamp:(id)timestamp pid:(int)pid appID:(id)d appName:(id)name assetState:(int64_t)state silence:(BOOL)self0;
- (id)_initWithTranscribedText:(id)text requestType:(int64_t)type timestamp:(id)timestamp pid:(int)pid appID:(id)d appName:(id)name assetState:(int64_t)state silence:(BOOL)self0 resultType:(int64_t)self1 isV2:(BOOL)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXLTTranscribedData

- (AXLTTranscribedData)initWithTranscription:(id)transcription requestType:(int64_t)type timestamp:(id)timestamp pid:(int)pid appID:(id)d appName:(id)name assetState:(int64_t)state silence:(BOOL)self0
{
  transcriptionCopy = transcription;
  timestampCopy = timestamp;
  dCopy = d;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = AXLTTranscribedData;
  v20 = [(AXLTTranscribedData *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_transcription, transcription);
    nonUpdatingSegments = [transcriptionCopy nonUpdatingSegments];
    nonUpdatingSegments = v21->_nonUpdatingSegments;
    v21->_nonUpdatingSegments = nonUpdatingSegments;

    v21->_requestType = type;
    v21->_pid = pid;
    objc_storeStrong(&v21->_timestamp, timestamp);
    objc_storeStrong(&v21->_appID, d);
    objc_storeStrong(&v21->_appName, name);
    v21->_assetState = state;
    v21->_downloadState = state;
    v21->_silence = silence;
    if (!transcriptionCopy)
    {
      transcribedText = v21->_transcribedText;
      v21->_transcribedText = &stru_2868176E0;
    }

    transcription = [(AXLTTranscribedData *)v21 transcription];
    formattedString = [transcription formattedString];
    v27 = v21->_transcribedText;
    v21->_transcribedText = formattedString;
  }

  return v21;
}

- (id)_initWithTranscribedText:(id)text requestType:(int64_t)type timestamp:(id)timestamp pid:(int)pid appID:(id)d appName:(id)name assetState:(int64_t)state silence:(BOOL)self0 resultType:(int64_t)self1 isV2:(BOOL)self2
{
  textCopy = text;
  timestampCopy = timestamp;
  dCopy = d;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = AXLTTranscribedData;
  v22 = [(AXLTTranscribedData *)&v27 init];
  v23 = v22;
  if (v22)
  {
    transcription = v22->_transcription;
    v22->_transcription = 0;

    objc_storeStrong(&v23->_transcribedText, text);
    v23->_requestType = type;
    v23->_pid = pid;
    objc_storeStrong(&v23->_timestamp, timestamp);
    objc_storeStrong(&v23->_appID, d);
    objc_storeStrong(&v23->_appName, name);
    v23->_assetState = state;
    v23->_silence = silence;
    v23->_isV2 = v2;
    v23->_downloadState = state;
    v23->_resultTypeV2 = resultType;
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transcription = [(AXLTTranscribedData *)self transcription];
  [coderCopy encodeObject:transcription forKey:@"AXLTTranscribedDataTranscriptionKey"];

  transcribedText = [(AXLTTranscribedData *)self transcribedText];
  [coderCopy encodeObject:transcribedText forKey:@"AXLTTranscribedDataTranscribedTextKey"];

  [coderCopy encodeInteger:-[AXLTTranscribedData requestType](self forKey:{"requestType"), @"AXLTTranscribedDataRequestTypeKey"}];
  [coderCopy encodeInt:-[AXLTTranscribedData pid](self forKey:{"pid"), @"AXLTTranscribedDataPIDKey"}];
  timestamp = [(AXLTTranscribedData *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"AXLTTranscribedDataTimestampKey"];

  appID = [(AXLTTranscribedData *)self appID];
  [coderCopy encodeObject:appID forKey:@"AXLTTranscribedDataAppIDKey"];

  appName = [(AXLTTranscribedData *)self appName];
  [coderCopy encodeObject:appName forKey:@"AXLTTranscribedDataAppNameKey"];

  [coderCopy encodeInteger:-[AXLTTranscribedData assetState](self forKey:{"assetState"), @"AXLTTranscribedDataDownloadProgressKey"}];
  [coderCopy encodeBool:-[AXLTTranscribedData isSilence](self forKey:{"isSilence"), @"AXLTTranscribedDataIsSilenceKey"}];
}

- (AXLTTranscribedData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AXLTTranscribedData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataTranscriptionKey"];
    transcription = v5->_transcription;
    v5->_transcription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataTranscribedTextKey"];
    transcribedText = v5->_transcribedText;
    v5->_transcribedText = v8;

    v5->_requestType = [coderCopy decodeIntegerForKey:@"AXLTTranscribedDataRequestTypeKey"];
    v5->_pid = [coderCopy decodeIntForKey:@"AXLTTranscribedDataPIDKey"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataTimestampKey"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataAppIDKey"];
    appID = v5->_appID;
    v5->_appID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXLTTranscribedDataAppNameKey"];
    appName = v5->_appName;
    v5->_appName = v14;

    v5->_assetState = [coderCopy decodeIntegerForKey:@"AXLTTranscribedDataDownloadProgressKey"];
    v5->_silence = [coderCopy decodeBoolForKey:@"AXLTTranscribedDataIsSilenceKey"];
  }

  return v5;
}

@end