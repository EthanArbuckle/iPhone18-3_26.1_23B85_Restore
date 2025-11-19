@interface IDSReportClientEvent
- (IDSReportClientEvent)initWithCoder:(id)a3;
- (IDSReportClientEvent)initWithReport:(id)a3 reportType:(id)a4 timeout:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSReportClientEvent

- (IDSReportClientEvent)initWithReport:(id)a3 reportType:(id)a4 timeout:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSReportClientEvent;
  v11 = [(IDSReportClientEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(IDSReportClientEvent *)v11 setReport:v8];
    [(IDSReportClientEvent *)v12 setReportType:v9];
    [(IDSReportClientEvent *)v12 setTimeout:v10];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  report = self->_report;
  v5 = a3;
  [v5 encodeObject:report forKey:@"report"];
  [v5 encodeObject:self->_reportType forKey:@"report-type"];
  [v5 encodeObject:self->_timeout forKey:@"timeout"];
}

- (IDSReportClientEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"report-type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"report"];

  v12 = [(IDSReportClientEvent *)self initWithReport:v11 reportType:v5 timeout:v6];
  return v12;
}

@end