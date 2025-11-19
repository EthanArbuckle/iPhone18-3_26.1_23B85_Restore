@interface ContactPickerDelegateAdapter
- (_TtC14CloudSharingUI28ContactPickerDelegateAdapter)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
@end

@implementation ContactPickerDelegateAdapter

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243B6EAC8(v6, v7);
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243B6ECC4(v6, v7);
}

- (_TtC14CloudSharingUI28ContactPickerDelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end