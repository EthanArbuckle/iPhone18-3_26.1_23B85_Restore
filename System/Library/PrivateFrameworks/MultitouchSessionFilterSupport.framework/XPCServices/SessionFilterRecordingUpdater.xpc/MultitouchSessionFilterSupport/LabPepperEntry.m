@interface LabPepperEntry
- (LabPepperEntry)initWithLPDataSource:(unsigned __int16)a3 data:(id)a4;
@end

@implementation LabPepperEntry

- (LabPepperEntry)initWithLPDataSource:(unsigned __int16)a3 data:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = LabPepperEntry;
  v7 = [(LabPepperEntry *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_dataSource = a3;
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = v8;
  }

  return v8;
}

@end