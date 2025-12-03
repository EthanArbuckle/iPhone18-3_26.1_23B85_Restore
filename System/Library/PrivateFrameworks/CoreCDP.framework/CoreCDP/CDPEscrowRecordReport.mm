@interface CDPEscrowRecordReport
- (BOOL)isEqual:(id)equal;
- (CDPEscrowRecordReport)initWithCoder:(id)coder;
- (CDPEscrowRecordReport)initWithDefaultValues;
- (CDPEscrowRecordReport)initWithDeviceStatus:(id)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)updatedReportWithRecord:(id)record;
@end

@implementation CDPEscrowRecordReport

- (CDPEscrowRecordReport)initWithDefaultValues
{
  initWithDefaultValues = [[CDPEscrowRecordViability alloc] initWithDefaultValues];
  v4 = [(CDPEscrowRecordReport *)self initWithDeviceStatus:initWithDefaultValues];

  return v4;
}

- (CDPEscrowRecordReport)initWithDeviceStatus:(id)status
{
  statusCopy = status;
  v10.receiver = self;
  v10.super_class = CDPEscrowRecordReport;
  v6 = [(CDPEscrowRecordReport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceViability, status);
    v8 = v7;
  }

  return v7;
}

- (CDPEscrowRecordReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CDPEscrowRecordReport;
  v5 = [(CDPEscrowRecordReport *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceViability"];
    v7 = objc_opt_self();

    deviceViability = v5->_deviceViability;
    v5->_deviceViability = v7;

    v9 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceViability = [(CDPEscrowRecordReport *)self deviceViability];
    deviceViability2 = [equalCopy deviceViability];
    if ([deviceViability isEqual:deviceViability2])
    {

      v7 = 1;
    }

    else
    {
      deviceViability3 = [(CDPEscrowRecordReport *)self deviceViability];
      deviceViability4 = [equalCopy deviceViability];
      v7 = deviceViability3 == deviceViability4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CDPEscrowRecordReport alloc];
  deviceViability = [(CDPEscrowRecordReport *)self deviceViability];
  v7 = [deviceViability copyWithZone:zone];
  v8 = [(CDPEscrowRecordReport *)v5 initWithDeviceStatus:v7];

  return v8;
}

- (id)updatedReportWithRecord:(id)record
{
  recordCopy = record;
  v5 = [CDPEscrowRecordReport alloc];
  deviceViability = [(CDPEscrowRecordReport *)self deviceViability];
  v7 = [(CDPEscrowRecordViability *)deviceViability updatedViabiltyWithRecord:recordCopy];

  v8 = [(CDPEscrowRecordReport *)v5 initWithDeviceStatus:v7];

  return v8;
}

@end