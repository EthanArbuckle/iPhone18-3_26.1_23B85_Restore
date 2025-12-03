@interface LabPepperEntry
- (LabPepperEntry)initWithLPDataSource:(unsigned __int16)source data:(id)data;
@end

@implementation LabPepperEntry

- (LabPepperEntry)initWithLPDataSource:(unsigned __int16)source data:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = LabPepperEntry;
  v7 = [(LabPepperEntry *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataSource = source;
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = v8;
  }

  return v8;
}

@end