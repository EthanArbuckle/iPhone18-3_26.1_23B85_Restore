@interface NDODeviceCoverageDetailsUI
+ (void)deviceCoverageDetailsViewControllerForSerialNumber:(id)a3 source:(unint64_t)a4 completion:(id)a5;
- (NDODeviceCoverageDetailsUI)init;
@end

@implementation NDODeviceCoverageDetailsUI

+ (void)deviceCoverageDetailsViewControllerForSerialNumber:(id)a3 source:(unint64_t)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_25BDDFE48();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_25BDBCB78(v7, v9, a4, sub_25BDAC798, v10);
}

- (NDODeviceCoverageDetailsUI)init
{
  v3.receiver = self;
  v3.super_class = NDODeviceCoverageDetailsUI;
  return [(NDODeviceCoverageDetailsUI *)&v3 init];
}

@end