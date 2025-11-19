void sub_2583DAC8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    RingBuffer.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    RingBuffer.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t RingBuffer.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v11 = v2[2];
  v21 = *v2;
  v10 = v21;
  v22 = v9;
  v23 = v11;
  swift_getWitnessTable();
  if (sub_258428B20() < v10)
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_258428980();
    return sub_258428930();
  }

  sub_258428980();
  sub_2584288C0();
  v13 = v2[2];
  sub_2583DB88C(v9, v3[2]);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v15 = v13;
  }

  result = (*(v6 + 24))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, a1, v5);
  v16 = v3[1];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = *v3;
  if (!*v3)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v18 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_13;
  }

  v3[1] = v18 % v19;
  return result;
}

Swift::Void __swiftcall RingBuffer.clear()()
{
  sub_258428980();
  sub_258428970();
  *(v0 + 8) = 0;
}

Swift::Int __swiftcall RingBuffer.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2583DAFAC()
{
  swift_getWitnessTable();

  return sub_258428A80();
}

uint64_t sub_2583DB08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2583DB110()
{
  swift_getWitnessTable();

  return sub_258428A60();
}

uint64_t sub_2583DB194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2583DB208@<X0>(uint64_t *a1@<X8>)
{
  result = RingBuffer.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_2583DB238(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_2583DB310(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_2583DB2C8;
}

void sub_2583DB2C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2583DB310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v10 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v10;
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  a1[2] = v11;
  RingBuffer.subscript.getter(a2, a3, a4);
  return sub_2583D89BC;
}

uint64_t sub_2583DB3FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

void *sub_2583DB4E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2583DB500(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_2583DB518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2583DB56C()
{
  swift_getWitnessTable();
  v0 = sub_2583DBC6C();

  return v0;
}

uint64_t RingBuffer<A>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v7 = type metadata accessor for RingBuffer();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x259C7E0F0](&v18, v7, WitnessTable);
  v16 = v18;
  v17 = v19;
  v15[2] = a4;
  v15[3] = a5;
  v9 = sub_258428FD0();
  v15[4] = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v12 = sub_2583D5394(sub_2583DB8F8, v15, v9, a4, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);

  v13 = MEMORY[0x259C7E180](v12, a4);

  return v13;
}

float RingBuffer<A>.average()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    v5 = 0.0;
    return v5 / v3;
  }

  if (v3 <= 7)
  {
    v4 = 0;
    v5 = 0.0;
LABEL_8:
    v8 = v3 - v4;
    v9 = (a3 + 4 * v4 + 32);
    do
    {
      v10 = *v9++;
      v5 = v5 + v10;
      --v8;
    }

    while (v8);
    return v5 / v3;
  }

  v4 = v3 & 0x7FFFFFFFFFFFFFF8;
  v6 = a3 + 48;
  v5 = 0.0;
  v7 = v3 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v5 = (((((((v5 + COERCE_FLOAT(*(v6 - 16))) + COERCE_FLOAT(HIDWORD(*(v6 - 16)))) + COERCE_FLOAT(*(v6 - 8))) + COERCE_FLOAT(HIDWORD(*(v6 - 16)))) + COERCE_FLOAT(*v6)) + COERCE_FLOAT(HIDWORD(*v6))) + COERCE_FLOAT(*(v6 + 8))) + COERCE_FLOAT(HIDWORD(*v6));
    v6 += 32;
    v7 -= 8;
  }

  while (v7);
  if (v3 != v4)
  {
    goto LABEL_8;
  }

  return v5 / v3;
}

double RingBuffer<A>.average()(double a1, double a2, uint64_t a3, uint64_t a4, float32x4_t *a5)
{
  if (qword_27F9279F0 != -1)
  {
    v11 = a5;
    swift_once();
    a5 = v11;
  }

  v5 = static SIMD3<>.zero;
  v6 = a5[1].u64[0];
  if (v6)
  {
    v7 = a5 + 2;
    v8 = a5[1].i64[0];
    do
    {
      v9 = *v7++;
      HIDWORD(a2) = v9.i32[1];
      v5 = vaddq_f32(v5, v9);
      v5.i32[3] = 0;
      --v8;
    }

    while (v8);
  }

  *&a2 = v6;
  *&result = vdivq_f32(v5, vdupq_lane_s32(*&a2, 0)).u64[0];
  return result;
}

uint64_t sub_2583DB88C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2583DBA6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2583DBAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2583DBAF0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2583DBB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2584285E0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2583DBC70()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2584285E0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_258428BD0();
  result = sub_2584285E0();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t MetalScene.deinit()
{

  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

MTLRenderPassDescriptor_optional __swiftcall MetalScene.makeDefaultRenderPassDescriptor()()
{
  v1 = *(v0 + 48);
  if (!v1 || ([v1 copy], sub_258428E20(), swift_unknownObjectRelease(), sub_2583DBFE4(), (swift_dynamicCast() & 1) == 0))
  {
    v3 = 0;
    goto LABEL_10;
  }

  v3 = v13;
  v4 = [v13 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v5 setLoadAction_];

  v7 = [v13 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v8 setStoreAction_];

  v9 = [v13 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v10 setClearColor_];

  v6 = [v13 depthAttachment];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v6;
  [v6 setLoadAction_];

  v6 = [v13 depthAttachment];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v6;
  [v6 setStoreAction_];

LABEL_10:
  v6 = v3;
LABEL_16:
  result.value.super.isa = v6;
  result.is_nil = v2;
  return result;
}

unint64_t sub_2583DBFE4()
{
  result = qword_27F928D90;
  if (!qword_27F928D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F928D90);
  }

  return result;
}

void sub_2583DC030(void *a1)
{
  v7 = MetalScene.makeDefaultRenderPassDescriptor()();
  if (!v7)
  {
    return;
  }

  v2 = [v7 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v3 setLoadAction_];

  v4 = [v7 depthAttachment];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setLoadAction_];

  v6 = [a1 renderCommandEncoderWithDescriptor_];
  if (v6)
  {
    [v6 endEncoding];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2583DC184()
{
  v1 = sub_2584284B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72) == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v6 = [Strong currentRenderPassDescriptor];

    if (v6)
    {
      [v6 copy];
      sub_258428E20();
      swift_unknownObjectRelease();
      sub_2583DBFE4();
      v7 = swift_dynamicCast();
      v8 = aBlock[6];
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v0 + 48);
      *(v0 + 48) = v8;

      v10 = [*(v0 + 56) commandBuffer];
      if (v10)
      {
        v11 = v10;
        sub_2584284A0();
        v12 = v0;
        sub_258428CF0();
        (*(v2 + 8))(v4, v1);
        v13 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_2583DC6B0;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2583AF0D4;
        aBlock[3] = &block_descriptor_3;
        v14 = _Block_copy(aBlock);

        [v11 addCompletedHandler_];
        _Block_release(v14);
        sub_2583DC030(v11);
        swift_beginAccess();
        v15 = *(**(v12 + 16) + 272);

        v15(v11);

        v16 = swift_unknownObjectUnownedLoadStrong();
        v17 = [v16 currentDrawable];

        if (v17)
        {
          [v11 presentDrawable_];
          swift_unknownObjectRelease();
          [v11 commit];

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_2583DC4BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

void sub_2583DC534()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);
    sub_258428D00();
  }
}

uint64_t MetalScene.__deallocating_deinit()
{

  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2583DC604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2583DC678()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2583DC6D0(uint64_t a1, intptr_t a2)
{
  type metadata accessor for MetalNode();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 32) = 257;
  *(v4 + 34) = 1;
  v6 = qword_27F927FE8;
  *(v4 + 16) = qword_27F927FE8;
  *(v4 + 24) = v5;
  if (v6 == -1)
  {
    __break(1u);
  }

  else
  {
    qword_27F927FE8 = v6 + 1;
    *(v2 + 16) = v4;
    *(v2 + 48) = 0;
    *(v2 + 72) = 0;
    swift_unknownObjectUnownedInit();
    if (qword_27F9279B8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  *(v2 + 32) = static MetalBundle.device;
  v7 = qword_27F9279C0;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  *(v2 + 40) = static MetalBundle.library;
  swift_unknownObjectRetain();
  result = [swift_unknownObjectRetain() newCommandQueue];
  if (result)
  {
    v9 = result;
    swift_unknownObjectRelease();
    *(v2 + 56) = v9;
    *(v2 + 64) = dispatch_semaphore_create(a2);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_DWORD *UnsafeMutablePointer<A>.init()()
{
  result = swift_slowAlloc();
  *result = 0;
  return result;
}

__n64 SCNMatrix4.position.getter()
{
  result.n64_u32[0] = *(v0 + 12);
  result.n64_u32[1] = *(v0 + 28);
  return result;
}

__n64 SCNMatrix4.forward.getter()
{
  result.n64_u32[0] = *(v0 + 8);
  result.n64_u32[1] = *(v0 + 24);
  return result;
}

__n64 SCNMatrix4.up.getter()
{
  result.n64_u32[0] = *(v0 + 4);
  result.n64_u32[1] = *(v0 + 20);
  return result;
}

__n64 SCNMatrix4.right.getter()
{
  result.n64_u32[0] = *v0;
  result.n64_u32[1] = v0[4];
  return result;
}

float SCNMatrix4.upAngle.getter()
{
  if (qword_27F927A00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 20);
  v1.i32[1] = *(v0 + 36);
  v2 = vmul_f32(vext_s8(*&static SIMD3<>.up, *&vextq_s8(static SIMD3<>.up, static SIMD3<>.up, 8uLL), 4uLL), v1);
  v3 = ((*(v0 + 4) * *&static SIMD3<>.up) + v2.f32[0]) + v2.f32[1];

  return acosf(v3);
}

Swift::Float __swiftcall SCNMatrix4.alignUp()()
{
  if (qword_27F927A00 != -1)
  {
    swift_once();
  }

  v1.i32[0] = *(v0 + 4);
  v13 = static SIMD3<>.up;
  v14 = v1;
  v11 = *(v0 + 20);
  v12 = *(v0 + 36);
  v2 = vmul_f32(vext_s8(*&static SIMD3<>.up, *&vextq_s8(v13, v13, 8uLL), 4uLL), __PAIR64__(v12, v11));
  result = acosf(((v1.f32[0] * *&static SIMD3<>.up) + v2.f32[0]) + v2.f32[1]);
  if (fabsf(result) > 0.001)
  {
    v4 = v14;
    v4.i32[1] = v11;
    v4.i32[2] = v12;
    v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(v13)), v4, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
    v6 = *(v0 + 16);
    *&v17.m11 = *v0;
    *&v17.m21 = v6;
    v7 = *(v0 + 48);
    *&v17.m31 = *(v0 + 32);
    *&v17.m41 = v7;
    v8 = result;
    SCNMatrix4MakeRotation(&b, -result, v5.f32[2], v5.f32[0], v5.f32[1]);
    a = v17;
    SCNMatrix4Mult(&v18, &a, &b);
    result = v8;
    v9 = *&v18.m21;
    *v0 = *&v18.m11;
    *(v0 + 16) = v9;
    v10 = *&v18.m41;
    *(v0 + 32) = *&v18.m31;
    *(v0 + 48) = v10;
  }

  return result;
}

double * infix(_:_:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2[1];
  *&v11.m11 = *a2;
  *&v11.m21 = v4;
  v5 = a2[3];
  *&v11.m31 = a2[2];
  *&v11.m41 = v5;
  v6 = a1[1];
  *&a.m11 = *a1;
  *&a.m21 = v6;
  v7 = a1[3];
  *&a.m31 = a1[2];
  *&a.m41 = v7;
  SCNMatrix4Mult(&v13, &a, &v11);
  v8 = *&v13.m21;
  *a3 = *&v13.m11;
  a3[1] = v8;
  result = *&v13.m31;
  v10 = *&v13.m41;
  a3[2] = *&v13.m31;
  a3[3] = v10;
  return result;
}

Swift::Void __swiftcall SCNMatrix4.lerp(to:t:)(SCNMatrix4 *to, Swift::Float t)
{
  v3 = vaddq_f32(v2[1], vmulq_n_f32(vsubq_f32(*&to->m21, v2[1]), t));
  *v2 = vaddq_f32(*v2, vmulq_n_f32(vsubq_f32(*&to->m11, *v2), t));
  v2[1] = v3;
  v4 = vaddq_f32(v2[2], vmulq_n_f32(vsubq_f32(*&to->m31, v2[2]), t));
  v5 = vaddq_f32(v2[3], vmulq_n_f32(vsubq_f32(*&to->m41, v2[3]), t));
  v2[2] = v4;
  v2[3] = v5;
}

double * infix(_:_:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_258428BE0();
  v4 = a1[1];
  *&a.m11 = *a1;
  *&a.m21 = v4;
  v5 = a1[3];
  *&a.m31 = a1[2];
  *&a.m41 = v5;
  SCNMatrix4Mult(&v11, &a, &v9);
  v6 = *&v11.m21;
  *a2 = *&v11.m11;
  a2[1] = v6;
  result = *&v11.m31;
  v8 = *&v11.m41;
  a2[2] = *&v11.m31;
  a2[3] = v8;
  return result;
}

uint64_t SCNNode.findTypeInParents<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v4 = sub_258428DA0();
  MEMORY[0x28223BE20](v4);
  v6 = v16 - v5;
  v8 = (v7 + 8);
  v9 = v2;
  while (1)
  {
    v16[1] = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E00);
    if (swift_dynamicCast())
    {
      break;
    }

    v11 = *(*(a1 - 8) + 56);
    v11(v6, 1, 1, a1);
    (*v8)(v6, v4);
    v9 = [v10 parentNode];

    if (!v9)
    {
      return (v11)(v16[0], 1, 1, a1);
    }
  }

  v13 = *(a1 - 8);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, a1);
  v15 = v16[0];
  (*(v13 + 32))(v16[0], v6, a1);
  return (v14)(v15, 0, 1, a1);
}

Swift::Bool __swiftcall SCNNode.isDecendent(of:)(SCNNode of)
{
  sub_2583DCEAC();
  v2 = v1;
  v3 = v2;
  while (1)
  {
    v4 = v2;
    v5 = v3;
    v6 = sub_258428D70();

    if (v6)
    {
      break;
    }

    v3 = [v5 parentNode];

    if (!v3)
    {
      return v6 & 1;
    }
  }

  return v6 & 1;
}

unint64_t sub_2583DCEAC()
{
  result = qword_27F928E08;
  if (!qword_27F928E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F928E08);
  }

  return result;
}

Swift::Void __swiftcall SCNNode.removeAllChildren()()
{
  v1 = [v0 childNodes];
  sub_2583DCEAC();
  v2 = sub_258428860();

  if (v2 >> 62)
  {
    v3 = sub_258428F10();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x259C7E900](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromParentNode];
  }

LABEL_10:
}

float32x2_t SCNNode.boundingSize.getter()
{
  sub_2583DCEAC();
  sub_258428CE0();
  sub_258428CE0();
  return vsub_f32(v2, v1);
}

void SCNNode.setForwardDirection(direction:)(float32x4_t a1)
{
  if (qword_27F9279F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = vmulq_f32(a1, a1);
  v3 = sqrtf(v2.f32[2] + vaddv_f32(*v2.f32));
  if (v3 > 0.0 && a1.f32[2] < 1.0)
  {
    acosf(a1.f32[2] / v3);
    sub_258428C20();

    [v1 setRotation_];
  }
}

uint64_t sub_2583DD158()
{
  result = sub_258428C00();
  static SCNVector3.one = v1;
  *algn_27F92F294 = v2;
  dword_27F92F298 = v3;
  return result;
}

int *SCNVector3.one.unsafeMutableAddressor()
{
  if (qword_27F927AA0 != -1)
  {
    swift_once();
  }

  return &static SCNVector3.one;
}

float static SCNVector3.one.getter()
{
  if (qword_27F927AA0 != -1)
  {
    swift_once();
  }

  return *&static SCNVector3.one;
}

uint64_t sub_2583DD234()
{
  result = sub_258428C00();
  static SCNVector3.zero = v1;
  unk_27F92F2A0 = v2;
  dword_27F92F2A4 = v3;
  return result;
}

int *SCNVector3.zero.unsafeMutableAddressor()
{
  if (qword_27F927AA8 != -1)
  {
    swift_once();
  }

  return &static SCNVector3.zero;
}

float static SCNVector3.zero.getter()
{
  if (qword_27F927AA8 != -1)
  {
    swift_once();
  }

  return *&static SCNVector3.zero;
}

uint64_t sub_2583DD310()
{
  result = sub_258428C00();
  static SCNVector3.forward = v1;
  *algn_27F92F2AC = v2;
  dword_27F92F2B0 = v3;
  return result;
}

int *SCNVector3.forward.unsafeMutableAddressor()
{
  if (qword_27F927AB0 != -1)
  {
    swift_once();
  }

  return &static SCNVector3.forward;
}

float static SCNVector3.forward.getter()
{
  if (qword_27F927AB0 != -1)
  {
    swift_once();
  }

  return *&static SCNVector3.forward;
}

uint64_t sub_2583DD3EC()
{
  result = sub_258428C00();
  static SCNVector3.up = v1;
  unk_27F92F2B8 = v2;
  dword_27F92F2BC = v3;
  return result;
}

int *SCNVector3.up.unsafeMutableAddressor()
{
  if (qword_27F927AB8 != -1)
  {
    swift_once();
  }

  return &static SCNVector3.up;
}

float static SCNVector3.up.getter()
{
  if (qword_27F927AB8 != -1)
  {
    swift_once();
  }

  return *&static SCNVector3.up;
}

SCNVector3 __swiftcall SCNVector3.init(_:)(Swift::Float a1)
{
  MEMORY[0x2821FF8A0](a1, a1, a1);
  result.z = v3;
  result.y = v2;
  result.x = v1;
  return result;
}

uint64_t SCNVector3.nsArray.getter(float a1, float a2, float a3)
{
  sub_258385DB0(0, &qword_27F928E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25842BFB0;
  v7 = MEMORY[0x277D83A90];
  *(v6 + 56) = MEMORY[0x277D83A90];
  *(v6 + 32) = a1;
  *(v6 + 88) = v7;
  *(v6 + 64) = a2;
  *(v6 + 120) = v7;
  *(v6 + 96) = a3;
  return MEMORY[0x259C7E620]();
}

uint64_t static SCNVector3.make(withNSArray:)(void *a1)
{
  v2 = sub_2584282B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v29 = MEMORY[0x277D84F90];
  sub_258392194(0, v6 & ~(v6 >> 63), 0);
  v7 = v29;
  result = sub_258428D20();
  if (v6 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v3;
  v9 = MEMORY[0x277D84F70];
  if (v6)
  {
    sub_2583DDB44();
    do
    {
      result = sub_258428DC0();
      if (!v28)
      {
        goto LABEL_20;
      }

      sub_25839783C(&v27, &v25);
      sub_258385DB0(0, &qword_27F928320);
      v10 = v9;
      swift_dynamicCast();
      v11 = v24;
      [v24 floatValue];
      v13 = v12;

      __swift_destroy_boxed_opaque_existential_0(&v27);
      v29 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_258392194((v14 > 1), v15 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v15 + 1;
      *(v7 + 4 * v15 + 32) = v13;
      --v6;
      v9 = v10;
    }

    while (v6);
  }

  sub_2583DDB44();
  sub_258428DC0();
  while (v26)
  {
    sub_2583897F8(&v25, &v27);
    sub_25839783C(&v27, &v25);
    sub_258385DB0(0, &qword_27F928320);
    swift_dynamicCast();
    v16 = v24;
    [v24 floatValue];
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_0(&v27);
    v29 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_258392194((v19 > 1), v20 + 1, 1);
      v7 = v29;
    }

    *(v7 + 16) = v20 + 1;
    *(v7 + 4 * v20 + 32) = v18;
    sub_258428DC0();
  }

  (*(v23 + 8))(v5, v2);
  result = sub_2583A3D90(&v25);
  v21 = *(v7 + 16);
  if (!v21)
  {
    goto LABEL_17;
  }

  if (v21 != 1)
  {
    if (v21 >= 3)
    {
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t * infix(_:_:)()
{
  return sub_258428C10();
}

{
  return sub_258428C10();
}

float32x2_t += infix(_:_:)(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  v4 = a1[1].f32[0] + a4;
  a2.f32[1] = a3;
  result = vadd_f32(*a1, a2);
  *a1 = result;
  a1[1].f32[0] = v4;
  return result;
}

float32x2_t -= infix(_:_:)(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  v4 = a1[1].f32[0] - a4;
  a2.f32[1] = a3;
  result = vsub_f32(*a1, a2);
  *a1 = result;
  a1[1].f32[0] = v4;
  return result;
}

float32x2_t *= infix(_:_:)(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  v4 = a1[1].f32[0] * a4;
  a2.f32[1] = a3;
  result = vmul_f32(*a1, a2);
  *a1 = result;
  a1[1].f32[0] = v4;
  return result;
}

uint64_t *= infix(_:_:)(_DWORD *a1)
{
  result = sub_258428C10();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

float32x2_t /= infix(_:_:)(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  v4 = a1[1].f32[0] / a4;
  a2.f32[1] = a3;
  result = vdiv_f32(*a1, a2);
  *a1 = result;
  a1[1].f32[0] = v4;
  return result;
}

uint64_t /= infix(_:_:)(_DWORD *a1)
{
  result = sub_258428C10();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_2583DDB44()
{
  result = qword_27F928E18;
  if (!qword_27F928E18)
  {
    sub_2584282B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E18);
  }

  return result;
}

uint64_t SCNVector4.nsArray.getter(float a1, float a2, float a3, float a4)
{
  sub_258385DB0(0, &qword_27F928E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25842D9A0;
  v9 = MEMORY[0x277D83A90];
  *(v8 + 56) = MEMORY[0x277D83A90];
  *(v8 + 32) = a1;
  *(v8 + 88) = v9;
  *(v8 + 64) = a2;
  *(v8 + 120) = v9;
  *(v8 + 96) = a3;
  *(v8 + 152) = v9;
  *(v8 + 128) = a4;
  return MEMORY[0x259C7E620]();
}

uint64_t static SCNVector4.make(withNSArray:)(void *a1)
{
  v2 = sub_2584282B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v29 = MEMORY[0x277D84F90];
  sub_258392194(0, v6 & ~(v6 >> 63), 0);
  v7 = v29;
  result = sub_258428D20();
  if (v6 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v3;
  v9 = MEMORY[0x277D84F70];
  if (v6)
  {
    sub_2583DDB44();
    do
    {
      result = sub_258428DC0();
      if (!v28)
      {
        goto LABEL_22;
      }

      sub_25839783C(&v27, &v25);
      sub_258385DB0(0, &qword_27F928320);
      v10 = v9;
      swift_dynamicCast();
      v11 = v24;
      [v24 floatValue];
      v13 = v12;

      __swift_destroy_boxed_opaque_existential_0(&v27);
      v29 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_258392194((v14 > 1), v15 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v15 + 1;
      *(v7 + 4 * v15 + 32) = v13;
      --v6;
      v9 = v10;
    }

    while (v6);
  }

  sub_2583DDB44();
  sub_258428DC0();
  while (v26)
  {
    sub_2583897F8(&v25, &v27);
    sub_25839783C(&v27, &v25);
    sub_258385DB0(0, &qword_27F928320);
    swift_dynamicCast();
    v16 = v24;
    [v24 floatValue];
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_0(&v27);
    v29 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_258392194((v19 > 1), v20 + 1, 1);
      v7 = v29;
    }

    *(v7 + 16) = v20 + 1;
    *(v7 + 4 * v20 + 32) = v18;
    sub_258428DC0();
  }

  (*(v23 + 8))(v5, v2);
  result = sub_2583A3D90(&v25);
  v21 = *(v7 + 16);
  if (!v21)
  {
    goto LABEL_18;
  }

  if (v21 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21 >= 3)
  {
    if (v21 != 3)
    {
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t property wrapper backing initializer of ScreenPoint.pos(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E20);
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 24) = v3;
  *(v2 + 16) = a1;
  return v2;
}

double ScreenPoint.pos.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation11ScreenPoint__pos;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);
  os_unfair_lock_unlock(v3);

  return v4;
}

uint64_t ScreenPoint.pos.setter(double a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation11ScreenPoint__pos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 24);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  *(v4 + 16) = a1;
  os_unfair_lock_unlock(v5);
}

void (*ScreenPoint.pos.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17MeasureFoundation11ScreenPoint__pos;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 56) = v6;
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  os_unfair_lock_unlock(v7);
  *(v4 + 48) = v8;
  return sub_2583DE220;
}

void sub_2583DE220(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 48);
  v4 = *(v2 + 24);
  os_unfair_lock_lock(v4);
  *(v2 + 16) = v3;
  os_unfair_lock_unlock(v4);

  free(v1);
}

id ScreenPoint.__allocating_init(_:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC17MeasureFoundation11ScreenPoint__pos;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E20);
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 24) = v6;
  *(v5 + 16) = a1;
  *&v3[v4] = v5;
  swift_endAccess();
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ScreenPoint.init(_:)(double a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation11ScreenPoint__pos;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E20);
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 24) = v5;
  *(v4 + 16) = a1;
  *&v1[v3] = v4;
  swift_endAccess();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ScreenPoint();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ScreenPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenPoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2583DE508(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_258428F10();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_258429060();
    result = sub_258428EB0();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_258429060();
  result = sub_258428E80();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_2583E3858(v23, v24, v25, a1);
    sub_258429030();
    sub_258429070();
    sub_258429080();
    result = sub_258429040();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_258428ED0())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E38);
      v7 = sub_2584289F0();
      sub_258428F70();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_2583E3C34(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_2583E3C34(v10, v9, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_27;
          }
        }

        result = sub_2583E3C34(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2583DE804(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_258429060();
    v4 = v1 + 64;
    result = sub_258428E80();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      sub_258429030();
      sub_258429070();
      v1 = v19;
      sub_258429080();
      result = sub_258429040();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_2583E3C34(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_2583E3C34(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

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
  }

  return result;
}

void (*sub_2583DEA18(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_2584283F0();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2583E2990(v4, v9);
  return sub_2583DEB30;
}

void sub_2583DEB30(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_2583DEBA8(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2583E2B64(v4, a2);
  return sub_2583DEC20;
}

void sub_2583DEC20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t *MeasureCore.shared.unsafeMutableAddressor()
{
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  return &static MeasureCore.shared;
}

char *MeasureCore.isTrackingVGAEnabled.unsafeMutableAddressor()
{
  if (qword_27F927AC0 != -1)
  {
    swift_once();
  }

  return &static MeasureCore.isTrackingVGAEnabled;
}

void sub_2583DED0C(ARFrame a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>, unint64_t a4@<D1>)
{
  v5 = *(v4 + 88);
  if (v5)
  {
    swift_beginAccess();
    v10 = 0;
    if ((*(v5 + 432) & 1) != 0 || (v11 = *(v5 + 356), v35 = *(v5 + 384), v36 = *(v5 + 368), v31 = *(v5 + 416), v33 = *(v5 + 400), , LocalPlaneDetector.hitTest(screenPoint:for:)(&v38, __PAIR128__(a4, a3), a1), , v38.is_nil))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
      type metadata accessor for WorldPlane();
      v12 = swift_allocObject();
      *(v12 + 24) = xmmword_25842EC50;
      *(v12 + 40) = 0x3F5DB22D40000000;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
      v20 = swift_allocObject();
      v21 = v19;
      v22 = swift_slowAlloc();
      *v22 = 0;
      *(v20 + 16) = v21;
      *(v20 + 24) = v22;
      *(v12 + 16) = v20;
      swift_endAccess();
      *(v12 + 48) = 3;
      *(v12 + 52) = 1.0 - v11;
      *(v12 + 56) = 1065353216;
      memset(v49, 0, sizeof(v49));
      v50 = 1;
      if (qword_27F9279F0 != -1)
      {
        swift_once();
      }

      WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v21, v49, static SIMD3<>.zero);

      sceneKitToARKit(_:)(v24, v23);
      v37 = v25;
      v32 = v27;
      v34 = v26;
      v30 = v28;
      v39 = xmmword_25842EC60;
      v40 = v25;
      v41 = v26;
      v42 = v27;
      v43 = v28;
      v44 = 0;
      v45 = 0;
      v13 = 1;
      v46 = 1;
      v47 = v12;
      v48 = 0;
      sub_258411874();
      v18 = v30;
      v17 = v32;
      v16 = v34;
      v14 = xmmword_25842EC60;
      v10 = v29;
      v15 = v37;
    }

    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 64) = v18;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = v13;
    *(a2 + 104) = v12;
    *(a2 + 112) = v10;
  }

  else
  {
    __break(1u);
  }
}

void sub_2583DEFAC(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>)
{
  v4 = *(v3 + 88);
  if (v4)
  {
    swift_beginAccess();
    v6 = 0;
    if (*(v4 + 432) & 1) != 0 || (v7 = *(v4 + 356), v29 = *(v4 + 384), v31 = *(v4 + 368), v26 = *(v4 + 416), v27 = *(v4 + 400), , LocalPlaneDetector.hitTest(maxDistanceFromCenter:withRay:)(&v36, 0.8, a2, a3), , (v37))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
      type metadata accessor for WorldPlane();
      v8 = swift_allocObject();
      *(v8 + 24) = xmmword_25842EC50;
      *(v8 + 40) = 0x3F5DB22D40000000;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
      v16 = swift_allocObject();
      v17 = v15;
      v18 = swift_slowAlloc();
      *v18 = 0;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
      *(v8 + 16) = v16;
      swift_endAccess();
      *(v8 + 48) = 3;
      *(v8 + 52) = 1.0 - v7;
      *(v8 + 56) = 1065353216;
      memset(v48, 0, sizeof(v48));
      v49 = 1;
      if (qword_27F9279F0 != -1)
      {
        swift_once();
      }

      WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v17, v48, static SIMD3<>.zero);

      sceneKitToARKit(_:)(v20, v19);
      v35 = v21;
      v30 = v23;
      v32 = v22;
      v28 = v24;
      v38 = xmmword_25842EC60;
      v39 = v21;
      v40 = v22;
      v41 = v23;
      v42 = v24;
      v43 = 0;
      v44 = 0;
      v9 = 1;
      v45 = 1;
      v46 = v8;
      v47 = 0;
      sub_258411874();
      v14 = v28;
      v13 = v30;
      v12 = v32;
      v10 = xmmword_25842EC60;
      v6 = v25;
      v11 = v35;
    }

    *a1 = v10;
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = v9;
    *(a1 + 104) = v8;
    *(a1 + 112) = v6;
  }

  else
  {
    __break(1u);
  }
}

Swift::OpaquePointer_optional __swiftcall MeasureCore.adHitTest(screenPoints:frame:)(Swift::OpaquePointer screenPoints, ARFrame frame)
{
  v2 = sub_2583E0E60(screenPoints._rawValue, frame.super.isa, sub_2583B7438);
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t MeasureCore.mlLabel(of:kernelRadius:)(uint64_t a1, float32x4_t a2)
{
  v3 = *(v2 + 80);
  if (!v3)
  {
    return 33;
  }

  v5 = *(v3 + 272);

  [v5 lock];
  *&v6 = COERCE_DOUBLE(SegmentationProcessor.projectPoint(_:)(a2));
  v8 = &property descriptor for Transformer.viewToClip;
  if (v9)
  {
    v10 = 33;
LABEL_38:
    [v5 v8[385]];

    return v10;
  }

  v11 = *&v6;
  v12 = v7;
  [v5 lock];
  sub_2583E685C(v11, v12);
  v14 = v13;
  v16 = v15;
  result = sub_2583E6944(v13, v15);
  v10 = result;
  if (!result || (result != 33 ? (v18 = a1 <= 0) : (v18 = 1), v18))
  {
LABEL_37:
    [v5 v8[385]];
    goto LABEL_38;
  }

  v19 = -a1;
  v20 = 2 * a1;
  v21 = -a1;
  v30 = 2 * a1;
  v31 = -a1;
LABEL_11:
  v33 = v21;
  v22 = v16 + v21;
  if (__OFADD__(v16, v21))
  {
    goto LABEL_44;
  }

  while (1)
  {
    v23 = v14 + v19;
    if (__OFADD__(v14, v19))
    {
      break;
    }

    v24 = *(v3 + 280);
    if (!v24)
    {
      goto LABEL_23;
    }

    result = 0;
    if ((v23 & 0x8000000000000000) == 0)
    {
      v25 = v24[9];
      if (v23 < v25 && (v22 & 0x8000000000000000) == 0)
      {
        if (v22 >= v24[10])
        {
LABEL_23:
          result = 0;
          goto LABEL_24;
        }

        v26 = v22 * v25;
        if ((v22 * v25) >> 64 != (v22 * v25) >> 63)
        {
          goto LABEL_42;
        }

        v27 = __OFADD__(v26, v23);
        v28 = v26 + v23;
        if (v27)
        {
          goto LABEL_43;
        }

        v29 = *(v24[6] + v28);
        if ([objc_opt_self() jasperAvailable])
        {
          result = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v29);
          if (result == 33)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v29 >= 0xD)
          {
            goto LABEL_35;
          }

          result = byte_25842FBBA[v29];
        }
      }
    }

LABEL_24:
    if (v10 != result)
    {
      goto LABEL_35;
    }

    if (!v20)
    {
      if (v33 != a1)
      {
        v21 = v33 + 1;
        v20 = 2 * a1;
        v19 = -a1;
        if (!__OFADD__(v33, 1))
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_35:
        v10 = 0;
      }

      v8 = &property descriptor for Transformer.viewToClip;
      goto LABEL_37;
    }

    --v20;
    v27 = __OFADD__(v19++, 1);
    if (v27)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t MeasureCore.mlNormal(of:)(float32x4_t a1)
{
  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 272);

  [v3 lock];
  v4 = SegmentationProcessor.projectPoint(_:)(a1);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = SegmentationProcessor.normal(at:)(*&v4, v5);
  }

  [*(v2 + 272) unlock];

  return v7;
}

void sub_2583DF530()
{
  if (qword_27F927AF8 != -1)
  {
    swift_once();
  }

  if (static UIDevice.parsedDeviceIdentifier == 3)
  {
    goto LABEL_4;
  }

  v2 = qword_27F92F308;
  v1 = qword_27F92F310;
  if (static UIDevice.parsedDeviceIdentifier)
  {
    v3 = sub_258429310();

    if ((v3 & 1) == 0 || v2 < 10)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v2 < 10)
    {
      goto LABEL_4;
    }
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v0 = 1;
    goto LABEL_17;
  }

LABEL_4:
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

LABEL_17:
  static MeasureCore.isTrackingVGAEnabled = v0 & 1;
}

uint64_t static MeasureCore.isTrackingVGAEnabled.getter()
{
  if (qword_27F927AC0 != -1)
  {
    swift_once();
  }

  return static MeasureCore.isTrackingVGAEnabled;
}

uint64_t sub_2583DF6D8()
{
  type metadata accessor for MeasureCore();
  swift_allocObject();
  result = sub_2583DFA5C();
  static MeasureCore.shared = result;
  return result;
}

uint64_t static MeasureCore.shared.getter()
{
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }
}

uint64_t MeasureCore.allPlaneAnchors.getter()
{
  os_unfair_lock_lock(*(v0 + 56));
  swift_beginAccess();
  v3 = v0 + 56;
  v2 = *(v0 + 56);
  v1 = *(v3 + 8);

  os_unfair_lock_unlock(v2);
  return v1;
}

uint64_t MeasureCore.planeSelectionStats.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = *(v3 + 224);
    v5 = *(v4 + 80);

    os_unfair_lock_lock(v5);
    swift_beginAccess();
    v14 = *(v4 + 32);
    v15 = *(v4 + 16);
    v12 = *(v4 + 64);
    v13 = *(v4 + 48);
    os_unfair_lock_unlock(v5);

    v8 = v12;
    v7 = v13;
    v10 = v14;
    v9 = v15;
    v11 = 0;
  }

  else
  {
    v11 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v11;
  return result;
}

uint64_t MeasureCore.isPlaneSelectionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t MeasureCore.shouldUpdateSemantics.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 137) = a1;
  return result;
}

uint64_t sub_2583DFA5C()
{
  *(v0 + 16) = 0x3F4CCCCD3E99999ALL;
  *(v0 + 24) = 1003599639;
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 32) = v1;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = sub_258388C0C(MEMORY[0x277D84F90]);
  *(v0 + 48) = sub_258388E04(v2);
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v0 + 56) = v3;
  *(v0 + 64) = sub_258388F14(v2);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_258428630();
  v6 = [v4 BOOLForKey_];

  *(v0 + 72) = v6;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 257;
  return v0;
}

uint64_t MeasureCore.initialize(sceneView:motion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (v3[15])
  {
    result = sub_258429100();
    __break(1u);
  }

  else
  {
    v4[15] = a1;
    v4[16] = a2;
    v8 = objc_opt_self();
    swift_retain_n();
    v9 = a1;
    if ([v8 jasperAvailable])
    {
      type metadata accessor for DepthProcessor();
      swift_allocObject();
      v10 = sub_2583B72B4(v9, a2);
      swift_beginAccess();
      v4[14] = v10;
    }

    type metadata accessor for SegmentationProcessor();
    swift_allocObject();
    v11 = v9;

    v4[10] = sub_2583E53FC(v11, a2, a3);

    type metadata accessor for LocalPlaneDetector();
    swift_allocObject();
    v12 = v11;
    v4[11] = LocalPlaneDetector.init(sceneView:)(v12, a2);

    type metadata accessor for PatchTracker();
    swift_allocObject();
    v13 = v12;

    v4[12] = PatchTracker.init(sceneView:motion:)(v13, a2, a3);

    type metadata accessor for PlaneSelector();
    swift_allocObject();
    v14 = v13;
    sub_2583D1E98(v14, a2, sub_2583E3A58, v4, sub_2583E3A60, v4);
    v16 = v15;

    v4[13] = v16;
  }

  return result;
}

uint64_t sub_2583DFDCC(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_lock(*(a2 + 32));
  swift_beginAccess();
  if (*(*(a2 + 48) + 16) && (sub_2583842F8(a1), (v4 & 1) != 0))
  {
    swift_endAccess();

    v6 = sub_2583DE508(v5);
  }

  else
  {
    swift_endAccess();
    v6 = 0;
  }

  os_unfair_lock_unlock(*(a2 + 32));
  return v6;
}

uint64_t sub_2583DFE7C(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 32));
  swift_beginAccess();

  v3 = sub_2583DE804(v2);

  os_unfair_lock_unlock(*(a1 + 32));
  if (v3 >> 62)
  {
    sub_2583E3B6C();

    v4 = sub_258429110();
  }

  else
  {

    sub_258429320();
    sub_2583E3B6C();
    v4 = v3;
  }

  return v4;
}

Swift::Void __swiftcall MeasureCore.deinitialize()()
{
  if (*(v0 + 120))
  {
    os_unfair_lock_lock(*(v0 + 32));
    swift_beginAccess();
    v1 = MEMORY[0x277D84F98];
    *(v0 + 40) = MEMORY[0x277D84F98];

    swift_beginAccess();
    *(v0 + 48) = v1;

    os_unfair_lock_unlock(*(v0 + 32));
    os_unfair_lock_lock(*(v0 + 56));
    swift_beginAccess();
    *(v0 + 64) = v1;

    os_unfair_lock_unlock(*(v0 + 56));
    MEMORY[0x259C7FB80](*(v0 + 32), -1, -1);
    MEMORY[0x259C7FB80](*(v0 + 56), -1, -1);
    *(v0 + 80) = 0;

    *(v0 + 88) = 0;

    *(v0 + 96) = 0;

    *(v0 + 104) = 0;

    v2 = *(v0 + 120);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
  }

  else
  {
    sub_258429100();
    __break(1u);
  }
}

uint64_t sub_2583E00C4(uint64_t result)
{
  if (*(v1 + 80))
  {
    v2 = result;
    v3 = objc_opt_self();

    if ([v3 hasAppleNeuralEngine])
    {
      result = sub_2583E6C30(v2);
      if (result)
      {
        v4 = 0;
        v5 = result + 64;
        v6 = 1 << *(result + 32);
        v7 = -1;
        if (v6 < 64)
        {
          v7 = ~(-1 << v6);
        }

        v8 = v7 & *(result + 64);
        v9 = (v6 + 63) >> 6;
        v31 = MEMORY[0x277D84F90];
LABEL_7:
        v10 = v4;
        if (!v8)
        {
          goto LABEL_9;
        }

        do
        {
          v4 = v10;
LABEL_12:
          v11 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v12 = v11 | (v4 << 6);
          v13 = result;
          v14 = *(*(result + 48) + 8 * v12);
          v15 = *(result + 56) + (v12 << 6);
          v16 = *(v15 + 8);
          v17 = *(v15 + 32);

          v18 = v14;
          if (v16 != 33)
          {
            v19 = 0.0;
            if (*(v17 + 16))
            {
              v20 = sub_2583842F8(v16);
              if (v21)
              {
                v19 = *(*(v17 + 56) + 4 * v20);
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_25839D978(0, v31[2] + 1, 1, v31);
            }

            v23 = v31[2];
            v22 = v31[3];
            if (v23 >= v22 >> 1)
            {
              v31 = sub_25839D978((v22 > 1), v23 + 1, 1, v31);
            }

            result = v13;
            v31[2] = v23 + 1;
            v24 = &v31[2 * v23];
            v24[4] = v18;
            *(v24 + 40) = v16;
            *(v24 + 11) = (*(&v16 + 1) / v19) * (1.0 - fabsf((v19 / 200.0) + -0.3));
            goto LABEL_7;
          }

          v10 = v4;
          result = v13;
        }

        while (v8);
        while (1)
        {
LABEL_9:
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return result;
          }

          if (v4 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v4);
          ++v10;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        v25 = v31;
        v26 = v31[2];
        if (v26)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        v26 = *(MEMORY[0x277D84F90] + 16);
        if (v26)
        {
LABEL_30:
          v27 = v25 + 11;
          do
          {
            v28 = *v27;
            v29 = *(v27 - 4);
            v30 = *(v27 - 3);
            sub_2583E040C(v29, v30, 1, v28);

            v27 += 4;
            --v26;
          }

          while (v26);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_2583E040C(char a1, void *a2, int a3, float a4)
{
  v5 = v4;
  v58 = a3;
  v9 = sub_2584283F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  os_unfair_lock_lock(*(v4 + 56));
  v19 = [a2 identifier];
  sub_2584283D0();

  swift_beginAccess();
  v20 = *(v5 + 64);
  if (*(v20 + 16) && (v21 = sub_258384260(v18), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    v24 = v23;
  }

  else
  {
    v23 = 0;
  }

  swift_endAccess();
  v25 = *(v10 + 8);
  (v25)(v18, v9);
  os_unfair_lock_unlock(*(v5 + 56));
  if (v23)
  {
    v59 = v23;
    os_unfair_lock_lock(*(v5 + 32));
    v26 = &property descriptor for Transformer.viewToClip;
    v27 = [a2 identifier];
    sub_2584283D0();

    swift_beginAccess();
    v28 = *(v5 + 40);
    if (!*(v28 + 16) || (v29 = sub_258384260(v16), (v30 & 1) == 0))
    {
      swift_endAccess();
      (v25)(v16, v9);
      goto LABEL_16;
    }

    v31 = (*(v28 + 56) + 8 * v29);
    v32 = *v31;
    v33 = v31[1];
    swift_endAccess();
    (v25)(v16, v9);
    v34 = v59;
    if ((v58 & 1) == 0 || v33 < a4)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v32;
      v58 = isUniquelyReferenced_nonNull_native;
      v62 = *(v5 + 48);
      v36 = v62;
      *(v5 + 48) = 0x8000000000000000;
      v26 = sub_2583842F8(v32);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_41;
      }

      LOBYTE(v16) = v37;
      if (v36[3] < v40)
      {
        sub_25839488C(v40, v58);
        v41 = sub_2583842F8(v57);
        if ((v16 & 1) != (v42 & 1))
        {
LABEL_44:
          sub_258429390();
          __break(1u);
          return;
        }

        v26 = v41;
        if (v16)
        {
          goto LABEL_34;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if ((v58 & 1) == 0)
      {
        goto LABEL_42;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_43;
      }

      while (1)
      {
LABEL_34:
        v55 = v62;
        v61 = *(v62[7] + 8 * v26);
        v56 = sub_2583E36D0(a2);
        if (v61)
        {
          *(v55[7] + 8 * v26) = v61;
        }

        else
        {
          sub_258397264(v26, v55);
        }

        *(v5 + 48) = v55;
        swift_endAccess();

        v26 = 0x279897000;
LABEL_16:
        v43 = [a2 *(v26 + 3064)];
        sub_2584283D0();

        swift_beginAccess();
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v5 + 40);
        LOBYTE(v16) = 0;
        *(v5 + 40) = 0x8000000000000000;
        sub_258385684(a1, v13, v44, a4);
        (v25)(v13, v9);
        *(v5 + 40) = v62;
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v5 + 48) + 16) || (sub_2583842F8(a1), (v45 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v62 = *(v5 + 48);
          *(v5 + 48) = 0x8000000000000000;
          sub_258385560(MEMORY[0x277D84FA0], a1, v46);
          *(v5 + 48) = v62;
        }

        swift_endAccess();
        swift_beginAccess();
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v5 + 48);
        v47 = v61;
        *(v5 + 48) = 0x8000000000000000;
        v9 = sub_2583842F8(a1);
        v49 = *(v47 + 16);
        v50 = (v48 & 1) == 0;
        v51 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          break;
        }

        v13 = v48;
        if (*(v47 + 24) >= v51)
        {
          if (v25)
          {
            if (v48)
            {
              goto LABEL_26;
            }

            goto LABEL_40;
          }

          goto LABEL_39;
        }

        sub_25839488C(v51, v25);
        v52 = sub_2583842F8(a1);
        if ((v13 & 1) != (v53 & 1))
        {
          goto LABEL_44;
        }

        v9 = v52;
        if (v13)
        {
LABEL_26:
          v54 = v61;
          v60 = *(*(v61 + 56) + 8 * v9);
          sub_2583C673C(&v62, a2);
          if (v60)
          {
            *(*(v54 + 56) + 8 * v9) = v60;
          }

          else
          {
            sub_258397264(v9, v54);
          }

          v34 = v59;
          *(v5 + 48) = v54;
          swift_endAccess();

          goto LABEL_30;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        sub_2583962C8();
        if ((v16 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_39:
      sub_2583962C8();
      if (v13)
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

LABEL_30:
    os_unfair_lock_unlock(*(v5 + 32));
  }
}

Swift::Void __swiftcall MeasureCore.updatePlanes(with:)(ARFrame with)
{
  if (!*(v1 + 120))
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  if (*(v1 + 136) != 1)
  {
    return;
  }

  sub_2583E00C4(with.super.isa);
  if (!*(v1 + 88))
  {
    __break(1u);
LABEL_7:
    sub_258429100();
    __break(1u);
    return;
  }

  LocalPlaneDetector.detectPlane(with:)(with.super.isa, v3);
}

Swift::Void __swiftcall MeasureCore.didUpdate(with:)(ARFrame with)
{
  v2 = v1;
  v3 = *(v1 + 120);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *(v2 + 128);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = v3;
  v7(ObjectType, v5);
  v13 = v10;
  v14 = v9;

  v11.f64[0] = v14;
  v11.f64[1] = v13;
  _s17MeasureFoundation24ComputedCameraPropertiesV12updateShared_12viewportSizeySo7ARFrameC_s5SIMD2VySfGtFZ_0(with.super.isa, COERCE_DOUBLE(vcvt_f32_f64(v11)));
  if ([objc_opt_self() jasperAvailable])
  {
    swift_beginAccess();
    if (*(v2 + 112))
    {

      sub_2583B8370(with.super.isa);
    }
  }

  swift_beginAccess();
  if ((*(v2 + 137) & 1) != 0 || (swift_beginAccess(), *(v2 + 136) == 1))
  {
    if (*(v2 + 80))
    {

      SegmentationProcessor.didUpdate(frame:)(with);
    }
  }

  swift_beginAccess();
  if (*(v2 + 136) == 1)
  {
    v12 = *(v2 + 104);
    if (v12)
    {
      if (!*(v12 + 84))
      {
        return;
      }

      if (*(v2 + 96))
      {

        PatchTracker.didUpdate(frame:)(with);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    sub_258429100();
    __break(1u);
  }
}

uint64_t MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 104))
  {
    v3 = result;

    sub_2583CA29C(v3);

    *(a2 + 64) = v9;
    *(a2 + 80) = v10;
    *(a2 + 96) = v11;
    *(a2 + 112) = v12;
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MeasureCore.edgeHitTest(screenPoint:frame:orientation:planeTypes:useHyperLocalStrategy:)(void *a1@<X0>, char a2@<W3>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    if (*(v4 + 104))
    {

      sub_2583C8500(a1, v12, a4);
LABEL_6:

      v8 = v12[5];
      *(a3 + 64) = v12[4];
      *(a3 + 80) = v8;
      *(a3 + 96) = v12[6];
      *(a3 + 112) = v13;
      v9 = v12[1];
      *a3 = v12[0];
      *(a3 + 16) = v9;
      v10 = v12[3];
      *(a3 + 32) = v12[2];
      *(a3 + 48) = v10;
      return;
    }

    __break(1u);
  }

  else
  {
    sub_2583E3AE0(v11);
    v11[15] = v11[6];
    v11[16] = v11[7];
    v11[17] = v11[8];
    v11[11] = v11[2];
    v11[12] = v11[3];
    v11[13] = v11[4];
    v11[14] = v11[5];
    v11[9] = v11[0];
    v11[10] = v11[1];
    if (*(v4 + 104))
    {

      sub_2583CA29C(a1);
      goto LABEL_6;
    }
  }

  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall MeasureCore.adHitTestPositionOnly(screenPoints:frame:)(Swift::OpaquePointer screenPoints, ARFrame frame)
{
  v2 = sub_2583E0E60(screenPoints._rawValue, frame.super.isa, sub_2583B7BA8);
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_2583E0E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (!*(v3 + 112))
  {
    return 0;
  }

  v7 = a3(a1, a2);

  return v7;
}

void MeasureCore.adHitTest(screenPoint:frame:)(objc_class *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  swift_beginAccess();
  v9 = *(v4 + 112);
  v10 = 0;
  if (!v9)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F927B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CCB0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  v12._rawValue = inited;
  v13.super.isa = a1;
  sub_2583B7438(v12, v13);
  v15 = v14;

  swift_setDeallocating();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  if (!*(v15 + 2))
  {

    goto LABEL_9;
  }

  v17 = *(v15 + 8);
  v18 = *(v15 + 9);
  v19 = v15[10];
  v20 = *(v15 + 12);
  v21 = *(v16 + 104);

  if (v21)
  {
LABEL_9:
    v9 = 0;
LABEL_10:
    v34 = 0;
    v36 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v35 = 0uLL;
    goto LABEL_11;
  }

  v22.i64[1] = v18;
  v22.i64[0] = v17;
  v23 = v20 * -0.5;
  _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(v19, v22);
  sceneKitToARKit(_:)(v25, v24);
  v43 = v27;
  v44 = v26;
  v41 = v29;
  v42 = v28;
  v30 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  type metadata accessor for WorldPlane();
  v9 = swift_allocObject();
  *(v9 + 24) = xmmword_25842EC50;
  *(v9 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v31 = swift_allocObject();
  v32 = v30;
  v33 = swift_slowAlloc();
  *v33 = 0;
  *(v31 + 16) = v32;
  *(v31 + 24) = v33;
  *(v9 + 16) = v31;
  swift_endAccess();
  *(v9 + 48) = 6;
  *(v9 + 52) = v23 + 1.0;
  *(v9 + 56) = 1065353216;
  memset(v45, 0, sizeof(v45));
  v46 = 1;
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v32, v45, static SIMD3<>.zero);

  v34 = 1;
  sub_258411874();
  v36 = xmmword_25842EC60;
  v35 = v41;
  v10 = v37;
  v39 = v43;
  v38 = v44;
  v40 = v42;
LABEL_11:
  *a2 = v36;
  *(a2 + 16) = v38;
  *(a2 + 32) = v39;
  *(a2 + 48) = v40;
  *(a2 + 64) = v35;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v34;
  *(a2 + 104) = v9;
  *(a2 + 112) = v10;
}

BOOL MeasureCore.isOccluded(_:in:withTolerance:)(void *a1, float32x4_t a2, float a3)
{
  sub_2583EF3B4(a1, v22);
  v18 = v24;
  v19 = v23;
  v16 = v26;
  v17 = v25;
  sub_2583EF3B4(a1, v27);
  _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(a2, v19, v18, v17, v16, v27[0]);
  sub_258428C10();
  if (qword_27F927AC8 != -1)
  {
    v14 = v5;
    v15 = v6;
    swift_once();
    v6 = v15;
    v5 = v14;
  }

  MeasureCore.adHitTest(screenPoint:frame:)(a1, v28, v5, v6);
  if (!v30)
  {
    return 0;
  }

  v36 = v28[4];
  v37 = v28[5];
  v32 = v28[0];
  v33 = v28[1];
  v34 = v28[2];
  v35 = v28[3];
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v7 = WorldPlaneHitTestResult.distanceToCamera(in:)(a1);
  v8 = [a1 camera];
  [v8 transform];
  v20 = v9;

  v10 = vsubq_f32(v20, a2);
  v11 = vmulq_f32(v10, v10);
  v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  sub_2583E3B04(v28);
  return (v7 + a3) < v12;
}

Swift::Void __swiftcall MeasureCore.didAdd(anchors:)(Swift::OpaquePointer anchors)
{
  v2 = v1;
  v43 = sub_2584283F0();
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(*(v2 + 56));
  if (anchors._rawValue >> 62)
  {
LABEL_28:
    v5 = sub_258428F10();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:
    os_unfair_lock_unlock(*(v2 + 56));
    return;
  }

  v5 = *((anchors._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  v6 = 0;
  v7 = anchors._rawValue & 0xC000000000000001;
  v40 = anchors._rawValue & 0xFFFFFFFFFFFFFF8;
  rawValue = anchors._rawValue;
  v38 = v39 + 16;
  v42 = (v39 + 8);
  v8 = 0x277CE5000uLL;
  v9 = &property descriptor for Transformer.viewToClip;
  while (1)
  {
    if (v7)
    {
      v14 = MEMORY[0x259C7E900](v6, anchors._rawValue);
    }

    else
    {
      if (v6 >= *(v40 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(anchors._rawValue + v6 + 4);
    }

    v12 = v14;
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      break;
    }

LABEL_6:

    ++v6;
    if (v13 == v5)
    {
      goto LABEL_29;
    }
  }

  v44 = v6 + 1;
  v16 = *(v9 + 383);
  v46 = v15;
  v17 = [v15 v16];
  v18 = v47;
  sub_2584283D0();

  swift_beginAccess();
  v45 = v12;
  v19 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v2 + 64);
  anchors._rawValue = v48;
  *(v2 + 64) = 0x8000000000000000;
  v22 = sub_258384260(v18);
  v23 = *(anchors._rawValue + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_25;
  }

  v26 = v21;
  if (*(anchors._rawValue + 3) >= v25)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      anchors._rawValue = v48;
      if ((v21 & 1) == 0)
      {
LABEL_20:
        v29 = v8;
        v30 = v7;
        v31 = v5;
        v32 = v2;
        *(anchors._rawValue + (v22 >> 6) + 8) |= 1 << v22;
        v33 = v39;
        v2 = v47;
        v34 = v43;
        (*(v39 + 16))(*(anchors._rawValue + 6) + *(v39 + 72) * v22, v47, v43);
        *(*(anchors._rawValue + 7) + 8 * v22) = v46;
        (*(v33 + 8))(v2, v34);
        v35 = *(anchors._rawValue + 2);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_27;
        }

        *(anchors._rawValue + 2) = v37;
        v2 = v32;
        v5 = v31;
        v7 = v30;
        v8 = v29;
        v9 = &property descriptor for Transformer.viewToClip;
        goto LABEL_5;
      }
    }

    else
    {
      sub_258396860();
      anchors._rawValue = v48;
      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    v10 = *(anchors._rawValue + 7);
    v11 = *(v10 + 8 * v22);
    *(v10 + 8 * v22) = v46;

    (*v42)(v47, v43);
LABEL_5:
    *(v2 + 64) = anchors;

    swift_endAccess();
    anchors._rawValue = rawValue;
    v13 = v44;
    v12 = v45;
    goto LABEL_6;
  }

  sub_2583951A0(v25, isUniquelyReferenced_nonNull_native);
  v27 = sub_258384260(v47);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    anchors._rawValue = v48;
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  sub_258429390();
  __break(1u);
}

Swift::Void __swiftcall MeasureCore.didRemove(anchors:)(Swift::OpaquePointer anchors)
{
  v2 = v1;
  v4 = sub_2584283F0();
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  os_unfair_lock_lock(*(v1 + 56));
  if (anchors._rawValue >> 62)
  {
    v12 = sub_258428F10();
    v48 = v12;
    rawValue = anchors._rawValue;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *((anchors._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v12;
    rawValue = anchors._rawValue;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v13 = 0;
  v14 = anchors._rawValue & 0xC000000000000001;
  v15 = (v47 + 8);
  do
  {
    if (v14)
    {
      v16 = MEMORY[0x259C7E900](v13, anchors._rawValue);
    }

    else
    {
      v16 = *(anchors._rawValue + v13 + 4);
    }

    v17 = v16;
    v18 = [v16 identifier];
    sub_2584283D0();

    swift_beginAccess();
    v19 = sub_258384260(v11);
    if (v20)
    {
      v21 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v2 + 64);
      v51 = v23;
      *(v2 + 64) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_258396860();
        v23 = v51;
      }

      (*(v47 + 8))(*(v23 + 48) + *(v47 + 72) * v21, v4);

      sub_258396C84(v21, v23);
      *(v2 + 64) = v23;
    }

    ++v13;
    swift_endAccess();

    (*v15)(v11, v4);
    v12 = v48;
    anchors._rawValue = rawValue;
  }

  while (v48 != v13);
LABEL_14:
  os_unfair_lock_unlock(*(v2 + 56));
  os_unfair_lock_lock(*(v2 + 32));
  if (!v12)
  {
LABEL_32:
    os_unfair_lock_unlock(*(v2 + 32));
    return;
  }

  if (v12 >= 1)
  {
    v24 = 0;
    v25 = anchors._rawValue & 0xC000000000000001;
    v26 = (v47 + 8);
    v45 = anchors._rawValue & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v27 = MEMORY[0x259C7E900](v24, anchors._rawValue);
      }

      else
      {
        v27 = *(anchors._rawValue + v24 + 4);
      }

      v28 = v27;
      v29 = [v27 identifier];
      sub_2584283D0();

      swift_beginAccess();
      v30 = *(v2 + 40);
      if (*(v30 + 16) && (v31 = sub_258384260(v9), (v32 & 1) != 0))
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        swift_endAccess();
        v34 = *v26;
        (*v26)(v9, v4);
        v35 = [v28 identifier];
        v36 = v46;
        sub_2584283D0();

        swift_beginAccess();
        v37 = sub_258384260(v36);
        if (v38)
        {
          v39 = v37;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v41 = *(v2 + 40);
          v51 = v41;
          *(v2 + 40) = 0x8000000000000000;
          if (!v40)
          {
            sub_258396424();
            v41 = v51;
          }

          v34((*(v41 + 48) + *(v47 + 72) * v39), v4);
          sub_258396C84(v39, v41);
          *(v2 + 40) = v41;
        }

        swift_endAccess();
        v34(v46, v4);
        swift_beginAccess();
        v42 = sub_2583DEBA8(v50, v33);
        if (*v43)
        {
          v44 = sub_2583E36D0(v28);
          (v42)(v50, 0);
          swift_endAccess();
        }

        else
        {
          (v42)(v50, 0);
          swift_endAccess();
        }

        v12 = v48;
        anchors._rawValue = rawValue;
        v25 = v45;
      }

      else
      {
        swift_endAccess();

        (*v26)(v9, v4);
      }

      ++v24;
    }

    while (v12 != v24);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

Swift::Void __swiftcall MeasureCore.didUpdate(anchors:)(Swift::OpaquePointer anchors)
{
  v110 = sub_2584283F0();
  v106 = *(v110 - 8);
  v3 = MEMORY[0x28223BE20](v110);
  v100 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v99 = &v92 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v92 - v9;
  v111 = v1;
  os_unfair_lock_lock(*(v1 + 56));
  if (anchors._rawValue >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((anchors._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  rawValue = anchors._rawValue;
  for (i = v11; v11; i = v11)
  {
    v12 = 0;
    v13 = anchors._rawValue & 0xC000000000000001;
    v104 = v106 + 16;
    v105 = (anchors._rawValue & 0xFFFFFFFFFFFFFF8);
    v107 = (v106 + 8);
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x259C7E900](v12, anchors._rawValue);
      }

      else
      {
        if (v12 >= *(v105 + 2))
        {
          goto LABEL_25;
        }

        v16 = *(anchors._rawValue + v12 + 4);
      }

      anchors._rawValue = v16;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
        goto LABEL_6;
      }

      v19 = v18;
      v20 = [v18 identifier];
      sub_2584283D0();

      v21 = v111;
      swift_beginAccess();
      v22 = anchors._rawValue;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112[0] = *(v21 + 64);
      v24 = v112[0];
      *(v21 + 64) = 0x8000000000000000;
      v25 = sub_258384260(v10);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_24;
      }

      v31 = v26;
      if (v24[3] < v30)
      {
        sub_2583951A0(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_258384260(v10);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_77;
        }

LABEL_18:
        v33 = v112[0];
        if ((v31 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v40 = v25;
      sub_258396860();
      v25 = v40;
      v33 = v112[0];
      if ((v31 & 1) == 0)
      {
LABEL_19:
        v34 = v13;
        v33[(v25 >> 6) + 8] |= 1 << v25;
        v35 = v106;
        v36 = v25;
        v37 = v110;
        (*(v106 + 2))(v33[6] + *(v106 + 9) * v25, v10, v110);
        *(v33[7] + 8 * v36) = v19;
        v35[1](v10, v37);
        v38 = v33[2];
        v29 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v29)
        {
          goto LABEL_26;
        }

        v33[2] = v39;
        v13 = v34;
        goto LABEL_5;
      }

LABEL_4:
      v14 = v33[7];
      v15 = *(v14 + 8 * v25);
      *(v14 + 8 * v25) = v19;

      (*v107)(v10, v110);
LABEL_5:
      *(v111 + 64) = v33;

      swift_endAccess();
      v11 = i;
LABEL_6:

      ++v12;
      anchors._rawValue = rawValue;
      if (v17 == v11)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v11 = sub_258428F10();
    rawValue = anchors._rawValue;
  }

LABEL_28:
  v41 = v111;
  os_unfair_lock_unlock(*(v111 + 56));
  os_unfair_lock_lock(*(v41 + 32));
  v42 = v95;
  if (!v11)
  {
LABEL_73:
    os_unfair_lock_unlock(*(v111 + 32));
    return;
  }

  v43 = 0;
  v44 = anchors._rawValue & 0xC000000000000001;
  v97 = anchors._rawValue & 0xFFFFFFFFFFFFFF8;
  v96 = anchors._rawValue + 32;
  v45 = (v106 + 8);
  v93 = anchors._rawValue & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      if (v44)
      {
        v46 = MEMORY[0x259C7E900](v43, anchors._rawValue);
      }

      else
      {
        if (v43 >= *(v97 + 16))
        {
          goto LABEL_76;
        }

        v46 = *&v96[8 * v43];
      }

      v47 = v46;
      v29 = __OFADD__(v43++, 1);
      if (v29)
      {
        goto LABEL_75;
      }

      v48 = [v46 identifier];
      sub_2584283D0();

      v49 = v111;
      swift_beginAccess();
      v50 = *(v49 + 40);
      if (*(v50 + 16))
      {
        v51 = sub_258384260(v42);
        if (v52)
        {
          break;
        }
      }

      swift_endAccess();

      (*v45)(v42, v110);
      if (v43 == v11)
      {
        goto LABEL_73;
      }
    }

    v103 = v43;
    v53 = *(*(v50 + 56) + 8 * v51);
    swift_endAccess();
    v105 = *v45;
    v105(v42, v110);
    v54 = v111;
    swift_beginAccess();
    v55 = *(v54 + 48);
    if (*(v55 + 16))
    {
      v56 = sub_2583842F8(v53);
      if (v57)
      {
        break;
      }
    }

    swift_endAccess();

LABEL_65:
    v43 = v103;
    if (v103 == v11)
    {
      goto LABEL_73;
    }
  }

  LODWORD(v104) = v53;
  v58 = *(*(v55 + 56) + 8 * v56);
  swift_endAccess();
  if ((v58 & 0xC000000000000001) != 0)
  {

    sub_258428EC0();
    sub_2583E3B6C();
    sub_2583E3BB8();
    sub_258428A20();
    v58 = v113[1];
    v59 = v113[2];
    v60 = v113[3];
    v61 = v113[4];
    v62 = v113[5];
  }

  else
  {
    v63 = -1 << *(v58 + 32);
    v59 = (v58 + 56);
    v64 = ~v63;
    v65 = -v63;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = (v66 & *(v58 + 56));

    v60 = v64;
    v62 = v67;
    v61 = 0;
  }

  v68 = v104;
  v94 = v60;
  v69 = (v60 + 64) >> 6;
  v107 = v47;
  v102 = v59;
  v101 = v58;
  v106 = v61;
  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  v70 = v61;
  v71 = v62;
  v72 = v61;
  if (v62)
  {
LABEL_52:
    v73 = (v71 - 1) & v71;
    v74 = *(*(v58 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v71)))));
    if (v74)
    {
      while (1)
      {
        v76 = v69;
        v98 = v62;
        v77 = [v74 identifier];
        v78 = v45;
        v79 = v99;
        sub_2584283D0();

        v80 = [v107 identifier];
        v81 = v100;
        sub_2584283D0();

        LOBYTE(v80) = sub_2584283C0();
        v82 = v81;
        v83 = v110;
        v84 = v105;
        v105(v82, v110);
        v85 = v79;
        v45 = v78;
        v84(v85, v83);
        if (v80)
        {
          break;
        }

        v61 = v72;
        v62 = v73;
        v11 = i;
        v47 = v107;
        v68 = v104;
        v58 = v101;
        v59 = v102;
        v69 = v76;
        v106 = v61;
        if ((v101 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_54:
        v75 = sub_258428F40();
        if (!v75)
        {
          goto LABEL_60;
        }

        v112[4] = v75;
        sub_2583E3B6C();
        swift_dynamicCast();
        v74 = v112[0];
        v72 = v106;
        v73 = v62;
        if (!v112[0])
        {
          goto LABEL_67;
        }
      }

      swift_beginAccess();
      v68 = v104;
      v89 = sub_2583DEBA8(v112, v104);
      if (*v90)
      {
        v91 = sub_2583E36D0(v74);
        (v89)(v112, 0);
        swift_endAccess();
        sub_2583980BC();
      }

      else
      {
        (v89)(v112, 0);
        swift_endAccess();

        sub_2583980BC();
      }

      v11 = i;
      v44 = v93;
      v47 = v107;
    }

    else
    {
LABEL_67:
      v11 = i;
      v47 = v107;
LABEL_60:
      sub_2583980BC();
      v44 = v93;
    }

    swift_beginAccess();
    v86 = sub_2583DEBA8(v112, v68);
    anchors._rawValue = rawValue;
    if (*v87)
    {
      v88 = v47;
      sub_2583C673C(v113, v88);
      (v86)(v112, 0);
      swift_endAccess();
    }

    else
    {
      (v86)(v112, 0);
      swift_endAccess();
    }

    v42 = v95;
    goto LABEL_65;
  }

  while (1)
  {
    v72 = (v70 + 1);
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v72 >= v69)
    {
      v11 = i;
      goto LABEL_60;
    }

    v71 = v59[v72];
    ++v70;
    if (v71)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  sub_258429390();
  __break(1u);
}

uint64_t sub_2583E2618(void *a1)
{
  v2 = v1;
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(*(v2 + 32));
  v8 = [a1 identifier];
  sub_2584283D0();

  swift_beginAccess();
  v9 = *(v2 + 40);
  if (!*(v9 + 16) || (v10 = sub_258384260(v7), (v11 & 1) == 0))
  {
    swift_endAccess();
    (*(v5 + 8))(v7, v4);
    os_unfair_lock_unlock(*(v2 + 32));
    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  (*(v5 + 8))(v7, v4);
  os_unfair_lock_unlock(*(v2 + 32));
  result = v12;
  if (v12 == 33)
  {
    return 0;
  }

  return result;
}

float sub_2583E279C(void *a1)
{
  v2 = v1;
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(*(v2 + 32));
  v8 = [a1 identifier];
  sub_2584283D0();

  swift_beginAccess();
  v9 = *(v2 + 40);
  if (*(v9 + 16) && (v10 = sub_258384260(v7), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10 + 4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v12 = 0.0;
  }

  (*(v5 + 8))(v7, v4);
  os_unfair_lock_unlock(*(v2 + 32));
  return v12;
}

uint64_t MeasureCore.deinit()
{

  return v0;
}

uint64_t MeasureCore.__deallocating_deinit()
{
  MeasureCore.deinit();

  return swift_deallocClassInstance();
}

void (*sub_2583E2990(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_2584283F0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_2583E307C(v6);
  v6[12] = sub_2583E2C68(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_2583E2ACC;
}

void sub_2583E2ACC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2583E2B64(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_2583E30B0(v5);
  v5[9] = sub_2583E2F18((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_2583E2C08;
}

void sub_2583E2C08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2583E2C68(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_2584283F0();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_258384260(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_258395B34();
      v15 = v23;
      goto LABEL_14;
    }

    sub_258393B7C(v20, a3 & 1);
    v15 = sub_258384260(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_258429390();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_2583E2E18;
}

void sub_2583E2E18(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_2583E8884(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_258396C84(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

unint64_t (*sub_2583E2F18(uint64_t a1, unsigned __int8 a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2583842F8(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2583962C8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25839488C(v14, a3 & 1);
    v9 = sub_2583842F8(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_258429390();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_2583E3034;
}

unint64_t sub_2583E3034(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_2583E8A9C(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_258397264(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_2583E307C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2583E30A4;
}

uint64_t (*sub_2583E30B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2583E3C40;
}

uint64_t sub_2583E30D8(uint64_t a1, uint64_t a2)
{

  v3 = sub_258428F10();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2583C5DCC(v4, v3);
  v17 = v5;
  sub_2584293C0();
  v6 = *(a2 + 24);
  MEMORY[0x259C7ECE0](v6);
  v7 = sub_2584293F0();
  v8 = -1 << *(v5 + 32);

  swift_beginAccess();
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_17:

    __break(1u);
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    v12 = *(*(v5 + 48) + 8 * v9);
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      break;
    }

    if (!swift_weakLoadStrong())
    {

      goto LABEL_9;
    }

    v11 = sub_2584283C0();

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_9:
  v13 = *(v12 + 24);

  if (v13 != v6)
  {
    goto LABEL_4;
  }

LABEL_10:

  v14 = *(*(v5 + 48) + 8 * v9);
  sub_2583C5A84(v9);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_14;
  }

  v6 = sub_2584283C0();

  if ((v6 & 1) == 0)
  {
    do
    {
      __break(1u);
LABEL_14:

LABEL_15:
      ;
    }

    while (v6 != *(v14 + 24));
  }

  *v16 = v17;
  return v14;
}

uint64_t sub_2583E3344()
{
  v1 = v0;

  v2 = sub_258428F10();
  v3 = swift_unknownObjectRetain();
  v4 = sub_2583C5FD8(v3, v2);
  v13 = v4;

  v5 = sub_258428D60();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_2583E3B6C();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_258428D70();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_2583C5C2C(v7);
  result = sub_258428D70();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2583E349C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_258428F50();

    if (v5)
    {
      v6 = sub_2583E30D8(v4, a1);

      return v6;
    }

    return 0;
  }

  v19 = v1;
  sub_2584293C0();
  v8 = *(a1 + 24);
  MEMORY[0x259C7ECE0](v8);
  v9 = sub_2584293F0();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  swift_beginAccess();
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v11);
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      break;
    }

    if (!swift_weakLoadStrong())
    {

      goto LABEL_15;
    }

    v13 = sub_2584283C0();

    if (v13)
    {
      goto LABEL_16;
    }

LABEL_10:
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_15:
  v15 = *(v14 + 24);

  if (v15 != v8)
  {
    goto LABEL_10;
  }

LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v19;
  v20 = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2583C43BC();
    v17 = v20;
  }

  v18 = *(*(v17 + 48) + 8 * v11);
  sub_2583C5A84(v11);
  result = v18;
  *v19 = v20;
  return result;
}

uint64_t sub_2583E36D0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_258428F50();

    if (v5)
    {
      v6 = sub_2583E3344();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_2583E3B6C();
  v9 = sub_258428D60();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_258428D70();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2583C43D0();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_2583C5C2C(v11);
  result = v17;
  *v8 = v18;
  return result;
}

void sub_2583E3858(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C7E840](a1, a2, v7);
      sub_2583E3B6C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2583E3B6C();
    if (sub_258428EF0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_258428F00();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_258428D60();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_258428D70();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_2583E3A68(float32x4_t *a1, float32x4_t a2)
{
  v2 = a1[1].i64[0];
  if (!v2)
  {
    return 0;
  }

  for (i = a1 + 6; ; i += 8)
  {
    if (i[2].i64[1])
    {
      v4 = vsubq_f32(*i, a2);
      v5 = vmulq_f32(v4, v4);
      if ((v5.f32[2] + vaddv_f32(*v5.f32)) <= 0.0064)
      {
        break;
      }
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return i[-2].i64[0];
}

double sub_2583E3AE0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_2583E3B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2583E3B6C()
{
  result = qword_27F928AA8;
  if (!qword_27F928AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F928AA8);
  }

  return result;
}

unint64_t sub_2583E3BB8()
{
  result = qword_27F928E30;
  if (!qword_27F928E30)
  {
    sub_2583E3B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E30);
  }

  return result;
}

uint64_t sub_2583E3C34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

int64_t MTLTexture.sampleColor(screenPoint:)(double a1, double a2)
{
  result = [v2 iosurface];
  if (!result)
  {
    return result;
  }

  v6 = result;
  Width = IOSurfaceGetWidth(result);
  result = IOSurfaceGetHeight(v6);
  v8 = round(a2);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8 * Width;
  if ((v8 * Width) >> 64 != v9 >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = round(a1);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((Width * result) >> 64 != (Width * result) >> 63)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (v11 < Width * result)
  {
    v12 = [v2 pixelFormat];
    if (v12 == 55)
    {
      LODWORD(v19) = *(IOSurfaceGetBaseAddress(v6) + v11);
      v20 = v19;

      return v20;
    }

    if (v12 == 80)
    {
      v14 = *(IOSurfaceGetBaseAddress(v6) + v11);

      *v15.i8 = vshl_u32(vdup_n_s32(v14), 0xFFFFFFF8FFFFFFF0);
      v15.i32[2] = v14;
      v16 = vdupq_laneq_s32(v15, 2);
      v17.i64[0] = 0xFF000000FFLL;
      v17.i64[1] = 0xFF000000FFLL;
      v18 = vandq_s8(v15, v17);
      v18.i32[3] = vshrq_n_u32(v16, 0x18uLL).i32[3];
      return vdivq_f32(vcvtq_f32_u32(v18), vdupq_n_s32(0x437F0000u)).u64[0];
    }

    if (v12 == 125)
    {
      v13 = *(IOSurfaceGetBaseAddress(v6) + 2 * v11);

      return v13;
    }
  }

  return 0;
}

Swift::OpaquePointer_optional __swiftcall MTLTexture.sampleColors(screenPoints:)(Swift::OpaquePointer screenPoints)
{
  v3 = [v1 iosurface];
  if (!v3)
  {
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v5 = v3;
  Width = IOSurfaceGetWidth(v3);
  Height = IOSurfaceGetHeight(v5);
  v8 = *(screenPoints._rawValue + 2);
  BaseAddress = sub_25839DAAC(0, v8, 0, MEMORY[0x277D84F90]);
  v10 = BaseAddress;
  if (!v8)
  {
LABEL_25:

LABEL_28:
    BaseAddress = v10;
    goto LABEL_38;
  }

  v11 = Width * Height;
  if ((Width * Height) >> 64 == (Width * Height) >> 63)
  {
    v12 = (screenPoints._rawValue + 40);
    v30 = vdupq_n_s32(0x437F0000u);
    while (1)
    {
      v21 = round(*v12);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v21 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v21 >= 9.22337204e18)
      {
        goto LABEL_31;
      }

      v22 = v21 * Width;
      if ((v21 * Width) >> 64 != v22 >> 63)
      {
        goto LABEL_32;
      }

      v23 = round(*(v12 - 1));
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v23 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_36;
      }

      if (v24 >= v11)
      {
LABEL_26:

        goto LABEL_27;
      }

      v25 = [v1 pixelFormat];
      if (v25 == 55)
      {
        BaseAddress = IOSurfaceGetBaseAddress(v5);
        v26 = BaseAddress->u32[v24];
        v19 = v10[1].u64[0];
        v27 = v10[1].u64[1];
        v20 = v19 + 1;
        if (v19 >= v27 >> 1)
        {
          v29 = v26;
          BaseAddress = sub_25839DAAC((v27 > 1), v19 + 1, 1, v10);
          v26 = v29;
          v10 = BaseAddress;
        }

        v17 = v26;
      }

      else
      {
        if (v25 == 80)
        {
          BaseAddress = IOSurfaceGetBaseAddress(v5);
          *v13.i8 = vshl_u32(vdup_n_s32(BaseAddress->u32[v24]), 0xFFFFFFF8FFFFFFF0);
          v13.i32[2] = BaseAddress->i32[v24];
          v14 = vdupq_laneq_s32(v13, 2);
          v15.i64[0] = 0xFF000000FFLL;
          v15.i64[1] = 0xFF000000FFLL;
          v16 = vandq_s8(v13, v15);
          v16.i32[3] = vshrq_n_u32(v14, 0x18uLL).i32[3];
          v17 = vdivq_f32(vcvtq_f32_u32(v16), v30);
        }

        else
        {
          if (v25 != 125)
          {
            goto LABEL_26;
          }

          BaseAddress = IOSurfaceGetBaseAddress(v5);
          v17 = BaseAddress[v24];
        }

        v19 = v10[1].u64[0];
        v18 = v10[1].u64[1];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v28 = v17;
          BaseAddress = sub_25839DAAC((v18 > 1), v19 + 1, 1, v10);
          v17 = v28;
          v10 = BaseAddress;
        }
      }

      v10[1].i64[0] = v20;
      v10[v19 + 2] = v17;
      v12 += 2;
      if (!--v8)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  result.value._rawValue = BaseAddress;
  result.is_nil = v4;
  return result;
}

uint64_t MTLTexture.makeSamplePoints(numberOfPoints:)(uint64_t a1)
{
  v3 = [v1 width];
  result = [v1 height];
  if ((v3 * result) >> 64 != (v3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = sqrt((v3 * result) / a1);
  result = [v1 width];
  v6 = round(result / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [v1 height];
  v7 = round(result / v5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v7;
  if (v7 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
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
    return v11;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s17MeasureFoundation10SearchAreaV23__derived_struct_equalsySbAC_ACtFZ_0(double a1, float a2, double a3, float a4)
{
  if ((vceq_f32(*&a1, *&a3).u8[0] & 1) == 0)
  {
    return 0;
  }

  *&a1 = a2;
  *&a3 = a4;
  v4 = vceq_f32(*&a1, *&a3);
  return v4.i32[1] & v4.i32[0] & 1;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchArea(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchArea(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t DepthNode.init(scene:)(uint64_t a1)
{
  v1 = sub_2583E4754(a1);

  return v1;
}

uint64_t DepthNode.deinit()
{

  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();
  return v0;
}

uint64_t DepthNode.__allocating_init(scene:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_2583E4754(a1);

  return v2;
}

uint64_t sub_2583E46B0()
{
  swift_unownedRelease();
  swift_unownedRelease();

  return swift_unownedRelease();
}

uint64_t DepthNode.__deallocating_deinit()
{

  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2583E4754(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = *(a1 + 160);
  swift_unownedRetainStrong();
  *(v1 + 48) = v2;
  swift_unownedRetain();
  swift_unownedRetain();

  v3 = *(v1 + 48);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 192);

  if (v4)
  {
    *(v1 + 56) = v4;
    swift_unownedRetain();

    v6 = MEMORY[0x277D84F90];
    *(v1 + 32) = 257;
    *(v1 + 34) = 1;
    v7 = qword_27F927FE8;
    *(v1 + 16) = qword_27F927FE8;
    *(v1 + 24) = v6;
    if (v7 != -1)
    {
      qword_27F927FE8 = v7 + 1;
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2583E4864(char a1, float a2)
{
  v4 = v2;
  if (!*(*v2 + 16) || (sub_2583842F8(a1), (v7 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_258385280(a1, isUniquelyReferenced_nonNull_native, 0.0);
    *v2 = v23;
  }

  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v24 = *v4;
  result = sub_2583842F8(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v12;
  if (*(v10 + 24) < v16)
  {
    sub_2583942F4(v16, v9);
    result = sub_2583842F8(a1);
    if ((v3 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

    result = sub_258429390();
    __break(1u);
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v3 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  while (1)
  {
    *(*(v24 + 56) + 4 * result) = *(*(v24 + 56) + 4 * result) + a2;
    *v4 = v24;
    if (*(v24 + 16))
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = result;
    sub_258395FB8();
    result = v22;
    if ((v3 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  result = sub_2583842F8(a1);
  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(*(v24 + 56) + 4 * result);
  v20 = v4[1];
  if (v20 == 33 || v19 > *(&v20 + 1))
  {
    *(v4 + 8) = a1;
    *(v4 + 3) = v19;
  }

  v21 = v4[2];
  if (v21 == 33 || v19 < *(&v21 + 1))
  {
    *(v4 + 16) = a1;
    *(v4 + 5) = v19;
  }

  *(v4 + 6) = *(v4 + 6) + a2;
  return result;
}

void sub_2583E4A30(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; i |= v16)
  {
    v9 = v7;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + 8 * (v10 | (v9 << 6)));
    v12 = objc_opt_self();

    v13 = [v12 standardUserDefaults];
    v14 = sub_258428630();

    v15 = [v13 BOOLForKey_];

    if ((v15 & ((v11 & ~i) != 0)) != 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t static SegmentationProcessor.DebuggerClass.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  static SegmentationProcessor.DebuggerClass = a1;
  qword_27F92F2D8 = a2;
  return result;
}

uint64_t SegmentationProcessor.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SegmentationProcessor.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2583E4DA8;
}

void sub_2583E4DA8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SegmentationProcessor.debugOptions.getter()
{
  if (*(v0 + 264) != 1)
  {
    return *(v0 + 256);
  }

  if (qword_27F927AE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static SegmentationProcessor.DebugOptions.default;
  *(v0 + 256) = static SegmentationProcessor.DebugOptions.default;
  *(v0 + 264) = 0;
  return result;
}

uint64_t *SegmentationProcessor.DebugOptions.default.unsafeMutableAddressor()
{
  if (qword_27F927AE0 != -1)
  {
    swift_once();
  }

  return &static SegmentationProcessor.DebugOptions.default;
}

uint64_t SegmentationProcessor.debugOptions.setter(uint64_t result)
{
  *(v1 + 256) = result;
  *(v1 + 264) = 0;
  return result;
}

void *(*SegmentationProcessor.debugOptions.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = SegmentationProcessor.debugOptions.getter();
  return sub_2583E4F64;
}

void *sub_2583E4F64(void *result)
{
  v1 = result[1];
  *(v1 + 256) = *result;
  *(v1 + 264) = 0;
  return result;
}

void sub_2583E4F74(_OWORD *a1@<X8>)
{
  v3 = (v1 + 520);
  if ((*(v1 + 568) & 1) == 0)
  {
    v9 = *(v1 + 536);
    v11 = *(v1 + 552);
    v10 = *v3;
    goto LABEL_5;
  }

  ImageProcessor.viewportSize.getter();
  v4 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 currentFrame];

  if (v7)
  {
    v8 = [v7 camera];

    [v8 imageResolution];
    ARViewToCameraImageTransform();
    v10 = v12;
    v9 = v13;
    v11 = v14;
    *v3 = v12;
    v3[1] = v13;
    v3[2] = v14;
    *(v3 + 48) = 0;
LABEL_5:
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    return;
  }

  sub_258429100();
  __break(1u);
}

void sub_2583E50F0(_OWORD *a1@<X8>)
{
  v2 = v1;
  if ((*(v1 + 624) & 1) == 0)
  {
    v30 = *(v1 + 592);
    v32 = *(v1 + 608);
    v31 = *(v1 + 576);
LABEL_10:
    *a1 = v31;
    a1[1] = v30;
    a1[2] = v32;
    return;
  }

  v4 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 currentFrame];

  if (v7)
  {
    v8 = [v7 camera];

    [v8 imageResolution];
    v11 = v9 / v10;
    v39 = vabdd_f64(1.33333333, v9 / v10);
    v12 = ImageProcessor.viewportSize.getter();
    CGAffineTransformMakeScale(&t1, 1.0 / v12, 1.0 / *(v2 + 96));
    tx = t1.tx;
    ty = t1.ty;
    v33 = *&t1.c;
    v35 = *&t1.a;
    ARViewToCameraImageTransform();
    v15 = *&t1.a;
    v16 = *&t1.c;
    v17 = *&t1.tx;
    *&t1.a = v35;
    *&t1.c = v33;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v15;
    *&t2.c = v16;
    *&t2.tx = v17;
    CGAffineTransformConcat(&v43, &t1, &t2);
    v18 = v43.tx;
    v19 = v43.ty;
    v20 = v39 * -0.5;
    if (v11 <= 1.33333333)
    {
      v21 = -0.0;
    }

    else
    {
      v21 = v39 * -0.5;
    }

    if (v11 > 1.33333333)
    {
      v20 = -0.0;
    }

    v36 = *&v43.c;
    v40 = *&v43.a;
    CGAffineTransformMakeTranslation(&t1, v21, v20);
    v22 = *&t1.a;
    v23 = *&t1.c;
    v24 = *&t1.tx;
    *&t1.a = v40;
    *&t1.c = v36;
    t1.tx = v18;
    t1.ty = v19;
    *&t2.a = v22;
    *&t2.c = v23;
    *&t2.tx = v24;
    CGAffineTransformConcat(&v43, &t1, &t2);
    v25 = v43.tx;
    v26 = v43.ty;
    v37 = *&v43.c;
    v41 = *&v43.a;
    CGAffineTransformMakeScale(&t1, 256.0, 192.0);
    v27 = *&t1.a;
    v28 = *&t1.c;
    v29 = *&t1.tx;
    *&t1.a = v41;
    *&t1.c = v37;
    t1.tx = v25;
    t1.ty = v26;
    *&t2.a = v27;
    *&t2.c = v28;
    *&t2.tx = v29;
    CGAffineTransformConcat(&v43, &t1, &t2);
    v38 = *&v43.c;
    v42 = *&v43.a;
    v34 = *&v43.tx;

    v30 = v38;
    v31 = v42;
    v32 = v34;
    *(v2 + 576) = v42;
    *(v2 + 592) = v38;
    *(v2 + 608) = v34;
    *(v2 + 624) = 0;
    goto LABEL_10;
  }

  sub_258429100();
  __break(1u);
}

uint64_t sub_2583E539C()
{
  if (*(v0 + 632))
  {
    v1 = *(v0 + 632);
  }

  else
  {
    ImageProcessor.makeSamplePoints(numberOfPoints:)(200);
    v1 = v2;
    *(v0 + 632) = v2;
  }

  return v1;
}

uint64_t sub_2583E53FC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 248) = xmmword_25842FC70;
  *(v3 + 264) = 1;
  *(v3 + 272) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *(v3 + 280) = 0;
  v23 = 1;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 1;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 1;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0u;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 512) = 1;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 1;
  *(v3 + 576) = 0u;
  *(v3 + 592) = 0u;
  *(v3 + 608) = 0u;
  *(v3 + 624) = 1;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 1;
  *(v3 + 656) = 0u;
  *(v3 + 672) = 0u;
  *(v3 + 688) = 0;
  *(v3 + 720) = 0;
  *(v3 + 704) = 0u;
  *(v3 + 728) = 1;
  *(v3 + 732) = 0x3F80000000000000;
  *(v3 + 696) = a3;

  v7 = a1;
  v8 = ImageProcessor.init(sceneView:outputSize:)(v7, a2, 192.0, 256.0);
  swift_beginAccess();
  v9 = static SegmentationProcessor.DebuggerClass;
  if (static SegmentationProcessor.DebuggerClass)
  {
    v10 = qword_27F92F2D8;
    v11 = *(qword_27F92F2D8 + 16);
    v19[0] = sub_258428DA0();
    v19[1] = v19;
    v12 = *(v19[0] - 8);
    MEMORY[0x28223BE20](v19[0]);
    v14 = v19 - v13;
    v15 = v7;

    v11(v15, a2, v8, v9, v10);
    v16 = *(v9 - 8);
    if ((*(v16 + 48))(v14, 1, v9) != 1)
    {
      *(&v21 + 1) = v9;
      v22 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v16 + 32))(boxed_opaque_existential_1, v14, v9);

      goto LABEL_7;
    }

    (*(v12 + 8))(v14, v19[0]);
  }

  else
  {
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
LABEL_7:
  swift_beginAccess();
  sub_2583E8FC8(&v20, v8 + 656);
  swift_endAccess();
  return v8;
}

Swift::Void __swiftcall SegmentationProcessor.didUpdate(frame:)(ARFrame frame)
{
  v3 = *(v1 + 272);
  [v3 lock];
  if (sub_2583E59F0(frame.super.isa))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v5 didProcess];
      }

      swift_unknownObjectRelease();
    }
  }

  if ((SegmentationProcessor.debugOptions.getter() & 8) == 0)
  {
    goto LABEL_21;
  }

  v6 = ImageProcessor.viewportCenter.getter();
  v8 = v7;
  v9 = v6 / ImageProcessor.viewportSize.getter();
  v10 = v8 / *(v1 + 96);
  sub_2583E4F74(&v28);
  v29 = v28;
  v32.x = v9;
  v32.y = v10;
  v11 = CGPointApplyAffineTransform(v32, &v29);
  v12 = [(objc_class *)frame.super.isa hitTest:32 types:v11.x, v11.y];
  sub_258385DB0(0, &qword_27F928B10);
  v13 = sub_258428860();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:

    v15 = 0;
LABEL_15:
    swift_beginAccess();
    sub_258389808(v1 + 656, v26, &qword_27F928E40);
    if (v27)
    {
      sub_2583ACFA4(v26, v23);
      sub_258385E40(v26, &qword_27F928E40);
      v16 = v24;
      v17 = v25;
      __swift_project_boxed_opaque_existential_0(v23, v24);
      if (v15)
      {
        [v15 worldTransform];
        v22 = 0;
        LOBYTE(v29.a) = 0;
      }

      else
      {
        v22 = 1;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
      }

      *&v29.a = v18;
      *&v29.c = v19;
      *&v29.tx = v20;
      v30 = v21;
      v31 = v22;
      (*(v17 + 40))(&v29, v16, v17);

      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {

      sub_258385E40(v26, &qword_27F928E40);
    }

LABEL_21:
    [v3 unlock];
    return;
  }

  sub_258428F10();
  if (!sub_258428F10())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x259C7E900](0, v13);
    goto LABEL_12;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
LABEL_12:
    v15 = v14;

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_2583E59F0(void *a1)
{
  v2 = v1;
  v111 = *MEMORY[0x277D85DE8];
  result = [a1 rawSceneUnderstandingData];
  if (result)
  {
    v5 = result;
    v6 = [result semanticSegmentationBuffer];
    if (!v6 || (v6, (v7 = [v5 semanticSegmentationConfidenceBuffer]) == 0) || (v7, (v8 = objc_msgSend(v5, sel_normalsBuffer)) == 0))
    {

      return 0;
    }

    v9 = [a1 camera];
    v10 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    [v9 projectionMatrixForOrientation:1 viewportSize:v12 zNear:v13 zFar:{0.00100000005, 1000.0}];
    v94 = v14;
    v95 = v15;
    v96 = v16;
    v97 = v17;
    [v9 viewMatrixForOrientation_];
    v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v18.f32[0]), v95, *v18.f32, 1), v96, v18, 2), v97, v18, 3);
    v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v20.f32[0]), v95, *v20.f32, 1), v96, v20, 2), v97, v20, 3);
    v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v22.f32[0]), v95, *v22.f32, 1), v96, v22, 2), v97, v22, 3);
    v24 = v97;
    v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, v25.f32[0]), v95, *v25.f32, 1), v96, v25, 2);
    v98 = 0;
    *(v1 + 288) = v19;
    *(v1 + 304) = v21;
    v27 = vmlaq_laneq_f32(v26, v24, v25, 3);
    *(v1 + 320) = v23;
    *(v1 + 336) = v27;
    *(v1 + 352) = 0;
    v112.columns[0] = v19;
    v112.columns[1] = v21;
    v112.columns[2] = v23;
    v112.columns[3] = v27;
    v99 = 0;
    *(v1 + 368) = __invert_f4(v112);
    *(v1 + 432) = 0;
    [v9 transform];
    v100 = 0;
    *(v1 + 448) = v28;
    *(v1 + 464) = v29;
    *(v1 + 480) = v30;
    *(v1 + 496) = v31;
    *(v1 + 512) = 0;
    sub_258428450();
    if (*seed)
    {
      [*seed gravity];
      v33 = v32;
      v35 = v34;
      v37 = v36;

      *(v1 + 704) = v33;
      *(v1 + 712) = v35;
      *(v1 + 720) = v37;
      *(v1 + 728) = 0;
    }

    v38 = [objc_opt_self() currentDevice];
    v39 = [v38 orientation];

    [v9 eulerAngles];
    v41 = v40;
    if (v39 > 2)
    {
      if (v39 != 5)
      {
        if (v39 == 3)
        {
          v41 = v40 + 3.1416;
        }

LABEL_18:
        v42 = __sincosf_stret(v41);
        *(v2 + 732) = -v42.__sinval;
        *(v2 + 736) = v42.__cosval;
        type metadata accessor for SegmentationResult();
        swift_allocObject();
        v43 = v5;
        *(v2 + 280) = SegmentationResult.init(_:)(v43);

        *(v2 + 648) = 1;
        if ((SegmentationProcessor.debugOptions.getter() & 0x70) != 0)
        {
          v44 = *(v2 + 280);
          if (v44)
          {

            v45 = [a1 capturedImage];
            v46 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
            sub_2583A7FA8(v102);
            *seed = v102[0];
            v107 = v102[1];
            v108 = v102[2];
            v47 = [v46 imageByApplyingTransform_];

            v48 = *(v2 + 176);
            result = swift_beginAccess();
            v49 = *(v2 + 152);
            if (!v49)
            {
              __break(1u);
              goto LABEL_55;
            }

            v50 = v49;
            [v48 render:v47 toCVPixelBuffer:v50];

            v51 = *(v2 + 152);
            if (v51 && (*(v2 + 256) & 0x60) != 0)
            {
              v52 = sub_2583EB608;
              if ((*(v2 + 256) & 0x40) == 0)
              {
                v52 = sub_2583EB514;
              }

              v97.i64[0] = v52;
              swift_beginAccess();
              sub_258389808(v2 + 656, v103, &qword_27F928E40);
              v53 = v104;
              if (!v104)
              {

                sub_258385E40(v103, &qword_27F928E40);
                return 1;
              }

              v96.i64[0] = v105;
              v54 = __swift_project_boxed_opaque_existential_0(v103, v104);
              v87 = &v83;
              v55 = *(v53 - 8);
              MEMORY[0x28223BE20](v54);
              v57 = &v83 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v55 + 16))(v57);
              v58 = v51;
              sub_258385E40(v103, &qword_27F928E40);
              v59 = (*(v96.i64[0] + 8))(v53);
              result = (*(v55 + 8))(v57, v53);
              if ((*(v2 + 512) & 1) == 0)
              {
                v60 = *(v2 + 448);
                v95 = *(v2 + 464);
                v96 = v60;
                v61 = *(v2 + 480);
                v93 = *(v2 + 496);
                v94 = v61;
                v62 = *(v2 + 704);
                v91 = *(v2 + 712);
                v92 = v62;
                v90 = *(v2 + 720);
                v89 = *(v2 + 728);
                CVPixelBufferLockBaseAddress(v58, 0);
                BaseAddress = CVPixelBufferGetBaseAddress(v58);
                CVPixelBufferUnlockBaseAddress(v58, 0);
                v63 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
                swift_beginAccess();
                if (v59[v63])
                {
                  goto LABEL_30;
                }

                seed[0] = 0;
                result = *&v59[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface];
                if (result)
                {
                  IOSurfaceLock(result, 2u, seed);
                  v59[v63] = 1;
LABEL_30:
                  v84 = v9;
                  v85 = v63;
                  v83 = v58;
                  v64 = v44;
                  v86 = v43;
                  v65 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
                  result = swift_beginAccess();
                  v66 = *&v59[v65];
                  if (v66 < 0)
                  {
                    goto LABEL_53;
                  }

                  if (v66)
                  {
                    v67 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
                    v68 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
                    v69 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
                    swift_beginAccess();
                    swift_beginAccess();
                    result = swift_beginAccess();
                    v70 = 0;
                    while (1)
                    {
                      v71 = *&v59[v67];
                      if (!v71)
                      {
                        break;
                      }

                      v72 = v70 / v71;
                      v73 = __OFSUB__(v71, v70 % v71);
                      v74 = v71 - v70 % v71;
                      if (v73)
                      {
                        goto LABEL_50;
                      }

                      v75 = *&v59[v68];
                      v76 = v74 * v75;
                      if ((v74 * v75) >> 64 != (v74 * v75) >> 63)
                      {
                        goto LABEL_51;
                      }

                      if (__OFADD__(v76, v72))
                      {
                        goto LABEL_52;
                      }

                      v77 = *&v59[v69];
                      if (v77)
                      {
                        v78 = BaseAddress[v70];
                        LOBYTE(v101[0]) = 0;
                        *seed = v96;
                        v107 = v95;
                        v108 = v94;
                        v109 = v93;
                        v110 = 0;
                        result = (v97.i64[0])(v78, v64, v76 + v72, seed, v92, v91, v90, v89);
                        *(v77 + 4 * v70) = result;
                      }

                      if (v66 == ++v70)
                      {
                        goto LABEL_44;
                      }
                    }

                    __break(1u);
LABEL_50:
                    __break(1u);
LABEL_51:
                    __break(1u);
LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
                  }

LABEL_44:
                  v79 = v85;
                  if (v59[v85] != 1)
                  {

                    return 1;
                  }

                  v101[0] = 0;
                  v80 = *&v59[OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface];
                  v81 = v86;
                  if (v80)
                  {
                    v82 = v80;
                    IOSurfaceUnlock(v82, 2u, v101);

                    v59[v79] = 0;

                    return 1;
                  }

LABEL_57:
                  __break(1u);
                  return result;
                }

LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }
        }

        return 1;
      }
    }

    else if (v39 != 1)
    {
      if (v39 == 2)
      {
        v41 = v40 + -1.5708;
      }

      goto LABEL_18;
    }

    v41 = v40 + 1.5708;
    goto LABEL_18;
  }

  return result;
}

uint64_t SegmentationProcessor.projectPoint(_:)(float32x4_t a1)
{
  v2 = *(v1 + 272);
  [v2 lock];
  v14 = 0;
  if ((*(v1 + 352) & 1) == 0)
  {
    v12 = *(v1 + 288);
    v11 = *(v1 + 304);
    v10 = *(v1 + 320);
    v9 = *(v1 + 336);
    v3.f64[0] = ImageProcessor.viewportSize.getter();
    v3.f64[1] = *(v1 + 96);
    v4 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(a1, v12, v11, v10, v9, vcvt_f32_f64(v3));
    v6 = (LODWORD(v5) & 0x7FFFFF) != 0 && (~LODWORD(v5) & 0x7F800000) == 0;
    v7 = v5 >= 0.0 && v5 <= 1.0;
    if (v7 && !v6)
    {
      v14 = *&vcvtq_f64_f32(v4);
    }
  }

  [v2 unlock];
  return v14;
}

CGPoint_optional __swiftcall SegmentationProcessor.reprojectPoint(screenPoint:depth:)(CGPoint screenPoint, Swift::Float depth)
{
  y = screenPoint.y;
  x = screenPoint.x;
  v5 = *(v2 + 272);
  [v5 lock];
  if (*(v2 + 432))
  {
    v6 = 0;
  }

  else
  {
    v18 = *(v2 + 368);
    v17 = *(v2 + 384);
    v16 = *(v2 + 400);
    v15 = *(v2 + 416);
    *&v7 = x;
    *&v8 = y;
    v9.n128_u64[0] = __PAIR64__(v8, v7);
    v9.n128_u64[1] = LODWORD(depth);
    v20 = v9;
    v10.f64[0] = ImageProcessor.viewportSize.getter();
    v10.f64[1] = *(v2 + 96);
    *v11.i64 = _s17MeasureFoundation0A6CameraC14unprojectPoint_17viewProjectionInv12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v20, v18, v17, v16, v15, COERCE_DOUBLE(vcvt_f32_f64(v10)));
    v6 = SegmentationProcessor.projectPoint(_:)(v11);
  }

  [v5 unlock];
  v14 = v6;
  result.value.y = v13;
  result.value.x = v12;
  result.is_nil = v14;
  return result;
}

CGPoint_optional __swiftcall SegmentationProcessor.reprojectPoint(screenPoint:frame:)(CGPoint screenPoint, ARFrame frame)
{
  v4 = *(v2 + 272);
  [v4 lock];
  v5 = ImageProcessor.viewportCenter.getter();
  v7 = v6;
  v8 = v5 / ImageProcessor.viewportSize.getter();
  v9 = v7 / *(v2 + 96);
  sub_2583E4F74(&v22);
  v21 = v22;
  v23.x = v8;
  v23.y = v9;
  v10 = CGPointApplyAffineTransform(v23, &v21);
  v11 = [(objc_class *)frame.super.isa hitTest:32 types:v10.x, v10.y];
  sub_258385DB0(0, &qword_27F928B10);
  v12 = sub_258428860();

  if (v12 >> 62)
  {
    sub_258428F10();
    v15 = sub_258428F10();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:

    v20 = 0;
    goto LABEL_9;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x259C7E900](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v16 = *(v12 + 32);
  }

  v17 = v16;

  [v17 worldTransform];
  v19 = v18;
  v19.i32[3] = 0;
  v20 = SegmentationProcessor.projectPoint(_:)(v19);

LABEL_9:
  [v4 unlock];
  LOBYTE(v15) = v20;
LABEL_12:
  result.value.y = v14;
  result.value.x = v13;
  result.is_nil = v15;
  return result;
}

MeasureFoundation::SegmentationResult::Label_optional __swiftcall SegmentationProcessor.label(at:withKernel:)(CGPoint at, Swift::Int withKernel)
{
  y = at.y;
  x = at.x;
  v6 = *(v2 + 272);
  [v6 lock];
  sub_2583E685C(x, y);
  v8 = v7;
  v10 = v9;
  result.value = sub_2583E6944(v7, v9);
  value = result.value;
  if (result.value == MeasureFoundation_SegmentationResult_Label_unknown || result.value == MeasureFoundation_SegmentationResult_Label_unknownDefault || withKernel < 1)
  {
LABEL_30:
    [v6 unlock];
    return value;
  }

  v13 = -withKernel;
  v25 = -withKernel;
  v26 = withKernel;
  v14 = 2 * withKernel;
  v15 = -withKernel;
  v24 = 2 * withKernel;
LABEL_5:
  v16 = v10 + v15;
  if (!__OFADD__(v10, v15))
  {
    while (1)
    {
      v17 = v8 + v13;
      if (__OFADD__(v8, v13))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v18 = *(v2 + 280);
      if (!v18)
      {
        break;
      }

      result.value = MeasureFoundation_SegmentationResult_Label_unknown;
      if ((v17 & 0x8000000000000000) == 0)
      {
        v19 = v18[9];
        if (v17 < v19 && (v16 & 0x8000000000000000) == 0)
        {
          if (v16 >= v18[10])
          {
            break;
          }

          v20 = v16 * v19;
          if ((v16 * v19) >> 64 != (v16 * v19) >> 63)
          {
            goto LABEL_33;
          }

          v21 = __OFADD__(v20, v17);
          v22 = v20 + v17;
          if (v21)
          {
            goto LABEL_34;
          }

          v23 = *(v18[6] + v22);
          if ([objc_opt_self() jasperAvailable])
          {
            result.value = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v23);
            if (result.value == MeasureFoundation_SegmentationResult_Label_unknownDefault)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v23 > 0xC)
            {
              goto LABEL_29;
            }

            result.value = byte_25842FF6A[v23];
          }
        }
      }

LABEL_18:
      if (value != result.value)
      {
        goto LABEL_29;
      }

      if (!v14)
      {
        if (v15 == v26)
        {
          goto LABEL_30;
        }

        v21 = __OFADD__(v15++, 1);
        v14 = v24;
        v13 = v25;
        if (v21)
        {
          __break(1u);
LABEL_29:
          value = MeasureFoundation_SegmentationResult_Label_unknown;
          goto LABEL_30;
        }

        goto LABEL_5;
      }

      --v14;
      v21 = __OFADD__(v13++, 1);
      if (v21)
      {
        goto LABEL_32;
      }
    }

    result.value = MeasureFoundation_SegmentationResult_Label_unknown;
    goto LABEL_18;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_2583E685C(CGFloat a1, CGFloat a2)
{
  sub_2583E50F0(&v8);
  v7 = v8;
  v9.x = a1;
  v9.y = a2;
  v4 = CGPointApplyAffineTransform(v9, &v7);
  v5 = round(v4.x);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = round(v4.y);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_2583E6944(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 280);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  if (result < 0)
  {
    return v4;
  }

  v5 = v3[9];
  if (v5 <= result || a2 < 0)
  {
    return v4;
  }

  if (v3[10] <= a2)
  {
    return 0;
  }

  v6 = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = __OFADD__(v6, result);
  v8 = v6 + result;
  if (v7)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v9 = *(v3[6] + v8);
  if ([objc_opt_self() jasperAvailable])
  {

    return _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v9);
  }

  v10 = sub_2583EB8C4(v9);
  if (v10 == 13)
  {
    return 33;
  }

  return sub_2583EB4E8(v10);
}

uint64_t SegmentationProcessor.label(at:withKernel:)(uint64_t a1, float32x4_t a2)
{
  v4 = *(v2 + 272);
  [v4 lock];
  *&v5 = COERCE_DOUBLE(SegmentationProcessor.projectPoint(_:)(a2));
  v7 = &property descriptor for Transformer.viewToClip;
  if (v8)
  {
    v9 = 33;
LABEL_34:
    [v4 v7[385]];
    return v9;
  }

  v10 = *&v5;
  v11 = v6;
  [v4 lock];
  sub_2583E685C(v10, v11);
  v13 = v12;
  v15 = v14;
  result = sub_2583E6944(v12, v14);
  v9 = result;
  if (!result || result == 33 || a1 <= 0)
  {
LABEL_33:
    [v4 v7[385]];
    goto LABEL_34;
  }

  v17 = -a1;
  v18 = 2 * a1;
  v19 = -a1;
  v28 = 2 * a1;
  v29 = -a1;
LABEL_7:
  v31 = v19;
  v20 = v15 + v19;
  if (__OFADD__(v15, v19))
  {
    goto LABEL_39;
  }

  while (1)
  {
    v21 = v13 + v17;
    if (__OFADD__(v13, v17))
    {
      break;
    }

    v22 = *(v2 + 280);
    if (!v22)
    {
      goto LABEL_19;
    }

    result = 0;
    if ((v21 & 0x8000000000000000) == 0)
    {
      v23 = v22[9];
      if (v21 < v23 && (v20 & 0x8000000000000000) == 0)
      {
        if (v20 >= v22[10])
        {
LABEL_19:
          result = 0;
          goto LABEL_20;
        }

        v24 = v20 * v23;
        if ((v20 * v23) >> 64 != (v20 * v23) >> 63)
        {
          goto LABEL_37;
        }

        v25 = __OFADD__(v24, v21);
        v26 = v24 + v21;
        if (v25)
        {
          goto LABEL_38;
        }

        v27 = *(v22[6] + v26);
        if ([objc_opt_self() jasperAvailable])
        {
          result = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v27);
          if (result == 33)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v27 >= 0xD)
          {
            goto LABEL_31;
          }

          result = byte_25842FF6A[v27];
        }
      }
    }

LABEL_20:
    if (v9 != result)
    {
      goto LABEL_31;
    }

    if (!v18)
    {
      if (v31 != a1)
      {
        v19 = v31 + 1;
        v18 = 2 * a1;
        v17 = -a1;
        if (!__OFADD__(v31, 1))
        {
          goto LABEL_7;
        }

        __break(1u);
LABEL_31:
        v9 = 0;
      }

      v7 = &property descriptor for Transformer.viewToClip;
      goto LABEL_33;
    }

    --v18;
    v25 = __OFADD__(v17++, 1);
    if (v25)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2583E6C30(void *a1)
{
  v3 = *(v1 + 272);
  [v3 lock];
  if (*(v1 + 648) == 1)
  {
    v4 = sub_2583E539C();
    v5 = sub_2583E6CD4(v4, a1);

    *(v1 + 640) = v5;

    *(v1 + 648) = 0;
  }

  else
  {
    v5 = *(v1 + 640);
  }

  [v3 unlock];
  return v5;
}

uint64_t sub_2583E6CD4(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((SegmentationProcessor.debugOptions.getter() & 4) != 0)
  {
    swift_beginAccess();
    sub_258389808(v2 + 656, v137, &qword_27F928E40);
    if (*&v137[24])
    {
      sub_2583ACFA4(v137, &v134);
      sub_258385E40(v137, &qword_27F928E40);
      v5 = *(&v135 + 1);
      v6 = *&v136[0];
      __swift_project_boxed_opaque_existential_0(&v134, *(&v135 + 1));
      (*(v6 + 24))(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(&v134);
    }

    else
    {
      sub_258385E40(v137, &qword_27F928E40);
    }
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F98];
  }

  v8 = a1 + 32;
  v9 = MEMORY[0x277D84F98];
  swift_beginAccess();
  v10 = 0;
  v11 = &property descriptor for Transformer.viewToClip;
  v110 = vdupq_n_s64(0x21uLL);
  v117 = v9;
  v112 = v2;
  v113 = a1 + 32;
  v114 = v7;
  while (1)
  {
    v12 = (v8 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v3 + 272);
    [v15 v11[384]];
    sub_2583E50F0(v148);
    *v137 = v148[0];
    *&v137[16] = v148[1];
    *&v137[32] = v148[2];
    v150.x = v13;
    v150.y = v14;
    v16 = CGPointApplyAffineTransform(v150, v137);
    v17 = round(v16.x);
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_129;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_130;
    }

    v18 = round(v16.y);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_131;
    }

    if (v18 <= -9.22337204e18)
    {
      goto LABEL_132;
    }

    if (v18 >= 9.22337204e18)
    {
      goto LABEL_133;
    }

    v19 = *(v3 + 280);
    if (!v19 || (v20 = v17, v17 < 0) || (v21 = v19[9], v21 <= v20) || (v22 = v18, v18 < 0) || v19[10] <= v22)
    {
LABEL_35:
      [v15 unlock];
      goto LABEL_36;
    }

    v23 = v22 * v21;
    if ((v22 * v21) >> 64 != (v22 * v21) >> 63)
    {
      goto LABEL_135;
    }

    v24 = __OFADD__(v23, v20);
    v25 = v23 + v20;
    if (v24)
    {
      goto LABEL_136;
    }

    v26 = *(v19[6] + v25);
    if ([objc_opt_self() jasperAvailable])
    {
      v27 = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v26);
      [v15 unlock];
      if (!v27 || v27 == 33)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = sub_2583EB8C4(v26) - 1;
      if (v28 >= 0xBu)
      {
        goto LABEL_35;
      }

      v27 = byte_25842FF77[v28];
      [v15 unlock];
    }

    v116 = v27;
    v29 = v13 / ImageProcessor.viewportSize.getter();
    v30 = v14 / *(v3 + 96);
    sub_2583E4F74(v149);
    *v137 = v149[0];
    *&v137[16] = v149[1];
    *&v137[32] = v149[2];
    v151.x = v29;
    v151.y = v30;
    v31 = CGPointApplyAffineTransform(v151, v137);
    v32 = [a2 hitTest:32 types:{v31.x, v31.y}];
    sub_258385DB0(0, &qword_27F928B10);
    v33 = sub_258428860();

    v118 = v33;
    v111 = v33 >> 62;
    if (v33 >> 62)
    {
      v34 = sub_258428F10();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v116 == 1 && v34 >= 2)
    {
      v37 = 0;
      v38 = v34 - 1;
      v39 = v33 & 0xC000000000000001;
      v40 = v33 & 0xFFFFFFFFFFFFFF8;
      v41 = v33 + 32;
      while (1)
      {
        v42 = v38 - 1;
        if (v38 < 1)
        {
          if (v37)
          {
            goto LABEL_33;
          }

          v42 = 0;
          v37 = 1;
        }

        if (v39)
        {
          v43 = MEMORY[0x259C7E900]();
        }

        else
        {
          if (v38 >= *(v40 + 16))
          {
            goto LABEL_134;
          }

          v43 = *(v41 + 8 * v38);
        }

        v44 = v43;
        v45 = [v43 anchor];
        if (!v45)
        {
          break;
        }

        v46 = v45;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v120 = v44;
          v48 = [v47 alignment];

          if (!v48)
          {
            goto LABEL_59;
          }

          goto LABEL_39;
        }

LABEL_40:
        v38 = v42;
      }

      v120 = v44;
LABEL_39:

      goto LABEL_40;
    }

LABEL_33:
    if (v111)
    {
      v36 = sub_258428F10();
    }

    else
    {
      v36 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v113;
    v7 = v114;
    if (v36)
    {
      if ((v118 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x259C7E900](0, v118);
      }

      else
      {
        if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        v49 = *(v118 + 32);
      }

      v120 = v49;
LABEL_59:

      v11 = &property descriptor for Transformer.viewToClip;
      [v15 lock];
      v3 = v112;
      v50 = *(v112 + 280);
      v51 = 0.0;
      if (v50)
      {
        v52 = *(v112 + 592);
        *v137 = *(v112 + 576);
        *&v137[16] = v52;
        *&v137[32] = *(v112 + 608);
        v53 = v13;
        *&v52 = v14;
        v54 = CGPointApplyAffineTransform(*(&v52 - 8), v137);
        v55 = round(v54.x);
        v8 = v113;
        v7 = v114;
        if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_138;
        }

        if (v55 <= -9.22337204e18)
        {
          goto LABEL_139;
        }

        if (v55 >= 9.22337204e18)
        {
          goto LABEL_140;
        }

        v56 = round(v54.y);
        if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v56 <= -9.22337204e18)
        {
          goto LABEL_142;
        }

        if (v56 >= 9.22337204e18)
        {
          goto LABEL_143;
        }

        v57 = v55;
        if ((v55 & 0x8000000000000000) == 0)
        {
          v58 = *(v50 + 72);
          if (v58 > v57)
          {
            v59 = v56;
            if ((v56 & 0x8000000000000000) == 0 && *(v50 + 80) > v59)
            {
              v60 = v59 * v58;
              if ((v59 * v58) >> 64 != (v59 * v58) >> 63)
              {
                goto LABEL_146;
              }

              v61 = v60 + v57;
              if (__OFADD__(v60, v57))
              {
                goto LABEL_147;
              }

              v62 = sub_2583EAFF0(v61);
              v51 = *&v62;

              v11 = &property descriptor for Transformer.viewToClip;
            }
          }
        }
      }

      else
      {
        v8 = v113;
        v7 = v114;
      }

      [v15 unlock];
      SegmentationProcessor.normal(at:)(v13, v14);
      v63 = v120;
      v64 = [v120 anchor];
      if (!v64)
      {
        goto LABEL_82;
      }

      v65 = v64;
      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      v63 = v65;
      if (!v66)
      {

LABEL_82:
        goto LABEL_36;
      }

      v67 = v66;
      v119 = v63;
      if ([v66 alignment])
      {
        if (v116 == 1 || v116 == 3)
        {
          goto LABEL_87;
        }
      }

      else
      {
        switch(v116)
        {
          case 2u:
            goto LABEL_86;
          case 6u:
LABEL_87:

            v68 = v63;
            goto LABEL_88;
          case 7u:
LABEL_86:

            v68 = v120;
LABEL_88:

            goto LABEL_36;
        }
      }

      v69 = v117;
      if (!*(v117 + 16) || (sub_258384520(v67), (v70 & 1) == 0))
      {
        v71 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v137 = v117;
        v142 = MEMORY[0x277D84F98];
        v143 = v110;
        v144 = 0;
        v145 = MEMORY[0x277D84F98];
        v146 = v110;
        v147 = 0;
        sub_258385394(&v142, v67, isUniquelyReferenced_nonNull_native);

        v69 = *v137;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      v141 = v69;
      v75 = sub_258384520(v67);
      v76 = *(v69 + 16);
      v77 = (v74 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_144;
      }

      v79 = v74;
      if (*(v69 + 24) >= v78)
      {
        if ((v73 & 1) == 0)
        {
          sub_258396104();
        }

        v82 = v75;
      }

      else
      {
        sub_258394578(v78, v73);
        v80 = sub_258384520(v67);
        if ((v79 & 1) != (v81 & 1))
        {
          goto LABEL_152;
        }

        v82 = v80;
      }

      if ((v79 & 1) == 0)
      {
        goto LABEL_150;
      }

      v83 = (*(v141 + 56) + (v82 << 6));
      v84 = v83[1];
      v138 = *v83;
      v139 = v84;
      v140[0] = v83[2];
      *(v140 + 12) = *(v83 + 44);
      if (!v138)
      {
        goto LABEL_150;
      }

      sub_2583E4864(v116, v51);
      *v137 = v138;
      *&v137[16] = v139;
      *&v137[32] = v140[0];
      *&v137[44] = *(v140 + 12);
      v85 = v141;
      if (v138)
      {
        v86 = (*(v141 + 56) + (v82 << 6));
        v87 = v139;
        *v86 = v138;
        v86[1] = v87;
        v86[2] = v140[0];
        *(v86 + 44) = *(v140 + 12);
      }

      else
      {

        sub_2583970C4(v82, v85);
      }

      v134 = v138;
      v135 = v139;
      v136[0] = v140[0];
      *(v136 + 12) = *(v140 + 12);
      sub_258389808(v137, v132, &qword_27F928E68);
      sub_258385E40(&v134, &qword_27F928E68);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v85;
      v90 = sub_258384520(v67);
      v91 = *(v85 + 16);
      v92 = (v89 & 1) == 0;
      v93 = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        goto LABEL_145;
      }

      v94 = v89;
      if (*(v85 + 24) >= v93)
      {
        v97 = v119;
        if ((v88 & 1) == 0)
        {
          v108 = v90;
          sub_258396104();
          v90 = v108;
        }

        v11 = &property descriptor for Transformer.viewToClip;
      }

      else
      {
        sub_258394578(v93, v88);
        v95 = sub_258384520(v67);
        if ((v94 & 1) != (v96 & 1))
        {
          goto LABEL_152;
        }

        v90 = v95;
        v11 = &property descriptor for Transformer.viewToClip;
        v97 = v119;
      }

      if ((v94 & 1) == 0)
      {
        goto LABEL_149;
      }

      v98 = v90 << 6;
      v99 = (*(v131 + 56) + (v90 << 6));
      v100 = v99[1];
      v128 = *v99;
      v129 = v100;
      v130[0] = v99[2];
      *(v130 + 12) = *(v99 + 44);
      if (!v128)
      {
        goto LABEL_149;
      }

      v101 = v90;
      sub_2583E4864(v116, 1.0);
      v132[0] = v128;
      v132[1] = v129;
      v133[0] = v130[0];
      *(v133 + 12) = *(v130 + 12);
      v102 = v131;
      v117 = v131;
      if (v128)
      {
        v103 = (*(v131 + 56) + v98);
        v104 = v129;
        *v103 = v128;
        v103[1] = v104;
        v103[2] = v130[0];
        *(v103 + 44) = *(v130 + 12);
      }

      else
      {

        sub_2583970C4(v101, v102);
      }

      v126[0] = v128;
      v126[1] = v129;
      v127[0] = v130[0];
      *(v127 + 12) = *(v130 + 12);
      sub_258389808(v132, v124, &qword_27F928E68);
      sub_258385E40(v126, &qword_27F928E68);
      if ((*(v112 + 256) & 4) != 0)
      {
        SegmentationProcessor.normal(at:)(v13, v14);
        if (v105)
        {
          goto LABEL_151;
        }

        sub_258389808(v112 + 656, v124, &qword_27F928E40);
        if (v125)
        {
          sub_2583ACFA4(v124, v121);
          sub_258385E40(v124, &qword_27F928E40);
          v106 = v122;
          v107 = v123;
          __swift_project_boxed_opaque_existential_0(v121, v122);
          [v120 worldTransform];
          if (v116 > 0x29u)
          {
            goto LABEL_148;
          }

          (*(v107 + 32))(dword_28697E738[v116 + 8], v106, v107);

          __swift_destroy_boxed_opaque_existential_0(v121);
        }

        else
        {

          sub_258385E40(v124, &qword_27F928E40);
        }

        v11 = &property descriptor for Transformer.viewToClip;
      }

      else
      {
      }
    }

    else
    {

      v3 = v112;
      v11 = &property descriptor for Transformer.viewToClip;
    }

LABEL_36:
    if (++v10 == v7)
    {
      return v117;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  sub_258385DB0(0, &qword_27F927FB8);
  result = sub_258429390();
  __break(1u);
  return result;
}

Swift::Float __swiftcall SegmentationProcessor.labelConfidence(at:)(CGPoint at)
{
  y = at.y;
  x = at.x;
  v4 = *(v1 + 272);
  [v4 lock];
  v5 = *(v1 + 280);
  if (!v5)
  {
    v9 = 0.0;
    goto LABEL_11;
  }

  sub_2583E685C(x, y);
  v9 = 0.0;
  if (v6 < 0 || (v10 = *(v5 + 72), v6 >= v10) || v7 < 0 || v7 >= *(v5 + 80))
  {
LABEL_9:

LABEL_11:
    [v4 unlock];
    return v9;
  }

  v11 = v7 * v10;
  if ((v7 * v10) >> 64 == (v7 * v10) >> 63)
  {
    v12 = __OFADD__(v11, v6);
    v13 = v11 + v6;
    if (!v12)
    {
      v14 = sub_2583EAFF0(v13);
      v9 = *&v14;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t SegmentationProcessor.normal(at:)(CGFloat a1, CGFloat a2)
{
  v5 = *(v2 + 272);
  [v5 lock];
  v6 = *(v2 + 280);
  if (v6)
  {
    if ((*(v2 + 512) & 1) == 0)
    {
      v7 = *(v2 + 496);
      v8 = *(v2 + 504);
      v9 = *(v2 + 480);
      v10 = *(v2 + 488);
      v11 = *(v2 + 464);
      *&v35 = *(v2 + 472);
      v12 = *(v2 + 448);
      v36 = *(v2 + 456);

      sub_2583E685C(a1, a2);
      v17 = SegmentationResult.normal(at:)(v13, v14, v15, v16);
      if ((v20 & 1) == 0)
      {
        v22.i64[0] = v7;
        v22.i64[1] = v8;
        v23.i64[0] = v9;
        v23.i64[1] = v10;
        v24.i64[0] = v11;
        v24.i64[1] = v35;
        v25.i64[0] = v12;
        v25.i64[1] = v36;
        v26.i64[0] = v17;
        v26.i64[1] = v18;
        *&v19 = *(v2 + 732);
        v27 = vrev64_s32(vmul_n_f32(*&v19, *&v17));
        *&v19 = vmul_lane_f32(*&v19, v17, 1);
        v28.i32[0] = vsub_f32(v27, *&v19).u32[0];
        v28.i32[1] = vadd_f32(v27, *&v19).i32[1];
        *&v19 = v7;
        v35 = v19;
        v28.i64[1] = vnegq_f32(v26).u32[2];
        *v29.i64 = simd_float4x4.apply(to:)(v28, v25, v24, v23, v22);
        v34 = v29;

        v30.i64[0] = __PAIR64__(DWORD1(v35), v7);
        v30.i64[1] = v8;
        v31 = vsubq_f32(v34, v30);
        v32 = vmulq_f32(v31, v31);
        *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
        *v32.f32 = vrsqrte_f32(v33);
        *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
        v6 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]).u64[0];
        goto LABEL_6;
      }
    }

    v6 = 0;
  }

LABEL_6:
  [v5 unlock];
  return v6;
}

unint64_t SegmentationProcessor.normal(at:)(float32x4_t a1)
{
  v2 = *(v1 + 272);
  [v2 lock];
  v3 = SegmentationProcessor.projectPoint(_:)(a1);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = SegmentationProcessor.normal(at:)(*&v3, v4);
  }

  [v2 unlock];
  return v6;
}

unint64_t SegmentationProcessor.averageNormal(of:)(unint64_t a1)
{
  v3 = *(v1 + 272);
  [v3 lock];
  if (qword_27F9279F0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v22 = static SIMD3<>.zero;
    v6 = (a1 + 32);
    do
    {
      v27 = *v6;
      [v3 lock];
      [v3 lock];
      if ((*(v1 + 352) & 1) != 0 || ((v26 = *(v1 + 288), v25 = *(v1 + 304), v24 = *(v1 + 320), v23 = *(v1 + 336), v8.f64[0] = ImageProcessor.viewportSize.getter(), v8.f64[1] = *(v1 + 96), v9 = _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v27, v26, v25, v24, v23, vcvt_f32_f64(v8)), (LODWORD(v10) & 0x7FFFFF) != 0) ? (v11 = (~LODWORD(v10) & 0x7F800000) == 0) : (v11 = 0), v10 >= 0.0 ? (v12 = v10 <= 1.0) : (v12 = 0), !v12 || v11))
      {
        [v3 unlock];
        [v3 unlock];
      }

      else
      {
        v13 = v9.f32[0];
        v14 = v9.f32[1];
        [v3 unlock];
        a1 = SegmentationProcessor.normal(at:)(v13, v14);
        v16 = v15;
        v18 = v17;
        [v3 unlock];
        if ((v18 & 1) == 0)
        {
          if (__OFADD__(v5++, 1))
          {
            __break(1u);
            goto LABEL_24;
          }

          *v7.f32 = vadd_f32(*v22.f32, a1);
          v7.i64[1] = vaddq_f32(v22, vdupq_n_s64(v16)).u32[2];
          v22 = v7;
        }
      }

      ++v6;
      --v4;
    }

    while (v4);
    if (v5 < 1)
    {
      goto LABEL_21;
    }

    v7.f32[0] = v5;
    v20 = vdivq_f32(v22, vdupq_lane_s32(*v7.f32, 0)).u64[0];
  }

  else
  {
LABEL_21:
    v20 = 0;
  }

  [v3 unlock];
  return v20;
}

uint64_t sub_2583E7F7C()
{
  sub_2583E8DE8(v0 + 240);

  sub_258385E40(v0 + 656, &qword_27F928E40);
}

id *SegmentationProcessor.deinit()
{

  sub_2583E8DE8((v0 + 30));

  sub_258385E40((v0 + 82), &qword_27F928E40);

  return v0;
}

uint64_t SegmentationProcessor.__deallocating_deinit()
{
  SegmentationProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2583E810C()
{
  v0 = sub_2583895C8(&unk_28697E6B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E70);
  result = swift_arrayDestroy();
  static SegmentationProcessor.DebugOptions.keyForFeature = v0;
  return result;
}

uint64_t *SegmentationProcessor.DebugOptions.keyForFeature.unsafeMutableAddressor()
{
  if (qword_27F927AD0 != -1)
  {
    swift_once();
  }

  return &static SegmentationProcessor.DebugOptions.keyForFeature;
}

void sub_2583E81DC()
{
  if (qword_27F927AD0 != -1)
  {
    swift_once();
  }

  v0 = static SegmentationProcessor.DebugOptions.keyForFeature;
  v1 = *(static SegmentationProcessor.DebugOptions.keyForFeature + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_25838C55C(*(static SegmentationProcessor.DebugOptions.keyForFeature + 16), 0);
  v3 = sub_2583E8C90(&v4, v2 + 4, v1, v0);

  sub_2583980BC();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  static SegmentationProcessor.DebugOptions.keys = v2;
}

uint64_t *SegmentationProcessor.DebugOptions.keys.unsafeMutableAddressor()
{
  if (qword_27F927AD8 != -1)
  {
    swift_once();
  }

  return &static SegmentationProcessor.DebugOptions.keys;
}

uint64_t sub_2583E8344()
{
  if (qword_27F927AD0 != -1)
  {
    swift_once();
  }

  sub_2583E4A30(v0);
  v2 = v1;

  static SegmentationProcessor.DebugOptions.default = v2;
  return result;
}

uint64_t static SegmentationProcessor.DebugOptions.default.getter()
{
  if (qword_27F927AE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static SegmentationProcessor.DebugOptions.default;
}

uint64_t static SegmentationProcessor.DebugOptions.default.setter(uint64_t a1)
{
  if (qword_27F927AE0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static SegmentationProcessor.DebugOptions.default = a1;
  return result;
}

uint64_t (*static SegmentationProcessor.DebugOptions.default.modify())()
{
  if (qword_27F927AE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SegmentationProcessor.SegmentedTexture.fill(featureProvider:inputBuffer:pixelRenderer:cameraTransform:gravity:isFeatureRotated:)(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint32_t *, uint64_t, uint64_t, uint64_t, void), int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, char a13)
{
  v50 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v16 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_isLocking;
  swift_beginAccess();
  if ((*(v13 + v16) & 1) == 0)
  {
    seed[0] = 0;
    result = *(v13 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface);
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    IOSurfaceLock(result, 2u, seed);
    *(v13 + v16) = 1;
  }

  v18 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixelsNum;
  result = swift_beginAccess();
  v19 = *(v13 + v18);
  if (v19 < 0)
  {
    goto LABEL_23;
  }

  v33 = v16;
  if (v19)
  {
    v20 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_pixel32s;
    v21 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_width;
    v22 = OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_height;
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    for (i = 0; v19 != i; ++i)
    {
      v24 = i;
      if (a13)
      {
        v25 = *(v13 + v21);
        if (!v25)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

        v26 = i / v25;
        v27 = __OFSUB__(v25, i % v25);
        v28 = v25 - i % v25;
        if (v27)
        {
          goto LABEL_20;
        }

        v29 = *(v13 + v22);
        v30 = v28 * v29;
        if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
        {
          goto LABEL_21;
        }

        v24 = v30 + v26;
        if (__OFADD__(v30, v26))
        {
          goto LABEL_22;
        }
      }

      v31 = *(v13 + v20);
      if (v31)
      {
        v32 = BaseAddress[i];
        LOBYTE(v44) = 0;
        *seed = a9;
        v46 = a10;
        v47 = a11;
        v48 = a12;
        v49 = 0;
        result = a3(v32, a1, v24, seed, a5, a6, a7, a8 & 1);
        *(v31 + 4 * i) = result;
      }
    }
  }

  if (*(v13 + v33) == 1)
  {
    v44 = 0;
    result = *(v13 + OBJC_IVAR____TtC17MeasureFoundation14SurfaceTexture_ioSurface);
    if (result)
    {
      result = IOSurfaceUnlock(result, 2u, &v44);
      *(v13 + v33) = 0;
      return result;
    }

LABEL_25:
    __break(1u);
  }

  return result;
}

id SegmentationProcessor.SegmentedTexture.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentationProcessor.SegmentedTexture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2583E883C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2583E8884(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2584283F0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_2583E893C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  v7 = *(a3 + 80);
  v8 = *(a3 + 96);
  v9 = *(a3 + 112);
  v10 = *(a3 + 128);
  v11 = *(a3 + 144);
  v12 = *(a3 + 160);
  v13 = *(a3 + 168);
  v14 = *(a3 + 176);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v15 = a4[7] + 192 * result;
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 16) = v16;
  *(v15 + 32) = v4;
  *(v15 + 48) = v5;
  *(v15 + 64) = v6;
  *(v15 + 80) = v7;
  *(v15 + 96) = v8;
  *(v15 + 112) = v9;
  *(v15 + 128) = v10;
  *(v15 + 144) = v11;
  *(v15 + 152) = *(a3 + 152);
  *(v15 + 160) = v12;
  *(v15 + 168) = v13;
  *(v15 + 176) = v14;
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_2583E89E4(unint64_t result, char a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_2583E8A28(unint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = *(a3 + 6);
  v6 = a3[4];
  v7 = *(a3 + 14);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v8 = a4[7] + (result << 6);
  *v8 = v4;
  *(v8 + 8) = *(a3 + 1);
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = *(a3 + 5);
  *(v8 + 56) = v7;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t sub_2583E8A9C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2583E8AE0(unint64_t a1, uint64_t a2, char a3, void *a4, float a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_2584283F0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a4[7] + 8 * a1;
  *v13 = a3;
  *(v13 + 4) = a5;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_2583E8BAC(unint64_t result, uint64_t *a2, void *a3, double a4)
{
  v4 = *a2;
  v5 = a2[2];
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  v15 = *(a2 + 11);
  v16 = *(a2 + 12);
  v17 = *(a2 + 13);
  v18 = *(a2 + 14);
  v19 = *(a2 + 15);
  v20 = *(a2 + 16);
  v21 = *(a2 + 17);
  v22 = *(a2 + 20);
  v23 = *(a2 + 21);
  v24 = *(a2 + 22);
  v25 = *(a2 + 23);
  v26 = *(a2 + 25);
  v27 = *(a2 + 26);
  v28 = *(a2 + 27);
  v29 = *(a2 + 28);
  v30 = *(a2 + 29);
  v31 = *(a2 + 30);
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  v32 = a3[7] + 496 * result;
  *v32 = v4;
  *(v32 + 16) = v5;
  *(v32 + 32) = v6;
  *(v32 + 48) = v7;
  *(v32 + 64) = v8;
  *(v32 + 80) = v9;
  *(v32 + 96) = v10;
  *(v32 + 112) = v11;
  *(v32 + 128) = v12;
  *(v32 + 144) = v13;
  *(v32 + 160) = v14;
  *(v32 + 176) = v15;
  *(v32 + 192) = v16;
  *(v32 + 208) = v17;
  *(v32 + 224) = v18;
  *(v32 + 240) = v19;
  *(v32 + 256) = v20;
  *(v32 + 272) = v21;
  v33 = *(a2 + 19);
  *(v32 + 288) = *(a2 + 18);
  *(v32 + 304) = v33;
  *(v32 + 320) = v22;
  *(v32 + 336) = v23;
  *(v32 + 352) = v24;
  *(v32 + 368) = v25;
  *(v32 + 384) = a2[48];
  *(v32 + 400) = v26;
  *(v32 + 416) = v27;
  *(v32 + 432) = v28;
  *(v32 + 448) = v29;
  *(v32 + 464) = v30;
  *(v32 + 480) = v31;
  v34 = a3[2];
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v36;
  }

  return result;
}

void *sub_2583E8C90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2583E8E38()
{
  result = qword_27F928E48;
  if (!qword_27F928E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E48);
  }

  return result;
}

unint64_t sub_2583E8E90()
{
  result = qword_27F928E50;
  if (!qword_27F928E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E50);
  }

  return result;
}

unint64_t sub_2583E8EE8()
{
  result = qword_27F928E58;
  if (!qword_27F928E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E58);
  }

  return result;
}

unint64_t sub_2583E8F40()
{
  result = qword_27F928E60;
  if (!qword_27F928E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E60);
  }

  return result;
}

uint64_t sub_2583E8FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RangeReplaceableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0 || (sub_258428AF0(), v11[0] <= a1))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v11[4] = a1;
    v4 = sub_258428B80();
    v6 = v5;
    v7 = swift_getAssociatedTypeWitness();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a2, v6, v7);
    v4(v11, 0);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

uint64_t RangeReplaceableCollection<>.offsetting(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  result = sub_258428AD0();
  if (result)
  {
    if (a1 != 0x8000000000000000 || result != -1)
    {
      v15 = a1 % result;
      (*(*(a2 - 8) + 16))(a3, v3, a2);
      v16[1] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928E78);
      sub_2583E942C();
      sub_258428B50();
      sub_258428BA0();
      (*(v8 + 16))(v11, v13, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_258428BB0();
      return (*(v8 + 8))(v13, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2583E942C()
{
  result = qword_27F928E80;
  if (!qword_27F928E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928E80);
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.dequeueFirst()@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v4 = &v13 - v3;
  v5 = sub_258428DA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_258428B30();
  if ((*(v2 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v9 = 1;
    v10 = v14;
  }

  else
  {
    v11 = v14;
    (*(v2 + 32))(v14, v8, AssociatedTypeWitness);
    sub_258428B90();
    (*(v2 + 8))(v4, AssociatedTypeWitness);
    v9 = 0;
    v10 = v11;
  }

  return (*(v2 + 56))(v10, v9, 1, AssociatedTypeWitness);
}

uint64_t RangeReplaceableCollection<>.sum()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11[-v8];
  sub_258429140();
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = AssociatedTypeWitness;
  sub_258428800();
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t RangeReplaceableCollection<>.removeFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[2] = a1;
  v17 = a3;
  v16[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_258428DA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  sub_258428B60();
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v12 = 1;
    v13 = v17;
  }

  else
  {
    (*(v9 + 32))(v11, v8, AssociatedTypeWitness);
    v13 = v17;
    sub_258428BC0();
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v12 = 0;
  }

  v14 = swift_getAssociatedTypeWitness();
  return (*(*(v14 - 8) + 56))(v13, v12, 1, v14);
}

uint64_t RangeReplaceableCollection<>.remove(allFrom:)()
{
  swift_getAssociatedTypeWitness();
  sub_258428980();
  swift_getWitnessTable();
  return sub_258428810();
}

uint64_t sub_2583E9BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_258428DA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  RangeReplaceableCollection<>.removeFirst(_:)(a1, a4, v11 - v8);
  return (*(v7 + 8))(v9, v6);
}

uint64_t RangeReplaceableCollection<>.removingFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a5;
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v23 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_258428DA0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *(v8 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v23 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v27, a2);
  sub_258428B60();
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v14 + 32))(v17, v13, v8);
    v21 = v23;
    sub_258428BC0();
    (*(v24 + 8))(v21, v25);
    (*(v14 + 8))(v17, v8);
  }

  return (*(v18 + 32))(v30, v20, a2);
}

uint64_t Array.init(_:count:)()
{
  sub_258428610();
  sub_258428620();
  swift_getWitnessTable();
  return sub_2584289A0();
}

id KernelHeightMap.__allocating_init(device:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithDevice_];
  swift_unknownObjectRelease();
  return v2;
}

id KernelHeightMap.init(device:)(void *a1)
{
  v1 = sub_2583EA538(a1);
  swift_unknownObjectRelease();
  return v1;
}

BOOL KernelHeightMap.encode(commandBuffer:uniforms:depthTexture:confidenceTexture:colorTexture:inMapTexture:outMapTexture:)(void *a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [a1 computeCommandEncoder];
  if (v14)
  {
    v27 = [a3 width] / 32;
    v26 = [a3 height] / 32;
    v15 = *(v7 + OBJC_IVAR____TtC17MeasureFoundation15KernelHeightMap_uniformsBuffer);
    v16 = [swift_unknownObjectRetain() contents];
    v17 = v15;
    v18 = a2[13];
    v16[12] = a2[12];
    v16[13] = v18;
    v16[14] = a2[14];
    v19 = a2[9];
    v16[8] = a2[8];
    v16[9] = v19;
    v20 = a2[11];
    v16[10] = a2[10];
    v16[11] = v20;
    v21 = a2[5];
    v16[4] = a2[4];
    v16[5] = v21;
    v22 = a2[7];
    v16[6] = a2[6];
    v16[7] = v22;
    v23 = a2[1];
    *v16 = *a2;
    v16[1] = v23;
    v24 = a2[3];
    v16[2] = a2[2];
    v16[3] = v24;
    [v14 setComputePipelineState_];
    [v14 setBuffer:v15 offset:0 atIndex:0];
    [v14 setTexture:a3 atIndex:0];
    [v14 setTexture:a4 atIndex:1];
    [v14 setTexture:a5 atIndex:2];
    [v14 setTexture:a6 atIndex:3];
    [v14 setTexture:a7 atIndex:4];
    v30[0] = v27;
    v30[1] = v26;
    v30[2] = 1;
    v28 = vdupq_n_s64(0x20uLL);
    v29 = 1;
    [v14 dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
    [v14 endEncoding];
    swift_unknownObjectRelease();
  }

  return v14 != 0;
}

id KernelHeightMap.__allocating_init(coder:device:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithCoder:a1 device:a2];

  swift_unknownObjectRelease();
  return v4;
}

id KernelHeightMap.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2583EA538(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
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
    goto LABEL_8;
  }

  v14[0] = 0;
  v7 = [a1 newComputePipelineStateWithFunction:v6 error:v14];
  swift_unknownObjectRelease();
  v8 = v14[0];
  if (v7)
  {
    *&v1[OBJC_IVAR____TtC17MeasureFoundation15KernelHeightMap_computePipeline] = v7;
    v9 = v8;
    v10 = [a1 newBufferWithLength:240 options:0];
    if (v10)
    {
      *&v1[OBJC_IVAR____TtC17MeasureFoundation15KernelHeightMap_uniformsBuffer] = v10;
      v13.receiver = v1;
      v13.super_class = ObjectType;
      return objc_msgSendSuper2(&v13, sel_initWithDevice_, a1);
    }

LABEL_8:
    __break(1u);
  }

  v12 = v14[0];
  sub_2584282A0();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Float __swiftcall SegmentationResult.confidence(at:)(Swift::tuple_x_Int_y_Int at)
{
  if (at.x < 0 || (v2 = *(v1 + 72), v2 <= at.x) || at.y < 0 || *(v1 + 80) <= at.y)
  {
    LODWORD(v6) = 0;
    return *&v6;
  }

  v3 = at.y * v2;
  if ((at.y * v2) >> 64 != (at.y * v2) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFADD__(v3, at.x);
  v5 = v3 + at.x;
  if (v4)
  {
LABEL_10:
    __break(1u);
    return *&v6;
  }

  v6 = sub_2583EAFF0(v5);
  return *&v6;
}

unint64_t SegmentationResult.normal(at:)(uint64_t a1, uint64_t a2, double a3, float32x4_t a4)
{
  if (a1 < 0)
  {
    return 0;
  }

  result = 0;
  v7 = v4[9];
  if (v7 <= a1 || a2 < 0)
  {
    return result;
  }

  if (v4[10] <= a2)
  {
    return 0;
  }

  v8 = a2 * v7;
  if ((a2 * v7) >> 64 == (a2 * v7) >> 63)
  {
    v9 = __OFADD__(v8, a1);
    v10 = v8 + a1;
    if (!v9)
    {
      a4 = *(v4[8] + 16 * v10);
      if (qword_27F9279F0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_17:
  v12 = a4;
  swift_once();
  a4 = v12;
LABEL_8:
  v11 = vmovn_s32(vceqq_f32(a4, static SIMD3<>.zero));
  if (v11.i8[0] & 1) != 0 && (v11.i16[1] & v11.i16[2])
  {
    return 0;
  }

  return a4.i64[0];
}

double static SegmentationResult.realign(vector:sinAngle:cosAngle:)(float32x2_t a1, float a2, float a3)
{
  v3 = vrev64_s32(vmul_n_f32(a1, a2));
  v4 = vmul_n_f32(a1, a3);
  LODWORD(v5) = vsub_f32(v4, v3).u32[0];
  HIDWORD(v5) = vadd_f32(v4, v3).i32[1];
  return v5;
}

double static SegmentationResult.cameraToWorld(vector:cameraTransform:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  *v5.i64 = simd_float4x4.apply(to:)(a1, a2, a3, a4, a5);
  *&result = vsubq_f32(v5, a5).u64[0];
  return result;
}

MeasureFoundation::SegmentationResult::Label_optional __swiftcall SegmentationResult.label(at:)(Swift::tuple_x_Int_y_Int at)
{
  v2 = 0;
  if (at.x < 0)
  {
    goto LABEL_12;
  }

  v3 = v1[9];
  if (v3 <= at.x || at.y < 0)
  {
    goto LABEL_12;
  }

  if (v1[10] <= at.y)
  {
    v2 = 0;
LABEL_12:
    LOBYTE(at.x) = v2;
    return at.x;
  }

  v4 = at.y * v3;
  if ((at.y * v3) >> 64 != (at.y * v3) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = __OFADD__(v4, at.x);
  v6 = v4 + at.x;
  if (v5)
  {
LABEL_19:
    __break(1u);
    return at.x;
  }

  v7 = *(v1[6] + v6);
  if ([objc_opt_self() jasperAvailable])
  {

    LOBYTE(at.x) = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v7);
    return at.x;
  }

  v8 = sub_2583EB8C4(v7);
  if (v8 == 13)
  {
    v2 = 33;
    goto LABEL_12;
  }

  LOBYTE(at.x) = sub_2583EB4E8(v8);
  return at.x;
}

Swift::Bool __swiftcall SegmentationResult.Label.sanityCheck(planeAnchor:)(ARPlaneAnchor planeAnchor)
{
  v2 = v1;
  v3 = [(objc_class *)planeAnchor.super.super.isa alignment];
  v4 = (v2 & 0xFD) != 1;
  v5 = 0x3Bu >> v2;
  if (v2 >= 8u)
  {
    LOBYTE(v5) = 1;
  }

  if (!v3)
  {
    return v5;
  }

  return v4;
}

uint64_t SegmentationResult.Label.debugColor.getter(uint64_t result)
{
  if (result <= 0x29u)
  {
    return dword_28697E738[result + 8];
  }

  __break(1u);
  return result;
}

uint64_t sub_2583EAAE8()
{
  sub_2584293C0();
  sub_2584293E0();
  return sub_2584293F0();
}

uint64_t sub_2583EAB5C()
{
  sub_2584293C0();
  sub_2584293E0();
  return sub_2584293F0();
}

uint64_t sub_2583EABA0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

CVBufferRef_optional *SegmentationResult.init(_:)(void *a1)
{
  v2 = v1;
  v1[2].value = 0;
  v4 = [a1 semanticSegmentationBuffer];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6.value = CVBufferRef.clone()().value;

  if (!v6.value)
  {
    goto LABEL_16;
  }

  v7 = [a1 semanticSegmentationConfidenceBuffer];
  if (!v7 || (v8 = v7, v9.value = CVBufferRef.clone()().value, v8, !v9.value))
  {
    v9.value = v6.value;
LABEL_15:

LABEL_16:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v10 = [a1 normalsBuffer];
  if (!v10 || (v11 = v10, v12.value = CVBufferRef.clone()().value, v11, !v12.value))
  {

    goto LABEL_15;
  }

  v2[3].value = v6.value;
  v2[4].value = v9.value;
  v2[5].value = v12.value;
  v13 = v6.value;
  v14 = v9.value;
  v15 = v12.value;
  [a1 timestamp];
  v2[11].value = v16;
  CVPixelBufferLockBaseAddress(v13, 0);
  CVPixelBufferLockBaseAddress(v14, 0);
  CVPixelBufferLockBaseAddress(v15, 0);
  v2[6].value = CVPixelBufferGetBaseAddress(v13);
  v2[7].value = CVPixelBufferGetBaseAddress(v14);
  v2[8].value = CVPixelBufferGetBaseAddress(v15);
  v2[9].value = CVPixelBufferGetWidth(v13);
  v2[10].value = CVPixelBufferGetHeight(v13);
  if (CVPixelBufferGetPixelFormatType(v13) != 1278226488 || CVPixelBufferGetPixelFormatType(v14) != 1278226534 || CVPixelBufferGetPixelFormatType(v15) != 1380410945 || v2[9].value != 256 || v2[10].value != 192)
  {
    CVPixelBufferUnlockBaseAddress(v13, 0);
    CVPixelBufferUnlockBaseAddress(v14, 0);
    CVPixelBufferUnlockBaseAddress(v15, 0);

    return 0;
  }

  CVPixelBufferUnlockBaseAddress(v13, 0);
  CVPixelBufferUnlockBaseAddress(v14, 0);
  CVPixelBufferUnlockBaseAddress(v15, 0);

  return v2;
}

unint64_t SegmentationResult.features(at:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    return 33;
  }

  v4 = *(v2 + 72);
  result = 33;
  if (v4 > a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(v2 + 80) > a2)
    {
      v6 = a2 * v4;
      if ((a2 * v4) >> 64 == (a2 * v4) >> 63)
      {
        result = v6 + a1;
        if (!__OFADD__(v6, a1))
        {
          return sub_2583EAF48(result);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    return 33;
  }

  return result;
}

unint64_t sub_2583EAF48(uint64_t a1)
{
  v3 = *(*(v1 + 48) + a1);
  if ([objc_opt_self() jasperAvailable])
  {
    v4 = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v3);
    if (v4 != 33)
    {
      return v4 | (*(*(v1 + 56) + 4 * a1) << 32);
    }
  }

  else
  {
    v5 = sub_2583EB8C4(v3);
    if (v5 != 13)
    {
      v4 = sub_2583EB4E8(v5);
      return v4 | (*(*(v1 + 56) + 4 * a1) << 32);
    }
  }

  v4 = 0;
  return v4 | (*(*(v1 + 56) + 4 * a1) << 32);
}

double sub_2583EAFF0(uint64_t a1)
{
  LODWORD(result) = *(*(v1 + 56) + 4 * a1);
  if (fabsf(*&result) == INFINITY)
  {
    if (qword_27F927B30 != -1)
    {
      swift_once();
    }

    v4 = qword_27F92F3A0;
    v3 = *algn_27F92F3A8;
    v5 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v5);

    MEMORY[0x259C7DFF0](0x616C206874697720, 0xEE00203D206C6562);

    v6 = sub_2584292B0();
    v8 = v7;

    MEMORY[0x259C7DFF0](v6, v8);

    sub_258428C60();
    v9 = qword_27F927A30;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = qword_27F928848;
    os_unfair_lock_lock(qword_27F928848);
    if (qword_27F927A38 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = off_27F928850;
    if (*(off_27F928850 + 2) && (v12 = sub_258384364(v4, v3), (v13 & 1) != 0))
    {
      v14 = *(v11[7] + 8 * v12);
      swift_endAccess();
      v15 = v14;
    }

    else
    {
      swift_endAccess();
      sub_25838AB14();
      if (qword_27F927A28 != -1)
      {
        swift_once();
      }

      v16 = sub_258428D90();
      swift_beginAccess();
      v15 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = off_27F928850;
      off_27F928850 = 0x8000000000000000;
      sub_258384C94(v15, v4, v3, isUniquelyReferenced_nonNull_native);

      off_27F928850 = v19;
      swift_endAccess();
    }

    os_unfair_lock_unlock(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25842CCB0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_258385D08();
    *(v18 + 32) = 0xD00000000000005ELL;
    *(v18 + 40) = 0x8000000258437A30;

    sub_258428440();

    return 0.0;
  }

  return result;
}

__n64 static SegmentationResult.realign(vector:gravity:)(float32x2_t a1, long double a2, long double a3)
{
  v3 = atan2(a2, a3);
  v4 = __sincosf_stret(v3 + 3.1416);
  v5 = vmul_n_f32(a1, v4.__cosval);
  v6 = vrev64_s32(vmul_n_f32(a1, v4.__sinval));
  result.n64_u32[0] = vadd_f32(v5, v6).u32[0];
  result.n64_u32[1] = vsub_f32(v5, v6).u32[1];
  return result;
}

uint64_t SegmentationResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2583EB4E8(char a1)
{
  if ((a1 - 1) > 0xAu)
  {
    return 0;
  }

  else
  {
    return byte_25843013A[(a1 - 1)];
  }
}

unint64_t sub_2583EB514(unsigned int a1, uint64_t a2, uint64_t a3)
{
  result = sub_2583EAF48(a3);
  v5 = result;
  if (result == 33)
  {
    goto LABEL_16;
  }

  v6 = (*(&result + 1) * *(&result + 1)) * 255.0;
  if (COERCE_INT(fabs(v6)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 4295000000.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result > 0x29uLL)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = 4278190080;
  }

  v8 = dword_28697E738[v5 + 8] & ((v6 << 24) | 0xFFFFFF);

  return _s17MeasureFoundation8GraphicsC9blendBGRA8srcColor03dstG0s6UInt32VAH_AHtFZ_0(v7, v8);
}

unint64_t sub_2583EB608(unsigned int a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *a4;
  v8 = a4[1];
  v10 = a4[2];
  v11 = a4[3];
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = 4278190080;
  }

  v13 = *(*(a2 + 64) + 16 * a3);
  if (qword_27F9279F0 != -1)
  {
    v40 = a4;
    v41 = a6;
    v42 = a5;
    v43 = a8;
    v51 = *a4;
    v53 = a4[3];
    v47 = a4[2];
    v49 = a4[1];
    v45 = *(*(a2 + 64) + 16 * a3);
    swift_once();
    v13 = v45;
    v10 = v47;
    v8 = v49;
    v9 = v51;
    v11 = v53;
    a8 = v43;
    a5 = v42;
    a6 = v41;
    a4 = v40;
  }

  v14 = vmovn_s32(vceqq_f32(v13, static SIMD3<>.zero));
  if (v14.i8[0] & 1) != 0 && (v14.i8[2] & 1) != 0 && (v14.i8[4])
  {
    return v12;
  }

  v52 = v11;
  if (a8)
  {
    v13.i32[3] = 0;
  }

  else
  {
    v16 = a4;
    v48 = v8;
    v50 = v9;
    v44 = v13;
    v46 = v10;
    v17 = atan2(*&a5, *&a6);
    v18 = __sincosf_stret(v17 + 3.1416);
    v10 = v46;
    v8 = v48;
    v9 = v50;
    v11 = v52;
    a4 = v16;
    v19 = vmul_n_f32(*v44.f32, v18.__cosval);
    v20 = vrev64_s32(vmul_n_f32(*v44.f32, v18.__sinval));
    v21.i32[0] = vadd_f32(v19, v20).u32[0];
    v21.i32[1] = vsub_f32(v19, v20).i32[1];
    v21.i64[1] = vnegq_f32(v44).u32[2];
    v13 = v21;
  }

  v22 = vmulq_f32(v13, v13);
  *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  *v22.f32 = vrsqrte_f32(v23);
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
  v24 = vmulq_n_f32(v13, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
  if ((a4[4].i8[0] & 1) == 0)
  {
    *v25.i64 = simd_float4x4.apply(to:)(v24, v9, v8, v10, v11);
    v26 = vsubq_f32(v25, v52);
    v27 = vmulq_f32(v26, v26);
    *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v28);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
    v24 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  }

  if (qword_27F9279E8 != -1)
  {
    v54 = v24;
    swift_once();
    v24 = v54;
  }

  v29 = vaddq_f32(v24, static SIMD3<>.one);
  v30 = vmuls_lane_f32(0.5, v29, 2);
  v31.i64[0] = 0x3F0000003F000000;
  v31.i64[1] = 0x3F0000003F000000;
  v32 = vmulq_f32(v29, v31);
  __asm { FMOV            V2.4S, #1.0 }

  v38 = vextq_s8(vextq_s8(_Q2, _Q2, 4uLL), v32, 0xCuLL);
  v38.f32[3] = v30;
  v39 = _s17MeasureFoundation8GraphicsC8multiply5color6normals6UInt32VAH_s5SIMD4VySfGtFZ_0(0xFFFFFFFF, v38);

  return _s17MeasureFoundation8GraphicsC9blendBGRA8srcColor03dstG0s6UInt32VAH_AHtFZ_0(v12, v39);
}

uint64_t _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 0x21u)
  {
    return 33;
  }

  else
  {
    return result;
  }
}