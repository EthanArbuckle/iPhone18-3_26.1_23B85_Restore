@interface CSEndpointerMetrics
- (CSEndpointerMetrics)initWithCoder:(id)a3;
- (CSEndpointerMetrics)initWithTotalAudioRecorded:(double)a3 endpointBufferHostTime:(unint64_t)a4 featuresAtEndpoint:(id)a5 endpointerType:(int64_t)a6 asrFeatureLatencyDistribution:(id)a7 additionalMetrics:(id)a8 trailingSilenceDurationAtEndpoint:(double)a9 requestId:(id)a10 osdFeatures:(id)a11 asrFeatures:(id)a12 isRequestTimeOut:(BOOL)a13 assetConfigVersion:(id)a14 blkHepAudioOrigin:(double)a15 vtExtraAudioAtStartInMs:(double)a16 firstAudioSampleSensorTimestamp:(unint64_t)a17 isAnchorTimeBuffered:(BOOL)a18 endpointHostTime:(unint64_t)a19 audioDeliveryHostTimeDelta:(unint64_t)a20 endpointerThreshold:(float)a21 endpointerScore:(float)a22;
- (id)description;
- (id)metricsCopyWithRequestId:(id)a3 lastAudioChunkHostTime:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSEndpointerMetrics

- (void)encodeWithCoder:(id)a3
{
  totalAudioRecorded = self->_totalAudioRecorded;
  v11 = a3;
  [v11 encodeDouble:@"CSEndpointMetrics:::totalAudioRecorded" forKey:totalAudioRecorded];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_endpointBufferHostTime];
  [v11 encodeObject:v5 forKey:@"CSEndpointMetrics:::endpointBufferHostTime"];

  [v11 encodeObject:self->_featuresAtEndpoint forKey:@"CSEndpointMetrics:::featuresAtEndpoint"];
  [v11 encodeInteger:self->_endpointerType forKey:@"CSEndpointMetrics:::endpointerType"];
  [v11 encodeObject:self->_asrFeatureLatencyDistribution forKey:@"CSEndpointMetrics:::asrFeatureLatencyDistribution"];
  [v11 encodeObject:self->_additionalMetrics forKey:@"CSEndpointMetrics:::additionalMetrics"];
  [v11 encodeDouble:@"CSEndpointMetrics:::trailingSilenceDurationAtEndpoint" forKey:self->_trailingSilenceDurationAtEndpoint];
  [v11 encodeObject:self->_requestId forKey:@"CSEndpointMetrics:::requestId"];
  [v11 encodeObject:self->_osdFeaturesAtEndpoint forKey:@"CSEndpointMetrics:::osdFeaturesAtEndpoint"];
  [v11 encodeObject:self->_asrFeaturesAtEndpoint forKey:@"CSEndpointMetrics:::asrFeaturesAtEndpoint"];
  [v11 encodeBool:self->_isRequestTimeOut forKey:@"CSEndpointMetrics:::isRequestTimeOut"];
  [v11 encodeObject:self->_assetConfigVersion forKey:@"CSEndpointMetrics:::assetConfigVersion"];
  [v11 encodeDouble:@"CSEndpointMetrics:::blkHepAudioOrigin" forKey:self->_blkHepAudioOrigin];
  [v11 encodeDouble:@"CSEndpointMetrics:::vtExtraAudioAtStartInMs" forKey:self->_vtExtraAudioAtStartInMs];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_firstAudioSampleSensorTimestamp];
  [v11 encodeObject:v6 forKey:@"CSEndpointMetrics:::firstAudioSampleSensorTimestamp"];

  [v11 encodeBool:self->_isAnchorTimeBuffered forKey:@"CSEndpointMetrics:::isAnchorTimeBuffered"];
  v7 = [NSNumber numberWithUnsignedLongLong:self->_endpointHostTime];
  [v11 encodeObject:v7 forKey:@"CSEndpointMetrics:::endpointHostTime"];

  v8 = [NSNumber numberWithUnsignedLongLong:self->_audioDeliveryHostTimeDelta];
  [v11 encodeObject:v8 forKey:@"CSEndpointMetrics:::audioDeliveryHostTimeDelta"];

  *&v9 = self->_endpointerThreshold;
  [v11 encodeFloat:@"CSEndpointMetrics:::endpointerThreshold" forKey:v9];
  *&v10 = self->_endpointerScore;
  [v11 encodeFloat:@"CSEndpointMetrics:::endpointerScore" forKey:v10];
}

- (CSEndpointerMetrics)initWithCoder:(id)a3
{
  v3 = a3;
  [v3 decodeDoubleForKey:@"CSEndpointMetrics:::totalAudioRecorded"];
  v5 = v4;
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::endpointBufferHostTime"];
  v40 = [v6 unsignedLongLongValue];

  v39 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::featuresAtEndpoint"];
  v38 = [v3 decodeIntegerForKey:@"CSEndpointMetrics:::endpointerType"];
  v7 = objc_opt_class();
  v37 = [v3 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::asrFeatureLatencyDistribution"];
  v8 = objc_opt_class();
  v36 = [v3 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::additionalMetrics"];
  [v3 decodeDoubleForKey:@"CSEndpointMetrics:::trailingSilenceDurationAtEndpoint"];
  v10 = v9;
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::requestId"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::osdFeaturesAtEndpoint"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::asrFeaturesAtEndpoint"];
  v35 = [v3 decodeBoolForKey:@"CSEndpointMetrics:::isRequestTimeOut"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::assetConfigVersion"];
  [v3 decodeDoubleForKey:@"CSEndpointMetrics:::blkHepAudioOrigin"];
  v16 = v15;
  [v3 decodeDoubleForKey:@"CSEndpointMetrics:::vtExtraAudioAtStartInMs"];
  v18 = v17;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::firstAudioSampleSensorTimestamp"];
  v20 = [v19 unsignedLongLongValue];

  LOBYTE(v19) = [v3 decodeBoolForKey:@"CSEndpointMetrics:::isAnchorTimeBuffered"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::endpointHostTime"];
  v22 = [v21 unsignedLongLongValue];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSEndpointMetrics:::audioDeliveryHostTimeDelta"];
  v24 = [v23 unsignedLongLongValue];

  [v3 decodeFloatForKey:@"CSEndpointMetrics:::endpointerThreshold"];
  v26 = v25;
  [v3 decodeFloatForKey:@"CSEndpointMetrics:::endpointerScore"];
  v28 = v27;

  LOBYTE(v34) = v19;
  LOBYTE(v33) = v35;
  LODWORD(v29) = v26;
  LODWORD(v30) = v28;
  v31 = [(CSEndpointerMetrics *)self initWithTotalAudioRecorded:v40 endpointBufferHostTime:v39 featuresAtEndpoint:v38 endpointerType:v37 asrFeatureLatencyDistribution:v36 additionalMetrics:v11 trailingSilenceDurationAtEndpoint:v5 requestId:v10 osdFeatures:v16 asrFeatures:v18 isRequestTimeOut:v29 assetConfigVersion:v30 blkHepAudioOrigin:v12 vtExtraAudioAtStartInMs:v13 firstAudioSampleSensorTimestamp:v33 isAnchorTimeBuffered:v14 endpointHostTime:v20 audioDeliveryHostTimeDelta:v34 endpointerThreshold:v22 endpointerScore:v24];

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

- (id)metricsCopyWithRequestId:(id)a3 lastAudioChunkHostTime:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CSEndpointerMetrics *)self additionalMetrics];
  v8 = [v7 mutableCopy];

  v9 = [NSNumber numberWithUnsignedLongLong:a4];
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
  v17 = [CSEndpointerMetrics initWithTotalAudioRecorded:v10 endpointBufferHostTime:"initWithTotalAudioRecorded:endpointBufferHostTime:featuresAtEndpoint:endpointerType:asrFeatureLatencyDistribution:additionalMetrics:trailingSilenceDurationAtEndpoint:requestId:osdFeatures:asrFeatures:isRequestTimeOut:assetConfigVersion:blkHepAudioOrigin:vtExtraAudioAtStartInMs:firstAudioSampleSensorTimestamp:isAnchorTimeBuffered:endpointHostTime:audioDeliveryHostTimeDelta:endpointerThreshold:endpointerScore:" featuresAtEndpoint:self->_endpointBufferHostTime endpointerType:self->_featuresAtEndpoint asrFeatureLatencyDistribution:self->_endpointerType additionalMetrics:self->_asrFeatureLatencyDistribution trailingSilenceDurationAtEndpoint:v8 requestId:v6 osdFeatures:self->_osdFeaturesAtEndpoint asrFeatures:self->_asrFeaturesAtEndpoint isRequestTimeOut:v19 assetConfigVersion:self->_assetConfigVersion blkHepAudioOrigin:self->_firstAudioSampleSensorTimestamp vtExtraAudioAtStartInMs:v20 firstAudioSampleSensorTimestamp:endpointHostTime isAnchorTimeBuffered:self->_audioDeliveryHostTimeDelta endpointHostTime:? audioDeliveryHostTimeDelta:? endpointerThreshold:? endpointerScore:?];

  return v17;
}

- (CSEndpointerMetrics)initWithTotalAudioRecorded:(double)a3 endpointBufferHostTime:(unint64_t)a4 featuresAtEndpoint:(id)a5 endpointerType:(int64_t)a6 asrFeatureLatencyDistribution:(id)a7 additionalMetrics:(id)a8 trailingSilenceDurationAtEndpoint:(double)a9 requestId:(id)a10 osdFeatures:(id)a11 asrFeatures:(id)a12 isRequestTimeOut:(BOOL)a13 assetConfigVersion:(id)a14 blkHepAudioOrigin:(double)a15 vtExtraAudioAtStartInMs:(double)a16 firstAudioSampleSensorTimestamp:(unint64_t)a17 isAnchorTimeBuffered:(BOOL)a18 endpointHostTime:(unint64_t)a19 audioDeliveryHostTimeDelta:(unint64_t)a20 endpointerThreshold:(float)a21 endpointerScore:(float)a22
{
  v33 = a5;
  v34 = a7;
  obj = a8;
  v35 = a8;
  v45 = a10;
  v44 = a11;
  v43 = a12;
  v36 = a14;
  v46.receiver = self;
  v46.super_class = CSEndpointerMetrics;
  v37 = [(CSEndpointerMetrics *)&v46 init];
  v38 = v37;
  if (v37)
  {
    v37->_totalAudioRecorded = a3;
    v37->_endpointBufferHostTime = a4;
    objc_storeStrong(&v37->_featuresAtEndpoint, a5);
    v38->_endpointerType = a6;
    objc_storeStrong(&v38->_asrFeatureLatencyDistribution, a7);
    objc_storeStrong(&v38->_additionalMetrics, obj);
    v38->_trailingSilenceDurationAtEndpoint = a9;
    objc_storeStrong(&v38->_requestId, a10);
    objc_storeStrong(&v38->_osdFeaturesAtEndpoint, a11);
    objc_storeStrong(&v38->_asrFeaturesAtEndpoint, a12);
    v38->_isRequestTimeOut = a13;
    objc_storeStrong(&v38->_assetConfigVersion, a14);
    v38->_blkHepAudioOrigin = a15;
    v38->_vtExtraAudioAtStartInMs = a16;
    v38->_isAnchorTimeBuffered = a18;
    v38->_firstAudioSampleSensorTimestamp = a17;
    v38->_endpointHostTime = a19;
    v38->_audioDeliveryHostTimeDelta = a20;
    v38->_endpointerThreshold = a21;
    v38->_endpointerScore = a22;
  }

  return v38;
}

@end