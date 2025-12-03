@interface _HKBloodGlucosePercentInRangeChartPoint
- (_HKBloodGlucosePercentInRangeChartPoint)initWithStartDate:(id)date endDate:(id)endDate userInfo:(id)info;
- (id)allYValues;
@end

@implementation _HKBloodGlucosePercentInRangeChartPoint

- (_HKBloodGlucosePercentInRangeChartPoint)initWithStartDate:(id)date endDate:(id)endDate userInfo:(id)info
{
  dateCopy = date;
  endDateCopy = endDate;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = _HKBloodGlucosePercentInRangeChartPoint;
  v11 = [(_HKBloodGlucosePercentInRangeChartPoint *)&v28 init];
  if (v11)
  {
    v12 = HKUIMidDate(dateCopy, endDateCopy);
    midDate = v11->_midDate;
    v11->_midDate = v12;

    [infoCopy fractionForClassification:0];
    v15 = v14;
    [infoCopy fractionForClassification:1];
    v17 = v16;
    [infoCopy fractionForClassification:2];
    v19 = v18;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    fractionBelowUpperLevel2HypoglycemiaBound = v11->_fractionBelowUpperLevel2HypoglycemiaBound;
    v11->_fractionBelowUpperLevel2HypoglycemiaBound = v20;

    v22 = v15 + v17;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
    fractionBelowUpperLevel1HypoglycemiaBound = v11->_fractionBelowUpperLevel1HypoglycemiaBound;
    v11->_fractionBelowUpperLevel1HypoglycemiaBound = v23;

    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22 + v19];
    fractionBelowUpperEuglycemiaBound = v11->_fractionBelowUpperEuglycemiaBound;
    v11->_fractionBelowUpperEuglycemiaBound = v25;

    objc_storeStrong(&v11->_userInfo, info);
  }

  return v11;
}

- (id)allYValues
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *&self->_fractionBelowUpperLevel2HypoglycemiaBound;
  fractionBelowUpperEuglycemiaBound = self->_fractionBelowUpperEuglycemiaBound;
  v6 = &unk_1F4384AC0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:4];

  return v2;
}

@end