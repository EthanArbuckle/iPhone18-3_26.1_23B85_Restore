@interface CDPEscrowRecordReport
- (BOOL)isEqual:(id)a3;
- (CDPEscrowRecordReport)initWithCoder:(id)a3;
- (CDPEscrowRecordReport)initWithDefaultValues;
- (CDPEscrowRecordReport)initWithDeviceStatus:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)updatedReportWithRecord:(id)a3;
@end

@implementation CDPEscrowRecordReport

- (CDPEscrowRecordReport)initWithDefaultValues
{
  v3 = [[CDPEscrowRecordViability alloc] initWithDefaultValues];
  v4 = [(CDPEscrowRecordReport *)self initWithDeviceStatus:v3];

  return v4;
}

- (CDPEscrowRecordReport)initWithDeviceStatus:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CDPEscrowRecordReport;
  v6 = [(CDPEscrowRecordReport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceViability, a3);
    v8 = v7;
  }

  return v7;
}

- (CDPEscrowRecordReport)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDPEscrowRecordReport;
  v5 = [(CDPEscrowRecordReport *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceViability"];
    v7 = objc_opt_self();

    deviceViability = v5->_deviceViability;
    v5->_deviceViability = v7;

    v9 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CDPEscrowRecordReport *)self deviceViability];
    v6 = [v4 deviceViability];
    if ([v5 isEqual:v6])
    {

      v7 = 1;
    }

    else
    {
      v8 = [(CDPEscrowRecordReport *)self deviceViability];
      v9 = [v4 deviceViability];
      v7 = v8 == v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CDPEscrowRecordReport alloc];
  v6 = [(CDPEscrowRecordReport *)self deviceViability];
  v7 = [v6 copyWithZone:a3];
  v8 = [(CDPEscrowRecordReport *)v5 initWithDeviceStatus:v7];

  return v8;
}

- (id)updatedReportWithRecord:(id)a3
{
  v4 = a3;
  v5 = [CDPEscrowRecordReport alloc];
  v6 = [(CDPEscrowRecordReport *)self deviceViability];
  v7 = [(CDPEscrowRecordViability *)v6 updatedViabiltyWithRecord:v4];

  v8 = [(CDPEscrowRecordReport *)v5 initWithDeviceStatus:v7];

  return v8;
}

@end