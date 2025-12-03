@interface CalDAVReportJunkAction
- (CalDAVReportJunkAction)initWithResourceURL:(id)l;
@end

@implementation CalDAVReportJunkAction

- (CalDAVReportJunkAction)initWithResourceURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CalDAVReportJunkAction;
  v6 = [(CalDAVReportJunkAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceURL, l);
  }

  return v7;
}

@end