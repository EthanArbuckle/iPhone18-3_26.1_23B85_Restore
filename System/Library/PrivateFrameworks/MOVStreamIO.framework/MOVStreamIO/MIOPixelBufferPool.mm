@interface MIOPixelBufferPool
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format exactBytesPerRow:(unint64_t)row minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format exactBytesPerRows:(id)rows minBufferCount:(unint64_t)count;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format exactBytesPerRows:(id)rows minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format extendedPixelsPerRow:(unint64_t)row minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minBufferCount:(unint64_t)count;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minBufferCount:(unint64_t)count maxBufferCount:(unint64_t)bufferCount bufferCacheMode:(int)mode;
+ (id)createNewL008MIOPixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)createNewL010MIOPixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)makeBufferConfigDict:(unint64_t)dict height:(unint64_t)height pixelFormat:(unsigned int)format bufferCacheMode:(int)mode;
- (MIOPixelBufferPool)initWithPixelBuffer:(__CVBuffer *)buffer bufferAttributes:(__CFDictionary *)attributes poolAttributes:(__CFDictionary *)poolAttributes error:(id *)error;
- (__CVBuffer)getPixelBuffer;
- (double)getMaximumBufferAge;
- (unint64_t)getAllocationThreshold;
- (unint64_t)getMinimumBufferCount;
- (void)dealloc;
- (void)flush;
@end

@implementation MIOPixelBufferPool

+ (id)makeBufferConfigDict:(unint64_t)dict height:(unint64_t)height pixelFormat:(unsigned int)format bufferCacheMode:(int)mode
{
  v6 = *&mode;
  v7 = *&format;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:dict];
  [dictionary setObject:v11 forKey:*MEMORY[0x277CC4EC8]];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
  [dictionary setObject:v12 forKey:*MEMORY[0x277CC4DD8]];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [dictionary setObject:v13 forKey:*MEMORY[0x277CC4E30]];

  v14 = MEMORY[0x277CBEAC0];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v16 = [v14 dictionaryWithObject:v15 forKey:*MEMORY[0x277CD2970]];

  [dictionary setObject:v16 forKey:*MEMORY[0x277CC4DE8]];

  return dictionary;
}

- (MIOPixelBufferPool)initWithPixelBuffer:(__CVBuffer *)buffer bufferAttributes:(__CFDictionary *)attributes poolAttributes:(__CFDictionary *)poolAttributes error:(id *)error
{
  extraColumnsOnLeft[3] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = MIOPixelBufferPool;
  v10 = [(MIOPixelBufferPool *)&v34 init];
  if (!v10)
  {
    goto LABEL_17;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (buffer)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(buffer)];
    [dictionary setObject:v12 forKey:*MEMORY[0x277CC4DD8]];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(buffer)];
    [dictionary setObject:v13 forKey:*MEMORY[0x277CC4EC8]];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(buffer)];
    [dictionary setObject:v14 forKey:*MEMORY[0x277CC4E30]];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(buffer)];
    [dictionary setObject:v15 forKey:*MEMORY[0x277CC4D60]];

    extraColumnsOnLeft[0] = 0;
    extraRowsOnTop = 0;
    extraColumnsOnRight = 0;
    extraRowsOnBottom = 0;
    CVPixelBufferGetExtendedPixels(buffer, extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:extraColumnsOnLeft[0]];
    [dictionary setObject:v16 forKey:*MEMORY[0x277CC4DB0]];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:extraColumnsOnRight];
    [dictionary setObject:v17 forKey:*MEMORY[0x277CC4DB8]];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:extraRowsOnTop];
    [dictionary setObject:v18 forKey:*MEMORY[0x277CC4DC0]];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:extraRowsOnBottom];
    [dictionary setObject:v19 forKey:*MEMORY[0x277CC4DA0]];
  }

  else if (error)
  {
    v22 = 0;
    v23 = *MEMORY[0x277CC4DD8];
    extraColumnsOnLeft[0] = *MEMORY[0x277CC4EC8];
    extraColumnsOnLeft[1] = v23;
    extraColumnsOnLeft[2] = *MEMORY[0x277CC4E30];
    while (1)
    {
      v24 = extraColumnsOnLeft[v22];
      if ((!attributes || !CFDictionaryContainsKey(attributes, extraColumnsOnLeft[v22])) && (!poolAttributes || !CFDictionaryContainsKey(poolAttributes, v24)))
      {
        break;
      }

      if (++v22 == 3)
      {
        *error = 0;
        goto LABEL_4;
      }
    }

    v28 = v24;
    v29 = MEMORY[0x277CCA9B8];
    v30 = [@"Minimum PixelBufferPool attributes not satistfied missing key:{"stringByAppendingString:", v28} "];
    *error = [v29 mioPixelBufferPoolErrorWithMessage:v30 code:1];
  }

LABEL_4:
  if (attributes)
  {
    [dictionary addEntriesFromDictionary:attributes];
  }

  v20 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], poolAttributes, dictionary, &v10->_pixelBufferPool);
  if (!v20)
  {
    v25 = CVPixelBufferPoolGetAttributes(v10->_pixelBufferPool);
    poolAttributes = v10->_poolAttributes;
    v10->_poolAttributes = v25;

LABEL_17:
    v21 = v10;
    goto LABEL_18;
  }

  NSLog(&cfstr_ErrorCreatingU.isa, v20);

  v21 = 0;
LABEL_18:

  return v21;
}

- (__CVBuffer)getPixelBuffer
{
  CVPixelBufferPoolRetain(self->_pixelBufferPool);
  pixelBufferOut = 0;
  v3 = [(NSDictionary *)self->_poolAttributes valueForKey:@"BufferPoolAllocationThreshold"];

  v4 = *MEMORY[0x277CBECE8];
  pixelBufferPool = self->_pixelBufferPool;
  if (v3)
  {
    v6 = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(v4, pixelBufferPool, self->_poolAttributes, &pixelBufferOut);
  }

  else
  {
    v6 = CVPixelBufferPoolCreatePixelBuffer(v4, pixelBufferPool, &pixelBufferOut);
  }

  v7 = v6;
  CVPixelBufferPoolRelease(self->_pixelBufferPool);
  if (v7)
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

- (unint64_t)getMinimumBufferCount
{
  v2 = [(NSDictionary *)self->_poolAttributes objectForKeyedSubscript:*MEMORY[0x277CC4E50]];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (double)getMaximumBufferAge
{
  v2 = [(NSDictionary *)self->_poolAttributes objectForKeyedSubscript:*MEMORY[0x277CC4E48]];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (unint64_t)getAllocationThreshold
{
  v2 = [(NSDictionary *)self->_poolAttributes objectForKeyedSubscript:*MEMORY[0x277CC4E40]];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)dealloc
{
  CVPixelBufferPoolFlush(self->_pixelBufferPool, 1uLL);
  CVPixelBufferPoolRelease(self->_pixelBufferPool);
  v3.receiver = self;
  v3.super_class = MIOPixelBufferPool;
  [(MIOPixelBufferPool *)&v3 dealloc];
}

- (void)flush
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CVPixelBufferPoolFlush(pixelBufferPool, 1uLL);
  }
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v5 = *&format;
  v8 = [MIOPixelBufferPool alloc];
  v9 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v5 bufferCacheMode:0];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  v11 = v8;
  v12 = [(MIOPixelBufferPool *)v11 initWithPixelBuffer:0 bufferAttributes:v10 poolAttributes:0 error:0];

  return v12;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minBufferCount:(unint64_t)count
{
  v7 = *&format;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = [MIOPixelBufferPool alloc];
  v11 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v7 bufferCacheMode:0];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];
  v18 = *MEMORY[0x277CC4E50];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v15 = v10;
  v16 = [(MIOPixelBufferPool *)v15 initWithPixelBuffer:0 bufferAttributes:v12 poolAttributes:v14 error:0];

  return v16;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v7 = *&mode;
  v9 = *&format;
  v21[1] = *MEMORY[0x277D85DE8];
  v12 = [MIOPixelBufferPool alloc];
  v13 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v9 bufferCacheMode:v7];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
  v20 = *MEMORY[0x277CC4E50];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v21[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  v17 = v12;
  v18 = [(MIOPixelBufferPool *)v17 initWithPixelBuffer:0 bufferAttributes:v14 poolAttributes:v16 error:0];

  return v18;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format extendedPixelsPerRow:(unint64_t)row minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v8 = *&mode;
  v11 = *&format;
  v24[1] = *MEMORY[0x277D85DE8];
  v14 = [MIOPixelBufferPool alloc];
  v15 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v11 bufferCacheMode:v8];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:row];
  [v15 setObject:v16 forKey:*MEMORY[0x277CC4DB8]];

  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
  v23 = *MEMORY[0x277CC4E50];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v20 = v14;
  v21 = [(MIOPixelBufferPool *)v20 initWithPixelBuffer:0 bufferAttributes:v17 poolAttributes:v19 error:0];

  return v21;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format minBufferCount:(unint64_t)count maxBufferCount:(unint64_t)bufferCount bufferCacheMode:(int)mode
{
  v8 = *&mode;
  v11 = *&format;
  v24[2] = *MEMORY[0x277D85DE8];
  v14 = [MIOPixelBufferPool alloc];
  v15 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v11 bufferCacheMode:v8];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
  v23[0] = *MEMORY[0x277CC4E50];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v24[0] = v17;
  v23[1] = *MEMORY[0x277CC4E40];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bufferCount];
  v24[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v20 = v14;
  v21 = [(MIOPixelBufferPool *)v20 initWithPixelBuffer:0 bufferAttributes:v16 poolAttributes:v19 error:0];

  return v21;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format exactBytesPerRow:(unint64_t)row minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v8 = *&mode;
  v11 = *&format;
  v24[1] = *MEMORY[0x277D85DE8];
  v14 = [MIOPixelBufferPool alloc];
  v15 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v11 bufferCacheMode:v8];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:row];
  [v15 setObject:v16 forKey:*MEMORY[0x277CC4D98]];

  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
  v23 = *MEMORY[0x277CC4E50];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v20 = v14;
  v21 = [(MIOPixelBufferPool *)v20 initWithPixelBuffer:0 bufferAttributes:v17 poolAttributes:v19 error:0];

  return v21;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format exactBytesPerRows:(id)rows minBufferCount:(unint64_t)count
{
  v7 = [self createMIOPixelBufferPoolWithWidth:width height:height pixelFormat:*&format exactBytesPerRows:rows minBufferCount:count bufferCacheMode:0];

  return v7;
}

+ (id)createMIOPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format exactBytesPerRows:(id)rows minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v9 = *&format;
  v22[1] = *MEMORY[0x277D85DE8];
  rowsCopy = rows;
  v13 = [MIOPixelBufferPool alloc];
  v14 = [MIOPixelBufferPool makeBufferConfigDict:width height:height pixelFormat:v9 bufferCacheMode:0];
  [v14 setObject:rowsCopy forKey:*MEMORY[0x277CC4D98]];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];
  v21 = *MEMORY[0x277CC4E50];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v18 = v13;
  v19 = [(MIOPixelBufferPool *)v18 initWithPixelBuffer:0 bufferAttributes:v15 poolAttributes:v17 error:0];

  return v19;
}

+ (id)createNewL010MIOPixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v5 = *&mode;
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferPool alloc];
  v9 = *MEMORY[0x277CC4E30];
  v24[0] = &unk_2868E3990;
  v10 = *MEMORY[0x277CC4DE8];
  v23[0] = v9;
  v23[1] = v10;
  v21 = *MEMORY[0x277CD2970];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v22 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v19 = *MEMORY[0x277CC4E50];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v20 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v16 = v8;
  v17 = [(MIOPixelBufferPool *)v16 initWithPixelBuffer:buffer bufferAttributes:v13 poolAttributes:v15 error:0];

  return v17;
}

+ (id)createNewL008MIOPixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v5 = *&mode;
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferPool alloc];
  v9 = *MEMORY[0x277CC4E30];
  v24[0] = &unk_2868E39A8;
  v10 = *MEMORY[0x277CC4DE8];
  v23[0] = v9;
  v23[1] = v10;
  v21 = *MEMORY[0x277CD2970];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v22 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v19 = *MEMORY[0x277CC4E50];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v20 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v16 = v8;
  v17 = [(MIOPixelBufferPool *)v16 initWithPixelBuffer:buffer bufferAttributes:v13 poolAttributes:v15 error:0];

  return v17;
}

@end