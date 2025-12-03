@interface VCPHomeKitMotionAnalyzer
- (VCPHomeKitMotionAnalyzer)init;
- (id).cxx_construct;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)calculateFrameDifference:(__CVBuffer *)difference;
- (int)computeRegionsofInterest;
- (int)setPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation VCPHomeKitMotionAnalyzer

- (VCPHomeKitMotionAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = VCPHomeKitMotionAnalyzer;
  v2 = [(VCPHomeKitMotionAnalyzer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_frameArray.__end_ = v2->_frameArray.__begin_;
    array = [MEMORY[0x1E695DF70] array];
    regions = v3->_regions;
    v3->_regions = array;

    v3->_diff = 0;
    v3->_ptrFirst = 0;
    v3->_ptrLast = 0;
    v3->_frameWidth = 0;
    v3->_frameHeight = 0;
    v3->_width = 0;
    v3->_height = 0;
    v3->_stride = 0;
    v3->_blockSize = 0;
    v3->_widthBlockNum = 0;
    v3->_heightBlockNum = 0;
  }

  return v3;
}

- (void)dealloc
{
  p_frameArray = &self->_frameArray;
  begin = self->_frameArray.__begin_;
  end = self->_frameArray.__end_;
  if (end != begin)
  {
    v6 = 0;
    do
    {
      v7 = begin[v6];
      if (v7)
      {
        CFRelease(v7);
        begin[v6] = 0;
        begin = p_frameArray->__begin_;
        end = p_frameArray->__end_;
      }

      ++v6;
    }

    while (v6 < end - begin);
  }

  diff = self->_diff;
  if (diff)
  {
    MEMORY[0x1CCA95C10](diff, 0x1000C8052888210);
  }

  ptrFirst = self->_ptrFirst;
  if (ptrFirst)
  {
    MEMORY[0x1CCA95C10](ptrFirst, 0x1000C8052888210);
  }

  ptrLast = self->_ptrLast;
  if (ptrLast)
  {
    MEMORY[0x1CCA95C10](ptrLast, 0x1000C8052888210);
  }

  v11.receiver = self;
  v11.super_class = VCPHomeKitMotionAnalyzer;
  [(VCPHomeKitMotionAnalyzer *)&v11 dealloc];
}

- (int)setPixelBuffer:(__CVBuffer *)buffer
{
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  self->_stride = BytesPerRowOfPlane;
  v5 = self->_height * self->_width;
  if (v5 < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = 4 * v5;
  }

  v7 = MEMORY[0x1E69E5398];
  self->_diff = operator new[](v6, MEMORY[0x1E69E5398]);
  if (BytesPerRowOfPlane < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = 4 * BytesPerRowOfPlane;
  }

  self->_ptrFirst = operator new[](v8, v7);
  v9 = operator new[](v8, v7);
  self->_ptrLast = v9;
  if (!self->_diff)
  {
    return -108;
  }

  if (!self->_ptrFirst || v9 == 0)
  {
    return -108;
  }

  result = 0;
  self->_blockSize = 32;
  self->_widthBlockNum = vcvtps_s32_f32(self->_width * 0.03125);
  self->_heightBlockNum = vcvtps_s32_f32(self->_height / self->_blockSize);
  return result;
}

- (int)calculateFrameDifference:(__CVBuffer *)difference
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  Width = CVPixelBufferGetWidth(difference);
  Height = CVPixelBufferGetHeight(difference);
  v7 = Height;
  if (self->_diff)
  {
    if (self->_frameWidth != Width || self->_frameHeight != Height)
    {
      return -50;
    }

    Scaler::Scale(&self->_scaler, difference, &v30, self->_width, self->_height, 875704438);
    v9 = v8;
    if (v8)
    {
      return v9;
    }
  }

  else
  {
    if (Width <= Height)
    {
      v10 = (vcvtps_s32_f32((Width * 480.0) / Height) + 1) & 0xFFFFFFFE;
    }

    else
    {
      v10 = 480;
    }

    self->_width = v10;
    if (Height <= Width)
    {
      v11 = (vcvtps_s32_f32((Height * 480.0) / Width) + 1) & 0xFFFFFFFE;
    }

    else
    {
      v11 = 480;
    }

    self->_height = v11;
    Scaler::Scale(&self->_scaler, difference, &v30, self->_width, v11, 875704438);
    v9 = v12;
    if (v12)
    {
      return v9;
    }

    v9 = [(VCPHomeKitMotionAnalyzer *)self setPixelBuffer:v30];
    if (v9)
    {
      return v9;
    }

    self->_frameWidth = Width;
    self->_frameHeight = v7;
  }

  p_frameArray = &self->_frameArray;
  begin = self->_frameArray.__begin_;
  end = self->_frameArray.__end_;
  if ((end - begin) <= 8)
  {
    std::vector<__CVBuffer *>::push_back[abi:ne200100](&self->_frameArray, &v30);
    return 0;
  }

  if (*begin)
  {
    CFRelease(*begin);
    *begin = 0;
    begin = p_frameArray->__begin_;
    end = self->_frameArray.__end_;
  }

  v16 = end - (begin + 1);
  if (end != (begin + 1))
  {
    memmove(begin, begin + 1, end - (begin + 1));
  }

  self->_frameArray.__end_ = (begin + v16);
  std::vector<__CVBuffer *>::push_back[abi:ne200100](&self->_frameArray, &v30);
  v17 = p_frameArray->__begin_;
  v18 = (self->_frameArray.__end_ - self->_frameArray.__begin_) >> 3;
  if (v18 <= 1)
  {
    LODWORD(v18) = 1;
  }

  v19 = v17[v18 - 1];
  v20 = *v17;
  v27 = 0;
  v28 = v19;
  v29 = 1;
  if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v9 = CVPixelBufferLockBaseAddress(v19, 1uLL);
  v27 = v9;
  if (!v9 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*buf = 134218240, *pixelBuffer = v28, *&pixelBuffer[8] = 1024, *&pixelBuffer[10] = v9, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v9 = v27) == 0))
  {
    *&pixelBuffer[4] = v20;
    *&pixelBuffer[12] = 1;
    if (v20)
    {
      v9 = CVPixelBufferLockBaseAddress(v20, 1uLL);
      *buf = v9;
      if (!v9 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v33 = 134218240, v34 = *&pixelBuffer[4], v35 = 1024, v36 = v9, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v33, 0x12u), (v9 = *buf) == 0))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v19, 0);
        v22 = CVPixelBufferGetBaseAddressOfPlane(v20, 0);
        bzero(self->_diff, self->_height * self->_width);
        if (self->_height >= 1)
        {
          v23 = 0;
          diff = self->_diff;
          LODWORD(stride) = self->_stride;
          do
          {
            vDSP_vfltu8(BaseAddressOfPlane, 1, self->_ptrLast, 1, stride);
            vDSP_vfltu8(v22, 1, self->_ptrFirst, 1, self->_stride);
            MEMORY[0x1CCA973F0](self->_ptrFirst, 1, self->_ptrLast, 1, diff, 1, self->_width);
            stride = self->_stride;
            BaseAddressOfPlane += stride;
            v22 += stride;
            diff += self->_width;
            ++v23;
          }

          while (v23 < self->_height);
        }

        v9 = CVPixelBufferLock::Unlock(buf);
        if (!v9)
        {
          v9 = CVPixelBufferLock::Unlock(&v27);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v9 = -50;
      *buf = -50;
    }

    if (*&pixelBuffer[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&pixelBuffer[4], *&pixelBuffer[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    if (v28 && !v27 && CVPixelBufferUnlockBaseAddress(v28, v29) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }
  }

  return v9;
}

- (int)computeRegionsofInterest
{
  vDSP_vabs(self->_diff, 1, self->_diff, 1, self->_height * self->_width);
  __src = 0;
  v62 = 0;
  v63 = 0;
  height = self->_height;
  if (height >= 1)
  {
    v4 = 0;
    v5 = 0;
    diff = self->_diff;
    blockSize = self->_blockSize;
    width = self->_width;
    do
    {
      if (blockSize >= height + ~v5)
      {
        v9 = height + ~v5;
      }

      else
      {
        v9 = blockSize;
      }

      if (width >= 1)
      {
        v59 = v5;
        v10 = 0;
        v58 = diff;
        do
        {
          v11 = width + ~v10;
          if (blockSize >= v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = blockSize;
          }

          if (v9 < 1)
          {
            v13 = 0.0;
          }

          else
          {
            v13 = 0.0;
            v14 = v9;
            v15 = diff;
            do
            {
              __C = 0.0;
              vDSP_sve(v15, 1, &__C, v12);
              v15 += self->_width;
              v13 = v13 + __C;
              --v14;
            }

            while (v14);
            blockSize = self->_blockSize;
            v4 = v62;
          }

          v16 = v13 / (blockSize * blockSize);
          if (v4 >= v63)
          {
            v17 = __src;
            v18 = v4 - __src;
            v19 = (v4 - __src) >> 2;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
            }

            v21 = v63 - __src;
            if ((v63 - __src) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v23);
            }

            v24 = (v4 - __src) >> 2;
            v25 = (4 * v19);
            v26 = (4 * v19 - 4 * v24);
            *v25 = v16;
            v4 = v25 + 1;
            memcpy(v26, v17, v18);
            v27 = __src;
            __src = v26;
            v62 = v4;
            v63 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v4++ = v16;
          }

          v62 = v4;
          diff += v12;
          blockSize = self->_blockSize;
          v10 += blockSize;
          width = self->_width;
        }

        while (v10 < width);
        diff = v58;
        height = self->_height;
        v5 = v59;
      }

      diff += blockSize * width;
      v5 += blockSize;
    }

    while (v5 < height);
  }

  widthBlockNum = self->_widthBlockNum;
  heightBlockNum = self->_heightBlockNum;
  v30 = 0.0;
  if (heightBlockNum < 1)
  {
    v33 = 0;
    v32 = 0;
    v36 = self->_heightBlockNum;
    v35 = self->_widthBlockNum;
    v34 = 0.0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0.0;
    v35 = self->_widthBlockNum;
    v36 = self->_heightBlockNum;
    do
    {
      if (widthBlockNum <= 0)
      {
        v38 = v31 + 1;
      }

      else
      {
        v37 = 0;
        v38 = v31 + 1;
        do
        {
          if (*(__src + v31 * widthBlockNum + v37) <= 6.0)
          {
            ++v37;
          }

          else
          {
            if (v35 >= v37)
            {
              v35 = v37;
            }

            if (++v37 > v32)
            {
              v32 = v37;
            }

            if (v36 >= v31)
            {
              v36 = v31;
            }

            if (v38 > v33)
            {
              v33 = v31 + 1;
            }

            v34 = 1.0;
          }
        }

        while (v37 != widthBlockNum);
      }

      v31 = v38;
    }

    while (v38 != heightBlockNum);
  }

  v39 = __OFSUB__(v33, v36);
  v40 = v33 - v36;
  if ((v40 < 0) ^ v39 | (v40 == 0))
  {
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v39 = __OFSUB__(v32, v35);
  v42 = v32 - v35;
  v43 = widthBlockNum;
  v44 = (v42 / widthBlockNum) * 1.5;
  if ((v42 < 0) ^ v39 | (v42 == 0))
  {
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = (v40 / heightBlockNum) * 1.5;
  if (v44 > 1.0)
  {
    v44 = 1.0;
  }

  v47 = (v35 / v43) - ((v44 * 0.5) / 3.0);
  if (v46 > 1.0)
  {
    v46 = 1.0;
  }

  if (v47 < 0.0)
  {
    v47 = 0.0;
  }

  if (((1.0 - (v33 / heightBlockNum)) - ((v46 * 0.5) / 3.0)) >= 0.0)
  {
    v30 = (1.0 - (v33 / heightBlockNum)) - ((v46 * 0.5) / 3.0);
  }

  v48 = v47;
  v49 = v30;
  v50 = v44;
  if ((v45 & v41) != 0)
  {
    v51 = v46;
  }

  else
  {
    v51 = 0.0;
  }

  if ((v45 & v41) != 0)
  {
    v52 = v48;
  }

  else
  {
    v52 = 0.0;
  }

  if ((v45 & v41) != 0)
  {
    v53 = v49;
  }

  else
  {
    v53 = 0.0;
  }

  if ((v45 & v41) != 0)
  {
    v54 = v50;
  }

  else
  {
    v54 = 0.0;
  }

  regions = self->_regions;
  v56 = NSStringFromRect(*(&v51 - 3));
  [(NSMutableArray *)regions addObject:v56];

  self->_actionScore = v34;
  if (__src)
  {
    v62 = __src;
    operator delete(__src);
  }

  return 0;
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  [(NSMutableArray *)self->_regions removeAllObjects:frame];
  result = [(VCPHomeKitMotionAnalyzer *)self calculateFrameDifference:frame];
  if (!result)
  {

    return [(VCPHomeKitMotionAnalyzer *)self computeRegionsofInterest];
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 14) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

@end