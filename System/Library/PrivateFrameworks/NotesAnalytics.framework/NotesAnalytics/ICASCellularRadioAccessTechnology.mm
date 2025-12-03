@interface ICASCellularRadioAccessTechnology
- (ICASCellularRadioAccessTechnology)initWithCellularRadioAccessTechnology:(int64_t)technology;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCellularRadioAccessTechnology

- (ICASCellularRadioAccessTechnology)initWithCellularRadioAccessTechnology:(int64_t)technology
{
  v5.receiver = self;
  v5.super_class = ICASCellularRadioAccessTechnology;
  result = [(ICASCellularRadioAccessTechnology *)&v5 init];
  if (result)
  {
    result->_cellularRadioAccessTechnology = technology;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  cellularRadioAccessTechnology = [(ICASCellularRadioAccessTechnology *)self cellularRadioAccessTechnology];
  if ((cellularRadioAccessTechnology - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF8F0[cellularRadioAccessTechnology - 1];
  }
}

@end