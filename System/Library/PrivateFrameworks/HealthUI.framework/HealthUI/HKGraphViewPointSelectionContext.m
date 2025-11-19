@interface HKGraphViewPointSelectionContext
- (id)debugDescription;
@end

@implementation HKGraphViewPointSelectionContext

- (id)debugDescription
{
  v15.receiver = self;
  v15.super_class = HKGraphViewPointSelectionContext;
  v3 = [(HKGraphViewPointSelectionContext *)&v15 debugDescription];
  v4 = [(HKGraphViewPointSelectionContext *)self selectedSeries];
  v5 = [v3 stringByAppendingFormat:@" {\n    selectedSeries:          %@\n", v4];

  v6 = [(HKGraphViewPointSelectionContext *)self selectedRangeXValues];
  v7 = [v5 stringByAppendingFormat:@"    selectedRangeXValues:    %@\n", v6];

  v8 = [(HKGraphViewPointSelectionContext *)self selectedPathIndexRange];
  v9 = [v7 stringByAppendingFormat:@"    selectedPathIndexRange:  %@\n", v8];

  v10 = [(HKGraphViewPointSelectionContext *)self selectedPointValueRange];
  v11 = [v9 stringByAppendingFormat:@"    selectedPointValueRange: %@\n", v10];

  v12 = [(HKGraphViewPointSelectionContext *)self pointIntervalComponents];
  v13 = [v11 stringByAppendingFormat:@"    pointIntervalComponents: %@\n}", v12];

  return v13;
}

@end