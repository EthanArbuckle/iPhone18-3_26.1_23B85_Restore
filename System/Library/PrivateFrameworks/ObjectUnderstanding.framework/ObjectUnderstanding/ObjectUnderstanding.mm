BOOL float4x4FromNSArray(NSArray *a1, simd_float4x4 *a2)
{
  v3 = a1;
  v4 = [(NSArray *)v3 count];
  if (v4 == 4)
  {
    v5 = [(NSArray *)v3 objectAtIndexedSubscript:0];
    v6 = [(NSArray *)v3 objectAtIndexedSubscript:1];
    v7 = [(NSArray *)v3 objectAtIndexedSubscript:2];
    v21 = v3;
    v8 = [(NSArray *)v3 objectAtIndexedSubscript:3];
    for (i = 0; i != 4; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      [v10 floatValue];
      v24 = v11;
      v12 = [v6 objectAtIndexedSubscript:i];
      [v12 floatValue];
      v23 = v13;
      v14 = [v7 objectAtIndexedSubscript:i];
      [v14 floatValue];
      v22 = v15;
      v16 = [v8 objectAtIndexedSubscript:i];
      [v16 floatValue];
      v17.i64[0] = __PAIR64__(v23, v24);
      v17.i64[1] = __PAIR64__(v18, v22);
      a2->columns[i] = v17;
    }

    v4 = 4;
    v3 = v21;
  }

  v19 = v4 == 4;

  return v19;
}

{
  v3 = a1;
  v4 = [(NSArray *)v3 count];
  if (v4 == 4)
  {
    v5 = [(NSArray *)v3 objectAtIndexedSubscript:0];
    v6 = [(NSArray *)v3 objectAtIndexedSubscript:1];
    v7 = [(NSArray *)v3 objectAtIndexedSubscript:2];
    v21 = v3;
    v8 = [(NSArray *)v3 objectAtIndexedSubscript:3];
    for (i = 0; i != 4; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      [v10 floatValue];
      v24 = v11;
      v12 = [v6 objectAtIndexedSubscript:i];
      [v12 floatValue];
      v23 = v13;
      v14 = [v7 objectAtIndexedSubscript:i];
      [v14 floatValue];
      v22 = v15;
      v16 = [v8 objectAtIndexedSubscript:i];
      [v16 floatValue];
      v17.i64[0] = __PAIR64__(v23, v24);
      v17.i64[1] = __PAIR64__(v18, v22);
      a2->columns[i] = v17;
    }

    v4 = 4;
    v3 = v21;
  }

  v19 = v4 == 4;

  return v19;
}

void sub_25D1DD69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _OUFrame;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id OUFrameToDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = MEMORY[0x277CCABB0];
  [v1 timestamp];
  v4 = [v3 numberWithDouble:?];
  [v2 setObject:v4 forKeyedSubscript:@"timestamp"];

  [v1 referenceOriginTransform];
  v58.columns[0] = v5;
  v58.columns[1] = v6;
  v58.columns[2] = v7;
  v58.columns[3] = v8;
  v9 = float4x4ToNSArray(&v58, *v5.i64);
  [v2 setObject:v9 forKeyedSubscript:@"reference_origin_transform"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "deviceOrientation")}];
  [v2 setObject:v10 forKeyedSubscript:@"device_orientation"];

  v11 = [v1 camera];
  v12 = OUCameraToDictionary(v11);
  [v2 setObject:v12 forKeyedSubscript:@"camera"];

  v13 = [v1 sceneCamera];
  v14 = OUCameraToDictionary(v13);
  [v2 setObject:v14 forKeyedSubscript:@"scene_camera"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "colorBuffer"))}];
  [v2 setObject:v15 forKeyedSubscript:@"color_width"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "colorBuffer"))}];
  [v2 setObject:v16 forKeyedSubscript:@"color_height"];

  v17 = [v1 colorBuffer];
  CVPixelBufferLockBaseAddress(v17, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v17);
  DataSize = CVPixelBufferGetDataSize(v17);
  if (BaseAddress && DataSize)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:?];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v21 = v20;
  CVPixelBufferUnlockBaseAddress(v17, 1uLL);
  [v2 setObject:v21 forKeyedSubscript:@"color_buffer"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "sceneColorBuffer"))}];
  [v2 setObject:v22 forKeyedSubscript:@"scene_color_width"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "sceneColorBuffer"))}];
  [v2 setObject:v23 forKeyedSubscript:@"scene_color_height"];

  v24 = [v1 sceneColorBuffer];
  CVPixelBufferLockBaseAddress(v24, 1uLL);
  v25 = CVPixelBufferGetBaseAddress(v24);
  v26 = CVPixelBufferGetDataSize(v24);
  if (v25 && v26)
  {
    v27 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v28 = v27;
  CVPixelBufferUnlockBaseAddress(v24, 1uLL);
  [v2 setObject:v28 forKeyedSubscript:@"scene_color_buffer"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "semanticLabelBuffer"))}];
  [v2 setObject:v29 forKeyedSubscript:@"semantic_label_width"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "semanticLabelBuffer"))}];
  [v2 setObject:v30 forKeyedSubscript:@"semantic_label_height"];

  v31 = [v1 semanticLabelBuffer];
  CVPixelBufferLockBaseAddress(v31, 1uLL);
  v32 = CVPixelBufferGetBaseAddress(v31);
  v33 = CVPixelBufferGetDataSize(v31);
  if (v32 && v33)
  {
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:?];
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v35 = v34;
  CVPixelBufferUnlockBaseAddress(v31, 1uLL);
  [v2 setObject:v35 forKeyedSubscript:@"semantic_label_buffer"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "semanticConfidenceBuffer"))}];
  [v2 setObject:v36 forKeyedSubscript:@"semantic_confidence_width"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "semanticConfidenceBuffer"))}];
  [v2 setObject:v37 forKeyedSubscript:@"semantic_confidence_height"];

  v38 = [v1 semanticConfidenceBuffer];
  CVPixelBufferLockBaseAddress(v38, 1uLL);
  v39 = CVPixelBufferGetBaseAddress(v38);
  v40 = CVPixelBufferGetDataSize(v38);
  if (v39 && v40)
  {
    v41 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
  }

  else
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v42 = v41;
  CVPixelBufferUnlockBaseAddress(v38, 1uLL);
  [v2 setObject:v42 forKeyedSubscript:@"semantic_confidence_buffer"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "sceneDepthBuffer"))}];
  [v2 setObject:v43 forKeyedSubscript:@"scene_depth_width"];

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "sceneDepthBuffer"))}];
  [v2 setObject:v44 forKeyedSubscript:@"scene_depth_height"];

  v45 = [v1 sceneDepthBuffer];
  CVPixelBufferLockBaseAddress(v45, 1uLL);
  v46 = CVPixelBufferGetBaseAddress(v45);
  v47 = CVPixelBufferGetDataSize(v45);
  if (v46 && v47)
  {
    v48 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:?];
  }

  else
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v49 = v48;
  CVPixelBufferUnlockBaseAddress(v45, 1uLL);
  [v2 setObject:v49 forKeyedSubscript:@"scene_depth_buffer"];

  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "sceneDepthConfidenceBuffer"))}];
  [v2 setObject:v50 forKeyedSubscript:@"scene_depth_confidence_width"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "sceneDepthConfidenceBuffer"))}];
  [v2 setObject:v51 forKeyedSubscript:@"scene_depth_confidence_height"];

  v52 = [v1 sceneDepthConfidenceBuffer];
  CVPixelBufferLockBaseAddress(v52, 1uLL);
  v53 = CVPixelBufferGetBaseAddress(v52);
  v54 = CVPixelBufferGetDataSize(v52);
  if (v53 && v54)
  {
    v55 = [MEMORY[0x277CBEA90] dataWithBytes:v53 length:?];
  }

  else
  {
    v55 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v56 = v55;
  CVPixelBufferUnlockBaseAddress(v52, 1uLL);
  [v2 setObject:v56 forKeyedSubscript:@"scene_depth_confidence_buffer"];

  return v2;
}

id float4x4ToNSArray(const simd_float4x4 *a1, double a2)
{
  v48[4] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = a1->columns[0].i32[0];
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  LODWORD(v3) = a1->columns[1].i32[0];
  v40 = v44;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  LODWORD(v4) = a1->columns[2].i32[0];
  v39 = v45;
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v46 = v38;
  LODWORD(v5) = a1->columns[3].i32[0];
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v47 = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:4];
  v48[0] = v36;
  LODWORD(v6) = a1->columns[0].i32[1];
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v43[0] = v35;
  LODWORD(v7) = a1->columns[1].i32[1];
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v43[1] = v34;
  LODWORD(v8) = a1->columns[2].i32[1];
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v43[2] = v33;
  LODWORD(v9) = a1->columns[3].i32[1];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v43[3] = v32;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  v48[1] = v31;
  LODWORD(v10) = a1->columns[0].i32[2];
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v42[0] = v30;
  LODWORD(v11) = a1->columns[1].i32[2];
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v42[1] = v29;
  LODWORD(v12) = a1->columns[2].i32[2];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v42[2] = v13;
  LODWORD(v14) = a1->columns[3].i32[2];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v42[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v48[2] = v16;
  LODWORD(v17) = a1->columns[0].i32[3];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v41[0] = v18;
  LODWORD(v19) = a1->columns[1].i32[3];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v41[1] = v20;
  LODWORD(v21) = a1->columns[2].i32[3];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v41[2] = v22;
  LODWORD(v23) = a1->columns[3].i32[3];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v41[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v48[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

{
  v48[4] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = a1->columns[0].i32[0];
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  LODWORD(v3) = a1->columns[1].i32[0];
  v40 = v44;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  LODWORD(v4) = a1->columns[2].i32[0];
  v39 = v45;
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v46 = v38;
  LODWORD(v5) = a1->columns[3].i32[0];
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v47 = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:4];
  v48[0] = v36;
  LODWORD(v6) = a1->columns[0].i32[1];
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v43[0] = v35;
  LODWORD(v7) = a1->columns[1].i32[1];
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v43[1] = v34;
  LODWORD(v8) = a1->columns[2].i32[1];
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v43[2] = v33;
  LODWORD(v9) = a1->columns[3].i32[1];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v43[3] = v32;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  v48[1] = v31;
  LODWORD(v10) = a1->columns[0].i32[2];
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v42[0] = v30;
  LODWORD(v11) = a1->columns[1].i32[2];
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v42[1] = v29;
  LODWORD(v12) = a1->columns[2].i32[2];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v42[2] = v13;
  LODWORD(v14) = a1->columns[3].i32[2];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v42[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v48[2] = v16;
  LODWORD(v17) = a1->columns[0].i32[3];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v41[0] = v18;
  LODWORD(v19) = a1->columns[1].i32[3];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v41[1] = v20;
  LODWORD(v21) = a1->columns[2].i32[3];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v41[2] = v22;
  LODWORD(v23) = a1->columns[3].i32[3];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v41[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v48[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

_OUFrame *OUFrameFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[_OUFrame alloc] initWithDictionary:v1];

  return v2;
}

uint64_t GetDeviceOrientation(__n128 a1, __n128 a2)
{
  if (a1.n128_f32[2] < -0.6)
  {
    return 1;
  }

  if (a1.n128_f32[2] > 0.6)
  {
    return 2;
  }

  if (a2.n128_f32[2] > 0.25)
  {
    return 4;
  }

  if (a2.n128_f32[2] < -0.25)
  {
    return 3;
  }

  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    GetDeviceOrientation_cold_1();
  }

  return 0;
}

CVPixelBufferRef LoadImageToCVPixelBuffer(NSString *a1, OSType a2)
{
  v3 = a1;
  if (a2 != 1111970369 && a2 != 1278226742)
  {
    v28 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LoadImageToCVPixelBuffer();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &unk_25D2878C2);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v5 = CGImageSourceCreateWithURL(v4, 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, &unk_286EC2148);
  CFRelease(v5);
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  pixelBufferAttributes = [v9 dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x277CC4D70], v11, *MEMORY[0x277CC4D68], 0}];

  pixelBuffer = 0;
  DataProvider = CGImageGetDataProvider(ImageAtIndex);
  v14 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v14);
  BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], Width, Height, a2, BytePtr, BytesPerRow, 0, 0, pixelBufferAttributes, &pixelBuffer))
  {
    v17 = 0;
  }

  else
  {
    if (a2 == 1111970369)
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
      v19 = CVPixelBufferGetWidth(pixelBuffer);
      v20 = CVPixelBufferGetHeight(pixelBuffer);
      v21 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      if (v20)
      {
        v22 = 0;
        v23 = BaseAddress + 2;
        do
        {
          v24 = v19;
          for (i = v23; v24; --v24)
          {
            v26 = *(i - 2);
            *(i - 2) = *i;
            *i = v26;
            i += 4;
          }

          ++v22;
          v23 += v21;
        }

        while (v22 != v20);
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    }

    v17 = pixelBuffer;
  }

  return v17;
}

BOOL LoadRGBToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v3 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(a1, 0x42475241u);
  v6 = ImageToCVPixelBuffer;
  if (ImageToCVPixelBuffer)
  {
    pixelBuffer = 0;
    utils::ConvertColor32BGRATo420f(ImageToCVPixelBuffer, &pixelBuffer, v5);
    v7 = pixelBuffer != 0;
    if (pixelBuffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LoadRGBToDictionary();
      }

      v11 = pixelBuffer;
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(v11);
      DataSize = CVPixelBufferGetDataSize(v11);
      if (BaseAddress && DataSize)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:?];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEA90]);
      }

      v15 = v14;
      CVPixelBufferUnlockBaseAddress(v11, 1uLL);
      [(NSMutableDictionary *)v3 setObject:v15 forKeyedSubscript:@"color_buffer"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:Width];
      [(NSMutableDictionary *)v3 setObject:v16 forKeyedSubscript:@"color_width"];

      v17 = [MEMORY[0x277CCABB0] numberWithInt:Height];
      [(NSMutableDictionary *)v3 setObject:v17 forKeyedSubscript:@"color_height"];

      v18 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"color_buffer"];
      v19 = [v18 copy];
      [(NSMutableDictionary *)v3 setObject:v19 forKeyedSubscript:@"scene_color_buffer"];

      v20 = [MEMORY[0x277CCABB0] numberWithInt:Width];
      [(NSMutableDictionary *)v3 setObject:v20 forKeyedSubscript:@"scene_color_width"];

      v21 = [MEMORY[0x277CCABB0] numberWithInt:Height];
      [(NSMutableDictionary *)v3 setObject:v21 forKeyedSubscript:@"scene_color_height"];

      CVPixelBufferLockBaseAddress(v6, 1uLL);
      v22 = CVPixelBufferGetBaseAddress(v6);
      v23 = CVPixelBufferGetDataSize(v6);
      if (v22 && v23)
      {
        v24 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      }

      else
      {
        v24 = objc_alloc_init(MEMORY[0x277CBEA90]);
      }

      v25 = v24;
      CVPixelBufferUnlockBaseAddress(v6, 1uLL);
      [(NSMutableDictionary *)v3 setObject:v25 forKeyedSubscript:@"scene_color_buffer_bgra"];

      CVPixelBufferRelease(v6);
      CVPixelBufferRelease(pixelBuffer);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL LoadSemanticToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(v3, 0x42475241u);
  v6 = ImageToCVPixelBuffer;
  if (ImageToCVPixelBuffer)
  {
    Width = CVPixelBufferGetWidth(ImageToCVPixelBuffer);
    Height = CVPixelBufferGetHeight(v6);
    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LoadSemanticToDictionary();
    }

    pixelBuffer = 0;
    v28 = *MEMORY[0x277CC4DE8];
    v29[0] = MEMORY[0x277CBEC10];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303038u, v10, &pixelBuffer);
    CVPixelBufferLockBaseAddress(v6, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    v12 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = Width;
        v16 = v12;
        v17 = v13;
        if (Width >= 1)
        {
          do
          {
            *v16++ = BaseAddress[(v17 & 0xFFFFFFFC) + 2];
            v17 += 4;
            --v15;
          }

          while (v15);
        }

        ++v14;
        v13 += 4 * Width;
        v12 += Width;
      }

      while (v14 != (Height & 0x7FFFFFFF));
    }

    CVPixelBufferUnlockBaseAddress(v6, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

    v18 = pixelBuffer;
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v19 = CVPixelBufferGetBaseAddress(v18);
    DataSize = CVPixelBufferGetDataSize(v18);
    if (v19 && DataSize)
    {
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    v22 = v21;
    CVPixelBufferUnlockBaseAddress(v18, 1uLL);
    [(NSMutableDictionary *)v4 setObject:v22 forKeyedSubscript:@"semantic_label_buffer"];

    v23 = [MEMORY[0x277CCABB0] numberWithInt:Width];
    [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"semantic_label_width"];

    v24 = [MEMORY[0x277CCABB0] numberWithInt:Height];
    [(NSMutableDictionary *)v4 setObject:v24 forKeyedSubscript:@"semantic_label_height"];

    CVPixelBufferRelease(v6);
    CVPixelBufferRelease(pixelBuffer);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

BOOL LoadSemanticConfToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(v3, 0x42475241u);
  v6 = ImageToCVPixelBuffer;
  if (ImageToCVPixelBuffer)
  {
    Width = CVPixelBufferGetWidth(ImageToCVPixelBuffer);
    Height = CVPixelBufferGetHeight(v6);
    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LoadSemanticConfToDictionary();
    }

    pixelBuffer = 0;
    v31 = *MEMORY[0x277CC4DE8];
    v32[0] = MEMORY[0x277CBEC10];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303066u, v10, &pixelBuffer);
    CVPixelBufferLockBaseAddress(v6, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    v12 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = Width;
        v16 = v13;
        if (Width >= 1)
        {
          do
          {
            v17 = &BaseAddress[v16 & 0xFFFFFFFC];
            v18 = v17[2];
            v19 = v17[1] + *v17 + v18 + v17[3];
            if (v19)
            {
              v20 = v18 / v19;
            }

            else
            {
              v20 = 0.0;
            }

            *&v12[v16] = v20;
            v16 += 4;
            --v15;
          }

          while (v15);
        }

        ++v14;
        v13 += 4 * Width;
      }

      while (v14 != (Height & 0x7FFFFFFF));
    }

    CVPixelBufferUnlockBaseAddress(v6, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

    v21 = pixelBuffer;
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v22 = CVPixelBufferGetBaseAddress(v21);
    DataSize = CVPixelBufferGetDataSize(v21);
    if (v22 && DataSize)
    {
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    v25 = v24;
    CVPixelBufferUnlockBaseAddress(v21, 1uLL);
    [(NSMutableDictionary *)v4 setObject:v25 forKeyedSubscript:@"semantic_confidence_buffer"];

    v26 = [MEMORY[0x277CCABB0] numberWithInt:Width];
    [(NSMutableDictionary *)v4 setObject:v26 forKeyedSubscript:@"semantic_confidence_width"];

    v27 = [MEMORY[0x277CCABB0] numberWithInt:Height];
    [(NSMutableDictionary *)v4 setObject:v27 forKeyedSubscript:@"semantic_confidence_height"];

    CVPixelBufferRelease(v6);
    CVPixelBufferRelease(pixelBuffer);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

uint64_t LoadDepthToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(v3, 0x4C303136u);
  Width = CVPixelBufferGetWidth(ImageToCVPixelBuffer);
  Height = CVPixelBufferGetHeight(ImageToCVPixelBuffer);
  v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LoadDepthToDictionary();
  }

  pixelBuffer = 0;
  v27 = *MEMORY[0x277CC4DE8];
  v28[0] = MEMORY[0x277CBEC10];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x66646570u, v9, &pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  CVPixelBufferLockBaseAddress(ImageToCVPixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v11 = CVPixelBufferGetBaseAddress(ImageToCVPixelBuffer);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v13 = Width;
      v14 = BaseAddress;
      for (j = v11; v13; --v13)
      {
        v16 = *j++;
        *v14++ = v16 / 1000.0;
      }

      v11 += Width;
      BaseAddress += Width;
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(ImageToCVPixelBuffer, 1uLL);
  CVPixelBufferRelease(ImageToCVPixelBuffer);

  v17 = pixelBuffer;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  v18 = CVPixelBufferGetBaseAddress(v17);
  DataSize = CVPixelBufferGetDataSize(v17);
  if (v18 && DataSize)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:?];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v21 = v20;
  CVPixelBufferUnlockBaseAddress(v17, 1uLL);
  [(NSMutableDictionary *)v4 setObject:v21 forKeyedSubscript:@"scene_depth_buffer"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:Width];
  [(NSMutableDictionary *)v4 setObject:v22 forKeyedSubscript:@"scene_depth_width"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:Height];
  [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"scene_depth_height"];

  CVPixelBufferRelease(pixelBuffer);
  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

void FindImageFilePath(NSString *a1@<X0>, NSString *a2@<X1>, NSString *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v38 = v7;
  v39 = v6;
  v37 = [(NSString *)v6 stringByAppendingPathComponent:v7];
  v40.__r_.__value_.__r.__words[0] = [v37 UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p.__pn_, &v40);
  MEMORY[0x25F894CC0](&v43, &__p, 0, 0);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  v9 = v43;
  v10 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v44;
    v41.__imp_.__ptr_ = v9;
    v41.__imp_.__cntrl_ = v10;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v41.__imp_.__ptr_ = v43;
    v41.__imp_.__cntrl_ = 0;
  }

LABEL_7:
  if (v41.__imp_.__ptr_)
  {
    v12 = std::__fs::filesystem::directory_iterator::__dereference(&v41);
    if (SHIBYTE(v12->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p.__pn_, v12->__p_.__pn_.__r_.__value_.__l.__data_, v12->__p_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p.__pn_ = v12->__p_;
    }

    v13 = 0;
    while (1)
    {
      v14 = (&off_2799C3FC8)[v13];
      std::string::basic_string[abi:ne200100]<0>(&v40, "_");
      v15 = [(NSString *)v8 UTF8String];
      v16 = strlen(v15);
      std::string::append(&v40, v15, v16);
      v17 = strlen(v14);
      std::string::append(&v40, v14, v17);
      size = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__pn_.__r_.__value_.__l.__size_;
      }

      v20 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
      v21 = v40.__r_.__value_.__r.__words[0];
      v22 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
      v23 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v40.__r_.__value_.__r.__words[2]) : v40.__r_.__value_.__l.__size_;
      if (!v23)
      {
        break;
      }

      if (size >= v23)
      {
        v24 = p_p + size;
        v25 = v22->__r_.__value_.__s.__data_[0];
        v26 = p_p;
        do
        {
          v27 = size - v23;
          if (v27 == -1)
          {
            break;
          }

          v28 = memchr(v26, v25, v27 + 1);
          if (!v28)
          {
            break;
          }

          v29 = v28;
          if (!memcmp(v28, v22, v23))
          {
            if (v29 == v24 || v29 - p_p == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v26 = (v29 + 1);
          size = v24 - (v29 + 1);
        }

        while (size >= v23);
      }

      if (v20 < 0)
      {
        operator delete(v21);
      }

      if (++v13 == 2)
      {
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        std::__fs::filesystem::directory_iterator::__increment(&v41, 0);
        goto LABEL_7;
      }
    }

LABEL_41:
    v30 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      FindImageFilePath(p_p, v30);
    }

    v31 = MEMORY[0x277CCACA8];
    v32 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v33 = __p.__pn_.__r_.__value_.__r.__words[0];
    v34 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v32 >= 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = v33;
    }

    *a4 = [v31 stringWithCString:v35 encoding:v34];
    *(a4 + 8) = 1;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (v41.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41.__imp_.__cntrl_);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }
  }

  else
  {
    if (v41.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41.__imp_.__cntrl_);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

void sub_25D1DFDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v30 = *(v28 - 88);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id GenerateOUFramesFromCvplayer(void *a1)
{
  v126[19] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v116 = 0;
  __src = 0;
  v117 = 0;
  v2 = [v1 stringByAppendingPathComponent:@"camera.txt"];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_74;
  }

  std::string::basic_string[abi:ne200100]<0>(&v118, [v2 UTF8String]);
  if (v118.columns[1].i8[7] >= 0)
  {
    v4 = &v118;
  }

  else
  {
    v4 = v118.columns[0].i64[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v4);
  std::ifstream::basic_ifstream(buf, &__p);
  if (v125)
  {
    v97.columns[0].i32[0] = 0;
    while (1)
    {
      v5 = MEMORY[0x25F894C10](buf, &v97);
      if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v6 = v116;
      if (v116 >= v117)
      {
        v8 = __src;
        v9 = v116 - __src;
        v10 = (v116 - __src) >> 2;
        v11 = v10 + 1;
        if ((v10 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v12 = v117 - __src;
        if ((v117 - __src) >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v13);
        }

        *(4 * v10) = v97.columns[0].i32[0];
        v7 = 4 * v10 + 4;
        memcpy(0, v8, v9);
        v14 = __src;
        __src = 0;
        v116 = v7;
        v117 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v116 = v97.columns[0].i32[0];
        v7 = (v6 + 4);
      }

      v116 = v7;
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *(v123.i32 + *(*buf - 24)) | 4);
    }
  }

  *buf = *MEMORY[0x277D82808];
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x25F894BD0](&v122);
  std::istream::~istream();
  MEMORY[0x25F894D60](v126);
  if (__p.columns[1].i8[7] < 0)
  {
    operator delete(__p.columns[0].i64[0]);
  }

  v15 = v116 - __src;
  if (v118.columns[1].i8[7] < 0)
  {
    operator delete(v118.columns[0].i64[0]);
  }

  if (v15 == 24)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [v1 stringByAppendingPathComponent:@"image_meta.json"];
    if (v17)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17];
      v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:0];
      v88 = [v19 mutableCopy];

      v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = [v1 stringByAppendingPathComponent:@"pose.json"];
      if (v20)
      {
        obj = v20;
        v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v21 options:0 error:0];
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v111 objects:v120 count:16];
        if (v24)
        {
          v25 = *v112;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v112 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v111 + 1) + 8 * i);
              v28 = [v88 objectForKey:v27];
              v29 = v28 == 0;

              if (v29)
              {
                v72 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  GenerateOUFramesFromCvplayer_cold_1();
                }

LABEL_80:
                goto LABEL_81;
              }

              v30 = [v23 objectForKeyedSubscript:v27];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v30;
              }

              else
              {
                v31 = 0;
              }

              if (!v31)
              {
                goto LABEL_80;
              }

              [v83 setObject:v31 forKeyedSubscript:v27];
            }

            v24 = [v23 countByEnumeratingWithState:&v111 objects:v120 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v32 = [v88 count];
        if (v32 == [v83 count])
        {
          v34 = *__src;
          v35 = *(__src + 1);
          v36 = (__src + 16);
          v33.i32[0] = *(__src + 5);
          v95 = v33;
          v37 = vld1q_dup_f32(v36);
          *v90 = v37;
          v37.i32[0] = *(__src + 2);
          v77 = *v37.i64;
          v37.i32[0] = 0;
          v37.i32[1] = *(__src + 3);
          v76 = *v37.i64;
          v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          obja = v83;
          v38 = [obja countByEnumeratingWithState:&v107 objects:v119 count:16];
          if (v38)
          {
            __asm { FMOV            V0.4S, #1.0 }

            *&v75 = vzip1q_s32(vzip2q_s32(*v90, _Q0), v95).u64[0];
            v96 = *v108;
            v44 = v34;
            v45 = v35;
            do
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v108 != v96)
                {
                  objc_enumerationMutation(obja);
                }

                v47 = *(*(&v107 + 1) + 8 * j);
                FindImageFilePath(v1, &cfstr_Color.isa, v47, &v105);
                FindImageFilePath(v1, &cfstr_Depth.isa, v47, &v103);
                FindImageFilePath(v1, &cfstr_Label.isa, v47, &v101);
                FindImageFilePath(v1, &cfstr_Vote.isa, v47, &v99);
                v48 = v106;
                if (v106 == 1 && v104 == 1 && v102 == 1 && (v100 & 1) != 0)
                {
                  v49 = [obja objectForKeyedSubscript:v47];
                  v50 = float4x4FromNSArray(v49, &__p);

                  if (v50)
                  {
                    v97.columns[0] = xmmword_25D277BA0;
                    v97.columns[1] = xmmword_25D277BB0;
                    v97.columns[2] = xmmword_25D277BC0;
                    v97.columns[3] = xmmword_25D277B90;
                    v91 = __p.columns[0];
                    v86 = __p.columns[2];
                    v87 = __p.columns[1];
                    v85 = __p.columns[3];
                    v128 = __invert_f4(*ARKit_VW_RW);
                    v51 = 0;
                    v118 = v128;
                    do
                    {
                      *&buf[v51 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25D277BA0, COERCE_FLOAT(*&v118.columns[v51])), xmmword_25D277BB0, *v118.columns[v51].f32, 1), xmmword_25D277BC0, v118.columns[v51], 2), xmmword_25D277B90, v118.columns[v51], 3);
                      ++v51;
                    }

                    while (v51 != 4);
                    v52 = 0;
                    v53 = *buf;
                    v54 = v122;
                    v55 = v123;
                    v56 = v124;
                    v118.columns[0] = v91;
                    v118.columns[1] = v87;
                    v118.columns[2] = v86;
                    v118.columns[3] = v85;
                    do
                    {
                      *&buf[v52 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*&v118.columns[v52])), v54, *v118.columns[v52].f32, 1), v55, v118.columns[v52], 2), v56, v118.columns[v52], 3);
                      ++v52;
                    }

                    while (v52 != 4);
                    v57 = 0;
                    v58 = *buf;
                    v59 = v122;
                    v60 = v123;
                    v61 = v124;
                    v118 = *VC_RC;
                    do
                    {
                      *&buf[v57 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*&v118.columns[v57])), v59, *v118.columns[v57].f32, 1), v60, v118.columns[v57], 2), v61, v118.columns[v57], 3);
                      ++v57;
                    }

                    while (v57 != 4);
                    v81 = *v122.i64;
                    v82 = *buf;
                    v79 = *v124.i64;
                    v80 = *v123.i64;
                    DeviceOrientation = GetDeviceOrientation(v91, v87);
                    v84 = objc_alloc_init(_OUCamera);
                    [(_OUCamera *)v84 setImageResolution:v44, v45];
                    [(_OUCamera *)v84 setIntrinsics:v77, v76, v75];
                    [(_OUCamera *)v84 setPose:v91.n128_f64[0], v87.n128_f64[0], *v86.i64, *v85.i64];
                    [(_OUCamera *)v84 setTransform:v82, v81, v80, v79];
                    v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    v62 = [v88 objectForKeyedSubscript:v47];
                    v63 = [v62 objectForKeyedSubscript:@"timestamp"];
                    [(NSMutableDictionary *)v92 setObject:v63 forKeyedSubscript:@"timestamp"];

                    v64 = [MEMORY[0x277CCABB0] numberWithInteger:DeviceOrientation];
                    [(NSMutableDictionary *)v92 setObject:v64 forKeyedSubscript:@"device_orientation"];

                    v65 = OUCameraToDictionary(v84);
                    [(NSMutableDictionary *)v92 setObject:v65 forKeyedSubscript:@"camera"];

                    v66 = OUCameraToDictionary(v84);
                    [(NSMutableDictionary *)v92 setObject:v66 forKeyedSubscript:@"scene_camera"];

                    v68 = float4x4ToNSArray(&v97, v67);
                    [(NSMutableDictionary *)v92 setObject:v68 forKeyedSubscript:@"reference_origin_transform"];

                    LODWORD(v68) = LoadRGBToDictionary(v105, v92);
                    LoadDepthToDictionary(v103, v92);
                    SemanticToDictionary = LoadSemanticToDictionary(v101, v92);
                    if (v68 & SemanticToDictionary & LoadSemanticConfToDictionary(v99, v92))
                    {
                      v70 = OUFrameFromDictionary(v92);
                      [v89 setObject:v70 forKey:v47];
                    }
                  }
                }

                if (v100 == 1)
                {
                }

                if (v102 == 1)
                {
                }

                if (v104 == 1)
                {
                }

                if (v48)
                {
                }
              }

              v38 = [obja countByEnumeratingWithState:&v107 objects:v119 count:16];
            }

            while (v38);
          }

          obj = _OULoggingGetOSLogForCategoryObjectUnderstanding();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_INFO))
          {
            v71 = [v89 count];
            *buf = 134217984;
            *&buf[4] = v71;
            _os_log_impl(&dword_25D1DB000, obj, OS_LOG_TYPE_INFO, "Load cvplayer dumped data to ouframes: %zu", buf, 0xCu);
          }
        }

        else
        {
          obj = _OULoggingGetOSLogForCategoryObjectUnderstanding();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            GenerateOUFramesFromCvplayer_cold_2(buf, [v88 count], objc_msgSend(v83, "count"), obj);
          }

LABEL_81:
          v89 = 0;
        }
      }

      else
      {
        v89 = 0;
      }

      v16 = v88;
    }

    else
    {
      v89 = 0;
    }
  }

  else
  {
LABEL_74:
    v89 = 0;
  }

  if (__src)
  {
    v116 = __src;
    operator delete(__src);
  }

  v73 = *MEMORY[0x277D85DE8];

  return v89;
}

void sub_25D1E0A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  v48 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799C3FB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_25D1E11B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_25D1E1328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x25F894BC0](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25D1E158C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x25F894BD0](a1 + 2);

  return std::istream::~istream();
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void _GLOBAL__sub_I_OUFrame_mm()
{
  v0 = objc_autoreleasePoolPush();
  RW_VW = xmmword_25D277BA0;
  unk_28155B180 = xmmword_25D277BD0;
  xmmword_28155B190 = xmmword_25D277BB0;
  unk_28155B1A0 = xmmword_25D277B90;
  *VW_RW = __invert_f4(*_PromotedConst);
  *RC_VC = xmmword_25D277BA0;
  *&RC_VC[16] = xmmword_25D277BE0;
  *&RC_VC[32] = xmmword_25D277BD0;
  *&RC_VC[48] = xmmword_25D277B90;
  *VC_RC = __invert_f4(*_PromotedConst_238);
  *ARKit_VW_RW = xmmword_25D277BE0;
  *&ARKit_VW_RW[16] = xmmword_25D277BC0;
  *&ARKit_VW_RW[32] = xmmword_25D277BF0;
  *&ARKit_VW_RW[48] = xmmword_25D277B90;
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

void **std::vector<NSString * {__strong}>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void OU3DKitchenObjectMerger::Reset(OU3DKitchenObjectMerger *this)
{
  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](this, this->old_cabinets_.__begin_);
  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](&this->new_cabinets_, this->new_cabinets_.__begin_);
  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](&this->other_objects_, this->other_objects_.__begin_);
  begin = this->fused_cabinets_.__begin_;

  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](&this->fused_cabinets_, begin);
}

float OU3DKitchenObjectMerger::ComputePlaneHeight(float a1, uint64_t a2, void *a3)
{
  v5 = a3[1] - *a3;
  std::vector<float>::vector[abi:ne200100](__p, (v5 >> 4));
  if ((v5 >> 4) >= 1)
  {
    v6 = __p[0];
    v7 = (v5 >> 4) & 0x7FFFFFFF;
    v8 = (*a3 + 8);
    do
    {
      v9 = *v8;
      v8 += 4;
      *v6++ = v9;
      --v7;
    }

    while (v7);
  }

  percentile(__p, v5 >> 4, a1);
  v11 = v10;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_25D1E19A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void percentile(char **a1, int a2, float a3)
{
  if (!a1 || (v4 = *a1, v5 = a1[1], v4 == v5))
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      percentile(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v6 = v5 - v4;
    if (v6 == 4)
    {
      v7 = *v4;
    }

    else
    {
      v16 = v6 >> 2;
      if (a3 < 0.0)
      {
        a3 = 0.0;
      }

      if (a3 <= 1.0)
      {
        v17 = a3;
      }

      else
      {
        v17 = 1.0;
      }

      if (v16 >= a2)
      {
        LODWORD(v16) = a2;
      }

      v18 = v16 - 1;
      std::__sort<std::__less<float,float> &,float *>();
      v19 = v17 * v18;
      v20 = v19 - v19;
      if (v20 > 0.0 && v18 > v19)
      {
        v21 = &(*a1)[4 * v19];
        v23 = *v21 + ((v21[1] - *v21) * v20);
      }
    }
  }
}

BOOL OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(OU3DKitchenObjectMerger *this, float a2, float32x4_t *a3, float32x4_t *a4)
{
  if (!a3 || !a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] Invalid input in kitchen objects merger.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  box3dIou(a3, a4, 0, &v19);
  if (v20.f32[0] < 0.05)
  {
    return 0;
  }

  {
    while (a3[8].i64[0] != *v8)
    {
      if (++v8 == qword_28155AA08)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  HeadingAngle = GetHeadingAngle(a3);
  v10 = GetHeadingAngle(a4);
  v12 = fabsf(OU::AngleDifference(v11, HeadingAngle, v10));
  if (fabs(v12 + -3.14159265) >= a2)
  {
    return v12 <= a2;
  }

  box3dToCentroidSizeAngle(a3, v27);
  v13 = v27[0][3].f32[0] + 3.14159265;
  v27[0][3].f32[0] = v13;
  centroidSizeAngleToBox3d(v27, 1, &v19);
  v14 = v24;
  a3[4] = v23;
  a3[5] = v14;
  v15 = v26;
  a3[6] = v25;
  a3[7] = v15;
  v16 = v20;
  *a3 = v19;
  a3[1] = v16;
  v17 = v22;
  a3[2] = v21;
  a3[3] = v17;
  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  return 1;
}

void sub_25D1E1C6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

BOOL OU3DKitchenObjectMerger::IsSimilarDepth(OU3DKitchenObjectMerger *this, const OUBox3d *a2, const OUBox3d *a3, float32_t a4)
{
  v4 = vsubq_f32(*&a2->var1, *&a2->var3);
  v5 = vmulq_f32(v4, v4);
  v6 = vsubq_f32(*&a3->var1, *&a3->var3);
  v7 = vmulq_f32(v6, v6);
  *v5.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v5, v5, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v5.i8), vzip2_s32(*v7.i8, *v5.i8))));
  return vsub_f32(*v5.i8, vdup_lane_s32(*v5.i8, 1)).f32[0] < a4;
}

BOOL OU3DKitchenObjectMerger::IsSimilarHeight(OU3DKitchenObjectMerger *this, const OU3DKitchenObject *a2, const OU3DKitchenObject *a3, float a4)
{
  v4 = *(a3 + 18);
  v5 = *(a3 + 2);
  v6 = v4 - v5;
  if ((v4 - v5) <= 0.0)
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      OU3DKitchenObjectMerger::IsSimilarHeight(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return 0;
  }

  else
  {
    if (v4 >= *(a2 + 18))
    {
      v4 = *(a2 + 18);
    }

    if (*(a2 + 2) >= v5)
    {
      v5 = *(a2 + 2);
    }

    return (fmaxf(v4 - v5, 0.0) / v6) > a4;
  }
}

void OU3DKitchenObjectMerger::AlignInsideObject(OU3DKitchenObjectMerger *this, float32x4_t *a2, OUBox3d *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *&a3->var7;
  v35 = *&a3->var6.var1;
  v36 = v5;
  v6 = *&a3[1].var3;
  v37 = *&a3[1].var1;
  v38 = v6;
  v7 = *&a3->var3;
  v31 = *&a3->var1;
  v32 = v7;
  v8 = *&a3->var5.var2;
  v33 = *&a3->var5.var0;
  v34 = v8;
  box3dToCentroidSizeAngle(a2, v30);
  box3dToCentroidSizeAngle(&v31, __p);
  if (vabds_f32(*(v30[0] + 6), *(__p[0] + 6)) <= 0.0001)
  {
    FindSegmentInteractWithLine(&v41, v31, v32, *a2, a2[3]);
    if (v42 == 1)
    {
      v17 = v41;
      a3->var6.var1 = v41;
      a3->var1 = v17;
      v18 = *&a3->var5.var0;
      v19 = *&a3->var5.var2;
      v20 = vsubq_f32(v18, *&a3->var1).u64[0];
      v21 = vsubq_f32(v19, v18).u64[0];
      v22 = vcvtq_f64_f32(v21);
      *&v20 = -(vmuls_lane_f32(*(&v20 + 1), v21, 1) + (*&v20 * v21.f32[0])) / vaddvq_f64(vmulq_f64(v22, v22));
      LODWORD(a3->var6.var0) = v19.i32[2];
      a3->var5.var2 = vmla_n_f32(*v18.f32, v21, *&v20);
    }

    FindSegmentInteractWithLine(&v39, v31, v32, a2[1], a2[2]);
    if (v40 == 1)
    {
      v23 = v39;
      a3->var7 = v39;
      a3->var3 = v23;
      v24 = *&a3->var5.var0;
      v25 = vsubq_f32(v24, *&a3->var3).u64[0];
      v26 = vsubq_f32(*&a3->var5.var2, v24).u64[0];
      v27 = vcvtq_f64_f32(v26);
      *&v25 = -(vmuls_lane_f32(*(&v25 + 1), v26, 1) + (*&v25 * v26.f32[0])) / vaddvq_f64(vmulq_f64(v27, v27));
      LODWORD(a3->var5.var1) = v24.i32[2];
      a3->var5.var0 = vmla_n_f32(*v24.f32, v26, *&v25);
    }
  }

  else
  {
    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      OU3DKitchenObjectMerger::AlignInsideObject(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_25D1E1F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void OU3DKitchenObjectMerger::AlignObjectDepth(OU3DKitchenObjectMerger *this@<X0>, const OUBox3d *a2@<X1>, const OUBox3d *a3@<X2>, OUBox3d *a4@<X8>)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, 4uLL);
  v7 = *&a2->var1;
  *(&v7 + 1) = a2->var3;
  v25 = v7;
  v8 = *&a3->var1;
  v9 = *&a3->var5.var2;
  *(&v8 + 1) = a3->var5.var2;
  v24 = v8;
  OU::intersect(&v25, &v24, __p[0]);
  v10 = *&a2->var1;
  *(&v10 + 1) = a2->var3;
  v25 = v10;
  v11 = *&a3->var3;
  v12 = *&a3->var5.var0;
  *(&v11 + 1) = a3->var5.var0;
  v24 = v11;
  OU::intersect(&v25, &v24, __p[0] + 1);
  v13 = *&a2->var5.var0;
  *(&v13 + 1) = a2->var5.var2;
  v25 = v13;
  v14 = *&a3->var3;
  v15 = *&a3->var5.var0;
  *(&v14 + 1) = a3->var5.var0;
  v24 = v14;
  OU::intersect(&v25, &v24, __p[0] + 2);
  v16 = *&a2->var5.var0;
  *(&v16 + 1) = a2->var5.var2;
  v25 = v16;
  v17 = *&a3->var1;
  v18 = *&a3->var5.var2;
  *(&v17 + 1) = a3->var5.var2;
  v24 = v17;
  OU::intersect(&v25, &v24, __p[0] + 3);
  OUBox3d::OUBox3d(a4, a2);
  v19 = 0;
  v20 = __p[0];
  p_var1 = &a4->var6.var1;
  do
  {
    v22 = *&v20[v19];
    *(p_var1 - 8) = v22;
    *p_var1 = v22;
    p_var1 += 2;
    v19 += 8;
  }

  while (v19 != 32);
  for (i = 0; i != 128; i += 16)
  {
    *(&a4->var2 + i) = *(&a2->var2 + i);
  }

  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }
}

void sub_25D1E2124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUBox3d::~OUBox3d(OUBox3d *this)
{
  v2 = *&this[1].var8;
  if (v2)
  {
    operator delete(v2);
  }

  var1 = this[1].var6.var1;
  if (var1)
  {
    this[1].var6.var2 = var1;
    operator delete(var1);
  }
}

void OU3DKitchenObjectMerger::AlignHeadingAngle(OU3DKitchenObjectMerger *this, float32_t a2, float32x4_t *a3)
{
  box3dToCentroidSizeAngle(a3, v10);
  v10[0][3].f32[0] = a2;
  centroidSizeAngleToBox3d(v10, 1, v9);
  v5 = v9[5];
  a3[4] = v9[4];
  a3[5] = v5;
  v6 = v9[7];
  a3[6] = v9[6];
  a3[7] = v6;
  v7 = v9[1];
  *a3 = v9[0];
  a3[1] = v7;
  v8 = v9[3];
  a3[2] = v9[2];
  a3[3] = v8;
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void sub_25D1E2238(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float OU3DKitchenObjectMerger::AlignObjectTopSurface(OU3DKitchenObjectMerger *this, const OUBox3d *a2, OUBox3d *a3)
{
  if (a3)
  {
    for (i = 0; i != 64; i += 16)
    {
      result = *(&a2->var6.var2 + i);
      *(&a3->var6.var2 + i) = result;
    }
  }

  return result;
}

void OU3DKitchenObjectMerger::AlignApplianceWithNewCabinets(OU3DKitchenObjectMerger *this)
{
  v67 = *MEMORY[0x277D85DE8];
  begin = this->new_cabinets_.__begin_;
  for (i = this->new_cabinets_.__end_; begin != i; begin = (begin + 272))
  {
    if (*(begin + 224) == 1)
    {
      HeadingAngle = GetHeadingAngle(begin);
      v4 = this->other_objects_.__begin_;
      end = this->other_objects_.__end_;
      if (v4 != end)
      {
        v5 = HeadingAngle;
        do
        {
          LODWORD(v2) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(v2, 0.34907, v4, begin);
          if (v2)
          {
            v2 = [*(v4 + 16) isEqualToString:@"Sink"];
            if ((v2 & 1) != 0 || (v6 = vsubq_f32(*v4, *(v4 + 1)), v7 = vmulq_f32(v6, v6), v8 = vsubq_f32(*begin, *(begin + 1)), v9 = vmulq_f32(v8, v8), *v7.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v7.i8), vzip2_s32(*v9.i8, *v7.i8)))), vsub_f32(*v7.i8, vdup_lane_s32(*v7.i8, 1)).f32[0] < 0.3))
            {
              OU3DKitchenObjectMerger::AlignHeadingAngle(v2, v5, v4);
              v66[0] = @"Oven";
              v10 = @"Stove";
              v66[1] = v10;
              v11 = @"Dishwasher";
              v66[2] = v11;
              v12 = @"Washer";
              v66[3] = v12;
              memset(&v50, 0, 24);
              std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v50, v66, &v67, 4uLL);
              if (v50.var1 == *&v50.var2)
              {
                v16 = 0;
              }

              else
              {
                v13 = *(v4 + 16);
                v14 = v50.var1 + 8;
                do
                {
                  v15 = *(v14 - 1);
                  v16 = v13 == v15;
                  v17 = v13 == v15 || v14 == *&v50.var2;
                  v14 += 8;
                }

                while (!v17);
              }

              v63 = &v50;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);
              for (j = 3; j != -1; --j)
              {
              }

              if (v16)
              {
                OU3DKitchenObjectMerger::AlignObjectDepth(v19, v4, begin, &v50);
                v20 = *&v50.var1;
                v21 = *&v50.var3;
                v22 = *&v50.var5.var2;
                *(v4 + 2) = *&v50.var5.var0;
                *(v4 + 3) = v22;
                *v4 = v20;
                *(v4 + 1) = v21;
                v23 = *&v50.var6.var1;
                v24 = *&v50.var7;
                v25 = v52;
                *(v4 + 6) = v51;
                *(v4 + 7) = v25;
                *(v4 + 4) = v23;
                *(v4 + 5) = v24;
                v26 = v53;
                v53 = 0;
                v27 = *(v4 + 16);
                *(v4 + 16) = v26;

                *(v4 + 34) = v54;
                v28 = v55;
                v55 = 0;
                v29 = *(v4 + 18);
                *(v4 + 18) = v28;

                v30 = v56;
                v56 = 0;
                v31 = *(v4 + 19);
                *(v4 + 19) = v30;

                v32 = *(v4 + 20);
                if (v32)
                {
                  *(v4 + 21) = v32;
                  operator delete(v32);
                  *(v4 + 20) = 0;
                  *(v4 + 21) = 0;
                  *(v4 + 22) = 0;
                }

                v33 = *(v4 + 23);
                *(v4 + 10) = *__p;
                *(v4 + 22) = v58;
                __p[0] = 0;
                __p[1] = 0;
                v58 = 0;
                if (v33)
                {
                  operator delete(v33);
                  *(v4 + 23) = 0;
                  *(v4 + 24) = 0;
                  *(v4 + 25) = 0;
                }

                *(v4 + 23) = v59;
                *(v4 + 12) = v60;
                v59 = 0;
                v60 = 0uLL;
                v34 = v61;
                v61 = 0;
                v35 = *(v4 + 26);
                *(v4 + 26) = v34;

                *(v4 + 108) = v62;
                if (v59)
                {
                  operator delete(v59);
                }

                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              v36 = @"Sink";
              v65 = v36;
              memset(&v50, 0, 24);
              std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v50, &v65, v66, 1uLL);
              var1 = v50.var1;
              if (v50.var1 == *&v50.var2)
              {
LABEL_32:
                v63 = &v50;
                std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);
              }

              else
              {
                while (*(v4 + 16) != *var1)
                {
                  if (++var1 == *&v50.var2)
                  {
                    goto LABEL_32;
                  }
                }

                v63 = &v50;
                std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);

                OU3DKitchenObjectMerger::AlignInsideObject(v38, begin, v4);
              }

              v64[0] = v36;
              v64[1] = v10;
              v64[2] = v11;
              v64[3] = v12;
              memset(&v50, 0, 24);
              std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v50, v64, &v65, 4uLL);
              if (v50.var1 == *&v50.var2)
              {
                v42 = 0;
              }

              else
              {
                v39 = *(v4 + 16);
                v40 = v50.var1 + 8;
                do
                {
                  v41 = *(v40 - 1);
                  v42 = v39 == v41;
                  v43 = v39 == v41 || v40 == *&v50.var2;
                  v40 += 8;
                }

                while (!v43);
              }

              v63 = &v50;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);
              for (k = 3; k != -1; --k)
              {
              }

              if (v42)
              {
                for (m = 64; m != 128; m += 16)
                {
                  *(v4 + m + 8) = *(begin + m + 8);
                }
              }
            }
          }

          v4 = (v4 + 272);
        }

        while (v4 != end);
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_25D1E2770(_Unwind_Exception *a1)
{
  for (i = 24; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::AlignStoveWithOven(OU3DKitchenObjectMerger *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = v1 & 0x7FFFFFFF;
    do
    {
      begin = this->other_objects_.__begin_;
      v23 = @"Stove";
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v17, &v23, &v24, 1uLL);
      v7 = v17;
      if (v17 == v18)
      {
LABEL_6:
        v21 = &v17;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);
      }

      else
      {
        while (*(begin + 34 * v4 + 16) != *v7)
        {
          if (++v7 == v18)
          {
            goto LABEL_6;
          }
        }

        v21 = &v17;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);

        v8 = 0;
        v9 = 0;
        do
        {
          if (v4 != v9)
          {
            v10 = this->other_objects_.__begin_;
            v22 = @"Oven";
            v18 = 0;
            v19 = 0;
            v17 = 0;
            std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v17, &v22, &v23, 1uLL);
            v11 = v17;
            if (v17 == v18)
            {
LABEL_14:
              v21 = &v17;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);
            }

            else
            {
              while (*(v10 + 34 * v9 + 16) != *v11)
              {
                if (++v11 == v18)
                {
                  goto LABEL_14;
                }
              }

              v21 = &v17;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);

              v12 = this->other_objects_.__begin_;
              box3dIou(v12 + 17 * v4, v12 + 17 * v9, 0, &v17);
              if (v20 > 0.35 && vabds_f32(*(v12 + 68 * v4 + 2), *(v12 + 68 * v9 + 18)) < 0.4)
              {
                v13 = 0;
                v14 = (v12 + v3);
                v15 = v12 + v8;
                do
                {
                  *v14 = *v15;
                  if (v13 >= 4)
                  {
                    *(v15 + 2) = *(v14 - 14);
                  }

                  ++v13;
                  v14 += 2;
                  v15 += 16;
                }

                while (v13 != 8);
              }
            }
          }

          ++v9;
          v8 += 272;
        }

        while (v9 != v5);
      }

      ++v4;
      v3 += 272;
    }

    while (v4 != v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void OU3DKitchenObjectMerger::AlignSinkWithDishwasher(OU3DKitchenObjectMerger *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = v1 & 0x7FFFFFFF;
    while (1)
    {
      begin = this->other_objects_.__begin_;
      v37 = @"Sink";
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v32, &v37, &v38, 1uLL);
      v6 = v32;
      if (v32 != v33)
      {
        break;
      }

LABEL_6:
      v31[0] = &v32;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v31);

LABEL_7:
      if (++v3 == v4)
      {
        goto LABEL_34;
      }
    }

    while (*(begin + 34 * v3 + 16) != *v6)
    {
      if (++v6 == v33)
      {
        goto LABEL_6;
      }
    }

    v31[0] = &v32;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v31);

    v7 = 0;
    while (1)
    {
      if (v3 == v7)
      {
        goto LABEL_15;
      }

      v8 = this->other_objects_.__begin_;
      v36 = @"Dishwasher";
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v32, &v36, &v37, 1uLL);
      v9 = v32;
      if (v32 == v33)
      {
LABEL_14:
        v31[0] = &v32;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v31);

        goto LABEL_15;
      }

      while (*(v8 + 34 * v7 + 16) != *v9)
      {
        if (++v9 == v33)
        {
          goto LABEL_14;
        }
      }

      v31[0] = &v32;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v31);

      v10 = this->other_objects_.__begin_;
      v11 = (v10 + 272 * v3);
      v12 = (v10 + 272 * v7);
      box3dIou(v11, v12, 0, &v32);
      if (v35 <= 0.0)
      {
        goto LABEL_15;
      }

      box3dToCentroidSizeAngle(v11, v31);
      box3dToCentroidSizeAngle(v12, __p);
      if (vabds_f32(*(v31[0] + 6), *(__p[0] + 6)) <= 0.0001)
      {
        v15 = vsubq_f32(*v11, v12[3]);
        v16 = vsubq_f32(v11[3], *v12);
        if (sqrtf(vaddv_f32(*&vmulq_f32(v15, v15))) >= sqrtf(vaddv_f32(*&vmulq_f32(v16, v16))))
        {
          FindLinesIntersect(1, &v32, *v12, v12[1], v11[1], v11[2]);
          if (v34)
          {
            v14 = 0;
            v11[2].i64[0] = v32;
            v22 = v11[2];
            v23 = v11[3];
            v11[3].i32[2] = v23.i32[2];
            v24 = vsubq_f32(*v11, v22).u64[0];
            v23.i64[0] = vsubq_f32(v23, *v11).u64[0];
            v25 = vcvtq_f64_f32(*v23.f32);
            *&v24 = -(vmuls_lane_f32(*(&v24 + 1), *v23.f32, 1) + (*&v24 * v23.f32[0])) / vaddvq_f64(vmulq_f64(v25, v25));
            v26 = vmla_n_f32(*v11->f32, *v23.f32, *&v24);
            *v11[3].f32 = v26;
            v11[6].i64[0] = v22.i64[0];
            *v11[7].f32 = v26;
            goto LABEL_28;
          }
        }

        else
        {
          FindLinesIntersect(1, &v32, v12[3], v12[2], *v11, v11[3]);
          if (v34)
          {
            v14 = 0;
            v11->i64[0] = v32;
            v18 = *v11;
            v17 = v11[1];
            v11[1].i32[2] = v17.i32[2];
            v19 = vsubq_f32(v17, v18).u64[0];
            v20 = vsubq_f32(v11[2], v17).u64[0];
            v21 = vcvtq_f64_f32(v20);
            *&v19 = -(vmuls_lane_f32(*(&v19 + 1), v20, 1) + (*&v19 * v20.f32[0])) / vaddvq_f64(vmulq_f64(v21, v21));
            *v17.f32 = vmla_n_f32(*v17.f32, v20, *&v19);
            v11[1].i64[0] = v17.i64[0];
            v11[4].i64[0] = v18.i64[0];
            v11[5].i64[0] = v17.i64[0];
            goto LABEL_28;
          }
        }

        v14 = 7;
      }

      else
      {
        v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          OU3DKitchenObjectMerger::AlignSinkWithDishwasher(&buf, v29, v13);
        }

        v14 = 1;
      }

LABEL_28:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      if (v14 && v14 != 7)
      {
        break;
      }

LABEL_15:
      if (++v7 == v4)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_25D1E2EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t OU3DKitchenObjectMerger::UpdateZ(float a1, float a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a5[5];
  if (v10 < 1)
  {
    v16 = *(a4 + 72);
    goto LABEL_24;
  }

  v11 = a5[4];
  v12 = a5[1];
  v13 = *(v12 + (((v10 + v11 - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v10 + v11 - 1) & 0xF);
  v14 = v11 >> 4;
  if (*(a4 + 224))
  {
    v15 = *(a4 + 8);
    v16 = *(a4 + 72);
    if (a5[2] != v12)
    {
      v17 = (v12 + 8 * v14);
      v18 = *v17 + 272 * (a5[4] & 0xFLL);
      v19 = *(v12 + (((v11 + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v11 + v10) & 0xF);
      while (v18 != v19)
      {
        v37 = @"Cabinet";
        v33 = 0;
        v34 = 0;
        v32 = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v32, &v37, &v38, 1uLL);
        v20 = v32;
        if (v32 == v33)
        {
LABEL_8:
          v35 = &v32;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);

          if (v15 < *(v18 + 72))
          {
            v15 = *(v18 + 72);
          }

          if (*(v18 + 8) < v16)
          {
            v16 = *(v18 + 8);
          }
        }

        else
        {
          while (*(v18 + 128) != *v20)
          {
            if (++v20 == v33)
            {
              goto LABEL_8;
            }
          }

          v35 = &v32;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);
        }

        v18 += 272;
        if (v18 - *v17 == 4352)
        {
          v21 = v17[1];
          ++v17;
          v18 = v21;
        }
      }
    }

    if (*(v13 + 224))
    {
      v22 = *(a4 + 72);
      v36 = @"Cabinet";
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v32, &v36, &v37, 1uLL);
      v23 = v32;
      if (v32 == v33)
      {
LABEL_21:
        v35 = &v32;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);
      }

      else
      {
        while (*(v13 + 128) != *v23)
        {
          if (++v23 == v33)
          {
            goto LABEL_21;
          }
        }

        v35 = &v32;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);

        v16 = *(v13 + 72);
        if ((v16 - *(a4 + 72)) > 0.5)
        {
          goto LABEL_44;
        }
      }

      v16 = v22;
      goto LABEL_44;
    }

LABEL_24:
    v15 = *(a4 + 8);
    goto LABEL_44;
  }

  v15 = *(v13 + 8);
  if (a5[2] != v12)
  {
    v24 = (v12 + 8 * v14);
    v25 = *v24 + 272 * (a5[4] & 0xFLL);
    v26 = *(v12 + (((v11 + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v11 + v10) & 0xF);
    while (v25 != v26)
    {
      v39 = @"Cabinet";
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v32, &v39, &v40, 1uLL);
      v27 = v32;
      if (v32 == v33)
      {
LABEL_30:
        v35 = &v32;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);

        if (v15 < *(v25 + 72))
        {
          v15 = *(v25 + 72);
        }
      }

      else
      {
        while (*(v25 + 128) != *v27)
        {
          if (++v27 == v33)
          {
            goto LABEL_30;
          }
        }

        v35 = &v32;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);
      }

      v25 += 272;
      if (v25 - *v24 == 4352)
      {
        v28 = v24[1];
        ++v24;
        v25 = v28;
      }
    }
  }

  if (([*(v13 + 152) isEqualToString:@"online"] & 1) == 0 || *(v13 + 224) != 1)
  {
LABEL_43:
    v16 = *(a4 + 72);
    goto LABEL_44;
  }

  v38 = @"Cabinet";
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v32, &v38, &v39, 1uLL);
  v29 = v32;
  if (v32 == v33)
  {
LABEL_42:
    v35 = &v32;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);

    goto LABEL_43;
  }

  while (*(v13 + 128) != *v29)
  {
    if (++v29 == v33)
    {
      goto LABEL_42;
    }
  }

  v35 = &v32;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v35);

  v16 = *(v13 + 72);
LABEL_44:
  if ((a6 & 1) == 0)
  {
    if (vabds_f32(v15, a2) <= 0.1)
    {
      v15 = a2;
    }

    if (vabds_f32(v16, a1) <= 0.1)
    {
      v16 = a1;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return LODWORD(v16) | (LODWORD(v15) << 32);
}

void OU3DKitchenObjectMerger::FuseAndCarve(OU3DKitchenObjectMerger *this)
{
  v139 = *MEMORY[0x277D85DE8];
  v1 = 0xF0F0F0F0F0F0F0F1 * ((this->new_cabinets_.__end_ - this->new_cabinets_.__begin_) >> 4);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v94 = v1 & 0x7FFFFFFF;
    do
    {
      v4 = v2->new_cabinets_.__begin_ + 272 * v3;
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v5 = *(v4 + 48);
      v6 = 0xF0F0F0F0F0F0F0F1 * ((v2->old_cabinets_.__end_ - v2->old_cabinets_.__begin_) >> 4);
      v97 = *(v4 + 16);
      v105 = *(v4 + 32);
      v7 = vsub_f32(*v105.f32, *&v97);
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v6 & 0x7FFFFFFF;
        do
        {
          begin = v2->old_cabinets_.__begin_;
          this = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (v2->old_cabinets_.__begin_ + v8), v4);
          if (this)
          {
            v99 = *(begin + v8 + 16);
            v102 = *(begin + v8 + 32);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v122, (begin + v8));
            LODWORD(v125.var1) = 2;
            std::vector<int>::push_back[abi:ne200100](&v119, &v125);
            v11 = vsubq_f32(v105, v102);
            v12 = sqrtf(vaddv_f32(*&vmulq_f32(v11, v11)));
            if (vaddv_f32(vmul_f32(v7, *v11.f32)) >= 0.0)
            {
              v13 = v12;
            }

            else
            {
              v13 = -v12;
            }

            *&v125.var1 = v13;
            std::vector<float>::push_back[abi:ne200100](&v116, &v125);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v122, (begin + v8));
            LODWORD(v110) = 1;
            std::vector<int>::push_back[abi:ne200100](&v119, &v110);
            v14 = vsubq_f32(v105, v99);
            v15 = sqrtf(vaddv_f32(*&vmulq_f32(v14, v14)));
            if (vaddv_f32(vmul_f32(v7, *v14.f32)) >= 0.0)
            {
              v16 = v15;
            }

            else
            {
              v16 = -v15;
            }

            *&v110 = v16;
            std::vector<float>::push_back[abi:ne200100](&v116, &v110);
          }

          v8 += 272;
          --v9;
        }

        while (v9);
      }

      v17 = 0xF0F0F0F0F0F0F0F1 * ((v2->other_objects_.__end_ - v2->other_objects_.__begin_) >> 4);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = v17 & 0x7FFFFFFF;
        do
        {
          v20 = v2->other_objects_.__begin_ + 272 * v18;
          LOBYTE(this) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, v20, v4);
          if (this)
          {
            v21 = vsubq_f32(*v20, *(v20 + 16));
            v22 = vmulq_f32(v21, v21);
            v23 = vsubq_f32(*v4, *(v4 + 16));
            v24 = vmulq_f32(v23, v23);
            *v22.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v22.i8), vzip2_s32(*v24.i8, *v22.i8))));
            if (vsub_f32(*v22.i8, vdup_lane_s32(*v22.i8, 1)).f32[0] < 0.3)
            {
              this = std::__tree<int>::__emplace_unique_key_args<int,int const&>(v20 + 240, (v4 + 232));
              {
LABEL_21:
                v100 = *(v20 + 16);
                v103 = *(v20 + 32);
                std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v122, v20);
                LODWORD(v125.var1) = 2;
                std::vector<int>::push_back[abi:ne200100](&v119, &v125);
                v26 = vsubq_f32(v105, v103);
                v27 = sqrtf(vaddv_f32(*&vmulq_f32(v26, v26)));
                if (vaddv_f32(vmul_f32(v7, *v26.f32)) >= 0.0)
                {
                  v28 = v27;
                }

                else
                {
                  v28 = -v27;
                }

                *&v125.var1 = v28;
                std::vector<float>::push_back[abi:ne200100](&v116, &v125);
                std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v122, v20);
                LODWORD(v110) = 1;
                std::vector<int>::push_back[abi:ne200100](&v119, &v110);
                v29 = vsubq_f32(v105, v100);
                v30 = sqrtf(vaddv_f32(*&vmulq_f32(v29, v29)));
                if (vaddv_f32(vmul_f32(v7, *v29.f32)) >= 0.0)
                {
                  v31 = v30;
                }

                else
                {
                  v31 = -v30;
                }

                *&v110 = v31;
                std::vector<float>::push_back[abi:ne200100](&v116, &v110);
              }

              else
              {
                while (*(v20 + 128) != *v25)
                {
                  if (++v25 == qword_28155A9D8)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }
          }

          ++v18;
        }

        while (v18 != v19);
      }

      if (v122 == v123)
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v2->fused_cabinets_, v4);
      }

      else
      {
        v114 = 0uLL;
        var3 = 0;
        OU3DKitchenObjectMerger::SortBasedOnDistance(&v116, &v122, &v119, &v125);
        std::vector<OU3DKitchenObject>::__vdeallocate(&v114);
        v114 = *&v125.var1;
        var4 = v125.var4;
        var3 = v125.var3;
        memset(&v125, 0, 48);
        *&v110 = &v125;
        std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v110);
        v113 = *v105.f32;
        v104 = *(v4 + 72);
        v101 = *(v4 + 8);
        v111 = 0u;
        v112 = 0u;
        v110 = 0u;
        v32 = 0xF0F0F0F0F0F0F0F1 * ((*(&v114 + 1) - v114) >> 4);
        v33 = vsub_f32(v5, *v105.f32);
        if (v32 >= 1)
        {
          v93 = v3;
          v34 = 0;
          v96 = (v32 - 1);
          v35 = v32 & 0x7FFFFFFF;
          v36 = 1;
          while (1)
          {
            v37 = (v114 + 272 * v34);
            if (var4[v34] == 2)
            {
              IsSimilarHeight = std::deque<OU3DKitchenObject>::push_back(&v110, (v114 + 272 * v34));
              v39 = v37[4];
              v40 = v37 + 6;
            }

            else
            {
              if (v111 == *(&v110 + 1))
              {
                goto LABEL_63;
              }

              v42 = (*(&v110 + 1) + 8 * (v112 >> 4));
              v43 = *v42 + 272 * (v112 & 0xF);
              v44 = *(*(&v110 + 1) + (((*(&v112 + 1) + v112) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((DWORD2(v112) + v112) & 0xF);
              if (v43 == v44)
              {
                goto LABEL_63;
              }

              v45 = v37[29].u32[0];
              while (v45 != *(v43 + 232))
              {
                v43 += 272;
                if (v43 - *v42 == 4352)
                {
                  v46 = v42[1];
                  ++v42;
                  v43 = v46;
                }

                if (v43 == v44)
                {
                  goto LABEL_63;
                }
              }

              if (v45 != *(*(*(&v110 + 1) + (((v112 + *(&v112 + 1) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v112 + DWORD2(v112) - 1) & 0xF) + 232))
              {
                {
LABEL_54:
                  std::deque<OU3DKitchenObject>::__move_assign(&v110, &v125);
                  std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&v125);
                  goto LABEL_63;
                }

                while (*&v37[16] != *v49)
                {
                  if (++v49 == qword_28155B160)
                  {
                    goto LABEL_54;
                  }
                }
              }

              std::deque<OU3DKitchenObject>::__move_assign(&v110, &v125);
              IsSimilarHeight = std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&v125);
              v39 = v37[2];
              v40 = v37;
            }

            v41 = vsub_f32(v113, v39);
            if (vaddv_f32(vmul_f32(vsub_f32(v113, *&v97), v41)) >= 0.000001)
            {
              v47 = *v40;
              if (sqrtf(vaddv_f32(vmul_f32(v41, v41))) >= 0.1)
              {
                goto LABEL_121;
              }

              {
                while (*&v37[16] != *v48)
                {
                  if (++v48 == qword_28155B160)
                  {
                    goto LABEL_62;
                  }
                }

                if (var4[v34] == 1)
                {
LABEL_121:
                  if (v34)
                  {
                    {
                      v51 = v114 + 272 * (v34 - 1);
                      while (*(v51 + 128) != *v50)
                      {
                        if (++v50 == qword_28155B160)
                        {
                          goto LABEL_68;
                        }
                      }

                      if (var4[v34 - 1] == 1)
                      {
                        IsSimilarHeight = OU3DKitchenObjectMerger::IsSimilarHeight(IsSimilarHeight, (v114 + 272 * (v34 - 1)), v4, 0.8);
                        if ((IsSimilarHeight & v36) == 1)
                        {
                          v125.var1 = 0;
                          *&v125.var2 = 0;
                          v125.var1 = *(v51 + 16);
                          *&v125.var2 = *v51;
                          v108 = *v105.f32;
                          v109 = v97;
                          IsSimilarHeight = OU::intersect(&v125, &v108, &v113);
                        }
                      }
                    }
                  }

LABEL_68:
                  {
                    v56 = 0;
                  }

                  else
                  {
                    v53 = v37[16];
                    do
                    {
                      v55 = *(v54 - 8);
                      v56 = *&v53 == v55;
                      v57 = *&v53 == v55 || v54 == qword_28155B160;
                      v54 += 8;
                    }

                    while (!v57);
                  }

                  OU3DKitchenObjectMerger::UpdateZ(v104, v101, IsSimilarHeight, v4, &v110, v56);
                  v36 = v58;
                  if ((v58 & 1) == 0 && v34 != v96)
                  {
                    goto LABEL_63;
                  }

                  v108 = v39;
                  v109 = v47;
                  v107[0] = *v105.f32;
                  v107[1] = v97;
                  v106 = 0;
                  OU::intersect(&v108, v107, &v106);
                  v59 = v113;
                  v60 = v106;
                  OUBox3d::OUBox3d(&v125, v4);
                  v61 = *(v4 + 224);
                  v136 = *(v4 + 232);
                  v135 = v61;
                  v62 = std::set<int>::set[abi:ne200100](&v137, v4 + 240);
                  *&v63 = vadd_f32(v33, v60);
                  *&v64 = vadd_f32(v33, v59);
                  v65 = v63;
                  *(&v65 + 2) = v101;
                  *&v66 = v106;
                  v67 = v66;
                  *(&v67 + 2) = v101;
                  *&v125.var1 = v65;
                  *&v125.var3 = v67;
                  *&v68 = v113;
                  v69 = v68;
                  *(&v69 + 2) = v101;
                  v70 = v64;
                  *(&v70 + 2) = v101;
                  *&v125.var5.var0 = v69;
                  *&v125.var5.var2 = v70;
                  v95 = v63;
                  v71 = v63;
                  *(&v71 + 2) = v104;
                  *(&v66 + 2) = v104;
                  *&v125.var6.var1 = v71;
                  *&v125.var7 = v66;
                  *(&v68 + 2) = v104;
                  *(&v64 + 2) = v104;
                  v126 = v68;
                  v127 = v64;
                  v72 = OU3DKitchenObjectMerger::UpdateZ(v104, v101, v62, v4, &v110, v56);
                  v36 = v73;
                  if (OU3DKitchenObjectMerger::IsValidCabinet(v72, &v125, 0.15))
                  {
                    std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v2->fused_cabinets_, &v125);
                    goto LABEL_87;
                  }

                  if (*(&v112 + 1))
                  {
                    if (boxVolume(&v125) > 0.1 && vabds_f32(*&v72, *(&v72 + 1)) >= vabds_f32(v104, v101))
                    {
                      v76 = v106;
                      v113 = v106;
                      end = v2->fused_cabinets_.__end_;
                      if (v2->fused_cabinets_.__begin_ != end && *(end - 10) == v136)
                      {
                        *(end - 34) = v95;
                        *(end - 32) = v76;
                        *(end - 26) = v95;
                        *(end - 24) = v76;
                      }
                    }

                    else
                    {
                      v74 = boxVolume(&v125);
                      v75 = v56 ^ 1;
                      if (v74 >= 0.05)
                      {
                        v75 = 1;
                      }

                      if ((v75 & 1) == 0)
                      {
                        goto LABEL_87;
                      }
                    }
                  }

                  else
                  {
LABEL_87:
                    v113 = v106;
                  }

                  std::__tree<int>::destroy(&v137, v138);

                  if (__p)
                  {
                    operator delete(__p);
                  }

                  if (v131)
                  {
                    v132 = v131;
                    operator delete(v131);
                  }

                  v101 = *(&v72 + 1);
                  v104 = *&v72;
                  goto LABEL_63;
                }
              }
            }

LABEL_62:
            v52 = OU3DKitchenObjectMerger::UpdateZ(v104, v101, IsSimilarHeight, v4, &v110, 0);
            v101 = *(&v52 + 1);
            v104 = *&v52;
LABEL_63:
            if (++v34 == v35)
            {
              v78 = v113;
              v3 = v93;
              goto LABEL_98;
            }
          }
        }

        LOBYTE(v36) = 1;
        v78 = *v105.f32;
LABEL_98:
        if (vaddv_f32(vmul_f32(v7, vsub_f32(v78, *&v97))) >= 0.000001)
        {
          OUBox3d::OUBox3d(&v125, v4);
          v79 = *(v4 + 224);
          v136 = *(v4 + 232);
          v135 = v79;
          v80 = std::set<int>::set[abi:ne200100](&v137, v4 + 240);
          *&v82 = v113;
          *(&v83 + 1) = *(&v97 + 1);
          *&v83 = vadd_f32(*&v97, v33);
          if ((v36 & 1) != 0 || (v84 = v2->fused_cabinets_.__end_, v84 == v2->fused_cabinets_.__begin_) || *(v84 - 10) != v136)
          {
            *&v81 = vadd_f32(v33, v113);
            v85 = *(v4 + 72);
            v86 = *(v4 + 8);
            v87 = v83;
            DWORD2(v87) = v86;
            v88 = v97;
            v89 = v97;
            DWORD2(v89) = v86;
            v90 = v82;
            DWORD2(v90) = v86;
            *&v125.var1 = v87;
            *&v125.var3 = v89;
            v91 = v81;
            DWORD2(v91) = v86;
            *&v125.var5.var0 = v90;
            *&v125.var5.var2 = v91;
            DWORD2(v83) = v85;
            DWORD2(v88) = v85;
            *&v125.var6.var1 = v83;
            *&v125.var7 = v88;
            DWORD2(v82) = v85;
            DWORD2(v81) = v85;
            v126 = v82;
            v127 = v81;
            if (OU3DKitchenObjectMerger::IsValidCabinet(v80, &v125, 0.25))
            {
              std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v2->fused_cabinets_, &v125);
            }
          }

          else
          {
            *(v84 - 34) = v83;
            *(v84 - 32) = v97;
            *(v84 - 26) = v83;
            *(v84 - 24) = v97;
          }

          std::__tree<int>::destroy(&v137, v138);

          if (__p)
          {
            operator delete(__p);
          }

          if (v131)
          {
            v132 = v131;
            operator delete(v131);
          }
        }

        std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&v110);
        if (var4)
        {
          operator delete(var4);
        }

        v125.var1 = &v114;
        std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v125);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      v125.var1 = &v122;
      std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v125);
      ++v3;
    }

    while (v3 != v94);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25D1E3F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__pa, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, OUBox3d *a42, OUBox3d *a43, uint64_t a44, void *a45, void *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void **a51)
{
  std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&a31);
  operator delete(__pa);
  a51 = &a39;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a51);
  if (a42)
  {
    a43 = a42;
    operator delete(a42);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  a51 = &a48;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OU3DKitchenObject>::push_back[abi:ne200100](uint64_t a1, OUBox3d *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(a1, *(a1 + 8), a2);
    result = v3 + 272;
    *(a1 + 8) = v3 + 272;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void **OU3DKitchenObjectMerger::SortBasedOnDistance@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a1[1] - *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4) != v4 >> 2 || (v5 = a3, v4 != a3[1] - *a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] Input data size doesn't match.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v6 = (v4 >> 2) & 0x7FFFFFFF;
  v30 = v4 >> 2;
  if ((v4 >> 2) < 1)
  {
    v20 = 0;
    v19 = 0;
  }

  else
  {
    v7 = a2;
    v8 = a1;
    v28 = v4;
    v9 = 0;
    do
    {
      LODWORD(v38) = *(*v8 + 4 * v9);
      v10 = *v7 + 272 * v9;
      OUBox3d::OUBox3d(&v39, v10);
      v11 = *(v10 + 224);
      v48 = *(v10 + 232);
      v47 = v11;
      std::set<int>::set[abi:ne200100](v49, v10 + 240);
      v50 = *(*v5 + 4 * v9);
      if (v36 >= v37)
      {
        v13 = 0x86BCA1AF286BCA1BLL * ((v36 - v35) >> 4) + 1;
        if (v13 > 0xD79435E50D7943)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        if (0xD79435E50D79436 * ((v37 - v35) >> 4) > v13)
        {
          v13 = 0xD79435E50D79436 * ((v37 - v35) >> 4);
        }

        if (0x86BCA1AF286BCA1BLL * ((v37 - v35) >> 4) >= 0x6BCA1AF286BCA1)
        {
          v14 = 0xD79435E50D7943;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 <= 0xD79435E50D7943)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v15 = 16 * ((v36 - v35) >> 4);
        std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v15, &v38);
        v16 = v35;
        if (v36 != v35)
        {
          v17 = v35;
          v18 = (v15 + v35 - v36);
          do
          {
            std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v18, v17);
            v17 += 76;
            v18 += 304;
          }

          while (v17 != v36);
          v7 = a2;
          v5 = a3;
          do
          {
            std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::destroy[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v16);
            v16 += 76;
          }

          while (v16 != v36);
          v16 = v35;
        }

        v12 = (v15 + 304);
        v35 = (16 * ((v36 - v35) >> 4) + v35 - v36);
        v36 = (v15 + 304);
        v37 = 0;
        if (v16)
        {
          operator delete(v16);
        }

        v8 = a1;
      }

      else
      {
        std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v36, &v38);
        v12 = v36 + 76;
      }

      v36 = v12;
      std::__tree<int>::destroy(v49, v49[1]);

      if (__p)
      {
        operator delete(__p);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ++v9;
    }

    while (v9 != v6);
    v19 = v35;
    v20 = v36;
    v4 = v28;
  }

  v21 = 126 - 2 * __clz(0x86BCA1AF286BCA1BLL * ((v20 - v19) >> 4));
  if (v20 == v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,false>(v19, v20, v22, 1);
  v38 = 0uLL;
  v23 = (v4 >> 2);
  v39.var1 = 0;
  std::vector<OU3DKitchenObject>::reserve(&v38, v23);
  memset(&v34, 0, sizeof(v34));
  std::vector<int>::reserve(&v34, v23);
  if (v30 >= 1)
  {
    v24 = 72;
    do
    {
      std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v38, &v35[v24 - 68]);
      std::vector<int>::push_back[abi:ne200100](&v34.__begin_, &v35[v24]);
      v24 += 76;
      --v6;
    }

    while (v6);
  }

  *a4 = v38;
  *(a4 + 16) = v39.var1;
  v39.var1 = 0;
  v38 = 0uLL;
  *(a4 + 24) = v34;
  v34.__begin_ = &v38;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v34);
  result = std::vector<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::~vector[abi:ne200100](&v35);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D1E46B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a21;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::~vector[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void *std::deque<OU3DKitchenObject>::push_back(uint64_t a1, OUBox3d *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 2 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<OU3DKitchenObject>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(a1, (*(v6 + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * (v8 & 0xF)), a2);
  ++*(a1 + 40);
  return result;
}

void *anonymous namespace::DequeEraseTarget@<X0>(void *result@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = a2[1];
  if (a2[2] != v4)
  {
    v5 = a2[4];
    v6 = (v4 + 8 * (v5 >> 4));
    v7 = *v6 + 272 * (v5 & 0xF);
    v8 = *(v4 + (((a2[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((*(a2 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      v9 = result;
      do
      {
        if (*(v7 + 232) != v9)
        {
          result = std::deque<OU3DKitchenObject>::push_back(a3, v7);
        }

        v7 += 272;
        if (v7 - *v6 == 4352)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
    }
  }

  return result;
}

BOOL OU3DKitchenObjectMerger::IsValidCabinet(OU3DKitchenObjectMerger *this, float32x4_t *a2, float a3)
{
  if (a2[4].f32[2] < a2->f32[2])
  {
    return 0;
  }

  v4 = vsubq_f32(*a2, a2[3]);
  v5 = vmulq_f32(v4, v4);
  if (sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) < a3)
  {
    return 0;
  }

  box3dToCentroidSizeAngle(a2, __p);
  v7 = *(__p[0] + 5);
  if (v7 >= *(__p[0] + 4))
  {
    v7 = *(__p[0] + 4);
  }

  if (v7 >= *(__p[0] + 3))
  {
    v7 = *(__p[0] + 3);
  }

  v6 = v7 >= a3;
  __p[1] = __p[0];
  operator delete(__p[0]);
  return v6;
}

void OU3DKitchenObject::~OU3DKitchenObject(OU3DKitchenObject *this)
{
  std::__tree<int>::destroy(this + 240, *(this + 31));

  v2 = *(this + 23);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }
}

uint64_t OU3DKitchenObjectMerger::AddNonIntersectingOldDetections(OU3DKitchenObjectMerger *this)
{
  v1 = this;
  v32[4] = *MEMORY[0x277D85DE8];
  v2 = -252645135 * ((this->old_cabinets_.__end_ - this->old_cabinets_.__begin_) >> 4);
  p_new_cabinets = &this->new_cabinets_;
  begin = this->new_cabinets_.__begin_;
  end = this->new_cabinets_.__end_;
  v18 = 0u;
  v19 = 0u;
  LODWORD(v20) = 1065353216;
  LODWORD(v21) = 0;
  if (v2 <= 0)
  {
    memset(&v22, 0, 24);
  }

  else
  {
    v6 = 0;
    v7 = (end - begin) >> 4;
    v8 = -252645135 * v7;
    v9 = (0xF0F0F0F0F0F0F0F1 * v7) & 0x7FFFFFFF;
    do
    {
      if (v8 < 1)
      {
LABEL_8:
        v12 = *v1 + 272 * v6;
        OUBox3d::OUBox3d(&v22, v12);
        v13 = *(v12 + 224);
        v31 = *(v12 + 232);
        v30 = v13;
        std::set<int>::set[abi:ne200100](v32, v12 + 240);
        v14 = [@"offline" copy];
        v15 = v25;
        v25 = v14;

        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](p_new_cabinets, &v22);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v18, &v21);
        std::__tree<int>::destroy(v32, v32[1]);

        if (__p)
        {
          operator delete(__p);
        }

        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }
      }

      else
      {
        v10 = 0;
        v11 = v9;
        while (1)
        {
          LOBYTE(this) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (*v1 + 272 * v21), (v1[3] + v10));
          if (this)
          {
            break;
          }

          v10 += 272;
          if (!--v11)
          {
            v6 = v21;
            goto LABEL_8;
          }
        }
      }

      v6 = v21 + 1;
      LODWORD(v21) = v6;
    }

    while (v6 < v2);
    memset(&v22, 0, 24);
    LODWORD(v21) = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v18, &v21))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v22, (*v1 + 272 * v21));
      }

      LODWORD(v21) = v21 + 1;
    }

    while (v21 < v2);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(v1);
  *v1 = *&v22.var1;
  v1[2] = v22.var3;
  v21 = &v22;
  memset(&v22, 0, 24);
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v21);
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v18);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D1E4C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, OUBox3d *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15)
{
  a14 = &a15;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OU3DKitchenObject>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(a1, *(a1 + 8), a2);
    result = v3 + 272;
    *(a1 + 8) = v3 + 272;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t OU3DKitchenObjectMerger::RemoveDuplicateFusedCabinets(OU3DKitchenObjectMerger *this)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 1065353216;
  p_fused_cabinets = &this->fused_cabinets_;
  v3 = -252645135 * ((this->fused_cabinets_.__end_ - this->fused_cabinets_.__begin_) >> 4);
  LODWORD(v13) = 0;
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    do
    {
      v4 = 0;
      v9 = 0;
      do
      {
        if (v13 != v4 && !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v10, &v9))
        {
          box3dIou((*p_fused_cabinets + 272 * v13), (*p_fused_cabinets + 272 * v9), 0, &v7);
          if (*&v8 > 0.5)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v10, &v13);
          }
        }

        v4 = v9 + 1;
        v9 = v4;
      }

      while (v4 < v3);
      LODWORD(v13) = v13 + 1;
    }

    while (v13 < v3);
    v5 = *(&v11 + 1);
  }

  v7 = 0uLL;
  v8 = 0;
  std::vector<OU3DKitchenObject>::reserve(&v7, v3 - v5);
  LODWORD(v13) = 0;
  if (v3 >= 1)
  {
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v10, &v13))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v7, (*p_fused_cabinets + 272 * v13));
      }

      LODWORD(v13) = v13 + 1;
    }

    while (v13 < v3);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(p_fused_cabinets);
  *&this->fused_cabinets_.__begin_ = v7;
  this->fused_cabinets_.__cap_ = v8;
  v8 = 0;
  v7 = 0uLL;
  v13 = &v7;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v13);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v10);
}

void sub_25D1E4E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 56) = &a9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100]((v17 - 56));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

void *std::vector<OU3DKitchenObject>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D1E4F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t OU3DKitchenObjectMerger::RemoveDuplicateTableCabinet(OU3DKitchenObjectMerger *this)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  p_other_objects = &this->other_objects_;
  v3 = -252645135 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  begin = this->fused_cabinets_.__begin_;
  end = this->fused_cabinets_.__end_;
  v16 = 0;
  if (v3 <= 0)
  {
    v14 = 0uLL;
    v15 = 0;
  }

  else
  {
    v6 = 0;
    v7 = -252645135 * ((end - begin) >> 4);
    do
    {
      v8 = *p_other_objects;
      v20 = @"Table";
      v15 = 0;
      v14 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v14, &v20, &v21, 1uLL);
      v9 = v14;
      if (v14 == *(&v14 + 1))
      {
LABEL_7:
        v19 = &v14;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v19);
      }

      else
      {
        v10 = (v8 + 272 * v6);
        while (v10[8].i64[0] != *v9)
        {
          if (++v9 == *(&v14 + 1))
          {
            goto LABEL_7;
          }
        }

        v19 = &v14;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v19);

        if (v7 >= 1)
        {
          v11 = 0;
          do
          {
            box3dIou((this->fused_cabinets_.__begin_ + v11), v10, 0, &v14);
            if (*(&v14 + 3) > 0.5)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v17, &v16);
            }

            v11 += 272;
          }

          while (272 * v7 != v11);
        }
      }

      v6 = v16 + 1;
      v16 = v6;
    }

    while (v6 < v3);
    v14 = 0uLL;
    v15 = 0;
    LODWORD(v19) = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v17, &v19))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v14, (*p_other_objects + 272 * v19));
      }

      LODWORD(v19) = v19 + 1;
    }

    while (v19 < v3);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(p_other_objects);
  *&this->other_objects_.__begin_ = v14;
  this->other_objects_.__cap_ = v15;
  v15 = 0;
  v14 = 0uLL;
  v19 = &v14;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v19);
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D1E5210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

uint64_t OU3DKitchenObjectMerger::RemoveDuplicateWasherCabinet(OU3DKitchenObjectMerger *this)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  p_fused_cabinets = &this->fused_cabinets_;
  v3 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  v4 = -252645135 * ((this->fused_cabinets_.__end_ - this->fused_cabinets_.__begin_) >> 4);
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = v3 & 0x7FFFFFFF;
    do
    {
      begin = this->other_objects_.__begin_;
      v18 = @"Washer";
      v14 = 0;
      v13 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v13, &v18, &v19, 1uLL);
      v8 = v13;
      if (v13 == *(&v13 + 1))
      {
LABEL_7:
        v17 = &v13;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      else
      {
        v9 = (begin + 272 * v5);
        while (v9[8].i64[0] != *v8)
        {
          if (++v8 == *(&v13 + 1))
          {
            goto LABEL_7;
          }
        }

        v17 = &v13;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v17);

        LODWORD(v17) = 0;
        if (v4 > 0)
        {
          for (i = 0; i < v4; LODWORD(v17) = i)
          {
            box3dIou(v9, (*p_fused_cabinets + 272 * i), 0, &v13);
            if (*&v14 > 0.5)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v15, &v17);
            }

            i = v17 + 1;
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v13 = 0uLL;
  v14 = 0;
  LODWORD(v17) = 0;
  if (v4 >= 1)
  {
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v15, &v17))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v13, (*p_fused_cabinets + 272 * v17));
      }

      LODWORD(v17) = v17 + 1;
    }

    while (v17 < v4);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(p_fused_cabinets);
  *&this->fused_cabinets_.__begin_ = v13;
  this->fused_cabinets_.__cap_ = v14;
  v14 = 0;
  v13 = 0uLL;
  v17 = &v13;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v17);
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v15);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D1E54B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = &a9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a20);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::RemoveLargePotentialFPNewCabinets(OU3DKitchenObjectMerger *this)
{
  v9 = 0uLL;
  v10 = 0;
  begin = this->new_cabinets_.__begin_;
  end = this->new_cabinets_.__end_;
  for (i = &this->new_cabinets_; begin != end; begin = (begin + 272))
  {
    if ((*(begin + 18) - *(begin + 2)) > 1.2)
    {
      v5 = this->old_cabinets_.__begin_;
      v6 = this->old_cabinets_.__end_;
      v7 = 0.0;
      while (v5 != v6)
      {
        box3dIou(v5, begin, 0, v8);
        v7 = v7 + *(v8 + 1);
        v5 = (v5 + 272);
      }

      if ((v7 / boxVolume(begin)) < 0.6)
      {
        continue;
      }
    }

    std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v9, begin);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(i);
  *&this->new_cabinets_.__begin_ = v9;
  this->new_cabinets_.__cap_ = v10;
  v10 = 0;
  v9 = 0uLL;
  v8[0] = &v9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](v8);
}

void sub_25D1E5624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a15;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::Merge(OU3DKitchenObjectMerger *this)
{
  OU3DKitchenObjectMerger::RemoveLargePotentialFPNewCabinets(this);
  OU3DKitchenObjectMerger::AlignNewCabinetsExtentsWithOldDetections(this);
  OU3DKitchenObjectMerger::AlignApplianceWithNewCabinets(this);
  OU3DKitchenObjectMerger::AlignStoveWithOven(this);
  OU3DKitchenObjectMerger::AlignSinkWithDishwasher(this);
  OU3DKitchenObjectMerger::AddNonIntersectingOldDetections(this);
  OU3DKitchenObjectMerger::FuseAndCarve(this);
  OU3DKitchenObjectMerger::RemoveDuplicateFusedCabinets(this);
  OU3DKitchenObjectMerger::RemoveDuplicateTableCabinet(this);
  OU3DKitchenObjectMerger::RemoveDuplicateWasherCabinet(this);
  OU3DKitchenObjectMerger::UnifyHeightsAlignObjects(this);
  OU3DKitchenObjectMerger::ComputeGroupIds(this);

  OU3DKitchenObjectMerger::AssignUUIDForFusedObjects(this);
}

void OU3DKitchenObjectMerger::AlignNewCabinetsExtentsWithOldDetections(OU3DKitchenObjectMerger *this)
{
  v121[5] = *MEMORY[0x277D85DE8];
  v1 = 0xF0F0F0F0F0F0F0F1 * ((this->new_cabinets_.__end_ - this->new_cabinets_.__begin_) >> 4);
  if (v1 < 1)
  {
    goto LABEL_86;
  }

  v2 = this;
  v3 = 0;
  v68 = v1 & 0x7FFFFFFF;
  do
  {
    v4 = v2->new_cabinets_.__begin_ + 272 * v3;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v5 = *(v4 + 48);
    v70 = v5;
    v71 = *(v4 + 16);
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v2->old_cabinets_.__end_ - v2->old_cabinets_.__begin_) >> 4);
    v78 = *(v4 + 32);
    v7 = vsub_f32(*v78.f32, *v71.f32);
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = v6 & 0x7FFFFFFF;
      do
      {
        begin = v2->old_cabinets_.__begin_;
        this = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (v2->old_cabinets_.__begin_ + v8), v4);
        if (this)
        {
          v72 = *(begin + v8 + 16);
          v75 = *(begin + v8 + 32);
          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v93, (begin + v8));
          LODWORD(v111.var1) = 2;
          std::vector<int>::push_back[abi:ne200100](&v90, &v111);
          v11 = vsubq_f32(v78, v75);
          v12 = sqrtf(vaddv_f32(*&vmulq_f32(v11, v11)));
          if (vaddv_f32(vmul_f32(v7, *v11.f32)) >= 0.0)
          {
            v13 = v12;
          }

          else
          {
            v13 = -v12;
          }

          *&v111.var1 = v13;
          std::vector<float>::push_back[abi:ne200100](&v87, &v111);
          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v93, (begin + v8));
          LODWORD(v100.var1) = 1;
          std::vector<int>::push_back[abi:ne200100](&v90, &v100);
          v14 = vsubq_f32(v78, v72);
          v15 = sqrtf(vaddv_f32(*&vmulq_f32(v14, v14)));
          if (vaddv_f32(vmul_f32(v7, *v14.f32)) >= 0.0)
          {
            v16 = v15;
          }

          else
          {
            v16 = -v15;
          }

          *&v100.var1 = v16;
          std::vector<float>::push_back[abi:ne200100](&v87, &v100);
        }

        v8 += 272;
        --v9;
      }

      while (v9);
    }

    v17 = 0xF0F0F0F0F0F0F0F1 * ((v2->other_objects_.__end_ - v2->other_objects_.__begin_) >> 4);
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = v17 & 0x7FFFFFFF;
      do
      {
        v20 = v2->other_objects_.__begin_;
        LODWORD(this) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (v20 + v18), v4);
        if (this)
        {
          v21 = vsubq_f32(*(v20 + v18), *(v20 + v18 + 16));
          v22 = vmulq_f32(v21, v21);
          v23 = vsubq_f32(*v4, *(v4 + 16));
          v24 = vmulq_f32(v23, v23);
          *v22.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v22.i8), vzip2_s32(*v24.i8, *v22.i8))));
          if (vsub_f32(*v22.i8, vdup_lane_s32(*v22.i8, 1)).f32[0] < 0.3)
          {
            v73 = *(v20 + v18 + 16);
            v76 = *(v20 + v18 + 32);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v93, (v20 + v18));
            LODWORD(v111.var1) = 2;
            std::vector<int>::push_back[abi:ne200100](&v90, &v111);
            v25 = vsubq_f32(v78, v76);
            v26 = sqrtf(vaddv_f32(*&vmulq_f32(v25, v25)));
            if (vaddv_f32(vmul_f32(v7, *v25.f32)) >= 0.0)
            {
              v27 = v26;
            }

            else
            {
              v27 = -v26;
            }

            *&v111.var1 = v27;
            std::vector<float>::push_back[abi:ne200100](&v87, &v111);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v93, (v20 + v18));
            LODWORD(v100.var1) = 1;
            std::vector<int>::push_back[abi:ne200100](&v90, &v100);
            v28 = vsubq_f32(v78, v73);
            v29 = sqrtf(vaddv_f32(*&vmulq_f32(v28, v28)));
            if (vaddv_f32(vmul_f32(v7, *v28.f32)) >= 0.0)
            {
              v30 = v29;
            }

            else
            {
              v30 = -v29;
            }

            *&v100.var1 = v30;
            std::vector<float>::push_back[abi:ne200100](&v87, &v100);
          }
        }

        v18 += 272;
        --v19;
      }

      while (v19);
    }

    if (v93 == v94)
    {
      goto LABEL_76;
    }

    v85 = 0uLL;
    var3 = 0;
    OU3DKitchenObjectMerger::SortBasedOnDistance(&v87, &v93, &v90, &v111);
    std::vector<OU3DKitchenObject>::__vdeallocate(&v85);
    v85 = *&v111.var1;
    var4 = v111.var4;
    var3 = v111.var3;
    memset(&v111, 0, 48);
    v100.var1 = &v111;
    std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v100);
    std::__sort<std::__less<float,float> &,float *>();
    OUBox3d::OUBox3d(&v111, v4);
    v32 = *(v4 + 224);
    v120 = *(v4 + 232);
    v119 = v32;
    std::set<int>::set[abi:ne200100](v121, v4 + 240);
    OUBox3d::OUBox3d(&v100, v4);
    v77 = v3;
    v33 = *(v4 + 224);
    v109 = *(v4 + 232);
    v108 = v33;
    std::set<int>::set[abi:ne200100](v110, v4 + 240);
    v34 = 0xF0F0F0F0F0F0F0F1 * ((*(&v85 + 1) - v85) >> 4);
    if (v34 < 1)
    {
      goto LABEL_65;
    }

    v35 = 0;
    v36 = v34 & 0x7FFFFFFF;
    v37 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
    do
    {
      v38 = v85;
      v39 = @"Cabinet";
      v99 = v39;
      v84 = 0;
      v83 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v83, &v99, &v100, 1uLL);
      v40 = v38 + 272 * v35;
      v41 = v83;
      if (v83 == *(&v83 + 1))
      {
        goto LABEL_36;
      }

      while (*(v40 + 128) != *v41)
      {
        if (++v41 == *(&v83 + 1))
        {
          goto LABEL_36;
        }
      }

      if (var4[v35] != 2)
      {
LABEL_36:
        v80 = &v83;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);
      }

      else
      {
        v42 = *(v87 + v35) < 0.0;
        v80 = &v83;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);

        if (v42)
        {
          goto LABEL_47;
        }
      }

      if (*(v87 + v35) > 0.0 && var4[v35] == 2)
      {
        v98 = v39;
        v84 = 0;
        v83 = 0uLL;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v83, &v98, &v99, 1uLL);
        v43 = v83;
        if (v83 == *(&v83 + 1))
        {
LABEL_42:
          v44 = vsubq_f32(*(v40 + 16), v78);
          v45 = sqrtf(vaddv_f32(*&vmulq_f32(v44, v44))) < v37;
          v80 = &v83;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);

          if (!v45)
          {
            goto LABEL_46;
          }
        }

        else
        {
          while (*(v40 + 128) != *v43)
          {
            if (++v43 == *(&v83 + 1))
            {
              goto LABEL_42;
            }
          }

          v80 = &v83;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);
        }

        v46 = vsubq_f32(*(v40 + 32), v78);
        if (sqrtf(vaddv_f32(*&vmulq_f32(v46, v46))) < 1.0)
        {
          OUBox3d::operator=(&v111, v40);
          v65 = *(v40 + 224);
          v120 = *(v40 + 232);
          v119 = v65;
          if (&v111 != v40)
          {
            std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v121, *(v40 + 240), (v40 + 248));
          }

          goto LABEL_47;
        }
      }

LABEL_46:
      ++v35;
    }

    while (v35 != v36);
    while (1)
    {
LABEL_47:
      v47 = v36;
      v48 = v85;
      v49 = v39;
      v97 = v49;
      v84 = 0;
      v83 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v83, &v97, &v98, 1uLL);
      --v36;
      v50 = v48 + 272 * (v47 - 1);
      v51 = v83;
      if (v83 == *(&v83 + 1))
      {
        goto LABEL_54;
      }

      while (*(v50 + 128) != *v51)
      {
        if (++v51 == *(&v83 + 1))
        {
          goto LABEL_54;
        }
      }

      if (var4[v36] != 1)
      {
LABEL_54:
        v80 = &v83;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);
      }

      else
      {
        v52 = *(v87 + v36) > v37;
        v80 = &v83;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);

        if (v52)
        {
          goto LABEL_65;
        }
      }

      if (*(v87 + v36) >= v37 || var4[v36] != 1)
      {
        goto LABEL_64;
      }

      v96 = v49;
      v84 = 0;
      v83 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v83, &v96, &v97, 1uLL);
      v53 = v83;
      if (v83 == *(&v83 + 1))
      {
LABEL_60:
        v54 = vsubq_f32(*(v50 + 32), v71);
        v55 = sqrtf(vaddv_f32(*&vmulq_f32(v54, v54))) < v37;
        v80 = &v83;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);

        if (!v55)
        {
          goto LABEL_64;
        }
      }

      else
      {
        while (*(v50 + 128) != *v53)
        {
          if (++v53 == *(&v83 + 1))
          {
            goto LABEL_60;
          }
        }

        v80 = &v83;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v80);
      }

      v56 = vsubq_f32(*(v50 + 16), v71);
      if (sqrtf(vaddv_f32(*&vmulq_f32(v56, v56))) < 1.0)
      {
        break;
      }

LABEL_64:
      if (v47 <= 1)
      {
        goto LABEL_65;
      }
    }

    OUBox3d::operator=(&v100, v50);
    v66 = *(v50 + 224);
    v109 = *(v50 + 232);
    v108 = v66;
    if (&v100 != v50)
    {
      std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v110, *(v50 + 240), (v50 + 248));
    }

LABEL_65:
    *&v57 = v111.var5.var0;
    v74 = v100.var3;
    var1 = v100.var1;
    v82 = 0;
    *(&v57 + 1) = v111.var5.var2;
    v83 = v57;
    v80 = v78.i64[0];
    v81 = v71.i64[0];
    OU::intersect(&v83, &v80, &v82);
    v58 = v82;
    v79 = 0;
    *&v59 = v74;
    *(&v59 + 1) = var1;
    v83 = v59;
    v80 = v78.i64[0];
    v81 = v71.i64[0];
    OU::intersect(&v83, &v80, &v79);
    v60 = vsub_f32(v70, *v78.f32);
    v61 = vadd_f32(v60, v58);
    v62 = v79;
    v63 = vadd_f32(v60, v79);
    v64 = v82;
    *(v4 + 32) = v82;
    *(v4 + 48) = v61;
    *(v4 + 16) = v62;
    *v4 = v63;
    *(v4 + 96) = v64;
    *(v4 + 112) = v61;
    *(v4 + 80) = v62;
    *(v4 + 64) = v63;
    std::__tree<int>::destroy(v110, v110[1]);

    if (__p)
    {
      operator delete(__p);
    }

    if (v104)
    {
      v105 = v104;
      operator delete(v104);
    }

    std::__tree<int>::destroy(v121, v121[1]);
    if (v117)
    {
      operator delete(v117);
    }

    if (v115)
    {
      v116 = v115;
      operator delete(v115);
    }

    if (var4)
    {
      operator delete(var4);
    }

    v111.var1 = &v85;
    std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v111);
    v3 = v77;
LABEL_76:
    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    v111.var1 = &v93;
    std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v111);
    ++v3;
  }

  while (v3 != v68);
LABEL_86:
  v67 = *MEMORY[0x277D85DE8];
}

void sub_25D1E60A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, void *a37, uint64_t a38, void *a39, void *a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OU3DKitchenObject::~OU3DKitchenObject(&a49);
  OU3DKitchenObject::~OU3DKitchenObject(&STACK[0x250]);
  if (v49)
  {
    operator delete(v49);
  }

  STACK[0x250] = &a33;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  STACK[0x250] = &a42;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::UnifyHeightsAlignObjects(OU3DKitchenObjectMerger *this)
{
  begin = this->fused_cabinets_.__begin_;
  for (i = this->fused_cabinets_.__end_; begin != i; begin = (begin + 272))
  {
    ground_plane_height = this->ground_plane_height_;
    if (vabds_f32(*(begin + 2), ground_plane_height) < 0.3)
    {
      *(begin + 2) = ground_plane_height;
      *(begin + 6) = ground_plane_height;
      *(begin + 10) = ground_plane_height;
      *(begin + 14) = ground_plane_height;
    }

    ceil_plane_height = this->ceil_plane_height_;
    if (*(begin + 18) > ceil_plane_height)
    {
      *(begin + 18) = ceil_plane_height;
      *(begin + 22) = ceil_plane_height;
      *(begin + 26) = ceil_plane_height;
      *(begin + 30) = ceil_plane_height;
    }
  }

  v6 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      v9 = (this->other_objects_.__begin_ + 272 * v7);
      v10 = v9->f32[2];
      v11 = v9[4].f32[2];
      v12 = this->fused_cabinets_.__begin_;
      end = this->fused_cabinets_.__end_;
      while (1)
      {
        if (v12 == end)
        {
          v14 = 1;
          goto LABEL_16;
        }

        box3dIou(v9, v12, 0, v21);
        if (v22 > 0.1 && *(v12 + 18) <= v10)
        {
          break;
        }

        v12 = (v12 + 272);
      }

      v14 = 0;
LABEL_16:
      v15 = v8;
      v16 = 72;
      v17 = v7;
      while (1)
      {
        if (v17)
        {
          v18 = this->other_objects_.__begin_;
          box3dIou(v9, (v18 + v16 - 72), 0, v21);
          if (v22 > 0.1 && *(v18 + v16) <= v10)
          {
            break;
          }
        }

        --v17;
        v16 += 272;
        if (!--v15)
        {
          if (v14)
          {
            v19 = this->ground_plane_height_;
            if (vabds_f32(v10, v19) < 0.3)
            {
              v9->f32[2] = v19;
              v9[1].f32[2] = v19;
              v9[2].f32[2] = v19;
              v9[3].f32[2] = v19;
            }
          }

          break;
        }
      }

      v20 = this->ceil_plane_height_;
      if (v11 > v20)
      {
        v9[4].f32[2] = v20;
        v9[5].f32[2] = v20;
        v9[6].f32[2] = v20;
        v9[7].f32[2] = v20;
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void OU3DKitchenObjectMerger::ComputeGroupIds(OU3DKitchenObjectMerger *this)
{
  v47[0] = 0;
  v47[1] = 0;
  v45[1] = 0;
  v46 = v47;
  v44 = v45;
  v45[0] = 0;
  begin = this->other_objects_.__begin_;
  end = this->other_objects_.__end_;
  if (begin != end)
  {
    v4 = (begin + 240);
    v5 = (begin + 248);
    do
    {
      *&v42[0] = v4 - 2;
      v6 = (std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v46, v4 - 2) + 5);
      if (v4 != v6)
      {
        std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v6, *v4, v5);
      }

      v7 = (v4 + 8);
      v4 += 68;
      v5 += 34;
    }

    while (v7 != end);
  }

  v8 = this->fused_cabinets_.__begin_;
  for (i = this->fused_cabinets_.__end_; v8 != i; v8 = (v8 + 272))
  {
    *&v42[0] = v8 + 232;
    v10 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v46, v8 + 58);
    std::__tree<int>::__assign_unique<int const*>(v10 + 5, 0, 0);
  }

  v11 = v46;
  if (v46 != v47)
  {
    do
    {
      v12 = *(v11 + 40);
      if (v12 != (v11 + 48))
      {
        do
        {
          *&v42[0] = v12 + 7;
          v13 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v44, v12 + 7);
          std::__tree<int>::__emplace_unique_key_args<int,int const&>((v13 + 5), (v11 + 32));
          v14 = *(v12 + 1);
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = *(v12 + 2);
              v16 = *v15 == v12;
              v12 = v15;
            }

            while (!v16);
          }

          v12 = v15;
        }

        while (v15 != (v11 + 48));
      }

      v17 = *(v11 + 8);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v11 + 16);
          v16 = *v18 == v11;
          v11 = v18;
        }

        while (!v16);
      }

      v11 = v18;
    }

    while (v18 != v47);
  }

  v19 = v44;
  if (v44 != v45)
  {
    do
    {
      *&v42[0] = v19 + 8;
      v20 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v46, v19 + 8);
      if (v19 != v20)
      {
        std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v20 + 5, *(v19 + 5), v19 + 6);
      }

      v21 = *(v19 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v19 + 2);
          v16 = *v22 == v19;
          v19 = v22;
        }

        while (!v16);
      }

      v19 = v22;
    }

    while (v22 != v45);
  }

  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v23 = v46;
  if (v46 != v47)
  {
    v24 = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v42, (v23 + 32)))
      {
        v41[0] = 0;
        v41[1] = 0;
        v40 = v41;
        v25 = v40;
        if (v40 != v41)
        {
          do
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v42, v25 + 7);
            v26 = *(v25 + 1);
            if (v26)
            {
              do
              {
                v27 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v27 = *(v25 + 2);
                v16 = *v27 == v25;
                v25 = v27;
              }

              while (!v16);
            }

            v25 = v27;
          }

          while (v27 != v41);
        }

        v28 = this->fused_cabinets_.__begin_;
        v29 = this->fused_cabinets_.__end_;
        while (v28 != v29)
        {
          v30 = v41[0];
          if (v41[0])
          {
            v31 = *(v28 + 58);
            v32 = v41;
            do
            {
              if (*(v30 + 7) >= v31)
              {
                v32 = v30;
              }

              v30 = v30[*(v30 + 7) < v31];
            }

            while (v30);
            if (v32 != v41 && v31 >= *(v32 + 7))
            {
              *(v28 + 57) = v24;
              if ((v28 + 240) != &v40)
              {
                std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v28 + 30, v40, v41);
              }

              std::__tree<int>::__erase_unique<int>(v28 + 240, v28 + 58);
            }
          }

          v28 = (v28 + 272);
        }

        v33 = this->other_objects_.__begin_;
        v34 = this->other_objects_.__end_;
        while (v33 != v34)
        {
          v35 = v41[0];
          if (v41[0])
          {
            v36 = *(v33 + 58);
            v37 = v41;
            do
            {
              if (*(v35 + 7) >= v36)
              {
                v37 = v35;
              }

              v35 = v35[*(v35 + 7) < v36];
            }

            while (v35);
            if (v37 != v41 && v36 >= *(v37 + 7))
            {
              *(v33 + 57) = v24;
              if ((v33 + 240) != &v40)
              {
                std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v33 + 30, v40, v41);
              }

              std::__tree<int>::__erase_unique<int>(v33 + 240, v33 + 58);
            }
          }

          v33 = (v33 + 272);
        }

        ++v24;
        std::__tree<int>::destroy(&v40, v41[0]);
      }

      v38 = *(v23 + 8);
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = *(v23 + 16);
          v16 = *v39 == v23;
          v23 = v39;
        }

        while (!v16);
      }

      v23 = v39;
    }

    while (v39 != v47);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v42);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&v44, v45[0]);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&v46, v47[0]);
}

void sub_25D1E681C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23)
{
  std::__tree<int>::destroy(&a10, a11);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a13);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::AssignUUIDForFusedObjects(OU3DKitchenObjectMerger *this)
{
  begin = this->fused_cabinets_.__begin_;
  for (i = this->fused_cabinets_.__end_; begin != i; begin = (begin + 272))
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = *(begin + 18);
    *(begin + 18) = v3;
  }
}

void OU3DKitchenObjectMerger::SetDetectionAndPointCloud(OU3DKitchenObjectMerger *a1, const OUBox3d **a2, const OUBox3d **a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  OU3DKitchenObjectMerger::Reset(a1);
  a1->ground_plane_height_ = OU3DKitchenObjectMerger::ComputePlaneHeight(0.05, v7, a4);
  a1->ceil_plane_height_ = OU3DKitchenObjectMerger::ComputePlaneHeight(0.95, v8, a4);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if ([v9[1].var6.var0 isEqualToString:@"online"])
      {
        v12 = vabds_f32(v9->var2, a1->ground_plane_height_) < 0.3;
        v27[0] = 0;
        v27[1] = 0;
        v26 = v27;
        OU3DKitchenObject::OU3DKitchenObject(&v31, v9, v12, -1, v11, &v26);
        std::__tree<int>::destroy(&v26, v27[0]);
        v30 = @"Cabinet";
        v24 = 0;
        v25 = 0;
        v23 = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v23, &v30, &v31, 1uLL);
        v13 = v23;
        if (v23 == v24)
        {
LABEL_7:
          v28 = &v23;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);

          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&a1->other_objects_, &v31);
        }

        else
        {
          while (v9[1].var5.var0 != *v13)
          {
            if (++v13 == v24)
            {
              goto LABEL_7;
            }
          }

          v28 = &v23;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);

          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](a1, &v31);
        }

        std::__tree<int>::destroy(&v39, v40);

        if (__p)
        {
          operator delete(__p);
        }

        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        ++v11;
      }

      v9 = (v9 + 224);
    }

    while (v9 != v10);
  }

  v14 = *a3;
  v15 = a3[1];
  if (*a3 != v15)
  {
    do
    {
      if ([v14[1].var6.var0 isEqualToString:@"offline"])
      {
        v16 = vabds_f32(v14->var2, a1->ground_plane_height_) < 0.3;
        v22[0] = 0;
        v22[1] = 0;
        v21 = v22;
        OU3DKitchenObject::OU3DKitchenObject(&v31, v14, v16, -1, v11, &v21);
        std::__tree<int>::destroy(&v21, v22[0]);
        v29 = @"Cabinet";
        v24 = 0;
        v25 = 0;
        v23 = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v23, &v29, &v30, 1uLL);
        v17 = v23;
        if (v23 == v24)
        {
LABEL_22:
          v28 = &v23;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);

          p_other_objects = &a1->other_objects_;
        }

        else
        {
          while (v14[1].var5.var0 != *v17)
          {
            if (++v17 == v24)
            {
              goto LABEL_22;
            }
          }

          v28 = &v23;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);

          p_other_objects = &a1->new_cabinets_;
        }

        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](p_other_objects, &v31);
        std::__tree<int>::destroy(&v39, v40);

        if (__p)
        {
          operator delete(__p);
        }

        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        ++v11;
      }

      v14 = (v14 + 224);
    }

    while (v14 != v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo::~SortInfo(uint64_t a1)
{
  std::__tree<int>::destroy(a1 + 256, *(a1 + 264));

  v2 = *(a1 + 200);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void **std::vector<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 304;
        std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::destroy[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t OU3DKitchenObjectMerger::GetOutput@<X0>(OU3DKitchenObjectMerger *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<OUBox3d>::reserve(a2, 0xF0F0F0F0F0F0F0F1 * ((this->fused_cabinets_.__end_ - this->fused_cabinets_.__begin_) >> 4) - 0xF0F0F0F0F0F0F0FLL * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4));
  begin = this->other_objects_.__begin_;
  end = this->other_objects_.__end_;
  while (begin != end)
  {
    result = std::vector<OUBox3d>::push_back[abi:ne200100](a2, begin);
    begin = (begin + 272);
  }

  v8 = this->fused_cabinets_.__begin_;
  v7 = this->fused_cabinets_.__end_;
  while (v8 != v7)
  {
    result = std::vector<OUBox3d>::push_back[abi:ne200100](a2, v8);
    v8 = (v8 + 272);
  }

  return result;
}

void sub_25D1E6F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<OUBox3d>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x124924924924925)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D1E6FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OUBox3d>::push_back[abi:ne200100](uint64_t *a1, const OUBox3d *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(a1, a2);
  }

  else
  {
    OUBox3d::OUBox3d(a1[1], a2);
    result = v3 + 224;
    a1[1] = v3 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t *anonymous namespace::Dfs(uint64_t *result, int a2, uint64_t a3)
{
  v14 = a2;
  if (a3)
  {
    v4 = result;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a3, &v14);
    result = std::map<int,std::set<int>>::at(v4, &v14);
    v5 = result + 1;
    v6 = *result;
    if (*result != result + 1)
    {
      v7 = (a3 + 8);
      do
      {
        v8 = *v7;
        v9 = *(v6 + 7);
        if (!*v7)
        {
          goto LABEL_11;
        }

        v10 = a3 + 8;
        do
        {
          if (*(v8 + 28) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v9));
        }

        while (v8);
        if (v10 == v7 || v9 < *(v10 + 28))
        {
LABEL_11:
        }

        v11 = v6[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v6[2];
            v13 = *v12 == v6;
            v6 = v12;
          }

          while (!v13);
        }

        v6 = v12;
      }

      while (v12 != v5);
    }
  }

  return result;
}

uint64_t std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(a1, i))
  {
    i -= 272;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(uint64_t a1, uint64_t a2)
{
  std::__tree<int>::destroy(a2 + 240, *(a2 + 248));

  v3 = *(a2 + 184);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a2 + 160);
  if (v4)
  {
    *(a2 + 168) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 128);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D1E73FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_25D1E74B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUBox3d::OUBox3d(OUBox3d *this, const OUBox3d *a2)
{
  v4 = *&a2->var1;
  v5 = *&a2->var3;
  v6 = *&a2->var5.var2;
  *&this->var5.var0 = *&a2->var5.var0;
  *&this->var5.var2 = v6;
  *&this->var1 = v4;
  *&this->var3 = v5;
  v7 = *&a2->var6.var1;
  v8 = *&a2->var7;
  v9 = *&a2[1].var3;
  *&this[1].var1 = *&a2[1].var1;
  *&this[1].var3 = v9;
  *&this->var6.var1 = v7;
  *&this->var7 = v8;
  this[1].var5.var0 = a2[1].var5.var0;
  LODWORD(this[1].var5.var1) = a2[1].var5.var1;
  this[1].var5.var2 = a2[1].var5.var2;
  v10 = a2[1].var6.var0;
  this[1].var6.var1 = 0;
  this[1].var6.var0 = v10;
  this[1].var6.var2 = 0;
  this[1].var7 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[1].var6.var1, a2[1].var6.var1, a2[1].var6.var2, (a2[1].var6.var2 - a2[1].var6.var1) >> 2);
  std::vector<BOOL>::vector(&this[1].var8, &a2[1].var8);
  this[2].var3 = a2[2].var3;
  LOWORD(this[2].var4) = a2[2].var4;
}

void sub_25D1E760C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 168) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D1E76A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::vector<BOOL>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject const&>(uint64_t a1, OUBox3d *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(a1, (272 * v2), a2);
  v15 = 272 * v2 + 272;
  v7 = *(a1 + 8);
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(&v13);
  return v12;
}

void sub_25D1E7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(int a1, OUBox3d *this, OUBox3d *a3)
{
  OUBox3d::OUBox3d(this, a3);
  var0 = a3[2].var5.var0;
  LODWORD(this[2].var5.var1) = a3[2].var5.var1;
  this[2].var5.var0 = var0;
  return std::set<int>::set[abi:ne200100](&this[2].var5.var2, &a3[2].var5.var2);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(a1, a4, v7);
      v7 += 17;
      a4 = v12 + 272;
      v12 += 272;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(a1, v5);
      v5 += 272;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a2 + 96) = a3[6];
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  v9 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a2 + 128) = v9;
  *(a2 + 136) = *(a3 + 34);
  v10 = a3[9];
  a3[9] = 0u;
  *(a2 + 144) = v10;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 160) = a3[10];
  v11 = *(a3 + 23);
  *(a2 + 176) = *(a3 + 22);
  *(a3 + 22) = 0;
  a3[10] = 0u;
  *(a2 + 184) = v11;
  *(a2 + 192) = a3[12];
  *(a3 + 184) = 0u;
  v12 = *(a3 + 26);
  *(a3 + 25) = 0;
  *(a3 + 26) = 0;
  *(a2 + 208) = v12;
  *(a2 + 216) = *(a3 + 108);
  v13 = *(a3 + 28);
  *(a2 + 232) = *(a3 + 58);
  *(a2 + 224) = v13;
  *(a2 + 240) = *(a3 + 30);
  v14 = a3 + 31;
  v15 = *(a3 + 31);
  *(a2 + 248) = v15;
  v16 = a2 + 248;
  v17 = *(a3 + 32);
  *(a2 + 256) = v17;
  if (v17)
  {
    *(v15 + 16) = v16;
    *(a3 + 30) = v14;
    *v14 = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    *(a2 + 240) = v16;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 272;
      std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<OU3DKitchenObject>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<OU3DKitchenObject>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OU3DKitchenObject>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 272;
    std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(v5, v4 - 272);
  }
}

void *std::set<int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<int>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<int>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject>(uint64_t a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(a1, 272 * v2, a2);
  v15 = 272 * v2 + 272;
  v7 = *(a1 + 8);
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(&v13);
  return v12;
}

void sub_25D1E84A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<OU3DKitchenObject>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

OUBox3d *OU3DKitchenObject::OU3DKitchenObject(OUBox3d *a1, const OUBox3d *a2, char a3, int a4, int a5, uint64_t a6)
{
  OUBox3d::OUBox3d(a1, a2);
  *(v11 + 224) = a3;
  *(v11 + 228) = a4;
  *(v11 + 232) = a5;
  std::set<int>::set[abi:ne200100]((v11 + 240), a6);
  return a1;
}

uint64_t std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(result + 48) = *(a2 + 48);
  *(result + 64) = v4;
  *(result + 16) = v2;
  *(result + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(result + 112) = *(a2 + 112);
  *(result + 128) = v7;
  *(result + 80) = v5;
  *(result + 96) = v6;
  v8 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(result + 144) = v8;
  *(result + 152) = *(a2 + 152);
  v9 = *(a2 + 160);
  *(a2 + 160) = 0u;
  *(result + 160) = v9;
  *(result + 176) = 0;
  *(result + 184) = 0u;
  *(result + 176) = *(a2 + 176);
  v10 = *(a2 + 200);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(result + 200) = v10;
  *(result + 208) = *(a2 + 208);
  *(a2 + 200) = 0u;
  v11 = *(a2 + 224);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(result + 224) = v11;
  *(result + 232) = *(a2 + 232);
  v12 = *(a2 + 240);
  *(result + 248) = *(a2 + 248);
  *(result + 240) = v12;
  *(result + 256) = *(a2 + 256);
  v13 = result + 264;
  v14 = *(a2 + 264);
  v15 = *(a2 + 272);
  *(result + 264) = v14;
  *(result + 272) = v15;
  if (v15)
  {
    *(v14 + 16) = v13;
    *(a2 + 256) = a2 + 264;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }

  else
  {
    *(result + 256) = v13;
  }

  *(result + 288) = *(a2 + 288);
  return result;
}

void std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::destroy[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(uint64_t a1)
{
  std::__tree<int>::destroy(a1 + 256, *(a1 + 264));

  v2 = *(a1 + 200);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 144);
}

void std::__introsort<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,false>(unint64_t a1, float *a2, uint64_t a3, char a4)
{
  v493 = *MEMORY[0x277D85DE8];
LABEL_2:
  v7 = (a2 - 76);
  v439 = (a2 - 228);
  v440 = (a2 - 152);
  v8 = a1;
  v444 = a2;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0x86BCA1AF286BCA1BLL * ((a2 - v8) >> 4);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        goto LABEL_278;
      }

      if (v10 == 2)
      {
        if (*v7 >= *a1)
        {
          goto LABEL_278;
        }

        goto LABEL_134;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      v151 = *(a1 + 304);
      v152 = *v7;
      if (v151 >= *a1)
      {
        if (v152 < v151)
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>((a1 + 304), v7);
          if (*(a1 + 304) < *a1)
          {
            v154 = (a1 + 304);
            v153 = a1;
            goto LABEL_136;
          }
        }

        goto LABEL_278;
      }

      if (v152 >= v151)
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, (a1 + 304));
        if (*v7 >= *(a1 + 304))
        {
          goto LABEL_278;
        }

        v153 = (a1 + 304);
LABEL_135:
        v154 = v7;
LABEL_136:
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v153, v154);
        goto LABEL_278;
      }

LABEL_134:
      v153 = a1;
      goto LABEL_135;
    }

    if (v10 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, (a1 + 304), (a1 + 608), v7);
      goto LABEL_278;
    }

    if (v10 == 5)
    {
      break;
    }

LABEL_10:
    if (v9 <= 7295)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v156 = a1 + 304;
          if ((a1 + 304) != a2)
          {
            v157 = 0;
            v158 = a1;
            do
            {
              v159 = v156;
              if (*(v158 + 304) < *v158)
              {
                v470 = *(v158 + 304);
                v160 = *(v158 + 400);
                v475 = *(v158 + 384);
                v476 = v160;
                v161 = *(v158 + 432);
                v477 = *(v158 + 416);
                v478 = v161;
                v162 = *(v158 + 336);
                v471 = *(v158 + 320);
                v472 = v162;
                v163 = *(v158 + 368);
                v473 = *(v158 + 352);
                v474 = v163;
                v164 = *(v158 + 448);
                *(v158 + 448) = 0;
                v479 = v164;
                v480 = *(v158 + 456);
                v165 = *(v158 + 480);
                v481 = *(v158 + 464);
                *v482 = v165;
                *(v158 + 464) = 0u;
                *(v158 + 480) = 0u;
                v166 = *(v158 + 504);
                v482[2] = *(v158 + 496);
                __p = v166;
                v484 = *(v158 + 512);
                *(v158 + 496) = 0u;
                *(v158 + 512) = 0u;
                v167 = *(v158 + 528);
                *(v158 + 528) = 0;
                v485 = v167;
                v486 = *(v158 + 536);
                v168 = *(v158 + 544);
                v488 = *(v158 + 552);
                v487 = v168;
                v169 = *(v158 + 568);
                v489 = *(v158 + 560);
                v490 = v169;
                v491 = *(v158 + 576);
                if (v491)
                {
                  v169[2] = &v490;
                  *(v158 + 560) = v158 + 568;
                  *(v158 + 568) = 0;
                  *(v158 + 576) = 0;
                }

                else
                {
                  v489 = &v490;
                }

                v492 = *(v158 + 592);
                v170 = *v158;
                v171 = v157;
                while (1)
                {
                  v172 = v171;
                  v173 = a1 + v171;
                  *(v173 + 304) = v170;
                  v174 = *(a1 + v171 + 96);
                  *(v173 + 384) = *(a1 + v171 + 80);
                  *(v173 + 400) = v174;
                  v175 = *(a1 + v171 + 128);
                  *(v173 + 416) = *(a1 + v171 + 112);
                  *(v173 + 432) = v175;
                  v176 = *(a1 + v171 + 32);
                  *(v173 + 320) = *(a1 + v171 + 16);
                  *(v173 + 336) = v176;
                  v177 = *(a1 + v171 + 64);
                  *(v173 + 352) = *(a1 + v171 + 48);
                  *(v173 + 368) = v177;
                  v178 = *(a1 + v171 + 144);
                  *(v173 + 144) = 0;
                  v179 = *(v173 + 448);
                  *(v173 + 448) = v178;

                  *(v173 + 456) = *(v173 + 152);
                  v180 = *(v173 + 160);
                  *(v173 + 160) = 0;
                  v181 = *(v173 + 464);
                  *(v173 + 464) = v180;

                  v182 = (a1 + v172);
                  v183 = *(a1 + v172 + 168);
                  v182[10].n128_u64[1] = 0;
                  v184 = *(a1 + v172 + 472);
                  v182[29].n128_u64[1] = v183;

                  std::vector<float>::__move_assign(&v182[30], v182 + 11);
                  std::vector<BOOL>::__move_assign(&v182[31].n128_i64[1], &v182[12].n128_i64[1]);
                  v185 = *(a1 + v172 + 224);
                  v182[14].n128_u64[0] = 0;
                  v186 = *(a1 + v172 + 528);
                  v182[33].n128_u64[0] = v185;

                  v187 = a1 + v172;
                  *(v187 + 536) = *(a1 + v172 + 232);
                  *(v187 + 544) = *(a1 + v172 + 240);
                  *(v187 + 552) = *(a1 + v172 + 248);
                  std::__tree<int>::__move_assign(a1 + v172 + 560, (a1 + v172 + 256));
                  *(v187 + 592) = *(v187 + 288);
                  if (!v172)
                  {
                    break;
                  }

                  v171 = v172 - 304;
                  v170 = *(v172 - 304 + a1);
                  if (v470 >= v170)
                  {
                    v188 = a1 + v172;
                    goto LABEL_155;
                  }
                }

                v188 = a1;
LABEL_155:
                *v188 = v470;
                v189 = v471;
                v190 = v472;
                v191 = v474;
                *(v187 + 48) = v473;
                *(v187 + 64) = v191;
                *(v187 + 16) = v189;
                *(v187 + 32) = v190;
                v192 = v475;
                v193 = v476;
                v194 = v478;
                *(v187 + 112) = v477;
                *(v187 + 128) = v194;
                *(v187 + 80) = v192;
                *(v187 + 96) = v193;
                v195 = v479;
                v479 = 0;
                v196 = *(v188 + 144);
                *(v188 + 144) = v195;

                *(v188 + 152) = v480;
                v197 = v481;
                *&v481 = 0;
                v198 = *(v188 + 160);
                *(v188 + 160) = v197;

                v199 = *(&v481 + 1);
                *(&v481 + 1) = 0;
                v200 = *(v188 + 168);
                *(v188 + 168) = v199;

                v201 = a1 + v172;
                v204 = *(v201 + 176);
                v203 = v201 + 176;
                v202 = v204;
                if (v204)
                {
                  *(v188 + 184) = v202;
                  operator delete(v202);
                  *v203 = 0;
                  *(v203 + 8) = 0;
                  *(v203 + 16) = 0;
                }

                *v203 = v482[0];
                *(v188 + 184) = *&v482[1];
                memset(v482, 0, sizeof(v482));
                v205 = *(v203 + 24);
                if (v205)
                {
                  operator delete(v205);
                  *(v203 + 24) = 0;
                  *(v203 + 32) = 0;
                  *(v203 + 40) = 0;
                }

                *(v203 + 24) = __p;
                *(v188 + 208) = v484;
                __p = 0;
                v484 = 0uLL;
                v206 = v485;
                v485 = 0;
                v207 = *(v188 + 224);
                *(v188 + 224) = v206;

                *(v188 + 232) = v486;
                v208 = v487;
                *(v203 + 72) = v488;
                *(v203 + 64) = v208;
                v209 = v188 + 264;
                std::__tree<int>::destroy(v203 + 80, *(v188 + 264));
                *(v203 + 80) = v489;
                v210 = v490;
                *(v188 + 264) = v490;
                v211 = v491;
                *(v188 + 272) = v491;
                if (v211)
                {
                  v212 = 0;
                  v210[2] = v209;
                  v489 = &v490;
                  v490 = 0;
                  v491 = 0;
                }

                else
                {
                  *(v203 + 80) = v209;
                  v212 = v490;
                }

                *(v188 + 288) = v492;
                std::__tree<int>::destroy(&v489, v212);

                if (__p)
                {
                  operator delete(__p);
                }

                if (v482[0])
                {
                  v482[1] = v482[0];
                  operator delete(v482[0]);
                }

                a2 = v444;
              }

              v156 = v159 + 304;
              v157 += 304;
              v158 = v159;
            }

            while ((v159 + 304) != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v390 = a1 + 304;
        if ((a1 + 304) != a2)
        {
          v391 = a1 - 304;
          do
          {
            v392 = v390;
            if (*(a1 + 304) < *a1)
            {
              v470 = *(a1 + 304);
              v393 = *(a1 + 400);
              v475 = *(a1 + 384);
              v476 = v393;
              v394 = *(a1 + 432);
              v477 = *(a1 + 416);
              v478 = v394;
              v395 = *(a1 + 336);
              v471 = *(a1 + 320);
              v472 = v395;
              v396 = *(a1 + 368);
              v473 = *(a1 + 352);
              v474 = v396;
              v397 = *(a1 + 448);
              *(a1 + 448) = 0;
              v479 = v397;
              v480 = *(a1 + 456);
              v398 = *(a1 + 480);
              v481 = *(a1 + 464);
              *v482 = v398;
              *(a1 + 464) = 0u;
              *(a1 + 480) = 0u;
              v399 = *(a1 + 504);
              v482[2] = *(a1 + 496);
              __p = v399;
              v484 = *(a1 + 512);
              *(a1 + 496) = 0u;
              *(a1 + 512) = 0u;
              v400 = *(a1 + 528);
              *(a1 + 528) = 0;
              v485 = v400;
              v486 = *(a1 + 536);
              v401 = *(a1 + 544);
              v488 = *(a1 + 552);
              v487 = v401;
              v402 = *(a1 + 568);
              v489 = *(a1 + 560);
              v490 = v402;
              v491 = *(a1 + 576);
              if (v491)
              {
                v402[2] = &v490;
                *(a1 + 560) = a1 + 568;
                *(a1 + 568) = 0;
                *(a1 + 576) = 0;
              }

              else
              {
                v489 = &v490;
              }

              v492 = *(a1 + 592);
              v403 = *a1;
              v404 = v391;
              do
              {
                *(v404 + 608) = v403;
                v405 = *(v404 + 400);
                *(v404 + 688) = *(v404 + 384);
                *(v404 + 704) = v405;
                v406 = *(v404 + 432);
                *(v404 + 720) = *(v404 + 416);
                *(v404 + 736) = v406;
                v407 = *(v404 + 336);
                *(v404 + 624) = *(v404 + 320);
                *(v404 + 640) = v407;
                v408 = *(v404 + 368);
                *(v404 + 656) = *(v404 + 352);
                *(v404 + 672) = v408;
                v409 = *(v404 + 448);
                *(v404 + 448) = 0;
                v410 = *(v404 + 752);
                *(v404 + 752) = v409;

                *(v404 + 760) = *(v404 + 456);
                v411 = *(v404 + 464);
                *(v404 + 464) = 0;
                v412 = *(v404 + 768);
                *(v404 + 768) = v411;

                v413 = *(v404 + 472);
                *(v404 + 472) = 0;
                v414 = *(v404 + 776);
                *(v404 + 776) = v413;

                std::vector<float>::__move_assign(v404 + 784, (v404 + 480));
                std::vector<BOOL>::__move_assign(v404 + 808, v404 + 504);
                v415 = *(v404 + 528);
                *(v404 + 528) = 0;
                v416 = *(v404 + 832);
                *(v404 + 832) = v415;

                *(v404 + 840) = *(v404 + 536);
                *(v404 + 848) = *(v404 + 544);
                *(v404 + 856) = *(v404 + 552);
                std::__tree<int>::__move_assign(v404 + 864, (v404 + 560));
                *(v404 + 896) = *(v404 + 592);
                v403 = *v404;
                v404 -= 304;
              }

              while (v470 < v403);
              *(v404 + 608) = v470;
              v417 = v471;
              v418 = v472;
              v419 = v474;
              *(v404 + 656) = v473;
              *(v404 + 672) = v419;
              *(v404 + 624) = v417;
              *(v404 + 640) = v418;
              v420 = v475;
              v421 = v476;
              v422 = v478;
              *(v404 + 720) = v477;
              *(v404 + 736) = v422;
              *(v404 + 688) = v420;
              *(v404 + 704) = v421;
              v423 = v479;
              v479 = 0;
              v424 = *(v404 + 752);
              *(v404 + 752) = v423;

              *(v404 + 760) = v480;
              v425 = v481;
              *&v481 = 0;
              v426 = *(v404 + 768);
              *(v404 + 768) = v425;

              v427 = *(&v481 + 1);
              *(&v481 + 1) = 0;
              v428 = *(v404 + 776);
              *(v404 + 776) = v427;

              v429 = *(v404 + 784);
              if (v429)
              {
                *(v404 + 792) = v429;
                operator delete(v429);
                *(v404 + 784) = 0;
                *(v404 + 792) = 0;
                *(v404 + 800) = 0;
              }

              *(v404 + 784) = *v482;
              *(v404 + 800) = v482[2];
              memset(v482, 0, sizeof(v482));
              v430 = *(v404 + 808);
              if (v430)
              {
                operator delete(v430);
                *(v404 + 808) = 0;
                *(v404 + 816) = 0;
                *(v404 + 824) = 0;
              }

              *(v404 + 808) = __p;
              *(v404 + 816) = v484;
              __p = 0;
              v484 = 0uLL;
              v431 = v485;
              v485 = 0;
              v432 = *(v404 + 832);
              *(v404 + 832) = v431;

              *(v404 + 840) = v486;
              v433 = v487;
              *(v404 + 856) = v488;
              *(v404 + 848) = v433;
              v434 = v404 + 872;
              std::__tree<int>::destroy(v404 + 864, *(v404 + 872));
              *(v404 + 864) = v489;
              v435 = v490;
              *(v404 + 872) = v490;
              v436 = v491;
              *(v404 + 880) = v491;
              if (v436)
              {
                v437 = 0;
                v435[2] = v434;
                v489 = &v490;
                v490 = 0;
                v491 = 0;
              }

              else
              {
                *(v404 + 864) = v434;
                v437 = v490;
              }

              *(v404 + 896) = v492;
              std::__tree<int>::destroy(&v489, v437);

              if (__p)
              {
                operator delete(__p);
              }

              if (v482[0])
              {
                v482[1] = v482[0];
                operator delete(v482[0]);
              }

              a2 = v444;
            }

            v390 = v392 + 304;
            v391 += 304;
            a1 = v392;
          }

          while ((v392 + 304) != a2);
        }
      }

      goto LABEL_278;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v213 = v11 >> 1;
        v214 = v11 >> 1;
        do
        {
          v215 = v214;
          if (v213 >= v214)
          {
            v216 = (2 * v214) | 1;
            v217 = a1 + 304 * v216;
            if (2 * v215 + 2 < v10 && *v217 < *(v217 + 304))
            {
              v217 += 304;
              v216 = 2 * v215 + 2;
            }

            v218 = a1 + 304 * v215;
            if (*v217 >= *v218)
            {
              v470 = *v218;
              v219 = *(v218 + 16);
              v220 = *(v218 + 32);
              v221 = *(v218 + 64);
              v473 = *(v218 + 48);
              v474 = v221;
              v471 = v219;
              v472 = v220;
              v222 = *(v218 + 80);
              v223 = *(v218 + 96);
              v224 = *(v218 + 128);
              v477 = *(v218 + 112);
              v478 = v224;
              v475 = v222;
              v476 = v223;
              v225 = *(v218 + 144);
              *(v218 + 144) = 0;
              v479 = v225;
              v480 = *(v218 + 152);
              v226 = *(v218 + 160);
              *(v218 + 160) = 0u;
              v481 = v226;
              *v482 = *(v218 + 176);
              v482[2] = *(v218 + 192);
              *(v218 + 192) = 0;
              *(v218 + 176) = 0u;
              __p = *(v218 + 200);
              v484 = *(v218 + 208);
              *(v218 + 200) = 0u;
              v227 = *(v218 + 224);
              *(v218 + 216) = 0;
              *(v218 + 224) = 0;
              v485 = v227;
              v486 = *(v218 + 232);
              v228 = *(v218 + 240);
              v488 = *(v218 + 248);
              v487 = v228;
              v489 = *(v218 + 256);
              v229 = *(v218 + 264);
              v490 = v229;
              v491 = *(v218 + 272);
              if (v491)
              {
                v229[2] = &v490;
                *(v218 + 256) = v218 + 264;
                *(v218 + 264) = 0;
                *(v218 + 272) = 0;
              }

              else
              {
                v489 = &v490;
              }

              v492 = *(v218 + 288);
              v230 = *v217;
              while (1)
              {
                v231 = v217;
                *v218 = v230;
                v232 = *(v217 + 16);
                v233 = *(v217 + 32);
                v234 = *(v217 + 64);
                *(v218 + 48) = *(v217 + 48);
                *(v218 + 64) = v234;
                *(v218 + 16) = v232;
                *(v218 + 32) = v233;
                v235 = *(v217 + 80);
                v236 = *(v217 + 96);
                v237 = *(v217 + 128);
                *(v218 + 112) = *(v217 + 112);
                *(v218 + 128) = v237;
                *(v218 + 80) = v235;
                *(v218 + 96) = v236;
                v238 = *(v217 + 144);
                *(v231 + 144) = 0;
                v239 = *(v218 + 144);
                *(v218 + 144) = v238;

                *(v218 + 152) = *(v231 + 152);
                v240 = *(v231 + 160);
                *(v231 + 160) = 0;
                v241 = *(v218 + 160);
                *(v218 + 160) = v240;

                v242 = *(v231 + 168);
                *(v231 + 168) = 0;
                v243 = *(v218 + 168);
                *(v218 + 168) = v242;

                std::vector<float>::__move_assign(v218 + 176, (v231 + 176));
                std::vector<BOOL>::__move_assign(v218 + 200, v231 + 200);
                v244 = *(v231 + 224);
                *(v231 + 224) = 0;
                v245 = *(v218 + 224);
                *(v218 + 224) = v244;

                *(v218 + 232) = *(v231 + 232);
                v246 = *(v231 + 240);
                *(v218 + 248) = *(v231 + 248);
                *(v218 + 240) = v246;
                std::__tree<int>::__move_assign(v218 + 256, (v231 + 256));
                *(v218 + 288) = *(v231 + 288);
                if (v213 < v216)
                {
                  break;
                }

                v247 = 2 * v216;
                v216 = (2 * v216) | 1;
                v217 = a1 + 304 * v216;
                v248 = v247 + 2;
                if (v248 < v10 && *v217 < *(v217 + 304))
                {
                  v217 += 304;
                  v216 = v248;
                }

                v230 = *v217;
                v249 = v470;
                v218 = v231;
                if (*v217 < v470)
                {
                  goto LABEL_187;
                }
              }

              v249 = v470;
LABEL_187:
              *v231 = v249;
              v250 = v471;
              v251 = v472;
              v252 = v474;
              *(v231 + 48) = v473;
              *(v231 + 64) = v252;
              *(v231 + 16) = v250;
              *(v231 + 32) = v251;
              v253 = v475;
              v254 = v476;
              v255 = v478;
              *(v231 + 112) = v477;
              *(v231 + 128) = v255;
              *(v231 + 80) = v253;
              *(v231 + 96) = v254;
              v256 = v479;
              v479 = 0;
              v257 = *(v231 + 144);
              *(v231 + 144) = v256;

              *(v231 + 152) = v480;
              v258 = v481;
              *&v481 = 0;
              v259 = *(v231 + 160);
              *(v231 + 160) = v258;

              v260 = *(&v481 + 1);
              *(&v481 + 1) = 0;
              v261 = *(v231 + 168);
              *(v231 + 168) = v260;

              v262 = *(v231 + 176);
              if (v262)
              {
                *(v231 + 184) = v262;
                operator delete(v262);
                *(v231 + 176) = 0;
                *(v231 + 184) = 0;
                *(v231 + 192) = 0;
              }

              *(v231 + 176) = *v482;
              *(v231 + 192) = v482[2];
              memset(v482, 0, sizeof(v482));
              v263 = *(v231 + 200);
              if (v263)
              {
                operator delete(v263);
                *(v231 + 200) = 0;
                *(v231 + 208) = 0;
                *(v231 + 216) = 0;
              }

              *(v231 + 200) = __p;
              *(v231 + 208) = v484;
              __p = 0;
              v484 = 0uLL;
              v264 = v485;
              v485 = 0;
              v265 = *(v231 + 224);
              *(v231 + 224) = v264;

              *(v231 + 232) = v486;
              v266 = v487;
              *(v231 + 248) = v488;
              *(v231 + 240) = v266;
              v267 = v231 + 264;
              std::__tree<int>::destroy(v231 + 256, *(v231 + 264));
              *(v231 + 256) = v489;
              v268 = v490;
              *(v231 + 264) = v490;
              v269 = v491;
              *(v231 + 272) = v491;
              if (v269)
              {
                v270 = 0;
                v268[2] = v267;
                v489 = &v490;
                v490 = 0;
                v491 = 0;
              }

              else
              {
                *(v231 + 256) = v267;
                v270 = v490;
              }

              *(v231 + 288) = v492;
              std::__tree<int>::destroy(&v489, v270);

              if (__p)
              {
                operator delete(__p);
              }

              if (v482[0])
              {
                v482[1] = v482[0];
                operator delete(v482[0]);
              }
            }
          }

          v214 = v215 - 1;
        }

        while (v215);
        v271 = 0x86BCA1AF286BCA1BLL * (v9 >> 4);
        v441 = (a1 + 264);
        v272 = v444;
        do
        {
          v445 = v272;
          v446 = *a1;
          v449 = *(a1 + 48);
          v450 = *(a1 + 64);
          v447 = *(a1 + 16);
          v448 = *(a1 + 32);
          v453 = *(a1 + 112);
          v454 = *(a1 + 128);
          v451 = *(a1 + 80);
          v452 = *(a1 + 96);
          v273 = *(a1 + 144);
          *(a1 + 144) = 0;
          v455 = v273;
          v456 = *(a1 + 152);
          v274 = *(a1 + 160);
          v275 = *(a1 + 176);
          *(a1 + 160) = 0u;
          v457 = v274;
          *v458 = v275;
          v276 = *(a1 + 200);
          v459 = *(a1 + 192);
          *(a1 + 192) = 0;
          *(a1 + 176) = 0u;
          v460 = v276;
          v461 = *(a1 + 208);
          *(a1 + 200) = 0u;
          v277 = *(a1 + 224);
          *(a1 + 216) = 0;
          *(a1 + 224) = 0;
          v462 = v277;
          v463 = *(a1 + 232);
          v465 = *(a1 + 248);
          v464 = *(a1 + 240);
          v278 = *(a1 + 264);
          v466 = *(a1 + 256);
          v467 = v278;
          v468 = *(a1 + 272);
          if (v468)
          {
            v278[2] = &v467;
            *(a1 + 256) = v441;
            *v441 = 0;
            *(a1 + 272) = 0;
          }

          else
          {
            v466 = &v467;
          }

          v279 = 0;
          v469 = *(a1 + 288);
          v280 = a1;
          do
          {
            v281 = v280 + 304 * v279;
            v282 = v281 + 304;
            if (2 * v279 + 2 >= v271)
            {
              v279 = (2 * v279) | 1;
            }

            else if (*(v281 + 304) >= *(v281 + 608))
            {
              v279 = (2 * v279) | 1;
            }

            else
            {
              v282 = v281 + 608;
              v279 = 2 * v279 + 2;
            }

            *v280 = *v282;
            v283 = *(v282 + 16);
            v284 = *(v282 + 32);
            v285 = *(v282 + 64);
            *(v280 + 48) = *(v282 + 48);
            *(v280 + 64) = v285;
            *(v280 + 16) = v283;
            *(v280 + 32) = v284;
            v286 = *(v282 + 80);
            v287 = *(v282 + 96);
            v288 = *(v282 + 128);
            *(v280 + 112) = *(v282 + 112);
            *(v280 + 128) = v288;
            *(v280 + 80) = v286;
            *(v280 + 96) = v287;
            v289 = *(v282 + 144);
            *(v282 + 144) = 0;
            v290 = *(v280 + 144);
            *(v280 + 144) = v289;

            *(v280 + 152) = *(v282 + 152);
            v291 = *(v282 + 160);
            *(v282 + 160) = 0;
            v292 = *(v280 + 160);
            *(v280 + 160) = v291;

            v293 = *(v282 + 168);
            *(v282 + 168) = 0;
            v294 = *(v280 + 168);
            *(v280 + 168) = v293;

            std::vector<float>::__move_assign(v280 + 176, (v282 + 176));
            std::vector<BOOL>::__move_assign(v280 + 200, v282 + 200);
            v295 = *(v282 + 224);
            *(v282 + 224) = 0;
            v296 = *(v280 + 224);
            *(v280 + 224) = v295;

            *(v280 + 232) = *(v282 + 232);
            v298 = (v282 + 240);
            v297 = *(v282 + 240);
            *(v280 + 248) = *(v282 + 248);
            *(v280 + 240) = v297;
            std::__tree<int>::__move_assign(v280 + 256, (v282 + 256));
            *(v280 + 288) = *(v282 + 288);
            v280 = v282;
          }

          while (v279 <= ((v271 - 2) >> 1));
          if (v282 == v445 - 76)
          {
            *v282 = v446;
            *(v282 + 48) = v449;
            *(v282 + 64) = v450;
            *(v282 + 16) = v447;
            *(v282 + 32) = v448;
            *(v282 + 112) = v453;
            *(v282 + 128) = v454;
            *(v282 + 80) = v451;
            *(v282 + 96) = v452;
            v327 = *(v282 + 144);
            *(v282 + 144) = v455;

            *(v282 + 152) = v456;
            v328 = *(v282 + 160);
            *(v282 + 160) = v457;

            v329 = *(v282 + 168);
            *(v282 + 168) = *(&v457 + 1);

            v330 = *(v282 + 176);
            if (v330)
            {
              *(v282 + 184) = v330;
              operator delete(v330);
              *(v282 + 176) = 0;
              *(v282 + 184) = 0;
              *(v282 + 192) = 0;
            }

            *(v282 + 176) = *v458;
            *(v282 + 192) = v459;
            v331 = *(v282 + 200);
            if (v331)
            {
              operator delete(v331);
              *(v282 + 200) = 0;
              *(v282 + 208) = 0;
              *(v282 + 216) = 0;
            }

            *(v282 + 200) = v460;
            *(v282 + 208) = v461;
            v332 = *(v282 + 224);
            *(v282 + 224) = v462;

            *(v282 + 232) = v463;
            *(v282 + 248) = v465;
            *v298 = v464;
            v333 = v282 + 264;
            std::__tree<int>::destroy(v282 + 256, *(v282 + 264));
            *(v282 + 256) = v466;
            v334 = v467;
            *(v282 + 264) = v467;
            v335 = v468;
            *(v282 + 272) = v468;
            if (v335)
            {
              v334[2] = v333;
              v466 = &v467;
              v467 = 0;
              v468 = 0;
            }

            else
            {
              *(v282 + 256) = v333;
            }

            *(v282 + 288) = v469;
          }

          else
          {
            *v282 = *(v445 - 76);
            v299 = v445 - 72;
            v300 = *(v445 - 18);
            v301 = *(v445 - 17);
            v302 = *(v445 - 15);
            *(v282 + 48) = *(v445 - 16);
            *(v282 + 64) = v302;
            *(v282 + 16) = v300;
            *(v282 + 32) = v301;
            v303 = *(v445 - 14);
            v304 = *(v445 - 13);
            v305 = *(v445 - 11);
            *(v282 + 112) = *(v445 - 12);
            *(v282 + 128) = v305;
            *(v282 + 80) = v303;
            *(v282 + 96) = v304;
            v307 = *(v445 - 20);
            v306 = v445 - 40;
            *v306 = 0;
            v308 = *(v282 + 144);
            *(v282 + 144) = v307;

            v309 = v445 - 38;
            *(v282 + 152) = *(v445 - 38);
            v310 = *(v445 - 18);
            *(v309 + 1) = 0;
            v311 = *(v282 + 160);
            *(v282 + 160) = v310;

            v312 = *(v445 - 17);
            *(v445 - 17) = 0;
            v313 = *(v282 + 168);
            *(v282 + 168) = v312;

            std::vector<float>::__move_assign(v282 + 176, v445 - 8);
            std::vector<BOOL>::__move_assign(v282 + 200, (v445 - 26));
            v314 = *(v445 - 10);
            *(v445 - 10) = 0;
            v315 = *(v282 + 224);
            *(v282 + 224) = v314;

            *(v282 + 232) = *(v445 - 36);
            v316 = *(v445 - 8);
            *(v282 + 248) = *(v445 - 14);
            *v298 = v316;
            std::__tree<int>::__move_assign(v282 + 256, v445 - 6);
            *(v282 + 288) = *(v445 - 4);
            *(v445 - 76) = v446;
            *(v299 + 2) = v449;
            *(v299 + 3) = v450;
            *v299 = v447;
            *(v299 + 1) = v448;
            *(v299 + 6) = v453;
            *(v299 + 7) = v454;
            *(v299 + 4) = v451;
            *(v299 + 5) = v452;
            v317 = *(v445 - 20);
            *v306 = v455;

            *v309 = v456;
            v318 = *(v445 - 18);
            *(v309 + 1) = v457;

            v319 = *(v445 - 17);
            *(v445 - 17) = *(&v457 + 1);

            v320 = *(v445 - 16);
            if (v320)
            {
              *(v445 - 15) = v320;
              operator delete(v320);
            }

            *(v445 - 8) = *v458;
            *(v445 - 14) = v459;
            v321 = *(v445 - 13);
            if (v321)
            {
              operator delete(v321);
            }

            *(v445 - 13) = v460;
            *(v445 - 6) = v461;
            v322 = *(v445 - 10);
            *(v445 - 10) = v462;

            v324 = v445 - 10;
            v323 = *(v445 - 5);
            *(v445 - 36) = v463;
            *(v445 - 14) = v465;
            *(v445 - 8) = v464;
            std::__tree<int>::destroy((v445 - 12), v323);
            *(v445 - 6) = v466;
            v325 = v467;
            *v324 = v467;
            v326 = v468;
            *(v324 + 1) = v468;
            if (v326)
            {
              v325[2] = v324;
              v466 = &v467;
              v467 = 0;
              v468 = 0;
            }

            else
            {
              *(v445 - 6) = v324;
            }

            *(v445 - 4) = v469;
            v336 = v282 + 304 - a1;
            if (v336 >= 305)
            {
              v337 = (-2 - 0x79435E50D79435E5 * (v336 >> 4)) >> 1;
              v338 = a1 + 304 * v337;
              if (*v338 < *v282)
              {
                v470 = *v282;
                v339 = *(v282 + 64);
                v341 = *(v282 + 16);
                v340 = *(v282 + 32);
                v473 = *(v282 + 48);
                v474 = v339;
                v471 = v341;
                v472 = v340;
                v342 = *(v282 + 128);
                v344 = *(v282 + 80);
                v343 = *(v282 + 96);
                v477 = *(v282 + 112);
                v478 = v342;
                v475 = v344;
                v476 = v343;
                v345 = *(v282 + 144);
                *(v282 + 144) = 0;
                v479 = v345;
                v480 = *(v282 + 152);
                v346 = *(v282 + 160);
                v347 = *(v282 + 176);
                *(v282 + 160) = 0u;
                v481 = v346;
                *v482 = v347;
                v348 = *(v282 + 200);
                v482[2] = *(v282 + 192);
                *(v282 + 192) = 0;
                *(v282 + 176) = 0u;
                __p = v348;
                v484 = *(v282 + 208);
                *(v282 + 200) = 0u;
                v349 = *(v282 + 224);
                *(v282 + 216) = 0;
                *(v282 + 224) = 0;
                v485 = v349;
                v486 = *(v282 + 232);
                v350 = *v298;
                v488 = *(v282 + 248);
                v487 = v350;
                v351 = *(v282 + 264);
                v489 = *(v282 + 256);
                v490 = v351;
                v491 = *(v282 + 272);
                if (v491)
                {
                  v351[2] = &v490;
                  *(v282 + 256) = v282 + 264;
                  *(v282 + 264) = 0;
                  *(v282 + 272) = 0;
                }

                else
                {
                  v489 = &v490;
                }

                v492 = *(v282 + 288);
                v352 = *v338;
                do
                {
                  v353 = v338;
                  *v282 = v352;
                  v354 = *(v338 + 16);
                  v355 = *(v338 + 32);
                  v356 = *(v338 + 64);
                  *(v282 + 48) = *(v338 + 48);
                  *(v282 + 64) = v356;
                  *(v282 + 16) = v354;
                  *(v282 + 32) = v355;
                  v357 = *(v338 + 80);
                  v358 = *(v338 + 96);
                  v359 = *(v338 + 128);
                  *(v282 + 112) = *(v338 + 112);
                  *(v282 + 128) = v359;
                  *(v282 + 80) = v357;
                  *(v282 + 96) = v358;
                  v360 = *(v338 + 144);
                  *(v353 + 144) = 0;
                  v361 = *(v282 + 144);
                  *(v282 + 144) = v360;

                  *(v282 + 152) = *(v353 + 152);
                  v362 = *(v353 + 160);
                  *(v353 + 160) = 0;
                  v363 = *(v282 + 160);
                  *(v282 + 160) = v362;

                  v364 = *(v353 + 168);
                  *(v353 + 168) = 0;
                  v365 = *(v282 + 168);
                  *(v282 + 168) = v364;

                  std::vector<float>::__move_assign(v282 + 176, (v353 + 176));
                  std::vector<BOOL>::__move_assign(v282 + 200, v353 + 200);
                  v366 = *(v353 + 224);
                  *(v353 + 224) = 0;
                  v367 = *(v282 + 224);
                  *(v282 + 224) = v366;

                  *(v282 + 232) = *(v353 + 232);
                  v368 = *(v353 + 240);
                  *(v282 + 248) = *(v353 + 248);
                  *(v282 + 240) = v368;
                  std::__tree<int>::__move_assign(v282 + 256, (v353 + 256));
                  *(v282 + 288) = *(v353 + 288);
                  if (!v337)
                  {
                    break;
                  }

                  v337 = (v337 - 1) >> 1;
                  v338 = a1 + 304 * v337;
                  v352 = *v338;
                  v282 = v353;
                }

                while (*v338 < v470);
                *v353 = v470;
                v369 = v471;
                v370 = v472;
                v371 = v474;
                *(v353 + 48) = v473;
                *(v353 + 64) = v371;
                *(v353 + 16) = v369;
                *(v353 + 32) = v370;
                v372 = v475;
                v373 = v476;
                v374 = v478;
                *(v353 + 112) = v477;
                *(v353 + 128) = v374;
                *(v353 + 80) = v372;
                *(v353 + 96) = v373;
                v375 = v479;
                v479 = 0;
                v376 = *(v353 + 144);
                *(v353 + 144) = v375;

                *(v353 + 152) = v480;
                v377 = v481;
                *&v481 = 0;
                v378 = *(v353 + 160);
                *(v353 + 160) = v377;

                v379 = *(&v481 + 1);
                *(&v481 + 1) = 0;
                v380 = *(v353 + 168);
                *(v353 + 168) = v379;

                v381 = *(v353 + 176);
                if (v381)
                {
                  *(v353 + 184) = v381;
                  operator delete(v381);
                }

                *(v353 + 176) = *v482;
                *(v353 + 192) = v482[2];
                memset(v482, 0, sizeof(v482));
                v382 = *(v353 + 200);
                if (v382)
                {
                  operator delete(v382);
                }

                *(v353 + 200) = __p;
                *(v353 + 208) = v484;
                __p = 0;
                v484 = 0uLL;
                v383 = v485;
                v485 = 0;
                v384 = *(v353 + 224);
                *(v353 + 224) = v383;

                *(v353 + 232) = v486;
                v385 = v487;
                *(v353 + 248) = v488;
                *(v353 + 240) = v385;
                v386 = v353 + 264;
                std::__tree<int>::destroy(v353 + 256, *(v353 + 264));
                *(v353 + 256) = v489;
                v387 = v490;
                *(v353 + 264) = v490;
                v388 = v491;
                *(v353 + 272) = v491;
                if (v388)
                {
                  v387[2] = v386;
                  v387 = 0;
                  v489 = &v490;
                  v490 = 0;
                  v491 = 0;
                }

                else
                {
                  *(v353 + 256) = v386;
                }

                *(v353 + 288) = v492;
                std::__tree<int>::destroy(&v489, v387);

                if (__p)
                {
                  operator delete(__p);
                }

                if (v482[0])
                {
                  v482[1] = v482[0];
                  operator delete(v482[0]);
                }
              }
            }
          }

          std::__tree<int>::destroy(&v466, v467);

          v272 = v445 - 76;
        }

        while (v271-- > 2);
      }

      goto LABEL_278;
    }

    v12 = v10 >> 1;
    v13 = (a1 + 304 * (v10 >> 1));
    v14 = *v7;
    if (v9 >= 0x9801)
    {
      v15 = *v13;
      if (*v13 >= *a1)
      {
        if (v14 >= v15 || (std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v13, v7), *v13 >= *a1))
        {
LABEL_27:
          v21 = (a1 + 304 * v12 - 304);
          v22 = *v21;
          v23 = *v440;
          if (*v21 >= *(a1 + 304))
          {
            if (v23 >= v22 || (std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>((a1 + 304 * v12 - 304), v440), *v21 >= *(a1 + 304)))
            {
LABEL_39:
              v26 = (a1 + 304 * v12 + 304);
              v27 = *v26;
              v28 = *v439;
              if (*v26 >= *(a1 + 608))
              {
                if (v28 >= v27 || (std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>((a1 + 304 * v12 + 304), v439), *v26 >= *(a1 + 608)))
                {
LABEL_48:
                  v31 = *v13;
                  v32 = *v26;
                  if (*v13 >= *v21)
                  {
                    if (v32 >= v31)
                    {
                      goto LABEL_57;
                    }

                    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v13, (a1 + 304 * v12 + 304));
                    if (*v13 >= *v21)
                    {
                      goto LABEL_57;
                    }

                    v33 = (a1 + 304 * v12 - 304);
                    v34 = v13;
                  }

                  else
                  {
                    v33 = (a1 + 304 * v12 - 304);
                    if (v32 >= v31)
                    {
                      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v33, v13);
                      if (*v26 >= *v13)
                      {
LABEL_57:
                        v19 = a1;
                        v20 = v13;
                        goto LABEL_58;
                      }

                      v33 = v13;
                    }

                    v34 = (a1 + 304 * v12 + 304);
                  }

                  std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v33, v34);
                  goto LABEL_57;
                }

                v29 = (a1 + 608);
                v30 = (a1 + 304 * v12 + 304);
              }

              else
              {
                v29 = (a1 + 608);
                if (v28 >= v27)
                {
                  std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v29, (a1 + 304 * v12 + 304));
                  if (*v439 >= *v26)
                  {
                    goto LABEL_48;
                  }

                  v29 = (a1 + 304 * v12 + 304);
                }

                v30 = v439;
              }

              std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v29, v30);
              goto LABEL_48;
            }

            v24 = (a1 + 304);
            v25 = (a1 + 304 * v12 - 304);
          }

          else
          {
            v24 = (a1 + 304);
            if (v23 >= v22)
            {
              std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v24, (a1 + 304 * v12 - 304));
              if (*v440 >= *v21)
              {
                goto LABEL_39;
              }

              v24 = (a1 + 304 * v12 - 304);
            }

            v25 = v440;
          }

          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v24, v25);
          goto LABEL_39;
        }

        v16 = a1;
        v17 = v13;
      }

      else
      {
        v16 = a1;
        if (v14 >= v15)
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v13);
          if (*v7 >= *v13)
          {
            goto LABEL_27;
          }

          v16 = v13;
        }

        v17 = v7;
      }

      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v16, v17);
      goto LABEL_27;
    }

    v18 = *a1;
    if (*a1 >= *v13)
    {
      if (v14 >= v18)
      {
        goto LABEL_59;
      }

      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v7);
      if (*a1 >= *v13)
      {
        goto LABEL_59;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v13, a1);
        if (*v7 >= *a1)
        {
          goto LABEL_59;
        }

        v19 = a1;
      }

      v20 = v7;
    }

LABEL_58:
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v19, v20);
LABEL_59:
    --a3;
    v35 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 304) < v35)
    {
      v470 = *a1;
      v36 = *(a1 + 64);
      v38 = *(a1 + 16);
      v37 = *(a1 + 32);
      v473 = *(a1 + 48);
      v474 = v36;
      v471 = v38;
      v472 = v37;
      v39 = *(a1 + 128);
      v41 = *(a1 + 80);
      v40 = *(a1 + 96);
      v477 = *(a1 + 112);
      v478 = v39;
      v475 = v41;
      v476 = v40;
      v42 = *(a1 + 144);
      *(a1 + 144) = 0;
      v479 = v42;
      v480 = *(a1 + 152);
      v43 = *(a1 + 160);
      *(a1 + 160) = 0u;
      v44 = *(a1 + 176);
      v481 = v43;
      *v482 = v44;
      v482[2] = *(a1 + 192);
      *(a1 + 192) = 0;
      *(a1 + 176) = 0u;
      __p = *(a1 + 200);
      v484 = *(a1 + 208);
      *(a1 + 200) = 0u;
      v45 = *(a1 + 224);
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      v485 = v45;
      v486 = *(a1 + 232);
      v46 = *(a1 + 240);
      v488 = *(a1 + 248);
      v487 = v46;
      v47 = *(a1 + 264);
      v489 = *(a1 + 256);
      v490 = v47;
      v491 = *(a1 + 272);
      v443 = a3;
      if (v491)
      {
        v47[2] = &v490;
        *(a1 + 256) = a1 + 264;
        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
      }

      else
      {
        v489 = &v490;
      }

      v48 = v7;
      v49 = 0;
      v492 = *(a1 + 288);
      do
      {
        v50 = *(a1 + v49 + 304);
        v49 += 304;
      }

      while (v50 < v35);
      v51 = a1 + v49;
      if (v49 == 304)
      {
        a2 = v444;
        do
        {
          if (v51 >= a2)
          {
            break;
          }

          a2 -= 76;
        }

        while (*a2 >= v35);
      }

      else
      {
        do
        {
          a2 -= 76;
        }

        while (*a2 >= v35);
      }

      v8 = a1 + v49;
      if (v51 < a2)
      {
        v52 = a2;
        do
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v8, v52);
          v35 = v470;
          do
          {
            v53 = *(v8 + 304);
            v8 += 304;
          }

          while (v53 < v470);
          do
          {
            v52 -= 76;
          }

          while (*v52 >= v470);
        }

        while (v8 < v52);
      }

      v54 = (v8 - 304);
      if (v8 - 304 != a1)
      {
        *a1 = *v54;
        v55 = *(v8 - 288);
        v56 = *(v8 - 272);
        v57 = *(v8 - 240);
        *(a1 + 48) = *(v8 - 256);
        *(a1 + 64) = v57;
        *(a1 + 16) = v55;
        *(a1 + 32) = v56;
        v58 = *(v8 - 224);
        v59 = *(v8 - 208);
        v60 = *(v8 - 176);
        *(a1 + 112) = *(v8 - 192);
        *(a1 + 128) = v60;
        *(a1 + 80) = v58;
        *(a1 + 96) = v59;
        v61 = *(v8 - 160);
        *(v8 - 160) = 0;
        v62 = *(a1 + 144);
        *(a1 + 144) = v61;

        *(a1 + 152) = *(v8 - 152);
        v63 = *(v8 - 144);
        *(v8 - 144) = 0;
        v64 = *(a1 + 160);
        *(a1 + 160) = v63;

        v65 = *(v8 - 136);
        *(v8 - 136) = 0;
        v66 = *(a1 + 168);
        *(a1 + 168) = v65;

        std::vector<float>::__move_assign(a1 + 176, (v8 - 128));
        std::vector<BOOL>::__move_assign(a1 + 200, v8 - 104);
        v67 = *(v8 - 80);
        *(v8 - 80) = 0;
        v68 = *(a1 + 224);
        *(a1 + 224) = v67;

        *(a1 + 232) = *(v8 - 72);
        v69 = *(v8 - 64);
        *(a1 + 248) = *(v8 - 56);
        *(a1 + 240) = v69;
        std::__tree<int>::__move_assign(a1 + 256, (v8 - 48));
        *(a1 + 288) = *(v8 - 16);
        v35 = v470;
      }

      *v54 = v35;
      v70 = (v8 - 288);
      v71 = v471;
      v72 = v472;
      v73 = v474;
      *(v8 - 256) = v473;
      *(v8 - 240) = v73;
      *v70 = v71;
      v70[1] = v72;
      v74 = v475;
      v75 = v476;
      v76 = v478;
      *(v8 - 192) = v477;
      *(v8 - 176) = v76;
      *(v8 - 224) = v74;
      *(v8 - 208) = v75;
      v77 = v479;
      v479 = 0;
      v78 = *(v8 - 160);
      *(v8 - 160) = v77;

      *(v8 - 152) = v480;
      v79 = v481;
      *&v481 = 0;
      v80 = *(v8 - 144);
      *(v8 - 144) = v79;

      v81 = *(&v481 + 1);
      *(&v481 + 1) = 0;
      v82 = *(v8 - 136);
      *(v8 - 136) = v81;

      v83 = *(v8 - 128);
      if (v83)
      {
        *(v8 - 120) = v83;
        operator delete(v83);
        *(v8 - 128) = 0;
        *(v8 - 120) = 0;
        *(v8 - 112) = 0;
      }

      *(v8 - 128) = *v482;
      *(v8 - 112) = v482[2];
      memset(v482, 0, sizeof(v482));
      v84 = *(v8 - 104);
      if (v84)
      {
        operator delete(v84);
        *(v8 - 104) = 0;
        *(v8 - 96) = 0;
        *(v8 - 88) = 0;
      }

      *(v8 - 104) = __p;
      *(v8 - 96) = v484;
      __p = 0;
      v484 = 0uLL;
      v85 = v485;
      v485 = 0;
      v86 = *(v8 - 80);
      *(v8 - 80) = v85;

      v88 = v8 - 40;
      v87 = *(v8 - 40);
      *(v8 - 72) = v486;
      v89 = v487;
      *(v8 - 56) = v488;
      *(v8 - 64) = v89;
      std::__tree<int>::destroy(v8 - 48, v87);
      *(v8 - 48) = v489;
      v90 = v490;
      *(v8 - 40) = v490;
      v91 = v491;
      *(v8 - 32) = v491;
      if (v91)
      {
        v92 = 0;
        v90[2] = v88;
        v489 = &v490;
        v490 = 0;
        v491 = 0;
      }

      else
      {
        *(v8 - 48) = v88;
        v92 = v490;
      }

      *(v8 - 16) = v492;
      std::__tree<int>::destroy(&v489, v92);

      if (__p)
      {
        operator delete(__p);
      }

      if (v482[0])
      {
        v482[1] = v482[0];
        operator delete(v482[0]);
      }

      v93 = v51 < a2;

      v7 = v48;
      a3 = v443;
      a2 = v444;
      if (v93)
      {
        goto LABEL_94;
      }

      v94 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, (v8 - 304));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v8, v444))
      {
        a2 = (v8 - 304);
        if (!v94)
        {
          goto LABEL_2;
        }

        goto LABEL_278;
      }

      if (!v94)
      {
LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,false>(a1, v8 - 304, v443, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v470 = *a1;
      v95 = *(a1 + 64);
      v97 = *(a1 + 16);
      v96 = *(a1 + 32);
      v473 = *(a1 + 48);
      v474 = v95;
      v471 = v97;
      v472 = v96;
      v98 = *(a1 + 128);
      v100 = *(a1 + 80);
      v99 = *(a1 + 96);
      v477 = *(a1 + 112);
      v478 = v98;
      v475 = v100;
      v476 = v99;
      v101 = *(a1 + 144);
      *(a1 + 144) = 0;
      v479 = v101;
      v480 = *(a1 + 152);
      v102 = *(a1 + 160);
      *(a1 + 160) = 0u;
      v103 = *(a1 + 176);
      v481 = v102;
      *v482 = v103;
      v482[2] = *(a1 + 192);
      *(a1 + 192) = 0;
      *(a1 + 176) = 0u;
      __p = *(a1 + 200);
      v484 = *(a1 + 208);
      *(a1 + 200) = 0u;
      v104 = *(a1 + 224);
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      v485 = v104;
      v486 = *(a1 + 232);
      v105 = *(a1 + 240);
      v488 = *(a1 + 248);
      v487 = v105;
      v106 = *(a1 + 264);
      v489 = *(a1 + 256);
      v490 = v106;
      v491 = *(a1 + 272);
      if (v491)
      {
        v106[2] = &v490;
        *(a1 + 256) = a1 + 264;
        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
      }

      else
      {
        v489 = &v490;
      }

      v492 = *(a1 + 288);
      if (v35 >= *v7)
      {
        v109 = a1 + 304;
        do
        {
          v8 = v109;
          if (v109 >= v444)
          {
            break;
          }

          v109 += 304;
        }

        while (v35 >= *v8);
      }

      else
      {
        v107 = a1;
        do
        {
          v8 = v107 + 304;
          v108 = *(v107 + 304);
          v107 += 304;
        }

        while (v35 >= v108);
      }

      v110 = v444;
      if (v8 < v444)
      {
        v110 = v444;
        do
        {
          v110 -= 76;
        }

        while (v35 < *v110);
      }

      while (v8 < v110)
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v8, v110);
        v35 = v470;
        do
        {
          v111 = *(v8 + 304);
          v8 += 304;
        }

        while (v470 >= v111);
        do
        {
          v110 -= 76;
        }

        while (v470 < *v110);
      }

      v112 = (v8 - 304);
      if (v8 - 304 != a1)
      {
        *a1 = *v112;
        v113 = *(v8 - 288);
        v114 = *(v8 - 272);
        v115 = *(v8 - 240);
        *(a1 + 48) = *(v8 - 256);
        *(a1 + 64) = v115;
        *(a1 + 16) = v113;
        *(a1 + 32) = v114;
        v116 = *(v8 - 224);
        v117 = *(v8 - 208);
        v118 = *(v8 - 176);
        *(a1 + 112) = *(v8 - 192);
        *(a1 + 128) = v118;
        *(a1 + 80) = v116;
        *(a1 + 96) = v117;
        v119 = *(v8 - 160);
        *(v8 - 160) = 0;
        v120 = *(a1 + 144);
        *(a1 + 144) = v119;

        *(a1 + 152) = *(v8 - 152);
        v121 = *(v8 - 144);
        *(v8 - 144) = 0;
        v122 = *(a1 + 160);
        *(a1 + 160) = v121;

        v123 = *(v8 - 136);
        *(v8 - 136) = 0;
        v124 = *(a1 + 168);
        *(a1 + 168) = v123;

        std::vector<float>::__move_assign(a1 + 176, (v8 - 128));
        std::vector<BOOL>::__move_assign(a1 + 200, v8 - 104);
        v125 = *(v8 - 80);
        *(v8 - 80) = 0;
        v126 = *(a1 + 224);
        *(a1 + 224) = v125;

        *(a1 + 232) = *(v8 - 72);
        v127 = *(v8 - 64);
        *(a1 + 248) = *(v8 - 56);
        *(a1 + 240) = v127;
        std::__tree<int>::__move_assign(a1 + 256, (v8 - 48));
        *(a1 + 288) = *(v8 - 16);
        v35 = v470;
      }

      *v112 = v35;
      v128 = (v8 - 288);
      v129 = v471;
      v130 = v472;
      v131 = v474;
      *(v8 - 256) = v473;
      *(v8 - 240) = v131;
      *v128 = v129;
      v128[1] = v130;
      v132 = v475;
      v133 = v476;
      v134 = v478;
      *(v8 - 192) = v477;
      *(v8 - 176) = v134;
      *(v8 - 224) = v132;
      *(v8 - 208) = v133;
      v135 = v479;
      v479 = 0;
      v136 = *(v8 - 160);
      *(v8 - 160) = v135;

      *(v8 - 152) = v480;
      v137 = v481;
      *&v481 = 0;
      v138 = *(v8 - 144);
      *(v8 - 144) = v137;

      v139 = *(&v481 + 1);
      *(&v481 + 1) = 0;
      v140 = *(v8 - 136);
      *(v8 - 136) = v139;

      v141 = *(v8 - 128);
      if (v141)
      {
        *(v8 - 120) = v141;
        operator delete(v141);
        *(v8 - 128) = 0;
        *(v8 - 120) = 0;
        *(v8 - 112) = 0;
      }

      *(v8 - 128) = *v482;
      *(v8 - 112) = v482[2];
      memset(v482, 0, sizeof(v482));
      v142 = *(v8 - 104);
      if (v142)
      {
        operator delete(v142);
        *(v8 - 104) = 0;
        *(v8 - 96) = 0;
        *(v8 - 88) = 0;
      }

      *(v8 - 104) = __p;
      *(v8 - 96) = v484;
      __p = 0;
      v484 = 0uLL;
      v143 = v485;
      v485 = 0;
      v144 = *(v8 - 80);
      *(v8 - 80) = v143;

      v146 = v8 - 40;
      v145 = *(v8 - 40);
      *(v8 - 72) = v486;
      v147 = v487;
      *(v8 - 56) = v488;
      *(v8 - 64) = v147;
      std::__tree<int>::destroy(v8 - 48, v145);
      *(v8 - 48) = v489;
      v148 = v490;
      *(v8 - 40) = v490;
      v149 = v491;
      *(v8 - 32) = v491;
      if (v149)
      {
        v150 = 0;
        v148[2] = v146;
        v489 = &v490;
        v490 = 0;
        v491 = 0;
      }

      else
      {
        *(v8 - 48) = v146;
        v150 = v490;
      }

      *(v8 - 16) = v492;
      std::__tree<int>::destroy(&v489, v150);

      if (__p)
      {
        operator delete(__p);
      }

      if (v482[0])
      {
        v482[1] = v482[0];
        operator delete(v482[0]);
      }

      a4 = 0;
      a2 = v444;
    }
  }

  v155 = (a1 + 608);
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, (a1 + 304), (a1 + 608), (a1 + 912));
  if (*v7 < *(a1 + 912))
  {
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>((a1 + 912), v7);
    if (*(a1 + 912) < *v155)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>((a1 + 608), (a1 + 912));
      if (*v155 < *(a1 + 304))
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>((a1 + 304), (a1 + 608));
        if (*(a1 + 304) < *a1)
        {
          v153 = a1;
          v154 = (a1 + 304);
          goto LABEL_136;
        }
      }
    }
  }

LABEL_278:
  v438 = *MEMORY[0x277D85DE8];
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(int *a1, int *a2, int *a3, int *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v10);
      goto LABEL_10;
    }

    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a3, a4);
    if (*a3 < *a2)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a2, a3);
      if (*a2 < *v7)
      {

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(int *a1, int *a2)
{
  v3 = a1;
  v81 = *MEMORY[0x277D85DE8];
  v4 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = a2 - 76;
        v11 = *(a1 + 76);
        v12 = *(a2 - 76);
        if (v11 >= *a1)
        {
          if (v12 >= v11)
          {
            goto LABEL_55;
          }

          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 76, v10);
          if (*(v3 + 76) >= *v3)
          {
            goto LABEL_55;
          }

          v5 = v3 + 76;
          goto LABEL_5;
        }

        if (v12 >= v11)
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, a1 + 76);
          if (*v10 >= *(v3 + 76))
          {
            goto LABEL_55;
          }

          a1 = v3 + 76;
        }

        v5 = v10;
        goto LABEL_30;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, a1 + 76, a1 + 152, a2 - 76);
        goto LABEL_55;
      case 5:
        v6 = (a1 + 76);
        v7 = (a1 + 152);
        v8 = (a1 + 228);
        v9 = a2 - 76;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, a1 + 76, a1 + 152, a1 + 228);
        if (*v9 >= *(v3 + 228))
        {
          goto LABEL_55;
        }

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v3 + 228, v9);
        if (*v8 >= *v7)
        {
          goto LABEL_55;
        }

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v3 + 152, v3 + 228);
        if (*v7 >= *v6)
        {
          goto LABEL_55;
        }

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v3 + 76, v3 + 152);
        if (*(v3 + 76) >= *v3)
        {
          goto LABEL_55;
        }

        a1 = v3;
        v5 = v3 + 76;
        goto LABEL_30;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_55;
    }

    if (v4 == 2)
    {
      v5 = a2 - 76;
      if (*(a2 - 76) < *a1)
      {
LABEL_5:
        a1 = v3;
LABEL_30:
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v5);
      }

LABEL_55:
      result = 1;
      goto LABEL_56;
    }
  }

  v13 = (a1 + 152);
  v14 = *(a1 + 76);
  v15 = *(a1 + 152);
  if (v14 < *a1)
  {
    if (v15 >= v14)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, a1 + 76);
      if (*(v3 + 152) >= *(v3 + 76))
      {
        goto LABEL_35;
      }

      a1 = v3 + 76;
    }

    v16 = v3 + 152;
    goto LABEL_34;
  }

  if (v15 < v14)
  {
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 76, a1 + 152);
    if (*(v3 + 76) < *v3)
    {
      v16 = v3 + 76;
      a1 = v3;
LABEL_34:
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v16);
    }
  }

LABEL_35:
  v17 = v3 + 228;
  if (v3 + 228 == a2)
  {
    goto LABEL_55;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    if (*v17 < *v13)
    {
      v58 = *v17;
      v63 = *(v17 + 5);
      v64 = *(v17 + 6);
      v65 = *(v17 + 7);
      v66 = *(v17 + 8);
      v59 = *(v17 + 1);
      v60 = *(v17 + 2);
      v61 = *(v17 + 3);
      v62 = *(v17 + 4);
      v20 = *(v17 + 18);
      *(v17 + 18) = 0;
      v67 = v20;
      v68 = v17[38];
      v69 = *(v17 + 10);
      *v70 = *(v17 + 11);
      *(v17 + 10) = 0u;
      *(v17 + 11) = 0u;
      *&v70[16] = *(v17 + 24);
      __p = *(v17 + 25);
      v72 = *(v17 + 13);
      *(v17 + 12) = 0u;
      *(v17 + 13) = 0u;
      v21 = *(v17 + 28);
      *(v17 + 28) = 0;
      v73 = v21;
      v74 = *(v17 + 116);
      v76 = v17[62];
      v75 = *(v17 + 30);
      v22 = *(v17 + 33);
      v77 = *(v17 + 32);
      v78 = v22;
      v79 = *(v17 + 34);
      if (v79)
      {
        v22[2] = &v78;
        *(v17 + 32) = v17 + 66;
        *(v17 + 33) = 0;
        *(v17 + 34) = 0;
      }

      else
      {
        v77 = &v78;
      }

      v80 = v17[72];
      v23 = *v13;
      v24 = v18;
      while (1)
      {
        v25 = v24;
        v26 = (v3 + v24);
        v26[228] = v23;
        v27 = *(v3 + v24 + 704);
        *(v26 + 62) = *(v3 + v24 + 688);
        *(v26 + 63) = v27;
        v28 = *(v3 + v24 + 736);
        *(v26 + 64) = *(v3 + v24 + 720);
        *(v26 + 65) = v28;
        v29 = *(v3 + v24 + 640);
        *(v26 + 58) = *(v3 + v24 + 624);
        *(v26 + 59) = v29;
        v30 = *(v3 + v24 + 672);
        *(v26 + 60) = *(v3 + v24 + 656);
        *(v26 + 61) = v30;
        v31 = *(v3 + v24 + 752);
        *(v26 + 94) = 0;
        v32 = *(v26 + 132);
        *(v26 + 132) = v31;

        v26[266] = v26[190];
        v33 = *(v26 + 96);
        *(v26 + 96) = 0;
        v34 = *(v26 + 134);
        *(v26 + 134) = v33;

        v35 = *(v26 + 97);
        *(v26 + 97) = 0;
        v36 = (v3 + v25);
        v37 = *(v3 + v25 + 1080);
        *(v3 + v25 + 1080) = v35;

        std::vector<float>::__move_assign(&v36[68], v36 + 49);
        std::vector<BOOL>::__move_assign(&v36[69].n128_i64[1], &v36[50].n128_i64[1]);
        v38 = *(v3 + v25 + 832);
        v36[52].n128_u64[0] = 0;
        v39 = *(v3 + v25 + 1136);
        v36[71].n128_u64[0] = v38;

        v40 = v3 + v25;
        *(v40 + 572) = *(v3 + v25 + 840);
        *(v40 + 144) = *(v3 + v25 + 848);
        *(v40 + 290) = *(v3 + v25 + 856);
        std::__tree<int>::__move_assign(v3 + v25 + 1168, (v3 + v25 + 864));
        *(v40 + 300) = *(v40 + 224);
        if (v25 == -608)
        {
          break;
        }

        v23 = *(v40 + 76);
        v24 = v25 - 304;
        if (v58 >= v23)
        {
          v41 = v3 + v24 + 912;
          goto LABEL_46;
        }
      }

      v41 = v3;
LABEL_46:
      *v41 = v58;
      *(v40 + 45) = v65;
      *(v40 + 46) = v66;
      *(v40 + 43) = v63;
      *(v40 + 44) = v64;
      *(v40 + 39) = v59;
      *(v40 + 40) = v60;
      *(v40 + 41) = v61;
      *(v40 + 42) = v62;
      v42 = *(v41 + 144);
      *(v41 + 144) = v67;

      *(v41 + 152) = v68;
      v43 = *(v41 + 160);
      *(v41 + 160) = v69;

      v44 = *(v41 + 168);
      *(v41 + 168) = *(&v69 + 1);

      v45 = v3 + v25;
      v46 = (v3 + v25 + 784);
      v47 = *v46;
      if (*v46)
      {
        *(v41 + 184) = v47;
        operator delete(v47);
        *v46 = 0;
        *(v3 + v25 + 792) = 0;
        *(v3 + v25 + 800) = 0;
      }

      v48 = v45 + 808;
      *v46 = *v70;
      *(v41 + 184) = *&v70[8];
      v49 = *(v45 + 101);
      if (v49)
      {
        operator delete(v49);
        *v48 = 0;
        *(v45 + 102) = 0;
        *(v45 + 103) = 0;
      }

      *v48 = __p;
      *(v41 + 208) = v72;
      v50 = *(v41 + 224);
      *(v41 + 224) = v73;

      v51 = (v45 + 864);
      *(v41 + 232) = v74;
      *(v45 + 214) = v76;
      *(v45 + 106) = v75;
      v52 = v41 + 264;
      std::__tree<int>::destroy(v51, *(v41 + 264));
      v53 = v78;
      *v51 = v77;
      v54 = v79;
      *(v41 + 264) = v53;
      *(v41 + 272) = v54;
      if (v54)
      {
        v55 = 0;
        v53[2] = v52;
        v77 = &v78;
        v78 = 0;
        v79 = 0;
      }

      else
      {
        *v51 = v52;
        v55 = v78;
      }

      *(v41 + 288) = v80;
      std::__tree<int>::destroy(&v77, v55);

      ++v19;
      if (v19 == 8)
      {
        break;
      }
    }

    v13 = v17;
    v18 += 304;
    v17 += 76;
    if (v17 == a2)
    {
      goto LABEL_55;
    }
  }

  result = v17 + 76 == a2;
LABEL_56:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

void std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(int *a1, int *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v38 = *a1;
  v43 = *(a1 + 5);
  v44 = *(a1 + 6);
  v45 = *(a1 + 7);
  v46 = *(a1 + 8);
  v39 = *(a1 + 1);
  v40 = *(a1 + 2);
  v41 = *(a1 + 3);
  v42 = *(a1 + 4);
  v4 = *(a1 + 18);
  *(a1 + 18) = 0;
  v47 = v4;
  v48 = a1[38];
  v5 = *(a1 + 10);
  *(a1 + 10) = 0u;
  v6 = (a1 + 44);
  v49 = v5;
  *v50 = *(a1 + 11);
  v7 = *(a1 + 24);
  *(a1 + 11) = 0u;
  v8 = (a1 + 50);
  v51 = v7;
  __p = *(a1 + 25);
  v53 = *(a1 + 13);
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  v9 = *(a1 + 28);
  *(a1 + 28) = 0;
  v54 = v9;
  v55 = *(a1 + 116);
  v10 = a1 + 60;
  v57 = a1[62];
  v56 = *(a1 + 30);
  v11 = *(a1 + 33);
  v58 = *(a1 + 32);
  v59 = v11;
  v60 = *(a1 + 34);
  if (v60)
  {
    v11[2] = &v59;
    *(a1 + 32) = a1 + 66;
    *(a1 + 33) = 0;
    *(a1 + 34) = 0;
  }

  else
  {
    v58 = &v59;
  }

  v61 = a1[72];
  *a1 = *a2;
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  v14 = *(a2 + 8);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = v14;
  *(a1 + 5) = v12;
  *(a1 + 6) = v13;
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v17;
  *(a1 + 1) = v15;
  *(a1 + 2) = v16;
  v19 = (a2 + 36);
  v18 = *(a2 + 18);
  *(a2 + 18) = 0;
  v20 = *(a1 + 18);
  *(a1 + 18) = v18;

  a1[38] = a2[38];
  v21 = *(a2 + 20);
  *(a2 + 20) = 0;
  v22 = *(a1 + 20);
  *(a1 + 20) = v21;

  v23 = *(a2 + 21);
  *(a2 + 21) = 0;
  v24 = *(a1 + 21);
  *(a1 + 21) = v23;

  std::vector<float>::__move_assign(v6, a2 + 11);
  std::vector<BOOL>::__move_assign(v8, (a2 + 50));
  v25 = *(a2 + 28);
  *(a2 + 28) = 0;
  v26 = *(a1 + 28);
  *(a1 + 28) = v25;

  *(a1 + 116) = *(a2 + 116);
  v27 = *(a2 + 30);
  v10[2] = a2[62];
  *v10 = v27;
  std::__tree<int>::__move_assign((v10 + 4), a2 + 32);
  a1[72] = a2[72];
  *a2 = v38;
  *(a2 + 5) = v43;
  *(a2 + 6) = v44;
  *(a2 + 7) = v45;
  *(a2 + 8) = v46;
  *(a2 + 1) = v39;
  *(a2 + 2) = v40;
  *(a2 + 3) = v41;
  *(a2 + 4) = v42;
  v28 = *v19;
  *v19 = v47;

  a2[38] = v48;
  v29 = *(a2 + 20);
  *(a2 + 20) = v49;

  v30 = *(a2 + 21);
  *(a2 + 21) = *(&v49 + 1);

  v31 = *(a2 + 22);
  if (v31)
  {
    *(a2 + 23) = v31;
    operator delete(v31);
  }

  *(a2 + 11) = *v50;
  *(a2 + 24) = v51;
  v32 = *(a2 + 25);
  if (v32)
  {
    operator delete(v32);
  }

  *(a2 + 25) = __p;
  *(a2 + 13) = v53;
  v33 = *(a2 + 28);
  *(a2 + 28) = v54;

  *(a2 + 116) = v55;
  *(a2 + 30) = v56;
  a2[62] = v57;
  v34 = a2 + 66;
  std::__tree<int>::destroy((a2 + 64), *(a2 + 33));
  v35 = v59;
  *(a2 + 32) = v58;
  *(a2 + 33) = v35;
  v36 = v60;
  *(a2 + 34) = v60;
  if (v36)
  {
    v35[2] = v34;
    v35 = 0;
    v58 = &v59;
    v59 = 0;
    v60 = 0;
  }

  else
  {
    *(a2 + 32) = v34;
  }

  a2[72] = v61;
  std::__tree<int>::destroy(&v58, v35);

  v37 = *MEMORY[0x277D85DE8];
}