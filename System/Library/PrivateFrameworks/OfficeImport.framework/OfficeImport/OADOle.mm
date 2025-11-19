@interface OADOle
+ (BOOL)isCLSIDSupported:(id)a3;
+ (BOOL)isProgIDChart:(id)a3;
+ (BOOL)isProgIDMathType:(id)a3;
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

+ (BOOL)isProgIDChart:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"MSGraph.Chart."] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"Excel.Sheet."))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"Excel.Chart."];
  }

  return v4;
}

+ (BOOL)isProgIDMathType:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"Equation.DSMT4"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"Equation.DSMT36"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"Equation"];
  }

  return v4;
}

+ (BOOL)isCLSIDSupported:(id)a3
{
  v3 = a3;
  v4 = +[OADOle isCLSIDSupported:]::classIdSet;
  if (!+[OADOle isCLSIDSupported:]::classIdSet)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"00020820-0000-0000-C000-000000000046", @"00020803-0000-0000-C000-000000000046", @"00020821-0000-0000-C000-000000000046", @"00020801-0000-0000-C000-000000000046", 0}];
    v6 = +[OADOle isCLSIDSupported:]::classIdSet;
    +[OADOle isCLSIDSupported:]::classIdSet = v5;

    v4 = +[OADOle isCLSIDSupported:]::classIdSet;
  }

  v7 = [v4 containsObject:v3];

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