@interface ICASCellularRadioAccessTechnology
- (ICASCellularRadioAccessTechnology)initWithCellularRadioAccessTechnology:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCellularRadioAccessTechnology

- (ICASCellularRadioAccessTechnology)initWithCellularRadioAccessTechnology:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCellularRadioAccessTechnology;
  result = [(ICASCellularRadioAccessTechnology *)&v5 init];
  if (result)
  {
    result->_cellularRadioAccessTechnology = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCellularRadioAccessTechnology *)self cellularRadioAccessTechnology];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF8F0[v3 - 1];
  }
}

@end