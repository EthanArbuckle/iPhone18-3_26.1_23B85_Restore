@interface CKTapbackClassicAsset
- (CKTapbackClassicAsset)init;
- (id)stillImageByApplyingSelectionFilter:(BOOL)a3;
@end

@implementation CKTapbackClassicAsset

- (id)stillImageByApplyingSelectionFilter:(BOOL)a3
{
  v4 = self;
  sub_190CAD4AC();
  v6 = v5;
  if (*(&v4->super.isa + OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix) && a3 && v5)
  {
    v7 = sub_190D52690();
    sub_190CAD664(v7);
    v9 = v8;

    v6 = v9;
  }

  else
  {
  }

  return v6;
}

- (CKTapbackClassicAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end