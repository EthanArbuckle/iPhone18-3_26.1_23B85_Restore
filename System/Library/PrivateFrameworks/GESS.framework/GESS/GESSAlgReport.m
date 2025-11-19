@interface GESSAlgReport
- (GESSAlgReport)init;
@end

@implementation GESSAlgReport

- (GESSAlgReport)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgReport;
  v2 = [(GESSAlgReport *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setSuccess_(v2, v3, 0, v4);
  }

  return v5;
}

@end