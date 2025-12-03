@interface HMIVideoAnalyzerResultActivityZoneFilter
- (HMIVideoAnalyzerResultActivityZoneFilter)initWithActivityZones:(id)zones motionDetections:(id)detections;
- (id)applyWithFrameResult:(id)result;
@end

@implementation HMIVideoAnalyzerResultActivityZoneFilter

- (HMIVideoAnalyzerResultActivityZoneFilter)initWithActivityZones:(id)zones motionDetections:(id)detections
{
  zonesCopy = zones;
  detectionsCopy = detections;
  v12.receiver = self;
  v12.super_class = HMIVideoAnalyzerResultActivityZoneFilter;
  v9 = [(HMIVideoAnalyzerResultActivityZoneFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityZones, zones);
    objc_storeStrong(&v10->_motionDetections, detections);
  }

  return v10;
}

- (id)applyWithFrameResult:(id)result
{
  resultCopy = result;
  if ([(NSArray *)self->_activityZones count])
  {
    motionDetections = [(HMIVideoAnalyzerResultActivityZoneFilter *)self motionDetections];
    v6 = [HMIMotionDetection firstMotionDetectionInArray:motionDetections withMode:2];

    events = [resultCopy events];
    activityZones = [(HMIVideoAnalyzerResultActivityZoneFilter *)self activityZones];
    LODWORD(v9) = 1042536202;
    LODWORD(v10) = 1042536202;
    v11 = [HMICameraActivityZone filterEvents:events withActivityZones:activityZones motionDetection:v6 insetPercentageInclusion:v9 insetPercentageExclusion:v10];

    v12 = [HMIVideoAnalyzerFrameResult alloc];
    frame = [resultCopy frame];
    [resultCopy regionOfInterest];
    v14 = [(HMIVideoAnalyzerFrameResult *)v12 initWithFrame:frame events:v11 regionOfInterest:?];
  }

  else
  {
    v14 = resultCopy;
  }

  return v14;
}

@end