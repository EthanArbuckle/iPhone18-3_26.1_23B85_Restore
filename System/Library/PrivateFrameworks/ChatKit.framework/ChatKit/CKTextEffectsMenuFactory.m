@interface CKTextEffectsMenuFactory
+ (id)inlineEffectMenuActionsWithHandler:(id)a3;
+ (id)inlineEffectMenuActionsWithHandler:(id)a3 activeTextEffectType:(int64_t)a4;
+ (id)inlineEffectMenuWithHandler:(id)a3;
+ (id)inlineEffectMenuWithHandler:(id)a3 activeTextEffectType:(int64_t)a4;
+ (id)textStyleCommandsWithAction:(SEL)a3 configureImages:(BOOL)a4 configureAttributedTitles:(BOOL)a5 selectedText:(id)a6;
+ (id)textStyleKeyCommandsWithAction:(SEL)a3 configureImages:(BOOL)a4 configureAttributedTitles:(BOOL)a5 selectedText:(id)a6;
+ (id)textStylePaletteMenuWithActiveTextStyles:(unint64_t)a3 selectedText:(id)a4 handler:(id)a5;
+ (id)textStylePaletteMenuWithHandler:(id)a3;
- (CKTextEffectsMenuFactory)init;
@end

@implementation CKTextEffectsMenuFactory

+ (id)textStylePaletteMenuWithHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s7ChatKit22TextEffectsMenuFactoryC016textStylePaletteE006activeC6Styles08selectedC07handlerSo6UIMenuCSo06IMTextH0V_SSyAK_So8UIActionCtctFZ_0(0, 0, 0xE000000000000000, sub_190AE1DD8, v4);
  v6 = v5;

  return v6;
}

+ (id)textStylePaletteMenuWithActiveTextStyles:(unint64_t)a3 selectedText:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_190D56F10();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  _s7ChatKit22TextEffectsMenuFactoryC016textStylePaletteE006activeC6Styles08selectedC07handlerSo6UIMenuCSo06IMTextH0V_SSyAK_So8UIActionCtctFZ_0(a3, v7, v9, sub_1908C04AC, v10);
  v12 = v11;

  return v12;
}

+ (id)textStyleKeyCommandsWithAction:(SEL)a3 configureImages:(BOOL)a4 configureAttributedTitles:(BOOL)a5 selectedText:(id)a6
{
  _s7ChatKit22TextEffectsMenuFactoryC20textStyleKeyCommands6action15configureImages0L16AttributedTitles06activeC6Styles08selectedC0SaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(a3, a4, a5, 0);
  sub_1908A2500(v6);

  sub_1902188FC(0, &qword_1EAD44E30);
  v7 = sub_190D57160();

  return v7;
}

+ (id)textStyleCommandsWithAction:(SEL)a3 configureImages:(BOOL)a4 configureAttributedTitles:(BOOL)a5 selectedText:(id)a6
{
  _s7ChatKit22TextEffectsMenuFactoryC17textStyleCommands6action15configureImages0K16AttributedTitles06activeC6Styles08selectedC0SaySo9UICommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(a3, a4, a5, 0);
  sub_1902188FC(0, &qword_1EAD44E30);
  v6 = sub_190D57160();

  return v6;
}

+ (id)inlineEffectMenuWithHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE07handler06activecH4TypeSo6UIMenuCySo06IMTexthK0V_So8UIActionCtc_AJtFZ_0(sub_190AE1DD8, v4, 0);
  v6 = v5;

  return v6;
}

+ (id)inlineEffectMenuWithHandler:(id)a3 activeTextEffectType:(int64_t)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE07handler06activecH4TypeSo6UIMenuCySo06IMTexthK0V_So8UIActionCtc_AJtFZ_0(sub_190AE1DD8, v6, a4);
  v8 = v7;

  return v8;
}

+ (id)inlineEffectMenuActionsWithHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(sub_190AE1DD8, v4, 0);

  sub_1902188FC(0, &qword_1EAD464F0);
  v5 = sub_190D57160();

  return v5;
}

+ (id)inlineEffectMenuActionsWithHandler:(id)a3 activeTextEffectType:(int64_t)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(sub_190AE1DD8, v6, a4);

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