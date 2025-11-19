void __swiftcall PrivacyVersions.init(gdpr:gamesPrivacy:gamesCrossUse:)(GameServicesCore::PrivacyVersions *__return_ptr retstr, Swift::Int_optional gdpr, Swift::Int_optional gamesPrivacy, Swift::Int_optional gamesCrossUse)
{
  retstr->gdpr.value = gdpr.value;
  retstr->gdpr.is_nil = gdpr.is_nil;
  *(&retstr->gamesPrivacy.value + 7) = gamesPrivacy.value;
  BYTE6(retstr->gamesCrossUse.value) = gamesPrivacy.is_nil;
  *(&retstr[1].gdpr.value + 5) = gamesCrossUse.value;
  BYTE4(retstr[1].gamesPrivacy.value) = gamesCrossUse.is_nil;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227B0ECB0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameServicesEnvironment.init(cacheTTLOverride:hostBundleId:isDebugMode:defaultLocale:deviceUDID:currentPrivacyVersions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v11 = *a7;
  v12 = *(a7 + 8);
  v13 = a7[2];
  v14 = *(a7 + 24);
  v15 = a7[4];
  v16 = *(a7 + 40);
  *a8 = a9;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  v17 = type metadata accessor for GameServicesEnvironment(0);
  v18 = v17[7];
  v19 = sub_227D49328();
  OUTLINED_FUNCTION_62_0(v19);
  result = (*(v20 + 32))(a8 + v18, a4);
  v22 = (a8 + v17[8]);
  *v22 = a5;
  v22[1] = a6;
  v23 = a8 + v17[9];
  *v23 = v11;
  *(v23 + 8) = v12;
  *(v23 + 16) = v13;
  *(v23 + 24) = v14;
  *(v23 + 32) = v15;
  *(v23 + 40) = v16;
  return result;
}

uint64_t OUTLINED_FUNCTION_83()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  result = v0[8];
  v8 = v0[6];
  v9 = *(v0[7] + 8);
  return result;
}

void OUTLINED_FUNCTION_80_3()
{
}

uint64_t OUTLINED_FUNCTION_80_6()
{
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];
  v8 = v0[46];
}

uint64_t OUTLINED_FUNCTION_80_7()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[9];
  v4 = *(v0[16] + 16);
  return v0[17];
}

uint64_t type metadata accessor for GameKitService()
{
  result = qword_280E7D2E0;
  if (!qword_280E7D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_227D49D38();
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  result = v0[24];
  v2 = v0[22];
  v3 = *(v0[23] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return sub_227D4D968();
}

id OUTLINED_FUNCTION_19_5()
{

  return [v0 addObserverForName:v2 object:v1 queue:0 usingBlock:v3];
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_19_11@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[31] + 16;
  return v0[32];
}

void OUTLINED_FUNCTION_19_16()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v7 = v0[3];
  v6 = v0[4];
}

uint64_t OUTLINED_FUNCTION_19_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_227B0F2D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_227B11EE8(a1, (a2 + 1));
  sub_227B0F360(0, &qword_280E7A810, 0x277CEE3F8);
  v4 = sub_227B120D0();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_227B0F360(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_227B0F3EC()
{
  if (qword_280E7BE20 != -1)
  {
    OUTLINED_FUNCTION_310();
  }

  return &qword_280E7D370;
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1)
{
  *(a1 + 8) = sub_227B33EE8;
  v2 = *(v1 + 64);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  return sub_227D4CE58();
}

void OUTLINED_FUNCTION_61_6()
{
  v4 = v1[7];
  v3 = v1[8];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
}

void OUTLINED_FUNCTION_61_7()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[17];
  v7 = v0[18];
}

void OUTLINED_FUNCTION_61_9()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
}

uint64_t OUTLINED_FUNCTION_61_10()
{
  result = v0[24];
  v2 = v0[21];
  v3 = v0[20];
  v4 = *(v0[22] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_13()
{
  result = v0[26];
  v2 = v0[24];
  v3 = *(v0[25] + 8);
  return result;
}

uint64_t sub_227B0F660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B0F6A8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227B0F6EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227B0F730(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F774(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227B0F7BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227B0F800(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227B0F88C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F8D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227B0F918(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F95C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227B0F9A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_198_4()
{
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
}

void OUTLINED_FUNCTION_198_5()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34] + 8;
}

void OUTLINED_FUNCTION_198_6()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[127];
  v9 = v0[126];
  v10 = v0[125];
  v11 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[121];
  v17 = v0[118];
  v18 = v0[117];
  v19 = v0[114];
  v12 = v0[113];
  v20 = v0[110];
  v21 = v0[107];
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[75];
  v13 = v0[74];
  v14 = v0[73];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[66];
  v18 = v0[63];
  v19 = v0[62];
  v20 = v0[61];
  v21 = v0[60];
  v22 = v0[59];
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return sub_227D4D518();
}

void OUTLINED_FUNCTION_0_27()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_227D4D8D8();
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_36()
{
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t result)
{
  *(result + 8) = sub_227BE1A88;
  v2 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_48()
{
  *(v1 - 120) = v0;
  v2 = *(*(v1 - 72) + 16);
  result = *(v1 - 112);
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return swift_once();
}

uint64_t sub_227B10250()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[16];
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[9];
  v10 = *(v0[33] + 8);
  return v0[34];
}

uint64_t OUTLINED_FUNCTION_27()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return sub_227D49478();
}

double OUTLINED_FUNCTION_28()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  v6 = &a3 + *(a1 + 56) - a2;
  *(v4 - 112) = v3;

  return sub_227C70C78(v3, &a3 - a2);
}

void OUTLINED_FUNCTION_18_13(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D0D4F8];

  sub_227C89F90(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_18_14()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  result = v0[25];
  v5 = v0[23];
  v6 = *(v0[24] + 8);
  return result;
}

void OUTLINED_FUNCTION_18_16(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D0D4F0];

  sub_227CF1940(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_18_17()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v0[13] + 8);
  return v0[14];
}

void OUTLINED_FUNCTION_18_19()
{
  v1 = v0[18];
  v8 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_15_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_227B7E068(v1, v0);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_31_7()
{
  v8 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[23];
}

void OUTLINED_FUNCTION_31_8()
{
  *(v1 + 8) = v0;
  v3 = v2[17];
  v4 = v2[8];
  v5 = v2[4];
}

uint64_t OUTLINED_FUNCTION_11_2()
{
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v7 = *(v0 + 960);
  v8 = *(v0 + 952);
  v9 = *(v0 + 992);
  v6 = *(v0 + 888);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  v1 = v0[26];
  v2 = v0[25];
  v14 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  result = v0[10];
  v12 = v0[8];
  v13 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_3()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = *(v0[26] + 8);
  return v0[27];
}

uint64_t OUTLINED_FUNCTION_59()
{
  result = v0[19];
  v2 = v0[17];
  v3 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return sub_227D4D9D8();
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = *(v0[15] + 8);
  return v0[16];
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

void OUTLINED_FUNCTION_11_20()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
}

uint64_t OUTLINED_FUNCTION_11_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  result = v0 - 72;
  v2 = *(v0 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_89()
{
  result = v0[22];
  v2 = v0[20];
  v3 = *(v0[21] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_62()
{
  result = v0[7];
  v2 = v0[5];
  v3 = *(v0[6] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  result = v0[12];
  v7 = v0[10];
  v8 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  v1 = v0[12];
  v2 = v0[13];
  result = v0[11];
  v4 = v0[9];
  v5 = *(v0[10] + 8);
  return result;
}

void OUTLINED_FUNCTION_27_7()
{

  JUMPOUT(0x22AAA7130);
}

void *OUTLINED_FUNCTION_27_8(void *result)
{
  *(v2 - 72) = *result;
  *(v2 - 216) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);

  return __swift_destroy_boxed_opaque_existential_0((v2 - 120));
}

void *OUTLINED_FUNCTION_27_12()
{
  v5 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_16()
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_36@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);

  return sub_227D49D68();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_81()
{
  *(v1 + 8) = v0;
  v4 = v2[15];
  result = v2[16];
  v5 = v2[14];
  v6 = v2[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v1 = v0[17];
  v2 = v0[18];
  result = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v6 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_32_6(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_227B15A74(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  v2 = *(*(v1 - 208) + 8);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

void OUTLINED_FUNCTION_32_10()
{
  v5 = v0[31];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  result = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[126];
  v7 = v0[123];
  v8 = v0[120];
  v9 = v0[117];
  return result;
}

void OUTLINED_FUNCTION_95(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

double OUTLINED_FUNCTION_29_5()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_9()
{
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[14];

  return sub_227D4AA58();
}

uint64_t OUTLINED_FUNCTION_29_10()
{
  v2 = v0[60];
  result = v0[61];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[49];
  v8 = v0[50];
  v9 = v0[48];
  v10 = v0[44];
  v11 = v0[45];
  v12 = v0[41];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  result = v0[27];
  v6 = v0[23];
  v7 = v0[24];
  return result;
}

void OUTLINED_FUNCTION_29_13()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
}

uint64_t OUTLINED_FUNCTION_29_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_15()
{
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  v4 = v0[121];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[114];
  v2 = v0[113];
  v8 = v0[110];
  v9 = v0[107];
}

void OUTLINED_FUNCTION_77()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_110()
{
  v2 = v0[8];
  v1 = v0[9];
  result = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = *(v0[5] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return sub_227D49478();
}

id OUTLINED_FUNCTION_10_11()
{
  v3 = *(v1 + 2816);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_10_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_10_17()
{
  result = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[19];
  v0[36] = *(v3 + 8);
  v0[37] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_13_11()
{
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
}

void OUTLINED_FUNCTION_13_17()
{
  v2 = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
}

unint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_8_2()
{
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[118];
  v7 = v0[117];
  v8 = v0[114];
  v9 = v0[113];
  v2 = v0[110];
  v10 = v0[107];
}

uint64_t OUTLINED_FUNCTION_79(unint64_t *a1)
{

  return sub_227B3DB5C(a1);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_9(unint64_t *a1)
{

  return sub_227BDE464(a1);
}

uint64_t OUTLINED_FUNCTION_8_11@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{

  return OnboardingState.PrivacyInfo.init(savedVersion:currentVersion:forceAcceptance:forceNotice:logDescription:)(a1, a2, a3, a4, a5, a6, 1380992071, 0xE400000000000000, a7);
}

uint64_t OUTLINED_FUNCTION_8_14()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v12 = v0[16];
  v13 = v0[14];
  v9 = v0[11];
  v14 = v0[10];
  v10 = *(v0[13] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{
  *(a1 + 8) = sub_227D1F0D4;
  v2 = v1[16];
  result = v1[13];
  v4 = v1[14];
  return result;
}

void OUTLINED_FUNCTION_8_19()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t sub_227B11A4C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227BBF438;

  return v7(a1);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t a1@<X8>)
{
  v6[5] = v4;
  v6[6] = v5;
  result = v1 + 24;
  v6[3] = a1;
  v6[4] = v2;
  v6[2] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_227D49188();
}

unint64_t OUTLINED_FUNCTION_5_13(uint64_t a1)
{

  return sub_227BC4050(a1);
}

void OUTLINED_FUNCTION_1_2(uint64_t a1@<X8>)
{
  v3[3] = a1;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t OUTLINED_FUNCTION_5_14@<X0>(uint64_t a1@<X8>)
{
  v3 = v2[14];
  v4 = v2[15];
  v5 = v2[13];
  v6 = *(v4 + 16);
  v7 = v2[2] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = v15[32];
  v16 = v15[33];
  v19 = v15[28];
  v18 = v15[29];
  v20 = v15[26];
  v21 = v15[27];
  v22 = v15[25];
  v24 = v15[22];
  v25 = v15[19];
  v26 = v15[16];
  v27 = v15[15];
  v28 = v15[14];
  v29 = v15[12];
  v30 = v15[11];
  v23 = *(a15 + 120);
}

void OUTLINED_FUNCTION_5_27()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
}

uint64_t OUTLINED_FUNCTION_5_30(unint64_t *a1)
{

  return sub_227CABA60(a1);
}

uint64_t OUTLINED_FUNCTION_5_31()
{
  result = v0 + 96;
  v2 = *(v0 + 96);
  return result;
}

uint64_t static GameKitService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_150_5();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BDA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227B11EE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_73(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *v14 = a1;

  return sub_227B1B1A4(v13, v12, va);
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[10];
  v7 = v0[11];
  result = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_1()
{
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
}

char *OUTLINED_FUNCTION_73_3(uint64_t a1, int64_t a2)
{

  return sub_227B3CA88(0, a2, 0);
}

uint64_t OUTLINED_FUNCTION_73_4()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = *(v0[31] + 96);
  return v0[32];
}

uint64_t OUTLINED_FUNCTION_73_6()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[28] + 16;
  return v0[29];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_227B120D0()
{
  v0 = sub_227D4CF78();

  v1 = sub_227D4CF78();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_72_2()
{
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
}

uint64_t *sub_227B122C8()
{
  if (qword_280E7BB30 != -1)
  {
    swift_once();
  }

  return &qword_280E7BB38;
}

uint64_t OUTLINED_FUNCTION_71()
{
  v2 = v0[124];
  v3 = v0[120];
  v4 = v0[119];
}

uint64_t OUTLINED_FUNCTION_38()
{
  *(v0 + 16) = v1;

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_71_1()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1)
{
  *(v1 + 184) = a1;

  return sub_227D4ACB8();
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);

  return sub_227D48F68();
}

uint64_t OUTLINED_FUNCTION_71_4(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_71_8()
{
  result = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *(a1 + 8) = sub_227B2D9B4;
  v2 = *(v1 + 1360);
  v3 = *(v1 + 1080);
  return *(v1 + 1072);
}

void OUTLINED_FUNCTION_1_7()
{
  v2 = v0[37];
  v3 = v0[36];
  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[27];
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[18];
  v1 = v0[17];
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_227D4D9A8();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_227D4DA08();
}

uint64_t OUTLINED_FUNCTION_1_18()
{
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_227D4D7C8();
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return sub_227D4DA78();
}

void *OUTLINED_FUNCTION_1_30@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = v1;
  v9 = v3[14];
  v10 = v3[8];
  v11 = v3[5];
  v8[5] = v6;
  v8[6] = v7;
  result = v3 + 3;
  v8[3] = a1;
  v8[4] = v4;
  v8[2] = v5;
  return result;
}

uint64_t sub_227B128A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B128F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B12938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B12980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B129C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B12A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B12A58(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B12A9C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B12AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227B12B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[5];
  v4 = v2[6];
  return v2[4];
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return swift_task_reportUnexpectedExecutor();
}

uint64_t OUTLINED_FUNCTION_30_10(unint64_t *a1)
{

  return sub_227C634DC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_30_13()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
}

void OUTLINED_FUNCTION_30_15()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
}

uint64_t *sub_227B12D14()
{
  if (qword_280E7BB40 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  return &qword_280E7BB48;
}

uint64_t OUTLINED_FUNCTION_64()
{
  result = v0[13];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1)
{
  *(a1 + 8) = sub_227B50C38;
  v2 = *(v1 + 528);
  return v1 + 16;
}

id OUTLINED_FUNCTION_9_7()
{

  return [v0 (v1 + 2865)];
}

void OUTLINED_FUNCTION_9_11(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D83D88];

  sub_227C6EF98(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_9_12()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_14(uint64_t a1)
{
  *(a1 + 8) = sub_227D1DFB0;
  v2 = v1[15];
  result = v1[12];
  v4 = v1[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_15()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
}

void OUTLINED_FUNCTION_16_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_16_4(void *a1)
{

  return sub_227B4DB6C(v1, a1, v2);
}

size_t OUTLINED_FUNCTION_16_7(size_t a1)
{

  return sub_227B3A224(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_16_11()
{

  return swift_once();
}

uint64_t *sub_227B13080()
{
  if (qword_280E7BB70 != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  return &qword_280E7BB78;
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  result = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  return result;
}

size_t OUTLINED_FUNCTION_15_5(size_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{

  return sub_227BDCF04(a1, a2, 1, v8, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_15_7()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
}

void OUTLINED_FUNCTION_15_14(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, int a11, os_log_type_t a12)
{

  _os_log_impl(a1, log, a12, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_15()
{
  v1 = v0[26];
  result = v0[19];
  v3 = v0[17];
  v4 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_17()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  v12 = v0[11];
  v10 = *(v0[28] + 8);
  return v0[29];
}

uint64_t sub_227B132F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227B13308@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_227B11EE8(a1, a3);
  sub_227B11EE8(a2, a3 + 120);
  sub_227B13374(a2, a3 + 40);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_227B13374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = &type metadata for GameDaemonSupportedTransport;
  v8 = sub_227B136B0();
  *&v6 = swift_allocObject();
  sub_227B11EE8(a1, v6 + 16);
  sub_227B11EE8(a1, v5);
  return sub_227B1342C(&v6, v5, a2);
}

uint64_t sub_227B133F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B1342C@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_227B132F0(a1, a3);

  return sub_227B132F0(a2, a3 + 40);
}

void OUTLINED_FUNCTION_56_0()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_20_1@<X0>(void *a1@<X8>)
{
  v1 = a1[80];
  __swift_project_boxed_opaque_existential_1(a1 + 76, a1[79]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_20_2()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_227D4D048();
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 144);
  return v1;
}

void *OUTLINED_FUNCTION_20_9()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  result = v0[20];
  v2 = v0[18];
  v3 = *(v0[19] + 8);
  return result;
}

void OUTLINED_FUNCTION_20_11()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
}

uint64_t sub_227B1365C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_15_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_227B136B0()
{
  result = qword_280E7CA30;
  if (!qword_280E7CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7CA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60()
{
  result = v0[17];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_115_0()
{
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[10];
}

unint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  a11[(v14 >> 6) + 8] |= 1 << v14;
  v15 = (a11[6] + 16 * v14);
  *v15 = v13;
  v15[1] = v12;
  result = sub_227B132F0((v11 + 56), a11[7] + 40 * v14);
  v17 = a11[2];
  return result;
}

unint64_t OUTLINED_FUNCTION_53_6(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

uint64_t GameKitService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t OUTLINED_FUNCTION_54_2(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_158()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_54_5()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[2];
}

uint64_t OUTLINED_FUNCTION_54_10()
{
  result = v0[26];
  v2 = v0[23];
  v3 = v0[22];
  v4 = *(v0[24] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{
  *(a1 + 8) = sub_227B30280;
  v2 = *(v1 + 1488);
  v3 = *(v1 + 1392);
  v4 = *(v1 + 1384);
  return v1 + 904;
}

void OUTLINED_FUNCTION_101()
{
  v1 = v0[26];
  v5 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
}

void OUTLINED_FUNCTION_45_3()
{
  v1 = v0[16];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v7 = v0[3];
  v6 = v0[4];
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return sub_227D49D38();
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return sub_227D49458();
}

uint64_t OUTLINED_FUNCTION_57_3()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
}

id OUTLINED_FUNCTION_57_6(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_57_8()
{
  result = v0[26];
  v2 = v0[22];
  v3 = v0[21];
  v4 = *(v0[23] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_9()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v5 = *v3;
  v4 = v3[1];

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1)
{
  *(a1 + 8) = sub_227B30EA0;
  v2 = *(v1 + 648);
  return v1 + 472;
}

uint64_t OUTLINED_FUNCTION_17_4()
{
  result = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[126];
  v7 = v0[123];
  v8 = v0[120];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[115];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a10 = a9;
  a11 = v11;

  return sub_227BBE5D4(v14, v13, v15, v12 == 0, &a10);
}

void OUTLINED_FUNCTION_17_14()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v3 + 16);
  v3 += 16;
  v5 = v0[7];
  v0[25] = *(v3 + 56);
  v6 = *(v3 + 64);
  v0[26] = v4;
  v0[27] = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1)
{
  *(v2 + 8) = v1;
  v9 = v3[16];
  v10 = v3[7];
  v11 = v3[4];
  v12 = v3[2];
  v8[5] = v6;
  v8[6] = v7;
  v8[3] = a1;
  v8[4] = v4;
  v8[2] = v5;
  return v12;
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t *sub_227B14000()
{
  if (qword_280E7BB60 != -1)
  {
    OUTLINED_FUNCTION_10_8();
  }

  return &qword_280E7BB68;
}

uint64_t sub_227B14040()
{
  result = sub_227D49EF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static GameKitService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameKitService();
  sub_227D49D78();
  OUTLINED_FUNCTION_22_13();
  sub_227B0F8D0(v5, v6);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem) = a2;
  }

  return v10;
}

uint64_t sub_227B1429C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_117_0();

  return GameKitService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t OUTLINED_FUNCTION_44()
{
  result = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  return result;
}

void OUTLINED_FUNCTION_435(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_64_2()
{
  v2 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_64_5()
{
  v3 = v0[38];
  v2 = v0[39];
  v8 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];

  return sub_227D49E08();
}

void OUTLINED_FUNCTION_64_7()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
}

void OUTLINED_FUNCTION_64_8()
{
  *(v5 + 16) = v0;
  v6 = v5 + 16 * v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v4;
  v7 = 1 << *(v3 + 32);
}

uint64_t OUTLINED_FUNCTION_87_0()
{
  result = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_227D49478();
}

void OUTLINED_FUNCTION_38_2()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return 0;
}

void OUTLINED_FUNCTION_172()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
}

void OUTLINED_FUNCTION_38_8()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = *(v4 - 240);
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_38_9()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v9 = v0[9];
  v8 = v0[10];
  v10 = *(v0[24] + 8);
  return v0[25];
}

void OUTLINED_FUNCTION_38_11()
{
  v1 = v0[20];
  v4 = v0[19];
  v5 = v0[22];
  v2 = v0[14];
  v3 = v0[18];
}

uint64_t OUTLINED_FUNCTION_38_13()
{
  result = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  return result;
}

void OUTLINED_FUNCTION_7_4()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = *(v0 + 128);

  sub_227B29AF0();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_227D49478();
}

size_t OUTLINED_FUNCTION_7_15()
{
  v2 = *(v0 + 16) + 1;

  return sub_227B3A224(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_379()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  v1 = *(v0 + 4712);
  v2 = *(v0 + 4664);
  sub_227B1AC90(0);
  sub_227B1AC90(0);
}

uint64_t OUTLINED_FUNCTION_7_20()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  result = v0[12];
  v10 = v0[13];
  v11 = v0[10];
  v12 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_21()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_7_23(uint64_t result)
{
  *(result + 8) = sub_227CB222C;
  v2 = *(v1 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_24(uint64_t a1)
{
  *(a1 + 8) = sub_227D1E834;
  v2 = v1[32];
  result = v1[29];
  v4 = v1[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_25(uint64_t a1)
{
  *(a1 + 8) = sub_227D28174;
  v3 = *(v1 + 64);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_27()
{
  result = v0[32];
  v2 = v0[30];
  v3 = *(v0[31] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2(unint64_t *a1)
{

  return sub_227B0F660(a1, v1);
}

__n128 OUTLINED_FUNCTION_58_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v10;
  a1[2].n128_u64[1] = v9;
  return result;
}

uint64_t *OUTLINED_FUNCTION_58_6()
{
  *(v0 + 136) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v0 + 112));
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[25];
  v4 = v2[8];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_58_9()
{
  v2 = v0[31];
  result = v0[32];
  v3 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_58_11()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 56);
  return result;
}

uint64_t GameKitService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = sub_227D49458();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[13] = v11;
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[15] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B00, &qword_227D4EE30);
  v1[18] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[19] = v19;
  v21 = *(v20 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[22] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[23] = v23;
  v25 = *(v24 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[25] = v26;
  OUTLINED_FUNCTION_10_0(v26);
  v1[26] = v27;
  v29 = *(v28 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  v30 = sub_227D49D58();
  v1[28] = v30;
  OUTLINED_FUNCTION_10_0(v30);
  v1[29] = v31;
  v33 = *(v32 + 64);
  v1[30] = OUTLINED_FUNCTION_30();
  v34 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

void OUTLINED_FUNCTION_85_0()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[7];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_227B11EE8(v0 + 16, v0 + 56);
}

uint64_t OUTLINED_FUNCTION_104_5()
{

  return sub_227CC1DD0();
}

uint64_t OUTLINED_FUNCTION_104_7()
{
  v1 = v0[13];
  v2 = v0[14];
  result = v0[12];
  v4 = v0[10];
  v5 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_104_8()
{
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
}

uint64_t OUTLINED_FUNCTION_104_9()
{

  return sub_227D4DA78();
}

uint64_t sub_227B14EF4()
{
  OUTLINED_FUNCTION_28_1();
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[30];
    v3 = v0[27];
    v5 = v0[23];
    v4 = v0[24];
    v6 = v0[22];
    v7 = v0[5];
    OUTLINED_FUNCTION_36(v0[9]);
    v8 = OUTLINED_FUNCTION_9_1();
    v9(v8);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v10);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1();
    v12 = v0[30];
    if (v2)
    {
      v13 = v0[28];
      v14 = v0[29];
      (*(v0[26] + 8))(v0[27], v0[25]);
      v15 = OUTLINED_FUNCTION_17_0();
      v16(v15);
      v32 = v0[30];
      v33 = v0[27];
      v34 = v0[24];
      OUTLINED_FUNCTION_114_0();

      OUTLINED_FUNCTION_19_0();

      return v35();
    }

    else
    {
      v26 = v0[21];
      v0[2] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B08, &qword_227D4EE40);
      sub_227D49478();
      sub_227B43CD4();
      sub_227B43D58();
      OUTLINED_FUNCTION_113_0();
      v27 = v0[30];
      v28 = v0[20];
      v0[3] = v0[7];
      sub_227D4CE58();
      sub_227D49478();
      OUTLINED_FUNCTION_113_0();
      v29 = v0[17];
      v30 = v0[13];
      sub_227B15F50(v0[8], v0[14], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v31 = v0[30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0();
      v36 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
      OUTLINED_FUNCTION_55_2(&qword_280E7B820);
      OUTLINED_FUNCTION_54_2(&qword_280E7B828);
      OUTLINED_FUNCTION_17();
      v38 = v0[30];
      sub_227D49D08();
      v39 = v0[12];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = *(MEMORY[0x277D0CE28] + 4);
      v41 = swift_task_alloc();
      v0[31] = v41;
      type metadata accessor for GameKitService();
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v42, v43);
      OUTLINED_FUNCTION_48_0();
      *v41 = v44;
      v41[1] = sub_227B1E890;
      v45 = v0[30];
      v46 = v0[12];
      v47 = v0[9];
      v48 = v0[4];
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B00]();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[33] = v17;
    *v17 = v18;
    v17[1] = sub_227B1E11C;
    v19 = v0[8];
    v20 = v0[9];
    v21 = v0[6];
    v22 = v0[7];
    v23 = v0[4];
    v24 = v0[5];

    return sub_227B16DD4(v23, v24, v21, v22, v19);
  }
}

void OUTLINED_FUNCTION_25_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

char *OUTLINED_FUNCTION_25_3@<X0>(unint64_t a1@<X8>)
{

  return sub_227B25F88((a1 > 1), v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_110_0()
{
  result = v0[14];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8()
{
  v2 = *(v0 - 104);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_105_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_4()
{
  v2 = v0[697];
  v3 = v0[667];
  v4 = v0[661];
  v5 = v0[655];
}

uint64_t OUTLINED_FUNCTION_105_5()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_105_9()
{
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v9 = v0 + 6;
  v7 = v0[6];
  v8 = v9[1];
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  v1 = v0[31];
  v2 = v0[30];
  v16 = v0[32];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[23];
  v14 = v0[24];
  v15 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  result = v0[12];
  v12 = v0[10];
  v13 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_6()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[18];
  result = v0[19];
  v6 = v0[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_40_10@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + v1) + 448;

  return sub_227C5FB5C(v4, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_14_6()
{
  *(v0 + 8) = sub_227B33794;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return v1 + 12;
}

void OUTLINED_FUNCTION_14_14()
{
  v6 = *(v0 + 272);
  *(v3 + 16) = v2;
  v7 = v3 + 16 * v1;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
}

void OUTLINED_FUNCTION_14_15()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_14_17()
{

  return sub_227D4DBF8();
}

uint64_t sub_227B15A74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227B15ABC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  result = v0[7];
  v8 = v0[5];
  v9 = *(v0[6] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_1()
{
  v1 = v0[16];
  v2 = v0[17];
  result = v0[15];
  v4 = v0[13];
  v5 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_77_6()
{
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
}

uint64_t OUTLINED_FUNCTION_77_7()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[21];
  v6 = *(v0[37] + 96);
  return v0[38];
}

uint64_t OUTLINED_FUNCTION_77_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[5];
  v8 = v2[6];
  return v2[4];
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return sub_227D49D28();
}

uint64_t OUTLINED_FUNCTION_83_4()
{
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];
}

unint64_t sub_227B15CD0()
{
  result = qword_280E7B7F0;
  if (!qword_280E7B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B10, &qword_227D4EE48);
    sub_227B0F660(&qword_280E7B840, MEMORY[0x277D0CAA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7F0);
  }

  return result;
}

unint64_t sub_227B15D84()
{
  result = qword_280E7B7F8;
  if (!qword_280E7B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B10, &qword_227D4EE48);
    sub_227B0F660(qword_280E7B848, MEMORY[0x277D0CAA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_103_1()
{
  v1 = v0[21];
  result = v0[19];
  v3 = v0[17];
  v4 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_2()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  v2 = *(v0 + 64) + 16;

  return sub_227C19454(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_103_7()
{
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
}

uint64_t sub_227B15F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_227B15FB0()
{
  result = qword_280E7B800;
  if (!qword_280E7B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6908, &unk_227D4E690);
    sub_227B0F660(&qword_280E7B810, MEMORY[0x277D0D538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B800);
  }

  return result;
}

unint64_t sub_227B16064()
{
  result = qword_280E7B808;
  if (!qword_280E7B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6908, &unk_227D4E690);
    sub_227B0F660(&qword_280E7B818, MEMORY[0x277D0D538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B808);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_88_0()
{
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
}

uint64_t OUTLINED_FUNCTION_88_2()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
}

uint64_t OUTLINED_FUNCTION_88_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(a11 + 56) + 40 * v12);
  __swift_destroy_boxed_opaque_existential_0(v13);

  return sub_227B132F0((v11 + 56), v13);
}

void *OUTLINED_FUNCTION_88_5(void *a1)
{

  return memcpy(a1, (v1 + 2400), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_88_6()
{
  result = v0[41];
  v2 = v0[38];
  v3 = v0[35];
  return result;
}

void OUTLINED_FUNCTION_48_1()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  result = v0[18];
  v7 = v0[16];
  v8 = *(v0[17] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[3];
  v5 = *(v0[9] + 16);
  return v0[10];
}

uint64_t OUTLINED_FUNCTION_68_1()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  result = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  v8 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_4()
{
  v2 = *(v0 - 120);

  return sub_227D48F28();
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
}

void OUTLINED_FUNCTION_68_6()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[15];
  v7 = v0[16];
}

uint64_t OUTLINED_FUNCTION_68_10()
{
  v4 = v1[6];
  result = v1[7];
  v5 = v1[5];
  v6 = *(v4 + 16);
  v7 = *(v0 + 56) + *(v4 + 72) * v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  result = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[126];
  v9 = v0[125];
  v10 = v0[124];
  v11 = v0[123];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v5 = v0[28];
  v6 = v0[27];
  v7 = v0[26];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[21];
  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v3 = v0[9];
  *(v1 - 96) = v0[10];
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_227D4D9C8();
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

void OUTLINED_FUNCTION_3_21()
{
  v2 = v0[78];
  *(v1 - 144) = v0[81];
  *(v1 - 136) = v2;
  v3 = v0[76];
  *(v1 - 128) = v0[77];
  *(v1 - 120) = v3;
  *(v1 - 112) = v0[75];
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_25()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_26@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = v2;
  v4 = *(a1 + 32);
  return v1 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v3;
}

double OUTLINED_FUNCTION_3_29(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 184);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 8222587;
  *(v2 + 40) = 0xE300000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  result = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_89_1()
{
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
}

unint64_t OUTLINED_FUNCTION_89_4()
{

  return sub_227B2664C(v1, v0);
}

uint64_t sub_227B168BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v12 = *v11;
  v13 = a2[2];
  v2[8] = v13;
  v14 = *(v13 - 8);
  v2[9] = v14;
  v15 = *(v14 + 64) + 15;
  v21 = swift_task_alloc();
  v2[10] = v21;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v20 = *v21;
  v16 = a2[3];
  v2[11] = v16;
  v17 = *(v16 - 8);
  v2[12] = v17;
  v18 = *(v17 + 64) + 15;
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v19 = swift_task_alloc();
  v2[14] = v19;
  *v19 = v2;
  v19[1] = sub_227B1E418;

  return GameKitService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_227B16DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_194()
{
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return sub_227D49D98();
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_76_8()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v11 = v0[36];
}

uint64_t OUTLINED_FUNCTION_91()
{
  result = v0[10];
  v2 = v0[8];
  v3 = *(v0[9] + 8);
  return result;
}

void OUTLINED_FUNCTION_149_2()
{
  v1 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[46];
  v7 = v0[47];
}

void *OUTLINED_FUNCTION_149_3@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;

  return memcpy(a4 + 2, __src, 0xB8uLL);
}

void OUTLINED_FUNCTION_24_1()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[6];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_227D4DB58();
}

char *OUTLINED_FUNCTION_24_3()
{
  v2 = *(v0 + 16) + 1;

  return sub_227B25F88(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_227D4D7F8();
}

double OUTLINED_FUNCTION_24_6()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_156()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  result = v0[9];
  v10 = v0[10];
  v11 = v0[7];
  v12 = *(v0[8] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_12()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[18];
  v9 = *(v0[34] + 8);
  return v0[35];
}

uint64_t OUTLINED_FUNCTION_65_3()
{
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_227D48D98();
}

uint64_t OUTLINED_FUNCTION_65_8()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{

  return MEMORY[0x28211EE68](a1, 0);
}

uint64_t OUTLINED_FUNCTION_65_12@<X0>(uint64_t a1@<X8>)
{

  return sub_227B11EE8(a1 + 608, v1 + 16);
}

uint64_t *sub_227B17260()
{
  if (qword_280E7C640[0] != -1)
  {
    swift_once();
  }

  return &qword_280E7D400;
}

void sub_227B172B0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B8, &qword_227D5CC20);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_442_0();
  v9 = OUTLINED_FUNCTION_62_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = type metadata accessor for GameActivityInstanceStoreRegistry.GameActivityStoreKey(0);
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_226();
  sub_227C4BC80();
  if (v49)
  {
    sub_227B132F0(&v48, v50);
    v17 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_93_0();
    v20(v19);
    v21 = *(v8 + 28);
    v22 = sub_227D49328();
    OUTLINED_FUNCTION_62_0(v22);
    v24 = *(v23 + 16);
    v25 = OUTLINED_FUNCTION_305();
    v24(v25);
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_120();
    swift_beginAccess();
    v26 = *(v2 + 120);
    sub_227D4CE58();
    OUTLINED_FUNCTION_189_3();
    v27 = OUTLINED_FUNCTION_196_3();
    v29 = sub_227B17D84(v27, v28);

    if (v29)
    {
      sub_227B179FC();
    }

    else
    {
      type metadata accessor for GameActivityInstanceStore();
      v34 = OUTLINED_FUNCTION_323();
      v24(v34);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v22);
      sub_227C19454(v50, &v48);
      OUTLINED_FUNCTION_431_0();
      sub_227C278F8();
      if (v1)
      {

        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      OUTLINED_FUNCTION_189_3();
      v41 = OUTLINED_FUNCTION_341();
      sub_227B18028(v41, v42);
      OUTLINED_FUNCTION_397_0();
      if (v39)
      {

        v43 = *(v2 + 120);
        swift_isUniquelyReferenced_nonNull_native();
        v47 = *(v2 + 120);
        v44 = OUTLINED_FUNCTION_236();
        sub_227C44ED0(v44, v45);
        *(v2 + 120) = v47;
      }

      else
      {
        sub_227C44B64();
      }

      sub_227B179FC();
      swift_endAccess();
      OUTLINED_FUNCTION_193();
      sub_227B179FC();
      if (!v39)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_12_9();
    sub_227B180A0(v46);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v50);
    goto LABEL_16;
  }

  sub_227C1CB1C(&v48, &unk_27D7E92C0);
  type metadata accessor for GameActivityInstanceStore();
  sub_227D49328();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_276_0();
  sub_227C278F8();
  if (v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
    sub_227B180A0(v40);
  }

LABEL_16:
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_84(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_220(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_220_0()
{
  v3 = *(v0 - 248);
  v2 = *(v0 - 240);
  v4 = *(v0 - 72);
  v5 = *(v0 - 144);

  return sub_227D4A3D8();
}

uint64_t OUTLINED_FUNCTION_220_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_227B17738()
{
  OUTLINED_FUNCTION_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_62_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_58();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_301_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 120) = 0xD000000000000017;
  *(v2 - 112) = a1;

  return sub_227D49E08();
}

uint64_t OUTLINED_FUNCTION_28_3()
{
  result = v0[34];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[12];
  v12 = v0[13];
  return result;
}

void OUTLINED_FUNCTION_28_5()
{
  v1 = v0[26];
  v2 = v0[25];
  v11 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return MEMORY[0x28211E850](v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_28_11(float a1)
{
  *v1 = a1;

  return sub_227D4A5E8();
}

uint64_t OUTLINED_FUNCTION_28_14(uint64_t a1)
{
  *(a1 + 8) = sub_227D1D624;
  v2 = v1[11];
  result = v1[8];
  v4 = v1[9];
  return result;
}

void OUTLINED_FUNCTION_28_15(uint64_t a1@<X8>)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[7];
  v5 = v1[4];
  v6 = *(a1 + 8);
}

uint64_t OUTLINED_FUNCTION_253_0()
{
  v2 = *(v0 - 128);

  return sub_227D48FE8();
}

uint64_t sub_227B179AC()
{
  v1 = OUTLINED_FUNCTION_419();
  v3 = v2(v1);
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_227B179FC()
{
  v1 = OUTLINED_FUNCTION_419();
  v3 = v2(v1);
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_227B17A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_227B17AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;

  return sub_227D49458();
}

uint64_t OUTLINED_FUNCTION_197@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
}

uint64_t OUTLINED_FUNCTION_238_0()
{
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[33];
  v9 = v0[32];
  v11 = v0[34];
}

uint64_t OUTLINED_FUNCTION_156_0()
{
  v2 = *(v0 + 40);

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_156_2()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_156_4()
{
  result = v0[15];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_156_5()
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_156_6(uint64_t a1)
{
  *(v1 + 168) = a1;

  return type metadata accessor for GameKitService();
}

uint64_t OUTLINED_FUNCTION_392_1()
{
  v2 = *(v0 + 64);
}

void sub_227B17CD8()
{
  OUTLINED_FUNCTION_242();
  v1 = *(v0 + 40);
  sub_227D4DB58();
  sub_227D49328();
  OUTLINED_FUNCTION_42_4();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_187_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  sub_227D4CEA8();
  sub_227D4DB98();
  OUTLINED_FUNCTION_416_0();
  OUTLINED_FUNCTION_296_0();
  sub_227B17ECC();
}

uint64_t sub_227B17D84(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227B17CD8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t OUTLINED_FUNCTION_313()
{
  v2 = v0[58];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];
  v8 = v0[46];
}

unint64_t sub_227B17E0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_179_0()
{
  *(v1 + 12) = 2048;
  *(v1 + 14) = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_179_3@<X0>(unsigned int *a1@<X8>)
{
  v3 = *(v2 - 280);
  v4 = *(v2 - 272);
  v5 = *a1;
  v6 = *(*(v2 - 264) + 104);
  result = v1;
  v8 = *(v2 - 256);
  return result;
}

void sub_227B17ECC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v5 = v4(0);
  OUTLINED_FUNCTION_10_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104();
  v11 = ~(-1 << *(v0 + 32));
  for (i = v3 & v11; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v11)
  {
    sub_227B18028(*(v0 + 48) + *(v7 + 72) * i, v1);
    v13 = OUTLINED_FUNCTION_165_3();
    v14 = MEMORY[0x22AAA2030](v13);
    sub_227B179FC();
    if (v14)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227B18028(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_342();
  v5 = v4(v3);
  OUTLINED_FUNCTION_62_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_58();
  v9(v8);
  return a2;
}

unint64_t sub_227B180A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4(v3);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_66_3()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  result = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = v2;
}

uint64_t OUTLINED_FUNCTION_66_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 17);
}

void OUTLINED_FUNCTION_66_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11[21];
  v12 = v11[22];
  v14 = v11[20];
  v15 = v11[17];
  v16 = v11[13];
  v17 = v11[14];
  v18 = v11[12];
  v19 = *(a11 + 120);
}

unint64_t OUTLINED_FUNCTION_66_9(uint64_t a1)
{

  return sub_227D17298(a1);
}

BOOL OUTLINED_FUNCTION_107()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[4];
  v6 = v2[5];
  return v2[3];
}

uint64_t OUTLINED_FUNCTION_107_1()
{
  *(v1 + 8) = v0;
  v3 = v2[13];
  v4 = v2[7];
  return v2[4];
}

uint64_t OUTLINED_FUNCTION_107_4()
{

  return sub_227D4D7C8();
}

uint64_t OUTLINED_FUNCTION_107_6()
{
  v2 = v0[16];
  v3 = v0;
  v4 = v0[14];
  v6 = v3[10];
  v5 = v3[11];
  v8 = v3[6];
  v7 = v3[7];
}

void OUTLINED_FUNCTION_106_0(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;

  sub_227B63A14(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return sub_227D4CC68();
}

uint64_t OUTLINED_FUNCTION_106_3()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
}

uint64_t OUTLINED_FUNCTION_106_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 80);
  return v1;
}

uint64_t OUTLINED_FUNCTION_106_8()
{
  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  return sub_227D4A958();
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v1 = v0[29];
  v2 = v0[28];
  v14 = v0[30];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  result = v0[12];
  v12 = v0[10];
  v13 = *(v0[11] + 8);
  return result;
}

void OUTLINED_FUNCTION_47_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_47_2()
{
  result = v0[8];
  v2 = v0[6];
  v3 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_6()
{
  v2 = v0[228];
  v3 = v0[227];
  v4 = v0[226];
  v5 = v0[225];
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
}

char *OUTLINED_FUNCTION_47_9@<X0>(unint64_t a1@<X8>)
{

  return sub_227B3CA88((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_47_10()
{
  result = v0[39];
  v2 = v0[36];
  v3 = *(v0[37] + 8);
  return result;
}

void OUTLINED_FUNCTION_47_11()
{
  v1 = v0[30];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
}

uint64_t OUTLINED_FUNCTION_47_12()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_96_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_96_7()
{

  return sub_227D4DA78();
}

void OUTLINED_FUNCTION_96_8()
{
  v1 = v0[41];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[10];
  v6 = v0[5];
}

uint64_t sub_227B18738(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_414_0();
  OUTLINED_FUNCTION_224();
  sub_227B180A0(v3);
  v4 = OUTLINED_FUNCTION_416_0();

  return MEMORY[0x28212C8C8](v4);
}

uint64_t OUTLINED_FUNCTION_234_1()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
}

uint64_t sub_227B1886C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_119_0()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = *(v0[14] + 8);
  return v0[16];
}

void sub_227B189A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v24;
  a20 = v25;
  v26 = v21;
  v28 = v27;
  v30 = v29;
  v204 = v31;
  v32 = sub_227D498E8();
  v198 = OUTLINED_FUNCTION_9(v32);
  v199 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_5_3();
  v200 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_0();
  v194 = v41;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  OUTLINED_FUNCTION_9(v197);
  v193 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_0();
  v196 = v46;
  OUTLINED_FUNCTION_191_2();
  v208 = sub_227D49658();
  v47 = OUTLINED_FUNCTION_9(v208);
  v192 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_3();
  v207 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  v211 = OUTLINED_FUNCTION_9(v52);
  v212 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_2_3();
  v206 = v56;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_266();
  v205 = v58;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_266();
  v210 = v60;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_266();
  v209 = v63;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_266();
  v213 = v65;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_314();
  v69 = v68;
  v70 = OUTLINED_FUNCTION_141();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
  OUTLINED_FUNCTION_5(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_105_1();
  v195 = v20;
  sub_227B1980C();
  v215 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_251_0();
  sub_227C4BC80();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_318(v23, 1, v76);
  if (v77)
  {
    sub_227C1CB1C(v23, &qword_27D7E6CC8);
    v78 = v211;
    goto LABEL_8;
  }

  v79 = sub_227D4A6A8();
  if (!v21)
  {
    v85 = v79;
    v86 = v80;
    v204 = v30;
    v87 = v28;
    OUTLINED_FUNCTION_14_0(v76);
    v89 = *(v88 + 8);
    v90 = OUTLINED_FUNCTION_148();
    v92 = v91(v90);
    MEMORY[0x28223BE20](v92);
    *(&v188 - 2) = v85;
    *(&v188 - 1) = v86;
    v214 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
    OUTLINED_FUNCTION_395();
    sub_227D49378();

    OUTLINED_FUNCTION_100_3();
    sub_227B1BEF0();
    v94 = v93;
    v96 = *(v93 + 16);
    v95 = *(v93 + 24);
    v78 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      *(v94 + 16) = v78;
      v78 = v211;
      (*(v212 + 32))(v94 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v96, v69, v211);
      v215 = v94;
      v28 = v87;
      v30 = v204;
LABEL_8:
      v95 = &a16;
      v191 = v22;
      if (v30)
      {
        v97 = *(v30 + 2);
        if (v97)
        {
          v189 = v28;
          v201 = v26;
          v214 = MEMORY[0x277D84F90];
          sub_227B1C38C();
          v98 = v214;
          v100 = v192 + 16;
          v99 = *(v192 + 16);
          v101 = *(v192 + 80);
          OUTLINED_FUNCTION_19();
          v103 = &v30[v102];
          v203 = *(v100 + 56);
          v204 = v104;
          v202 = v212 + 32;
          v22 = v190;
          do
          {
            (v204)(v207, v103, v208);
            sub_227B1C430();
            v105 = *(v100 - 8);
            v106 = OUTLINED_FUNCTION_299_0();
            v107(v106);
            v214 = v98;
            v109 = *(v98 + 16);
            v108 = *(v98 + 24);
            v69 = v109 + 1;
            if (v109 >= v108 >> 1)
            {
              OUTLINED_FUNCTION_12(v108);
              sub_227B1C38C();
              v98 = v214;
            }

            *(v98 + 16) = v69;
            OUTLINED_FUNCTION_104_2();
            (*(v111 + 32))(v98 + v110 + *(v111 + 72) * v109, v22);
            v103 += v203;
            --v97;
          }

          while (v97);
          v26 = v201;
          v28 = v189;
        }

        sub_227B1D528();
        v78 = v211;
      }

      v112 = v213;
      if (v28)
      {
        v69 = *(v28 + 16);
        v87 = v215;
        if (v69)
        {
          OUTLINED_FUNCTION_104_2();
          v114 = v28 + v113;
          v207 = *(v115 + 72);
          v208 = (v212 + 32);
          do
          {
            sub_227B1C430();
            MEMORY[0x28223BE20](v116);
            *(&v188 - 2) = v112;
            v214 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
            OUTLINED_FUNCTION_395();
            sub_227D49378();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = *(v87 + 16);
              OUTLINED_FUNCTION_21();
              sub_227B1BEF0();
              v87 = v127;
            }

            v118 = *(v87 + 16);
            v117 = *(v87 + 24);
            if (v118 >= v117 >> 1)
            {
              OUTLINED_FUNCTION_12(v117);
              sub_227B1BEF0();
              v87 = v128;
            }

            *(v87 + 16) = v118 + 1;
            v119 = v212;
            v120 = *(v212 + 80);
            OUTLINED_FUNCTION_19();
            v122 = v87 + v121 + *(v119 + 72) * v118;
            v22 = v209;
            (*(v119 + 32))(v122, v209, v78);
            v123 = *(v119 + 8);
            v112 = v213;
            v124 = OUTLINED_FUNCTION_236();
            v125(v124);
            v95 = v207;
            v114 += v207;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v87 = v215;
      }

      v96 = *(v87 + 16);
      if (v96)
      {
        v201 = v26;
        v130 = v212 + 16;
        v129 = *(v212 + 16);
        v131 = *(v212 + 80);
        OUTLINED_FUNCTION_19();
        v133 = (v87 + v132);
        v209 = v134;
        v134(v210, (v87 + v132), v78);
        v135 = *(v130 + 56);
        v203 = v87;
        v204 = v135;
        v212 = v130;
        v207 = v130 - 8;
        v208 = (v130 + 16);
        sub_227D4CE58();
        v213 = v96 - 1;
        v136 = v211;
        while (1)
        {
          v137 = v205;
          v138 = v133;
          v139 = v209(v205, v133, v136);
          MEMORY[0x28223BE20](v139);
          *(&v188 - 2) = v210;
          *(&v188 - 1) = v137;
          v214 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
          OUTLINED_FUNCTION_395();
          sub_227D49378();
          v140 = *v207;
          (*v207)(v137, v136);
          v141 = OUTLINED_FUNCTION_324();
          v140(v141);
          v142 = v140;
          v143 = *v208;
          v144 = OUTLINED_FUNCTION_201();
          v143(v144);
          if (!v213)
          {
            break;
          }

          --v213;
          v133 = &v204[v138];
        }

        v145 = v191;
        v146 = v211;
        (v143)(v191, v210, v211);
        v147 = v194;
        OUTLINED_FUNCTION_71_0();
        __swift_storeEnumTagSinglePayload(v148, v149, v150, v146);
        OUTLINED_FUNCTION_0_41();
        sub_227B17E0C(v151);
        v152 = v196;
        sub_227D4CBF8();
        v209(v147, v145, v146);
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v153, v154, v155, v146);
        v156 = v197;
        sub_227D4CBE8();
        type metadata accessor for GameActivityInstanceStore();
        OUTLINED_FUNCTION_12_9();
        sub_227B180A0(v157);
        OUTLINED_FUNCTION_78_0();
        sub_227D4CAF8();
        OUTLINED_FUNCTION_353_0();
        v158 = v201;
        v159 = sub_227D4CB38();
        v26 = v158;
        if (v158)
        {

          OUTLINED_FUNCTION_163_1(&a18);
          v160(v152, v156);
          v142(v145, v146);

          goto LABEL_32;
        }

        v161 = v159;

        v162 = sub_227B4BF3C(v161);
        if (!v162)
        {

          OUTLINED_FUNCTION_163_1(&a18);
          v181 = OUTLINED_FUNCTION_478();
          v182(v181);
          v142(v145, v211);

          goto LABEL_32;
        }

        v163 = v162;
        v213 = v161;
        v201 = 0;
        v214 = MEMORY[0x277D84F90];
        sub_227C43000();
        v164 = v163;
        v87 = v203;
        if (v164 < 0)
        {
          __break(1u);
          return;
        }

        v69 = v164;
        v165 = 0;
        v166 = v213;
        v96 = v214;
        v22 = v213 & 0xC000000000000001;
        v95 = v199 + 32;
        v212 = v199 + 32;
        while (1)
        {
          v78 = v165 + 1;
          if (__OFADD__(v165, 1))
          {
            break;
          }

          sub_227C109CC(v165, v22 == 0, v166);
          v167 = v201;
          if (v22)
          {
            v168 = OUTLINED_FUNCTION_336();
            v169 = MEMORY[0x22AAA63D0](v168);
          }

          else
          {
            v169 = OUTLINED_FUNCTION_383(v166 + 8 * v165);
          }

          sub_227C2B1E0(v169, v170, v171, v172, v173, v174, v175, v176, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
          if (v167)
          {

            OUTLINED_FUNCTION_163_1(&a18);
            v183(v196, v197);
            v184 = OUTLINED_FUNCTION_409_0();
            (v142)(v184);

            goto LABEL_32;
          }

          v201 = 0;

          v214 = v96;
          v178 = *(v96 + 16);
          v177 = *(v96 + 24);
          v26 = v178 + 1;
          if (v178 >= v177 >> 1)
          {
            OUTLINED_FUNCTION_12(v177);
            sub_227C43000();
            v96 = v214;
          }

          *(v96 + 16) = v26;
          OUTLINED_FUNCTION_104_2();
          (*(v180 + 32))(v96 + v179 + *(v180 + 72) * v178);
          ++v165;
          v87 = v203;
          v166 = v213;
          if (v78 == v69)
          {

            OUTLINED_FUNCTION_163_1(&a18);
            v185(v196, v197);
            v186 = OUTLINED_FUNCTION_409_0();
            (v142)(v186);

            goto LABEL_32;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_12(v95);
      sub_227B1BEF0();
      v94 = v187;
    }
  }

  OUTLINED_FUNCTION_14_0(v76);
  v82 = *(v81 + 8);
  v83 = OUTLINED_FUNCTION_148();
  v84(v83);
LABEL_32:
  OUTLINED_FUNCTION_352();
}

unint64_t OUTLINED_FUNCTION_329(uint64_t a1)
{

  return sub_227C164D0(a1);
}

void OUTLINED_FUNCTION_247_0(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_247_1()
{
  *(*(v2 + 56) + 8 * v3) = v1;
  result = v0;
  v6 = *(v4 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  result = v0[9];
  v2 = v0[7];
  v3 = *(v0[8] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_134_4()
{
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
}

char *OUTLINED_FUNCTION_134_5(uint64_t a1, int64_t a2)
{

  return sub_227B3CA88(0, a2, 0);
}

void sub_227B1980C()
{
  OUTLINED_FUNCTION_11();
  v3 = sub_227D4CAB8();
  v4 = OUTLINED_FUNCTION_9(v3);
  v148 = v5;
  v149 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  v135 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_266();
  v140 = v10;
  OUTLINED_FUNCTION_6_0();
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_119_3(v12, v13, v14, v15, v16, v17, v18, v19, v133[0]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_117_2(v24);
  v25 = sub_227D49358();
  v26 = OUTLINED_FUNCTION_9(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_75_2();
  v144 = sub_227D492A8();
  v35 = OUTLINED_FUNCTION_9(v144);
  v139 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  v138 = v39;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_266();
  v137 = v41;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_266();
  v136 = v43;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_266();
  v143 = v45;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_65_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_226();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F8, &qword_227D5DF00);
  OUTLINED_FUNCTION_5(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_68_3();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9300, &qword_227D5DF08);
  OUTLINED_FUNCTION_5(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_105_1();
  v56 = sub_227D48E98();
  v57 = OUTLINED_FUNCTION_9(v56);
  v146 = v58;
  v147 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v61);
  sub_227D4CAF8();
  sub_227D4CB78();

  v62 = sub_227D4CB88();
  OUTLINED_FUNCTION_166_2(v62);
  swift_allocObject();
  OUTLINED_FUNCTION_353_0();
  v63 = sub_227D4CB98();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v25);
  sub_227D49368();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  sub_227D48E88();
  sub_227D49348();
  v145 = v0;
  sub_227D49338();
  v71 = *(v28 + 8);
  v72 = OUTLINED_FUNCTION_226_0();
  v73 = v144;
  v74(v72);
  OUTLINED_FUNCTION_318(v2, 1, v144);
  if (v75)
  {
    sub_227C1CB1C(v2, &qword_27D7E6D08);
    v76 = sub_227B1AF8C();
    v78 = v148;
    v77 = v149;
    v79 = v140;
    (*(v148 + 16))(v140, v76, v149);
    v80 = sub_227D4CA98();
    v81 = sub_227D4D438();
    if (os_log_type_enabled(v80, v81))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_218_1();
      _os_log_impl(v82, v83, v84, v85, v86, 2u);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    (*(v78 + 8))(v79, v77);
    v87 = OUTLINED_FUNCTION_321_0();
    v88(v87);
  }

  else
  {
    v140 = v63;
    v90 = v148;
    v89 = v149;
    v91 = v139;
    v92 = *(v139 + 32);
    v93 = OUTLINED_FUNCTION_243();
    v94(v93);
    v95 = v142;
    sub_227D49288();
    if (_MergedGlobals_9 != -1)
    {
      swift_once();
    }

    sub_227D4DC38();
    sub_227D49238();
    v96 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
    v133[1] = v133;
    v150[2] = MEMORY[0x28223BE20](v96);
    OUTLINED_FUNCTION_395();
    v97 = v141;
    sub_227D49378();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
    OUTLINED_FUNCTION_0_41();
    sub_227B17E0C(v102);
    OUTLINED_FUNCTION_57_0();
    sub_227D4CB48();
    sub_227C1CB1C(v97, &qword_27D7E92F0);
    v103 = sub_227B1AF8C();
    (*(v90 + 16))(v134, v103, v89);
    v104 = *(v91 + 16);
    OUTLINED_FUNCTION_251_0();
    v104();
    v141 = v1;
    OUTLINED_FUNCTION_193_3();
    v104();
    (v104)(v138, v95, v73);
    v105 = sub_227D4CA98();
    v106 = v73;
    v107 = sub_227D4D418();
    if (os_log_type_enabled(v105, v107))
    {
      v108 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v150[0] = v135;
      *v108 = 136315906;
      *(v108 + 4) = OUTLINED_FUNCTION_375_0("GSGameActivityInstanceStore");
      *(v108 + 12) = 2080;
      OUTLINED_FUNCTION_16_9();
      sub_227B17E0C(v109);
      v110 = v136;
      OUTLINED_FUNCTION_341();
      sub_227D4DA38();
      v133[0] = v105;
      v111 = *(v91 + 8);
      v112 = OUTLINED_FUNCTION_269();
      v111(v112);
      v113 = OUTLINED_FUNCTION_278();
      sub_227B1B1A4(v113, v114, v115);
      OUTLINED_FUNCTION_353_0();

      *(v108 + 14) = v110;
      *(v108 + 22) = 2080;
      v116 = v137;
      OUTLINED_FUNCTION_341();
      sub_227D4DA38();
      LODWORD(v139) = v107;
      v117 = OUTLINED_FUNCTION_269();
      v111(v117);
      v118 = OUTLINED_FUNCTION_141();
      sub_227B1B1A4(v118, v119, v120);
      OUTLINED_FUNCTION_353_0();

      *(v108 + 24) = v116;
      *(v108 + 32) = 2080;
      v121 = v138;
      OUTLINED_FUNCTION_341();
      v122 = sub_227D4DA38();
      v124 = v123;
      (v111)(v121, v106);
      sub_227B1B1A4(v122, v124, v150);
      OUTLINED_FUNCTION_308();

      *(v108 + 34) = v122;
      v125 = v133[0];
      _os_log_impl(&dword_227B0D000, v133[0], v139, "%s purged old entries modified before: %s (or %s). Now: %s", v108, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();

      (*(v148 + 8))(v134, v149);
      (v111)(v142, v106);
    }

    else
    {

      v111 = *(v91 + 8);
      (v111)(v138, v106);
      (v111)(v137, v106);
      (v111)(v136, v106);
      v126 = *(v90 + 8);
      v127 = OUTLINED_FUNCTION_246();
      v128(v127);
      v129 = OUTLINED_FUNCTION_269();
      v111(v129);
    }

    v130 = OUTLINED_FUNCTION_321_0();
    v131(v130);
    v132 = OUTLINED_FUNCTION_201();
    v111(v132);
    (v111)(v141, v106);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_175_0(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_175_2()
{

  return sub_227D4DB78();
}

uint64_t OUTLINED_FUNCTION_175_3(uint64_t a1)
{
  *(v1 + 128) = a1;

  return type metadata accessor for GameDebuggerService();
}

uint64_t OUTLINED_FUNCTION_175_5()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  result = v0[13];
  v6 = v0[11];
  v7 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_502()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_312_0()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 + 256));
}

uint64_t OUTLINED_FUNCTION_361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(a1 + 8) = v13;
  result = a13;
  v16 = *(v14 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_361_1()
{
  *(v1 - 72) = v0;

  return sub_227D4A2B8();
}

uint64_t OUTLINED_FUNCTION_316_0()
{
  v2 = v0[58];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];
  v8 = v0[46];
}

uint64_t OUTLINED_FUNCTION_265_0()
{
  v1 = *(v0 - 200);
  v2 = *(*(v0 - 208) + 16);
  return *(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_265_1()
{
}

void OUTLINED_FUNCTION_265_2(uint64_t a1@<X8>)
{
  v2[13] = a1;
  v2[40] = *(v1 + 16);
  v2[41] = 0;
}

uint64_t OUTLINED_FUNCTION_55_2(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  *(v1 + 8) = v0;
  v4 = v2[18];
  result = v2[19];
  v5 = v2[17];
  v6 = v2[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_37_3()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[7];
  v6 = v0[3];
  v7 = *(v0[21] + 16);
  return v0[22];
}

uint64_t OUTLINED_FUNCTION_37_9()
{
  v1 = *(v0 + 360);
  result = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(*(v0 + 176) + 104);
  return result;
}

unint64_t sub_227B1A6E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_356(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_36_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  v2 = MEMORY[0x277D0C568];

  return sub_227B796DC(v0, v2);
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return sub_227D48D78();
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void OUTLINED_FUNCTION_36_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v13[29];
  v14 = v13[30];
  v17 = v13[25];
  v16 = v13[26];
  v18 = v13[24];
  v19 = v13[21];
  v20 = v13[18];
  v22 = v13[17];
  v23 = v13[15];
  v24 = v13[14];
  v25 = v13[11];
  v21 = *(a13 + 120);
}

uint64_t OUTLINED_FUNCTION_2_6()
{
  result = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[126];
  v9 = v0[125];
  v10 = v0[124];
  v11 = v0[123];
  v12 = v0[122];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_7()
{
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[63];
  v9 = v0[62];
  v10 = v0[61];
  v11 = v0[60];
  v12 = v0[59];
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];
  v4 = v0[14];
  v5 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_227D4D938();
}

uint64_t OUTLINED_FUNCTION_2_18()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t result)
{
  *v1 = result;
  *(result + 176) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_28()
{
  v1 = v0[717];
  v2 = v0[716];
  v3 = v0[589];
  v4 = v0[583];
  sub_227B1AC90(&unk_227D5EE88);
  sub_227B1AC90(&unk_227D5EEB0);
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  v3 = *(v0 + 856);
  v4 = *(*(v2 - 104) + 824);
  result = v1;
  v6 = *(*(v2 - 104) + 816);
  v7 = *(*(v2 - 104) + 792);
  v8 = *(*(v2 - 104) + 784);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t result)
{
  v3 = *(v1 + 32);
  v4 = v2 + *(result + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1)
{
  *(a1 + 8) = sub_227CB3D00;
  v3 = *(v1 + 64);
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_36()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

uint64_t sub_227B1AC90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_162_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_137_0()
{

  return sub_227D49478();
}

void OUTLINED_FUNCTION_162_1()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[3];
  v3 = v0[4];
}

void OUTLINED_FUNCTION_162_2()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
}

uint64_t OUTLINED_FUNCTION_259_0()
{
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[14];
}

unint64_t sub_227B1AD64()
{
  result = qword_280E7B7C8;
  if (!qword_280E7B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9320, &qword_227D5DF30);
    sub_227C4A0A0();
    sub_227C1888C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7C8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_382()
{
}

uint64_t OUTLINED_FUNCTION_382_0()
{

  return sub_227D492A8();
}

uint64_t OUTLINED_FUNCTION_447()
{
  v2 = *(v0 - 136);

  return sub_227D48F68();
}

BOOL OUTLINED_FUNCTION_447_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_130_1@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 136);
  return result;
}

char *OUTLINED_FUNCTION_130_5(char *a1)
{

  return sub_227B3CA88(a1, v1, 1);
}

uint64_t sub_227B1AF8C()
{
  if (qword_280E7D0C0 != -1)
  {
    OUTLINED_FUNCTION_0_53();
  }

  v0 = sub_227D4CAB8();

  return __swift_project_value_buffer(v0, qword_280E7D410);
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  result = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  return result;
}

uint64_t OUTLINED_FUNCTION_189_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  result = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  *(v1 + 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_189_5()
{
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v8 = v0[25];
}

void OUTLINED_FUNCTION_215(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_215_3()
{
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_215_4()
{
  v5 = *(v0 + 80);
  *(v3 - 104) = v2;
  *(v3 - 208) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_187()
{
  v2 = v0[138];
  v3 = v0[135];
  v4 = v0[125];

  return sub_227D4AA58();
}

uint64_t OUTLINED_FUNCTION_176()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_187_3()
{

  return sub_227D4DA78();
}

uint64_t sub_227B1B1A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_227D4CE58();
  v6 = sub_227B1B2C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_227B1B268(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_227B1B268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_227B1B2C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_227B29D4C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_227D4D6C8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t OUTLINED_FUNCTION_229_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_229_1(uint64_t a1)
{
  *(v1 + 192) = a1;

  return sub_227D49D58();
}

uint64_t OUTLINED_FUNCTION_276_0()
{
  *(v1 - 96) = 0;
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_232()
{
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(0);

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_232_0()
{
  *(v1 + 8) = v0;
  v3 = v2[14];
  v4 = v2[8];
  v5 = v2[5];
}

BOOL OUTLINED_FUNCTION_126(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_126_3()
{
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];

  return sub_227D49E08();
}

__n128 OUTLINED_FUNCTION_126_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, uint64_t a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_328_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 336) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_236_2()
{
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[18];
  v4 = *(v0[33] + 96);
  return v0[34];
}

uint64_t OUTLINED_FUNCTION_184(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *v12 = a1;

  return sub_227B1B1A4(v14, v13, va);
}

uint64_t OUTLINED_FUNCTION_184_0()
{
}

uint64_t OUTLINED_FUNCTION_184_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_231()
{
  *(v1 + 8) = v0;
  v3 = v2[15];
  v4 = v2[9];
  return v2[6];
}

uint64_t OUTLINED_FUNCTION_184_3()
{
  v2 = v0[32];
  result = v0[33];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_184_4()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_78_1(unint64_t *a1)
{

  return sub_227B3DB5C(a1);
}

unint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

__n128 OUTLINED_FUNCTION_6_4()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 104);
  return result;
}

unint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{

  return sub_227BC4050(a1);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_227D4D938();
}

uint64_t OUTLINED_FUNCTION_6_9(unint64_t *a1)
{

  return sub_227BDE464(a1);
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{
  v2 = MEMORY[0x277D0C4B8];

  return sub_227BE00D4(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_12()
{
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
}

unint64_t OUTLINED_FUNCTION_6_19(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return sub_227D4D938();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];
}

uint64_t OUTLINED_FUNCTION_191()
{
}

uint64_t OUTLINED_FUNCTION_191_1()
{
  v2 = v0[18];
  v0[2] = v0[5];

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return sub_227D49458();
}

void OUTLINED_FUNCTION_191_4()
{
  *(v1 + 8) = v0;
  v3 = v2[27];
  v4 = v2[10];
  v5 = v2[7];
  v6 = v2[3];
}

uint64_t OUTLINED_FUNCTION_191_5()
{
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v10 = v0[23];
  v11 = v0[22];
  v12 = v0[21];
}

void OUTLINED_FUNCTION_209_0()
{
  v3 = v1[87];
  v4 = v1[77];
  v5 = v1[72];
  v6 = v1[71];
}

uint64_t OUTLINED_FUNCTION_209_3()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
}

void OUTLINED_FUNCTION_26_2()
{
  v1 = v0[138];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[125];
  v5 = v0[136];
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_26_10()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v0[5] + 8);
  return v0[6];
}

void OUTLINED_FUNCTION_26_13()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[20];
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2)
{
  v2[33] = a2;
  v3 = v2[30];
  v5 = v2[20];
  result = v2[21];
  v6 = v2[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return sub_227D4DC08();
}

void sub_227B1BD00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_227C30664();
}

uint64_t OUTLINED_FUNCTION_378_0()
{

  return sub_227D49D98();
}

unint64_t sub_227B1BD94()
{
  result = qword_280E7B7A8;
  if (!qword_280E7B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9340, &qword_227D5DF58);
    sub_227C4A15C();
    sub_227C186CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_192_0()
{
}

uint64_t OUTLINED_FUNCTION_192_2(uint64_t a1)
{
  *(v1 + 144) = a1;

  return sub_227D49D58();
}

uint64_t OUTLINED_FUNCTION_192_3()
{
  v2 = *(v0 - 256);

  return sub_227D48F28();
}

void sub_227B1BEF0()
{
  OUTLINED_FUNCTION_189_0();
  if (v4)
  {
    OUTLINED_FUNCTION_154();
    if (v6 != v7)
    {
      if (v5 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v5 = v2;
  }

  sub_227B1BFE4(*(v0 + 16), v5, v3);
  v8 = OUTLINED_FUNCTION_87_1();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) - 8) + 80);
  OUTLINED_FUNCTION_19();
  if (v1)
  {
    sub_227B1D62C();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_227B1BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_397(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v7 = OUTLINED_FUNCTION_87_1();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_10_0(v9);
    v11 = *(v10 + 72);
    OUTLINED_FUNCTION_241_0();
    v12 = swift_allocObject();
    _swift_stdlib_malloc_size(v12);
    if (v11)
    {
      OUTLINED_FUNCTION_187_0();
      v14 = v14 && v11 == -1;
      if (!v14)
      {
        v12[2] = a1;
        v12[3] = 2 * (v13 / v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void OUTLINED_FUNCTION_78_2()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[4];
  v7 = v0[2];
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t result)
{
  *(result + 8) = sub_227B55C3C;
  v2 = *(v1 + 24);
  return result;
}

void OUTLINED_FUNCTION_78_4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
}

void OUTLINED_FUNCTION_78_7()
{
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[27];
  v7 = v1[23];
  v6 = v1[24];
  v8 = v1[22];
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_227D4D5B8();
}

uint64_t OUTLINED_FUNCTION_78_9()
{
  v1 = v0[18];
  v2 = v0[19] + 16;
  return v0[20];
}

uint64_t OUTLINED_FUNCTION_78_10()
{
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[21];
  v6 = *(v0[37] + 96);
  return v0[38];
}

uint64_t OUTLINED_FUNCTION_78_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[26];
  v4 = v2[27];
  v5 = v2[24];
  v6 = v2[25];
  result = v2[22];
  v8 = v2[23];
  return result;
}

void OUTLINED_FUNCTION_223_1()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
}

id OUTLINED_FUNCTION_404()
{
  *(v1 + 22) = 2112;

  return v0;
}

void sub_227B1C228()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_189_0();
  if (v5)
  {
    OUTLINED_FUNCTION_154();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 16);
  if (v6 <= v9)
  {
    v10 = *(v0 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v11 = OUTLINED_FUNCTION_87_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_10_0(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_241_0();
  v16 = OUTLINED_FUNCTION_436_0();
  _swift_stdlib_malloc_size(v16);
  if (!v15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_187_0();
  v18 = v18 && v15 == -1;
  if (v18)
  {
    goto LABEL_22;
  }

  v16[2] = v9;
  v16[3] = 2 * (v17 / v15);
LABEL_17:
  v19 = OUTLINED_FUNCTION_87_1();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v19, v20) - 8) + 80);
  OUTLINED_FUNCTION_19();
  if (v1)
  {
    sub_227B1D62C();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

void sub_227B1C38C()
{
  v1 = *v0;
  sub_227B1C228();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_267_1(unint64_t *a1)
{

  return sub_227B15A74(a1, v2, v1);
}

void sub_227B1C430()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D49B48();
  v1 = OUTLINED_FUNCTION_9(v0);
  v72 = v2;
  v73 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_227D49648();
  v9 = OUTLINED_FUNCTION_9(v8);
  v74 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_104();
  v19 = sub_227D49658();
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v27 = (v26 - v25);
  v28 = *(v22 + 16);
  v29 = OUTLINED_FUNCTION_427_0();
  v30(v29);
  v31 = *(v22 + 88);
  v32 = OUTLINED_FUNCTION_93_0();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x277D0CA90])
  {
    v35 = OUTLINED_FUNCTION_101_3();
    v36(v35);
    v37 = *(v15 + 32);
    v38 = OUTLINED_FUNCTION_149_0();
    v39(v38);
    v40 = sub_227D4A898();
    MEMORY[0x28223BE20](v40);
    OUTLINED_FUNCTION_330();
    *(v48 - 16) = v46;
    *(v48 - 8) = v47;
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_212_2();
    OUTLINED_FUNCTION_445();

    v49 = *(v15 + 8);
    v50 = OUTLINED_FUNCTION_165_3();
    v51(v50);
LABEL_7:
    OUTLINED_FUNCTION_8_1();
    return;
  }

  if (v34 == *MEMORY[0x277D0CA78] || v34 == *MEMORY[0x277D0CAA0])
  {
    v41 = OUTLINED_FUNCTION_101_3();
    v43 = v42(v41);
    v44 = *v27;
    MEMORY[0x28223BE20](v43);
    OUTLINED_FUNCTION_330();
    *(v45 - 16) = v44;
    OUTLINED_FUNCTION_230();
LABEL_6:
    OUTLINED_FUNCTION_445();

    goto LABEL_7;
  }

  if (v34 == *MEMORY[0x277D0CA88])
  {
    v52 = OUTLINED_FUNCTION_101_3();
    v53(v52);
    v54 = *(v74 + 32);
    v55 = OUTLINED_FUNCTION_173();
    v57 = v56(v55);
    MEMORY[0x28223BE20](v57);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_212_2();
    sub_227D49378();
    v58 = *(v74 + 8);
    v59 = OUTLINED_FUNCTION_478();
    v60(v59);
    goto LABEL_7;
  }

  if (v34 == *MEMORY[0x277D0CA80])
  {
    v61 = OUTLINED_FUNCTION_101_3();
    v62(v61);
    v63 = (*(v72 + 32))(v7, v27, v73);
    MEMORY[0x28223BE20](v63);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_212_2();
    sub_227D49378();
    v64 = *(v72 + 8);
    v65 = OUTLINED_FUNCTION_87_1();
    v66(v65);
    goto LABEL_7;
  }

  if (v34 == *MEMORY[0x277D0CA98])
  {
    v67 = OUTLINED_FUNCTION_101_3();
    v69 = v68(v67);
    v70 = *v27;
    v71 = v27[1];
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_230();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_323_0();
  sub_227D4D7F8();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t result)
{
  *(v2 - 424) = result;
  *(v2 - 224) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_6()
{
  v4 = v0[16];
  v5 = v0[15];
  v2 = v0[14];
  v6 = v0[12];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1)
{
  *(a1 + 8) = sub_227CEA978;
  result = *(v1 + 240);
  v3 = *(v1 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9()
{

  return sub_227D4D668();
}

uint64_t OUTLINED_FUNCTION_239()
{

  return sub_227D49498();
}

void OUTLINED_FUNCTION_136_1()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
}

uint64_t OUTLINED_FUNCTION_136_4(unint64_t *a1)
{

  return sub_227B0F8D0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_136_5()
{
}

void sub_227B1CC58()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93E8, &qword_227D5DFC8);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93F0, &qword_227D5DFD0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_72_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_103();
  v23 = *v0;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_222_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_384_0();

  v25 = *(v13 + 8);
  v26 = OUTLINED_FUNCTION_307_0();
  v27(v26);
  sub_227D49648();
  OUTLINED_FUNCTION_253_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_68_4();

  v29 = OUTLINED_FUNCTION_75_3();
  v30(v29);
  *(v38 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93F8, &qword_227D5E008);
  v31 = sub_227C4A790();
  OUTLINED_FUNCTION_421(v31);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v32);
  sub_227B1A6E4(&unk_280E7B740);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v33 = OUTLINED_FUNCTION_74_4();
  v34(v33);
  v35 = *(v19 + 8);
  v36 = OUTLINED_FUNCTION_196_3();
  v37(v36);
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_118(uint64_t result, __n128 a2)
{
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_118_2()
{
  v1 = *(*(v0 - 208) + 8);
  result = *(v0 - 192);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  v1 = *(v0 + 448);
  v2 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  result = v2 + 48;
  v4 = *(v2 + 48);
  return result;
}

void OUTLINED_FUNCTION_84_1()
{
  v4 = v0[35];
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[31];
}

uint64_t OUTLINED_FUNCTION_84_3(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_0(va);
}

uint64_t OUTLINED_FUNCTION_219()
{
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];

  return sub_227B639C0((v0 + 12));
}

uint64_t OUTLINED_FUNCTION_219_2()
{
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[22];
  v13 = v0[21];
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_129_1()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
}

uint64_t OUTLINED_FUNCTION_129_3()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_129_5(uint64_t a1)
{
  *(a1 + 8) = sub_227CD39CC;
  v4 = v1[68];
  v5 = v1[67];
  v6 = v1[66];
  result = v1[55];
  *(v3 + 88) = v2;
  return result;
}

void OUTLINED_FUNCTION_75_0(uint64_t a1@<X8>)
{
  v3[104] = v5;
  v3[103] = v1;
  v3[102] = v4;
  v3[101] = v2;
  v3[100] = v6;
  v3[99] = a1;
  v3[48] = a1;
  v3[49] = v6;
  v3[50] = v2;
  v3[51] = v4;
  v3[52] = v1;
  v3[53] = v5;
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_75_7()
{

  return swift_task_isCurrentExecutor();
}

void OUTLINED_FUNCTION_75_8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[28] + 8;
  v6 = v0[31] + 8;
}

unint64_t sub_227B1D344()
{
  result = qword_280E7B7A0;
  if (!qword_280E7B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9418, &qword_227D5E050);
    sub_227C4A15C();
    sub_227C4A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_120_1()
{
  *(v3 + 16) = v1;
  v6 = *(v5 - 168);
  result = v3 + *(v5 - 176) + v2 * v0;
  v8 = *(v4 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_120_5()
{
  result = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = *(v0[13] + 8);
  return result;
}

void sub_227B1D498()
{
  OUTLINED_FUNCTION_450_0();
  v2 = v1;
  v3 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v3;
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > v2)
    {
      v5 = *(v3 + 16);
    }

    sub_227B1BEF0();
    *v0 = v6;
  }

  OUTLINED_FUNCTION_451_0();
}

void sub_227B1D528()
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_346_0(v3);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_294_0();
  sub_227B1D498();
  v5 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = (*(v5 + 24) >> 1) - *(v5 + 16);
  v7 = OUTLINED_FUNCTION_201();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) - 8);
  if (v6 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 72);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v5;
    OUTLINED_FUNCTION_451_0();
    return;
  }

  v12 = *(v5 + 16);
  v4 = __OFADD__(v12, v0);
  v13 = v12 + v0;
  if (!v4)
  {
    *(v5 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_227B1D62C()
{
  OUTLINED_FUNCTION_294_0();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  if (v5 < v4 || (v6 = OUTLINED_FUNCTION_201(), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7), result = OUTLINED_FUNCTION_62_0(v8), v1 + *(v10 + 72) * v0 <= v3))
  {
    v11 = OUTLINED_FUNCTION_201();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_87_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v1)
  {
    OUTLINED_FUNCTION_87_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_227B1D700()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_385_0(v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v2);
  v43 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9370, &qword_227D5DF80);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9378, &qword_227D5DF88);
  v44 = OUTLINED_FUNCTION_9(v13);
  v45 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_363_0(v18, v19, v20, v21, v22, v23, v24, v25, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_324();
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_377_0();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_612();
  v28 = *(v9 + 8);
  v29 = OUTLINED_FUNCTION_193();
  v28(v29);
  v30 = *(v43 + 8);
  v31 = OUTLINED_FUNCTION_227();
  v30(v31);
  OUTLINED_FUNCTION_394_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_439_0();
  OUTLINED_FUNCTION_612();
  v32 = OUTLINED_FUNCTION_193();
  v28(v32);
  v33 = OUTLINED_FUNCTION_227();
  v30(v33);
  v34 = OUTLINED_FUNCTION_9_2();
  *(v46 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_85_1();
  v37 = sub_227C4AAF4(v36);
  OUTLINED_FUNCTION_449_0(v37);
  OUTLINED_FUNCTION_87();
  sub_227B1A6E4(v38);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_324();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FA8();
  v39 = *(v45 + 8);
  v40 = OUTLINED_FUNCTION_167_2();
  v39(v40);
  v41 = OUTLINED_FUNCTION_127_1();
  v39(v41);
  OUTLINED_FUNCTION_8_1();
}

void sub_227B1DA34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_227B1D700();
}

uint64_t OUTLINED_FUNCTION_97()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
}

uint64_t OUTLINED_FUNCTION_203_1()
{

  return sub_227B179FC();
}

uint64_t OUTLINED_FUNCTION_410()
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_348()
{
  *(v2 - 160) = v0;

  return sub_227C111E4(v1);
}

uint64_t OUTLINED_FUNCTION_226_1()
{

  return sub_227D49D68();
}

uint64_t OUTLINED_FUNCTION_359_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_400()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_275()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 104);

  return sub_227D4A2E8();
}

uint64_t OUTLINED_FUNCTION_169_1(uint64_t a1)
{
  *(v1 + 224) = a1;

  return type metadata accessor for ChallengeService();
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
}

uint64_t OUTLINED_FUNCTION_391_1()
{
  v2 = *(v0 + 80);
}

void OUTLINED_FUNCTION_311()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 144);
  v4 = *(v0 - 128);
  v5 = *(v0 - 120);

  sub_227BEA370();
}

uint64_t OUTLINED_FUNCTION_311_1()
{
}

uint64_t sub_227B1DD70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49B38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_125(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{

  return sub_227B0F6EC(a1);
}

uint64_t OUTLINED_FUNCTION_125_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_125_2()
{
  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
}

void OUTLINED_FUNCTION_125_3()
{
  *(v1 + 16) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_227B1DE58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_227B1DEB0(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B38, &unk_227D4EF40);
  v6 = *(v17 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v16 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_227B63B1C();
    v11 = v21;
    v12 = *(sub_227D498E8() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v12 + 72);
    while (1)
    {
      v18(v13, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_227B63B1C();
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
      v13 += v16[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t OUTLINED_FUNCTION_165_0()
{
}

double OUTLINED_FUNCTION_165_2()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_165_4@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

uint64_t sub_227B1E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_77_0();
  v14 = v12[33];
  v15 = *v13;
  OUTLINED_FUNCTION_5_4();
  *v16 = v15;

  OUTLINED_FUNCTION_81_1();
  v18 = *(v17 + 240);
  v19 = v12[27];
  v20 = v12[24];
  v21 = v12[21];
  v22 = v12[20];
  v23 = v12[17];
  v24 = v12[14];
  v25 = v12[12];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_135_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_70_0()
{
  v3 = v1[136];
  v4 = v1[125];
  v5 = v1[120];
  v6 = v1[119];
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  result = v0[21];
  v2 = v0[17];
  v3 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_70_3()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  result = v0[10];
  v10 = v0[11];
  v11 = v0[8];
  v12 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return sub_227B23878(v1 + 40, v0 + 16);
}

void OUTLINED_FUNCTION_70_8()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
}

uint64_t OUTLINED_FUNCTION_70_9()
{
  v5 = (*(v1 + 48) + 16 * v2);
  v6 = *v5;
  v7 = v5[1];
  *(v0 + 16) = v3;
  v8 = *(v3 + 24);
  v9 = *(v3 + 16) + 1;

  return sub_227D4CE58();
}

uint64_t sub_227B1E418()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 112);
  v27 = *(v0 + 104);
  OUTLINED_FUNCTION_69();
  v26 = *(v2 + 96);
  OUTLINED_FUNCTION_69();
  v4 = *(v3 + 88);
  v25 = *(v5 + 80);
  OUTLINED_FUNCTION_69();
  v24 = *(v6 + 72);
  OUTLINED_FUNCTION_69();
  v8 = *(v7 + 64);
  v23 = *(v9 + 56);
  OUTLINED_FUNCTION_69();
  v22 = *(v10 + 48);
  OUTLINED_FUNCTION_69();
  v12 = *(v11 + 40);
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  OUTLINED_FUNCTION_80_0();
  v18 = v17;
  OUTLINED_FUNCTION_5_4();
  *v19 = v18;

  (*(v15 + 8))(v14, v16);
  (*(v22 + 8))(v23, v12);
  (*(v24 + 8))(v25, v8);
  (*(v26 + 8))(v27, v4);

  OUTLINED_FUNCTION_220_1();

  return v20();
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  v2 = v0[50];
  result = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[40];
  v10 = v0[41];
  v11 = v0[36];
  v12 = v0[37];
  return result;
}

id OUTLINED_FUNCTION_21_3()
{

  return [v2 (v0 + 1048)];
}

uint64_t OUTLINED_FUNCTION_21_5()
{
  v2 = *(v1 - 88);
  v3 = *(*(v1 - 96) + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_21_8()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
}

uint64_t OUTLINED_FUNCTION_199()
{
  v2 = v0[10];
  v1 = v0[11];
  result = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = *(v0[7] + 8);
  return result;
}

void OUTLINED_FUNCTION_199_0()
{
  *(v4 - 176) = *(v3 + 16);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(v4 - 320) = v0;
  v6 = *(v3 + 72);
  v7 = v3 + 16;
  *(v4 - 192) = v7 - 8;
  *(v4 - 184) = v6;
  v8 = *(v4 - 120);
  *(v4 - 144) = v7;
  *(v4 - 168) = v2;
  *(v4 - 200) = v1;
}

uint64_t OUTLINED_FUNCTION_199_2()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 120) + 8);
  return v0;
}

uint64_t sub_227B1E890()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B1E988()
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v1 = v0[29];
  v54 = v0[28];
  v55 = v0[30];
  v2 = v0[26];
  v50 = v0[25];
  v52 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  v10 = OUTLINED_FUNCTION_86_5();
  v11(v10);
  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_113();
  v14(v13);
  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_173();
  v15(v16);
  v17 = (v15)(v3, v6);
  v25 = OUTLINED_FUNCTION_219_3(v17, v18, v19, v20, v21, v22, v23, v24, v48, v50, v52);
  v27 = v26(v25);
  v35 = OUTLINED_FUNCTION_221_2(v27, v28, v29, v30, v31, v32, v33, v34, v49, v51, v53, v54, v55);
  v36(v35);
  v37 = v0[30];
  v38 = v0[27];
  v39 = v0[24];
  v41 = v0[20];
  v40 = v0[21];
  v42 = v0[17];
  v43 = v0[14];
  v44 = v0[12];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_176_1();

  return v45();
}

uint64_t OUTLINED_FUNCTION_82_1()
{
  *(v1 - 80) = v0[62];
  v2 = v0[42];
  v14 = v0[43];
  *(v1 - 88) = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  result = v0[22];
  v12 = v0[20];
  v13 = *(v0[21] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_211()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_82_5()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
}

void OUTLINED_FUNCTION_82_7()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_82_8()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 80);
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_69_6()
{
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
}

uint64_t OUTLINED_FUNCTION_69_7()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[11];
  v12 = v0[10];
}

uint64_t OUTLINED_FUNCTION_69_8(unint64_t *a1)
{

  return sub_227B0F8D0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_69_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_41_1()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  *(v0 + 14) = v3;
  *(v0 + 22) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_59_3(unint64_t *a1)
{

  return sub_227B0F660(a1, v1);
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_227D4CF78();
}

uint64_t OUTLINED_FUNCTION_59_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 48);
}

uint64_t OUTLINED_FUNCTION_59_7()
{
  type metadata accessor for $DistributedIntegrationTestsServiceProtocol(0);

  return sub_227D49D48();
}

void OUTLINED_FUNCTION_59_8()
{
  v2 = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_194_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_227B1B1A4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_194_2()
{

  return sub_227D49378();
}

uint64_t OUTLINED_FUNCTION_174_4()
{

  return sub_227D4DB78();
}

uint64_t OUTLINED_FUNCTION_174_5(uint64_t a1)
{
  *(v1 + 112) = a1;

  return type metadata accessor for GameDebuggerService();
}

uint64_t OUTLINED_FUNCTION_174_6()
{
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
}

uint64_t sub_227B1EF1C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  if (v0[17])
  {

    v10 = v0[21];

    v11 = v0[23];

    v12 = v0[25];

    v13 = v0[27];

    v14 = v0[29];
  }

  v15 = v0[31];

  v16 = v0[32];

  if (v0[34] != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 280, 7);
}

uint64_t sub_227B1EFE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227B1F020()
{
  v1 = sub_227D4A058();
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  v11 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_227B1F0F0()
{
  v1 = v0[2];

  if (v0[4] != 1)
  {
  }

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[13];

  if (v0[15])
  {

    v7 = v0[19];

    v8 = v0[21];

    v9 = v0[23];

    v10 = v0[25];

    v11 = v0[27];
  }

  v12 = v0[29];

  v13 = v0[30];

  v14 = v0[31];

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_227B1F1B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B1F280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F7C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1FBE0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227B1FCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = sub_227D4AC98();
    v11 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_227B1FD44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = sub_227D4AC98();
    v9 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_227B20094()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B200E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227B20120()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_227B20178(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 16);
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

  else
  {
    sub_227D49328();
    v7 = OUTLINED_FUNCTION_36_4(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_227B20208()
{
  OUTLINED_FUNCTION_37();
  if (v3 == 2147483646)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    v4 = v2;
    sub_227D49328();
    v5 = OUTLINED_FUNCTION_36_4(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_227B202A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_227D49188();
    v6 = OUTLINED_FUNCTION_36_4(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_227B2032C()
{
  OUTLINED_FUNCTION_37();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_227D49188();
    v5 = OUTLINED_FUNCTION_36_4(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_227B203A4()
{
  OUTLINED_FUNCTION_37();
  v2 = sub_227D498E8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_227B203E8()
{
  OUTLINED_FUNCTION_37();
  v2 = sub_227D498E8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_227B204A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v7 = OUTLINED_FUNCTION_11_12(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_227D492A8();
    v12 = OUTLINED_FUNCTION_11_12(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 2)
      {
        return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_227B205B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v9 = OUTLINED_FUNCTION_11_12(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_227D492A8();
    result = OUTLINED_FUNCTION_11_12(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

BOOL sub_227B20770@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227B20738(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_227B207D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_227D49328();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_227B20868(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_227D49328();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B209F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_342();
  v4 = sub_227D49328();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_227B20A38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_342();
  v4 = sub_227D49328();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_227B20AC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B20B04()
{
  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_227B20B3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B20B88()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_94_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_227B20BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 176) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_66_6();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 9, v4 | 7);
}

uint64_t sub_227B20C90(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_58();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_227B20D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  result = OUTLINED_FUNCTION_11_12(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_227B20DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
    v9 = OUTLINED_FUNCTION_11_12(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v12 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_227B20ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
    v9 = OUTLINED_FUNCTION_11_12(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v12 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_227B210D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v9 = OUTLINED_FUNCTION_11_12(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
      v14 = OUTLINED_FUNCTION_11_12(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = sub_227D492A8();
        v17 = OUTLINED_FUNCTION_11_12(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
          v12 = a3[11];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_227B21244(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v9 = OUTLINED_FUNCTION_11_12(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
      v14 = OUTLINED_FUNCTION_11_12(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = sub_227D492A8();
        v17 = OUTLINED_FUNCTION_11_12(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
          v12 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_227B213AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v7 = OUTLINED_FUNCTION_11_12(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_227D492A8();
    v12 = OUTLINED_FUNCTION_11_12(v11);
    if (*(v13 + 84) != a2)
    {
      return OUTLINED_FUNCTION_146_4(a1 + *(a3 + 28));
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_227B21498()
{
  OUTLINED_FUNCTION_234_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v5 = OUTLINED_FUNCTION_11_12(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_227D492A8();
    result = OUTLINED_FUNCTION_11_12(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 28) + 8) = v0;
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_227B21584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v7 = OUTLINED_FUNCTION_11_12(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_146_4(a1 + *(a3 + 24));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_227B2162C()
{
  OUTLINED_FUNCTION_234_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  result = OUTLINED_FUNCTION_11_12(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = v0;
  }

  return result;
}

uint64_t sub_227B2174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B217E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B218E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v7 = OUTLINED_FUNCTION_11_12(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_227B21990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v9 = OUTLINED_FUNCTION_11_12(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_227B21A60()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  OUTLINED_FUNCTION_342_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_227B21AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227D4A408();
    v9 = OUTLINED_FUNCTION_11_12(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 32);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v12 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_227B21BA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_227D4A408();
    v9 = OUTLINED_FUNCTION_11_12(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 32);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v12 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_227B21C78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  OUTLINED_FUNCTION_378();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_227B21CC8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_227B21D10()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B21D58()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_227B21DC8(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_419();
  v6 = sub_227D4BA28();
  OUTLINED_FUNCTION_11_12(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_197_4();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_227B21E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_342();
  v8 = sub_227D4BA28();
  result = OUTLINED_FUNCTION_11_12(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_202_0();

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_227B21F14(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_419();
  v6 = sub_227D4B9A8();
  OUTLINED_FUNCTION_11_12(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_197_4();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20));
    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_227B21FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_342();
  v8 = sub_227D4B9A8();
  result = OUTLINED_FUNCTION_11_12(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_202_0();

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_227B220FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B22134()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B2216C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_227B223DC()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  OUTLINED_FUNCTION_10_0(v2);
  v1[13] = v3;
  v5 = *(v4 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4AE28();
  v1[15] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v10 = swift_task_alloc();
  v1[18] = v10;
  *v10 = v1;
  v10[1] = sub_227B22510;
  OUTLINED_FUNCTION_13_2();

  return sub_227B22DC4();
}

uint64_t sub_227B22510()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  *v4 = *v1;
  v3[19] = v8;

  if (v0)
  {
    v9 = v3[17];
    v10 = v3[14];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_227B22658()
{
  v1 = v0[19];
  result = sub_227B23878(v0[12] + 40, (v0 + 2));
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v0[20] = v5;
  v6 = (v1 + 40 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v6 + 2;
    ++v3;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);
      sub_227D4CE58();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v13 = *(v5 + 16);
        v14 = OUTLINED_FUNCTION_21();
        result = sub_227B25F88(v14, v15, v16, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v17 = OUTLINED_FUNCTION_12(v10);
        result = sub_227B25F88(v17, v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      goto LABEL_2;
    }
  }

  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_227B227D4;
  v19 = OUTLINED_FUNCTION_13_2();

  return sub_227D45C98(v19);
}

uint64_t sub_227B227D4()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *(v2 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v3 + 176) = v8;
  *(v3 + 184) = v0;

  v9 = *(v2 + 160);
  if (v0)
  {

    sub_227B26090(v3 + 16);
  }

  else
  {
    sub_227B26090(v3 + 16);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_227B22920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_1();
  a20 = v22;
  v25 = 0;
  v26 = v22[16];
  a10 = MEMORY[0x277D84F98];
  v28 = v22[22];
  v27 = v22[23];
  v29 = *(v28 + 16);
  for (i = (v26 + 8); ; (*i)(v22[17], v22[15]))
  {
    if (v29 == v25)
    {
      v31 = v22[22];

      v32 = a10;
      goto LABEL_8;
    }

    if (v25 >= *(v28 + 16))
    {
      __break(1u);
      return;
    }

    (*(v26 + 16))(v22[17], v22[22] + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v22[15]);
    sub_227B238D4(&a10);
    if (v27)
    {
      break;
    }

    ++v25;
  }

  v33 = v22[22];
  v34 = v22[17];
  v35 = v22[15];

  (*i)(v34, v35);

  v32 = 0;
LABEL_8:
  v36 = *(v22[19] + 16);
  if (v36)
  {
    v37 = v22[13];
    a10 = MEMORY[0x277D84F90];
    v38 = OUTLINED_FUNCTION_1_3();
    sub_227B26EC4(v38, v39, v40);
    v41 = 0;
    v42 = a10;
    while (1)
    {
      v43 = v22[19] + v41;
      v44 = *(v43 + 40);
      if (!v44 || !v32 || !*(v32 + 16))
      {
        break;
      }

      v45 = *(v43 + 32);
      v46 = *(v43 + 40);
      sub_227D4CE58();
      v47 = sub_227B2664C(v45, v44);
      v48 = v22[14];
      if ((v49 & 1) == 0)
      {

        goto LABEL_16;
      }

      v50 = v47;
      a9 = *(v32 + 56);
      v51 = sub_227D4AB28();
      (*(*(v51 - 8) + 16))(v48, a9 + *(*(v51 - 8) + 72) * v50, v51);

      v52 = v48;
      v53 = 0;
      v54 = v51;
LABEL_17:
      __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
      a10 = v42;
      v56 = *(v42 + 16);
      v55 = *(v42 + 24);
      if (v56 >= v55 >> 1)
      {
        v61 = OUTLINED_FUNCTION_12(v55);
        sub_227B26EC4(v61, v56 + 1, 1);
        v42 = a10;
      }

      v57 = v22[14];
      *(v42 + 16) = v56 + 1;
      v58 = *(v37 + 80);
      OUTLINED_FUNCTION_19();
      sub_227B26EE4(v60, v42 + v59 + *(v37 + 72) * v56);
      v41 += 16;
      if (!--v36)
      {
        v62 = v22[19];

        goto LABEL_23;
      }
    }

    v48 = v22[14];
LABEL_16:
    v54 = sub_227D4AB28();
    v52 = v48;
    v53 = 1;
    goto LABEL_17;
  }

LABEL_23:
  v63 = v22[17];
  v64 = v22[14];

  v65 = v22[1];
  OUTLINED_FUNCTION_16_0();

  v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B22C20()
{
  v1 = *(v0[19] + 16);
  if (v1)
  {
    v2 = v0[13];
    v17 = MEMORY[0x277D84F90];
    sub_227B26EC4(0, v1, 0);
    v3 = sub_227D4AB28();
    do
    {
      __swift_storeEnumTagSinglePayload(v0[14], 1, 1, v3);
      v5 = *(v17 + 16);
      v4 = *(v17 + 24);
      if (v5 >= v4 >> 1)
      {
        v10 = OUTLINED_FUNCTION_12(v4);
        sub_227B26EC4(v10, v5 + 1, 1);
      }

      v6 = v0[14];
      *(v17 + 16) = v5 + 1;
      v7 = *(v2 + 80);
      OUTLINED_FUNCTION_19();
      sub_227B26EE4(v9, v17 + v8 + *(v2 + 72) * v5);
      --v1;
    }

    while (v1);
    v11 = v0[19];
  }

  else
  {
  }

  v12 = v0[17];
  v13 = v0[14];

  v14 = OUTLINED_FUNCTION_8_0();

  return v15(v14);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_227B22DC4()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_227D4AD28();
  v1[8] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B22E6C()
{
  v0[2] = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F98];
  v0[3] = MEMORY[0x277D84F98];
  v0[4] = v2;
  v0[5] = v2;
  sub_227B252DC(v0[6], (v0 + 2), (v0 + 4), v0 + 3, (v0 + 5));
  v3 = v0[2];
  v0[11] = v3;
  if (!*(v3 + 16))
  {
    v10 = v0[6];
    v11 = *(v10 + 16);
    if (v11)
    {
      v34 = MEMORY[0x277D84F90];
      v12 = OUTLINED_FUNCTION_1_3();
      sub_227B26EA4(v12, v13, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      v16 = 0;
      OUTLINED_FUNCTION_5(v15);
      v32 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v33 = v17;
      v18 = v0[3];
      do
      {
        if (*(v18 + 16) && (v19 = sub_227B266C4(v32 + *(v33 + 72) * v16), (v20 & 1) != 0))
        {
          OUTLINED_FUNCTION_17_2(v19);
        }

        else
        {
          v1 = 0;
          v10 = 0;
        }

        v22 = *(v34 + 16);
        v21 = *(v34 + 24);
        if (v22 >= v21 >> 1)
        {
          v24 = OUTLINED_FUNCTION_12(v21);
          sub_227B26EA4(v24, v22 + 1, 1);
        }

        ++v16;
        *(v34 + 16) = v22 + 1;
        v23 = v34 + 16 * v22;
        *(v23 + 32) = v1;
        *(v23 + 40) = v10;
      }

      while (v11 != v16);
      v25 = v0[11];
    }

    v26 = v0[10];
    v27 = v0[5];

    v28 = v0[4];

    v29 = v0[3];

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_23();

    __asm { BRAA            X2, X16 }
  }

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_227B23128;
  v5 = v0[7];
  OUTLINED_FUNCTION_23();

  return sub_227B6EB28(v6, v7);
}

uint64_t sub_227B23128()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}