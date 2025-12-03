@interface ULVisionUtilities
+ (BOOL)writePixelBufferTo:(id)to from:(__CVBuffer *)from fileType:(id)type error:(id *)error;
+ (__CVBuffer)createPixelBufferFrom:(id)from format:(unsigned int)format;
+ (__CVBuffer)createPixelBufferFrom:(id)from size:(CGSize)size format:(unsigned int)format;
+ (__CVBuffer)createPixelBufferWithSize:(CGSize)size format:(unsigned int)format;
+ (id)reduceFormatTo:(id)to;
- (_TtC19MicroLocationDaemon17ULVisionUtilities)init;
@end

@implementation ULVisionUtilities

+ (__CVBuffer)createPixelBufferWithSize:(CGSize)size format:(unsigned int)format
{
  v4 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(format, size.width, size.height);

  return v4;
}

+ (__CVBuffer)createPixelBufferFrom:(id)from size:(CGSize)size format:(unsigned int)format
{
  height = size.height;
  width = size.width;
  fromCopy = from;
  v9 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4size6formatSo11CVBufferRefaSgSo6CGSizeV_s6UInt32VtFZ_0(format, width, height);
  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    CVPixelBufferLockBaseAddress(v9, 1uLL);
    [v10 render:fromCopy toCVPixelBuffer:v9];
    CVPixelBufferUnlockBaseAddress(v9, 1uLL);
  }

  return v9;
}

+ (__CVBuffer)createPixelBufferFrom:(id)from format:(unsigned int)format
{
  v5 = sub_2592120B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212080();
  v10 = _s19MicroLocationDaemon17ULVisionUtilitiesC17createPixelBuffer4from6formatSo11CVBufferRefaSg10Foundation3URLV_s6UInt32VtFZ_0(v9, format);
  (*(v6 + 8))(v9, v5);

  return v10;
}

+ (BOOL)writePixelBufferTo:(id)to from:(__CVBuffer *)from fileType:(id)type error:(id *)error
{
  v8 = sub_2592124F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2592120B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_259212080();
  fromCopy = from;
  typeCopy = type;
  sub_2592124E0();

  sub_2591F7C54(v17, fromCopy);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
  return 1;
}

+ (id)reduceFormatTo:(id)to
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBF758]) init];

  return v3;
}

- (_TtC19MicroLocationDaemon17ULVisionUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ULVisionUtilities();
  return [(ULVisionUtilities *)&v3 init];
}

@end