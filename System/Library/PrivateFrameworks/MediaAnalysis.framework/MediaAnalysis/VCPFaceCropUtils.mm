@interface VCPFaceCropUtils
+ (BOOL)isValidFaceCrop:(id)a3;
+ (CGImageMetadata)createOutputMetadataFromDictionary:(id)a3;
+ (CGRect)cropBoundsInOriginalImageFromFaceCrop:(id)a3 error:(id *)a4;
+ (CGRect)faceBoundsFromFaceCrop:(id)a3 error:(id *)a4;
+ (CGSize)faceCropDimensionsFromFaceCrop:(id)a3 error:(id *)a4;
+ (id)groupingIdentifierFromFaceCrop:(id)a3 error:(id *)a4;
+ (id)imageCreationOptions;
+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)a3;
+ (id)newDictionaryRepresentationOfFaceCropDataFromFaceBox:(CGRect)a3 andCropRegion:(CGRect)a4 andGroupingIdentifier:(id)a5;
+ (id)newFaceCropFromCGImageSource:(const CGImageSource *)a3 withFaceRect:(CGRect)a4 groupingIdentifier:(id)a5 error:(id *)a6;
+ (id)newFaceCropFromImageData:(id)a3 withFaceRect:(CGRect)a4 groupingIdentifier:(id)a5 error:(id *)a6;
+ (id)newFaceCropFromImageURL:(id)a3 withNormalizedFaceRect:(CGRect)a4 groupingIdentifier:(id)a5 error:(id *)a6;
@end

@implementation VCPFaceCropUtils

+ (CGImageMetadata)createOutputMetadataFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  Mutable = CGImageMetadataCreateMutable();
  if (!CGImageMetadataSetValueWithPath(Mutable, 0, @"tiff:Orientation", @"1"))
  {
    v9 = @"Could not set output orientation";
    goto LABEL_9;
  }

  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"com.apple/PhotoVision/FaceCrop/", @"PVFC", 0))
  {
    v9 = @"Could not register facecrop namespace";
LABEL_9:
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:1 error:0];
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not generate serialized metadata representation" userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  if (!v7)
  {
    v12 = @"Could not convert metadata representation into serialized format";
    goto LABEL_13;
  }

  if (!CGImageMetadataSetValueWithPath(Mutable, 0, @"PVFC:PVFC", v7))
  {
    v12 = @"Could not set facecrop metadata";
LABEL_13:
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

  objc_autoreleasePoolPop(v4);
  return Mutable;
}

+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = CGImageSourceCreateWithData(v3, 0);
    v6 = v5;
    if (!v5)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not create image source" userInfo:0];
      objc_exception_throw(v16);
    }

    v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
    v8 = v7;
    if (!v7)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"No meta data exists on image" userInfo:0];
      objc_exception_throw(v17);
    }

    v9 = CGImageMetadataCopyStringValueWithPath(v7, 0, @"PVFC:PVFC");
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x1E696ACB0];
      v12 = [(__CFString *)v9 dataUsingEncoding:4];
      v13 = [v11 JSONObjectWithData:v12 options:1 error:0];
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v8);
    v14 = v13;
    if (v6)
    {
      CFRelease(v6);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)newDictionaryRepresentationOfFaceCropDataFromFaceBox:(CGRect)a3 andCropRegion:(CGRect)a4 andGroupingIdentifier:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v13 = a5;
  v14 = [MEMORY[0x1E695DF90] dictionary];
  [v14 setObject:&unk_1F49BC1C0 forKey:@"PVFC_VER"];
  v18.origin.x = v12;
  v18.origin.y = v11;
  v18.size.width = v10;
  v18.size.height = v9;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v18);
  [v14 setObject:DictionaryRepresentation forKey:@"PVFC_FB"];

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v16 = CGRectCreateDictionaryRepresentation(v19);
  [v14 setObject:v16 forKey:@"PVFC_CB"];

  [v14 setObject:&unk_1F49BC1C0 forKey:@"PVFC_VER"];
  if (v13)
  {
    [v14 setObject:v13 forKey:@"PVFC_GID"];
  }

  return v14;
}

+ (id)imageCreationOptions
{
  if (imageCreationOptions_onceToken != -1)
  {
    +[VCPFaceCropUtils imageCreationOptions];
  }

  v3 = imageCreationOptions_kImageCreationOptions;

  return v3;
}

void __40__VCPFaceCropUtils_imageCreationOptions__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696E128];
  v4[0] = *MEMORY[0x1E696E0A8];
  v4[1] = v0;
  v5[0] = MEMORY[0x1E695E110];
  v5[1] = MEMORY[0x1E695E118];
  v1 = *MEMORY[0x1E696E0E8];
  v4[2] = *MEMORY[0x1E696E138];
  v4[3] = v1;
  v5[2] = MEMORY[0x1E695E110];
  v5[3] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = imageCreationOptions_kImageCreationOptions;
  imageCreationOptions_kImageCreationOptions = v2;
}

+ (id)newFaceCropFromCGImageSource:(const CGImageSource *)a3 withFaceRect:(CGRect)a4 groupingIdentifier:(id)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v63 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  if (!a3)
  {
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"unexpected nil image source" userInfo:0];
    objc_exception_throw(v43);
  }

  v54[0] = -1;
  v52 = 0;
  v53 = 0;
  if ((getImagePropertiesFromCGImageSource(a3, v54, &v53, &v52) & 1) == 0)
  {
    v42 = @"invalid image source";
LABEL_38:
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v42 userInfo:0];
    objc_exception_throw(v44);
  }

  if (!(width + 0.5) || !(height + 0.5))
  {
    v42 = @"zero dimensioned face rect submitted";
    goto LABEL_38;
  }

  v14 = v53;
  if (x < 0.0 || y < 0.0)
  {
    v15 = v52;
LABEL_14:
    v67.size.width = v53;
    v67.size.height = v15;
    v67.origin.x = 0.0;
    v67.origin.y = 0.0;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v65 = CGRectIntersection(v64, v67);
    x = v65.origin.x;
    width = v65.size.width;
    v15 = v52;
    v14 = v53;
    goto LABEL_15;
  }

  v15 = v52;
  if (v53 < (width + x + 0.5) || v52 < (height + y + 0.5))
  {
    goto LABEL_14;
  }

LABEL_15:
  v66.origin.x = makeRectWithAllIntegers(x + width * 0.5 - (width + width) * 0.5);
  v68.size.width = v14;
  v68.size.height = v15;
  v68.origin.x = 0.0;
  v68.origin.y = 0.0;
  *&v17 = CGRectIntersection(v66, v68);
  RectWithAllIntegers = makeRectWithAllIntegers(v17);
  v50 = v21;
  v51 = RectWithAllIntegers;
  v22 = v19;
  v23 = v20;
  if (v19 >= v20)
  {
    v24 = v19;
  }

  else
  {
    v24 = v20;
  }

  if (v19 >= v20)
  {
    v25 = v20;
  }

  else
  {
    v25 = v19;
  }

  if (v24 <= 256.0)
  {
    v26 = 1.0;
    if (v25 < 128.0)
    {
      v26 = 128.0 / v25;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v58 = v22;
        v59 = 2048;
        v60 = v23;
        v61 = 2048;
        v62 = 128.0 / v25;
        v27 = MEMORY[0x1E69E9C10];
        v28 = "[FaceCropGeneration] Scaling up from %.0fx%.0f with factor: %.3f";
        goto LABEL_29;
      }
    }
  }

  else
  {
    v26 = 256.0 / v24;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v58 = v22;
      v59 = 2048;
      v60 = v23;
      v61 = 2048;
      v62 = v26;
      v27 = MEMORY[0x1E69E9C10];
      v28 = "[FaceCropGeneration] Scaling down from %.0fx%.0f with factor: %.3f";
LABEL_29:
      _os_log_impl(&dword_1C9B70000, v27, OS_LOG_TYPE_DEBUG, v28, buf, 0x20u);
    }
  }

  v49 = makeRectWithAllIntegers((x - v51) * v26);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OrientedCroppedAndScaledImageFromCGImageSource = createOrientedCroppedAndScaledImageFromCGImageSource(a3, v51, v50, v22, v23, v26);
  if (!OrientedCroppedAndScaledImageFromCGImageSource)
  {
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"could not create cropped facecrop image" userInfo:0];
    objc_exception_throw(v45);
  }

  v36 = [a1 newDictionaryRepresentationOfFaceCropDataFromFaceBox:v12 andCropRegion:v49 andGroupingIdentifier:{v30, v32, v34, v51, v50, v22, v23}];
  v37 = [a1 createOutputMetadataFromDictionary:v36];
  if (!v37)
  {
    v46 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"could not create facecrop metadata" userInfo:0];
    objc_exception_throw(v46);
  }

  v38 = [MEMORY[0x1E695DF88] data];
  v39 = CGImageDestinationCreateWithData(v38, @"public.jpeg", 1uLL, 0);
  if (!v39)
  {
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"could not create facecrop data" userInfo:0];
    objc_exception_throw(v47);
  }

  v55 = *MEMORY[0x1E696D338];
  v56 = &unk_1F49BB5B8;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  CGImageDestinationAddImageAndMetadata(v39, OrientedCroppedAndScaledImageFromCGImageSource, v37, v40);
  if (!CGImageDestinationFinalize(v39))
  {
    v48 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"could not write facecrop data" userInfo:0];
    objc_exception_throw(v48);
  }

  CGImageRelease(OrientedCroppedAndScaledImageFromCGImageSource);
  CFRelease(v37);
  CFRelease(v39);
  objc_autoreleasePoolPop(v13);

  return v38;
}

+ (id)newFaceCropFromImageURL:(id)a3 withNormalizedFaceRect:(CGRect)a4 groupingIdentifier:(id)a5 error:(id *)a6
{
  width = a4.size.width;
  height = a4.size.height;
  x = a4.origin.x;
  y = a4.origin.y;
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  context = objc_autoreleasePoolPush();
  if (!v9)
  {
    v38 = @"image url is nil";
    goto LABEL_35;
  }

  v11 = CGImageSourceCreateWithURL(v9, [a1 imageCreationOptions]);
  if (!v11)
  {
    v38 = @"Could not create image source";
LABEL_35:
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v38 userInfo:0];
    objc_exception_throw(v39);
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, [a1 imageCreationOptions]);
  if (!ImageAtIndex)
  {
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not create image ref" userInfo:0];
    objc_exception_throw(v40);
  }

  v13 = CGImageSourceCopyMetadataAtIndex(v11, 0, 0);
  v14 = v13;
  if (v13)
  {
    v15 = CGImageMetadataCopyStringValueWithPath(v13, 0, @"tiff:Orientation");
    v16 = v15;
    if (v15)
    {
      IntValue = CFStringGetIntValue(v15);
      if (IntValue - 9 <= 0xFFFFFFF7)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v49 = IntValue;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid orientation found: %d. Using a default value of 1", buf, 8u);
        }

        IntValue = 1;
      }

      CFRelease(v16);
    }

    else
    {
      IntValue = 1;
    }

    CFRelease(v14);
  }

  else
  {
    IntValue = 1;
  }

  v18 = CGImageGetWidth(ImageAtIndex);
  v19 = CGImageGetHeight(ImageAtIndex);
  v20.f64[0] = width;
  v20.f64[1] = height;
  v21.f64[0] = x;
  v21.f64[1] = y;
  __asm { FMOV            V2.2D, #1.0 }

  LODWORD(_Q2.f64[0]) = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v21, _Q2), vcgtq_f64(v20, _Q2))), *&width).u32[0];
  *&v20.f64[0] = vmovn_s32(vuzp1q_s32(vcltzq_f64(v21), vcltzq_f64(v20)));
  HIDWORD(_Q2.f64[0]) = vuzp1_s8(*&v20, *&v20).i32[1];
  if (vmaxv_u8(vcltz_s8(vshl_n_s8(*&_Q2.f64[0], 7uLL))))
  {
    v27 = *MEMORY[0x1E695F050];
    v28 = *(MEMORY[0x1E695F050] + 8);
    v29 = *(MEMORY[0x1E695F050] + 16);
    v30 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v31 = v19;
    if (IntValue <= 4)
    {
      v32 = v18;
    }

    else
    {
      v32 = v19;
    }

    if (IntValue > 4)
    {
      v31 = v18;
    }

    if (v32 >= v31)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    v27 = x * v32;
    v29 = width * v33;
    v28 = y * v31;
    v30 = height * v33;
  }

  v51.origin.x = v27;
  v51.origin.y = v28;
  v51.size.width = v29;
  v51.size.height = v30;
  if (CGRectIsNull(v51))
  {
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not create face rect" userInfo:0];
    objc_exception_throw(v41);
  }

  v47[0] = 0;
  v34 = [a1 newFaceCropFromCGImageSource:v11 withFaceRect:v10 groupingIdentifier:v47 error:{v27, v28, v29, v30}];
  v35 = v47[0];
  CFRelease(ImageAtIndex);
  CFRelease(v11);
  objc_autoreleasePoolPop(context);
  if (a6 && v35)
  {
    v36 = v35;
    *a6 = v35;
  }

  return v34;
}

+ (id)newFaceCropFromImageData:(id)a3 withFaceRect:(CGRect)a4 groupingIdentifier:(id)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v23[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = objc_autoreleasePoolPush();
  if (!v13)
  {
    v21 = @"image data is nil";
    goto LABEL_9;
  }

  v16 = CGImageSourceCreateWithData(v13, [a1 imageCreationOptions]);
  if (!v16)
  {
    v21 = @"Could not create image source from data";
LABEL_9:
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v23[0] = 0;
  v17 = [a1 newFaceCropFromCGImageSource:v16 withFaceRect:v14 groupingIdentifier:v23 error:{x, y, width, height}];
  v18 = v23[0];
  CFRelease(v16);
  objc_autoreleasePoolPop(v15);
  if (a6 && v18)
  {
    v19 = v18;
    *a6 = v18;
  }

  return v17;
}

+ (BOOL)isValidFaceCrop:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [a1 newDictionaryPopulatedWithFaceCropDataFromImageData:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"PVFC_VER"];
    v10 = [v9 isEqualToNumber:&unk_1F49BC1C0];
    if ((v10 & 1) != 0 || ([v8 objectForKeyedSubscript:@"PVFC_VER"], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToNumber:", &unk_1F49BC1D8)))
    {
      v11 = [v8 objectForKeyedSubscript:@"PVFC_FB"];
      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"PVFC_CB"];
        v13 = v12 != 0;
      }

      else
      {
        v13 = 0;
      }

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v6);
  return v13;
}

+ (CGRect)faceBoundsFromFaceCrop:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v6;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 newDictionaryPopulatedWithFaceCropDataFromImageData:v5];
  v9 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"invalid facecrop supplied" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = [v8 objectForKeyedSubscript:@"PVFC_FB"];
  v11 = v10;
  if (v10)
  {
    CGRectMakeWithDictionaryRepresentation(v10, &rect);
  }

  objc_autoreleasePoolPop(v7);
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (CGRect)cropBoundsInOriginalImageFromFaceCrop:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v6;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 newDictionaryPopulatedWithFaceCropDataFromImageData:v5];
  v9 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"invalid facecrop supplied" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = [v8 objectForKeyedSubscript:@"PVFC_CB"];
  v11 = v10;
  if (v10)
  {
    CGRectMakeWithDictionaryRepresentation(v10, &rect);
  }

  objc_autoreleasePoolPop(v7);
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)groupingIdentifierFromFaceCrop:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [a1 newDictionaryPopulatedWithFaceCropDataFromImageData:v5];
  v8 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"invalid facecrop supplied" userInfo:0];
    objc_exception_throw(v11);
  }

  v9 = [v7 objectForKeyedSubscript:@"PVFC_GID"];

  objc_autoreleasePoolPop(v6);

  return v9;
}

+ (CGSize)faceCropDimensionsFromFaceCrop:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (([a1 isValidFaceCrop:v5] & 1) == 0)
  {
    v13 = @"the supplied data is not a facecrop";
    goto LABEL_7;
  }

  v7 = CGImageSourceCreateWithData(v5, [a1 imageCreationOptions]);
  v8 = v7;
  if (!v7)
  {
    v13 = @"could not create an image source";
LABEL_7:
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  v18[0] = -1;
  v16 = 0;
  v17 = 0;
  if ((getImagePropertiesFromCGImageSource(v7, v18, &v17, &v16) & 1) == 0)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not retrieve image properties" userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = v17;
  v10 = v16;
  CFRelease(v8);
  objc_autoreleasePoolPop(v6);

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end