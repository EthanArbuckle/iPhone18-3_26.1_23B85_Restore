@interface CalDAVReportJunkAction
- (CalDAVReportJunkAction)initWithResourceURL:(id)a3;
@end

@implementation CalDAVReportJunkAction

- (CalDAVReportJunkAction)initWithResourceURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalDAVReportJunkAction;
  v6 = [(CalDAVReportJunkAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceURL, a3);
  }

  return v7;
}

@end