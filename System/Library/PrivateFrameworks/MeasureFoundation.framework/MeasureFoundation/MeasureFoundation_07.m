uint64_t sub_2583EB8C4(uint64_t result)
{
  if (result >= 0xDu)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

unint64_t sub_2583EB8DC()
{
  result = qword_27F928EA0;
  if (!qword_27F928EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928EA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentationResult.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentationResult.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2583EBAA4()
{
  result = qword_27F928EA8;
  if (!qword_27F928EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928EA8);
  }

  return result;
}

uint64_t ADProcessor.transformer.getter()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
LABEL_5:

    return v1;
  }

  v2 = v0;
  v3 = *(v0 + 272);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  v6 = [v5 currentFrame];

  if (v6)
  {
    v7 = [v6 camera];

    v8 = *(v2 + 280);
    v9 = ADProcessor.adConfig.getter();
    type metadata accessor for ADTransformer();
    swift_allocObject();
    v1 = sub_2583811FC(v7, v8, v9);

    *(v2 + 56) = v1;

    goto LABEL_5;
  }

  result = sub_258429100();
  __break(1u);
  return result;
}

void ADProcessor.outputConfidenceTexture.getter()
{
  if (*(v0 + 104))
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 288);
  ADProcessor.adConfig.getter();

  v2 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v2 setTextureType_];
  [v2 setPixelFormat_];
  [v2 setWidth_];
  [v2 setHeight_];
  [v2 setUsage_];
  [v2 setSampleCount_];
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v6 = (inited + 32);
  v7 = MEMORY[0x277CD2A28];
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *v7;
  *(inited + 40) = 256;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CD2968];
  *(inited + 56) = 192;
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v10;
  if ((AlignedBytesPerRow * 192) >> 64 != (192 * AlignedBytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277CD2960];
  *(inited + 88) = 192 * AlignedBytesPerRow;
  *(inited + 96) = v11;
  *(inited + 104) = 1;
  v12 = inited;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  sub_2583890FC(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v6 = sub_258428500();

  v18 = IOSurfaceCreate(v6);
  if (!v18)
  {
LABEL_8:

    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v1 newTextureWithDescriptor:v2 iosurface:v18 plane:0];

  if (v20)
  {
    *(v0 + 104) = v20;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain();
    return;
  }

LABEL_9:
  __break(1u);
}

void ADProcessor.outputDepthTexture.getter()
{
  if (*(v0 + 96))
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 288);
  ADProcessor.adConfig.getter();

  v2 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v2 setTextureType_];
  [v2 setPixelFormat_];
  [v2 setWidth_];
  [v2 setHeight_];
  [v2 setUsage_];
  [v2 setSampleCount_];
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v6 = (inited + 32);
  v7 = MEMORY[0x277CD2A28];
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *v7;
  *(inited + 40) = 256;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CD2968];
  *(inited + 56) = 192;
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v10;
  if ((AlignedBytesPerRow * 192) >> 64 != (192 * AlignedBytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277CD2960];
  *(inited + 88) = 192 * AlignedBytesPerRow;
  *(inited + 96) = v11;
  *(inited + 104) = 4;
  v12 = inited;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  sub_2583890FC(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v6 = sub_258428500();

  v18 = IOSurfaceCreate(v6);
  if (!v18)
  {
LABEL_8:

    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v1 newTextureWithDescriptor:v2 iosurface:v18 plane:0];

  if (v20)
  {
    *(v0 + 96) = v20;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain();
    return;
  }

LABEL_9:
  __break(1u);
}

void ADProcessor.outputPersonTexture.getter()
{
  if (*(v0 + 112))
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 288);
  ADProcessor.adConfig.getter();

  v2 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v2 setTextureType_];
  [v2 setPixelFormat_];
  [v2 setWidth_];
  [v2 setHeight_];
  [v2 setUsage_];
  [v2 setSampleCount_];
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v6 = (inited + 32);
  v7 = MEMORY[0x277CD2A28];
  *(inited + 16) = xmmword_25842CDA0;
  v8 = *v7;
  *(inited + 40) = 256;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CD2968];
  *(inited + 56) = 192;
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v10;
  if ((AlignedBytesPerRow * 192) >> 64 != (192 * AlignedBytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *MEMORY[0x277CD2960];
  *(inited + 88) = 192 * AlignedBytesPerRow;
  *(inited + 96) = v11;
  *(inited + 104) = 1;
  v12 = inited;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  sub_2583890FC(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v6 = sub_258428500();

  v18 = IOSurfaceCreate(v6);
  if (!v18)
  {
LABEL_8:

    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v1 newTextureWithDescriptor:v2 iosurface:v18 plane:0];

  if (v20)
  {
    *(v0 + 112) = v20;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain();
    return;
  }

LABEL_9:
  __break(1u);
}

void ADProcessor.capturedTexture.getter()
{
  v1 = *(v0 + 80);
  if (v1 != 1)
  {
LABEL_14:
    sub_2583AE628(v1);
    return;
  }

  v2 = v0;
  v3 = *(v0 + 288);
  ADProcessor.transformer.getter();
  v4 = ADTransformer.cameraCropRect.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  Width = CGRectGetWidth(v46);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = ADTransformer.cameraCropRect.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v47.origin.x = v12;
  v47.origin.y = v14;
  v47.size.width = v16;
  v47.size.height = v18;
  Height = CGRectGetHeight(v47);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = Width;
  v21 = Height;
  v22 = sub_2583ECF60();
  v23 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v23 setTextureType_];
  [v23 setPixelFormat_];
  [v23 setWidth_];
  [v23 setHeight_];
  [v23 setUsage_];
  [v23 setSampleCount_];
  v24 = bytesPerPixel(of:)(v22);
  if ((v20 * v24) >> 64 != (v20 * v24) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = v3;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CDA0;
  v27 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v28 = *MEMORY[0x277CD2A28];
  v29 = MEMORY[0x277CD2968];
  *(inited + 40) = v20;
  *(inited + 48) = v28;
  v30 = *v29;
  *(inited + 56) = v21;
  *(inited + 64) = v30;
  v31 = *MEMORY[0x277CD2948];
  *(inited + 72) = AlignedBytesPerRow;
  *(inited + 80) = v31;
  v32 = AlignedBytesPerRow * v21;
  if ((AlignedBytesPerRow * v21) >> 64 == (AlignedBytesPerRow * v21) >> 63)
  {
    v33 = *MEMORY[0x277CD2960];
    *(inited + 88) = v32;
    *(inited + 96) = v33;
    *(inited + 104) = v24;
    v34 = inited;
    v35 = v27;
    v36 = v28;
    v37 = v30;
    v38 = v31;
    v39 = v33;
    sub_2583890FC(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    sub_2583891E8();
    v40 = sub_258428500();

    v41 = IOSurfaceCreate(v40);
    if (v41)
    {
      v42 = v41;
      v43 = [v45 newTextureWithDescriptor:v23 iosurface:v41 plane:0];
    }

    else
    {

      v43 = 0;
    }

    v44 = *(v2 + 80);
    *(v2 + 80) = v43;
    swift_unknownObjectRetain();
    sub_2583AE5F4(v44);
    goto LABEL_14;
  }

LABEL_22:
  __break(1u);
}

id ADProcessor.__allocating_init(sceneView:orientation:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_2583EDE10(a1, a2, a3);

  return v6;
}

Swift::OpaquePointer_optional __swiftcall ADProcessor.worldPoints(screenPoints:frame:)(Swift::OpaquePointer screenPoints, ARFrame frame)
{
  swift_beginAccess();
  os_unfair_lock_lock(v2 + 76);
  swift_endAccess();
  rawValue = screenPoints._rawValue;
  v4 = sub_2583EDBC0(screenPoints._rawValue);
  if (!v4)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v2 + 76);
    swift_endAccess();
    v11 = 0;
LABEL_17:
    v7 = v11;
    goto LABEL_21;
  }

  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {

    v11 = MEMORY[0x277D84F90];
LABEL_16:
    swift_beginAccess();
    os_unfair_lock_unlock(v2 + 76);
    swift_endAccess();
    goto LABEL_17;
  }

  v51 = MEMORY[0x277D84F90];
  v36 = v6;
  v7 = sub_2583921D4(0, v6, 0);
  v9 = v36;
  v10 = 0;
  v11 = v51;
  v12 = *(v5 + 16);
  v13 = (v5 + 48);
  v14 = (screenPoints._rawValue + 40);
  v34 = v12;
  while (v12 != v10)
  {
    if (v10 >= *(v5 + 16))
    {
      goto LABEL_19;
    }

    v15 = *v13;
    if (*v13)
    {
      v16 = 0;
      v17 = 0uLL;
    }

    else
    {
      v18 = *(v13 - 2);
      v16 = *(v13 - 1);
      sub_2583EF3B4(frame.super.isa, v52);
      v7 = ADProcessor.transformer.getter();
      if (v10 >= rawValue[2])
      {
        goto LABEL_20;
      }

      v19 = *(v14 - 1);
      v20 = *v14;
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      v44 = v58;
      v42 = v57;
      v43 = v59;
      Transformer.viewToCamera.getter(&v60);
      v50 = v60;
      v62.x = v19;
      v62.y = v20;
      v21 = CGPointApplyAffineTransform(v62, &v50);
      x = v21.x;
      y = v21.y;
      v24 = vaddq_f32(v43, vmlaq_n_f32(vmulq_n_f32(v42, x), v44, y));
      v42.f32[0] = *&v18 * v24.f32[0];
      v43.i32[0] = vmuls_lane_f32(*&v18, *v24.f32, 1);
      v44.i32[0] = vmuls_lane_f32(*&v18, v24, 2);
      DepthTransformer.jasperToARKitCamera.getter();
      v38 = v25;
      v39 = v26;
      v40 = v28;
      v41 = v27;

      v29 = vaddq_f32(v40, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v38, v42.f32[0]), v39, v43.f32[0]), v41, v44.f32[0]));
      v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, v29.f32[0]), v46, *v29.f32, 1), v47, v29, 2), v48, v29, 3);
      *&v17 = vdivq_f32(v30, vdupq_laneq_s32(v30, 3)).u64[0];
      *(&v17 + 2) = v30.f32[2] / v30.f32[3];
      HIDWORD(v17) = 0;
      v9 = v36;
      v12 = v34;
    }

    v51 = v11;
    v32 = v11[2];
    v31 = v11[3];
    if (v32 >= v31 >> 1)
    {
      v49 = v17;
      v7 = sub_2583921D4((v31 > 1), v32 + 1, 1);
      v17 = v49;
      v12 = v34;
      v9 = v36;
      v11 = v51;
    }

    v11[2] = v32 + 1;
    v33 = &v11[4 * v32];
    *(v33 + 2) = v17;
    ++v10;
    v33[6] = v16;
    *(v33 + 56) = v15;
    v13 += 24;
    v14 += 2;
    if (v9 == v10)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result.value._rawValue = v7;
  result.is_nil = v8;
  return result;
}

Swift::Void __swiftcall ADProcessor.didUpdate(frame:)(ARFrame frame)
{
  kdebug_trace();
  swift_beginAccess();
  os_unfair_lock_lock((v1 + 304));
  swift_endAccess();
  v3 = [(objc_class *)frame.super.isa camera];
  [v3 viewMatrixForOrientation_];
  v26 = __invert_f4(v25);
  v23 = v26.columns[1];
  v24 = v26.columns[0];
  v21 = v26.columns[3];
  v22 = v26.columns[2];

  swift_beginAccess();
  *(v1 + 176) = v24;
  *(v1 + 192) = v23;
  *(v1 + 208) = v22;
  *(v1 + 224) = v21;
  *(v1 + 240) = 0;
  swift_beginAccess();
  if (*(v1 + 242) == 1)
  {
    sub_2583ED574(frame.super.isa);
  }

  v4 = [(objc_class *)frame.super.isa sceneDepth:*&v21];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 depthMap];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 120);
  *(v1 + 120) = v6;

  v8 = [(objc_class *)frame.super.isa sceneDepth];
  v9 = [v8 confidenceMap];

  v10 = *(v1 + 128);
  *(v1 + 128) = v9;

  v11 = [(objc_class *)frame.super.isa segmentationBuffer];
  v12 = *(v1 + 136);
  *(v1 + 136) = v11;

  v13 = *(v1 + 120);
  if (v13 && (v14 = *(v1 + 128)) != 0)
  {
    v15 = v14;
    v16 = v13;
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    CVPixelBufferLockBaseAddress(v15, 1uLL);
    *(v1 + 144) = CVPixelBufferGetBaseAddress(v16);
    *(v1 + 152) = CVPixelBufferGetBaseAddress(v15);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    CVPixelBufferUnlockBaseAddress(v15, 1uLL);
  }

  else
  {
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
  }

  v17 = [objc_opt_self() standardUserDefaults];
  v18 = [v17 kADShowPerson];

  if (v18 && (v19 = *(v1 + 136)) != 0)
  {
    v20 = v19;
    CVPixelBufferLockBaseAddress(v20, 1uLL);
    *(v1 + 160) = CVPixelBufferGetBaseAddress(v20);
    CVPixelBufferUnlockBaseAddress(v20, 1uLL);
  }

  else
  {
    *(v1 + 160) = 0;
  }

  sub_2583EE060();

  swift_beginAccess();
  os_unfair_lock_unlock((v1 + 304));
  swift_endAccess();
  kdebug_trace();
}

uint64_t ADProcessor.adConfig.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(ObjectType, v2);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    type metadata accessor for ARKitADConfiguration();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_258430150;
    *(v1 + 32) = v4;
    *(v1 + 40) = v6;
    *(v1 + 48) = v8;
    *(v1 + 56) = v10;
    *(v1 + 64) = 1065353216;
    *(v1 + 68) = 1;
    *(v1 + 72) = xmmword_25842CAF0;
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_2583ECF60()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  result = 80;
  *(v0 + 24) = 80;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_2583ECF84()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = 1111970369;
  strcpy((v0 + 36), "ARGB");
  return result;
}

__CVMetalTextureCache *ADProcessor.textureCache.getter()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
LABEL_5:
    v6 = v1;
    return v2;
  }

  v7[0] = 0;
  result = CVMetalTextureCacheCreate(0, 0, *(v0 + 288), 0, v7);
  v4 = v7[0];
  if (v7[0])
  {
    v5 = *(v0 + 64);
    *(v0 + 64) = v7[0];
    v2 = v4;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_2583ED05C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for KernelYCbCrToRGB()) initWithDevice_];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void ADProcessor.capturedPixelBuffer.getter()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  if (v1 != 1)
  {
    goto LABEL_5;
  }

  ADProcessor.capturedTexture.getter();
  if (v2)
  {
    v3 = [v2 width];
    swift_unknownObjectRelease();
    v4 = *(v0 + 80);
    if (v4)
    {
      v5 = [v4 height];
      v6 = sub_2583ECF84();
      v10[0] = 0;
      CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v5, v6, 0, v10);
      v7 = v10[0];
      v8 = *(v0 + 88);
      *(v0 + 88) = v10[0];
      v9 = v7;
      sub_2583A620C(v8);
LABEL_5:
      sub_2583A621C(v1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 ADProcessor.cameraToWorld.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *(a1 + 32) = *(v1 + 208);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 240);
  result = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = result;
  return result;
}

uint64_t ADProcessor.isGuidedFilterEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 242) = a1;
  return result;
}

uint64_t ADProcessor.isNoiseReductionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 243) = a1;
  return result;
}

id sub_2583ED3A8()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v2 = ADProcessor.transformer.getter();
    type metadata accessor for ADGuidedFilter();
    swift_allocObject();
    v1 = sub_2583A622C(v2);

    *(v0 + 248) = v1;
  }

  return v1;
}

id ADProcessor.init(sceneView:orientation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2583EDE10(a1, a2, a3);

  return v4;
}

uint64_t ADProcessor.deinit()
{

  sub_2583AE5F4(*(v0 + 80));
  sub_2583A620C(*(v0 + 88));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ADProcessor.__deallocating_deinit()
{
  ADProcessor.deinit();

  return swift_deallocClassInstance();
}

int64_t sub_2583ED574(void *a1)
{
  if ((sub_2583ED6D0(a1) & 1) == 0)
  {
    return 0;
  }

  ADProcessor.capturedTexture.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  ADProcessor.capturedPixelBuffer.getter();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  v6 = [v3 iosurface];
  if (!v6)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v7 = v6;
  if (CVPixelBufferLockBaseAddress(v5, 1uLL))
  {
    swift_unknownObjectRelease();

LABEL_9:
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v5);
  if (!BaseAddress)
  {
    CVPixelBufferUnlockBaseAddress(v5, 1uLL);
    swift_unknownObjectRelease();

    return BaseAddress;
  }

  v10 = IOSurfaceGetBaseAddress(v7);
  BytesPerRow = IOSurfaceGetBytesPerRow(v7);
  result = IOSurfaceGetHeight(v7);
  if ((BytesPerRow * result) >> 64 == (BytesPerRow * result) >> 63)
  {
    memcpy(BaseAddress, v10, BytesPerRow * result);
    BaseAddress = 1;
    CVPixelBufferUnlockBaseAddress(v5, 1uLL);
    swift_unknownObjectRelease();

    *(v1 + 241) = 1;
    return BaseAddress;
  }

  __break(1u);
  return result;
}

uint64_t sub_2583ED6D0(void *a1)
{
  image[3] = *MEMORY[0x277D85DE8];
  v2 = [a1 capturedImage];
  if (CVPixelBufferGetPlaneCount(v2) < 2)
  {
    goto LABEL_2;
  }

  v3 = ADProcessor.textureCache.getter();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v2, 0);
  image[0] = 0;
  result = CVMetalTextureCacheCreateTextureFromImage(0, v3, v2, 0, MTLPixelFormatR8Unorm, WidthOfPlane, HeightOfPlane, 0, image);
  v7 = image[0];
  if (result)
  {

    return 0;
  }

  if (image[0])
  {
    v9 = CVMetalTextureGetTexture(image[0]);
    v10 = image[0];

    if (!v9)
    {
LABEL_2:

      return 0;
    }

    v11 = *(v1 + 64);
    v12 = CVPixelBufferGetWidthOfPlane(v2, 1uLL);
    v13 = CVPixelBufferGetHeightOfPlane(v2, 1uLL);
    image[0] = 0;
    result = CVMetalTextureCacheCreateTextureFromImage(0, v11, v2, 0, MTLPixelFormatRG8Unorm, v12, v13, 1uLL, image);
    v14 = image[0];
    if (result)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    if (image[0])
    {
      v15 = CVMetalTextureGetTexture(image[0]);
      v16 = image[0];

      if (v15)
      {
        v17 = [*(v1 + 296) commandBuffer];
        if (v17)
        {
          v18 = v17;
          ADProcessor.capturedTexture.getter();
          if (v19)
          {
            v20 = v19;
            v21 = sub_2583ED05C();
            ADProcessor.transformer.getter();
            v22 = ADTransformer.cameraCropRect.getter();
            v44 = v23;
            v45 = v22;
            v25 = v24;
            v27 = v26;

            v28 = [v18 computeCommandEncoder];
            if (v28)
            {
              v29 = v28;
              v43 = [v9 width] / 32;
              v42 = [v9 height] / 32;
              [v29 setComputePipelineState_];
              [v29 setTexture:v9 atIndex:0];
              v8 = 1;
              [v29 setTexture:v15 atIndex:1];
              [v29 setTexture:v20 atIndex:2];
              v30 = OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_roiBuffer;
              v31 = *&v21[OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_roiBuffer];
              v32 = [swift_unknownObjectRetain() contents];
              v33 = v31;
              v49.origin.y = v44;
              v49.origin.x = v45;
              v49.size.width = v25;
              v49.size.height = v27;
              Width = CGRectGetWidth(v49);
              v50.origin.y = v44;
              v50.origin.x = v45;
              v50.size.width = v25;
              v50.size.height = v27;
              Height = CGRectGetHeight(v50);
              v35.f64[0] = Width;
              v35.f64[1] = Height;
              v36.f64[0] = v45;
              v36.f64[1] = v44;
              *v32 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v35);
              [v29 setBuffer:*&v21[v30] offset:0 atIndex:0];
              v37 = OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_transformBuffer;
              v38 = *&v21[OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_transformBuffer];
              v39 = [swift_unknownObjectRetain() contents];
              v40 = v38;
              *v39 = xmmword_25842D360;
              v39[1] = xmmword_25842D350;
              v39[2] = xmmword_25842CBC0;
              [v29 setBuffer:*&v21[v37] offset:0 atIndex:1];
              image[0] = v43;
              image[1] = v42;
              image[2] = 1;
              v46 = vdupq_n_s64(0x20uLL);
              v47 = 1;
              [v29 dispatchThreadgroups:image threadsPerThreadgroup:&v46];
              [v29 endEncoding];

              swift_unknownObjectRelease();
              [v18 commit];
              [v18 waitUntilCompleted];
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              return 1;
            }

            return v8;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();
      goto LABEL_2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2583EDBC0(uint64_t a1)
{
  v22 = *(v1 + 144);
  if (!v22)
  {
    return 0;
  }

  v21 = *(v1 + 152);
  if (!v21)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v24 = MEMORY[0x277D84F90];
  sub_2583921B4(0, v2, 0);
  v5 = (a1 + 40);
  v3 = v24;
  while (1)
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    ADProcessor.transformer.getter();
    ADTransformer.viewToAD.getter(&v25);
    v23 = v25;
    v26.x = v6;
    v26.y = v7;
    v8 = CGPointApplyAffineTransform(v26, &v23);

    v10 = v8.x < 0.0;
    if (v8.x >= 256.0)
    {
      v10 = 1;
    }

    v11 = v8.y < 0.0;
    if (v8.y >= 192.0)
    {
      v11 = 1;
    }

    v12 = v10 || v11;
    if (v10 || v11)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_19;
    }

    v15 = round(v8.y) * 256.0;
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v15 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v15 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    v16 = round(v8.x);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    if (v16 <= -9.22337204e18)
    {
      goto LABEL_29;
    }

    if (v16 >= 9.22337204e18)
    {
      goto LABEL_30;
    }

    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_31;
    }

    v14 = *(v21 + v17);
    v13 = *(v22 + 4 * v17);
    ADProcessor.adConfig.getter();

LABEL_19:
    v24 = v3;
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2583921B4((v18 > 1), v19 + 1, 1);
      v3 = v24;
    }

    *(v3 + 16) = v19 + 1;
    v20 = v3 + 24 * v19;
    *(v20 + 32) = v13;
    *(v20 + 40) = v14;
    *(v20 + 48) = v12;
    v5 += 2;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_2583EDE10(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 36) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = vdupq_n_s64(1uLL);
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  LOBYTE(v13) = 1;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 1;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_258428630();
  v9 = [v7 BOOLForKey_];

  *(v3 + 242) = v9;
  *(v3 + 243) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  if (qword_27F9279B8 != -1)
  {
    swift_once();
  }

  v10 = static MetalBundle.device;
  *(v3 + 304) = 0;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;
  *(v3 + 280) = a3;
  *(v3 + 288) = v10;
  swift_unknownObjectRetain();
  v11 = a1;
  result = [v10 newCommandQueue];
  if (result)
  {
    *(v3 + 296) = result;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2583EDF80()
{
  v1 = v0;
  ADProcessor.capturedPixelBuffer.getter();
  v3 = v2;
  if (v2)
  {
    sub_2583ED3A8();
    ADProcessor.outputDepthTexture.getter();
    v5 = v4;
    ADProcessor.outputConfidenceTexture.getter();
    v7 = v6;
    swift_beginAccess();
    v8 = sub_2583A5CEC(v5, v7, v3, *(v0 + 243));

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v8)
    {
      v3 = 1;
      swift_beginAccess();
      *(v1 + 256) = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2583EE060()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = v1;
    ADProcessor.outputDepthTexture.getter();
    v4 = [v3 iosurface];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = v4;
      if (!CVPixelBufferLockBaseAddress(v2, 1uLL))
      {
        BaseAddress = CVPixelBufferGetBaseAddress(v2);
        if (BaseAddress)
        {
          v7 = BaseAddress;
          v8 = IOSurfaceGetBaseAddress(v5);
          BytesPerRow = IOSurfaceGetBytesPerRow(v5);
          Height = IOSurfaceGetHeight(v5);
          if ((BytesPerRow * Height) >> 64 != (BytesPerRow * Height) >> 63)
          {
            __break(1u);
            goto LABEL_33;
          }

          memcpy(v8, v7, BytesPerRow * Height);
        }

        CVPixelBufferUnlockBaseAddress(v2, 1uLL);
      }

      swift_beginAccess();
      if (*(v0 + 242) == 1)
      {
        sub_2583EDF80();
      }
    }
  }

  v11 = *(v0 + 128);
  if (v11)
  {
    v12 = v11;
    ADProcessor.outputConfidenceTexture.getter();
    v14 = [v13 iosurface];
    swift_unknownObjectRelease();
    if (!v14)
    {
LABEL_20:

      goto LABEL_21;
    }

    v15 = v14;
    if (CVPixelBufferLockBaseAddress(v12, 1uLL))
    {
LABEL_19:

      goto LABEL_20;
    }

    v16 = CVPixelBufferGetBaseAddress(v12);
    if (!v16)
    {
LABEL_18:
      CVPixelBufferUnlockBaseAddress(v12, 1uLL);
      goto LABEL_19;
    }

    v17 = v16;
    v18 = IOSurfaceGetBaseAddress(v15);
    v19 = IOSurfaceGetBytesPerRow(v15);
    v20 = IOSurfaceGetHeight(v15);
    if ((v19 * v20) >> 64 == (v19 * v20) >> 63)
    {
      memcpy(v18, v17, v19 * v20);
      goto LABEL_18;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_21:
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = [v21 kADShowPerson];

  if (v22)
  {
    v23 = *(v0 + 136);
    if (v23)
    {
      v24 = v23;
      ADProcessor.outputPersonTexture.getter();
      v26 = [v25 iosurface];
      swift_unknownObjectRelease();
      if (!v26)
      {
LABEL_30:

        return;
      }

      v27 = v26;
      if (CVPixelBufferLockBaseAddress(v24, 1uLL))
      {
LABEL_29:

        goto LABEL_30;
      }

      v28 = CVPixelBufferGetBaseAddress(v24);
      if (!v28)
      {
LABEL_28:
        CVPixelBufferUnlockBaseAddress(v24, 1uLL);
        goto LABEL_29;
      }

      v29 = v28;
      v30 = IOSurfaceGetBaseAddress(v27);
      v31 = IOSurfaceGetBytesPerRow(v27);
      v32 = IOSurfaceGetHeight(v27);
      if ((v31 * v32) >> 64 == (v31 * v32) >> 63)
      {
        memcpy(v30, v29, v31 * v32);
        goto LABEL_28;
      }

LABEL_34:
      __break(1u);
    }
  }
}

uint64_t sub_2583EE328@<X0>(uint64_t *a1@<X8>)
{
  result = ADProcessor.adConfig.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2583EE354(void *a1, uint64_t a2)
{
  *(*a2 + 48) = *a1;
}

uint64_t sub_2583EE398@<X0>(uint64_t *a1@<X8>)
{
  result = ADProcessor.transformer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2583EE3C4(void *a1, uint64_t a2)
{
  *(*a2 + 56) = *a1;
}

__CVMetalTextureCache *sub_2583EE408@<X0>(__CVMetalTextureCache **a1@<X8>)
{
  result = ADProcessor.textureCache.getter();
  *a1 = result;
  return result;
}

void sub_2583EE434(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
  v3 = v2;
}

uint64_t sub_2583EE4A8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  *(*a2 + 80) = *a1;
  swift_unknownObjectRetain();

  return sub_2583AE5F4(v2);
}

void sub_2583EE518(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 88);
  *(*a2 + 88) = *a1;
  v4 = v2;

  sub_2583A620C(v3);
}

uint64_t sub_2583EE588(void *a1, uint64_t a2)
{
  *(*a2 + 96) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_2583EE5F8(void *a1, uint64_t a2)
{
  *(*a2 + 104) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_2583EE668(void *a1, uint64_t a2)
{
  *(*a2 + 112) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

__n128 ComputedCameraProperties.cameraIntrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 384);
  v3 = *(v1 + 400);
  v4 = *(v1 + 416);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 ComputedCameraProperties.cameraIntrinsicsInversed.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 432);
  v3 = *(v1 + 448);
  v4 = *(v1 + 464);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 ComputedCameraProperties.init()@<Q0>(uint64_t a1@<X8>)
{
  result = *MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  v3 = *(MEMORY[0x277D860B8] + 32);
  v4 = *(MEMORY[0x277D860B8] + 48);
  v5 = *MEMORY[0x277D860B0];
  v6 = *(MEMORY[0x277D860B0] + 16);
  v7 = *(MEMORY[0x277D860B0] + 32);
  *a1 = 0;
  *(a1 + 16) = result;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 80) = result;
  *(a1 + 96) = v2;
  *(a1 + 112) = v3;
  *(a1 + 128) = v4;
  *(a1 + 144) = result;
  *(a1 + 160) = v2;
  *(a1 + 176) = v3;
  *(a1 + 192) = v4;
  *(a1 + 208) = result;
  *(a1 + 224) = v2;
  *(a1 + 240) = v3;
  *(a1 + 256) = v4;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = result;
  *(a1 + 320) = v2;
  *(a1 + 336) = v3;
  *(a1 + 352) = v4;
  *(a1 + 368) = 0;
  *(a1 + 384) = v5;
  *(a1 + 400) = v6;
  *(a1 + 416) = v7;
  *(a1 + 432) = v5;
  *(a1 + 448) = v6;
  *(a1 + 464) = v7;
  return result;
}

void *ComputedCameraProperties.init(camera:viewportSize:orientation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  sub_2583EF66C(a1, a2, v7, a4);

  return memcpy(a3, v7, 0x1E0uLL);
}

uint64_t static ComputedCameraProperties.shared.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_lock_lock(&unk_27F928EB0);
  swift_endAccess();
  if (qword_27F927AE8 != -1)
  {
    swift_once();
  }

  v2 = *&qword_27F928EC0;
  swift_beginAccess();
  v3 = off_27F928EB8;
  if (*(off_27F928EB8 + 2) && (v4 = sub_258384490(v2), (v5 & 1) != 0))
  {
    v6 = (v3[7] + 496 * v4);
    memcpy(v40, v6, sizeof(v40));
    memmove(__dst, v6, 0x1F0uLL);
    nullsub_1(__dst);
    sub_2583EFC4C(v40, __src);
    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    sub_2583AD008(__src);
  }

  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(&unk_27F928EB0);
  swift_endAccess();
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_2583AD050(__dst);
  if (result == 1)
  {
    v9 = *MEMORY[0x277D860B8];
    v10 = *(MEMORY[0x277D860B8] + 16);
    v11 = *(MEMORY[0x277D860B8] + 32);
    v12 = *(MEMORY[0x277D860B8] + 48);
    v13 = MEMORY[0x277D860B0];
    v14 = *MEMORY[0x277D860B0];
    v15 = *(MEMORY[0x277D860B0] + 16);
    v16 = *MEMORY[0x277D860B8];
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = *MEMORY[0x277D860B8];
    v21 = v10;
    v22 = v11;
    v23 = *(MEMORY[0x277D860B0] + 32);
    v24 = v12;
    v25 = *MEMORY[0x277D860B8];
    v26 = v10;
    v27 = v11;
    v28 = 0uLL;
    v29 = 0;
    v30 = v12;
    v31 = *MEMORY[0x277D860B8];
    v32 = v10;
    v33 = v11;
    v34 = v12;
    v35 = *MEMORY[0x277D860B0];
    v36 = v15;
    v37 = v23;
    v38 = 0;
    v39 = 0uLL;
  }

  else
  {
    result = sub_2583EFBE4(__src);
    v13 = *(&__dst[1] + 1);
    v29 = *&__dst[1];
    v9 = __dst[2];
    v10 = __dst[3];
    v11 = __dst[4];
    v12 = __dst[5];
    v16 = __dst[6];
    v17 = __dst[7];
    v18 = __dst[8];
    v19 = __dst[9];
    v20 = __dst[10];
    v21 = __dst[11];
    v22 = __dst[12];
    v24 = __dst[13];
    v25 = __dst[14];
    v26 = __dst[15];
    v27 = __dst[16];
    v30 = __dst[17];
    v28 = __dst[18];
    v39 = __dst[19];
    v31 = __dst[20];
    v32 = __dst[21];
    v33 = __dst[22];
    v34 = __dst[23];
    v8 = *(&__dst[24] + 1);
    v38 = *&__dst[24];
    v14 = __dst[25];
    v15 = __dst[26];
    v23 = __dst[27];
    v35 = __dst[28];
    v36 = __dst[29];
    v37 = __dst[30];
  }

  *a1 = v29;
  *(a1 + 8) = v13;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 80) = v16;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 144) = v20;
  *(a1 + 160) = v21;
  *(a1 + 176) = v22;
  *(a1 + 192) = v24;
  *(a1 + 208) = v25;
  *(a1 + 224) = v26;
  *(a1 + 240) = v27;
  *(a1 + 256) = v30;
  *(a1 + 272) = v28;
  *(a1 + 288) = v39;
  *(a1 + 304) = v31;
  *(a1 + 320) = v32;
  *(a1 + 336) = v33;
  *(a1 + 352) = v34;
  *(a1 + 368) = v38;
  *(a1 + 376) = v8;
  *(a1 + 384) = v14;
  *(a1 + 400) = v15;
  *(a1 + 416) = v23;
  *(a1 + 432) = v35;
  *(a1 + 448) = v36;
  *(a1 + 464) = v37;
  return result;
}

BOOL sub_2583EEB18(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s17MeasureFoundation24ComputedCameraPropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst);
}

uint64_t sub_2583EEB70(uint64_t a1)
{
  v2 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v22 = v4;
    v23 = v1;
    v21 = &v21;
    MEMORY[0x28223BE20](a1);
    v6 = &v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v24 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v4 = v12 | (v7 << 6);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_2583EEF54(v6, v22, v24, v2);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_2583EEF54(v6, v22, v24, v2);
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  sub_2583EEDCC(v18, v4, v2);
  v20 = v19;
  MEMORY[0x259C7FB80](v18, -1, -1);
  return v20;
}

void sub_2583EEDCC(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v17 = a1;
    v18 = 0;
    v6 = 0;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = v11 | (v6 << 6);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        *(v17 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v18++, 1))
        {
          __break(1u);
LABEL_18:
          sub_2583EEF54(v17, a2, v18, a3);

          return;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2583EEF54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928290);
  result = sub_2584291C0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      memcpy(__dst, (*(v4 + 56) + 496 * v16), 0x1F0uLL);
      result = sub_2584293B0();
      v18 = -1 << *(v9 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + 8 * v21) = v17;
      result = memcpy((*(v9 + 56) + 496 * v21), __dst, 0x1F0uLL);
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_2583EFC4C(__dst, v27);
        return v9;
      }

      result = sub_2583EFC4C(__dst, v27);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v12 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

BOOL _s17MeasureFoundation24ComputedCameraPropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = vceq_f32(*a1, *a2);
  if ((v2.i32[0] & v2.i32[1] & 1) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 32), *(a2 + 32)), vceqq_f32(*(a1 + 16), *(a2 + 16))), vandq_s8(vceqq_f32(*(a1 + 48), *(a2 + 48)), vceqq_f32(*(a1 + 64), *(a2 + 64))))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 96), *(a2 + 96)), vceqq_f32(*(a1 + 80), *(a2 + 80))), vandq_s8(vceqq_f32(*(a1 + 112), *(a2 + 112)), vceqq_f32(*(a1 + 128), *(a2 + 128))))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 160), *(a2 + 160)), vceqq_f32(*(a1 + 144), *(a2 + 144))), vandq_s8(vceqq_f32(*(a1 + 176), *(a2 + 176)), vceqq_f32(*(a1 + 192), *(a2 + 192))))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 224), *(a2 + 224)), vceqq_f32(*(a1 + 208), *(a2 + 208))), vandq_s8(vceqq_f32(*(a1 + 240), *(a2 + 240)), vceqq_f32(*(a1 + 256), *(a2 + 256))))) & 0x80000000) == 0)
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + 272), *(a2 + 272));
  if (result)
  {
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 320), *(a2 + 320)), vceqq_f32(*(a1 + 304), *(a2 + 304))), vandq_s8(vceqq_f32(*(a1 + 336), *(a2 + 336)), vceqq_f32(*(a1 + 352), *(a2 + 352))))) & 0x80000000) != 0 && *(a1 + 368) == *(a2 + 368) && *(a1 + 372) == *(a2 + 372) && (v6 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 400), *(a2 + 400)), vceqq_f32(*(a1 + 384), *(a2 + 384))), vceqq_f32(*(a1 + 416), *(a2 + 416))), v6.i32[3] = v6.i32[2], (vminvq_u32(v6) & 0x80000000) != 0))
    {
      v7 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 448), *(a2 + 448)), vceqq_f32(*(a1 + 432), *(a2 + 432))), vceqq_f32(*(a1 + 464), *(a2 + 464)));
      v7.i32[3] = v7.i32[2];
      return vminvq_u32(v7) >> 31;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2583EF3B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  os_unfair_lock_lock(&unk_27F928EB0);
  swift_endAccess();
  if (qword_27F927AE8 != -1)
  {
    swift_once();
  }

  [a1 timestamp];
  v5 = v4;
  swift_beginAccess();
  v6 = off_27F928EB8;
  if (*(off_27F928EB8 + 2) && (v7 = sub_258384490(v5), (v8 & 1) != 0))
  {
    v9 = (v6[7] + 496 * v7);
    memcpy(v43, v9, sizeof(v43));
    memmove(__dst, v9, 0x1F0uLL);
    nullsub_1(__dst);
    sub_2583EFC4C(v43, __src);
    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    sub_2583AD008(__src);
  }

  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(&unk_27F928EB0);
  swift_endAccess();
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_2583AD050(__dst);
  if (result == 1)
  {
    v12 = *MEMORY[0x277D860B8];
    v13 = *(MEMORY[0x277D860B8] + 16);
    v14 = *(MEMORY[0x277D860B8] + 32);
    v15 = *(MEMORY[0x277D860B8] + 48);
    v16 = MEMORY[0x277D860B0];
    v17 = *MEMORY[0x277D860B0];
    v18 = *(MEMORY[0x277D860B0] + 16);
    v19 = *MEMORY[0x277D860B8];
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = *MEMORY[0x277D860B8];
    v24 = v13;
    v25 = v14;
    v26 = *(MEMORY[0x277D860B0] + 32);
    v27 = v15;
    v28 = *MEMORY[0x277D860B8];
    v29 = v13;
    v30 = v14;
    v31 = 0uLL;
    v32 = 0;
    v33 = v15;
    v34 = *MEMORY[0x277D860B8];
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = *MEMORY[0x277D860B0];
    v39 = v18;
    v40 = v26;
    v41 = 0;
    v42 = 0uLL;
  }

  else
  {
    result = sub_2583EFBE4(__src);
    v16 = *(&__dst[1] + 1);
    v32 = *&__dst[1];
    v12 = __dst[2];
    v13 = __dst[3];
    v14 = __dst[4];
    v15 = __dst[5];
    v19 = __dst[6];
    v20 = __dst[7];
    v21 = __dst[8];
    v22 = __dst[9];
    v23 = __dst[10];
    v24 = __dst[11];
    v25 = __dst[12];
    v27 = __dst[13];
    v28 = __dst[14];
    v29 = __dst[15];
    v30 = __dst[16];
    v33 = __dst[17];
    v31 = __dst[18];
    v42 = __dst[19];
    v34 = __dst[20];
    v35 = __dst[21];
    v36 = __dst[22];
    v37 = __dst[23];
    v11 = *(&__dst[24] + 1);
    v41 = *&__dst[24];
    v17 = __dst[25];
    v18 = __dst[26];
    v26 = __dst[27];
    v38 = __dst[28];
    v39 = __dst[29];
    v40 = __dst[30];
  }

  *a2 = v32;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  *(a2 + 80) = v19;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  *(a2 + 128) = v22;
  *(a2 + 144) = v23;
  *(a2 + 160) = v24;
  *(a2 + 176) = v25;
  *(a2 + 192) = v27;
  *(a2 + 208) = v28;
  *(a2 + 224) = v29;
  *(a2 + 240) = v30;
  *(a2 + 256) = v33;
  *(a2 + 272) = v31;
  *(a2 + 288) = v42;
  *(a2 + 304) = v34;
  *(a2 + 320) = v35;
  *(a2 + 336) = v36;
  *(a2 + 352) = v37;
  *(a2 + 368) = v41;
  *(a2 + 376) = v11;
  *(a2 + 384) = v17;
  *(a2 + 400) = v18;
  *(a2 + 416) = v26;
  *(a2 + 432) = v38;
  *(a2 + 448) = v39;
  *(a2 + 464) = v40;
  return result;
}

void sub_2583EF66C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *&a4;
  v8 = *(&a4 + 1);
  v9 = *(&a4 + 1);
  [a1 projectionMatrixForOrientation:a2 viewportSize:*&a4 zNear:*(&a4 + 1) zFar:{0.00100000005, 1000.0}];
  v28 = v10;
  v41 = v11;
  v30 = v12;
  v33 = v13;
  [a1 viewMatrixForOrientation_];
  v45 = v50.columns[1];
  v46 = v50.columns[0];
  v43 = v50.columns[3];
  v44 = v50.columns[2];
  v51 = __invert_f4(v50);
  v39 = v51.columns[1];
  v40 = v51.columns[0];
  v38 = v51.columns[2];
  v37 = v51.columns[3];
  v51.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v46.f32[0]), v41, *v46.f32, 1), v30, v46, 2), v33, v46, 3);
  v36 = v51.columns[0];
  v51.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v45.f32[0]), v41, *v45.f32, 1), v30, v45, 2), v33, v45, 3);
  v35 = v51.columns[1];
  v51.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v44.f32[0]), v41, *v44.f32, 1), v30, v44, 2), v33, v44, 3);
  v32 = v51.columns[2];
  v51.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v43.f32[0]), v41, *v43.f32, 1), v30, v43, 2), v33, v43, 3);
  v34 = v51.columns[3];
  v52 = __invert_f4(v51);
  v29 = v52.columns[1];
  v31 = v52.columns[0];
  v26 = v52.columns[3];
  v27 = v52.columns[2];
  [a1 transform];
  v24 = v15;
  v25 = v14;
  v22 = v17;
  v23 = v16;
  v18 = atanf(1.0 / v41.f32[1]);
  v19 = (v18 + v18) * 57.296;
  [a1 intrinsics];
  v42 = v48.columns[0];
  v20 = v48.columns[2];
  v21 = v48.columns[1];
  v49 = __invert_f3(v48);
  *a3 = a4;
  *(a3 + 16) = v46;
  *(a3 + 32) = v45;
  *(a3 + 48) = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = v40;
  *(a3 + 96) = v39;
  *(a3 + 112) = v38;
  *(a3 + 128) = v37;
  *(a3 + 144) = v36;
  *(a3 + 160) = v35;
  *(a3 + 176) = v32;
  *(a3 + 192) = v34;
  *(a3 + 208) = v31;
  *(a3 + 224) = v29;
  *(a3 + 240) = v27;
  *(a3 + 256) = v26;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = v7;
  *(a3 + 296) = v9;
  *(a3 + 304) = v25;
  *(a3 + 320) = v24;
  *(a3 + 336) = v23;
  *(a3 + 352) = v22;
  *(a3 + 368) = (v8 / *&a4) * v19;
  *(a3 + 372) = v19;
  *(a3 + 384) = v42;
  *(a3 + 400) = v21;
  *(a3 + 416) = v20;
  *(a3 + 432) = v49;
}

uint64_t _s17MeasureFoundation24ComputedCameraPropertiesV12updateShared_12viewportSizeySo7ARFrameC_s5SIMD2VySfGtFZ_0(void *a1, double a2)
{
  v4 = [a1 camera];
  sub_2583EF66C(v4, 1, &v74, a2);
  v5 = v74;
  v41 = v76;
  v42 = v75;
  v39 = v78;
  v40 = v77;
  v37 = v80;
  v38 = v79;
  v35 = v82;
  v36 = v81;
  v33 = v84;
  v34 = v83;
  v31 = v86;
  v32 = v85;
  v29 = v88;
  v30 = v87;
  v27 = v90;
  v28 = v89;
  v25 = v92;
  v26 = v91;
  v23 = v94;
  v24 = v93;
  v21 = v96;
  v22 = v95;
  v6 = v97;
  v19 = v99;
  v20 = v98;
  v17 = v101;
  v18 = v100;
  v15 = v103;
  v16 = v102;

  swift_beginAccess();
  os_unfair_lock_lock(&unk_27F928EB0);
  swift_endAccess();
  if (qword_27F927AE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v8 = sub_2583EEB70(v7);

  off_27F928EB8 = v8;

  [a1 timestamp];
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928EC8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v11 + 24) = sub_258428D80();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = off_27F928EB8;
  off_27F928EB8 = 0x8000000000000000;
  v43[0] = v11;
  v43[2] = v5;
  v44 = v42;
  v45 = v41;
  v46 = v40;
  v47 = v39;
  v48 = v38;
  v49 = v37;
  v50 = v36;
  v51 = v35;
  v52 = v34;
  v53 = v33;
  v54 = v32;
  v55 = v31;
  v56 = v30;
  v57 = v29;
  v58 = v28;
  v59 = v27;
  v60 = v26;
  v61 = v25;
  v62 = v24;
  v63 = v23;
  v64 = v22;
  v65 = v21;
  v66 = v6;
  v67 = v20;
  v68 = v19;
  v69 = v18;
  v70 = v17;
  v71 = v16;
  v72 = v15;
  sub_258385838(v43, isUniquelyReferenced_nonNull_native, v10);
  off_27F928EB8 = v73;
  swift_endAccess();
  [a1 timestamp];
  qword_27F928EC0 = v13;
  swift_beginAccess();
  os_unfair_lock_unlock(&unk_27F928EB0);
  return swift_endAccess();
}

uint64_t sub_2583EFBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2583EFC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2583EFCC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 480))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2583EFCE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 480) = v3;
  return result;
}

double SKNode.worldRotation.getter()
{
  [v0 zRotation];
  v2 = v1;
  v3 = [v0 parent];
  if (v3)
  {
    v4 = v3;
    do
    {
      [v4 zRotation];
      v2 = v2 + v5;
      v6 = [v4 parent];

      v4 = v6;
    }

    while (v6);
  }

  return v2;
}

uint64_t Lerpable.lerped<A>(newValue:t:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v24 = a6;
  v22 = a2;
  v12 = sub_258428DA0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return (*(v17 + 16))(a7, v7, a3);
  }

  else
  {
    (*(v17 + 32))(v19, v16, a3);
    (*(a5 + 8))(v19, v22, v23, v24, a3, a5);
    return (*(v17 + 8))(v19, a3);
  }
}

uint64_t Optional<A>.lerped<A>(newValue:t:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v20 = a2;
  v22 = a1;
  v23 = a4;
  v19 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  swift_getAssociatedConformanceWitness();
  sub_258429350();
  sub_2584292E0();
  sub_258429130();
  v16 = *(v10 + 8);
  v16(v13, a3);
  Lerpable.lerped<A>(newValue:t:)(v21, v15, *(v20 + 16), a3, v23, a5, v19);
  return (v16)(v15, a3);
}

uint64_t Optional<A>.lerped<A>(newValue:t:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v65 = a2;
  v66 = a5;
  v67 = a1;
  v69 = a7;
  v61 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v50 - v13;
  v62 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v50 - v17;
  v18 = *(a3 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v68 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  v70 = v18;
  v26 = *(v18 + 16);
  v63 = v8;
  v64 = v26;
  (v26)(v23, v8, a3);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v23, 1, v27) == 1)
  {
    v53 = a4;
    v54 = a6;
    v30 = *(v70 + 8);
    v70 += 8;
    v30(v23, a3);
    v31 = v30;
    v55 = *(v28 + 56);
    v56 = v28 + 56;
    v55(v25, 1, 1, v27);
    v32 = v68;
    (v64)(v68, v67, a3);
    v33 = v29(v32, 1, v27);
    v34 = v29;
    if (v33 == 1)
    {
      v30(v68, a3);
      v35 = 1;
      v36 = v69;
    }

    else
    {
      v51 = v30;
      v40 = v53;
      swift_getAssociatedConformanceWitness();
      v67 = a3;
      v64 = v25;
      v52 = v29;
      sub_258429350();
      v41 = v58;
      sub_2584292E0();
      v42 = v54;
      v43 = v60;
      sub_258429130();
      v44 = *(v62 + 8);
      v44(v41, v40);
      v65 = v28 + 48;
      v45 = v44;
      v46 = v68;
      v36 = v69;
      Lerpable.lerped<A>(newValue:t:)(v63, v43, v27, v40, v66, v42, v69);
      v25 = v64;
      v47 = v67;
      v48 = v40;
      v31 = v51;
      v45(v43, v48);
      a3 = v47;
      v49 = v46;
      v34 = v52;
      (*(v28 + 8))(v49, v27);
      v35 = 0;
    }

    v55(v36, v35, 1, v27);
    result = v34(v25, 1, v27);
    if (result != 1)
    {
      return v31(v25, a3);
    }
  }

  else
  {
    Lerpable.lerped<A>(newValue:t:)(v67, v65, v27, a4, v66, a6, v25);
    (*(v28 + 8))(v23, v27);
    v37 = *(v28 + 56);
    v37(v25, 0, 1, v27);
    v38 = v69;
    (*(v28 + 32))(v69, v25, v27);
    return (v37)(v38, 0, 1, v27);
  }

  return result;
}

float SmoothedValue.init<A>(value:alpha:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for SmoothedValue() + 36);
  v14 = *(a3 - 8);
  (*(v14 + 16))(a5 + v13, a1, a3);
  (*(v10 + 16))(v12, a2, a4);
  sub_258387AE4();
  sub_2584284F0();
  (*(v10 + 8))(a2, a4);
  (*(v14 + 8))(a1, a3);
  result = v17;
  *a5 = v17;
  return result;
}

uint64_t sub_2583F099C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 36);
  v15 = *v2;
  v10 = *(v8 + 24);
  v11 = *(v10 + 8);
  v12 = sub_258387AE4();
  v11(a1, &v15, MEMORY[0x277D83A90], v12, v4, v10);
  return (*(v5 + 40))(&v2[v9], v7, v4);
}

uint64_t OptionalSmoothedValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_258428DA0();
  v11[1] = *(a1 + 24);
  swift_getWitnessTable();
  v6 = type metadata accessor for SmoothedValue();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, v2 + *(a1 + 36), v6);
  return (*(*(v5 - 8) + 32))(a2, &v8[*(v6 + 36)], v5);
}

uint64_t OptionalSmoothedValue.init<A>(value:alpha:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v26 = a6;
  v27 = a3;
  v24 = a1;
  v25 = a2;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258428DA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v18 = type metadata accessor for OptionalSmoothedValue();
  *(a7 + *(v18 + 40)) = 0;
  (*(v15 + 16))(v17, a1, v14);
  v19 = v25;
  (*(v11 + 16))(v13, v25, a4);
  v20 = *(v18 + 36);
  v28 = a5;
  swift_getWitnessTable();
  v21 = SmoothedValue.init<A>(value:alpha:)(v17, v13, v14, a4, (a7 + v20));
  (*(v11 + 8))(v19, a4, v21);
  result = (*(v15 + 8))(v24, v14);
  *a7 = v27;
  return result;
}

uint64_t sub_2583F0E44(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = *(a2 + 16);
  v5 = sub_258428DA0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  v13 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 40);
  v18 = *(v2 + v17);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v17) = v20;
    (*(v6 + 16))(v12, v26, v5);
    if ((*(v13 + 48))(v12, 1, v4) == 1)
    {
      v21 = *(v6 + 8);
      result = v21(v12, v5);
      if (*(v2 + *(a2 + 40)) >= *v2)
      {
        v22 = v2 + *(a2 + 36);
        v28 = *(a2 + 24);
        swift_getWitnessTable();
        v23 = *(type metadata accessor for SmoothedValue() + 36);
        v21(&v22[v23], v5);
        return (*(v13 + 56))(&v22[v23], 1, 1, v4);
      }
    }

    else
    {
      (*(v13 + 32))(v16, v12, v4);
      *(v2 + v17) = 0;
      (*(v13 + 16))(v9, v16, v4);
      (*(v13 + 56))(v9, 0, 1, v4);
      v27 = *(a2 + 24);
      swift_getWitnessTable();
      v24 = type metadata accessor for SmoothedValue();
      sub_2583F099C(v9, v24);
      (*(v6 + 8))(v9, v5);
      return (*(v13 + 8))(v16, v4);
    }
  }

  return result;
}

uint64_t static OptionalSmoothedValue.makeNonSmoothedValue(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_258428DA0();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, a1);
  v13 = 0x3FF0000000000000;
  v10 = sub_2583F1318();
  return OptionalSmoothedValue.init<A>(value:alpha:timeout:)(v8, &v13, 0, MEMORY[0x277D839F8], a2, v10, a3);
}

unint64_t sub_2583F1318()
{
  result = qword_27F928ED0[0];
  if (!qword_27F928ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F928ED0);
  }

  return result;
}

uint64_t sub_2583F136C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2583F13EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_2583F154C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_2583F1770()
{
  sub_258428DA0();
  swift_getWitnessTable();
  result = type metadata accessor for SmoothedValue();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2583F1834(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  if (v5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 3;
  if (v6 >= a2)
  {
    goto LABEL_29;
  }

  v10 = ((v8 + *(*(*(a3 + 16) - 8) + 64) - (((-5 - v7) | v7) + ((-9 - v7) | v9))) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_29:
    if (v5 >= 2)
    {
      v19 = (*(v4 + 48))((v7 + ((a1 + v9 + 8) & ~v9) + 4) & ~v7);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_22:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v6 + (v12 | v17) + 1;
}

_DWORD *sub_2583F19BC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 80);
  v10 = 5;
  if (!v7)
  {
    v10 = 6;
  }

  v11 = ((v10 + *(v6 + 64) - (((-5 - v9) | v9) + ((-9 - v9) | v9 | 3))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 < a3)
  {
    v12 = a3 - v8;
    if (((v10 + *(v6 + 64) - (((-5 - v9) | v9) + ((-9 - v9) | v9 | 3))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v8)
  {
    if (((v10 + *(v6 + 64) - (((-5 - v9) | v9) + ((-9 - v9) | v9 | 3))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v10 + *(v6 + 64) - (((-5 - v9) | v9) + ((-9 - v9) | v9 | 3))) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = result;
      bzero(result, ((v10 + *(v6 + 64) - (((-5 - v9) | v9) + ((-9 - v9) | v9 | 3))) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v11) = v15;
      }

      else
      {
        *(result + v11) = v15;
      }
    }

    else if (v5)
    {
      *(result + v11) = v15;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(result + v11) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (v5 == 2)
  {
    *(result + v11) = 0;
    goto LABEL_35;
  }

  *(result + v11) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v7 >= 2)
  {
    v18 = *(v6 + 56);
    v19 = (v9 + ((result + (v9 | 3) + 8) & ~(v9 | 3)) + 4) & ~v9;
    v20 = a2 + 1;

    return v18(v19, v20);
  }

  return result;
}

uint64_t zip<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a3;
  v53 = a9;
  v48 = a1;
  v56 = a6;
  v14 = *(a6 - 8);
  v50 = a2;
  v51 = v14;
  v57 = a10;
  MEMORY[0x28223BE20](a1);
  v49 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = v40 - v17;
  v46 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  v45 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a8;
  v54 = swift_getAssociatedTypeWitness();
  v19 = MEMORY[0x28223BE20](v54);
  v44 = v40 - v20;
  v21 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[1] = a7;
  v40[0] = a4;
  v24 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v24);
  v41 = v40 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = AssociatedConformanceWitness;
  v27 = a5;
  v28 = v54;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v31 = swift_getAssociatedConformanceWitness();
  v58 = v24;
  v59 = v28;
  v60 = v30;
  v61 = AssociatedConformanceWitness;
  v62 = v29;
  v63 = v31;
  v32 = type metadata accessor for Zip3Generator();
  MEMORY[0x28223BE20](v32);
  v34 = v40 - v33;
  (*(v21 + 16))(v23, v48, v40[0]);
  v35 = v41;
  sub_258428790();
  (*(v46 + 16))(v45, v50, v27);
  v36 = v44;
  sub_258428790();
  (*(v51 + 16))(v49, v52, v56);
  v37 = v47;
  sub_258428790();
  Zip3Generator.init(_:_:_:)(v35, v36, v37, v24, v54, AssociatedTypeWitness, v34);
  WitnessTable = swift_getWitnessTable();
  return MEMORY[0x259C7E9F0](v34, v32, WitnessTable);
}

uint64_t Zip3Generator.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Zip3Generator();
  *(a7 + v14[19]) = 0;
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  (*(*(a5 - 8) + 32))(a7 + v14[17], a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + v14[18], a3, a6);
}

uint64_t Zip3Generator.next()@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = a1[4];
  v50 = a1[7];
  v48 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_258428DA0();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v51 = &v42 - v7;
  v59 = AssociatedTypeWitness;
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v42 - v8;
  v9 = a1[6];
  v52 = a1[3];
  v53 = v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_258428DA0();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v56 = v10;
  v57 = &v42 - v13;
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_258428DA0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v24 = v23;
  sub_258428DC0();
  if ((*(v24 + 48))(v20, 1, v15) == 1)
  {
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v42 = *(v24 + 32);
    v42(v22, v20, v15);
    v25 = v57;
    sub_258428DC0();
    v26 = v56;
    if ((*(v55 + 48))(v25, 1, v56) == 1)
    {
      (*(v24 + 8))(v22, v15);
      (*(v45 + 8))(v57, v46);
    }

    else
    {
      v53 = v22;
      v27 = *(v55 + 32);
      v28 = v47;
      v27(v47, v57, v26);
      v29 = v51;
      sub_258428DC0();
      v30 = v54;
      v31 = v59;
      if ((*(v54 + 48))(v29, 1) != 1)
      {
        v34 = *(v30 + 32);
        v54 = v30 + 32;
        v57 = v34;
        (v34)(v49, v29, v31);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v36 = v28;
        v37 = *(TupleTypeMetadata3 + 48);
        v38 = v26;
        v39 = *(TupleTypeMetadata3 + 64);
        v40 = v27;
        v41 = v58;
        v42(v58, v53, v15);
        v40(&v41[v37], v36, v38);
        (v57)(&v41[v39], v49, v59);
        return (*(*(TupleTypeMetadata3 - 8) + 56))(v41, 0, 1, TupleTypeMetadata3);
      }

      (*(v55 + 8))(v28, v26);
      (*(v24 + 8))(v53, v15);
      (*(v43 + 8))(v29, v44);
    }
  }

  v32 = swift_getTupleTypeMetadata3();
  return (*(*(v32 - 8) + 56))(v58, 1, 1, v32);
}

uint64_t sub_2583F2808()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2583F28B8(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  if (v15 < a2)
  {
    v17 = ((*(*(v7 - 8) + 64) + ((v13 + v14 + (v16 & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v18 = a2 - v15;
    v19 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = v18 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    v22 = v20 >= 2 ? v21 : 0;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v17);
        if (v23)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v23 = *(a1 + v17);
        if (v23)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v17);
      if (v23)
      {
LABEL_23:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        return v15 + (v25 | v24) + 1;
      }
    }

    if (!v15)
    {
      return 0;
    }
  }

  if (v6 == v15)
  {
    v26 = *(v5 + 48);

    return v26();
  }

  else
  {
    v28 = (a1 + v16) & ~v12;
    if (v9 == v15)
    {
      v29 = *(v8 + 48);
      v30 = *(v8 + 84);
      v31 = a3[3];
    }

    else
    {
      v29 = *(v11 + 48);
      v28 = (v28 + v13 + v14) & ~v14;
      v30 = *(v11 + 84);
      v31 = a3[4];
    }

    return v29(v28, v30, v31);
  }
}

unsigned int *sub_2583F2B34(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((*(*(v8 - 8) + 64) + ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v22 = 0;
    v23 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v19 = a3 - v17;
    if (((*(*(v8 - 8) + 64) + ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_20:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(result + v18) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v18) = 0;
      }

      else if (v22)
      {
        *(result + v18) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v6 == v17)
        {
          v27 = *(v5 + 56);

          return v27();
        }

        else
        {
          v28 = (result + v13 + v14) & ~v14;
          if (v10 == v17)
          {
            v29 = *(v9 + 56);

            return v29(v28);
          }

          else
          {
            v30 = *(v12 + 56);
            v31 = (v28 + v15 + v16) & ~v16;

            return v30(v31);
          }
        }
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v8 - 8) + 64) + ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if (v18)
  {
    v25 = ~v17 + a2;
    v26 = result;
    bzero(result, v18);
    result = v26;
    *v26 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *(result + v18) = v24;
    }

    else
    {
      *(result + v18) = v24;
    }
  }

  else if (v22)
  {
    *(result + v18) = v24;
  }

  return result;
}

id KernelYCbCrToRGB.__allocating_init(coder:device:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithCoder:a1 device:a2];

  swift_unknownObjectRelease();
  return v4;
}

id KernelYCbCrToRGB.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2583F3040(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  if (qword_27F9279C0 != -1)
  {
    swift_once();
  }

  v4 = static MetalBundle.library;
  v5 = sub_258428630();
  v6 = [v4 newFunctionWithName_];

  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20[0] = 0;
  v7 = [a1 newComputePipelineStateWithFunction:v6 error:v20];
  swift_unknownObjectRelease();
  v8 = v20[0];
  if (!v7)
  {
    v17 = v20[0];
    sub_2584282A0();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_15;
  }

  *&v1[OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_convertPipeline] = v7;
  v9 = v8;
  v10 = sub_258428630();
  v11 = [v4 newFunctionWithName_];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20[0] = 0;
  v12 = [a1 newComputePipelineStateWithFunction:v11 error:v20];
  swift_unknownObjectRelease();
  v4 = v20[0];
  if (v12)
  {
    *&v1[OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_convertAndRotatePipeline] = v12;
    v13 = v4;
    v14 = [a1 newBufferWithLength:16 options:0];
    if (v14)
    {
      *&v1[OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_roiBuffer] = v14;
      v15 = [a1 newBufferWithLength:48 options:0];
      if (v15)
      {
        *&v1[OBJC_IVAR____TtC17MeasureFoundation16KernelYCbCrToRGB_transformBuffer] = v15;
        v19.receiver = v1;
        v19.super_class = ObjectType;
        return objc_msgSendSuper2(&v19, sel_initWithDevice_, a1);
      }

LABEL_13:
      __break(1u);
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  v18 = v4;
  sub_2584282A0();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_2583F336C()
{
  result = [objc_opt_self() jasperAvailable];
  v1 = 9;
  if (result)
  {
    v1 = 13;
  }

  static SnapType.standard = v1;
  return result;
}

uint64_t *SnapType.standard.unsafeMutableAddressor()
{
  if (qword_27F927AF0 != -1)
  {
    swift_once();
  }

  return &static SnapType.standard;
}

uint64_t static SnapType.standard.getter()
{
  if (qword_27F927AF0 != -1)
  {
    swift_once();
  }

  return static SnapType.standard;
}

unint64_t sub_2583F3454()
{
  result = qword_27F929080;
  if (!qword_27F929080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929080);
  }

  return result;
}

unint64_t sub_2583F34AC()
{
  result = qword_27F929088;
  if (!qword_27F929088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929088);
  }

  return result;
}

unint64_t sub_2583F3504()
{
  result = qword_27F929090;
  if (!qword_27F929090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929090);
  }

  return result;
}

unint64_t sub_2583F355C()
{
  result = qword_27F929098;
  if (!qword_27F929098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929098);
  }

  return result;
}

__IOSurface *SurfaceTexture.init(width:height:backgroundColor:)(Swift::Int a1, Swift::Int a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelFormat] = 80;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bitsPerComponent] = 8;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_texture] = 0;
  v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking] = 0;
  v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor] = -1;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_color] = -16776961;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorX] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorY] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerRow] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelBytes] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerPixel] = 4;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum] = 0;
  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface] = 0;
  swift_beginAccess();
  *&v3[v7] = a3;
  v8 = MTLCreateSystemDefaultDevice();
  if (!v8)
  {
    goto LABEL_14;
  }

  *&v3[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_mtlDevice] = v8;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for SurfaceTexture();
  v9 = objc_msgSendSuper2(&v21, sel_init);
  SurfaceTexture.setSize(width:height:)(a1, a2);
  v10 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  swift_beginAccess();
  if (v9[v10])
  {
LABEL_5:
    v12 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor;
    swift_beginAccess();
    v13 = *&v9[v12];
    v14 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
    swift_beginAccess();
    v15 = *&v9[v14];
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15)
      {
        v16 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
        swift_beginAccess();
        v17 = *&v9[v16];
        v18 = v17;
        do
        {
          if (v17)
          {
            *v18 = v13;
          }

          ++v18;
          --v15;
        }

        while (v15);
      }

      v20 = 0;
      v19 = *&v9[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface];
      if (v19)
      {
        IOSurfaceUnlock(v19, 2u, &v20);
        v9[v10] = 0;

        return v9;
      }

LABEL_15:
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  seed[0] = 0;
  result = *&v9[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface];
  if (result)
  {
    IOSurfaceLock(result, 2u, seed);
    v9[v10] = 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t SurfaceTexture.width.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.height.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.isLocking.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.backgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.backgroundColor.setter(int a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.color.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_color;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.color.setter(int a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_color;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.cursorX.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.cursorX.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorX;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.cursorY.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.cursorY.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.bytesPerRow.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerRow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.bytesPerRow.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerRow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.pixelsPerRow.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.pixelsPerRow.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.pixel32s.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.pixel32s.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.pixelBytes.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.pixelBytes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.bytesPerPixel.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerPixel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.bytesPerPixel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerPixel;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SurfaceTexture.pixelsNum.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SurfaceTexture.pixelsNum.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall SurfaceTexture.setSize(width:height:)(Swift::Int width, Swift::Int height)
{
  v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  swift_beginAccess();
  *(v2 + v5) = width;
  v6 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  swift_beginAccess();
  *(v2 + v6) = height;
  v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerPixel;
  swift_beginAccess();
  if ((width * *(v2 + v7)) >> 64 != (width * *(v2 + v7)) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929130);
  inited = swift_initStackObject();
  v10 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  *(inited + 16) = xmmword_2584305F0;
  v11 = MEMORY[0x277D83B88];
  *(inited + 40) = width;
  v12 = *MEMORY[0x277CD2A28];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = height;
  v13 = *MEMORY[0x277CD2968];
  *(inited + 104) = v11;
  *(inited + 112) = v13;
  *(inited + 120) = AlignedBytesPerRow;
  v14 = *MEMORY[0x277CD2948];
  *(inited + 144) = v11;
  *(inited + 152) = v14;
  if ((AlignedBytesPerRow * height) >> 64 != (AlignedBytesPerRow * height) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = height;
  *(inited + 160) = AlignedBytesPerRow * height;
  v53 = width;
  v16 = *MEMORY[0x277CD2960];
  *(inited + 184) = v11;
  *(inited + 192) = v16;
  v51 = v7;
  *(inited + 200) = *(v2 + v7);
  v17 = *MEMORY[0x277CD2A70];
  *(inited + 224) = v11;
  *(inited + 232) = v17;
  v18 = *(v2 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelFormat);
  v19 = inited;
  v52 = v15;
  type metadata accessor for MTLPixelFormat(0);
  *(v19 + 264) = v20;
  *(v19 + 240) = v18;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v16;
  v26 = v17;
  sub_2583896D0(v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928008);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v27 = sub_258428500();

  v28 = IOSurfaceCreate(v27);
  v29 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface;
  v30 = *(v2 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface);
  *(v2 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface) = v28;

  v31 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v18 width:v53 height:v52 mipmapped:0];
  v32 = *(v2 + v29);
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v31;
  v34 = [*(v2 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_mtlDevice) newTextureWithDescriptor:v31 iosurface:v32 plane:0];
  v35 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_texture;
  swift_beginAccess();
  *(v2 + v35) = v34;
  swift_unknownObjectRelease();
  v36 = *(v2 + v29);
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  BaseAddress = IOSurfaceGetBaseAddress(v36);
  v38 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  swift_beginAccess();
  *(v2 + v38) = BaseAddress;
  v39 = *(v2 + v29);
  if (!v39)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40 = IOSurfaceGetBaseAddress(v39);
  v41 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelBytes;
  swift_beginAccess();
  *(v2 + v41) = v40;
  v42 = *(v2 + v29);
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v2 + v51) = IOSurfaceGetBytesPerElement(v42);
  v43 = *(v2 + v29);
  if (v43)
  {
    v44 = v43;
    BytesPerRow = IOSurfaceGetBytesPerRow(v44);

    v46 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerRow;
    swift_beginAccess();
    *(v2 + v46) = BytesPerRow;
    v47 = *(v2 + v51);
    if (v47)
    {
      if (BytesPerRow == 0x8000000000000000 && v47 == -1)
      {
        goto LABEL_17;
      }

      v48 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
      v49 = BytesPerRow / v47;
      swift_beginAccess();
      *(v2 + v48) = v49;
      if ((v49 * v52) >> 64 == (v49 * v52) >> 63)
      {
        v50 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
        swift_beginAccess();
        *(v2 + v50) = v49 * v52;
        return;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

Swift::UInt32 __swiftcall SurfaceTexture.getPixel(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  swift_beginAccess();
  result = 0;
  if (*(v2 + v5) <= a1 || a2 < 0)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  swift_beginAccess();
  if (*(v2 + v7) <= a2)
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (!v9)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
  result = swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = a2 * v11;
  if ((a2 * v11) >> 64 == (a2 * v11) >> 63)
  {
    v13 = __OFADD__(v12, a1);
    v14 = v12 + a1;
    if (!v13)
    {
      return *(v9 + 4 * v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SurfaceTexture.getPixel(srcPixels:x:y:invertY:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 < 0)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  swift_beginAccess();
  result = 0;
  v11 = *(v4 + v9);
  if (v11 <= a2 || a3 < 0)
  {
    return result;
  }

  v12 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  result = swift_beginAccess();
  v13 = *(v4 + v12);
  if (v13 <= a3)
  {
    return 0;
  }

  v14 = v13 + ~a3;
  if (a4)
  {
    v15 = v14;
  }

  else
  {
    v15 = a3;
  }

  v16 = v15 * v11;
  if ((v15 * v11) >> 64 == (v15 * v11) >> 63)
  {
    v17 = __OFADD__(v16, a2);
    v18 = v16 + a2;
    if (!v17)
    {
      return *(a1 + 4 * v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SurfaceTexture.setPixel(x:y:color:)(Swift::Int x, Swift::Int y, Swift::UInt32_optional color)
{
  if (x < 0)
  {
    return;
  }

  v4 = *&color.value;
  v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  swift_beginAccess();
  if (*(v3 + v7) <= x)
  {
    return;
  }

  if (y < 0)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  swift_beginAccess();
  if (*(v3 + v8) <= y)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!v10)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v13 = y * v12;
  if ((y * v12) >> 64 != (y * v12) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFADD__(v13, x);
  v15 = v13 + x;
  if (v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if ((v4 & 0x100000000) != 0)
  {
    v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_color;
    swift_beginAccess();
    LODWORD(v4) = *(v3 + v4);
  }

  *(v10 + 4 * v15) = v4;
}

Swift::Void __swiftcall SurfaceTexture.drawRect(x:y:width:height:color:)(Swift::Int x, Swift::Int y, Swift::Int width, Swift::Int height, Swift::UInt32_optional color)
{
  v6 = y + height;
  if (__OFADD__(y, height))
  {
    goto LABEL_28;
  }

  v7 = y;
  if (v6 < y)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 == y)
  {
    return;
  }

  v9 = x + width;
  if (__OFADD__(x, width))
  {
    goto LABEL_30;
  }

  if (v9 < x)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v10 = *&color.value;
  v11 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  v12 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  v13 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  v14 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
  v24 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_color;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  do
  {
    if (v7 >= v6)
    {
      goto LABEL_26;
    }

    if (v9 != x)
    {
      if (v9 <= x)
      {
        goto LABEL_27;
      }

      v15 = width;
      v16 = x;
      do
      {
        if ((v16 & 0x8000000000000000) == 0 && (v7 & 0x8000000000000000) == 0 && v16 < *(v5 + v11) && v7 < *(v5 + v12))
        {
          v17 = *(v5 + v13);
          if (v17)
          {
            v18 = *(v5 + v14);
            v19 = v7 * v18;
            if ((v7 * v18) >> 64 != (v7 * v18) >> 63)
            {
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v20 = __OFADD__(v19, v16);
            v21 = v19 + v16;
            if (v20)
            {
              goto LABEL_25;
            }

            v22 = v10;
            if ((v10 & 0x100000000) != 0)
            {
              v22 = *(v5 + v24);
            }

            *(v17 + 4 * v21) = v22;
          }
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    ++v7;
  }

  while (v7 != v6);
}

uint64_t SurfaceTexture.drawRect(x:y:width:height:srcPixels:invertY:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 + a4;
  if (__OFADD__(a2, a4))
  {
    goto LABEL_33;
  }

  v8 = a2;
  if (v7 < a2)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v7 == a2)
  {
    return result;
  }

  v9 = result;
  if (__OFADD__(result, a3))
  {
    goto LABEL_35;
  }

  if (result + a3 < result)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v12 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
  v13 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
  v14 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  v15 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
  v30 = result + a3;
  swift_beginAccess();
  swift_beginAccess();
  result = swift_beginAccess();
  v16 = v30;
  do
  {
    if (v8 >= v7)
    {
      goto LABEL_31;
    }

    if (v16 != v9)
    {
      if (v16 <= v9)
      {
        goto LABEL_32;
      }

      result = swift_beginAccess();
      v16 = v30;
      v17 = a3;
      v18 = v9;
      do
      {
        if ((v18 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0)
        {
          v19 = *(v6 + v12);
          if (v18 < v19)
          {
            v20 = *(v6 + v13);
            if (v8 < v20)
            {
              v21 = v20 + ~v8;
              if (a6)
              {
                v22 = v21;
              }

              else
              {
                v22 = v8;
              }

              v23 = v22 * v19;
              if ((v22 * v19) >> 64 != (v22 * v19) >> 63)
              {
                goto LABEL_28;
              }

              v24 = v23 + v18;
              if (__OFADD__(v23, v18))
              {
                goto LABEL_29;
              }

              v25 = *(v6 + v14);
              if (v25)
              {
                v26 = *(v6 + v15);
                v27 = v8 * v26;
                if ((v8 * v26) >> 64 != (v8 * v26) >> 63)
                {
                  goto LABEL_30;
                }

                v28 = __OFADD__(v27, v18);
                v29 = v27 + v18;
                if (v28)
                {
                  __break(1u);
LABEL_28:
                  __break(1u);
LABEL_29:
                  __break(1u);
LABEL_30:
                  __break(1u);
LABEL_31:
                  __break(1u);
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

                *(v25 + 4 * v29) = *(a5 + 4 * v24);
              }
            }
          }
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    ++v8;
  }

  while (v8 != v7);
  return result;
}

Swift::Void __swiftcall SurfaceTexture.blendPixel(x:y:color:)(Swift::Int x, Swift::Int y, Swift::UInt32 color)
{
  if (x < 0)
  {

    _s17MeasureFoundation8GraphicsC9blendBGRA8srcColor03dstG0s6UInt32VAH_AHtFZ_0(0, color);
  }

  else
  {
    v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
    swift_beginAccess();
    v8 = 0;
    if (*(v3 + v7) > x && (y & 0x8000000000000000) == 0)
    {
      v9 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
      swift_beginAccess();
      if (*(v3 + v9) > y && (v10 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s, swift_beginAccess(), (v11 = *(v3 + v10)) != 0))
      {
        v12 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
        swift_beginAccess();
        v13 = *(v3 + v12);
        v14 = y * v13;
        if ((y * v13) >> 64 != (y * v13) >> 63)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v15 = __OFADD__(v14, x);
        v16 = v14 + x;
        if (v15)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v8 = *(v11 + 4 * v16);
      }

      else
      {
        v8 = 0;
      }
    }

    v17 = _s17MeasureFoundation8GraphicsC9blendBGRA8srcColor03dstG0s6UInt32VAH_AHtFZ_0(v8, color);
    v18 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
    swift_beginAccess();
    if (*(v3 + v18) > x && (y & 0x8000000000000000) == 0)
    {
      v19 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
      swift_beginAccess();
      if (*(v3 + v19) > y)
      {
        v20 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
        swift_beginAccess();
        v21 = *(v3 + v20);
        if (v21)
        {
          v22 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsPerRow;
          swift_beginAccess();
          v23 = *(v3 + v22);
          v24 = y * v23;
          if ((y * v23) >> 64 == (y * v23) >> 63)
          {
            v15 = __OFADD__(v24, x);
            v25 = v24 + x;
            if (!v15)
            {
              *(v21 + 4 * v25) = v17;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

          goto LABEL_22;
        }
      }
    }
  }
}

Swift::Void __swiftcall SurfaceTexture.blendBrightness(x:y:brightness:)(Swift::Int x, Swift::Int y, Swift::Float brightness)
{
  v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_color;
  swift_beginAccess();
  v8 = brightness * 255.0;
  if (COERCE_INT(fabs(brightness * 255.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 4295000000.0)
  {
    v9 = *(v3 + v7) & 0xFFFFFF | (v8 << 24);
    v10 = SurfaceTexture.getPixel(_:_:)(x, y);
    v11 = _s17MeasureFoundation8GraphicsC9blendBGRA8srcColor03dstG0s6UInt32VAH_AHtFZ_0(v10, v9);
    SurfaceTexture.setPixel(x:y:color:)(x, y, v11);
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall SurfaceTexture.setAlpha(_:)(Swift::Float a1)
{
  v2 = a1 * 255.0;
  if (COERCE_INT(fabs(a1 * 255.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 4295000000.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 < 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (v4)
  {
    v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v7 = v6;
    do
    {
      if (v6)
      {
        *v7 &= (v2 << 24) | 0xFFFFFF;
      }

      ++v7;
      --v4;
    }

    while (v4);
  }
}

Swift::Void __swiftcall SurfaceTexture.clear(color:)(Swift::UInt32_optional color)
{
  value = color.value;
  if ((*&color.value & 0x100000000) != 0)
  {
    v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor;
    swift_beginAccess();
    value = *(v1 + v3);
  }

  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_backgroundColor;
  swift_beginAccess();
  *(v1 + v4) = value;
  v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 < 0)
  {
    __break(1u);
  }

  else if (v6)
  {
    v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
    swift_beginAccess();
    v8 = *(v1 + v7);
    v9 = v8;
    do
    {
      if (v8)
      {
        *v9 = value;
      }

      ++v9;
      --v6;
    }

    while (v6);
  }
}

void *SurfaceTexture.fill(withPointer:)(const void *a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerPixel;
  result = swift_beginAccess();
  v9 = *(v1 + v7);
  if ((v6 * v9) >> 64 == (v6 * v9) >> 63)
  {
    return memcpy(v4, a1, v6 * v9);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SurfaceTexture.fill(withPixelBuffer:)(CVBufferRef withPixelBuffer)
{
  CVPixelBufferLockBaseAddress(withPixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(withPixelBuffer);
  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_bytesPerPixel;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if ((v7 * v9) >> 64 == (v7 * v9) >> 63)
  {
    memcpy(v5, BaseAddress, v7 * v9);
    CVPixelBufferUnlockBaseAddress(withPixelBuffer, 0);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SurfaceTexture.fill(withARBG:)(Swift::OpaquePointer withARBG)
{
  v3 = *(withARBG._rawValue + 2);
  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  swift_beginAccess();
  if (v3 == *(v1 + v4))
  {
    v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
    swift_beginAccess();
    memcpy(*(v1 + v5), withARBG._rawValue + 32, v3);
  }

  else
  {
    sub_258428FC0();

    v6 = MEMORY[0x259C7E180](withARBG._rawValue, MEMORY[0x277D84CC0]);
    MEMORY[0x259C7DFF0](v6);

    MEMORY[0x259C7DFF0](0xD000000000000011, 0x8000000258437F80);
    v7 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v7);

    sub_258428400();
  }
}

Swift::Void __swiftcall SurfaceTexture.fill(withBytes:)(Swift::OpaquePointer withBytes)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelBytes;
  swift_beginAccess();
  memcpy(*(v1 + v3), withBytes._rawValue + 32, *(withBytes._rawValue + 2));
}

Swift::Void __swiftcall SurfaceTexture.goTo(x:y:)(Swift::Int x, Swift::Int y)
{
  v5 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorX;
  swift_beginAccess();
  *(v2 + v5) = x;
  v6 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_cursorY;
  swift_beginAccess();
  *(v2 + v6) = y;
}

Swift::Void __swiftcall SurfaceTexture.begin()()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    seed = 0;
    v2 = *(v0 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface);
    if (v2)
    {
      IOSurfaceLock(v2, 2u, &seed);
      *(v0 + v1) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall SurfaceTexture.end()()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    seed = 0;
    v2 = *(v0 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface);
    if (v2)
    {
      IOSurfaceUnlock(v2, 2u, &seed);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2583F57BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_texture;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id SurfaceTexture.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SurfaceTexture.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SurfaceTexture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_2583F5A68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_texture;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2583F5AC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2583F5B20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

CGFloat _s17MeasureFoundation15ADConfigurationC12viewCropRectSo6CGRectVvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  if (Width / CGRectGetHeight(v14) <= 0.75)
  {
    v16.origin.x = v1;
    v16.origin.y = v2;
    v16.size.width = v3;
    v16.size.height = v4;
    v7 = CGRectGetWidth(v16);
    Height = v7 / 0.75;
  }

  else
  {
    v15.origin.x = v1;
    v15.origin.y = v2;
    v15.size.width = v3;
    v15.size.height = v4;
    Height = CGRectGetHeight(v15);
    v7 = Height * 0.75;
  }

  v17.origin.x = v1;
  v17.origin.y = v2;
  v17.size.width = v3;
  v17.size.height = v4;
  v8 = CGRectGetWidth(v17) / v7;
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  v9 = CGRectGetHeight(v18) / Height;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 <= 1.0)
  {
    v9 = 1.0;
  }

  v10 = v7 * v9;
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  v11 = (CGRectGetWidth(v19) - v10) * 0.5;
  v20.origin.x = v1;
  v20.origin.y = v2;
  v20.size.width = v3;
  v20.size.height = v4;
  CGRectGetHeight(v20);
  return v11;
}

uint64_t sub_2583F5DD4(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

double BoundingBox.centroid.getter(float32x4_t *a1, double a2, double a3)
{
  if (qword_27F9279F0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = static SIMD3<>.zero;
  v4 = a1[1].u64[0];
  if (v4)
  {
    v5 = a1 + 2;
    v6 = a1[1].i64[0];
    do
    {
      v7 = *v5++;
      HIDWORD(a3) = v7.i32[1];
      v3 = vaddq_f32(v3, v7);
      v3.i32[3] = 0;
      --v6;
    }

    while (v6);
  }

  *&a3 = v4;
  *&result = vdivq_f32(v3, vdupq_lane_s32(*&a3, 0)).u64[0];
  return result;
}

double BoundingBox.visionCentroid.getter(uint64_t a1, float32x4_t *a2, double a3, double a4)
{
  if (qword_27F9279F0 != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a2 = v10;
    a1 = v9;
  }

  v4 = static SIMD3<>.zero;
  v5 = a2[1].i64[0];
  if (v5)
  {
    v6 = a2 + 2;
    do
    {
      v7 = *v6++;
      HIDWORD(a4) = v7.i32[1];
      v4 = vaddq_f32(v4, v7);
      v4.i32[3] = 0;
      --v5;
    }

    while (v5);
  }

  *&a4 = *(a1 + 16);
  *&result = vdivq_f32(v4, vdupq_lane_s32(*&a4, 0)).u64[0];
  return result;
}

float BoundingBox.volume.getter(uint64_t a1)
{
  _s17MeasureFoundation11BoundingBoxV10dimensionss5SIMD3VySfGvg_0(a1);
  v7 = v2;
  _s17MeasureFoundation11BoundingBoxV10dimensionss5SIMD3VySfGvg_0(a1);
  v4 = vmuls_lane_f32(v7, v3, 2);
  _s17MeasureFoundation11BoundingBoxV10dimensionss5SIMD3VySfGvg_0(a1);
  return vmuls_lane_f32(v4, v5, 1);
}

float BoundingBox.init(visionCorners:confidence:visionToRenderTransform:)(float32x4_t *a1, float a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v8 = a1[1].i64[0];
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = MEMORY[0x277D84F90];
    sub_258392254(0, v8, 0);
    v11 = a3;
    v10 = a4;
    v13 = a5;
    v12 = a6;
    v14 = v40;
    v15 = a1 + 2;
    v16 = *(v40 + 16);
    v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*MEMORY[0x277D860B8])), a4, *MEMORY[0x277D860B8], 1), a5, *MEMORY[0x277D860B8], 2), a6, *MEMORY[0x277D860B8], 3);
    v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), a4, *(MEMORY[0x277D860B8] + 16), 1), a5, *(MEMORY[0x277D860B8] + 16), 2), a6, *(MEMORY[0x277D860B8] + 16), 3);
    v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 32))), a4, *(MEMORY[0x277D860B8] + 32), 1), a5, *(MEMORY[0x277D860B8] + 32), 2), a6, *(MEMORY[0x277D860B8] + 32), 3);
    v20 = (v16 << 6) + 80;
    do
    {
      v21 = *v15;
      v22 = *(v40 + 24);
      if (v16++ >= v22 >> 1)
      {
        v33 = v18;
        v34 = v17;
        v31 = *v15;
        v32 = v19;
        sub_258392254((v22 > 1), v16, 1);
        v21 = v31;
        v19 = v32;
        v18 = v33;
        v17 = v34;
        v11 = a3;
        v10 = a4;
        v13 = a5;
        v12 = a6;
      }

      *(v40 + 16) = v16;
      v24 = (v40 + v20);
      v24[-3] = v17;
      v24[-2] = v18;
      v24[-1] = v19;
      *v24 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, v21.f32[0]), v10, *v21.f32, 1), v13, v21, 2), v12);
      v20 += 64;
      ++v15;
      --v8;
    }

    while (v8);
  }

  else
  {
    v16 = *(MEMORY[0x277D84F90] + 16);
    if (!v16)
    {
      goto LABEL_13;
    }

    v14 = MEMORY[0x277D84F90];
  }

  sub_258392234(0, v16, 0);
  v25 = v9;
  v26 = *(v9 + 16);
  v27 = 80;
  do
  {
    v28 = *(v14 + v27);
    v29 = *(v25 + 24);
    if (v26 >= v29 >> 1)
    {
      v39 = *(v14 + v27);
      sub_258392234((v29 > 1), v26 + 1, 1);
      v28 = v39;
    }

    HIDWORD(v28) = 0;
    *(v25 + 16) = v26 + 1;
    *(v25 + 16 * v26 + 32) = v28;
    v27 += 64;
    ++v26;
    --v16;
  }

  while (v16);
LABEL_13:

  return a2;
}

uint64_t sub_2583F6224()
{
  v1 = 0x436E6F697369765FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7372656E726F63;
  }
}

uint64_t sub_2583F6290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2583F6C94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2583F62D0(uint64_t a1)
{
  v2 = sub_2583F6C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2583F630C(uint64_t a1)
{
  v2 = sub_2583F6C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static BoundingBox.__derived_struct_equals(_:_:)(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float a5, float a6)
{
  if (sub_2583F5DD4(a1, a3))
  {
    return sub_2583F5DD4(a2, a4) & (a5 == a6);
  }

  else
  {
    return 0;
  }
}

uint64_t BoundingBox.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929138);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2583F6C40();
  sub_258429440();
  v13 = a2;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929148);
  sub_2583F7608(&qword_27F929150, &qword_27F929158);
  sub_258429280();
  if (!v3)
  {
    v13 = a3;
    HIBYTE(v12) = 1;
    sub_258429280();
    LOBYTE(v13) = 2;
    sub_258429270();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2583F65F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_2583F5DD4(*a1, *a2))
  {
    return sub_2583F5DD4(v2, v4) & (v3 == v5);
  }

  else
  {
    return 0;
  }
}

void sub_2583F665C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2583F6DBC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_2583F66EC()
{
  v1 = 0x6F69736E656D6964;
  v2 = 0x6F436E6F69736976;
  if (*v0 != 2)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    v1 = 0x7372656E726F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2583F6778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2583F748C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2583F67AC(uint64_t a1)
{
  v2 = sub_2583F7054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2583F67E8(uint64_t a1)
{
  v2 = sub_2583F7054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoundingBox.ResultRepresentation.encode(to:)(void *a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v13 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929160);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2583F7054();
  sub_258429440();
  v15 = v13;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A38);
  sub_2583F7690(&qword_27F929158);
  sub_258429280();
  if (!v4)
  {
    v15.n128_u64[0] = a2;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929148);
    sub_2583F7608(&qword_27F929150, &qword_27F929158);
    sub_258429280();
    v15.n128_u64[0] = a3;
    v14 = 2;
    sub_258429280();
    v15.n128_u8[0] = 3;
    sub_258429270();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t BoundingBox.resultRepresentation.getter(uint64_t a1)
{
  _s17MeasureFoundation11BoundingBoxV10dimensionss5SIMD3VySfGvg_0(a1);

  return a1;
}

uint64_t sub_2583F6B30@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  _s17MeasureFoundation11BoundingBoxV10dimensionss5SIMD3VySfGvg_0(*v1);
  *a1 = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t _s17MeasureFoundation11BoundingBoxV10dimensionss5SIMD3VySfGvg_0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 5)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_2583F6C40()
{
  result = qword_27F929140;
  if (!qword_27F929140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929140);
  }

  return result;
}

uint64_t sub_2583F6C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372656E726F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_258429310() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436E6F697369765FLL && a2 == 0xEE007372656E726FLL || (sub_258429310() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_258429310();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

float sub_2583F6DBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9291A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2583F6C40();
  sub_258429430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929148);
  HIBYTE(v9) = 0;
  sub_2583F7608(&qword_27F9291B0, &qword_27F9291B8);
  sub_258429220();
  HIBYTE(v9) = 1;
  sub_258429220();
  LOBYTE(v10) = 2;
  sub_258429210();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_2583F7054()
{
  result = qword_27F929168;
  if (!qword_27F929168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929168);
  }

  return result;
}

unint64_t sub_2583F70AC()
{
  result = qword_27F929170;
  if (!qword_27F929170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929170);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2583F7114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2583F715C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy36_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2583F71C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2583F7208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2583F7280()
{
  result = qword_27F929178;
  if (!qword_27F929178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929178);
  }

  return result;
}

unint64_t sub_2583F72D8()
{
  result = qword_27F929180;
  if (!qword_27F929180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929180);
  }

  return result;
}

unint64_t sub_2583F7330()
{
  result = qword_27F929188;
  if (!qword_27F929188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929188);
  }

  return result;
}

unint64_t sub_2583F7388()
{
  result = qword_27F929190;
  if (!qword_27F929190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929190);
  }

  return result;
}

unint64_t sub_2583F73E0()
{
  result = qword_27F929198;
  if (!qword_27F929198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929198);
  }

  return result;
}

unint64_t sub_2583F7438()
{
  result = qword_27F9291A0;
  if (!qword_27F9291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9291A0);
  }

  return result;
}

uint64_t sub_2583F748C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL || (sub_258429310() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_258429310() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F436E6F69736976 && a2 == 0xED00007372656E72 || (sub_258429310() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 3;
  }

  else
  {
    v5 = sub_258429310();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2583F7608(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F929148);
    sub_2583F7690(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2583F7690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928A38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double UIColor.rgba.getter()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  [v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2];
  return *v5;
}

id UIColor.argb.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  result = [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  if (result)
  {
    v2 = v7 * 255.0;
    if (COERCE__INT64(fabs(v7 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -1.0)
    {
      if (v2 < 4294967300.0)
      {
        v3 = v8 * 255.0;
        if (COERCE__INT64(fabs(v8 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v3 > -1.0)
          {
            if (v3 < 4294967300.0)
            {
              v4 = v9[0] * 255.0;
              if (COERCE__INT64(fabs(v9[0] * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v4 > -1.0)
                {
                  if (v4 < 4294967300.0)
                  {
                    v5 = v6 * 255.0;
                    if (COERCE__INT64(fabs(v6 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v5 > -1.0)
                      {
                        if (v5 < 4294967300.0)
                        {
                          return (v2 | (v3 << 8) | (v4 << 16) | (v5 << 24));
                        }

LABEL_27:
                        __break(1u);
                      }

LABEL_26:
                      __break(1u);
                      goto LABEL_27;
                    }

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

UIColor __swiftcall UIColor.init(argb:)(Swift::UInt32 argb)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithRed:BYTE2(argb) / 255.0 green:BYTE1(argb) / 255.0 blue:argb / 255.0 alpha:HIBYTE(argb) / 255.0];
}

id UIColor.bgra.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  result = [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  if (result)
  {
    v2 = v6 * 255.0;
    if (COERCE__INT64(fabs(v6 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -1.0)
    {
      if (v2 < 4294967300.0)
      {
        v3 = v9[0] * 255.0;
        if (COERCE__INT64(fabs(v9[0] * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v3 > -1.0)
          {
            if (v3 < 4294967300.0)
            {
              v4 = v8 * 255.0;
              if (COERCE__INT64(fabs(v8 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v4 > -1.0)
                {
                  if (v4 < 4294967300.0)
                  {
                    v5 = v7 * 255.0;
                    if (COERCE__INT64(fabs(v7 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v5 > -1.0)
                      {
                        if (v5 < 4294967300.0)
                        {
                          return (v2 | (v3 << 8) | (v4 << 16) | (v5 << 24));
                        }

LABEL_27:
                        __break(1u);
                      }

LABEL_26:
                      __break(1u);
                      goto LABEL_27;
                    }

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

Swift::Bool __swiftcall UIColor.isClear()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0.0;
  return ![v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2] || v5[0] + v4 + v3 + v2 == 0.0;
}

UIColor __swiftcall lerp(start:end:percent:)(UIColor start, UIColor end, Swift::Float percent)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0.0;
  v15[0] = 0.0;
  v12 = 0;
  v13 = 0.0;
  [(objc_class *)start.super.isa getRed:v15 green:&v14 blue:&v13 alpha:&v12];
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  [(objc_class *)end.super.isa getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  v5 = (1.0 - percent);
  v6 = percent;
  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v15[0] * v5 + v11 * percent green:v14 * v5 + v10 * v6 blue:v13 * v5 + v9 * v6 alpha:1.0];
}

BOOL static UIDevice.isDeviceQualified(family:minVersion:)(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F927AF8 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  if (static UIDevice.parsedDeviceIdentifier == 3)
  {
    return 0;
  }

  v6 = 1684099177;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 1684099177;
    }

    else
    {
      v7 = 1685016681;
    }

    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x656E6F685069;
  }

  v10 = qword_27F92F308;
  v9 = qword_27F92F310;
  if (static UIDevice.parsedDeviceIdentifier != 1)
  {
    v6 = 1685016681;
  }

  if (static UIDevice.parsedDeviceIdentifier)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0x656E6F685069;
  }

  if (static UIDevice.parsedDeviceIdentifier)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {

    if (v10 < a2)
    {
      return 0;
    }

    return v9 >= a3;
  }

  v13 = sub_258429310();

  result = 0;
  if ((v13 & 1) != 0 && v10 >= a2)
  {
    return v9 >= a3;
  }

  return result;
}

uint64_t static UIDevice.isIPad()()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  if (static UIDevice.parsedDeviceIdentifier == 3)
  {
    v0 = 0;
  }

  else
  {
    if (static UIDevice.parsedDeviceIdentifier == 1)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_258429310();
    }
  }

  return v0 & 1;
}

uint64_t UIDevice.DeviceFamily.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656E6F685069;
  }

  if (a1 == 1)
  {
    return 1684099177;
  }

  return 1685016681;
}

uint64_t sub_2583F7FBC(_BYTE *a1, _BYTE *a2)
{
  v2 = 1684099177;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 1684099177;
  }

  else
  {
    v4 = 1685016681;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E6F685069;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 1685016681;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x656E6F685069;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_258429310();
  }

  return v9 & 1;
}

uint64_t sub_2583F8088()
{
  sub_2584293C0();
  sub_2584286C0();

  return sub_2584293F0();
}

uint64_t sub_2583F811C()
{
  sub_2584286C0();
}

uint64_t sub_2583F819C()
{
  sub_2584293C0();
  sub_2584286C0();

  return sub_2584293F0();
}

uint64_t sub_2583F822C@<X0>(_BYTE *a1@<X8>)
{
  result = _sSo8UIDeviceC17MeasureFoundationE12DeviceFamilyO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_2583F825C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 1684099177;
  if (v2 != 1)
  {
    v4 = 1685016681;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656E6F685069;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2583F82BC()
{
  result = sub_2583F82E4();
  static UIDevice.parsedDeviceIdentifier = result;
  qword_27F92F308 = v1;
  qword_27F92F310 = v2;
  return result;
}

uint64_t sub_2583F82E4()
{
  if (qword_27F927B00 != -1)
  {
    swift_once();
  }

  v0 = static UIDevice.identifier;
  v1 = unk_27F92F320;
  v2 = byte_28697E588;
  v65 = static UIDevice.identifier;
  v66 = unk_27F92F320;
  v3 = 1685016681;
  if (byte_28697E588 == 1)
  {
    v3 = 1684099177;
  }

  if (byte_28697E588)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x656E6F685069;
  }

  if (byte_28697E588)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v67 = v4;
  v68 = v5;
  v6 = sub_25838E4C0();

  v7 = sub_258428E00();

  if ((v7 & 1) == 0)
  {
    v2 = byte_28697E589;
    v65 = v0;
    v66 = v1;
    if (byte_28697E589)
    {
      if (byte_28697E589 == 1)
      {
        v8 = 0xE400000000000000;
        v9 = 1684099177;
      }

      else
      {
        v9 = 1685016681;
        v8 = 0xE400000000000000;
      }
    }

    else
    {
      v8 = 0xE600000000000000;
      v9 = 0x656E6F685069;
    }

    v67 = v9;
    v68 = v8;

    v10 = sub_258428E00();

    if ((v10 & 1) == 0)
    {
      v2 = byte_28697E58A;
      v65 = v0;
      v66 = v1;
      if (byte_28697E58A)
      {
        if (byte_28697E58A == 1)
        {
          v11 = 0xE400000000000000;
          v12 = 1684099177;
        }

        else
        {
          v12 = 1685016681;
          v11 = 0xE400000000000000;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        v12 = 0x656E6F685069;
      }

      v67 = v12;
      v68 = v11;

      v13 = MEMORY[0x277D837D0];
      v14 = sub_258428E00();

      if ((v14 & 1) == 0)
      {
        if (qword_27F927B58 != -1)
        {
          swift_once();
        }

        v53 = qword_27F92F418;
        v52 = unk_27F92F420;
        sub_258428FC0();

        v65 = 0xD00000000000002DLL;
        v66 = 0x80000002584381B0;
        MEMORY[0x259C7DFF0](v0, v1);
        sub_258428C60();
        v54 = qword_27F927A30;

        if (v54 != -1)
        {
          swift_once();
        }

        v55 = qword_27F928848;
        os_unfair_lock_lock(qword_27F928848);
        if (qword_27F927A38 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v56 = off_27F928850;
        if (*(off_27F928850 + 2) && (v57 = sub_258384364(v53, v52), (v58 & 1) != 0))
        {
          v59 = *(v56[7] + 8 * v57);
          swift_endAccess();
          v47 = v59;
        }

        else
        {
          swift_endAccess();
          sub_25838AB14();
          if (qword_27F927A28 != -1)
          {
            swift_once();
          }

          v60 = sub_258428D90();
          swift_beginAccess();
          v47 = v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = off_27F928850;
          off_27F928850 = 0x8000000000000000;
          sub_258384C94(v47, v53, v52, isUniquelyReferenced_nonNull_native);

          off_27F928850 = v67;
          swift_endAccess();
          v13 = MEMORY[0x277D837D0];
        }

        os_unfair_lock_unlock(v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_25842CCB0;
        *(v62 + 56) = v13;
        *(v62 + 64) = sub_258385D08();
        *(v62 + 32) = 0xD00000000000002DLL;
        *(v62 + 40) = 0x80000002584381B0;

        sub_258428440();
        goto LABEL_56;
      }
    }
  }

  v65 = v0;
  v66 = v1;
  v15 = 1685016681;
  if (v2 == 1)
  {
    v15 = 1684099177;
  }

  if (v2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x656E6F685069;
  }

  if (v2)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE600000000000000;
  }

  v67 = v16;
  v68 = v17;
  v64[1] = 0;
  v64[2] = 0xE000000000000000;

  v63[3] = v6;
  v63[1] = v6;
  v63[0] = MEMORY[0x277D837D0];
  v18 = sub_258428DE0();
  v20 = v19;

  v65 = 44;
  v66 = 0xE100000000000000;
  MEMORY[0x28223BE20](v21);
  v63[2] = &v65;
  v22 = sub_2583F9488(0x7FFFFFFFFFFFFFFFLL, 1, sub_2583FAA04, v63, v18, v20, v64);
  if (!v22[2])
  {
    __break(1u);
    goto LABEL_72;
  }

  v23 = v22;
  v24 = v22[4];
  v25 = v22[5];
  if (!((v25 ^ v24) >> 14))
  {
    goto LABEL_74;
  }

  v27 = v22[6];
  v26 = v22[7];
  sub_2583FA2C8(v22[4], v25, v27, v26, 10);
  if ((v28 & 0x100) != 0)
  {

    sub_2583F9848(v24, v25, v27, v26, 10);
    v30 = v29;

    if (v30)
    {
      goto LABEL_74;
    }
  }

  else if (v28)
  {
    goto LABEL_74;
  }

  if (v23[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_74;
  }

  v31 = v23[8];
  v32 = v23[9];
  v34 = v23[10];
  v33 = v23[11];

  if (!((v32 ^ v31) >> 14))
  {
LABEL_74:

    goto LABEL_44;
  }

  sub_2583FA2C8(v31, v32, v34, v33, 10);
  if ((v35 & 0x100) != 0)
  {
    sub_2583F9848(v31, v32, v34, v33, 10);
  }

  v36 = v35;

  if (v36)
  {
LABEL_44:
    if (qword_27F927B58 == -1)
    {
LABEL_45:
      v38 = qword_27F92F418;
      v37 = unk_27F92F420;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_258428FC0();

      v65 = 0xD000000000000027;
      v66 = 0x80000002584381E0;
      MEMORY[0x259C7DFF0](v0, v1);
      v39 = v65;
      v40 = v66;
      sub_258428C60();
      v41 = qword_27F927A30;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = qword_27F928848;
      os_unfair_lock_lock(qword_27F928848);
      if (qword_27F927A38 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v43 = off_27F928850;
      if (*(off_27F928850 + 2) && (v44 = sub_258384364(v38, v37), (v45 & 1) != 0))
      {
        v46 = *(v43[7] + 8 * v44);
        swift_endAccess();
        v47 = v46;
      }

      else
      {
        swift_endAccess();
        sub_25838AB14();
        if (qword_27F927A28 != -1)
        {
          swift_once();
        }

        v48 = sub_258428D90();
        swift_beginAccess();
        v47 = v48;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v67 = off_27F928850;
        off_27F928850 = 0x8000000000000000;
        sub_258384C94(v47, v38, v37, v49);

        off_27F928850 = v67;
        swift_endAccess();
      }

      os_unfair_lock_unlock(v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_25842CCB0;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = sub_258385D08();
      *(v50 + 32) = v39;
      *(v50 + 40) = v40;

      sub_258428440();
LABEL_56:

      return 3;
    }

LABEL_72:
    swift_once();
    goto LABEL_45;
  }

  return v2;
}

uint64_t *UIDevice.identifier.unsafeMutableAddressor()
{
  if (qword_27F927B00 != -1)
  {
    swift_once();
  }

  return &static UIDevice.identifier;
}

uint64_t *UIDevice.parsedDeviceIdentifier.unsafeMutableAddressor()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  return &static UIDevice.parsedDeviceIdentifier;
}

uint64_t static UIDevice.parsedDeviceIdentifier.getter()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  return static UIDevice.parsedDeviceIdentifier;
}

uint64_t sub_2583F8DD8()
{
  result = sub_2583F8DFC();
  static UIDevice.identifier = result;
  unk_27F92F320 = v1;
  return result;
}

uint64_t sub_2583F8DFC()
{
  v42 = *MEMORY[0x277D85DE8];
  v0 = sub_258429420();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v35, 0x500uLL);
  uname(&v35);
  v29 = *&v35.machine[16];
  v30 = *v35.machine;
  v27 = *&v35.machine[48];
  v28 = *&v35.machine[32];
  v32 = *&v35.machine[80];
  v33 = *&v35.machine[64];
  v31 = *&v35.machine[96];
  *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9291D8);
  v3 = swift_allocObject();
  *&v39 = v3;
  v4 = v29;
  v3[1] = v30;
  v3[2] = v4;
  v5 = v27;
  v3[3] = v28;
  v3[4] = v5;
  v6 = *&v35.machine[112];
  v7 = v32;
  v3[5] = v33;
  v3[6] = v7;
  v3[7] = v31;
  v3[8] = v6;
  v8 = *&v35.machine[144];
  v3[9] = *&v35.machine[128];
  v3[10] = v8;
  v9 = *&v35.machine[176];
  v3[11] = *&v35.machine[160];
  v3[12] = v9;
  v10 = *&v35.machine[208];
  v3[13] = *&v35.machine[192];
  v3[14] = v10;
  v11 = *&v35.machine[240];
  v3[15] = *&v35.machine[224];
  v3[16] = v11;
  sub_258429400();
  *&v33 = v2;
  *&v32 = sub_258429410();
  sub_2584290C0();
  sub_2584291E0();
  if (*(&v41 + 1))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    v14 = MEMORY[0x277D84F70];
    v15 = MEMORY[0x277D84900];
    do
    {
      v38[0] = v39;
      v38[1] = v40;
      v38[2] = v41;
      sub_2583FA92C(v38, &v36);

      if (swift_dynamicCast() && v34)
      {
        if ((v34 & 0x80) != 0)
        {
          __break(1u);
        }

        v36 = v34;
        v16 = sub_2584286B0();
        v17 = v12;
        v18 = v15;
        v19 = v14;
        v20 = v16;
        v22 = v21;
        v36 = v17;
        v37 = v13;

        v23 = v20;
        v14 = v19;
        v15 = v18;
        MEMORY[0x259C7DFF0](v23, v22);

        v12 = v36;
        v13 = v37;
      }

      sub_2583FA99C(v38);
      sub_2584291E0();
    }

    while (*(&v41 + 1));
  }

  else
  {
    v12 = 0;
  }

  (*(v25 + 8))(v33, v26);
  return v12;
}

uint64_t static UIDevice.identifier.getter()
{
  if (qword_27F927B00 != -1)
  {
    swift_once();
  }

  v0 = static UIDevice.identifier;

  return v0;
}

uint64_t static UIDevice.isIPhone()()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  v0 = static UIDevice.parsedDeviceIdentifier;
  if (static UIDevice.parsedDeviceIdentifier != 3)
  {
    if (static UIDevice.parsedDeviceIdentifier)
    {
      v2 = sub_258429310();

      if (v2)
      {
        v1 = 1;
        return v1 & 1;
      }

      if (v0 == 2)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_258429310();
      }
    }

    else
    {
      v1 = 1;
    }

    return v1 & 1;
  }

  v1 = 0;
  return v1 & 1;
}

BOOL static UIDevice.shouldLockFramerate()()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  if (static UIDevice.parsedDeviceIdentifier != 3)
  {
    if (static UIDevice.parsedDeviceIdentifier)
    {
      if (static UIDevice.parsedDeviceIdentifier == 1)
      {
        if (qword_27F92F308 != 6)
        {
          if (qword_27F92F308 == 7)
          {
            return (qword_27F92F310 - 11) < 2;
          }

          return 0;
        }

        return 1;
      }
    }

    else if (qword_27F92F308 == 8)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static UIDevice.hasHWAcceleratedFeatureDetection()()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  v0 = static UIDevice.parsedDeviceIdentifier;
  if (static UIDevice.parsedDeviceIdentifier == 3)
  {
    return 0;
  }

  v3 = qword_27F92F308;
  v2 = qword_27F92F310;
  if (!static UIDevice.parsedDeviceIdentifier)
  {

    if (v3 < 11 || v2 < 1)
    {
      goto LABEL_16;
    }

    return 1;
  }

  v4 = sub_258429310();

  if ((v4 & 1) != 0 && v3 >= 11 && v2 > 0)
  {
    return 1;
  }

  if (v0 != 2)
  {

    if (v3 < 8)
    {
      return 0;
    }

    return v2 > 0;
  }

LABEL_16:
  v6 = sub_258429310();

  result = 0;
  if ((v6 & 1) != 0 && v3 >= 8)
  {
    return v2 > 0;
  }

  return result;
}

unint64_t sub_2583F9488@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_258428780();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25839D664(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25839D664((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_258428760();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2584286D0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2584286D0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_258428780();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25839D664(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_258428780();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25839D664(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25839D664((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2584286D0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_2583F9848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2583FAA5C();

  result = sub_258428770();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2583F9DE0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258429010();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2583F9DE0()
{
  v0 = sub_258428780();
  v4 = sub_2583F9E60(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2583F9E60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_258428DB0();
    if (!v9 || (v10 = v9, v11 = sub_2583F9FB8(v9, 0), v12 = sub_2583FA02C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2584286B0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2584286B0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_258429010();
LABEL_4:

  return sub_2584286B0();
}

void *sub_2583F9FB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9291F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2583FA02C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2583FA24C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_258428720();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_258429010();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2583FA24C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2584286F0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2583FA24C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_258428730();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C7E010](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2583FA2C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_258429010();
  }

  result = sub_2583FA394(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2583FA394(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2583FA24C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_258428710();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2583FA24C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2583FA24C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_258428710();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t _sSo8UIDeviceC17MeasureFoundationE12DeviceFamilyO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_258429200();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2583FA850()
{
  result = qword_27F9291C0;
  if (!qword_27F9291C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9291C0);
  }

  return result;
}

unint64_t sub_2583FA8A8()
{
  result = qword_27F9291C8;
  if (!qword_27F9291C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9291D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9291C8);
  }

  return result;
}

uint64_t sub_2583FA92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9291E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2583FA99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9291E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2583FAA04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258429310() & 1;
  }
}

unint64_t sub_2583FAA5C()
{
  result = qword_27F9291E8;
  if (!qword_27F9291E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9291E8);
  }

  return result;
}

UIImage_optional __swiftcall UIImage.init(color:size:)(UIColor color, CGSize size)
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
  [(objc_class *)color.super.isa setFill];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = width;
  v12.size.height = height;
  UIRectFill(v12);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(UIImage *)v5 CGImage];
  if (!v6)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage_];

  v10 = v8;
LABEL_6:
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id sub_2583FAB90()
{
  result = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  qword_27F9291F8 = result;
  return result;
}

UIImage_optional __swiftcall UIImage.rotated(to:)(UIDeviceOrientation to)
{
  if (to != UIDeviceOrientationPortrait)
  {
    v5 = [v1 CGImage];
    if (v5)
    {
      v6 = v5;
      if ((to - 2) > 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = dword_258430BB0[to - 2];
      }

      v8 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v9 = [v8 imageByApplyingCGOrientation_];

      if (qword_27F927B08 != -1)
      {
        swift_once();
      }

      v10 = qword_27F9291F8;
      [v9 extent];
      v11 = [v10 createCGImage:v9 fromRect:?];
      if (v11)
      {
        v12 = v11;
        [v1 scale];
        v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v12 scale:0 orientation:v13];

        goto LABEL_13;
      }
    }

    v1 = 0;
    goto LABEL_13;
  }

  v2 = v1;
LABEL_13:
  v14 = v1;
  result.value.super.isa = v14;
  result.is_nil = v3;
  return result;
}

void static NSUserDefaults.observe(observer:keys:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = a2 + 40;
    do
    {

      v7 = [ObjCClassFromMetadata standardUserDefaults];
      v8 = sub_258428630();

      [v7 addObserver:a1 forKeyPath:v8 options:1 context:0];

      v6 += 16;
      --v2;
    }

    while (v2);
  }
}

id static NSUserDefaults.update<A>(_:key:feature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v31 = *(a6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_258428DA0();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v25 = &v24 - v10;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v19 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  v20 = sub_258428630();
  v21 = [v19 BOOLForKey_];

  (*(v11 + 16))(v14, v29, a5);
  swift_dynamicCast();
  if (v21)
  {
    sub_258428E40();
  }

  else
  {
    v22 = v25;
    sub_258428E50();
    (*(v26 + 8))(v22, v27);
  }

  (*(v15 + 8))(v18, AssociatedTypeWitness);
  return v21;
}

uint64_t static NSUserDefaults.createOptionSet<A>(keyForFeature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v54 - v11;
  v12 = *(a2 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v54 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_258428DA0();
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v67 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v58 = v7;
  swift_getAssociatedTypeWitness();
  sub_2584288D0();
  v59 = a4;
  sub_2584292D0();
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 64);
  v26 = (v23 + 63) >> 6;
  v66 = TupleTypeMetadata2 - 8;
  v68 = (v12 + 16);
  v70 = (v12 + 32);
  v64 += 4;
  v60 = v12;
  v61 = a1;
  v62 = (v12 + 8);
  v54 = (v71 + 8);

  v28 = 0;
  v71 = TupleTypeMetadata2;
  while (v25)
  {
    v29 = v28;
LABEL_15:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v29 << 6);
    v35 = v60;
    v36 = (*(v61 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = v69;
    (*(v60 + 16))(v69, *(v61 + 56) + *(v60 + 72) * v34, a2);
    v40 = v71;
    v41 = *(v71 + 48);
    v42 = v67;
    *v67 = v38;
    v42[1] = v37;
    v43 = *(v35 + 32);
    v32 = v42;
    v44 = v39;
    TupleTypeMetadata2 = v40;
    v43(v42 + v41, v44, a2);
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v32, 0, 1, TupleTypeMetadata2);

LABEL_16:
    (*v64)(v21, v32, v65);
    if ((*(v45 + 48))(v21, 1, TupleTypeMetadata2) == 1)
    {
    }

    v46 = a2;
    v47 = &v21[*(TupleTypeMetadata2 + 48)];
    v48 = v63;
    (*v70)(v63, v47, a2);
    v49 = [swift_getObjCClassFromMetadata() standardUserDefaults];
    v50 = sub_258428630();

    v51 = [v49 BOOLForKey_];

    if (v51)
    {
      (*v68)(v69, v48, v46);
      v52 = AssociatedTypeWitness;
      swift_dynamicCast();
      v53 = v55;
      sub_258428E40();
      (*v54)(v53, v52);
    }

    result = (*v62)(v48, v46);
    a2 = v46;
    TupleTypeMetadata2 = v71;
  }

  if (v26 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v26;
  }

  v31 = v30 - 1;
  v32 = v67;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v45 = *(TupleTypeMetadata2 - 8);
      (*(v45 + 56))(v67, 1, 1, TupleTypeMetadata2);
      v25 = 0;
      v28 = v31;
      goto LABEL_16;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2583FB730()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_258428630();
  v2 = [v0 integerForKey_];

  result = _s17MeasureFoundation18RecordReplayOptionO8rawValueACSgSi_tcfC_0(v2);
  if (result == 5)
  {
    __break(1u);
  }

  else
  {
    static NSUserDefaults.recordReplayOption = result;
  }

  return result;
}

char *NSUserDefaults.recordReplayOption.unsafeMutableAddressor()
{
  if (qword_27F927B10 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.recordReplayOption;
}

uint64_t static NSUserDefaults.recordReplayOption.getter()
{
  if (qword_27F927B10 != -1)
  {
    swift_once();
  }

  return static NSUserDefaults.recordReplayOption;
}

size_t static vImage_Buffer.make(width:height:rowBytes:allocating:)(size_t result, uint64_t a2, int64_t a3, char a4, char a5)
{
  if ((a4 & 1) != 0 && (a3 = result, (result & 0x8000000000000000) != 0))
  {
    __break(1u);
  }

  else
  {
    if ((a5 & 1) == 0)
    {
      return 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      result = a2 * a3;
      if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
      {
        return malloc(result);
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

{
  if (((a2 | result) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a4)
    {
      v5 = result;
    }

    else
    {
      v5 = a3;
    }

    if ((a5 & 1) == 0)
    {
      return 0;
    }

    result = a2 * v5;
    if ((a2 * v5) >> 64 == (a2 * v5) >> 63)
    {
      return malloc(result);
    }
  }

  __break(1u);
  return result;
}

double static vImage_Buffer.wrap(pixelBuffer:planeIndex:srcRect:)@<D0>(__CVBuffer *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2583FD594(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

Swift::Void __swiftcall vImage_Buffer.deallocate()()
{
  if (!*v0)
  {
    __break(1u);
  }

  JUMPOUT(0x259C7FB80);
}

uint64_t static vImage_Buffer.makeKernel(width:height:value:)(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  if (a3)
  {
    v4 = result;
  }

  else
  {
    v4 = a2;
  }

  v5 = result * v4;
  if ((result * v4) >> 64 != (result * v4) >> 63)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_2584288E0();
  *(result + 16) = v5;
  v7 = (result + 32);
  if (v5 < 4)
  {
    v8 = 0;
    goto LABEL_21;
  }

  if (v5 >= 0x10)
  {
    v8 = v5 & 0x7FFFFFFFFFFFFFF0;
    v9 = vdupq_n_s16(a4);
    v10 = (result + 48);
    v11 = v5 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v10[-1] = v9;
      *v10 = v9;
      v10 += 2;
      v11 -= 16;
    }

    while (v11);
    if (v5 == v8)
    {
      return result;
    }

    if ((v5 & 0xC) == 0)
    {
      v7 += v8;
LABEL_21:
      v16 = v5 - v8;
      do
      {
        *v7++ = a4;
        --v16;
      }

      while (v16);
      return result;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;
  v8 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v5 & 0x7FFFFFFFFFFFFFFCLL;
  v13 = vdup_n_s16(a4);
  v14 = 2 * v12 + 32;
  v15 = v12 - (v5 & 0x7FFFFFFFFFFFFFFCLL);
  do
  {
    *(result + v14) = v13;
    v14 += 8;
    v15 += 4;
  }

  while (v15);
  if (v5 != v8)
  {
    goto LABEL_21;
  }

  return result;
}

void *static vImage_Buffer.makeTempBufferForConvolvePlanar8(srcImageBuffer:kernel:kernelWidth:kernelHeight:divisor:flags:)(void *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4, uint64_t a5, uint64_t kernel_width, uint64_t a7, char a8, int32_t divisor, uint64_t a10)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    a7 = kernel_width;
  }

  dest.data = a1;
  dest.height = a2;
  dest.width = a3;
  dest.rowBytes = a4;
  if (a7 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (kernel_width > 0xFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a7 | kernel_width | a10) < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if ((a10 | 0x80) > 0xFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v10 = vImageConvolve_Planar8(&dest, &dest, 0, 0, 0, (a5 + 32), a7, kernel_width, divisor, 0, a10 | 0x80);
  if (v10 < 1)
  {
    return 0;
  }

  else
  {
    return malloc(v10);
  }
}

vImage_Error static vImage_Buffer.scalePlanar8(srcImageBuffer:dstImageBuffer:dstRect:flags:tempBuffer:)@<X0>(void *a1@<X0>, vImagePixelCount a2@<X1>, vImagePixelCount a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, size_t a8@<X7>, uint64_t a9@<X8>, CGFloat a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>, unint64_t flags, void *tempBuffer)
{
  v15 = a8;
  v35 = *MEMORY[0x277D85DE8];
  src.data = a1;
  src.height = a2;
  src.width = a3;
  src.rowBytes = a4;
  dest.rowBytes = a8;
  Width = CGRectGetWidth(*&a10);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (Width <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (Width >= 1.84467441e19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  dest.width = Width;
  v36.origin.x = a10;
  v36.origin.y = a11;
  v36.size.width = a12;
  v36.size.height = a13;
  Height = CGRectGetHeight(v36);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (Height <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (Height >= 1.84467441e19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  dest.height = Height;
  if (a11 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a11 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = a11 * v15;
  if ((a11 * v15) >> 64 != v26 >> 63)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (a10 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a10 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = __OFADD__(v26, a10);
  v28 = v26 + a10;
  if (v27)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!a5)
  {
    goto LABEL_36;
  }

  dest.data = (a5 + v28);
  if ((flags & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (HIDWORD(flags))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  result = vImageScale_Planar8(&src, &dest, tempBuffer, flags);
  v30 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_25842CCB0;
    sub_258428FC0();

    v32 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v32);

    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 32) = 0xD00000000000001BLL;
    *(v31 + 40) = 0x8000000258436CA0;
    sub_2584293A0();

    a5 = 0;
    a6 = 0;
    a7 = 0;
    v15 = 0;
  }

  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = v15;
  *(a9 + 32) = v30 != 0;
  return result;
}