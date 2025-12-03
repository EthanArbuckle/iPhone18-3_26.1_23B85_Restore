@interface HMIFaceQualityEntropyOfLaplacian
- (HMIFaceQualityEntropyOfLaplacian)init;
- (float)computeJunkScoreForPixelBuffer:(__CVBuffer *)buffer;
- (id).cxx_construct;
@end

@implementation HMIFaceQualityEntropyOfLaplacian

- (HMIFaceQualityEntropyOfLaplacian)init
{
  v6.receiver = self;
  v6.super_class = HMIFaceQualityEntropyOfLaplacian;
  v2 = [(HMIFaceQualityEntropyOfLaplacian *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2[2] = 500;
    v2[3] = 1020;
    v2[4] = -1020;
    v4 = v2[2];
    *(v2 + 5) = ((v2[3] + 1020) / v4);
    v2[6] = 1082130432;
    std::vector<float>::resize((v2 + 8), v4);
  }

  return v3;
}

- (float)computeJunkScoreForPixelBuffer:(__CVBuffer *)buffer
{
  Size = HMICVPixelBufferGetSize(buffer);
  v7 = v6;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v9 = Size;
  v10 = malloc_type_malloc(3 * Size * v7, 0xDDD15EACuLL);
  v70.data = BaseAddressOfPlane;
  v70.height = v7;
  v70.width = Size;
  v70.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v69.data = v10;
  v69.height = v7;
  v69.width = Size;
  v69.rowBytes = 3 * Size;
  vImageConvert_RGBA8888toRGB888(&v70, &v69, 0);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  v58 = v7;
  v59 = Size;
  v60 = v10;
  v61 = 0;
  v11 = 3 * v59;
  if (v58 == 1)
  {
    v12 = 3 * v9;
  }

  else
  {
    v12 = 3 * Size;
  }

  if (v12 == v11 || v9 == 0)
  {
    v14 = 1124024336;
  }

  else
  {
    v14 = 1124007952;
  }

  v66 = &v58;
  v67 = v68;
  if (v9)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v56 = v14;
  v57 = 2;
  v68[0] = v15;
  v68[1] = 3;
  v64 = &v10[v15 * v7];
  v65 = 0;
  v62 = v10;
  v63 = &v64[v11 - v15];
  p_histogram = &self->_histogram;
  begin = self->_histogram.__begin_;
  v18 = self->_histogram.__end_ - begin;
  if (v18 >= 1)
  {
    bzero(begin, v18);
  }

  v53 = v52 + 8;
  v54 = v55;
  v55[0] = 0;
  v55[1] = 0;
  LODWORD(v52[0]) = 1124007936;
  memset(v52 + 4, 0, 48);
  v52[3] = 0u;
  cv::_InputArray::_InputArray(v51, &v56);
  cv::_OutputArray::_OutputArray(v50, v52);
  cv::Laplacian(v51, v50, (((v56 >> 3) & 0x1FF) + 1), 1, 4, 1.0, 0.0);
  v20 = v58;
  v19 = v59;
  v21 = v56;
  v22 = DWORD2(v52[0]);
  if (SDWORD2(v52[0]) >= 1)
  {
    v23 = 0;
    v24 = HIDWORD(v52[0]);
    v25 = v54;
    v26 = *&v52[1] + 4;
    do
    {
      if (v24 >= 1)
      {
        v27 = p_histogram->__begin_;
        v28 = (v26 + *v25 * v23);
        v29 = v24;
        do
        {
          v30 = ((*(v28 - 2) + 1020.0) / self->_binWidth);
          v31 = *(v28 - 1);
          v27[v30] = v27[v30] + 1.0;
          v32 = ((v31 + 1020.0) / self->_binWidth);
          v27[v32] = v27[v32] + 1.0;
          v33 = ((*v28 + 1020.0) / self->_binWidth);
          v27[v33] = v27[v33] + 1.0;
          v28 += 3;
          --v29;
        }

        while (v29);
      }

      ++v23;
    }

    while (v23 != v22);
  }

  v35 = p_histogram->__begin_;
  end = self->_histogram.__end_;
  v36 = 0.0;
  if (v35 != end)
  {
    v37 = (v19 * v20 + v19 * v20 * ((v21 >> 3) & 0x1FF));
    v38 = v35;
    do
    {
      *v38 = *v38 / v37;
      ++v38;
    }

    while (v38 != end);
    if (v35 != end)
    {
      v36 = 0.0;
      do
      {
        if (*v35 >= 0.001)
        {
          v39 = *v35;
          v36 = v36 - (v39 * logf(*v35));
        }

        ++v35;
      }

      while (v35 != end);
    }
  }

  maxScore = self->_maxScore;
  free(v10);
  v41 = self->_maxScore;
  if (*(&v52[1] + 1) && atomic_fetch_add(*(&v52[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v52);
  }

  *&v52[1] = 0;
  memset(&v52[2], 0, 24);
  if (SDWORD1(v52[0]) >= 1)
  {
    v42 = 0;
    v43 = v53;
    do
    {
      *&v43[4 * v42++] = 0;
    }

    while (v42 < SDWORD1(v52[0]));
  }

  *(&v52[1] + 1) = 0;
  if (v54)
  {
    v44 = v54 == v55;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    free(v54);
  }

  if (v61 && atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v56);
  }

  v60 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  if (v57 >= 1)
  {
    v45 = 0;
    v46 = v66;
    do
    {
      v46[v45++] = 0;
    }

    while (v45 < v57);
  }

  v61 = 0;
  if (v67)
  {
    v47 = v67 == v68;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    free(v67);
  }

  if (v36 >= maxScore)
  {
    v48 = maxScore;
  }

  else
  {
    v48 = v36;
  }

  return v41 - v48;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end