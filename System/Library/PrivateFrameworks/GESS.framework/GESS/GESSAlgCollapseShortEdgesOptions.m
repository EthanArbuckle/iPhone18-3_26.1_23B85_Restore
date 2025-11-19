@interface GESSAlgCollapseShortEdgesOptions
- (GESSAlgCollapseShortEdgesOptions)init;
@end

@implementation GESSAlgCollapseShortEdgesOptions

- (GESSAlgCollapseShortEdgesOptions)init
{
  v11.receiver = self;
  v11.super_class = GESSAlgCollapseShortEdgesOptions;
  v2 = [(GESSAlgCollapseShortEdgesOptions *)&v11 init];
  v7 = v2;
  if (v2)
  {
    LODWORD(v6) = 1061997773;
    objc_msgSend_setRatio_(v2, v3, v4, v5, v6);
    objc_msgSend_setIterations_(v7, v8, 1, v9);
  }

  return v7;
}

@end