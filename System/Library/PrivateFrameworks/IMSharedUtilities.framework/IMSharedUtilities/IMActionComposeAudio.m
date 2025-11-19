@interface IMActionComposeAudio
- (IMActionComposeAudio)init;
- (IMActionComposeAudio)initWithPhoneNumber:(id)a3;
- (NSString)phoneNumber;
- (id)dictionaryRepresentation;
@end

@implementation IMActionComposeAudio

- (NSString)phoneNumber
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMActionComposeAudio)initWithPhoneNumber:(id)a3
{
  v4 = sub_1A88C82E8();
  v5 = (self + OBJC_IVAR___IMActionComposeAudio_phoneNumber);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = IMActionComposeAudio;
  return [(IMActionComposeAudio *)&v8 init];
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  v4 = self;
  v5 = [(IMActionComposeAudio *)v4 phoneNumber];
  v6 = sub_1A88C82E8();
  v8 = v7;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A8723F2C(inited + 32);

  v9 = sub_1A88C8188();

  return v9;
}

- (IMActionComposeAudio)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end