@interface DVPFrame
- (DVPFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp;
- (void)dealloc;
@end

@implementation DVPFrame

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = DVPFrame;
  [(DVPFrame *)&v3 dealloc];
}

- (DVPFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp
{
  v12.receiver = self;
  v12.super_class = DVPFrame;
  v6 = [(DVPFrame *)&v12 init];
  v7 = v6;
  v8 = 0;
  if (buffer && v6)
  {
    if (CVPixelBufferGetIOSurface(buffer) && (v9 = CVPixelBufferRetain(buffer), v7->_buffer = v9, var3 = stamp->var3, *&v7->_presentationTimeStamp.value = *&stamp->var0, v7->_presentationTimeStamp.epoch = var3, v9))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end