@interface HRInteractiveChartSingleValueChartViewController
- (id)_colorForDisplayType:(id)type;
- (id)makeAnnotationDataSource;
- (id)makeStandardCurrentValueViewDataSource;
- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution;
@end

@implementation HRInteractiveChartSingleValueChartViewController

- (id)makeStandardCurrentValueViewDataSource
{
  v3 = [_TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource alloc];
  dateCache = [(HKInteractiveChartViewController *)self dateCache];
  healthStore = [(HKInteractiveChartViewController *)self healthStore];
  selectedRangeFormatter = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v7 = [(SingleValueCurrentValueViewDataSource *)v3 initWithDateCache:dateCache healthStore:healthStore selectedRangeFormatter:selectedRangeFormatter];

  [(HKCurrentValueViewDataSource *)v7 setDelegate:v7];

  return v7;
}

- (id)makeAnnotationDataSource
{
  annotationViewDataSource = self->_annotationViewDataSource;
  if (!annotationViewDataSource)
  {
    v4 = objc_alloc_init(_TtC15HealthRecordsUI35SingleValueAnnotationViewDataSource);
    v5 = self->_annotationViewDataSource;
    self->_annotationViewDataSource = v4;

    annotationViewDataSource = self->_annotationViewDataSource;
  }

  return annotationViewDataSource;
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution
{
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  v9 = [userInfo count];

  if (v9 != 1)
  {
    annotationViewDataSource = [(HRInteractiveChartSingleValueChartViewController *)self annotationViewDataSource];
    userInfo2 = [contextCopy userInfo];
    selectedRangeXValues = [contextCopy selectedRangeXValues];
    selectedPointValueRange = [contextCopy selectedPointValueRange];
    [annotationViewDataSource updateUsing:userInfo2 valueRange:selectedRangeXValues dateRange:selectedPointValueRange timeScope:scope];

    goto LABEL_6;
  }

  userInfo3 = [contextCopy userInfo];
  annotationViewDataSource = [userInfo3 firstObject];

  if (annotationViewDataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInfo2 = [(HRInteractiveChartSingleValueChartViewController *)self annotationViewDataSource];
      [userInfo2 updateUsing:annotationViewDataSource];
LABEL_6:
    }
  }
}

- (id)_colorForDisplayType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [typeCopy color];
  }

  else
  {
    HKHealthKeyColor();
  }
  v4 = ;

  return v4;
}

@end