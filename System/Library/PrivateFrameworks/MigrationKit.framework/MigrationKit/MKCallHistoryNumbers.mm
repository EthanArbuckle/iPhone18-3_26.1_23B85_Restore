@interface MKCallHistoryNumbers
- (MKCallHistoryNumbers)initWithSerializedData:(id)data;
@end

@implementation MKCallHistoryNumbers

- (MKCallHistoryNumbers)initWithSerializedData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = MKCallHistoryNumbers;
  v5 = [(MKCallHistoryNumbers *)&v9 init];
  if (v5)
  {
    if (!dataCopy)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [dataCopy mk_arrayForKey:@"numbers_in_use"];
    [(MKCallHistoryNumbers *)v5 setNumbersInUse:v6];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

@end