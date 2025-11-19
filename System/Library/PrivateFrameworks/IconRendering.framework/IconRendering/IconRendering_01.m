unint64_t sub_1B15D15E8()
{
  result = qword_1EDB30268[0];
  if (!qword_1EDB30268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB30268);
  }

  return result;
}

int64x2_t ICRRenderingParameters.init()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B161FDA0;
  if (qword_1EDB30260 != -1)
  {
    swift_once();
  }

  *(a1 + 16) = byte_1EDB327A0;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = xmmword_1B161E2E0;
  *(a1 + 56) = xmmword_1B161FDB0;
  *(a1 + 72) = vdupq_n_s64(0x3FB999999999999AuLL);
  *(a1 + 88) = xmmword_1B161EF40;
  *(a1 + 104) = _Q0;
  *(a1 + 120) = xmmword_1B161E2E0;
  *(a1 + 136) = vdupq_n_s64(0x3FC5C28F5C28F5C3uLL);
  *(a1 + 152) = xmmword_1B161FDC0;
  __asm { FMOV            V0.2D, #0.25 }

  v18 = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = xmmword_1B161FDD0;
  *(a1 + 200) = xmmword_1B161FDE0;
  *(a1 + 216) = xmmword_1B161FDF0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0x4024000000000000;
  *(a1 + 272) = xmmword_1B161FE00;
  *(a1 + 288) = 0x4039000000000000;
  *(a1 + 296) = 1;
  *(a1 + 304) = xmmword_1B161FE10;
  *(a1 + 320) = xmmword_1B161FE20;
  *(a1 + 336) = xmmword_1B161FE30;
  *(a1 + 352) = 0x4060000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752FA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B161CC80;
  *(v8 + 32) = 1;
  memset(&__src[616], 0, 24);
  *&__src[824] = 0u;
  *__src = 0x3FE999999999999ALL;
  memset(&__src[8], 0, 25);
  __asm { FMOV            V0.2D, #1.0 }

  *&__src[40] = _Q0;
  *&__src[64] = 0;
  *&__src[72] = 0;
  *&__src[56] = 0x3FF0000000000000;
  *&__src[80] = xmmword_1B161FE40;
  *&__src[96] = xmmword_1B161FE50;
  *&__src[112] = xmmword_1B161FE60;
  *&__src[128] = xmmword_1B161FE70;
  __asm { FMOV            V1.2D, #22.0 }

  *&__src[144] = xmmword_1B161FE80;
  *&__src[160] = _Q1;
  *&__src[176] = xmmword_1B161FE90;
  *&__src[192] = xmmword_1B161FEA0;
  *&__src[208] = vdupq_n_s64(0x3FD999999999999AuLL);
  *&__src[224] = xmmword_1B161FEB0;
  *&__src[272] = xmmword_1B161FED0;
  *&__src[288] = xmmword_1B161FEE0;
  *&__src[304] = xmmword_1B161FEF0;
  *&__src[320] = xmmword_1B161FF00;
  *&__src[336] = xmmword_1B161FF10;
  *&__src[352] = xmmword_1B161FF20;
  *&__src[368] = xmmword_1B161FF30;
  *&__src[384] = xmmword_1B161FF40;
  *&__src[240] = v18;
  *&__src[256] = xmmword_1B161FEC0;
  *&__src[400] = _Q1;
  *&__src[416] = xmmword_1B161FE90;
  *&__src[432] = xmmword_1B161FF50;
  *&__src[448] = xmmword_1B161FF10;
  __asm { FMOV            V1.2D, #12.0 }

  *&__src[464] = xmmword_1B161FF60;
  *&__src[480] = _Q1;
  __asm { FMOV            V0.2D, #10.0 }

  *&__src[496] = _Q0;
  *&__src[512] = xmmword_1B161FF70;
  *&__src[528] = vdupq_n_s64(0x3FC999999999999AuLL);
  *&__src[544] = _Q1;
  *&__src[560] = _Q0;
  *&__src[576] = xmmword_1B161FF80;
  *&__src[592] = xmmword_1B161FF90;
  *&__src[608] = 0x3FF0000000000000;
  *&__src[640] = xmmword_1B161FFA0;
  *&__src[656] = xmmword_1B161FFB0;
  *&__src[672] = xmmword_1B161FFC0;
  *&__src[688] = xmmword_1B161FFD0;
  *&__src[704] = xmmword_1B161FFE0;
  *&__src[720] = xmmword_1B161FEC0;
  *&__src[736] = xmmword_1B161FFF0;
  *&__src[752] = xmmword_1B161FFD0;
  *&__src[768] = xmmword_1B1620000;
  *&__src[784] = xmmword_1B1620010;
  *&__src[800] = xmmword_1B1620020;
  *&__src[816] = 0x3FF0000000000000;
  *&__src[840] = 0x3FFE28C731EB6950;
  *&__src[848] = 0x3FE0000000000000;
  nullsub_1(__src);
  *(v8 + 40) = 0x4080000000000000;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 257;
  memcpy((v8 + 72), __src, 0x358uLL);
  *(v8 + 928) = 2;
  sub_1B15FD9C8(v20);
  *(v8 + 936) = 0;
  *(v8 + 944) = 1;
  *(v8 + 952) = 0x3FFAAAAAAAAAAAABLL;
  *(v8 + 960) = 512;
  memcpy((v8 + 968), v20, 0x358uLL);
  v13 = sub_1B15D1CB4(v8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(a1 + 360) = v13;
  sub_1B15D1004(a1 + 368);
  *(a1 + 1224) = 0x3FD41B2F769CF0E0;
  *(a1 + 1232) = xmmword_1B1620030;
  __asm { FMOV            V0.2D, #2.0 }

  *(a1 + 1248) = _Q0;
  *(a1 + 1264) = xmmword_1B161CDD0;
  *(a1 + 1280) = xmmword_1B1620040;
  *(a1 + 1296) = xmmword_1B1620050;
  *(a1 + 1312) = xmmword_1B1620060;
  __asm { FMOV            V0.2D, #16.0 }

  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = xmmword_1B1620070;
  *(a1 + 1360) = 4;
  *(a1 + 1361) = *v21;
  *(a1 + 1364) = *&v21[3];
  *(a1 + 1368) = 0x3FB999999999999ALL;
  *(a1 + 1376) = 4;
  *(a1 + 1384) = 0x4039CCCCCCCCCCCDLL;
  *(a1 + 1392) = xmmword_1B161FEA0;
  *(a1 + 1408) = xmmword_1B1620080;
  *(a1 + 1424) = xmmword_1B1620090;
  *(a1 + 1440) = xmmword_1B1620090;
  *(a1 + 1456) = xmmword_1B16200A0;
  *(a1 + 1472) = xmmword_1B16200B0;
  *(a1 + 1488) = xmmword_1B16200C0;
  *(a1 + 1504) = xmmword_1B16200D0;
  *(a1 + 1520) = xmmword_1B16200E0;
  *(a1 + 1536) = vdupq_n_s64(0x3FE5555555555555uLL);
  result = vdupq_n_s64(0x3FBEB851EB851EB8uLL);
  *(a1 + 1552) = result;
  v17 = vdupq_n_s64(0x3FC3333333333333uLL);
  *(a1 + 1568) = result;
  *(a1 + 1584) = v17;
  *(a1 + 1600) = v17;
  *(a1 + 1616) = 256;
  *(a1 + 1618) = 0;
  return result;
}

void *sub_1B15D1CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B78);
  v3 = sub_1B161A308();
  v4 = *(a1 + 32);
  memcpy(__dst, (a1 + 40), sizeof(__dst));
  v5 = sub_1B15C522C(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 936);
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + v5) = v4;
    result = memcpy((v3[7] + 888 * v5), __dst, 0x378uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v7 - 8);
    memcpy(__dst, v7, sizeof(__dst));
    v5 = sub_1B15C522C(v4);
    v7 += 896;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_1B15D1E14()
{
  type metadata accessor for BundleLookupClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDB32790 = result;
  return result;
}

void *sub_1B15D1E90(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for DisplayListCache();
  v1 = swift_allocObject();
  sub_1B15D1F80(__src);
  memcpy(v4, __src, 0x6F0uLL);
  memcpy(&v4[1776], __src, 0x6F0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752AD8);
  v2 = swift_allocObject();
  *(v2 + 3568) = 0;
  result = memcpy((v2 + 16), v4, 0xDE0uLL);
  *(v1 + 16) = v2;
  qword_1EDB32778 = v1;
  return result;
}

id sub_1B15D1FAC()
{
  v0 = sub_1B1619B78();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = objc_opt_self();
  if (qword_1EDB2FBE0 != -1)
  {
    v15 = v7;
    swift_once();
    v7 = v15;
  }

  v8 = qword_1EDB32790;
  v9 = [v7 defaultLibraryWithBundle_];
  [v9 setABIVersion_];
  v10 = sub_1B1619D68();
  v11 = sub_1B1619D68();
  v12 = [v8 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    sub_1B1619B68();

    (*(v1 + 32))(v6, v4, v0);
    v13 = sub_1B1619B58();
    [v9 setBinaryArchiveURL_];

    (*(v1 + 8))(v6, v0);
  }

  return v9;
}

id sub_1B15D21C8()
{
  result = sub_1B15D1FAC();
  qword_1EDB30300 = result;
  return result;
}

void *sub_1B15D220C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1B15D2244(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

BOOL sub_1B15D22B8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B15D234C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B15D2378@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1B15D246C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B15D2480@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1619D98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FinalizedIcon.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FinalizedIcon.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B15D2504()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B15D257C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B15D25BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B15D2630()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B15D2668()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B15D26A0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

double sub_1B15D2784(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1B15D27A8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B15D27C0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 200);
  if (v1 != 255)
  {
    sub_1B15C71A8(*(v0 + 192), v1 & 1);
  }

  v2 = *(v0 + 224);
  if (v2 != 255)
  {
    sub_1B15C71A8(*(v0 + 216), v2 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

void sub_1B15D2898(long double *a1@<X0>, long double *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = asin(a1[3]);
  v6 = atan2(v3, v4);
  *a2 = v5;
  a2[1] = v6;
}

void sub_1B15D28E8(double *a1, double *a2)
{
  v3 = *a1;
  v4 = __sincos_stret(a1[1]);
  v5 = __sincos_stret(v3);
  a2[1] = v5.__cosval * v4.__sinval;
  a2[2] = v5.__cosval * v4.__cosval;
  a2[3] = v5.__sinval;
}

uint64_t sub_1B15D294C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

_BYTE *sub_1B15D29DC(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  *(a2 + 1) = v2;
  return result;
}

CGColorRef sub_1B15D2A0C@<X0>(_OWORD *a1@<X0>, CGColorRef *a2@<X8>)
{

  return sub_1B15F7120(a1, a2);
}

double sub_1B15D2A64(uint64_t a1, double *a2)
{
  RBColorFromCGColor2();
  *a2 = v3;
  a2[1] = v4;
  result = v6;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1B15D2AA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B15D2AEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B15D2B30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 icon];
  *a2 = result;
  return result;
}

double sub_1B15D2B80@<D0>(_OWORD *a1@<X8>)
{
  ICRIconLayer.iconModel.getter(v8);
  v2 = v8[7];
  a1[6] = v8[6];
  a1[7] = v2;
  v3 = v8[9];
  a1[8] = v8[8];
  a1[9] = v3;
  v4 = v8[3];
  a1[2] = v8[2];
  a1[3] = v4;
  v5 = v8[5];
  a1[4] = v8[4];
  a1[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  return result;
}

uint64_t sub_1B15D2BDC(_OWORD *a1)
{
  v2 = a1[7];
  v9[6] = a1[6];
  v9[7] = v2;
  v3 = a1[9];
  v9[8] = a1[8];
  v9[9] = v3;
  v4 = a1[3];
  v9[2] = a1[2];
  v9[3] = v4;
  v5 = a1[5];
  v9[4] = a1[4];
  v9[5] = v5;
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  sub_1B15C37C0(v9, &v8, &qword_1EB752F28);
  return ICRIconLayer.iconModel.setter(a1);
}

id sub_1B15D2CD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 iconAppearance];
  *a2 = result;
  return result;
}

id sub_1B15D2D1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightAngle];
  *a2 = v4;
  return result;
}

id sub_1B15D2D64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightAngles];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1B15D2DAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightIntensity];
  *a2 = v4;
  return result;
}

id sub_1B15D2DF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lightDirection];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

id sub_1B15D2E44@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 drawMitigatedVersion];
  *a2 = result;
  return result;
}

uint64_t sub_1B15D2E8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = (*(*a1 + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig);
  v12[0] = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  v12[3] = v2[3];
  v12[4] = v3;
  v12[1] = v5;
  v12[2] = v4;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[4];
  a2[3] = v2[3];
  a2[4] = v8;
  v9 = v2[2];
  a2[1] = v7;
  a2[2] = v9;
  *a2 = v6;
  return sub_1B15F354C(v12, &v11);
}

uint64_t sub_1B15D2F04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___ICRIconLayer_iconLayer);
  memcpy(__dst, (v3 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters), 0x653uLL);
  memcpy(a2, (v3 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters), 0x653uLL);
  return sub_1B15C37C0(__dst, &v5, &qword_1EB752A78);
}

__n128 sub_1B15D2F8C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR___ICRIconLayer__iconStyle;
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  result = *(v2 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(v2 + 48);
  return result;
}

uint64_t sub_1B15D2FB8(uint64_t a1, void *a2)
{
  v2 = *a2 + OBJC_IVAR___ICRIconLayer__iconStyle;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = *(a1 + 48);
  return sub_1B15C2EEC();
}

uint64_t sub_1B15D3000@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___ICRIconLayer_displayScaleOverride;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

id sub_1B15D305C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR___ICRIconLayer_displayScaleOverride;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  return [v4 setNeedsLayout];
}

id sub_1B15D30CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR___ICRIconLayer__device);
  *a2 = v2;
  return v2;
}

uint64_t sub_1B15D30E8@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v3 = type metadata accessor for ICRRenderingParameters.SizeBasedValue();
  return ICRRenderingParameters.SizeBasedValue.subscript.getter(&v5, v3, a2);
}

__n128 sub_1B15D3150(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1B15D3168@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(v3 + 48);
  return result;
}

id sub_1B15D31CC(uint64_t a1, void *a2)
{
  v3 = *a2 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  return sub_1B160BD3C();
}

__n128 sub_1B15D323C@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

id sub_1B15D3294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1B15D3314(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *(a2 + 16) = *a1;
  if (v2 < v3)
  {
    sub_1B1617984();
  }
}

double sub_1B15D3350@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1B15D336C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B15D33A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B15D3500()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EDB2F5D8);
  __swift_project_value_buffer(v0, qword_1EDB2F5D8);
  return sub_1B1619D08();
}

uint64_t Icon.adaptedForDarkMode()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  *&v162[48] = v1[6];
  *&v162[64] = v2;
  v3 = v1[9];
  *v163 = v1[8];
  *&v163[16] = v3;
  v4 = v1[3];
  v161 = v1[2];
  *v162 = v4;
  v5 = v1[5];
  *&v162[16] = v1[4];
  *&v162[32] = v5;
  v6 = v1[1];
  v159 = *v1;
  v160 = v6;
  if (*&v163[24] == 1)
  {
    goto LABEL_2;
  }

  v13 = *v162 & 0x7FFFFFFFFFFFFFFFLL;
  if (v162[72] >> 6 <= 1u)
  {
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_2:
    v7 = v1[7];
    *(a1 + 96) = v1[6];
    *(a1 + 112) = v7;
    v8 = v1[9];
    *(a1 + 128) = v1[8];
    *(a1 + 144) = v8;
    v9 = v1[3];
    *(a1 + 32) = v1[2];
    *(a1 + 48) = v9;
    v10 = v1[5];
    *(a1 + 64) = v1[4];
    *(a1 + 80) = v10;
    v11 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v11;
    return sub_1B15C9220(&v159, &v142);
  }

  if (!v13 && *&v162[32] == 0.0)
  {
    goto LABEL_2;
  }

LABEL_5:
  v14 = *(*v163 + 16);
  if (v14)
  {
    v109 = a1;
    v158 = MEMORY[0x1E69E7CC0];
    v117 = *v163;
    v118 = v14;
    result = sub_1B15D4FA0(0, v14, 0);
    v15 = *v163;
    v16 = v118;
    if (*(*v163 + 16))
    {
      v111 = 0;
      v112 = 0;
      v110 = 0;
      v17 = 0;
      v18 = v158;
      v119 = *v163 + 32;
      v114 = 0;
      v19 = 1;
      while (1)
      {
        v20 = v119 + 72 * v17;
        v17 = v19;
        v155 = *v20;
        v21 = *(v20 + 16);
        v22 = *(v20 + 32);
        v23 = *(v20 + 48);
        v157 = *(v20 + 64);
        *&v156[16] = v22;
        *&v156[32] = v23;
        *v156 = v21;
        if (v157 == 1)
        {
          v24 = v18;
          v25 = v19;
          result = sub_1B15C7FBC(&v155, &v142);
          v17 = v25;
          v18 = v24;
          v15 = v117;
          v16 = v118;
          v27 = *(&v155 + 1);
          v26 = v155;
          v28 = v156[0];
          v154[0] = *&v156[1];
          *(v154 + 3) = *&v156[4];
          v29 = *&v156[8];
          v30 = *&v156[24];
          v31 = v156[40];
          v153[0] = *&v156[41];
          *(v153 + 3) = *&v156[44];
          v32 = v157;
          goto LABEL_110;
        }

        v33 = v155;
        v34 = *(v155 + 16);
        if (v34)
        {
          break;
        }

        v26 = MEMORY[0x1E69E7CC0];
LABEL_109:
        v27 = *(&v155 + 1);
        v28 = v156[0];
        v29 = *&v156[8];
        v30 = *&v156[24];
        v32 = 1;
        v31 = v156[40];
LABEL_110:
        v158 = v18;
        v103 = *(v18 + 16);
        v102 = *(v18 + 24);
        if (v103 >= v102 >> 1)
        {
          v107 = v17;
          v128 = v30;
          v130 = v29;
          result = sub_1B15D4FA0((v102 > 1), v103 + 1, 1);
          v30 = v128;
          v29 = v130;
          v17 = v107;
          v15 = v117;
          v16 = v118;
          v18 = v158;
        }

        *(v18 + 16) = v103 + 1;
        v104 = v18 + 72 * v103;
        *(v104 + 32) = v26;
        *(v104 + 40) = v27;
        *(v104 + 48) = v28;
        v105 = *(v154 + 3);
        *(v104 + 49) = v154[0];
        *(v104 + 52) = v105;
        *(v104 + 56) = v29;
        *(v104 + 72) = v30;
        *(v104 + 88) = v31;
        v106 = v153[0];
        *(v104 + 92) = *(v153 + 3);
        *(v104 + 89) = v106;
        *(v104 + 96) = v32;
        if (v17 == v16)
        {
          a1 = v109;
          goto LABEL_120;
        }

        v19 = v17 + 1;
        if (v17 >= *(v15 + 16))
        {
          goto LABEL_121;
        }
      }

      v115 = v19;
      v116 = v18;
      sub_1B15C7FBC(&v155, &v142);
      v152 = MEMORY[0x1E69E7CC0];
      sub_1B15CB364(0, v34, 0);
      v26 = v152;
      v35 = v34 - 1;
      for (i = (v33 + 72); ; i = (i + 184))
      {
        v37 = *(i - 40);
        v38 = *(i - 24);
        v39 = *(i + 8);
        *v144 = *(i - 8);
        *&v144[16] = v39;
        v142 = v37;
        v143 = v38;
        v40 = *(i + 24);
        v41 = *(i + 40);
        v42 = *(i + 72);
        v146 = *(i + 56);
        v147 = v42;
        *&v144[32] = v40;
        v145 = v41;
        v43 = *(i + 88);
        v44 = *(i + 104);
        v45 = *(i + 120);
        v151 = *(i + 68);
        v149 = v44;
        v150 = v45;
        v148 = v43;
        v129 = v35;
        if (*v144 == 1)
        {
          goto LABEL_26;
        }

        v46 = v162[72] >> 6;
        if (v46 > 1)
        {
          v50.f64[0] = *(&v160 + 1);
          v50.f64[1] = *&v162[8];
          *&v51.f64[0] = v161;
          v51.f64[1] = *&v162[16];
          v52 = vbslq_s8(vcgeq_f64(v51, v50), v51, v50);
          v53.f64[0] = *(&v161 + 1);
          v53.f64[1] = *&v162[24];
          v54 = vbslq_s8(vcgtq_f64(v50, v51), v51, v50);
          __asm { FMOV            V1.2D, #0.5 }

          v49 = vaddvq_f64(vmulq_f64(vaddq_f64(vbslq_s8(vcgeq_f64(v53, v52), v53, v52), vbslq_s8(vcgtq_f64(v54, v53), v53, v54)), _Q1));
        }

        else
        {
          v47 = *(&v160 + 1);
          if (*(&v160 + 1) > *&v161)
          {
            v48 = *(&v160 + 1);
          }

          else
          {
            v48 = *&v161;
          }

          if (v48 <= *(&v161 + 1))
          {
            v48 = *(&v161 + 1);
          }

          if (*&v161 < *(&v160 + 1))
          {
            v47 = *&v161;
          }

          if (v47 > *(&v161 + 1))
          {
            v47 = *(&v161 + 1);
          }

          v49 = v48 + v47;
        }

        if (v49 * 0.5 < 0.2)
        {
LABEL_26:
          sub_1B15C9418(&v142, aBlock);
          v140 = v142;
          v141 = v143;
          v137 = *&v144[8];
          v138 = *&v144[24];
          v139 = *&v144[40];
          v60 = *v144;
          v62 = *(&v145 + 1);
          v61 = v145;
          v64 = *(&v146 + 1);
          v63 = v146;
          v66 = v147;
          v65 = v148;
          v67 = v149;
          v68 = v150;
          v69 = v151;
          v70 = HIBYTE(v151);
          goto LABEL_96;
        }

        v71 = *(i - 24);
        v135 = *(i - 40);
        v136 = v71;
        v72 = i[1];
        v132 = *i;
        v133 = v72;
        v134 = *(i + 4);
        v73 = HIBYTE(v151);
        v62 = *(&v145 + 1);
        v61 = v145;
        v64 = *(&v146 + 1);
        v63 = v146;
        v75 = v147;
        v74 = v148;
        v76 = v149;
        v77 = v150;
        if (v151 > 0xFDu)
        {
LABEL_63:
          v69 = v151;
          goto LABEL_92;
        }

        v78 = *(&v160 + 1);
        if (*(&v160 + 1) > *&v161)
        {
          v79 = *(&v160 + 1);
        }

        else
        {
          v79 = *&v161;
        }

        if (v79 <= *(&v161 + 1))
        {
          v79 = *(&v161 + 1);
        }

        if (*&v161 < *(&v160 + 1))
        {
          v78 = *&v161;
        }

        if (v78 > *(&v161 + 1))
        {
          v78 = *(&v161 + 1);
        }

        v80 = v79 + v78;
        if ((v162[72] & 0x80) != 0)
        {
          if (v80 * 0.5 > 0.15)
          {
            goto LABEL_50;
          }

          v81 = *&v162[8];
          if (*&v162[8] > *&v162[16])
          {
            v82 = *&v162[8];
          }

          else
          {
            v82 = *&v162[16];
          }

          if (v82 <= *&v162[24])
          {
            v82 = *&v162[24];
          }

          if (*&v162[16] < *&v162[8])
          {
            v81 = *&v162[16];
          }

          if (*&v162[24] < v81)
          {
            v81 = *&v162[24];
          }

          v80 = v82 + v81;
        }

        if (v80 * 0.5 <= 0.15)
        {
          goto LABEL_63;
        }

LABEL_50:
        v83 = v151 >> 6;
        v84 = *&v145;
        if (*&v145 > *(&v145 + 1))
        {
          v85 = *&v145;
        }

        else
        {
          v85 = *(&v145 + 1);
        }

        if (v85 <= *&v146)
        {
          v85 = *&v146;
        }

        if (*(&v145 + 1) < *&v145)
        {
          v84 = *(&v145 + 1);
        }

        if (v84 > *&v146)
        {
          v84 = *&v146;
        }

        v86 = (v85 + v84) * 0.5;
        if (v83)
        {
          if (v83 == 1)
          {
            if (v86 < 0.85)
            {
              v69 = BYTE4(v114) & 1 | 0x40;
              v113 = v113 & 0xFFFFFFFFFFFFFF00 | v149.u8[0];
              v76.i64[0] = v113;
              BYTE4(v114) = v69;
              goto LABEL_92;
            }

            if (v46)
            {
              v74 = *&v162[24];
              v75 = *&v162[8];
              v89 = v162[40];
              if (v46 == 1)
              {
                v69 = BYTE4(v112) & 1 | 0x40;
                v76.i64[0] = v162[40] & 1;
                BYTE4(v112) = v69;
LABEL_87:
                v61 = *(&v160 + 1);
                v63 = *(&v161 + 1);
                v62 = v161;
                goto LABEL_92;
              }

              goto LABEL_88;
            }

            v69 = v112;
            v61 = *(&v160 + 1);
            v63 = *(&v161 + 1);
            v62 = v161;
            LOBYTE(v112) = v112 & 1;
          }

          else
          {
            if (v86 < 0.85)
            {
              goto LABEL_77;
            }

            v87 = *(&v147 + 1);
            if (*&v147 > *(&v147 + 1))
            {
              v88 = *&v147;
            }

            else
            {
              v88 = *(&v147 + 1);
            }

            if (v88 <= *&v148)
            {
              v88 = *&v148;
            }

            if (*(&v147 + 1) >= *&v147)
            {
              v87 = *&v147;
            }

            if (v87 > *&v148)
            {
              v87 = *&v148;
            }

            if ((v88 + v87) * 0.5 < 0.85)
            {
LABEL_77:
              v69 = v151 & 1 | 0x80;
              goto LABEL_92;
            }

            if (v46)
            {
              v74 = *&v162[24];
              v75 = *&v162[8];
              v89 = v162[40];
              if (v46 == 1)
              {
                v69 = v110 & 1 | 0x40;
                v76.i64[0] = v162[40] & 1;
                LOBYTE(v110) = v69;
                goto LABEL_87;
              }

              goto LABEL_88;
            }

            v69 = BYTE4(v110);
            v61 = *(&v160 + 1);
            v63 = *(&v161 + 1);
            v62 = v161;
            BYTE4(v110) &= 1u;
          }
        }

        else
        {
          if (v86 < 0.85)
          {
            v69 = v114 & 1;
            LOBYTE(v114) = v114 & 1;
            goto LABEL_92;
          }

          if (v46)
          {
            v74 = *&v162[24];
            v75 = *&v162[8];
            v89 = v162[40];
            if (v46 == 1)
            {
              v69 = BYTE4(v111) & 1 | 0x40;
              v76.i64[0] = v162[40] & 1;
              v61 = *(&v160 + 1);
              v63 = *(&v161 + 1);
              v62 = v161;
              BYTE4(v111) = v69;
              goto LABEL_92;
            }

LABEL_88:
            v77 = *&v162[56];
            v64 = *v162 - (1.0 - *(&v146 + 1));
            *(&v74 + 1) = *(&v74 + 1) - (1.0 - *(&v146 + 1));
            v69 = v162[72] & 1 | 0x80;
            v72.i64[0] = (*&v162[41] << 8) | ((*&v162[45] | (v162[47] << 16)) << 40) | v89;
            v76 = vzip1q_s64(v72, *&v162[48]);
            v61 = *(&v160 + 1);
            v63 = *(&v161 + 1);
            v62 = v161;
            goto LABEL_92;
          }

          v69 = v111;
          v61 = *(&v160 + 1);
          v63 = *(&v161 + 1);
          v62 = v161;
          LOBYTE(v111) = v111 & 1;
        }

LABEL_92:
        v124 = v75;
        v126 = v74;
        v120 = v77;
        v122 = v76;
        if (BYTE8(v143) && BYTE8(v143) != 1)
        {
          if (v151 <= 0xFDu)
          {
            sub_1B15C9418(&v142, aBlock);
            v66 = v124;
            v65 = v126;
            v68 = v120;
            v67 = v122;
          }

          else
          {
            v96 = swift_allocObject();
            *(v96 + 16) = 1;
            sub_1B15C9418(&v142, aBlock);
            sub_1B15C9418(&v142, aBlock);
            sub_1B15C9418(&v142, aBlock);
            v97 = CGSVGDocumentGetRootNode();
            if (v97)
            {
              v98 = v97;
              aBlock[4] = sub_1B15D4FC0;
              aBlock[5] = v96;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1B15D454C;
              aBlock[3] = &block_descriptor;
              v99 = _Block_copy(aBlock);

              CGSVGNodeEnumerate();
              sub_1B15CB1E8(&v142);
              _Block_release(v99);
            }

            else
            {
              sub_1B15CB1E8(&v142);
            }

            swift_beginAccess();
            v100 = *(v96 + 16);

            sub_1B15CB1E8(&v142);
            v66 = v124;
            v65 = v126;
            v68 = v120;
            v67 = v122;
            if (v100)
            {
              v61 = *(&v160 + 1);
              v63 = *(&v161 + 1);
              v62 = v161;
              v64 = *v162;
              v65 = *&v162[24];
              v66 = *&v162[8];
              v68 = *&v162[56];
              v67 = *&v162[40];
              v69 = v162[72];
            }
          }
        }

        else
        {
          sub_1B15C9418(&v142, aBlock);
          v68 = v120;
          v67 = v122;
          v66 = v124;
          v65 = v126;
        }

        v140 = v135;
        v141 = v136;
        v137 = v132;
        v138 = v133;
        v139 = v134;
        v60 = 1;
        v70 = v73;
LABEL_96:
        v152 = v26;
        v91 = *(v26 + 16);
        v90 = *(v26 + 24);
        if (v91 >= v90 >> 1)
        {
          v101 = v70;
          v125 = v66;
          v127 = v65;
          v121 = v68;
          v123 = v67;
          sub_1B15CB364((v90 > 1), v91 + 1, 1);
          v68 = v121;
          v67 = v123;
          v66 = v125;
          v65 = v127;
          v70 = v101;
          v26 = v152;
        }

        *(v26 + 16) = v91 + 1;
        v92 = v26 + 184 * v91;
        v93 = v141;
        *(v92 + 32) = v140;
        *(v92 + 48) = v93;
        *(v92 + 64) = v60;
        v94 = v137;
        v95 = v139;
        *(v92 + 88) = v138;
        *(v92 + 72) = v94;
        *(v92 + 104) = v95;
        *(v92 + 112) = v61;
        *(v92 + 120) = v62;
        *(v92 + 128) = v63;
        *(v92 + 136) = v64;
        *(v92 + 144) = v66;
        *(v92 + 160) = v65;
        *(v92 + 176) = v67;
        *(v92 + 192) = v68;
        *(v92 + 208) = v69;
        *(v92 + 209) = v70;
        if (!v129)
        {
          result = sub_1B15CA744(&v155);
          v15 = v117;
          v16 = v118;
          v17 = v115;
          v18 = v116;
          goto LABEL_109;
        }

        v35 = v129 - 1;
      }
    }

LABEL_121:
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v108 = *(&v159 + 1);
    LOBYTE(v142) = 1;
    *a1 = v159;
    *(a1 + 8) = v108;
    *(a1 + 16) = 1;
    *(a1 + 24) = vdupq_n_s64(0x3FC89374BC6A7EFAuLL);
    *(a1 + 40) = xmmword_1B161BDB0;
    *(a1 + 56) = vdupq_n_s64(0x3FB3F7CED916872BuLL);
    *(a1 + 72) = xmmword_1B161BDC0;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = -127;
    *(a1 + 128) = v18;
    *(a1 + 136) = *&v163[8];
    *(a1 + 152) = 1;
  }

  return result;
}

void sub_1B15D40A8(uint64_t a1, int a2, _BYTE *a3, uint64_t a4)
{
  if (!a2 && CGSVGNodeGetType() == 2)
  {
    v6 = CGSVGNodeFindAttribute();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B15D42B8();
      v9 = *(v8 + 16);
      if (v9)
      {
        swift_beginAccess();
        swift_beginAccess();
        v10 = (v8 + 48);
        do
        {
          if (*(a4 + 16) == 1)
          {
            v12 = *(v10 - 1);
            v11 = *v10;
            v13 = *(v10 - 2);
            if (v13 > v12)
            {
              v14 = *(v10 - 2);
            }

            else
            {
              v14 = *(v10 - 1);
            }

            if (v14 <= v11)
            {
              v14 = *v10;
            }

            if (v12 < v13)
            {
              v13 = *(v10 - 1);
            }

            if (v11 >= v13)
            {
              v11 = v13;
            }

            if ((v14 + v11) * 0.5 < 0.85)
            {
              *(a4 + 16) = 0;
              *a3 = 1;
            }
          }

          v10 += 4;
          --v9;
        }

        while (v9);
      }
    }

    v15 = CGSVGNodeFindAttribute();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1B15D42B8();
      v18 = *(v17 + 16);
      if (v18)
      {
        swift_beginAccess();
        swift_beginAccess();
        v19 = (v17 + 48);
        do
        {
          if (*(a4 + 16) == 1)
          {
            v21 = *(v19 - 1);
            v20 = *v19;
            v22 = *(v19 - 2);
            if (v22 > v21)
            {
              v23 = *(v19 - 2);
            }

            else
            {
              v23 = *(v19 - 1);
            }

            if (v23 <= v20)
            {
              v23 = *v19;
            }

            if (v21 < v22)
            {
              v22 = *(v19 - 1);
            }

            if (v20 >= v22)
            {
              v20 = v22;
            }

            if ((v23 + v20) * 0.5 < 0.85)
            {
              *(a4 + 16) = 0;
              *a3 = 1;
            }
          }

          v19 += 4;
          --v18;
        }

        while (v18);
      }
    }
  }
}

uint64_t sub_1B15D42B8()
{
  None = CGSVGPaintCreateNone();
  CGSVGAttributeGetPaint();
  v1 = None;
  Type = CGSVGPaintGetType();
  if (Type == 2)
  {
    v15 = CGSVGPaintGetGradient();
    if (v15)
    {
      v13 = v15;
      NumberOfStops = CGSVGGradientGetNumberOfStops();
      if (NumberOfStops < 0)
      {
        __break(1u);
      }

      v17 = NumberOfStops;
      if (NumberOfStops)
      {
        v18 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        do
        {
          v20 = CGSVGGradientGetStop();
          if (v20)
          {
            v21 = v20;
            CGSVGGradientStopGetColor();
            CGColor = CGSVGColorCreateCGColor();
            RBColorFromCGColor2();
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1B15C2148(0, *(v12 + 16) + 1, 1, v12);
            }

            v32 = *(v12 + 16);
            v31 = *(v12 + 24);
            if (v32 >= v31 >> 1)
            {
              v12 = sub_1B15C2148((v31 > 1), v32 + 1, 1, v12);
            }

            *(v12 + 16) = v32 + 1;
            v19 = (v12 + 32 * v32);
            v19[4] = v24;
            v19[5] = v26;
            v19[6] = v28;
            v19[7] = v30;
          }

          ++v18;
        }

        while (v17 != v18);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_4;
    }

LABEL_16:
    v12 = MEMORY[0x1E69E7CC0];
    v14 = None;
    None = v1;
    goto LABEL_17;
  }

  if (Type != 1)
  {
    goto LABEL_16;
  }

  CGSVGPaintGetColor();
  v3 = CGSVGColorCreateCGColor();
  RBColorFromCGColor2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B161BDD0;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  v13 = v1;
  v1 = v3;
LABEL_4:

  v14 = v1;
LABEL_17:

  return v12;
}

void sub_1B15D454C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_1B15D45F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B15D4624@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B15D46BC()
{
  v0 = sub_1B1619D98();
  v1 = MEMORY[0x1B272F990](v0);

  return v1;
}

uint64_t sub_1B15D46F8()
{
  sub_1B1619D98();
  sub_1B1619DF8();
}

uint64_t sub_1B15D474C()
{
  sub_1B1619D98();
  sub_1B161A4B8();
  sub_1B1619DF8();
  v0 = sub_1B161A4F8();

  return v0;
}

uint64_t sub_1B15D47C0(uint64_t a1, id *a2)
{
  result = sub_1B1619D78();
  *a2 = 0;
  return result;
}

uint64_t sub_1B15D4838(uint64_t a1, id *a2)
{
  v3 = sub_1B1619D88();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B15D48B8@<X0>(uint64_t *a1@<X8>)
{
  sub_1B1619D98();
  v2 = sub_1B1619D68();

  *a1 = v2;
  return result;
}

uint64_t sub_1B15D48FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B15F382C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B15D493C@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_1B15F38A0();

  *a1 = v2;
  return result;
}

uint64_t sub_1B15D4BB0()
{
  sub_1B161A4B8();
  swift_getWitnessTable();
  sub_1B1619C18();
  return sub_1B161A4F8();
}

uint64_t sub_1B15D4C14()
{
  v0 = sub_1B1619D98();
  v2 = v1;
  if (v0 == sub_1B1619D98() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B161A448();
  }

  return v5 & 1;
}

uint64_t sub_1B15D4C9C(uint64_t a1)
{
  v2 = sub_1B15D5290(&qword_1EDB2FB88, type metadata accessor for RBImageRendererProperty);
  v3 = sub_1B15D5290(&qword_1EB7526B0, type metadata accessor for RBImageRendererProperty);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B15D4D58()
{
  swift_getWitnessTable();

  return sub_1B1619C08();
}

uint64_t sub_1B15D4DC4()
{
  swift_getWitnessTable();

  return sub_1B1619C08();
}

uint64_t sub_1B15D4E30()
{
  swift_getWitnessTable();

  return sub_1B1619C08();
}

uint64_t sub_1B15D4E9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B1619D68();

  *a1 = v2;
  return result;
}

uint64_t sub_1B15D4EE4(uint64_t a1)
{
  v2 = sub_1B15D5290(&qword_1EDB2FBA8, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1B15D5290(&qword_1EB752750, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1B15D4FA0(char *a1, int64_t a2, char a3)
{
  result = sub_1B15D5528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B15D501C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B15D503C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B15D50A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B15D5100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s9SizeClassO10ThresholdsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9SizeClassO10ThresholdsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1B15D5290(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B15D5488(char *a1, int64_t a2, char a3)
{
  result = sub_1B15D035C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B15D54A8(char *a1, int64_t a2, char a3)
{
  result = sub_1B15D5650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B15D54C8(void *a1, int64_t a2, char a3)
{
  result = sub_1B15D575C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B15D54E8(char *a1, int64_t a2, char a3)
{
  result = sub_1B15D58B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B15D5508(char *a1, int64_t a2, char a3)
{
  result = sub_1B15D59C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B15D5528(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B15D5650(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B15D575C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[23 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 184 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B15D58B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 72 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1B15D59C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B15D5C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B15D5C3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B15D5DF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B15D5E10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B15D62A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B15D6AB0(v7);
      v7 = result;
    }

    v87 = (v7 + 16);
    v88 = *(v7 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v7 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1B15D6874((*a3 + 40 * *v89), (*a3 + 40 * *v91), *a3 + 40 * v92, v96);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 32);
      v10 = 40 * v8;
      v11 = *a3 + 40 * v8;
      v12 = *(v11 + 32);
      v13 = v8 + 2;
      v14 = (v11 + 112);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6 - 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v28 + v10);
            v22 = *(v28 + v10 + 32);
            v23 = (v28 + v18);
            v24 = *v21;
            v25 = v21[1];
            v26 = *(v23 + 4);
            v27 = v23[1];
            *v21 = *v23;
            v21[1] = v27;
            *(v21 + 4) = v26;
            *v23 = v24;
            v23[1] = v25;
            *(v23 + 4) = v22;
          }

          ++v20;
          v18 -= 40;
          v10 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B15D6AC4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v40 = *(v7 + 16);
    v39 = *(v7 + 24);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B15D6AC4((v39 > 1), v40 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v41;
    v42 = v7 + 32;
    v43 = (v7 + 32 + 16 * v40);
    *v43 = v8;
    v43[1] = v6;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 32);
          v46 = *(v7 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v7 + 16 * v41);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v42 + 16 * v44);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v7 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v42 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v44 - 1 >= v41)
        {
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
LABEL_114:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v42 + 16 * (v44 - 1));
        v83 = *v82;
        v84 = (v42 + 16 * v44);
        v85 = v84[1];
        sub_1B15D6874((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v85, v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v44 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v7 + 16);
        if (v44 >= v86)
        {
          goto LABEL_101;
        }

        v41 = v86 - 1;
        result = memmove((v42 + 16 * v44), v84 + 2, 16 * (v86 - 1 - v44));
        *(v7 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v42 + 16 * v41;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v7 + 16 * v41);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v42 + 16 * v44);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v94;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 8;
  v31 = v8 - v6;
LABEL_30:
  v32 = *(v29 + 40 * v6 + 32);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 8);
    v36 = *(v34 + 24);
    v37 = *(v34 - 16);
    *(v34 + 8) = *(v34 - 32);
    *(v34 + 24) = v37;
    *(v34 + 40) = *v34;
    *(v34 - 32) = v35;
    *(v34 - 16) = v36;
    *v34 = v32;
    v34 -= 40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1B15D6874(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

char *sub_1B15D6AC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double sub_1B15D6BC8()
{
  xmmword_1EB757990 = xmmword_1B161CCB0;
  unk_1EB7579A0 = xmmword_1B161CCC0;
  xmmword_1EB7579B0 = xmmword_1B161CCD0;
  unk_1EB7579C0 = xmmword_1B161CCE0;
  result = 0.0;
  xmmword_1EB7579D0 = xmmword_1B161CCF0;
  return result;
}

double sub_1B15D6C08()
{
  xmmword_1EB7579E0 = xmmword_1B161CD00;
  *algn_1EB7579F0 = xmmword_1B161CD10;
  xmmword_1EB757A00 = xmmword_1B161CD20;
  unk_1EB757A10 = xmmword_1B161CD30;
  result = 0.0;
  xmmword_1EB757A20 = xmmword_1B161CCF0;
  return result;
}

__n128 sub_1B15D6C48@<Q0>(__n128 *a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  if (a2 == 1.0 && a3 == 0.0)
  {
    v5 = v3[3];
    v21 = v3[2];
    v22 = v5;
    v23 = v3[4];
    v6 = v3[1];
    v19 = *v3;
    v20 = v6;
  }

  else
  {
    *&v9 = a2 - a3;
    *(&v9 + 1) = 0;
    DWORD1(v9) = 0;
    v10 = a3;
    v11 = 0x3F80000000000000;
    v13 = 0;
    v12 = 0;
    v14 = 0x3F80000000000000;
    v16 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 1065353216;
    sub_1B15D737C(&v9, v3, &v19, COERCE_DOUBLE(1065353216));
  }

  v7 = v22;
  a1[2] = v21;
  a1[3] = v7;
  a1[4] = v23;
  result = v20;
  *a1 = v19;
  a1[1] = result;
  return result;
}

__n128 sub_1B15D6D10@<Q0>(__n128 *a1@<X8>, float a2@<S0>)
{
  if (a2 == 0.0)
  {
    v4 = v2[3];
    v28 = v2[2];
    v29 = v4;
    v30 = v2[4];
    v5 = v2[1];
    v26 = *v2;
    v27 = v5;
  }

  else
  {
    v7 = __sincosf_stret(a2);
    *&v6 = v7.__sinval;
    v8 = (v7.__cosval + -1.0) * 0.5;
    v11 = 1065353216;
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = (v7.__cosval + -1.0) + 1.0;
    v16 = -v7.__sinval;
    v17 = 0;
    v18 = (v7.__sinval * 0.5) - v8;
    v19 = 0;
    sinval = v7.__sinval;
    v21 = v15;
    v23 = 0;
    v22 = 0;
    v24 = 0x3F80000000000000;
    v25 = (v7.__sinval * -0.5) - v8;
    sub_1B15D737C(&v11, v2, &v26, v6);
  }

  v9 = v29;
  a1[2] = v28;
  a1[3] = v9;
  a1[4] = v30;
  result = v27;
  *a1 = v26;
  a1[1] = result;
  return result;
}

__n128 sub_1B15D6DF4@<Q0>(__n128 *a1@<X8>, float a2@<S0>)
{
  if (a2 == 1.0)
  {
    v4 = v2[3];
    v23 = v2[2];
    v24 = v4;
    v25 = v2[4];
    v5 = v2[1];
    v21 = *v2;
    v22 = v5;
  }

  else
  {
    v8 = 1065353216;
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v12 = a2;
    v13 = 0;
    v14 = 0.5 - (a2 * 0.5);
    v15 = 0;
    v16 = a2;
    v17 = 0;
    v18 = v14;
    v19 = xmmword_1B161CD40;
    v20 = 0;
    sub_1B15D737C(&v8, v2, &v21, 0.0);
  }

  v6 = v24;
  a1[2] = v23;
  a1[3] = v6;
  a1[4] = v25;
  result = v22;
  *a1 = v21;
  a1[1] = result;
  return result;
}

__n128 sub_1B15D6EBC@<Q0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = 1.0 - a2[3];
  v8 = 1.0 - v7;
  *&v7 = v7;
  *&v7 = *&v7 * 0.0;
  v9 = *&v7 + (v6 * v8);
  v10 = 1.0 - a1[3];
  v11 = 1.0 - v10;
  *&v10 = v10;
  v12 = a1[1];
  v13 = a2[1];
  v14 = *&v7 + (v13 * v8);
  v15 = a1[2];
  v16 = a2[2];
  v17 = *&v7 + (v16 * v8);
  *&v21 = ((v5 * v11) + *&v10) - v9;
  *(&v21 + 4) = 0;
  HIDWORD(v21) = 0;
  v22 = v9;
  v23 = 0;
  v24 = ((v12 * v11) + *&v10) - v14;
  v25 = 0;
  v26 = v14;
  v27 = 0;
  v28 = ((v15 * v11) + *&v10) - v17;
  v29 = 0;
  v30 = v17;
  v31 = xmmword_1B161CD40;
  v32 = 0;
  sub_1B15D737C(&v21, v3, v20, 0.0);
  v18 = v20[3];
  *(a3 + 32) = v20[2];
  *(a3 + 48) = v18;
  *(a3 + 64) = v20[4];
  result = v20[1];
  *a3 = v20[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_1B15D6FE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  if (v6 == 1.0 && (v4 == 0.0 ? (v15 = v5 == 1.0) : (v15 = 0), v15))
  {
    *&v34 = *(a1 + 16);
    *(&v34 + 1) = v7;
    *&v35 = v9;
    *(&v35 + 1) = v10;
    *&v29 = v12;
    *(&v29 + 1) = v11;
    *&v30 = v14;
    *(&v30 + 1) = v13;
    v16 = &v34;
    v17 = &v29;
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    if (qword_1EB752570 != -1)
    {
      swift_once();
    }

    v36 = xmmword_1EB7579B0;
    v37 = unk_1EB7579C0;
    v38 = xmmword_1EB7579D0;
    v34 = xmmword_1EB757990;
    v35 = *&qword_1EB7579A0;
    sub_1B15D737C(&v34, v2, v25, *&qword_1EB7579A0);
    sub_1B15D6C48(v26, v5, v4);
    sub_1B15D6DF4(v27, v6);
    if (qword_1EB752578 != -1)
    {
      swift_once();
    }

    v31 = xmmword_1EB757A00;
    v32 = unk_1EB757A10;
    v33 = xmmword_1EB757A20;
    v29 = xmmword_1EB7579E0;
    v30 = *algn_1EB7579F0;
    sub_1B15D737C(&v29, v27, v28, *algn_1EB7579F0);
    v24[0] = v8;
    v24[1] = v7;
    v24[2] = v9;
    v24[3] = v10;
    v23[0] = v12;
    v23[1] = v20;
    v23[2] = v21;
    v23[3] = v22;
    v16 = v24;
    v17 = v23;
  }

  sub_1B15D6EBC(v16, v17, v39);
  v18 = v39[3];
  *(a2 + 32) = v39[2];
  *(a2 + 48) = v18;
  *(a2 + 64) = v39[4];
  result = v39[1];
  *a2 = v39[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1B15D71B0(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(v2 + 24);
  sub_1B15F6D3C();
  v9 = v8;
  v10 = v7 + a2;
  if (v6 == 0.0)
  {
    v11 = v7 + a2;
    v12 = v7 + a2;
  }

  else
  {
    v13 = v9 / 360.0;
    v14 = v10 * (v6 + 1.0);
    v15 = v6 + v10 - v6 * v10;
    if (v10 >= 0.5)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = v10 + v10 - v16;
    v12 = sub_1B15F73E8(v17, v16, v13 + 0.333333333);
    v11 = sub_1B15F73E8(v17, v16, v13);
    v10 = sub_1B15F73E8(v17, v16, v13 + -0.333333333);
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  *(a1 + 24) = v5;
}

__n128 sub_1B15D72BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A50);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_1B161CD50;
  *(v1 + 32) = v2;
  result = *(v0 + 20);
  v5 = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = v5;
  DWORD1(v3) = *(v0 + 9);
  DWORD2(v3) = *(v0 + 14);
  HIDWORD(v3) = *(v0 + 19);
  *(v1 + 80) = v3;
  return result;
}

__n128 sub_1B15D7328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A48);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_1B161CD60;
  *(v1 + 32) = v2;
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = v4;
  result = v0[4];
  *(v1 + 80) = v5;
  *(v1 + 96) = result;
  return result;
}

float32x2_t sub_1B15D737C@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *a1;
  v9 = *(a1 + 20);
  v11.i32[0] = *(a1 + 12);
  v10 = *(a1 + 13);
  v12 = *(a1 + 40);
  v14.i32[0] = *(a1 + 17);
  v13 = *(a1 + 18);
  LODWORD(a4) = *(a1 + 15);
  v15 = *(a1 + 16);
  v16 = *(a2 + 76);
  v17 = v6 * v16;
  v18 = *(a2 + 56);
  *v4.i32 = v5 * v18;
  v19 = ((((v13 * v16) + (v14.f32[0] * v18)) + (v15 * *(a2 + 36))) + (*&a4 * *(a2 + 16))) + *(a1 + 19);
  v20 = *(a2 + 60);
  v21 = *(a2 + 40);
  v22 = *(a2 + 20);
  v23 = *a2;
  v24 = ((vmuls_lane_f32(v10, v20, 2) + vmuls_lane_f32(v11.f32[0], v21, 2)) + vmuls_lane_f32(*&v12.i32[1], v22, 2)) + vmuls_lane_f32(*v12.i32, *a2, 2);
  v25 = vaddq_f32(vaddq_f32(vmulq_n_f32(v20, v6), vmulq_n_f32(v21, v5)), vmulq_n_f32(v22, *v7.i32));
  v26 = vmulq_n_f32(*a2, COERCE_FLOAT(*a1));
  v27 = vaddq_f32(v25, v26);
  *v26.f32 = vdup_lane_s32(v9, 0);
  v26.i64[0] = vmulq_f32(*a2, v26).u64[0];
  v26.i32[2] = vmuls_lane_f32(*v9.i32, *a2, 2);
  v28 = v20;
  v28.f32[3] = v17;
  v4.i32[1] = *(a1 + 8);
  v29 = vextq_s8(vdupq_lane_s32(*v4.i8, 1), v4, 4uLL);
  v30 = vmulq_f32(v20, v29);
  v30.i32[3] = vaddq_f32(v28, v29).i32[3];
  v31 = v21;
  v31.i32[3] = *(a2 + 36);
  v7.i32[1] = *(a1 + 7);
  v32 = vmulq_f32(v31, vextq_s8(vdupq_lane_s32(*v7.i8, 1), v7, 4uLL));
  v8.i32[1] = v9.i32[1];
  v33 = v22;
  v33.i32[3] = *(a2 + 16);
  v34 = vmulq_f32(v33, vextq_s8(vdupq_lane_s32(*v8.i8, 1), v8, 4uLL));
  v35 = v20;
  v36 = vaddq_f32(vaddq_f32(v30, v32), v34);
  v35.f32[2] = *(a1 + 8) * v16;
  v37 = v35;
  v37.i32[3] = *(a1 + 8);
  v38 = v20;
  v26.i32[3] = *(a1 + 4);
  v39 = vaddq_f32(v26, v36);
  v38.f32[0] = v10;
  v38.f32[2] = *(a1 + 7) * v18;
  v40 = vaddq_f32(v35, v38);
  v38.f32[1] = v10;
  v41 = vmulq_f32(v37, v38);
  v41.i32[2] = v40.i32[2];
  v42 = v21;
  v42.i32[2] = *(a2 + 36);
  v14.i64[1] = __PAIR64__(v11.u32[0], v12.u32[1]);
  v14.i32[1] = v14.i32[0];
  v43 = v11.f32[0] * v18;
  v11.i32[2] = v9.i32[1];
  v11.i32[1] = v11.i32[0];
  v11.i32[3] = *(a1 + 7);
  v44 = v22;
  v44.i32[2] = *(a2 + 16);
  *a3 = v27;
  *(a3 + 16) = vextq_s8(v39, v39, 0xCuLL);
  v27.i32[0] = vdup_lane_s32(v12, 1).u32[0];
  *&v27.u32[2] = v9;
  v27.i32[1] = v27.i32[0];
  v45 = vmulq_f32(v44, v27);
  v46 = vaddq_f32(vaddq_f32(v41, vmulq_f32(v42, v11)), v45);
  *v45.f32 = vdup_lane_s32(v12, 0);
  v45.i64[0] = vmulq_f32(v23, v45).u64[0];
  v45.i32[2] = *(a1 + 9);
  v45.i32[3] = vmuls_lane_f32(*v9.i32, v23, 3);
  v47 = vaddq_f32(v46, v45);
  *(a3 + 32) = vextq_s8(vrev64q_s32(v47), v47, 8uLL);
  v48 = v20;
  v48.f32[2] = v10 * v16;
  v49 = v48;
  v49.f32[3] = v10;
  v50 = v20;
  v50.f32[0] = v13;
  *(a3 + 48) = v24;
  v50.f32[2] = v43;
  v51 = vaddq_f32(v48, v50);
  v50.f32[1] = v13;
  v52 = vmulq_f32(v49, v50);
  v52.i32[2] = v51.i32[2];
  v49.f32[0] = v15;
  *&v49.u32[2] = v12;
  v49.f32[1] = v15;
  v51.i64[0] = vmulq_n_f32(v23, *&a4).u64[0];
  v51.i32[2] = *(a1 + 14);
  v51.i32[3] = vmuls_lane_f32(*v12.i32, v23, 3);
  v53 = vaddq_f32(vaddq_f32(vaddq_f32(v52, vmulq_f32(v42, v14)), vmulq_f32(v44, v49)), v51);
  *(a3 + 52) = vextq_s8(vrev64q_s32(v53), v53, 8uLL);
  result = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*&vextq_s8(v20, v20, 8uLL), v13), vmul_n_f32(*&vextq_s8(v21, v21, 8uLL), v14.f32[0])), vmul_n_f32(*&vextq_s8(v22, v22, 8uLL), v15)), vmul_f32(*&vdupq_lane_s32(*&a4, 0), *&vextq_s8(v23, v23, 8uLL)));
  *(a3 + 68) = result;
  *(a3 + 76) = v19;
  return result;
}

__n128 sub_1B15D760C@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v42 = 0x3F80000000000000;
  v45 = 0x3F80000000000000;
  v41 = 0;
  v40 = 0;
  v44 = 0;
  v43 = 0;
  v47 = 0;
  v46 = 0;
  v39 = 1065353216;
  v48 = 0;
  v49 = 1065353216;
  v27 = v5;
  v28 = v4;
  v34 = v4;
  v35 = v5;
  sub_1B15F6D3C();
  v8 = v7;
  v10 = v9;
  if (v6 == 1)
  {

    if (v8 != 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = sub_1B161A448();

    if (v8 != 0.0)
    {
      if ((v11 & 1) == 0)
      {
        v29 = v28;
        v30 = v27;
        sub_1B15D71B0(&v34, -0.2);
        v18 = v27;
        v17 = v28;
        v20 = v34;
        v21 = v35;
LABEL_14:
        v29.f64[0] = 0.0078125;
        v24 = 1.0 - v18.f64[1];
        *&v29.f64[1] = v24;
        v30 = v17;
        v31 = v18;
        v32 = v20;
        v33 = v21;
        sub_1B15D6FE0(&v29, &v34);
        goto LABEL_15;
      }

LABEL_8:
      if (qword_1EDB30338 != -1)
      {
        swift_once();
      }

      v16 = vdupq_n_s64(0x3FA99999999999A0uLL);
      v18 = v27;
      v17 = v28;
      v19 = vdupq_n_s64(0x3FEE666666666666uLL);
      v20 = vaddq_f64(vmulq_f64(v28, v16), vmulq_f64(xmmword_1EDB30340, v19));
      v21 = vaddq_f64(vmulq_f64(v27, v16), vmulq_f64(*&qword_1EDB30350, v19));
      goto LABEL_14;
    }

    if ((v11 & 1) == 0)
    {
      v14 = 0.0;
      v13 = 0.3;
      v15 = 0.4;
      v12 = 0.1;
      goto LABEL_12;
    }
  }

  v12 = 1.0;
  v13 = 0.65;
  v14 = 0.95;
  v15 = 0.7;
LABEL_12:
  v22 = 1.0 - v10;
  v23 = v10;
  sub_1B15D6C48(&v34, (v12 * v23) + (v15 * v22), (v14 * v23) + (v13 * v22));
LABEL_15:
  v25 = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v25;
  *(a3 + 64) = v38;
  result = v35;
  *a3 = v34;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1B15D7878(void *a1)
{
  CGSVGDocumentGetCanvasSize();
  v1 = CGSVGDocumentGetRootNode();
  if (v1)
  {
    v2 = v1;
    v3 = CGSVGNodeCopy();
    v4 = CGSVGDocumentCreate();
    v5 = CGSVGDocumentGetRootNode();
    if (v5)
    {
      v6 = v5;
      v7 = v3;
      CGSVGViewBoxNodeGetSize();
      CGSVGViewBoxNodeSetSize();
      CGSVGViewBoxNodeGetViewbox();
      CGSVGViewBoxNodeSetViewbox();
      CGSVGViewBoxNodeGetAspectRatio();
      CGSVGViewBoxNodeSetAspectRatio();
      CGSVGViewBoxNodeGetAspectRatioMeetOrSlice();

      CGSVGViewBoxNodeSetAspectRatioMeetOrSlice();
      result = CGSVGNodeGetChildCount();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        v9 = result;
        v32 = v2;
        v34 = v4;
        if (result)
        {
          v10 = 0;
          do
          {
            v11 = CGSVGNodeGetChildAtIndex();
            if (v11)
            {
              v12 = v11;
              CGSVGNodeAddChild();
            }

            ++v10;
          }

          while (v9 != v10);
        }

        None = CGSVGPaintCreateNone();
        CGSVGColorCreateRGBA();
        v14 = CGSVGAttributeCreateWithColor();
        v15 = CGSVGAttributeCreateWithFloat();
        v16 = CGSVGAttributeCreateWithFloat();
        v17 = None;
        v28 = None;
        v18 = CGSVGAttributeCreateWithPaint();
        CGSVGColorCreateRGBA();
        v19 = CGSVGAttributeCreateWithColor();
        v20 = CGSVGAttributeCreateWithFloat();
        v21 = swift_allocObject();
        v21[2] = v14;
        v21[3] = v15;
        v21[4] = v16;
        v21[5] = v18;
        v21[6] = v17;
        v21[7] = v19;
        v21[8] = v20;
        aBlock[4] = sub_1B15D7D84;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B15D454C;
        aBlock[3] = &block_descriptor_0;
        v22 = _Block_copy(aBlock);
        v31 = v14;
        v30 = v15;
        v29 = v16;
        v23 = v18;
        v24 = v28;
        v25 = v19;
        v26 = v20;

        CGSVGNodeEnumerate();
        _Block_release(v22);

        return v34;
      }
    }

    else
    {
      v27 = a1;

      return v27;
    }
  }

  else
  {

    return a1;
  }

  return result;
}

void sub_1B15D7C0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!a2)
  {
    Type = CGSVGNodeGetType();
    if (Type == 1)
    {
      v14 = CGSVGNodeFindAttribute();
      if (v14)
      {
        v15 = v14;
        CGSVGAttributeGetFloat();
      }
    }

    else if (Type == 2)
    {
      CGSVGNodeSetAttribute();
      CGSVGNodeSetAttribute();
      CGSVGNodeSetAttribute();
      v10 = CGSVGNodeFindAttribute();
      if (v10)
      {
        v11 = v10;
        CGSVGNodeSetAttribute();
        if (CGSVGAttributeGetPaint())
        {
          v12 = a8;
          v13 = CGSVGPaintGetType();

          if (v13)
          {
            CGSVGNodeSetAttribute();
            CGSVGNodeSetAttribute();
          }
        }
      }
    }
  }
}

uint64_t sub_1B15D7DB8()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752A58);
  __swift_project_value_buffer(v0, qword_1EB752A58);
  return sub_1B1619D08();
}

uint64_t sub_1B15D7E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 32))();
  if (!v3)
  {
    v8 = result;
    v9 = (*(a2 + 8))(a1, a2);
    v10 = (*(a2 + 16))(a1, a2);
    sub_1B15C2584(v10, &v14);
    v11 = v14;
    (*(a2 + 48))(v13, a1, a2);
    result = sub_1B15C71D0();
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = v11;
    v12 = v13[0];
    *(a3 + 40) = v13[1];
    *(a3 + 24) = v12;
    *(a3 + 56) = 1;
    *(a3 + 64) = result;
  }

  return result;
}

uint64_t CUINamedIconLayerStack.makeIcon()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1B15C0D84(v30);
  v6 = [v1 name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B1619D98();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [v3 layers];
  v12 = sub_1B1619EF8();

  v13 = *(v12 + 16);
  if (v13 >= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = *(v12 + 16);
  }

  if (v5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1B15D9CBC(v12 + 32, v15, (2 * v13) | 1);
  swift_unknownObjectRelease();
  if (v2)
  {
  }

  [v3 size];
  v19 = v18;
  v21 = v20;
  v22 = [v3 appearance];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B1619D98();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  result = sub_1B15C6FC4(v24, v26);
  v27 = v30[2];
  *(a1 + 72) = v30[3];
  v28 = v30[5];
  *(a1 + 88) = v30[4];
  *(a1 + 104) = v28;
  v29 = v30[1];
  *(a1 + 24) = v30[0];
  *(a1 + 40) = v29;
  *(a1 + 16) = 1;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 120) = v31;
  *(a1 + 56) = v27;
  *(a1 + 128) = v16;
  *(a1 + 136) = v19;
  *(a1 + 144) = v21;
  *(a1 + 152) = result;
  return result;
}

id sub_1B15D8104(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  scale = v14;
  v16 = v15;
  v17 = v2;
  if (v4)
  {
    v18 = [v1 layers];
    v19 = sub_1B1619EF8();

    v20 = *(v19 + 16);

    if (v20 != 1)
    {
      v21 = [v3 layers];
      v22 = sub_1B1619EF8();

      v23 = *(v22 + 16);

      if (qword_1EB752580 != -1)
      {
        swift_once();
      }

      v24 = sub_1B1619D18();
      __swift_project_value_buffer(v24, qword_1EB752A58);
      v25 = sub_1B1619CF8();
      v26 = sub_1B161A088();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v23;
        _os_log_impl(&dword_1B15BF000, v25, v26, "Legacy icons should have a single image layer; found %ld", v27, 0xCu);
        MEMORY[0x1B2730CA0](v27, -1, -1);
      }
    }

    if (qword_1EDB2F420 != -1)
    {
      swift_once();
    }

    v28 = 0;
    v29 = *algn_1EB752D50;
    v61 = xmmword_1EB752D40;
  }

  else
  {
    v29 = 0uLL;
    v61 = 0u;
    v28 = -2;
  }

  v59 = v29;
  CUINamedIconLayerStack.makeIcon()(&v93);
  if (v5)
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v35 = v59;
    v34 = v61;
  }

  else
  {
    v34 = v95;
    v35 = v96;
    v30 = v97;
    v31 = v98;
    v32 = v99;
    v33 = v100;
    v28 = v101;
  }

  v86 = v93;
  v36 = 0x202010002uLL >> (8 * v7);
  if (v7 >= 5)
  {
    LOBYTE(v36) = 2;
  }

  v62 = v36;
  *&v87[8] = v34;
  *&v87[24] = v35;
  *&v87[40] = v30;
  *&v87[56] = v31;
  *&v87[72] = v32;
  *&v87[88] = v33;
  v87[104] = v28;
  *&v87[105] = v102;
  *&v87[121] = v103[0];
  *v87 = v94;
  *&v87[136] = *(v103 + 15);
  sub_1B15C7370(v13, v85);
  v37 = v85[0];
  v60 = v85[0];
  sub_1B15CB0E4(v11, &v64);
  v38 = v64;
  v58 = v64;
  v39 = *(v9 + OBJC_IVAR___ICRRenderingMode_renderingMode);
  v40 = *(v9 + OBJC_IVAR___ICRRenderingMode_renderingMode + 8);
  v56 = v40;
  v41 = *(v9 + OBJC_IVAR___ICRRenderingMode_renderingMode + 16);
  v57 = *(v9 + OBJC_IVAR___ICRRenderingMode_renderingMode + 24);
  v42 = *(v9 + OBJC_IVAR___ICRRenderingMode_renderingMode + 32);
  v43 = *(v9 + OBJC_IVAR___ICRRenderingMode_renderingMode + 40);
  sub_1B15C0D28(v88);
  memcpy(&__src[5], v88, 0x653uLL);
  v70 = *&v87[80];
  v71 = *&v87[96];
  v72 = *&v87[112];
  v73 = *&v87[128];
  v66 = *&v87[16];
  v67 = *&v87[32];
  v68 = *&v87[48];
  v69 = *&v87[64];
  v64 = v86;
  v65 = *v87;
  LOBYTE(__dst[0]) = v37;
  BYTE1(__dst[0]) = v38;
  __dst[1] = v39;
  __dst[2] = v40;
  v44 = v41;
  __dst[3] = v41;
  __dst[4] = v57;
  __dst[5] = v42;
  LOBYTE(__dst[6]) = v43;
  BYTE1(__dst[6]) = v62;
  sub_1B15C76B8(__dst, v85);
  sub_1B15C927C(&v86);
  *&v90[32] = v85[3];
  *&v90[16] = v85[2];
  *&v90[80] = v85[6];
  *&v90[96] = v85[7];
  v91 = v85[8];
  v92 = v85[9];
  *&v90[48] = v85[4];
  *&v90[64] = v85[5];
  v89 = v85[0];
  *v90 = v85[1];
  if (*(&v85[0] + 1))
  {
    v45 = v89;
  }

  else
  {
    v45 = 7104878;
  }

  if (*(&v89 + 1))
  {
    v46 = *(&v89 + 1);
  }

  else
  {
    v46 = 0xE300000000000000;
  }

  v69 = *&v90[72];
  v70 = *&v90[88];
  LOBYTE(v71) = v90[104];
  v65 = *&v90[8];
  v66 = *&v90[24];
  v67 = *&v90[40];
  v68 = *&v90[56];
  v47 = v91;

  sub_1B15C927C(&v89);
  v48 = *(&v91 + 1);
  v49 = v92;
  v50 = v90[0];
  memcpy(__dst, &__src[5], 0x653uLL);
  sub_1B15C1750(__dst, &qword_1EB752A78);
  memcpy(&__src[5], v88, 0x653uLL);
  FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v16, v17), scale);
  *&v64 = v45;
  *(&v64 + 1) = v46;
  *(&v71 + 1) = v47;
  *&v72 = v48;
  *(&v72 + 1) = v49;
  LOBYTE(v73) = v50;
  BYTE8(v73) = v60;
  BYTE9(v73) = v58;
  v74 = v39;
  v75 = v56;
  v76 = v44;
  v77 = v57;
  v78 = v42;
  v79 = v43;
  v80 = v62;
  v81 = 0;
  memcpy(v82, __src, sizeof(v82));
  if (qword_1EDB2FBE8 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDB32798;
  sub_1B15C79C0(&v64);
  v52 = [objc_allocWithZone(ICRFinalizedIcon) init];
  v53 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  v54 = v52;
  sub_1B15DA08C(v85, v52 + v53);
  swift_endAccess();

  return v54;
}

id sub_1B15D8950(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  v17 = *(v2 + 96);
  CUINamedIconLayerStack.makeIcon()(v82);
  *&v88[48] = v82[4];
  *&v88[64] = v82[5];
  *&v88[80] = v82[6];
  *&v88[96] = v83;
  v87 = v82[0];
  *v88 = v82[1];
  *&v88[16] = v82[2];
  *&v88[32] = v82[3];
  if (v17 <= 0xFD)
  {
    v18 = v3[3];
    *&v88[40] = v3[2];
    *&v88[56] = v18;
    v19 = v3[5];
    *&v88[72] = v3[4];
    *&v88[88] = v19;
    v20 = v3[1];
    *&v88[8] = *v3;
    *&v88[24] = v20;
  }

  else
  {
    LOBYTE(v17) = v84;
  }

  v21 = 0x202010002uLL >> (8 * v5);
  if (v5 >= 5)
  {
    LOBYTE(v21) = 2;
  }

  v46 = v21;
  v73 = *&v88[48];
  v74 = *&v88[64];
  v75 = *&v88[80];
  v69 = v87;
  v70 = *v88;
  v71 = *&v88[16];
  v72 = *&v88[32];
  v76[8] = v17;
  *v76 = *&v88[96];
  *&v76[40] = *&v86[15];
  *&v76[25] = *v86;
  *&v76[9] = v85;
  sub_1B15C7370(v11, v68);
  v22 = v68[0];
  v45 = v68[0];
  sub_1B15CB0E4(v9, &v47);
  v23 = v47;
  v44 = v47;
  v24 = *(v7 + OBJC_IVAR___ICRRenderingMode_renderingMode);
  v25 = *(v7 + OBJC_IVAR___ICRRenderingMode_renderingMode + 8);
  v42 = v25;
  v26 = *(v7 + OBJC_IVAR___ICRRenderingMode_renderingMode + 16);
  v43 = *(v7 + OBJC_IVAR___ICRRenderingMode_renderingMode + 24);
  v27 = *(v7 + OBJC_IVAR___ICRRenderingMode_renderingMode + 32);
  v28 = *(v7 + OBJC_IVAR___ICRRenderingMode_renderingMode + 40);
  sub_1B15C0D28(v77);
  memcpy(&__src[5], v77, 0x653uLL);
  v53 = v75;
  v54 = *v76;
  v55 = *&v76[16];
  v56 = *&v76[32];
  v49 = v71;
  v50 = v72;
  v51 = v73;
  v52 = v74;
  v47 = v69;
  v48 = v70;
  LOBYTE(__dst[0]) = v22;
  BYTE1(__dst[0]) = v23;
  __dst[1] = v24;
  __dst[2] = v25;
  __dst[3] = v26;
  v29 = v26;
  __dst[4] = v43;
  __dst[5] = v27;
  LOBYTE(__dst[6]) = v28;
  v30 = v28;
  BYTE1(__dst[6]) = v46;
  sub_1B15C76B8(__dst, v68);
  sub_1B15C927C(&v69);
  *&v79[32] = v68[3];
  *&v79[16] = v68[2];
  *&v79[80] = v68[6];
  *&v79[96] = v68[7];
  v80 = v68[8];
  v81 = v68[9];
  *&v79[48] = v68[4];
  *&v79[64] = v68[5];
  v78 = v68[0];
  *v79 = v68[1];
  if (*(&v68[0] + 1))
  {
    v31 = v78;
  }

  else
  {
    v31 = 7104878;
  }

  if (*(&v78 + 1))
  {
    v32 = *(&v78 + 1);
  }

  else
  {
    v32 = 0xE300000000000000;
  }

  v52 = *&v79[72];
  v53 = *&v79[88];
  LOBYTE(v54) = v79[104];
  v48 = *&v79[8];
  v49 = *&v79[24];
  v50 = *&v79[40];
  v51 = *&v79[56];
  v33 = v80;

  sub_1B15C927C(&v78);
  v34 = *(&v80 + 1);
  v35 = v81;
  v36 = v79[0];
  memcpy(__dst, &__src[5], 0x653uLL);
  sub_1B15C1750(__dst, &qword_1EB752A78);
  memcpy(&__src[5], v77, 0x653uLL);
  FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v15, v16), v13);
  *&v47 = v31;
  *(&v47 + 1) = v32;
  *(&v54 + 1) = v33;
  *&v55 = v34;
  *(&v55 + 1) = v35;
  LOBYTE(v56) = v36;
  BYTE8(v56) = v45;
  BYTE9(v56) = v44;
  v57 = v24;
  v58 = v42;
  v59 = v29;
  v60 = v43;
  v61 = v27;
  v62 = v30;
  v63 = v46;
  v64 = 0;
  memcpy(v65, __src, sizeof(v65));
  if (qword_1EDB2FBE8 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDB32798;
  sub_1B15C79C0(&v47);
  v38 = [objc_allocWithZone(ICRFinalizedIcon) init];
  v39 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  v40 = v38;
  sub_1B15DA08C(v68, v38 + v39);
  swift_endAccess();

  return v40;
}

id sub_1B15D903C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v9 = a1;
  v10 = sub_1B15D8104(a3);

  return v10;
}

id sub_1B15D90F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = qword_1EDB2F420;
  v9 = a6;
  v10 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B15D8950(a3);

  return v11;
}

unint64_t sub_1B15D91E0(uint64_t a1, unint64_t a2)
{
  sub_1B161A188();

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE500000000000000;
    a1 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B272F930](a1, v4);

  MEMORY[0x1B272F930](39, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t sub_1B15D92C8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752700);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B161BDD0;
  (*(a2 + 40))(1, a1, a2);
  if (v2)
  {
    *(v5 + 16) = 0;
  }

  return v5;
}

void sub_1B15D9374(char *a1@<X8>)
{
  v3 = [v1 layoutDirection];
  if (!v3)
  {
LABEL_15:
    v4 = 2;
    goto LABEL_16;
  }

  if (v3 == 4)
  {
    v4 = 1;
    goto LABEL_16;
  }

  if (v3 != 5)
  {
    v5 = v3;
    v6 = [v1 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B1619D98();
      v10 = v9;
    }

    else
    {
      v10 = 0x80000001B16218A0;
      v8 = 0xD000000000000011;
    }

    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1619D18();
    __swift_project_value_buffer(v11, qword_1EB752A58);

    v12 = sub_1B1619CF8();
    v13 = sub_1B161A088();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 134218242;
      *(v14 + 4) = v5;
      *(v14 + 12) = 2080;
      v16 = sub_1B15E4764(v8, v10, &v17);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_1B15BF000, v12, v13, "Unrecognized layout direction %ld for %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2730CA0](v15, -1, -1);
      MEMORY[0x1B2730CA0](v14, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v4 = 0;
LABEL_16:
  *a1 = v4;
}

void sub_1B15D9570()
{
  v1 = [v0 layers];
  v2 = MEMORY[0x1E69E7CA0];
  v3 = sub_1B1619EF8();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v34 = v4 - 1;
    v37 = MEMORY[0x1E69E7CC0];
    v35 = v3 + 32;
    do
    {
      v7 = v6 + 32 * v5;
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        sub_1B15C10F0(v7, v63);
        v5 = v8 + 1;
        sub_1B15C10F0(v63, &v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A90);
        if (swift_dynamicCast())
        {
          break;
        }

        v64 = v8 + 1;
        if (qword_1EB752580 != -1)
        {
          swift_once();
        }

        v9 = sub_1B1619D18();
        __swift_project_value_buffer(v9, qword_1EB752A58);
        sub_1B15C10F0(v63, &v51);
        v10 = sub_1B1619CF8();
        v11 = sub_1B161A088();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v39 = v38;
          *v12 = 136315138;
          __swift_project_boxed_opaque_existential_0(&v51, *(&v52 + 1));
          swift_getDynamicType();
          v13 = sub_1B161A558();
          v14 = v4;
          v15 = v3;
          v16 = v2;
          v18 = v17;
          __swift_destroy_boxed_opaque_existential_0(&v51);
          v19 = sub_1B15E4764(v13, v18, &v39);
          v2 = v16;
          v3 = v15;
          v4 = v14;

          *(v12 + 4) = v19;
          _os_log_impl(&dword_1B15BF000, v10, v11, "unsupported layer type: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x1B2730CA0](v38, -1, -1);
          MEMORY[0x1B2730CA0](v12, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v51);
        }

        __swift_destroy_boxed_opaque_existential_0(v63);
        v7 += 32;
        v8 = v64;
        if (v4 == v64)
        {
          goto LABEL_18;
        }
      }

      v20 = v39;
      ObjectType = swift_getObjectType();
      (*(*(&v20 + 1) + 40))(&v51, 0, ObjectType, *(&v20 + 1));
      if (v36)
      {

        __swift_destroy_boxed_opaque_existential_0(v63);

        return;
      }

      v47 = v59;
      v48 = v60;
      v49 = v61;
      v50 = v62;
      v43 = v55;
      v44 = v56;
      v45 = v57;
      v46 = v58;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      v42 = v54;
      __swift_destroy_boxed_opaque_existential_0(v63);
      v36 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1B161801C(0, *(v37 + 2) + 1, 1, v37);
      }

      v23 = *(v37 + 2);
      v22 = *(v37 + 3);
      if (v23 >= v22 >> 1)
      {
        v37 = sub_1B161801C((v22 > 1), v23 + 1, 1, v37);
      }

      *(v37 + 2) = v23 + 1;
      v24 = &v37[184 * v23];
      v25 = v39;
      v26 = v40;
      v27 = v42;
      *(v24 + 4) = v41;
      *(v24 + 5) = v27;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v28 = v43;
      v29 = v44;
      v30 = v46;
      *(v24 + 8) = v45;
      *(v24 + 9) = v30;
      *(v24 + 6) = v28;
      *(v24 + 7) = v29;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      *(v24 + 104) = v50;
      *(v24 + 11) = v32;
      *(v24 + 12) = v33;
      *(v24 + 10) = v31;
      v6 = v35;
    }

    while (v34 != v8);
  }

LABEL_18:
}

void sub_1B15D9A0C(char a1@<W0>, SEL *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = [v4 *a2];
  if (v8)
  {
    v9 = v8;
    v37 = v8;
    [v4 frame];
    width = v48.size.width;
    x = v48.origin.x;
    y = v48.origin.y;
    height = v48.size.height;
    IsEmpty = CGRectIsEmpty(v48);
    v11 = IsEmpty;
    *v12.i64 = x;
    *&v12.i64[1] = y;
    v43 = v12;
    *v12.i64 = width;
    *&v12.i64[1] = height;
    v40 = v12;
    if (IsEmpty)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    v34 = vdupq_n_s64(v13);
    sub_1B15C6EC4(v46);
    v38 = a3;
    if (a1)
    {
      v36 = 0;
      v14 = 1.0;
    }

    else
    {
      [v4 opacity];
      v14 = v20;
      sub_1B15C2584([v4 blendMode], &v45);
      v36 = v45;
    }

    v41 = vbicq_s8(v40, v34);
    v44 = vbicq_s8(v43, v34);
    v21 = [v4 hasLightingEffects];
    v22 = [v4 appearance];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1B1619D98();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = sub_1B15C6FC4(v24, v26);
    sub_1B15D9374(&v45);

    v28 = v45;
    *(a4 + 16) = v9;
    *(a4 + 24) = v38;
    *(a4 + 56) = v41;
    *(a4 + 40) = v44;
    *(a4 + 72) = v11;
    v29 = v46[5];
    *(a4 + 144) = v46[4];
    *(a4 + 160) = v29;
    *(a4 + 176) = v47;
    v30 = v46[1];
    *(a4 + 80) = v46[0];
    *(a4 + 96) = v30;
    v31 = v46[3];
    *(a4 + 112) = v46[2];
    *(a4 + 128) = v31;
    *a4 = v14;
    *(a4 + 8) = v36;
    *(a4 + 25) = v21;
    *(a4 + 32) = v27;
    *(a4 + 177) = v28;
  }

  else
  {
    v15 = [v4 name];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1B1619D98();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    sub_1B15DA0E8();
    swift_allocError();
    *v32 = v17;
    v32[1] = v19;
    swift_willThrow();
  }
}

uint64_t sub_1B15D9CBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a2;
  result = MEMORY[0x1E69E7CC0];
  v8 = &unk_1EB752A98;
  v33 = v4 - 1;
  v9 = a2;
  v34 = a1;
  do
  {
    v35 = result;
    v10 = a1 + 32 * v9;
    v11 = v9;
    v37 = v9;
    while (1)
    {
      if (v9 < v6 || v11 >= v4)
      {
        __break(1u);
        return result;
      }

      sub_1B15C10F0(v10, v48);
      sub_1B15C10F0(v48, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(v8);
      if (swift_dynamicCast())
      {
        break;
      }

      v49 = v11 + 1;
      if (qword_1EB752580 != -1)
      {
        swift_once();
      }

      v12 = sub_1B1619D18();
      __swift_project_value_buffer(v12, qword_1EB752A58);
      sub_1B15C10F0(v48, &v43);
      v13 = sub_1B1619CF8();
      v14 = sub_1B161A088();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v38 = v36;
        *v15 = 136315138;
        __swift_project_boxed_opaque_existential_0(&v43, *(&v44 + 1));
        swift_getDynamicType();
        v16 = sub_1B161A558();
        v17 = v8;
        v18 = v4;
        v19 = v6;
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0(&v43);
        v22 = sub_1B15E4764(v16, v21, &v38);
        v6 = v19;
        v4 = v18;
        v8 = v17;

        *(v15 + 4) = v22;
        _os_log_impl(&dword_1B15BF000, v13, v14, "unsupported layer type: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x1B2730CA0](v36, -1, -1);
        MEMORY[0x1B2730CA0](v15, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v43);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v48);
      v10 += 32;
      v11 = v49;
      v9 = v37;
      if (v4 == v49)
      {
        return v35;
      }
    }

    v23 = v38;
    ObjectType = swift_getObjectType();
    sub_1B15D7E40(ObjectType, *(&v23 + 1), &v43);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_0(v48);

      return v35;
    }

    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    __swift_destroy_boxed_opaque_existential_0(v48);
    v25 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1B15C7248(0, *(v35 + 16) + 1, 1, v35);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    v28 = v25;
    if (v27 >= v26 >> 1)
    {
      v28 = sub_1B15C7248((v26 > 1), v27 + 1, 1, v25);
    }

    *(v28 + 2) = v27 + 1;
    result = v28;
    v29 = &v28[72 * v27];
    *(v29 + 2) = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *(v29 + 12) = v42;
    *(v29 + 4) = v31;
    *(v29 + 5) = v32;
    *(v29 + 3) = v30;
    v9 = v11 + 1;
    a1 = v34;
  }

  while (v33 != v11);
  return result;
}

unint64_t sub_1B15DA0E8()
{
  result = qword_1EB752A80;
  if (!qword_1EB752A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752A80);
  }

  return result;
}

uint64_t sub_1B15DA158()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752AA0);
  __swift_project_value_buffer(v0, qword_1EB752AA0);
  return sub_1B1619D08();
}

void sub_1B15DA1F8(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v185 = v11;
  v13 = v12;
  v233 = *MEMORY[0x1E69E9840];
  v14 = *(v2 + 80);
  v192 = *(v2 + 64);
  v193 = v14;
  v194 = *(v2 + 96);
  v15 = *(v2 + 16);
  v188 = *v2;
  v189 = v15;
  v16 = *(v2 + 48);
  v190 = *(v2 + 32);
  v191 = v16;
  memcpy(v195, v12 + 213, 0x653uLL);
  memcpy(v196, v13 + 213, 0x653uLL);
  sub_1B15DB1A4((v13 + 213));
  sub_1B15C51D0(v195, &v212);
  sub_1B15C5664(v196);
  v17 = *(v13 + 673);
  ObjectType = swift_getObjectType();
  v19 = v13[668];
  v20 = v13[669];
  v21 = v13[670];
  v22 = v13[671];
  (*(v17 + 8))(v221, ObjectType, v17, v19, v20, v21, v22, *(&v191 + 1));
  v234.origin.x = v19;
  v234.origin.y = v20;
  v234.size.width = v21;
  v234.size.height = v22;
  MidX = CGRectGetMidX(v234);
  v235.origin.x = v19;
  v235.origin.y = v20;
  v235.size.width = v21;
  v235.size.height = v22;
  MidY = CGRectGetMidY(v235);
  v24 = fabs(*&v190 * 0.5 / 3.14159265 + -0.5);
  [v10 beginLayer];
  if (qword_1EDB30310 != -1)
  {
    swift_once();
  }

  v25 = *&xmmword_1EDB30318;
  v26 = *(&xmmword_1EDB30318 + 1);
  v27 = *&qword_1EDB30328;
  v28 = unk_1EDB30330;
  sub_1B160E3D0(v6, *&xmmword_1EDB30318);
  *&v29 = v25;
  *&v30 = v26;
  *&v31 = v27;
  *&v32 = v28;
  [v8 setColor:3 colorSpace:{v29, v30, v31, v32}];
  [v6 setRenderingMode_];
  [v6 setRenderingModeArgument_];
  LODWORD(v33) = 1.0;
  v187 = v8;
  [v10 drawShape:v6 fill:v8 alpha:v4 blendMode:v33];
  [v6 setRenderingMode_];
  LODWORD(v34) = 1.0;
  v186 = v10;
  [v10 clipLayerWithAlpha:1 mode:v34];
  if (v24 >= 0.000001)
  {
    v182 = v193;
    v183 = v194;
    v36 = cos(*&v190);
    sub_1B15DB2BC(0.0, 1.0, 0.03125, v36, 1.0 / *(&v190 + 1) + -2.0, v193.f64[0], v193.f64[1], v194.f64[0]);
    v38 = v37;
    v35 = v1;
    v39 = atan2(*(&v188 + 1), *&v189);
    v203.i64[0] = v38;
    *&v203.i64[1] = MidX;
    *&v204 = MidY;
    *(&v204 + 1) = v39 + -1.57079633;
    LODWORD(v205) = 0;
    sub_1B15DE6A0(&v203);
    v218 = v209;
    v219 = v210;
    v220 = v211;
    v214 = v205;
    v215 = v206;
    v217 = v208;
    v216 = v207;
    v213 = v204;
    v212 = v203;
  }

  else
  {
    v203 = vcvt_hight_f32_f64(vcvt_f32_f64(v193), v194);
    LODWORD(v204) = 3;
    sub_1B15DE834(&v203);
    v218 = v209;
    v219 = v210;
    v220 = v211;
    v214 = v205;
    v215 = v206;
    v217 = v208;
    v216 = v207;
    v213 = v204;
    v212 = v203;
    v35 = v1;
  }

  v40 = v221[0];
  v41 = *&v221[1];
  v42 = v223;
  v43 = v187;
  if (((1 << v225) & 3) != 0)
  {
    v47 = 0.0;
    v45 = v222;
    v46 = *&v223;
    v44 = *&v191 + *&v191;
    v48 = 1;
  }

  else if (((1 << v225) & 0xC) != 0)
  {
    v44 = v224;
    v45 = v222;
    v46 = *&v223;
    v47 = *&v191 + *&v191;
    v48 = 3;
  }

  else
  {
    sub_1B15DE6B4(v221, &v203);
    *&v45 = 0.0;
    v46 = 0;
    v44 = 0.0;
    v47 = 0.0;
    v48 = 5;
    v41 = *&v191 + *&v191;
  }

  v226 = v40;
  v227 = v41;
  v228 = v45;
  v229 = v46;
  v181 = v46;
  v182.f64[0] = v47;
  v183.f64[0] = v44;
  v230 = v44;
  v231 = v47;
  v232 = v48;
  v49 = *&v188;
  sub_1B160E3D0(v6, v42);
  v209 = v218;
  v210 = v219;
  v211 = v220;
  v205 = v214;
  v206 = v215;
  v208 = v217;
  v207 = v216;
  v204 = v213;
  v203 = v212;
  v50 = sub_1B15DE710(&v203);
  v51 = sub_1B15D256C(&v203);
  MidX = *&v45;
  if (v50 > 1)
  {
    if (v50 != 2)
    {
      if (v50 == 3)
      {
        v60 = *v51;
        v61 = *(v51 + 1);
        v62 = *(v51 + 8);
        v64 = *(v51 + 9);
        v63 = *(v51 + 10);
        v66 = *(v51 + 11);
        v65 = *(v51 + 12);
        v67 = *(v51 + 13);
        v68 = *(v51 + 14);
        v69 = *(v51 + 15);
        v70 = *(v51 + 16);
        *&v56 = v67;
        *&v57 = v68;
        *&v58 = v69;
        *&v59 = v70;
        v71 = v51[34];
        v72 = v51[35];
        v73 = v186;
        if (v51[12])
        {
          v197 = *(v51 + 7);
          v198 = v62;
          v199 = v64;
          v200 = v63;
          v201 = v66;
          v202 = v65;
          *&v67 = v67;
          *&v68 = v68;
          *&v69 = v69;
          *&v70 = v70;
          [v187 setRBImage:v60 transform:v61 interpolation:&v197 tintColor:v71 colorSpace:3 flags:{v72, v67, v68, v69, v70}];
        }

        else
        {
          v105 = *(v51 + 4);
          v106 = *(v51 + 5);
          v107 = *(v51 + 2);
          v108 = *(v51 + 3);
          v197 = *(v51 + 7);
          v198 = v62;
          v199 = v64;
          v200 = v63;
          v201 = v66;
          v202 = v65;
          [v187 setTiledRBImage:v60 transform:v61 sourceRect:&v197 interpolation:v71 tintColor:3 colorSpace:v72 flags:{v107, v108, v105, v106, v56, v57, v58, v59}];
        }

        goto LABEL_91;
      }

      [v187 setShader:*v51 bounds:0 flags:0];
      goto LABEL_27;
    }

    v179 = *v51;
    v180 = v35;
    v74 = *(v179 + 16);
    if (!(v74 >> 59))
    {
      v76 = *(v51 + 1);
      v75 = *(v51 + 2);
      v77 = *(v51 + 3);
      LODWORD(v178) = v51[8];
      v78 = v187;
      if ((16 * v74) < 1025)
      {
        sub_1B15DE7D8(&v212, &v197);
        v79 = v78;
        sub_1B15DE7D8(&v212, &v197);
        v80 = v79;
        isStackAllocationSafe = sub_1B15DE7D8(&v212, &v197);
        goto LABEL_21;
      }

      sub_1B15DE7D8(&v212, &v197);
      v164 = v78;
      sub_1B15DE7D8(&v212, &v197);
      v165 = v164;
      sub_1B15DE7D8(&v212, &v197);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (isStackAllocationSafe)
      {
LABEL_21:
        v177 = &v174;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v83 = &v174 - v82;
        v84 = v78;
        v85 = &v212;
        v86 = &v197;
        if (v74 < 0x81)
        {
          sub_1B15DE7D8(&v212, &v197);
          v87 = v84;
          sub_1B15DE7D8(&v212, &v197);
          goto LABEL_23;
        }

        goto LABEL_98;
      }

      v84 = swift_slowAlloc();
      v83 = v165;
      sub_1B15DE7D8(&v212, &v197);
      sub_1B160E8B0(v84, v74, v179, v83, v179, v76, v75, v77);
      if (!v180)
      {
        goto LABEL_94;
      }

      goto LABEL_97;
    }

    __break(1u);
LABEL_105:
    __break(1u);
  }

  if (!v50)
  {
    LODWORD(v52) = *v51;
    LODWORD(v53) = v51[1];
    LODWORD(v54) = v51[2];
    LODWORD(v55) = v51[3];
    [v187 setColor:v51[4] colorSpace:{v52, v53, v54, v55}];
LABEL_27:
    v73 = v186;
LABEL_91:
    v163 = v49 * v185;
    *&v163 = v49 * v185;
    [v73 drawShape:v6 fill:v43 alpha:0 blendMode:v163];
    [v6 setRenderingMode_];
    sub_1B15DE71C(v221);
    sub_1B15DE770(v40, *&v41, *&MidX, v181, *&v183.f64[0], *&v182.f64[0], v48);
    sub_1B15DE784(&v212);
    return;
  }

  v180 = v35;
  v177 = *v51;
  v74 = v177[2];
  if (v74 >> 59)
  {
    goto LABEL_105;
  }

  v92 = *(v51 + 1);
  v76 = *(v51 + 2);
  v75 = *(v51 + 3);
  v77 = *(v51 + 4);
  LODWORD(v179) = v51[10];
  v93 = v187;
  if ((16 * v74) < 1025)
  {
    sub_1B15DE7D8(&v212, &v197);
    v94 = v93;
    sub_1B15DE7D8(&v212, &v197);
    v95 = v94;
    v96 = sub_1B15DE7D8(&v212, &v197);
    goto LABEL_31;
  }

  sub_1B15DE7D8(&v212, &v197);
  v166 = v93;
  sub_1B15DE7D8(&v212, &v197);
  v167 = v166;
  sub_1B15DE7D8(&v212, &v197);
  v96 = swift_stdlib_isStackAllocationSafe();
  if (v96)
  {
LABEL_31:
    v178 = &v174;
    MEMORY[0x1EEE9AC00](v96);
    v98 = (&v174 - v97);
    v99 = v93;
    if (v74 >= 0x81)
    {
      sub_1B15DE7D8(&v212, &v197);
      v174 = v99;
      sub_1B15DE7D8(&v212, &v197);
      if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
      {
        v172 = swift_slowAlloc();
        v169 = v174;
        sub_1B15DE7D8(&v212, &v197);
        v173 = v180;
        sub_1B160EF8C(v172, v74, v177, v98, v74, v169, v177);
        v171 = v173;
        MEMORY[0x1B2730CA0](v172, -1, -1);

        sub_1B15DE784(&v212);
        sub_1B15DE784(&v212);
        goto LABEL_102;
      }
    }

    else
    {
      sub_1B15DE7D8(&v212, &v197);
      v100 = v99;
      sub_1B15DE7D8(&v212, &v197);
    }

    MEMORY[0x1EEE9AC00](&v174);
    v102 = &v174 - v101;
    v176 = v40;
    if (v74)
    {
      v73 = v186;
      if (v74 > 7)
      {
        v103 = 0;
        v104 = v177;
        v131 = v177 + 4;
        v132 = &v98[4 * v74];
        v133 = &v102[8 * v74];
        v134 = &v177[5 * v74 + 4];
        v136 = v98 < v134 && v131 < v132;
        v138 = v102 < v134 && v131 < v133;
        if ((v102 >= v132 || v98 >= v133) && !v136 && !v138)
        {
          v103 = v74 & 0x7FFFFFFFFFFFFFCLL;
          v140 = v74 & 0x7FFFFFFFFFFFFFCLL;
          v141 = v102;
          v142 = v98;
          do
          {
            v144 = *v131;
            v143 = *(v131 + 1);
            v146 = *(v131 + 6);
            v145 = *(v131 + 7);
            v147 = *(v131 + 5);
            v148 = vextq_s8(v147, *(v131 + 8), 8uLL);
            *&v147.f64[1] = v131[15];
            v149 = *(v131 + 2);
            *(&v145 + 1) = v131[19];
            *&v144.f64[1] = v131[5];
            *(&v149 + 1) = v131[9];
            v237.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v131, *(v131 + 3), 8uLL)), v148);
            v150 = vcvt_f32_f64(v144);
            v151 = vextq_s8(v146, *(v131 + 9), 8uLL);
            *&v146.f64[1] = v131[17];
            v152 = vextq_s8(v143, *(v131 + 4), 8uLL);
            *&v143.f64[1] = v131[7];
            v237.val[0] = vcvt_hight_f32_f64(v150, v147);
            v237.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v152), v151);
            v237.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v143), v146);
            vst4q_f32(v142, v237);
            v142 += 16;
            *v141 = v149;
            *(v141 + 1) = v145;
            v141 += 32;
            v131 += 20;
            v140 -= 4;
          }

          while (v140);
          if (v74 == v103)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v103 = 0;
        v104 = v177;
      }

      v158 = v74 - v103;
      v159 = &v102[8 * v103];
      v160 = &v98[4 * v103];
      v161 = (v104 + 40 * v103 + 64);
      do
      {
        v162 = v161->f64[0];
        *v160++ = vcvt_hight_f32_f64(vcvt_f32_f64(v161[-2]), v161[-1]);
        *v159 = v162;
        v159 += 8;
        v161 = (v161 + 40);
        --v158;
      }

      while (v158);
    }

    else
    {
      v73 = v186;
    }

LABEL_90:
    [v99 setAxialGradientStartPoint:v74 endPoint:v98 stopCount:3 colors:v92 colorSpace:v76 locations:v75 flags:v77];

    sub_1B15DE784(&v212);
    sub_1B15DE784(&v212);

    sub_1B15DE784(&v212);
    sub_1B15DE784(&v212);

    sub_1B15DE784(&v212);
    v40 = v176;
    goto LABEL_91;
  }

  v84 = swift_slowAlloc();
  v83 = v167;
  sub_1B15DE7D8(&v212, &v197);
  sub_1B160E574(v84, v74, v177, v83, v177, v92, v76, v75, v77);
  if (!v180)
  {
LABEL_94:
    MEMORY[0x1B2730CA0](v84, -1, -1);

    sub_1B15DE784(&v212);
    sub_1B15DE784(&v212);

    sub_1B15DE784(&v212);
    v43 = v187;
    goto LABEL_27;
  }

LABEL_97:
  MEMORY[0x1B2730CA0](v84, -1, -1);

  __break(1u);
LABEL_98:
  sub_1B15DE7D8(v85, v86);
  v174 = v84;
  sub_1B15DE7D8(&v212, &v197);
  if (swift_stdlib_isStackAllocationSafe())
  {
LABEL_23:
    MEMORY[0x1EEE9AC00](&v174);
    v89 = &v174 - v88;
    v90 = v179;
    v175 = v48;
    if (v74)
    {
      v73 = v186;
      if (v74 > 7)
      {
        v91 = 0;
        v109 = v179 + 32;
        v110 = &v83[16 * v74];
        v111 = &v89[8 * v74];
        v112 = v179 + 40 * v74 + 32;
        v114 = v83 < v112 && v109 < v110;
        v116 = v89 < v112 && v109 < v111;
        if ((v89 >= v110 || v83 >= v111) && !v114 && !v116)
        {
          v91 = v74 & 0x7FFFFFFFFFFFFFCLL;
          v118 = v74 & 0x7FFFFFFFFFFFFFCLL;
          v119 = v89;
          v120 = v83;
          do
          {
            v122 = *v109;
            v121 = *(v109 + 16);
            v124 = *(v109 + 96);
            v123 = *(v109 + 112);
            v125 = *(v109 + 80);
            v126 = vextq_s8(v125, *(v109 + 128), 8uLL);
            v125.f64[1] = *(v109 + 120);
            v127 = *(v109 + 32);
            *(&v123 + 1) = *(v109 + 152);
            v122.f64[1] = *(v109 + 40);
            *(&v127 + 1) = *(v109 + 72);
            v236.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v109, *(v109 + 48), 8uLL)), v126);
            v128 = vcvt_f32_f64(v122);
            v129 = vextq_s8(v124, *(v109 + 144), 8uLL);
            v124.f64[1] = *(v109 + 136);
            v130 = vextq_s8(v121, *(v109 + 64), 8uLL);
            v121.f64[1] = *(v109 + 56);
            v236.val[0] = vcvt_hight_f32_f64(v128, v125);
            v236.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v130), v129);
            v236.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v121), v124);
            vst4q_f32(v120, v236);
            v120 += 16;
            *v119 = v127;
            *(v119 + 1) = v123;
            v119 += 32;
            v109 += 160;
            v118 -= 4;
          }

          while (v118);
          if (v74 == v91)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v91 = 0;
      }

      v153 = v74 - v91;
      v154 = &v89[8 * v91];
      v155 = &v83[16 * v91];
      v156 = (v90 + 40 * v91 + 64);
      do
      {
        v157 = v156->f64[0];
        *v155++ = vcvt_hight_f32_f64(vcvt_f32_f64(v156[-2]), v156[-1]);
        *v154 = v157;
        v154 += 8;
        v156 = (v156 + 40);
        --v153;
      }

      while (v153);
    }

    else
    {
      v73 = v186;
    }

LABEL_87:
    [v84 setConicGradientCenter:*(v90 + 16) angle:v83 stopCount:v76 colors:v75 locations:v77 flags:?];

    sub_1B15DE784(&v212);
    sub_1B15DE784(&v212);

    sub_1B15DE784(&v212);
    sub_1B15DE784(&v212);

    sub_1B15DE784(&v212);
    LOBYTE(v48) = v175;
    goto LABEL_91;
  }

  v168 = swift_slowAlloc();
  v169 = v174;
  sub_1B15DE7D8(&v212, &v197);
  v170 = v180;
  sub_1B160F120(v168, v74, v179, v83, v74, v169, v179);
  v171 = v170;
  MEMORY[0x1B2730CA0](v168, -1, -1);

  sub_1B15DE784(&v212);
  sub_1B15DE784(&v212);
LABEL_102:
  if (!v171)
  {

    sub_1B15DE784(&v212);
    sub_1B15DE784(&v212);

    sub_1B15DE784(&v212);
    v43 = v187;
    goto LABEL_27;
  }

  swift_willThrow();

  __break(1u);
}

void sub_1B15DB1A4(uint64_t a1)
{
  v2 = *(a1 + 1224);
  v3 = *(a1 + 1232);
  v4 = *(a1 + 1240);
  v5 = *(a1 + 1248);
  __y = *(a1 + 1256);
  v13 = *(a1 + 1264);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = hypot(v6, v7);
  v9 = 1.0 - v8 / sin(v2);
  if (v9 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  *v1 = *v1 * (v4 + (1.0 - v4) * (1.0 - pow(v10, v3)));
  *(v1 + 32) = *(v1 + 32) + pow(v10, v5) * (3.14159265 - *(v1 + 32));
  *(v1 + 48) = *(v1 + 48) * (v13 * pow(v10, __y) + 1.0);
  v11 = atan2(v6, v7);
  *(v1 + 8) = __sincos_stret(v11);
  *(v1 + 24) = 0;
}

void sub_1B15DB2BC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3;
  v9 = a2;
  v10 = sub_1B15DE2EC(a1, a2, a3);
  v46 = MEMORY[0x1E69E7CC0];
  sub_1B15D5488(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_49;
  }

  v11 = "؃";
  v12 = 0;
  v13 = 0;
  if (v10)
  {
    v14 = 1.0 - a4;
    if (1.0 - a4 > 0.000001)
    {
      v15 = 1.0 - a4;
    }

    else
    {
      v15 = 0.000001;
    }

    v39 = v15;
    v16 = a1;
    do
    {
      v17 = v16 <= v9;
      if (v8 > 0.0)
      {
        v17 = v16 >= v9;
      }

      if (v17)
      {
        if (v12 & 1 | (v16 != v9))
        {
          goto LABEL_47;
        }

        v12 = 1;
        v18 = v16;
      }

      else
      {
        v19 = __OFADD__(v13++, 1);
        if (v19)
        {
          goto LABEL_48;
        }

        v18 = a1 + v13 * v8;
      }

      v20 = (cos((v16 + v16) * 3.14159265) - a4) / v39;
      if (v20 < 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      if ((1.0 - v21) * a5 + 1.0 > 0.000001)
      {
        v22 = (1.0 - v21) * a5 + 1.0;
      }

      else
      {
        v22 = 0.000001;
      }

      v24 = *(v46 + 16);
      v23 = *(v46 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B15D5488((v23 > 1), v24 + 1, 1);
      }

      *(v46 + 16) = v24 + 1;
      v25 = (v46 + 40 * v24);
      v25[4] = a6;
      v25[5] = a7;
      v25[6] = a8;
      v25[7] = v21 / v22;
      v25[8] = v16;
      v16 = v18;
      --v10;
    }

    while (v10);
    v11 = "M·=؃" + 4;
  }

  else
  {
    v14 = 1.0 - a4;
    v18 = a1;
  }

  if (v14 > 0.000001)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0.000001;
  }

  v40 = v26;
  v38 = *(v11 + 506);
  v27 = v8;
  for (i = v9; ; v9 = i)
  {
    v29 = v18 <= v9;
    if (v8 > 0.0)
    {
      v29 = v18 >= v9;
    }

    if (!v29)
    {
      break;
    }

    if ((v18 != v9) | v12 & 1)
    {
      return;
    }

    v12 = 1;
    v30 = v18;
LABEL_36:
    v31 = (cos((v18 + v18) * v38) - a4) / v40;
    if (v31 < 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v31;
    }

    if ((1.0 - v32) * a5 + 1.0 > 0.000001)
    {
      v33 = (1.0 - v32) * a5 + 1.0;
    }

    else
    {
      v33 = 0.000001;
    }

    v35 = *(v46 + 16);
    v34 = *(v46 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1B15D5488((v34 > 1), v35 + 1, 1);
    }

    *(v46 + 16) = v35 + 1;
    v36 = (v46 + 40 * v35);
    v36[4] = a6;
    v36[5] = a7;
    v36[6] = a8;
    v36[7] = v32 / v33;
    v36[8] = v18;
    v18 = v30;
    v8 = v27;
  }

  v19 = __OFADD__(v13++, 1);
  if (!v19)
  {
    v30 = a1 + v13 * v8;
    goto LABEL_36;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

id sub_1B15DB5EC(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1B1619D68();
  v7 = [objc_opt_self() filterWithName_];

  if (v7)
  {
    [a1 argumentAtIndex_];
    v8 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v8 = sub_1B161A018();
    }

    v9 = sub_1B1619D68();
    [v7 setValue:v8 forKey:v9];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v10 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v10 = sub_1B161A018();
    }

    v11 = sub_1B1619D68();
    [v7 setValue:v10 forKey:v11];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v12 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v12 = sub_1B161A018();
    }

    v13 = sub_1B1619D68();
    [v7 setValue:v12 forKey:v13];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v14 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v14 = sub_1B161A018();
    }

    v15 = sub_1B1619D68();
    [v7 setValue:v14 forKey:v15];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v16 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v16 = sub_1B161A018();
    }

    v17 = sub_1B1619D68();
    [v7 setValue:v16 forKey:v17];
    swift_unknownObjectRelease();

    v18 = sub_1B160E118(5);
    v19 = sub_1B1619D68();
    [v7 setValue:v18 forKey:v19];

    v20 = sub_1B160E208(6);
    v21 = sub_1B1619D68();
    [v7 setValue:v20 forKey:v21];

    [a1 argumentAtIndex_];
    v22 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v22 = sub_1B161A018();
    }

    v23 = sub_1B1619D68();
    [v7 setValue:v22 forKey:v23];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v24 = 0;
    if (v30 == 1 && v32 == 1 && !v31)
    {
      v24 = sub_1B161A018();
    }

    v25 = sub_1B1619D68();
    [v7 setValue:v24 forKey:v25];
    swift_unknownObjectRelease();

    v26 = sub_1B1612A10(a2, a3 & 1);
    if (v26)
    {
      v27 = v26;
      v28 = sub_1B1619D68();
      [v7 setValue:v27 forKey:v28];
    }
  }

  return v7;
}

id sub_1B15DBB60(_OWORD *a1, char a2, void *a3, unsigned int a4, double a5, double a6)
{
  v188 = a4;
  v201 = *MEMORY[0x1E69E9840];
  v11 = *(v6 + 5296);
  [v11 save];
  v12 = *(v6 + 5344);
  v13 = *(v6 + 5352);
  v14 = *(v6 + 5360);
  v15 = *(v6 + 5368);
  v202.origin.x = v12;
  v202.origin.y = v13;
  v202.size.width = v14;
  v202.size.height = v15;
  Width = CGRectGetWidth(v202);
  v203.origin.x = v12;
  v203.origin.y = v13;
  v203.size.width = v14;
  v203.size.height = v15;
  v17 = &selRef_gradientStartPoint;
  [v11 scaleByX:Width Y:CGRectGetHeight(v203)];
  v18 = (a2 & 1);
  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  v19 = *&v198.a - 2;
  if (__OFSUB__(*&v198.a, 2))
  {
    __break(1u);
    goto LABEL_98;
  }

  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  if (__OFSUB__(*&v198.b, 2))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  [v11 scaleByX:1.0 / v19 Y:1.0 / (*&v198.b - 2)];
  [v11 translateByX:-1.0 Y:-1.0];
  v187 = *(v6 + 5304);
  v17 = *(v6 + 5312);
  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  v19 = *&v198.a - 2;
  if (__OFSUB__(*&v198.a, 2))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v186 = v17;
  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  v17 = (*&v198.b - 2);
  if (__OFSUB__(*&v198.b, 2))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
    goto LABEL_8;
  }

  v18 = &v195;
  if (a3)
  {
    *&v195.a = a3;
    sub_1B15DE8DC(&v195);
    goto LABEL_15;
  }

  LOBYTE(v198.a) = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &v198);
  v12 = *&v198.a;
  v13 = *&v198.b;
  if (qword_1EDB30310 != -1)
  {
    goto LABEL_101;
  }

LABEL_8:
  v184 = xmmword_1EDB30318;
  v185 = *&qword_1EDB30328;
  v204.origin.x = 0.0;
  v204.origin.y = 0.0;
  v204.size.width = v12;
  v204.size.height = v13;
  MinX = CGRectGetMinX(v204);
  v205.origin.x = 0.0;
  v205.origin.y = 0.0;
  v205.size.width = v12;
  v205.size.height = v13;
  MinY = CGRectGetMinY(v205);
  v198.a = 1.0;
  v198.b = 0.0;
  v198.c = 0.0;
  v198.d = 1.0;
  v198.tx = 0.0;
  v198.ty = 0.0;
  CGAffineTransformTranslate(&v195, &v198, MinX, MinY);
  tx = v195.tx;
  ty = v195.ty;
  v24 = *&v18->a;
  v182 = *&v18->c;
  v183 = v24;
  v206.origin.x = 0.0;
  v206.origin.y = 0.0;
  v206.size.width = v12;
  v206.size.height = v13;
  v25 = CGRectGetWidth(v206);
  v207.origin.x = 0.0;
  v207.origin.y = 0.0;
  v207.size.width = v12;
  v207.size.height = v13;
  Height = CGRectGetHeight(v207);
  v27 = v182;
  *&v18[3].a = v183;
  *&v18[3].c = v27;
  v198.tx = tx;
  v198.ty = ty;
  CGAffineTransformScale(&v195, &v198, v25, Height);
  v28 = *&v18->a;
  v182 = *&v18->c;
  v183 = v28;
  v181 = *&v18->tx;
  if (a2)
  {
    CGImage = RBImageMakeCGImage();
    v31 = v30;
  }

  else
  {
    v32 = a1[4];
    v33 = a1[5];
    v34 = a1[6];
    *&v18[3].tx = a1[3];
    *&v18[4].a = v32;
    *&v18[4].c = v33;
    *&v18[4].tx = v34;
    v35 = a1[2];
    *&v18[3].a = a1[1];
    *&v18[3].c = v35;
    if (v200 < 0)
    {
      sub_1B15CB4C4(a1, 0);
      sub_1B15DE844(&v198, &v195);
    }

    else
    {
      v180[1] = v11;
      v36 = v199;
      sub_1B15CB4C4(a1, 0);
      sub_1B15DE844(&v198, &v195);
    }

    swift_unknownObjectRetain();

    CGImage = RBImageMakeMTLTexture2();
    v31 = v37;
    swift_unknownObjectRelease();
    sub_1B15C71A8(a1, 0);
  }

  LOBYTE(v189) = 1;
  LODWORD(v195.a) = CGImage;
  v195.b = v31;
  *&v18->c = 0u;
  *&v18->tx = 0u;
  v196 = 1;
  v38 = v182;
  *&v18[1].b = v183;
  *&v18[1].d = v38;
  *&v18[1].ty = v181;
  v39 = v185;
  *&v18[2].b = v184;
  *&v18[2].d = v39;
  v197 = 1;
  sub_1B15DE8C8(&v195);
LABEL_15:
  v40 = *&v18[2].c;
  *&v18[5].a = *&v18[2].a;
  *&v18[5].c = v40;
  *&v18[5].tx = *&v18[2].tx;
  v41 = *&v18[1].a;
  *&v18[3].tx = *&v18->tx;
  *&v18[4].a = v41;
  v42 = *&v18[1].tx;
  *&v18[4].c = *&v18[1].c;
  *&v18[4].tx = v42;
  v43 = *&v18->c;
  *&v18[3].a = *&v18->a;
  *&v18[3].c = v43;
  v44 = v17;
  v45 = a3;
  v46 = v186;
  [v186 setRect_];
  v47 = *&v18[5].c;
  *&v18[2].a = *&v18[5].a;
  *&v18[2].c = v47;
  *&v18[2].tx = *&v18[5].tx;
  v48 = *&v18[4].a;
  *&v18->tx = *&v18[3].tx;
  *&v18[1].a = v48;
  v49 = *&v18[4].tx;
  *&v18[1].c = *&v18[4].c;
  *&v18[1].tx = v49;
  v50 = *&v18[3].c;
  *&v18->a = *&v18[3].a;
  *&v18->c = v50;
  v51 = sub_1B15DE710(&v195);
  v52 = sub_1B15D256C(&v195);
  if (v51 <= 1)
  {
    v61 = v187;
    if (!v51)
    {
      LODWORD(v53) = *v52;
      LODWORD(v54) = *(v52 + 1);
      LODWORD(v55) = *(v52 + 2);
      LODWORD(v56) = *(v52 + 3);
      [v187 setColor:*(v52 + 4) colorSpace:{v53, v54, v55, v56}];
LABEL_48:
      v76 = v188;
      goto LABEL_49;
    }

    v99 = *v52;
    v100 = *(*v52 + 16);
    if (v100 >> 59)
    {
      goto LABEL_113;
    }

    v102 = v52[1];
    v101 = v52[2];
    v104 = v52[3];
    v103 = v52[4];
    v105 = *(v52 + 10);
    v106 = v187;
    LODWORD(v185) = v105;
    if ((16 * v100) >= 1025)
    {
      sub_1B15DE7D8(&v198, &v189);
      v174 = v106;
      sub_1B15DE7D8(&v198, &v189);
      v175 = v174;
      sub_1B15DE7D8(&v198, &v189);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v173 = swift_slowAlloc();
        v88 = v175;
        sub_1B15DE7D8(&v198, &v189);
        sub_1B160E574(v173, v100, v99, v88, v99, v102, v101, v104, v103);
        goto LABEL_106;
      }
    }

    else
    {
      sub_1B15DE7D8(&v198, &v189);
      v107 = v106;
      sub_1B15DE7D8(&v198, &v189);
      v108 = v107;
      isStackAllocationSafe = sub_1B15DE7D8(&v198, &v189);
    }

    *&v184 = v180;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v111 = (v180 - v110);
    v88 = v106;
    if (v100 >= 0x81)
    {
      sub_1B15DE7D8(&v198, &v189);
      v179 = v88;
      sub_1B15DE7D8(&v198, &v189);
      v113 = swift_stdlib_isStackAllocationSafe();
      if ((v113 & 1) == 0)
      {
        v177 = swift_slowAlloc();
        v178 = v179;
        sub_1B15DE7D8(&v198, &v189);
        sub_1B160EF8C(v177, v100, v99, v111, v100, v178, v99);
        goto LABEL_111;
      }
    }

    else
    {
      sub_1B15DE7D8(&v198, &v189);
      v112 = v88;
      v113 = sub_1B15DE7D8(&v198, &v189);
    }

    MEMORY[0x1EEE9AC00](v113);
    v115 = v180 - v114;
    if (v100)
    {
      if (v100 > 7)
      {
        v116 = 0;
        v149 = v99 + 32;
        v150 = &v111[4 * v100];
        v151 = &v115[8 * v100];
        v152 = v99 + 40 * v100 + 32;
        v154 = v111 < v152 && v149 < v150;
        v156 = v115 < v152 && v149 < v151;
        if ((v115 >= v150 || v111 >= v151) && !v154 && !v156)
        {
          v116 = v100 & 0x7FFFFFFFFFFFFFCLL;
          v158 = v100 & 0x7FFFFFFFFFFFFFCLL;
          v159 = v115;
          v160 = v111;
          do
          {
            v162 = *v149;
            v161 = *(v149 + 16);
            v164 = *(v149 + 96);
            v163 = *(v149 + 112);
            v165 = *(v149 + 80);
            v166 = vextq_s8(v165, *(v149 + 128), 8uLL);
            v165.f64[1] = *(v149 + 120);
            v167 = *(v149 + 32);
            *(&v163 + 1) = *(v149 + 152);
            v162.f64[1] = *(v149 + 40);
            *(&v167 + 1) = *(v149 + 72);
            v209.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v149, *(v149 + 48), 8uLL)), v166);
            v168 = vcvt_f32_f64(v162);
            v169 = vextq_s8(v164, *(v149 + 144), 8uLL);
            v164.f64[1] = *(v149 + 136);
            v170 = vextq_s8(v161, *(v149 + 64), 8uLL);
            v161.f64[1] = *(v149 + 56);
            v209.val[0] = vcvt_hight_f32_f64(v168, v165);
            v209.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v170), v169);
            v209.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v161), v164);
            vst4q_f32(v160, v209);
            v160 += 16;
            *v159 = v167;
            *(v159 + 1) = v163;
            v159 += 32;
            v149 += 160;
            v158 -= 4;
          }

          while (v158);
          if (v100 == v116)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        v116 = 0;
      }

      v117 = v100 - v116;
      v118 = &v115[8 * v116];
      v119 = &v111[4 * v116];
      v120 = (v99 + 40 * v116 + 64);
      do
      {
        v121 = v120->f64[0];
        *v119++ = vcvt_hight_f32_f64(vcvt_f32_f64(v120[-2]), v120[-1]);
        *v118 = v121;
        v118 += 8;
        v120 = (v120 + 40);
        --v117;
      }

      while (v117);
    }

LABEL_45:
    [v88 setAxialGradientStartPoint:v100 endPoint:v111 stopCount:3 colors:v102 colorSpace:v101 locations:v104 flags:v103];
    goto LABEL_46;
  }

  v61 = v187;
  if (v51 == 2)
  {
    v77 = *v52;
    v78 = *(*v52 + 16);
    if (!(v78 >> 59))
    {
      v80 = v52[1];
      v79 = v52[2];
      v81 = v52[3];
      LODWORD(v185) = *(v52 + 8);
      v82 = v187;
      if ((16 * v78) < 1025)
      {
        sub_1B15DE7D8(&v198, &v189);
        v83 = v82;
        sub_1B15DE7D8(&v198, &v189);
        v84 = v83;
        v85 = sub_1B15DE7D8(&v198, &v189);
LABEL_26:
        *&v184 = v180;
        MEMORY[0x1EEE9AC00](v85);
        v87 = (v180 - v86);
        v88 = v82;
        if (v78 < 0x81)
        {
          sub_1B15DE7D8(&v198, &v189);
          v89 = v88;
          v90 = sub_1B15DE7D8(&v198, &v189);
          goto LABEL_28;
        }

        sub_1B15DE7D8(&v198, &v189);
        v176 = v88;
        sub_1B15DE7D8(&v198, &v189);
        v90 = swift_stdlib_isStackAllocationSafe();
        if (v90)
        {
LABEL_28:
          MEMORY[0x1EEE9AC00](v90);
          v92 = v180 - v91;
          if (v78)
          {
            if (v78 > 7)
            {
              v93 = 0;
              v127 = v77 + 32;
              v128 = &v87[4 * v78];
              v129 = &v92[8 * v78];
              v130 = v77 + 40 * v78 + 32;
              v132 = v87 < v130 && v127 < v128;
              v134 = v92 < v130 && v127 < v129;
              if ((v92 >= v128 || v87 >= v129) && !v132 && !v134)
              {
                v93 = v78 & 0x7FFFFFFFFFFFFFCLL;
                v136 = v78 & 0x7FFFFFFFFFFFFFCLL;
                v137 = v92;
                v138 = v87;
                do
                {
                  v140 = *v127;
                  v139 = *(v127 + 16);
                  v142 = *(v127 + 96);
                  v141 = *(v127 + 112);
                  v143 = *(v127 + 80);
                  v144 = vextq_s8(v143, *(v127 + 128), 8uLL);
                  v143.f64[1] = *(v127 + 120);
                  v145 = *(v127 + 32);
                  *(&v141 + 1) = *(v127 + 152);
                  v140.f64[1] = *(v127 + 40);
                  *(&v145 + 1) = *(v127 + 72);
                  v208.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v127, *(v127 + 48), 8uLL)), v144);
                  v146 = vcvt_f32_f64(v140);
                  v147 = vextq_s8(v142, *(v127 + 144), 8uLL);
                  v142.f64[1] = *(v127 + 136);
                  v148 = vextq_s8(v139, *(v127 + 64), 8uLL);
                  v139.f64[1] = *(v127 + 56);
                  v208.val[0] = vcvt_hight_f32_f64(v146, v143);
                  v208.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v148), v147);
                  v208.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v139), v142);
                  vst4q_f32(v138, v208);
                  v138 += 16;
                  *v137 = v145;
                  *(v137 + 1) = v141;
                  v137 += 32;
                  v127 += 160;
                  v136 -= 4;
                }

                while (v136);
                if (v78 == v93)
                {
                  goto LABEL_33;
                }
              }
            }

            else
            {
              v93 = 0;
            }

            v94 = v78 - v93;
            v95 = &v92[8 * v93];
            v96 = &v87[4 * v93];
            v97 = (v77 + 40 * v93 + 64);
            do
            {
              v98 = v97->f64[0];
              *v96++ = vcvt_hight_f32_f64(vcvt_f32_f64(v97[-2]), v97[-1]);
              *v95 = v98;
              v95 += 8;
              v97 = (v97 + 40);
              --v94;
            }

            while (v94);
          }

LABEL_33:
          [v88 setConicGradientCenter:v78 angle:v87 stopCount:v80 colors:v79 locations:v81 flags:?];
LABEL_46:

          sub_1B15DE784(&v198);
          sub_1B15DE784(&v198);
LABEL_47:

          sub_1B15DE784(&v198);
          sub_1B15DE784(&v198);

          sub_1B15DE784(&v198);
          goto LABEL_48;
        }

        v177 = swift_slowAlloc();
        v178 = v176;
        sub_1B15DE7D8(&v198, &v189);
        sub_1B160F120(v177, v78, v77, v87, v78, v178, v77);
LABEL_111:
        MEMORY[0x1B2730CA0](v177, -1, -1);

        sub_1B15DE784(&v198);
        sub_1B15DE784(&v198);

        sub_1B15DE784(&v198);
        sub_1B15DE784(&v198);

        sub_1B15DE784(&v198);
        v76 = v188;
        v46 = v186;
        v61 = v187;
        goto LABEL_49;
      }

      sub_1B15DE7D8(&v198, &v189);
      v171 = v82;
      sub_1B15DE7D8(&v198, &v189);
      v172 = v171;
      sub_1B15DE7D8(&v198, &v189);
      v85 = swift_stdlib_isStackAllocationSafe();
      if (v85)
      {
        goto LABEL_26;
      }

      v173 = swift_slowAlloc();
      v88 = v172;
      sub_1B15DE7D8(&v198, &v189);
      sub_1B160E8B0(v173, v78, v77, v88, v77, v80, v79, v81);
LABEL_106:
      MEMORY[0x1B2730CA0](v173, -1, -1);
      goto LABEL_47;
    }

    __break(1u);
LABEL_113:
    __break(1u);
  }

  if (v51 != 3)
  {
    [v187 setShader:*v52 bounds:0 flags:0];
    goto LABEL_48;
  }

  v62 = *v52;
  v63 = *(v52 + 1);
  v64 = *(v52 + 8);
  v66 = *(v52 + 9);
  v65 = *(v52 + 10);
  v68 = *(v52 + 11);
  v67 = *(v52 + 12);
  v69 = v52[13];
  v70 = v52[14];
  v71 = v52[15];
  v72 = v52[16];
  *&v57 = v69;
  *&v58 = v70;
  *&v59 = v71;
  *&v60 = v72;
  v73 = *(v52 + 34);
  v74 = *(v52 + 35);
  if (v52[6])
  {
    v189 = *(v52 + 7);
    v190 = v64;
    v191 = v66;
    v192 = v65;
    v193 = v68;
    v194 = v67;
    *&v69 = v69;
    *&v70 = v70;
    *&v71 = v71;
    *&v72 = v72;
    [v187 setRBImage:v62 transform:v63 interpolation:&v189 tintColor:v73 colorSpace:3 flags:{v74, v69, v70, v71, v72}];
  }

  else
  {
    v123 = v52[4];
    v124 = v52[5];
    v125 = v52[2];
    v126 = v52[3];
    v189 = *(v52 + 7);
    v190 = v64;
    v191 = v66;
    v192 = v65;
    v193 = v68;
    v194 = v67;
    [v187 setTiledRBImage:v62 transform:v63 sourceRect:&v189 interpolation:v73 tintColor:3 colorSpace:v74 flags:{v125, v126, v123, v124, v57, v58, v59, v60}];
  }

  v76 = v188;
LABEL_49:
  *&v75 = a6;
  [v11 drawShape:v46 fill:v61 alpha:v76 blendMode:v75];
  [v46 setRenderingMode_];
  sub_1B15DE784(&v198);
  return [v11 restore];
}

id sub_1B15DC964(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1B1619D68();
  v7 = [objc_opt_self() filterWithName_];

  if (v7)
  {
    [a1 argumentAtIndex_];
    v8 = 0;
    if (v22 == 1 && v24 == 1 && !v23)
    {
      v8 = sub_1B161A018();
    }

    v9 = sub_1B1619D68();
    [v7 setValue:v8 forKey:v9];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v10 = 0;
    if (v22 == 1 && v24 == 1 && !v23)
    {
      v10 = sub_1B161A018();
    }

    v11 = sub_1B1619D68();
    [v7 setValue:v10 forKey:v11];
    swift_unknownObjectRelease();

    v12 = sub_1B160E208(2);
    v13 = sub_1B1619D68();
    [v7 setValue:v12 forKey:v13];

    [a1 argumentAtIndex_];
    v14 = 0;
    if (v22 == 1 && v24 == 1 && !v23)
    {
      v14 = sub_1B161A018();
    }

    v15 = sub_1B1619D68();
    [v7 setValue:v14 forKey:v15];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v16 = 0;
    if (v22 == 1 && v24 == 1 && !v23)
    {
      v16 = sub_1B161A018();
    }

    v17 = sub_1B1619D68();
    [v7 setValue:v16 forKey:v17];
    swift_unknownObjectRelease();

    v18 = sub_1B1612A10(a2, a3 & 1);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1B1619D68();
      [v7 setValue:v19 forKey:v20];
    }
  }

  return v7;
}

void sub_1B15DCCF0(float32x4_t *a1, unint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x1E69E9840];
  v19 = a2 & 1;
  aBlock.i8[0] = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &aBlock);
  v20 = aBlock;
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  Width = CGRectGetWidth(v75);
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  Height = CGRectGetHeight(v76);
  v25.f64[0] = 1.0 - (1.0 - *(a11 + 3096)) * a9;
  v25.f64[1] = *(a11 + 3104);
  v61 = v25;
  v26 = *(a11 + 3120);
  v59 = *(a11 + 3112);
  if (qword_1EDB302F8 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDB30300;
  v28 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
  v29 = sub_1B1619D68();
  v30 = [v28 initWithLibrary:v27 function:v29];

  v31 = *(a11 + 3088);
  aBlock.i8[0] = v19;
  sub_1B1612DC8(a1, v19, &aBlock);
  v32 = aBlock.i64[0] - 2;
  if (__OFSUB__(aBlock.i64[0], 2))
  {
    __break(1u);
  }

  v33 = HIDWORD(a2);
  *&v34.f64[0] = v59;
  v34.f64[1] = 1.0 - (1.0 - v26) * a9;
  v35 = MinX * v20.i64[0];
  v36 = MinY * v20.i64[1];
  v37 = Width * v20.i64[0];
  v38 = Height * v20.i64[1];
  v39 = vcvt_f32_f64(v34);
  aBlock.i8[0] = a2 & 1;
  sub_1B1612DC8(a1, a2 & 1, &aBlock);
  v40 = v31 * (v32 / CGRectGetWidth(*(a11 + 5344)));
  aBlock.f32[0] = v40;
  [v30 setArgumentBytes:&aBlock atIndex:0 type:1 count:1 flags:0];
  *aBlock.f32 = vcvt_f32_f64(v61);
  [v30 setArgumentBytes:&aBlock atIndex:1 type:2 count:1 flags:0];
  *aBlock.f32 = v39;
  [v30 setArgumentBytes:&aBlock atIndex:2 type:2 count:1 flags:0];
  v41 = a7 * -2.0;
  aBlock.f32[0] = v41;
  [v30 setArgumentBytes:&aBlock atIndex:3 type:1 count:1 flags:0];
  aBlock.i32[0] = 1056964608;
  [v30 setArgumentBytes:&aBlock atIndex:4 type:1 count:1 flags:0];
  v77.origin.x = v35;
  v77.origin.y = v36;
  v77.size.width = v37;
  v77.size.height = v38;
  v63 = CGRectGetMinX(v77);
  v78.origin.x = v35;
  v78.origin.y = v36;
  v78.size.width = v37;
  v78.size.height = v38;
  v62 = CGRectGetMinY(v78);
  v79.origin.x = v35;
  v79.origin.y = v36;
  v79.size.width = v37;
  v79.size.height = v38;
  v60 = CGRectGetWidth(v79);
  v80.origin.x = v35;
  v80.origin.y = v36;
  v80.size.width = v37;
  v80.size.height = v38;
  v42 = CGRectGetHeight(v80);
  v43.f64[0] = v60;
  v43.f64[1] = v42;
  v44.f64[0] = v63;
  v44.f64[1] = v62;
  aBlock = vcvt_hight_f32_f64(vcvt_f32_f64(v44), v43);
  [v30 setArgumentBytes:&aBlock atIndex:5 type:4 count:1 flags:0];
  if (a2)
  {
    CGImage = RBImageMakeCGImage();
    v47 = v46;
  }

  else
  {
    v48 = a1[4];
    v49 = a1[5];
    v50 = a1[6];
    v68 = a1[3];
    v69 = v48;
    v70 = v49;
    v71 = v50;
    v51 = a1[2];
    aBlock = a1[1];
    v67 = v51;
    if (v50.i64[1] < 0)
    {
      sub_1B15CB4C4(a1, 0);
      sub_1B15DE844(&aBlock, v65);
    }

    else
    {
      v52 = v70.i64[0];
      sub_1B15CB4C4(a1, 0);
      sub_1B15DE844(&aBlock, v65);
    }

    swift_unknownObjectRetain();

    CGImage = RBImageMakeMTLTexture2();
    v47 = v53;
    swift_unknownObjectRelease();
    sub_1B15C71A8(a1, 0);
  }

  aBlock.i32[0] = CGImage;
  aBlock.i64[1] = v47;
  [v30 setArgumentBytes:&aBlock atIndex:6 type:7 count:1 flags:0];
  v54 = swift_allocObject();
  *(v54 + 16) = a1;
  v55 = a2 & 1;
  *(v54 + 24) = v55;
  *(v54 + 28) = v33;
  *(v54 + 32) = a7;
  v68.i64[0] = sub_1B15DE8A0;
  v68.i64[1] = v54;
  aBlock.i64[0] = MEMORY[0x1E69E9820];
  aBlock.i64[1] = 1107296256;
  v67.i64[0] = sub_1B15F7FB4;
  v67.i64[1] = &block_descriptor_1;
  v56 = _Block_copy(&aBlock);
  sub_1B15CB4C4(a1, v55);
  sub_1B15DE8B8(sub_1B15DE8A0);

  [v30 setCIFilterProvider_];
  _Block_release(v56);

  v57 = v30;
  aBlock.i8[0] = v55;
  sub_1B15DBB60(a1, v55, v30, 0, v58, 1.0);
}

id sub_1B15DD304(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1B1619D68();
  v7 = [objc_opt_self() filterWithName_];

  if (v7)
  {
    [a1 argumentAtIndex_];
    v8 = 0;
    if (v24 == 1 && v26 == 1 && !v25)
    {
      v8 = sub_1B161A018();
    }

    v9 = sub_1B1619D68();
    [v7 setValue:v8 forKey:v9];
    swift_unknownObjectRelease();

    v10 = sub_1B160E118(1);
    v11 = sub_1B1619D68();
    [v7 setValue:v10 forKey:v11];

    v12 = sub_1B160E118(2);
    v13 = sub_1B1619D68();
    [v7 setValue:v12 forKey:v13];

    [a1 argumentAtIndex_];
    v14 = 0;
    if (v24 == 1 && v26 == 1 && !v25)
    {
      v14 = sub_1B161A018();
    }

    v15 = sub_1B1619D68();
    [v7 setValue:v14 forKey:v15];
    swift_unknownObjectRelease();

    [a1 argumentAtIndex_];
    v16 = 0;
    if (v24 == 1 && v26 == 1 && !v25)
    {
      v16 = sub_1B161A018();
    }

    v17 = sub_1B1619D68();
    [v7 setValue:v16 forKey:v17];
    swift_unknownObjectRelease();

    v18 = sub_1B160E2B0(5, 1.0);
    v19 = sub_1B1619D68();
    [v7 setValue:v18 forKey:v19];

    v20 = sub_1B1612A10(a2, a3 & 1);
    if (v20)
    {
      v21 = v20;
      v22 = sub_1B1619D68();
      [v7 setValue:v21 forKey:v22];
    }
  }

  return v7;
}

void sub_1B15DD690(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v98 = a4;
  v97 = a3;
  v111 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  if (!v5)
  {
    return;
  }

  v9 = a1[4];
  v10 = a1[5];
  v96 = a1 + 4;
  v11 = a1[6];
  v93 = v9;
  v12 = v10;
  v13 = v11;
  [a2 save];
  [a2 drawDisplayList_];
  [a2 restore];
  if (v5 != 1)
  {
    v90 = v13;
    v91 = v12;
    _D8 = -1.0 / a5 * 0.5 + 0.5;
    __asm { FCVT            H0, D8 }

    if (_H0 == COERCE_SHORT_FLOAT(31744))
    {
      _H0 = COERCE_SHORT_FLOAT(31744) + COERCE_SHORT_FLOAT(0);
    }

    else
    {
      LOWORD(_H0) = ((COERCE__INT16(_H0 + COERCE_SHORT_FLOAT(0)) >> 15) | 1) + COERCE__INT16(_H0 + COERCE_SHORT_FLOAT(0));
    }

    __asm { FCVT            D9, H0 }

    v92 = a1;

    v21 = 1;
    v95 = xmmword_1B161CC80;
    v94 = v5;
    while (1)
    {
      v22 = &v96[3 * v21];
      v23 = v22[1];
      v24 = v22[2];
      v25 = *v22;
      v26 = v23;
      v27 = v24;
      [a2 save];
      [a2 beginLayer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
      inited = swift_initStackObject();
      *(inited + 16) = v95;
      if (qword_1EDB2F420 != -1)
      {
        swift_once();
      }

      v29 = *algn_1EB752D50;
      *(inited + 32) = xmmword_1EB752D40;
      *(inited + 48) = v29;
      *(inited + 64) = _D8;
      if (qword_1EDB30338 != -1)
      {
        swift_once();
      }

      v30 = *&qword_1EDB30350;
      *(inited + 72) = xmmword_1EDB30340;
      *(inited + 88) = v30;
      *(inited + 104) = _D9;
      v31 = *(inited + 16);
      if (v31 >> 59)
      {
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v99 = v27;
      v100 = v26;
      v101 = v25;
      v32 = a2;
      v33 = v97;
      v34 = v98;
      v35 = v32;
      v36 = v33;
      isStackAllocationSafe = v34;
      v103 = v36;
      v102 = isStackAllocationSafe;
      if ((16 * v31) >= 1025)
      {
        v80 = isStackAllocationSafe;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v81 = swift_slowAlloc();
          swift_bridgeObjectRetain_n();
          sub_1B160EBDC(v81, v31, inited, 0, inited, 0, v35, v36, v80);
          MEMORY[0x1B2730CA0](v81, -1, -1);
LABEL_54:
          swift_bridgeObjectRelease_n();
          goto LABEL_24;
        }
      }

      v38 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v40 = (&v85 - v39);
      v41 = *(inited + 16);
      if (v41 >> 60)
      {
        goto LABEL_57;
      }

      if ((8 * v41) >= 1025)
      {
        v38 = swift_stdlib_isStackAllocationSafe();
        if (!v38)
        {
          v88 = swift_slowAlloc();
          swift_bridgeObjectRetain_n();
          v89 = v35;
          v82 = v103;
          v86 = v102;
          v87 = v82;
          v84 = v82;
          v83 = v88;
          sub_1B160F2B0(v88, v41, inited, v40, v31, 0, inited, 0, v89, v84, v86);
          MEMORY[0x1B2730CA0](v83, -1, -1);
          goto LABEL_54;
        }

        v41 = *(inited + 16);
      }

      MEMORY[0x1EEE9AC00](v38);
      v43 = &v85 - v42;
      if (v41)
      {
        if (v41 > 3)
        {
          v44 = 0;
          v58 = inited + 32;
          v59 = &v40[4 * v41];
          v60 = &v43[8 * v41];
          v61 = inited + 40 * v41 + 32;
          v63 = v40 < v61 && v58 < v59;
          v65 = v43 < v61 && v58 < v60;
          if ((v43 >= v59 || v40 >= v60) && !v63 && !v65)
          {
            v44 = v41 & 0x7FFFFFFFFFFFFFFCLL;
            v67 = v41 & 0x7FFFFFFFFFFFFFFCLL;
            v68 = v43;
            v69 = v40;
            do
            {
              v71 = *v58;
              v70 = *(v58 + 16);
              v73 = *(v58 + 96);
              v72 = *(v58 + 112);
              v74 = *(v58 + 80);
              v75 = vextq_s8(v74, *(v58 + 128), 8uLL);
              v74.f64[1] = *(v58 + 120);
              v76 = *(v58 + 32);
              *(&v72 + 1) = *(v58 + 152);
              v71.f64[1] = *(v58 + 40);
              *(&v76 + 1) = *(v58 + 72);
              v113.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v58, *(v58 + 48), 8uLL)), v75);
              v77 = vcvt_f32_f64(v71);
              v78 = vextq_s8(v73, *(v58 + 144), 8uLL);
              v73.f64[1] = *(v58 + 136);
              v79 = vextq_s8(v70, *(v58 + 64), 8uLL);
              v70.f64[1] = *(v58 + 56);
              v113.val[0] = vcvt_hight_f32_f64(v77, v74);
              v113.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v79), v78);
              v113.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v73);
              vst4q_f32(v69, v113);
              v69 += 16;
              *v68 = v76;
              *(v68 + 1) = v72;
              v68 += 32;
              v58 += 160;
              v67 -= 4;
            }

            while (v67);
            if (v41 == v44)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v44 = 0;
        }

        v45 = v41 - v44;
        v46 = &v43[8 * v44];
        v47 = &v40[4 * v44];
        v48 = (inited + 40 * v44 + 64);
        do
        {
          v49 = v48->f64[0];
          *v47++ = vcvt_hight_f32_f64(vcvt_f32_f64(v48[-2]), v48[-1]);
          *v46 = v49;
          v46 += 8;
          v48 = (v48 + 40);
          --v45;
        }

        while (v45);
      }

LABEL_23:
      v104[0] = 0;
      v105 = 0x3F80000000000000;
      v106 = v41;
      v107 = v40;
      v108 = 3;
      v109 = v43;
      v110 = 0;
      [v35 addStyle:1 data:v104];
LABEL_24:
      v50 = v94;
      v51 = v101;
      v52 = v100;
      ++v21;

      v53 = v102;

      v54 = v103;
      LODWORD(v55) = 1.0;
      [v35 drawLayerByReference:v51 alpha:0 blendMode:2 flags:v55];
      LODWORD(v56) = 1.0;
      [v35 clipLayerWithAlpha:0 mode:v56];
      LODWORD(v57) = 1.0;
      [v35 drawLayerByReference:v51 alpha:0 blendMode:2 flags:v57];
      [v35 restore];

      if (v21 == v50)
      {

        return;
      }
    }
  }
}

id sub_1B15DDF08()
{
  v0 = sub_1B1619D68();
  v1 = [objc_opt_self() filterWithName_];

  if (v1)
  {
    v2 = sub_1B160E2B0(0, 1.0);
    v3 = sub_1B1619D68();
    [v1 setValue:v2 forKey:v3];
  }

  return v1;
}

double sub_1B15DDFDC()
{
  v15 = 0x3F80000000000000;
  v18 = 0x3F80000000000000;
  v14 = 0;
  v13 = 0;
  v17 = 0;
  v16 = 0;
  v20 = 0;
  v19 = 0;
  v12 = 1065353216;
  v21 = 0;
  v22 = 1065353216;
  if (qword_1EB752570 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_1EB7579B0;
  v11[3] = unk_1EB7579C0;
  v11[4] = xmmword_1EB7579D0;
  v11[0] = xmmword_1EB757990;
  v11[1] = *&qword_1EB7579A0;
  sub_1B15D737C(v11, &v12, &v1, *&qword_1EB7579A0);
  sub_1B15D6C48(v2, 1.0, 0.2);
  sub_1B15D6DF4(v3, 1.0);
  sub_1B15D6D10(v4, 0.0);
  if (qword_1EB752578 != -1)
  {
    swift_once();
  }

  v10[2] = xmmword_1EB757A00;
  v10[3] = unk_1EB757A10;
  v10[4] = xmmword_1EB757A20;
  v10[0] = xmmword_1EB7579E0;
  v10[1] = *algn_1EB7579F0;
  sub_1B15D737C(v10, v4, &v5, *algn_1EB7579F0);
  xmmword_1EB757A50 = v7;
  unk_1EB757A60 = v8;
  xmmword_1EB757A70 = v9;
  result = *&v6;
  xmmword_1EB757A30 = v5;
  unk_1EB757A40 = v6;
  return result;
}

double sub_1B15DE15C()
{
  v15 = 0x3F80000000000000;
  v18 = 0x3F80000000000000;
  v14 = 0;
  v13 = 0;
  v17 = 0;
  v16 = 0;
  v20 = 0;
  v19 = 0;
  v12 = 1065353216;
  v21 = 0;
  v22 = 1065353216;
  if (qword_1EB752570 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_1EB7579B0;
  v11[3] = unk_1EB7579C0;
  v11[4] = xmmword_1EB7579D0;
  v11[0] = xmmword_1EB757990;
  v11[1] = *&qword_1EB7579A0;
  sub_1B15D737C(v11, &v12, &v1, *&qword_1EB7579A0);
  sub_1B15D6C48(v2, 0.3, 0.05);
  sub_1B15D6DF4(v3, 0.8);
  sub_1B15D6D10(v4, 0.0);
  if (qword_1EB752578 != -1)
  {
    swift_once();
  }

  v10[2] = xmmword_1EB757A00;
  v10[3] = unk_1EB757A10;
  v10[4] = xmmword_1EB757A20;
  v10[0] = xmmword_1EB7579E0;
  v10[1] = *algn_1EB7579F0;
  sub_1B15D737C(v10, v4, &v5, *algn_1EB7579F0);
  xmmword_1EB757AA0 = v7;
  unk_1EB757AB0 = v8;
  xmmword_1EB757AC0 = v9;
  result = *&v6;
  xmmword_1EB757A80 = v5;
  *algn_1EB757A90 = v6;
  return result;
}

uint64_t sub_1B15DE2EC(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1B15DE360(char *a1, void *a2, float a3, float a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (qword_1EDB302F8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB30300;
  v9 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
  v10 = sub_1B1619D68();
  v11 = [v9 initWithLibrary:v8 function:v10];

  *v19 = a3;
  [v11 setArgumentBytes:v19 atIndex:0 type:1 count:1 flags:0];
  *v19 = a4;
  [v11 setArgumentBytes:v19 atIndex:1 type:1 count:1 flags:0];
  if ((v7 & 1) == 0)
  {

LABEL_9:
    if (qword_1EB752590 != -1)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v12 = sub_1B161A448();

  if (v12)
  {
    goto LABEL_9;
  }

  if (qword_1EB752598 != -1)
  {
    swift_once();
  }

  for (i = &xmmword_1EB757A80; ; i = &xmmword_1EB757A30)
  {
    v14 = i[3];
    v19[3] = i[2];
    v19[4] = v14;
    v19[5] = i[4];
    v15 = i[1];
    v19[1] = *i;
    v19[2] = v15;
    sub_1B15D72BC();
    if (!*(v16 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = v16;
    v19[0] = *(v16 + 32);
    [v11 setArgumentBytes:v19 atIndex:2 type:4 count:1 flags:0];
    if (*(v17 + 16) < 2uLL)
    {
      goto LABEL_17;
    }

    v19[0] = *(v17 + 48);
    [v11 setArgumentBytes:v19 atIndex:3 type:4 count:1 flags:0];
    if (*(v17 + 16) >= 3uLL)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_10:
    ;
  }

  v19[0] = *(v17 + 64);
  [v11 setArgumentBytes:v19 atIndex:4 type:4 count:1 flags:0];
  if (*(v17 + 16) < 4uLL)
  {
    goto LABEL_19;
  }

  v18 = *(v17 + 80);

  v19[0] = v18;
  [v11 setArgumentBytes:v19 atIndex:5 type:4 count:1 flags:0];
  [a2 addFilterLayerWithShader:v11 border:0 layerBorder:0 bounds:0.0 flags:{0.0, 0.0, 0.0}];
}

void sub_1B15DE770(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0xFE) == 4)
  {
  }
}

uint64_t sub_1B15DE8B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B15DE94C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B15DE9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1B15DEA08(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_1B15DEA80();
    v6 = v3;
    v7 = v2;
    v8 = sub_1B161A0E8();

    return v8 & 1;
  }

  return result;
}

unint64_t sub_1B15DEA80()
{
  result = qword_1EB752AB8;
  if (!qword_1EB752AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB752AB8);
  }

  return result;
}

uint64_t sub_1B15DEAD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7 - v2;
  v4 = sub_1B1619FC8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;

  sub_1B15DEF08(0, 0, v3, &unk_1B161D080, v5);
}

uint64_t sub_1B15DEBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B15DEC04, 0, 0);
}

uint64_t sub_1B15DEC04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B15DECC8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1B15DECC8()
{
  sub_1B1612C48();

  return MEMORY[0x1EEE6DFA0](sub_1B15DED38, 0, 0);
}

uint64_t sub_1B15DED60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B15DEE14;

  return sub_1B15DEBE4(a1, v4, v5, v6);
}

uint64_t sub_1B15DEE14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B15DEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00]();
  v10 = v24 - v9;
  sub_1B15DF1DC(a3, v24 - v9);
  v11 = sub_1B1619FC8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B15DF24C(v10);
  }

  else
  {
    sub_1B1619FB8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B1619F98();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B1619DE8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752AC0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1B15DF24C(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B15DF24C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752AC0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B15DF1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B15DF24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B15DF2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B15DF1DC(a3, v25 - v10);
  v12 = sub_1B1619FC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B15DF24C(v11);
  }

  else
  {
    sub_1B1619FB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1619F98();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1619DE8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B15DF24C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B15DF24C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B15DF574(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B15DF66C;

  return v6(a1);
}

uint64_t sub_1B15DF66C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B15DF764(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B15DF858;

  return v5(v2 + 32);
}

uint64_t sub_1B15DF858()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B15DF96C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B15DFB94;

  return sub_1B15DF764(a1, v4);
}

uint64_t sub_1B15DFA24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B15DEE14;

  return sub_1B15DF764(a1, v4);
}

uint64_t sub_1B15DFADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B15DFB94;

  return sub_1B15DF574(a1, v4);
}

id sub_1B15DFB9C(void *__src, uint64_t (*a2)(void))
{
  memcpy(v13, __src, sizeof(v13));
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 892);
  sub_1B15CDCE8(&v4[4]);
  os_unfair_lock_unlock(v4 + 892);
  result = v12;
  if (!v12)
  {
    v6 = a2();
    v8 = v7;

    v10 = [v6 moveContents];
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock(v4 + 892);
    sub_1B15CF50C(&v4[4]);
    os_unfair_lock_unlock(v4 + 892);
    return v10;
  }

  return result;
}

id sub_1B15DFCA8(void *__src, uint64_t (*a2)(void))
{
  memcpy(v13, __src, sizeof(v13));
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 892);
  sub_1B15CC928(&v4[4]);
  os_unfair_lock_unlock(v4 + 892);
  result = v12;
  if (!v12)
  {
    v6 = a2();
    v8 = v7;

    v10 = [v6 moveContents];
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock(v4 + 892);
    sub_1B15CEFA8(&v4[4]);
    os_unfair_lock_unlock(v4 + 892);
    return v10;
  }

  return result;
}

uint64_t sub_1B15DFDB4()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_13IconRendering16DisplayListCacheC016ChicletHighlightB033_8C3D96069ED48E7EC5C7271A67FA1501LLVSg(uint64_t a1)
{
  v1 = *(a1 + 1768);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B15DFE0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 3552))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 1768);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B15DFE68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 3544) = 0;
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
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 3552) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 3552) = 0;
    }

    if (a2)
    {
      *(result + 1768) = a2;
    }
  }

  return result;
}

uint64_t sub_1B15E0270(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1763))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 504);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B15E02CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1752) = 0;
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
    *(result + 1762) = 0;
    *(result + 1760) = 0;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1763) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1763) = 0;
    }

    if (a2)
    {
      *(result + 504) = a2;
    }
  }

  return result;
}

void *FinalizedIcon.Configuration.init(icon:style:parametersOverride:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6[7];
  v42 = v6[6];
  v43 = v7;
  v8 = v6[9];
  v44 = v6[8];
  v45 = v8;
  v9 = v6[3];
  v38 = v6[2];
  v39 = v9;
  v10 = v6[5];
  v40 = v6[4];
  v41 = v10;
  v11 = v6[1];
  v36 = *v6;
  v37 = v11;
  sub_1B15C0D28(__src);
  memcpy(&v34[5], __src, 0x653uLL);
  v48[5] = v42;
  v48[6] = v43;
  v49 = v44;
  v50 = v45;
  v48[1] = v38;
  v48[2] = v39;
  v48[3] = v40;
  v48[4] = v41;
  v47 = v36;
  v48[0] = v37;
  v12 = v3[1];
  v27 = *v3;
  v28 = v12;
  v29 = v3[2];
  LOWORD(v30) = *(v3 + 24);
  sub_1B15C76B8(&v27, __dst);
  sub_1B15C927C(&v36);
  v48[2] = *&__dst[48];
  v48[1] = *&__dst[32];
  v48[5] = *&__dst[96];
  v48[6] = *&__dst[112];
  v49 = *&__dst[128];
  v50 = *&__dst[144];
  v48[3] = *&__dst[64];
  v48[4] = *&__dst[80];
  v47 = *__dst;
  v48[0] = *&__dst[16];
  if (*&__dst[8])
  {
    v13 = v47;
  }

  else
  {
    v13 = 7104878;
  }

  if (*(&v47 + 1))
  {
    v14 = *(&v47 + 1);
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v31 = *(&v48[4] + 8);
  v32 = *(&v48[5] + 8);
  v33 = BYTE8(v48[6]);
  v27 = *(v48 + 8);
  v28 = *(&v48[1] + 8);
  v29 = *(&v48[2] + 8);
  v30 = *(&v48[3] + 8);
  v15 = v49;

  sub_1B15C927C(&v47);
  v16 = *(&v49 + 1);
  v17 = v50;
  v18 = v48[0];
  v19 = v3[1];
  *(v35 + 7) = *v3;
  *(&v35[1] + 7) = v19;
  *(&v35[2] + 7) = v3[2];
  *(&v35[3] + 7) = *(v3 + 24);
  memcpy(__dst, &v34[5], sizeof(__dst));
  sub_1B15C1750(__dst, &qword_1EB752A78);
  memcpy(&v34[5], v25, 0x653uLL);
  *v5 = v13;
  *(v5 + 8) = v14;
  v20 = v32;
  *(v5 + 80) = v31;
  *(v5 + 96) = v20;
  *(v5 + 112) = v33;
  v21 = v28;
  *(v5 + 16) = v27;
  *(v5 + 32) = v21;
  v22 = v30;
  *(v5 + 48) = v29;
  *(v5 + 64) = v22;
  *(v5 + 120) = v15;
  *(v5 + 128) = v16;
  *(v5 + 136) = v17;
  *(v5 + 144) = v18;
  v23 = v35[1];
  *(v5 + 145) = v35[0];
  *(v5 + 161) = v23;
  *(v5 + 177) = v35[2];
  *(v5 + 186) = *(&v35[2] + 9);
  *(v5 + 202) = 0;
  return memcpy((v5 + 203), v34, 0x658uLL);
}

uint64_t FinalizedIcon.init(config:size:)(uint64_t a1)
{
  if (qword_1EDB2FBE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB32798;
  return sub_1B15C79C0(a1);
}

uint64_t sub_1B15E08AC()
{
  v0 = sub_1B1619D18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1619C98();
  __swift_allocate_value_buffer(v4, qword_1EB752AF8);
  __swift_project_value_buffer(v4, qword_1EB752AF8);
  if (qword_1EB7525A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB752AE0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B1619C78();
}

uint64_t FinalizedIcon.init(processing:at:deviceClass:appearance:renderingMode:for:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3[7];
  v54 = v3[6];
  v55 = v4;
  v5 = v3[9];
  v56 = v3[8];
  v57 = v5;
  v6 = v3[3];
  v50 = v3[2];
  v51 = v6;
  v7 = v3[5];
  v52 = v3[4];
  v53 = v7;
  v8 = v3[1];
  v48 = *v3;
  v49 = v8;
  v10 = *v9;
  v11 = v9[1];
  v27 = *v9;
  v12 = v9[2];
  v13 = v9[3];
  v14 = v9[4];
  v15 = *(v9 + 40);
  sub_1B15C7370(v16, &v28);
  v17 = v28;
  v26 = v28;
  sub_1B15CB0E4(v2, v58);
  LOBYTE(v2) = v58[0];
  sub_1B15C0D28(v58);
  memcpy(&__src[5], v58, 0x653uLL);
  __dst[6] = v54;
  __dst[7] = v55;
  __dst[8] = v56;
  __dst[9] = v57;
  __dst[2] = v50;
  __dst[3] = v51;
  __dst[4] = v52;
  __dst[5] = v53;
  __dst[0] = v48;
  __dst[1] = v49;
  LOBYTE(v59) = v17;
  BYTE1(v59) = v2;
  v18 = v2;
  *(&v59 + 1) = v10;
  *v60 = v11;
  *&v60[8] = v12;
  *&v60[16] = v13;
  *&v60[24] = v14;
  v60[32] = v15;
  v60[33] = 2;
  sub_1B15C76B8(&v59, &v28);
  sub_1B15C927C(&v48);
  *&v60[32] = v31;
  *&v60[16] = v30;
  *&v60[80] = v34;
  *&v60[96] = v35;
  v61 = v36;
  v62 = v37;
  *&v60[48] = v32;
  *&v60[64] = v33;
  v59 = v28;
  *v60 = v29;
  if (*(&v28 + 1))
  {
    v19 = v28;
  }

  else
  {
    v19 = 7104878;
  }

  if (*(&v28 + 1))
  {
    v20 = *(&v28 + 1);
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  v33 = *&v60[72];
  v34 = *&v60[88];
  LOBYTE(v35) = v60[104];
  v29 = *&v60[8];
  v30 = *&v60[24];
  v32 = *&v60[56];
  v31 = *&v60[40];
  v21 = v61;

  sub_1B15C927C(&v59);
  v22 = *(&v61 + 1);
  v23 = v62;
  v24 = v60[0];
  memcpy(__dst, &__src[5], 0x653uLL);
  sub_1B15C1750(__dst, &qword_1EB752A78);
  memcpy(&__src[5], v58, 0x653uLL);
  *&v28 = v19;
  *(&v28 + 1) = v20;
  *(&v35 + 1) = v21;
  *&v36 = v22;
  *(&v36 + 1) = v23;
  LOBYTE(v37) = v24;
  BYTE8(v37) = v26;
  BYTE9(v37) = v18;
  v38 = v27;
  v39 = v11;
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = 2;
  memcpy(v45, __src, sizeof(v45));
  return sub_1B15C79C0(&v28);
}

void *FinalizedIcon.Configuration.init(icon:deviceClass:appearance:renderingMode:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5[7];
  v49 = v5[6];
  v50 = v6;
  v7 = v5[9];
  v51 = v5[8];
  v52 = v7;
  v8 = v5[3];
  v45 = v5[2];
  v46 = v8;
  v9 = v5[5];
  v47 = v5[4];
  v48 = v9;
  v10 = v5[1];
  v43 = *v5;
  v44 = v10;
  v12 = *v11;
  v13 = v11[1];
  v32 = v13;
  v33 = *v11;
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = *(v11 + 40);
  sub_1B15C7370(v18, __src);
  v19 = __src[0];
  v31 = __src[0];
  sub_1B15CB0E4(v2, __dst);
  LOBYTE(v2) = __dst[0];
  v30 = __dst[0];
  sub_1B15C0D28(__src);
  memcpy(&v42[5], __src, 0x653uLL);
  v55[5] = v49;
  v55[6] = v50;
  v56 = v51;
  v57 = v52;
  v55[1] = v45;
  v55[2] = v46;
  v55[3] = v47;
  v55[4] = v48;
  v54 = v43;
  v55[0] = v44;
  LOBYTE(v35) = v19;
  BYTE1(v35) = v2;
  *(&v35 + 1) = v12;
  *&v36 = v13;
  *(&v36 + 1) = v14;
  *&v37 = v15;
  *(&v37 + 1) = v16;
  LOBYTE(v38) = v17;
  BYTE1(v38) = 2;
  sub_1B15C76B8(&v35, __dst);
  sub_1B15C927C(&v43);
  v55[2] = *&__dst[48];
  v55[1] = *&__dst[32];
  v55[5] = *&__dst[96];
  v55[6] = *&__dst[112];
  v56 = *&__dst[128];
  v57 = *&__dst[144];
  v55[3] = *&__dst[64];
  v55[4] = *&__dst[80];
  v54 = *__dst;
  v55[0] = *&__dst[16];
  if (*&__dst[8])
  {
    v20 = v54;
  }

  else
  {
    v20 = 7104878;
  }

  if (*(&v54 + 1))
  {
    v21 = *(&v54 + 1);
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  v39 = *(&v55[4] + 8);
  v40 = *(&v55[5] + 8);
  v41 = BYTE8(v55[6]);
  v35 = *(v55 + 8);
  v36 = *(&v55[1] + 8);
  v37 = *(&v55[2] + 8);
  v38 = *(&v55[3] + 8);
  v22 = v56;

  sub_1B15C927C(&v54);
  v23 = *(&v56 + 1);
  v24 = v57;
  v25 = v55[0];
  memcpy(__dst, &v42[5], sizeof(__dst));
  sub_1B15C1750(__dst, &qword_1EB752A78);
  memcpy(&v42[5], __src, 0x653uLL);
  *v4 = v20;
  *(v4 + 8) = v21;
  v26 = v40;
  *(v4 + 80) = v39;
  *(v4 + 96) = v26;
  *(v4 + 112) = v41;
  v27 = v36;
  *(v4 + 16) = v35;
  *(v4 + 32) = v27;
  v28 = v38;
  *(v4 + 48) = v37;
  *(v4 + 64) = v28;
  *(v4 + 120) = v22;
  *(v4 + 128) = v23;
  *(v4 + 136) = v24;
  *(v4 + 144) = v25;
  *(v4 + 152) = v31;
  *(v4 + 153) = v30;
  *(v4 + 160) = v33;
  *(v4 + 168) = v32;
  *(v4 + 176) = v14;
  *(v4 + 184) = v15;
  *(v4 + 192) = v16;
  *(v4 + 200) = v17;
  *(v4 + 201) = 2;
  return memcpy((v4 + 203), v42, 0x658uLL);
}

IconRendering::FinalizedIcon::ScaledSize __swiftcall FinalizedIcon.ScaledSize.init(pixels:scale:)(IconRendering::FinalizedIcon::Size pixels, Swift::Int scale)
{
  *v2 = *pixels.width;
  *(v2 + 16) = pixels.height;
  result.pixels = pixels;
  result.scale = scale;
  return result;
}

double sub_1B15E10C0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 96) >> 6;
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B161CC80;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    *(v6 + 48) = v4;
    *(v6 + 56) = v3;
    *(v6 + 64) = 0;
    *(v6 + 72) = v2;
    *(v6 + 80) = v1;
    *(v6 + 88) = v4;
    *(v6 + 96) = v3;
LABEL_7:
    *(v6 + 104) = 0x3FF0000000000000;
    v7 = 2;
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B161CC80;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    *(v6 + 48) = v4;
    *(v6 + 56) = v3;
    *(v6 + 64) = 0;
    v9 = *(v0 + 2);
    *(v6 + 88) = *(v0 + 3);
    *(v6 + 72) = v9;
    goto LABEL_7;
  }

  v6 = sub_1B15CF528();
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = 0.0;
    goto LABEL_22;
  }

LABEL_8:
  sub_1B15F6D3C();
  v8 = v10;
  v11 = v7 - 1;
  if (v7 != 1)
  {
    v12 = (v6 + 88);
    do
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v12 += 5;
      v16 = v15;
      if (v13 > v14)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      if (v17 <= v16)
      {
        v17 = v16;
      }

      if (v14 < v13)
      {
        v13 = v14;
      }

      if (v16 < v13)
      {
        v13 = v16;
      }

      v18 = (v17 + v13) * 0.5;
      if (v8 < v18)
      {
        v8 = v18;
      }

      --v11;
    }

    while (v11);
  }

LABEL_22:

  return v8;
}

void *FinalizedIcon.init(config:size:updating:for:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  memcpy(v18, v7, 0x723uLL);
  sub_1B15C37C0(v4, v17, &qword_1EB752B28);
  *(v6 + 1880) = 0u;
  *(v6 + 1896) = 0u;
  sub_1B15C37C0(v17, __src, &qword_1EB752B28);
  if (__src[3])
  {
    memcpy(__dst, __src, sizeof(__dst));
    v8 = __dst[234];
    if (__dst[234])
    {
      sub_1B15DEA80();
      v9 = v2;
      v10 = v8;
      v11 = sub_1B161A0E8();

      if (v11)
      {

        sub_1B15C1750(v6 + 1880, &qword_1EB752A88);
        sub_1B15C283C(__dst, v6);
        memcpy(__src, v18, 0x723uLL);
        FinalizedIcon.update(from:pixelSize:)(__src);

        sub_1B15C1750(v4, &qword_1EB752B28);
        sub_1B15C1750(v17, &qword_1EB752B28);
        sub_1B15C2874(__dst);
        return sub_1B15C5328(v18);
      }
    }

    else
    {
      v14 = v2;
    }

    sub_1B15C2874(__dst);
  }

  else
  {
    v13 = v2;
    sub_1B15C1750(__src, &qword_1EB752B28);
  }

  memcpy(__src, v18, 0x723uLL);
  sub_1B15C79C0(__src);

  sub_1B15C1750(v4, &qword_1EB752B28);
  sub_1B15C1750(v17, &qword_1EB752B28);
  sub_1B15C1750(v6 + 1880, &qword_1EB752A88);
  return memcpy(v6, __dst, 0x778uLL);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  memcpy(v18, v7, 0x723uLL);
  sub_1B15C37C0(v4, v17, &qword_1EB752B28);
  *(v6 + 1880) = 0u;
  *(v6 + 1896) = 0u;
  sub_1B15C37C0(v17, __src, &qword_1EB752B28);
  if (!__src[3])
  {
    v12 = v2;
    sub_1B15C1750(__src, &qword_1EB752B28);
LABEL_10:
    memcpy(__src, v18, 0x723uLL);
    sub_1B15C79C0(__src);

    sub_1B15C1750(v4, &qword_1EB752B28);
    sub_1B15C1750(v17, &qword_1EB752B28);
    sub_1B15C1750(v6 + 1880, &qword_1EB752A88);
    return memcpy(v6, __dst, 0x778uLL);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v8 = __dst[234];
  if (!__dst[234])
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    v13 = v2;
    goto LABEL_9;
  }

  if (!v2 || (sub_1B15DEA80(), v9 = v2, v10 = v8, v11 = sub_1B161A0E8(), v10, (v11 & 1) == 0))
  {
LABEL_9:
    sub_1B15C2874(__dst);
    v12 = v2;
    goto LABEL_10;
  }

LABEL_11:
  sub_1B15C1750(v6 + 1880, &qword_1EB752A88);
  sub_1B15C283C(__dst, v6);
  memcpy(__src, v18, 0x723uLL);
  FinalizedIcon.update(from:pixelSize:)(__src);

  sub_1B15C1750(v4, &qword_1EB752B28);
  sub_1B15C1750(v17, &qword_1EB752B28);
  sub_1B15C2874(__dst);
  return sub_1B15C5328(v18);
}

uint64_t sub_1B15E1770(uint64_t a1, uint64_t a2, const char *a3)
{
  v22 = a3;
  v4 = sub_1B1619CA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1B1619C68();
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB7525B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1619C98();
  __swift_project_value_buffer(v11, qword_1EB752AF8);
  sub_1B15C3828(a2, v24);
  v12 = sub_1B1619C88();
  sub_1B1619CB8();
  v21 = sub_1B161A098();
  sub_1B15C5328(a2);
  if (sub_1B161A0F8())
  {

    sub_1B1619CE8();

    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
    {
      v13 = 0;
      v14 = 0;
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v15 = "%s";
      v14 = 2;
      v13 = 1;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = v14;
    *(v16 + 1) = v13;
    *(v16 + 2) = 2080;
    *(v16 + 4) = sub_1B15E4764(*a2, *(a2 + 8), v24);
    v18 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v12, v21, v18, v22, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2730CA0](v17, -1, -1);
    MEMORY[0x1B2730CA0](v16, -1, -1);
  }

  return (*(v8 + 8))(v10, v23);
}

uint64_t FinalizedIcon.renderedIcon(at:with:)(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a2[3];
  v40[2] = a2[2];
  v40[3] = v4;
  v40[4] = a2[4];
  v5 = a2[1];
  v40[0] = *a2;
  v40[1] = v5;
  v6 = *(v2 + 1872);
  v30 = v3;
  v28 = *(a1 + 8);
  v31 = v28;
  v32 = v40;
  v7 = [objc_opt_self() currentEnvironment];
  sub_1B15FAE80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B161D4A0;
  v9 = *MEMORY[0x1E69C7198];
  *(inited + 32) = *MEMORY[0x1E69C7198];
  v10 = MEMORY[0x1E69E72F0];
  *(inited + 40) = 14;
  v11 = *MEMORY[0x1E69C71A0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = 1;
  v12 = *MEMORY[0x1E69C7190];
  *(inited + 104) = v10;
  *(inited + 112) = v12;
  *(inited + 144) = MEMORY[0x1E69E6530];
  *(inited + 120) = 2;
  v13 = v9;
  v14 = v11;
  v15 = v12;
  v16 = sub_1B15C28A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
  swift_arrayDestroy();
  v17 = *MEMORY[0x1E69C71B0];
  v35 = MEMORY[0x1E69E6370];
  LOBYTE(aBlock) = 1;
  sub_1B15C2260(&aBlock, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v16;
  sub_1B15E4D0C(v39, v17, isUniquelyReferenced_nonNull_native);
  if (v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = [objc_opt_self() sharedDevice];
  }

  type metadata accessor for RBImageRendererProperty(0);
  sub_1B15E6778();
  v20 = v6;
  v21 = sub_1B1619D28();

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B15CEC34;
  *(v22 + 24) = &v29;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B15C5988;
  *(v23 + 24) = v22;
  v36 = sub_1B15C59DC;
  v37 = v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v34 = sub_1B15C5990;
  v35 = &block_descriptor_2;
  v24 = _Block_copy(&aBlock);

  v25 = [v19 renderImageInRect:v21 options:v24 renderer:{0.0, 0.0, v3, v28}];
  swift_unknownObjectRelease();

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B15E1E0C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  [v5 scaleByX:v7 Y:v7];
  v8 = v2[3];
  v14 = v2[2];
  v15 = v8;
  v16 = v2[4];
  v9 = v2[1];
  v12 = *v2;
  v13 = v9;
  memcpy(__dst, (v4 + 240), 0x653uLL);
  memcpy(__src, (v4 + 240), sizeof(__src));
  sub_1B15C37C0(__dst, v18, &qword_1EB752A78);
  sub_1B15F8270(v6);
  memcpy(v18, __src, 0x653uLL);
  return sub_1B15C1750(v18, &qword_1EB752A78);
}

IconRendering::FinalizedIcon::Size __swiftcall FinalizedIcon.Size.init(width:height:)(Swift::Int width, Swift::Int height)
{
  *v2 = width;
  v2[1] = height;
  result.height = height;
  result.width = width;
  return result;
}

id sub_1B15E1F7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = -(CGRectGetMinX(*&a2) * a8);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  [a1 translateByX:v20 Y:-(CGRectGetMinY(v23) * a9)];
  [a1 scaleByX:a8 / *(a10 + 128) Y:a9 / *(a10 + 136)];

  return [a1 drawDisplayList_];
}

void sub_1B15E205C(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  v8 = v5;
  v10 = *v9;
  v11 = v9[1];
  memcpy(v149, v6, 0x723uLL);
  if (*(v1 + 168) != 0xFF || *v1 == 2)
  {
    return;
  }

  if ((LOBYTE(v149[25]) & 1) == 0 || *&v149[22] | *&v149[21] | *&v149[20] | *&v149[23] | *&v149[24])
  {
    if ((*v1 & 0xFF00) == 0x100)
    {
      return;
    }

    goto LABEL_6;
  }

  if (BYTE1(*v1) > 1u)
  {
    if (BYTE1(*v1) != 2)
    {
LABEL_6:
      LODWORD(v122) = 0;
      LODWORD(v128) = 0;
      LODWORD(v127) = 0;
      LOBYTE(v134[0]) = 0;
      v12 = 1;
      v138[0] = 1;
      LODWORD(v152) = 3;
      v139 = 1;
      v129 = 10;
      LODWORD(v126) = 1;
      v125 = 1;
      *&v124 = 1;
      goto LABEL_7;
    }
  }

  else if (BYTE1(*v1))
  {
    return;
  }

  LODWORD(v152) = BYTE1(*v1);
  v12 = 0;
  LODWORD(v126) = 0;
  *&v125 = 0.0;
  LODWORD(v128) = 1;
  LOBYTE(v134[0]) = 1;
  v138[0] = 0;
  v139 = 0;
  LODWORD(v127) = 3;
  LODWORD(v122) = 3;
  *&v124 = 4;
  v129 = 80;
LABEL_7:
  memcpy(v137, v7 + 208, 0x653uLL);
  memcpy(v138, v7 + 208, 0x653uLL);
  if (sub_1B15C3B5C(v138) == 1)
  {
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    memcpy(v134, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(v134, v135);
    v13 = v134;
  }

  else
  {
    v13 = v137;
  }

  memcpy(v136, v13, 0x653uLL);
  sub_1B15C37C0(v137, v134, &qword_1EB752A78);
  v14 = sub_1B15C5664(v136);
  v130 = &v122;
  v150[0] = *&v136[165];
  v150[1] = *&v136[167];
  *v151 = *&v136[169];
  *&v151[9] = *(&v136[170] + 1);
  MEMORY[0x1EEE9AC00](v14);
  *&v123 = v118;
  v118[2] = v149;
  v118[3] = v10;
  v118[4] = v11;
  v119 = v152;
  v131 = v1;
  v120 = v1;
  v121 = v150;
  v15 = objc_opt_self();
  sub_1B15C3828(v149, v134);
  v16 = [v15 currentEnvironment];
  sub_1B15FAE80();

  if (!v8)
  {
    v23 = 2;
    v36 = RBColorModeMake();
    v37 = [v15 currentEnvironment];
    sub_1B15FAE80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1B161D4A0;
    v39 = *MEMORY[0x1E69C7198];
    *(v38 + 32) = *MEMORY[0x1E69C7198];
    v40 = MEMORY[0x1E69E72F0];
    *(v38 + 40) = v36;
    v41 = *MEMORY[0x1E69C71A0];
    *(v38 + 64) = v40;
    *(v38 + 72) = v41;
    *(v38 + 80) = 0;
    v42 = *MEMORY[0x1E69C7190];
    *(v38 + 104) = v40;
    *(v38 + 112) = v42;
    *(v38 + 144) = MEMORY[0x1E69E6530];
    *(v38 + 120) = 2;
    v43 = v39;
    v44 = v41;
    v45 = v42;
    v46 = sub_1B15C28A4(v38);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v47 = *MEMORY[0x1E69C71B0];
    *(&v134[1] + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v134[0]) = 1;
    sub_1B15C2260(v134, v135);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v133 = v46;
    sub_1B15E4D0C(v135, v47, isUniquelyReferenced_nonNull_native);
    v49 = [objc_opt_self() sharedDevice];
    v50 = v10;
    v51 = v11;
    type metadata accessor for RBImageRendererProperty(0);
    sub_1B15E6778();
    v52 = sub_1B1619D28();

    v53 = swift_allocObject();
    v54 = v123;
    *(v53 + 16) = sub_1B15E6C34;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    v55[2] = sub_1B15E7034;
    v55[3] = v53;
    *&v134[2] = sub_1B15E7038;
    *(&v134[2] + 1) = v55;
    *&v134[0] = MEMORY[0x1E69E9820];
    *(&v134[0] + 1) = 1107296256;
    *&v134[1] = sub_1B15C5990;
    *(&v134[1] + 1) = &block_descriptor_34;
    v56 = _Block_copy(v134);

    v57 = [v49 renderImageInRect:v52 options:v56 renderer:{0.0, 0.0, v50, v51}];

    _Block_release(v56);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_37;
    }

    sub_1B15C5328(v149);
    if (v57)
    {
      v58 = 1;
    }

    else
    {
      v58 = 255;
    }

LABEL_26:
    v59 = v131;
    sub_1B15C26A4(*(v131 + 160), *(v131 + 168));
    *(v59 + 160) = v57;
    *(v59 + 168) = v58;
    return;
  }

  v17 = qword_1EDB2FAA8;
  v18 = v8;
  if (v17 != -1)
  {
    swift_once();
  }

  v140[0] = v10;
  v140[1] = v11;
  v19 = v129;
  v140[2] = v129;
  v140[3] = v125;
  v141 = v128;
  v142 = v124;
  v143 = 2;
  v144 = v127;
  v145 = v126;
  v146 = v12;
  v147 = v18;
  v148 = 7;
  v20 = sub_1B1616D24(v140);
  if (!v20)
  {

    sub_1B15C5328(v149);
    v57 = 0;
    v58 = 255;
    goto LABEL_26;
  }

  v21 = v20;
  v22 = objc_allocWithZone(MEMORY[0x1E69C70C8]);
  v128 = v18;
  v23 = [v22 initWithDevice_];
  v24 = v10;
  v25 = v11;
  [v23 setSize_];
  [v23 setPixelFormat_];
  v26 = v21[2];
  v27 = v21[13];
  isEscapingClosureAtFileLocation = v131;
  v129 = v21;
  if (v27 < 0)
  {
  }

  else
  {
    v29 = v21;
    v30 = v21[12];
    v31 = v29[9];
    v32 = *(v29 + 3);
    v33 = *(v29 + 5);
    v34 = *(v29 + 7);
    v134[4] = *(v29 + 5);
    v35 = *&v134[4];
    *(v134 + 8) = v32;
    *(&v134[1] + 8) = v33;
    *(&v134[2] + 8) = v34;
    *&v134[0] = v26;
    *(&v134[3] + 1) = v31;
    *&v134[5] = v30;
    *(&v134[5] + 1) = v27;
    sub_1B15C37C0(v134, v135, &qword_1EB752B80);
  }

  v60 = *(v30 + 88);
  swift_unknownObjectRetain();

  [v23 setTexture_];
  swift_unknownObjectRelease();
  [v23 setBackgroundGPUPriority_];
  v61 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v61 setProfile_];
  v62 = objc_allocWithZone(MEMORY[0x1E69C70D8]);
  v55 = v61;
  v126 = [v62 init];
  v56 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  v3 = v149[16];
  v2 = v149[17];
  [v55 scaleByX:v24 / v149[16] Y:v25 / v149[17]];
  if (v2 >= v3)
  {
    v67 = v3;
  }

  else
  {
    v67 = v2;
  }

  if (v152 == 3)
  {
    LODWORD(v63) = *MEMORY[0x1E69C7128];
    LODWORD(v64) = *(MEMORY[0x1E69C7128] + 4);
    LODWORD(v65) = *(MEMORY[0x1E69C7128] + 8);
    LODWORD(v66) = *(MEMORY[0x1E69C7128] + 12);
    [v55 addAlphaMultiplyFilterWithColor_];
  }

  v4 = v67 * 0.0009765625;
  memcpy(v134, v137, 0x653uLL);
  if (sub_1B15C3B5C(v134) != 1)
  {
    v68 = v137;
    goto LABEL_39;
  }

  if (qword_1EDB2FBF8 != -1)
  {
    goto LABEL_50;
  }

LABEL_37:
  memcpy(v133, &unk_1EDB2FC00, sizeof(v133));
  sub_1B15C51D0(v133, v135);
  v68 = v133;
LABEL_39:
  memcpy(v135, v68, sizeof(v135));
  v127 = v23;
  sub_1B15C37C0(v137, v133, &qword_1EB752A78);
  sub_1B15C5664(v135);
  [v55 addBlurFilterWithRadius_];
  v69 = v4 * *&v136[166];
  v70 = *(isEscapingClosureAtFileLocation + 64);
  v71 = *(isEscapingClosureAtFileLocation + 72);
  v72 = *(isEscapingClosureAtFileLocation + 80);
  v73 = *(isEscapingClosureAtFileLocation + 88);
  v74 = *(isEscapingClosureAtFileLocation + 56);
  v153.origin.x = v70;
  v153.origin.y = v71;
  v153.size.width = v72;
  v153.size.height = v73;
  v75 = v69 + v3 * CGRectGetMinX(v153);
  v76 = v4 * *&v136[167];
  v77 = v76 + v2 * CGRectGetMinY(*(isEscapingClosureAtFileLocation + 64));
  v78 = v3 * CGRectGetWidth(*(isEscapingClosureAtFileLocation + 64));
  v79 = v2 * CGRectGetHeight(*(isEscapingClosureAtFileLocation + 64));
  if (qword_1EDB30310 != -1)
  {
    swift_once();
  }

  v125 = *(&xmmword_1EDB30318 + 1);
  v152 = xmmword_1EDB30318;
  v80 = *&qword_1EDB30328;
  *&v124 = unk_1EDB30330;
  v154.origin.x = v75;
  v154.origin.y = v77;
  v154.size.width = v78;
  v154.size.height = v79;
  MinX = CGRectGetMinX(v154);
  v155.origin.x = v75;
  v155.origin.y = v77;
  v155.size.width = v78;
  v155.size.height = v79;
  MinY = CGRectGetMinY(v155);
  *v133 = 0x3FF0000000000000;
  *&v133[8] = 0;
  *&v133[16] = 0;
  *&v133[24] = 0x3FF0000000000000;
  *&v133[32] = 0;
  *&v133[40] = 0;
  CGAffineTransformTranslate(v132, v133, MinX, MinY);
  tx = v132[0].tx;
  ty = v132[0].ty;
  v122 = *&v132[0].c;
  v123 = *&v132[0].a;
  v156.origin.x = v75;
  v156.origin.y = v77;
  v156.size.width = v78;
  v156.size.height = v79;
  Width = CGRectGetWidth(v156);
  v157.origin.x = v75;
  v157.origin.y = v77;
  v157.size.width = v78;
  v157.size.height = v79;
  Height = CGRectGetHeight(v157);
  *&v133[16] = v122;
  *v133 = v123;
  *&v133[32] = tx;
  *&v133[40] = ty;
  CGAffineTransformScale(v132, v133, Width, Height);
  v87 = v132[0].tx;
  v88 = v132[0].ty;
  v89 = *&v152;
  *&v152 = v89;
  v90 = *&v125;
  *&v125 = v90;
  *&ty = v80;
  *&v80 = *&v124;
  v123 = *&v132[0].c;
  v124 = *&v132[0].a;
  CGImage = RBImageMakeCGImage();
  v93 = v92;
  [v56 setRect_];
  v94 = CGImage;
  *&v133[16] = v123;
  *v133 = v124;
  *&v133[32] = v87;
  *&v133[40] = v88;
  v95 = v126;
  LODWORD(v96) = v125;
  LODWORD(v97) = LODWORD(ty);
  LODWORD(v98) = LODWORD(v80);
  [v126 setRBImage:v94 transform:v93 interpolation:v133 tintColor:1 colorSpace:3 flags:{0, COERCE_DOUBLE(__PAIR64__(DWORD1(v124), v152)), v96, v97, v98}];
  LODWORD(v99) = 1.0;
  [v55 drawShape:v56 fill:v95 alpha:0 blendMode:v99];
  [v56 setRenderingMode_];

  v152 = v55;
  if (v139)
  {
    v100 = 130;
  }

  else
  {
    v100 = 2;
  }

  v101 = swift_allocObject();
  v102 = v127;
  *(v101 + 16) = v127;
  type metadata accessor for HardwareTexture.Tracker();
  v103 = swift_allocObject();
  v104 = v102;
  swift_defaultActor_initialize();
  v105 = MEMORY[0x1E69E7CC0];
  *(v103 + 112) = 0;
  *(v103 + 120) = v105;
  *(v103 + 128) = sub_1B15E6C68;
  *(v103 + 136) = v101;
  v106 = swift_allocObject();
  swift_weakInit();
  *&v133[32] = sub_1B15E6C70;
  *&v133[40] = v106;
  *v133 = MEMORY[0x1E69E9820];
  *&v133[8] = 1107296256;
  *&v133[16] = sub_1B15E703C;
  *&v133[24] = &block_descriptor_43;
  v107 = _Block_copy(v133);

  [v104 setCompletedHandler_];
  _Block_release(v107);
  v108 = v129;
  v109 = *(v129 + 16);
  v110 = *(v129 + 104);
  if (v110 < 0)
  {
  }

  else
  {
    v111 = *(v129 + 96);
    v112 = *(v129 + 72);
    v113 = *(v129 + 24);
    v114 = *(v129 + 40);
    v115 = *(v129 + 56);
    *&v133[64] = *(v129 + 80);
    v116 = *&v133[64];
    *v133 = v109;
    *&v133[8] = v113;
    *&v133[24] = v114;
    *&v133[40] = v115;
    *&v133[56] = v112;
    *&v133[80] = v111;
    *&v133[88] = v110;
    sub_1B15C37C0(v133, v132, &qword_1EB752B80);

    v108 = v129;
  }

  *(v111 + 104) = v103;

  v117 = v152;
  [v104 renderDisplayList:v117 flags:v100];

  sub_1B15C5328(v149);
  sub_1B15C26A4(*(isEscapingClosureAtFileLocation + 160), *(isEscapingClosureAtFileLocation + 168));
  *(isEscapingClosureAtFileLocation + 160) = v108;
  *(isEscapingClosureAtFileLocation + 168) = 0;
}