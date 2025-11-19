@interface CMWrappedArrays
- (_TtC15CoreMotionFDNML15CMWrappedArrays)init;
- (id)keys;
- (void)addArrayWithName:(const char *)a3 type:(unsigned __int8)a4 shape:(const unsigned int *)a5 dimensions:(unsigned __int8)a6 byteArray:(const char *)a7 byteLength:(unint64_t)a8;
- (void)shapeOfArrayWithKey:(id)a3 shape:(unsigned int *)a4 expectedShapeSize:(unsigned __int8)a5;
- (void)writeBytesWithKey:(id)a3 ptr:(char *)a4 expectedByteLength:(unint64_t)a5;
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

- (void)addArrayWithName:(const char *)a3 type:(unsigned __int8)a4 shape:(const unsigned int *)a5 dimensions:(unsigned __int8)a6 byteArray:(const char *)a7 byteLength:(unint64_t)a8
{
  v14 = self;
  sub_245F71F50(a3, a4, a5, a6, a7, a8);
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

- (void)shapeOfArrayWithKey:(id)a3 shape:(unsigned int *)a4 expectedShapeSize:(unsigned __int8)a5
{
  v8 = sub_245F76878();
  v10 = v9;
  v11 = self;
  sub_245F726E8(v8, v10, a4, a5);
}

- (void)writeBytesWithKey:(id)a3 ptr:(char *)a4 expectedByteLength:(unint64_t)a5
{
  v8 = sub_245F76878();
  v10 = v9;
  v11 = self;
  sub_245F728B8(v8, v10, a4, a5);
}

@end