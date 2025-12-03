@interface CKInboxCellData
- (CKInboxCellData)init;
- (CKInboxCellData)initWithImageName:(id)name title:(id)title filterMode:(unint64_t)mode;
- (UIImage)image;
@end

@implementation CKInboxCellData

- (UIImage)image
{
  selfCopy = self;
  v3 = sub_190D56ED0();
  _systemImageNamed_ = [objc_opt_self() _systemImageNamed_];

  return _systemImageNamed_;
}

- (CKInboxCellData)initWithImageName:(id)name title:(id)title filterMode:(unint64_t)mode
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
  *(self + OBJC_IVAR___CKInboxCellData_filterMode) = mode;
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