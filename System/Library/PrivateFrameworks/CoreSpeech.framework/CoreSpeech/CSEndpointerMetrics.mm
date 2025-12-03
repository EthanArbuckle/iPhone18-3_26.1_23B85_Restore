@interface CSEndpointerMetrics
- (CSEndpointerMetrics)initWithCoder:(id)coder;
- (CSEndpointerMetrics)initWithTotalAudioRecorded:(double)recorded endpointBufferHostTime:(unint64_t)time featuresAtEndpoint:(id)endpoint endpointerType:(int64_t)type asrFeatureLatencyDistribution:(id)distribution additionalMetrics:(id)metrics trailingSilenceDurationAtEndpoint:(double)atEndpoint requestId:(id)self0 osdFeatures:(id)self1 asrFeatures:(id)self2 isRequestTimeOut:(BOOL)self3 assetConfigVersion:(id)self4 blkHepAudioOrigin:(double)self5 vtExtraAudioAtStartInMs:(double)self6 firstAudioSampleSensorTimestamp:(unint64_t)self7 isAnchorTimeBuffered:(BOOL)self8 endpointHostTime:(unint64_t)self9 audioDeliveryHostTimeDelta:(unint64_t)delta endpointerThreshold:(float)threshold endpointerScore:(float)score;
- (id)description;
- (id)metricsCopyWithRequestId:(id)id lastAudioChunkHostTime:(unint64_t)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSEndpointerMetrics

- (void)encodeWithCoder:(id)coder
{
  totalAudioRecorded = self->_totalAudioRecorded;
  coderCopy = coder;
  [coderCopy encodeDouble:@"CSEndpointMetrics:::totalAudioRecorded" forKey:totalAudioRecorded];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_endpointBufferHostTime];
  [coderCopy encodeObject:v5 forKey:@"CSEndpointMetrics:::endpointBufferHostTime"];

  [coderCopy encodeObject:self->_featuresAtEndpoint forKey:@"CSEndpointMetrics:::featuresAtEndpoint"];
  [coderCopy encodeInteger:self->_endpointerType forKey:@"CSEndpointMetrics:::endpointerType"];
  [coderCopy encodeObject:self->_asrFeatureLatencyDistribution forKey:@"CSEndpointMetrics:::asrFeatureLatencyDistribution"];
  [coderCopy encodeObject:self->_additionalMetrics forKey:@"CSEndpointMetrics:::additionalMetrics"];
  [coderCopy encodeDouble:@"CSEndpointMetrics:::trailingSilenceDurationAtEndpoint" forKey:self->_trailingSilenceDurationAtEndpoint];
  [coderCopy encodeObject:self->_requestId forKey:@"CSEndpointMetrics:::requestId"];
  [coderCopy encodeObject:self->_osdFeaturesAtEndpoint forKey:@"CSEndpointMetrics:::osdFeaturesAtEndpoint"];
  [coderCopy encodeObject:self->_asrFeaturesAtEndpoint forKey:@"CSEndpointMetrics:::asrFeaturesAtEndpoint"];
  [coderCopy encodeBool:self->_isRequestTimeOut forKey:@"CSEndpointMetrics:::isRequestTimeOut"];
  [coderCopy encodeObject:self->_assetConfigVersion forKey:@"CSEndpointMetrics:::assetConfigVersion"];
  [coderCopy encodeDouble:@"CSEndpointMetrics:::blkHepAudioOrigin" forKey:self->_blkHepAudioOrigin];
  [coderCopy encodeDouble:@"CSEndpointMetrics:::vtExtraAudioAtStartInMs" forKey:self->_vtExtraAudioAtStartInMs];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_firstAudioSampleSensorTimestamp];
  [coderCopy encodeObject:v6 forKey:@"CSEndpointMetrics:::firstAudioSampleSensorTimestamp"];

  [coderCopy encodeBool:self->_isAnchorTimeBuffered forKey:@"CSEndpointMetrics:::isAnchorTimeBuffered"];
  v7 = [NSNumber numberWithUnsignedLongLong:self->_endpointHostTime];
  [coderCopy encodeObject:v7 forKey:@"CSEndpointMetrics:::endpointHostTime"];

  v8 = [NSNumber numberWithUnsignedLongLong:self->_audioDeliveryHostTimeDelta];
  [coderCopy encodeObject:v8 forKey:@"CSEndpointMetrics:::audioDeliveryHostTimeDelta"];

  *&v9 = self->_endpointerThreshold;
  [coderCopy encodeFloat:@"CSEndpointMetrics:::endpointerThreshold" forKey:v9];
  *&v10 = self->_endpointerScore;
  [coderCopy encodeFloat:@"CSEndpointMetrics:::endpointerScore" forKey:v10];
}

- (CSEndpointerMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"CSEndpointMetrics:::totalAudioRecorded"];
  v5 = v4;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::endpointBufferHostTime"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v39 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::featuresAtEndpoint"];
  v38 = [coderCopy decodeIntegerForKey:@"CSEndpointMetrics:::endpointerType"];
  v7 = objc_opt_class();
  v37 = [coderCopy decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::asrFeatureLatencyDistribution"];
  v8 = objc_opt_class();
  v36 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::additionalMetrics"];
  [coderCopy decodeDoubleForKey:@"CSEndpointMetrics:::trailingSilenceDurationAtEndpoint"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::requestId"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::osdFeaturesAtEndpoint"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::asrFeaturesAtEndpoint"];
  v35 = [coderCopy decodeBoolForKey:@"CSEndpointMetrics:::isRequestTimeOut"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::assetConfigVersion"];
  [coderCopy decodeDoubleForKey:@"CSEndpointMetrics:::blkHepAudioOrigin"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"CSEndpointMetrics:::vtExtraAudioAtStartInMs"];
  v18 = v17;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::firstAudioSampleSensorTimestamp"];
  unsignedLongLongValue2 = [v19 unsignedLongLongValue];

  LOBYTE(v19) = [coderCopy decodeBoolForKey:@"CSEndpointMetrics:::isAnchorTimeBuffered"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::endpointHostTime"];
  unsignedLongLongValue3 = [v21 unsignedLongLongValue];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::audioDeliveryHostTimeDelta"];
  unsignedLongLongValue4 = [v23 unsignedLongLongValue];

  [coderCopy decodeFloatForKey:@"CSEndpointMetrics:::endpointerThreshold"];
  v26 = v25;
  [coderCopy decodeFloatForKey:@"CSEndpointMetrics:::endpointerScore"];
  v28 = v27;

  LOBYTE(v34) = v19;
  LOBYTE(v33) = v35;
  LODWORD(v29) = v26;
  LODWORD(v30) = v28;
  v31 = [(CSEndpointerMetrics *)self initWithTotalAudioRecorded:unsignedLongLongValue endpointBufferHostTime:v39 featuresAtEndpoint:v38 endpointerType:v37 asrFeatureLatencyDistribution:v36 additionalMetrics:v11 trailingSilenceDurationAtEndpoint:v5 requestId:v10 osdFeatures:v16 asrFeatures:v18 isRequestTimeOut:v29 assetConfigVersion:v30 blkHepAudioOrigin:v12 vtExtraAudioAtStartInMs:v13 firstAudioSampleSensorTimestamp:v33 isAnchorTimeBuffered:v14 endpointHostTime:unsignedLongLongValue2 audioDeliveryHostTimeDelta:v34 endpointerThreshold:unsignedLongLongValue3 endpointerScore:unsignedLongLongValue4];

  return v31;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"[totalAudioRecorded = %f]", *&self->_totalAudioRecorded];
  [v3 appendFormat:@"[endpointBufferHostTime = %llu]", self->_endpointBufferHostTime];
  [v3 appendFormat:@"[trailingSilenceDurationAtEndpoint = %f]", *&self->_trailingSilenceDurationAtEndpoint];
  [v3 appendFormat:@"[endpointerType = %lu]", self->_endpointerType];
  [v3 appendFormat:@"[requestId = %@]", self->_requestId];
  [v3 appendFormat:@"[isRequestTimeOut = %d]", self->_isRequestTimeOut];
  [v3 appendFormat:@"[assetConfigVersion = %@]", self->_assetConfigVersion];
  [v3 appendFormat:@"[blkHepAudioOrigin = %f]", *&self->_blkHepAudioOrigin];
  [v3 appendFormat:@"[vtExtraAudioAtStartInMs = %f]", *&self->_vtExtraAudioAtStartInMs];
  [v3 appendFormat:@"[firstAudioSampleSensorTimestamp = %llu]", self->_firstAudioSampleSensorTimestamp];
  [v3 appendFormat:@"[isAnchorTimeBuffered = %d]", self->_isAnchorTimeBuffered];
  [v3 appendFormat:@"[endpointHostTime = %llu]", self->_endpointHostTime];
  [v3 appendFormat:@"[audioDeliveryHostTimeDelta = %llu]", self->_audioDeliveryHostTimeDelta];
  [v3 appendFormat:@"[endpointerThreshold = %f]", self->_endpointerThreshold];
  [v3 appendFormat:@"[endpointerScore = %f]", self->_endpointerScore];
  [v3 appendFormat:@"[featuresAtEndpoint = %@]", self->_featuresAtEndpoint];
  [v3 appendFormat:@"[additionalMetrics = %@]", self->_additionalMetrics];
  [v3 appendFormat:@"[osdFeatures = %@]", self->_osdFeaturesAtEndpoint];
  [v3 appendFormat:@"[asrFeatures = %@]", self->_asrFeaturesAtEndpoint];
  [v3 appendFormat:@"[asrFeatureLatencyDistribution = %@]", self->_asrFeatureLatencyDistribution];

  return v3;
}

- (id)metricsCopyWithRequestId:(id)id lastAudioChunkHostTime:(unint64_t)time
{
  idCopy = id;
  additionalMetrics = [(CSEndpointerMetrics *)self additionalMetrics];
  v8 = [additionalMetrics mutableCopy];

  v9 = [NSNumber numberWithUnsignedLongLong:time];
  [v8 setObject:v9 forKey:@"lastAudioChunkHostTime"];

  v10 = [CSEndpointerMetrics alloc];
  [(CSEndpointerMetrics *)self totalAudioRecorded];
  trailingSilenceDurationAtEndpoint = self->_trailingSilenceDurationAtEndpoint;
  blkHepAudioOrigin = self->_blkHepAudioOrigin;
  vtExtraAudioAtStartInMs = self->_vtExtraAudioAtStartInMs;
  endpointHostTime = self->_endpointHostTime;
  endpointerThreshold = self->_endpointerThreshold;
  endpointerScore = self->_endpointerScore;
  LOBYTE(v20) = self->_isAnchorTimeBuffered;
  LOBYTE(v19) = self->_isRequestTimeOut;
  v17 = [CSEndpointerMetrics initWithTotalAudioRecorded:v10 endpointBufferHostTime:"initWithTotalAudioRecorded:endpointBufferHostTime:featuresAtEndpoint:endpointerType:asrFeatureLatencyDistribution:additionalMetrics:trailingSilenceDurationAtEndpoint:requestId:osdFeatures:asrFeatures:isRequestTimeOut:assetConfigVersion:blkHepAudioOrigin:vtExtraAudioAtStartInMs:firstAudioSampleSensorTimestamp:isAnchorTimeBuffered:endpointHostTime:audioDeliveryHostTimeDelta:endpointerThreshold:endpointerScore:" featuresAtEndpoint:self->_endpointBufferHostTime endpointerType:self->_featuresAtEndpoint asrFeatureLatencyDistribution:self->_endpointerType additionalMetrics:self->_asrFeatureLatencyDistribution trailingSilenceDurationAtEndpoint:v8 requestId:idCopy osdFeatures:self->_osdFeaturesAtEndpoint asrFeatures:self->_asrFeaturesAtEndpoint isRequestTimeOut:v19 assetConfigVersion:self->_assetConfigVersion blkHepAudioOrigin:self->_firstAudioSampleSensorTimestamp vtExtraAudioAtStartInMs:v20 firstAudioSampleSensorTimestamp:endpointHostTime isAnchorTimeBuffered:self->_audioDeliveryHostTimeDelta endpointHostTime:? audioDeliveryHostTimeDelta:? endpointerThreshold:? endpointerScore:?];

  return v17;
}

- (CSEndpointerMetrics)initWithTotalAudioRecorded:(double)recorded endpointBufferHostTime:(unint64_t)time featuresAtEndpoint:(id)endpoint endpointerType:(int64_t)type asrFeatureLatencyDistribution:(id)distribution additionalMetrics:(id)metrics trailingSilenceDurationAtEndpoint:(double)atEndpoint requestId:(id)self0 osdFeatures:(id)self1 asrFeatures:(id)self2 isRequestTimeOut:(BOOL)self3 assetConfigVersion:(id)self4 blkHepAudioOrigin:(double)self5 vtExtraAudioAtStartInMs:(double)self6 firstAudioSampleSensorTimestamp:(unint64_t)self7 isAnchorTimeBuffered:(BOOL)self8 endpointHostTime:(unint64_t)self9 audioDeliveryHostTimeDelta:(unint64_t)delta endpointerThreshold:(float)threshold endpointerScore:(float)score
{
  endpointCopy = endpoint;
  distributionCopy = distribution;
  obj = metrics;
  metricsCopy = metrics;
  idCopy = id;
  featuresCopy = features;
  asrFeaturesCopy = asrFeatures;
  versionCopy = version;
  v46.receiver = self;
  v46.super_class = CSEndpointerMetrics;
  v37 = [(CSEndpointerMetrics *)&v46 init];
  v38 = v37;
  if (v37)
  {
    v37->_totalAudioRecorded = recorded;
    v37->_endpointBufferHostTime = time;
    objc_storeStrong(&v37->_featuresAtEndpoint, endpoint);
    v38->_endpointerType = type;
    objc_storeStrong(&v38->_asrFeatureLatencyDistribution, distribution);
    objc_storeStrong(&v38->_additionalMetrics, obj);
    v38->_trailingSilenceDurationAtEndpoint = atEndpoint;
    objc_storeStrong(&v38->_requestId, id);
    objc_storeStrong(&v38->_osdFeaturesAtEndpoint, features);
    objc_storeStrong(&v38->_asrFeaturesAtEndpoint, asrFeatures);
    v38->_isRequestTimeOut = out;
    objc_storeStrong(&v38->_assetConfigVersion, version);
    v38->_blkHepAudioOrigin = origin;
    v38->_vtExtraAudioAtStartInMs = ms;
    v38->_isAnchorTimeBuffered = buffered;
    v38->_firstAudioSampleSensorTimestamp = timestamp;
    v38->_endpointHostTime = hostTime;
    v38->_audioDeliveryHostTimeDelta = delta;
    v38->_endpointerThreshold = threshold;
    v38->_endpointerScore = score;
  }

  return v38;
}

@end