@interface HKSleepChartPointUserInfo
- (HKSleepChartPointUserInfo)initWithSeriesType:(int64_t)type chartPointInfoProvider:(id)provider;
- (id)copyWithAnnotationOptions:(unint64_t)options;
@end

@implementation HKSleepChartPointUserInfo

- (HKSleepChartPointUserInfo)initWithSeriesType:(int64_t)type chartPointInfoProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = HKSleepChartPointUserInfo;
  v8 = [(HKSleepChartPointUserInfo *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_seriesType = type;
    objc_storeStrong(&v8->_chartPointInfoProvider, provider);
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

- (id)copyWithAnnotationOptions:(unint64_t)options
{
  v5 = objc_alloc(objc_opt_class());
  seriesType = [(HKSleepChartPointUserInfo *)self seriesType];
  chartPointInfoProvider = [(HKSleepChartPointUserInfo *)self chartPointInfoProvider];
  v8 = [v5 initWithSeriesType:seriesType chartPointInfoProvider:chartPointInfoProvider];

  [v8 setAnnotationOptions:options];
  [v8 setAnnotationOverrideDuration:self->_annotationOverrideDuration];
  [v8 setAnnotationOverrideDateRange:self->_annotationOverrideDateRange];
  [v8 setAnnotationOverridePrefixColorsActive:self->_annotationOverridePrefixColorsActive];
  [v8 setCurrentValueViewOptions:self->_currentValueViewOptions];
  [v8 setCurrentValueViewOptionsPriority:self->_currentValueViewOptionsPriority];
  [v8 setCurrentValueViewOverridePrefixColorsActive:self->_currentValueViewOverridePrefixColorsActive];
  return v8;
}

@end