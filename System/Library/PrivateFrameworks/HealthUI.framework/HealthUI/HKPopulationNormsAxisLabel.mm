@interface HKPopulationNormsAxisLabel
- (HKPopulationNormsAxisLabel)initWithRangeStart:(id)start end:(id)end;
- (NSString)separatorString;
- (id)stringRepresentation;
@end

@implementation HKPopulationNormsAxisLabel

- (HKPopulationNormsAxisLabel)initWithRangeStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v14.receiver = self;
  v14.super_class = HKPopulationNormsAxisLabel;
  v8 = [(HKPopulationNormsAxisLabel *)&v14 init];
  if (v8)
  {
    v9 = [startCopy copy];
    rangeStart = v8->_rangeStart;
    v8->_rangeStart = v9;

    v11 = [endCopy copy];
    rangeEnd = v8->_rangeEnd;
    v8->_rangeEnd = v11;
  }

  return v8;
}

- (NSString)separatorString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"RANGE_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)stringRepresentation
{
  v3 = HKLocalizedStringForNumberWithDecimalPrecision(self->_rangeStart, 0, 0);
  rangeEnd = self->_rangeEnd;
  if (rangeEnd)
  {
    v5 = HKLocalizedStringForNumberWithDecimalPrecision(rangeEnd, 0, 0);
    v6 = MEMORY[0x1E696AEC0];
    separatorString = [(HKPopulationNormsAxisLabel *)self separatorString];
    v8 = [v6 stringWithFormat:@"%@%@%@", v3, separatorString, v5];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

@end