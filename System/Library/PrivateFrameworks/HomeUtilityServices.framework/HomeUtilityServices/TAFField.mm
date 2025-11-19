@interface TAFField
- (_TtC19HomeUtilityServices8TAFField)init;
- (_TtC19HomeUtilityServices8TAFField)initWithType:(id)a3 label:(id)a4 formKey:(id)a5 textContextType:(id)a6 isSecure:(BOOL)a7 maxCharacterCount:(int64_t)a8 minCharacterCount:(int64_t)a9 regex:(id)a10 required:(BOOL)a11;
@end

@implementation TAFField

- (_TtC19HomeUtilityServices8TAFField)initWithType:(id)a3 label:(id)a4 formKey:(id)a5 textContextType:(id)a6 isSecure:(BOOL)a7 maxCharacterCount:(int64_t)a8 minCharacterCount:(int64_t)a9 regex:(id)a10 required:(BOOL)a11
{
  v11 = sub_20E0091D4();
  v13 = v12;
  v14 = sub_20E0091D4();
  v16 = v15;
  v17 = sub_20E0091D4();
  v19 = v18;
  v20 = sub_20E0091D4();
  v22 = v21;
  v23 = sub_20E0091D4();
  return sub_20DF716E0(v11, v13, v14, v16, v17, v19, v20, v22, a7, a8, a9, v23, v24, a11);
}

- (_TtC19HomeUtilityServices8TAFField)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end