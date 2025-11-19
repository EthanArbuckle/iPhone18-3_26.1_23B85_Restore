@interface HKSleepChartPointUserInfo
- (HKSleepChartPointUserInfo)initWithSeriesType:(int64_t)a3 chartPointInfoProvider:(id)a4;
- (id)copyWithAnnotationOptions:(unint64_t)a3;
@end

@implementation HKSleepChartPointUserInfo

- (HKSleepChartPointUserInfo)initWithSeriesType:(int64_t)a3 chartPointInfoProvider:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HKSleepChartPointUserInfo;
  v8 = [(HKSleepChartPointUserInfo *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_seriesType = a3;
    objc_storeStrong(&v8->_chartPointInfoProvider, a4);
    *&v9->_currentValueViewOptions = xmmword_1C3D5D5D0;
    currentValueViewOverridePrefixColorsActive = v9->_currentValueViewOverridePrefixColorsActive;
    v9->_currentValueViewOverridePrefixColorsActive = 0;

    annotationOverrideDuration = v9->_annotationOverrideDuration;
    v9->_annotationOptions = 3;
    v9->_annotationOverrideDuration = 0;

    annotationOverrideDateRange = v9->_annotationOverrideDateRange;
    v9->_annotationOverrideDateRange = 0;

    annotationOverridePrefixColorsActive = v9->_annotationOverridePrefixColorsActive;
    v9->_annotationOverridePrefixColorsActive = 0;
  }

  return v9;
}

- (id)copyWithAnnotationOptions:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HKSleepChartPointUserInfo *)self seriesType];
  v7 = [(HKSleepChartPointUserInfo *)self chartPointInfoProvider];
  v8 = [v5 initWithSeriesType:v6 chartPointInfoProvider:v7];

  [v8 setAnnotationOptions:a3];
  [v8 setAnnotationOverrideDuration:self->_annotationOverrideDuration];
  [v8 setAnnotationOverrideDateRange:self->_annotationOverrideDateRange];
  [v8 setAnnotationOverridePrefixColorsActive:self->_annotationOverridePrefixColorsActive];
  [v8 setCurrentValueViewOptions:self->_currentValueViewOptions];
  [v8 setCurrentValueViewOptionsPriority:self->_currentValueViewOptionsPriority];
  [v8 setCurrentValueViewOverridePrefixColorsActive:self->_currentValueViewOverridePrefixColorsActive];
  return v8;
}

@end