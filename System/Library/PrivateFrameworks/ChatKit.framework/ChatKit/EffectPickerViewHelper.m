@interface EffectPickerViewHelper
+ (id)viewControllerWithHandler:(id)a3 effectPickerExtensionDetails:(id)a4;
- (_TtC7ChatKit22EffectPickerViewHelper)init;
@end

@implementation EffectPickerViewHelper

+ (id)viewControllerWithHandler:(id)a3 effectPickerExtensionDetails:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a4;
  v8 = sub_190A7F09C(sub_190A7F3A8, v6, v7);

  return v8;
}

- (_TtC7ChatKit22EffectPickerViewHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffectPickerViewHelper();
  return [(EffectPickerViewHelper *)&v3 init];
}

@end