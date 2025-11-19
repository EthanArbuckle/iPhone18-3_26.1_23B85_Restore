uint64_t OUTLINED_FUNCTION_27_24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_25BB30E7C(a1, a2, a3);
}

void OUTLINED_FUNCTION_27_26()
{

  static Tensor.- infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_27_30()
{
}

void OUTLINED_FUNCTION_27_32(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;
  *(v1 - 120) = 115;
  *(v1 - 112) = 2;
}

double OUTLINED_FUNCTION_27_36()
{
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_27_38()
{

  JUMPOUT(0x25F8779B0);
}

ValueMetadata *Tensor.scalarType.getter()
{
  v1 = MEMORY[0x277D84900];
  switch(*(*(*v0 + 16) + 160))
  {
    case 1:
      v1 = MEMORY[0x277D84958];
      break;
    case 2:
      v1 = MEMORY[0x277D849A8];
      break;
    case 3:
      v1 = MEMORY[0x277D83B88];
      break;
    case 4:
      v1 = MEMORY[0x277D84B78];
      break;
    case 5:
      v1 = MEMORY[0x277D84C58];
      break;
    case 6:
      v1 = MEMORY[0x277D84CC0];
      break;
    case 7:
      v1 = MEMORY[0x277D84D38];
      break;
    case 8:
      v1 = MEMORY[0x277D84DC8];
      break;
    case 9:
      v1 = &type metadata for BFloat16;
      sub_25BB18AFC();
      break;
    case 0xA:
      v1 = MEMORY[0x277D83A90];
      break;
    case 0xB:
      v1 = MEMORY[0x277D839F8];
      break;
    case 0xC:
      v1 = MEMORY[0x277D839B0];
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_25BAA4240(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{

  v7 = sub_25BA928B4();
  [v7 lock];

  sub_25BA92920(v4, 0, 0, &v9);
  [*(v4 + 224) unlock];

  if (v5)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    sub_25BAA4364(a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_25BAA4364(void (*a1)(void))
{
  v2 = v1;
  v4 = sub_25BA928B4();
  [v4 lock];

  a1();
  return [*(v2 + 224) unlock];
}

void sub_25BAA44C8()
{
  OUTLINED_FUNCTION_1_32();
  sub_25BAA4554(1);
  IOSurfaceGetBaseAddress(*(v0 + 16));
  sub_25BAA4640();
  v2 = OUTLINED_FUNCTION_2_33();
  v1(v2);
  sub_25BAA46FC(1);
}

uint64_t sub_25BAA4554(char a1)
{
  v3 = *(v1 + 16);
  IOSurfaceIncrementUseCount(v3);
  result = IOSurfaceLock(v3, a1 & 1, 0);
  if (result)
  {
    sub_25BCB6CBC();
    if (qword_28154BD68 != -1)
    {
      OUTLINED_FUNCTION_0_40();
      swift_once();
    }

    sub_25BCB5E8C();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAA4640()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = 1;
LABEL_7:
  if (*(v0 + 32) - 1 > 0xA)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_25BCBF6F0[(*(v0 + 32) - 1)];
  }

  result = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25BAA46C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  return sub_25BCB66BC();
}

void sub_25BAA46FC(char a1)
{
  v2 = *(v1 + 16);
  if (IOSurfaceUnlock(v2, a1 & 1, 0))
  {
    sub_25BCB6CBC();
    if (qword_28154BD68 != -1)
    {
      OUTLINED_FUNCTION_0_40();
      swift_once();
    }

    sub_25BCB5E8C();
    sub_25BCB74CC();
    __break(1u);
  }

  else
  {

    IOSurfaceDecrementUseCount(v2);
  }
}

uint64_t sub_25BAA47F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void Tensor.init<A>(shape:scalars:on:)()
{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

{
  sub_25BA9FE14();
}

uint64_t sub_25BAA486C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BAA48D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_24_1();
  v9(v8);
  return a2;
}

uint64_t sub_25BAA4930(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_24_1();
  v7(v6);
  return a2;
}

const void *sub_25BAA49B8()
{
  if (qword_28154F8A8 != -1)
  {
    swift_once();
  }

  v0 = qword_28154F8B0;
  v1 = pthread_getspecific(qword_28154F8B0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    swift_allocObject();
    v2 = sub_25BC33440();

    pthread_setspecific(v0, v2);
  }

  return v2;
}

uint64_t sub_25BAA4A5C@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    return sub_25BAA4ABC(v4 + 144 * v5 - 112, a1);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return sub_25BAA51C8(v0, v1 + 32);
}

__n128 OUTLINED_FUNCTION_18_6(__n128 *a1)
{
  result = v1[19];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_25BAA4A5C(va);
}

uint64_t OUTLINED_FUNCTION_18_9@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = (a2 + 24 * result);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_unknownObjectRelease_n();
}

__n128 *OUTLINED_FUNCTION_18_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = *(v3 - 400);
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_14()
{
  result = *(v0 + 72);
  v2 = *(v0 + 152);
  return result;
}

void OUTLINED_FUNCTION_18_17()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_18_21()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_18_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return type metadata accessor for Sequential();
}

uint64_t OUTLINED_FUNCTION_18_24()
{

  return Tensor.init<A>(_:scalarType:on:)(v1, v2 - 192, v0, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_18_26()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_18_30()
{

  sub_25BAA21EC();
}

void OUTLINED_FUNCTION_18_31()
{

  sub_25BABC3B0();
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_18_36()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_38(unint64_t *a1)
{

  return sub_25BC5B360(a1);
}

uint64_t OUTLINED_FUNCTION_18_39()
{

  return sub_25BCB67AC();
}

uint64_t OUTLINED_FUNCTION_18_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, unsigned __int8 a19, uint64_t a20, uint64_t a21)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a20, a2, &a19, &a10, &a21);
}

uint64_t OUTLINED_FUNCTION_18_46()
{
  v3 = *(v0 + 48);
  *(v1 - 224) = *(v0 + 64);
  *(v1 - 208) = v3;
  v4 = *(v0 + 80);
  *(v1 - 240) = *(v0 + 88);
  *(v1 - 232) = v4;

  return type metadata accessor for NativeTensorStorage();
}

uint64_t OUTLINED_FUNCTION_18_47()
{

  return swift_getAssociatedConformanceWitness();
}

time_t OUTLINED_FUNCTION_18_48(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;

  return time(0);
}

uint64_t OUTLINED_FUNCTION_18_49(uint64_t a1)
{
  *(a1 + 16) = v1;
}

void OUTLINED_FUNCTION_18_51(char a1@<W8>)
{
  *(v4 - 80) = a1;
  *(v4 - 72) = v1;
  *(v4 - 64) = v2;
  *(v4 - 56) = v3;
}

uint64_t sub_25BAA51C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_4_8(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0x2000;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_29_2()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_4_15@<X0>(__int16 a1@<W8>)
{
  *(v3 - 104) = v1;
  *(v3 - 96) = v2;
  *(v3 - 88) = a1;
  return 0;
}

size_t OUTLINED_FUNCTION_4_16@<X0>(unint64_t a1@<X8>)
{

  return sub_25BB00AF4(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_4_20(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);

  return MEMORY[0x2821FB008](v5, v4 + 352, v4 + 528, v4 + 704, a1, a2, a3, a4);
}

__n128 OUTLINED_FUNCTION_4_25()
{
  v1 = *(v0 + 48);
  *(v0 + 96) = *(v0 + 32);
  *(v0 + 112) = v1;
  result = *(v0 + 64);
  *(v0 + 128) = result;
  *(v0 + 144) = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28(uint64_t a1)
{
  *(v2 - 68) = 1;

  return sub_25BBF1C1C(a1, v2 - 144, 0x100000000, v1);
}

void OUTLINED_FUNCTION_4_29()
{
  v1 = *(v0 - 256);
  *(v0 - 264) = *(v0 - 264);
  *(v0 - 256) = v1;
}

void OUTLINED_FUNCTION_4_38()
{
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = -1;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 184) = 0;
  *(v0 - 160) = -1;
  *(v0 - 108) = 4;
}

uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;
  return 0x656C62756F44;
}

void OUTLINED_FUNCTION_4_44()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_4_46()
{
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];

  return swift_deallocPartialClassInstance();
}

void OUTLINED_FUNCTION_4_47()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

uint64_t OUTLINED_FUNCTION_4_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_25BAB6D38(va, 0x100000000);
}

uint64_t OUTLINED_FUNCTION_4_51@<X0>(unsigned __int8 *a1@<X8>)
{
  v1 = *a1;
  v3 = *(a1 + 1);
  result = *(a1 + 2);
  v4 = a1[24];
  return result;
}

void OUTLINED_FUNCTION_4_52()
{

  sub_25BA97890();
}

BOOL OUTLINED_FUNCTION_4_53()
{

  return sub_25BAD9FE0(v0, v2 - 128, v1);
}

uint64_t OUTLINED_FUNCTION_4_54()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;

  return sub_25BBAC034(v0);
}

void OUTLINED_FUNCTION_4_55()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = -1;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 192) = 0;
  *(v0 - 168) = -1;
  *(v0 - 116) = 4;
}

uint64_t OUTLINED_FUNCTION_4_56(uint64_t a1, char a2)
{

  return sub_25BC36048(v2, a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_4_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, unsigned __int8 a18, uint64_t a19, uint64_t a20)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a19, a2, &a18, &a9, &a20);
}

void OUTLINED_FUNCTION_4_59()
{

  sub_25BAB22A0();
}

uint64_t OUTLINED_FUNCTION_4_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23)
{
  a14 = 0;
  a12 = 0;
  a23 = 0;

  return sub_25BAA6E30(&a9, v23 + 40);
}

uint64_t OUTLINED_FUNCTION_4_63@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_65(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_25BC757DC(a2, v3, v4, va, a1);
}

uint64_t OUTLINED_FUNCTION_4_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, int a24)
{
  v27 = *(*(v25 + 16) + 160);
  a24 = 0;
  a22 = 0u;
  a23 = 0u;
  a21 = 0u;
  a19 = v24;

  return sub_25BAA51C8(&a21, &a12);
}

__n128 OUTLINED_FUNCTION_4_70@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 336);
  result = *(v1 - 320);
  *(a1 - 64) = result;
  *(a1 - 48) = v2;
  v4 = *(v1 - 352);
  *(a1 - 32) = *(v1 - 344);
  *(a1 - 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_75(uint64_t a1)
{
  *(v2 - 40) = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return _s9IOMappingVMa();
}

__n128 OUTLINED_FUNCTION_4_76(__n128 *a1)
{
  result = v1[11];
  a1[1] = result;
  return result;
}

void sub_25BAA59B8()
{
  OUTLINED_FUNCTION_16_28();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_7_29(v5, v6);
  if (!v10 & v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCC7770[v8];
  }

  if (v11 > v4)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45();
  }

  if (*(*v7 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v11);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  v2();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_25BA9FCEC(v12, v13, v14, v15, v4);
  }

  OUTLINED_FUNCTION_15_24();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  result = 255;
  *(v2 - 200) = *(a2 + 16);
  *(v2 - 192) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_93_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a5 = a1;

  return Parameter.wrappedValue.setter(&a5);
}

uint64_t OUTLINED_FUNCTION_93_4()
{

  return sub_25BCB625C();
}

uint64_t OUTLINED_FUNCTION_93_6()
{

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_93_7()
{
  v2 = *(v0 - 96);
}

uint64_t sub_25BAA5BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  v29 = *(a6 + 16);
  v29(v33, a5, a6);
  v11 = *(a6 + 8);
  v11(v30, a5, a6);
  v39 = 0;
  v33[14] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/InputOps.swift";
  v33[15] = 110;
  v34 = 2;
  v35 = xmmword_25BCC8F60;
  v36 = "init(id:shape:scalarType:creationSite:)";
  v37 = 39;
  v38 = 2;
  type metadata accessor for InputOperation();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_3();
  v18 = sub_25BAA5FD0(v12, v13, v14, v15, v16, v17);
  v19 = v18;
  if ((a3 & 0x100000000) != 0)
  {
    LODWORD(a3) = *(v18 + 16);
  }

  *(a4 + 24) = a3;
  v29(v33, a5, a6);
  *(a4 + 152) = v33[0];
  v11(v33, a5, a6);
  *(a4 + 160) = v33[0];
  OUTLINED_FUNCTION_0_84();
  v22 = sub_25BAA6C78(v20, 255, v21);
  OUTLINED_FUNCTION_5_57();
  swift_weakInit();
  v30[0] = v19;
  v30[1] = v22;
  swift_retain_n();
  v30[6] = sub_25BAA6CC0(0);
  v30[7] = v23;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    v25 = *(result + 32);
    sub_25BCB617C();

    v30[8] = v25;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      v26 = *(result + 40);

      v31 = v26;
      v30[2] = 0;
      OUTLINED_FUNCTION_5_57();
      swift_weakAssign();
      v30[5] = 0;
      v30[3] = 0;
      v32 = 0;
      sub_25BA9BD18(a1, a6, v33);

      swift_unknownObjectRelease();
      sub_25BA9778C(v30);
      sub_25BAA6E30(v33, a4 + 40);
      v27 = *(a2 + 16);
      *(a4 + 168) = *a2;
      *(a4 + 184) = v27;
      *(a4 + 200) = *(a2 + 32);
      *(a4 + 216) = *(a2 + 48);
      return a4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_149_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = 0xD00000000000002ALL;
  *(v2 - 72) = (a1 - 32) | 0x8000000000000000;
  v4 = *(v1 + 152);

  return sub_25BCB617C();
}

uint64_t sub_25BAA5EA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v10);

  v5 = v12;
  v4 = v13;
  sub_25BCB617C();
  sub_25BAA4AF4(&v10);
  type metadata accessor for TensorOperationIdentityGenerator();
  v6 = sub_25BAA6090();
  if (v4)
  {
    v10 = v5;
    v11 = v4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](a1, a2);

    OUTLINED_FUNCTION_11_4();
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);
  }

  else
  {
    v10 = a1;
    v11 = a2;
    OUTLINED_FUNCTION_11_4();
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  return v6;
}

uint64_t sub_25BAA5FD0(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, _OWORD *a6)
{
  v8 = *a4;
  v9 = *a5;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7475706E69, 0xE500000000000000);
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = a6[1];
  *(v6 + 56) = *a6;
  *(v6 + 72) = v10;
  *(v6 + 88) = a6[2];
  *(v6 + 98) = *(a6 + 42);
  return v6;
}

uint64_t sub_25BAA60B4(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  v4 = sub_25BAA610C();

  return v4;
}

uint64_t sub_25BAA610C()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_25BAA3234();
  v3 = *(v1 + 24);
  *(v1 + 24) = v3 + 1;
  sub_25BAA3258();

  return v3;
}

void OUTLINED_FUNCTION_11_8()
{
  v2 = *(v0 + 16) + 1;

  sub_25BAFE884();
}

__n128 OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

__n128 OUTLINED_FUNCTION_11_10()
{
  v2 = *(v0 + 272);
  *(v0 + 192) = *(v0 + 256);
  *(v0 + 208) = v2;
  result = *(v0 + 288);
  *(v0 + 224) = result;
  *(v1 - 176) = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_13@<X0>(uint64_t a1@<X8>)
{
  result = *(*(a1 + 16) + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 56) + 24 * a1);
  v6 = v5[2];
  v7 = *v5;

  return sub_25BA9BEA0(v7);
}

uint64_t OUTLINED_FUNCTION_11_17()
{
  v4 = *(v1 + 16);
  result = v2;
  v6 = *(v0 + 152);
  *(v0 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_23(uint64_t result)
{
  *(v1 - 192) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_26@<X0>(char a1@<W8>)
{
  *(v2 - 72) = v1;
  *(v2 - 64) = 48;
  *(v2 - 56) = a1;

  return type metadata accessor for UnaryArithmeticOperation();
}

uint64_t OUTLINED_FUNCTION_11_27()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 264);
  return result;
}

BOOL OUTLINED_FUNCTION_11_28()
{
  v3 = *(*(v0 + 16) + 152);

  return sub_25BAC863C(0);
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

__n128 OUTLINED_FUNCTION_11_33@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __n128 a23)
{
  *a1 = a21;
  a1[1] = a22;
  result = a23;
  a1[2] = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_34()
{
  *(v3 + 24) = v1;
  *(v3 + 152) = v2;
  *(v3 + 160) = v0;

  return sub_25BAA06AC(sub_25BAA07E0);
}

unint64_t OUTLINED_FUNCTION_11_36(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_39()
{
  result = *(v0 - 248);
  v2 = *(v0 - 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_25BCB680C();
}

uint64_t OUTLINED_FUNCTION_11_49()
{
}

void OUTLINED_FUNCTION_11_51(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = *(a7 + 8);
  *(v7 + 130) = a4;
}

void OUTLINED_FUNCTION_11_54()
{

  sub_25BB00DE4();
}

__n128 OUTLINED_FUNCTION_5_8()
{
  v5 = *(v1 - 152);
  v4 = *(v1 - 160);
  v6 = *(v1 - 136);
  result = *(v1 - 128);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_25BAA51C8(v0 + 112, v0);
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1)
{
  *(a1 + 16) = v1 & 1;
  *(a1 + 17) = v2 & 1;
}

void OUTLINED_FUNCTION_5_15()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  v1 = v0[16];
  v2 = *(v0[15] + 8);
  return v0[4];
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  v2 = *(v0 + 40);

  return sub_25BAC4018();
}

void OUTLINED_FUNCTION_5_20(uint64_t a1@<X8>)
{
  *(a1 - 48) = v3;
  *(a1 - 40) = v1;
  *(a1 - 32) = 0;
  *(a1 - 24) = v2;
  *(a1 - 16) = v4;
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  v4 = *(v1 + 8);
  result = v0;
  *(v3 - 240) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_26()
{
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return sub_25BCB74CC();
}

void OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5[8];
  v12 = v5[7];
  v11 = v5[6];
  v8 = v5[4];
  v7 = v5[5];
  v10 = v5[2];
  v9 = v5[3];
  *(v4 + 192) = a4;
}

void OUTLINED_FUNCTION_5_31()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_5_33()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_5_36()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 296);
  v3 = *(v0 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v10;
  *(v14 - 65) = v13;

  return sub_25BA9FCEC(&a9, (v14 - 65), v11, v12, v9);
}

uint64_t OUTLINED_FUNCTION_5_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_25BAC8764(v29, 0, &a27, 0x100000000, v28, v27);
}

uint64_t OUTLINED_FUNCTION_5_40()
{

  return sub_25BCB6A5C();
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t a1, uint64_t a2)
{
  *(v2 - 352) = a1;
  *(v2 - 344) = a2;
  return 0x74616F6C46;
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_5_50(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

void OUTLINED_FUNCTION_5_52()
{
  v2 = *(v0 + 16) + 1;

  sub_25BAB22A0();
}

uint64_t OUTLINED_FUNCTION_5_55()
{

  return sub_25BCB7B2C();
}

void OUTLINED_FUNCTION_5_56(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_5_59(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x25F878200);
}

uint64_t OUTLINED_FUNCTION_5_60()
{
  v5 = *v1;
  v6 = *v2;

  return sub_25BAA51C8(v0, v3 - 200);
}

uint64_t OUTLINED_FUNCTION_5_63()
{
  v2 = *(v0 - 96);

  return sub_25BCB6F5C();
}

void OUTLINED_FUNCTION_5_66(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 2);
  v6 = a3[24];
}

uint64_t OUTLINED_FUNCTION_5_67(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = v2 != 0;
  return result;
}

uint64_t sub_25BAA6C78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BAA6CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 48);
  *(v1 + 32) = *(v0 + 40);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BAA6D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a2() + 16);

  if (v3 == 1)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_25BCB617C();
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BAA6DD4()
{
  sub_25BAA6E08();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAA6E08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

void sub_25BAA6EB0()
{
  sub_25BAA31C0();
  sub_25BAA3234();
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
    sub_25BAA3258();
  }
}

uint64_t sub_25BAA6F2C()
{
  *(v0 + 24) = 0;
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_25BAA6F5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25BAA6FBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_25BAA7034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = (a2 - a1) / 8;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D83B88], a4, a5);
}

void Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)()
{
  OUTLINED_FUNCTION_38_2();
  v5 = v4;
  OUTLINED_FUNCTION_40_15();
  v7 = v6;
  OUTLINED_FUNCTION_68_6();
  v8 = sub_25BCB783C();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *v0;
  v18 = *(*(*v0 + 2) + 160);
  if (!sub_25BAA80BC(v18, &unk_286D427E8))
  {
    LOBYTE(v48) = v18;
    *&v37 = sub_25BC8FACC();
    *(&v37 + 1) = v36;
    v38 = xmmword_25BCC8F40;
    LOBYTE(v39) = 0;
    *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    LOBYTE(v40) = 2;
    v43 = 3;
    OUTLINED_FUNCTION_60_6();
    sub_25BADDD28();
  }

  if (v7 <= 0)
  {
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_52_9();
    __break(1u);
  }

  else
  {
    v48 = v17;
    LOBYTE(v45[0]) = 2;
    (*(v11 + 104))(v16, *MEMORY[0x277D84660], v8);
    Tensor.cast(to:roundingRule:)();
    (*(v11 + 8))(v16, v8);

    v19 = v37;
    v20 = *(*(v37 + 16) + 152);
    swift_bridgeObjectRetain_n();
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(v20 + 16);
      sub_25BAAE04C();
      v21 = v34;
    }

    v22 = *(v21 + 16);
    if (v22 >= *(v21 + 24) >> 1)
    {
      sub_25BAAE04C();
      v21 = v35;
    }

    *(v21 + 16) = v22 + 1;
    *(v21 + 8 * v22 + 32) = v7;

    v23 = *(v19 + 16);
    v47 = 0;
    v48 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorCreationOps.swift";
    v49 = 119;
    v50 = 2;
    v51 = xmmword_25BCC8F50;
    v52 = "init(id:indices:depth:onValue:offValue:resultDescriptor:creationSite:)";
    v53 = 70;
    v54 = 2;
    type metadata accessor for OneHotOperation();
    swift_allocObject();

    OUTLINED_FUNCTION_6_19();
    v28 = sub_25BAB4964(v24, v25, v26, v23, v7, v21, 10, v27, v3, v2);
    sub_25BAA48D4(v5, &v37, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v38 + 1))
    {
      v45[0] = v37;
      v45[1] = v38;
      v45[2] = v39;
      v46 = v40;
    }

    else
    {
      sub_25BAA48D4(*(v19 + 16) + 168, v45, &qword_27FBB6730, &qword_25BCBC4B0);
      if (*(&v38 + 1))
      {
        sub_25BAA6FBC(&v37, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    sub_25BAA48D4(v45, v44, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v37);

    v29 = v42;

    sub_25BAA4AF4(&v37);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v37);

    v30 = v41;

    sub_25BAA4AF4(&v37);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v31 = swift_allocObject();
    LOBYTE(v37) = 1;
    sub_25BAA025C(v28, 0, v44, 0x100000000, v29, v30, v31);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v32);
    sub_25BAA6EB0();

    sub_25BAA6FBC(v5, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA6FBC(v45, &qword_27FBB6730, &qword_25BCBC4B0);
    *v1 = v29;
    OUTLINED_FUNCTION_37_0();
  }
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_38_3(__n128 *a1)
{
  result = v1[16];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  return result;
}

void *OUTLINED_FUNCTION_38_4()
{

  return memcpy((v0 + 704), (v0 + 168), 0xB1uLL);
}

void OUTLINED_FUNCTION_38_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_25BAA51C8(&a34, &a27);
}

uint64_t OUTLINED_FUNCTION_38_12(uint64_t a1)
{
  v4 = *(v2 + 40);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 56) = v4;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_38_15()
{

  return sub_25BAB4D78(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_38_18()
{

  return sub_25BC25B04(v0);
}

uint64_t OUTLINED_FUNCTION_38_20()
{

  return sub_25BCB65BC();
}

uint64_t OUTLINED_FUNCTION_38_21@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(v4 + 16) = a4;
  *(v4 - 16) = a2;
  *(v4 - 8) = a3;
  *(v4 - 24) = result;
  return result;
}

void OUTLINED_FUNCTION_38_23(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v7, a4, a5, a6, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_38_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned __int8 a27)
{
  a27 = v27;

  return sub_25BAB6D38(&a12, v27 << 32);
}

uint64_t OUTLINED_FUNCTION_38_26()
{
}

void OUTLINED_FUNCTION_32_2()
{
  *v0 = v1;
  v0[1] = v2;
  v0[2] = 0;
  v0[3] = 0;
}

void OUTLINED_FUNCTION_32_3(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return sub_25BB29534(30820, 0xE200000000000000);
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  result = *(v0 - 144);
  v2 = *(v0 - 160);
  v3 = *(v0 - 72);
  return result;
}

void OUTLINED_FUNCTION_32_8()
{
  *(v1 + 16) = v2;
  v7 = v1 + 32 * v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v0;
  *(v7 + 56) = v3;
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BBA18D8(a1, a2, v11, v12, v10, v14, v9, v13, a9);
}

uint64_t OUTLINED_FUNCTION_32_15()
{

  return sub_25BCB744C();
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t a1)
{
  *(a1 + 16) = v1;
}

void OUTLINED_FUNCTION_32_22()
{
  v4 = *(v3 - 224);
  v5 = *(v3 - 256);
  *(v3 - 184) = v1;
  *(v3 - 188) = v0;
  *(v3 - 200) = v2;
}

uint64_t OUTLINED_FUNCTION_32_23()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_32_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_25BC0F5B8(v30, 0, &a29, v32 << 32, v31, v29, a1);
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v2 = *v0;
  v4 = *(v0 - 2);
  v5 = *(v0 - 1);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 256;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_3()
{
  result = *(v0 - 304);
  v2 = *(v0 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t result)
{
  v1[6] = result;
  v1[7] = 120;
  v1[8] = 0xE100000000000000;
  v3 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_6()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_58_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a41 = a12;
  a39 = v41;

  return sub_25BAA0E58(&a36, v42 + 40);
}

ValueMetadata *OUTLINED_FUNCTION_58_9()
{
  v3 = *(v0 + 16);
  *(v1 - 152) = v0;

  return Tensor.scalarType.getter();
}

void OUTLINED_FUNCTION_58_10()
{
  v2 = *(v0 - 184);
  v1 = *(v0 - 176);
  v3 = *(v0 - 160);
}

uint64_t OUTLINED_FUNCTION_58_12()
{
}

uint64_t OUTLINED_FUNCTION_58_14()
{
  result = v0 - 224;
  v2 = *(v0 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_15()
{

  return sub_25BCB74CC();
}

void Tensor.cast(to:roundingRule:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_25BCB783C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *v4;
  v17 = *v0;
  v18 = *(*v0 + 16);
  v19 = *(v18 + 160);
  if (v19 == v16)
  {
    *v6 = v17;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    v40 = v6;
    v23 = v19 > 0xC;
    v21 = (1 << v19) & 0x1715;
    v23 = v23 || v21 == 0 || v16 > 0xC;
    v24 = v23 || ((1 << v16) & 0x1715) == 0;
    if (v24 || ((*(v10 + 104))(v15, *MEMORY[0x277D84660], v7), v25 = sub_25BCB782C(), (*(v10 + 8))(v15, v7), v18 = *(v17 + 16), (v25 & 1) == 0))
    {
      v31 = *(v18 + 152);
      v32 = sub_25BAA51C8(v18 + 168, v49);
      MEMORY[0x28223BE20](v32);
      *(&v39 - 4) = v17;
      *(&v39 - 24) = v16;
      *(&v39 - 2) = v2;
      sub_25BAA51C8(v49, &v43);
      if (*(&v44 + 1))
      {
        v47[0] = v43;
        v47[1] = v44;
        v47[2] = v45;
        v48 = v46;
        sub_25BCB617C();
      }

      else
      {
        type metadata accessor for ContextManager();
        sub_25BCB617C();
        sub_25BAA49B8();
        OUTLINED_FUNCTION_53_9();

        sub_25BAA51C8(v42, v47);
        sub_25BAA4AF4(v42);
        if (*(&v44 + 1))
        {
          sub_25BA9C2C8(&v43);
        }
      }

      if (qword_28154F2C8 != -1)
      {
        swift_once();
      }

      v42[0] = v31;
      LOBYTE(v43) = v16;
      sub_25BAA4B48(v42, &v43, v47, sub_25BAA824C, &v39 - 6);
      v34 = v33;

      sub_25BAA51C8(v47, v42);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      v35 = swift_allocObject();
      ObjectType = swift_getObjectType();
      v37 = swift_unknownObjectRetain();
      LOBYTE(v43) = 1;
      sub_25BAA5BB4(v37, v42, 0x100000000, v35, ObjectType, v34);
      OUTLINED_FUNCTION_9_19();
      type metadata accessor for TensorHandle();
      OUTLINED_FUNCTION_22();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_21_25(v38);
      sub_25BAA6EB0();
      swift_unknownObjectRelease();

      sub_25BA9C2C8(v47);
      sub_25BA9C2C8(v49);
      *v40 = v35;
    }

    else
    {
      LOBYTE(v42[0]) = v16;
      v26 = *(v18 + 160);
      *(swift_allocObject() + 16) = v26;

      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_48_11();

      v41 = 0;
      v49[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift";
      v49[1] = 125;
      v50 = 2;
      v51 = xmmword_25BCCB410;
      v52 = "init(id:operand:scalarType:creationSite:backward:)";
      v53 = 50;
      v54 = 2;
      type metadata accessor for CastOperation();
      swift_allocObject();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_78_5();
      v27 = sub_25BAC87B4();
      sub_25BAA51C8(*(v17 + 16) + 168, v47);
      sub_25BAA51C8(v47, &v43);
      type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_98_2();
      swift_retain_n();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_53_9();

      v28 = v42[10];

      sub_25BAA4AF4(v42);
      sub_25BAA49B8();
      OUTLINED_FUNCTION_53_9();

      sub_25BAA4AF4(v42);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      swift_allocObject();
      OUTLINED_FUNCTION_20_23();
      LOBYTE(v42[0]) = v29;
      OUTLINED_FUNCTION_19();
      sub_25BAC886C(v27, 0, &v43);
      OUTLINED_FUNCTION_9_19();
      type metadata accessor for TensorHandle();
      OUTLINED_FUNCTION_22();
      v30 = swift_allocObject();
      OUTLINED_FUNCTION_21_25(v30);
      sub_25BAA6EB0();
      OUTLINED_FUNCTION_98_2();

      sub_25BA9C2C8(v47);
      *v40 = v28;
    }

    OUTLINED_FUNCTION_10_16();
  }
}

BOOL sub_25BAA80BC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)((v2 - 240), v1, (v0 + 360), v0 + 488, (v2 - 232));
}

uint64_t OUTLINED_FUNCTION_98()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_53_6()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = -1;
}

void OUTLINED_FUNCTION_53_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = 0;
  a4[4] = 0;
  a4[28] = 0;
  a4[29] = 0;
}

uint64_t OUTLINED_FUNCTION_53_9()
{

  return sub_25BAA4A5C(v0 + 32);
}

__n128 OUTLINED_FUNCTION_53_10()
{
  v2 = *(v0 + 112);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 64) = v2;
  result = *(v0 + 128);
  *(v1 + 80) = result;
  *(v0 + 272) = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_13()
{

  return swift_dynamicCast();
}

uint64_t sub_25BAA8270(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = a2;
  v14 = a4;
  v15 = a5;
  v5 = *(a3 + 16);

  sub_25BAA82DC(sub_25BAABB7C, v13, v6, v7, v8, v9, v10, v11, v13[0], v13[1]);
}

void sub_25BAA82DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v13 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v13);

  v14 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v14, v15, v16, v17);
  [v10[28] unlock];

  if (v12)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v18 v19];

    swift_getObjectType();
    v20 = *(a10 + 56);
    v21 = OUTLINED_FUNCTION_5_17();
    v22(v21);
    [v10[28] unlock];
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BAA83F4(const float *a1, uint64_t a2, _BYTE *a3, float *a4, uint64_t a5, unsigned __int8 *a6)
{
  v9 = *a3;
  v10 = *a6;
  LOBYTE(v41[0]) = *a3;
  v42 = v10;
  if ((sub_25BAABC84(a1, a2, v41, a4, a5, &v42) & 1) == 0)
  {
    switch(v9)
    {
      case 1:
        switch(v10)
        {
          case 1:
            return;
          case 2:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 3:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 4:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 5:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 6:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 7:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
        }

        break;
      case 2:
        switch(v10)
        {
          case 1:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 2:
            return;
          case 3:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 4:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 5:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 6:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 7:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
        }

        break;
      case 3:
        switch(v10)
        {
          case 1:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 2:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 3:
            return;
          case 4:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 5:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 6:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 7:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
        }

        break;
      case 4:
        switch(v10)
        {
          case 1:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 2:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 3:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 4:
            return;
          case 5:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 6:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 7:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 8:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 9:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 10:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 11:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 12:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          default:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
        }

        break;
      case 5:
        switch(v10)
        {
          case 1:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 2:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 3:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 4:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 5:
            return;
          case 6:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 7:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
        }

        break;
      case 6:
        switch(v10)
        {
          case 1:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 2:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 3:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 4:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 5:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 6:
            return;
          case 7:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
        }

        break;
      case 7:
        switch(v10)
        {
          case 1:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 2:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 3:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 4:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 5:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 6:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 7:
            return;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
        }

        break;
      case 8:
        switch(v10)
        {
          case 0:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v12);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 1:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v18);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 2:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v17);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 3:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v16);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 4:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v14);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 5:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v15);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 6:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v19);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 7:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v20);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_11_19();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            return;
        }

        break;
      case 9:
        return;
      case 10:
        switch(v10)
        {
          case 1:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v29);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 2:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v30);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 3:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v28);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 4:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v32);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 5:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v35);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 6:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v31);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 7:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v36);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            return;
          case 11:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          default:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v13);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_10_13();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
        }

        break;
      case 11:
        switch(v10)
        {
          case 1:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v22);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 2:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v23);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 3:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v21);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 4:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v25);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 5:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v26);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 6:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v24);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 7:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v27);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_507;
            }

            break;
          case 8:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 9:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 10:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
              goto LABEL_512;
            }

            break;
          case 11:
            return;
          case 12:
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
LABEL_512:
              sub_25BAADFB0();
              OUTLINED_FUNCTION_6_24();
              MEMORY[0x28223BE20](v39);
              OUTLINED_FUNCTION_4_21();
              OUTLINED_FUNCTION_5_20(v40);
              goto LABEL_513;
            }

            break;
          default:
            OUTLINED_FUNCTION_18_16();
            MEMORY[0x28223BE20](v11);
            OUTLINED_FUNCTION_0_26();
            if (a1)
            {
              OUTLINED_FUNCTION_9_15();
            }

            if (a4)
            {
LABEL_507:
              sub_25BAADFB0();
              OUTLINED_FUNCTION_19_12();
              MEMORY[0x28223BE20](v37);
              OUTLINED_FUNCTION_4_21();
              OUTLINED_FUNCTION_12_14(v38);
              sub_25BCB6CEC();
            }

            break;
        }

        break;
      case 12:
        switch(v10)
        {
          case 1:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 2:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 3:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 5:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 6:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 7:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 8:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 9:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 10:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 11:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 12:
            return;
          default:
            v41[0] = a1;
            v41[1] = a2;
            sub_25BB5C3B0();
            sub_25BCB581C();
            break;
        }

        break;
      default:
        switch(v10)
        {
          case 1:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 2:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 3:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 4:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 5:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 6:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 7:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 8:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 9:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 10:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 11:
            if (a4)
            {
              goto LABEL_277;
            }

            break;
          case 12:
            if (a4)
            {
LABEL_277:
              OUTLINED_FUNCTION_13_13();
              OUTLINED_FUNCTION_6_24();
              MEMORY[0x28223BE20](v33);
              OUTLINED_FUNCTION_4_21();
              OUTLINED_FUNCTION_5_20(v34);
LABEL_513:
              sub_25BCB6CEC();
            }

            break;
          default:
            return;
        }

        break;
    }
  }
}

uint64_t sub_25BAABBA4(uint64_t (*a1)(void))
{
  if (*(v1 + 40))
  {
    v2 = *(v1 + 48);
  }

  return a1();
}

void sub_25BAABC00(const float *a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = *(a3 + 16);
  v14 = *(v6 + 160);
  v13 = a6;
  v7 = *(v6 + 152);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = 1;
    while (1)
    {
      v11 = *v9++;
      v12 = v10 * v11;
      if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
      {
        break;
      }

      v10 = v12;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    sub_25BAA83F4(a1, a2, &v14, a4, a5, &v13);
  }
}

uint64_t sub_25BAABC84(const float *a1, uint64_t a2, _BYTE *a3, float *a4, uint64_t a5, _BYTE *a6)
{
  v102 = a5;
  v103 = a2;
  v104 = a4;
  v105 = a1;
  v8 = sub_25BCB555C();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v99 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v92 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v92 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v92 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v92 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v94 = &v92 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v92 = &v92 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v92 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v92 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v92 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v92 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4A98, &qword_25BCC0648);
  v38 = v37 - 8;
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v92 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA0, &qword_25BCC0650);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v92 - v44;
  LOBYTE(a3) = *a3;
  LOBYTE(a6) = *a6;
  sub_25BAAD700(&v92 - v44);
  v46 = *(v38 + 72);
  *v41 = a3;
  v41[1] = a6;
  sub_25BAAD8E0(v45, &v41[v46]);
  v47 = v41[1];
  switch(*v41)
  {
    case 0:
      if (v47 == 10)
      {
        goto LABEL_43;
      }

      if (v47 != 11)
      {
        goto LABEL_181;
      }

LABEL_45:
      sub_25BAA6F5C(&v41[v46], &qword_27FBB4AA0, &qword_25BCC0650);
      if (v104)
      {
        v47 = (v102 - v104) / 8;
      }

      else
      {
        v47 = 0;
      }

      if (v105)
      {
        v65 = v103 - v105;
      }

      else
      {
        v65 = 0;
      }

      if (v65 != v47)
      {
        goto LABEL_253;
      }

      if (v65 < 0)
      {
        goto LABEL_255;
      }

      if (!v105)
      {
        goto LABEL_269;
      }

      if (!v104)
      {
        goto LABEL_271;
      }

      v64 = 1;
      vDSP_vflt8D(v105, 1, v104, 1, v103 - v105);
      return v64;
    case 1:
      if (v47 == 11)
      {
        if (v104)
        {
          v47 = v102 - v104;
          v60 = v105;
          if (!v105)
          {
            goto LABEL_302;
          }

          v47 /= 8;
        }

        else
        {
          v60 = v105;
          if (!v105)
          {
LABEL_303:
            __break(1u);
            goto LABEL_304;
          }

          v47 = 0;
        }

        if ((v103 - v60) / 2 != v47)
        {
          goto LABEL_304;
        }

        if (v103 - v60 >= -1)
        {
          if (v104)
          {
            v64 = 1;
            vDSP_vflt16D(v60, 1, v104, 1, (v103 - v60) / 2);
            goto LABEL_200;
          }

          goto LABEL_281;
        }

        goto LABEL_262;
      }

      if (v47 != 10)
      {
        goto LABEL_181;
      }

      if (v104)
      {
        v47 = v102 - v104;
        v50 = v105;
        if (!v105)
        {
          goto LABEL_296;
        }

        v47 /= 4;
      }

      else
      {
        v50 = v105;
        if (!v105)
        {
LABEL_297:
          __break(1u);
          goto LABEL_298;
        }

        v47 = 0;
      }

      if ((v103 - v50) / 2 != v47)
      {
        goto LABEL_298;
      }

      if (v103 - v50 >= -1)
      {
        if (v104)
        {
          v64 = 1;
          vDSP_vflt16(v50, 1, v104, 1, (v103 - v50) / 2);
          goto LABEL_200;
        }

        goto LABEL_280;
      }

      goto LABEL_261;
    case 2:
      if (v47 == 11)
      {
        if (v104)
        {
          v47 = v102 - v104;
          v58 = v105;
          if (!v105)
          {
            goto LABEL_290;
          }

          v47 /= 8;
        }

        else
        {
          v58 = v105;
          if (!v105)
          {
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

          v47 = 0;
        }

        if ((v103 - v58) / 4 != v47)
        {
          goto LABEL_292;
        }

        if (v103 - v58 >= -3)
        {
          if (!v104)
          {
LABEL_278:
            __break(1u);
            goto LABEL_279;
          }

          v64 = 1;
          vDSP_vflt32D(v58, 1, v104, 1, (v103 - v58) / 4);
          goto LABEL_200;
        }

        goto LABEL_259;
      }

      if (v47 == 10)
      {
        if (v104)
        {
          v47 = v102 - v104;
          v48 = v105;
          if (!v105)
          {
            goto LABEL_284;
          }

          v47 /= 4;
        }

        else
        {
          v48 = v105;
          if (!v105)
          {
LABEL_285:
            __break(1u);
            goto LABEL_286;
          }

          v47 = 0;
        }

        if ((v103 - v48) / 4 != v47)
        {
          goto LABEL_286;
        }

        if (v103 - v48 >= -3)
        {
          if (!v104)
          {
LABEL_276:
            __break(1u);
            goto LABEL_277;
          }

          v64 = 1;
          vDSP_vflt32(v48, 1, v104, 1, (v103 - v48) / 4);
LABEL_200:
          sub_25BAA6F5C(&v41[v46], &qword_27FBB4AA0, &qword_25BCC0650);
          return v64;
        }

LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

LABEL_181:
      sub_25BAA6F5C(v41, &qword_27FBB4A98, &qword_25BCC0648);
      return 0;
    case 4:
      if (v47 == 11)
      {
        if (v104)
        {
          v47 = (v102 - v104) / 8;
        }

        else
        {
          v47 = 0;
        }

        if (v105)
        {
          v72 = v103 - v105;
        }

        else
        {
          v72 = 0;
        }

        if (v72 == v47)
        {
          if ((v47 & 0x8000000000000000) == 0)
          {
            if (v105)
            {
              if (v104)
              {
                v64 = 1;
                vDSP_vfltu8D(v105, 1, v104, 1, v103 - v105);
                goto LABEL_200;
              }

              goto LABEL_275;
            }

            goto LABEL_273;
          }

          goto LABEL_267;
        }

        goto LABEL_265;
      }

      if (v47 != 10)
      {
        goto LABEL_181;
      }

      if (v104)
      {
        v47 = (v102 - v104) / 4;
      }

      else
      {
        v47 = 0;
      }

      if (v105)
      {
        v71 = v103 - v105;
      }

      else
      {
        v71 = 0;
      }

      if (v71 == v47)
      {
        if ((v71 & 0x8000000000000000) == 0)
        {
          if (v105)
          {
            if (v104)
            {
              v64 = 1;
              vDSP_vfltu8(v105, 1, v104, 1, v103 - v105);
              goto LABEL_200;
            }

            goto LABEL_274;
          }

          goto LABEL_272;
        }

        goto LABEL_266;
      }

      goto LABEL_264;
    case 5:
      if (v47 == 11)
      {
        if (v104)
        {
          v47 = v102 - v104;
          v61 = v105;
          if (!v105)
          {
            goto LABEL_305;
          }

          v62 = v47 / 8;
        }

        else
        {
          v61 = v105;
          if (!v105)
          {
LABEL_306:
            __break(1u);
            goto LABEL_307;
          }

          v62 = 0;
        }

        v47 = v103 - v61;
        if ((v103 - v61) / 2 != v62)
        {
          goto LABEL_307;
        }

        if (v47 >= -1)
        {
          if (v104)
          {
            v64 = 1;
            vDSP_vfltu16D(v61, 1, v104, 1, v62);
            goto LABEL_200;
          }

          goto LABEL_283;
        }

        goto LABEL_263;
      }

      if (v47 != 10)
      {
        goto LABEL_181;
      }

      if (v104)
      {
        v47 = v102 - v104;
        v57 = v105;
        if (!v105)
        {
          goto LABEL_299;
        }

        v47 /= 4;
      }

      else
      {
        v57 = v105;
        if (!v105)
        {
LABEL_300:
          __break(1u);
          goto LABEL_301;
        }

        v47 = 0;
      }

      if ((v103 - v57) / 2 != v47)
      {
        goto LABEL_301;
      }

      if (v103 - v57 >= -1)
      {
        if (v104)
        {
          v64 = 1;
          vDSP_vfltu16(v57, 1, v104, 1, (v103 - v57) / 2);
          goto LABEL_200;
        }

        goto LABEL_282;
      }

      goto LABEL_256;
    case 6:
      if (v47 == 11)
      {
        if (v104)
        {
          v47 = v102 - v104;
          v59 = v105;
          if (!v105)
          {
            goto LABEL_293;
          }

          v47 /= 8;
        }

        else
        {
          v59 = v105;
          if (!v105)
          {
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }

          v47 = 0;
        }

        if ((v103 - v59) / 4 != v47)
        {
          goto LABEL_295;
        }

        if (v103 - v59 >= -3)
        {
          if (!v104)
          {
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            v47 += 3;
            if (v47 < 7)
            {
              goto LABEL_285;
            }

LABEL_286:
            __break(1u);
LABEL_287:
            v47 += 3;
            if (v47 < 7)
            {
              goto LABEL_288;
            }

LABEL_289:
            __break(1u);
LABEL_290:
            v47 += 7;
            if (v47 < 0xF)
            {
              goto LABEL_291;
            }

LABEL_292:
            __break(1u);
LABEL_293:
            v47 += 7;
            if (v47 < 0xF)
            {
              goto LABEL_294;
            }

LABEL_295:
            __break(1u);
LABEL_296:
            v47 += 3;
            if (v47 < 7)
            {
              goto LABEL_297;
            }

LABEL_298:
            __break(1u);
LABEL_299:
            v47 += 3;
            if (v47 < 7)
            {
              goto LABEL_300;
            }

LABEL_301:
            __break(1u);
LABEL_302:
            v47 += 7;
            if (v47 < 0xF)
            {
              goto LABEL_303;
            }

LABEL_304:
            __break(1u);
LABEL_305:
            v47 += 7;
            if (v47 < 0xF)
            {
              goto LABEL_306;
            }

LABEL_307:
            __break(1u);
LABEL_308:
            if ((v47 & 0x8000000000000000) == 0)
            {
              __break(1u);
            }

LABEL_310:
            __break(1u);
LABEL_311:
            if ((v47 & 0x8000000000000000) == 0)
            {
              __break(1u);
            }

LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
LABEL_315:
            __break(1u);
            JUMPOUT(0x25BAAD670);
          }

          v64 = 1;
          vDSP_vfltu32D(v59, 1, v104, 1, (v103 - v59) / 4);
          goto LABEL_200;
        }

LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
        goto LABEL_276;
      }

      if (v47 != 10)
      {
        goto LABEL_181;
      }

      if (v104)
      {
        v47 = v102 - v104;
        v49 = v105;
        if (!v105)
        {
          goto LABEL_287;
        }

        v47 /= 4;
      }

      else
      {
        v49 = v105;
        if (!v105)
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

        v47 = 0;
      }

      if ((v103 - v49) / 4 != v47)
      {
        goto LABEL_289;
      }

      if (v103 - v49 >= -3)
      {
        if (!v104)
        {
LABEL_277:
          __break(1u);
          goto LABEL_278;
        }

        v64 = 1;
        vDSP_vfltu32(v49, 1, v104, 1, (v103 - v49) / 4);
        goto LABEL_200;
      }

      goto LABEL_258;
    case 10:
      switch(v41[1])
      {
        case 0:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v51 = v100;
          (*(v100 + 32))(v36, &v41[v46], v101);
          v52 = v102 - v104;
          if (!v104)
          {
            v52 = 0;
          }

          v108 = v104;
          v109 = v52;
          if (v105)
          {
            v53 = (v103 - v105) / 4;
          }

          else
          {
            v53 = 0;
          }

          v106 = v105;
          v107 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B18, &unk_25BCC0690);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B08, &qword_25BCC0688);
          sub_25BB30E7C(&qword_27FBB4B20, &qword_27FBB4B18, &unk_25BCC0690);
          sub_25BB30E7C(&qword_27FBB4B10, &qword_27FBB4B08, &qword_25BCC0688);
          sub_25BCB55CC();
          (*(v51 + 8))(v36, v101);
          return 1;
        case 1:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v68 = v100;
          (*(v100 + 32))(v34, &v41[v46], v101);
          if (v104)
          {
            v69 = (v102 - v104) / 2;
          }

          else
          {
            v69 = 0;
          }

          v108 = v104;
          v109 = v69;
          if (v105)
          {
            v86 = (v103 - v105) / 4;
          }

          else
          {
            v86 = 0;
          }

          v106 = v105;
          v107 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B18, &unk_25BCC0690);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AF8, &qword_25BCC0680);
          sub_25BB30E7C(&qword_27FBB4B20, &qword_27FBB4B18, &unk_25BCC0690);
          sub_25BB30E7C(&qword_27FBB4B00, &qword_27FBB4AF8, &qword_25BCC0680);
          sub_25BCB55DC();
          (*(v68 + 8))(v34, v101);
          return 1;
        case 2:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          (*(v100 + 32))(v31, &v41[v46], v101);
          if (v104)
          {
            v73 = (v102 - v104) / 4;
          }

          else
          {
            v73 = 0;
          }

          v108 = v104;
          v109 = v73;
          if (v105)
          {
            v88 = (v103 - v105) / 4;
          }

          else
          {
            v88 = 0;
          }

          v106 = v105;
          v107 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B18, &unk_25BCC0690);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AE8, &qword_25BCC0678);
          sub_25BB30E7C(&qword_27FBB4B20, &qword_27FBB4B18, &unk_25BCC0690);
          sub_25BB30E7C(&qword_27FBB4AF0, &qword_27FBB4AE8, &qword_25BCC0678);
          sub_25BCB55EC();
          goto LABEL_250;
        case 4:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          (*(v100 + 32))(v28, &v41[v46], v101);
          v75 = v102 - v104;
          if (!v104)
          {
            v75 = 0;
          }

          v108 = v104;
          v109 = v75;
          if (v105)
          {
            v76 = (v103 - v105) / 4;
          }

          else
          {
            v76 = 0;
          }

          v106 = v105;
          v107 = v76;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B18, &unk_25BCC0690);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AD8, &qword_25BCC0670);
          sub_25BB30E7C(&qword_27FBB4B20, &qword_27FBB4B18, &unk_25BCC0690);
          sub_25BB30E7C(&qword_27FBB4AE0, &qword_27FBB4AD8, &qword_25BCC0670);
          sub_25BCB55FC();
          (*(v100 + 8))(v28, v101);
          return 1;
        case 5:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v92;
          (*(v100 + 32))(v92, &v41[v46], v101);
          if (v104)
          {
            v79 = (v102 - v104) / 2;
          }

          else
          {
            v79 = 0;
          }

          v108 = v104;
          v109 = v79;
          if (v105)
          {
            v90 = (v103 - v105) / 4;
          }

          else
          {
            v90 = 0;
          }

          v106 = v105;
          v107 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B18, &unk_25BCC0690);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AC8, &qword_25BCC0668);
          sub_25BB30E7C(&qword_27FBB4B20, &qword_27FBB4B18, &unk_25BCC0690);
          sub_25BB30E7C(&qword_27FBB4AD0, &qword_27FBB4AC8, &qword_25BCC0668);
          sub_25BCB560C();
          goto LABEL_250;
        case 6:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v94;
          (*(v100 + 32))(v94, &v41[v46], v101);
          if (v104)
          {
            v66 = (v102 - v104) / 4;
          }

          else
          {
            v66 = 0;
          }

          v108 = v104;
          v109 = v66;
          if (v105)
          {
            v84 = (v103 - v105) / 4;
          }

          else
          {
            v84 = 0;
          }

          v106 = v105;
          v107 = v84;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B18, &unk_25BCC0690);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AB0, &qword_25BCC0660);
          sub_25BB30E7C(&qword_27FBB4B20, &qword_27FBB4B18, &unk_25BCC0690);
          sub_25BB30E7C(&qword_27FBB4AC0, &qword_27FBB4AB0, &qword_25BCC0660);
          sub_25BCB561C();
          goto LABEL_250;
        case 11:
          if (v104)
          {
            v47 = (v102 - v104) / 8;
          }

          else
          {
            v47 = 0;
          }

          if (!v105)
          {
            goto LABEL_308;
          }

          if (v47 >= (v103 - v105) / 4)
          {
            v81 = (v103 - v105) / 4;
          }

          else
          {
            v81 = v47;
          }

          if ((v81 & 0x8000000000000000) != 0)
          {
            goto LABEL_310;
          }

          if (!v104)
          {
            goto LABEL_314;
          }

          v64 = 1;
          vDSP_vspdp(v105, 1, v104, 1, v81);
          break;
        default:
          goto LABEL_181;
      }

      goto LABEL_200;
    case 11:
      switch(v41[1])
      {
        case 0:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v93;
          (*(v100 + 32))(v93, &v41[v46], v101);
          v55 = v102 - v104;
          if (!v104)
          {
            v55 = 0;
          }

          v108 = v104;
          v109 = v55;
          if (v105)
          {
            v56 = (v103 - v105) / 8;
          }

          else
          {
            v56 = 0;
          }

          v106 = v105;
          v107 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA8, &qword_25BCC0658);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B08, &qword_25BCC0688);
          sub_25BB30E7C(&qword_27FBB4AB8, &qword_27FBB4AA8, &qword_25BCC0658);
          sub_25BB30E7C(&qword_27FBB4B10, &qword_27FBB4B08, &qword_25BCC0688);
          sub_25BCB556C();
          goto LABEL_250;
        case 1:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v95;
          (*(v100 + 32))(v95, &v41[v46], v101);
          if (v104)
          {
            v70 = (v102 - v104) / 2;
          }

          else
          {
            v70 = 0;
          }

          v108 = v104;
          v109 = v70;
          if (v105)
          {
            v87 = (v103 - v105) / 8;
          }

          else
          {
            v87 = 0;
          }

          v106 = v105;
          v107 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA8, &qword_25BCC0658);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AF8, &qword_25BCC0680);
          sub_25BB30E7C(&qword_27FBB4AB8, &qword_27FBB4AA8, &qword_25BCC0658);
          sub_25BB30E7C(&qword_27FBB4B00, &qword_27FBB4AF8, &qword_25BCC0680);
          sub_25BCB557C();
          goto LABEL_250;
        case 2:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v97;
          (*(v100 + 32))(v97, &v41[v46], v101);
          if (v104)
          {
            v74 = (v102 - v104) / 4;
          }

          else
          {
            v74 = 0;
          }

          v108 = v104;
          v109 = v74;
          if (v105)
          {
            v89 = (v103 - v105) / 8;
          }

          else
          {
            v89 = 0;
          }

          v106 = v105;
          v107 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA8, &qword_25BCC0658);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AE8, &qword_25BCC0678);
          sub_25BB30E7C(&qword_27FBB4AB8, &qword_27FBB4AA8, &qword_25BCC0658);
          sub_25BB30E7C(&qword_27FBB4AF0, &qword_27FBB4AE8, &qword_25BCC0678);
          sub_25BCB558C();
          goto LABEL_250;
        case 4:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v96;
          (*(v100 + 32))(v96, &v41[v46], v101);
          v77 = v102 - v104;
          if (!v104)
          {
            v77 = 0;
          }

          v108 = v104;
          v109 = v77;
          if (v105)
          {
            v78 = (v103 - v105) / 8;
          }

          else
          {
            v78 = 0;
          }

          v106 = v105;
          v107 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA8, &qword_25BCC0658);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AD8, &qword_25BCC0670);
          sub_25BB30E7C(&qword_27FBB4AB8, &qword_27FBB4AA8, &qword_25BCC0658);
          sub_25BB30E7C(&qword_27FBB4AE0, &qword_27FBB4AD8, &qword_25BCC0670);
          sub_25BCB559C();
          goto LABEL_250;
        case 5:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v54 = v100;
          v31 = v98;
          (*(v100 + 32))(v98, &v41[v46], v101);
          if (v104)
          {
            v80 = (v102 - v104) / 2;
          }

          else
          {
            v80 = 0;
          }

          v108 = v104;
          v109 = v80;
          if (v105)
          {
            v91 = (v103 - v105) / 8;
          }

          else
          {
            v91 = 0;
          }

          v106 = v105;
          v107 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA8, &qword_25BCC0658);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AC8, &qword_25BCC0668);
          sub_25BB30E7C(&qword_27FBB4AB8, &qword_27FBB4AA8, &qword_25BCC0658);
          sub_25BB30E7C(&qword_27FBB4AD0, &qword_27FBB4AC8, &qword_25BCC0668);
          sub_25BCB55AC();
          goto LABEL_250;
        case 6:
          if (__swift_getEnumTagSinglePayload(&v41[v46], 1, v101) == 1)
          {
            goto LABEL_181;
          }

          v31 = v99;
          v54 = v100;
          (*(v100 + 32))(v99, &v41[v46], v101);
          if (v104)
          {
            v67 = (v102 - v104) / 4;
          }

          else
          {
            v67 = 0;
          }

          v108 = v104;
          v109 = v67;
          if (v105)
          {
            v85 = (v103 - v105) / 8;
          }

          else
          {
            v85 = 0;
          }

          v106 = v105;
          v107 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA8, &qword_25BCC0658);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AB0, &qword_25BCC0660);
          sub_25BB30E7C(&qword_27FBB4AB8, &qword_27FBB4AA8, &qword_25BCC0658);
          sub_25BB30E7C(&qword_27FBB4AC0, &qword_27FBB4AB0, &qword_25BCC0660);
          sub_25BCB55BC();
LABEL_250:
          (*(v54 + 8))(v31, v101);
          return 1;
        case 10:
          if (v104)
          {
            v47 = (v102 - v104) / 4;
          }

          else
          {
            v47 = 0;
          }

          if (!v105)
          {
            goto LABEL_311;
          }

          if (v47 >= (v103 - v105) / 8)
          {
            v82 = (v103 - v105) / 8;
          }

          else
          {
            v82 = v47;
          }

          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_313;
          }

          if (!v104)
          {
            goto LABEL_315;
          }

          v64 = 1;
          vDSP_vdpsp(v105, 1, v104, 1, v82);
          break;
        default:
          goto LABEL_181;
      }

      goto LABEL_200;
    case 12:
      if (v47 == 11)
      {
        goto LABEL_45;
      }

      if (v47 != 10)
      {
        goto LABEL_181;
      }

LABEL_43:
      sub_25BAA6F5C(&v41[v46], &qword_27FBB4AA0, &qword_25BCC0650);
      if (v104)
      {
        v47 = (v102 - v104) / 4;
      }

      else
      {
        v47 = 0;
      }

      if (v105)
      {
        v63 = v103 - v105;
      }

      else
      {
        v63 = 0;
      }

      if (v63 != v47)
      {
        __break(1u);
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }

      if (v63 < 0)
      {
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
        goto LABEL_257;
      }

      if (!v105)
      {
        goto LABEL_268;
      }

      if (!v104)
      {
        goto LABEL_270;
      }

      v64 = 1;
      vDSP_vflt8(v105, 1, v104, 1, v103 - v105);
      return v64;
    default:
      goto LABEL_181;
  }
}

uint64_t sub_25BAAD700@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25BCB783C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D84670])
  {
    v10 = MEMORY[0x277D830C0];
LABEL_5:
    v11 = *v10;
    v12 = sub_25BCB555C();
    (*(*(v12 - 8) + 104))(a1, v11, v12);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
  }

  if (v9 == *MEMORY[0x277D84660])
  {
    v10 = MEMORY[0x277D830B8];
    goto LABEL_5;
  }

  v14 = sub_25BCB555C();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25BAAD8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4AA0, &qword_25BCC0650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v29[24] = a26;
  *&v29[16] = a25;
  *&v29[8] = a24;
  *v29 = a23;
  *(v27 - 224) = a21;
  *(v27 - 208) = a22;
  *(v27 - 192) = *v29;
  *(v27 - 183) = *&v29[9];
  *(v26 + 105) = *&v29[9];
  return 0;
}

void OUTLINED_FUNCTION_6_12()
{
  v1 = *(v0 - 304);
  *(v0 - 232) = *(v0 - 288);
  *(v0 - 224) = v1;
  *(v0 - 216) = *(v0 - 308);
}

uint64_t OUTLINED_FUNCTION_6_18()
{
  v2 = *(v0 - 192);
  *(v0 - 176) = *(v0 - 200);
  *(v0 - 168) = v2;
  *(v0 - 92) = 3;

  return sub_25BCB617C();
}

void *OUTLINED_FUNCTION_6_20(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char __dst)
{

  return memcpy(&__dst, __src, 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_6_22()
{
  result = *(v0 + 144);
  v2 = *(*(v0 + 136) + 8);
  return result;
}

void *OUTLINED_FUNCTION_6_23@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[4] = *(v2 - 368);
  result[5] = a2;
  result[6] = *(v2 - 376);
  result[7] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_25(unint64_t *a1)
{

  return sub_25BB5F86C(a1);
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return sub_25BB9AB48(v1, v0, (v2 - 144), (v2 - 68));
}

uint64_t OUTLINED_FUNCTION_6_31()
{
  result = sub_25BA97060((v0 - 264), v0 - 304);
  v2 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_34(uint64_t a1, uint64_t a2)
{

  return sub_25BAA486C(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return sub_25BCB6A5C();
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_6_40(uint64_t a1, uint64_t a2)
{
  *(v2 - 352) = a1;
  *(v2 - 344) = a2;
  return 0x656C62756F44;
}

uint64_t OUTLINED_FUNCTION_6_44()
{

  return sub_25BCB74CC();
}

double OUTLINED_FUNCTION_6_45()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

void OUTLINED_FUNCTION_6_46()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_6_51()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_6_52()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_6_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_25BA9323C(v10 + 40, va);
}

void OUTLINED_FUNCTION_6_55(__n128 a1, __n128 a2)
{
  *(v2 + 120) = a2;
  *(v2 + 104) = a1;
  v4 = *(v2 + 203);
  *(v2 + 137) = *(v3 - 248);
}

uint64_t OUTLINED_FUNCTION_6_56()
{
  v2 = *(v0 + 136);

  return sub_25BAF99E8(v2);
}

uint64_t OUTLINED_FUNCTION_6_59()
{
  v2 = *(v1 - 120);
  v3 = *(*(v1 - 128) + 8);
  return v0;
}

void OUTLINED_FUNCTION_6_64()
{

  sub_25BAAE04C();
}

id OUTLINED_FUNCTION_6_68(uint64_t a1)
{

  return sub_25BCB32F0(a1, 0, 0, v1);
}

unint64_t sub_25BAADFB0()
{
  result = qword_28154BDB0;
  if (!qword_28154BDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28154BDB0);
  }

  return result;
}

void sub_25BAADFF4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SHIDWORD(v21));
}

uint64_t OUTLINED_FUNCTION_43@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_90_2()
{

  return sub_25BCB744C();
}

uint64_t OUTLINED_FUNCTION_90_4()
{
  v5 = *(v1 + 16);
  v6 = *(*(v0 + 48) + 16);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
}

uint64_t OUTLINED_FUNCTION_90_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{

  return Tensor.transposed(permutation:)(a1, &a37);
}

uint64_t OUTLINED_FUNCTION_90_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_25BAB6D38(va, v7 << 32);
}

uint64_t OUTLINED_FUNCTION_140_1(uint64_t a1)
{
  v3 = *(a1 + v1 + 40);
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_25BB6B548();
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 256;
  *(v1 + 26) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return sub_25BCB6D6C();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t result)
{
  *(v3 - 376) = result;
  *(v3 - 264) = v1;
  *(v3 - 200) = 0;
  v4 = *(v3 - 312);
  *(v3 - 344) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_7(uint64_t a1)
{

  return sub_25BB00C00(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_42_12()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_42_14()
{

  return swift_weakAssign();
}

uint64_t OUTLINED_FUNCTION_42_16(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_42_17()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_42_18(uint64_t a1)
{

  return sub_25BAB61CC(a1);
}

uint64_t OUTLINED_FUNCTION_42_20()
{
  v2 = *(v0 - 168);

  return sub_25BCB6ABC();
}

uint64_t OUTLINED_FUNCTION_42_21()
{

  return sub_25BCB7B6C();
}

void OUTLINED_FUNCTION_72()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return sub_25BCB778C();
}

uint64_t OUTLINED_FUNCTION_72_2(uint64_t a1, uint64_t a2)
{
  *(v4 - 272) = a2;
  *(v4 - 304) = v3;
  v6 = *(v2 + 40);

  return sub_25BAC4018();
}

void OUTLINED_FUNCTION_72_3(__n128 a1)
{
  v1[8] = a1;
  v1[9].n128_u8[0] = 4;
  v1[9].n128_u64[1] = 0x6E6F6974616C6964;
  v1[10].n128_u64[0] = 0xE900000000000073;
}

uint64_t OUTLINED_FUNCTION_72_4@<X0>(__int16 a1@<W8>)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = 47;
  *(v2 - 104) = a1;

  return type metadata accessor for RandomOperation();
}

void OUTLINED_FUNCTION_72_6()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_72_7()
{
  *(v0 + 145) = 0;

  return sub_25BAA51C8(v1, v0 + 168);
}

uint64_t OUTLINED_FUNCTION_39_3()
{
  v0[1] = v3;
  v0[2] = v2;
  v0[3] = v1;

  return sub_25BB18010((v0 + 4));
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  v3 = v0[17];
  v4 = v0[19];
  v5 = v0[10];

  return sub_25BBF5A38(v1, 0);
}

float OUTLINED_FUNCTION_39_7(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float a10, float a11)
{
  result = a11;
  *(v12 + 4 * v11) = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_8()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_39_9()
{

  return sub_25BCB736C();
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  v2 = *(v0 + 40);

  return sub_25BCB79CC();
}

ValueMetadata *OUTLINED_FUNCTION_39_11()
{
  *(v1 - 144) = v0;

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_39_12(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a3;
  a1[2] = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = 0;
  *(v3 + 104) = v4;
  *(v3 + 112) = 6578544;
  *(v3 + 120) = 0xE300000000000000;

  return swift_allocObject();
}

void OUTLINED_FUNCTION_39_14()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_39_15()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_39_16()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_39_18()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_39_20(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_39_21(uint64_t a1)
{
  v3 = *(v1 - 216);

  return sub_25BAB61CC(a1);
}

void OUTLINED_FUNCTION_39_23(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, a3, a4, a5, a6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_39_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_26()
{

  return swift_beginAccess();
}

ValueMetadata *OUTLINED_FUNCTION_39_27()
{
  *(v1 - 152) = v0;

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_87_0()
{

  return sub_25BCB765C();
}

uint64_t OUTLINED_FUNCTION_87_2()
{
  v4 = *(v2 - 216);
  *(v2 - 440) = v1;

  return sub_25BBF5F44(v0, 0);
}

uint64_t OUTLINED_FUNCTION_87_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, uint64_t a32, char a33)
{

  return Tensor.init(ones:scalarType:on:)(&a24, &a31, &a33, &a32);
}

__n128 *OUTLINED_FUNCTION_79_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 31076;
  result[2].n128_u64[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_25BAAE8D8(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v49 = a8;
  v48 = a3;
  v47 = a2;
  v46 = a1;
  v15 = a4;
  v53 = sub_25BCB783C();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v53);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  if (v15 == 13)
  {
    LOBYTE(a9) = 2;

    return sub_25BAA1868(0, 0, 255, "coercingTensorScalarTypes(from:to:function:file:line:)", 54, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, a9, 93, a12);
  }

  else
  {
    v44 = a9;
    v45 = a10;
    v21 = *(a12 + 16);
    sub_25BAA1B64();
    v23 = v22;
    if (v21)
    {
      v42[0] = a11;
      v42[1] = a5;
      v42[2] = a6;
      v43 = a7;
      v24 = 0;
      v25 = a12 + 32;
      v52 = *MEMORY[0x277D84660];
      v50 = (v16 + 8);
      v51 = (v16 + 104);
      do
      {
        v26 = *(v25 + 8 * v24++);
        v27 = &protocol witness table for Int8;
        v28 = MEMORY[0x277D84900];
        switch(*(*(v26 + 16) + 160))
        {
          case 1:
            v28 = MEMORY[0x277D84958];
            v27 = &protocol witness table for Int16;
            break;
          case 2:
            v28 = MEMORY[0x277D849A8];
            v27 = &protocol witness table for Int32;
            break;
          case 3:
            v28 = MEMORY[0x277D83B88];
            v27 = &protocol witness table for Int;
            break;
          case 4:
            v28 = MEMORY[0x277D84B78];
            v27 = &protocol witness table for UInt8;
            break;
          case 5:
            v28 = MEMORY[0x277D84C58];
            v27 = &protocol witness table for UInt16;
            break;
          case 6:
            v28 = MEMORY[0x277D84CC0];
            v27 = &protocol witness table for UInt32;
            break;
          case 7:
            v28 = MEMORY[0x277D84D38];
            v27 = &protocol witness table for UInt64;
            break;
          case 8:
            v28 = MEMORY[0x277D84DC8];
            v27 = &protocol witness table for Float16;
            break;
          case 9:
            v27 = sub_25BB18AFC();
            v28 = &type metadata for BFloat16;
            break;
          case 0xA:
            v28 = MEMORY[0x277D83A90];
            v27 = &protocol witness table for Float;
            break;
          case 0xB:
            v28 = MEMORY[0x277D839F8];
            v27 = &protocol witness table for Double;
            break;
          case 0xC:
            v28 = MEMORY[0x277D839B0];
            v27 = &protocol witness table for Bool;
            break;
          default:
            break;
        }

        v29 = v27[4];

        v29(v57, v28, v27);
        if (LOBYTE(v57[0]) != v54)
        {
          v30 = v54 + 13 * LOBYTE(v57[0]);
          if (v30 > 0xA8)
          {
            __break(1u);
LABEL_28:
            v57[0] = MEMORY[0x277D84F90];
            sub_25BB006D4();
            v35 = v57[0];
            v36 = MEMORY[0x277D84900];
            v37 = MEMORY[0x277D839B0];
            while (1)
            {
              v38 = &protocol witness table for Int8;
              v39 = v36;
              switch(*(*(*v25 + 16) + 160))
              {
                case 1:
                  v39 = MEMORY[0x277D84958];
                  v38 = &protocol witness table for Int16;
                  break;
                case 2:
                  v39 = MEMORY[0x277D849A8];
                  v38 = &protocol witness table for Int32;
                  break;
                case 3:
                  v39 = MEMORY[0x277D83B88];
                  v38 = &protocol witness table for Int;
                  break;
                case 4:
                  v39 = MEMORY[0x277D84B78];
                  v38 = &protocol witness table for UInt8;
                  break;
                case 5:
                  v39 = MEMORY[0x277D84C58];
                  v38 = &protocol witness table for UInt16;
                  break;
                case 6:
                  v39 = MEMORY[0x277D84CC0];
                  v38 = &protocol witness table for UInt32;
                  break;
                case 7:
                  v39 = MEMORY[0x277D84D38];
                  v38 = &protocol witness table for UInt64;
                  break;
                case 8:
                  v39 = MEMORY[0x277D84DC8];
                  v38 = &protocol witness table for Float16;
                  break;
                case 9:
                  v38 = sub_25BB18AFC();
                  v39 = &type metadata for BFloat16;
                  break;
                case 0xA:
                  v39 = MEMORY[0x277D83A90];
                  v38 = &protocol witness table for Float;
                  break;
                case 0xB:
                  v39 = MEMORY[0x277D839F8];
                  v38 = &protocol witness table for Double;
                  break;
                case 0xC:
                  v39 = v37;
                  v38 = &protocol witness table for Bool;
                  break;
                default:
                  break;
              }

              v57[0] = v35;
              v40 = *(v35 + 16);
              if (v40 >= *(v35 + 24) >> 1)
              {
                sub_25BB006D4();
                v35 = v57[0];
              }

              *(v35 + 16) = v40 + 1;
              v41 = v35 + 16 * v40;
              *(v41 + 32) = v39;
              *(v41 + 40) = v38;
              v25 += 8;
              if (!--v21)
              {
                v57[0] = v35;
                v57[1] = v46;
                v57[2] = v47;
                v58 = v48;
                v59 = 2;
                sub_25BC02C38(v46, v47, v48);
                sub_25BADDD28();
              }
            }
          }

          if (byte_286D42018[v30 + 32] == 13)
          {
            goto LABEL_28;
          }
        }

        v56 = v26;
        v55 = v54;
        v31 = v53;
        (*v51)(v19, v52, v53);
        Tensor.cast(to:roundingRule:)();
        (*v50)(v19, v31);
        v32 = v57[0];
        v33 = *(v23 + 16);
        if (v33 >= *(v23 + 24) >> 1)
        {
          sub_25BAA1B64();
          v23 = v34;
        }

        *(v23 + 16) = v33 + 1;
        *(v23 + 8 * v33 + 32) = v32;
      }

      while (v21 != v24);
    }

    return v23;
  }
}

void sub_25BAAEF84()
{
  v1 = *v0;
  sub_25BAA2064();
  *v0 = v2;
}

uint64_t TensorShape.subscript.getter(uint64_t a1)
{
  v2 = *(*v1 + 16);
  if (-v2 > a1 || v2 <= a1)
  {
LABEL_8:
    OUTLINED_FUNCTION_1_74();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v4 = (v2 & (a1 >> 63)) + a1;
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  return *(*v1 + 8 * v4 + 32);
}

uint64_t sub_25BAAF074(uint64_t a1)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v4);

  if (!v5)
  {
    sub_25BAA4AF4(v4);
    return 0;
  }

  v2 = *(v5 + 24);
  sub_25BAA4AF4(v4);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_25BA9D8C4(a1);
  return a1;
}

void sub_25BAAF134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = sub_25BAA0600(&qword_28154F658, type metadata accessor for ConcatOperation);
  OUTLINED_FUNCTION_4_47();
  v16 = (sub_25BAB52A4)();
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_26_22(v16);
  if (!(!v18 & v17))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    do
    {
      __break(1u);
LABEL_39:
      sub_25BCB617C();
      MEMORY[0x25F8779B0](0, v7);
      OUTLINED_FUNCTION_81_7();

LABEL_9:
      v7 = sub_25BAA0954();

LABEL_24:
      v29 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_36;
      }

      swift_weakInit();
      v46[0] = a1;
      v46[1] = v44;

      OUTLINED_FUNCTION_132_1();
      v7 = a1;
      v46[6] = sub_25BAA29B0(a2);
      v46[7] = v30;
      v31 = (sub_25BAB52A4)();
      if (*(v31 + 16) <= a2)
      {
        goto LABEL_37;
      }

      v32 = *(v31 + 16 * a2 + 32);
      sub_25BCB617C();

      v46[8] = v32;
      v7 = a1;
      v34 = sub_25BAB52A4(v33);
    }

    while (*(v34 + 16) <= a2);
    v35 = *(v34 + 16 * a2 + 40);

    v47 = v35;
    v46[2] = a2;
    swift_weakAssign();

    v46[5] = a6;
    v46[3] = v29;
    sub_25BAA0E58(v46, a7 + 40);
    OUTLINED_FUNCTION_72_7();
    OUTLINED_FUNCTION_71_5();
    OUTLINED_FUNCTION_87_4();
    if (v37 != v38)
    {
      v39 = sub_25BAB52A4(v36);
      OUTLINED_FUNCTION_73_7(v39);

      if (v35 == 1 && !a5)
      {

        v40 = sub_25BA928B4();
        [v40 lock];

        OUTLINED_FUNCTION_37_15(&v45);
        [*(a7 + 224) unlock];

        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    else
    {
    }

LABEL_32:
    sub_25BA9C2C8(a3);
    sub_25BA977E0(v46);
    return;
  }

  v19 = v8 + 16 * a2;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  sub_25BCB617C();

  if ((a4 & 0x100000000) != 0)
  {
    v22 = *(a1 + 16);
  }

  OUTLINED_FUNCTION_27_23();
  v7 = a1;
  if (sub_25BAAF4F4() == 1)
  {
    OUTLINED_FUNCTION_201_1();
    v7 = *(a1 + 40);
    sub_25BAB4D78(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_39;
    }

    v23 = *(v7 + 32);

    goto LABEL_9;
  }

  v41 = a2;
  v42 = a6;
  v43 = a5;
  OUTLINED_FUNCTION_201_1();
  v24 = *(a1 + 40);
  v25 = sub_25BAAF54C(v24);
  if (!v25)
  {
LABEL_21:
    OUTLINED_FUNCTION_21_26();
    if (v8)
    {
      v7 = 0;
    }

    a5 = v43;
    a2 = v41;
    a6 = v42;
    goto LABEL_24;
  }

  v26 = v25;
  v46[0] = MEMORY[0x277D84F90];
  v8 = v25 & ~(v25 >> 63);
  sub_25BCB617C();
  v7 = v46;
  sub_25BAA21EC();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = v46[0];
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_133_1();
        v7 = v28;
      }

      else
      {
        OUTLINED_FUNCTION_70_5();
      }

      sub_25BAA0954();
      OUTLINED_FUNCTION_69_6();
      v46[0] = v27;
      OUTLINED_FUNCTION_48_13();
      if (v17)
      {
        v7 = v46;
        sub_25BAA21EC();
        v27 = v46[0];
      }

      OUTLINED_FUNCTION_7_37();
    }

    while (!v18);

    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_25BAAF4F4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(v0 + 40);
  }

  return sub_25BCB749C();
}

uint64_t sub_25BAAF550(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_25BAAF5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  v14 = *a6;
  v15 = *(a6 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x736F70736E617274, 0xE900000000000065);
  }

  v16 = a7[1];
  *(v9 + 88) = *a7;
  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = v14;
  *(v9 + 64) = v15;
  *(v9 + 72) = a8;
  *(v9 + 80) = a9;
  *(v9 + 104) = v17;
  *(v9 + 120) = a7[2];
  *(v9 + 130) = *(a7 + 42);
  return v9;
}

uint64_t Tensor.expandingShape(at:)()
{
  OUTLINED_FUNCTION_47_12();
  sub_25BAB5B48(&v19, v0, &v17);

  if (v17)
  {
    OUTLINED_FUNCTION_55_5(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25BCB70FC();

    OUTLINED_FUNCTION_86();
    v10 = OUTLINED_FUNCTION_54_8();
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x25F876F80](v10, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v12);

    OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_86_3();
    v13 = MEMORY[0x25F876F80](v0, v11);
    MEMORY[0x25F876C90](v13);

    OUTLINED_FUNCTION_10_5();
    result = OUTLINED_FUNCTION_43_10();
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_45_1();
  return Tensor.expandingShape(at:)();
}

void Tensor.reshaped(to:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if ((sub_25BAB5C48(*a1, *(*(v5 + 16) + 152)) & 1) == 0)
  {
    v62 = a2;
    v63 = v5;
    v6 = *(v4 + 16);
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = 0;
    while (v6 != v9)
    {
      v10 = *(v4 + 16);
      if (v9 < -v10 || v9 >= v10)
      {
        goto LABEL_102;
      }

      if (v7 < 0)
      {
LABEL_93:
        __break(1u);
LABEL_94:
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
        goto LABEL_100;
      }

      v12 = *(v4 + 8 * v9++ + 32);
      if (v12 == -1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_56_6();
          v8 = v15;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          OUTLINED_FUNCTION_81(v13);
          sub_25BAAE04C();
          v8 = v16;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 8 * v14 + 32) = -1;
        v7 = v9;
      }
    }

    v17 = *(v8 + 16);

    v18 = *(v4 + 16);
    sub_25BCB617C();
    v19 = 0;
    v20 = 0;
    v9 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    while (v18 != v20)
    {
      v10 = *(v4 + 16);
      if (v20 < -v10 || v20 >= v10)
      {
        v66 = 0;
        v64 = v20;
        goto LABEL_103;
      }

      if (v19 < 0)
      {
        goto LABEL_94;
      }

      v23 = *(v4 + 8 * v20++ + 32);
      if (v23 >= 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_56_6();
          v21 = v26;
        }

        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_81(v24);
          sub_25BAAE04C();
          v21 = v27;
        }

        *(v21 + 16) = v25 + 1;
        *(v21 + 8 * v25 + 32) = v23;
        v19 = v20;
      }
    }

    v28 = *(v21 + 16);
    if (v28)
    {
      v29 = 1;
      v10 = 32;
      do
      {
        v30 = *(v21 + v10);
        if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
        {
          goto LABEL_95;
        }

        v29 *= v30;
        v10 += 8;
        --v28;
      }

      while (v28);

      v31 = v17 == 1;
      if (v17 > 1)
      {
        goto LABEL_106;
      }
    }

    else
    {

      v31 = v17 == 1;
      if (v17 > 1)
      {
LABEL_106:
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_43_10();
        __break(1u);
        return;
      }

      v29 = 1;
    }

    v32 = v63;
    if (!v31)
    {
      OUTLINED_FUNCTION_49_12(*(v63 + 16));
      if (!v36)
      {
        if (v29 == 1)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v10 = v37 + 32;
      v38 = 1;
      do
      {
        v39 = *v10;
        v10 += 8;
        v40 = v38 * v39;
        if ((v38 * v39) >> 64 != (v38 * v39) >> 63)
        {
          goto LABEL_97;
        }

        v38 = v40;
        --v36;
      }

      while (v36);
      if (v40 != v29)
      {
LABEL_60:
        OUTLINED_FUNCTION_71_4();
        goto LABEL_106;
      }

LABEL_87:
      v54 = *(v32 + 16);
      if ((sub_25BAB5C48(v4, *(v54 + 152)) & 1) == 0)
      {
        v64 = v4;
        v56 = *(v54 + 152);
        OUTLINED_FUNCTION_22();
        *(swift_allocObject() + 16) = v56;

        sub_25BCB617C();
        OUTLINED_FUNCTION_62_5();

        v75[55] = 0;
        OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
        v77 = xmmword_25BCCB420;
        OUTLINED_FUNCTION_28(v57);
        type metadata accessor for ReshapeOperation();
        swift_allocObject();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_79_4();
        sub_25BAAFF64();
        sub_25BAA51C8(*(v32 + 16) + 168, v75);
        sub_25BAA51C8(v75, v74);
        type metadata accessor for ContextManager();
        OUTLINED_FUNCTION_15_8();
        swift_retain_n();
        sub_25BAA49B8();
        sub_25BAA4A5C(&v64);

        v58 = v72;

        sub_25BAA4AF4(&v64);
        sub_25BAA49B8();
        sub_25BAA4A5C(&v64);

        sub_25BAA4AF4(&v64);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        swift_allocObject();
        OUTLINED_FUNCTION_20_23();
        LOBYTE(v64) = v59;
        OUTLINED_FUNCTION_19();
        v60 = OUTLINED_FUNCTION_6_42();
        sub_25BAAFFBC(v60);
        OUTLINED_FUNCTION_9_19();
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v61 = swift_allocObject();
        OUTLINED_FUNCTION_21_25(v61);
        sub_25BAA6EB0();
        OUTLINED_FUNCTION_15_8();

        sub_25BA9C2C8(v75);
        *v62 = v58;
        OUTLINED_FUNCTION_82();
        return;
      }

      *v62 = v32;
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_49_12(*(v63 + 16));
    if (v33)
    {
      do
      {
        OUTLINED_FUNCTION_73_5();
        if (!v31)
        {
          goto LABEL_96;
        }
      }

      while (v34 != 1);
      if (v29 != -1)
      {
        if (!v29)
        {
          if (v10)
          {
            goto LABEL_60;
          }

          v35 = 1;
          goto LABEL_63;
        }

        if (v10 % v29)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v29 != -1 && (!v29 || 1 % v29))
    {
      goto LABEL_60;
    }

    v35 = 0;
LABEL_63:
    v41 = *(v4 + 16);
    if (v41)
    {
      v76 = v9;
      sub_25BAA21EC();
      v42 = 0;
      v43 = *(v4 + 16);
      v44 = v9;
      v45 = v63;
      v46 = v4 + 32;
      while (1)
      {
        if (v42 == v43)
        {
          v65 = 0;
          v66 = 0;
          v64 = v43;
          v67 = -1;
          v70 = 0;
          v68 = v43;
          goto LABEL_104;
        }

        if (v42 >= *(v4 + 16))
        {
          goto LABEL_98;
        }

        v47 = *(v46 + 8 * v42);
        if (v47 != -1)
        {
          goto LABEL_82;
        }

        OUTLINED_FUNCTION_49_12(*(v45 + 16));
        if (!v48)
        {
          if ((v35 & 1) == 0)
          {
            v10 = 1;
            goto LABEL_81;
          }

LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          v66 = 0;
          v64 = v9;
LABEL_103:
          v65 = 0;
          v67 = -1;
          v70 = 0;
          v68 = v10;
LABEL_104:
          v69 = 0;
          v71 = -1;
          v73 = 4;
          OUTLINED_FUNCTION_17_4();
          sub_25BADDD28();
        }

        do
        {
          OUTLINED_FUNCTION_73_5();
          if (!v31)
          {
            __break(1u);
            goto LABEL_93;
          }
        }

        while (v49 != 1);
        if (v35)
        {
          goto LABEL_99;
        }

        if (v10 == v50 && v29 == -1)
        {
          goto LABEL_101;
        }

LABEL_81:
        v47 = v10 / v29;
LABEL_82:
        v76 = v44;
        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        v9 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          OUTLINED_FUNCTION_81(v52);
          sub_25BAA21EC();
          v46 = v4 + 32;
          v45 = v63;
          v44 = v76;
        }

        ++v42;
        *(v44 + 16) = v9;
        *(v44 + 8 * v53 + 32) = v47;
        if (v42 == v41)
        {

          v32 = v63;
          v4 = v44;
          goto LABEL_87;
        }
      }
    }

    v4 = MEMORY[0x277D84F90];
    v32 = v63;
    goto LABEL_87;
  }

  *a2 = v5;
LABEL_89:
  OUTLINED_FUNCTION_82();
}

uint64_t sub_25BAAFEDC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

char *sub_25BAAFF14(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

uint64_t sub_25BAAFF64()
{
  OUTLINED_FUNCTION_1_64();
  v6 = v5;
  v8 = *v7;
  if (!v4)
  {
    v9 = OUTLINED_FUNCTION_6_5();
    v2 = sub_25BAA5EA0(v9, v10);
  }

  v11 = v0[1];
  *(v1 + 56) = *v0;
  OUTLINED_FUNCTION_8_2(v2, v3, v4);
  *(v1 + 40) = v6;
  *(v1 + 48) = v8;
  return OUTLINED_FUNCTION_2_68(v12, v13);
}

uint64_t OUTLINED_FUNCTION_82_3()
{
  result = *(v0 - 392);
  v2 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v5 = *(v3 + 104);
  *(v2 + 48) = *(v3 + 96);
  *(v2 + 56) = v5;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_82_5(char a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 208) = a4;
  *(v4 + 216) = a1 & 1;
  *(v4 + 224) = a2;

  return sub_25BB6B668((v4 + 232));
}

uint64_t OUTLINED_FUNCTION_82_9()
{

  return sub_25BC689A4((v0 - 104), (v0 - 240));
}

void valueWithPullback<A>(at:of:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v59 = v4;
  v60 = v5;
  v7 = v6;
  v65 = v8;
  v9 = sub_25BCB5EBC();
  v10 = OUTLINED_FUNCTION_2(v9);
  v62 = v11;
  v63 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_25BCB5EEC();
  v18 = OUTLINED_FUNCTION_2(v17);
  v61 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v58 = v23 - v22;
  OUTLINED_FUNCTION_9();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  v67 = v1;
  type metadata accessor for LayerDifferentiableView();
  v64 = v25;
  v35 = *(v25 + 16);
  v35(v34, v7, v3);
  v36 = sub_25BAB07DC();
  v37 = *(*v36 + 96);
  swift_beginAccess();
  v66 = v31;
  v35(v31, v36 + v37, v3);
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v17, qword_28154BE90);
  v38 = v61;
  v39 = v58;
  (*(v61 + 16))(v58);
  sub_25BCB5EAC();
  *OUTLINED_FUNCTION_90() = 0;
  v40 = sub_25BCB5EDC();
  v41 = sub_25BCB6D5C();
  v42 = sub_25BCB5E9C();
  v57 = v17;
  OUTLINED_FUNCTION_83_9(&dword_25BA90000, v40, v41, v42, "Backpropagation (Forward Pass)", "");
  v43 = sub_25BAB3170();
  v44 = sub_25BCB6D4C();
  v60 = v3;
  v45 = v44;
  v46 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_83_9(&dword_25BA90000, v40, v45, v46, "Backpropagation (Forward Pass)", "");

  v47 = v68;
  OUTLINED_FUNCTION_89();
  (*(v62 + 8))(v16, v63);
  (*(v38 + 8))(v39, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_67_9(v48, xmmword_25BCBAE50);

  sub_25BAC192C();
  v49 = OUTLINED_FUNCTION_15();
  v50 = sub_25BAC1988(v49, v36, v43);
  v52 = v51;

  sub_25BAC2070();
  v54 = v53;

  *v65 = v47;
  OUTLINED_FUNCTION_50_17();
  v55 = swift_allocObject();
  v56 = v67;
  v55[2] = v60;
  v55[3] = v56;
  v55[4] = v50;
  v55[5] = v52;
  v55[6] = sub_25BACBC58;
  v55[7] = v54;
  (*(v64 + 8))(v66);
  OUTLINED_FUNCTION_19_33();
  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v46 = v5;
  v6 = sub_25BCB5EBC();
  v7 = OUTLINED_FUNCTION_2(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_20();
  v11 = sub_25BCB5EEC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_25BCB617C();
  v20 = v4;
  sub_25BC6903C();
  v22 = v21;
  v45 = v23;
  v24 = qword_28154BE88;
  sub_25BCB617C();
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v11, qword_28154BE90);
  (*(v14 + 16))(v19);
  sub_25BCB5EAC();
  v25 = OUTLINED_FUNCTION_90();
  *v25 = 0;
  v41 = v11;
  v26 = sub_25BCB5EDC();
  v27 = sub_25BCB6D5C();
  v28 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v26, v27, v28, "Backpropagation (Forward Pass)", "", v25, 2u);
  v42 = sub_25BC6DD38();
  v29 = v2;
  v30 = sub_25BCB6D4C();
  v31 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v26, v30, v31, "Backpropagation (Forward Pass)", "", v25, 2u);

  OUTLINED_FUNCTION_89();

  (*(v43 + 8))(v0, v44);
  (*(v14 + 8))(v19, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25BCBAE50;
  *(v32 + 32) = v47;

  sub_25BC68FA0(v22, v45);
  v33 = OUTLINED_FUNCTION_49();
  v34 = sub_25BAC1988(v33, v30, v42);
  v36 = v35;

  sub_25BC6985C(v37, v45, v20, v29);
  v39 = v38;

  *v46 = v47;
  OUTLINED_FUNCTION_50_17();
  v40 = swift_allocObject();
  v40[2] = v20;
  v40[3] = v29;
  v40[4] = v34;
  v40[5] = v36;
  v40[6] = sub_25BC6F574;
  v40[7] = v39;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAB07DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  sub_25BAB0818();
  return v0;
}

void sub_25BAB0818()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v5 = sub_25BCB736C();
  OUTLINED_FUNCTION_113();
  v66 = v5;
  WitnessTable = swift_getWitnessTable();
  v74 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v6 = OUTLINED_FUNCTION_2(v74);
  v70 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v68 = v10 - v11;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  v75 = v62 - v13;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  v16 = v62 - v15;
  OUTLINED_FUNCTION_9();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_0();
  v67 = v22 - v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  *&v0[*(v3 + 104)] = 0;
  OUTLINED_FUNCTION_31_28();
  *&v0[*(v25 + 112)] = 0;
  OUTLINED_FUNCTION_31_28();
  v27 = *(v26 + 96);
  v28 = *(v18 + 16);
  v71 = v2;
  v29 = v2;
  v31 = v30;
  v28(&v0[v27], v29, v4);
  OUTLINED_FUNCTION_62_9();
  v28(v31, &v0[v27], v4);
  v32 = type metadata accessor for AnyLayerVariablePathCache();
  v33 = v3;
  v34 = v32;
  v72 = v0;
  v35 = *(v33 + 88);
  v36 = sub_25BAB5DD8(v4, &type metadata for Parameter, 1, v4);
  if (v36)
  {
    v37 = v36;
    v38 = *(v18 + 8);
    v38(v31, v4);
  }

  else
  {
    v62[1] = v34;
    v64 = v18;
    v39 = v66;
    v82 = sub_25BCB604C();
    v80 = MEMORY[0x277D84FA0];
    v81 = MEMORY[0x277D84FA0];
    v40 = v67;
    v63 = v31;
    v28(v67, v31, v4);
    OUTLINED_FUNCTION_1_2();
    v41 = swift_allocObject();
    v65 = v4;
    *(v41 + 16) = v4;
    *(v41 + 24) = v35;
    *(v41 + 32) = 1;
    *(v41 + 36) = 4;
    sub_25BAB1090(v40, sub_25BAB60FC, v41, v16);
    v42 = v70;
    v43 = v74;
    (*(v70 + 16))(v68, v16, v74);
    v44 = swift_getWitnessTable();
    v45 = v75;
    MEMORY[0x25F876DC0](v43, v44);
    v46 = MEMORY[0x277D84F90];
    v47 = v45;
    v73 = v16;
    while (1)
    {
      sub_25BAB173C(v43, &v76);
      v48 = v76;
      if (!v76)
      {
        break;
      }

      v49 = v77;
      v50 = v78;
      v51 = sub_25BCB681C();
      v76 = v48;
      v52 = v39;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v46 + 16);
        sub_25BAB22A0();
        v46 = v56;
      }

      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_14_15(v53);
        sub_25BAB22A0();
        v46 = v57;
      }

      *(v46 + 16) = v54 + 1;
      *(v46 + 8 * v54 + 32) = v49;
      if ((v50 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v76, v51);
      }

      v39 = v52;
      if (v50)
      {
        sub_25BAA2CDC(&v76, v51);
      }

      v16 = v73;
      v43 = v74;
      v47 = v75;
    }

    v58 = *(v42 + 8);
    v58(v47, v43);
    v4 = v65;
    v76 = v65;
    v77 = &type metadata for Parameter;
    v78 = v35;
    v79 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths();
    sub_25BAB2794();
    v37 = v59;
    sub_25BAB61C4();
    sub_25BAB61CC(v37);
    v58(v16, v43);
    v38 = *(v64 + 8);
    v38(v63, v4);
  }

  v60 = v72;
  OUTLINED_FUNCTION_31_28();
  *(v60 + *(v61 + 120)) = v37;
  sub_25BAB62B8(0);
  v38(v71, v4);
  OUTLINED_FUNCTION_10_16();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_25BCB779C();
}

uint64_t OUTLINED_FUNCTION_112_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_112_3()
{
}

void sub_25BAB0ED8(void (*a1)(void))
{
  sub_25BAA3234();
  a1();
  sub_25BAA3258();
}

uint64_t sub_25BAB0F40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_25BAB0F68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X8>)
{
  if (qword_28154D3A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_28154D3B0;
  if (*(off_28154D3B0 + 2) && (v9 = sub_25BAFEEEC(a1, a2, a3 & 1), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
    swift_endAccess();
    type metadata accessor for LayerVariablePaths();
    result = swift_dynamicCastClass();
    if (result)
    {
      *a4 = result;
    }
  }

  else
  {
    result = swift_endAccess();
  }

  *a4 = 0;
  return result;
}

void sub_25BAB1090(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  v12 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v35 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = *(v17 + 36);
  type metadata accessor for StoredPropertyInfo();
  swift_getTupleTypeMetadata2();
  *&v19[v20] = sub_25BCB731C();
  v21 = &v19[*(v12 + 40)];
  v36 = v7;
  v38 = *(v7 + 16);
  v38(v19, a1, AssociatedTypeWitness);
  v22 = v40;
  *v21 = v39;
  *(v21 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BCBAE50;
  swift_getDynamicType();
  *(v23 + 32) = sub_25BCB7C1C();
  *(v23 + 40) = v24;
  v39 = v12;
  v40 = a1;
  *&v19[*(v12 + 44)] = v23;
  v38(v41, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51A0, &qword_25BCC3690);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v42, v44);
    v25 = v45;
    v26 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    *&v42[0] = (*(v26 + 8))(v25, v26);
    MEMORY[0x28223BE20](*&v42[0]);
    *(&v35 - 2) = AssociatedTypeWitness;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51B0, &unk_25BCC36A0);
    sub_25BB77648();
    sub_25BCB65BC();

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_25BAB1544(v42);
    *&v42[0] = sub_25BCB604C();
    if (sub_25BCB5B2C())
    {
      v27 = 0;
      while (v27 < sub_25BCB5B2C())
      {
        v28 = sub_25BCB5AFC();
        sub_25BAB5F30(v28, v27++, AssociatedTypeWitness, AssociatedTypeWitness, v42, AssociatedTypeWitness, v28);
        if (v27 == sub_25BCB5B2C())
        {
          goto LABEL_7;
        }
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_7:
    OUTLINED_FUNCTION_35();
  }

  v29 = sub_25BCB681C();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = v29;
    if (!v29)
    {
LABEL_13:

      v33 = v35;
      v34 = v39;
      (*(v35 + 16))(v37, v19, v39);
      (*(v36 + 8))(v40, AssociatedTypeWitness);
      (*(v33 + 8))(v19, v34);
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v31 = 0;
    v32 = v29 - 1;
    while (!__OFSUB__(v32, v31))
    {
      ++v31;
      sub_25BCB690C();
      DWORD2(v42[0]) = 0;
      OUTLINED_FUNCTION_7_20();
      sub_25BCB732C();
      sub_25BCB72FC();
      if (v30 == v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_25BAB1544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51A8, &qword_25BCC3698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BAB15AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_25BCB5AFC();

  return sub_25BAB8778(v5, a2, a3);
}

uint64_t sub_25BAB169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE50;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v7 + 16) = v15;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6 & 1;
  *(v7 + 49) = a7;
  return v7;
}

void sub_25BAB173C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = *(a1 + 16);
  v50 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  OUTLINED_FUNCTION_9();
  v47 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v46 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 36);
  v51 = a1;
  v52 = v18;
  v49 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for StoredPropertyInfo();
  for (i = (v7 + 8); ; (*i)(v12, v50))
  {
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_4_26();
    v20 = sub_25BCB732C();
    WitnessTable = swift_getWitnessTable();
    v22 = swift_getWitnessTable();
    v23 = MEMORY[0x25F8773F0](&v54, v20, WitnessTable, v22);
    v24 = v54;
    if (!v54)
    {
      MEMORY[0x28223BE20](v23);
      OUTLINED_FUNCTION_3_19();
      OUTLINED_FUNCTION_0_36(v30);
      v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
      v56 = MEMORY[0x277D839B0];
      v31 = OUTLINED_FUNCTION_2_29(MEMORY[0x277D84CC0]);
      v32 = v48;
      v33 = 1;
      goto LABEL_11;
    }

    v53 = v55;
    v25 = v3 + *(v51 + 40);
    v26 = *v25;
    if (*v25)
    {
      v27 = *(v25 + 8);
      v28 = *(v54 + 32);
      swift_beginAccess();

      LOBYTE(v27) = v26(v28, &v53);
      swift_endAccess();
      if (v27)
      {
        v29 = *(v24 + 32);

        sub_25BAB89AC(v29, v24, v3, &v53, v5, v29, v49);
      }

      else
      {
      }
    }

    v54 = sub_25BAB1D20();
    sub_25BCB720C();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v5);
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v5);
  v34 = v46;
  v35 = v47;
  v36 = (*(v47 + 32))(v46, v12, v5);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_0_36(v37);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
  v56 = MEMORY[0x277D839B0];
  v38 = OUTLINED_FUNCTION_2_29(MEMORY[0x277D84CC0]);
  v39 = v38[12];
  v40 = v38[16];
  v52 = v38[20];
  v41 = v48;
  (*(v35 + 16))(v48, v34, v5);
  v42 = *(v3 + *(v51 + 44));
  v43 = *(v24 + 16);
  v54 = v42;
  sub_25BCB617C();
  v44 = sub_25BCB617C();
  sub_25BAB1D84(v44);
  (*(v35 + 8))(v34, v5);
  *(v41 + v39) = v54;
  v45 = *(v24 + 49);

  *(v41 + v40) = v45;
  OUTLINED_FUNCTION_35();
  *(v41 + v52) = v53;
  v32 = v41;
  v33 = 0;
  v31 = v38;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAB1BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_23_29(a1, a2, a3, a4, a5);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_30();
  result = v9();
  if (v5)
  {
    v11 = OUTLINED_FUNCTION_60_9();
    return v12(v11);
  }

  return result;
}

uint64_t sub_25BAB1C88(uint64_t a1)
{
  v2 = v1;
  sub_25BAB1D20();
  sub_25BAB1D20();
  v4 = sub_25BCB721C();

  if (!v4)
  {
    return 0;
  }

  sub_25BAB934C(*(a1 + 32), v2, a1, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_25BAB1D20()
{
  v1 = v0[3];
  v2 = *(*v0 + 152);
  sub_25BCB720C();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

void sub_25BAB1D84(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BAB1E18(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17_32(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BAB1E60()
{
  OUTLINED_FUNCTION_107_0();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_52(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v16);
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_54_0();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_25BCB73FC();
}

uint64_t OUTLINED_FUNCTION_33_6()
{
  v1 = *(v0 - 440);
  result = *(v0 - 264);
  v3 = *(v0 - 208);
  v4 = *(v0 - 360);
  v5 = *(v0 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_25BA92920(v29, 0, 0, &a29);
}

uint64_t OUTLINED_FUNCTION_33_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BBA18D8(a1, a2, v11, v12, v13, v14, v9, v10, a9);
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_33_17(unint64_t result, __n128 a2)
{
  v2[3] = a2;
  v2[4].n128_u8[0] = 0;
  v2[4].n128_u64[1] = result;
  v2[5].n128_u8[0] = 2;
  v2[8].n128_u8[12] = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_18()
{

  return sub_25BAA6FBC(v0, v1, v2);
}

void OUTLINED_FUNCTION_33_19(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 144) = 122;
  *(v1 - 136) = 2;
}

uint64_t OUTLINED_FUNCTION_33_22(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_33_23()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_24()
{
  v3 = *(*(v2 - 216) + 16);
  result = v1;
  *(v2 - 232) = v0;
  return result;
}

void *OUTLINED_FUNCTION_33_25@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_33_27()
{
  sub_25BB7304C(v0);

  return sub_25BABF0A8(v1 - 144);
}

uint64_t OUTLINED_FUNCTION_33_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_30@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_25BAA4ABC(a1 + 144 * v15 - 112, va);
}

uint64_t sub_25BAB21D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5 & 1;
  *(result + 49) = a6;
  return result;
}

uint64_t sub_25BAB2244()
{
  sub_25BAB2278();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAB2278()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

void sub_25BAB22A0()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F90, &qword_25BCBBEB8);
      v8 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_9_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_4();
        sub_25BAB254C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BAB2360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69A8, &qword_25BCCE4C0);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_25BCB79BC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

char *sub_25BAB2550(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

uint64_t sub_25BAB2570(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69A8, &qword_25BCCE4C0);
  result = sub_25BCB70CC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_25BC42288(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_25BCB79BC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_25BAB2794()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_allocObject();
  sub_25BAB2818(v15, v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_10_16();
}

void *sub_25BAB2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v9[4] = 0;
  sub_25BCB736C();
  sub_25BCB6FFC();
  v9[2] = sub_25BCB73BC();
  v9[3] = a2;
  v9[7] = a3;
  v9[8] = a4;
  v29 = a1;
  v38 = a1;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v31 = a7;
  v32 = a8;
  KeyPath = swift_getKeyPath();
  v18 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_25BAB2B20(sub_25BAB2EE4, v30, v18, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v9[5] = v20;
  v38 = v29;
  v21 = swift_allocObject();
  v27[1] = v27;
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;
  v26[5] = a8;
  v26[6] = sub_25BAB2F08;
  v26[7] = MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6340, &qword_25BCCE500);
  v24 = sub_25BAB2B20(sub_25BAB94DC, v26, v18, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);

  v9[6] = v24;
  return v9;
}

uint64_t sub_25BAB2ACC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25BCB6FEC();
  *a2 = result;
  return result;
}

__n128 sub_25BAB2B04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_25BAB2B20(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v56 = a1;
  v57 = a2;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_4();
  v58 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v60 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_4();
  v54 = v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = OUTLINED_FUNCTION_2(v28);
  v48 = v30;
  v49 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v33);
  v35 = &v45 - v34;
  v36 = sub_25BCB6ABC();
  if (!v36)
  {
    return sub_25BCB67CC();
  }

  v59 = v36;
  v63 = sub_25BCB731C();
  v50 = sub_25BCB732C();
  sub_25BCB726C();
  result = sub_25BCB6AAC();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v45 = v12;
    v46 = a5;
    v38 = 0;
    v51 = (v60 + 16);
    v52 = v60 + 8;
    v53 = v8;
    while (!__OFADD__(v38, 1))
    {
      v60 = v38 + 1;
      v39 = sub_25BCB6B8C();
      (*v51)(v25);
      v39(v62, 0);
      v40 = v61;
      v56(v25, v58);
      if (v40)
      {
        v43 = OUTLINED_FUNCTION_104_0();
        v44(v43);
        (*(v48 + 8))(v35, v49);

        return (*(v45 + 32))(v47, v58, v46);
      }

      v61 = 0;
      v41 = OUTLINED_FUNCTION_104_0();
      v42(v41);
      sub_25BCB72FC();
      result = sub_25BCB6AEC();
      ++v38;
      if (v60 == v59)
      {
        (*(v48 + 8))(v35, v49);
        return v63;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAB2EE4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25BAB9480(a1);
}

uint64_t sub_25BAB2F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_23_29(a1, a2, a3, a4, a5);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_30();
  result = v9();
  if (v5)
  {
    v11 = OUTLINED_FUNCTION_60_9();
    return v12(v11);
  }

  return result;
}

uint64_t sub_25BAB3020(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_25BAB69FC();
  }

  return result;
}

uint64_t sub_25BAB3058()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(v0 + 40, v5);
  if (v7)
  {
    if (v7 != 1)
    {
      sub_25BA9778C(v5);
      return 0;
    }

    swift_unknownObjectRelease();
    v1 = &v6;
  }

  else
  {
    v1 = v5;
  }

  sub_25BA9BE3C(v1, &v4);
  v2 = v4;
  swift_unknownObjectRetain();
  sub_25BA977E0(&v4);
  return v2;
}

uint64_t sub_25BAB310C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_25BAB3820();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25BAB3170()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v7);

  v0 = v8;
  if (v8)
  {
    v1 = *(v8 + 24);
    if (v1)
    {

      v5 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v5);
      v3 = v0;
      goto LABEL_7;
    }

    v2 = v1 | 1;
  }

  else
  {
    v2 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v3 = sub_25BAB6EC8(v2, MEMORY[0x277D84F90]);

  v8 = v3;
  v4 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v4);
LABEL_7:
  sub_25BAA4AF4(v7);
  return v3;
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return sub_25BAA4A5C(&a33);
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_25BCB768C();
}

uint64_t OUTLINED_FUNCTION_76_5()
{

  return sub_25BAAF54C(v0);
}

void OUTLINED_FUNCTION_76_6()
{

  sub_25BABC3B0();
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return sub_25BB1AB04(v0);
}

uint64_t Sequential.isEveryParameterInitialized.getter(uint64_t a1)
{
  if (((*(*(a1 + 32) + 48))(*(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 52);
  return (*(*(a1 + 40) + 48))(*(a1 + 24)) & 1;
}

uint64_t _s14NeuralNetworks16TransposedConv1DV27isEveryParameterInitializedSbvg_0()
{
  v1 = *(v0 + 80);
  if (*(v1 + 16))
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = *(*v0 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (((v3 < 0) & *(v0 + 26)) == 1)
    {
      v5 = *(*(v0 + 16) + 32);
      v4 = (~v5 & 0xF000000000000007) != 0 && v5 < 0;
    }

    else
    {
      v4 = v3 >> 63;
    }
  }

  else
  {
    v4 = 0;
  }

  return OUTLINED_FUNCTION_89_1(v4, v1);
}

uint64_t Dense.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(*v0 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (((v3 < 0) & *(v0 + 26)) == 1)
    {
      v4 = *(*(v0 + 16) + 32);
      result = (~v4 & 0xF000000000000007) != 0 && v4 < 0;
    }

    else
    {
      result = v3 >> 63;
    }
  }

  else
  {
    result = 0;
  }

  *(v1 + 16) = result;
  return result;
}

void sub_25BAB35A8()
{
  OUTLINED_FUNCTION_1_61();
  v0 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_0_74();
  sub_25BAB72C4(v1, v2, v3, v4, v5);
  objc_autoreleasePoolPop(v0);
}

uint64_t Conv1D.forward(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  if ((OUTLINED_FUNCTION_35_2(*(*a1 + 16)) & 1) == 0)
  {
    v22 = v1;
    v23 = xmmword_25BCBCE20;
    v24[0] = 0;
    *&v24[8] = xmmword_25BCBCE30;
    LOBYTE(v25) = 0;
    v30 = 7;
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_108_1();
    sub_25BADDD28();
  }

  v22 = v2;
  Tensor.expandingShape(at:)();
  v9 = *(v3 + 32);
  if ((~v9 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  sub_25BAB69FC();
  Tensor.expandingShape(at:)();
  sub_25BAB310C(v9);
  v22 = v3;
  v10 = *(v1 + 24);
  v23 = *(v1 + 8);
  *v24 = v10;
  *&v24[16] = *(v1 + 40);
  v25 = v5;
  v26 = v4;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  TransposedConv1D.bias.getter(v20);
  OUTLINED_FUNCTION_114_1();
  conv2D(_:weight:bias:stride:padding:dilation:groupCount:)(v11, v12, v13, v14, v15, v16, v17, 1, v6, v7, v19, v20[0], v20[1], v20[2], v21, v22, v23, *(&v23 + 1), *v24, *&v24[8], *&v24[16], v25);

  v22 = v21;
  Tensor.squeezingShape(at:)();
}

void _s14NeuralNetworks16TransposedConv1DV4biasAA6TensorVSgvg_0()
{
  OUTLINED_FUNCTION_73_1();
  if (!v2)
  {
    *v1 = 0;
    return;
  }

  v3 = *(v0 + 16);
  v4 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v4, v5);

  sub_25BAB69FC();
}

uint64_t sub_25BAB38CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11 <= 1)
  {
    goto LABEL_58;
  }

  v12 = *a2;
  v13 = *(*a2 + 16);
  if (v13 <= 1)
  {
LABEL_57:
    OUTLINED_FUNCTION_18_50();
    goto LABEL_58;
  }

  v14 = v12[5];
  if ((v14 * a10) >> 64 != (v14 * a10) >> 63)
  {
    goto LABEL_50;
  }

  if (v10[5] != v14 * a10)
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_21_40();
    MEMORY[0x25F876C90](0xD000000000000010);
    if (v10[2] > 1uLL)
    {
      v48 = v10[5];
      v39 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v39);

      OUTLINED_FUNCTION_21_40();
      MEMORY[0x25F876C90]();
      if (v12[2] > 1uLL)
      {
        v49 = v12[5];
        v40 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v40);

        OUTLINED_FUNCTION_21_40();
        MEMORY[0x25F876C90]();
        v41 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v41);

        MEMORY[0x25F876C90](3025248, 0xE300000000000000);
        OUTLINED_FUNCTION_31_34();
        goto LABEL_59;
      }
    }

LABEL_58:
    OUTLINED_FUNCTION_17_4();
    goto LABEL_59;
  }

  if (v11 != 4 || v13 != 4)
  {
LABEL_59:
    sub_25BADDD28();
  }

  if (a5 + 0x4000000000000000 < 0)
  {
    goto LABEL_51;
  }

  v16 = v10[6];
  if (__OFADD__(v16, 2 * a5))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v16 + 2 * a5 < v12[6])
  {
    v50 = v10[6];
    OUTLINED_FUNCTION_26_39();
    goto LABEL_59;
  }

  if (a6 + 0x4000000000000000 < 0)
  {
    goto LABEL_53;
  }

  v17 = v10[7];
  if (__OFADD__(v17, 2 * a6))
  {
LABEL_54:
    __break(1u);
    goto LABEL_58;
  }

  if (v17 + 2 * a6 < v12[7])
  {
    OUTLINED_FUNCTION_26_39();
    goto LABEL_59;
  }

  sub_25BCB617C();
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v18 != 4)
  {
    if (v18 >= v10[2])
    {
      goto LABEL_58;
    }

    v20 = v10[v18 + 4];
    switch(v18)
    {
      case 0uLL:
        goto LABEL_36;
      case 3uLL:
        v21 = a6;
        v22 = a4;
        v23 = a8;
        v24 = v12 + 7;
        if (v12[2] <= 3uLL)
        {
          goto LABEL_57;
        }

        break;
      case 1uLL:
        if (!v12[2])
        {
          goto LABEL_57;
        }

        v20 = v12[4];
        goto LABEL_36;
      default:
        v21 = a5;
        v22 = a3;
        v23 = a7;
        v24 = v12 + 6;
        if (v12[2] <= 2uLL)
        {
          goto LABEL_57;
        }

        break;
    }

    v25 = __OFADD__(v20, 2 * v21);
    v26 = v20 + 2 * v21;
    if (v25)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v25 = __OFSUB__(*v24, 1);
    v27 = *v24 - 1;
    if (v25)
    {
      goto LABEL_43;
    }

    v28 = v23 * v27;
    if ((v23 * v27) >> 64 != (v23 * v27) >> 63)
    {
      goto LABEL_44;
    }

    v29 = v26 - v28;
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_45;
    }

    v25 = __OFSUB__(v29, 1);
    v30 = v29 - 1;
    if (v25)
    {
      goto LABEL_46;
    }

    if (!v22)
    {
      goto LABEL_47;
    }

    if (v30 == 0x8000000000000000 && v22 == -1)
    {
      goto LABEL_49;
    }

    v32 = v30 / v22;
    v20 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_48;
    }

    if (v20 < 1)
    {
      sub_25BCB70FC();
      OUTLINED_FUNCTION_21_40();
      MEMORY[0x25F876C90]();
      v38 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v38);

      OUTLINED_FUNCTION_21_40();
      MEMORY[0x25F876C90]();
      OUTLINED_FUNCTION_31_34();
      goto LABEL_59;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v19 + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAAE04C();
      v19 = v35;
    }

    v33 = *(v19 + 16);
    if (v33 >= *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_6_64();
      v19 = v36;
    }

    *(v19 + 16) = v33 + 1;
    *(v19 + 8 * v33 + 32) = v20;
    ++v18;
  }

  *a9 = v19;
  return result;
}

uint64_t sub_25BAB3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a14 + 8);
  *(v17 + 192) = *a14;
  *(v17 + 200) = v18;
  *(v17 + 208) = a16;
  *(v17 + 216) = a17;
  if (a3)
  {
    v19 = OUTLINED_FUNCTION_35_8();
    v20 = sub_25BA9D8C4(v19);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_35_8();
    sub_25BA9D8C4(v28);
    v20 = sub_25BAA5EA0(0x6432766E6F63, 0xE600000000000000);
  }

  *(v17 + 112) = a13;
  *(v17 + 120) = 0;
  OUTLINED_FUNCTION_3_26(v20, v21, v22, v23, v24, v25, v26, v27, v36, a11, a12, a4, a5, a6, a7, a8);
  *(v17 + 88) = a10;
  *(v17 + 96) = v29;
  *(v17 + 104) = v30;
  v31 = *a15;
  v32 = a15[1];
  v33 = a15[2];
  *(v17 + 170) = *(a15 + 42);
  *(v17 + 144) = v32;
  *(v17 + 160) = v33;
  *(v17 + 128) = v31;
  v34 = OUTLINED_FUNCTION_35_8();
  sub_25BA9D148(v34);
  return v17;
}

uint64_t sub_25BAB3FD0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAB42A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 200);
  *(v1 + 32) = *(v0 + 192);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BAB430C()
{
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25BCBAE60;
    v3 = v0[5];
    v4 = v0[6];
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v2 + 48) = v1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_31();
    *(v2 + 16) = xmmword_25BCBAE40;
    v5 = v0[5];
    v6 = v0[6];
    *(v2 + 32) = v5;
    *(v2 + 40) = v6;
  }

  return v2;
}

uint64_t _s14NeuralNetworks10ScaledTanhVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  *(v0 - 65) = 5;

  return sub_25BCB769C();
}

void OUTLINED_FUNCTION_34_5()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  *(v0 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_25BCB54EC();
}

float OUTLINED_FUNCTION_34_10()
{
  result = *v0;
  v2 = *(v0 + 4);
  return result;
}

double OUTLINED_FUNCTION_34_11()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

void OUTLINED_FUNCTION_34_14()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_34_15(uint64_t a1)
{
  *(a1 + 16) = v1;
}

__n128 OUTLINED_FUNCTION_34_18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  return *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_34_22(uint64_t result, __n128 a2)
{
  *(v2 - 208) = a2;
  *(v2 - 192) = 0;
  *(v2 - 184) = result;
  *(v2 - 176) = 2;
  *(v2 - 116) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_23(uint64_t a1)
{
  *(a1 + 48) = v1;
  *(a1 + 56) = v2;
  *(v3 - 152) = a1;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_34_24()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{
  v1[3] = a1;
  v2 = v1[16];
  v3 = *(v1[15] + 16);
  return v1[11];
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 456);
  v3 = *(*(v0 - 440) + 16);
  result = *(v0 - 256);
  v5 = *(v0 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_25BAB5F30(a1, v11, v10, v10, va, v10, a1);
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return Sequential.init(_:_:)();
}

uint64_t OUTLINED_FUNCTION_28_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
}

__n128 *OUTLINED_FUNCTION_28_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "kernel_sizes");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_17(uint64_t a1, uint64_t a2)
{
  *(v2 - 296) = a1;
  *(v2 - 288) = a2;

  return sub_25BCB7C1C();
}

__n128 OUTLINED_FUNCTION_28_18()
{
  v2 = *(v0 + 64);
  result = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = result;
  return result;
}

ValueMetadata *OUTLINED_FUNCTION_28_21()
{
  v3 = *(v0 + 16);
  *(v1 - 152) = v0;

  return Tensor.scalarType.getter();
}

uint64_t OUTLINED_FUNCTION_28_22@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = a1;
  *(v2 - 84) = 1;
}

void OUTLINED_FUNCTION_28_23(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a2 = a1;

  Tensor.reshaped(to:)(&a2, &a10);
}

uint64_t OUTLINED_FUNCTION_28_27()
{
  *(v2 - 256) = v1;
  *(v2 - 248) = v0;
  result = v2 - 248;
  v4 = *(v2 - 376);
  v5 = *(v2 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_35()
{

  return sub_25BCB617C();
}

uint64_t sub_25BAB4964(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8, float a9, float a10)
{
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x746F685F656E6FLL, 0xE700000000000000);
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v18 = MEMORY[0x277D83A90];
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 80) = v18;
  *(v10 + 88) = &protocol witness table for Float;
  *(v10 + 56) = a9;
  *(v10 + 120) = v18;
  *(v10 + 128) = &protocol witness table for Float;
  *(v10 + 96) = a10;
  *(v10 + 136) = a6;
  *(v10 + 144) = a7;
  v19 = a8[1];
  *(v10 + 152) = *a8;
  *(v10 + 168) = v19;
  *(v10 + 184) = a8[2];
  *(v10 + 194) = *(a8 + 42);
  return v10;
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return sub_25BCB672C();
}

uint64_t OUTLINED_FUNCTION_26_7@<X0>(char a1@<W8>)
{
  *(v1 - 240) = a1;

  return sub_25BCB769C();
}

id OUTLINED_FUNCTION_26_8()
{
  v2 = *(v0 + 224);

  return [v2 unlock];
}

void OUTLINED_FUNCTION_26_9()
{
  v1 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v1;
}

void OUTLINED_FUNCTION_26_10()
{
  v8 = *(v4 + 16);
  *(v7 - 392) = v0;
  *(v7 - 400) = v1;
  *(v7 - 408) = v2;
  *(v7 - 416) = v3;
  *(v7 - 424) = v6;
  *(v7 - 440) = v5;
}

uint64_t OUTLINED_FUNCTION_26_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_25BAA51C8(v27 - 168, &a27);
}

void OUTLINED_FUNCTION_26_19()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_26_20(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 192) = 0;
  *(v2 - 184) = 0;
  *(v2 - 200) = a1;
  *(v2 - 176) = -1;
  *(v2 - 160) = 0;
  *(v2 - 152) = 0;
  *(v2 - 168) = a2;
  *(v2 - 144) = -1;
  *(v2 - 92) = 4;
}

uint64_t *OUTLINED_FUNCTION_26_21(uint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *result;
  v5 = *a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_23()
{
  v3 = *(v0 + 16) + 168;

  return sub_25BAA51C8(v3, v1 - 216);
}

__n128 OUTLINED_FUNCTION_26_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __n128 a22)
{
  result = a22;
  *(v22 + 16) = a21;
  *(v22 + 32) = a22;
  return result;
}

void OUTLINED_FUNCTION_26_27(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  va_arg(va1, void);
  v10 = a1;

  Tensor.reshaped(to:)(va, va1);
}

__n128 OUTLINED_FUNCTION_26_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, unint64_t a14, unint64_t a15, unsigned __int8 a16)
{
  result = a13;
  *v16 = a13;
  v16[1].n128_u64[0] = a14;
  v16[1].n128_u64[1] = a15;
  v16[2].n128_u8[0] = a16;
  return result;
}

__n128 *OUTLINED_FUNCTION_26_34(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_26_36()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[1].n128_u8[8];
  result = v0[2];
  v4 = v0[3].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_134(uint64_t a1@<X8>)
{
  *(v1 + 208) = a1;
  *(v1 + 216) = 0;
  *(v1 + 224) = 1;
}

uint64_t OUTLINED_FUNCTION_134_0()
{

  return swift_weakAssign();
}

uint64_t OUTLINED_FUNCTION_134_1()
{
  v2 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_81_1()
{
  result = *(*(v0 + 16) + 152);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  result = *(v0 - 72);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_81_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v5 = *(v3 + 72);
  *(v2 + 48) = *(v3 + 64);
  *(v2 + 56) = v5;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_81_5@<X0>(__int16 a1@<W8>)
{
  *(v2 - 88) = v1;
  *(v2 - 80) = 45;
  *(v2 - 72) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_81_9()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1)
{
  *(v2 - 160) = v1;

  return sub_25BAD8324(a1);
}

uint64_t OUTLINED_FUNCTION_132_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_132_1()
{

  return swift_retain_n();
}

void sub_25BAB4ED8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = 0;
  v9 = *(a1 + 32);
  v7 = a1 + 32;
  v8 = v9;
  v10 = *(v9 + 16);
  while (v5 != v6)
  {
    v11 = *(v7 + 8 * v6++);
    if (*(v11 + 16) != v10)
    {
      goto LABEL_5;
    }
  }

  v12 = 0;
  do
  {
LABEL_8:
    if (v12 == v5)
    {
      v16 = *(v8 + 16);
      if (-v16 > a2 || v16 <= a2)
      {
        goto LABEL_5;
      }

      v18 = 0;
      v19 = (v16 & (a2 >> 63)) + a2;
      do
      {
        if (!v5)
        {
          goto LABEL_32;
        }

        v20 = *(*v7 + 16);
        if (v19 < -v20 || v19 >= v20)
        {
          goto LABEL_41;
        }

        v22 = (v20 & (v19 >> 63)) + v19;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_38;
        }

        v23 = *(*v7 + 8 * v22 + 32);
        v7 += 8;
        --v5;
        v24 = __OFADD__(v18, v23);
        v18 += v23;
      }

      while (!v24);
      __break(1u);
LABEL_32:
      if (v19 < -v16)
      {
        OUTLINED_FUNCTION_9_60();
        OUTLINED_FUNCTION_8_62();
      }

      else
      {
        v3 = (v16 & (v19 >> 63)) + v19;
        sub_25BCB617C();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v3 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        sub_25BAA2110(v8);
        v8 = v25;
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

LABEL_35:
        if (v3 < *(v8 + 16))
        {
          *(v8 + 8 * v3 + 32) = v18;
          goto LABEL_6;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        OUTLINED_FUNCTION_9_60();
        OUTLINED_FUNCTION_8_62();
        sub_25BCB617C();
      }

      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }

    v13 = *(v7 + 8 * v12);
    v14 = *(v13 + 16);
    if (v14 != *(v8 + 16))
    {
      goto LABEL_5;
    }

    ++v12;
  }

  while (!v14);
  v15 = 0;
  while (1)
  {
    if (a2 != v15)
    {
      if (v15 >= v14)
      {
        goto LABEL_41;
      }

      if (*(v13 + 32 + 8 * v15) != *(v8 + 32 + 8 * v15))
      {
        break;
      }
    }

    if (v14 == ++v15)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  v8 = 0;
LABEL_6:
  *a3 = v8;
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_25BAFC990();
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return sub_25BCB629C();
}

void OUTLINED_FUNCTION_133_1()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_63_4()
{

  Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
}

uint64_t OUTLINED_FUNCTION_63_7()
{
}

uint64_t OUTLINED_FUNCTION_63_8()
{

  return sub_25BCB68DC();
}

void OUTLINED_FUNCTION_63_9()
{

  static Tensor.+ infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_63_10()
{
  v2 = *(v0 - 296);

  return sub_25BC3353C();
}

uint64_t sub_25BAB5250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 64), *(v0 + 72));
  return v1;
}

uint64_t OUTLINED_FUNCTION_200_0()
{
  *(v0 + 112) = v1;

  return Tensor.place(on:)(v0 + 240);
}

uint64_t OUTLINED_FUNCTION_200_1@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 104) = a2;
  *(v2 + 120) = a1;
  *(v2 + 172) = 8;

  return sub_25BCB617C();
}

uint64_t Tensor.transposed(permutation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(a1 + 16);
  v7 = *(*(*v2 + 16) + 152);
  v8 = *(v7 + 16);
  if (v8 >= v6)
  {
    v9 = 32;
    do
    {
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(a1 + v9);
      v9 += 8;
      --v6;
    }

    while (v10 < v8);
  }

  OUTLINED_FUNCTION_2_39();
  do
  {
    v7 = sub_25BCB74CC();
    __break(1u);
LABEL_7:
    *&v27 = v7;
    sub_25BCB617C();
    sub_25BAA29C8(&v27, a1, &v21);
  }

  while (!v21);
  v11 = *(v5 + 16);
  if (*(*(v11 + 152) + 16) <= 1uLL)
  {
  }

  else
  {
    v22 = *(v11 + 160);
    OUTLINED_FUNCTION_22();
    *(swift_allocObject() + 16) = a1;
    swift_bridgeObjectRetain_n();

    v12 = sub_25BAAF074(sub_25BBA9C1C);
    v14 = v13;

    v26[55] = 0;
    *&v27 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift";
    *(&v27 + 1) = 125;
    v28 = 2;
    v29 = xmmword_25BCC6550;
    v30 = "init(id:operand:permutation:resultDescriptor:creationSite:backward:)";
    v31 = 68;
    v32 = 2;
    type metadata accessor for TransposeOperation();
    swift_allocObject();
    v15 = sub_25BAAF5BC(0, 0, 0, v11, a1, &v21, &v27, v12, v14);
    OUTLINED_FUNCTION_6_34(*(v5 + 16) + 168, v26);
    OUTLINED_FUNCTION_6_34(v26, v25);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v21);

    v16 = v24;

    sub_25BAA4AF4(&v21);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v21);

    v17 = v23;

    sub_25BAA4AF4(&v21);
    type metadata accessor for TensorRepresentation();
    v18 = swift_allocObject();
    LOBYTE(v21) = 1;
    v19 = sub_25BAA2EAC(v15, 0, v25, 0x100000000, v16, v17, v18);
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v5 = swift_allocObject();
    *(v5 + 16) = v19;

    sub_25BAA6EB0();

    result = sub_25BA9C2C8(v26);
  }

  *a2 = v5;
  return result;
}