@interface BlastDoorImage
- (BOOL)writeToURL:(id)a3 usingEncoding:(unint64_t)a4 error:(id *)a5;
- (BlastDoorImage)init;
- (CGImage)cgImage;
- (__CVBuffer)pixelBuffer;
- (id)dataUsingEncoding:(unint64_t)a3 error:(id *)a4;
@end

@implementation BlastDoorImage

- (id)dataUsingEncoding:(unint64_t)a3 error:(id *)a4
{
  v5 = self;
  v6 = sub_21407BED4(a3);
  v8 = v7;

  v9 = sub_2146D8A38();
  sub_213FB54FC(v6, v8);

  return v9;
}

- (BOOL)writeToURL:(id)a3 usingEncoding:(unint64_t)a4 error:(id *)a5
{
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D88E8();
  v12 = self;
  sub_21407C088(v11, a4);
  (*(v8 + 8))(v11, v7);

  return 1;
}

- (CGImage)cgImage
{
  v2 = self;
  v3 = sub_21407C334();

  return v3;
}

- (__CVBuffer)pixelBuffer
{
  v3 = (&self->super.isa + OBJC_IVAR___BlastDoorImage_image);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 24);
  type metadata accessor for CVBuffer(0);
  v8 = v7;
  v9 = self;
  v6(&v12, sub_21407D620, 0, v8, v4, v5);

  v10 = v12;

  return v10;
}

- (BlastDoorImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end