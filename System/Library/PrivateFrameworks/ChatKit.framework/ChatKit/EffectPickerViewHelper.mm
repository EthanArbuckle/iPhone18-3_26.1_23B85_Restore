@interface EffectPickerViewHelper
+ (id)viewControllerWithHandler:(id)handler effectPickerExtensionDetails:(id)details;
- (_TtC7ChatKit22EffectPickerViewHelper)init;
@end

@implementation EffectPickerViewHelper

+ (id)viewControllerWithHandler:(id)handler effectPickerExtensionDetails:(id)details
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  detailsCopy = details;
  v8 = sub_190A7F09C(sub_190A7F3A8, v6, detailsCopy);

  return v8;
}

- (_TtC7ChatKit22EffectPickerViewHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffectPickerViewHelper();
  return [(EffectPickerViewHelper *)&v3 init];
}

@end