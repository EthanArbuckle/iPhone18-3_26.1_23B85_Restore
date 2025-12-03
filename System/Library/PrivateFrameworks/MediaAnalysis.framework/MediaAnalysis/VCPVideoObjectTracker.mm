@interface VCPVideoObjectTracker
- (CGRect)objectBounds;
- (CGRect)objectBoundsInitial;
- (VCPVideoObjectTracker)initWithObjectBounds:(CGRect)bounds inFrame:(__CVBuffer *)frame timestamp:(id *)timestamp;
- (int)trackObjectInFrame:(__CVBuffer *)frame;
@end

@implementation VCPVideoObjectTracker

- (VCPVideoObjectTracker)initWithObjectBounds:(CGRect)bounds inFrame:(__CVBuffer *)frame timestamp:(id *)timestamp
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v43[8] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = VCPVideoObjectTracker;
  v11 = [(VCPVideoObjectTracker *)&v42 init];
  if (!v11)
  {
    goto LABEL_41;
  }

  v12 = objc_alloc_init(VCPCtrTracker);
  v13 = *(v11 + 1);
  *(v11 + 1) = v12;

  if (*(v11 + 1))
  {
    v14 = CVPixelBufferGetWidth(frame);
    v15 = CVPixelBufferGetHeight(frame);
    v16 = x;
    v17 = y;
    v18 = width;
    v19 = height;
    *(v11 + 10) = v16;
    *(v11 + 11) = v17;
    *(v11 + 12) = v18;
    *(v11 + 13) = v19;
    v20 = *(v11 + 6);
    *(v11 + 3) = *(v11 + 5);
    *(v11 + 4) = v20;
    *(v11 + 5) = 0;
    v21 = v14 + -1.0;
    if (v21 > v16)
    {
      v22 = x;
    }

    else
    {
      v22 = v14 + -1.0;
    }

    if (v16 <= 0.0)
    {
      v22 = 0.0;
    }

    v23 = v22;
    v24 = v15 + -1.0;
    if (v24 > v17)
    {
      v25 = y;
    }

    else
    {
      v25 = v15 + -1.0;
    }

    if (v17 <= 0.0)
    {
      v25 = 0.0;
    }

    v26 = v25;
    *v43 = v23;
    *&v43[1] = v26;
    v27 = v16 + v18;
    if (v27 < v21)
    {
      v28 = v27;
    }

    else
    {
      v28 = v14 + -1.0;
    }

    if (v27 <= 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = v29;
    *&v43[2] = v30;
    *&v43[3] = v26;
    v31 = v17 + v19;
    if (v31 < v24)
    {
      v32 = v31;
    }

    else
    {
      v32 = v15 + -1.0;
    }

    if (v31 <= 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32;
    }

    *&v43[6] = v23;
    *&v43[7] = v33;
    *&v43[4] = v30;
    *&v43[5] = v33;
    pixelBuffer = frame;
    unlockFlags = 1;
    if (frame)
    {
      v39 = CVPixelBufferLockBaseAddress(frame, 1uLL);
      if (v39)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPImageConverter convertImage:yuvFrame:];
        }
      }

      else
      {
        [*(v11 + 1) setupTrackerWithReferenceFrame:frame withROI:v43];
        if (!CVPixelBufferLock::Unlock(&v39))
        {
          v38 = *&timestamp->var0;
          *(v11 + 5) = timestamp->var3;
          *(v11 + 24) = v38;
          v35 = 1;
          goto LABEL_35;
        }
      }

      v35 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v35 = 0;
      v39 = -50;
    }

LABEL_35:
    if (pixelBuffer && !v39 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    if (!v35)
    {
      v36 = 0;
      goto LABEL_43;
    }

LABEL_41:
    v36 = v11;
LABEL_43:
    v34 = v36;
    goto LABEL_44;
  }

  v34 = 0;
LABEL_44:

  return v34;
}

- (int)trackObjectInFrame:(__CVBuffer *)frame
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0;
  pixelBuffer = frame;
  unlockFlags = 1;
  if (frame)
  {
    v5 = CVPixelBufferLockBaseAddress(frame, 1uLL);
    v27 = v5;
    if (!v5 || (v6 = v5, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v31 = frame, v32 = 1024, v33 = v6, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v6 = v27) == 0))
    {
      [(VCPCtrTracker *)self->_correlationTracker trackInFrame:frame];
      v6 = CVPixelBufferLock::Unlock(&v27);
      if (!v6)
      {
        if ([(VCPCtrTracker *)self->_correlationTracker lostTrackInd])
        {
          v7 = *(MEMORY[0x1E695F058] + 16);
          self->_objectBounds.origin = *MEMORY[0x1E695F058];
          self->_objectBounds.size = v7;
        }

        else
        {
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(frame, 0);
          v11 = [(VCPCtrTracker *)self->_correlationTracker box];
          x = (WidthOfPlane + -1.0);
          if (v11->x < x)
          {
            x = v11->x;
          }

          if (v11->x <= 0.0)
          {
            x = 0.0;
          }

          self->_objectBounds.origin.x = x;
          v13 = [(VCPCtrTracker *)self->_correlationTracker box];
          v14 = (HeightOfPlane + -1.0);
          y = v13->y;
          if (y < v14)
          {
            v14 = v13->y;
          }

          if (y <= 0.0)
          {
            v14 = 0.0;
          }

          self->_objectBounds.origin.y = v14;
          v16 = [(VCPCtrTracker *)self->_correlationTracker box][32];
          v17 = v16 - *[(VCPCtrTracker *)self->_correlationTracker box];
          v18 = self->_objectBounds.origin.x;
          if (WidthOfPlane - v18 < v17)
          {
            v17 = WidthOfPlane - v18;
          }

          self->_objectBounds.size.width = v17;
          v19 = [(VCPCtrTracker *)self->_correlationTracker box][40];
          v20 = v19 - [(VCPCtrTracker *)self->_correlationTracker box][8];
          v21 = self->_objectBounds.origin.y;
          if (HeightOfPlane - v21 < v20)
          {
            v20 = HeightOfPlane - v21;
          }

          self->_objectBounds.size.height = v20;
        }

        [(VCPCtrTracker *)self->_correlationTracker confidence];
        v23 = v22 / 50.0;
        v24 = 1.0;
        if (v23 < 1.0)
        {
          v24 = v23;
        }

        v25 = v23 > 0.0;
        v26 = 0.0;
        if (v25)
        {
          v26 = v24;
        }

        self->_confidence = v26;
        v6 = 0;
        if (v26 >= 0.2)
        {
          self->_lostCount = 0;
        }

        else
        {
          ++self->_lostCount;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v6 = -50;
    v27 = -50;
  }

  if (pixelBuffer && !v27 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v6;
}

- (CGRect)objectBoundsInitial
{
  x = self->_objectBoundsInitial.origin.x;
  y = self->_objectBoundsInitial.origin.y;
  width = self->_objectBoundsInitial.size.width;
  height = self->_objectBoundsInitial.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)objectBounds
{
  x = self->_objectBounds.origin.x;
  y = self->_objectBounds.origin.y;
  width = self->_objectBounds.size.width;
  height = self->_objectBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end