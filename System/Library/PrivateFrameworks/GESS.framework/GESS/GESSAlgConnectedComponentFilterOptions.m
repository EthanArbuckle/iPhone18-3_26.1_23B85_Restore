@interface GESSAlgConnectedComponentFilterOptions
- (GESSAlgConnectedComponentFilterOptions)init;
@end

@implementation GESSAlgConnectedComponentFilterOptions

- (GESSAlgConnectedComponentFilterOptions)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgConnectedComponentFilterOptions;
  v2 = [(GESSAlgConnectedComponentFilterOptions *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setFilter_(v2, v3, &unk_285F97840, v4);
  }

  return v5;
}

@end