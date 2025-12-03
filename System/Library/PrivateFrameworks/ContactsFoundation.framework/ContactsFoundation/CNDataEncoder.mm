@interface CNDataEncoder
+ (id)decodeAddressingGrammarData:(id)data;
+ (id)encodeAddressingGrammar:(id)grammar;
- (_TtC18ContactsFoundation13CNDataEncoder)init;
@end

@implementation CNDataEncoder

+ (id)encodeAddressingGrammar:(id)grammar
{
  v4 = sub_185A7E5F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  grammarCopy = grammar;
  sub_185A7E5E4();

  v10 = _s18ContactsFoundation13CNDataEncoderC6encodey0B04DataVSgAE13TermOfAddressVFZ_0();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = 0;
  if (v12 >> 60 != 15)
  {
    v14 = sub_185A7E694();
    sub_185A7089C(v10, v12);
    v13 = v14;
  }

  return v13;
}

+ (id)decodeAddressingGrammarData:(id)data
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE98, &qword_185A924B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  dataCopy = data;
  v9 = sub_185A7E6A4();
  v11 = v10;

  static CNDataEncoder.decode(_:)(v7);
  sub_185A6E638(v9, v11);
  v12 = sub_185A7E5F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_185A7E5D4();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

- (_TtC18ContactsFoundation13CNDataEncoder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNDataEncoder();
  return [(CNDataEncoder *)&v3 init];
}

@end