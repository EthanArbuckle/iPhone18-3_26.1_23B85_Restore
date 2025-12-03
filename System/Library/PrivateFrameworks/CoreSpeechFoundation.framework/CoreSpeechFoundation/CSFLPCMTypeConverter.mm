@interface CSFLPCMTypeConverter
+ (id)convertToFloatLPCMBufFromShortLPCMBuf:(id)buf;
+ (id)convertToShortLPCMBufFromFloatLPCMBuf:(id)buf;
+ (void)applyGain:(float)gain toFloatBuffer:(id)buffer;
+ (void)applyGain:(float)gain toShortBuffer:(id)buffer;
@end

@implementation CSFLPCMTypeConverter

+ (void)applyGain:(float)gain toFloatBuffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = [bufferCopy length] >> 2;
  gainCopy = gain;
  __C = 1.0;
  __B = -1.0;
  MEMORY[0x1E12BA990]([bufferCopy bytes], 1, &gainCopy, objc_msgSend(bufferCopy, "bytes"), 1, v6);
  bytes = [bufferCopy bytes];
  bytes2 = [bufferCopy bytes];

  vDSP_vclip(bytes, 1, &__B, &__C, bytes2, 1, v6);
}

+ (void)applyGain:(float)gain toShortBuffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = [bufferCopy length] >> 1;
  gainCopy = gain;
  __C = 32767.0;
  __B = -32768.0;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v6];
  vDSP_vflt16([bufferCopy bytes], 1, objc_msgSend(v7, "bytes"), 1, v6);
  MEMORY[0x1E12BA990]([v7 bytes], 1, &gainCopy, objc_msgSend(v7, "bytes"), 1, v6);
  vDSP_vclip([v7 bytes], 1, &__B, &__C, objc_msgSend(v7, "bytes"), 1, v6);
  bytes = [v7 bytes];
  bytes2 = [bufferCopy bytes];

  vDSP_vfix16(bytes, 1, bytes2, 1, v6);
}

+ (id)convertToShortLPCMBufFromFloatLPCMBuf:(id)buf
{
  bufCopy = buf;
  v4 = [bufCopy length];
  v5 = v4 >> 2;
  v12 = 1191181824;
  __C = 1.0;
  __B = -1.0;
  0xFFFFFFFFFFFFFFFCLL = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v4 & 0xFFFFFFFFFFFFFFFCLL];
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * v5];
  bytes = [bufCopy bytes];

  vDSP_vclip(bytes, 1, &__B, &__C, [0xFFFFFFFFFFFFFFFCLL bytes], 1, v5);
  MEMORY[0x1E12BA990]([0xFFFFFFFFFFFFFFFCLL bytes], 1, &v12, objc_msgSend(0xFFFFFFFFFFFFFFFCLL, "bytes"), 1, v5);
  vDSP_vfix16([0xFFFFFFFFFFFFFFFCLL bytes], 1, objc_msgSend(v7, "bytes"), 1, v5);

  return v7;
}

+ (id)convertToFloatLPCMBufFromShortLPCMBuf:(id)buf
{
  bufCopy = buf;
  v4 = [bufCopy length] >> 1;
  v10 = 939524352;
  __C = 1.0;
  __B = -1.0;
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v4];
  bytes = [bufCopy bytes];

  vDSP_vflt16(bytes, 1, [v5 bytes], 1, v4);
  MEMORY[0x1E12BA990]([v5 bytes], 1, &v10, objc_msgSend(v5, "bytes"), 1, v4);
  vDSP_vclip([v5 bytes], 1, &__B, &__C, objc_msgSend(v5, "bytes"), 1, v4);

  return v5;
}

@end