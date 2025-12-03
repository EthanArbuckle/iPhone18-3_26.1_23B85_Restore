@interface CMWrappedArrays
- (_TtC15CoreMotionFDNML15CMWrappedArrays)init;
- (id)keys;
- (void)addArrayWithName:(const char *)name type:(unsigned __int8)type shape:(const unsigned int *)shape dimensions:(unsigned __int8)dimensions byteArray:(const char *)array byteLength:(unint64_t)length;
- (void)shapeOfArrayWithKey:(id)key shape:(unsigned int *)shape expectedShapeSize:(unsigned __int8)size;
- (void)writeBytesWithKey:(id)key ptr:(char *)ptr expectedByteLength:(unint64_t)length;
@end

@implementation CMWrappedArrays

- (_TtC15CoreMotionFDNML15CMWrappedArrays)init
{
  v3 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  *(&self->super.isa + v3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = type metadata accessor for CMWrappedArrays();
  return [(CMWrappedArrays *)&v5 init];
}

- (void)addArrayWithName:(const char *)name type:(unsigned __int8)type shape:(const unsigned int *)shape dimensions:(unsigned __int8)dimensions byteArray:(const char *)array byteLength:(unint64_t)length
{
  selfCopy = self;
  sub_245F71F50(name, type, shape, dimensions, array, length);
}

- (id)keys
{
  v3 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);

  sub_245F706A0(v5);
  v6 = sub_245F768D8();

  return v6;
}

- (void)shapeOfArrayWithKey:(id)key shape:(unsigned int *)shape expectedShapeSize:(unsigned __int8)size
{
  v8 = sub_245F76878();
  v10 = v9;
  selfCopy = self;
  sub_245F726E8(v8, v10, shape, size);
}

- (void)writeBytesWithKey:(id)key ptr:(char *)ptr expectedByteLength:(unint64_t)length
{
  v8 = sub_245F76878();
  v10 = v9;
  selfCopy = self;
  sub_245F728B8(v8, v10, ptr, length);
}

@end