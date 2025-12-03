@interface BlastDoorImage
- (BOOL)writeToURL:(id)l usingEncoding:(unint64_t)encoding error:(id *)error;
- (BlastDoorImage)init;
- (CGImage)cgImage;
- (__CVBuffer)pixelBuffer;
- (id)dataUsingEncoding:(unint64_t)encoding error:(id *)error;
@end

@implementation BlastDoorImage

- (id)dataUsingEncoding:(unint64_t)encoding error:(id *)error
{
  selfCopy = self;
  v6 = sub_21407BED4(encoding);
  v8 = v7;

  v9 = sub_2146D8A38();
  sub_213FB54FC(v6, v8);

  return v9;
}

- (BOOL)writeToURL:(id)l usingEncoding:(unint64_t)encoding error:(id *)error
{
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D88E8();
  selfCopy = self;
  sub_21407C088(v11, encoding);
  (*(v8 + 8))(v11, v7);

  return 1;
}

- (CGImage)cgImage
{
  selfCopy = self;
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
  selfCopy = self;
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