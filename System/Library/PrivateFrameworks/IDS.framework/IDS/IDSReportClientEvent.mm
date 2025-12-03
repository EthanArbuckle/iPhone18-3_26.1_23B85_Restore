@interface IDSReportClientEvent
- (IDSReportClientEvent)initWithCoder:(id)coder;
- (IDSReportClientEvent)initWithReport:(id)report reportType:(id)type timeout:(id)timeout;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSReportClientEvent

- (IDSReportClientEvent)initWithReport:(id)report reportType:(id)type timeout:(id)timeout
{
  reportCopy = report;
  typeCopy = type;
  timeoutCopy = timeout;
  v14.receiver = self;
  v14.super_class = IDSReportClientEvent;
  v11 = [(IDSReportClientEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(IDSReportClientEvent *)v11 setReport:reportCopy];
    [(IDSReportClientEvent *)v12 setReportType:typeCopy];
    [(IDSReportClientEvent *)v12 setTimeout:timeoutCopy];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  report = self->_report;
  coderCopy = coder;
  [coderCopy encodeObject:report forKey:@"report"];
  [coderCopy encodeObject:self->_reportType forKey:@"report-type"];
  [coderCopy encodeObject:self->_timeout forKey:@"timeout"];
}

- (IDSReportClientEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"report-type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"report"];

  v12 = [(IDSReportClientEvent *)self initWithReport:v11 reportType:v5 timeout:v6];
  return v12;
}

@end