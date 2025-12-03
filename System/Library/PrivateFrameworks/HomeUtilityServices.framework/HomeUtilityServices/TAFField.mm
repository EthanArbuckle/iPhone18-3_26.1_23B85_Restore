@interface TAFField
- (_TtC19HomeUtilityServices8TAFField)init;
- (_TtC19HomeUtilityServices8TAFField)initWithType:(id)type label:(id)label formKey:(id)key textContextType:(id)contextType isSecure:(BOOL)secure maxCharacterCount:(int64_t)count minCharacterCount:(int64_t)characterCount regex:(id)self0 required:(BOOL)self1;
@end

@implementation TAFField

- (_TtC19HomeUtilityServices8TAFField)initWithType:(id)type label:(id)label formKey:(id)key textContextType:(id)contextType isSecure:(BOOL)secure maxCharacterCount:(int64_t)count minCharacterCount:(int64_t)characterCount regex:(id)self0 required:(BOOL)self1
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
  return sub_20DF716E0(v11, v13, v14, v16, v17, v19, v20, v22, secure, count, characterCount, v23, v24, required);
}

- (_TtC19HomeUtilityServices8TAFField)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end