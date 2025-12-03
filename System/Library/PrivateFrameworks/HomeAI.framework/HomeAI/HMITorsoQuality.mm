@interface HMITorsoQuality
+ (float)entropy:(const void *)entropy numPixels:(int)pixels;
+ (float)entropyOfLaplacianForBGRAPixelBuffer:(__CVBuffer *)buffer;
+ (float)entropyOfSaturationForBGRAPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation HMITorsoQuality

+ (float)entropy:(const void *)entropy numPixels:(int)pixels
{
  v4 = *entropy;
  v5 = *(entropy + 1);
  if (*entropy == v5)
  {
    return 0.0;
  }

  v6 = pixels + 1.0e-20;
  v7 = 0.0;
  do
  {
    v8 = *v4 / v6;
    if (v8 > 1.0e-20)
    {
      v9 = *v4 / v6;
      v7 = v7 + (v8 * logf(v9));
    }

    ++v4;
  }

  while (v4 != v5);
  return v7;
}

+ (float)entropyOfLaplacianForBGRAPixelBuffer:(__CVBuffer *)buffer
{
  Size = HMICVPixelBufferGetSize(buffer);
  v6 = v5;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v8 = v6;
  v9 = Size;
  v10 = malloc_type_malloc(3 * Size * v6, 0x8B499A36uLL);
  v57.data = BaseAddressOfPlane;
  v57.height = v6;
  v57.width = Size;
  v57.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v56.data = v10;
  v56.height = v6;
  v56.width = Size;
  v56.rowBytes = 3 * Size;
  v11 = vImageConvert_RGBA8888toRGB888(&v57, &v56, 0);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  if (v11)
  {
    free(v10);
    return 1.0;
  }

  else
  {
    v46[0] = v6;
    v46[1] = Size;
    v47 = v10;
    v48 = 0;
    v13 = 3 * v9;
    if (v8 == 1)
    {
      v14 = 3 * v9;
    }

    else
    {
      v14 = 3 * Size;
    }

    if (v14 == v13 || v9 == 0)
    {
      v16 = 1124024336;
    }

    else
    {
      v16 = 1124007952;
    }

    v53 = v46;
    v54 = v55;
    if (v9)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v44 = v16;
    v45 = 2;
    v55[0] = v17;
    v55[1] = 3;
    v51 = &v10[v17 * v8];
    v52 = 0;
    v49 = v10;
    v50 = &v51[v13 - v17];
    v41 = v40 + 8;
    v42 = v43;
    v43[0] = 0;
    v43[1] = 0;
    LODWORD(v40[0]) = 1124007936;
    memset(v40 + 4, 0, 48);
    v40[3] = 0u;
    cv::_InputArray::_InputArray(__p, &v44);
    cv::_OutputArray::_OutputArray(v38, v40);
    cv::Laplacian(__p, v38, (((v44 >> 3) & 0x1FF) + 1), 1, 4, 1.0, 0.0);
    v38[0] = 0;
    std::vector<int>::vector[abi:ne200100](__p, 0x1F4uLL);
    v18 = DWORD2(v40[0]);
    if (SDWORD2(v40[0]) < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = *&v40[1];
      v22 = v42;
      v23 = HIDWORD(v40[0]);
      do
      {
        if (v23 >= 1)
        {
          v24 = 0;
          v25 = v21 + *v22 * v19;
          do
          {
            v26 = 0;
            v27 = __p[0];
            do
            {
              v28 = *(v25 + v26);
              if ((v28 + 1020) <= 0x7F7u)
              {
                v29 = ((v28 + 1020.0) / 4.08);
                ++v27[v29];
                v20 = (v20 + 1);
              }

              v26 += 2;
            }

            while (v26 != 6);
            ++v24;
            v23 = HIDWORD(v40[0]);
            v25 += 6;
          }

          while (v24 < SHIDWORD(v40[0]));
          v18 = DWORD2(v40[0]);
        }

        ++v19;
      }

      while (v19 < v18);
    }

    free(v10);
    [HMITorsoQuality entropy:__p numPixels:v20];
    v12 = v30;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v40[1] + 1) && atomic_fetch_add(*(&v40[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v40);
    }

    *&v40[1] = 0;
    memset(&v40[2], 0, 24);
    if (SDWORD1(v40[0]) >= 1)
    {
      v31 = 0;
      v32 = v41;
      do
      {
        *&v32[4 * v31++] = 0;
      }

      while (v31 < SDWORD1(v40[0]));
    }

    *(&v40[1] + 1) = 0;
    if (v42)
    {
      v33 = v42 == v43;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      free(v42);
    }

    if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v44);
    }

    v47 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    if (v45 >= 1)
    {
      v34 = 0;
      v35 = v53;
      do
      {
        v35[v34++] = 0;
      }

      while (v34 < v45);
    }

    v48 = 0;
    if (v54)
    {
      v36 = v54 == v55;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      free(v54);
    }
  }

  return v12;
}

+ (float)entropyOfSaturationForBGRAPixelBuffer:(__CVBuffer *)buffer
{
  Size = HMICVPixelBufferGetSize(buffer);
  if (!(v5 * Size))
  {
    return 1.0;
  }

  v6 = Size;
  v7 = v5;
  std::vector<int>::vector[abi:ne200100](__p, 0x64uLL);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  if (v7 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    v9 = BaseAddress;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v6 > 0.0)
      {
        v12 = 1;
        v13 = v9;
        do
        {
          v14 = &v13[v10 * CVPixelBufferGetBytesPerRowOfPlane(buffer, 0)];
          v15 = v14[2];
          v16 = v14[1];
          v17 = *v14;
          if (v16 <= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          if (v16 < v17)
          {
            v17 = v16;
          }

          if (v15 <= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = v15;
          }

          if (v15 < v17)
          {
            v17 = v15;
          }

          v20 = (v19 - v17) / 255.0;
          if (v20 >= 0.0 && v20 < 1.0)
          {
            ++*(__p[0] + (v20 / 0.01));
            v11 = (v11 + 1);
          }

          v22 = v12;
          v13 += 4;
          ++v12;
        }

        while (v6 > v22);
      }

      ++v10;
    }

    while (v7 > v10);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  [HMITorsoQuality entropy:__p numPixels:v11];
  v23 = v24;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v23;
}

@end