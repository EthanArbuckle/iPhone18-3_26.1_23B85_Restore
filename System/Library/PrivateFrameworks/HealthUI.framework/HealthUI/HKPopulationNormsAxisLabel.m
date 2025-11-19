@interface HKPopulationNormsAxisLabel
- (HKPopulationNormsAxisLabel)initWithRangeStart:(id)a3 end:(id)a4;
- (NSString)separatorString;
- (id)stringRepresentation;
@end

@implementation HKPopulationNormsAxisLabel

- (HKPopulationNormsAxisLabel)initWithRangeStart:(id)a3 end:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKPopulationNormsAxisLabel;
  v8 = [(HKPopulationNormsAxisLabel *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    rangeStart = v8->_rangeStart;
    v8->_rangeStart = v9;

    v11 = [v7 copy];
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
    v7 = [(HKPopulationNormsAxisLabel *)self separatorString];
    v8 = [v6 stringWithFormat:@"%@%@%@", v3, v7, v5];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

@end