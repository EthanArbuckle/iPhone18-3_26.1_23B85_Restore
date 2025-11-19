id sub_2583A7AE0(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_25839E29C();
  v4 = sub_258428850();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_2584282A0();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_2583A7BF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_258428F10();
  }

  return sub_258429000();
}

void *ImageProcessor.sceneView.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

double ImageProcessor.viewportSize.getter()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 88);
  }

  v1 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  result = v3;
  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0;
  return result;
}

void ImageProcessor.viewportSize.setter(double a1, double a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  *(v2 + 104) = 0;
}

__n128 (*ImageProcessor.viewportSize.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = ImageProcessor.viewportSize.getter();
  *(a1 + 8) = v3;
  return sub_2583A7D64;
}

__n128 sub_2583A7D64(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = 0;
  return result;
}

double ImageProcessor.viewportCenter.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 112);
  }

  result = ImageProcessor.viewportSize.getter() * 0.5;
  v2 = *(v0 + 96) * 0.5;
  *(v0 + 112) = result;
  *(v0 + 120) = v2;
  *(v0 + 128) = 0;
  return result;
}

void ImageProcessor.viewportCenter.setter(double a1, double a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
}

__n128 (*ImageProcessor.viewportCenter.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = ImageProcessor.viewportCenter.getter();
  *(a1 + 8) = v3;
  return sub_2583A7E10;
}

__n128 sub_2583A7E10(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u8[0] = 0;
  return result;
}

void sub_2583A7E2C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
  v5 = v2;
}

void *ImageProcessor.outputBuffer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = v1;
  return v1;
}

__CVBuffer *ImageProcessor.scaledPixels.getter()
{
  result = *(v0 + 160);
  if (!result)
  {
    swift_beginAccess();
    result = *(v0 + 152);
    if (result)
    {
      CVPixelBufferLockBaseAddress(result, 0);
      result = *(v0 + 152);
      if (result)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(result);
        result = *(v0 + 152);
        if (result)
        {
          CVPixelBufferUnlockBaseAddress(result, 0);
          result = BaseAddress;
          *(v0 + 160) = BaseAddress;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void *(*ImageProcessor.scaledPixels.modify(__CVBuffer **a1))(void *result)
{
  a1[1] = v1;
  *a1 = ImageProcessor.scaledPixels.getter();
  return sub_2583A7F9C;
}

void sub_2583A7FA8(_OWORD *a1@<X8>)
{
  if ((*(v1 + 232) & 1) == 0)
  {
    v6 = *(v1 + 216);
    v5 = *(v1 + 200);
    v4 = *(v1 + 184);
    goto LABEL_5;
  }

  sub_2583A8654(&v7);
  if ((v10 & 1) == 0)
  {
    v3 = v8;
    *(v1 + 184) = v7;
    v4 = v7;
    v5 = v8;
    *(v1 + 200) = v3;
    v6 = v9;
    *(v1 + 216) = v9;
    *(v1 + 232) = v10;
LABEL_5:
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    return;
  }

  __break(1u);
}

uint64_t ImageProcessor.__allocating_init(sceneView:outputSize:)(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  ImageProcessor.init(sceneView:outputSize:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ImageProcessor.init(sceneView:outputSize:)(void *a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 16) = CGColorSpaceCreateDeviceRGB();
  *(v4 + 24) = xmmword_25842D9A0;
  *(v4 + 40) = 4;
  *(v4 + 48) = 8194;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842BFA0;
  *(inited + 32) = sub_258428660();
  *(inited + 40) = v10;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = sub_258428660();
  *(inited + 64) = v11;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = sub_258389488(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927B78);
  result = swift_arrayDestroy();
  *(v4 + 152) = 0;
  *(v4 + 56) = v12;
  *(v4 + 64) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
  *(v4 + 160) = 0;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 1;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  v14 = a3 * a4;
  *(v4 + 136) = a3;
  *(v4 + 144) = a4;
  if (COERCE__INT64(fabs(a3 * a4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 168) = v14;
  v15 = a1;
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    v16 = [objc_opt_self() contextWithMTLDevice_];
    swift_unknownObjectRelease();
    *(v4 + 176) = v16;
    sub_258385DB0(0, &qword_27F928320);
    v17 = sub_258428500();
    value = ImageProcessor.createPixelBuffer(pixelFormat:options:)(0x42475241u, v17).value;

    swift_beginAccess();
    v19 = *(v4 + 152);
    *(v4 + 152) = value;

    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

CVBufferRef_optional __swiftcall ImageProcessor.createPixelBuffer(pixelFormat:options:)(Swift::UInt32 pixelFormat, CFDictionaryRef options)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v3 = *(v2 + 136);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v2 + 144);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v4 >= 9.22337204e18)
  {
    goto LABEL_13;
  }

  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v4, pixelFormat, options, v6);
  return v6[0];
}

CVPixelBufferRef ImageProcessor.createPixelBuffer(pixelFormat:options:baseAddress:)(OSType pixelFormatType, CFDictionaryRef pixelBufferAttributes, void *baseAddress)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v4 = *(v3 + 136);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v3 + 144);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if ((v4 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_15;
  }

  CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v4, v5, pixelFormatType, baseAddress, 4 * v4, 0, 0, pixelBufferAttributes, v7);
  return v7[0];
}

CVBufferRef_optional __swiftcall ImageProcessor.renderInput(frame:)(ARFrame frame)
{
  v2 = [(objc_class *)frame.super.isa capturedImage];
  v3 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  sub_2583A7FA8(v12);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v4 = [v3 imageByApplyingTransform_];

  v5 = *(v1 + 176);
  result.value = swift_beginAccess();
  v7 = *(v1 + 152);
  if (v7)
  {
    v8 = v7;
    [v5 render:v4 toCVPixelBuffer:v8];

    v9 = *(v1 + 152);
    v10 = v9;
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2583A8654(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 currentFrame];

  if (v7)
  {
    v8 = [v7 camera];
    [v8 imageResolution];
    v10 = v9;
    [v8 imageResolution];
    v12 = v11;
    [v7 displayTransformForOrientation:2 viewportSize:ImageProcessor.viewportSize.getter()];
    tx = t1.tx;
    ty = t1.ty;
    v41 = *&t1.c;
    v45 = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, v10 * -0.5, v12 * -0.5);
    *&t2.a = v45;
    *&t2.c = v41;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v49, &t1, &t2);
    v15 = v49.tx;
    v16 = v49.ty;
    v42 = *&v49.c;
    v46 = *&v49.a;
    CGAffineTransformMakeTranslation(&t1, v12 * 0.5, v10 * 0.5);
    v17 = *&t1.a;
    v18 = *&t1.c;
    v19 = *&t1.tx;
    *&t1.a = v46;
    *&t1.c = v42;
    t1.tx = v15;
    t1.ty = v16;
    *&t2.a = v17;
    *&t2.c = v18;
    *&t2.tx = v19;
    CGAffineTransformConcat(&v49, &t1, &t2);
    v43 = *&v49.c;
    v47 = *&v49.a;
    v20 = v49.ty;
    v39 = v49.tx;
    v22 = *(v2 + 136);
    v21 = *(v2 + 144);
    v23 = v12 - v10 * (v22 / v21);
    v24 = v23 * 0.5;
    v25 = v12 - v23;
    v26 = v10 - v12 / (v22 / v21);
    v27 = v26 * 0.5;
    v28 = v10 - v26;
    if (v12 / v10 <= v22 / v21)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v24;
    }

    if (v12 / v10 <= v22 / v21)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0.0;
    }

    if (v12 / v10 <= v22 / v21)
    {
      v10 = v28;
    }

    else
    {
      v12 = v25;
    }

    v52.origin.x = v29;
    v52.origin.y = v30;
    v52.size.width = v12;
    v52.size.height = v10;
    Width = CGRectGetWidth(v52);
    v53.origin.x = v29;
    v53.origin.y = v30;
    v53.size.width = v12;
    v53.size.height = v10;
    Height = CGRectGetHeight(v53);
    CGAffineTransformMakeScale(&t1, v22 / Width, v21 / Height);
    v33 = *&t1.a;
    v34 = *&t1.c;
    v35 = *&t1.tx;
    *&t1.a = v47;
    *&t1.c = v43;
    t1.tx = v39;
    t1.ty = v20;
    *&t2.a = v33;
    *&t2.c = v34;
    *&t2.tx = v35;
    CGAffineTransformConcat(&v49, &t1, &t2);
    v44 = *&v49.c;
    v48 = *&v49.a;
    v40 = *&v49.tx;

    v37 = v40;
    v36 = v44;
    v38 = v48;
  }

  else
  {
    v38 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
  }

  *a1 = v38;
  *(a1 + 16) = v36;
  *(a1 + 32) = v37;
  *(a1 + 48) = v7 == 0;
}

void ImageProcessor.makeSamplePoints(numberOfPoints:)(uint64_t a1)
{
  v3 = ImageProcessor.viewportSize.getter();
  v4 = *(v1 + 96);
  v5 = sqrt(v3 * v4 / a1);
  v6 = round(*(v1 + 88) / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = round(v4 / v5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = v7;
  if (v7 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v8)
  {
    return;
  }

  v9 = v6;
  if (v6 < 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_25839D0E8(0, *(v11 + 2) + 1, 1, v11);
      }

      v12 = 0;
      v13 = *(v11 + 2);
      v14 = 16 * v13;
      do
      {
        v15 = *(v11 + 3);
        v16 = v13 + 1;
        if (v13 >= v15 >> 1)
        {
          v11 = sub_25839D0E8((v15 > 1), v13 + 1, 1, v11);
        }

        *(v11 + 2) = v16;
        v17 = &v11[v14];
        *(v17 + 4) = v5 * (v10 & 1) * 0.5 + v5 * (v12 + 0.5);
        *(v17 + 5) = v5 * (v10 + 0.5);
        v14 += 16;
        v13 = v16;
        ++v12;
      }

      while (v9 != v12);
    }

    ++v10;
  }

  while (v10 != v8);
}

id ImageProcessor.createDebugImage(featureProvider:inputBuffer:pixelRenderer:cameraTransform:gravity:)(id result, __CVBuffer *a2)
{
  v3 = *(v2 + 136);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(v2 + 144);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = v3;
  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_258385DB0(0, &qword_27F9287F0);
  v7 = [objc_opt_self() redColor];
  result = UIImage.init(color:size:)(v7, __PAIR128__(*&v4, *&v3));
  if (result)
  {
    v8 = result;
    v9 = [result CGImage];
    if (v9)
    {
      v10 = v9;
      v11 = __CGBitmapContextCreate_1(v3, v4, 4 * v5, *(v2 + 16), *(v2 + 48));
      if (v11)
      {
        v12 = v11;
        if (CGBitmapContextGetData(v11))
        {
          result = sub_258428C40();
          if ((v5 * v4) >> 64 == (v5 * v4) >> 63)
          {
            CVPixelBufferLockBaseAddress(a2, 0);
            CVPixelBufferGetBaseAddress(a2);
            v13 = sub_258385DB0(0, &qword_27F928550);
            MEMORY[0x28223BE20](v13);
            sub_258428CB0();
            CVPixelBufferUnlockBaseAddress(a2, 0);
            result = CGBitmapContextCreateImage(v12);
            if (result)
            {
              v14 = result;
              [v8 scale];
              v16 = v15;
              v17 = [v8 imageOrientation];
              v18 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v14 scale:v17 orientation:v16];

              return v18;
            }

            goto LABEL_28;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v12 = v10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_25842CCB0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 0xD000000000000029;
    *(v19 + 40) = 0x8000000258435480;
    sub_2584293A0();

    return 0;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t ImageProcessor.renderPixelBuffer(featureProvider:inputBuffer:pixelRenderer:cameraTransform:gravity:outputBuffer:)(uint64_t a1, __CVBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CVPixelBufferRef *a10)
{
  v11 = *(v10 + 136);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v10 + 144);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 < 9.22337204e18)
  {
    v14 = *a10;
    CVPixelBufferLockBaseAddress(*a10, 0);
    CVPixelBufferGetBaseAddress(v14);
    CVPixelBufferLockBaseAddress(a2, 0);
    CVPixelBufferGetBaseAddress(a2);
    v15 = sub_258385DB0(0, &qword_27F928550);
    MEMORY[0x28223BE20](v15);
    sub_258428CB0();
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return CVPixelBufferUnlockBaseAddress(v14, 0);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2583A90B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v13 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13 + a2;
  if (__OFADD__(v13, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v13 * a3;
  if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v14 * a3;
  if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 < v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 == v16)
  {
    return result;
  }

  if (v15 >= v16)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = a3 * a2;
  do
  {
    result = a5(*(a7 + 4 * v15), a8, v15, a9, a10, a11, a12, a13 & 1);
    *(a4 + 4 * v15++) = result;
    --v21;
  }

  while (v21);
  return result;
}

void *ImageProcessor.getPixelBufferAddress(pixelBuffer:)(__CVBuffer *a1)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return BaseAddress;
}

Swift::UInt32_optional __swiftcall ImageProcessor.getPixel(imageX:imageY:invertY:)(Swift::Int imageX, Swift::Int imageY, Swift::Bool invertY)
{
  if (imageX < 0)
  {
    goto LABEL_17;
  }

  v4 = *(v3 + 136);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = 0;
  v6 = v4;
  v7 = 1;
  if (v4 <= imageX || imageY < 0)
  {
    return (v5 | (v7 << 32));
  }

  v8 = *(v3 + 144);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v8 <= imageY)
  {
LABEL_17:
    v5 = 0;
    v7 = 1;
    return (v5 | (v7 << 32));
  }

  v9 = imageX;
  if (invertY)
  {
    v10 = v8 + ~imageY;
  }

  else
  {
    v10 = imageY;
  }

  imageX = ImageProcessor.scaledPixels.getter();
  v11 = v10 * v6;
  if ((v10 * v6) >> 64 != (v10 * v6) >> 63)
  {
    goto LABEL_25;
  }

  v12 = __OFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12)
  {
LABEL_26:
    __break(1u);
    return imageX;
  }

  v7 = 0;
  v5 = *(imageX + 4 * v13);
  return (v5 | (v7 << 32));
}

CGPoint __swiftcall ImageProcessor.frameNormalize(screenPoint:)(CGPoint screenPoint)
{
  y = screenPoint.y;
  v3 = screenPoint.x / ImageProcessor.viewportSize.getter();
  v4 = y / *(v1 + 96);
  result.y = v4;
  result.x = v3;
  return result;
}

id *ImageProcessor.deinit()
{

  return v0;
}

uint64_t ImageProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_2583A9480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 152);
  *a2 = v4;

  return v4;
}

double static LineUtil.line2i(of:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_2583A9780(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double static LineUtil.getIntersection(line1:line2:)(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 - result;
  v9 = a8 - a6;
  v10 = a4 - a2;
  v11 = a7 - a5;
  v12 = v8 * v9 - v10 * v11;
  if (v12 != 0.0)
  {
    v13 = a5 - result;
    v14 = a6 - a2;
    v15 = (v10 * v13 - v8 * v14) / v12;
    if (v15 <= 1.0 && v15 >= 0.0)
    {
      v16 = (v13 * v9 - v14 * v11) / v12;
      if (v16 >= 0.0 && v16 <= 1.0)
      {
        return v8 * v16 + result;
      }
    }
  }

  return result;
}

double static LineUtil.getIntersection(line:rect:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  sub_2583A9988(v12, a2, a3, a4, a5, a6, a7, a8, a9);
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  return result;
}

uint64_t static LineUtil.getLinePoints(p1:p2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84F90];
  sub_2583A9D2C(a1, a2, a3, a4, &v5);
  return v5;
}

uint64_t static LineUtil.getLinePoints(p1:p2:points:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_2583A9D2C(a1, a2, a3, a4, a5);
}

uint64_t static LineUtil.isParallel(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v2.f32[2] + v3));
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v2.f32[2] + v3), vmul_f32(*v2.f32, *v2.f32)));
  v4 = vmulq_n_f32(a1, vmul_f32(*v2.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v2.f32[2] + v3), vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v5 = vmulq_f32(a2, a2);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v7 = vmulq_f32(v4, vmulq_n_f32(a2, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]));
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  v8 = fabsf(v7.f32[0]);
  if ((v7.f32[0] + 1.0) >= 0.001)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v8 > 0.999)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

void sub_2583A9780(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
LABEL_12:
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    return;
  }

  v5 = 0;
  v10 = round(a2);
  v9 = 1;
  if (fabs(v10) > 9.22337204e18)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v5 = 0;
  v11 = round(a3);
  v9 = 1;
  if (fabs(v11) > 9.22337204e18)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v5 = 0;
  v12 = round(a4);
  v9 = 1;
  if (fabs(v12) > 9.22337204e18)
  {
LABEL_11:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v13 = round(a5);
  if (fabs(v13) > 9.22337204e18)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 < 9.22337204e18)
  {
    v9 = 0;
    v5 = v10;
    v6 = v11;
    v7 = v12;
    v8 = v13;
    goto LABEL_12;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_2583A9988@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v63.origin.x = a6;
  v63.origin.y = a7;
  v63.size.width = a8;
  v63.size.height = a9;
  v61.x = a2;
  v61.y = a3;
  v14 = CGRectContainsPoint(v63, v61);
  v64.origin.x = a6;
  v64.origin.y = a7;
  v64.size.width = a8;
  v64.size.height = a9;
  v62.y = a5;
  v62.x = a4;
  result = CGRectContainsPoint(v64, v62);
  if (v14 && result)
  {
    v16 = 0;
    *&v17 = a4;
    *(&v17 + 1) = a5;
LABEL_27:
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v17;
    *(a1 + 32) = v16;
    return result;
  }

  v18 = result;
  v65.origin.x = a6;
  v65.origin.y = a7;
  v65.size.width = a8;
  v65.size.height = a9;
  Width = CGRectGetWidth(v65);
  v66.origin.x = a6;
  v66.origin.y = a7;
  v66.size.width = a8;
  v66.size.height = a9;
  v19 = CGRectGetWidth(v66);
  v67.origin.x = a6;
  v67.origin.y = a7;
  v67.size.width = a8;
  v67.size.height = a9;
  Height = CGRectGetHeight(v67);
  v68.origin.y = a7;
  v21 = v19 + a6;
  v22 = Height + a7;
  v68.origin.x = a6;
  v68.size.width = a8;
  v68.size.height = a9;
  v23 = CGRectGetHeight(v68) + a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9287F8);
  inited = swift_initStackObject();
  v25 = 0;
  *(inited + 16) = xmmword_25842D9A0;
  *(inited + 32) = a6;
  *(inited + 40) = a7;
  v26.f64[0] = Width;
  v26.f64[1] = a7;
  v27 = vaddq_f64(v26, *&a6);
  *(inited + 48) = v27;
  *(inited + 64) = v27;
  *(inited + 80) = v21;
  *(inited + 88) = v22;
  *(inited + 96) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = a6 + 0.0;
  *(inited + 120) = v23;
  *(inited + 128) = a6 + 0.0;
  *(inited + 136) = v23;
  *(inited + 144) = a6;
  *(inited + 152) = a7;
  v28 = a4 - a2;
  v29 = a5 - a3;
  v30 = MEMORY[0x277D84F90];
  __asm { FMOV            V16.2D, #1.0 }

  v55 = _Q16;
  do
  {
    v36 = *(inited + v25 + 32);
    v37 = *(inited + v25 + 40);
    v38.f64[0] = *(inited + v25 + 56) - v37;
    v39.f64[0] = *(inited + v25 + 48) - v36;
    v40 = v28 * v38.f64[0] - v29 * v39.f64[0];
    if (v40 != 0.0)
    {
      v38.f64[1] = v29;
      v39.f64[1] = v28;
      v41 = vdivq_f64(vsubq_f64(vmulq_n_f64(v38, v36 - a2), vmulq_n_f64(v39, v37 - a3)), vdupq_lane_s64(*&v40, 0));
      v42.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(v41, _Q16)), *&v41.f64[0]).u32[0];
      v42.i32[1] = vuzp1_s16(*&v41, vmovn_s64(vcltzq_f64(v41))).i32[1];
      if ((vmaxv_u16(v42) & 1) == 0)
      {
        v43 = v28 * v41.f64[0] + a2;
        v44 = v29 * v41.f64[0] + a3;
        v45 = *(v30 + 2);
        if (!v45 || (v46 = (*(v30 + 4) - v43) * (*(v30 + 4) - v43), v47 = (*(v30 + 5) - v44) * (*(v30 + 5) - v44), (v46 + v47) > 0.00000011921))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_25839D0E8(0, v45 + 1, 1, v30);
          }

          v49 = *(v30 + 2);
          v48 = *(v30 + 3);
          v29 = a5 - a3;
          v28 = a4 - a2;
          _Q16 = v55;
          if (v49 >= v48 >> 1)
          {
            v51 = sub_25839D0E8((v48 > 1), v49 + 1, 1, v30);
            _Q16 = v55;
            v29 = a5 - a3;
            v28 = a4 - a2;
            v30 = v51;
          }

          *(v30 + 2) = v49 + 1;
          v50 = &v30[16 * v49];
          *(v50 + 4) = v43;
          *(v50 + 5) = v44;
          if (v49 == 1)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v25 += 32;
  }

  while (v25 != 128);
  v52 = *(v30 + 2);
  if (v52 == 2)
  {
LABEL_17:
    a2 = *(v30 + 4);
    a3 = *(v30 + 5);
    result = swift_setDeallocating();
    if (*(v30 + 2) >= 2uLL)
    {
      v53 = *(v30 + 3);
LABEL_19:
      v58 = v53;

      v17 = v58;
      v16 = 0;
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {

    if (v52 != 1)
    {
      goto LABEL_26;
    }

    if (!v14)
    {
      a2 = a4;
      a3 = a5;
    }

    if (((v14 | v18) & 1) == 0)
    {
LABEL_26:

      v17 = 0uLL;
      v16 = 1;
      a2 = 0.0;
      a3 = 0.0;
      goto LABEL_27;
    }

    if (*(v30 + 2))
    {
      v53 = *(v30 + 2);
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2583A9D2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4 - a2;
  if (__OFSUB__(a4, a2))
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = result;
  v11 = a4 - a2;
  if (v5 < 0)
  {
    v11 = a2 - a4;
    if (__OFSUB__(0, v5))
    {
      goto LABEL_116;
    }
  }

  v12 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v13 = a3 - result;
  if (v12 < 0)
  {
    v13 = result - a3;
    if (__OFSUB__(0, v12))
    {
      goto LABEL_117;
    }
  }

  if (v11 < v13)
  {
    if (a3 < result)
    {
      v14 = result - a3;
      if (!__OFSUB__(result, a3))
      {
        if (a2 >= a4)
        {
          if (__OFSUB__(a2, a4))
          {
LABEL_132:
            __break(1u);
            return result;
          }

          v51 = 1;
          v5 = a2 - a4;
        }

        else
        {
          v51 = -1;
        }

        if (v5 + 0x4000000000000000 >= 0)
        {
          v40 = 2 * v5;
          v41 = 2 * v5 - v14;
          if (!__OFSUB__(2 * v5, v14))
          {
            v50 = v14 + 0x4000000000000000;
            v42 = 2 * v14;
            while (1)
            {
              v43 = *a5;
              result = swift_isUniquelyReferenced_nonNull_native();
              *a5 = v43;
              if ((result & 1) == 0)
              {
                result = sub_25839CD8C(0, *(v43 + 16) + 1, 1, v43);
                v43 = result;
                *a5 = result;
              }

              v45 = *(v43 + 16);
              v44 = *(v43 + 24);
              if (v45 >= v44 >> 1)
              {
                result = sub_25839CD8C((v44 > 1), v45 + 1, 1, v43);
                v43 = result;
                *a5 = result;
              }

              *(v43 + 16) = v45 + 1;
              v46 = v43 + 16 * v45;
              *(v46 + 32) = v8;
              *(v46 + 40) = v7;
              if (v41 >= 1)
              {
                v25 = __OFADD__(v7, v51);
                v7 += v51;
                if (v25)
                {
                  goto LABEL_107;
                }

                if (v50 < 0)
                {
                  goto LABEL_108;
                }

                v25 = __OFSUB__(v41, v42);
                v41 -= v42;
                if (v25)
                {
                  goto LABEL_113;
                }
              }

              v25 = __OFADD__(v41, v40);
              v41 += v40;
              if (v25)
              {
                goto LABEL_97;
              }

              if (v10 == v8)
              {
                return result;
              }

              v25 = __OFADD__(v8++, 1);
              if (v25)
              {
                goto LABEL_101;
              }
            }
          }

          goto LABEL_126;
        }

        goto LABEL_124;
      }

      goto LABEL_118;
    }

    if (a4 >= a2)
    {
      v16 = 1;
    }

    else
    {
      v5 = a2 - a4;
      if (__OFSUB__(a2, a4))
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v16 = -1;
    }

    v53 = v16;
    if (v5 + 0x4000000000000000 < 0)
    {
      goto LABEL_119;
    }

    v26 = 2 * v5;
    v27 = 2 * v5 - v12;
    if (__OFSUB__(2 * v5, v12))
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v48 = v12 + 0x4000000000000000;
    v28 = 2 * v12;
    while (1)
    {
      v29 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v29;
      if ((result & 1) == 0)
      {
        result = sub_25839CD8C(0, *(v29 + 16) + 1, 1, v29);
        v29 = result;
        *a5 = result;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_25839CD8C((v30 > 1), v31 + 1, 1, v29);
        v29 = result;
        *a5 = result;
      }

      *(v29 + 16) = v31 + 1;
      v32 = v29 + 16 * v31;
      *(v32 + 32) = v10;
      *(v32 + 40) = v9;
      if (v27 >= 1)
      {
        v25 = __OFADD__(v9, v53);
        v9 += v53;
        if (v25)
        {
          goto LABEL_102;
        }

        if (v48 < 0)
        {
          goto LABEL_104;
        }

        v25 = __OFSUB__(v27, v28);
        v27 -= v28;
        if (v25)
        {
          goto LABEL_110;
        }
      }

      v25 = __OFADD__(v27, v26);
      v27 += v26;
      if (v25)
      {
        break;
      }

      if (v8 == v10)
      {
        return result;
      }

      v25 = __OFADD__(v10++, 1);
      if (v25)
      {
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (a4 >= a2)
  {
    if (a3 >= result)
    {
      v17 = 1;
    }

    else
    {
      v12 = result - a3;
      if (__OFSUB__(result, a3))
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v17 = -1;
    }

    v54 = v17;
    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_120;
    }

    v33 = 2 * v12;
    v34 = 2 * v12 - v5;
    if (__OFSUB__(2 * v12, v5))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v49 = v5 + 0x4000000000000000;
    v35 = 2 * v5;
    while (1)
    {
      v36 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v36;
      if ((result & 1) == 0)
      {
        result = sub_25839CD8C(0, *(v36 + 16) + 1, 1, v36);
        v36 = result;
        *a5 = result;
      }

      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_25839CD8C((v37 > 1), v38 + 1, 1, v36);
        v36 = result;
        *a5 = result;
      }

      *(v36 + 16) = v38 + 1;
      v39 = v36 + 16 * v38;
      *(v39 + 32) = v10;
      *(v39 + 40) = v9;
      if (v34 >= 1)
      {
        v25 = __OFADD__(v10, v54);
        v10 += v54;
        if (v25)
        {
          goto LABEL_103;
        }

        if (v49 < 0)
        {
          goto LABEL_105;
        }

        v25 = __OFSUB__(v34, v35);
        v34 -= v35;
        if (v25)
        {
          goto LABEL_111;
        }
      }

      v25 = __OFADD__(v34, v33);
      v34 += v33;
      if (v25)
      {
        goto LABEL_95;
      }

      if (v7 == v9)
      {
        break;
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_99;
      }
    }
  }

  else
  {
    if (result >= a3)
    {
      if (__OFSUB__(result, a3))
      {
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v15 = a2 - a4;
      if (__OFSUB__(a2, a4))
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v52 = 1;
      v12 = result - a3;
    }

    else
    {
      v15 = a2 - a4;
      if (__OFSUB__(a2, a4))
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v52 = -1;
    }

    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_121;
    }

    v18 = 2 * v12;
    v19 = 2 * v12 - v15;
    if (__OFSUB__(2 * v12, v15))
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v47 = v15 + 0x4000000000000000;
    v20 = 2 * v15;
    while (1)
    {
      v21 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v21;
      if ((result & 1) == 0)
      {
        result = sub_25839CD8C(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
        *a5 = result;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_25839CD8C((v22 > 1), v23 + 1, 1, v21);
        v21 = result;
        *a5 = result;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v8;
      *(v24 + 40) = v7;
      if (v19 >= 1)
      {
        v25 = __OFADD__(v8, v52);
        v8 += v52;
        if (v25)
        {
          goto LABEL_106;
        }

        if (v47 < 0)
        {
          goto LABEL_109;
        }

        v25 = __OFSUB__(v19, v20);
        v19 -= v20;
        if (v25)
        {
          goto LABEL_112;
        }
      }

      v25 = __OFADD__(v19, v18);
      v19 += v18;
      if (v25)
      {
        goto LABEL_96;
      }

      if (v9 == v7)
      {
        break;
      }

      v25 = __OFADD__(v7++, 1);
      if (v25)
      {
        goto LABEL_100;
      }
    }
  }

  return result;
}

uint64_t _s17MeasureFoundation8LineUtilC04drawC02x02y02x12y14withySi_S3iySi_SitXEtFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a4 - a2;
  if (__OFSUB__(a4, a2))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = result;
  v11 = a4 - a2;
  if (v5 < 0)
  {
    v11 = a2 - a4;
    if (__OFSUB__(0, v5))
    {
      goto LABEL_96;
    }
  }

  v12 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v13 = a3 - result;
  if (v12 < 0)
  {
    v13 = result - a3;
    if (__OFSUB__(0, v12))
    {
      goto LABEL_97;
    }
  }

  if (v11 < v13)
  {
    if (a3 < result)
    {
      v14 = result - a3;
      if (!__OFSUB__(result, a3))
      {
        v15 = __OFSUB__(a2, a4);
        v16 = a2 - a4;
        if (a2 >= a4)
        {
LABEL_63:
          if (v15)
          {
LABEL_112:
            __break(1u);
            return result;
          }

          v17 = 1;
          v5 = v16;
        }

        else
        {
          v17 = -1;
        }

        if (v5 + 0x4000000000000000 >= 0)
        {
          v31 = 2 * v5;
          v32 = 2 * v5 - v14;
          if (!__OFSUB__(2 * v5, v14))
          {
            v33 = v14 + 0x4000000000000000;
            v34 = 2 * v14;
            while (1)
            {
              result = a5(v8, v7);
              if (v32 >= 1)
              {
                v15 = __OFADD__(v7, v17);
                v7 += v17;
                if (v15)
                {
                  goto LABEL_87;
                }

                if (v33 < 0)
                {
                  goto LABEL_88;
                }

                v15 = __OFSUB__(v32, v34);
                v32 -= v34;
                if (v15)
                {
                  goto LABEL_93;
                }
              }

              v15 = __OFADD__(v32, v31);
              v32 += v31;
              if (v15)
              {
                goto LABEL_81;
              }

              if (v10 == v8)
              {
                return result;
              }

              v15 = __OFADD__(v8++, 1);
              if (v15)
              {
                __break(1u);
                return result;
              }
            }
          }

          goto LABEL_106;
        }

        goto LABEL_104;
      }

      goto LABEL_98;
    }

    if (a4 >= a2)
    {
LABEL_37:
      v7 = 1;
    }

    else
    {
      v5 = a2 - a4;
      if (__OFSUB__(a2, a4))
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v7 = -1;
    }

    if (v5 + 0x4000000000000000 < 0)
    {
      goto LABEL_99;
    }

    v23 = 2 * v5;
    v24 = 2 * v5 - v12;
    if (__OFSUB__(2 * v5, v12))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v25 = v12 + 0x4000000000000000;
    v26 = 2 * v12;
    while (1)
    {
      result = a5(v10, v9);
      if (v24 >= 1)
      {
        v15 = __OFADD__(v9, v7);
        v9 += v7;
        if (v15)
        {
          goto LABEL_82;
        }

        if (v25 < 0)
        {
          goto LABEL_84;
        }

        v15 = __OFSUB__(v24, v26);
        v24 -= v26;
        if (v15)
        {
          goto LABEL_90;
        }
      }

      v15 = __OFADD__(v24, v23);
      v24 += v23;
      if (v15)
      {
        break;
      }

      if (v8 == v10)
      {
        return result;
      }

      v15 = __OFADD__(v10++, 1);
      if (v15)
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (a4 >= a2)
  {
    if (a3 >= result)
    {
LABEL_50:
      v8 = 1;
    }

    else
    {
      v12 = result - a3;
      if (__OFSUB__(result, a3))
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v8 = -1;
    }

    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_100;
    }

    v27 = 2 * v12;
    v28 = 2 * v12 - v5;
    if (__OFSUB__(2 * v12, v5))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v29 = v5 + 0x4000000000000000;
    v30 = 2 * v5;
    while (1)
    {
      result = a5(v10, v9);
      if (v28 >= 1)
      {
        v15 = __OFADD__(v10, v8);
        v10 += v8;
        if (v15)
        {
          goto LABEL_83;
        }

        if (v29 < 0)
        {
          goto LABEL_85;
        }

        v15 = __OFSUB__(v28, v30);
        v28 -= v30;
        if (v15)
        {
          goto LABEL_91;
        }
      }

      v15 = __OFADD__(v28, v27);
      v28 += v27;
      if (v15)
      {
        goto LABEL_79;
      }

      if (v7 == v9)
      {
        break;
      }

      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        __break(1u);
        goto LABEL_63;
      }
    }
  }

  else
  {
    if (result >= a3)
    {
      if (__OFSUB__(result, a3))
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v18 = a2 - a4;
      if (__OFSUB__(a2, a4))
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v10 = 1;
      v12 = result - a3;
    }

    else
    {
      v18 = a2 - a4;
      if (__OFSUB__(a2, a4))
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v10 = -1;
    }

    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_101;
    }

    v19 = 2 * v12;
    v20 = 2 * v12 - v18;
    if (__OFSUB__(2 * v12, v18))
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v21 = v18 + 0x4000000000000000;
    v22 = 2 * v18;
    while (1)
    {
      result = a5(v8, v7);
      if (v20 >= 1)
      {
        v15 = __OFADD__(v8, v10);
        v8 += v10;
        if (v15)
        {
          goto LABEL_86;
        }

        if (v21 < 0)
        {
          goto LABEL_89;
        }

        v15 = __OFSUB__(v20, v22);
        v20 -= v22;
        if (v15)
        {
          goto LABEL_92;
        }
      }

      v15 = __OFADD__(v20, v19);
      v20 += v19;
      if (v15)
      {
        goto LABEL_80;
      }

      if (v9 == v7)
      {
        break;
      }

      v15 = __OFADD__(v7++, 1);
      if (v15)
      {
        __break(1u);
        goto LABEL_37;
      }
    }
  }

  return result;
}

uint64_t static LocalPlaneDetector.DebuggerClass.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  static LocalPlaneDetector.DebuggerClass = a1;
  qword_27F92F200 = a2;
  return result;
}

double LocalPlaneDetector.defaultPlaneExtent.getter()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = vdupq_n_s64(0x3FB99999A0000000uLL);
  *(v0 + 48) = 0;
  return 0.100000001;
}

float sub_2583AA774()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 60);
  }

  *(v0 + 60) = 1060439283;
  *(v0 + 64) = 0;
  return 0.70711;
}

double sub_2583AA79C()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 72);
  }

  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  result = v3 * 0.5;
  *(v0 + 72) = v3 * 0.5;
  *(v0 + 80) = v5 * 0.5;
  *(v0 + 88) = 0;
  return result;
}

float sub_2583AA810()
{
  if ((*(v0 + 176) & 1) == 0)
  {
    return *(v0 + 172);
  }

  *(v0 + 172) = 1065289374;
  *(v0 + 176) = 0;
  return 0.99619;
}

__n128 LocalPlaneDetector.localPlane.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 400);
  *(a1 + 64) = *(v1 + 384);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 416);
  *(a1 + 112) = *(v1 + 432);
  v4 = *(v1 + 336);
  *a1 = *(v1 + 320);
  *(a1 + 16) = v4;
  result = *(v1 + 352);
  v6 = *(v1 + 368);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t LocalPlaneDetector.debugOptions.getter()
{
  if (*(v0 + 448) != 1)
  {
    return *(v0 + 440);
  }

  if (qword_27F927A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static LocalPlaneDetector.DebugOptions.default;
  *(v0 + 440) = static LocalPlaneDetector.DebugOptions.default;
  *(v0 + 448) = 0;
  return result;
}

uint64_t *LocalPlaneDetector.DebugOptions.default.unsafeMutableAddressor()
{
  if (qword_27F927A20 != -1)
  {
    swift_once();
  }

  return &static LocalPlaneDetector.DebugOptions.default;
}

uint64_t LocalPlaneDetector.debugOptions.setter(uint64_t result)
{
  *(v1 + 440) = result;
  *(v1 + 448) = 0;
  return result;
}

void *(*LocalPlaneDetector.debugOptions.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = LocalPlaneDetector.debugOptions.getter();
  return sub_2583AA9D0;
}

void *sub_2583AA9D0(void *result)
{
  v1 = result[1];
  *(v1 + 440) = *result;
  *(v1 + 448) = 0;
  return result;
}

uint64_t LocalPlaneDetector.__allocating_init(sceneView:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LocalPlaneDetector.init(sceneView:)(a1, a2);
  return v4;
}

uint64_t LocalPlaneDetector.init(sceneView:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 1028443341;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 52) = 0x3F490FDB3DB2B8C2;
  *(v2 + 60) = 0;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  type metadata accessor for PlaneSolver();
  swift_allocObject();
  v6 = sub_2583D4520();
  v7 = MEMORY[0x277D84F90];
  *(v2 + 112) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = v7;
  *(v2 + 136) = v7;
  *(v2 + 144) = xmmword_25842DA90;
  *(v2 + 160) = 0x38D1B7173F000000;
  *(v2 + 168) = 1035122882;
  *(v2 + 176) = 1;
  *(v2 + 180) = 0x3F7C1C5C3D23D70BLL;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 1;
  v26 = 1;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 1;
  v27 = 1;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 257;
  *(v2 + 440) = 0;
  *(v2 + 448) = 1;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  v10 = a1;
  v28.origin.x = v9(ObjectType, a2);
  v11 = CGRectGetWidth(v28) * 0.25;
  *(v2 + 16) = v11;
  *(v2 + 20) = v11 * v11;
  swift_beginAccess();
  v12 = static LocalPlaneDetector.DebuggerClass;
  if (static LocalPlaneDetector.DebuggerClass)
  {
    v13 = qword_27F92F200;
    v14 = *(qword_27F92F200 + 8);
    v22[0] = sub_258428DA0();
    v22[1] = v22;
    v15 = *(v22[0] - 8);
    MEMORY[0x28223BE20](v22[0]);
    v17 = v22 - v16;
    v18 = v10;

    v14(v18, a2, v3, v12, v13);
    v19 = *(v12 - 8);
    if ((*(v19 + 48))(v17, 1, v12) != 1)
    {
      *(&v24 + 1) = v12;
      v25 = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(v19 + 32))(boxed_opaque_existential_1, v17, v12);

      goto LABEL_7;
    }

    (*(v15 + 8))(v17, v22[0]);
  }

  else
  {
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
LABEL_7:
  swift_beginAccess();
  sub_2583ACED0(&v23, v3 + 456);
  swift_endAccess();
  return v3;
}

void LocalPlaneDetector.detectPlane(with:)(void *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [a1 camera];
  [v6 transform];
  v117 = v8;
  v118 = v7;
  v119 = v9;
  v116 = v10;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 120);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_258386FC4(0, *(v12 + 16));
  }

  else
  {
    *(v3 + 120) = sub_25838C5F8(0, *(v12 + 24) >> 1);
  }

  swift_endAccess();
  v13 = (v3 + 136);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 136);
  if (v14)
  {
    sub_258387098(0, *(v15 + 16));
  }

  else
  {
    *v13 = sub_25838C698(0, *(v15 + 24) >> 1);
  }

  v16 = sub_2583AA79C();
  v18 = v17;
  LODWORD(v19) = *(v3 + 16);
  if ([objc_opt_self() jasperAvailable])
  {
    if (qword_27F927AC8 != -1)
    {
LABEL_95:
      swift_once();
    }

    v20 = static MeasureCore.shared;
    swift_beginAccess();
    if (*(v20 + 112))
    {
      v19 = *&v19;
      v16 = v16 - v19 * 0.5;
      v18 = v18 - v19 * 0.5;

      v140.origin.x = v16;
      v140.origin.y = v18;
      v140.size.width = v19;
      v140.size.height = v19;
      v21 = DepthProcessor.getJasperPointsInQuad(searchArea:requestedMinConfidence:in:)(v140, 0.7, a1);

      if (v21)
      {
        v112 = v6;
        v113 = a2;
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = 0;
          LODWORD(v16) = *(v3 + 20);
          a2 = v21 + 64;
          v6 = (v22 - 1);
          LODWORD(v18) = 1.0;
          while (1)
          {
            v24 = vsubq_f64(*(a2 - 16), *(v3 + 72));
            if (vaddv_f32(vcvt_f32_f64(vmulq_f64(v24, v24))) <= *&v16)
            {
              v130 = *(a2 - 32);
              LODWORD(v19) = *a2;
              swift_beginAccess();
              v25 = *(v3 + 120);
              v26 = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + 120) = v25;
              if ((v26 & 1) == 0)
              {
                v25 = sub_25839D2FC(0, *(v25 + 2) + 1, 1, v25);
                *(v3 + 120) = v25;
              }

              v28 = *(v25 + 2);
              v27 = *(v25 + 3);
              if (v28 >= v27 >> 1)
              {
                v25 = sub_25839D2FC((v27 > 1), v28 + 1, 1, v25);
              }

              *(v25 + 2) = v28 + 1;
              *&v25[16 * v28 + 32] = v130;
              *(v3 + 120) = v25;
              swift_endAccess();
              v29 = *v13;
              v30 = swift_isUniquelyReferenced_nonNull_native();
              *v13 = v29;
              if ((v30 & 1) == 0)
              {
                v29 = sub_25839D310(0, *(v29 + 2) + 1, 1, v29);
                *v13 = v29;
              }

              v32 = *(v29 + 2);
              v31 = *(v29 + 3);
              if (v32 >= v31 >> 1)
              {
                v29 = sub_25839D310((v31 > 1), v32 + 1, 1, v29);
              }

              *(v29 + 2) = v32 + 1;
              *&v29[4 * v32 + 32] = 1.0 - *&v19;
              *v13 = v29;
              if (*(*(v3 + 120) + 16) == 50)
              {
                break;
              }
            }

            if (v6 == v23)
            {
              break;
            }

            ++v23;
            a2 += 48;
            if (v23 >= *(v21 + 16))
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }
          }
        }

        v6 = v112;
        a2 = v113;
      }
    }
  }

  v33 = [a1 rawFeaturePoints];
  if (v33)
  {
    v34 = v33;
    v35 = sub_258428C30();

    v36 = [a1 rawFeaturePoints];
    if (v36 && (v37 = v36, v38 = [v36 vergenceAngleCosines], v37, (v115 = v38) != 0) && (v39 = *(v35 + 16)) != 0)
    {
      v112 = v6;
      v113 = a2;
      v40 = 0;
      a2 = v39 - 1;
      v6 = &unk_27F928EB0;
      v122 = *(MEMORY[0x277D860B8] + 16);
      v123 = *MEMORY[0x277D860B8];
      v120 = *(MEMORY[0x277D860B8] + 48);
      v121 = *(MEMORY[0x277D860B8] + 32);
      LODWORD(v18) = 1.0;
      v114 = v39 - 1;
      while (1)
      {
        v131 = *(v35 + 16 * v40 + 32);
        swift_beginAccess();
        os_unfair_lock_lock(&unk_27F928EB0);
        swift_endAccess();
        if (qword_27F927AE8 != -1)
        {
          swift_once();
        }

        [a1 timestamp];
        v42 = v41;
        swift_beginAccess();
        v43 = off_27F928EB8;
        if (*(off_27F928EB8 + 2) && (v44 = sub_258384490(v42), (v45 & 1) != 0))
        {
          v46 = (v43[7] + 496 * v44);
          memcpy(__dst, v46, sizeof(__dst));
          memmove(__src, v46, 0x1F0uLL);
          nullsub_1(__src);
          sub_258389808(__dst, v136, &qword_27F927FD8);
        }

        else
        {
          sub_2583AD008(__src);
        }

        memcpy(v139, __src, 0x1F0uLL);
        swift_endAccess();
        swift_beginAccess();
        os_unfair_lock_unlock(&unk_27F928EB0);
        swift_endAccess();
        memcpy(__src, v139, sizeof(__src));
        v47 = sub_2583AD050(__src);
        v49 = v122;
        v48 = v123;
        v51 = v120;
        v50 = v121;
        if (v47 != 1)
        {
          sub_258385E40(v139, &qword_27F928808);
          v48 = __src[10];
          v49 = __src[11];
          v50 = __src[12];
          v51 = __src[13];
        }

        v124 = v51;
        v125 = v50;
        v126 = v49;
        v127 = v48;
        swift_beginAccess();
        os_unfair_lock_lock(&unk_27F928EB0);
        swift_endAccess();
        [a1 timestamp];
        v16 = v52;
        swift_beginAccess();
        v53 = off_27F928EB8;
        if (*(off_27F928EB8 + 2) && (v54 = sub_258384490(v16), (v55 & 1) != 0))
        {
          v56 = (v53[7] + 496 * v54);
          memcpy(v135, v56, sizeof(v135));
          memmove(v136, v56, 0x1F0uLL);
          nullsub_1(v136);
          sub_258389808(v135, v134, &qword_27F927FD8);
        }

        else
        {
          sub_2583AD008(v136);
        }

        memcpy(__dst, v136, sizeof(__dst));
        swift_endAccess();
        swift_beginAccess();
        os_unfair_lock_unlock(&unk_27F928EB0);
        swift_endAccess();
        memcpy(v136, __dst, sizeof(v136));
        v57 = sub_2583AD050(v136);
        v58 = 0;
        if (v57 != 1)
        {
          sub_258385E40(__dst, &qword_27F928808);
          v58 = *&v136[1];
        }

        v59 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v131, v127, v126, v125, v124, v58);
        v61 = (LODWORD(v60) & 0x7FFFFF) != 0 && (~LODWORD(v60) & 0x7F800000) == 0;
        if (v60 >= 0.0 && v60 <= 1.0 && !v61)
        {
          v62 = vsubq_f64(vcvtq_f64_f32(v59), *(v3 + 72));
          if (vaddv_f32(vcvt_f32_f64(vmulq_f64(v62, v62))) <= *(v3 + 20))
          {
            swift_beginAccess();
            v63 = *(v3 + 120);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 120) = v63;
            if ((v64 & 1) == 0)
            {
              v63 = sub_25839D2FC(0, *(v63 + 2) + 1, 1, v63);
              *(v3 + 120) = v63;
            }

            v66 = *(v63 + 2);
            v65 = *(v63 + 3);
            if (v66 >= v65 >> 1)
            {
              v63 = sub_25839D2FC((v65 > 1), v66 + 1, 1, v63);
            }

            *(v63 + 2) = v66 + 1;
            *&v63[16 * v66 + 32] = v131;
            *(v3 + 120) = v63;
            swift_endAccess();
            LODWORD(v16) = v115[v40];
            v67 = *v13;
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *v13 = v67;
            if ((v68 & 1) == 0)
            {
              v67 = sub_25839D310(0, *(v67 + 2) + 1, 1, v67);
              *v13 = v67;
            }

            v70 = *(v67 + 2);
            v69 = *(v67 + 3);
            if (v70 >= v69 >> 1)
            {
              v67 = sub_25839D310((v69 > 1), v70 + 1, 1, v67);
            }

            *(v67 + 2) = v70 + 1;
            *&v67[4 * v70 + 32] = LODWORD(v16);
            *v13 = v67;
            a2 = v114;
            if (*(*(v3 + 120) + 16) == 50)
            {
              break;
            }
          }
        }

        if (a2 == v40)
        {
          break;
        }

        if (++v40 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_94;
        }
      }

      v6 = v112;
      a2 = v113;
    }

    else
    {
    }
  }

  v71 = *(v3 + 120);
  if (*(v71 + 16) < 4uLL || (v72 = *(v3 + 136), swift_beginAccess(), , , PlaneSolver.detectPlane(data:vergenceAngleCosines:pointOfView:camera:bestData:)(v71, v72, v6, (v3 + 128), __dst, v117, v119, v116), swift_endAccess(), , , (__dst[2].i8[4] & 1) != 0))
  {
    if ((*(v3 + 433) & 1) != 0 || (v73 = sub_2583ABAB0(a1), (*(v3 + 433) = v73) == 0) || (LocalPlaneDetector.debugOptions.getter() & 2) == 0)
    {

LABEL_93:
      swift_beginAccess();
      v109 = *(v3 + 400);
      *(a2 + 64) = *(v3 + 384);
      *(a2 + 80) = v109;
      *(a2 + 96) = *(v3 + 416);
      *(a2 + 112) = *(v3 + 432);
      v110 = *(v3 + 336);
      *a2 = *(v3 + 320);
      *(a2 + 16) = v110;
      v111 = *(v3 + 368);
      *(a2 + 32) = *(v3 + 352);
      *(a2 + 48) = v111;
      return;
    }

    swift_beginAccess();
    sub_258389808(v3 + 456, v139, &qword_27F928800);
    if (v139[3])
    {
      sub_2583ACFA4(v139, __src);
      sub_258385E40(v139, &qword_27F928800);
      v83 = *(&__src[1] + 1);
      v84 = *&__src[2];
      __swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1));
      (*(v84 + 24))(0, v83, v84);
LABEL_91:

      __swift_destroy_boxed_opaque_existential_0(__src);
      goto LABEL_93;
    }

LABEL_92:

    sub_258385E40(v139, &qword_27F928800);
    goto LABEL_93;
  }

  v128 = __dst[1];
  v132 = __dst[0];
  v74 = __dst[2].f32[0];
  v75 = *(*(v3 + 128) + 16);

  if (v75)
  {
    v77 = (v76 + 32);
    v78 = 0.0;
    v79 = v75;
    do
    {
      v80 = *v77++;
      v81 = vsubq_f32(v132, v80);
      v82 = vmulq_f32(v81, v81);
      v78 = v78 + sqrtf(v82.f32[2] + vaddv_f32(*v82.f32));
      --v79;
    }

    while (v79);
  }

  else
  {
    v78 = 0.0;
  }

  if ((v78 / v75) > 0.05)
  {
    v87 = v78 / v75;
  }

  else
  {
    v87 = 0.05;
  }

  *v88.i64 = sub_2583ABE80(v132, v128, v74, v85, v86, v119);
  v129 = v89;
  v133 = v88;
  *(v3 + 192) = v88;
  *(v3 + 208) = v89;
  *(v3 + 224) = 0;
  v134[0] = 0;
  *(v3 + 240) = v118;
  *(v3 + 256) = v117;
  *(v3 + 272) = v119;
  *(v3 + 288) = v116;
  *(v3 + 304) = 0;
  *(v3 + 433) = 0;
  swift_beginAccess();
  if ((*(v3 + 432) & 1) != 0 || (v90 = *(v3 + 320), v91 = *(v3 + 352), v92 = vsubq_f32(v133, v90), (vmuls_lane_f32(v92.f32[2], v92, 2) + vaddv_f32(vmul_f32(*v92.f32, *v92.f32))) >= ((v87 + v91) * (v87 + v91))))
  {
    *&v93 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*v133.i64, v129);
    LOBYTE(v139[0]) = 0;
    *(v3 + 320) = v133;
    *(v3 + 336) = v129;
    *(v3 + 352) = v87;
    *(v3 + 356) = v74;
    *(v3 + 368) = v93;
    *(v3 + 384) = v94;
    *(v3 + 400) = v95;
    *(v3 + 416) = v96;
    *(v3 + 432) = 0;
  }

  else
  {
    v97 = *(v3 + 148);
    v98 = *(v3 + 152);
    *v92.f32 = vadd_f32(*v90.f32, vmul_n_f32(*v92.f32, v97));
    v92.i32[3] = vextq_s8(*&v90, *&v90, 8uLL).i32[1];
    v92.f32[2] = v90.f32[2] + (v92.f32[2] * v97);
    v99 = *(v3 + 336);
    v100 = vsubq_f32(v129, v99);
    v101.i64[0] = vaddq_f32(v99, vmulq_n_f32(v100, v98)).u64[0];
    v101.f32[2] = COERCE_FLOAT(*(v3 + 344)) + vmuls_lane_f32(v98, v100, 2);
    v101.i32[3] = v99.i32[3];
    *(v3 + 320) = v92;
    *(v3 + 336) = v101;
    v102 = *(v3 + 160);
    *(v3 + 352) = v91 + ((v87 - v91) * *(v3 + 156));
    *(v3 + 356) = *(v3 + 356) + (v102 * (v74 - *(v3 + 356)));
    *&v103 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*v92.i64, v101);
    if (*(v3 + 432))
    {
      goto LABEL_97;
    }

    *(v3 + 368) = v103;
    *(v3 + 384) = v104;
    *(v3 + 400) = v105;
    *(v3 + 416) = v106;
  }

  swift_beginAccess();
  sub_258389808(v3 + 456, v139, &qword_27F928800);
  if (!v139[3])
  {
    goto LABEL_92;
  }

  sub_2583ACFA4(v139, __src);
  sub_258385E40(v139, &qword_27F928800);
  v107 = *(&__src[1] + 1);
  v108 = *&__src[2];
  __swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1));
  if ((*(v3 + 432) & 1) == 0)
  {
    (*(v108 + 16))(v107, v108, *(v3 + 320), *(v3 + 336), *(v3 + 352), *(v3 + 356), *(v3 + 368), *(v3 + 384), *(v3 + 400), *(v3 + 416));
    goto LABEL_91;
  }

  __break(1u);
LABEL_97:
  __break(1u);
}

BOOL sub_2583ABAB0(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  if (v1[27].i8[0])
  {
    return 1;
  }

  result = 1;
  if ((v1[19].i8[0] & 1) == 0)
  {
    v41 = v1[21];
    v5 = v1[22].f32[0];
    v36 = v1[17];
    v33 = v1[20];
    v34 = v1[18];
    v6 = [a1 camera];
    v51 = 1;
    memset(v57, 0, sizeof(v57));
    v58 = 1;
    v32 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v6, v57);
    v38 = v7;

    if (LocalPlaneDetector.debugOptions.getter())
    {
      swift_beginAccess();
      sub_258389808(&v2[28].i64[1], &v52, &qword_27F928800);
      if (*(&v53 + 1))
      {
        sub_2583ACFA4(&v52, v48);
        sub_258385E40(&v52, &qword_27F928800);
        v8 = v49;
        v9 = v50;
        __swift_project_boxed_opaque_existential_0(v48, v49);
        (*(v9 + 32))(0, v57, v8, v9);
        __swift_destroy_boxed_opaque_existential_0(v48);
      }

      else
      {
        sub_258385E40(&v52, &qword_27F928800);
      }
    }

    v10 = vmulq_f32(v38, v38);
    *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
    *v10.f32 = vrsqrte_f32(v11);
    *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
    v12 = vmulq_n_f32(v38, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    v13 = vmulq_f32(v41, v12);
    v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    if (v14 == 0.0 || (v15 = vsubq_f32(v33, v32), v15.f32[2] = v33.f32[2] - v32.n128_f32[2], v16 = vmulq_f32(v41, v15), v17 = (v16.f32[2] + vaddv_f32(*v16.f32)) / v14, v16.f32[0] = vmuls_lane_f32(v17, v12, 2), v18 = vadd_f32(v32.n128_u64[0], vmul_n_f32(*v12.f32, v17)), v19 = vsub_f32(*v33.f32, v18), sqrtf(((v33.f32[2] - (v32.n128_f32[2] + v16.f32[0])) * (v33.f32[2] - (v32.n128_f32[2] + v16.f32[0]))) + vaddv_f32(vmul_f32(v19, v19))) > v5))
    {
      v20 = [a1 camera];
      [v20 transform];
      v39 = v22;
      v42 = v21;

      v23 = vmulq_f32(v36, v42);
      if ((v23.f32[2] + vaddv_f32(*v23.f32)) < v2[11].f32[2])
      {
        return 1;
      }

      v24 = vsubq_f32(v39, v34);
      v25 = vmulq_f32(v24, v24);
      return (v25.f32[2] + vaddv_f32(*v25.f32)) > 0.04;
    }

    else
    {
      *&v26 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*&v18, v41);
      if (v2[27].i8[8])
      {
        v35 = v29;
        v37 = v28;
        v40 = v27;
        v43 = v26;
        swift_beginAccess();
        sub_258389808(&v2[28].i64[1], v48, &qword_27F928800);
        if (v49)
        {
          sub_2583ACFA4(v48, v44);
          sub_258385E40(v48, &qword_27F928800);
          v30 = v45;
          v31 = v46;
          __swift_project_boxed_opaque_existential_0(v44, v45);
          v47 = 0;
          v52 = v43;
          v53 = v40;
          v54 = v37;
          v55 = v35;
          v56 = 0;
          (*(v31 + 32))(1, &v52, v30, v31);
          __swift_destroy_boxed_opaque_existential_0(v44);
        }

        else
        {
          sub_258385E40(v48, &qword_27F928800);
        }
      }

      return 0;
    }
  }

  return result;
}

double sub_2583ABE80(float32x4_t a1, float32x4_t a2, float a3, double a4, double a5, float32x4_t a6)
{
  v8 = vmulq_f32(a2, a6);
  if ((v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0)
  {
    a2.i64[0] = vsubq_f32(0, a2).u64[0];
    a2.f32[2] = 0.0 - a2.f32[2];
    a2.i32[3] = 0;
  }

  v42 = a2;
  swift_beginAccess();
  *v11.i64 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(*(v6 + 120), v9, v10);
  v12 = v11;
  v36 = v11;
  v13 = vsubq_f32(a1, v11);
  v14 = vmulq_f32(v13, v13);
  v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
  v12.i32[0] = 953267991;
  v15 = vcgeq_f32(v12, v14).u64[0];
  if (qword_27F927A00 != -1)
  {
    v39 = v15;
    swift_once();
    v15 = v39;
  }

  v34 = vdupq_lane_s32(v15, 0);
  v33 = static SIMD3<>.up;
  v16 = vmulq_f32(v42, static SIMD3<>.up);
  v16.f32[0] = fabsf(v16.f32[2] + vaddv_f32(*v16.f32));
  v38 = v16;
  v17 = sub_2583AA774();
  v18 = ((((1.0 - a3) + (1.0 - a3)) - ((1.0 - a3) * (1.0 - a3))) * 0.69813) + 0.087266;
  if (v17 >= v38.f32[0])
  {
    v21 = cosf(1.5708 - v18);
    v20 = v42;
    if (v38.f32[0] < v21)
    {
      v20.i32[1] = 0;
      v22 = vmulq_f32(v20, v20);
      *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
      *v22.f32 = vrsqrte_f32(v23);
      *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
      v20 = vmulq_n_f32(v20, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
    }
  }

  else
  {
    v19.f32[0] = cosf(v18);
    v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v38, v19), 0), v33, v42);
  }

  v24.i64[1] = a1.i64[1];
  v25 = vbslq_s8(v34, v36, a1);
  if ((*(v6 + 224) & 1) == 0)
  {
    v26 = *(v6 + 192);
    v27 = vsubq_f32(v25, v26);
    v28 = vsub_f32(*v25.f32, *v26.f32);
    *v24.f32 = vmul_f32(v28, v28);
    if ((COERCE_FLOAT(vmulq_f32(v27, v27).i32[2]) + vaddv_f32(*v24.f32)) <= 0.0001)
    {
      v29 = *(v6 + 208);
      v30 = vmulq_f32(v20, v29);
      v24.f32[0] = fabsf(v30.f32[2] + ((v29.f32[0] * v20.f32[0]) + v30.f32[1]));
      v37 = v24;
      v41 = v25;
      v35 = v26;
      v31.f32[0] = sub_2583AA810();
      v25.i64[0] = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v31, v37), 0), v41, v35).u64[0];
    }
  }

  return *v25.i64;
}

void __swiftcall LocalPlaneDetector.hitTest(screenPoint:for:)(Swift::tuple_transform_simd_float4x4_distanceFromCenter_Float_optional *__return_ptr retstr, CGPoint screenPoint, ARFrame a3)
{
  y = screenPoint.y;
  x = screenPoint.x;
  swift_beginAccess();
  if ((v3[27].i8[0] & 1) == 0 && (v3[27].i8[1] & 1) == 0)
  {
    v29 = v3[20];
    v30 = v3[21];
    v8 = v3[22].f32[0];
    sub_2583EF3B4(a3.super.isa, v48);
    v59 = __invert_f4(v49);
    v35 = v59.columns[1];
    v38 = v59.columns[0];
    v31 = v59.columns[3];
    v33 = v59.columns[2];
    sub_2583EF3B4(a3.super.isa, v50);
    sub_2583B3418(v51, x, y, v38, v35, v33, v31, v50[0]);
    if ((v52 & 1) == 0)
    {
      v36 = v51[0];
      v39 = v51[1];
      if (LocalPlaneDetector.debugOptions.getter())
      {
        swift_beginAccess();
        sub_258389808(&v3[28].i64[1], &v53, &qword_27F928800);
        if (v54.i64[1])
        {
          sub_2583ACFA4(&v53, v45);
          sub_258385E40(&v53, &qword_27F928800);
          v9 = v46;
          v10 = v47;
          __swift_project_boxed_opaque_existential_0(v45, v46);
          LOBYTE(v41[0]) = 1;
          memset(v58, 0, 64);
          v58[64] = 1;
          (*(v10 + 32))(0, v58, v9, v10);
          __swift_destroy_boxed_opaque_existential_0(v45);
        }

        else
        {
          sub_258385E40(&v53, &qword_27F928800);
        }
      }

      v11 = vmulq_f32(v39, v39);
      *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
      *v11.f32 = vrsqrte_f32(v12);
      *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
      v13 = vmulq_n_f32(v39, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
      v14 = vmulq_f32(v30, v13);
      v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      if (v15 != 0.0)
      {
        v16 = vsubq_f32(v29, v36);
        v16.f32[2] = v29.f32[2] - v36.f32[2];
        v17 = vmulq_f32(v30, v16);
        v18 = (v17.f32[2] + vaddv_f32(*v17.f32)) / v15;
        v17.f32[0] = vmuls_lane_f32(v18, v13, 2);
        v19 = vadd_f32(*v36.f32, vmul_n_f32(*v13.f32, v18));
        v20 = vsub_f32(*v29.f32, v19);
        v21 = sqrtf(((v29.f32[2] - (v36.f32[2] + v17.f32[0])) * (v29.f32[2] - (v36.f32[2] + v17.f32[0]))) + vaddv_f32(vmul_f32(v20, v20)));
        if (v21 <= v8)
        {
          *v23.i64 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*&v19, v30);
          if (v3[27].i8[8])
          {
            v32 = v26;
            v34 = v25;
            v37 = v24;
            v40 = v23;
            swift_beginAccess();
            sub_258389808(&v3[28].i64[1], v45, &qword_27F928800);
            if (v46)
            {
              sub_2583ACFA4(v45, v41);
              sub_258385E40(v45, &qword_27F928800);
              v27 = v42;
              v28 = v43;
              __swift_project_boxed_opaque_existential_0(v41, v42);
              v44 = 0;
              v53 = v40;
              v54 = v37;
              v55 = v34;
              v56 = v32;
              v57 = 0;
              (*(v28 + 32))(1, &v53, v27, v28);
              __swift_destroy_boxed_opaque_existential_0(v41);
              v26 = v32;
              v25 = v34;
              v24 = v37;
              v23 = v40;
              v22 = 0;
              goto LABEL_11;
            }

            sub_258385E40(v45, &qword_27F928800);
            v24 = v37;
            v23 = v40;
            v26 = v32;
            v25 = v34;
          }

          v22 = 0;
          goto LABEL_11;
        }
      }
    }
  }

  v22 = 1;
  v21 = 0.0;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
LABEL_11:
  retstr->value.transform.columns[0] = v23;
  retstr->value.transform.columns[1] = v24;
  retstr->value.transform.columns[2] = v25;
  retstr->value.transform.columns[3] = v26;
  retstr->value.distanceFromCenter = v21;
  retstr->is_nil = v22;
}

void LocalPlaneDetector.hitTest(maxDistanceFromCenter:withRay:)(uint64_t a1@<X8>, float a2@<S0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>)
{
  swift_beginAccess();
  if ((v4[27].i8[0] & 1) == 0)
  {
    v27 = v4[20];
    v29 = v4[21];
    if (LocalPlaneDetector.debugOptions.getter())
    {
      swift_beginAccess();
      sub_258389808(&v4[28].i64[1], &v42, &qword_27F928800);
      if (*(&v43 + 1))
      {
        sub_2583ACFA4(&v42, v39);
        sub_258385E40(&v42, &qword_27F928800);
        v7 = v40;
        v8 = v41;
        __swift_project_boxed_opaque_existential_0(v39, v40);
        LOBYTE(v35[0]) = 1;
        memset(v47, 0, 64);
        v47[64] = 1;
        (*(v8 + 32))(0, v47, v7, v8);
        __swift_destroy_boxed_opaque_existential_0(v39);
      }

      else
      {
        sub_258385E40(&v42, &qword_27F928800);
      }
    }

    v9 = vmulq_f32(a4, a4);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vmulq_n_f32(a4, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    v12 = vmulq_f32(v29, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 != 0.0)
    {
      v14 = vsubq_f32(v27, a3);
      v14.f32[2] = v27.f32[2] - a3.f32[2];
      v15 = vmulq_f32(v29, v14);
      v16 = (v15.f32[2] + vaddv_f32(*v15.f32)) / v13;
      v15.f32[0] = vmuls_lane_f32(v16, v11, 2);
      v17 = vadd_f32(*a3.f32, vmul_n_f32(*v11.f32, v16));
      v18 = vsub_f32(*v27.f32, v17);
      v19 = sqrtf(((v27.f32[2] - (a3.f32[2] + v15.f32[0])) * (v27.f32[2] - (a3.f32[2] + v15.f32[0]))) + vaddv_f32(vmul_f32(v18, v18)));
      if (v19 <= a2)
      {
        *&v21 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*&v17, v29);
        if (v4[27].i8[8])
        {
          v28 = v24;
          v30 = v23;
          v32 = v22;
          v34 = v21;
          swift_beginAccess();
          sub_258389808(&v4[28].i64[1], v39, &qword_27F928800);
          if (v40)
          {
            sub_2583ACFA4(v39, v35);
            sub_258385E40(v39, &qword_27F928800);
            v25 = v36;
            v26 = v37;
            __swift_project_boxed_opaque_existential_0(v35, v36);
            v38 = 0;
            v42 = v34;
            v43 = v32;
            v44 = v30;
            v45 = v28;
            v46 = 0;
            (*(v26 + 32))(1, &v42, v25, v26);
            __swift_destroy_boxed_opaque_existential_0(v35);
            v24 = v28;
            v23 = v30;
            v22 = v32;
            v21 = v34;
            v20 = 0;
            goto LABEL_9;
          }

          sub_258385E40(v39, &qword_27F928800);
          v22 = v32;
          v21 = v34;
          v24 = v28;
          v23 = v30;
        }

        v20 = 0;
        goto LABEL_9;
      }
    }
  }

  v20 = 1;
  v19 = 0.0;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_9:
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 32) = v23;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 68) = v20;
}

uint64_t LocalPlaneDetector.deinit()
{

  sub_258385E40(v0 + 456, &qword_27F928800);
  return v0;
}

uint64_t LocalPlaneDetector.__deallocating_deinit()
{

  sub_258385E40(v0 + 456, &qword_27F928800);

  return swift_deallocClassInstance();
}

uint64_t sub_2583AC928()
{
  v0 = sub_25838958C(&unk_28697E518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928830);
  result = swift_arrayDestroy();
  static LocalPlaneDetector.DebugOptions.keyForFeature = v0;
  return result;
}

uint64_t *LocalPlaneDetector.DebugOptions.keyForFeature.unsafeMutableAddressor()
{
  if (qword_27F927A10 != -1)
  {
    swift_once();
  }

  return &static LocalPlaneDetector.DebugOptions.keyForFeature;
}

void sub_2583AC9F8()
{
  if (qword_27F927A10 != -1)
  {
    swift_once();
  }

  v0 = static LocalPlaneDetector.DebugOptions.keyForFeature;
  v1 = *(static LocalPlaneDetector.DebugOptions.keyForFeature + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_25838C55C(*(static LocalPlaneDetector.DebugOptions.keyForFeature + 16), 0);
  v3 = sub_2583E9038(&v4, v2 + 4, v1, v0);

  sub_2583980BC();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  static LocalPlaneDetector.DebugOptions.keys = v2;
}

uint64_t *LocalPlaneDetector.DebugOptions.keys.unsafeMutableAddressor()
{
  if (qword_27F927A18 != -1)
  {
    swift_once();
  }

  return &static LocalPlaneDetector.DebugOptions.keys;
}

uint64_t sub_2583ACB60(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_2583ACBC0()
{
  if (qword_27F927A10 != -1)
  {
    swift_once();
  }

  v1 = sub_2583E903C(v0);

  static LocalPlaneDetector.DebugOptions.default = v1;
  return result;
}

uint64_t static LocalPlaneDetector.DebugOptions.default.getter()
{
  if (qword_27F927A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static LocalPlaneDetector.DebugOptions.default;
}

uint64_t static LocalPlaneDetector.DebugOptions.default.setter(uint64_t a1)
{
  if (qword_27F927A20 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static LocalPlaneDetector.DebugOptions.default = a1;
  return result;
}

uint64_t (*static LocalPlaneDetector.DebugOptions.default.modify())()
{
  if (qword_27F927A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2583ACDA8()
{
  v1 = *v0;
  sub_2584293C0();
  MEMORY[0x259C7ECE0](v1);
  return sub_2584293F0();
}

uint64_t sub_2583ACE1C()
{
  v1 = *v0;
  sub_2584293C0();
  MEMORY[0x259C7ECE0](v1);
  return sub_2584293F0();
}

Swift::tuple_actualPoints_OpaquePointer_bestPoints_OpaquePointer __swiftcall LocalPlaneDetector.getPointsForDebug()()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 200);
  swift_beginAccess();
  v3 = *(v0 + 128);

  v4 = v2;
  v5 = v3;
  result.bestPoints._rawValue = v5;
  result.actualPoints._rawValue = v4;
  return result;
}

uint64_t sub_2583ACED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2583ACFA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_2583AD008(_OWORD *a1)
{
  result = 0.0;
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2583AD050(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2583AD06C()
{
  result = qword_27F928810;
  if (!qword_27F928810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928810);
  }

  return result;
}

unint64_t sub_2583AD0C4()
{
  result = qword_27F928818;
  if (!qword_27F928818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928818);
  }

  return result;
}

unint64_t sub_2583AD11C()
{
  result = qword_27F928820;
  if (!qword_27F928820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928820);
  }

  return result;
}

unint64_t sub_2583AD174()
{
  result = qword_27F928828;
  if (!qword_27F928828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928828);
  }

  return result;
}

__n128 sub_2583AD1F4(__n128 *a1, __n128 **a2)
{
  v2 = *a2;
  result = *a1;
  v2[2] = *a1;
  v2[3].n128_u8[0] = 0;
  return result;
}

__n128 sub_2583AD208@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 400);
  *(a2 + 64) = *(v3 + 384);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 416);
  *(a2 + 112) = *(v3 + 432);
  v5 = *(v3 + 336);
  *a2 = *(v3 + 320);
  *(a2 + 16) = v5;
  result = *(v3 + 352);
  v7 = *(v3 + 368);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

__n128 sub_2583AD270(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(v3 + 384) = *(a1 + 64);
  *(v3 + 400) = v4;
  *(v3 + 416) = *(a1 + 96);
  *(v3 + 432) = *(a1 + 112);
  v5 = *(a1 + 16);
  *(v3 + 320) = *a1;
  *(v3 + 336) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v3 + 352) = result;
  *(v3 + 368) = v7;
  return result;
}

void sub_2583AD368()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_258428660();
    v4 = v3;

    qword_27F928838 = v2;
    unk_27F928840 = v4;
  }

  else
  {
    __break(1u);
  }
}

_DWORD *sub_2583AD3F4()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27F928848 = result;
  return result;
}

uint64_t sub_2583AD468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  a7();
  v11 = qword_27F927A30;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_27F928850;
  if (*(off_27F928850 + 2) && (v14 = sub_258384364(a4, a5), (v15 & 1) != 0))
  {
    v16 = *(v13[7] + 8 * v14);
    swift_endAccess();
    v17 = v16;
  }

  else
  {
    swift_endAccess();
    sub_25838AB14();
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v18 = sub_258428D90();
    swift_beginAccess();
    v17 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v17, a4, a5, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v22;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25842CCB0;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_258385D08();
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;

  sub_258428440();
}

uint64_t _s17MeasureFoundation3LogV3log_4type9isPrivateySS_So03os_d1_E2_taSbtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = qword_27F927A30;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_27F928850;
  if (*(off_27F928850 + 2) && (v13 = sub_258384364(a5, a6), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + 8 * v13);
    swift_endAccess();
    v16 = v15;
  }

  else
  {
    swift_endAccess();
    sub_25838AB14();
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v17 = sub_258428D90();
    swift_beginAccess();
    v16 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v16, a5, a6, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v21;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25842CCB0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_258385D08();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  sub_258428440();
}

uint64_t sub_2583AD9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2583ADA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2583ADA78()
{
  v1 = *(v0 + 88);
  v2 = v1;
  if (v1 != 1)
  {
    goto LABEL_5;
  }

  v3 = v0;
  v4 = *(v0 + 40);
  swift_unownedRetainStrong();
  v5 = *(v4 + 160);
  swift_unownedRetainStrong();

  swift_beginAccess();
  v6 = *(v5 + 192);

  if (v6)
  {
    v8 = ADProcessor.transformer.getter();

    v9 = *(v8 + 1080);

    v10 = *(v9 + 16);
    if (!(v10 >> 61))
    {
      v11 = 4 * v10;
      swift_unownedRetainStrong();
      v12 = *(v4 + 32);
      swift_unknownObjectRetain();

      v2 = [v12 newBufferWithBytes:v9 + 32 length:v11 options:0];

      swift_unknownObjectRelease();
      v13 = *(v3 + 88);
      *(v3 + 88) = v2;
      swift_unknownObjectRetain();
      sub_2583AE5F4(v13);
LABEL_5:
      sub_2583AE628(v1);
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2583ADBF4(uint64_t a1)
{
  *(v1 + 64) = 0;
  *(v1 + 88) = 1;
  v3 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *(a1 + 40);
  v6 = qword_27F9279A8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_2583ADD54(Strong, v5, static ADTransformer.adImagePlaneVertexDescriptor);

  result = swift_unknownObjectRelease();
  if (v7)
  {
    *(v1 + 72) = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
    [v9 setDepthCompareFunction_];
    [v9 setDepthWriteEnabled_];
    result = [v3 newDepthStencilStateWithDescriptor_];
    if (result)
    {
      *(v1 + 80) = result;
      v10 = sub_2583E4754(a1);
      swift_unknownObjectRelease();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2583ADD54(void *a1, void *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v6 setAlphaToCoverageEnabled_];
  v7 = sub_258428630();
  v8 = [a2 newFunctionWithName_];

  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v6 setVertexFunction_];
  swift_unknownObjectRelease();
  v9 = sub_258428630();
  v10 = [a2 newFunctionWithName_];

  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v6 setFragmentFunction_];
  swift_unknownObjectRelease();
  [v6 setVertexDescriptor_];
  [v6 setDepthAttachmentPixelFormat_];
  v11 = [v6 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v12 setPixelFormat_];

  v13 = [v6 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  [v14 setDestinationRGBBlendFactor_];

  v15 = [v6 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
    goto LABEL_17;
  }

  [v16 setDestinationAlphaBlendFactor_];

  v17 = [a1 device];
  if (!v17)
  {

    return 0;
  }

  v23[0] = 0;
  v18 = [v17 newRenderPipelineStateWithDescriptor:v6 error:v23];
  swift_unknownObjectRelease();
  v19 = v23[0];
  if (!v18)
  {
    v20 = v19;
    v21 = sub_2584282A0();

    swift_willThrow();
    return 0;
  }

  return v18;
}

void DebugADNode.draw(commandBuffer:)(void *a1)
{
  v2 = v1[9];
  if (!v2)
  {
    return;
  }

  v3 = v1;
  swift_unknownObjectRetain();
  v5 = sub_2583ADA78();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = v1[5];
  swift_unownedRetainStrong();
  v27 = MetalScene.makeDefaultRenderPassDescriptor()();

  if (!v27)
  {
    swift_unknownObjectRelease();
LABEL_11:

    swift_unknownObjectRelease();
    return;
  }

  v8 = [a1 renderCommandEncoderWithDescriptor_];
  if (v8)
  {
    v9 = v8;
    v10 = v1[6];
    swift_unownedRetainStrong();
    swift_beginAccess();
    v11 = *(v10 + 224);

    if ((v11 & 0x10) != 0)
    {
      swift_unownedRetainStrong();
      ADProcessor.outputConfidenceTexture.getter();
      v15 = v14;

      v16 = 7;
      goto LABEL_25;
    }

    swift_unownedRetainStrong();
    swift_beginAccess();
    v12 = *(v10 + 224);

    if ((v12 & 8) == 0)
    {
      swift_unownedRetainStrong();
      swift_beginAccess();
      v13 = *(v10 + 224);

      if ((v13 & 0x8000) == 0)
      {
        [v9 endEncoding];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
LABEL_26:
        swift_unknownObjectRelease();
        return;
      }

      swift_unownedRetainStrong();
      ADProcessor.outputPersonTexture.getter();
      v15 = v21;

      v16 = 8;
LABEL_25:
      v28[0] = v16;
      swift_unknownObjectRetain();
      [v9 setCullMode_];
      [v9 setRenderPipelineState_];
      [v9 setDepthStencilState_];
      [v9 setVertexBuffer:v6 offset:0 atIndex:0];
      swift_unownedRetainStrong();
      swift_beginAccess();
      v22 = *(v7 + 192);
      swift_unknownObjectRetain();

      [v9 setFragmentBuffer:v22 offset:0 atIndex:0];
      swift_unknownObjectRelease();
      [v9 setFragmentBytes:v28 length:1 atIndex:1];
      [v9 setFragmentTexture:v15 atIndex:0];
      swift_unknownObjectRelease();
      swift_unownedRetainStrong();
      ADProcessor.outputConfidenceTexture.getter();
      v24 = v23;

      [v9 setFragmentTexture:v24 atIndex:1];
      swift_unknownObjectRelease();
      swift_unownedRetainStrong();
      ADProcessor.outputPersonTexture.getter();
      v26 = v25;

      [v9 setFragmentTexture:v26 atIndex:2];
      swift_unknownObjectRelease();
      [v9 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v9 endEncoding];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    v17 = v3[7];
    swift_unownedRetainStrong();
    swift_beginAccess();
    v18 = *(v17 + 242);

    if (v18 == 1)
    {
      swift_unownedRetainStrong();
      swift_beginAccess();
      v19 = *(v17 + 256);
      swift_unknownObjectRetain();

      if (v19)
      {
        swift_unknownObjectRelease();
        swift_unownedRetainStrong();
        swift_beginAccess();
        v15 = *(v17 + 256);
        swift_unknownObjectRetain();

        if (v15)
        {
LABEL_23:
          v16 = 2;
          goto LABEL_25;
        }

        __break(1u);
      }
    }

    swift_unownedRetainStrong();
    ADProcessor.outputDepthTexture.getter();
    v15 = v20;

    goto LABEL_23;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_2583AE538()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 88);

  return sub_2583AE5F4(v1);
}

uint64_t DebugADNode.deinit()
{

  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2583AE5F4(*(v0 + 88));
  return v0;
}

uint64_t DebugADNode.__deallocating_deinit()
{
  DebugADNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2583AE5F4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2583AE628(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_2583AE638(uint64_t a1)
{
  cacheOut[1] = *MEMORY[0x277D85DE8];
  *(v1 + 36) = 1065342996;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  LOBYTE(v22) = 1;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 1;
  *(v1 + 120) = a1;
  v3 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_2583AFCDC(Strong, v5);

  swift_unknownObjectRelease();
  *(v1 + 40) = v6;
  v7 = [v3 newBufferWithLength:1600000 options:{0, v22}];
  if (!v7)
  {
    goto LABEL_7;
  }

  *(v1 + 72) = v7;
  v8 = v7;
  v9 = [swift_unknownObjectRetain() contents];
  v10 = v8;
  *(v1 + 80) = v9;
  v11 = [v3 newBufferWithLength:1600000 options:0];
  if (!v11)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  *(v1 + 88) = v11;
  v12 = v11;
  v13 = [swift_unknownObjectRetain() contents];
  v14 = v12;
  *(v1 + 96) = v13;
  cacheOut[0] = 0;
  CVMetalTextureCacheCreate(0, 0, v3, 0, cacheOut);
  v15 = cacheOut[0];
  if (!cacheOut[0])
  {
    goto LABEL_9;
  }

  *(v1 + 64) = cacheOut[0];
  v16 = MEMORY[0x277D84F90];
  *(v1 + 32) = 257;
  *(v1 + 34) = 1;
  v17 = qword_27F927FE8;
  *(v1 + 16) = qword_27F927FE8;
  *(v1 + 24) = v16;
  if (v17 == -1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  qword_27F927FE8 = v17 + 1;
  v18 = objc_opt_self();
  v19 = v15;

  v20 = [v18 defaultCenter];
  [v20 addObserver:v1 selector:sel_appDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  swift_unknownObjectRelease();

  return v1;
}

Swift::Void __swiftcall DebugWorldNode.didUpdate(frame:)(ARFrame frame)
{
  v2 = v1;
  v4 = [(objc_class *)frame.super.isa capturedPointCloudData];
  if (v4)
  {
    v5 = v4;
    v6 = [(objc_class *)frame.super.isa camera];
    v7 = *(sub_258428C30() + 16);

    v8 = *(v1 + 120);
    swift_beginAccess();
    v9 = *(v8 + 192);
    if (v9)
    {
      v10 = [swift_unknownObjectRetain() contents];
      v11 = v9;
      [v6 transform];
      if ((*(v2 + 192) & 1) == 0)
      {
        v16 = vmulq_f32(v14, *(v2 + 160));
        if ((v16.f32[2] + vaddv_f32(*v16.f32)) > *(v2 + 36))
        {
LABEL_23:
          sub_2583AEC0C(frame.super.isa);

          return;
        }
      }

      *(v2 + 128) = v12;
      *(v2 + 144) = v13;
      *(v2 + 160) = v14;
      *(v2 + 176) = v15;
      *(v2 + 192) = 0;
      swift_beginAccess();
      if (*(v8 + 184))
      {
LABEL_31:
        __break(1u);
        return;
      }

      [v6 viewMatrixForOrientation_];
      v46 = __invert_f4(v45);
      v38 = v46.columns[1];
      v39 = v46.columns[0];
      v36 = v46.columns[3];
      v37 = v46.columns[2];
      v17 = *(v2 + 104);
      if (v17 < 0xFFFFFFFF80000000)
      {
        goto LABEL_28;
      }

      if (v17 <= 0x7FFFFFFF)
      {
        v35 = v10;
        v10[184] = v17;
        v18 = 0;
        if (v7)
        {
          for (i = 0; v7 != i; ++i)
          {
            v20 = [v5 depthPointCloud];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 confidences];

              if (v22)
              {
                v23 = v22[i];
                swift_unownedRetainStrong();

                if (v23 >= 0.9)
                {
                  swift_unownedRetainStrong();
                  DepthProcessor.transformer.getter();

                  v24 = sub_258428C30();
                  if (i >= *(v24 + 16))
                  {
                    __break(1u);
LABEL_26:
                    __break(1u);
LABEL_27:
                    __break(1u);
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  v44 = *(v24 + 16 * i + 32);

                  DepthTransformer.jasperToARKitCamera.getter();
                  v40 = v25;
                  v41 = v26;
                  v42 = v28;
                  v43 = v27;

                  v29 = vaddq_f32(v42, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, 0.001 * v44.f32[0]), v41, vmuls_lane_f32(0.001, *v44.f32, 1)), v43, vmuls_lane_f32(0.001, v44, 2)));
                  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v29.f32[0]), v38, *v29.f32, 1), v37, v29, 2), v36, v29, 3);
                  v30.i64[0] = vdivq_f32(v30, vdupq_laneq_s32(v30, 3)).u64[0];
                  v30.f32[2] = v30.f32[2] / v30.f32[3];
                  v30.i32[3] = 0;
                  v31 = *(v2 + 104);
                  *(*(v2 + 80) + 16 * v31) = v30;
                  if (__OFADD__(v31, 1))
                  {
                    goto LABEL_26;
                  }

                  *(v2 + 104) = (v31 + 1) % 100000;
                  v32 = *(v2 + 112);
                  v33 = __OFADD__(v32, 1);
                  v34 = v32 + 1;
                  if (v33)
                  {
                    goto LABEL_27;
                  }

                  if (v34 >= 100000)
                  {
                    v34 = 100000;
                  }

                  *(v2 + 112) = v34;
                  v33 = __OFADD__(v18++, 1);
                  if (v33)
                  {
                    __break(1u);
                    break;
                  }
                }
              }
            }
          }
        }

        v35[185] = v18;
        goto LABEL_23;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }
}

void sub_2583AEC0C(void *a1)
{
  textureOut[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = [a1 capturedImage];
  if (CVPixelBufferGetPlaneCount(pixelBuffer) > 1)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    textureOut[0] = 0;
    v4 = v1[8];
    TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v4, pixelBuffer, 0, MTLPixelFormatR8Unorm, WidthOfPlane, HeightOfPlane, 0, textureOut);
    v6 = textureOut[0];
    if (TextureFromImage)
    {

      v6 = 0;
    }

    v7 = v1[6];
    v1[6] = v6;

    v8 = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1uLL);
    v9 = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
    textureOut[0] = 0;
    v10 = CVMetalTextureCacheCreateTextureFromImage(0, v4, pixelBuffer, 0, MTLPixelFormatRG8Unorm, v8, v9, 1uLL, textureOut);

    v11 = textureOut[0];
    if (v10)
    {

      v11 = 0;
    }

    v12 = v1[7];
    v1[7] = v11;
  }

  else
  {
  }
}

void DebugWorldNode.draw(commandBuffer:)(void *a1)
{
  v2 = v1[5];
  if (v2)
  {
    v3 = v1[6];
    if (v3)
    {
      v4 = v1[7];
      if (v4)
      {
        v6 = v1;
        v7 = v1[15];
        v19 = v4;
        v8 = v3;
        swift_unknownObjectRetain();
        v9 = MetalScene.makeDefaultRenderPassDescriptor()();
        if (v9)
        {
          v18 = v9;
          v10 = [a1 renderCommandEncoderWithDescriptor_];
          if (v10)
          {
            v11 = v10;
            v12 = swift_allocObject();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_25842DE60;
            *(v13 + 32) = v8;
            *(v13 + 40) = v19;
            *(v12 + 16) = v13;
            aBlock[4] = sub_2583AFA50;
            aBlock[5] = v12;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2583AF0D4;
            aBlock[3] = &block_descriptor_1;
            v14 = _Block_copy(aBlock);
            v15 = v19;
            v16 = v8;

            [a1 addCompletedHandler_];
            _Block_release(v14);
            [v11 setRenderPipelineState_];
            swift_beginAccess();
            [v11 setVertexBuffer:*(v7 + 192) offset:0 atIndex:0];
            [v11 setVertexBuffer:v6[9] offset:0 atIndex:1];
            [v11 setVertexBuffer:v6[11] offset:0 atIndex:2];
            [v11 setVertexTexture:CVMetalTextureGetTexture(v16) atIndex:0];
            swift_unknownObjectRelease();
            [v11 setVertexTexture:CVMetalTextureGetTexture(v15) atIndex:1];
            swift_unknownObjectRelease();
            [v11 drawPrimitives:0 vertexStart:0 vertexCount:v6[14]];
            [v11 endEncoding];
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();

            return;
          }

          swift_unknownObjectRelease();

          v17 = v18;
        }

        else
        {
          swift_unknownObjectRelease();

          v17 = v19;
        }
      }
    }
  }
}

uint64_t sub_2583AF0D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_2583AF134()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_258428630();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_258428660();
    v6 = v5;

    if (*(v0 + 112) >= 1)
    {
      sub_2583AF208(v4, v6);
    }
  }

  *(v0 + 112) = 0;
}

uint64_t sub_2583AF208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_258428690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258428330();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[3].columns[0].i8[0])
  {
    return 0;
  }

  v34 = a1;
  v35 = a2;
  v36 = v9;
  v37 = v7;
  v38 = v6;
  *&v15 = simd_quaternion(v3[2]);
  v39 = v15;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_258428FC0();
  MEMORY[0x259C7DFF0](0xD000000000000075, 0x8000000258435B70);
  v40 = v3[1].columns[3].i64[0];
  v16 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v16);

  MEMORY[0x259C7DFF0](0xD000000000000014, 0x8000000258435BF0);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](0x2053544E494F500ALL, 0xE800000000000000);
  v40 = v3[1].columns[3].i64[0];
  v17 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v17);

  result = MEMORY[0x259C7DFF0](0x736120415441440ALL, 0xEC0000000A696963);
  v18 = v41;
  v19 = v42;
  v43 = v41;
  v44 = v42;
  v20 = v3[1].columns[3].i64[0];
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (!v20)
    {
LABEL_17:
      sub_2584282E0();
      v41 = v18;
      v42 = v19;

      v30 = v36;
      sub_258428680();
      sub_25838E4C0();
      sub_258428DF0();
      (*(v37 + 8))(v30, v38);

      (*(v11 + 8))(v13, v10);

      return 1;
    }

    v31 = v13;
    v32 = v11;
    v33 = v10;
    v21 = v3[1].columns[1].i64[0];
    v22 = v3[1].columns[2].i64[0];
    while (1)
    {
      v23 = *v22;
      v24 = roundf(vmuls_lane_f32(255.0, *v22, 2));
      if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v24 <= -1.0)
      {
        goto LABEL_19;
      }

      if (v24 >= 4295000000.0)
      {
        goto LABEL_20;
      }

      v25 = roundf(vmuls_lane_f32(255.0, *v23.f32, 1));
      if ((LODWORD(v25) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_21;
      }

      if (v25 <= -1.0)
      {
        goto LABEL_22;
      }

      if (v25 >= 4295000000.0)
      {
        goto LABEL_23;
      }

      v26 = roundf(255.0 * v23.f32[0]);
      if ((LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_24;
      }

      if (v26 <= -1.0)
      {
        goto LABEL_25;
      }

      if (v26 >= 4295000000.0)
      {
        goto LABEL_26;
      }

      v27 = *v21++;
      v39 = v27;
      v28 = v24 | (v25 << 8) | (v26 << 16);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_2584289C0();
      MEMORY[0x259C7DFF0](32, 0xE100000000000000);
      sub_2584289C0();
      MEMORY[0x259C7DFF0](32, 0xE100000000000000);
      sub_2584289C0();
      MEMORY[0x259C7DFF0](32, 0xE100000000000000);
      LODWORD(v40) = v28;
      v29 = sub_2584292B0();
      MEMORY[0x259C7DFF0](v29);

      MEMORY[0x259C7DFF0](2592, 0xE200000000000000);
      MEMORY[0x259C7DFF0](v41, v42);

      ++v22;
      if (!--v20)
      {
        v18 = v43;
        v19 = v44;
        v11 = v32;
        v10 = v33;
        v13 = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2583AF934()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id *DebugWorldNode.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DebugWorldNode.__deallocating_deinit()
{
  DebugWorldNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2583AFA18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2583AFA50()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

unint64_t sub_2583AFC90()
{
  result = qword_27F928880;
  if (!qword_27F928880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F928880);
  }

  return result;
}

id sub_2583AFCDC(void *a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v4 setAlphaToCoverageEnabled_];
  v5 = sub_258428630();
  v6 = [a2 newFunctionWithName_];

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v4 setVertexFunction_];
  swift_unknownObjectRelease();
  v7 = sub_258428630();
  v8 = [a2 newFunctionWithName_];

  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v4 setFragmentFunction_];
  swift_unknownObjectRelease();
  [v4 setDepthAttachmentPixelFormat_];
  v9 = [v4 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v10 setPixelFormat_];

  v11 = [v4 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v12 setBlendingEnabled_];

  v13 = [v4 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  [v14 setDestinationRGBBlendFactor_];

  v15 = [v4 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
    goto LABEL_19;
  }

  [v16 setDestinationAlphaBlendFactor_];

  v17 = [a1 device];
  if (!v17)
  {

    return 0;
  }

  v23[0] = 0;
  v18 = [v17 newRenderPipelineStateWithDescriptor:v4 error:v23];
  swift_unknownObjectRelease();
  v19 = v23[0];
  if (!v18)
  {
    v20 = v19;
    v21 = sub_2584282A0();

    swift_willThrow();
    return 0;
  }

  return v18;
}

uint64_t clamp<A>(_:min:max:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (sub_2584285D0())
  {
    v10 = *(*(a4 - 8) + 16);
    v11 = a5;
    v12 = a2;
  }

  else
  {
    v13 = sub_2584285C0();
    v10 = *(*(a4 - 8) + 16);
    if (v13)
    {
      v11 = a5;
      v12 = a3;
    }

    else
    {
      v11 = a5;
      v12 = a1;
    }
  }

  return v10(v11, v12, a4);
}

double closestPointOnLine(lineP1:lineP2:point:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmul_f32(*v3.f32, *v3.f32);
  v4.f32[0] = sqrtf(vmuls_lane_f32(v3.f32[2], v3, 2) + vaddv_f32(v4));
  if (v4.f32[0] != 0.0)
  {
    *v3.f32 = vdiv_f32(*v3.f32, vdup_lane_s32(v4, 0));
    v5 = vsubq_f32(a3, a1);
    v6 = vmuls_lane_f32(v3.f32[2] / v4.f32[0], v5, 2) + vaddv_f32(vmul_f32(*v5.f32, *v3.f32));
    if (v4.f32[0] >= v6)
    {
      a2.i64[0] = a1.i64[0];
      if (v6 >= 0.0)
      {
        *a2.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v3.f32, v6));
      }
    }

    a1.i64[0] = a2.i64[0];
  }

  return *a1.i64;
}

{
  return closestPointOnLine(lineP1:lineP2:point:)(a1, a2, a3);
}

double lineIntersection(line1P1:line1P2:line2P1:line2P2:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, int8x16_t a4)
{
  v4 = vsubq_f32(a1, a3);
  v5 = vsubq_f32(a2, a1).u64[0];
  v6 = vsub_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(a2, a2, 8uLL)), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a1, a1, 8uLL)));
  v7 = vsubq_f32(a4, a3).u64[0];
  v8 = vmul_f32(vrev64_s32(v5), vext_s8(v7, v5, 4uLL));
  v9 = vmul_f32(v7, v7);
  v10 = vmuls_n_f32(v4.f32[0], v7.f32[0]);
  v11 = vmuls_lane_f32(v4.f32[1], v7, 1);
  v7.i32[1] = v5.i32[1];
  v12 = vadd_f32(vmul_lane_f32(v6, v6, 1), vadd_f32(vmul_f32(v5, v7), v8));
  v18 = COERCE_DOUBLE(vadd_f32(vmul_f32(v6, v6), vadd_f32(v9, vdup_lane_s32(v9, 1))));
  v13 = vmuls_lane_f32(v6.f32[1], v4, 2) + (vmuls_n_f32(v5.f32[0], v4.f32[0]) + vmuls_lane_f32(v5.f32[1], *v4.f32, 1));
  v6.f32[0] = vmuls_lane_f32(v6.f32[0], v4, 2) + (v10 + v11);
  v14 = vsub_f32(vmul_lane_f32(*&v18, v12, 1), vmul_f32(v12, v12));
  v15 = vdup_lane_s32(v12, 0);
  v15.i32[0] = LODWORD(v18);
  v16 = COERCE_DOUBLE(vdiv_f32(vsub_f32(vmul_n_f32(v12, v6.f32[0]), vmul_n_f32(v15, v13)), vdup_lane_s32(v14, 0)));
  v17 = vcgt_f32(v12, *&v18).u8[0];
  v6.f32[0] = v6.f32[0] / *&v18;
  LODWORD(v18) = 0;
  LODWORD(v19) = 0;
  HIDWORD(v19) = v6.i32[0];
  if (v17)
  {
    *(&v18 + 1) = v13 / v12.f32[0];
    result = v18;
  }

  else
  {
    result = v19;
  }

  if (*v14.i32 >= 0.00000011921)
  {
    return v16;
  }

  return result;
}

uint64_t lineIntersectionPoint(line1P1:line1P2:line2P1:line2P2:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, int8x16_t a4)
{
  v4 = lineIntersection(line1P1:line1P2:line2P1:line2P2:)(a1, a2, a3, a4);
  v6 = vsubq_f32(a2, a1);
  v7 = 1.0;
  if (*&v4 <= 1.0)
  {
    v8 = *&v4;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = *&v4 < 0.0;
  v10 = 0.0;
  if (v9)
  {
    v8 = 0.0;
  }

  v11 = vmuls_lane_f32(v8, v6, 2);
  v12 = vadd_f32(*a1.f32, vmul_n_f32(*v6.f32, v8));
  v13 = a1.f32[2] + v11;
  v14 = vdup_lane_s32(v12, 0);
  v15 = vsubq_f32(a4, a3);
  if (v5 <= 1.0)
  {
    v7 = v5;
  }

  if (v5 >= 0.0)
  {
    v10 = v7;
  }

  v16 = vmuls_lane_f32(v10, *v15.i8, 1);
  v17.i32[0] = vextq_s8(a3, a3, 8uLL).u32[0];
  v17.i32[1] = a3.i32[0];
  v18.i32[0] = vextq_s8(v15, v15, 8uLL).u32[0];
  v18.i32[1] = v15.i32[0];
  v14.f32[0] = v13;
  v19 = vsub_f32(vadd_f32(v17, vmul_n_f32(v18, v10)), v14);
  v20 = vmul_f32(v19, v19);
  if ((v20.f32[0] + (v20.f32[1] + (((a3.f32[1] + v16) - *&v12.i32[1]) * ((a3.f32[1] + v16) - *&v12.i32[1])))) < 0.0001)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

{
  result = lineIntersectionPoint(line1P1:line1P2:line2P1:line2P2:)(a1, a2, a3, a4);
  if (v5)
  {
    return 0;
  }

  return result;
}

BOOL lineInRect(rectOrigin:rectSize:lineP1:lineP2:)(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  if (vcgt_f32(a1, a3).u8[0] & 1) != 0 && (vcgt_f32(a1, a4).u8[0])
  {
    return 0;
  }

  result = 0;
  if (a4.f32[1] >= a1.f32[1] || a3.f32[1] >= a1.f32[1])
  {
    v7 = vadd_f32(a1, a2);
    if ((vcgt_f32(a3, v7).u32[0] & vcgt_f32(a4, v7).u32[0] & 1) == 0)
    {
      return v7.f32[1] >= a4.f32[1] || v7.f32[1] >= a3.f32[1];
    }
  }

  return result;
}

uint64_t clipLineToRect(rectOrigin:rectSize:lineP1:lineP2:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, int8x16_t a4)
{
  *a2.f32 = vadd_f32(*a1.f32, *a2.f32);
  v4 = a2.i64[0];
  v43 = *a2.f32;
  a2.i32[1] = a1.i32[1];
  v5 = a1;
  v50 = v4;
  v5.i32[1] = HIDWORD(v4);
  v44 = *a1.f32;
  v48 = a3.i64[0];
  v49 = a4.i64[0];
  v46 = v5;
  v45 = a2;
  v6 = lineIntersectionPoint(line1P1:line1P2:line2P1:line2P2:)(a1, a2, a3, a4);
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = v6;
    v8 = sub_25839D414(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_25839D414((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = (v10 + 1);
    v8[v10 + 4] = v41;
  }

  v11 = lineIntersectionPoint(line1P1:line1P2:line2P1:line2P2:)(v46, v50, a3, a4);
  if ((v12 & 1) == 0)
  {
    v42 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25839D414(0, *&v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = sub_25839D414((v13 > 1), v14 + 1, 1, v8);
    }

    v8[2] = (v14 + 1);
    v8[v14 + 4] = v42;
  }

  v15 = lineIntersectionPoint(line1P1:line1P2:line2P1:line2P2:)(v45, v50, a3, a4);
  if ((v16 & 1) == 0)
  {
    v51 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25839D414(0, *&v8[2] + 1, 1, v8);
    }

    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      v8 = sub_25839D414((v17 > 1), v18 + 1, 1, v8);
    }

    v8[2] = (v18 + 1);
    v8[v18 + 4] = v51;
  }

  v19 = lineIntersectionPoint(line1P1:line1P2:line2P1:line2P2:)(a1, v46, a3, a4);
  if (v20)
  {
    v21 = v8[2];
    v23 = v48;
    v22 = v49;
    if (v21 > 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v54 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25839D414(0, *&v8[2] + 1, 1, v8);
    }

    v25 = v8[2];
    v24 = v8[3];
    v21 = v25 + 1;
    v23 = v48;
    v22 = v49;
    if (v25 >= v24 >> 1)
    {
      v38 = sub_25839D414((v24 > 1), v25 + 1, 1, v8);
      v23 = v48;
      v22 = v49;
      v8 = v38;
    }

    v8[2] = v21;
    v8[v25 + 4] = v54;
    if (v21 > 1)
    {
LABEL_37:
      if (v21 == 2)
      {
LABEL_38:
        v31 = v8[4];
        goto LABEL_52;
      }

LABEL_51:
      v31 = 0;
      goto LABEL_52;
    }
  }

  if ((vcgt_f32(v44, v23).u8[0] & 1) == 0)
  {
    v26 = vcgt_f32(v23, v43);
    if ((v26.i8[0] & 1) == 0 && v23.f32[1] >= v44.f32[1] && (v26.i8[4] & 1) == 0)
    {
      if (!v21 || (v27 = vsub_f32(v23, v8[4]), vaddv_f32(vmul_f32(v27, v27)) > 0.00000011921))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25839D414(0, v21 + 1, 1, v8);
        }

        v29 = v8[2];
        v28 = v8[3];
        v21 = v29 + 1;
        v30 = v48;
        v22 = v49;
        if (v29 >= v28 >> 1)
        {
          v39 = sub_25839D414((v28 > 1), v29 + 1, 1, v8);
          v30 = v48;
          v22 = v49;
          v8 = v39;
        }

        v8[2] = v21;
        v8[v29 + 4] = v30;
        if (v29)
        {
          goto LABEL_37;
        }
      }

      v21 = 1;
    }
  }

  v31 = 0;
  if ((vcgt_f32(v44, v22).u8[0] & 1) == 0)
  {
    v32 = vcgt_f32(v22, v43);
    if ((v32.i8[0] & 1) == 0)
    {
      v31 = 0;
      if (v22.f32[1] >= v44.f32[1] && (v32.i8[4] & 1) == 0)
      {
        if (v21)
        {
          v33 = vsub_f32(v22, v8[4]);
          if (vaddv_f32(vmul_f32(v33, v33)) <= 0.00000011921)
          {
            v31 = 0;
            goto LABEL_52;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25839D414(0, v21 + 1, 1, v8);
        }

        v35 = v8[2];
        v34 = v8[3];
        v36 = v49;
        if (v35 >= v34 >> 1)
        {
          v40 = sub_25839D414((v34 > 1), v35 + 1, 1, v8);
          v36 = v49;
          v8 = v40;
        }

        v8[2] = (v35 + 1);
        v8[v35 + 4] = v36;
        if (v35 == 1)
        {
          goto LABEL_38;
        }

        goto LABEL_51;
      }
    }
  }

LABEL_52:

  return v31;
}

uint64_t pointInRect(rectOrigin:rectSize:point:)(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  result = 0;
  if ((vcgt_f32(a1, a3).u8[0] & 1) == 0)
  {
    v4 = vcgt_f32(a3, vadd_f32(a1, a2));
    if ((v4.i8[0] & 1) == 0)
    {
      return (a3.f32[1] >= a1.f32[1]) & vmvn_s8(v4).u32[1];
    }
  }

  return result;
}

void __swiftcall slerp(transform1:transform2:percent:)(simd_float4x4 *__return_ptr retstr, simd_float4x4 *transform1, simd_float4x4 *transform2, Swift::Float percent)
{
  v11 = v7;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  *v8.vector.i64 = simd_quaternion(*&percent);
  v10 = v8;
  v16.columns[0] = v12;
  v16.columns[1] = v13;
  v16.columns[2] = v14;
  v16.columns[3] = v11;
  *v9.i64 = simd_quaternion(v16);
  simd_slerp(v10, v9, v15);
  MEMORY[0x259C7E590]();
}

double createTransform(forward:normal:position:)(float32x4_t a1, float32x4_t a2, double a3, double a4, float32x4_t a5)
{
  v6 = vmulq_f32(a1, a2);
  v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
  a5.i32[0] = 1065353214;
  v7 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v6, a5)), 0), a2, vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL));
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL), vnegq_f32(v7)), a1, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  *&result = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]).u64[0];
  return result;
}

double createTransform(normal:forward:position:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v4 = vmulq_f32(a1, a2);
  v4.f32[0] = v4.f32[2] + vaddv_f32(*v4.f32);
  a3.i32[0] = 1065353214;
  v5 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v4, a3)), 0), a2, vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL));
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(a1)), v5, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmulq_f32(v6, v6);
  *&v9 = v8.f32[1] + (v8.f32[2] + v8.f32[0]);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  *&result = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]).u64[0];
  return result;
}

Swift::Int __swiftcall random(upperBound:)(Swift::Int upperBound)
{
  if (__OFSUB__(upperBound, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = upperBound - 1;
  v2 = round(drand48() * v1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_9:
  __break(1u);
  return upperBound;
}

Swift::tuple_index_Int_value_Float_optional __swiftcall min(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v7 = *(a1._rawValue + 8);
    v6 = a1._rawValue + 32;
    v1 = v7;
    do
    {
      v8 = *&v6[4 * v5];
      if (v8 < v1)
      {
        v4 = v5;
      }

      v9 = v5 + 1;
      if (v8 < v1)
      {
        v1 = *&v6[4 * v5];
      }

      ++v5;
    }

    while (v2 != v9);
    v10 = LOBYTE(v1);
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v11 = v10;
  result.value.index = v4;
  result.value.value = v1;
  result.is_nil = v11;
  return result;
}

Swift::tuple_index_Int_value_Float_optional __swiftcall max(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v7 = *(a1._rawValue + 8);
    v6 = a1._rawValue + 32;
    v1 = v7;
    do
    {
      v8 = *&v6[4 * v5];
      if (v1 < v8)
      {
        v4 = v5;
      }

      v9 = v5 + 1;
      if (v1 < v8)
      {
        v1 = *&v6[4 * v5];
      }

      ++v5;
    }

    while (v2 != v9);
    v10 = LOBYTE(v1);
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v11 = v10;
  result.value.index = v4;
  result.value.value = v1;
  result.is_nil = v11;
  return result;
}

uint64_t pointClosestToOrigin(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v11._rawValue = MEMORY[0x277D84F90];
  sub_258392194(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  v5 = *(v11._rawValue + 2);
  do
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v11._rawValue + 3);
    if (v5 >= v7 >> 1)
    {
      sub_258392194((v7 > 1), v5 + 1, 1);
    }

    ++v3;
    *(v11._rawValue + 2) = v5 + 1;
    *(v11._rawValue + v5++ + 8) = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
  }

  while (v1 != v3);
  v12 = min(_:)(v11);
  index = v12.value.index;
  v9 = *&v12.is_nil;

  if ((v9 & 0x100000000) == 0)
  {
    if (index < v1)
    {
      return *(v4 + 8 * index);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::tuple_index1_Int_index2_Int_smallestDistance_Float __swiftcall closestPointsBetween(_:_:)(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *(a2._rawValue + 2);
    v9 = a1._rawValue + 32;
    v10 = a2._rawValue + 32;
    v11 = 3.4028e38;
    do
    {
      if (v8)
      {
        v12 = 0;
        do
        {
          v13 = vsubq_f32(*&v9[16 * v7], *&v10[16 * v12]);
          v14 = vmulq_f32(v13, v13);
          v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
          if (v15 < v11)
          {
            v5 = v12;
          }

          v16 = v12 + 1;
          if (v15 < v11)
          {
            v11 = v15;
            v6 = v7;
          }

          ++v12;
        }

        while (v8 != v16);
      }

      ++v7;
    }

    while (v7 != v2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v11 = 3.4028e38;
  }

  result.index2 = v5;
  result.index1 = v6;
  result.smallestDistance = v11;
  return result;
}

Swift::Float __swiftcall orientationSimilarity(between:and:)(simd_float3x3 *between, simd_float3x3 *and)
{
  v7 = vmulq_f32(between->columns[1], and->columns[1]);
  v8 = vmulq_f32(between->columns[0], and->columns[0]);
  v2 = vmulq_f32(between->columns[2], and->columns[2]);
  v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842BFB0;
  *(inited + 32) = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v7.i8), vzip2_s32(*v8.i8, *v7.i8)));
  *(inited + 40) = v3;
  v9 = min(_:)(inited);
  v5 = *&v9.is_nil;
  swift_setDeallocating();
  result = *&v5;
  if ((v5 & 0x100000000) != 0)
  {
    return 0.0;
  }

  return result;
}

Swift::Float __swiftcall triangleArea2D(forPoints:)(Swift::OpaquePointer forPoints)
{
  v1 = *(forPoints._rawValue + 2);
  if (v1 < 2)
  {
    __break(1u);
  }

  else if (v1 != 2)
  {
    v2 = *(forPoints._rawValue + 32);
    v3 = vsub_f32(*(forPoints._rawValue + 40), v2);
    v4 = vmul_f32(v3, v3);
    v5 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
    v6 = vrsqrte_f32(v5);
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmul_n_f32(v3, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = *(forPoints._rawValue + 48);
    v10 = vmul_f32(vsub_f32(v9, v2), v8);
    v11 = vsub_f32(vadd_f32(v2, vmul_n_f32(v8, vadd_f32(v10, vdup_lane_s32(v10, 1)).f32[0])), v9);
    return (sqrtf(vaddv_f32(v4)) * sqrtf(vaddv_f32(vmul_f32(v11, v11)))) * 0.5;
  }

  __break(1u);
  return result;
}

Swift::Float __swiftcall rectangleArea2D(forPoints:)(Swift::OpaquePointer forPoints)
{
  v4 = sub_2583983D4(forPoints._rawValue, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928388);
  inited = swift_initStackObject();
  LODWORD(result) = 3;
  *(inited + 16) = xmmword_25842BFB0;
  v7 = *(forPoints._rawValue + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(forPoints._rawValue + 4);
  *(inited + 32) = v8;
  if (v7 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(forPoints._rawValue + 5);
  *(inited + 40) = v9;
  *(inited + 48) = v4;
  v10 = triangleArea2D(forPoints:)(inited);
  swift_setDeallocating();
  v11 = swift_initStackObject();
  LODWORD(result) = 3;
  *(v11 + 16) = xmmword_25842BFB0;
  *(v11 + 32) = v9;
  if (v7 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = *(forPoints._rawValue + 6);
  *(v11 + 40) = v12;
  *(v11 + 48) = v4;
  v13 = triangleArea2D(forPoints:)(v11);
  swift_setDeallocating();
  v14 = swift_initStackObject();
  LODWORD(result) = 3;
  *(v14 + 16) = xmmword_25842BFB0;
  *(v14 + 32) = v12;
  if (v7 != 3)
  {
    v15 = v10 + v13;
    v16 = *(forPoints._rawValue + 7);
    *(v14 + 40) = v16;
    *(v14 + 48) = v4;
    v17 = triangleArea2D(forPoints:)(v14);
    swift_setDeallocating();
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_25842BFB0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v8;
    *(v18 + 48) = v4;
    v19 = triangleArea2D(forPoints:)(v18);
    swift_setDeallocating();
    return (v15 + v17) + v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

id mix(_:_:_:)(double a1)
{
  v2 = UIColor.rgba.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2 + (UIColor.rgba.getter() - v2) * a1;
  v11 = v4 + (v10 - v4) * a1;
  v13 = v6 + (v12 - v6) * a1;
  v15 = v8 + (v14 - v8) * a1;
  v16 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v16 initWithDisplayP3Red:v9 green:v11 blue:v13 alpha:v15];
}

Swift::Double __swiftcall spring(tension:friction:velocity:elapsed:)(Swift::Double tension, Swift::Double friction, Swift::Double velocity, Swift::Double elapsed)
{
  v7 = sqrt(tension);
  v8 = friction / (v7 + v7);
  if (v8 >= 1.0)
  {
    if (v8 != 1.0)
    {
      sub_258429100();
      __break(1u);
      return result;
    }

    v14 = (v7 * velocity * elapsed + 1.0) * pow(2.71828183, -(v7 * elapsed));
  }

  else
  {
    v9 = sqrt(1.0 - v8 * v8);
    v10 = v7 * v9;
    v11 = (v7 * v8 + velocity) / (v7 * v9);
    v12 = pow(2.71828183, -(v8 * v7) * elapsed);
    v13 = __sincos_stret(v10 * elapsed);
    v14 = v12 * (v13.__cosval + v11 * v13.__sinval);
  }

  return 1.0 - v14;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

__n128 simd_float4x4.arrayOf9.getter(int32x4_t a1, int32x4_t a2, int32x4_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
  v3 = swift_allocObject();
  v5 = vuzp1q_s32(vuzp2q_s32(a2, a3), a2);
  *&v4 = vtrn1q_s32(a1, a2).u64[0];
  v5.i32[2] = a1.i32[2];
  *(&v4 + 1) = __PAIR64__(a1.u32[1], a3.u32[0]);
  *(v3 + 16) = xmmword_25842DF20;
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = a3.i32[2];
  result.n128_u64[0] = v5.i64[0];
  result.n128_u32[2] = v5.u32[2];
  return result;
}

__n128 simd_float4x4.arrayOf12.getter(int32x4_t a1, int32x4_t a2, int8x16_t a3, int32x4_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
  v4 = swift_allocObject();
  result.n128_u64[0] = vzip1q_s32(a1, a2).u64[0];
  result.n128_u64[1] = vextq_s8(a3, vzip1q_s32(*&a3, a4), 8uLL).u64[1];
  *&v6 = vtrn2q_s32(a1, a2).u64[0];
  *(&v6 + 1) = __PAIR64__(a4.u32[1], a3.u32[1]);
  *&v7 = vzip2q_s32(a1, a2).u64[0];
  *(&v7 + 1) = __PAIR64__(a4.u32[2], a3.u32[2]);
  *(v4 + 16) = xmmword_25842DF30;
  *(v4 + 32) = result;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  return result;
}

void __swiftcall simd_float4x4.getCATransform3D()(CATransform3D *__return_ptr retstr)
{
  *&retstr->m11 = vcvtq_f64_f32(*v1.f32);
  *&retstr->m13 = vcvt_hight_f64_f32(v1);
  *&retstr->m21 = vcvtq_f64_f32(*v2.f32);
  *&retstr->m23 = vcvt_hight_f64_f32(v2);
  *&retstr->m31 = vcvtq_f64_f32(*v3.f32);
  *&retstr->m33 = vcvt_hight_f64_f32(v3);
  *&retstr->m41 = vcvtq_f64_f32(*v4.f32);
  *&retstr->m43 = vcvt_hight_f64_f32(v4);
}

Swift::Bool __swiftcall simd_float4x4.isAlmostHorizontal(marginInDegrees:)(Swift::Float marginInDegrees)
{
  v6 = v1;
  if (qword_27F927A00 != -1)
  {
    v5 = marginInDegrees;
    swift_once();
    marginInDegrees = v5;
  }

  v2 = cosf(marginInDegrees * 0.017453);
  v3 = vmulq_f32(static SIMD3<>.up, v6);
  return fabsf(v2) < fabsf(v3.f32[2] + vaddv_f32(*v3.f32));
}

double _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(double a1, float32x4_t a2)
{
  if (qword_27F9279F8 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v2 = vmulq_f32(static SIMD3<>.forward, a2);
  v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  if (v3 <= 1.0)
  {
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(static SIMD3<>.forward)), a2, vextq_s8(vuzp1q_s32(static SIMD3<>.forward, static SIMD3<>.forward), static SIMD3<>.forward, 0xCuLL));
    v5 = acosf(v3);
    GLKMatrix4MakeRotation(&v9, v5, v7.f32[2], v7.f32[0], v7.f32[1]);
    *&v4 = v9;
  }

  else
  {
    v4 = *MEMORY[0x277D860B8];
  }

  return *&v4;
}

float GLKMatrix4MakeRotation@<S0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  v6 = 1.0 / sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
  v7 = v6 * a3;
  v8 = v6 * a4;
  v9 = v6 * a5;
  v10 = __sincosf_stret(a2);
  v11 = (1.0 - v10.__cosval) * v7;
  *a1 = v10.__cosval + (v11 * v7);
  *(a1 + 4) = (v10.__sinval * v9) + (v11 * v8);
  *(a1 + 8) = -((v10.__sinval * v8) - (v11 * v9));
  *(a1 + 12) = 0;
  v12 = (1.0 - v10.__cosval) * v8;
  *(a1 + 16) = -((v10.__sinval * v9) - (v11 * v8));
  *(a1 + 20) = v10.__cosval + (v12 * v8);
  *(a1 + 24) = (v10.__sinval * v7) + (v12 * v9);
  *(a1 + 28) = 0;
  *(a1 + 32) = (v10.__sinval * v8) + (v11 * v9);
  *(a1 + 36) = -((v10.__sinval * v7) - (v12 * v9));
  result = v10.__cosval + (((1.0 - v10.__cosval) * v9) * v9);
  *(a1 + 40) = result;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

__n128 MeanShiftPointFilter.filter(candidates:iterations:errorThreshold:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, __n128 a4@<Q2>)
{
  sub_2583B1D70(a1, v10, a3, a4);
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

double sub_2583B1B90(float32x4_t *a1, float32x4_t a2, float a3, __n128 a4)
{
  if (qword_27F9279F0 != -1)
  {
    v18 = a1;
    swift_once();
    a1 = v18;
  }

  v5 = static SIMD3<>.zero;
  v6 = a1[1].i64[0];
  if (v6)
  {
    v7 = a1 + 2;
    a4.n128_u64[0] = 0;
    do
    {
      v10 = v7[9];
      v26[8] = v7[8];
      v26[9] = v10;
      v27 = v7[10].f32[0];
      v11 = v7[5];
      v26[4] = v7[4];
      v26[5] = v11;
      v12 = v7[7];
      v26[6] = v7[6];
      v26[7] = v12;
      v13 = v7[1];
      v26[0] = *v7;
      v26[1] = v13;
      v14 = v7[3];
      v26[2] = v7[2];
      v26[3] = v14;
      if (a3 < 0.0 || (v15 = vsubq_f32(a2, v26[0]), v16 = vmulq_f32(v15, v15), (v16.f32[2] + vaddv_f32(*v16.f32)) <= a3))
      {
        v23 = v26[0].i32[1];
        v24 = a4;
        v8 = v26[0].f32[2];
        v21 = v27;
        v22 = v5;
        v20 = v26[0].i32[0];
        sub_258389808(v26, v25, &qword_27F928340);
        sub_258389808(v26, v25, &qword_27F928340);

        sub_258385E40(v26, &qword_27F928340);
        *v9.f32 = vadd_f32(*v22.f32, vmul_n_f32(__PAIR64__(v23, v20), v21));
        a4 = v24;
        v9.f32[2] = v22.f32[2] + (v8 * v21);
        v9.i32[3] = 0;
        a4.n128_f32[0] = v24.n128_f32[0] + v21;
        v5 = v9;
      }

      v7 += 11;
      --v6;
    }

    while (v6);
  }

  else
  {
    a4.n128_u64[0] = 0;
  }

  *&result = vdivq_f32(v5, vdupq_lane_s32(a4.n128_u64[0], 0)).u64[0];
  return result;
}

void sub_2583B1D70(uint64_t a1@<X0>, float32x4_t *a2@<X8>, float a3@<S0>, __n128 a4@<Q2>)
{
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  *v7.i64 = sub_2583B1B90(a1, static SIMD3<>.zero, -1.0, a4);
  v8 = *(a1 + 16);
  if (!v8)
  {
    __break(1u);
    return;
  }

  v87 = a2;
  v9 = (a1 + 32);
  v10 = *(a1 + 176);
  v167 = *(a1 + 160);
  v168 = v10;
  v169 = *(a1 + 192);
  v11 = *(a1 + 112);
  v164[4] = *(a1 + 96);
  v164[5] = v11;
  v12 = *(a1 + 128);
  v166 = *(a1 + 144);
  v165 = v12;
  v13 = *(a1 + 48);
  v164[0] = *(a1 + 32);
  v164[1] = v13;
  v14 = *(a1 + 64);
  v164[3] = *(a1 + 80);
  v164[2] = v14;
  v15 = v165;
  v88 = v7;
  sub_258389808(v164, &v129, &qword_27F928340);

  v16 = *(v15 + 128);

  v17 = *(v16 + 24);

  [v17 transform];
  v84 = v18;

  v19 = v88;
  v20 = vsubq_f32(v84, v88);
  v23 = vmulq_f32(v20, v20);
  v21 = v23.n128_f32[2] + vaddv_f32(v23.n128_u64[0]);
  v22 = 0.0;
  v23.n128_u32[0] = 2139095040;
  v24 = 184;
  v25 = v8;
  do
  {
    v26 = *(a1 + v24);
    if (v26 < v23.n128_f32[0])
    {
      v23.n128_u32[0] = *(a1 + v24);
    }

    if (v22 <= v26)
    {
      v22 = *(a1 + v24);
    }

    v24 += 176;
    --v25;
  }

  while (v25);
  v27 = v22 - v23.n128_f32[0];
  v23.n128_u32[0] = 0.5;
  v28 = (((v27 * 0.5) * (v27 * 0.5)) * a3) * a3;
  if (v28 > (v21 * 0.0001))
  {
    v29 = v28;
  }

  else
  {
    v29 = v21 * 0.0001;
  }

  do
  {
    v89 = v19;
    *v19.i64 = sub_2583B1B90(a1, v19, v29, v23);
    v30 = vsubq_f32(v89, v19);
    v31 = vmulq_f32(v30, v30);
  }

  while ((v31.f32[2] + vaddv_f32(*v31.f32)) > 0.0);
  sub_2583B26A4(v162);
  v32 = v89;
  v137 = v162[8];
  v138 = v162[9];
  v133 = v162[4];
  v134 = v162[5];
  v135 = v162[6];
  v136 = v162[7];
  v129 = v162[0];
  v130 = v162[1];
  v33 = v8 - 1;
  v131 = v162[2];
  v132 = v162[3];
  v34 = INFINITY;
  v139.i32[0] = v163;
  v85 = a1 + 32;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v36 = v9[9];
    v122 = v9[8];
    v123 = v36;
    v124.i32[0] = v9[10].i32[0];
    v37 = v9[5];
    v118 = v9[4];
    v119 = v37;
    v38 = v9[7];
    v120 = v9[6];
    v121 = v38;
    v39 = v9[1];
    v114 = *v9;
    v115 = v39;
    v40 = v9[3];
    v116 = v9[2];
    v117 = v40;
    v41 = vsubq_f32(v32, v114);
    v42 = vmulq_f32(v41, v41);
    v43 = v42.f32[2] + vaddv_f32(*v42.f32);
    if (v43 < v29)
    {
      break;
    }

    v148 = v137;
    v149 = v138;
    v150 = v139.i32[0];
    v144 = v133;
    v145 = v134;
    v147 = v136;
    v146 = v135;
    v140 = v129;
    v141 = v130;
    v43 = v34;
    v143 = v132;
    v142 = v131;
    if (!v33)
    {
      goto LABEL_27;
    }

LABEL_26:
    v137 = v148;
    v138 = v149;
    v139.i32[0] = v150;
    v133 = v144;
    v134 = v145;
    v135 = v146;
    v136 = v147;
    v129 = v140;
    v130 = v141;
    --v33;
    v9 += 11;
    v34 = v43;
    v131 = v142;
    v132 = v143;
  }

  sub_258389808(&v114, &v151, &qword_27F928340);
  sub_258389808(&v114, &v151, &qword_27F928340);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_25839D518(0, v35[2] + 1, 1, v35);
  }

  v45 = v35[2];
  v44 = v35[3];
  if (v45 >= v44 >> 1)
  {
    v35 = sub_25839D518((v44 > 1), v45 + 1, 1, v35);
  }

  v35[2] = v45 + 1;
  v46 = &v35[22 * v45];
  v47 = v114;
  v48 = v116;
  v46[3] = v115;
  v46[4] = v48;
  v46[2] = v47;
  v49 = v117;
  v50 = v118;
  v51 = v120;
  v46[7] = v119;
  v46[8] = v51;
  v46[5] = v49;
  v46[6] = v50;
  v52 = v121;
  v53 = v122;
  v54 = v123;
  v46[12].i32[0] = v124.i32[0];
  v46[10] = v53;
  v46[11] = v54;
  v46[9] = v52;
  if (v43 >= v34)
  {
    sub_258385E40(&v114, &qword_27F928340);
    v148 = v137;
    v149 = v138;
    v150 = v139.i32[0];
    v144 = v133;
    v145 = v134;
    v147 = v136;
    v146 = v135;
    v140 = v129;
    v141 = v130;
    v56 = v131;
    v55 = v132;
    v43 = v34;
  }

  else
  {
    sub_258385E40(&v129, &qword_27F928890);
    v159 = v122;
    v160 = v123;
    v161 = v124.i32[0];
    v155 = v118;
    v156 = v119;
    v158 = v121;
    v157 = v120;
    v151 = v114;
    v152 = v115;
    v154 = v117;
    v153 = v116;
    nullsub_1(&v151);
    v148 = v159;
    v149 = v160;
    v150 = v161;
    v144 = v155;
    v145 = v156;
    v147 = v158;
    v146 = v157;
    v140 = v151;
    v141 = v152;
    v55 = v154;
    v56 = v153;
  }

  v143 = v55;
  v142 = v56;
  v32 = v89;
  if (v33)
  {
    goto LABEL_26;
  }

LABEL_27:
  v159 = v148;
  v160 = v149;
  v161 = v150;
  v155 = v144;
  v156 = v145;
  v158 = v147;
  v157 = v146;
  v151 = v140;
  v152 = v141;
  v154 = v143;
  v153 = v142;
  if (sub_2583B26C4(&v140) == 1)
  {

    sub_2583B26DC(&v129);
  }

  else
  {
    v127 = v141;
    v128 = v142;
    v82 = v147;
    v125 = v146;
    v126 = v147;
    v57 = v149.i64[0];
    v58 = v150;
    v59 = *(v85 + 144);
    v95 = *(v85 + 128);
    v96 = v59;
    v97 = *(v85 + 160);
    v60 = *(v85 + 80);
    v91 = *(v85 + 64);
    v92 = v60;
    v61 = *(v85 + 112);
    v93 = *(v85 + 96);
    v94 = v61;
    v62 = *(v85 + 16);
    v90[0] = *v85;
    v90[1] = v62;
    v63 = *(v85 + 48);
    v90[2] = *(v85 + 32);
    v90[3] = v63;
    v86 = v91;
    sub_258389808(&v151, &v129, &qword_27F928890);
    sub_258389808(v90, &v129, &qword_27F928340);

    v64 = vsubq_f32(v89, v86);
    v65 = vmulq_f32(v64, v64);
    v64.i32[3] = 0;
    *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
    v67 = vrsqrte_f32(v66);
    v68 = vmul_f32(v67, vrsqrts_f32(v66, vmul_f32(v67, v67)));
    v81 = vmulq_n_f32(v64, vmul_f32(v68, vrsqrts_f32(v66, vmul_f32(v68, v68))).f32[0]);
    v69 = vsubq_f32(v86, v89);
    v70 = vmulq_f32(v69, v69);
    v71 = vsubq_f32(v89, v82);
    v72 = vmulq_f32(v71, v71);
    v71.i32[3] = 0;
    *&v73 = sqrtf(v70.f32[2] + vaddv_f32(*v70.f32));
    v65.f32[0] = v72.f32[2] + vaddv_f32(*v72.f32);
    *v70.f32 = vrsqrte_f32(v65.u32[0]);
    *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v65.u32[0], vmul_f32(*v70.f32, *v70.f32)));
    v83 = vmulq_n_f32(v71, vmul_f32(*v70.f32, vrsqrts_f32(v65.u32[0], vmul_f32(*v70.f32, *v70.f32))).f32[0]);
    v74 = vmulq_f32(v81, v83);
    *&v75 = v74.f32[2] + vaddv_f32(*v74.f32);
    sub_258385E40(&v151, &qword_27F928890);
    v98 = v89;
    v99 = v127;
    v104 = v125;
    v105 = v126;
    v109[0] = v89;
    v109[1] = v127;
    v100 = v128;
    v101 = v89;
    v109[2] = v128;
    v109[3] = v89;
    v102 = v86;
    v103 = v81;
    v106 = v83;
    v107.i64[0] = v57;
    v107.i64[1] = __PAIR64__(v75, v73);
    v108 = v58;
    v109[4] = v86;
    v109[5] = v81;
    v109[6] = v125;
    v109[7] = v126;
    v109[8] = v83;
    v110 = v57;
    v111 = v73;
    v112 = v75;
    v113 = v58;
    sub_258389808(&v98, &v129, &qword_27F928340);
    sub_258385E40(v109, &qword_27F928340);
    v122 = v106;
    v123 = v107;
    v124.i32[0] = v108;
    v118 = v102;
    v119 = v103;
    v120 = v104;
    v121 = v105;
    v114 = v98;
    v115 = v99;
    v116 = v100;
    v117 = v101;
    v124.i64[1] = v35;
    nullsub_1(&v114);
    v137 = v122;
    v138 = v123;
    v139 = v124;
    v133 = v118;
    v134 = v119;
    v135 = v120;
    v136 = v121;
    v129 = v114;
    v130 = v115;
    v131 = v116;
    v132 = v117;
  }

  v76 = v138;
  v87[8] = v137;
  v87[9] = v76;
  v87[10] = v139;
  v77 = v134;
  v87[4] = v133;
  v87[5] = v77;
  v78 = v136;
  v87[6] = v135;
  v87[7] = v78;
  v79 = v130;
  *v87 = v129;
  v87[1] = v79;
  v80 = v132;
  v87[2] = v131;
  v87[3] = v80;
}

double sub_2583B26A4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2583B26C4(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_2583B26DC(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id VNCoreMLRequest.features(for:)(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25842DFB0;
  *(v3 + 32) = v1;
  sub_258385DB0(0, &qword_27F928898);
  v4 = v1;
  v5 = sub_258428850();

  v13[0] = 0;
  LODWORD(a1) = [a1 performRequests:v5 error:v13];

  v6 = v13[0];
  if (!a1)
  {
    v11 = v13[0];
    sub_2584282A0();

    goto LABEL_6;
  }

  v7 = v13[0];
  v8 = [v4 results];
  if (!v8 || (v9 = v8, sub_258385DB0(0, &qword_27F9288A0), v10 = sub_258428860(), v9, v6 = sub_2583B28B0(v10), , !v6))
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
LABEL_6:
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2583B28B0(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_258429060();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_258428F10())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C7E900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_258429030();
      sub_258429070();
      sub_258429080();
      sub_258429040();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_258428F10();
    sub_258429060();
  }

  return v8;
}

double static MeasureCamera.getHitRay(screenPoint:viewProjectionInv:viewportSize:)@<D0>(float32x4_t *a1@<X8>, double a2@<D0>, double a3@<D1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>, float32x4_t a6@<Q4>, float32x4_t a7@<Q5>, double a8@<D6>)
{
  sub_2583B3418(v11, a2, a3, a4, a5, a6, a7, a8);
  result = *v11[0].i64;
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2].i8[0] = v12;
  return result;
}

double static MeasureCamera.worldSpacePoint(fromViewSpace:inverseView:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, a1.f32[0]), a3, *a1.f32, 1), a4, a1, 2), a5);
  *&result = vdivq_f32(v5, vdupq_laneq_s32(v5, 3)).u64[0];
  return result;
}

CGFloat static MeasureCamera.getLayerTransform(for:view:)@<D0>(_OWORD *a1@<X8>)
{
  __asm { FMOV            V22.4S, #-1.0 }

  simd_float4x4.getCATransform3D()(&v12);
  v7 = *&v12.m33;
  a1[4] = *&v12.m31;
  a1[5] = v7;
  v8 = *&v12.m43;
  a1[6] = *&v12.m41;
  a1[7] = v8;
  v9 = *&v12.m13;
  *a1 = *&v12.m11;
  a1[1] = v9;
  result = v12.m21;
  v11 = *&v12.m23;
  a1[2] = *&v12.m21;
  a1[3] = v11;
  return result;
}

BOOL static MeasureCamera.isOnScreen(screenPoint:viewRect:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10.origin.x = a3;
  v10.origin.y = a4;
  v10.size.width = a5;
  v10.size.height = a6;
  v9.x = a1;
  v9.y = a2;
  return CGRectContainsPoint(v10, v9);
}

BOOL static MeasureCamera.planeTooClose(for:transform:)(uint64_t a1, double a2, double a3, double a4, float32x4_t a5)
{
  v6 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = *(v7 + 16);

  os_unfair_lock_unlock(v8);

  v10 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *(v11 + 24);

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = *(v11 + 16);

  os_unfair_lock_unlock(v12);

  if (!v13)
  {
    return 0;
  }

  v14 = qword_27F927AC8;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = *(v13 + 16);
  v16 = *(v15 + 24);

  os_unfair_lock_lock(v16);
  swift_beginAccess();
  v17 = *(v15 + 16);
  os_unfair_lock_unlock(v16);

  v18 = sub_2583E2618(v17);

  if (v18 == 1)
  {

    return 0;
  }

  v20 = *(a1 + v6);
  v21 = *(v20 + 24);

  os_unfair_lock_lock(v21);
  swift_beginAccess();
  v22 = *(v20 + 16);

  os_unfair_lock_unlock(v21);

  v25 = *(v22 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

  v23 = vsubq_f32(v25, a5);
  v24 = vmulq_f32(v23, v23);
  return sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) < 0.1;
}

BOOL static MeasureCamera.planeTooFar(for:transform:)(uint64_t a1, double a2, double a3, double a4, float32x4_t a5)
{
  v6 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = *(v7 + 16);

  os_unfair_lock_unlock(v8);

  v10 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *(v11 + 24);

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = *(v11 + 16);

  os_unfair_lock_unlock(v12);

  if (!v13)
  {
    return 0;
  }

  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = *(v13 + 16);
  v15 = *(v14 + 24);

  os_unfair_lock_lock(v15);
  swift_beginAccess();
  v16 = *(v14 + 16);
  os_unfair_lock_unlock(v15);

  v17 = sub_2583E2618(v16);

  if (v17 == 1)
  {

    return 0;
  }

  v19 = *(a1 + v6);
  v20 = *(v19 + 24);

  os_unfair_lock_lock(v20);
  swift_beginAccess();
  v21 = *(v19 + 16);

  os_unfair_lock_unlock(v20);

  v26 = *(v21 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

  v22 = vsubq_f32(v26, a5);
  v23 = vmulq_f32(v22, v22);
  v23.f32[0] = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32));
  v24 = v23.f32[0] * v23.f32[0];
  if (qword_27F927A80 != -1)
  {
    swift_once();
  }

  v25 = *&static PlaneSelector.firstPointMaxDistanceSquared;

  return v25 < v24;
}

float32x2_t _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x2_t a6)
{
  v6 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, a1.f32[0]), a3, *a1.f32, 1), a4, a1, 2), a5);
  if (fabsf(*&v6.i32[3]) >= 0.00000011921)
  {
    v8 = vdiv_f32(*v6.i8, vdup_laneq_s32(v6, 3));
    __asm { FMOV            V3.2S, #1.0 }

    v14.i32[0] = vadd_f32(v8, _D3).u32[0];
    v14.i32[1] = vsub_f32(_D3, v8).i32[1];
    return vmul_f32(vmul_f32(v14, a6), 0x3F0000003F000000);
  }

  else
  {
    return 0x7FC000007FC00000;
  }
}

double _s17MeasureFoundation0A6CameraC14unprojectPoint_17viewProjectionInv12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(__n128 a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, double a6)
{
  a1.n128_f32[0] = ((a1.n128_f32[0] + a1.n128_f32[0]) / *&a6) + -1.0;
  *&a6 = ((a1.n128_f32[1] + a1.n128_f32[1]) / *(&a6 + 1)) + -1.0;
  v6 = vaddq_f32(vmlaq_n_f32(vmlsq_lane_f32(vmulq_n_f32(a2, a1.n128_f32[0]), a3, *&a6, 0), a4, (a1.n128_f32[2] + a1.n128_f32[2]) + -1.0), a5);
  if (fabsf(v6.f32[3]) < 0.00000011921)
  {
    return 2.24711749e307;
  }

  *&result = vmulq_n_f32(v6, 1.0 / v6.f32[3]).u64[0];
  return result;
}

uint64_t sub_2583B328C(double a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, double a8)
{
  v8.f32[0] = ((*(&a1 + 1) + *(&a1 + 1)) / *(&a8 + 1)) + -1.0;
  v9 = vmlsq_lane_f32(vmulq_n_f32(a4, ((*&a1 + *&a1) / *&a8) + -1.0), a5, v8, 0);
  v10 = vaddq_f32(vaddq_f32(v9, a6), a7);
  v11 = xmmword_25842DFC0;
  v12 = xmmword_25842DFC0;
  if (fabsf(v10.f32[3]) >= 0.00000011921)
  {
    v12.i64[0] = vmulq_n_f32(v10, 1.0 / v10.f32[3]).u64[0];
    v12.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / v10.f32[3], v10, 2));
  }

  __asm { FMOV            V4.4S, #-1.0 }

  v18 = vaddq_f32(vmlaq_f32(v9, _Q4, a6), a7);
  if (fabsf(v18.f32[3]) >= 0.00000011921)
  {
    v11.i64[0] = vmulq_n_f32(v18, 1.0 / v18.f32[3]).u64[0];
    v11.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / v18.f32[3], v18, 2));
  }

  v19 = vsubq_f32(v11, v12);
  v20 = vmulq_f32(v19, v19);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  v22 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  a2.i32[3] = 0;
  v23 = vmulq_f32(a2, v22);
  v24 = vmulq_f32(a2, vsubq_f32(a3, v12));
  v25 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v23.i8), vzip2_s32(*v24.i8, *v23.i8)));
  if (fabsf(v25.f32[1]) < 0.00000011921)
  {
    return 0;
  }

  __asm { FMOV            V5.2S, #1.0 }

  v27 = vand_s8(vbsl_s8(0x8000000080000000, _D5, v25), vorr_s8(vcltz_f32(v25), vcgtz_f32(v25)));
  if (vceq_f32(v27, vdup_lane_s32(v27, 1)).u8[0])
  {
    return vadd_f32(*v12.f32, vmul_n_f32(*v22.f32, v25.f32[0] / v25.f32[1]));
  }

  else
  {
    return 0;
  }
}

void sub_2583B3418(float32x4_t *a1@<X8>, double a2@<D0>, double a3@<D1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>, float32x4_t a6@<Q4>, float32x4_t a7@<Q5>, double a8@<D6>)
{
  v8 = a2;
  *&a3 = a3;
  *&a3 = ((*&a3 + *&a3) / *(&a8 + 1)) + -1.0;
  v9 = vmlsq_lane_f32(vmulq_n_f32(a4, ((v8 + v8) / *&a8) + -1.0), a5, *&a3, 0);
  __asm { FMOV            V0.4S, #-1.0 }

  v15 = vaddq_f32(vmlaq_f32(v9, _Q0, a6), a7);
  v16 = xmmword_25842DFC0;
  v17 = xmmword_25842DFC0;
  if (fabsf(v15.f32[3]) >= 0.00000011921)
  {
    v17.i64[0] = vmulq_n_f32(v15, 1.0 / v15.f32[3]).u64[0];
    v17.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / v15.f32[3], v15, 2));
  }

  v18 = vaddq_f32(vaddq_f32(v9, a6), a7);
  if (fabsf(v18.f32[3]) >= 0.00000011921)
  {
    v16.i64[0] = vmulq_n_f32(v18, 1.0 / v18.f32[3]).u64[0];
    v16.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / v18.f32[3], v18, 2));
  }

  v19 = 0uLL;
  if (((~v17.i32[2] & 0x7F800000) != 0 || (v17.i32[2] & 0x7FFFFF) == 0) && ((v20 = v16.f32[2], (~v16.i32[2] & 0x7F800000) != 0) || (v16.i32[2] & 0x7FFFFF) == 0))
  {
    v21 = 0;
    v23 = vsubq_f32(v16, v17);
    v23.f32[2] = v20 - v17.f32[2];
    v24 = vmulq_f32(v23, v23);
    *&v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    *v24.f32 = vrsqrte_f32(v25);
    *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
    v22 = vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
    v19 = v17;
  }

  else
  {
    v21 = 1;
    v22 = 0uLL;
  }

  *a1 = v19;
  a1[1] = v22;
  a1[2].i8[0] = v21;
}

uint64_t MeasureObject.id.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MeasureObject.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t MeasureObject.state.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  *(v3 + 16) = a1;
  os_unfair_lock_unlock(v4);
}

void (*MeasureObject.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  *(v3 + 32) = v5;
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  os_unfair_lock_unlock(v6);
  *(v4 + 24) = v7;
  return sub_2583B3780;
}

void sub_2583B3780(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v2 + 24);
  os_unfair_lock_lock(v4);
  *(v2 + 16) = v3;
  os_unfair_lock_unlock(v4);

  free(v1);
}

void (*MeasureObject.suggest.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___suggest];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___suggest];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___suggest];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4A20;
    *v1 = sub_2583B4A20;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.suggest.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.suggest.getter();
  a1[1] = v3;
  return sub_2583B38F4;
}

void (*MeasureObject.isConfirmable.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___isConfirmable];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___isConfirmable];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___isConfirmable];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4B0C;
    *v1 = sub_2583B4B0C;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.isConfirmable.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.isConfirmable.getter();
  a1[1] = v3;
  return sub_2583B3A28;
}

void (*MeasureObject.canHandleTouch.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___canHandleTouch];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___canHandleTouch];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___canHandleTouch];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4BC0;
    *v1 = sub_2583B4BC0;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.canHandleTouch.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.canHandleTouch.getter();
  a1[1] = v3;
  return sub_2583B3B5C;
}

void (*MeasureObject.confirm.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___confirm];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___confirm];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___confirm];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4BC8;
    *v1 = sub_2583B4BC8;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.confirm.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.confirm.getter();
  a1[1] = v3;
  return sub_2583B3C90;
}

void (*MeasureObject.prepareToclear.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___prepareToclear];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___prepareToclear];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___prepareToclear];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4BE8;
    *v1 = sub_2583B4BE8;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.prepareToclear.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.prepareToclear.getter();
  a1[1] = v3;
  return sub_2583B3DC4;
}

void (*MeasureObject.reconfirm.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___reconfirm];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___reconfirm];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___reconfirm];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4CB8;
    *v1 = sub_2583B4CB8;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.reconfirm.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.reconfirm.getter();
  a1[1] = v3;
  return sub_2583B3EF8;
}

void (*MeasureObject.clear.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___clear];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___clear];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___clear];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4D88;
    *v1 = sub_2583B4D88;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.clear.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.clear.getter();
  a1[1] = v3;
  return sub_2583B402C;
}

void (*MeasureObject.percentVisible.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___percentVisible];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___percentVisible];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___percentVisible];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4DA8;
    *v1 = sub_2583B4DA8;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.percentVisible.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.percentVisible.getter();
  a1[1] = v3;
  return sub_2583B4160;
}

void (*MeasureObject.distanceFromReticle.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromReticle];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromReticle];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromReticle];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4DC8;
    *v1 = sub_2583B4DC8;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.distanceFromReticle.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.distanceFromReticle.getter();
  a1[1] = v3;
  return sub_2583B4294;
}

void (*MeasureObject.distanceFromCameraPlane.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromCameraPlane];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromCameraPlane];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromCameraPlane];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4DE8;
    *v1 = sub_2583B4DE8;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t (*MeasureObject.distanceFromCameraPlane.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.distanceFromCameraPlane.getter();
  a1[1] = v3;
  return sub_2583B43C8;
}

void (*MeasureObject.importanceWeight.getter())()
{
  v1 = &v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___importanceWeight];
  v2 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___importanceWeight];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___importanceWeight];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_2583B4E08;
    *v1 = sub_2583B4E08;
    v1[1] = v4;
    v5 = v0;

    sub_2583B4A40(0);
  }

  sub_2583B4A50(v2);
  return v3;
}

uint64_t sub_2583B44B4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = (v4 + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return a4(v6, v7);
}

uint64_t (*MeasureObject.importanceWeight.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MeasureObject.importanceWeight.getter();
  a1[1] = v3;
  return sub_2583B451C;
}

uint64_t sub_2583B453C(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v4 = a1[1];
  v5 = (a1[2] + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = *a1;
  v5[1] = v4;
  if (a2)
  {

    a4(v6, v7);
  }

  else
  {

    return (a4)(v6, v7);
  }
}

uint64_t MeasureObject.incrementCount(by:)(uint64_t a1)
{
  if (qword_27F927A48 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(qword_27F9288B0);
  if (qword_27F927A40 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_258428660();
  v6 = v5;

  swift_beginAccess();
  v7 = off_27F9288A8;
  if (*(off_27F9288A8 + 2))
  {
    v8 = sub_258384364(v4, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(v7[7] + 8 * v8);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_10:
  result = swift_endAccess();
  v13 = __OFADD__(v11, a1);
  v14 = v11 + a1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = NSStringFromClass(ObjCClassFromMetadata);
    v16 = sub_258428660();
    v18 = v17;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = off_27F9288A8;
    off_27F9288A8 = 0x8000000000000000;
    sub_258384DD8(v14, v16, v18, isUniquelyReferenced_nonNull_native);

    off_27F9288A8 = v20;
    swift_endAccess();
    os_unfair_lock_unlock(qword_27F9288B0);
    return v14;
  }

  return result;
}

uint64_t sub_2583B47C4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void *sub_2583B4830()
{
  result = sub_258389378(MEMORY[0x277D84F90]);
  off_27F9288A8 = result;
  return result;
}

_DWORD *sub_2583B4858()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27F9288B0 = result;
  return result;
}

uint64_t property wrapper backing initializer of MeasureObject.state(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928920);
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_2583B49E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2583B4A40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2583B4A50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2583B4A60()
{
  sub_258428FC0();

  swift_getObjectType();
  v0 = sub_258429470();
  MEMORY[0x259C7DFF0](v0);

  sub_258429100();
  __break(1u);
}

void sub_2583B4B14()
{
  sub_258428FC0();

  swift_getObjectType();
  v0 = sub_258429470();
  MEMORY[0x259C7DFF0](v0);

  sub_258429100();
  __break(1u);
}

void sub_2583B4C08()
{
  sub_258428FC0();

  swift_getObjectType();
  v0 = sub_258429470();
  MEMORY[0x259C7DFF0](v0);

  sub_258429100();
  __break(1u);
}

void sub_2583B4CD8()
{
  sub_258428FC0();

  swift_getObjectType();
  v0 = sub_258429470();
  MEMORY[0x259C7DFF0](v0);

  sub_258429100();
  __break(1u);
}

id MeasureObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MeasureObject.init()()
{
  v1 = v0;
  v2 = sub_2584283F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v7 = sub_2584283B0();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *v6 = v7;
  v6[1] = v9;
  v10 = OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928920);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *&v1[v10] = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = v12;
  v13 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___suggest];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___isConfirmable];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___canHandleTouch];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___confirm];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___prepareToclear];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___reconfirm];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___clear];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___percentVisible];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromReticle];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___distanceFromCameraPlane];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject____lazy_storage___importanceWeight];
  v24 = type metadata accessor for MeasureObject();
  *v23 = 0;
  *(v23 + 1) = 0;
  v57.receiver = v1;
  v57.super_class = v24;
  v25 = objc_msgSendSuper2(&v57, sel_init);
  v26 = MeasureObject.incrementCount(by:)(1);
  if (qword_27F927B40 != -1)
  {
    swift_once();
  }

  v28 = qword_27F92F3D0;
  v27 = *algn_27F92F3D8;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_258428FC0();

  v52 = 0x20676E69646441;
  v53 = 0xE700000000000000;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = NSStringFromClass(ObjCClassFromMetadata);
  v31 = sub_258428660();
  v33 = v32;

  MEMORY[0x259C7DFF0](v31, v33);

  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  v34 = &v25[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 1);

  MEMORY[0x259C7DFF0](v35, v36);

  MEMORY[0x259C7DFF0](0x206C61746F54202ELL, 0xEA0000000000203DLL);
  v54 = v26;
  v37 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v37);

  v39 = v52;
  v38 = v53;
  sub_258428C50();
  v40 = qword_27F927A30;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v42 = off_27F928850;
  if (*(off_27F928850 + 2) && (v43 = sub_258384364(v28, v27), (v44 & 1) != 0))
  {
    v45 = *(v42[7] + 8 * v43);
    swift_endAccess();
    v46 = v45;
  }

  else
  {
    v51 = v39;
    swift_endAccess();
    sub_25838AB14();
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v47 = sub_258428D90();
    swift_beginAccess();
    v46 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v46, v28, v27, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v54;
    swift_endAccess();
    v39 = v51;
  }

  os_unfair_lock_unlock(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_25842CCB0;
  *(v49 + 56) = MEMORY[0x277D837D0];
  *(v49 + 64) = sub_258385D08();
  *(v49 + 32) = v39;
  *(v49 + 40) = v38;

  sub_258428440();

  return v25;
}

id MeasureObject.__deallocating_deinit()
{
  v1 = v0;
  v2 = MeasureObject.incrementCount(by:)(-1);
  if (qword_27F927B40 != -1)
  {
    swift_once();
  }

  v4 = qword_27F92F3D0;
  v3 = *algn_27F92F3D8;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_258428FC0();

  v26 = 0x676E69766F6D6552;
  v27 = 0xE900000000000020;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  v7 = sub_258428660();
  v9 = v8;

  MEMORY[0x259C7DFF0](v7, v9);

  MEMORY[0x259C7DFF0](32, 0xE100000000000000);
  v10 = &v1[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);

  MEMORY[0x259C7DFF0](v11, v12);

  MEMORY[0x259C7DFF0](0x206C61746F54202ELL, 0xEA0000000000203DLL);
  v28 = v2;
  v13 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v13);

  sub_258428C50();
  v14 = qword_27F927A30;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_27F928850;
  if (*(off_27F928850 + 2) && (v17 = sub_258384364(v4, v3), (v18 & 1) != 0))
  {
    v19 = *(v16[7] + 8 * v17);
    swift_endAccess();
    v20 = v19;
  }

  else
  {
    swift_endAccess();
    sub_25838AB14();
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v21 = sub_258428D90();
    swift_beginAccess();
    v20 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v20, v4, v3, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v28;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25842CCB0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_258385D08();
  *(v23 + 32) = 0x676E69766F6D6552;
  *(v23 + 40) = 0xE900000000000020;

  sub_258428440();

  v25.receiver = v1;
  v25.super_class = type metadata accessor for MeasureObject();
  return objc_msgSendSuper2(&v25, sel_dealloc);
}

uint64_t MeasureObject.isEqual(_:)(uint64_t a1)
{
  sub_2583B62FC(a1, v10);
  if (v11)
  {
    type metadata accessor for MeasureObject();
    if (swift_dynamicCast())
    {
      v2 = &v9[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id];
      swift_beginAccess();
      v4 = *v2;
      v3 = *(v2 + 1);

      goto LABEL_6;
    }
  }

  else
  {
    sub_2583A3D90(v10);
  }

  v4 = 0;
  v3 = 0;
LABEL_6:
  v5 = (v1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  if (v3)
  {
    if (v4 == *v5 && v3 == v5[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_258429310();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static MeasureObject.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258429310();
  }

  return v8 & 1;
}

uint64_t RangeReplaceableCollection<>.idToObjectMap.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v2 = sub_2584288D0();
  sub_2583B5FEC(v2, v1, AssociatedTypeWitness, MEMORY[0x277D837E0]);

  sub_258428540();
  sub_2584287F0();
  return v4;
}

uint64_t sub_2583B5D24(uint64_t a1, void **a2)
{
  v4 = *a2;
  (*((*MEMORY[0x277D85000] & **a2) + 0xB8))();
  swift_getAssociatedTypeWitness();
  sub_258428540();
  v2 = v4;
  return sub_258428570();
}

unint64_t sub_2583B5E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258428580();

  return sub_2583B5E64(a1, v6, a2, a3);
}

unint64_t sub_2583B5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_258428600();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_2583B5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_258428910())
  {
    sub_2584291D0();
    v13 = sub_2584291C0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_258428910();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2584288F0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_258428FE0();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2583B5E08(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2583B62FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9285F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2583B6388@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject_id);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t static MeasureObjectState.default.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static MeasureObjectState.default = a1;
  return result;
}

Swift::Bool __swiftcall MeasureObjectState.isCapturable()()
{
  if ((v0 - 3) < 2 || v0 == 6)
  {
    return 0;
  }

  if (v0 == 8)
  {
    v3 = v0;
    v4 = [objc_opt_self() jasperAvailable];
    v0 = v3;
    if (v4)
    {
      return 0;
    }
  }

  return v0 != 9;
}

unint64_t sub_2583B663C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2583B6814(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MeasureObjectState.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6867696C68676968;
      }

      if (a1 == 3)
      {
        return 0x676E6963616C70;
      }

      return 0x49676E6963616C70;
    }

    if (!a1)
    {
      return 1701602409;
    }

    if (a1 == 1)
    {
      return 0x64656C6261736964;
    }

LABEL_22:
    result = sub_258429340();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x676E69766F6DLL;
      case 8:
        return 0x6564697567;
      case 9:
        return 0x676E697261656C63;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x656D7269666E6F63;
  }

  else
  {
    return 0x6574736567677573;
  }
}

unint64_t sub_2583B6814(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2583B6828()
{
  result = qword_27F928930;
  if (!qword_27F928930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928930);
  }

  return result;
}

unint64_t sub_2583B6880()
{
  result = qword_27F928938;
  if (!qword_27F928938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928938);
  }

  return result;
}

uint64_t DepthProcessor.transformer.getter()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
LABEL_5:

    return v1;
  }

  v2 = v0;
  v3 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(ObjectType, v3);
  v6 = v5;
  v8 = v7;
  v9 = [*(v0 + 56) currentFrame];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 camera];

    v12 = *(v2 + 48);
    type metadata accessor for DepthTransformer();
    v13 = swift_allocObject();
    *(v13 + 848) = 0u;
    *(v13 + 864) = 0u;
    *(v13 + 880) = 0u;
    *(v13 + 896) = 0u;
    *(v13 + 912) = 1;
    *(v13 + 928) = 0u;
    *(v13 + 944) = 0u;
    *(v13 + 960) = 0u;
    *(v13 + 976) = 0u;
    *(v13 + 992) = 1;
    v1 = sub_2583A6EB4(v11, v12, v6, v8);

    *(v2 + 184) = v1;

    goto LABEL_5;
  }

  result = sub_258429100();
  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall DepthProcessor.getJasperPointsInQuad(searchArea:requestedMinConfidence:in:)(__C::CGRect searchArea, Swift::Float requestedMinConfidence, ARFrame in)
{
  v4 = v3;
  *&v6 = requestedMinConfidence;
  height = searchArea.size.height;
  width = searchArea.size.width;
  y = searchArea.origin.y;
  x = searchArea.origin.x;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + 200));
  swift_endAccess();
  v11 = *(v3 + 104);
  if (v11)
  {
    v12 = v11;
    v13 = sub_258428C30();

    v14 = *(v4 + 104);
    if (v14)
    {
      v15 = [v14 depthPointCloud];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 confidences];

        if (v17)
        {
          v78.origin.x = x;
          v78.origin.y = y;
          v78.size.width = width;
          v78.size.height = height;
          MinX = CGRectGetMinX(v78);
          v79.origin.x = x;
          v79.origin.y = y;
          v79.size.width = width;
          v79.size.height = height;
          MinY = CGRectGetMinY(v79);
          v19.f64[0] = MinX;
          v19.f64[1] = MinY;
          v20 = COERCE_DOUBLE(vcvt_f32_f64(v19));
          v21 = x;
          v19.f64[0] = y;
          v22 = width;
          v23 = height;
          MaxX = CGRectGetMaxX(*(&v19 - 8));
          v80.origin.x = x;
          v80.origin.y = y;
          v80.size.width = width;
          v80.size.height = height;
          MaxY = CGRectGetMaxY(v80);
          v25.f64[0] = MaxX;
          v25.f64[1] = MaxY;
          v26 = COERCE_DOUBLE(vcvt_f32_f64(v25));
          v27 = sub_2583B7048();
          v28 = [v27 elementsInQuad_];

          type metadata accessor for DepthProcessor.JasperPoint();
          v29 = sub_258428860();

          v72[0] = MEMORY[0x277D84F90];
          if (v29 >> 62)
          {
            goto LABEL_48;
          }

          for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258428F10())
          {
            v31 = &unk_27F928000;
            v67 = v13;
            if (!i)
            {
              break;
            }

            isa = in.super.isa;
            v32 = 0;
            v13 = v29 & 0xC000000000000001;
            in.super.isa = (v29 & 0xFFFFFFFFFFFFFF8);
            v70 = i;
            while (1)
            {
              if (v13)
              {
                v33 = MEMORY[0x259C7E900](v32, v29);
              }

              else
              {
                if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_45;
                }

                v33 = *(v29 + 8 * v32 + 32);
              }

              v34 = v33;
              v35 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if (v17[*&v33[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_index]] >= *&v6 && (v81.origin.x = x, v81.origin.y = y, v81.size.width = width, v81.size.height = height, CGRectContainsPoint(v81, *&v33[v31[298]])))
              {
                sub_258429030();
                sub_258429070();
                sub_258429080();
                sub_258429040();
                v31 = &unk_27F928000;
                i = v70;
              }

              else
              {
              }

              ++v32;
              if (v35 == i)
              {
                v38 = v72[0];
                in.super.isa = isa;
                v13 = v67;
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            ;
          }

          v38 = MEMORY[0x277D84F90];
LABEL_23:

          if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
          {
            v29 = sub_258428F10();
            if (v29)
            {
LABEL_26:
              v71 = v17;
              v39 = 0;
              v17 = (v38 & 0xC000000000000001);
              v66 = v13 + 32;
              v40 = MEMORY[0x277D84F90];
              do
              {
                v41 = v39;
                while (1)
                {
                  if (v17)
                  {
                    v42 = MEMORY[0x259C7E900](v41, v38);
                    v39 = v41 + 1;
                    if (__OFADD__(v41, 1))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v41 >= *(v38 + 16))
                    {
                      goto LABEL_47;
                    }

                    v42 = *(v38 + 8 * v41 + 32);
                    v39 = v41 + 1;
                    if (__OFADD__(v41, 1))
                    {
                      goto LABEL_46;
                    }
                  }

                  v43 = *&v42[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_index];
                  if ((v43 & 0x8000000000000000) == 0 && v43 < *(v13 + 16))
                  {
                    break;
                  }

                  ++v41;
                  if (v39 == v29)
                  {
                    goto LABEL_51;
                  }
                }

                v62 = *(v66 + 16 * v43);
                v44 = v42;
                DepthProcessor.transformer.getter();
                sub_2583EF3B4(in.super.isa, v72);
                v60 = v73;
                v61 = v74;
                v63 = v75;
                v64 = v76;
                DepthTransformer.jasperToARKitCamera.getter();
                v56 = v45;
                v57 = v46;
                v58 = v48;
                v59 = v47;

                v6 = *&v44[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_screenPoint];
                height = *&v44[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_screenPoint + 8];
                *&width = v71[v43];

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v40 = sub_25839D1EC(0, *(v40 + 2) + 1, 1, v40);
                }

                v51 = *(v40 + 2);
                v50 = *(v40 + 3);
                v13 = v67;
                if (v51 >= v50 >> 1)
                {
                  v40 = sub_25839D1EC((v50 > 1), v51 + 1, 1, v40);
                }

                v52 = vaddq_f32(v58, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v56, 0.001 * v62.f32[0]), v57, vmuls_lane_f32(0.001, *v62.f32, 1)), v59, vmuls_lane_f32(0.001, v62, 2)));
                v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v52.f32[0]), v61, *v52.f32, 1), v63, v52, 2), v64, v52, 3);
                v53.i64[0] = vdivq_f32(v53, vdupq_laneq_s32(v53, 3)).u64[0];
                v53.f32[2] = v53.f32[2] / v53.f32[3];
                v53.i32[3] = 0;
                *(v40 + 2) = v51 + 1;
                v54 = &v40[48 * v51];
                *(v54 + 2) = v53;
                *(v54 + 6) = v6;
                *(v54 + 7) = height;
                *(v54 + 16) = LODWORD(width);
              }

              while (v39 != v29);
              goto LABEL_51;
            }
          }

          else
          {
            v29 = *(v38 + 16);
            if (v29)
            {
              goto LABEL_26;
            }
          }

          v40 = MEMORY[0x277D84F90];
LABEL_51:

          v55 = sub_2583B7D60(v40);

          swift_beginAccess();
          os_unfair_lock_unlock((v4 + 200));
          swift_endAccess();
          v37 = v55;
          goto LABEL_52;
        }
      }
    }
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v4 + 200));
  swift_endAccess();
  v37 = 0;
LABEL_52:
  result.value._rawValue = v37;
  result.is_nil = v36;
  return result;
}

id sub_2583B7048()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = v0;
    v17.origin.x = v5(ObjectType, v3);
    Width = CGRectGetWidth(v17);
    v18.origin.x = v5(ObjectType, v3);
    Height = CGRectGetHeight(v18);
    v8.f64[0] = Width;
    v8.f64[1] = Height;
    v9 = COERCE_DOUBLE(vcvt_f32_f64(v8));
    v10 = objc_allocWithZone(MEMORY[0x277CCB0E8]);
    LODWORD(v11) = 1112014848;
    v12 = [v10 initWithBoundingQuad:0.0 minimumCellSize:{v9, v11}];
    v13 = *(v0 + 80);
    *(v6 + 80) = v12;
    v2 = v12;

    v1 = 0;
  }

  v14 = v1;
  return v2;
}

__n128 DepthProcessor.cameraToWorld.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 176);
  result = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = result;
  return result;
}

uint64_t DepthProcessor.sampleCamera.getter()
{
  v1 = [*(v0 + 56) currentFrame];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 camera];

    return v3;
  }

  else
  {
    result = sub_258429100();
    __break(1u);
  }

  return result;
}

uint64_t sub_2583B72B4(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = xmmword_25842E130;
  *(v3 + 32) = 0x42480000447A0000;
  *(v3 + 48) = 1;
  v6 = MEMORY[0x277D84F90];
  *(v3 + 80) = 0;
  *(v3 + 88) = v6;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 5;
  *(v3 + 216) = 936490775;
  if (qword_27F927A60 != -1)
  {
    swift_once();
  }

  *(v3 + 224) = qword_27F92F230;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 16);
  v9 = a1;
  *(v3 + 56) = v8(ObjectType, a2);
  *(v3 + 40) = *(v3 + 20);
  v10 = *(v3 + 48);
  type metadata accessor for ADProcessor();
  swift_allocObject();
  v11 = sub_2583EDE10(v9, a2, v10);

  swift_beginAccess();
  *(v3 + 192) = v11;

  return v3;
}

void sub_2583B7438(Swift::OpaquePointer a1, ARFrame a2)
{
  swift_beginAccess();
  os_unfair_lock_lock((v2 + 200));
  swift_endAccess();
  swift_beginAccess();
  v32 = v2;
  if (*(v2 + 192))
  {

    v5 = ADProcessor.worldPoints(screenPoints:frame:)(a1, a2);

    if (!v5)
    {
      swift_beginAccess();
      os_unfair_lock_unlock((v2 + 200));
      swift_endAccess();
      return;
    }

    v6 = *(v5 + 16);
    if (!v6)
    {
LABEL_16:

      swift_beginAccess();
      os_unfair_lock_unlock(v32 + 50);
      swift_endAccess();
      return;
    }

    isa = a2.super.isa;
    v35 = MEMORY[0x277D84F90];
    v31 = *(v5 + 16);
    sub_2583921F4(0, v6, 0);
    v7 = v31;
    v8 = 0;
    v9 = *(v5 + 16);
    v10 = (v5 + 56);
    rawValue = a1._rawValue;
    v11 = (a1._rawValue + 40);
    while (v9 != v8)
    {
      if (*v10)
      {
        goto LABEL_9;
      }

      if (v8 >= rawValue[2])
      {
        goto LABEL_18;
      }

      v12 = *(v10 - 1);
      v13 = *(v10 - 24);
      v33 = *v13.i64;
      v14 = sub_2583B76C8(isa, v13, *(v11 - 1), *v11);
      v7 = v31;
      if (v16)
      {
LABEL_9:
        v12 = 0;
        v17 = 1;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
      }

      else
      {
        v22.i64[0] = v14;
        v22.i64[1] = v15;
        *&v18 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(v33, v22);
        v17 = 0;
      }

      v24 = *(v35 + 16);
      v23 = *(v35 + 24);
      if (v24 >= v23 >> 1)
      {
        v34 = v18;
        v27 = v20;
        v28 = v19;
        v26 = v21;
        sub_2583921F4((v23 > 1), v24 + 1, 1);
        v21 = v26;
        v20 = v27;
        v19 = v28;
        v18 = v34;
        v7 = v31;
      }

      ++v8;
      *(v35 + 16) = v24 + 1;
      v25 = v35 + 80 * v24;
      *(v25 + 32) = v18;
      *(v25 + 48) = v19;
      *(v25 + 64) = v20;
      *(v25 + 80) = v21;
      *(v25 + 96) = v12;
      *(v25 + 104) = v17;
      v10 += 32;
      v11 += 2;
      if (v7 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2583B76C8(void *a1, float32x4_t a2, double a3, double a4)
{
  v8 = [a1 camera];
  [v8 transform];
  v70 = v9;
  [v8 transform];
  v11 = vsubq_f32(v10, a2);
  v12 = vmulq_f32(v11, v11);
  v13 = fmax(8.0 / sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)), 2.0);
  v74 = MEMORY[0x277D84F90];
  sub_258392214(0, 4, 0);
  v14 = v74;
  v16 = v74[2];
  v15 = v74[3];
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_258392214((v15 > 1), v16 + 1, 1);
    v14 = v74;
    v15 = v74[3];
    v17 = v15 >> 1;
  }

  v14[2] = v18;
  v19 = &v14[2 * v16];
  v19[4] = a3 - v13;
  v19[5] = a4 + 0.0;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    sub_258392214((v15 > 1), v20, 1);
    v14 = v74;
  }

  v14[2] = v20;
  v21 = &v14[2 * v18];
  v21[4] = v13 + a3;
  v21[5] = a4 + 0.0;
  v23 = v14[2];
  v22 = v14[3];
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    sub_258392214((v22 > 1), v23 + 1, 1);
  }

  v25 = a3 + 0.0;
  v26._rawValue = v74;
  v74[2] = v24;
  v27 = &v74[2 * v23];
  v27[4] = v25;
  v27[5] = a4 - v13;
  v28 = v74[3];
  v29 = v23 + 2;
  if (v24 >= v28 >> 1)
  {
    sub_258392214((v28 > 1), v29, 1);
    v26._rawValue = v74;
  }

  *(v26._rawValue + 2) = v29;
  v30 = (v26._rawValue + 16 * v24);
  v30[4] = v25;
  v30[5] = v13 + a4;
  result = swift_beginAccess();
  if (!*(v4 + 192))
  {
    goto LABEL_48;
  }

  v32 = ADProcessor.worldPoints(screenPoints:frame:)(v26, a1);

  if (!v32)
  {

    return 0;
  }

  v33 = *(v32 + 16);
  if (!v33)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v33 == 1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v33 < 3)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v33 == 3)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  v68 = v8;
  v34 = *(v32 + 32);
  v35 = *(v32 + 40);
  v36 = *(v32 + 56);
  v38 = *(v32 + 64);
  v37 = *(v32 + 72);
  v39 = *(v32 + 88);
  v67 = *(v32 + 104);
  v40 = *(v32 + 120);
  v64 = *(v32 + 128);
  v65 = *(v32 + 96);
  v41 = *(v32 + 152);

  if (v36)
  {
    v42 = &property descriptor for Transformer.viewToClip;
    v43 = a2;
    if (v39)
    {
      v44 = 0uLL;
      v45 = 1;
      goto LABEL_23;
    }

    v46.i64[0] = v38;
    v46.i64[1] = v37;
LABEL_22:
    v45 = 0;
    v44 = vsubq_f32(v46, v43);
    v44.i32[3] = 0;
LABEL_23:
    v47 = v68;
    v69 = v44;
    if (v40)
    {
      goto LABEL_24;
    }

LABEL_30:
    v52.i64[0] = v65;
    v52.i64[1] = v67;
    if ((v41 & 1) == 0)
    {
      v66 = v52;
      v48 = 0;
      if (sub_258428CA0())
      {
        v53 = -1;
      }

      else
      {
        v53 = 0;
      }

      v54 = vsubq_f32(vbslq_s8(vdupq_n_s32(v53), v66, v64), a2);
      goto LABEL_37;
    }

LABEL_36:
    v48 = 0;
    v54 = vsubq_f32(v52, v43);
LABEL_37:
    v54.i32[3] = 0;
    v72 = v54;
    goto LABEL_38;
  }

  v46.i64[0] = v34;
  v46.i64[1] = v35;
  if (v39)
  {
    v42 = &property descriptor for Transformer.viewToClip;
    v43 = a2;
    goto LABEL_22;
  }

  v49.i64[0] = v38;
  v49.i64[1] = v37;
  v62 = v49;
  v63 = v46;
  v45 = 0;
  if (sub_258428CA0())
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  v51 = vsubq_f32(vbslq_s8(vdupq_n_s32(v50), v63, v62), a2);
  v43 = a2;
  v51.i32[3] = 0;
  v47 = v68;
  v42 = &property descriptor for Transformer.viewToClip;
  v69 = v51;
  if ((v40 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((v41 & 1) == 0)
  {
    v52 = v64;
    goto LABEL_36;
  }

  v72 = 0u;
  v48 = 1;
LABEL_38:
  [v47 v42[218]];
  if ((v45 | v48))
  {
    v55.i32[3] = 0;
    v73 = v55;
  }

  else
  {
    v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), vnegq_f32(v69)), v72, vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL));
    v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
    v58 = vmulq_f32(v56, v56);
    *&v59 = v58.f32[1] + (v58.f32[2] + v58.f32[0]);
    *v58.f32 = vrsqrte_f32(v59);
    *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32)));
    v73 = vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32))).f32[0]);
  }

  v60 = v73.i64[0];
  v61 = vmulq_f32(v70, v73);
  if ((v61.f32[2] + vaddv_f32(*v61.f32)) < 0.0)
  {
    return vsubq_f32(0, v73).u64[0];
  }

  return v60;
}

uint64_t sub_2583B7BA8(Swift::OpaquePointer a1, ARFrame a2)
{
  v3 = v2;
  swift_beginAccess();
  os_unfair_lock_lock((v3 + 200));
  swift_endAccess();
  result = swift_beginAccess();
  if (*(v3 + 192))
  {

    v7 = ADProcessor.worldPoints(screenPoints:frame:)(a1, a2);

    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 56);
        v10 = MEMORY[0x277D84F90];
        do
        {
          if ((*v9 & 1) == 0)
          {
            v12 = *(v9 - 3);
            v13 = *(v9 - 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_25839D2FC(0, *(v10 + 2) + 1, 1, v10);
            }

            v15 = *(v10 + 2);
            v14 = *(v10 + 3);
            if (v15 >= v14 >> 1)
            {
              v10 = sub_25839D2FC((v14 > 1), v15 + 1, 1, v10);
            }

            *(v10 + 2) = v15 + 1;
            v11 = &v10[16 * v15];
            *(v11 + 4) = v12;
            *(v11 + 5) = v13;
          }

          v9 += 32;
          --v8;
        }

        while (v8);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      swift_beginAccess();
      os_unfair_lock_unlock((v3 + 200));
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      os_unfair_lock_unlock((v3 + 200));
      swift_endAccess();
      return 0;
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2583B7D60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_258392174(0, v1, 0);
    v2 = v14;
    v4 = a1 + 64;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928988);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928990);
      swift_dynamicCast();
      v5 = v11;
      v6 = v12;
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_258392174((v7 > 1), v8 + 1, 1);
        v6 = v12;
        v5 = v11;
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 48 * v8;
      *(v9 + 32) = v5;
      *(v9 + 48) = v6;
      *(v9 + 64) = v13;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::OpaquePointer_optional __swiftcall DepthProcessor.getJasperPointsPosition(requestedMinConfidence:currentFrame:)(Swift::Float requestedMinConfidence, ARFrame currentFrame)
{
  v3 = v2;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + 200));
  swift_endAccess();
  v5 = *(v2 + 104);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_258428C30();

  v8 = *(v3 + 104);
  if (v8)
  {
    v9 = [v8 depthPointCloud];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 confidences];

      if (v11)
      {
        swift_beginAccess();
        if ((*(v3 + 176) & 1) == 0)
        {
          v46 = *(v3 + 112);
          v45 = *(v3 + 128);
          v44 = *(v3 + 144);
          v43 = *(v3 + 160);
          swift_beginAccess();
          v15 = *(v3 + 88);
          v47 = MEMORY[0x277D84F90];
          if (v15 >> 62)
          {
            goto LABEL_49;
          }

          for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258428F10())
          {

            if (!i)
            {
              break;
            }

            v39 = v3;
            v41 = v7;
            v17 = 0;
            v3 = v15 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v18 = MEMORY[0x259C7E900](v17, v15);
              }

              else
              {
                if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v18 = *&v15[2 * v17 + 8];
              }

              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v11[*&v18[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_index]] < requestedMinConfidence)
              {
              }

              else
              {
                sub_258429030();
                v7 = i;
                sub_258429070();
                sub_258429080();
                sub_258429040();
              }

              ++v17;
              if (v19 == i)
              {
                v20 = v47;
                v7 = v41;
                v3 = v39;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            ;
          }

          v20 = MEMORY[0x277D84F90];
LABEL_24:

          if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
          {
            v21 = sub_258428F10();
            if (v21)
            {
LABEL_27:
              v11 = 0;
              v22 = v7 + 32;
              v13 = MEMORY[0x277D84F90];
              do
              {
                v15 = v11;
                while (1)
                {
                  if ((v20 & 0xC000000000000001) != 0)
                  {
                    v23 = MEMORY[0x259C7E900](v15, v20);
                    v11 = (v15 + 1);
                    if (__OFADD__(v15, 1))
                    {
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                    if (v15 >= *(v20 + 16))
                    {
                      goto LABEL_48;
                    }

                    v23 = *(v20 + 8 * v15 + 32);
                    v11 = (v15 + 1);
                    if (__OFADD__(v15, 1))
                    {
                      goto LABEL_47;
                    }
                  }

                  v24 = *&v23[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_index];
                  if ((v24 & 0x8000000000000000) == 0 && v24 < *(v7 + 16))
                  {
                    break;
                  }

                  v15 = (v15 + 1);
                  if (v11 == v21)
                  {
                    goto LABEL_52;
                  }
                }

                v42 = v22;
                v40 = *(v22 + 16 * v24);
                v25 = v23;
                DepthProcessor.transformer.getter();
                DepthTransformer.jasperToARKitCamera.getter();
                v35 = v26;
                v36 = v27;
                v37 = v29;
                v38 = v28;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v13 = sub_25839D2FC(0, *(v13 + 2) + 1, 1, v13);
                }

                v32 = *(v13 + 2);
                v31 = *(v13 + 3);
                if (v32 >= v31 >> 1)
                {
                  v13 = sub_25839D2FC((v31 > 1), v32 + 1, 1, v13);
                }

                v33 = vaddq_f32(v37, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v35, 0.001 * v40.f32[0]), v36, vmuls_lane_f32(0.001, *v40.f32, 1)), v38, vmuls_lane_f32(0.001, v40, 2)));
                v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, v33.f32[0]), v45, *v33.f32, 1), v44, v33, 2), v43, v33, 3);
                v34.i64[0] = vdivq_f32(v34, vdupq_laneq_s32(v34, 3)).u64[0];
                v34.f32[2] = v34.f32[2] / v34.f32[3];
                v34.i32[3] = 0;
                *(v13 + 2) = v32 + 1;
                *&v13[16 * v32 + 32] = v34;
                v22 = v42;
              }

              while (v11 != v21);
              goto LABEL_52;
            }
          }

          else
          {
            v21 = *(v20 + 16);
            if (v21)
            {
              goto LABEL_27;
            }
          }

          v13 = MEMORY[0x277D84F90];
LABEL_52:

          swift_beginAccess();
          os_unfair_lock_unlock((v3 + 200));
          swift_endAccess();
          goto LABEL_8;
        }
      }
    }
  }

LABEL_7:
  swift_beginAccess();
  os_unfair_lock_unlock((v3 + 200));
  swift_endAccess();
  v13 = 0;
LABEL_8:
  v14 = v13;
  result.value._rawValue = v14;
  result.is_nil = v12;
  return result;
}

uint64_t sub_2583B8370(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  os_unfair_lock_lock((v1 + 200));
  swift_endAccess();
  v4 = [a1 capturedPointCloudData];
  if (!v4)
  {
    swift_beginAccess();
    os_unfair_lock_unlock((v1 + 200));
    return swift_endAccess();
  }

  v5 = *(v1 + 104);
  *(v2 + 104) = v4;
  v6 = v4;

  v7 = DepthProcessor.transformer.getter();
  v8 = [a1 camera];
  [v8 viewMatrixForOrientation_];
  v18 = __invert_f4(v17);
  v15 = v18.columns[1];
  v16 = v18.columns[0];
  v13 = v18.columns[3];
  v14 = v18.columns[2];

  swift_beginAccess();
  *(v2 + 112) = v16;
  *(v2 + 128) = v15;
  *(v2 + 144) = v14;
  *(v2 + 160) = v13;
  *(v2 + 176) = 0;
  swift_beginAccess();
  if (!*(v2 + 96))
  {
    v10 = [a1 worldTrackingState];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 vioTrackingState];

      if (!v12)
      {
        sub_2583B8568(a1);
      }
    }
  }

  result = swift_beginAccess();
  if (*(v2 + 192))
  {

    ADProcessor.didUpdate(frame:)(a1);

    swift_beginAccess();
    os_unfair_lock_unlock((v2 + 200));
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_2583B8568(void *a1)
{
  v2 = v1;
  v3 = [a1 capturedPointCloudData];
  if (v3)
  {
    v21 = v3;
    v4 = [v3 depthPointCloud];
    if (v4 && (v5 = v4, v6 = [v4 cameraPixels], v5, v6))
    {
      v7 = *(sub_258428C30() + 16);

      if (v7)
      {
        v8 = 0;
        v9 = (v6 + 8);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;
          DepthProcessor.transformer.getter();
          Transformer.cameraToView.getter(v24);
          v12 = v25;
          v13 = v26;

          *&v23.c = v24[1];
          *&v23.a = v24[0];
          v23.tx = v12;
          v23.ty = v13;
          v28.x = v10;
          v28.y = v11;
          v14 = CGPointApplyAffineTransform(v28, &v23);
          v15 = type metadata accessor for DepthProcessor.JasperPoint();
          v16 = objc_allocWithZone(v15);
          *&v16[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_index] = v8;
          *&v16[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_screenPoint] = v14;
          v17 = &v16[OBJC_IVAR____TtCC17MeasureFoundation14DepthProcessorP33_FE45F1BA9093FB9DF0FBB450DBB5E7DB11JasperPoint_cameraPixel];
          *v17 = v10;
          v17[1] = v11;
          v22.receiver = v16;
          v22.super_class = v15;
          v18 = objc_msgSendSuper2(&v22, sel_init);
          v19 = sub_2583B7048();

          swift_beginAccess();
          v20 = v18;
          MEMORY[0x259C7E150]();
          if (*((*(v2 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2584288B0();
          }

          ++v8;
          sub_258428900();
          swift_endAccess();

          v9 += 2;
        }

        while (v7 != v8);
      }

      swift_beginAccess();
      *(v2 + 96) = v7;
    }

    else
    {
    }
  }
}