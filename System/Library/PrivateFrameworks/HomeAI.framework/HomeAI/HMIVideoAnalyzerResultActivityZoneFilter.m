@interface HMIVideoAnalyzerResultActivityZoneFilter
- (HMIVideoAnalyzerResultActivityZoneFilter)initWithActivityZones:(id)a3 motionDetections:(id)a4;
- (id)applyWithFrameResult:(id)a3;
@end

@implementation HMIVideoAnalyzerResultActivityZoneFilter

- (HMIVideoAnalyzerResultActivityZoneFilter)initWithActivityZones:(id)a3 motionDetections:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMIVideoAnalyzerResultActivityZoneFilter;
  v9 = [(HMIVideoAnalyzerResultActivityZoneFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityZones, a3);
    objc_storeStrong(&v10->_motionDetections, a4);
  }

  return v10;
}

- (id)applyWithFrameResult:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_activityZones count])
  {
    v5 = [(HMIVideoAnalyzerResultActivityZoneFilter *)self motionDetections];
    v6 = [HMIMotionDetection firstMotionDetectionInArray:v5 withMode:2];

    v7 = [v4 events];
    v8 = [(HMIVideoAnalyzerResultActivityZoneFilter *)self activityZones];
    LODWORD(v9) = 1042536202;
    LODWORD(v10) = 1042536202;
    v11 = [HMICameraActivityZone filterEvents:v7 withActivityZones:v8 motionDetection:v6 insetPercentageInclusion:v9 insetPercentageExclusion:v10];

    v12 = [HMIVideoAnalyzerFrameResult alloc];
    v13 = [v4 frame];
    [v4 regionOfInterest];
    v14 = [(HMIVideoAnalyzerFrameResult *)v12 initWithFrame:v13 events:v11 regionOfInterest:?];
  }

  else
  {
    v14 = v4;
  }

  return v14;
}

@end