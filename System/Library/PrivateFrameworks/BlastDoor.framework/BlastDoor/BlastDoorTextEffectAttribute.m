@interface BlastDoorTextEffectAttribute
- (BlastDoorTextEffectAttribute)init;
- (_NSRange)range;
- (unint64_t)type;
@end

@implementation BlastDoorTextEffectAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (unint64_t)type
{
  result = sub_213FCF7DC(self->textEffectAttribute[OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute + 8]);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (BlastDoorTextEffectAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end