@interface OADOle
+ (BOOL)isCLSIDSupported:(id)supported;
+ (BOOL)isProgIDChart:(id)chart;
+ (BOOL)isProgIDMathType:(id)type;
- (OADOle)init;
- (id)description;
@end

@implementation OADOle

- (OADOle)init
{
  v3.receiver = self;
  v3.super_class = OADOle;
  result = [(OADOle *)&v3 init];
  if (result)
  {
    result->mWinClipboardFormat = 0;
  }

  return result;
}

+ (BOOL)isProgIDChart:(id)chart
{
  chartCopy = chart;
  if ([chartCopy hasPrefix:@"MSGraph.Chart."] & 1) != 0 || (objc_msgSend(chartCopy, "hasPrefix:", @"Excel.Sheet."))
  {
    v4 = 1;
  }

  else
  {
    v4 = [chartCopy hasPrefix:@"Excel.Chart."];
  }

  return v4;
}

+ (BOOL)isProgIDMathType:(id)type
{
  typeCopy = type;
  if ([typeCopy hasPrefix:@"Equation.DSMT4"] & 1) != 0 || (objc_msgSend(typeCopy, "hasPrefix:", @"Equation.DSMT36"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy hasPrefix:@"Equation"];
  }

  return v4;
}

+ (BOOL)isCLSIDSupported:(id)supported
{
  supportedCopy = supported;
  v4 = +[OADOle isCLSIDSupported:]::classIdSet;
  if (!+[OADOle isCLSIDSupported:]::classIdSet)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"00020820-0000-0000-C000-000000000046", @"00020803-0000-0000-C000-000000000046", @"00020821-0000-0000-C000-000000000046", @"00020801-0000-0000-C000-000000000046", 0}];
    v6 = +[OADOle isCLSIDSupported:]::classIdSet;
    +[OADOle isCLSIDSupported:]::classIdSet = v5;

    v4 = +[OADOle isCLSIDSupported:]::classIdSet;
  }

  v7 = [v4 containsObject:supportedCopy];

  return v7;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADOle;
  v2 = [(OADOle *)&v4 description];

  return v2;
}

@end