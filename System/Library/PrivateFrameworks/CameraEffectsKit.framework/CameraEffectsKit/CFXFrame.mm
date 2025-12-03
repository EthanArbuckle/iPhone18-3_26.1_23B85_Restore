@interface CFXFrame
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFrame:(id)frame;
- (CFXFrame)initWithARFrame:(id)frame;
- (CFXFrame)initWithFrameSet:(id)set;
- (CFXFrame)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLatency:(id *)latency;
- (void)setRequestTime:(id *)time;
- (void)setTimestamp:(id *)timestamp;
@end

@implementation CFXFrame

- (CFXFrame)initWithARFrame:(id)frame
{
  frameCopy = frame;
  v12.receiver = self;
  v12.super_class = CFXFrame;
  v6 = [(CFXFrame *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_arFrame, frame);
    v7->_pixelBuffer = CVPixelBufferRetain([frameCopy capturedImage]);
    [frameCopy timestamp];
    CMTimeMakeWithSeconds(&v11, v8, 1000000000);
    v7->_timestamp = v11;
    v9 = MEMORY[0x277CC08F0];
    *&v7->_latency.value = *MEMORY[0x277CC08F0];
    v7->_latency.epoch = *(v9 + 16);
  }

  return v7;
}

- (CFXFrame)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp
{
  v10.receiver = self;
  v10.super_class = CFXFrame;
  v6 = [(CFXFrame *)&v10 init];
  if (v6)
  {
    *(v6 + 1) = CVPixelBufferRetain(buffer);
    var3 = timestamp->var3;
    *(v6 + 56) = *&timestamp->var0;
    *(v6 + 9) = var3;
    v8 = MEMORY[0x277CC08F0];
    *(v6 + 2) = *MEMORY[0x277CC08F0];
    *(v6 + 6) = *(v8 + 16);
  }

  return v6;
}

- (CFXFrame)initWithFrameSet:(id)set
{
  setCopy = set;
  v13.receiver = self;
  v13.super_class = CFXFrame;
  v6 = [(CFXFrame *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pvFrameSet, set);
    colorImageBuffer = [setCopy colorImageBuffer];
    v7->_pixelBuffer = CVPixelBufferRetain([colorImageBuffer cvPixelBuffer]);

    if (setCopy)
    {
      [setCopy presentationTimeStamp];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CFXFrame *)self timestamp];
  [coderCopy encodeCMTime:v5 forKey:@"timestamp"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CFXFrame *)self isEqualToFrame:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFrame:(id)frame
{
  frameCopy = frame;
  pixelBuffer = [(CFXFrame *)self pixelBuffer];
  if (pixelBuffer == [frameCopy pixelBuffer])
  {
    [(CFXFrame *)self timestamp];
    if (frameCopy)
    {
      [frameCopy timestamp];
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

- (void)setLatency:(id *)latency
{
  v3 = *&latency->var0;
  self->_latency.epoch = latency->var3;
  *&self->_latency.value = v3;
}

- (void)setTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_timestamp.epoch = timestamp->var3;
  *&self->_timestamp.value = v3;
}

- (void)setRequestTime:(id *)time
{
  v3 = *&time->var0;
  self->_requestTime.epoch = time->var3;
  *&self->_requestTime.value = v3;
}

@end