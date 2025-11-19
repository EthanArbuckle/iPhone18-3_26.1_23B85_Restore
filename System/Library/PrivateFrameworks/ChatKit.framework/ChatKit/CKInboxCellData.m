@interface CKInboxCellData
- (CKInboxCellData)init;
- (CKInboxCellData)initWithImageName:(id)a3 title:(id)a4 filterMode:(unint64_t)a5;
- (UIImage)image;
@end

@implementation CKInboxCellData

- (UIImage)image
{
  v2 = self;
  v3 = sub_190D56ED0();
  v4 = [objc_opt_self() _systemImageNamed_];

  return v4;
}

- (CKInboxCellData)initWithImageName:(id)a3 title:(id)a4 filterMode:(unint64_t)a5
{
  v7 = sub_190D56F10();
  v9 = v8;
  v10 = sub_190D56F10();
  v11 = (self + OBJC_IVAR___CKInboxCellData_imageName);
  *v11 = v7;
  v11[1] = v9;
  v12 = (self + OBJC_IVAR___CKInboxCellData_title);
  *v12 = v10;
  v12[1] = v13;
  *(self + OBJC_IVAR___CKInboxCellData_filterMode) = a5;
  v15.receiver = self;
  v15.super_class = type metadata accessor for InboxCellData();
  return [(CKInboxCellData *)&v15 init];
}

- (CKInboxCellData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end