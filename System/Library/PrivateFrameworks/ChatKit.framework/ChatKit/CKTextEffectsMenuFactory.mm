@interface CKTextEffectsMenuFactory
+ (id)inlineEffectMenuActionsWithHandler:(id)handler;
+ (id)inlineEffectMenuActionsWithHandler:(id)handler activeTextEffectType:(int64_t)type;
+ (id)inlineEffectMenuWithHandler:(id)handler;
+ (id)inlineEffectMenuWithHandler:(id)handler activeTextEffectType:(int64_t)type;
+ (id)textStyleCommandsWithAction:(SEL)action configureImages:(BOOL)images configureAttributedTitles:(BOOL)titles selectedText:(id)text;
+ (id)textStyleKeyCommandsWithAction:(SEL)action configureImages:(BOOL)images configureAttributedTitles:(BOOL)titles selectedText:(id)text;
+ (id)textStylePaletteMenuWithActiveTextStyles:(unint64_t)styles selectedText:(id)text handler:(id)handler;
+ (id)textStylePaletteMenuWithHandler:(id)handler;
- (CKTextEffectsMenuFactory)init;
@end

@implementation CKTextEffectsMenuFactory

+ (id)textStylePaletteMenuWithHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s7ChatKit22TextEffectsMenuFactoryC016textStylePaletteE006activeC6Styles08selectedC07handlerSo6UIMenuCSo06IMTextH0V_SSyAK_So8UIActionCtctFZ_0(0, 0, 0xE000000000000000, sub_190AE1DD8, v4);
  v6 = v5;

  return v6;
}

+ (id)textStylePaletteMenuWithActiveTextStyles:(unint64_t)styles selectedText:(id)text handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_190D56F10();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  _s7ChatKit22TextEffectsMenuFactoryC016textStylePaletteE006activeC6Styles08selectedC07handlerSo6UIMenuCSo06IMTextH0V_SSyAK_So8UIActionCtctFZ_0(styles, v7, v9, sub_1908C04AC, v10);
  v12 = v11;

  return v12;
}

+ (id)textStyleKeyCommandsWithAction:(SEL)action configureImages:(BOOL)images configureAttributedTitles:(BOOL)titles selectedText:(id)text
{
  _s7ChatKit22TextEffectsMenuFactoryC20textStyleKeyCommands6action15configureImages0L16AttributedTitles06activeC6Styles08selectedC0SaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(action, images, titles, 0);
  sub_1908A2500(v6);

  sub_1902188FC(0, &qword_1EAD44E30);
  v7 = sub_190D57160();

  return v7;
}

+ (id)textStyleCommandsWithAction:(SEL)action configureImages:(BOOL)images configureAttributedTitles:(BOOL)titles selectedText:(id)text
{
  _s7ChatKit22TextEffectsMenuFactoryC17textStyleCommands6action15configureImages0K16AttributedTitles06activeC6Styles08selectedC0SaySo9UICommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(action, images, titles, 0);
  sub_1902188FC(0, &qword_1EAD44E30);
  v6 = sub_190D57160();

  return v6;
}

+ (id)inlineEffectMenuWithHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE07handler06activecH4TypeSo6UIMenuCySo06IMTexthK0V_So8UIActionCtc_AJtFZ_0(sub_190AE1DD8, v4, 0);
  v6 = v5;

  return v6;
}

+ (id)inlineEffectMenuWithHandler:(id)handler activeTextEffectType:(int64_t)type
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE07handler06activecH4TypeSo6UIMenuCySo06IMTexthK0V_So8UIActionCtc_AJtFZ_0(sub_190AE1DD8, v6, type);
  v8 = v7;

  return v8;
}

+ (id)inlineEffectMenuActionsWithHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(sub_190AE1DD8, v4, 0);

  sub_1902188FC(0, &qword_1EAD464F0);
  v5 = sub_190D57160();

  return v5;
}

+ (id)inlineEffectMenuActionsWithHandler:(id)handler activeTextEffectType:(int64_t)type
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(sub_190AE1DD8, v6, type);

  sub_1902188FC(0, &qword_1EAD464F0);
  v7 = sub_190D57160();

  return v7;
}

- (CKTextEffectsMenuFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TextEffectsMenuFactory();
  return [(CKTextEffectsMenuFactory *)&v3 init];
}

@end