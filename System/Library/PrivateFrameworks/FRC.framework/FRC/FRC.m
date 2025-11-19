uint64_t readData(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (2 * a3 * a4 == fread(__ptr, 1uLL, 2 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeData(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (2 * a3 * a4 == fwrite(__ptr, 1uLL, 2 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t readData32(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (4 * a3 * a4 == fread(__ptr, 1uLL, 4 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeData32(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (4 * a3 * a4 == fwrite(__ptr, 1uLL, 4 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t readBuffer(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226536)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v9 = BaseAddress;
    v10 = Width << v7;
    v11 = 1;
    while (fread(v9, 1uLL, v10, a1) == v10)
    {
      v9 += BytesPerRow;
      if (Height <= v11++)
      {
        goto LABEL_8;
      }
    }

    v13 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v13;
}

uint64_t writeBufferWithVerticalOffset(FILE *a1, CVPixelBufferRef pixelBuffer, unint64_t a3, uint64_t a4)
{
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1380411457)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a4 + a3 <= a3)
  {
    a4 = 0;
  }

  else
  {
    v12 = Width << v10;
    v13 = &BaseAddress[BytesPerRow * a3];
    while (fwrite(v13, 1uLL, v12, a1) == v12)
    {
      v13 += BytesPerRow;
      if (!--a4)
      {
        goto LABEL_13;
      }
    }

    a4 = 0xFFFFFFFFLL;
  }

LABEL_13:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return a4;
}

uint64_t writeBuffer(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Height = CVPixelBufferGetHeight(pixelBuffer);

  return writeBufferWithVerticalOffset(a1, pixelBuffer, 0, Height);
}

uint64_t writeBufferFlt32(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v8 = malloc_type_malloc(4 * Width, 0x100004052888210uLL);
  if (Height)
  {
    LODWORD(v9) = 0;
    while (1)
    {
      if (Width)
      {
        for (i = 0; i != Width; ++i)
        {
          _H0 = *&BaseAddress[2 * i];
          __asm { FCVT            S0, H0 }

          v8[i] = _S0;
        }
      }

      if (fwrite(v8, 1uLL, 4 * Width, a1) != 4 * Width)
      {
        break;
      }

      BaseAddress += BytesPerRow;
      v9 = (v9 + 1);
      if (Height <= v9)
      {
        goto LABEL_9;
      }
    }

    v17 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_9:
    free(v8);
    v17 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v17;
}

uint64_t readBufferInterleaved(FILE *a1, CVPixelBufferRef pixelBuffer, unsigned int a3)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v9 = 2 * a3 * Width * Height;
  v10 = malloc_type_malloc(v9, 0x77F5ED60uLL);
  if (fread(v10, 1uLL, v9, a1) > v9)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3 == 2)
  {
    interleave2(v10, BaseAddress, Width, Height, 2 * Width, BytesPerRow);
  }

  else
  {
    interleave4(v10, BaseAddress, Width, Height, BytesPerRow);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  free(v10);
  return 0;
}

uint64_t writeBufferInterlaeved(FILE *a1, CVPixelBufferRef pixelBuffer, unsigned int a3, unsigned int a4)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v9 = CVPixelBufferGetHeight(pixelBuffer) / a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v11 = (Width * a4 * v9) << (a4 != 3);
  v12 = malloc_type_malloc(v11, 0xE37B9C79uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3)
  {
    v14 = BaseAddress;
    while (1)
    {
      if (a4 == 2)
      {
        deinterleave2(v14, v12, Width, v9, BytesPerRow, 2 * Width);
      }

      else if (a4 == 3)
      {
        deinterleave3(v14, v12, Width, v9, BytesPerRow);
      }

      else
      {
        deinterleave4(v14, v12, Width, v9);
      }

      if (fwrite(v12, 1uLL, v11, a1) != v11)
      {
        return 0xFFFFFFFFLL;
      }

      v14 = (v14 + BytesPerRow * v9);
      if (!--a3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    free(v12);
    return 0;
  }
}

uint64_t loadTexture(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = 1;
    do
    {
      memset(v12, 0, 24);
      v12[3] = a3;
      v12[4] = a4;
      v12[5] = 1;
      result = [a2 replaceRegion:v12 mipmapLevel:0 slice:? withBytes:? bytesPerRow:? bytesPerImage:?];
      v11 = v9++;
    }

    while (v11 < a5);
  }

  return result;
}

void saveTextureBufferFlt32(FILE *a1, void *a2, uint64_t a3, unint64_t a4, float a5)
{
  v14 = a2;
  v9 = [v14 contents];
  v10 = 4 * a3;
  v11 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
  if (a4)
  {
    LODWORD(v12) = 0;
    while (1)
    {
      if (a3)
      {
        v13 = 0;
        do
        {
          v11[v13] = *(v9 + 4 * v13) * a5;
          ++v13;
        }

        while (a3 != v13);
      }

      if (fwrite(v11, 1uLL, 4 * a3, a1) != v10)
      {
        break;
      }

      v9 += v10;
      v12 = (v12 + 1);
      if (v12 >= a4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    free(v11);
  }
}

void saveTextureArray(uint64_t a1, void *a2)
{
  v16 = a1;
  v2 = a2;
  v3 = [v2 width];
  v4 = [v2 height];
  v5 = [v2 arrayLength];
  v6 = [v2 width];
  v7 = [v2 height] * v6;
  if ([v2 pixelFormat] == 55)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v7 << v8;
  v18 = malloc_type_malloc((v7 << v8) * v5, 0x100004077774924uLL);
  if (v5)
  {
    v10 = 0;
    v11 = 1;
    v12 = v18;
    do
    {
      memset(v19, 0, 24);
      v19[3] = v3;
      v19[4] = v4;
      v19[5] = 1;
      [v2 getBytes:v12 bytesPerRow:v3 << v8 bytesPerImage:(v4 * v3) << v8 fromRegion:v19 mipmapLevel:0 slice:{v10, v16}];
      v12 += v9;
      v10 = v11;
    }

    while (v5 > v11++);
  }

  v14 = [v2 pixelFormat];
  v15 = 1;
  if (v14 == 55)
  {
    v15 = 2;
  }

  fwrite(v18, 1uLL, ((v5 * v4) << v15) * v3, v17);
  free(v18);
}

void loadTextureArray(FILE *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 2 * a3 * a4 * a5;
  v10 = a2;
  v11 = malloc_type_malloc(v9, 0x1000040BDFB0063uLL);
  fread(v11, 1uLL, v9, a1);
  loadTexture(v11, v10, a3, a4, a5);

  free(v11);
}

void loadTextureInterleaved(FILE *a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = a2;
  v10 = 2 * a4 * a3;
  v11 = malloc_type_malloc(((a5 + 3) & 0x7FFFFFFFFFFFFFFCLL) * v10, 0x1000040BDFB0063uLL);
  v12 = malloc_type_malloc(((a5 + 3) & 0x7FFFFFFFFFFFFFFCLL) * v10, 0x100004000313F17uLL);
  fread(v11, 1uLL, v10 * a5, a1);
  v17 = v12;
  interleave4(v11, v12, a3, a4, a5);
  if (a5 >= 4)
  {
    v13 = 0;
    v14 = v12;
    v15 = 1;
    do
    {
      memset(v18, 0, 24);
      v18[3] = a3;
      v18[4] = a4;
      v18[5] = 1;
      [v9 replaceRegion:v18 mipmapLevel:0 slice:v13 withBytes:v14 bytesPerRow:8 * a3 bytesPerImage:8 * a4 * a3];
      v13 = v15;
      v16 = a5 >> 2 > v15++;
      v14 += a4 * a3;
    }

    while (v16);
  }

  free(v11);
  free(v17);
}

void saveTextureInterleaved(FILE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = 8 * a4 * a3;
  v16 = malloc_type_malloc((((a5 + 3) & 0x1FFFFFFFFFFFFFFCuLL) * v9) >> 2, 0x100004000313F17uLL);
  v14 = malloc_type_malloc(2 * a4 * a3 * a5, 0x1000040BDFB0063uLL);
  if ((a5 + 3) >= 4)
  {
    v10 = 0;
    v11 = v16;
    v12 = 1;
    do
    {
      memset(v17, 0, 24);
      v17[3] = a3;
      v17[4] = a4;
      v17[5] = 1;
      [v8 getBytes:v11 bytesPerRow:8 * a3 bytesPerImage:8 * a4 * a3 fromRegion:v17 mipmapLevel:0 slice:v10];
      v10 = v12;
      v13 = (a5 + 3) >> 2 > v12++;
      v11 = (v11 + v9);
    }

    while (v13);
  }

  deinterleave4(v16, v14, a3, a4);
  fwrite(v14, 1uLL, 2 * a3 * a4 * a5, a1);
}

uint64_t compareBuffers(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, float a7)
{
  v7 = a4 * a3;
  if (a5)
  {
    v12 = 0;
    v13 = 0;
    v35 = v7;
    v14 = 0.0;
    v34 = a4 * a3;
    do
    {
      if (a4)
      {
        v37 = v14;
        v15 = 0;
        v16 = 0;
        v38 = v12 * v7;
        v17 = 0.0;
        v18 = 3.4028e38;
        v19 = 0.0;
        v20 = 0.0;
        v21 = 3.4028e38;
        do
        {
          if (a3)
          {
            v22 = 0;
            v23 = 0;
            v24 = v38 + v15 * a3;
            do
            {
              v25 = v24 + v22;
              if (a2)
              {
                v26 = *(a2 + 4 * v25);
              }

              else
              {
                v26 = 0.0;
              }

              v27 = *(a1 + 4 * v25);
              v28 = vabds_f32(v26, v27);
              if (a6)
              {
                if (v28 <= a7)
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\n");
                }

                else
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\t****\n");
                }
              }

              v17 = fmaxf(v17, v28);
              v21 = fminf(v21, v28);
              v20 = fmaxf(v20, v27);
              v18 = fminf(v18, v27);
              v19 = v19 + ((v26 - v27) * (v26 - v27));
              v22 = ++v23;
            }

            while (v23 < a3);
          }

          v15 = ++v16;
        }

        while (v16 < a4);
        v29 = v18;
        v30 = v20;
        v31 = v17;
        v32 = v21;
        v7 = v34;
        v14 = v37;
      }

      else
      {
        v30 = 0.0;
        v29 = 3.40282347e38;
        v32 = 3.40282347e38;
        v19 = 0.0;
        v31 = 0.0;
      }

      v14 = v14 + v19;
      printf("[%3d]\t", v13);
      printf("Dynamic Range [%f, %f]", v29, v30);
      printf("\tMax Diff = %.6f, Min Diff = %.6f, MSE = %.6f\n", v31, v32, (v19 / v35));
      v12 = ++v13;
    }

    while (v13 < a5);
  }

  else
  {
    v14 = 0.0;
  }

  return printf("[Total] MSE = %6.6f\n", (v14 / (v7 * a5)));
}

float compareBuffersFP16(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, float a8)
{
  v8 = a4;
  if (a5)
  {
    v13 = 0;
    v14 = 0;
    v15 = a8;
    v46 = a4 * a3;
    v47 = (a4 * a3);
    v16 = 0.0;
    do
    {
      if (v8)
      {
        v49 = v16;
        v17 = 0;
        v18 = 0;
        v51 = v13 * v8;
        v19 = 0.0;
        v20 = 3.4028e38;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 3.4028e38;
        do
        {
          if (a3)
          {
            v24 = 0;
            v25 = 0;
            v26 = (v17 + v51) * a6;
            do
            {
              v27 = v24 + v26;
              if (a2)
              {
                _H0 = *(a2 + 2 * v27);
                __asm { FCVT            S0, H0 }
              }

              else
              {
                _S0 = 0.0;
              }

              _H1 = *(a1 + 2 * v27);
              __asm { FCVT            S10, H1 }

              v36 = _S10 - _S0;
              if (a7)
              {
                __asm { FCVT            D1, H1 }

                if (fabs(v36) <= v15)
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\n");
                }

                else
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\t****\n");
                }
              }

              v38 = fabsf(v36);
              v19 = fmaxf(v19, v38);
              v23 = fminf(v23, v38);
              v22 = fmaxf(v22, _S10);
              v20 = fminf(v20, _S10);
              v21 = v21 + (v36 * v36);
              v24 = ++v25;
            }

            while (v25 < a3);
          }

          v17 = ++v18;
          v8 = a4;
        }

        while (v18 < a4);
        v39 = v20;
        v40 = v22;
        v41 = v19;
        v42 = v23;
        v16 = v49;
      }

      else
      {
        v40 = 0.0;
        v39 = 3.40282347e38;
        v42 = 3.40282347e38;
        v21 = 0.0;
        v41 = 0.0;
      }

      v16 = v16 + v21;
      printf("[%3d]\t", v14);
      printf("Dynamic Range [%6.3f, %6.3f]", v39, v40);
      printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v41, v42, (v21 / v47));
      v13 = ++v14;
    }

    while (v14 < a5);
    v43 = v46;
  }

  else
  {
    v43 = a4 * a3;
    v16 = 0.0;
  }

  v44 = v16 / (v43 * a5);
  printf("[Total] MSE = %6.6f\n", v44);
  return v44;
}

float compareYUV420PixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v5 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v13 = 0.0;
  v14 = 0.0;
  v15 = 3.40282347e38;
  v16 = 3.40282347e38;
  v17 = 0.0;
  v18 = 3.40282347e38;
  v19 = 0.0;
  v20 = 0.0;
  if (HeightOfPlane)
  {
    LODWORD(v21) = 0;
    v22 = 3.4028e38;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 3.4028e38;
    do
    {
      if (WidthOfPlane)
      {
        v26 = 0;
        do
        {
          LOBYTE(v11) = BaseAddressOfPlane[v26];
          v11 = *&v11 / 255.0;
          *&v11 = v11;
          LOBYTE(v12) = v6[v26];
          v12 = *&v12 / 255.0;
          *&v12 = v12;
          v27 = *&v11 - *&v12;
          *&v12 = vabds_f32(*&v11, *&v12);
          v23 = fmaxf(v23, *&v12);
          v22 = fminf(v22, *&v12);
          v24 = fmaxf(v24, *&v11);
          v25 = fminf(v25, *&v11);
          v20 = v20 + (v27 * v27);
          ++v26;
        }

        while (WidthOfPlane > v26);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      v6 += BytesPerRowOfPlane;
      v21 = (v21 + 1);
    }

    while (HeightOfPlane > v21);
    v16 = v25;
    v17 = v24;
    v19 = v23;
    v18 = v22;
  }

  v28 = v20 / (HeightOfPlane * WidthOfPlane);
  printf("[Y]\tDynamic Range [%6.3f, %6.3f]", v16, v17);
  v62 = v28;
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v19, v18, v28);
  v29 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v30 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v31 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 3.40282347e38;
  v37 = 0.0;
  v38 = 3.40282347e38;
  v39 = 0.0;
  v40 = 3.40282347e38;
  if (v30)
  {
    LODWORD(v41) = 0;
    v42 = 0.0;
    v43 = 3.4028e38;
    v44 = 3.4028e38;
    v45 = 0.0;
    v46 = 3.4028e38;
    v47 = 0.0;
    v48 = 3.4028e38;
    v49 = 0.0;
    v13 = 0.0;
    do
    {
      if (v29)
      {
        v50 = 1;
        v51 = 1;
        do
        {
          LOBYTE(v34) = v5[v50 - 1];
          LOBYTE(v32) = v7[v50 - 1];
          v34 = *&v34 / 255.0;
          *&v52 = *&v32;
          v53 = *&v52 / 255.0;
          LOBYTE(v52) = v5[v50];
          *&v34 = v34;
          v32 = v52 / 255.0;
          *&v32 = v32;
          LOBYTE(v33) = v7[v50];
          v54 = v53;
          v33 = *&v33 / 255.0;
          *&v33 = v33;
          v55 = vabds_f32(*&v34, v54);
          v56 = vabds_f32(*&v32, *&v33);
          v45 = fmax(v45, v56);
          v44 = fmin(v44, v56);
          v47 = fmax(v47, *&v34);
          v49 = fmax(v49, v55);
          v42 = fmax(v42, *&v32);
          v46 = fmin(v46, *&v34);
          v48 = fmin(v48, v55);
          v43 = fmin(v43, *&v32);
          v57 = v29 > v51++;
          v50 += 2;
        }

        while (v57);
        *&v32 = *&v32 - *&v33;
        v13 = (*&v34 - v54) * (*&v34 - v54);
        *&v34 = *&v32 * *&v32;
      }

      v5 += v31;
      v7 += v31;
      v41 = (v41 + 1);
    }

    while (v30 > v41);
    v36 = v46;
    v35 = v47;
    v14 = v49;
    v15 = v48;
    v40 = v43;
    v39 = v42;
    v37 = v45;
    v38 = v44;
  }

  v58 = (v30 * v29);
  v59 = v13 / v58;
  v60 = *&v34 / v58;
  printf("[U]\tDynamic Range [%6.3f, %6.3f]", v36, v35);
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v14, v15, v59);
  printf("[V]\tDynamic Range [%6.3f, %6.3f]", v40, v39);
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v37, v38, v60);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return (v62 + v59) + v60;
}

float compareCVPixelBuffers(__CVBuffer *a1, __CVBuffer *a2, unint64_t a3, int a4, float a5)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (CVPixelBufferGetPixelFormatType(a1) == 1380411457)
  {
    Width *= 4;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v14 = CVPixelBufferGetBaseAddress(a2);
  v15 = compareBuffersFP16(BaseAddress, v14, Width, Height / a3, a3, BytesPerRow >> 1, a4, a5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v15;
}

float compareBGRAPixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 2139095039;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 2139095039;
  if (Height)
  {
    LODWORD(v11) = 0;
    v12 = 4 * (BytesPerRow >> 2);
    do
    {
      if (Width)
      {
        v13 = 0;
        v14 = v8;
        v15 = BaseAddress;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            LOBYTE(v9) = v15[i];
            v9 = *&v9 / 255.0;
            LOBYTE(v10) = v14[i];
            *&v9 = v9;
            v10 = *&v10 / 255.0;
            *&v10 = v10;
            *(&v30 + i) = *(&v30 + i) + ((*&v9 - *&v10) * (*&v9 - *&v10));
            *&v10 = vabds_f32(*&v9, *&v10);
            *(&v26 + i) = fminf(*&v10, *(&v26 + i));
            *(&v28 + i) = fmaxf(*&v10, *(&v28 + i));
            *(&v22 + i) = fminf(*&v9, *(&v22 + i));
            LODWORD(v10) = *(&v24 + i);
            *&v9 = fmaxf(*&v9, *&v10);
            *(&v24 + i) = LODWORD(v9);
          }

          ++v13;
          v15 += 4;
          v14 += 4;
        }

        while (Width > v13);
      }

      v11 = (v11 + 1);
      BaseAddress += v12;
      v8 += v12;
    }

    while (Height > v11);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  for (j = 0; j != 3; ++j)
  {
    v18 = *(&v30 + j) / (Height * Width);
    v21[j] = v18;
    printf("[%d]\tDynamic Range [%6.3f, %6.3f]", j, *(&v22 + j), *(&v24 + j));
    printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", *(&v28 + j), *(&v26 + j), v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return ((v21[0] + v21[1]) + v21[2]) / 3.0;
}

uint64_t checkMemoryLeaks()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = getpid();
  snprintf(__str, 0x1F3uLL, "/usr/bin/leaks %d", v0);
  result = system(__str);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void checkMemoryFootPrint()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = NSUserName();
  if ([v0 isEqualToString:@"root"])
  {
    v1 = getpid();
    snprintf(__str, 0x1F3uLL, "/usr/local/bin/jetsam_priority -p %d", v1);
    system(__str);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t readYUVPlanar(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v7 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v21 = malloc_type_malloc((Height * Width) >> 1, 0x100004077774924uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  if (Height)
  {
    v10 = 1;
    while (1)
    {
      v11 = 1;
      if (fread(BaseAddressOfPlane, 1uLL, Width, a1) != Width)
      {
        break;
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      if (Height <= v10++)
      {
        goto LABEL_5;
      }
    }

    v13 = v21;
  }

  else
  {
LABEL_5:
    v11 = 1;
    v13 = v21;
    if (fread(v21, 1uLL, (Height * Width) >> 1, a1) == (Height * Width) >> 1)
    {
      if (Height >= 2)
      {
        LODWORD(v14) = 0;
        v15 = Width >> 1;
        v16 = v21;
        v17 = &v21[(Height * Width) >> 2];
        do
        {
          if (Width >= 2)
          {
            v18 = 0;
            v19 = 1;
            do
            {
              v9[v19 - 1] = v16[v18];
              v9[v19] = v17[v18++];
              v19 += 2;
            }

            while (v15 > v18);
          }

          v16 += v15;
          v17 += v15;
          v9 += v7;
          v14 = (v14 + 1);
        }

        while (Height >> 1 > v14);
      }

      v11 = 0;
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  free(v13);
  return v11;
}

uint64_t writeYUVPlanar(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  __nitems = (Height * Width) >> 1;
  v6 = malloc_type_malloc(__nitems, 0x100004077774924uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v8 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v10 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  if (Height)
  {
    v11 = v10;
    v23 = v6;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = 1;
      if (fwrite(&BaseAddressOfPlane[v12 * BytesPerRowOfPlane], 1uLL, Width, a1) != Width)
      {
        v6 = v23;
        goto LABEL_14;
      }

      v12 = v13;
    }

    while (Height > v13++);
    v6 = v23;
    if (Height != 1)
    {
      LODWORD(v16) = 0;
      v17 = Width >> 1;
      v18 = v23;
      v19 = v23 + ((Height * Width) >> 2);
      do
      {
        if (Width >= 2)
        {
          v20 = 0;
          v21 = 1;
          do
          {
            v18[v20] = v11[v21 - 1];
            *(v19 + v20++) = v11[v21];
            v21 += 2;
          }

          while (v17 > v20);
        }

        v18 += v17;
        v19 += v17;
        v11 += v8;
        v16 = (v16 + 1);
      }

      while (Height >> 1 > v16);
    }
  }

  v14 = 1;
  if (fwrite(v6, 1uLL, __nitems, a1) == __nitems)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    v14 = 0;
  }

LABEL_14:
  free(v6);
  return v14;
}

uint64_t write64RGBAHalf(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 8 * Width;
    v10 = 1;
    do
    {
      fwrite(v8, 1uLL, v9, a1);
      v8 += BytesPerRow;
    }

    while (Height > v10++);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

uint64_t writeBGRA(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 4 * Width;
    v10 = 1;
    do
    {
      fwrite(v8, 1uLL, v9, a1);
      v8 += BytesPerRow;
    }

    while (Height > v10++);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

uint64_t readBGRA(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 4 * Width;
    v10 = 1;
    while (1)
    {
      v11 = 1;
      if (fread(v8, 1uLL, v9, a1) != v9)
      {
        break;
      }

      v8 += BytesPerRow;
      if (Height <= v10++)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    return 0;
  }

  return v11;
}

uint64_t saveTensorBufferWithChannelOffset(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v18 = *MEMORY[0x277D85DE8];
  __sprintf_chk(__filename, 0, 0x100uLL, "%s/%s%ldx%ldx%ld.yuv", a7, a6, a2, a3, a4);
  printf("\tfile name = %s\n", __filename);
  if (CVPixelBufferGetWidth(a1) != a2)
  {
    saveTensorBufferWithChannelOffset_cold_1();
  }

  v12 = a4 * a3;
  if (CVPixelBufferGetHeight(a1) < v12)
  {
    saveTensorBufferWithChannelOffset_cold_3();
  }

  v13 = fopen(__filename, "wb");
  if (!v13)
  {
    saveTensorBufferWithChannelOffset_cold_2(__filename);
  }

  v14 = v13;
  writeBufferWithVerticalOffset(v13, a1, a5 * a3, v12);
  result = fclose(v14);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t readYUV10bit(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v21 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  if (HeightOfPlane)
  {
    v9 = 1;
    while (1)
    {
      v10 = 1;
      if (fread(BaseAddressOfPlane, 1uLL, 2 * WidthOfPlane, a1) != 2 * WidthOfPlane)
      {
        break;
      }

      BaseAddressOfPlane += 2 * (BytesPerRowOfPlane >> 1);
      v11 = HeightOfPlane > v9++;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = malloc_type_malloc((HeightOfPlane * WidthOfPlane) & 0xFFFFFFFFFFFFFFFELL, 0x1000040BDFB0063uLL);
    if (fread(v12, 1uLL, (HeightOfPlane * WidthOfPlane) & 0xFFFFFFFFFFFFFFFELL, a1) == ((HeightOfPlane * WidthOfPlane) & 0xFFFFFFFFFFFFFFFELL))
    {
      if (HeightOfPlane >= 2)
      {
        LODWORD(v13) = 0;
        v14 = 0;
        v15 = (HeightOfPlane * WidthOfPlane) >> 2;
        do
        {
          if (WidthOfPlane >= 2)
          {
            v17 = v14;
            v18 = 1;
            v19 = 1;
            do
            {
              *&v8[2 * v18 - 2] = v12[v17];
              v16 = v15 + 1;
              *&v8[2 * v18] = v12[v15];
              ++v17;
              ++v14;
              v11 = WidthOfPlane >> 1 > v19++;
              v18 += 2;
              ++v15;
            }

            while (v11);
          }

          else
          {
            v16 = v15;
          }

          v8 += 2 * (v21 >> 1);
          v13 = (v13 + 1);
          v15 = v16;
        }

        while (HeightOfPlane >> 1 > v13);
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      free(v12);
      return 0;
    }

    else
    {
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      return 1;
    }
  }

  return v10;
}

uint64_t writeYUV10bit(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  v2 = pixelBuffer;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v2, 0);
  v7 = CVPixelBufferGetBytesPerRowOfPlane(v2, 1uLL);
  v8 = (HeightOfPlane * WidthOfPlane) & 0xFFFFFFFFFFFFFFFELL;
  v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  CVPixelBufferLockBaseAddress(v2, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v2, 0);
  v11 = CVPixelBufferGetBaseAddressOfPlane(v2, 1uLL);
  if (HeightOfPlane)
  {
    v12 = v11;
    v25 = v2;
    v13 = v7 >> 1;
    v14 = 1;
    do
    {
      fwrite(BaseAddressOfPlane, 1uLL, 2 * WidthOfPlane, a1);
      v15 = HeightOfPlane > v14;
      BaseAddressOfPlane += 2 * (BytesPerRowOfPlane >> 1);
      ++v14;
    }

    while (v15);
    v8 = (HeightOfPlane * WidthOfPlane) & 0xFFFFFFFFFFFFFFFELL;
    v2 = v25;
    if (HeightOfPlane != 1)
    {
      LODWORD(v16) = 0;
      v17 = 0;
      v18 = (HeightOfPlane * WidthOfPlane) >> 2;
      do
      {
        if (WidthOfPlane >= 2)
        {
          v20 = v17;
          v21 = 1;
          v22 = 1;
          do
          {
            v9[v20] = *&v12[2 * v21 - 2];
            v19 = v18 + 1;
            v9[v18] = *&v12[2 * v21];
            ++v20;
            ++v17;
            v15 = WidthOfPlane >> 1 > v22++;
            v21 += 2;
            ++v18;
          }

          while (v15);
        }

        else
        {
          v19 = v18;
        }

        v12 += 2 * v13;
        v16 = (v16 + 1);
        v18 = v19;
      }

      while (HeightOfPlane >> 1 > v16);
    }
  }

  v23 = 1;
  if (fwrite(v9, 1uLL, v8, a1) == v8)
  {
    CVPixelBufferUnlockBaseAddress(v2, 0);
    free(v9);
    return 0;
  }

  return v23;
}

CVPixelBufferRef readPNG(uint64_t a1)
{
  v60[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = MEMORY[0x277CBEBC0];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    v4 = [v2 fileURLWithPath:v3];

    v5 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v4];
    v6 = v5;
    if (!v5)
    {
      NSLog(&cfstr_ReadpngErrorIn.isa);
      PixelBuffer = 0;
LABEL_21:

      goto LABEL_22;
    }

    v46 = v4;
    v7 = [v5 properties];
    v8 = [v6 colorSpace];
    v9 = [v7 objectForKeyedSubscript:@"PixelWidth"];
    v10 = [v9 integerValue];

    v11 = [v7 objectForKeyedSubscript:@"PixelHeight"];
    v12 = [v11 integerValue];

    v45 = v7;
    v13 = [v7 objectForKeyedSubscript:@"Depth"];
    v14 = [v13 integerValue];

    v15 = v14 == 8;
    v16 = v8;
    if (v15)
    {
      v17 = 1111970369;
    }

    else
    {
      v17 = 1380411457;
    }

    PixelBuffer = createPixelBuffer(v10, v12, v17, 0);
    v19 = *MEMORY[0x277CC4C00];
    v20 = *MEMORY[0x277CC4C20];
    v21 = *MEMORY[0x277CC4CC0];
    v59[0] = *MEMORY[0x277CC4C00];
    v59[1] = v21;
    v22 = *MEMORY[0x277CC4CD8];
    v43 = v20;
    v60[0] = v20;
    v60[1] = v22;
    v41 = v22;
    v23 = *MEMORY[0x277CC4D10];
    v59[2] = *MEMORY[0x277CC4D10];
    v24 = *MEMORY[0x277CC4D28];
    v60[2] = *MEMORY[0x277CC4D28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v25);
    cf = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    v49 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
    v48 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF470]);
    v47 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF488]);
    Name = CGColorSpaceGetName(v16);
    if (Name && CFEqual(Name, *MEMORY[0x277CBF4B8]))
    {
      v57[0] = v19;
      v57[1] = v21;
      v27 = *MEMORY[0x277CC4D08];
      v58[0] = v43;
      v58[1] = v27;
      v57[2] = v23;
      v58[2] = v24;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
    }

    else
    {
      v42 = v25;
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      v30 = [v29 pathExtension];
      if ([v30 isEqual:@"png"])
      {
        v31 = v16;
        v32 = CGColorSpaceEqualToColorSpace();

        if ((v32 & 1) == 0)
        {
          v16 = v31;
          v33 = ColorSpaceFromAttachments;
          if ((CGColorSpaceEqualToColorSpace() & 1) != 0 || CGColorSpaceEqualToColorSpace())
          {
            v34 = *MEMORY[0x277CC4C18];
            v53[0] = v19;
            v53[1] = v21;
            v35 = *MEMORY[0x277CC4CD0];
            v54[0] = v34;
            v54[1] = v35;
            v53[2] = v23;
            v54[2] = *MEMORY[0x277CC4D18];
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
            v25 = v42;
          }

          else
          {
            v25 = v42;
            if ((CGColorSpaceEqualToColorSpace() & 1) == 0 && !CGColorSpaceEqualToColorSpace())
            {
              goto LABEL_20;
            }

            v51[0] = v19;
            v51[1] = v21;
            v52[0] = v43;
            v52[1] = v41;
            v51[2] = v23;
            v52[2] = v24;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
            v16 = ColorSpaceFromAttachments;
          }

LABEL_19:
          CMSetAttachments(PixelBuffer, v28, 1u);

LABEL_20:
          v38 = [MEMORY[0x277CBF740] context];
          [v6 extent];
          [v38 render:v6 toCVPixelBuffer:PixelBuffer bounds:v16 colorSpace:?];
          CFRelease(cf);
          CFRelease(v49);
          CFRelease(v48);
          CFRelease(v47);
          CFRelease(v33);

          v4 = v46;
          goto LABEL_21;
        }
      }

      else
      {
        v31 = v16;
      }

      v36 = *MEMORY[0x277CC4C30];
      v55[0] = v19;
      v55[1] = v21;
      v37 = *MEMORY[0x277CC4D08];
      v56[0] = v36;
      v56[1] = v37;
      v55[2] = v23;
      v56[2] = *MEMORY[0x277CC4D20];
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
      v16 = v31;
      v25 = v42;
    }

    v33 = ColorSpaceFromAttachments;
    goto LABEL_19;
  }

  NSLog(&cfstr_ReadpngErrorFi.isa);
  PixelBuffer = 0;
LABEL_22:
  v39 = *MEMORY[0x277D85DE8];
  return PixelBuffer;
}

void writePNG(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v21 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v5 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v6 = [v5 intValue];

  v7 = CMGetAttachment(pixelBuffer, *MEMORY[0x277CC4CC0], 0);
  v8 = CMGetAttachment(pixelBuffer, *MEMORY[0x277CC4C00], 0);
  v9 = MEMORY[0x277CBF488];
  if (!v7)
  {
    goto LABEL_5;
  }

  if (CFStringCompare(v8, *MEMORY[0x277CC0260], 0) == kCFCompareEqualTo)
  {
    v11 = MEMORY[0x277CBF3E0];
LABEL_8:
    v12 = *v11;
LABEL_9:
    DeviceRGB = CGColorSpaceCreateWithName(v12);
    goto LABEL_10;
  }

  if (CFStringCompare(v7, *MEMORY[0x277CC04D0], 0) == kCFCompareEqualTo)
  {
    v11 = MEMORY[0x277CBF478];
    goto LABEL_8;
  }

  if (CFStringCompare(v7, *MEMORY[0x277CC4CD8], 0) == kCFCompareEqualTo)
  {
    v12 = *v9;
    goto LABEL_9;
  }

LABEL_5:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
LABEL_10:
  v13 = DeviceRGB;
  v14 = CGColorSpaceCreateWithName(*v9);
  v15 = MEMORY[0x277CBF9C8];
  if (v6 != 8 && !CGColorSpaceEqualToColorSpace())
  {
    v15 = MEMORY[0x277CBF9C0];
  }

  v16 = *v15;
  v17 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:pixelBuffer options:0];
  v18 = [MEMORY[0x277CBF740] context];
  v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v20 = [v18 PNGRepresentationOfImage:v17 format:v16 colorSpace:v13 options:v19];
  CFRelease(v13);
  CFRelease(v14);
  fwrite([v20 bytes], 1uLL, objc_msgSend(v20, "length"), a1);
}

void writeGrayscaldTiff(FILE *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v5 = *MEMORY[0x277CBF988];
  v12 = *MEMORY[0x277CBFA40];
  v13[0] = DeviceGray;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a2 options:v6];
  v8 = [MEMORY[0x277CBF740] context];
  v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v10 = [v8 TIFFRepresentationOfImage:v7 format:v5 colorSpace:DeviceGray options:v9];
  CFRelease(DeviceGray);
  fwrite([v10 bytes], 1uLL, objc_msgSend(v10, "length"), a1);

  v11 = *MEMORY[0x277D85DE8];
}

__CVBuffer *create420vBufferFromFile(void *a1, size_t a2, size_t a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a1;
    PixelBuffer = createPixelBuffer(a2, a3, 0x34323066u, 0);
    v7 = [v5 UTF8String];

    v8 = fopen(v7, "rb");
    readYUVPlanar(v8, PixelBuffer);
    fclose(v8);
    v9 = *MEMORY[0x277CC4C20];
    v10 = *MEMORY[0x277CC4CC0];
    v15[0] = *MEMORY[0x277CC4C00];
    v15[1] = v10;
    v11 = *MEMORY[0x277CC4CD8];
    v16[0] = v9;
    v16[1] = v11;
    v15[2] = *MEMORY[0x277CC4D10];
    v16[2] = *MEMORY[0x277CC4D28];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    CMSetAttachments(PixelBuffer, v12, 1u);
  }

  else
  {
    PixelBuffer = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return PixelBuffer;
}

__CVBuffer *createOpticalFlowTwoComponentFromFile(void *a1, size_t a2, size_t a3)
{
  v5 = a1;
  PixelBuffer = createPixelBuffer(a2, a3, 0x32433068u, 0);
  v7 = [v5 UTF8String];

  v8 = fopen(v7, "rb");
  readBufferInterleaved(v8, PixelBuffer, 2u);
  fclose(v8);
  return PixelBuffer;
}

__CVBuffer *createOpticalFlowFromFile(void *a1, size_t a2, uint64_t a3)
{
  v4 = 2 * a3;
  v5 = a1;
  PixelBuffer = createPixelBuffer(a2, v4, 0x4C303068u, 0);
  v7 = [v5 UTF8String];

  v8 = fopen(v7, "rb");
  if (readBuffer(v8, PixelBuffer))
  {
    return 0;
  }

  fclose(v8);
  return PixelBuffer;
}

__CVBuffer *readFlo(const char *a1)
{
  v1 = fopen(a1, "rb");
  __ptr = 0.0;
  fread(&__ptr, 4uLL, 1uLL, v1);
  if (__ptr != 202020.0)
  {
    printf("Invalid .flo file");
  }

  v26 = 0;
  v27 = 0;
  fread(&v27, 4uLL, 1uLL, v1);
  fread(&v26, 4uLL, 1uLL, v1);
  v3 = v26;
  v2 = v27;
  v4 = 2 * v26;
  pixelBuffer = createPixelBuffer(v27, 2 * v26, 0x4C303068u, 0);
  v5 = CVPixelBufferGetBytesPerRow(pixelBuffer) >> 1;
  v6 = v4 * v5;
  __src = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
  __n = v6;
  v24 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
  if (v3)
  {
    v7 = 0;
    v8 = 2 * v5;
    v10 = v24;
    v9 = __src;
    do
    {
      v11 = v2;
      v12 = v9;
      for (i = v10; v11; --v11)
      {
        fread(&__ptr, 4uLL, 1uLL, v1);
        _S0 = __ptr;
        __asm { FCVT            H0, S0 }

        *v12++ = LOWORD(_S0);
        fread(&__ptr, 4uLL, 1uLL, v1);
        _S0 = __ptr;
        __asm { FCVT            H0, S0 }

        *i++ = LOWORD(_S0);
      }

      ++v7;
      v10 = (v10 + v8);
      v9 = (v9 + v8);
    }

    while (v7 != v3);
  }

  fclose(v1);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  memcpy(BaseAddress, __src, __n);
  memcpy(&BaseAddress[__n], v24, __n);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  free(__src);
  free(v24);
  return pixelBuffer;
}

uint64_t writeFlo(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v23 = CVPixelBufferGetHeight(pixelBuffer) >> 1;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  __ptr = 1212500304;
  fwrite(&__ptr, 1uLL, 4uLL, a1);
  fwrite(&Width, 4uLL, 1uLL, a1);
  fwrite(&v23, 4uLL, 1uLL, a1);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v6 = v23;
  v7 = malloc_type_malloc(8 * Width, 0x100004052888210uLL);
  if (v23)
  {
    v8 = 0;
    v9 = &BaseAddress[v6 * BytesPerRow];
    do
    {
      v10 = Width;
      if (Width)
      {
        v11 = 0;
        v12 = v7 + 1;
        do
        {
          _H0 = *&BaseAddress[2 * v11];
          __asm { FCVT            S0, H0 }

          _H1 = *&v9[2 * v11];
          __asm { FCVT            S1, H1 }

          *(v12 - 1) = _S0;
          *v12 = _S1;
          ++v11;
          v12 += 2;
        }

        while (v10 != v11);
      }

      fwrite(v7, 1uLL, 8 * v10, a1);
      BaseAddress += BytesPerRow;
      v9 += BytesPerRow;
      ++v8;
    }

    while (v23 > v8);
  }

  free(v7);
  return CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
}

__CVBuffer *createTensorBufferFlowFromFile(void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 * a3;
  v6 = a1;
  PixelBuffer = createPixelBuffer(a2, v5, 0x4C303068u, 0);
  v8 = [v6 UTF8String];

  v9 = fopen(v8, "rb");
  if (readBuffer(v9, PixelBuffer))
  {
    return 0;
  }

  fclose(v9);
  return PixelBuffer;
}

uint64_t convertTwoComponet16HalfToOneComponent16Half(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 843264104)
  {
    convertTwoComponet16HalfToOneComponent16Half_cold_1();
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1278226536)
  {
    convertTwoComponet16HalfToOneComponent16Half_cold_2();
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  deinterleave2(BaseAddress, v8, Width, Height, BytesPerRow, v9);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}

uint64_t convertOneComponet16HalfToTwoComponent16Half(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226536)
  {
    convertOneComponet16HalfToTwoComponent16Half_cold_1();
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 843264104)
  {
    convertOneComponet16HalfToTwoComponent16Half_cold_2();
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  interleave2(BaseAddress, v8, Width, Height, BytesPerRow, v9);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}

void getPortShape(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = 0;
  is_tensor = e5rt_io_port_is_tensor();
  if (is_tensor)
  {
    v9 = is_tensor;
    last_error_message = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_io_port_is_tensor(port, &is_tensor)", v9, last_error_message);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A8C8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[OpticalFlowE5] Port is a surface type", buf, 2u);
  }

  *buf = 0;
  v6 = e5rt_io_port_retain_surface_desc();
  if (v6)
  {
    v11 = v6;
    v12 = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_io_port_retain_surface_desc(port, &surface_desc)", v11, v12);
    goto LABEL_15;
  }

  width = e5rt_surface_desc_get_width();
  if (width)
  {
    v13 = width;
    v14 = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_surface_desc_get_width(surface_desc, width)", v13, v14);
    goto LABEL_15;
  }

  height = e5rt_surface_desc_get_height();
  if (height)
  {
    v15 = height;
    v16 = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_surface_desc_get_height(surface_desc, height)", v15, v16);
LABEL_15:
    exit(1);
  }

  *a4 = 1;
  LODWORD(v18) = 0;
  if (e5rt_surface_desc_get_format())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_24A8C8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[OpticalFlowE5] failed to get surface format", v17, 2u);
    }
  }
}

uint64_t __createLogger_block_invoke()
{
  createLogger_logger = os_log_create("com.apple.FRC", "OpticalFlowE5");

  return MEMORY[0x2821F96F8]();
}

unsigned __int16 *interleave4(unsigned __int16 *result, unint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    LODWORD(v5) = 0;
    do
    {
      if (a3)
      {
        v6 = 1;
        v7 = result;
        v8 = a2;
        do
        {
          *v8++ = *v7 | (v7[a4 * a3] << 16) | (v7[2 * a4 * a3] << 32) | (v7[3 * a4 * a3] << 48);
          v9 = v6;
          ++v7;
          ++v6;
        }

        while (v9 < a3);
      }

      a2 = (a2 + a5);
      v5 = (v5 + 1);
      result += a3;
    }

    while (v5 < a4);
  }

  return result;
}

uint64_t *deinterleave4(uint64_t *result, _WORD *a2, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    LODWORD(v4) = 0;
    do
    {
      if (a3)
      {
        v5 = 1;
        v6 = result;
        v7 = a2;
        do
        {
          v8 = *v6++;
          *v7 = v8;
          v7[a4 * a3] = WORD1(v8);
          v7[2 * a4 * a3] = WORD2(v8);
          v7[3 * a4 * a3] = HIWORD(v8);
          v9 = v5;
          ++v7;
          ++v5;
        }

        while (v9 < a3);
      }

      v4 = (v4 + 1);
      a2 += a3;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t deinterleave3(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    LODWORD(v5) = 0;
    do
    {
      if (a3)
      {
        v6 = 0;
        do
        {
          v7 = *(result + 4 * v6);
          *(a2 + v6) = v7;
          *(a2 + a4 * a3 + v6) = BYTE1(v7);
          *(a2 + 2 * a4 * a3 + v6++) = BYTE2(v7);
        }

        while (a3 > v6);
      }

      result += a5;
      a2 += a3;
      v5 = (v5 + 1);
    }

    while (v5 < a4);
  }

  return result;
}

uint64_t interleave2(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = result + 2 * a4 * (a5 >> 1);
    v8 = 2 * (a5 >> 1);
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          *(a2 + 4 * v9) = *(result + 2 * v9) | (*(v7 + 2 * v9) << 16);
          ++v9;
        }

        while (a3 > v9);
      }

      v6 = (v6 + 1);
      a2 += 4 * (a6 >> 2);
      v7 += v8;
      result += v8;
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t deinterleave2(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = a2 + 2 * a4 * (a6 >> 1);
    v8 = 2 * (a6 >> 1);
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          v10 = *(result + 4 * v9);
          *(a2 + 2 * v9) = v10;
          *(v7 + 2 * v9++) = HIWORD(v10);
        }

        while (a3 > v9);
      }

      v6 = (v6 + 1);
      v7 += v8;
      a2 += v8;
      result += 4 * (a5 >> 2);
    }

    while (v6 < a4);
  }

  return result;
}

id findIRAPs(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v41 = [MEMORY[0x277CBEB18] array];
  v2 = [v1 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v3 = [v2 objectAtIndexedSubscript:0];

  v36 = v1;
  v4 = [MEMORY[0x277CE6410] assetReaderWithAsset:v1 error:0];
  v35 = v3;
  v5 = [MEMORY[0x277CE6428] assetReaderSampleReferenceOutputWithTrack:v3];
  [v4 addOutput:v5];
  v34 = v4;
  [v4 startReading];
  v6 = MEMORY[0x277CC0898];
  v7 = *MEMORY[0x277CC0898];
  v8 = *(MEMORY[0x277CC0898] + 12);
  v53 = **&MEMORY[0x277CC08A0];
  v45 = v5;
  v9 = [v5 copyNextSampleBuffer];
  if (v9)
  {
    v10 = v9;
    v11 = *(v6 + 8);
    v12 = *(v6 + 16);
    flags = v8;
    v40 = v7;
    value = v7;
    v38 = v11;
    v39 = v8;
    timescale = v11;
    v37 = v12;
    epoch = v12;
    while (1)
    {
      if (!CMSampleBufferGetNumSamples(v10))
      {
        goto LABEL_32;
      }

      memset(&v52, 0, sizeof(v52));
      CMSampleBufferGetPresentationTimeStamp(&v52, v10);
      v14 = CMSampleBufferGetSampleAttachmentsArray(v10, 1u);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (!v16)
      {
        goto LABEL_13;
      }

      v17 = v16;
      v18 = *v49;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v48 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"HEVCSyncSampleNALUnitType"];
          if (v21)
          {
            v26 = v21;
            v27 = [v21 intValue];

            if (v27 == 19 || v27 == 21)
            {
              if (flags)
              {
                time1.value = value;
                time1.timescale = timescale;
                time1.flags = flags;
                time1.epoch = epoch;
                v29 = [MEMORY[0x277CCAE60] valueWithCMTime:&time1];
                [v41 addObject:v29];
              }

              value = v52.value;
              flags = v52.flags;
              timescale = v52.timescale;
              v53 = v52;
              epoch = v52.epoch;
              goto LABEL_31;
            }

            if (v27 != 20)
            {
              goto LABEL_14;
            }

LABEL_29:
            v24 = MEMORY[0x277CCAE60];
            *&time1.value = *&v52.value;
            v25 = v52.epoch;
            goto LABEL_30;
          }

          v22 = [v20 objectForKeyedSubscript:@"DependsOnOthers"];
          v23 = [v22 BOOLValue];

          if ((v23 & 1) == 0)
          {

            goto LABEL_29;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_13:

LABEL_14:
      time1 = v52;
      time2 = v53;
      if (CMTimeCompare(&time1, &time2) == -1)
      {
        time1 = v52;
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        if (CMTimeCompare(&time1, &time2) == -1)
        {
          value = v52.value;
          flags = v52.flags;
          timescale = v52.timescale;
          epoch = v52.epoch;
        }
      }

      else if (flags)
      {
        v24 = MEMORY[0x277CCAE60];
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        v25 = epoch;
LABEL_30:
        time1.epoch = v25;
        v30 = [v24 valueWithCMTime:&time1];
        [v41 addObject:v30];

        epoch = v37;
        flags = v39;
        timescale = v38;
        value = v40;
      }

LABEL_31:

LABEL_32:
      CFRelease(v10);
      v10 = [v45 copyNextSampleBuffer];
      if (!v10)
      {
        if (flags)
        {
          goto LABEL_34;
        }

        goto LABEL_35;
      }
    }
  }

  value = v7;
  if (v8)
  {
LABEL_34:
    v31 = [MEMORY[0x277CCABB0] numberWithLongLong:value];
    [v41 addObject:v31];
  }

LABEL_35:

  v32 = *MEMORY[0x277D85DE8];

  return v41;
}

float32x2_t calcNormalizationParams@<D0>(unint64_t a1@<X0>, float32x2_t *a2@<X8>, double a3@<D0>, double a4@<D1>, float a5@<S2>, float a6@<S3>, double a7@<D6>)
{
  v7 = (2 * a1);
  v8 = (*&a3 + a5) / v7;
  v9 = ((*&a4 + a6) / v7) - (v8 * v8);
  if (v9 <= 0.0)
  {
    v9 = 0.00001;
  }

  *&a7 = a1;
  a2[3].i32[0] = 0;
  *(&a3 + 1) = a5;
  v10 = vdup_lane_s32(*&a7, 0);
  a2->f32[0] = v8;
  a2->f32[1] = 1.0 / fmaxf(sqrtf(v9), 0.1);
  result = vdiv_f32(*&a3, v10);
  *(&a4 + 1) = a6;
  v12 = vmls_f32(vdiv_f32(*&a4, v10), result, result);
  a2[1] = result;
  a2[2] = vmaxnm_f32(vsqrt_f32(vbsl_s8(vclez_f32(v12), vdup_n_s32(0x3727C5ACu), v12)), vdup_n_s32(0x3DCCCCCDu));
  return result;
}

BOOL isTextureYUV420(void *a1)
{
  v1 = a1;
  v2 = [v1 pixelFormat] == 500 || objc_msgSend(v1, "pixelFormat") == 505 || objc_msgSend(v1, "pixelFormat") == 508;

  return v2;
}

void sub_24A8DD7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t FRCGetReverseRotation(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_24A8FF160[a1 - 1];
  }
}

uint64_t *swapWidthAndHeight(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void FRCGetInputFrameSizeForUsage(__int16 a1, uint64_t *a2, uint64_t *a3)
{
  if (!(!v4 & v3))
  {
    switch(a1 & 0xFFF)
    {
      case 0:
        v9 = 1440;
        goto LABEL_73;
      case 1:
        v17 = 1920;
        goto LABEL_75;
      case 2:
        v16 = 960;
        goto LABEL_42;
      case 3:
        v10 = 720;
        goto LABEL_44;
      case 4:
        v9 = 1920;
        goto LABEL_73;
      case 5:
        v10 = 960;
        goto LABEL_44;
      case 6:
        v16 = 1280;
LABEL_42:
        *a2 = v16;
        v8 = 720;
        goto LABEL_77;
      case 7:
        *a2 = 1280;
        v8 = 960;
        goto LABEL_77;
      case 8:
        *a2 = 640;
        v8 = 480;
        goto LABEL_77;
      case 9:
        v12 = 640;
        goto LABEL_60;
      case 0xA:
        v11 = 480;
        goto LABEL_66;
      case 0xB:
        *a2 = 320;
        v8 = 180;
        goto LABEL_77;
      case 0xC:
        *a2 = 320;
        v8 = 240;
        goto LABEL_77;
      case 0xD:
        v13 = 3840;
        goto LABEL_53;
      case 0xE:
        *a2 = 4096;
        v8 = 2048;
        goto LABEL_77;
      case 0xF:
        v13 = 4096;
LABEL_53:
        *a2 = v13;
        v8 = 2160;
        goto LABEL_77;
      case 0x10:
        *a2 = 4096;
        v8 = 2304;
        goto LABEL_77;
      case 0x11:
        *a2 = 4096;
        v8 = 3112;
        goto LABEL_77;
      case 0x12:
        v14 = 7680;
        goto LABEL_55;
      case 0x13:
      case 0x14:
      case 0x1A:
        goto LABEL_80;
      case 0x15:
        v15 = 5120;
        goto LABEL_34;
      case 0x16:
        *a2 = 5120;
        v8 = 4272;
        goto LABEL_77;
      case 0x17:
        *a2 = 5744;
        v8 = 3024;
        goto LABEL_77;
      case 0x18:
        v15 = 5760;
LABEL_34:
        *a2 = v15;
        v8 = 2880;
        goto LABEL_77;
      case 0x19:
        *a2 = 6144;
        v8 = 3456;
        goto LABEL_77;
      case 0x1B:
        v14 = 0x2000;
LABEL_55:
        *a2 = v14;
        v8 = 4320;
        goto LABEL_77;
      case 0x1C:
        *a2 = 6560;
        v8 = 3104;
        goto LABEL_77;
      case 0x1D:
        v8 = 2208;
        goto LABEL_37;
      case 0x1E:
        *a2 = 1024;
        v8 = 768;
        goto LABEL_77;
      case 0x1F:
        goto LABEL_9;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1 & 0xFFF)
  {
    case 'd':
      *a2 = 1440;
      v8 = 464;
      goto LABEL_77;
    case 'e':
      *a2 = 1920;
      v8 = 584;
      goto LABEL_77;
    case 'f':
      *a2 = 960;
      v8 = 424;
      goto LABEL_77;
    case 'g':
      v11 = 360;
LABEL_66:
      *a2 = v11;
      v8 = 270;
      goto LABEL_77;
    case 'h':
      v12 = 480;
LABEL_60:
      *a2 = v12;
      v8 = 360;
      goto LABEL_77;
    case 'i':
      *a2 = 2048;
      v8 = 1024;
      goto LABEL_77;
    case 'j':
      v9 = 2048;
LABEL_73:
      *a2 = v9;
      v8 = 1080;
      goto LABEL_77;
    case 'k':
      *a2 = 2048;
      v8 = 1152;
      goto LABEL_77;
    case 'l':
      *a2 = 2048;
      v8 = 1556;
      goto LABEL_77;
    case 'm':
      *a2 = 1024;
      v8 = 512;
      goto LABEL_77;
    case 'n':
      v17 = 2560;
      goto LABEL_75;
    case 'o':
      *a2 = 2560;
      v8 = 2136;
      goto LABEL_77;
    case 'p':
      *a2 = 2872;
      v8 = 1512;
      goto LABEL_77;
    case 'q':
      v17 = 2880;
LABEL_75:
      *a2 = v17;
      v8 = 1440;
      goto LABEL_77;
    case 'r':
      *a2 = 3072;
      v8 = 1728;
      goto LABEL_77;
    case 's':
      *a2 = 1536;
      v8 = 864;
      goto LABEL_77;
    case 't':
      *a2 = 3280;
      v8 = 1552;
      goto LABEL_77;
    case 'u':
      *a2 = 1640;
      v8 = 776;
LABEL_77:
      *a3 = v8;
      if ((a1 & 0x1000) != 0)
      {
LABEL_78:
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
      }

      break;
    default:
      switch(a1 & 0xFFF)
      {
        case 0xC8:
          v10 = 1024;
LABEL_44:
          *a2 = v10;
          v8 = 540;
          goto LABEL_77;
        case 0xC9:
          *a2 = 1024;
          v8 = 576;
          goto LABEL_77;
        case 0xCA:
          *a2 = 1024;
          v8 = 778;
          goto LABEL_77;
        case 0xCB:
          *a2 = 512;
          v8 = 256;
          goto LABEL_77;
        case 0xCC:
          v11 = 512;
          goto LABEL_66;
        case 0xCD:
LABEL_9:
          *a2 = 512;
          v8 = 288;
          goto LABEL_77;
        case 0xCE:
          *a2 = 512;
          v8 = 389;
          goto LABEL_77;
        case 0xD1:
          *a2 = 640;
          v8 = 534;
          goto LABEL_77;
        case 0xD2:
          *a2 = 718;
          v8 = 378;
          goto LABEL_77;
        case 0xD3:
          v12 = 720;
          goto LABEL_60;
        case 0xD4:
          *a2 = 384;
          v8 = 216;
          goto LABEL_77;
        case 0xD5:
          *a2 = 410;
          v8 = 194;
          goto LABEL_77;
        case 0xD6:
          *a2 = 1280;
          v8 = 1068;
          goto LABEL_77;
        case 0xD7:
          v8 = 1104;
LABEL_37:
          *a2 = v8;
          goto LABEL_77;
        case 0xD8:
          *a2 = 256;
          v8 = 192;
          goto LABEL_77;
        default:
LABEL_80:
          *a2 = 0;
          *a3 = 0;
          NSLog(&cfstr_NoFrameSizeAva.isa, a1 & 0xFFF);
          if ((a1 & 0x1000) != 0)
          {
            goto LABEL_78;
          }

          break;
      }

      break;
  }
}

uint64_t FRCGetNumberOfPixelsForUsage(__int16 a1)
{
  v2 = 0;
  v3 = 0;
  FRCGetInputFrameSizeForUsage(a1, &v3, &v2);
  return v2 * v3;
}

uint64_t FRCGetUsageFromSize(unint64_t a1, unint64_t a2)
{
  if (a1 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = 29;
  if (v2 != 2208 || v3 != 2208)
  {
    v4 = -1;
  }

  if (v2 == 1920 && v3 == 1440)
  {
    goto LABEL_11;
  }

  if (v2 == 1440 && v3 == 1080)
  {
    goto LABEL_14;
  }

  if (v2 == 1280 && v3 == 720)
  {
    goto LABEL_17;
  }

  if (v2 == 1280 && v3 == 960)
  {
    v4 = 7;
    goto LABEL_51;
  }

  if (v2 == 1920 && v3 == 1080)
  {
    goto LABEL_23;
  }

  if (v2 == 3840 && v3 == 2160)
  {
    goto LABEL_26;
  }

  if (v2 == 960 && v3 == 720)
  {
    v4 = 2;
    goto LABEL_51;
  }

  if (v2 == 720 && v3 == 540)
  {
    goto LABEL_32;
  }

  if (v2 == 960 && v3 == 540)
  {
LABEL_35:
    v4 = 5;
    goto LABEL_51;
  }

  if (v2 == 640 && v3 == 480)
  {
    v4 = 8;
    goto LABEL_51;
  }

  if (v2 == 640 && v3 == 360)
  {
    v4 = 9;
    goto LABEL_51;
  }

  if (v2 == 480 && v3 == 270)
  {
    v4 = 10;
    goto LABEL_51;
  }

  if (v2 == 320 && v3 == 180)
  {
    v4 = 11;
    goto LABEL_51;
  }

  if (v2 == 320 && v3 == 240)
  {
    goto LABEL_50;
  }

  if (v2 == 5120)
  {
    if (v3 == 2880)
    {
LABEL_116:
      v4 = 21;
      goto LABEL_51;
    }

    if (v3 == 4272)
    {
LABEL_64:
      v4 = 22;
      goto LABEL_51;
    }

    goto LABEL_71;
  }

  if (v2 == 4096)
  {
    v4 = 14;
    if (v3 != 2048)
    {
      v4 = 15;
    }

    if (v3 > 2303)
    {
      if (v3 == 2304)
      {
        v4 = 16;
        goto LABEL_51;
      }

      if (v3 == 3112)
      {
        v4 = 17;
        goto LABEL_51;
      }
    }

    else if (v3 == 2048 || v3 == 2160)
    {
      goto LABEL_51;
    }

LABEL_71:
    if (v2 == 2208 && v3 == 2208)
    {
LABEL_76:
      v4 = 29;
      goto LABEL_51;
    }

    v7 = 0;
    goto LABEL_73;
  }

  if (v2 == 5744 && v3 == 3024)
  {
    v4 = 23;
    goto LABEL_51;
  }

  if (v2 == 5760 && v3 == 2880)
  {
    v4 = 24;
    goto LABEL_51;
  }

  if (v2 == 6144 && v3 == 3456)
  {
    goto LABEL_82;
  }

  if (v2 == 7680 && v3 == 4320)
  {
    goto LABEL_86;
  }

  if (v2 == 0x2000 && v3 == 4320)
  {
    v4 = 27;
  }

  if (v2 == 0x2000 && v3 == 4320 || v2 == 2208 && v3 == 2208)
  {
    goto LABEL_51;
  }

  if (v2 <= 0x140 && v3 < 0xF1)
  {
LABEL_50:
    v4 = 12;
    goto LABEL_51;
  }

  if (v2 <= 0x2D0 && v3 < 0x21D)
  {
LABEL_32:
    v4 = 3;
    goto LABEL_51;
  }

  if (v2 <= 0x3C0 && v3 < 0x21D)
  {
    goto LABEL_35;
  }

  if (v2 <= 0x500 && v3 < 0x2D1)
  {
LABEL_17:
    v4 = 6;
    goto LABEL_51;
  }

  if (v2 <= 0x5A0 && v3 < 0x439)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_51;
  }

  v7 = v2 < 0x781;
  if (v2 <= 0x780 && v3 < 0x439)
  {
LABEL_23:
    v4 = 4;
    goto LABEL_51;
  }

LABEL_73:
  if (v7 && v3 < 0x5A1)
  {
LABEL_11:
    v4 = 1;
    goto LABEL_51;
  }

  if (v2 < 0x8A1)
  {
    goto LABEL_76;
  }

  if (v2 <= 0xF00 && v3 < 0x871)
  {
LABEL_26:
    v4 = 13;
    goto LABEL_51;
  }

  if (v2 <= 0x1000 && v3 <= 0xC28)
  {
    if (v3 < 0x801)
    {
      v4 = 14;
    }

    else
    {
      v4 = 15;
    }

    if (v3 >= 0x871)
    {
      if (v3 < 0x901)
      {
        v4 = 16;
      }

      else
      {
        v4 = 17;
      }
    }

    goto LABEL_51;
  }

  if (v2 <= 0x1400 && v3 < 0xB41)
  {
    goto LABEL_116;
  }

  if (v2 <= 0x1400 && v3 < 0x10B1)
  {
    goto LABEL_64;
  }

  if (v2 <= 0x1800 && v3 < 0xD81)
  {
LABEL_82:
    v4 = 25;
    goto LABEL_51;
  }

  if (v2 <= 0x19A0 && v3 < 0xC21)
  {
    v4 = 28;
    goto LABEL_51;
  }

  if (v2 <= 0x1E00 && v3 < 0x10E1)
  {
LABEL_86:
    v4 = 18;
    goto LABEL_51;
  }

  v5 = -1;
  if (v2 > 0x2000 || v3 > 0x10E0)
  {
    return v5;
  }

  v4 = 27;
LABEL_51:
  v5 = v4 | 0x1000;
  if (a1 >= a2)
  {
    return v4;
  }

  return v5;
}

uint64_t getQuarterSizeUsage(uint64_t a1)
{
  if (a1 > 104)
  {
    if (a1 > 109)
    {
      if (a1 > 113)
      {
        if (a1 == 114)
        {
          return 115;
        }

        if (a1 == 116)
        {
          return 117;
        }
      }

      else
      {
        if (a1 == 110)
        {
          return 6;
        }

        if (a1 == 111)
        {
          return 214;
        }
      }
    }

    else
    {
      if (a1 <= 106)
      {
        if (a1 == 105)
        {
          return 109;
        }

        else
        {
          return 200;
        }
      }

      if (a1 == 107)
      {
        return 201;
      }

      if (a1 == 108)
      {
        return 202;
      }
    }

    return a1;
  }

  result = 3;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 9;
      break;
    case 7:
      result = 8;
      break;
    case 13:
      result = 4;
      break;
    case 14:
      result = 105;
      break;
    case 15:
      result = 106;
      break;
    case 16:
      result = 107;
      break;
    case 17:
      result = 108;
      break;
    case 18:
      result = 13;
      break;
    case 21:
      result = 110;
      break;
    case 22:
      result = 111;
      break;
    case 23:
      result = 112;
      break;
    case 24:
      result = 113;
      break;
    case 25:
      result = 114;
      break;
    case 27:
      result = 15;
      break;
    case 28:
      result = 116;
      break;
    case 29:
      result = 215;
      break;
    case 30:
      result = 216;
      break;
    default:
      return a1;
  }

  return result;
}

uint64_t get4xDownSizeUsage(uint64_t a1)
{
  if (a1 <= 20)
  {
    if (a1 <= 12)
    {
      if (a1 <= 3)
      {
        if (!a1)
        {
          return 103;
        }

        if (a1 == 1)
        {
          return 104;
        }
      }

      else
      {
        switch(a1)
        {
          case 4:
            return 10;
          case 6:
            return 11;
          case 7:
            return 12;
        }
      }
    }

    else
    {
      if (a1 <= 15)
      {
        if (a1 == 13)
        {
          return 5;
        }

        if (a1 == 14)
        {
          return 109;
        }

        return 200;
      }

      switch(a1)
      {
        case 16:
          return 201;
        case 17:
          return 202;
        case 18:
          return 4;
      }
    }

LABEL_50:
    NSLog(&cfstr_SInvalidUsageL.isa, "get4xDownSizeUsage", a1, v1, v2);
    return -1;
  }

  if (a1 <= 109)
  {
    if (a1 <= 105)
    {
      if (a1 == 21)
      {
        return 6;
      }

      if (a1 == 105)
      {
        return 203;
      }
    }

    else
    {
      switch(a1)
      {
        case 'j':
          return 204;
        case 'k':
          return 205;
        case 'l':
          return 206;
      }
    }

    goto LABEL_50;
  }

  if (a1 > 112)
  {
    switch(a1)
    {
      case 'q':
        return 211;
      case 's':
        return 212;
      case 'u':
        return 213;
    }

    goto LABEL_50;
  }

  if (a1 == 110)
  {
    return 9;
  }

  if (a1 == 111)
  {
    return 209;
  }

  return 210;
}

uint64_t FRCGetUsageFromSizeE5(unint64_t a1, unint64_t a2)
{
  if (a1 == 1024 && a2 == 768)
  {
    return 30;
  }

  if (a1 == 512 && a2 == 288)
  {
    return 31;
  }

  return FRCGetUsageFromSize(a1, a2);
}

id uniformTimeScales(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 1.0 / (a1 + 1.0);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1];
    v5 = 1;
    do
    {
      *&v4 = v2 * v5;
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
      [v3 addObject:v6];

      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_24A8E3C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose((v63 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *FRCGetRecommendationDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FEA6A8[a1 - 1];
  }
}

__CFString *FRCGetSessionResultDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FEA6C8[a1];
  }
}

__CFString *FRCGetGatingCauseDescription(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FEA6F0[a1];
  }
}

id getInternalBundle(void *a1)
{
  v1 = [a1 bundlePath];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"System" withString:@"AppleInternal"];

  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];

  return v3;
}

uint64_t TensorSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

const char *getConfigurationName(uint64_t a1)
{
  if (!(!v2 & v1))
  {
    result = "landscape1440x1080";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        return "landscape1920x1440";
      case 2:
        return "landscape960x720";
      case 3:
        return "landscape720x540";
      case 4:
        return "landscape1920x1080";
      case 5:
        return "landscape960x540";
      case 6:
        return "landscape1280x720";
      case 7:
        return "landscape1280x960";
      case 8:
        return "landscape640x480";
      case 9:
        return "landscape640x360";
      case 10:
        return "landscape480x270";
      case 11:
        return "landscape320x180";
      case 12:
        return "landscape320x240";
      case 13:
      case 18:
        return "landscape3840x2160";
      case 14:
      case 16:
      case 17:
      case 19:
      case 20:
      case 21:
      case 22:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
        goto LABEL_54;
      case 15:
        return "landscape4096x2160";
      case 23:
        return "landscape574x3024";
      case 30:
        return "landscape1024x768";
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 'd':
      result = "landscape1440x464";
      break;
    case 'e':
      result = "landscape1920x584";
      break;
    case 'f':
      result = "landscape960x424";
      break;
    case 'g':
      result = "landscape360x270";
      break;
    case 'h':
      result = "landscape480x360";
      break;
    case 'i':
      result = "landscape2048x1024";
      break;
    case 'j':
      result = "landscape2048x1080";
      break;
    case 'k':
      result = "landscape2048x1152";
      break;
    case 'l':
      result = "landscape2048x1556";
      break;
    case 'm':
      result = "landscape1024x512";
      break;
    case 'n':
      result = "landscape2560x1440";
      break;
    case 'o':
      result = "landscape2560x2136";
      break;
    case 'p':
      result = "landscape2872x1512";
      break;
    case 'q':
      result = "landscape2880x1440";
      break;
    case 'r':
      result = "landscape3072x1728";
      break;
    case 's':
      result = "landscape1536x864";
      break;
    case 't':
      result = "landscape3280x1552";
      break;
    case 'u':
      result = "landscape1640x776";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "landscape1024x540";
          break;
        case 201:
          result = "landscape1024x576";
          break;
        case 202:
          result = "landscape1024x778";
          break;
        case 203:
          result = "landscape512x256";
          break;
        case 204:
          result = "landscape512x270";
          break;
        case 205:
          result = "landscape512x288";
          break;
        case 206:
          result = "landscape512x389";
          break;
        case 209:
          result = "landscape640x534";
          break;
        case 210:
          result = "landscape718x378";
          break;
        case 211:
          result = "landscape720x360";
          break;
        case 212:
          result = "landscape384x216";
          break;
        case 213:
          result = "landscape410x194";
          break;
        case 214:
          result = "landscape1280x1068";
          break;
        case 215:
          result = "landscape1104x1104";
          break;
        default:
LABEL_54:
          result = "";
          break;
      }

      break;
  }

  return result;
}

uint64_t TileInfoMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void getSynthesisTensorSize(__int16 a1, int a2, unint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  FRCGetAlignedInputFrameSizeForUsage(a1, &v8, &v7);
  v6 = v7;
  for (i = v8; a2; --a2)
  {
    i = (i + 1) >> 1;
    v6 = (v6 + 1) >> 1;
  }

  *a3 = i;
  a3[1] = v6;
  a3[2] = 3;
}

void sub_24A8F5100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFMutableDictionaryRef createPixelBufferPoolWithExtendedPixels(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v24 = a2;
  v25 = a1;
  v22 = a4;
  valuePtr = a3;
  v20 = a6;
  v21 = a5;
  poolOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v8 = result;
    v9 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    CFDictionarySetValue(v8, *MEMORY[0x277CC4E30], v9);
    CFRelease(v10);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(v8, *MEMORY[0x277CC4DE8], Mutable);
    CFRelease(Mutable);
    v12 = CFNumberCreate(v6, kCFNumberLongType, &v25);
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    CFDictionarySetValue(v8, *MEMORY[0x277CC4EC8], v12);
    CFRelease(v13);
    v14 = CFNumberCreate(v6, kCFNumberLongType, &v24);
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DD8], v14);
      CFRelease(v15);
      v16 = CFNumberCreate(v6, kCFNumberIntType, &v22);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4D60], v16);
      CFRelease(v16);
      v17 = CFNumberCreate(v6, kCFNumberIntType, &v21);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DB8], v17);
      CFRelease(v17);
      v18 = CFNumberCreate(v6, kCFNumberIntType, &v20);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DA0], v18);
      CFRelease(v18);
      CVPixelBufferPoolCreate(v6, 0, v8, &poolOut);
      CFRelease(v8);
      return poolOut;
    }

    else
    {
LABEL_6:
      CFRelease(v8);
      return 0;
    }
  }

  return result;
}

CVPixelBufferRef createPixelBuffer(size_t a1, size_t a2, OSType a3, int a4)
{
  valuePtr = a4;
  v14 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFDictionaryCreateMutable(v7, 0, v8, v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v11);
  CFRelease(v11);
  v12 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v12);
  CFRelease(v12);
  CVPixelBufferCreate(v7, a1, a2, a3, Mutable, &v14);
  CFRelease(Mutable);
  return v14;
}

id createTextures(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  v10 = createTextureDescriptor(a2, a3, a4, a5, 1278226536);
  v11 = [v9 newTextureWithDescriptor:v10];

  return v11;
}

id createTextureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = 115;
  v7 = 25;
  if (a5 == 1278226488)
  {
    v7 = 12;
  }

  if (a3 == 1)
  {
    v6 = v7;
  }

  if (a3 == 2)
  {
    v8 = 65;
  }

  else
  {
    v8 = v6;
  }

  v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v8 width:a1 height:a2 mipmapped:0];
  [v9 setUsage:3];
  [v9 setStorageMode:0];
  if (a4 >= 2)
  {
    [v9 setTextureType:3];
    [v9 setArrayLength:a4];
  }

  return v9;
}

id createRGBATextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = equivalentUncompressedPixelFormat(a1);
  v5 = 90;
  if (v4 == 1380411457)
  {
    v5 = 115;
  }

  if (v4 == 1111970369)
  {
    v6 = 70;
  }

  else
  {
    v6 = v5;
  }

  v7 = MEMORY[0x277CD7058];
  Width = CVPixelBufferGetWidth(a1);
  v9 = [v7 texture2DDescriptorWithPixelFormat:v6 width:Width height:CVPixelBufferGetHeight(a1) mipmapped:0];
  [v9 setUsage:3];
  v10 = [v3 newTextureWithDescriptor:v9 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v10;
}

uint64_t equivalentUncompressedPixelFormat(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  if (CVPixelBufferGetPlaneCount(a1))
  {
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
    v5 = [v4 objectAtIndexedSubscript:0];

    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
    v7 = [v6 intValue];

    if (v7)
    {
      v8 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
      PixelFormatType = [v8 intValue];
    }
  }

  return PixelFormatType;
}

uint64_t isPackedRGBA(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t isBufferYUV(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  v4 = [v3 BOOLValue];

  return v4;
}

id createTexturesFromCVPixelBufferWithCommandBuffer(__CVBuffer *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v14 = PixelFormatType;
    v15 = a5 >> 1;
    if (a5 <= 1)
    {
      v15 = 1;
    }

    if (PixelFormatType == 843264104)
    {
      a5 = v15;
      a4 = 2;
    }

    v16 = Height / a5;
    if (a5 == 1 || v16 >= 0x80 && Width >= 0x80 && a5 < 0x81)
    {
      extraRowsOnTop = 0;
      extraColumnsOnLeft = 0;
      extraColumnsOnRight[0] = 0;
      extraRowsOnBottom = 0;
      CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      v18 = createTextureDescriptor(Width, v16, a4, a5, v14);
      IOSurface = CVPixelBufferGetIOSurface(a1);
      if (a5 == 1)
      {
        v20 = [v9 newTextureWithDescriptor:v18 iosurface:IOSurface plane:0];
      }

      else
      {
        v21 = [v9 newBufferWithIOSurface:IOSurface];
        v20 = [v21 newLinearTextureWithDescriptor:v18 offset:0 bytesPerRow:BytesPerRow bytesPerImage:0];
      }

      if (!v20)
      {
        createTexturesFromCVPixelBufferWithCommandBuffer_cold_2();
      }
    }

    else
    {
      v49 = v9;
      v22 = v9;
      v48 = v10;
      v23 = v10;
      v24 = CVPixelBufferGetWidth(a1);
      v25 = CVPixelBufferGetHeight(a1);
      v26 = v25 / a5;
      v27 = createTextures(v22, v24, v25 / a5, a4, a5);
      v28 = CVPixelBufferGetBytesPerRow(a1);
      v29 = v28 * v26;
      v20 = v27;
      v46 = v23;
      v47 = v22;
      if (v23)
      {
        v30 = v22;
        v31 = [v23 blitCommandEncoder];
        v45 = v30;
        v32 = [v30 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a1)];
        v33 = [v20 width];
        v34 = [v20 height];
        if ([v20 arrayLength])
        {
          v35 = 0;
          v36 = 0;
          v37 = 1;
          do
          {
            extraColumnsOnLeft = 0;
            v53 = 0;
            v54 = 0;
            extraColumnsOnRight[0] = v33;
            extraColumnsOnRight[1] = v34;
            extraColumnsOnRight[2] = 1;
            [v31 copyFromBuffer:v32 sourceOffset:v36 sourceBytesPerRow:v28 sourceBytesPerImage:v29 sourceSize:extraColumnsOnRight toTexture:v20 destinationSlice:v35 destinationLevel:0 destinationOrigin:&extraColumnsOnLeft];
            v36 += v29;
            v35 = v37;
            v38 = [v20 arrayLength] > v37++;
          }

          while (v38);
        }

        [v31 endEncoding];
      }

      else
      {
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v40 = [v20 width];
        v41 = [v20 height];
        if ([v20 arrayLength])
        {
          v42 = 0;
          v43 = 1;
          do
          {
            extraColumnsOnLeft = 0;
            v53 = 0;
            v54 = 0;
            v55 = v40;
            v56 = v41;
            v57 = 1;
            [v20 replaceRegion:&extraColumnsOnLeft mipmapLevel:0 slice:v42 withBytes:&BaseAddress[v42 * v29] bytesPerRow:v28 bytesPerImage:v29];
            v42 = v43;
            v38 = [v20 arrayLength] > v43++;
          }

          while (v38);
        }

        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      }

      v10 = v48;
      v9 = v49;
      if (!v20)
      {
        createTexturesFromCVPixelBufferWithCommandBuffer_cold_1();
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void copyTextureToBuffer(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  v4 = [v3 width];
  v5 = [v3 height];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  if ([v3 arrayLength])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v11, 0, 24);
      v11[3] = v4;
      v11[4] = v5;
      v11[5] = 1;
      [v3 getBytes:BaseAddress bytesPerRow:BytesPerRow bytesPerImage:BytesPerRow * v5 fromRegion:v11 mipmapLevel:0 slice:v8];
      BaseAddress += BytesPerRow * v5;
      v8 = v9;
    }

    while ([v3 arrayLength] > v9++);
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
}

void copyTextureToBufferWithBlit(void *a1, __CVBuffer *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 width];
  v11 = [v7 height];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v13 = [v8 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a2)];
  v19 = v9;
  v14 = [v9 blitCommandEncoder];
  if ([v7 arrayLength])
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
    do
    {
      memset(v21, 0, sizeof(v21));
      v20[0] = v10;
      v20[1] = v11;
      v20[2] = 1;
      [v14 copyFromTexture:v7 sourceSlice:v15 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toBuffer:v13 destinationOffset:v16 destinationBytesPerRow:BytesPerRow destinationBytesPerImage:BytesPerRow * v11];
      v16 += BytesPerRow * v11;
      v15 = v17;
    }

    while ([v7 arrayLength] > v17++);
  }

  [v14 endEncoding];
}

id createYUV420TextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = equivalentUncompressedPixelFormat(a1);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], v4);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v7 = [v6 intValue];

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = v4 == 1885745712 || v4 == 1882468912;
  v11 = 505;
  if (v10)
  {
    v11 = 508;
  }

  if (v7 == 8)
  {
    v12 = 500;
  }

  else
  {
    v12 = v11;
  }

  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v12 width:Width height:Height mipmapped:0];
  [v13 setUsage:1];
  v14 = [v3 newTextureWithDescriptor:v13 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v14;
}

id createRenderTargetTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v6 = objc_opt_new();
  [v6 setTextureType:2];
  [v6 setWidth:extraColumnsOnRight + Width];
  [v6 setHeight:extraRowsOnBottom + Height];
  v7 = equivalentUncompressedPixelFormat(a1);
  if ((v7 & 0xFFFFFFEF) == 0x34323066)
  {
    v8 = 500;
    goto LABEL_13;
  }

  if (v7 <= 1885745711)
  {
    if (v7 == 1111970369)
    {
      v8 = 70;
      goto LABEL_13;
    }

    v9 = 1882468912;
    goto LABEL_9;
  }

  v8 = 505;
  if (v7 != 2019963440 && v7 != 2016686640)
  {
    v9 = 1885745712;
LABEL_9:
    if (v7 == v9)
    {
      v8 = 508;
    }

    else
    {
      v8 = 115;
    }
  }

LABEL_13:
  [v6 setPixelFormat:v8];
  [v6 setUsage:5];
  if (![v6 textureType])
  {
    NSLog(&cfstr_FailedToCretae.isa);
  }

  v10 = [v3 newTextureWithDescriptor:v6 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  if (!v10)
  {
    v11 = CVPixelBufferGetWidth(a1);
    v12 = CVPixelBufferGetHeight(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    NSLog(&cfstr_ErrorFaildToCr.isa, v11, v12, PixelFormatType);
  }

  return v10;
}

void deserializeLivePhotoMetadata(const __CFData *a1, void *a2, void *a3)
{
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  v6 = FigLivePhotoMetadataComputeDeserializationSize();
  if (v6)
  {
    NSLog(&cfstr_Figlivephotome.isa, v6);
    v7 = 0;
  }

  else
  {
    v7 = malloc_type_malloc(0, 0x1000040EED21634uLL);
    if (v7)
    {
      v8 = FigLivePhotoMetadataDeserializeIntoBuffer();
      if (!v8)
      {
        *a2 = v7;
        goto LABEL_8;
      }

      NSLog(&cfstr_Figlivephotome_0.isa, v8);
    }

    else
    {
      NSLog(&cfstr_CouldNotAlloca.isa);
    }
  }

  free(v7);
  *a2 = 0;
LABEL_8:
  *a3 = 0;
}

uint64_t getFigLivePhotoMetadataV3(_DWORD *a1)
{
  if (*a1 < 3u)
  {
    return 0;
  }

  v2 = &a1[8 * a1[11]];
  return &v2[2 * vaddvq_s32(v2[3]) + 4];
}

void getPortShape_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 8 * *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

CGRect CVImageBufferGetCleanRect(CVImageBufferRef imageBuffer)
{
  MEMORY[0x282114C00](imageBuffer);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}