@interface HKGraphViewPointSelectionContext
- (id)debugDescription;
@end

@implementation HKGraphViewPointSelectionContext

- (id)debugDescription
{
  v15.receiver = self;
  v15.super_class = HKGraphViewPointSelectionContext;
  v3 = [(HKGraphViewPointSelectionContext *)&v15 debugDescription];
  selectedSeries = [(HKGraphViewPointSelectionContext *)self selectedSeries];
  v5 = [v3 stringByAppendingFormat:@" {\n    selectedSeries:          %@\n", selectedSeries];

  selectedRangeXValues = [(HKGraphViewPointSelectionContext *)self selectedRangeXValues];
  v7 = [v5 stringByAppendingFormat:@"    selectedRangeXValues:    %@\n", selectedRangeXValues];

  selectedPathIndexRange = [(HKGraphViewPointSelectionContext *)self selectedPathIndexRange];
  v9 = [v7 stringByAppendingFormat:@"    selectedPathIndexRange:  %@\n", selectedPathIndexRange];

  selectedPointValueRange = [(HKGraphViewPointSelectionContext *)self selectedPointValueRange];
  v11 = [v9 stringByAppendingFormat:@"    selectedPointValueRange: %@\n", selectedPointValueRange];

  pointIntervalComponents = [(HKGraphViewPointSelectionContext *)self pointIntervalComponents];
  v13 = [v11 stringByAppendingFormat:@"    pointIntervalComponents: %@\n}", pointIntervalComponents];

  return v13;
}

@end