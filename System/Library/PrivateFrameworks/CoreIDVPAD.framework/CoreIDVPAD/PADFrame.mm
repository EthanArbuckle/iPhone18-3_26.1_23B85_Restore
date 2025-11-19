@interface PADFrame
+ (id)cvPixelBufferFromData:(id)a3;
- (CGSize)size;
- (PADFrame)init;
- (void)dealloc;
- (void)setTime:(id *)a3;
@end

@implementation PADFrame

- (PADFrame)init
{
  v3.receiver = self;
  v3.super_class = PADFrame;
  result = [(PADFrame *)&v3 init];
  if (result)
  {
    ++_retainedFramesCount;
  }

  return result;
}

- (void)dealloc
{
  --_retainedFramesCount;
  v2.receiver = self;
  v2.super_class = PADFrame;
  [(PADFrame *)&v2 dealloc];
}

- (CGSize)size
{
  Width = CVPixelBufferGetWidth([(PADFrame *)self buffer]);
  Height = CVPixelBufferGetHeight([(PADFrame *)self buffer]);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

+ (id)cvPixelBufferFromData:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC4D68];
  v17[0] = *MEMORY[0x277CC4D70];
  v17[1] = v3;
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = MEMORY[0x277CBEC38];
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v18 forKeys:v17 count:2];
  v7 = [MEMORY[0x277CBF758] imageWithData:v5];

  v16 = 0;
  v8 = *MEMORY[0x277CBECE8];
  [v7 extent];
  v10 = v9;
  [v7 extent];
  v12 = CVPixelBufferCreate(v8, v10, v11, 0x42475241u, v6, &v16);
  v13 = 0;
  if (!v12)
  {
    v14 = [MEMORY[0x277CBF740] context];
    [v14 render:v7 toCVPixelBuffer:v16];
    v13 = v16;
  }

  return v13;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end