@interface CSFLPCMTypeConverter
+ (id)convertToFloatLPCMBufFromShortLPCMBuf:(id)a3;
+ (id)convertToShortLPCMBufFromFloatLPCMBuf:(id)a3;
+ (void)applyGain:(float)a3 toFloatBuffer:(id)a4;
+ (void)applyGain:(float)a3 toShortBuffer:(id)a4;
@end

@implementation CSFLPCMTypeConverter

+ (void)applyGain:(float)a3 toFloatBuffer:(id)a4
{
  v5 = a4;
  v6 = [v5 length] >> 2;
  v11 = a3;
  __C = 1.0;
  __B = -1.0;
  MEMORY[0x1E12BA990]([v5 bytes], 1, &v11, objc_msgSend(v5, "bytes"), 1, v6);
  v7 = [v5 bytes];
  v8 = [v5 bytes];

  vDSP_vclip(v7, 1, &__B, &__C, v8, 1, v6);
}

+ (void)applyGain:(float)a3 toShortBuffer:(id)a4
{
  v5 = a4;
  v6 = [v5 length] >> 1;
  v12 = a3;
  __C = 32767.0;
  __B = -32768.0;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v6];
  vDSP_vflt16([v5 bytes], 1, objc_msgSend(v7, "bytes"), 1, v6);
  MEMORY[0x1E12BA990]([v7 bytes], 1, &v12, objc_msgSend(v7, "bytes"), 1, v6);
  vDSP_vclip([v7 bytes], 1, &__B, &__C, objc_msgSend(v7, "bytes"), 1, v6);
  v8 = [v7 bytes];
  v9 = [v5 bytes];

  vDSP_vfix16(v8, 1, v9, 1, v6);
}

+ (id)convertToShortLPCMBufFromFloatLPCMBuf:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4 >> 2;
  v12 = 1191181824;
  __C = 1.0;
  __B = -1.0;
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v4 & 0xFFFFFFFFFFFFFFFCLL];
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * v5];
  v8 = [v3 bytes];

  vDSP_vclip(v8, 1, &__B, &__C, [v6 bytes], 1, v5);
  MEMORY[0x1E12BA990]([v6 bytes], 1, &v12, objc_msgSend(v6, "bytes"), 1, v5);
  vDSP_vfix16([v6 bytes], 1, objc_msgSend(v7, "bytes"), 1, v5);

  return v7;
}

+ (id)convertToFloatLPCMBufFromShortLPCMBuf:(id)a3
{
  v3 = a3;
  v4 = [v3 length] >> 1;
  v10 = 939524352;
  __C = 1.0;
  __B = -1.0;
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v4];
  v6 = [v3 bytes];

  vDSP_vflt16(v6, 1, [v5 bytes], 1, v4);
  MEMORY[0x1E12BA990]([v5 bytes], 1, &v10, objc_msgSend(v5, "bytes"), 1, v4);
  vDSP_vclip([v5 bytes], 1, &__B, &__C, objc_msgSend(v5, "bytes"), 1, v4);

  return v5;
}

@end