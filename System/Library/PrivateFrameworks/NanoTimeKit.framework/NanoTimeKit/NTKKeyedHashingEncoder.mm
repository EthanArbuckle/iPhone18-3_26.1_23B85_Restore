@interface NTKKeyedHashingEncoder
- (NSData)encodedData;
- (NTKKeyedHashingEncoder)init;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key;
- (void)encodeConditionalObject:(id)object forKey:(id)key;
- (void)encodeDataObject:(id)object;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeObject:(id)object;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeRootObject:(id)object;
- (void)encodeValueOfObjCType:(const char *)type at:(void *)at;
@end

@implementation NTKKeyedHashingEncoder

- (NSData)encodedData
{
  selfCopy = self;
  v3 = NTKKeyedHashingEncoder.encodedData.getter();
  v5 = v4;

  v6 = sub_22DCB5AAC();
  sub_22DC86228(v3, v5);

  return v6;
}

- (void)encodeValueOfObjCType:(const char *)type at:(void *)at
{
  v4 = *MEMORY[0x277CCA2A0];
  v5 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v6 = sub_22DCB611C();
  v7 = [v5 initWithName:v4 reason:v6 userInfo:0];

  [v7 raise];
  abort();
}

- (void)encodeDataObject:(id)object
{
  objectCopy = object;
  sub_22DCB5ABC();

  v4 = *MEMORY[0x277CCA2A0];
  v5 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v6 = sub_22DCB611C();
  v7 = [v5 initWithName:v4 reason:v6 userInfo:0];

  [v7 raise];
  abort();
}

- (void)encodeObject:(id)object
{
  if (object)
  {
    swift_unknownObjectRetain();
    sub_22DCB64BC();
    swift_unknownObjectRelease();
  }

  v3 = *MEMORY[0x277CCA2A0];
  v4 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v5 = sub_22DCB611C();
  v6 = [v4 initWithName:v3 reason:v5 userInfo:0];

  [v6 raise];
  abort();
}

- (void)encodeRootObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22DCB64BC();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_22DCB67FC();
  v6 = sub_22DCB611C();
  [(NTKKeyedHashingEncoder *)selfCopy encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22DCB64BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v10 = sub_22DCB612C();
  v12 = v11;

  NTKKeyedHashingEncoder.encode(_:forKey:)(v13, v10, v12);

  sub_22DC8FAA4(v13);
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  v6 = sub_22DCB612C();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  NTKKeyedHashingEncoder.encode(_:forKey:)(bool, v10);
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  v6 = sub_22DCB612C();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  NTKKeyedHashingEncoder.encode(_:forKey:)(float, v10);
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v6 = sub_22DCB612C();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  NTKKeyedHashingEncoder.encode(_:forKey:)(double, v10);
}

- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key
{
  v8 = sub_22DCB612C();
  v10 = v9;
  selfCopy = self;
  NTKKeyedHashingEncoder.encodeBytes(_:length:forKey:)(bytes, length, v8, v10);
}

- (void)encodeConditionalObject:(id)object forKey:(id)key
{
  if (object)
  {
    swift_unknownObjectRetain();
    sub_22DCB64BC();
    swift_unknownObjectRelease();
  }

  v4 = *MEMORY[0x277CCA2A0];
  v5 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v6 = sub_22DCB611C();
  v7 = [v5 initWithName:v4 reason:v6 userInfo:0];

  [v7 raise];
  abort();
}

- (NTKKeyedHashingEncoder)init
{
  *(&self->super.super.isa + OBJC_IVAR___NTKKeyedHashingEncoder_state) = 0;
  v3 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  *(&self->super.super.isa + v3) = sub_22DC8FB20(MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = NTKKeyedHashingEncoder;
  return [(NTKKeyedHashingEncoder *)&v5 init];
}

@end