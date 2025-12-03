@interface DVPFrameOpticalFlow
- (DVPFrameOpticalFlow)initWithForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
- (void)dealloc;
@end

@implementation DVPFrameOpticalFlow

- (void)dealloc
{
  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  v3.receiver = self;
  v3.super_class = DVPFrameOpticalFlow;
  [(DVPFrameOpticalFlow *)&v3 dealloc];
}

- (DVPFrameOpticalFlow)initWithForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  v10.receiver = self;
  v10.super_class = DVPFrameOpticalFlow;
  v6 = [(DVPFrameOpticalFlow *)&v10 init];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = 0;
  if (flow && backwardFlow)
  {
    if (!CVPixelBufferGetIOSurface(flow) || !CVPixelBufferGetIOSurface(backwardFlow))
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6->_forwardFlow = CVPixelBufferRetain(flow);
    v8 = CVPixelBufferRetain(backwardFlow);
    v7 = 0;
    v6->_backwardFlow = v8;
    if (v6->_forwardFlow)
    {
      if (v8)
      {
LABEL_8:
        v7 = v6;
      }
    }
  }

LABEL_9:

  return v7;
}

@end