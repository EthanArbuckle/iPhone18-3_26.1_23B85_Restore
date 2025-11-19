uint64_t OUTLINED_FUNCTION_103_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  *(result + 8) = a2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_140_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 24) = a2;
  *(result + 32) = v2;
  *(result + 40) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_152_10()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_157_9@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 14;
  return result;
}

unint64_t OUTLINED_FUNCTION_192_1()
{
  result = STACK[0x4A0];
  v1 = STACK[0x4A8];
  v2 = STACK[0x4B0];
  return result;
}

uint64_t OUTLINED_FUNCTION_202_2()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_216_2()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

void OUTLINED_FUNCTION_220_3()
{
  if (STACK[0xDD8] >> 60 != 15)
  {
    v0 = STACK[0xDD0];
  }
}

uint64_t OUTLINED_FUNCTION_224_0()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_225_2()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_233_2()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_234_2()
{

  return sub_19393C3C0();
}

void OUTLINED_FUNCTION_238_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + 8 * (v18 >> 6) + 64) |= 1 << v18;
  v21 = (*(v17 + 48) + 16 * v18);
  *v21 = a17;
  v21[1] = v19;
  *(*(v17 + 56) + 8 * v18) = v20;
}

uint64_t OUTLINED_FUNCTION_240_1(uint64_t result)
{
  *(result + 16) = 0;
  *(v1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_245_2(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(a1 + 8);
}

uint64_t OUTLINED_FUNCTION_246_1()
{

  return sub_19393C3C0();
}

__n128 OUTLINED_FUNCTION_247_1()
{
  v2 = *&STACK[0xDE0];
  *&STACK[0xC20] = *&STACK[0xDD0];
  *&STACK[0xC30] = v2;
  *&STACK[0xC40] = *&STACK[0xDF0];
  STACK[0xC50] = STACK[0xE00];
  STACK[0xC58] = v0;
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *&STACK[0xC60] = result;
  *&STACK[0xC70] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_255_1()
{
  v1 = STACK[0xE08];
  STACK[0x5B0] = STACK[0xE00];
  v2 = *&STACK[0xDE0];
  *&STACK[0x580] = *&STACK[0xDD0];
  *&STACK[0x590] = v2;
  *&STACK[0x5A0] = *&STACK[0xDF0];
  result = *(v0 + 64);
  v4 = *(v0 + 80);
  *&STACK[0x3D0] = result;
  *&STACK[0x3E0] = v4;
  return result;
}

void OUTLINED_FUNCTION_277_2()
{

  sub_19370FB70();
}

void OUTLINED_FUNCTION_278_2()
{

  sub_19370FA00();
}

uint64_t OUTLINED_FUNCTION_281_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACD8];

  return sub_19370C3D0(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_282_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAC70];

  return sub_19370C3D0(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_283_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACA0];

  return sub_1936F9410(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_288_1(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_291_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACC8];

  return sub_1936F9410(a1, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_292_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  a1[1].n128_u64[0] = v9;
  a1[1].n128_u64[1] = v10;
  result = a9;
  a1[2] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_293_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_300_0()
{
  result = *(v0 - 184);
  v2 = *(v0 - 168);
  return result;
}

__n128 *OUTLINED_FUNCTION_304_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  return result;
}

void OUTLINED_FUNCTION_305_0()
{

  sub_19370FB70();
}

uint64_t OUTLINED_FUNCTION_311_0()
{
  v2 = *v0;
}

double OUTLINED_FUNCTION_313_0()
{
  result = 0.0;
  *&STACK[0xDF0] = 0u;
  *&STACK[0xDE0] = 0u;
  *&STACK[0xDD0] = 0u;
  STACK[0xE00] = 0;
  STACK[0xE08] = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_320()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_321_0()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_325_0()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_326()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_329@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_340()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_341()
{
  v2 = *v0;
}

void *OUTLINED_FUNCTION_349()
{
  *&STACK[0x410] = *&STACK[0x4A0];
  STACK[0x420] = v0;

  return memcpy(&STACK[0x428], (v1 + 24), 0x50uLL);
}

void OUTLINED_FUNCTION_353_0()
{
  if (!LOBYTE(STACK[0x7F9]))
  {
    v0 = STACK[0x7F0];
  }

  v1 = LOBYTE(STACK[0x7F8]) & ~LOBYTE(STACK[0x7F9]);
}

void *OUTLINED_FUNCTION_356_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x208], 0x80uLL);
}

double OUTLINED_FUNCTION_358_0()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_359_0(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_361_0(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result | 0xE000000000000000;
  return result;
}

void *OUTLINED_FUNCTION_365_0()
{
  STACK[0xC20] = v2;
  STACK[0xC28] = v1;

  return memcpy(&STACK[0xC30], (v0 + 16), 0x50uLL);
}

void *OUTLINED_FUNCTION_366_0()
{
  v1 = STACK[0xDD0];
  v2 = STACK[0xDD8];

  return memcpy(&STACK[0x580], &STACK[0xDE0], 0x50uLL);
}

void *OUTLINED_FUNCTION_367_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *&STACK[0x4A0];
  v69 = STACK[0x4B0];

  return memcpy(&__dst, (v67 + 24), 0x50uLL);
}

void *OUTLINED_FUNCTION_368_0(void *a1)
{

  return memcpy(a1, &STACK[0xC20], 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_369()
{
  v2 = *v0;
}

__n128 OUTLINED_FUNCTION_383(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_601()
{

  sub_193447600();
}

void OUTLINED_FUNCTION_602()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_604@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
}

void *OUTLINED_FUNCTION_605(void *a1)
{

  return memcpy(a1, &STACK[0x5C0], 0xF0uLL);
}

void *OUTLINED_FUNCTION_606(void *a1)
{

  return memcpy(a1, &STACK[0x410], 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_607()
{

  return sub_19393C0E0();
}

void *OUTLINED_FUNCTION_608(void *a1)
{

  return memcpy(a1, &STACK[0x6D0], 0x120uLL);
}

double OUTLINED_FUNCTION_613(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *&STACK[0x200] = a13;
  result = 0.0;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  return result;
}

double OUTLINED_FUNCTION_619@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_627@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_630()
{
  if (STACK[0xDD8])
  {
    v0 = STACK[0xDD0];
  }
}

void OUTLINED_FUNCTION_633()
{
  if (!LOBYTE(STACK[0xDD8]))
  {
    v0 = STACK[0xDD0];
  }
}

__n128 OUTLINED_FUNCTION_637()
{
  result = *(v0 - 144);
  v2 = *(v0 - 128);
  *(v0 - 192) = result;
  *(v0 - 176) = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_651()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_665()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_666()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_667()
{

  return sub_19393C3B0();
}

uint64_t ToolKitToolTimestamp.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_301_1();
  v2 = *(v0 + 8);
  MEMORY[0x193B18060](v1);
  return sub_19393CAE0();
}

uint64_t ToolKitToolTimestamp.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  OUTLINED_FUNCTION_119();
  v3 = OUTLINED_FUNCTION_161();
  MEMORY[0x193B18060](v3);
  sub_19393CAE0();
  return sub_19393CB00();
}

uint64_t sub_1937123FC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_19393CAB0();
  v3 = OUTLINED_FUNCTION_161();
  MEMORY[0x193B18060](v3);
  sub_19393CAE0();
  return sub_19393CB00();
}

uint64_t ToolKitToolAny.typeUrl.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolAny.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_13_0();
  sub_193450688(v3, v4);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolAny.value.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_193446A6C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double ToolKitToolAny.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_193950F80;
  return result;
}

uint64_t static ToolKitToolAny.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_19393CA30() & 1) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_9_12();

    JUMPOUT(0x193B172A0);
  }

  return 0;
}

uint64_t ToolKitToolAny.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_19393C640();
  OUTLINED_FUNCTION_187();

  return sub_19393BD50();
}

uint64_t ToolKitToolAny.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_38_30(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_19393C640();
  sub_19393BD50();
  return sub_19393CB00();
}

uint64_t sub_19371268C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_19393CAB0();
  OUTLINED_FUNCTION_38_30(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_19393C640();
  sub_19393BD50();
  return sub_19393CB00();
}

uint64_t sub_1937126F8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193712720@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193712778()
{
  sub_19393CAB0();
  v0 = ToolKitToolNullValue.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1937127C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193712894()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_193712908()
{
  sub_19393CAB0();
  v0 = ToolKitToolNullValue.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193712954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.sourceContainer.getter()
{
  OUTLINED_FUNCTION_342();
  memcpy(v1, v0, 0x70uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x70uLL);
  return OUTLINED_FUNCTION_394(v4, v5, &qword_1EAE41A98, &qword_193980798, v6);
}

void *ToolKitToolTypeIdentifier.Attributed.sourceContainer.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x70uLL);
  sub_19344E6DC(&v5, &qword_1EAE41A98, &qword_193980798);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x70uLL);
}

uint64_t ToolKitToolTypeIdentifier.Attributed.attributionContainer.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 112), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 112));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41A98, &qword_193980798, v5);
}

void *ToolKitToolTypeIdentifier.Attributed.attributionContainer.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 112), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41A98, &qword_193980798);
  return OUTLINED_FUNCTION_395((v0 + 112));
}

uint64_t ToolKitToolTypeIdentifier.Attributed.typeName.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.typeName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

double ToolKitToolTypeIdentifier.Attributed.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  v2[12] = v1;
  v2[13] = v1;
  v2[10] = v1;
  v2[11] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[7] = v1;
  v3 = v2 + 7;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v4, v5, v6);
  *v0 = 0u;
  v0[1] = 0u;
  OUTLINED_FUNCTION_139_10(0);
  memcpy(__dst, v3, sizeof(__dst));
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v7, v8, v9);
  result = 0.0;
  *v3 = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  v0[14] = 0u;
  return result;
}

void static ToolKitToolTypeIdentifier.Attributed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v122, v3 + 14, sizeof(v122));
  v4 = v3[28];
  v5 = v3[29];
  memcpy(v123, v1, sizeof(v123));
  memcpy(v124, v1 + 14, sizeof(v124));
  v7 = v1[28];
  v6 = v1[29];
  v8 = __dst[13];
  v9 = v123[13];
  if (!__dst[13])
  {
    if (!v123[13])
    {
      OUTLINED_FUNCTION_369_0();
      v118 = 0;
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v43, v44, v45, v46);
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v47, v48, v49, v50);
      OUTLINED_FUNCTION_10_0();
      sub_19344E6DC(v51, v52, v53);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v23, v24, v25, v26);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v27, v28, v29, v30);
LABEL_8:
    OUTLINED_FUNCTION_369_0();
    v118 = v8;
    memcpy(v119, v1, sizeof(v119));
    v120 = v9;
LABEL_24:
    sub_19344E6DC(v117, &qword_1EAE41AA0, &qword_1939807A0);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_369_0();
  v118 = v8;
  OUTLINED_FUNCTION_450(v116);
  if (!v9)
  {
    OUTLINED_FUNCTION_450(__src);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v31, v32, v33, v34);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v35, v36, v37, v38);
    OUTLINED_FUNCTION_421();
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v39, v40, v41, v42);
    sub_193713244(__src);
    goto LABEL_8;
  }

  memcpy(__src, v1, 0x68uLL);
  __src[13] = v9;
  OUTLINED_FUNCTION_90_10(__dst, v112);
  OUTLINED_FUNCTION_90_10(v123, v112);
  v10 = OUTLINED_FUNCTION_421();
  OUTLINED_FUNCTION_90_10(v10, v11);
  static ToolKitToolContainerDefinition.== infix(_:_:)(v116, __src, v12, v13, v14, v15, v16, v17, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
  v19 = v18;
  memcpy(v111, __src, sizeof(v111));
  sub_193713244(v111);
  memcpy(v112, v116, sizeof(v112));
  sub_193713244(v112);
  memcpy(__src, v3, 0x68uLL);
  __src[13] = v8;
  OUTLINED_FUNCTION_146();
  sub_19344E6DC(v20, v21, v22);
  if ((v19 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  memcpy(v115, v122, sizeof(v115));
  v54 = v122[13];
  OUTLINED_FUNCTION_448(v114);
  v55 = v124[13];
  if (v54)
  {
    memcpy(v117, v122, sizeof(v117));
    v118 = v54;
    OUTLINED_FUNCTION_450(v116);
    if (v55)
    {
      OUTLINED_FUNCTION_448(__src);
      __src[13] = v55;
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v56, v57, v58, v59);
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v60, v61, v62, v63);
      OUTLINED_FUNCTION_421();
      OUTLINED_FUNCTION_28_23();
      sub_193448804(v64, v65, v66, v67);
      static ToolKitToolContainerDefinition.== infix(_:_:)(v116, __src, v68, v69, v70, v71, v72, v73, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
      v75 = v74;
      memcpy(v111, __src, sizeof(v111));
      sub_193713244(v111);
      memcpy(v112, v116, sizeof(v112));
      sub_193713244(v112);
      memcpy(__src, v115, 0x68uLL);
      __src[13] = v54;
      OUTLINED_FUNCTION_10_0();
      sub_19344E6DC(v76, v77, v78);
      if ((v75 & 1) == 0 || !v5)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_450(__src);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v88, v89, v90, v91);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v92, v93, v94, v95);
    OUTLINED_FUNCTION_421();
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v96, v97, v98, v99);
    sub_193713244(__src);
    goto LABEL_23;
  }

  if (v124[13])
  {
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v80, v81, v82, v83);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v84, v85, v86, v87);
LABEL_23:
    memcpy(v117, v115, sizeof(v117));
    v118 = v54;
    memcpy(v119, v114, sizeof(v119));
    v120 = v55;
    goto LABEL_24;
  }

  memcpy(v117, v122, sizeof(v117));
  v118 = 0;
  OUTLINED_FUNCTION_28_23();
  sub_193448804(v100, v101, v102, v103);
  OUTLINED_FUNCTION_28_23();
  sub_193448804(v104, v105, v106, v107);
  OUTLINED_FUNCTION_10_0();
  sub_19344E6DC(v108, v109, v110);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (v6)
  {
    if (v4 != v7 || v5 != v6)
    {
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      sub_19393CA30();
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.hash(into:)()
{
  v1 = v0[13];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[29];
  if (v1)
  {
    memcpy(v22, v0, 0x68uLL);
    v22[13] = v1;
    OUTLINED_FUNCTION_103_0();
    memcpy(__dst, v0, sizeof(__dst));
    v24 = v1;
    sub_1936D0610(__dst, v25);
    v5 = OUTLINED_FUNCTION_39_20();
    ToolKitToolContainerDefinition.hash(into:)(v5, v6, v7, v8, v9, v10, v11, v12, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], SHIDWORD(v22[6]));
    memcpy(v25, v22, sizeof(v25));
    sub_193713244(v25);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  memcpy(v22, v0 + 14, 0x68uLL);
  v22[13] = v3;
  OUTLINED_FUNCTION_103_0();
  memcpy(__dst, v0 + 14, sizeof(__dst));
  v24 = v3;
  sub_1936D0610(__dst, v25);
  v13 = OUTLINED_FUNCTION_39_20();
  ToolKitToolContainerDefinition.hash(into:)(v13, v14, v15, v16, v17, v18, v19, v20, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], SHIDWORD(v22[6]));
  memcpy(v25, v22, sizeof(v25));
  sub_193713244(v25);
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_58_19();
    return sub_19393C640();
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolTypeIdentifier.Attributed.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypeIdentifier.Attributed.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937133E4()
{
  sub_19393CAB0();
  ToolKitToolTypeIdentifier.Attributed.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeIdentifier.Codable.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolTypeIdentifier::Codable __swiftcall ToolKitToolTypeIdentifier.Codable.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.identifier.value._object = v2;
  result.identifier.value._countAndFlagsBits = v1;
  return result;
}

uint64_t ToolKitToolSystemTypeProtocol.AssistantSchema.identifier.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x50uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x50uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AA8, &qword_1939807A8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolSystemTypeProtocol.AssistantSchema.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_193731648(&v5);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

uint64_t ToolKitToolSystemTypeProtocol.AssistantSchema.hash(into:)()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v0, v1, 0x50uLL);
  OUTLINED_FUNCTION_39_20();
  return sub_193737464();
}

uint64_t sub_193713688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolToolSummaryString.Component.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_193713748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v17, v3, sizeof(v17));
      memcpy(v19, i, sizeof(v19));
      memcpy(__src, i, sizeof(__src));
      sub_1936CEFA0(__dst, v15);
      sub_1936CEFA0(v19, v15);
      static ToolKitToolToolDefinition.Version1.Parameter.== infix(_:_:)(v17, __src, v5, v6, v7, v8, v9, v10, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6]);
      v12 = v11;
      memcpy(v20, __src, sizeof(v20));
      sub_193740704(v20);
      memcpy(v21, v17, sizeof(v21));
      sub_193740704(v21);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193713858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        if (*(v3 - 1) != *(v4 - 1) || *v3 != v5)
        {
          v7 = *v4;
          if ((sub_19393CA30() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {

        if (v5)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_193713908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolRuntimeRequirement.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1937139C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v23 = a2 + 32;
    v24 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_43;
      }

      v4 = (v24 + 32 * v3);
      v5 = *v4;
      v6 = (v23 + 32 * v3);
      v7 = *v6;
      v8 = *(*v4 + 16);
      if (v8 != *(*v6 + 16))
      {
        return 0;
      }

      v9 = v4[2];
      v25 = v4[1];
      v10 = v4[3];
      v12 = v6[1];
      v11 = v6[2];
      if (v8)
      {
        v13 = v5 == v7;
      }

      else
      {
        v13 = 1;
      }

      v14 = v6[3];
      if (!v13)
      {
        v15 = (v5 + 40);
        v16 = (v7 + 40);
        while (v8)
        {
          result = *(v15 - 1);
          if (result != *(v16 - 1) || *v15 != *v16)
          {
            result = sub_19393CA30();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v15 += 2;
          v16 += 2;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

LABEL_19:
      if (v9)
      {
        if (!v11)
        {
          return 0;
        }

        v18 = v25 == v12 && v9 == v11;
        if (!v18 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v19 = *(v10 + 16);
      if (v19 != *(v14 + 16))
      {
        return 0;
      }

      if (v19 && v10 != v14)
      {
        break;
      }

LABEL_38:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v20 = (v10 + 40);
    v21 = (v14 + 40);
    while (1)
    {
      v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
      if (!v22 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      v20 += 2;
      v21 += 2;
      if (!--v19)
      {
        goto LABEL_38;
      }
    }
  }

  return 1;
}

BOOL sub_193713B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolSystemToolProtocol.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while (v7 && v2);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_193713C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 112)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v16, v3, sizeof(v16));
      memcpy(v18, i, sizeof(v18));
      memcpy(__src, i, sizeof(__src));
      sub_1936D0610(__dst, v14);
      sub_1936D0610(v18, v14);
      static ToolKitToolContainerDefinition.== infix(_:_:)(v16, __src, v5, v6, v7, v8, v9, v10, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], v16[0], v16[1], v16[2], v16[3], v16[4], v16[5]);
      v12 = v11;
      memcpy(v19, __src, sizeof(v19));
      sub_193713244(v19);
      memcpy(v20, v16, sizeof(v20));
      sub_193713244(v20);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 112;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193713D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 48);
  for (i = (a2 + 48); ; i += 3)
  {
    v6 = *(v3 - 1);
    v5 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    if (v6)
    {
      if (!v8)
      {
        return 0;
      }

      if (*(v3 - 2) != *(i - 2) || v6 != v8)
      {
        v10 = *(v3 - 1);
        v11 = *(i - 1);
        if ((sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v8)
    {
      return 0;
    }

    if ((~v5 & 0xF000000000000007) == 0)
    {
      break;
    }

    v15 = v5;
    if ((~v7 & 0xF000000000000007) == 0)
    {

      sub_193437C90(v5);

      sub_193437C90(v7);
      sub_193437C90(v5);
      sub_193437C90(v7);
      sub_193437C90(v5);

      goto LABEL_23;
    }

    v14 = v7;

    sub_193437C90(v5);

    sub_193437C90(v7);
    sub_193437C90(v5);
    sub_193437C90(v7);
    sub_193437C90(v5);
    v12 = static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(&v15, &v14);

    sub_193444060(v5);

    sub_193444060(v7);

    sub_193444060(v5);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_193437C90(v5);
    sub_193437C90(v7);
    sub_193444060(v5);
    goto LABEL_19;
  }

  sub_193437C90(v5);

  sub_193437C90(v7);
  sub_193437C90(v5);
  sub_193437C90(v7);
LABEL_23:
  sub_193444060(v5);
  sub_193444060(v7);

  sub_193444060(v7);

  sub_193444060(v5);
  return 0;
}

uint64_t sub_193713F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v4 = 0;
      do
      {
        v6 = *(a1 + v4 + 56);
        v5 = *(a1 + v4 + 64);
        v16 = *(a1 + v4 + 32);
        v17 = *(a1 + v4 + 40);
        v18 = v6;
        v19 = v5;
        v7 = *(a2 + v4 + 56);
        v8 = *(a2 + v4 + 64);
        v12 = *(a2 + v4 + 32);
        v13 = *(a2 + v4 + 40);
        v14 = v7;
        v15 = v8;

        sub_193437C90(v5);

        sub_193437C90(v8);
        v9 = static ToolKitToolTypeDefinition.Version1.Entity.Property.== infix(_:_:)(&v16, &v12);

        sub_193444060(v8);

        sub_193444060(v5);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1937140E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; i += 96)
  {
    memcpy(__dst, v3, sizeof(__dst));
    memcpy(v31, i, sizeof(v31));
    if (*(&__dst[0] + 1))
    {
      if (!*(&v31[0] + 1))
      {
        return 0;
      }

      v5 = *&__dst[0] == *&v31[0] && *(&__dst[0] + 1) == *(&v31[0] + 1);
      if (!v5 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v31[0] + 1))
    {
      return 0;
    }

    v27 = __dst[1];
    v28 = __dst[2];
    v6 = *(&__dst[3] + 1);
    v29 = *&__dst[3];
    v25 = __dst[4];
    v26 = __dst[5];
    v22 = v31[1];
    v23 = v31[2];
    v7 = *(&v31[3] + 1);
    v24 = *&v31[3];
    v20 = v31[4];
    v21 = v31[5];
    if (!*(&__dst[3] + 1))
    {
      break;
    }

    __src[0] = __dst[1];
    __src[1] = __dst[2];
    __src[2] = __dst[3];
    __src[3] = __dst[4];
    __src[4] = __dst[5];
    memcpy(v13, __src, sizeof(v13));
    if (!*(&v31[3] + 1))
    {
      memcpy(v12, __src, sizeof(v12));
      sub_1936C15F8(__dst, v15);
      sub_1936C15F8(v31, v15);
      sub_193448804(&__dst[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
      sub_193448804(&v31[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
      sub_193448804(__src, v15, &qword_1EAE41AB8, &qword_1939807B8);
      sub_1937375CC(v12);
      goto LABEL_24;
    }

    v10[0] = v31[1];
    v10[1] = v31[2];
    v10[3] = v31[4];
    v10[4] = v31[5];
    v10[2] = v31[3];
    sub_1936C15F8(__dst, v15);
    sub_1936C15F8(v31, v15);
    sub_193448804(&__dst[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193448804(&v31[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193448804(__src, v15, &qword_1EAE41AB8, &qword_1939807B8);
    v8 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v13, v10);
    memcpy(v11, v10, sizeof(v11));
    sub_1937375CC(v11);
    memcpy(v15, v13, 0x50uLL);
    sub_1937375CC(v15);
    v12[0] = v27;
    v12[1] = v28;
    *&v12[2] = v29;
    *(&v12[2] + 1) = v6;
    v12[3] = v25;
    v12[4] = v26;
    sub_19344E6DC(v12, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193740794(v31);
    sub_193740794(__dst);
    if (!v8)
    {
      return 0;
    }

LABEL_20:
    v3 += 96;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!*(&v31[3] + 1))
  {
    v15[0] = __dst[1];
    v15[1] = __dst[2];
    v15[2] = *&__dst[3];
    v15[3] = __dst[4];
    v15[4] = __dst[5];
    sub_193448804(&__dst[1], __src, &qword_1EAE41AB8, &qword_1939807B8);
    sub_193448804(&v31[1], __src, &qword_1EAE41AB8, &qword_1939807B8);
    sub_19344E6DC(v15, &qword_1EAE41AB8, &qword_1939807B8);
    goto LABEL_20;
  }

  sub_1936C15F8(__dst, v15);
  sub_1936C15F8(v31, v15);
  sub_193448804(&__dst[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
  sub_193448804(&v31[1], v15, &qword_1EAE41AB8, &qword_1939807B8);
LABEL_24:
  v15[0] = v27;
  v15[1] = v28;
  *&v15[2] = v29;
  *(&v15[2] + 1) = v6;
  v15[3] = v25;
  v15[4] = v26;
  v15[5] = v22;
  v15[6] = v23;
  v16 = v24;
  v17 = v7;
  v18 = v20;
  v19 = v21;
  sub_19344E6DC(v15, &qword_1EAE41AC0, &qword_1939807C0);
  sub_193740794(v31);
  sub_193740794(__dst);
  return 0;
}

BOOL sub_1937144C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ToolKitToolSystemTypeProtocol.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while (v7 && v2);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_193714598(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v6 = (result + 40);
  v7 = (a2 + 40);
  while (v4)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v7 += 16;
    v12 = *(v6 - 1);
    v13 = *v6;
    v10 = (a3)(result, a2, a3, a4);
    v11 = v10 == a3();
    result = v11;
    v11 = !v11 || v4-- == 1;
    v6 += 16;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_193714660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v7 = *(a1 + v5 + 41);
        v8 = *(a1 + v5 + 48);
        v18 = *(a1 + v5 + 32);
        v19 = v6;
        v20 = v7;
        v21 = v8;
        v9 = *(a2 + v5 + 40);
        v10 = *(a2 + v5 + 41);
        v11 = *(a2 + v5 + 48);
        v14 = *(a2 + v5 + 32);
        v15 = v9;
        v16 = v10;
        v17 = v11;
        sub_193437C90(v8);
        sub_193437C90(v11);
        v12 = static ToolKitToolCoercionDefinition.== infix(_:_:)(&v18, &v14);
        sub_193444060(v11);
        sub_193444060(v8);
        if (!v12)
        {
          break;
        }

        v5 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v12;
}

void sub_193714770()
{
  OUTLINED_FUNCTION_237();
  v5 = *(v0 + 16);
  if (v5 == *(v1 + 16) && v5 && v0 != v1)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    v9 = (v0 + 32);
    v10 = (v1 + 32);
    do
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(v14, v9, sizeof(v14));
      memcpy(v16, v10, sizeof(v16));
      memcpy(__src, v10, sizeof(__src));
      v8(__dst, v12);
      v8(v16, v12);
      v11 = v7(v14, __src);
      memcpy(v17, __src, sizeof(v17));
      v6(v17);
      memcpy(v18, v14, sizeof(v18));
      v6(v18);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v9 += 72;
      v10 += 72;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_19371495C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 41);
    v4 = (a2 + 41);
    do
    {
      v5 = *v3;
      v6 = *(v4 - 1);
      v7 = *v4;
      if (*(v3 - 1))
      {
        if (!*(v4 - 1))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 9) != *(v4 - 9))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (v5 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_193714A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = a1 + v5;
      v7 = *(a1 + v5 + 42);
      v8 = *(a1 + v5 + 48);
      v9 = *(a1 + v5 + 56);
      v10 = a2 + v5;
      v11 = *(a2 + v5 + 41);
      v12 = *(a2 + v5 + 42);
      v13 = *(a2 + v5 + 48);
      v14 = *(a2 + v5 + 56);
      if (*(a1 + v5 + 41))
      {
        if ((*(a2 + v5 + 41) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + v5 + 41))
        {
          return 0;
        }

        v22 = *(v6 + 32);
        v23 = *(v6 + 40) & 1;
        v19 = *(a1 + v5 + 48);
        v20 = *(v10 + 32);
        v21 = *(v10 + 40) & 1;
        v18 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
        v15 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
        v8 = v19;
        if (v18 != v15)
        {
          return 0;
        }
      }

      if (v7 == 2)
      {
        if (v12 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v12 == 2 || ((v12 ^ v7) & 1) != 0)
        {
          return result;
        }
      }

      if (v9)
      {
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v13)
        {
          v17 = v14;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          return 0;
        }
      }

      v5 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.properties.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.runtimeRequirements.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Entity.displayRepresentation.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_346_0(a1);
  sub_193613BF4(v1[3], v1[4], v1[5], v1[6], v1[7]);
  *&result = OUTLINED_FUNCTION_415().n128_u64[0];
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.systemProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.runtimeFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.coercions.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Entity.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = v3;
  v4 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v4, v5, v6, v7, 0);
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = v3;
  *(v0 + 72) = v3;
  *(v0 + 80) = v3;
  *(v0 + 88) = v3;
  return result;
}

uint64_t sub_193714E44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193714E6C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.id.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.type.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_416(a1);
  result = sub_193444060(v3);
  *(v2 + 32) = v1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.init()()
{
  *&v2 = OUTLINED_FUNCTION_227_3();
  *v3 = v2;
  v3[1] = v2;
  v4 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v4);
  *(v0 + 32) = v1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.Property.hashValue.getter()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypeDefinition.Version1.Entity.Property.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937152C8()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypeDefinition.Version1.Entity.Property.hash(into:)(v8);
  return sub_19393CB00();
}

void static ToolKitToolTypeDefinition.Version1.Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_327();
  v2 = *v0;
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[10];
  v6 = *v1;
  if ((~*v0 & 0xF000000000000007) != 0)
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {
      v81 = v1[1];
      v82 = v0[1];
      v78 = v1[2];
      v79 = v0[2];
      v76 = v1[3];
      v77 = v1[7];
      v73 = v0[8];
      v74 = v1[5];
      v71 = v0[9];
      v72 = v1[8];
      v69 = v1[10];
      v70 = v1[9];
      v75 = v1[4];
      v80 = v1[6];
      OUTLINED_FUNCTION_199_2();
      v13 = OUTLINED_FUNCTION_407();
      v15 = static ToolKitToolTypeIdentifier.== infix(_:_:)(v13, v14);

      sub_193444060(v2);
      if (v15)
      {
        goto LABEL_8;
      }

LABEL_25:
      OUTLINED_FUNCTION_232_4();
      return;
    }

    OUTLINED_FUNCTION_199_2();

LABEL_6:
    sub_193444060(v2);
    sub_193444060(v6);
    goto LABEL_25;
  }

  v81 = v1[1];
  v82 = v0[1];
  v78 = v1[2];
  v79 = v0[2];
  v76 = v1[3];
  v77 = v1[7];
  v73 = v0[8];
  v74 = v1[5];
  v71 = v0[9];
  v72 = v1[8];
  v69 = v1[10];
  v70 = v1[9];
  v75 = v1[4];
  v80 = v1[6];
  v68 = v1[11];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[11];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  sub_193437C90(v2);
  sub_193437C90(v6);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  sub_193444060(v2);
  v3 = v8;
  v5 = v7;
LABEL_8:
  if ((sub_193713F88(v82, v81) & 1) == 0 || (sub_193713908(v79, v78) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v3)
  {
    v30 = OUTLINED_FUNCTION_33_26();
    sub_1936161E4(v30, v31, v32, v33, 0);
    v34 = v77;
    if (!v77)
    {
      sub_1936161E4(v76, v75, v74, v80, 0);
      v60 = OUTLINED_FUNCTION_33_26();
      sub_193613BF4(v60, v61, v62, v63, 0);
      goto LABEL_19;
    }

    v35 = OUTLINED_FUNCTION_289_2();
    sub_1936161E4(v35, v36, v37, v38, v77);
    goto LABEL_17;
  }

  if (!v77)
  {
    v39 = OUTLINED_FUNCTION_33_26();
    v34 = v40;
    sub_1936161E4(v39, v41, v42, v43, v3);
    v44 = OUTLINED_FUNCTION_289_2();
    sub_1936161E4(v44, v45, v46, v47, 0);
    v48 = OUTLINED_FUNCTION_33_26();
    sub_1936161E4(v48, v49, v50, v51, v3);

LABEL_17:
    v52 = OUTLINED_FUNCTION_33_26();
    sub_193613BF4(v52, v53, v54, v55, v3);
    OUTLINED_FUNCTION_420();
    sub_193613BF4(v56, v57, v58, v59, v34);
    goto LABEL_25;
  }

  v16 = OUTLINED_FUNCTION_407();
  v83 = static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(v16, v17);
  v18 = OUTLINED_FUNCTION_33_26();
  sub_1936161E4(v18, v19, v20, v21, v3);
  sub_1936161E4(v76, v75, v74, v80, v77);
  v22 = OUTLINED_FUNCTION_33_26();
  sub_1936161E4(v22, v23, v24, v25, v3);

  v26 = OUTLINED_FUNCTION_33_26();
  sub_193613BF4(v26, v27, v28, v29, v3);
  if ((v83 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if ((sub_1937139C8(v73, v72) & 1) == 0 || !sub_1937144C8(v71, v70) || (sub_193714598(v5, v69, ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter, v64) & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_232_4();

  sub_193714660(v65, v66);
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v24 = v0[5];
  v25 = v0[9];
  v26 = v0[10];
  v27 = v0[11];
  OUTLINED_FUNCTION_148_8();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_334_0();
    ToolKitToolTypeIdentifier.hash(into:)();
  }

  v10 = OUTLINED_FUNCTION_188_0();
  sub_193736944(v10, v11);
  v12 = OUTLINED_FUNCTION_187();
  sub_193736658(v12, v13);
  if (!v6)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_113_3();
  sub_19393C640();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  sub_19393C640();
LABEL_11:
  v14 = OUTLINED_FUNCTION_102_4();
  sub_1934D11C8(v14, v15);
LABEL_12:
  v16 = OUTLINED_FUNCTION_30_15();
  sub_1937364D0(v16, v17);
  v18 = OUTLINED_FUNCTION_259_1();
  sub_193736F38(v18, v19);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  OUTLINED_FUNCTION_261_0();
  OUTLINED_FUNCTION_194();

  return sub_193736DB8(v20, v21);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.cases.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.runtimeRequirements.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Enumeration.displayRepresentation.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_346_0(a1);
  sub_193613BF4(v1[3], v1[4], v1[5], v1[6], v1[7]);
  *&result = OUTLINED_FUNCTION_415().n128_u64[0];
  return result;
}

void ToolKitToolTypeDefinition.Version1.Enumeration.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 73);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  *(v1 + 73) = v3;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.systemProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Enumeration.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = v3;
  v4 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v4, v5, v6, v7, 0);
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 72) = 256;
  *(v0 + 80) = v3;
  return result;
}

uint64_t sub_1937159F4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193715A1C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypeDefinition.Version1.Enumeration.Kind.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193715B54()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

void static ToolKitToolTypeDefinition.Version1.Enumeration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_327();
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 73);
  v13 = *(v0 + 80);
  v14 = *v1;
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  v17 = *(v1 + 72);
  v18 = *(v1 + 73);
  v19 = *(v1 + 80);
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    v95 = *(v1 + 8);
    v96 = *(v0 + 8);
    v93 = *(v1 + 16);
    v94 = *(v0 + 16);
    v91 = *(v1 + 56);
    v92 = *(v1 + 24);
    v90 = *(v1 + 40);
    v88 = *(v1 + 73);
    v89 = *(v0 + 73);
    v82 = *(v1 + 72);
    v84 = *(v1 + 64);
    v86 = *(v0 + 72);
    v81 = *(v0 + 64);
    v20 = *(v1 + 32);
    v21 = *(v1 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    sub_193437C90(v3);
    sub_193437C90(v14);
    if ((~v14 & 0xF000000000000007) == 0)
    {
      sub_193444060(v3);
      v8 = v22;
      v16 = v21;
      v15 = v20;
      goto LABEL_8;
    }

LABEL_6:
    sub_193444060(v3);
    sub_193444060(v14);
    goto LABEL_18;
  }

  v99 = *v0;
  if ((~v14 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_199_2();

    goto LABEL_6;
  }

  v95 = *(v1 + 8);
  v96 = *(v0 + 8);
  v93 = *(v1 + 16);
  v94 = *(v0 + 16);
  v91 = *(v1 + 56);
  v92 = *(v1 + 24);
  v90 = *(v1 + 40);
  v88 = *(v1 + 73);
  v89 = *(v0 + 73);
  v83 = *(v1 + 72);
  v85 = *(v1 + 64);
  v87 = *(v0 + 72);
  v98 = *v1;
  OUTLINED_FUNCTION_199_2();
  v26 = OUTLINED_FUNCTION_407();
  v28 = static ToolKitToolTypeIdentifier.== infix(_:_:)(v26, v27);

  sub_193444060(v3);
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((sub_1937140E8(v96, v95) & 1) == 0 || (sub_193713908(v94, v93) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    v44 = OUTLINED_FUNCTION_34_33();
    sub_1936161E4(v44, v45, v46, v47, 0);
    v48 = v91;
    if (!v91)
    {
      sub_1936161E4(v92, v15, v90, v16, 0);
      v73 = OUTLINED_FUNCTION_34_33();
      v43 = sub_193613BF4(v73, v74, v75, v76, 0);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_95_3();
    sub_1936161E4(v49, v50, v51, v52, v91);
LABEL_17:
    v65 = OUTLINED_FUNCTION_34_33();
    sub_193613BF4(v65, v66, v67, v68, v8);
    OUTLINED_FUNCTION_95_3();
    sub_193613BF4(v69, v70, v71, v72, v48);
    goto LABEL_18;
  }

  if (!v91)
  {
    v53 = OUTLINED_FUNCTION_34_33();
    v48 = 0;
    sub_1936161E4(v53, v54, v55, v56, v8);
    OUTLINED_FUNCTION_95_3();
    sub_1936161E4(v57, v58, v59, v60, 0);
    v61 = OUTLINED_FUNCTION_34_33();
    sub_1936161E4(v61, v62, v63, v64, v8);

    goto LABEL_17;
  }

  v29 = OUTLINED_FUNCTION_407();
  v97 = static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(v29, v30);
  v31 = OUTLINED_FUNCTION_34_33();
  sub_1936161E4(v31, v32, v33, v34, v8);
  sub_1936161E4(v92, v15, v90, v16, v91);
  v35 = OUTLINED_FUNCTION_34_33();
  sub_1936161E4(v35, v36, v37, v38, v8);

  v39 = OUTLINED_FUNCTION_34_33();
  v43 = sub_193613BF4(v39, v40, v41, v42, v8);
  if ((v97 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  if (v89)
  {
    if (v88)
    {
      goto LABEL_25;
    }

LABEL_18:
    OUTLINED_FUNCTION_232_4();
    return;
  }

  if (v88)
  {
    goto LABEL_18;
  }

  v77 = ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter(v43);
  if (v77 != ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter(v77))
  {
    goto LABEL_18;
  }

LABEL_25:
  OUTLINED_FUNCTION_232_4();

  sub_1937144C8(v78, v79);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v22 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v23 = *(v0 + 72);
  v8 = *(v0 + 73);
  v24 = v0[8];
  v25 = v0[10];
  OUTLINED_FUNCTION_148_8();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();
  }

  v10 = OUTLINED_FUNCTION_113_3();
  sub_193736AC4(v10, v11);
  v12 = OUTLINED_FUNCTION_114_0();
  sub_193736658(v12, v13);
  if (v6)
  {
    OUTLINED_FUNCTION_103_0();
    if (v5)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_196_4();
      sub_19393C640();
      if (v7)
      {
LABEL_7:
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_345_0();
        sub_19393C640();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
      if (v7)
      {
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_104_0();
LABEL_12:
    v16 = OUTLINED_FUNCTION_188_0();
    sub_1934D11C8(v16, v17);
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_9:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_312_0();
    v15 = ToolKitToolTypeDefinition.Version1.Enumeration.Kind.rawValue.getter(v14);
    MEMORY[0x193B18030](v15);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_104_0();
  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  OUTLINED_FUNCTION_104_0();
LABEL_14:
  OUTLINED_FUNCTION_263_1();
  OUTLINED_FUNCTION_194();

  return sub_193736F38(v18, v19);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypeDefinition.Version1.Enumeration.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937160AC()
{
  sub_19393CAB0();
  ToolKitToolTypeDefinition.Version1.Enumeration.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.templates.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  memcpy(a1, (v1 + 8), 0x48uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE41AC8, &qword_1939807C8);
}

void *ToolKitToolTypeDefinition.Version1.Query.templates.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41AC8, &qword_1939807C8);
  return memcpy((v1 + 8), a1, 0x48uLL);
}

void ToolKitToolTypeDefinition.Version1.Query.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  *v0 = v1;
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  sub_19344E6DC(v3, &qword_1EAE41AC8, &qword_1939807C8);
  *(v0 + 8) = 0u;
  OUTLINED_FUNCTION_315_0(0);
  *(v0 + 72) = 0;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.comparison.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.sampleInvocations.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.valueSearch.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1937375FC(v2);
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.valueSearch.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_416(a1);
  result = sub_193710054(v3);
  *(v2 + 32) = v1;
  return result;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1934D1694(v2, v3);
}

__n128 ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.metadata.setter(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  sub_1934D16DC(v1[5], v1[6]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  return result;
}

double ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 16843009;
  *(a1 + 16) = v2;
  *(a1 + 24) = 257;
  sub_193710054(0xD000000000000007);
  v3 = OUTLINED_FUNCTION_107_13();
  sub_1934D16DC(v3, v4);
  result = -2.31584178e77;
  *(a1 + 32) = xmmword_19397F910;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1937165A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v18 = *v4;
  v19 = v4[1];
  v6 = sub_19393CAB0();
  v14 = OUTLINED_FUNCTION_134_0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  a4(v14);
  return sub_19393CB00();
}

void static ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_234_3();
  a41 = v42;
  a42 = v43;
  v45 = *(v44 + 8);
  v46 = *(v44 + 9);
  v100 = *(v44 + 11);
  v101 = *(v44 + 10);
  v99 = *(v44 + 16);
  v97 = *(v44 + 24);
  v93 = *(v44 + 40);
  v91 = *(v44 + 32);
  v92 = *(v44 + 48);
  v88 = *(v44 + 56);
  v89 = *(v44 + 64);
  v48 = *v47;
  v49 = *(v47 + 8);
  v50 = *(v47 + 9);
  v51 = *(v47 + 10);
  v52 = *(v47 + 11);
  v98 = v47[2];
  v95 = *(v44 + 25);
  v96 = *(v47 + 24);
  v94 = *(v47 + 25);
  v53 = v47[5];
  v90 = v47[4];
  v54 = v47[7];
  v87 = v47[6];
  v55 = v47[8];
  OUTLINED_FUNCTION_102_8(*v44);
  sub_193714770();
  if ((v56 & 1) != 0 && ((v45 ^ v49) & 1) == 0 && ((v46 ^ v50) & 1) == 0 && ((v101 ^ v51) & 1) == 0 && ((v100 ^ v52) & 1) == 0)
  {
    v57 = v55;
    v58 = v54;
    if ((sub_1937139C8(v99, v98) & 1) != 0 && ((v97 ^ v96) & 1) == 0 && ((v95 ^ v94) & 1) == 0)
    {
      if ((v91 & 0xF000000000000007) == 0xD000000000000007)
      {
        sub_1937375FC(v91);
        sub_1937375FC(v90);
        v59 = v90;
        v61 = v92;
        v60 = v93;
        if ((v90 & 0xF000000000000007) == 0xD000000000000007)
        {
          sub_193710054(v91);
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      a26 = v91;
      v59 = v90;
      v61 = v92;
      v60 = v93;
      if ((v90 & 0xF000000000000007) == 0xD000000000000007)
      {
        sub_1937375FC(v91);
        sub_1937375FC(v90);
        sub_1937375FC(v91);
        sub_193444060(v91);
LABEL_14:
        sub_193710054(v91);
        sub_193710054(v59);
        goto LABEL_23;
      }

      a22 = v90;
      sub_1937375FC(v91);
      sub_1937375FC(v90);
      sub_1937375FC(v91);
      v62 = static ToolKitToolTypeInstance.Deferred.== infix(_:_:)(&a26, &a22);
      sub_193444060(v90);
      sub_193444060(v91);
      sub_193710054(v91);
      if (v62)
      {
LABEL_16:
        if (v61 == 1)
        {
          OUTLINED_FUNCTION_69_1();
          sub_1934D1694(v63, v64);
          if (v87 == 1)
          {
            v65 = OUTLINED_FUNCTION_37_7();
            sub_1934D1694(v65, v66);
            sub_1934D16DC(v60, 1);
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_196_4();
          sub_1934D1694(v73, v74);
        }

        else
        {
          a26 = v60;
          a27 = v61;
          a28 = v88;
          a29 = v89;
          if (v87 != 1)
          {
            a22 = v53;
            a23 = v87;
            a24 = v58;
            a25 = v57;
            static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(&a26);
            v79 = OUTLINED_FUNCTION_1_55();
            sub_1934D1694(v79, v80);
            OUTLINED_FUNCTION_196_4();
            sub_1934D1694(v81, v82);
            v83 = OUTLINED_FUNCTION_1_55();
            sub_1934D1694(v83, v84);

            v85 = OUTLINED_FUNCTION_1_55();
            sub_1934D16DC(v85, v86);
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_24_1();
          OUTLINED_FUNCTION_69_1();
          sub_1934D1694(v67, v68);
          v69 = OUTLINED_FUNCTION_37_7();
          sub_1934D1694(v69, v70);
          OUTLINED_FUNCTION_24_1();
          OUTLINED_FUNCTION_69_1();
          sub_1934D1694(v71, v72);
        }

        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_69_1();
        sub_1934D16DC(v75, v76);
        OUTLINED_FUNCTION_196_4();
        sub_1934D16DC(v77, v78);
      }
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_160_8();
}

void ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v6 = v0[2];
  v7 = *(v0 + 24);
  v14 = *(v0 + 25);
  v9 = v0[4];
  v8 = v0[5];
  v13 = v0[7];
  v15 = v0[6];
  v16 = v0[8];
  sub_193736FC4();
  sub_19393CAD0();
  sub_19393CAD0();
  sub_19393CAD0();
  sub_19393CAD0();
  v10 = OUTLINED_FUNCTION_262_0();
  sub_1937364D0(v10, v11);
  sub_19393CAD0();
  sub_19393CAD0();
  if ((v9 & 0xF000000000000007) == 0xD000000000000007)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    if ((v9 & 0xF000000000000007) == 0xF000000000000007)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_193437C90(v9);

      OUTLINED_FUNCTION_334_0();
      ToolKitToolTypeInstance.hash(into:)();
    }

    sub_193710054(v9);
  }

  if (v15 == 1)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v15)
  {
    OUTLINED_FUNCTION_104_0();
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_194();
    return;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_345_0();
  sub_19393C640();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  OUTLINED_FUNCTION_194();

  sub_19393C640();
}

uint64_t static ToolKitToolTypeDefinition.Version1.Query.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  memcpy(__dst, a1 + 1, sizeof(__dst));
  v4 = *a2;
  memcpy(v79, a2 + 1, sizeof(v79));
  OUTLINED_FUNCTION_147_8();
  if (v6)
  {
    v7 = v5 & ~v4;
    OUTLINED_FUNCTION_120_8();
    if (v7)
    {
LABEL_7:
      v8 = OUTLINED_FUNCTION_267_2();
      sub_193444060(v8);
LABEL_16:
      v31 = 0;
      return v31 & 1;
    }

    sub_193444060(v3);
  }

  else
  {
    __src[0] = v3;
    if ((v5 & ~v4) == 0)
    {
      OUTLINED_FUNCTION_44_22();

      goto LABEL_7;
    }

    v64[0] = v4;
    OUTLINED_FUNCTION_44_22();
    v9 = static ToolKitToolTypeIdentifier.== infix(_:_:)(__src, v64);

    sub_193444060(v3);
    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v10 = __dst[0];
  v74 = *&__dst[1];
  v75 = *&__dst[3];
  v76 = *&__dst[5];
  v77 = *&__dst[7];
  v11 = v79[0];
  v70 = *&v79[1];
  v71 = *&v79[3];
  v72 = *&v79[5];
  v73 = *&v79[7];
  if (!__dst[0])
  {
    if (!v79[0])
    {
      __src[0] = 0;
      OUTLINED_FUNCTION_230_3(__dst);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v53, v54, v55, v56);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v57, v58, v59, v60);
      OUTLINED_FUNCTION_247_2(__src);
      v31 = 1;
      return v31 & 1;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v32, v33, v34, v35);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v36, v37, v38, v39);
    goto LABEL_15;
  }

  __src[0] = __dst[0];
  OUTLINED_FUNCTION_230_3(__dst);
  memcpy(v64, __src, sizeof(v64));
  if (!v11)
  {
    memcpy(v63, __src, sizeof(v63));
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v40, v41, v42, v43);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v44, v45, v46, v47);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v48, v49, v50, v51);
    sub_193737618(v63);
LABEL_15:
    *&__src[1] = v74;
    *&__src[3] = v75;
    *&__src[5] = v76;
    *&__src[7] = v77;
    __src[0] = v10;
    __src[9] = v11;
    v66 = v70;
    v67 = v71;
    v68 = v72;
    v69 = v73;
    sub_19344E6DC(__src, &qword_1EAE41AD0, &unk_1939807D0);
    goto LABEL_16;
  }

  *&v63[1] = *&v79[1];
  *&v63[3] = *&v79[3];
  *&v63[5] = *&v79[5];
  *&v63[7] = *&v79[7];
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v12, v13, v14, v15);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v16, v17, v18, v19);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v20, v21, v22, v23);
  static ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(v64, v63, v24, v25, v26, v27, v28, v29, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v11, v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6]);
  v31 = v30;
  memcpy(v61, v63, sizeof(v61));
  sub_193737618(v61);
  memcpy(v62, v64, sizeof(v62));
  sub_193737618(v62);
  v63[0] = v10;
  *&v63[1] = v74;
  *&v63[3] = v75;
  *&v63[5] = v76;
  *&v63[7] = v77;
  OUTLINED_FUNCTION_247_2(v63);
  return v31 & 1;
}

uint64_t ToolKitToolTypeDefinition.Version1.Query.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v3 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_148_8();
  if (!v4)
  {
    __dst[0] = v3;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();

    if (!v2)
    {
      return OUTLINED_FUNCTION_104_0();
    }

LABEL_4:
    v5 = v1[2];
    *&__src[1] = v1[1];
    *&__src[3] = v5;
    v6 = v1[4];
    *&__src[5] = v1[3];
    *&__src[7] = v6;
    __src[0] = v2;
    OUTLINED_FUNCTION_103_0();
    v11 = v2;
    v7 = v1[2];
    v12 = v1[1];
    v13 = v7;
    v8 = v1[4];
    v14 = v1[3];
    v15 = v8;
    sub_1936C1BDC(&v11, __dst);
    OUTLINED_FUNCTION_161();
    ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.hash(into:)();
    memcpy(__dst, __src, sizeof(__dst));
    return sub_193737618(__dst);
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
    goto LABEL_4;
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolTypeDefinition.Version1.Codable.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

__n128 ToolKitToolTypeDefinition.Version1.Codable.displayRepresentation.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_346_0(a1);
  sub_193613BF4(v2[2], v2[3], v2[4], v2[5], v2[6]);
  result = *v1;
  v5 = *(v1 + 16);
  *(v2 + 1) = *v1;
  *(v2 + 2) = v5;
  v2[6] = v3;
  return result;
}

void __swiftcall ToolKitToolTypeDefinition.Version1.Codable.init()(IntelligencePlatformLibrary::ToolKitToolTypeDefinition::Version1::Codable *__return_ptr retstr)
{
  OUTLINED_FUNCTION_228_4(retstr);
  v2 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v2, v3, v4, v5, 0);
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
}

void static ToolKitToolTypeDefinition.Version1.Codable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_273_1();
  a31 = v32;
  a32 = v35;
  v36 = v33[2];
  v38 = v33[3];
  v37 = v33[4];
  v39 = v33[5];
  v40 = v33[6];
  v41 = v34[1];
  v42 = v34[2];
  v43 = v34[3];
  v44 = v34[4];
  v45 = v34[5];
  v46 = v34[6];
  if (!v33[1])
  {
    if (v41)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (v40)
    {
      a16 = v36;
      a17 = v38;
      a18 = v37;
      a19 = v39;
      a20 = v40;
      if (v46)
      {
        a11 = v42;
        a12 = v43;
        a13 = v44;
        a14 = v45;
        a15 = v46;
        static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(&a16, &a11);
        v50 = OUTLINED_FUNCTION_30_23();
        sub_1936161E4(v50, v51, v52, v53, v54);
        v55 = OUTLINED_FUNCTION_63_15();
        sub_1936161E4(v55, v56, v57, v58, v46);
        v59 = OUTLINED_FUNCTION_30_23();
        sub_1936161E4(v59, v60, v61, v62, v63);

        v64 = OUTLINED_FUNCTION_30_23();
        sub_193613BF4(v64, v65, v66, v67, v68);
        goto LABEL_17;
      }

      v77 = OUTLINED_FUNCTION_30_23();
      sub_1936161E4(v77, v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_63_15();
      sub_1936161E4(v82, v83, v84, v85, 0);
      v86 = OUTLINED_FUNCTION_30_23();
      sub_1936161E4(v86, v87, v88, v89, v90);
    }

    else
    {
      v69 = OUTLINED_FUNCTION_35_30();
      sub_1936161E4(v69, v70, v71, v72, 0);
      if (!v46)
      {
        v100 = OUTLINED_FUNCTION_63_15();
        sub_1936161E4(v100, v101, v102, v103, 0);
        v104 = OUTLINED_FUNCTION_35_30();
        sub_193613BF4(v104, v105, v106, v107, 0);
        goto LABEL_17;
      }

      v73 = OUTLINED_FUNCTION_63_15();
      sub_1936161E4(v73, v74, v75, v76, v46);
    }

    v91 = OUTLINED_FUNCTION_30_23();
    sub_193613BF4(v91, v92, v93, v94, v95);
    v96 = OUTLINED_FUNCTION_63_15();
    sub_193613BF4(v96, v97, v98, v99, v46);
    goto LABEL_17;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_155(v33, v34);
    v49 = v49 && v47 == v48;
    if (v49 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolTypeDefinition.Version1.Codable.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  if (v0[1])
  {
    v6 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_14();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_19393CAD0();
  if (!v3)
  {
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_19393CAD0();
    goto LABEL_10;
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_10_0();
  sub_19393C640();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_175();
  sub_19393C640();
LABEL_10:
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_236();

  sub_1934D11C8(v7, v8);
}

uint64_t ToolKitToolTypeDefinition.Version1.Codable.hashValue.getter()
{
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v15 = *(v0 + 6);
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_433(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypeDefinition.Version1.Codable.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937173B4()
{
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v15 = *(v0 + 6);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_433(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypeDefinition.Version1.Codable.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.ID.serializedVariable.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.ID.typeInstance.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_339(a1);
  result = sub_193444060(v3);
  *(v2 + 16) = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.ID.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.ID.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.ID.init()()
{
  v2 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v2, 0xF000000000000000);
  *v0 = xmmword_193950B20;
  v3 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v3);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;
  return result;
}

void static ToolKitToolTypedValue.ID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_108_0();
  a23 = v24;
  a24 = v25;
  v28 = *v26;
  v27 = v26[1];
  v30 = v26[2];
  v29 = v26[3];
  v31 = v26[4];
  v34 = *v32;
  v33 = v32[1];
  v36 = v32[2];
  v35 = v32[3];
  v37 = v32[4];
  OUTLINED_FUNCTION_296_1();
  if (!(!v42 & v41))
  {
    OUTLINED_FUNCTION_340_0();
    if (!(!v42 & v41))
    {
      v58 = v43;
      v48 = OUTLINED_FUNCTION_17_36();
      v49 = MEMORY[0x193B172A0](v48);
      v50 = OUTLINED_FUNCTION_33_7();
      sub_19345012C(v50, v51);
      v52 = OUTLINED_FUNCTION_82();
      sub_19345012C(v52, v53);
      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

LABEL_8:
    v44 = OUTLINED_FUNCTION_17_36();
    sub_19345012C(v44, v45);
    v46 = OUTLINED_FUNCTION_33_7();
    sub_19345012C(v46, v47);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_340_0();
  if (!(!v42 & v41))
  {
    goto LABEL_8;
  }

  v58 = v38;
  v39 = OUTLINED_FUNCTION_17_36();
  sub_19345012C(v39, v40);
LABEL_10:
  OUTLINED_FUNCTION_179_5();
  if (v42)
  {
    v55 = v54 & ~v36;
    OUTLINED_FUNCTION_348(v30);
    if (v55)
    {
LABEL_16:
      sub_193444060(v30);
      sub_193444060(v36);
      goto LABEL_17;
    }

    sub_193444060(v30);
  }

  else
  {
    a12 = v30;
    if ((v54 & ~v36) == 0)
    {
      OUTLINED_FUNCTION_95_14();

      goto LABEL_16;
    }

    a11 = v36;
    OUTLINED_FUNCTION_95_14();
    v56 = static ToolKitToolTypeInstance.== infix(_:_:)(&a12, &a11);

    sub_193444060(v30);
    if ((v56 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v31 && v37 && (v58 != v35 || v31 != v37))
  {
    OUTLINED_FUNCTION_5_5();
  }

LABEL_17:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.ID.hashValue.getter()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.ID.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_193717840()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.ID.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.exponent.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.length.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.Decimal.mantissa.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 44);
  *a1 = *(v1 + 28);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 60);
  result = *(v1 + 74);
  *(a1 + 46) = result;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.Decimal.mantissa.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 44) = v2;
  *(v1 + 60) = *(a1 + 32);
  result = *(a1 + 46);
  *(v1 + 74) = result;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 513;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 89) = 1;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_193717A04@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193717A2C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._3.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._4.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._5.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._6.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa._7.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
}

void static ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.== infix(_:_:)()
{
  OUTLINED_FUNCTION_115();
  v11 = *(v0 + 56);
  v2 = *(v1 + 4);
  v3 = *(v1 + 56);
  v4 = *(v1 + 60);
  if (*(v0 + 4))
  {
    if (!*(v1 + 4))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*v0 != *v1)
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 12))
  {
    if (!*(v1 + 12))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 8) == *(v1 + 8))
    {
      v5 = *(v1 + 12);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 20))
  {
    if (!*(v1 + 20))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 16) == *(v1 + 16))
    {
      v6 = *(v1 + 20);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 28))
  {
    if (!*(v1 + 28))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 24) == *(v1 + 24))
    {
      v7 = *(v1 + 28);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 36))
  {
    if (!*(v1 + 36))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 32) == *(v1 + 32))
    {
      v8 = *(v1 + 36);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 44))
  {
    if (!*(v1 + 44))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (*(v0 + 40) == *(v1 + 40))
    {
      v9 = *(v1 + 44);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_50;
    }
  }

  if (*(v0 + 52))
  {
    if (!*(v1 + 52))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (*(v0 + 48) == *(v1 + 48))
  {
    v10 = *(v1 + 52);
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
LABEL_49:
    *(v0 + 60);
  }

LABEL_50:
  OUTLINED_FUNCTION_114();
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 12);
  v15 = v0[2];
  v16 = v0[4];
  v17 = v0[6];
  v18 = *(v0 + 20);
  v19 = *(v0 + 28);
  v2 = *(v0 + 36);
  v3 = *(v0 + 44);
  v4 = *(v0 + 52);
  v5 = *(v0 + 60);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = *(v0 + 36);
    v6 = v0[8];
    v7 = *(v0 + 44);
    v8 = v0[10];
    v9 = *(v0 + 52);
    v10 = v0[12];
    v11 = *(v0 + 60);
    v12 = v0[14];
    v13 = *v0;
    sub_19393CAD0();
    v5 = v11;
    v4 = v9;
    v3 = v7;
    v2 = v14;
    sub_19393CAE0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  sub_19393CAD0();
  if (!v18)
  {
    sub_19393CAE0();
  }

  if (v19)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
LABEL_10:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  sub_19393CAD0();
  if (!v3)
  {
LABEL_11:
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_19393CAD0();
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_18:
    sub_19393CAD0();
    goto LABEL_19;
  }

LABEL_16:
  sub_19393CAD0();
  if (v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_19393CAD0();
  sub_19393CAE0();
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_13:
  sub_19393CAD0();
  sub_19393CAE0();
LABEL_19:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937180B4()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.Decimal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  v4 = *(v2 + 12);
  v5 = *(v2 + 16);
  v6 = *(v2 + 17);
  v7 = *(v2 + 20);
  v8 = *(v2 + 24);
  v9 = *(v2 + 89);
  v10 = *(v3 + 9);
  v11 = *(v3 + 12);
  v12 = *(v3 + 16);
  v13 = *(v3 + 17);
  v14 = *(v3 + 20);
  v15 = *(v3 + 24);
  v16 = *(v3 + 89);
  if (*(v2 + 9))
  {
    if ((*(v3 + 9) & 1) == 0)
    {
LABEL_28:
      v23 = 0;
      return v23 & 1;
    }
  }

  else
  {
    if (*(v3 + 9))
    {
      goto LABEL_28;
    }

    v31 = *(v3 + 89);
    v32 = *(v2 + 89);
    v17 = *(v0 + 8);
    v34 = *v1;
    v36 = v1[1] & 1;
    v33 = *v0;
    OUTLINED_FUNCTION_331_0();
    v29 = v19;
    v30 = v18;
    v28 = v20;
    v27 = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
    v21 = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
    v15 = v28;
    v8 = v29;
    v7 = v30;
    v16 = v31;
    v9 = v32;
    if (v27 != v21)
    {
      goto LABEL_28;
    }
  }

  if (v5)
  {
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v4 == v11)
    {
      v22 = v12;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_28;
    }
  }

  if (v6 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v23 = 0;
    if (v13 == 2 || ((v13 ^ v6) & 1) != 0)
    {
      return v23 & 1;
    }
  }

  if (v8)
  {
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v24 = v15;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_28;
    }
  }

  if ((v9 & 1) == 0)
  {
    v35 = *(v1 + 28);
    v37 = *(v1 + 44);
    v38 = *(v1 + 60);
    v25 = *(v1 + 73);
    if ((v16 & 1) == 0)
    {
      static ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_28;
  }

  v23 = v16;
  return v23 & 1;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 24);
  v5 = *(v0 + 89);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v1 + 8);
    v13 = *(v0 + 17);
    v7 = *(v0 + 12);
    v8 = *(v0 + 24);
    v9 = *(v0 + 89);
    v10 = *(v0 + 20);
    v11 = *v1;
    OUTLINED_FUNCTION_103_0();
    v5 = v9;
    v4 = v8;
    v3 = v13;
    OUTLINED_FUNCTION_177_1();
    v12 = ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.rawValue.getter();
    MEMORY[0x193B18030](v12);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_104_0();
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa.hash(into:)();
LABEL_13:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937183D4()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Measurement.unit.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Measurement.unitType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  OUTLINED_FUNCTION_5_2(a1);
}

void ToolKitToolTypedValue.PrimitiveValue.Measurement.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 256;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.Measurement.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_454(a1);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 41);
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = *(v4 + 40);
  v15 = *(v4 + 41);
  if (v2)
  {
    if (!v10)
    {
      return 0;
    }

    v1 = OUTLINED_FUNCTION_155(v1, v4);
    v16 = v16 && v2 == v10;
    if (!v16)
    {
      v1 = sub_19393CA30();
      if ((v1 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_10:
    if (v6)
    {
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v11)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if (v9)
    {
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15)
      {
        return 0;
      }

      v18 = ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter(v1, v2, v3, v10);
      if (v18 != ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter(v18, v19, v20, v21))
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  return 0;
}

void ToolKitToolTypedValue.PrimitiveValue.Measurement.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  if (v0[1])
  {
    v6 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_103_0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v1;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x193B18060](v12);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_104_0();
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v11 = ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.rawValue.getter(v7, v8, v9, v10);
  MEMORY[0x193B18030](v11);
LABEL_11:
  OUTLINED_FUNCTION_114();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Measurement.hashValue.getter()
{
  OUTLINED_FUNCTION_406();
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *(v0 + 41);
  v16 = *v0;
  OUTLINED_FUNCTION_93_11(v4);
  v5 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  ToolKitToolTypedValue.PrimitiveValue.Measurement.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371870C()
{
  OUTLINED_FUNCTION_406();
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *(v0 + 41);
  v16 = *v0;
  OUTLINED_FUNCTION_93_11(v4);
  v5 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  ToolKitToolTypedValue.PrimitiveValue.Measurement.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.currencyIdentifier.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.currencyIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  v2 = OUTLINED_FUNCTION_451(v1);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 112));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_451(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 112));
}

void ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.init()(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  *(v1 + 16) = 768;
  OUTLINED_FUNCTION_315_0(0);
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  v3[0] = v2;
  v3[1] = v2;
  v3[2] = v2;
  v3[3] = v2;
  v3[4] = v2;
  sub_19344E6DC(v3, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_314_1(0);
}

void static ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = v2[2];
  v5 = v2[12];
  v6 = v2[13];
  memcpy(v110, v2 + 14, sizeof(v110));
  v7 = *(v1 + 16);
  v9 = *(v1 + 96);
  v8 = *(v1 + 104);
  memcpy(v111, (v1 + 112), sizeof(v111));
  if ((v4 & 0xFF00) == 0x300)
  {
    if ((v7 & 0xFF00) != 0x300)
    {
      goto LABEL_22;
    }
  }

  else
  {
    __src[0] = *v3;
    memcpy(&__src[1] + 8, v3 + 24, 0x42uLL);
    *&__src[1] = v4;
    if ((v7 & 0xFF00) == 0x300)
    {
      goto LABEL_22;
    }

    *v76 = *v1;
    memcpy(&v76[24], (v1 + 24), 0x42uLL);
    *&v76[16] = v7;
    if ((static ToolKitToolTypedValue.PrimitiveValue.Decimal.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    if (v8)
    {
      goto LABEL_22;
    }

LABEL_15:
    v107 = v110[0];
    v108 = v110[1];
    v11 = *(&v110[2] + 1);
    v109 = *&v110[2];
    v12 = *(&v111[2] + 1);
    v104 = *&v111[2];
    v105 = v110[3];
    v106 = v110[4];
    __src[12] = v111[0];
    __src[13] = v111[1];
    __src[10] = v111[3];
    __src[11] = v111[4];
    if (*(&v110[2] + 1))
    {
      __src[0] = v110[0];
      __src[1] = v110[1];
      __src[2] = v110[2];
      OUTLINED_FUNCTION_403(v110);
      v13 = memcpy(v76, __src, 0x50uLL);
      if (v12)
      {
        *v97 = v111[0];
        v98 = v111[1];
        v101 = v111[3];
        v102 = v111[4];
        v99 = *&v111[2];
        v100 = v12;
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v21, v22, v23, v24);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v25, v26, v27, v28);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v29, v30, v31, v32);
        v33 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v76, v97);
        OUTLINED_FUNCTION_363_0(v33, v34, v35, v36, v37, v38, v39, v40, *v76, *&v76[8], *&v76[16], *&v76[24], *&v76[32], *&v76[40], *&v76[48], *&v76[56], *&v76[64], *&v76[72], *&v76[80], *&v76[88], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0]);
        sub_1937375CC(&v77);
        OUTLINED_FUNCTION_316_1(&v87, v41, v42, v43, v44, v45, v46, v47, *v76);
        sub_1937375CC(&v87);
        *v97 = v107;
        v98 = v108;
        v99 = v109;
        v100 = v11;
        v101 = v105;
        v102 = v106;
        OUTLINED_FUNCTION_247_2(v97);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_361_1(v13, v14, v15, v16, v17, v18, v19, v20, *v76, *&v76[8], *&v76[16], *&v76[24], *&v76[32], *&v76[40], *&v76[48], *&v76[56], *&v76[64], *&v76[72], *&v76[80], *&v76[88], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97[0], *&v97[8], v98, *(&v98 + 1), v99, v100, v101, *(&v101 + 1), v102, *(&v102 + 1), __src[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v56, v57, v58, v59);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v60, v61, v62, v63);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v64, v65, v66, v67);
      sub_1937375CC(v97);
    }

    else
    {
      if (!*(&v111[2] + 1))
      {
        __src[0] = v110[0];
        __src[1] = v110[1];
        __src[2] = *&v110[2];
        OUTLINED_FUNCTION_403(v110);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v68, v69, v70, v71);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v72, v73, v74, v75);
        OUTLINED_FUNCTION_247_2(__src);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v48, v49, v50, v51);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v52, v53, v54, v55);
    }

    OUTLINED_FUNCTION_157_10();
    sub_19344E6DC(__src, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_22;
  }

  if (v8)
  {
    if (v5 == v9 && v6 == v8)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_46_14();
    if (sub_19393CA30())
    {
      goto LABEL_15;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 16);
  v3 = v1[6].n128_i64[0];
  v4 = v1[6].n128_i64[1];
  v5 = v1[9].n128_i64[1];
  if ((v2 & 0xFF00) == 0x300)
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  v57 = *v1;
  memcpy(v59, &v1[1].n128_i8[8], sizeof(v59));
  v58 = v2;
  OUTLINED_FUNCTION_103_0();
  ToolKitToolTypedValue.PrimitiveValue.Decimal.hash(into:)();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
  if (v5)
  {
LABEL_4:
    *v28 = v1[7];
    v31 = v1[8];
    v6 = v1[9].n128_i64[0];
    v7 = v1[10];
    v8 = v1[11];
    v9 = OUTLINED_FUNCTION_182_6();
    OUTLINED_FUNCTION_238_3(v1[10], v1[11], v9, v10, v11, v12, v13, v14, v15, v16, v28[0], v28[1], v31.n128_i64[0], v31.n128_i64[1], v34, v36, v38, v40, v42, v44, *&v1[7], v1[7].n128_i64[1], v1[8].n128_i64[0], v1[8].n128_i64[1], v1[9].n128_i64[0], v5, v17, v18, v52);
    OUTLINED_FUNCTION_39_20();
    ToolKitToolDisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_236_2(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v32, v33, v35, v37, v39, v41, v43, v45, v46, v47, v48, v49, v50, v51, v53, v54, v55, v56, v57.n128_i8[0]);
    return sub_1937375CC(&v57);
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_430(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v2, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_139_10(0);
}

uint64_t sub_193718E90@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193718EB8@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v6 = v2[3];
  v100 = v2[2];
  memcpy(v136, v2 + 4, sizeof(v136));
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);
  v11 = v1[2];
  v10 = v1[3];
  OUTLINED_FUNCTION_368_1(&v137);
  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_22;
    }

    *v125 = v3;
    v125[8] = v4 & 1;
    *v115 = v7;
    LOBYTE(v116) = v8 & 1;
    v12 = ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.rawValue.getter();
    if (v12 != ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    if (v10)
    {
      goto LABEL_22;
    }

LABEL_15:
    v133 = OUTLINED_FUNCTION_283_1();
    v134 = v14;
    v15 = *(&v136[2] + 1);
    v135 = *&v136[2];
    v16 = v139;
    v130 = v138;
    v131 = v136[3];
    v132 = v136[4];
    v128 = OUTLINED_FUNCTION_399();
    v129 = v17;
    v126 = v140;
    v127 = v141;
    if (v15)
    {
      *v125 = OUTLINED_FUNCTION_283_1();
      *&v125[16] = v18;
      *&v125[32] = *&v136[2];
      *&v125[40] = v15;
      OUTLINED_FUNCTION_403(v19);
      OUTLINED_FUNCTION_361_1(v20, v21, v22, v23, v24, v25, v26, v27, v97, v100, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v115[0], v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
      if (v16)
      {
        __src[0] = OUTLINED_FUNCTION_399();
        __src[1] = v28;
        v30 = *(v29 + 64);
        __src[3] = *(v29 + 48);
        __src[4] = v30;
        *&__src[2] = v138;
        OUTLINED_FUNCTION_401();
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v31, v32, v33, v34);
        OUTLINED_FUNCTION_400();
        OUTLINED_FUNCTION_75_0();
        v39 = sub_193448804(v35, v36, v37, v38);
        OUTLINED_FUNCTION_419(v39, v40, v41, v42, v43, v44, v45, v46, v98, v101, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], v16, *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v47, v48, v49, v50);
        static ToolKitToolDisplayRepresentation.== infix(_:_:)(v115, __src);
        memcpy(__dst, __src, sizeof(__dst));
        v51 = sub_1937375CC(__dst);
        OUTLINED_FUNCTION_363_0(v51, v52, v53, v54, v55, v56, v57, v58, v99, v102, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v115[0]);
        sub_1937375CC(&v104);
        __src[0] = v133;
        __src[1] = v134;
        *&__src[2] = v135;
        *(&__src[2] + 1) = v15;
        __src[3] = v131;
        __src[4] = v132;
        OUTLINED_FUNCTION_247_2(__src);
        goto LABEL_22;
      }

      memcpy(__src, v125, sizeof(__src));
      OUTLINED_FUNCTION_401();
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v67, v68, v69, v70);
      OUTLINED_FUNCTION_400();
      OUTLINED_FUNCTION_75_0();
      v75 = sub_193448804(v71, v72, v73, v74);
      OUTLINED_FUNCTION_419(v75, v76, v77, v78, v79, v80, v81, v82, v98, v101, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v83, v84, v85, v86);
      sub_1937375CC(__src);
    }

    else
    {
      if (!v16)
      {
        *v125 = OUTLINED_FUNCTION_283_1();
        *&v125[16] = v87;
        *&v125[32] = *&v136[2];
        *&v125[40] = 0;
        OUTLINED_FUNCTION_403(v88);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v89, v90, v91, v92);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v93, v94, v95, v96);
        OUTLINED_FUNCTION_247_2(v125);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v59, v60, v61, v62);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v63, v64, v65, v66);
    }

    OUTLINED_FUNCTION_157_10();
    sub_19344E6DC(v125, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_22;
  }

  if (v10)
  {
    v13 = v100 == v11 && v6 == v10;
    if (v13 || (OUTLINED_FUNCTION_184_7() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.placemark.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.Placemark.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

void ToolKitToolTypedValue.PrimitiveValue.Placemark.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 105);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  *(v1 + 105) = v3;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Placemark.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  *v0 = xmmword_193950B20;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  *&v2 = OUTLINED_FUNCTION_319_1();
  *(v0 + 80) = v2;
  *(v0 + 89) = v2;
  *(v0 + 105) = 1;
}

uint64_t sub_193719564@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371958C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.Placemark.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  v4 = *v2;
  v3 = v2[1];
  memcpy(v87, (v0 + 16), sizeof(v87));
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 105);
  v9 = *v1;
  v8 = v1[1];
  OUTLINED_FUNCTION_304_1(v88);
  v10 = v1[12];
  v11 = *(v1 + 104);
  v12 = *(v1 + 105);
  OUTLINED_FUNCTION_282_2();
  if (!v18 & v17)
  {
    OUTLINED_FUNCTION_295_2();
    if (!v18 & v17)
    {
      v75 = v14;
      v76 = v13;
      v77 = v6;
      v15 = OUTLINED_FUNCTION_18_41();
      sub_19345012C(v15, v16);
      goto LABEL_10;
    }

LABEL_8:
    v21 = OUTLINED_FUNCTION_18_41();
    sub_19345012C(v21, v22);
    v23 = OUTLINED_FUNCTION_107_5();
    sub_19345012C(v23, v24);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_295_2();
  if (!v18 & v17)
  {
    goto LABEL_8;
  }

  v75 = v20;
  v76 = v19;
  v77 = v6;
  OUTLINED_FUNCTION_18_41();
  OUTLINED_FUNCTION_284();
  v25 = MEMORY[0x193B172A0]();
  v26 = OUTLINED_FUNCTION_107_5();
  sub_19345012C(v26, v27);
  v28 = OUTLINED_FUNCTION_175_0();
  sub_19345012C(v28, v29);
  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v30 = v87[5];
  v31 = v89;
  if (v87[5])
  {
    OUTLINED_FUNCTION_281_1();
    memcpy(__dst, __src, sizeof(__dst));
    if (v31)
    {
      v32 = *(v1 + 2);
      v80[0] = *(v1 + 1);
      v80[1] = v32;
      v33 = v1[6];
      v34 = *(v1 + 5);
      v80[3] = *(v1 + 4);
      v80[4] = v34;
      *&v80[2] = v33;
      *(&v80[2] + 1) = v31;
      OUTLINED_FUNCTION_27_7(v87, v79);
      OUTLINED_FUNCTION_27_7(v88, v79);
      OUTLINED_FUNCTION_27_7(__src, v79);
      v35 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(__dst, v80);
      memcpy(v78, v80, sizeof(v78));
      sub_1937375CC(v78);
      memcpy(v79, __dst, sizeof(v79));
      sub_1937375CC(v79);
      v36 = *(v0 + 32);
      v80[0] = *(v0 + 16);
      v80[1] = v36;
      *&v80[2] = *(v0 + 48);
      *(&v80[2] + 1) = v30;
      v37 = *(v0 + 80);
      v80[3] = *(v0 + 64);
      v80[4] = v37;
      OUTLINED_FUNCTION_188_4();
      v41 = sub_19344E6DC(v38, v39, v40);
      if (!v35 || (v7 & 1) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    memcpy(v80, __src, sizeof(v80));
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v50, v51, v52, v53);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v54, v55, v56, v57);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v58, v59, v60, v61);
    sub_1937375CC(v80);
LABEL_18:
    OUTLINED_FUNCTION_281_1();
    v62 = *(v1 + 2);
    __src[5] = *(v1 + 1);
    __src[6] = v62;
    v83 = v1[6];
    v84 = v31;
    v63 = *(v1 + 5);
    v85 = *(v1 + 4);
    v86 = v63;
    sub_19344E6DC(__src, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_19;
  }

  if (v89)
  {
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v42, v43, v44, v45);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v46, v47, v48, v49);
    goto LABEL_18;
  }

  v64 = *(v0 + 32);
  __src[0] = *(v0 + 16);
  __src[1] = v64;
  __src[2] = *(v0 + 48);
  v65 = *(v0 + 80);
  __src[3] = *(v0 + 64);
  __src[4] = v65;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v66, v67, v68, v69);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v70, v71, v72, v73);
  v41 = OUTLINED_FUNCTION_247_2(__src);
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_21:
  if ((v12 & 1) == 0)
  {
    *&__src[0] = v5;
    BYTE8(__src[0]) = v77 & 1;
    __dst[0] = v76;
    LOBYTE(__dst[1]) = v75 & 1;
    v74 = ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.rawValue.getter(v41);
    ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.rawValue.getter(v74);
  }

LABEL_19:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Placemark.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193719AD0()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Placemark.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.person.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.Person.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.handle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_193737648(v2, v3);
}

__n128 ToolKitToolTypedValue.PrimitiveValue.Person.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  sub_193737690(v1[12], v1[13]);
  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 6) = *a1;
  *(v1 + 7) = v10;
  v1[16] = v3;
  v1[17] = v4;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.nameComponents.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0xC0uLL);
  memcpy(a1, (v1 + 144), 0xC0uLL);
  return sub_193448804(__dst, v4, &qword_1EAE41990, &qword_19397F998);
}

void *ToolKitToolTypedValue.PrimitiveValue.Person.nameComponents.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v2, (v1 + 144), 0xC0uLL);
  sub_19344E6DC(&v4, &qword_1EAE41990, &qword_19397F998);
  return memcpy((v1 + 144), v0, 0xC0uLL);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.displayName.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 344);

  *(v1 + 336) = v2;
  *(v1 + 344) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.image.getter()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.image.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 352), *(v1 + 360));
  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.contactIdentifier.getter()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 376);

  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.customIdentifier.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.customIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 392);

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.relationship.getter()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.relationship.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 408);

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.Person.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1936EC8A8(__src);
  memcpy((a1 + 144), __src, 0xC0uLL);
  OUTLINED_FUNCTION_300_1();
  *a1 = xmmword_193950B20;
  memset(v7, 0, sizeof(v7));
  sub_19344E6DC(v7, &qword_1EAE41AB8, &qword_1939807B8);
  *&v2 = OUTLINED_FUNCTION_319_1();
  *(a1 + 80) = v2;
  v3 = OUTLINED_FUNCTION_107_13();
  sub_193737690(v3, v4);
  *(a1 + 96) = xmmword_1939526A0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  memcpy(__dst, (a1 + 144), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41990, &qword_19397F998);
  memcpy((a1 + 144), __src, 0xC0uLL);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  OUTLINED_FUNCTION_300_1();
  result = 0.0;
  *(a1 + 352) = xmmword_193950B20;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 514;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.value.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Person.Handle.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.label.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.Person.Handle.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_19371A284@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371A2AC@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_108_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 25);
  v12 = *(v1 + 32);
  v11 = *(v1 + 40);
  if (*(v0 + 8))
  {
    if (!v7)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_155(v0, v1);
    v15 = v15 && v13 == v14;
    if (!v15 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    goto LABEL_22;
  }

  if (v4)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_22;
    }

    v16 = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
    if (v16 != ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  if (v6 && v11 && (v5 != v12 || v6 != v11))
  {
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_5_5();
  }

LABEL_22:
  OUTLINED_FUNCTION_107();
}

void ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  v5 = v0[5];
  if (v0[1])
  {
    v6 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v8 = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter();
    MEMORY[0x193B18030](v8);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_114();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_58_19();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hashValue.getter()
{
  OUTLINED_FUNCTION_406();
  v1 = *(v0 + 25);
  OUTLINED_FUNCTION_103_12(v2);
  v14 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371A594()
{
  OUTLINED_FUNCTION_406();
  v1 = *(v0 + 25);
  OUTLINED_FUNCTION_103_12(v2);
  v14 = *(v0 + 32);
  v3 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  ToolKitToolTypedValue.PrimitiveValue.Person.Handle.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.namePrefix.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.middleName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.nameSuffix.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.nickname.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.phoneticRepresentation.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), sizeof(__dst));
  memcpy(a1, (v1 + 96), 0x60uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE41AD8, &qword_1939807E0);
}

void *ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.phoneticRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v2, (v1 + 96), 0x60uLL);
  sub_19344E6DC(&v4, &qword_1EAE41AD8, &qword_1939807E0);
  return memcpy((v1 + 96), v0, 0x60uLL);
}

void __swiftcall ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.init()(IntelligencePlatformLibrary::ToolKitToolTypedValue::PrimitiveValue::Person::NameComponents *__return_ptr retstr)
{
  retstr->phoneticRepresentation.value.namePrefix = xmmword_1939526A0;
  p_phoneticRepresentation = &retstr->phoneticRepresentation;
  retstr->namePrefix = 0u;
  retstr->givenName = 0u;
  retstr->middleName = 0u;
  retstr->familyName = 0u;
  retstr->nameSuffix = 0u;
  retstr->nickname = 0u;
  OUTLINED_FUNCTION_314_1(0);
  memcpy(__dst, &retstr->phoneticRepresentation, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41AD8, &qword_1939807E0);
  p_phoneticRepresentation->value.namePrefix = xmmword_1939526A0;
  OUTLINED_FUNCTION_314_1(0);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.middleName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nameSuffix.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.nickname.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void __swiftcall ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.init()(IntelligencePlatformLibrary::ToolKitToolTypedValue::PrimitiveValue::Person::NameComponents::PhoneticRepresentation *__return_ptr retstr)
{
  retstr->nameSuffix = 0u;
  retstr->nickname = 0u;
  OUTLINED_FUNCTION_354_0(retstr, 0);
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_231_3();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[11];
  v14 = v2[1];
  v15 = v2[2];
  v17 = v2[3];
  v16 = v2[4];
  v19 = v2[5];
  v18 = v2[6];
  v21 = v2[7];
  v20 = v2[8];
  v23 = v2[9];
  v22 = v2[10];
  v24 = v2[11];
  if (v3)
  {
    if (!v14)
    {
      goto LABEL_53;
    }

    if (*v0 != *v2 || v3 != v14)
    {
      v58 = v2[9];
      v61 = v2[4];
      v54 = v0[8];
      v55 = v0[9];
      v52 = v2[11];
      v53 = v2[10];
      v51 = v0[11];
      v26 = v0[10];
      v27 = v2[8];
      v65 = v0[6];
      v67 = v0[5];
      v28 = v0[7];
      v29 = v2[7];
      v30 = v2[6];
      v31 = v0[4];
      v63 = v2[5];
      v32 = v0[2];
      v33 = sub_19393CA30();
      v4 = v32;
      v16 = v61;
      v19 = v63;
      v5 = v31;
      v7 = v65;
      v8 = v67;
      v18 = v30;
      v21 = v29;
      v9 = v28;
      v20 = v27;
      v11 = v26;
      v13 = v51;
      v24 = v52;
      v22 = v53;
      v10 = v54;
      v12 = v55;
      v23 = v58;
      if ((v33 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_53;
  }

  if (v6)
  {
    if (!v17)
    {
      goto LABEL_53;
    }

    if (v4 != v15 || v6 != v17)
    {
      v59 = v21;
      v62 = v16;
      v56 = v11;
      v35 = v20;
      v66 = v7;
      v68 = v8;
      v36 = v9;
      v15 = v18;
      v37 = v5;
      v64 = v19;
      v38 = sub_19393CA30();
      v16 = v62;
      v19 = v64;
      v5 = v37;
      v7 = v66;
      v8 = v68;
      v18 = v15;
      v11 = v56;
      v21 = v59;
      v9 = v36;
      v20 = v35;
      if ((v38 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_53;
  }

  if (v8)
  {
    if (!v19)
    {
      goto LABEL_53;
    }

    if (v5 != v16 || v8 != v19)
    {
      v57 = v11;
      v60 = v21;
      v40 = v20;
      v41 = v7;
      v42 = v9;
      v15 = v18;
      v43 = sub_19393CA30();
      v18 = v15;
      v11 = v57;
      v21 = v60;
      v9 = v42;
      v7 = v41;
      v20 = v40;
      if ((v43 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_53;
  }

  if (v9)
  {
    if (!v21)
    {
      goto LABEL_53;
    }

    if (v7 != v18 || v9 != v21)
    {
      OUTLINED_FUNCTION_322_0();
      v46 = v45;
      v47 = sub_19393CA30();
      v20 = v46;
      v11 = v24;
      v24 = v15;
      if ((v47 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_53;
  }

  if (v12)
  {
    if (!v23)
    {
      goto LABEL_53;
    }

    if (v10 != v20 || v12 != v23)
    {
      OUTLINED_FUNCTION_322_0();
      v49 = sub_19393CA30();
      v11 = v24;
      v24 = v15;
      if ((v49 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_53;
  }

  if (v13 && v24 && (v11 != v22 || v13 != v24))
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393CA30();
  }

LABEL_53:
  OUTLINED_FUNCTION_196();
}

void ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v11 = v0[8];
  v7 = v0[9];
  v12 = v0[10];
  v8 = v0[11];
  if (v0[1])
  {
    v9 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_19393CAD0();
  if (v5)
  {
LABEL_4:
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_14();
    sub_19393C640();
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_19393CAD0();
  if (v6)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_19393CAD0();
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_19393CAD0();
    OUTLINED_FUNCTION_107();
    return;
  }

LABEL_13:
  sub_19393CAD0();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_19393CAD0();
  sub_19393C640();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_19393CAD0();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t sub_19371B050()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  v3 = *v2;
  v4 = v2[1];
  v72 = v2[2];
  v77 = v2[3];
  v78 = v2[5];
  v75 = v2[7];
  v69 = v2[9];
  v70 = v2[4];
  v63 = v2[10];
  v64 = v2[8];
  v66 = v2[11];
  v67 = v2[6];
  memcpy(__dst, (v0 + 96), sizeof(__dst));
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[3];
  v71 = v1[2];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v76 = v1[8];
  v68 = v1[9];
  v73 = v1[10];
  v74 = v1[7];
  v65 = v1[11];
  memcpy(v86, v1 + 12, 0x60uLL);
  if (!v4)
  {
    if (v5)
    {
      goto LABEL_62;
    }

LABEL_10:
    if (v77)
    {
      v12 = v78;
      if (!v7)
      {
        goto LABEL_62;
      }

      v13 = v8;
      v14 = v9;
      v15 = v72 == v71 && v77 == v7;
      if (!v15 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v12 = v78;
      v13 = v8;
      v14 = v9;
      if (v7)
      {
        goto LABEL_62;
      }
    }

    if (v12)
    {
      v16 = v73;
      v17 = v74;
      v19 = v75;
      v18 = v76;
      if (!v13)
      {
        goto LABEL_62;
      }

      v20 = v70 == v14 && v12 == v13;
      if (!v20 && (OUTLINED_FUNCTION_270_2() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v16 = v73;
      v17 = v74;
      v19 = v75;
      v18 = v76;
      if (v13)
      {
        goto LABEL_62;
      }
    }

    if (v19)
    {
      if (!v17)
      {
        goto LABEL_62;
      }

      v21 = v67 == v10 && v19 == v17;
      if (!v21 && (OUTLINED_FUNCTION_444() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v17)
    {
      goto LABEL_62;
    }

    if (v69)
    {
      if (!v68)
      {
        goto LABEL_62;
      }

      v22 = v64 == v18 && v69 == v68;
      if (!v22 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v68)
    {
      goto LABEL_62;
    }

    if (v66)
    {
      if (!v65)
      {
        goto LABEL_62;
      }

      v23 = v63 == v16 && v66 == v65;
      if (!v23 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v65)
    {
      goto LABEL_62;
    }

    v24 = __dst[0];
    v25 = __dst[1];
    v27 = v86[0];
    v26 = v86[1];
    if (__dst[1] == 1)
    {
      if (v86[1] == 1)
      {
        __src[0] = __dst[0];
        __src[1] = 1;
        OUTLINED_FUNCTION_445();
        OUTLINED_FUNCTION_294(__dst, v82);
        OUTLINED_FUNCTION_294(v86, v82);
        OUTLINED_FUNCTION_15_1();
LABEL_64:
        sub_19344E6DC(v28, v29, v30);
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_9_12();
      sub_193448804(v43, v44, v45, v46);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v47, v48, v49, v50);
    }

    else
    {
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      OUTLINED_FUNCTION_445();
      memcpy(v82, __src, sizeof(v82));
      if (v26 != 1)
      {
        OUTLINED_FUNCTION_451(&v81[2]);
        v81[0] = v27;
        v81[1] = v26;
        static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)();
        memcpy(v79, v81, sizeof(v79));
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v51, v52, v53, v54);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v55, v56, v57, v58);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v59, v60, v61, v62);
        sub_1937376D8(v79);
        memcpy(v80, v82, sizeof(v80));
        sub_1937376D8(v80);
        v81[0] = v24;
        v81[1] = v25;
        memcpy(&v81[2], (v0 + 112), 0x50uLL);
        OUTLINED_FUNCTION_175();
        goto LABEL_64;
      }

      memcpy(v81, __src, sizeof(v81));
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v31, v32, v33, v34);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v35, v36, v37, v38);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v39, v40, v41, v42);
      sub_1937376D8(v81);
    }

    __src[0] = v24;
    __src[1] = v25;
    memcpy(&__src[2], (v0 + 112), 0x50uLL);
    __src[12] = v27;
    __src[13] = v26;
    OUTLINED_FUNCTION_451(&v84);
    sub_19344E6DC(__src, &qword_1EAE41AE0, &qword_1939807E8);
    goto LABEL_62;
  }

  if (v5)
  {
    v11 = v3 == v6 && v4 == v5;
    if (v11 || (OUTLINED_FUNCTION_270_2() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v10 = v0[4];
  v11 = v0[6];
  v12 = v0[8];
  v5 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[11];
  v9 = v0[12];
  v6 = v0[13];
  if (v0[1])
  {
    v7 = *v1;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_113_3();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_145_9();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v14)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_259_1();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_15:
    OUTLINED_FUNCTION_104_0();
    if (v15)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_263_1();
  sub_19393C640();
  if (v15)
  {
LABEL_13:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    goto LABEL_17;
  }

LABEL_16:
  OUTLINED_FUNCTION_104_0();
LABEL_17:
  if (v6 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  memcpy(&__src[2], v1 + 14, 0x50uLL);
  __src[0] = v9;
  __src[1] = v6;
  OUTLINED_FUNCTION_103_0();
  v17[0] = v9;
  v17[1] = v6;
  memcpy(v18, v1 + 14, sizeof(v18));
  sub_1936C44D4(v17, __dst);
  ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.hash(into:)();
  memcpy(__dst, __src, 0x60uLL);
  return sub_1937376D8(__dst);
}

uint64_t sub_19371B67C()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19371B6D8()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.Person.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  memcpy(__dst, v2 + 2, sizeof(__dst));
  v206 = v3[13];
  v207 = v3[12];
  v209 = v3[14];
  v211 = v3[15];
  v212 = *(v3 + 8);
  memcpy(v222, v3 + 18, sizeof(v222));
  v201 = v3[44];
  v202 = v3[42];
  v203 = v3[45];
  v204 = v3[43];
  v199 = v3[46];
  v200 = v3[47];
  v197 = v3[48];
  v198 = v3[49];
  v195 = v3[50];
  v196 = v3[51];
  HIDWORD(v194) = *(v3 + 416);
  v6 = *(v3 + 417);
  v7 = *v1;
  v8 = v1[1];
  memcpy(v223, v1 + 2, sizeof(v223));
  v9 = v1[12];
  v10 = v1[13];
  v11 = v1[15];
  v213 = v1[14];
  v208 = v1[16];
  v210 = v1[17];
  memcpy(v224, v1 + 18, sizeof(v224));
  v13 = v1[42];
  v12 = v1[43];
  v15 = v1[44];
  v14 = v1[45];
  v17 = v1[46];
  v16 = v1[47];
  v19 = v1[48];
  v18 = v1[49];
  v21 = v1[50];
  v20 = v1[51];
  v22 = *(v1 + 416);
  v23 = *(v1 + 417);
  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      v192 = v1[42];
      v193 = v1[43];
      v189 = v1[45];
      v190 = v1[44];
      v187 = v1[46];
      v188 = v1[47];
      v185 = v1[48];
      v186 = v1[49];
      v183 = v1[50];
      v184 = v1[51];
      LODWORD(v182) = v6;
      HIDWORD(v182) = *(v1 + 416);
      HIDWORD(v181) = *(v1 + 417);
      v24 = OUTLINED_FUNCTION_159_8();
      sub_19345012C(v24, v25);
      goto LABEL_8;
    }

LABEL_5:
    v26 = OUTLINED_FUNCTION_159_8();
    sub_19345012C(v26, v27);
    v28 = OUTLINED_FUNCTION_113_3();
LABEL_6:
    sub_19345012C(v28, v29);
    goto LABEL_25;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v192 = v1[42];
  v193 = v1[43];
  v189 = v1[45];
  v190 = v1[44];
  v187 = v1[46];
  v188 = v1[47];
  v185 = v1[48];
  v186 = v1[49];
  v183 = v1[50];
  v184 = v1[51];
  LODWORD(v182) = v6;
  HIDWORD(v182) = *(v1 + 416);
  HIDWORD(v181) = *(v1 + 417);
  v30 = OUTLINED_FUNCTION_159_8();
  v31 = MEMORY[0x193B172A0](v30);
  v32 = OUTLINED_FUNCTION_113_3();
  sub_19345012C(v32, v33);
  v34 = OUTLINED_FUNCTION_185();
  sub_19345012C(v34, v35);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v36 = __dst[5];
  v37 = v223[5];
  if (!__dst[5])
  {
    if (!v223[5])
    {
      v38 = v9;
      OUTLINED_FUNCTION_141_8();
      *(&__src[2] + 1) = 0;
      OUTLINED_FUNCTION_308_1();
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v82, v83, v84, v85);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v86, v87, v88, v89);
      OUTLINED_FUNCTION_247_2(__src);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v57, v58, v59, v60);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v61, v62, v63, v64);
LABEL_15:
    OUTLINED_FUNCTION_141_8();
    *(&__src[2] + 1) = v36;
    OUTLINED_FUNCTION_308_1();
    v77 = *(v1 + 2);
    __src[5] = *(v1 + 1);
    __src[6] = v77;
    *&__src[7] = v1[6];
    *(&__src[7] + 1) = v37;
    v78 = *(v1 + 4);
    __src[9] = *(v1 + 5);
    __src[8] = v78;
    v79 = &qword_1EAE41AC0;
    v80 = &qword_1939807C0;
    v81 = __src;
LABEL_16:
    sub_19344E6DC(v81, v79, v80);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_141_8();
  *(&__src[2] + 1) = v36;
  OUTLINED_FUNCTION_308_1();
  memcpy(v217, __src, 0x50uLL);
  if (!v37)
  {
    memcpy(v220, __src, 0x50uLL);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v65, v66, v67, v68);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v69, v70, v71, v72);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v73, v74, v75, v76);
    sub_1937375CC(v220);
    goto LABEL_15;
  }

  v38 = v9;
  v39 = *(v1 + 2);
  v220[0] = *(v1 + 1);
  v220[1] = v39;
  v40 = v1[6];
  v41 = *(v1 + 5);
  v220[3] = *(v1 + 4);
  v220[4] = v41;
  *&v220[2] = v40;
  *(&v220[2] + 1) = v37;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v42, v43, v44, v45);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v46, v47, v48, v49);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v50, v51, v52, v53);
  v54 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v217, v220);
  memcpy(v216, v220, 0x50uLL);
  sub_1937375CC(v216);
  memcpy(v218, v217, 0x50uLL);
  sub_1937375CC(v218);
  v55 = *(v3 + 2);
  v220[0] = *(v3 + 1);
  v220[1] = v55;
  *&v220[2] = v3[6];
  *(&v220[2] + 1) = v36;
  v56 = *(v3 + 5);
  v220[3] = *(v3 + 4);
  v220[4] = v56;
  OUTLINED_FUNCTION_247_2(v220);
  if (!v54)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v206 == 1)
  {
    sub_193737648(v207, 1);
    if (v10 == 1)
    {
      sub_193737648(v38, 1);
      OUTLINED_FUNCTION_41_23();
      sub_193737690(v90, v91);
      goto LABEL_27;
    }

    v98 = OUTLINED_FUNCTION_33_7();
    v205 = v38;
    sub_193737648(v98, v99);
LABEL_24:
    v100 = OUTLINED_FUNCTION_28_27();
    sub_193737690(v100, v101);
    sub_193737690(v205, v10);
    goto LABEL_25;
  }

  *&__src[0] = v207;
  *(&__src[0] + 1) = v206;
  *&__src[1] = v209;
  *(&__src[1] + 1) = v211;
  __src[2] = v212;
  v180 = v11;
  if (v10 == 1)
  {
    v92 = OUTLINED_FUNCTION_28_27();
    sub_193737648(v92, v93);
    v205 = v9;
    v94 = OUTLINED_FUNCTION_173();
    sub_193737648(v94, v95);
    v96 = OUTLINED_FUNCTION_28_27();
    sub_193737648(v96, v97);

    goto LABEL_24;
  }

  v217[0] = v9;
  v217[1] = v10;
  v217[2] = v213;
  LOWORD(v217[3]) = v11 & 0x1FF;
  v217[4] = v208;
  v217[5] = v210;
  v102 = OUTLINED_FUNCTION_28_27();
  sub_193737648(v102, v103);
  sub_193737648(v9, v10);
  v104 = OUTLINED_FUNCTION_28_27();
  sub_193737648(v104, v105);
  static ToolKitToolTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)();
  v107 = v106;

  OUTLINED_FUNCTION_41_23();
  sub_193737690(v108, v109);
  if ((v107 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  memcpy(__src, v222, 0xC0uLL);
  memcpy(&__src[12], v224, 0xC0uLL);
  memcpy(v220, v222, sizeof(v220));
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v220) == 1)
  {
    memcpy(v217, &__src[12], 0xC0uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v217) == 1)
    {
      OUTLINED_FUNCTION_392(v218);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v110, v111, v112, v113);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v114, v115, v116, v117);
      v118 = OUTLINED_FUNCTION_247_2(v218);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v137, v138, v139, v140);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v141, v142, v143, v144);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_392(v218);
  memcpy(v217, &__src[12], 0xC0uLL);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v217) == 1)
  {
    OUTLINED_FUNCTION_392(v216);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v125, v126, v127, v128);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v129, v130, v131, v132);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v133, v134, v135, v136);
    sub_193737708(v216);
LABEL_33:
    memcpy(v217, __src, sizeof(v217));
    v79 = &unk_1EAE41AE8;
    v80 = &unk_1939807F0;
    v81 = v217;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_75_0();
  sub_193448804(v145, v146, v147, v148);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v149, v150, v151, v152);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v153, v154, v155, v156);
  static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)();
  v158 = v157;
  memcpy(v214, &__src[12], sizeof(v214));
  sub_193737708(v214);
  OUTLINED_FUNCTION_392(v215);
  sub_193737708(v215);
  OUTLINED_FUNCTION_392(v216);
  v118 = OUTLINED_FUNCTION_247_2(v216);
  if ((v158 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_35:
  v159 = v204;
  if (v204)
  {
    v119 = v192;
    v120 = v193;
    if (!v193)
    {
      goto LABEL_25;
    }

    if (v202 != v192 || v204 != v193)
    {
      v118 = sub_19393CA30();
      if ((v118 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v193)
  {
    goto LABEL_25;
  }

  v161 = v189;
  if (v203 >> 60 != 15)
  {
    if (v189 >> 60 != 15)
    {
      sub_193450268(v201, v203);
      v168 = OUTLINED_FUNCTION_55();
      sub_193450268(v168, v169);
      v170 = OUTLINED_FUNCTION_127();
      v171 = MEMORY[0x193B172A0](v170);
      v172 = OUTLINED_FUNCTION_55();
      sub_19345012C(v172, v173);
      v174 = OUTLINED_FUNCTION_127();
      sub_19345012C(v174, v175);
      if ((v171 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v189 >> 60 != 15)
  {
LABEL_48:
    OUTLINED_FUNCTION_443(v118, v159, v119, v120, v121, v122, v123, v124, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
    v164 = OUTLINED_FUNCTION_115_0();
    sub_193450268(v164, v165);
    v166 = OUTLINED_FUNCTION_13_5();
    sub_19345012C(v166, v167);
    v28 = OUTLINED_FUNCTION_115_0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_443(v118, v159, v119, v120, v121, v122, v123, v124, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
  sub_193450268(v191, v161);
  v162 = OUTLINED_FUNCTION_13_5();
  sub_19345012C(v162, v163);
LABEL_50:
  if (v200)
  {
    if (!v188)
    {
      goto LABEL_25;
    }

    v176 = v199 == v187 && v200 == v188;
    if (!v176 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v188)
  {
    goto LABEL_25;
  }

  if (v198)
  {
    if (!v186)
    {
      goto LABEL_25;
    }

    v177 = v197 == v185 && v198 == v186;
    if (!v177 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v186)
  {
    goto LABEL_25;
  }

  if (v196 && v184 && (v195 != v183 || v196 != v184))
  {
    sub_19393CA30();
  }

LABEL_25:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolTypedValue.PrimitiveValue.Person.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0[7];
  v27 = v0[13];
  v2 = v0[15];
  v15 = v0[14];
  v16 = v0[12];
  v17 = v0[16];
  v18 = v0[17];
  v3 = v0[44];
  v19 = v0[42];
  v23 = v0[43];
  v24 = v0[45];
  v4 = v0[47];
  v21 = v0[46];
  v22 = v0[48];
  v25 = v0[49];
  v5 = v0[51];
  v20 = v0[50];
  v6 = *(v0 + 416);
  v26 = *(v0 + 417);
  if (v0[1] >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v7 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_262_0();
    sub_19393BD50();
  }

  if (v1)
  {
    v8 = *(v0 + 2);
    __src[0] = *(v0 + 1);
    __src[1] = v8;
    v9 = v0[6];
    v10 = *(v0 + 5);
    __src[3] = *(v0 + 4);
    __src[4] = v10;
    *&__src[2] = v9;
    *(&__src[2] + 1) = v1;
    OUTLINED_FUNCTION_103_0();
    v11 = *(v0 + 2);
    v29[0] = *(v0 + 1);
    v29[1] = v11;
    *&v29[2] = v0[6];
    *(&v29[2] + 1) = v1;
    v12 = *(v0 + 5);
    v29[3] = *(v0 + 4);
    v29[4] = v12;
    sub_1936D0D2C(v29, __dst);
    ToolKitToolDisplayRepresentation.hash(into:)();
    memcpy(__dst, __src, 0x50uLL);
    sub_1937375CC(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v27 == 1)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103_0();
  if (v27)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_263_1();
    sub_19393C640();
    if ((v2 & 0x100) == 0)
    {
LABEL_10:
      v13 = OUTLINED_FUNCTION_103_0();
      __dst[0] = v15;
      LOBYTE(__dst[1]) = v2 & 1;
      v14 = ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.rawValue.getter(v13);
      MEMORY[0x193B18030](v14);
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_13:
  if (v18)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    goto LABEL_16;
  }

LABEL_15:
  OUTLINED_FUNCTION_104_0();
LABEL_16:
  memcpy(__dst, v0 + 18, 0xC0uLL);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(__src, v0 + 18, sizeof(__src));
    sub_1936C4288(__src, v29);
    ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.hash(into:)();
    memcpy(v29, v0 + 18, sizeof(v29));
    sub_193737708(v29);
  }

  if (v23)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_344();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v24 >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393BD50();
    if (v4)
    {
LABEL_24:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_438();
      sub_19393C640();
      if (v25)
      {
        goto LABEL_25;
      }

LABEL_29:
      OUTLINED_FUNCTION_104_0();
      if (v5)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v25)
  {
    goto LABEL_29;
  }

LABEL_25:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v5)
  {
LABEL_26:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    goto LABEL_31;
  }

LABEL_30:
  OUTLINED_FUNCTION_104_0();
LABEL_31:
  if (v6 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v26 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.Person.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371C440()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.Person.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.File.file.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.File.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.File.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.File.url.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.File.url.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.File.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  *v0 = xmmword_193950B20;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  *&v2 = OUTLINED_FUNCTION_319_1();
  v0[5] = v2;
  v0[6] = v2;
}

void static ToolKitToolTypedValue.PrimitiveValue.File.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v5 = *v2;
  v4 = v2[1];
  memcpy(v126, v2 + 2, sizeof(v126));
  v6 = v3[12];
  v7 = v3[13];
  v9 = *v1;
  v8 = v1[1];
  memcpy(v127, v1 + 2, 0x50uLL);
  v11 = v1[12];
  v10 = v1[13];
  OUTLINED_FUNCTION_296_1();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_340_0();
    if (!v15 & v14)
    {
      v96 = v6;
      v12 = OUTLINED_FUNCTION_17_36();
      sub_19345012C(v12, v13);
      goto LABEL_10;
    }

LABEL_8:
    v16 = OUTLINED_FUNCTION_17_36();
    sub_19345012C(v16, v17);
    v18 = OUTLINED_FUNCTION_33_7();
    sub_19345012C(v18, v19);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_340_0();
  if (!v15 & v14)
  {
    goto LABEL_8;
  }

  v96 = v6;
  v20 = OUTLINED_FUNCTION_17_36();
  v21 = MEMORY[0x193B172A0](v20);
  v22 = OUTLINED_FUNCTION_33_7();
  sub_19345012C(v22, v23);
  v24 = OUTLINED_FUNCTION_82();
  sub_19345012C(v24, v25);
  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v26 = v126[5];
  v27 = v127[5];
  if (v126[5])
  {
    OUTLINED_FUNCTION_280_1();
    OUTLINED_FUNCTION_398();
    OUTLINED_FUNCTION_361_1(v28, v29, v30, v31, v32, v33, v34, v35, v93, v96, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0]);
    if (v27)
    {
      v36 = *(v1 + 2);
      __src[0] = *(v1 + 1);
      __src[1] = v36;
      v37 = v1[6];
      v38 = *(v1 + 5);
      __src[3] = *(v1 + 4);
      __src[4] = v38;
      *&__src[2] = v37;
      *(&__src[2] + 1) = v27;
      v39 = OUTLINED_FUNCTION_401();
      OUTLINED_FUNCTION_90_10(v39, v40);
      v41 = OUTLINED_FUNCTION_400();
      v43 = OUTLINED_FUNCTION_90_10(v41, v42);
      v51 = OUTLINED_FUNCTION_419(v43, v44, v45, v46, v47, v48, v49, v50, v94, v97, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], v27, *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0]);
      OUTLINED_FUNCTION_90_10(v51, v52);
      v53 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(&v111, __src);
      memcpy(__dst, __src, sizeof(__dst));
      v54 = sub_1937375CC(__dst);
      OUTLINED_FUNCTION_363_0(v54, v55, v56, v57, v58, v59, v60, v61, v95, v98, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v111);
      sub_1937375CC(&v100);
      v62 = *(v3 + 2);
      __src[0] = *(v3 + 1);
      __src[1] = v62;
      *&__src[2] = v3[6];
      *(&__src[2] + 1) = v26;
      v63 = *(v3 + 5);
      __src[3] = *(v3 + 4);
      __src[4] = v63;
      OUTLINED_FUNCTION_146();
      sub_19344E6DC(v64, v65, v66);
      if (!v53 || !v7)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    memcpy(__src, v121, sizeof(__src));
    v68 = OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_27_7(v68, v69);
    v70 = OUTLINED_FUNCTION_400();
    v72 = OUTLINED_FUNCTION_27_7(v70, v71);
    v80 = OUTLINED_FUNCTION_419(v72, v73, v74, v75, v76, v77, v78, v79, v94, v97, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0]);
    OUTLINED_FUNCTION_27_7(v80, v81);
    sub_1937375CC(__src);
LABEL_23:
    OUTLINED_FUNCTION_280_1();
    OUTLINED_FUNCTION_398();
    v82 = *(v1 + 2);
    v121[5] = *(v1 + 1);
    v121[6] = v82;
    v122 = v1[6];
    v123 = v27;
    v83 = *(v1 + 5);
    v124 = *(v1 + 4);
    v125 = v83;
    sub_19344E6DC(v121, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_24;
  }

  if (v127[5])
  {
    OUTLINED_FUNCTION_27_7(v126, v121);
    OUTLINED_FUNCTION_27_7(v127, v121);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_280_1();
  v121[2] = v3[6];
  v84 = *(v3 + 5);
  v121[3] = *(v3 + 4);
  v121[4] = v84;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v85, v86, v87, v88);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v89, v90, v91, v92);
  OUTLINED_FUNCTION_247_2(v121);
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v10)
  {
    if (v96 != v11 || v7 != v10)
    {
      OUTLINED_FUNCTION_184_7();
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.App.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_19371CAB0()
{
  OUTLINED_FUNCTION_153_9();
  OUTLINED_FUNCTION_304_1(v0);
  v1 = OUTLINED_FUNCTION_299_1();
  return OUTLINED_FUNCTION_278_3(v1, v2, &qword_1EAE41AB8, &qword_1939807B8, v3, v4, v5, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

void *ToolKitToolTypedValue.PrimitiveValue.App.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_304_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 16));
}

double ToolKitToolTypedValue.PrimitiveValue.App.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  v2[4] = v1;
  v2[5] = v1;
  v2[2] = v1;
  v2[3] = v1;
  *v2 = v1;
  v2[1] = v1;
  v3 = v2 + 1;
  OUTLINED_FUNCTION_268_1(v5);
  sub_19344E6DC(v5, &qword_1EAE41AB8, &qword_1939807B8);
  result = 0.0;
  *v3 = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return result;
}

uint64_t sub_19371CBC8()
{
  OUTLINED_FUNCTION_284_2();
  v3 = *v2;
  v4 = v2[1];
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v6 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_304_1(v171);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    if (v3 != v6 || v4 != v5)
    {
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_284();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v5)
  {
LABEL_17:
    v55 = 0;
    return v55 & 1;
  }

  v8 = __dst[5];
  v9 = v172;
  if (!__dst[5])
  {
    if (!v172)
    {
      OUTLINED_FUNCTION_309_0();
      v160 = v110;
      v161 = 0;
      v111 = *(v0 + 80);
      v162 = *(v0 + 64);
      v163 = v111;
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v112, v113, v114, v115);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v116, v117, v118, v119);
      OUTLINED_FUNCTION_247_2(v156);
      v55 = 1;
      return v55 & 1;
    }

    OUTLINED_FUNCTION_9_12();
    sub_193448804(v77, v78, v79, v80);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v81, v82, v83, v84);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_309_0();
  v19 = OUTLINED_FUNCTION_183_3(v10, v11, v12, v13, v14, v15, v16, v17, *(v0 + 64), *(v0 + 80), v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *__src, *&__src[8], v141, *(&v141 + 1), v142, v143, v144[0], v144[1], v145, *(&v145 + 1), v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156[0], v157, v158, v159, v18, v8, v162, v163);
  if (!v9)
  {
    OUTLINED_FUNCTION_285_2(v19, v20, v21, v22, v23, v24, v25, v26, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, __src[0], *&__src[8], v141, *(&v141 + 1), v142, v143, v144[0], v144[1], v145, *(&v145 + 1), v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v85, v86, v87, v88);
    OUTLINED_FUNCTION_9_12();
    v93 = sub_193448804(v89, v90, v91, v92);
    OUTLINED_FUNCTION_225_3(v93, v94, v95, v96, v97, v98, v99, v100, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *__src, *&__src[8], v141, *(&v141 + 1), v142, v143, v144[0], v144[1], v145, *(&v145 + 1), v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v101, v102, v103, v104);
    sub_1937375CC(__src);
LABEL_16:
    OUTLINED_FUNCTION_309_0();
    v160 = v105;
    v161 = v8;
    v106 = *(v0 + 80);
    v162 = *(v0 + 64);
    v163 = v106;
    v107 = *(v1 + 2);
    v164 = *(v1 + 1);
    v165 = v107;
    v166 = v1[6];
    v167 = v9;
    v108 = *(v1 + 5);
    v168 = *(v1 + 4);
    v169 = v108;
    sub_19344E6DC(v156, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_17;
  }

  v27 = *(v1 + 2);
  *__src = *(v1 + 1);
  v141 = v27;
  v28 = v1[6];
  v29 = *(v1 + 5);
  *v144 = *(v1 + 4);
  v145 = v29;
  v142 = v28;
  OUTLINED_FUNCTION_202_3(__dst, v20, v21, v22, v23, v24, v25, v26, v120, v121, v122);
  OUTLINED_FUNCTION_202_3(v171, v30, v31, v32, v33, v34, v35, v36, v120, v121, v122);
  v44 = OUTLINED_FUNCTION_202_3(v156, v37, v38, v39, v40, v41, v42, v43, v120, v121, v122);
  v52 = OUTLINED_FUNCTION_410(v44, v45, v46, v47, v48, v49, v50, v51, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *__src, *&__src[8], v141, *(&v141 + 1), v142, v9, v144[0], v144[1], v145, *(&v145 + 1), v146);
  v54 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v52, v53);
  v55 = v54;
  OUTLINED_FUNCTION_297_2(v54, v56, v57, v58, v59, v60, v61, v62, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, __src[0]);
  v63 = sub_1937375CC(&v120);
  OUTLINED_FUNCTION_290_1(v63, v64, v65, v66, v67, v68, v69, v70, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *__src, *&__src[8], v141, *(&v141 + 1), v142, v143, v144[0], v144[1], v145, *(&v145 + 1), v146);
  sub_1937375CC(&v130);
  v71 = *(v0 + 32);
  *__src = *(v0 + 16);
  v141 = v71;
  v142 = *(v0 + 48);
  v143 = v8;
  v72 = *(v0 + 64);
  v73 = *(v0 + 80);
  OUTLINED_FUNCTION_409();
  OUTLINED_FUNCTION_188_4();
  sub_19344E6DC(v74, v75, v76);
  return v55 & 1;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO09PrimitiveG0O3AppV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 56);
  if (*(v0 + 8))
  {
    v3 = *v1;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_125();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      v17 = *(v1 + 1);
      v18 = *(v1 + 2);
      v4 = v1[6];
      v5 = *(v1 + 4);
      v6 = *(v1 + 5);
      OUTLINED_FUNCTION_182_6();
      v7 = *(v1 + 2);
      v19[0] = *(v1 + 1);
      v19[1] = v7;
      v20 = v1[6];
      v21 = v2;
      v8 = *(v1 + 5);
      v22 = *(v1 + 4);
      v23 = v8;
      sub_1936D0D2C(v19, v24);
      OUTLINED_FUNCTION_39_20();
      ToolKitToolDisplayRepresentation.hash(into:)();
      OUTLINED_FUNCTION_316_1(v24, v9, v10, v11, v12, v13, v14, v15, v17);
      return sub_1937375CC(v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO09PrimitiveG0O3AppV04hashG0Sivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[7];
  sub_19393CAB0();
  if (!v2)
  {
    sub_19393CAD0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_19393CAD0();
    return sub_19393CB00();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_175();
  sub_19393C640();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = *(v0 + 2);
  __src[0] = *(v0 + 1);
  __src[1] = v4;
  *&__src[2] = v0[6];
  *(&__src[2] + 1) = v3;
  v5 = *(v0 + 5);
  __src[3] = *(v0 + 4);
  __src[4] = v5;
  memcpy(v14, __src, sizeof(v14));
  sub_19393CAD0();
  sub_1936D0D2C(__src, v16);
  ToolKitToolDisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_316_1(v16, v6, v7, v8, v9, v10, v11, v12, v14[0]);
  sub_1937375CC(v16);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.calendar.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x49uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x49uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AF0, &qword_1939807F8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolTypedValue.PrimitiveValue.DateComponents.calendar.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x49uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AF0, &qword_1939807F8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x49uLL);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.year.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.year.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.month.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.month.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.day.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.day.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.hour.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.hour.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.minute.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.minute.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.second.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.second.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.nanosecond.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.nanosecond.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekday.getter()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekday.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.quarter.getter()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.quarter.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekOfMonth.getter()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekOfYear.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.getter()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.DateComponents.init()@<D0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_224_1(a1, v4[0]);
  sub_19344E6DC(v4, &qword_1EAE41AF0, &qword_1939807F8);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 57) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = v2;
  *(v1 + 144) = 0;
  *(v1 + 152) = v2;
  *(v1 + 160) = 0;
  *(v1 + 168) = v2;
  *(v1 + 176) = 0;
  *(v1 + 184) = v2;
  *(v1 + 192) = 0;
  *(v1 + 200) = v2;
  *(v1 + 208) = 0;
  *(v1 + 216) = v2;
  *(v1 + 224) = 0;
  *(v1 + 232) = v2;
  *(v1 + 240) = 0;
  *(v1 + 248) = v2;
  *(v1 + 256) = 0;
  *(v1 + 264) = v2;
  *(v1 + 272) = 0;
  *(v1 + 280) = v2;
  *(v1 + 288) = 0;
  *(v1 + 296) = v2;
  *(v1 + 304) = 0;
  *(v1 + 312) = v2;
  return result;
}

uint64_t sub_19371D504@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371D52C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.firstWeekday.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.firstWeekday.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.minimumDaysInFirstWeek.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.minimumDaysInFirstWeek.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

void static ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)()
{
  OUTLINED_FUNCTION_273_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v23 = *(v0 + 48);
  v6 = *(v0 + 56);
  v21 = *(v0 + 64);
  v25 = *(v0 + 72);
  v7 = *(v1 + 9);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v22 = *(v1 + 64);
  v24 = *(v1 + 72);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_23;
    }

    v14 = *v0;
    v15 = *(v0 + 8);
    v16 = *v1;
    v20 = *(v0 + 16);
    OUTLINED_FUNCTION_250_1(v0, v1);
    v17 = ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
    v18 = v17 == ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
    v2 = v20;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  if (v3)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    v18 = v2 == v9 && v3 == v8;
    if (!v18)
    {
      OUTLINED_FUNCTION_177_5();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_23;
  }

  if (v5 && v10 && (v4 != v11 || v5 != v10))
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_46_14();
    sub_19393CA30();
  }

LABEL_23:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_148_2();
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 56);
  v7 = v0[8];
  v8 = *(v0 + 72);
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = v0[4];
    v18 = v0[5];
    v10 = *(v0 + 56);
    v11 = v0[8];
    v12 = *(v0 + 8);
    v13 = v0[6];
    v14 = *(v0 + 72);
    v15 = *v0;
    OUTLINED_FUNCTION_103_0();
    v8 = v14;
    v5 = v13;
    v7 = v11;
    v6 = v10;
    v3 = v18;
    OUTLINED_FUNCTION_177_1();
    v16 = ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.rawValue.getter();
    MEMORY[0x193B18030](v16);
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_113_3();
      sub_19393C640();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v5);
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_11:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_12;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_104_0();
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v7);
LABEL_12:
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371DA9C()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.DateComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(v88, v2, 0x49uLL);
  v4 = *(v3 + 11);
  v76 = *(v3 + 10);
  v74 = *(v3 + 12);
  v77 = v3[104];
  v70 = *(v3 + 14);
  v75 = v3[120];
  v66 = *(v3 + 16);
  v71 = v3[136];
  v62 = *(v3 + 18);
  v67 = v3[152];
  v58 = *(v3 + 20);
  v63 = v3[168];
  v54 = *(v3 + 22);
  v59 = v3[184];
  v50 = *(v3 + 24);
  v55 = v3[200];
  v46 = *(v3 + 26);
  v51 = v3[216];
  v42 = *(v3 + 28);
  v47 = v3[232];
  v39 = *(v3 + 30);
  v43 = v3[248];
  v37 = *(v3 + 32);
  v40 = v3[264];
  v35 = *(v3 + 34);
  v38 = v3[280];
  v36 = v3[296];
  v32 = *(v3 + 38);
  v33 = *(v3 + 36);
  v34 = v3[312];
  memcpy(v89, v1, 0x49uLL);
  v6 = *(v1 + 10);
  v5 = *(v1 + 11);
  v72 = *(v1 + 12);
  v7 = *(v1 + 104);
  v68 = *(v1 + 14);
  v73 = *(v1 + 120);
  v64 = *(v1 + 16);
  v69 = *(v1 + 136);
  v60 = *(v1 + 18);
  v65 = *(v1 + 152);
  v56 = *(v1 + 20);
  v61 = *(v1 + 168);
  v52 = *(v1 + 22);
  v57 = *(v1 + 184);
  v48 = *(v1 + 24);
  v53 = *(v1 + 200);
  v44 = *(v1 + 26);
  v49 = *(v1 + 216);
  v41 = *(v1 + 28);
  v45 = *(v1 + 232);
  v8 = *(v1 + 30);
  v9 = *(v1 + 248);
  v10 = *(v1 + 32);
  v11 = *(v1 + 264);
  v12 = *(v1 + 34);
  v13 = *(v1 + 280);
  v14 = *(v1 + 36);
  v15 = *(v1 + 296);
  v16 = *(v1 + 38);
  v17 = *(v1 + 312);
  *&v87[23] = *(v1 + 2);
  v18 = v88[3];
  *&v87[7] = *v1;
  v19 = v89[3];
  if (v88[3] != 1)
  {
    OUTLINED_FUNCTION_192_2();
    memcpy(__dst, __src, 0x49uLL);
    if (v19 != 1)
    {
      v80[0] = *v1;
      v23 = *(v1 + 2);
      v24 = v1[3];
      v80[2] = v1[2];
      v80[3] = v24;
      *(&v80[3] + 9) = *(v1 + 57);
      *&v80[1] = v23;
      *(&v80[1] + 1) = v19;
      OUTLINED_FUNCTION_90_10(v88, v79);
      OUTLINED_FUNCTION_90_10(v89, v79);
      OUTLINED_FUNCTION_90_10(__src, v79);
      static ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)();
      v26 = v25;
      memcpy(v78, v80, 0x49uLL);
      sub_193737738(v78);
      memcpy(v79, __dst, 0x49uLL);
      sub_193737738(v79);
      v80[0] = *v3;
      *&v80[1] = *(v3 + 2);
      *(&v80[1] + 1) = v18;
      v27 = *(v3 + 3);
      v80[2] = *(v3 + 2);
      v80[3] = v27;
      *(&v80[3] + 9) = *(v3 + 57);
      OUTLINED_FUNCTION_146();
      sub_19344E6DC(v28, v29, v30);
      if ((v26 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    memcpy(v80, __src, 0x49uLL);
    OUTLINED_FUNCTION_27_7(v88, v79);
    OUTLINED_FUNCTION_27_7(v89, v79);
    OUTLINED_FUNCTION_27_7(__src, v79);
    sub_193737738(v80);
LABEL_7:
    OUTLINED_FUNCTION_192_2();
    *v83 = *v87;
    *&v83[15] = *&v87[15];
    v84 = v19;
    v21 = v1[2];
    v22 = v1[3];
    *(v86 + 9) = *(v1 + 57);
    v85 = v21;
    v86[0] = v22;
    sub_19344E6DC(__src, &qword_1EAE41AF8, &qword_193980800);
    goto LABEL_8;
  }

  if (v89[3] != 1)
  {
    OUTLINED_FUNCTION_27_7(v88, __src);
    OUTLINED_FUNCTION_27_7(v89, __src);
    goto LABEL_7;
  }

  *__src = *v3;
  *&__src[16] = *(v3 + 2);
  *&__src[24] = 1;
  v20 = *(v3 + 3);
  *&__src[32] = *(v3 + 2);
  *&__src[48] = v20;
  *&__src[57] = *(v3 + 57);
  OUTLINED_FUNCTION_449(v88, __dst);
  OUTLINED_FUNCTION_449(v89, __dst);
  sub_19344E6DC(__src, &qword_1EAE41AF0, &qword_1939807F8);
LABEL_10:
  if (v4 && v5 && (v76 != v6 || v4 != v5))
  {
    OUTLINED_FUNCTION_184_7();
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolTypedValue.PrimitiveValue.DateComponents.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 3);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v4 = *(v0 + 12);
  v5 = *(v0 + 104);
  v6 = *(v0 + 120);
  v11 = *(v0 + 14);
  v12 = *(v0 + 16);
  v7 = *(v0 + 136);
  v13 = *(v0 + 18);
  v14 = *(v0 + 20);
  v24 = *(v0 + 152);
  v25 = *(v0 + 168);
  v15 = *(v0 + 22);
  v16 = *(v0 + 24);
  v26 = *(v0 + 184);
  v27 = *(v0 + 200);
  v17 = *(v0 + 26);
  v18 = *(v0 + 28);
  v28 = *(v0 + 216);
  v29 = *(v0 + 232);
  v19 = *(v0 + 30);
  v20 = *(v0 + 32);
  v30 = *(v0 + 248);
  v31 = *(v0 + 264);
  v21 = *(v0 + 34);
  v22 = *(v0 + 36);
  v32 = *(v0 + 280);
  v33 = *(v0 + 296);
  v23 = *(v0 + 38);
  v34 = *(v0 + 312);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __src[0] = *v0;
    v8 = *(v0 + 2);
    v9 = v0[3];
    __src[2] = v0[2];
    __src[3] = v9;
    *(&__src[3] + 9) = *(v0 + 57);
    *&__src[1] = v8;
    *(&__src[1] + 1) = v1;
    OUTLINED_FUNCTION_103_0();
    v36 = *v0;
    v37 = *(v0 + 2);
    v38 = v1;
    v10 = v0[3];
    v39 = v0[2];
    v40[0] = v10;
    *(v40 + 9) = *(v0 + 57);
    sub_1936C521C(&v36, v41);
    ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
    memcpy(v41, __src, 0x49uLL);
    sub_193737738(v41);
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_114_0();
      sub_19393C640();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v5)
  {
LABEL_4:
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v4);
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v11);
  if (!v7)
  {
LABEL_6:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v12);
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if (v24)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v14);
  }

  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v15);
  }

  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  if (v29)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v18);
  }

  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v20);
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v21);
  }

  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  if (v34)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v23);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371E51C()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.DateComponents.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.calendar.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x49uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x49uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AF0, &qword_1939807F8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.calendar.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x49uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AF0, &qword_1939807F8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x49uLL);
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.frequency.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 89);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.frequency.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.end.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u64[0];
  v3 = v1[8].n128_u32[2];
  v4 = v1[8].n128_u16[6];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[6] = v4;
  a1[1].n128_u32[2] = v3;
  return result;
}

__n128 ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.end.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = a1[1].n128_u16[6];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v2;
  v1[8].n128_u16[6] = v4;
  v1[8].n128_u32[2] = v3;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.matchingPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  v4 = *(v1 + 153);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.matchingPolicy.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 144) = *result;
  *(v1 + 152) = v2;
  *(v1 + 153) = v3;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.repeatedTimePolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 169);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.repeatedTimePolicy.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 160) = *result;
  *(v1 + 168) = v2;
  *(v1 + 169) = v3;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.months.setter(uint64_t a1)
{
  v3 = *(v1 + 176);

  *(v1 + 176) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(v1 + 184);

  *(v1 + 184) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.weeks.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.weekdays.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hours.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.minutes.setter(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.seconds.setter(uint64_t a1)
{
  v3 = *(v1 + 232);

  *(v1 + 232) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.setPositions.setter(uint64_t a1)
{
  v3 = *(v1 + 240);

  *(v1 + 240) = a1;
  return result;
}

double ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.init()@<D0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_224_1(a1, v5[0]);
  sub_19344E6DC(v5, &qword_1EAE41AF0, &qword_1939807F8);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = 256;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 57) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  *(v1 + 140) = 768;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 256;
  *(v1 + 160) = 0;
  *(v1 + 168) = 256;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 176) = MEMORY[0x1E69E7CC0];
  *(v1 + 184) = v4;
  *(v1 + 192) = v4;
  *(v1 + 200) = v4;
  *(v1 + 208) = v4;
  *(v1 + 216) = v4;
  *(v1 + 224) = v4;
  *(v1 + 232) = v4;
  *(v1 + 240) = v4;
  return result;
}

uint64_t sub_19371EAD0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EAF8@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EBE8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EC10@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371ED00@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371ED28@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EE18@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EE40@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.allCases.getter();
  *a1 = result;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.date.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 28);
  OUTLINED_FUNCTION_117_14(a1);
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 513;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 29);
  v5 = *(a2 + 8);
  v6 = *(a2 + 29);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }

LABEL_16:
    if (v4 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 2 || ((v6 ^ v4) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 28) & 1) == 0 && v2 == *(a2 + 16) && v3 == *(a2 + 24))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 28);
  v4 = *(v0 + 29);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v3)
    {
LABEL_3:
      sub_19393CAD0();
      MEMORY[0x193B18060](v1);
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v5);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hashValue.getter()
{
  OUTLINED_FUNCTION_180_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  v4 = *(v0 + 29);
  OUTLINED_FUNCTION_93_11(v5);
  v6 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_134_0(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371F180()
{
  OUTLINED_FUNCTION_180_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  v4 = *(v0 + 29);
  OUTLINED_FUNCTION_93_11(v5);
  v6 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 10) = 2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 10);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 9);
  v6 = *(a2 + 10);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v9 = OUTLINED_FUNCTION_9_16(a1, a2);
    v10 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter(v9);
    if (v10 != ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter(v10))
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

LABEL_11:
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == v7)
      {
        v12 = v8;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v2) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hash(into:)()
{
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 10);
  v2 = v0[2];
  v3 = *(v0 + 24);
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v8 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter(v7);
    MEMORY[0x193B18030](v8);
  }

  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
  }

  OUTLINED_FUNCTION_92_7();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hashValue.getter()
{
  OUTLINED_FUNCTION_151_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371F438()
{
  OUTLINED_FUNCTION_151_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_7:
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v2 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v2);
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    v4 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v4);
  }

  if (v3 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19371F64C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    v4 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v4);
  }

  if (v3 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(v147, v2, 0x49uLL);
  v134 = *(v3 + 10);
  v133 = *(v3 + 88);
  v4 = *(v3 + 89);
  v136 = *(v3 + 104);
  v124 = *(v3 + 7);
  v123 = *(v3 + 16);
  v130 = v3[70];
  v128 = *(v3 + 12);
  v129 = *(v3 + 34);
  v120 = *(v3 + 18);
  v119 = *(v3 + 152);
  v116 = *(v3 + 168);
  v121 = *(v3 + 169);
  v122 = *(v3 + 153);
  v117 = *(v3 + 20);
  v118 = *(v3 + 22);
  v114 = *(v3 + 24);
  v115 = *(v3 + 23);
  v112 = *(v3 + 26);
  v113 = *(v3 + 25);
  v5 = *(v3 + 29);
  v110 = *(v3 + 28);
  v111 = *(v3 + 27);
  v6 = *(v3 + 30);
  memcpy(v148, v1, 0x49uLL);
  v132 = *(v1 + 10);
  v131 = *(v1 + 88);
  v7 = *(v1 + 89);
  v135 = *(v1 + 104);
  v9 = *(v1 + 14);
  v8 = *(v1 + 15);
  v10 = *(v1 + 16);
  v127 = *(v1 + 70);
  v125 = *(v1 + 12);
  v126 = *(v1 + 34);
  v11 = *(v1 + 18);
  v12 = *(v1 + 152);
  v13 = *(v1 + 153);
  v14 = *(v1 + 20);
  v15 = *(v1 + 168);
  v16 = *(v1 + 169);
  v18 = *(v1 + 22);
  v17 = *(v1 + 23);
  v20 = *(v1 + 24);
  v19 = *(v1 + 25);
  v22 = *(v1 + 26);
  v21 = *(v1 + 27);
  v24 = *(v1 + 28);
  v23 = *(v1 + 29);
  v25 = *(v1 + 30);
  v26 = v147[3];
  *&v146[7] = *v1;
  *&v146[23] = *(v1 + 2);
  v27 = v148[3];
  if (v147[3] == 1)
  {
    if (v148[3] == 1)
    {
      v102 = v9;
      v103 = v8;
      v104 = v10;
      v105 = v13;
      v106 = v12;
      v107 = v11;
      v108 = v16;
      v109 = v15;
      v100 = v14;
      v101 = v18;
      v98 = v20;
      v99 = v17;
      v96 = v22;
      v97 = v19;
      v94 = v24;
      v95 = v21;
      v92 = v25;
      v93 = v23;
      v90 = v6;
      v91 = v5;
      *__src = *v3;
      *&__src[16] = *(v3 + 2);
      *&__src[24] = 1;
      v28 = *(v3 + 3);
      *&__src[32] = *(v3 + 2);
      *&__src[48] = v28;
      *&__src[57] = *(v3 + 57);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v29, v30, v31, v32);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v33, v34, v35, v36);
      v37 = OUTLINED_FUNCTION_247_2(__src);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_12();
    sub_193448804(v50, v51, v52, v53);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v54, v55, v56, v57);
LABEL_7:
    OUTLINED_FUNCTION_197_3();
    *v142 = *v146;
    *&v142[15] = *&v146[15];
    v143 = v27;
    v58 = v1[2];
    v59 = v1[3];
    *(v145 + 9) = *(v1 + 57);
    v144 = v58;
    v145[0] = v59;
    sub_19344E6DC(__src, &qword_1EAE41AF8, &qword_193980800);
    goto LABEL_8;
  }

  v102 = v9;
  v103 = v8;
  v104 = v10;
  v105 = v13;
  v106 = v12;
  v107 = v11;
  v108 = v16;
  v109 = v15;
  v100 = v14;
  v101 = v18;
  v98 = v20;
  v99 = v17;
  v96 = v22;
  v97 = v19;
  v94 = v24;
  v95 = v21;
  v92 = v25;
  v93 = v23;
  OUTLINED_FUNCTION_197_3();
  memcpy(__dst, __src, 0x49uLL);
  if (v27 == 1)
  {
    memcpy(v139, __src, 0x49uLL);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v38, v39, v40, v41);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v42, v43, v44, v45);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v46, v47, v48, v49);
    sub_193737738(v139);
    goto LABEL_7;
  }

  v90 = v6;
  v91 = v5;
  v139[0] = *v1;
  v60 = *(v1 + 2);
  v61 = v1[3];
  v139[2] = v1[2];
  v139[3] = v61;
  *(&v139[3] + 9) = *(v1 + 57);
  *&v139[1] = v60;
  *(&v139[1] + 1) = v27;
  OUTLINED_FUNCTION_294(v147, v138);
  OUTLINED_FUNCTION_294(v148, v138);
  OUTLINED_FUNCTION_294(__src, v138);
  static ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)();
  v63 = v62;
  memcpy(v137, v139, 0x49uLL);
  sub_193737738(v137);
  memcpy(v138, __dst, 0x49uLL);
  sub_193737738(v138);
  v139[0] = *v3;
  *&v139[1] = *(v3 + 2);
  *(&v139[1] + 1) = v26;
  v64 = *(v3 + 3);
  v139[2] = *(v3 + 2);
  v139[3] = v64;
  *(&v139[3] + 9) = *(v3 + 57);
  OUTLINED_FUNCTION_15_1();
  v37 = sub_19344E6DC(v65, v66, v67);
  if ((v63 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_8;
    }

    *__src = v134;
    __src[8] = v133 & 1;
    __dst[0] = v132;
    LOBYTE(__dst[1]) = v131 & 1;
    v68 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter(v37);
    if (v68 != ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter(v68))
    {
      goto LABEL_8;
    }
  }

  if (v136)
  {
    v70 = v108;
    v69 = v109;
    v71 = v107;
    v73 = v105;
    v72 = v106;
    v74 = v103;
    v75 = v104;
    v76 = v102;
    if (!v135)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v77 = v135;
    if (v128 != v125)
    {
      v77 = 1;
    }

    v70 = v108;
    v69 = v109;
    v71 = v107;
    v73 = v105;
    v72 = v106;
    v74 = v103;
    v75 = v104;
    v76 = v102;
    if (v77)
    {
      goto LABEL_8;
    }
  }

  v78 = v126 | (v127 << 32);
  if (((v129 | (v130 << 32)) & 0xFF0000000000) == 0x30000000000)
  {
    if ((v78 & 0xFF0000000000) != 0x30000000000)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *__src = v124;
    *&__src[16] = v123;
    *&__src[24] = v129;
    *&__src[28] = (v129 | (v130 << 32)) >> 32;
    if ((v78 & 0xFF0000000000) == 0x30000000000)
    {
      goto LABEL_8;
    }

    __dst[0] = v76;
    LOBYTE(__dst[1]) = v74 & 1;
    __dst[2] = v75;
    LODWORD(__dst[3]) = v126;
    BYTE4(__dst[3]) = BYTE4(v78) & 1;
    BYTE5(__dst[3]) = ((v126 | (v127 << 32)) >> 32) >> 8;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v74 = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)(__src, __dst);
    v73 = v83;
    v72 = v82;
    v71 = v81;
    v70 = v80;
    v69 = v79;
    if ((v74 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v122)
  {
    if ((v73 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v73)
    {
      goto LABEL_8;
    }

    *__src = v120;
    __src[8] = v119 & 1;
    __dst[0] = v71;
    LOBYTE(__dst[1]) = v72 & 1;
    v84 = v69;
    v85 = v70;
    v86 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter(v74, v76);
    v88 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter(v86, v87);
    v70 = v85;
    v69 = v84;
    if (v86 != v88)
    {
      goto LABEL_8;
    }
  }

  if (v121)
  {
    if ((v70 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v70)
    {
      goto LABEL_8;
    }

    *__src = v117;
    __src[8] = v116 & 1;
    __dst[0] = v100;
    LOBYTE(__dst[1]) = v69 & 1;
    v89 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter();
    if (v89 != ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter())
    {
      goto LABEL_8;
    }
  }

  if (sub_19371495C(v118, v101) & 1) != 0 && (sub_19345007C(v115, v99) & 1) != 0 && (sub_19345007C(v114, v98) & 1) != 0 && (sub_19345007C(v113, v97) & 1) != 0 && (sub_193714A00(v112, v96) & 1) != 0 && (sub_19345007C(v111, v95) & 1) != 0 && (sub_19345007C(v110, v94) & 1) != 0 && (sub_19345007C(v91, v93))
  {
    sub_19345007C(v90, v92);
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 10);
  v5 = *(v1 + 88);
  v6 = *(v1 + 89);
  v7 = *(v1 + 104);
  v25 = *(v1 + 12);
  v26 = *(v1 + 15);
  v23 = *(v1 + 14);
  v24 = *(v1 + 16);
  v8 = *(v1 + 70);
  v9 = *(v1 + 34);
  v28 = *(v1 + 18);
  v27 = *(v1 + 152);
  v30 = *(v1 + 20);
  v29 = *(v1 + 168);
  v31 = *(v1 + 153);
  v32 = *(v1 + 169);
  v33 = *(v1 + 22);
  v34 = *(v1 + 23);
  v35 = *(v1 + 24);
  v36 = *(v1 + 25);
  v37 = *(v1 + 26);
  v38 = *(v1 + 27);
  v39 = *(v1 + 28);
  v40 = *(v1 + 29);
  v41 = *(v1 + 30);
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
LABEL_3:
      v10 = OUTLINED_FUNCTION_103_0();
      __dst[0] = v4;
      LOBYTE(__dst[1]) = v5 & 1;
      v11 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter(v10);
      MEMORY[0x193B18030](v11);
      goto LABEL_6;
    }
  }

  else
  {
    __src[0] = *v1;
    v12 = *(v1 + 2);
    v13 = v1[3];
    __src[2] = v1[2];
    __src[3] = v13;
    *(&__src[3] + 9) = *(v1 + 57);
    *&__src[1] = v12;
    *(&__src[1] + 1) = v3;
    OUTLINED_FUNCTION_103_0();
    v43 = *v1;
    v44 = *(v1 + 2);
    v45 = v3;
    v14 = v1[3];
    v46 = v1[2];
    v47[0] = v14;
    *(v47 + 9) = *(v1 + 57);
    sub_1936C521C(&v43, __dst);
    ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
    memcpy(__dst, __src, 0x49uLL);
    sub_193737738(__dst);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  v15 = v9 | (v8 << 32);
  if (v7)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v25);
  }

  if (BYTE5(v15) == 3)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_103_0();
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
    if ((v15 & 0x100000000) != 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v23);
    if ((v15 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v24);
  sub_19393CAE0();
LABEL_15:
  if (BYTE5(v15) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

LABEL_18:
  sub_19393CAD0();
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_103_0();
    __dst[0] = v28;
    LOBYTE(__dst[1]) = v27 & 1;
    v18 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter(v16, v17);
    MEMORY[0x193B18030](v18);
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v30;
    LOBYTE(__dst[1]) = v29 & 1;
    v19 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter();
    MEMORY[0x193B18030](v19);
  }

  v20 = OUTLINED_FUNCTION_438();
  sub_1937373C0(v20, v21);
  sub_1934D14B8(a1, v34);
  sub_1934D14B8(a1, v35);
  sub_1934D14B8(a1, v36);
  sub_1937372A8(a1, v37);
  sub_1934D14B8(a1, v38);
  sub_1934D14B8(a1, v39);
  sub_1934D14B8(a1, v40);
  return sub_1934D14B8(a1, v41);
}