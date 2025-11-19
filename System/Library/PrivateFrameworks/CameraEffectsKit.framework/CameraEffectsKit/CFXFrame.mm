@interface CFXFrame
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFrame:(id)a3;
- (CFXFrame)initWithARFrame:(id)a3;
- (CFXFrame)initWithFrameSet:(id)a3;
- (CFXFrame)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLatency:(id *)a3;
- (void)setRequestTime:(id *)a3;
- (void)setTimestamp:(id *)a3;
@end

@implementation CFXFrame

- (CFXFrame)initWithARFrame:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CFXFrame;
  v6 = [(CFXFrame *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_arFrame, a3);
    v7->_pixelBuffer = CVPixelBufferRetain([v5 capturedImage]);
    [v5 timestamp];
    CMTimeMakeWithSeconds(&v11, v8, 1000000000);
    v7->_timestamp = v11;
    v9 = MEMORY[0x277CC08F0];
    *&v7->_latency.value = *MEMORY[0x277CC08F0];
    v7->_latency.epoch = *(v9 + 16);
  }

  return v7;
}

- (CFXFrame)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4
{
  v10.receiver = self;
  v10.super_class = CFXFrame;
  v6 = [(CFXFrame *)&v10 init];
  if (v6)
  {
    *(v6 + 1) = CVPixelBufferRetain(a3);
    var3 = a4->var3;
    *(v6 + 56) = *&a4->var0;
    *(v6 + 9) = var3;
    v8 = MEMORY[0x277CC08F0];
    *(v6 + 2) = *MEMORY[0x277CC08F0];
    *(v6 + 6) = *(v8 + 16);
  }

  return v6;
}

- (CFXFrame)initWithFrameSet:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CFXFrame;
  v6 = [(CFXFrame *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pvFrameSet, a3);
    v8 = [v5 colorImageBuffer];
    v7->_pixelBuffer = CVPixelBufferRetain([v8 cvPixelBuffer]);

    if (v5)
    {
      [v5 presentationTimeStamp];
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    *&v7->_timestamp.value = v11;
    v7->_timestamp.epoch = v12;
    v9 = MEMORY[0x277CC08F0];
    *&v7->_latency.value = *MEMORY[0x277CC08F0];
    v7->_latency.epoch = *(v9 + 16);
  }

  return v7;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = CFXFrame;
  [(CFXFrame *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(CFXFrame *)self timestamp];
  [v4 encodeCMTime:v5 forKey:@"timestamp"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CFXFrame *)self isEqualToFrame:v4];
  }

  return v5;
}

- (BOOL)isEqualToFrame:(id)a3
{
  v4 = a3;
  v5 = [(CFXFrame *)self pixelBuffer];
  if (v5 == [v4 pixelBuffer])
  {
    [(CFXFrame *)self timestamp];
    if (v4)
    {
      [v4 timestamp];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    v6 = CMTimeCompare(&time1, &v8) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLatency:(id *)a3
{
  v3 = *&a3->var0;
  self->_latency.epoch = a3->var3;
  *&self->_latency.value = v3;
}

- (void)setTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_timestamp.epoch = a3->var3;
  *&self->_timestamp.value = v3;
}

- (void)setRequestTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_requestTime.epoch = a3->var3;
  *&self->_requestTime.value = v3;
}

@end