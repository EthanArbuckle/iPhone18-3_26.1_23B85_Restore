uint64_t sub_1D4E41008()
{
  result = sub_1D5611AB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SocialProfile()
{
  result = qword_1EDD5DC48;
  if (!qword_1EDD5DC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicDataRequest.preferredExecutionMethod.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EDD5F568 = v1;
  v2 = off_1F50BCB78[v1];
  return sub_1D560D318();
}

uint64_t type metadata accessor for UserProfile()
{
  result = qword_1EDD57E60;
  if (!qword_1EDD57E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4E4119C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E41240(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t static MusicLibrary.extendedStorageType.getter()
{
  if (qword_1EDD5F238 != -1)
  {
    swift_once();
  }

  return qword_1EDD5F240;
}

uint64_t sub_1D4E41334()
{
  v0 = _s15InternalStorageCMa();
  result = sub_1D4E413BC(&qword_1EDD5F320, v1, _s15InternalStorageCMa);
  qword_1EDD5F240 = v0;
  unk_1EDD5F248 = result;
  return result;
}

uint64_t sub_1D4E413BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4E41400(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_49()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

void OUTLINED_FUNCTION_92()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
}

void OUTLINED_FUNCTION_92_0()
{

  JUMPOUT(0x1DA6EC100);
}

void *OUTLINED_FUNCTION_92_1()
{
  v2 = *(v0 - 200);

  return memcpy((v0 - 160), v2, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_92_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_92_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_92_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2)
{

  return sub_1D4F39AB0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_92_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_92_13()
{
  v4 = *(v2 - 448);
  v5 = *(v2 - 424);
  v6 = *(v2 - 432);
  v7 = *(v2 - 440);

  return sub_1D526CDE8(v4, v1, v5, v6, v7, v0);
}

uint64_t OUTLINED_FUNCTION_73()
{
  result = v0;
  v3 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_92_16()
{
  v2 = *(v0 - 136);

  return sub_1D5614C28();
}

uint64_t sub_1D4E41774()
{
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_311_0();
  swift_allocObject();
  OUTLINED_FUNCTION_82();
  sub_1D4E41F54();
  return v0;
}

uint64_t type metadata accessor for MusicLibrary.DownloadedItemsCenter()
{
  result = qword_1EDD5D448;
  if (!qword_1EDD5D448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4E417F4()
{
  if (!qword_1EDD5D2C0)
  {
    sub_1D560C368();
    _s23DownloadedItemsObserverCMa();
    sub_1D4E421AC();
    v0 = sub_1D5611E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D2C0);
    }
  }
}

void sub_1D4E41870()
{
  sub_1D4E417F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D4E41918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E41774();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_167()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_112_2()
{
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[35];
}

void OUTLINED_FUNCTION_53()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return sub_1D504CF98(v0, type metadata accessor for MusicMovie);
}

uint64_t OUTLINED_FUNCTION_112_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_8()
{
}

uint64_t OUTLINED_FUNCTION_112_9()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_112_12()
{

  return sub_1D4E628D4(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_112_14(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 168);

  return sub_1D4E6835C(v5, v1, (v3 - 96));
}

uint64_t OUTLINED_FUNCTION_112_15(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_33_0()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_83()
{

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_163(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_83_4()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_83_8()
{

  return swift_once();
}

double OUTLINED_FUNCTION_83_10()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_17()
{

  return sub_1D5612368();
}

__n128 OUTLINED_FUNCTION_83_19()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  result = *(v0 + 24);
  v4 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_83_22()
{
  v2 = *(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83_23()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_83_24()
{

  return static MusicDaemon.Error.== infix(_:_:)(v0 - 104, (v0 - 128));
}

uint64_t OUTLINED_FUNCTION_83_25@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return type metadata accessor for UploadedVideo();
}

uint64_t OUTLINED_FUNCTION_83_26()
{

  return sub_1D5551868(v0, type metadata accessor for TVShow);
}

uint64_t sub_1D4E41F54()
{
  v1 = type metadata accessor for MusicLibrary.DownloadedItemsCenter();
  OUTLINED_FUNCTION_2_19(v1);
  *(v0 + 16) = sub_1D4E43DBC();
  *(v0 + 24) = [objc_opt_self() sharedLibraryTransientStateController];
  *(v0 + 32) = [objc_opt_self() sharedContentTasteController];
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D561C770;
  *(v2 + 32) = sub_1D560F018();
  *(v2 + 40) = sub_1D560F058();
  v3 = sub_1D5612A08();
  OUTLINED_FUNCTION_2_19(v3);
  *(v0 + 40) = sub_1D56129A8();
  sub_1D4E473A4();
  OUTLINED_FUNCTION_147();
  v4 = type metadata accessor for MusicLibrary.CloudStatusController();
  OUTLINED_FUNCTION_2_19(v4);
  v5 = OUTLINED_FUNCTION_143_5();
  *(v0 + 48) = sub_1D4E4AB1C(v5);
  *(v0 + 56) = sub_1D560F0C8() & 1;
  if (sub_1D4E5005C())
  {
    v6 = *(v0 + 40);

    sub_1D4E55E98();
  }

  return v0;
}

uint64_t _s23DownloadedItemsObserverCMa()
{
  result = qword_1EDD5D328;
  if (!qword_1EDD5D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4E42100()
{
  result = sub_1D560C368();
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

unint64_t sub_1D4E421AC()
{
  result = qword_1EDD5F560;
  if (!qword_1EDD5F560)
  {
    sub_1D560C368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_3()
{
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[72];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[65];
  v21 = v0[64];
  v22 = v0[62];
  v23 = v0[61];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[55];
  v27 = v0[54];
  v28 = v0[51];
  v29 = v0[50];
  v30 = v0[48];
  v31 = v0[47];
  v32 = v0[44];
  v33 = v0[43];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[32];
  v39 = v0[31];
  v40 = v0[28];
  v41 = v0[27];
  v42 = v0[24];
  v43 = v0[23];
  v12 = v0[18];
  v11 = v0[19];
  *(v1 - 176) = v0[21];
  *(v1 - 168) = v11;
  v14 = v0[15];
  v13 = v0[16];
  *(v1 - 160) = v12;
  *(v1 - 152) = v13;
  v16 = v0[12];
  v15 = v0[13];
  *(v1 - 144) = v14;
  *(v1 - 136) = v15;
  v18 = v0[9];
  v17 = v0[10];
  *(v1 - 128) = v16;
  *(v1 - 120) = v17;
  v19 = v0[7];
  *(v1 - 112) = v18;
  *(v1 - 104) = v19;
  return v2;
}

uint64_t OUTLINED_FUNCTION_55()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return sub_1D5616098();
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  v1 = *(*(v0 - 312) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  *(a1 + 8) = sub_1D4F6CA38;
  v2 = v1[10];
  result = v1[7];
  v4 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{
  result = v0;
  v3 = *(v1 - 224);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return sub_1D5616038();
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  v2 = *(v0 - 152);

  return sub_1D5615F18();
}

void OUTLINED_FUNCTION_2_30()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_2_37()
{
  v2 = *(v0 - 176);
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = v2;
  *(v0 - 224) = *(v0 - 160);

  return sub_1D4F0A668(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_2_38()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_2_42()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_47()
{
  v1 = *(v0 - 160);
  v2 = **(v0 - 168);
  return *(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_2_48(unint64_t *a1)
{

  return sub_1D505B694(a1);
}

uint64_t OUTLINED_FUNCTION_2_54()
{
  v1 = *(v0 - 152);
  v2 = *(*(v0 - 144) + 16);
  result = *(v0 - 160);
  v4 = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_56()
{

  sub_1D4EFF8E4();
}

uint64_t OUTLINED_FUNCTION_2_57()
{

  return sub_1D5616018();
}

void *OUTLINED_FUNCTION_2_60()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_2_64()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return sub_1D5614CB8();
}

void OUTLINED_FUNCTION_2_71()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_2_75()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t OUTLINED_FUNCTION_2_77()
{
  *(v3 - 120) = v1;
  v4 = *(v2 + 8);
  result = v0;
  v6 = *(v3 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_80@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 240) = a1;
  *(v2 - 304) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_2_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_83(uint64_t result)
{
  *(result + 8) = sub_1D5132C6C;
  v2 = *(v1 + 560);
  return result;
}

void OUTLINED_FUNCTION_2_91()
{
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

void OUTLINED_FUNCTION_2_93(char *a1@<X8>)
{
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t OUTLINED_FUNCTION_2_94()
{
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[33];
  v6 = v0[30];
}

uint64_t OUTLINED_FUNCTION_2_95()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_100()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_21(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[6].n128_u64[0] = v4;
  a1[4] = a3;
  a1[5] = a4;
  a1[3] = a2;
  a1[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_2_104()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_111()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_112(unint64_t *a1)
{

  return sub_1D523A174(a1);
}

uint64_t OUTLINED_FUNCTION_2_113()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_114()
{

  return sub_1D5612368();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_168(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_119()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_121()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_2_124@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[114];
  v5 = v1[113];
  v6 = v1[112];
  v7 = v1[111];
  v8 = v1[110];
  v9 = v1[109];
  v10 = v1[106];
  v11 = v1[105];
  v12 = v1[104];
  v13 = v1[103];
  v17 = v1[102];
  v18 = v1[101];
  v19 = v1[100];
  v20 = v1[99];
  v21 = v1[97];
  v22 = v1[96];
  v23 = v1[93];
  v24 = v1[90];
  v25 = v1[89];
  v26 = v1[86];
  v27 = v1[85];
  v28 = v1[84];
  v29 = v1[83];
  v30 = v1[80];
  v31 = v1[79];
  v14 = v1[75];
  *(v2 - 112) = v1[76];
  *(v2 - 104) = v14;
  v15 = v1[73];
  *(v2 - 96) = v1[74];
  *(v2 - 88) = v15;
}

void OUTLINED_FUNCTION_2_126()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_2_128(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  return *a1;
}

uint64_t OUTLINED_FUNCTION_2_129()
{

  return sub_1D52EC240(v0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
}

void OUTLINED_FUNCTION_75()
{

  sub_1D4F0029C();
}

uint64_t OUTLINED_FUNCTION_2_131()
{

  return type metadata accessor for UploadedVideoPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_2_134()
{
  result = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 176);
  v4 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_140()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_149()
{

  return sub_1D56159C8();
}

void *OUTLINED_FUNCTION_2_150()
{

  return memcpy((v1 - 136), (v0 + 24), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_2_151(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  v6 = *v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_154()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_2_157()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_2_162()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_2_164()
{
  v2 = v0[15];
  v3 = v0[13];
  v11 = v0[14];
  v12 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return sub_1D560DE38();
}

uint64_t OUTLINED_FUNCTION_2_174(unint64_t *a1)
{

  return sub_1D5433978(a1);
}

uint64_t OUTLINED_FUNCTION_2_176()
{
  *(v7 - 136) = v3;
  *(v7 - 135) = v5;
  *(v7 - 134) = v4;
  *(v7 - 133) = v1;
  *(v7 - 132) = v6;
  *(v7 - 128) = v0;
  return v2;
}

void *OUTLINED_FUNCTION_2_179()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_2_180()
{

  return type metadata accessor for UploadedAudioPropertyProvider();
}

void OUTLINED_FUNCTION_2_183()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t OUTLINED_FUNCTION_2_185(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_191()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_193(unint64_t *a1)
{

  return sub_1D5529598(a1);
}

uint64_t OUTLINED_FUNCTION_2_195()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_2_203()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_2_205()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_207()
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_2_212()
{

  return sub_1D5615F18();
}

uint64_t sub_1D4E43DBC()
{
  *(v0 + 16) = 0;
  sub_1D560C368();
  _s23DownloadedItemsObserverCMa();
  sub_1D4E421AC();
  sub_1D5611E68();
  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_lock;
  v2 = sub_1D560F628();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = sub_1D560F618();
  return v0;
}

void sub_1D4E43F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryTransientStateControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelLibraryTransientStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryTransientStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryTransientStateControllerClass_block_invoke_cold_1();
    return sub_1D4E44000(v3);
  }

  return result;
}

void sub_1D4E44000()
{
  sub_1D4E440E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D4E44134();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D4E440E4()
{
  if (!qword_1EDD5D850)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D850);
    }
  }
}

void sub_1D4E44134()
{
  if (!qword_1EDD5D2C8)
  {
    _s19SyncProgressMonitorCMa();
    sub_1D4E4FE5C();
    v0 = sub_1D5610AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D2C8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 72) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v1 = *(*(v0 - 232) + 8);
  result = *(v0 - 248);
  v3 = *(v0 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_122()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_1D560C518();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return sub_1D560CDE8();
}

void OUTLINED_FUNCTION_3_14()
{

  sub_1D4F03BF4();
}

void OUTLINED_FUNCTION_3_15()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_1D5615968();
}

uint64_t OUTLINED_FUNCTION_3_21()
{
  v2 = v0[37];
  result = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_27()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[10];
  v9 = *(v0[11] + 8);
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_3_33()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_3_35()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return sub_1D5616398();
}

uint64_t OUTLINED_FUNCTION_3_55()
{

  return type metadata accessor for MusicPinPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_3_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_60@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + 16 * a1);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v2 + 8 * a1);
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_3_66()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_3_67()
{
  v3 = *(v1 + 16);
  v2 = v1 + 16;
  v4 = v0 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

void OUTLINED_FUNCTION_3_69()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_71()
{
  v2 = *(v0 - 192);

  return sub_1D560F7D8();
}

void OUTLINED_FUNCTION_3_72()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_78()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_3_79(uint64_t a1@<X8>)
{
  *(v2 + 56) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
}

void OUTLINED_FUNCTION_3_89()
{
  v0[58] = 0;
  v0[60] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

void OUTLINED_FUNCTION_3_98()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  v3 = *(v0 + 42);
  v4 = *(v0 + 43);
  v5 = *(v0 + 44);
  *(v0 + 72) = *(v0 + 48);
}

__n128 OUTLINED_FUNCTION_3_99@<Q0>(uint64_t a1@<X8>, __n128 a2, __int128 a3, __int128 a4, uint64_t a5)
{
  result = a2;
  *(a1 + 96) = a5;
  *(a1 + 64) = a3;
  *(a1 + 80) = a4;
  *(a1 + 48) = a2;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_100()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_104()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_3_105()
{
  v2 = *(v0 - 88);

  return sub_1D560D4D8();
}

uint64_t OUTLINED_FUNCTION_3_112()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_114()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_116()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_119()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_121()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_3_123()
{

  return sub_1D51EC8B4(0, 0, v0, &unk_1D564D2A0, v1);
}

uint64_t OUTLINED_FUNCTION_3_125()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_126(uint64_t a1)
{
  *(a1 + 8) = sub_1D52C1138;
  v2 = v1[116];
  v3 = v1[115];
  v4 = v1[97];
  return v1[85];
}

void OUTLINED_FUNCTION_3_128()
{

  sub_1D4EFF8E4();
}

void OUTLINED_FUNCTION_3_129()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_3_131()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_133(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s21EntryPropertyProviderVMa();
}

uint64_t OUTLINED_FUNCTION_3_134()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_3_135()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_136()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_137()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_3_138()
{
  result = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 176);
  v4 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_139()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_141()
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_3_143()
{
}

uint64_t OUTLINED_FUNCTION_3_153()
{
  v3 = *v0;
  v2 = v0[1];

  return sub_1D5615B68();
}

void *OUTLINED_FUNCTION_3_155(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __dst)
{

  return memcpy(&__dst, (v19 + 24), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_3_156()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_3_157()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_3_158()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_3_159()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_161()
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_3_162()
{

  sub_1D4EFF9AC();
}

void OUTLINED_FUNCTION_3_164()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_170(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 120) = v1;
  return v2 - 120;
}

uint64_t OUTLINED_FUNCTION_3_175()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_176()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_3_177()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_180()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_3_181()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_182()
{
  result = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[78];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[71];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_183()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_3_186()
{
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_3_187(uint64_t result)
{
  *(result + 8) = sub_1D54DF640;
  v2 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_189()
{
  v8 = v3[77];
  *(v0 + 16) = v1;
  v9 = v0 + 80 * v2;
  *(v9 + 32) = 542327072;
  *(v9 + 40) = 0xE400000000000000;
  v10 = *v4;
  v11 = v4[1];
  v12 = v4[2];
  *(v9 + 96) = *(v4 + 6);
  *(v9 + 64) = v11;
  *(v9 + 80) = v12;
  *(v9 + 48) = v10;
  *(v9 + 104) = 0;
  v13 = *v8;
  v14 = v8[1];
  v3[53] = v5;
  v3[54] = v6;
  v3[50] = v13;
  v3[51] = v14;

  return sub_1D4E628D4((v3 + 50), (v3 + 12));
}

uint64_t OUTLINED_FUNCTION_3_191(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_3_193()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  result = v0[2];
  v5 = *(v0[4] + 32);
  return result;
}

void OUTLINED_FUNCTION_3_199()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_3_201()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_208()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_213()
{

  return swift_once();
}

void MediaPlayerLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3890;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t MediaPlayerLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3A28;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_2;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void MediaPlayerLibrary_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_3;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3AC8;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t MediaPlayerLibrary_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3BD0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_4;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_4)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void MediaPlayerLibrary_3()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_5;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3C10;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_5)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_4()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_7)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_7;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3C68;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_7)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_5()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_9)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_9;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3CD8;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_9 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_9)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_6()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_16)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_16;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3E30;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_16 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_16)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_7()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_18)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_18;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3F00;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_18 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_18)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_8()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_19;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C3F88;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_19)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t MediaPlayerLibrary_9()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_20)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_20;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C3FC8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_20 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_20;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_20)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaPlayerLibrary_10()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_23)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_23;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4030;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_23 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_23;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_23)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void MediaPlayerLibrary_11()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_24)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_24;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C4170;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_24 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_24)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t MediaPlayerLibrary_12()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_25)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_25;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4210;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_25 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_25;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_25)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaPlayerLibrary_13()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_26;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4278;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_26;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_26)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaPlayerLibrary_14()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_27)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_27;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C4290;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_27 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_27;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_27)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MediaPlayerLibrary_15()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_28)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_28;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E84C42C8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_28 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_28;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_28)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void MediaPlayerLibrary_16()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_29)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_29;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C4308;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_29 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_29)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_17()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_30)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_30;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C4320;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_30 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_30)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_18()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_33)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_33;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C4400;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_33 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_33)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void MediaPlayerLibrary_19()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_36)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_36;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84C4470;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_36 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_36)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

id getMPModelLibraryTransientStateControllerDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr;
  if (!getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_2();
    v6[3] = dlsym(v1, "MPModelLibraryTransientStateControllerDidChangeNotification");
    getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPContentTasteControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_14();
  result = objc_getClass("MPContentTasteController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPContentTasteControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPContentTasteControllerClass_block_invoke_cold_1();
    return __77__MusicKit_SoftLinking_MPContentTasteController_sharedContentTasteController__block_invoke(v3);
  }

  return result;
}

void sub_1D4E47288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPContentTasteControllerDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr;
  if (!getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_14();
    v6[3] = dlsym(v1, "MPContentTasteControllerDidChangeNotification");
    getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_1D4E473A4()
{
  if (sub_1D560EFB8())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_143_5();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 userIdentity];
      OUTLINED_FUNCTION_107_5();
      swift_unknownObjectRelease();
      return v0;
    }

    swift_unknownObjectRelease();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568B930);
  sub_1D560EFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  v4 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0xD00000000000002ELL, 0x80000001D568B950);
  result = OUTLINED_FUNCTION_71_21();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_1D5615D78();
}

uint64_t OUTLINED_FUNCTION_17_3()
{
  v2 = v0[14];
  v3 = v0[12];
  v11 = v0[13];
  v12 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[4];

  return sub_1D560DE38();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_1D5615D78();
}

uint64_t OUTLINED_FUNCTION_17_6@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(v2 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  result = __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v4 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  result = v0;
  v3 = *(v1 - 344);
  return result;
}

void OUTLINED_FUNCTION_17_11(__n128 a1)
{
  *v3 = a1;
  *(v3->n128_u64 + v2[7]) = v1;
  *(v3->n128_u64 + v2[8]) = v1;
  *(v3->n128_u64 + v2[9]) = v1;
  *(v3->n128_u64 + v2[10]) = v1;
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_17_13()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  result = *(v0 - 216);
  v2 = *(*(v0 - 224) + 8);
  v3 = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_16()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v10 = v0[41];
  v11 = v0[38];
  v7 = v0[35];
  v12 = v0[34];
  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[13];
  v22 = v0[10];
  v8 = v0[8];
  return v0[40];
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_17_23()
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_40_1@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(a1 + 20);

  return sub_1D5610D28();
}

uint64_t OUTLINED_FUNCTION_17_27@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = v1;
  *(v3 - 88) = a1;
  *(v3 - 72) = v2;
  return v3 - 96;
}

double OUTLINED_FUNCTION_52_0()
{
  result = *v1;
  *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_29()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  v6 = *(v0[9] + 8);
  return v0[10];
}

double OUTLINED_FUNCTION_12_2()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_32()
{

  return sub_1D5614898();
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_34()
{
  v1 = *(v0 - 176);
  v2 = *(*(v0 - 184) + 16);
  v3 = *(v0 - 192);
  return *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_17_38()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 120);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_17_39(uint64_t result)
{
  *(result + 8) = sub_1D5109B74;
  v2 = *(v1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, a4);
  v5 = v4[71];
  v6 = v4[70];
  v7 = v4[67];
  v8 = v4[66];
}

void *OUTLINED_FUNCTION_17_45()
{

  return memcpy(&STACK[0x2E8], (v0 + 48), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_17_48()
{

  return sub_1D560E658();
}

uint64_t OUTLINED_FUNCTION_17_49()
{

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_17_50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_17_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_53(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_54()
{
  v7 = *(v5 - 112) + v3;

  return sub_1D4E69910(v7, v4 + v2, v0, v1);
}

void OUTLINED_FUNCTION_17_55(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[6].n128_u64[0] = v4;
  a1[4] = a3;
  a1[5] = a4;
  a1[3] = a2;
  a1[6].n128_u8[8] = 0;
  v6 = *(v5 + 24);
}

uint64_t OUTLINED_FUNCTION_17_57@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1D5616038();
}

uint64_t OUTLINED_FUNCTION_17_61()
{
  v3 = *(v2 - 200);
  *v3 = v0;
  v3[1] = v1;
  v4 = *(v2 - 96);
  __swift_project_boxed_opaque_existential_1((v2 - 128), *(v2 - 104));
  v5 = v3 + *(*(v2 - 208) + 20);

  return sub_1D5610D28();
}

uint64_t OUTLINED_FUNCTION_17_62()
{
  v1 = *(*(v0 - 176) + 16);
  result = *(v0 - 208);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_63(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 112);
  return v2;
}

uint64_t OUTLINED_FUNCTION_17_64()
{
  v1 = v0[111];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = *(v0[78] + 32);
  return v0[79];
}

uint64_t OUTLINED_FUNCTION_17_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = sub_1D52CF0F0;
  v11 = *(v10 + 176);
  return a10;
}

uint64_t OUTLINED_FUNCTION_17_67(uint64_t a1)
{
  sub_1D52EFD44(v1, a1);
}

void OUTLINED_FUNCTION_17_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1D531E3F4(a1, v21, v20, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_17_72(uint64_t a1)
{
  v2[71] = a1;
  v2[72] = *(v3 + 16);
  v2[73] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_73@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_74()
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_17_77()
{
  v2 = *(v0 + 16);
  v3 = *(v1 - 168);
  return *(v1 - 176);
}

uint64_t OUTLINED_FUNCTION_17_79()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  return 0;
}

uint64_t OUTLINED_FUNCTION_17_81()
{
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[24];
}

uint64_t OUTLINED_FUNCTION_17_83()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_17_84()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_85()
{

  return type metadata accessor for CreditArtistPropertyProvider();
}

void *OUTLINED_FUNCTION_17_87()
{
  sub_1D4E48324((v0 + 176), v0 + 96);
  v1 = *(v0 + 128);
  return __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
}

uint64_t OUTLINED_FUNCTION_17_94(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_17_95()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_17_97()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_17_98(uint64_t a1)
{

  return sub_1D4E6C9CC(a1, v1, v2);
}

uint64_t sub_1D4E48324(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for MusicLibrary.CloudStatusController()
{
  result = qword_1EDD5D528;
  if (!qword_1EDD5D528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D4E48388()
{
  result = qword_1EDD5B4E8;
  if (!qword_1EDD5B4E8)
  {
    type metadata accessor for MusicRequestConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5B4E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a2;

  return sub_1D560D838();
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_22_9()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_1D5610758();
}

void OUTLINED_FUNCTION_22_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_76@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_22_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_25()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 128);

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_22_26()
{
  sub_1D4E48324((v0 - 160), v0 - 120);

  return sub_1D4E628D4(v0 - 120, v0 - 160);
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return sub_1D56151F8();
}

uint64_t OUTLINED_FUNCTION_22_28()
{

  return sub_1D560D0F8();
}

void OUTLINED_FUNCTION_22_30()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_22_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_33(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(*(v2 - 232), a2);
  v3 = *(v2 - 216);
  v4 = *(v2 - 136);

  return sub_1D560D588();
}

uint64_t OUTLINED_FUNCTION_22_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_40()
{

  return sub_1D560E3F8();
}

uint64_t OUTLINED_FUNCTION_22_42()
{
  result = v0;
  v3 = *(v1 - 96);
  v4 = *(v1 - 92);
  v5 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_47(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1D4E62A60(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_22_51()
{
  v4 = *(v2 - 192);

  return sub_1D52A9A24(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_22_52()
{

  return sub_1D51D2A80(v0, v1, v2, v3, v4);
}

void OUTLINED_FUNCTION_22_53()
{
  v9 = v4[130];
  v10 = v4[129];
  v4[128] = v0;
  v4[127] = v8;
  v4[126] = v7;
  v4[125] = v5;
  v4[124] = v1;
  v4[123] = v6;
  v4[122] = v3;
  v4[121] = v2;
}

uint64_t OUTLINED_FUNCTION_22_54(uint64_t a1)
{
  *(a1 + 8) = sub_1D52D1E24;
  v2 = *(v1 + 57);
  v3 = *(v1 + 312);
  v4 = *(v1 + 248);
  result = *(v1 + 192);
  v6 = *(v1 + 176);
  return result;
}

void OUTLINED_FUNCTION_22_55()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_22_59(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_61()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_22_62()
{

  return sub_1D531EC24(v1, v0);
}

uint64_t OUTLINED_FUNCTION_22_63()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_22_65(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_22_67()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_22_69(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_70@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_73()
{

  return sub_1D54EF4CC(v0);
}

void OUTLINED_FUNCTION_22_77()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2082;
  *(v1 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_22_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_84@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  v4 = *(v3 + 8);
  return v2;
}

void *OUTLINED_FUNCTION_22_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *(v5 - 416);
  v8 = *(v5 - 432);
  v9 = *(v5 - 168);

  return sub_1D56056A8(v7, v8, v9, a4, a5);
}

uint64_t static ClientInfo.default.getter@<X0>(uint64_t a1@<X8>)
{
  result = static ClientInfo.optionalDefault.getter(v10);
  v3 = *(&v10[0] + 1);
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v11;
  if (*(&v10[0] + 1))
  {
    *a1 = *&v10[0];
    *(a1 + 8) = v3;
    v4 = v13;
    *(a1 + 16) = v12;
    *(a1 + 32) = v4;
    *(a1 + 48) = v14;
    *(a1 + 64) = v15;
  }

  else
  {
    *&v10[0] = 0;
    *(&v10[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D568D990);
    OUTLINED_FUNCTION_10_107();
    MEMORY[0x1DA6EAC70]();
    MEMORY[0x1DA6EAC70](0xD000000000000050, 0x80000001D568D9D0);
    v5 = [objc_opt_self() processInfo];
    v6 = [v5 processName];

    v7 = sub_1D5614D68();
    v9 = v8;

    MEMORY[0x1DA6EAC70](v7, v9);

    MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
    result = OUTLINED_FUNCTION_28_6();
    __break(1u);
  }

  return result;
}

uint64_t static ClientInfo.optionalDefault.getter@<X0>(_OWORD *a1@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = sub_1D5614D68();
  v6 = v5;

  v7 = [objc_opt_self() mainBundle];
  v8 = sub_1D4E4945C(v7);
  if (!v8)
  {

    memset(__src, 0, 32);
LABEL_7:
    result = sub_1D50B8C70(__src);
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *(a1 + 8) = 0;
    goto LABEL_8;
  }

  v9 = v8;

  sub_1D4E494C8(0x696C43616964654DLL, 0xEF6F666E49746E65, v9);

  if (!*&__src[24])
  {

    goto LABEL_7;
  }

  sub_1D4E519A8(__src, v25);
  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v11 = sub_1D5616158();
  *__src = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:__src];
  swift_unknownObjectRelease();
  v13 = *__src;
  if (v12)
  {
    v14 = sub_1D560C198();
    v16 = v15;

    v17 = sub_1D560B9C8();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D4E4A520();
    sub_1D560B948();

    sub_1D4E55E1C(v14, v16);

    __swift_destroy_boxed_opaque_existential_1(v25);
    result = memcpy(a1, __src, 0x48uLL);
LABEL_8:
    v21 = *MEMORY[0x1E69E9840];
    return result;
  }

  v22 = v13;
  v23 = sub_1D560BE98();

  swift_willThrow();
  *__src = 0;
  *&__src[8] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000045, 0x80000001D568DA70);
  OUTLINED_FUNCTION_10_107();
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](0xD00000000000003DLL, 0x80000001D568DAC0);
  MEMORY[0x1DA6EAC70](v4, v6);
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568DB00);
  result = OUTLINED_FUNCTION_28_6();
  __break(1u);
  return result;
}

uint64_t sub_1D4E4945C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614BB8();

  return v3;
}

double sub_1D4E494C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v3 = sub_1D4E4EFA0();
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v5 = OUTLINED_FUNCTION_12_12(v3);

  sub_1D4E5194C(v5, v6);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  *(v0 + 16) = *(v0 + 48);
  v1 = *(v0 + 184);
  v2 = *(v0 + 208);
  v3 = *(v0 + 40);
  *(v0 + 24) = *(v0 + 56);
  return 0;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  v4 = *(v0 + 48);
  v5 = *v1;
  v6 = v1[1];
  v7 = *v2;
  v8 = *(v3 - 176);
  return *(v3 - 184);
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_1D4E7661C(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_11_27()
{
  v5 = v0 & 1;
  v6 = *(v3 - 192);

  return MEMORY[0x1EEDD0430](v2, v5, v1);
}

uint64_t OUTLINED_FUNCTION_154@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return sub_1D5615B38();
}

uint64_t OUTLINED_FUNCTION_11_34()
{

  return sub_1D560EC28();
}

double OUTLINED_FUNCTION_11_35()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_42()
{
  v2 = *(v0 - 152);

  return sub_1D5067094();
}

uint64_t OUTLINED_FUNCTION_11_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_46(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(*(v2 - 296), a2);
  v3 = *(v2 - 320);
  v4 = *(v2 - 288);

  return sub_1D560D588();
}

uint64_t OUTLINED_FUNCTION_4_4()
{
  v2 = *(v0 - 184);

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_54()
{

  return sub_1D560BD58();
}

uint64_t OUTLINED_FUNCTION_11_55()
{
  *(v3 - 112) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_56()
{
  v2 = *(v0 - 136);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_11_59()
{

  return sub_1D560E658();
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_63()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_11_70@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_72()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_73()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_74(unint64_t *a1)
{

  return sub_1D5208690(a1, v1);
}

uint64_t OUTLINED_FUNCTION_11_78()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_11_81()
{
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[6];

  return sub_1D528B2FC(v5, v6, type metadata accessor for MusicSiriRepresentation);
}

void OUTLINED_FUNCTION_11_86()
{
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 64;
}

uint64_t OUTLINED_FUNCTION_11_94()
{

  return sub_1D5614CB8();
}

void OUTLINED_FUNCTION_11_96(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_97()
{

  return sub_1D56118A8();
}

void OUTLINED_FUNCTION_11_98(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

uint64_t OUTLINED_FUNCTION_11_102()
{
  result = v0;
  *(v2 - 320) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_107(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_108()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v11 = v0[25];
  v10 = v0[26];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v12 = v0[20];
  v18 = v0[17];
  v19 = v0[14];
}

uint64_t OUTLINED_FUNCTION_11_110(float a1)
{
  *v2 = a1;

  return sub_1D4E6835C(v1, v3 | 0x8000000000000000, (v4 - 72));
}

uint64_t OUTLINED_FUNCTION_11_112()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_11_113()
{
  v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_1D4E6C078(v2);
}

uint64_t OUTLINED_FUNCTION_11_114()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_11_117()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D54F08F4(v4, 0, 0, a4, v5 + 16);
}

uint64_t OUTLINED_FUNCTION_11_124()
{
  result = *(v0 - 112);
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_125@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[41];
  v6 = v1[38];
  v5 = v1[39];
  v8 = v1[34];
  v7 = v1[35];
  v9 = v1[33];
  v11 = v1[29];
  v10 = v1[30];
  v12 = v1[28];
  v13 = v1[25];
  v16 = v1[24];
  v17 = v1[23];
  v18 = v1[20];
  v19 = v1[19];
  v20 = v1[18];
  v21 = v1[15];
  v22 = v1[14];
  v23 = v1[13];
  v24 = v1[10];
  v25 = v1[9];
  v14 = v1[8];
  v26 = v1[5];
}

uint64_t OUTLINED_FUNCTION_11_128()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_131()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_132@<X0>(uint64_t a1@<X8>)
{
  result = *(*(v1 - 96) + a1);
  v3 = *(*(v1 - 248) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_133()
{

  return sub_1D5615E08();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D4E4A520()
{
  result = qword_1EDD5DC60;
  if (!qword_1EDD5DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC60);
  }

  return result;
}

void ClientInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6068, &qword_1D56618D0);
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1D4E5297C();
  sub_1D5616398();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D4E529D0();
    OUTLINED_FUNCTION_6_131();
    sub_1D5615FD8();
    v28 = v34;
    v29 = v32;
    LOBYTE(v30[0]) = 1;
    sub_1D4E53F68();
    OUTLINED_FUNCTION_6_131();
    sub_1D5615FD8();
    v26 = v33;
    v27 = v31;
    v20 = v32;
    v25 = v31;
    v21 = v34;
    v24 = v33;
    v40 = 2;
    sub_1D4E4A938();
    OUTLINED_FUNCTION_6_131();
    sub_1D5615F78();
    v22 = OUTLINED_FUNCTION_28_0();
    v23(v22);
    v30[0] = v27;
    v30[1] = v29;
    v30[2] = v26;
    v30[3] = v28;
    v30[4] = v25;
    v30[5] = v20;
    v30[6] = v24;
    v30[7] = v21;
    v30[8] = a10;
    memcpy(v14, v30, 0x48uLL);
    sub_1D4E55DC0(v30, &v31);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v31 = v27;
    v32 = v29;
    v33 = v26;
    v34 = v28;
    v35 = v25;
    v36 = v20;
    v37 = v24;
    v38 = v21;
    v39 = a10;
    sub_1D4E4AA8C(&v31);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4E4A88C()
{
  result = qword_1EDD5DC70;
  if (!qword_1EDD5DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC70);
  }

  return result;
}

unint64_t sub_1D4E4A8E4()
{
  result = qword_1EDD5DC78;
  if (!qword_1EDD5DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC78);
  }

  return result;
}

unint64_t sub_1D4E4A938()
{
  result = qword_1EDD5DCA8;
  if (!qword_1EDD5DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCA8);
  }

  return result;
}

unint64_t sub_1D4E4A98C()
{
  result = qword_1EDD58A88;
  if (!qword_1EDD58A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58A88);
  }

  return result;
}

uint64_t sub_1D4E4A9E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6038, &qword_1D56618C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4E4AA5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D4E4AAE4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D4E4AB1C(void *a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v6 = &v30[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7320, &qword_1D5668A80);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v30[-v13];
  *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_notificationCoalescer) = 0;
  v15 = [objc_opt_self() controllerWithUserIdentity_];
  v16 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController;
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController) = v15;
  v17 = [objc_opt_self() controllerWithUserIdentity_];
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController[0]) = v17;
  if ([*(v2 + v16) isCloudLibraryEnabled])
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  swift_beginAccess();
  v30[7] = v18;
  sub_1D560C8B8();
  swift_endAccess();
  v19 = *(v2 + v16);
  _s19SyncProgressMonitorCMa();
  swift_allocObject();
  v31 = sub_1D4E4C80C(v19);
  sub_1D4E4FE5C();
  sub_1D5610A88();
  (*(v10 + 32))(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_activeMonitoringPublisher, v14, v7);
  [*(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController[0]) beginObservingCloudLibraryEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D561C770;
  *(v20 + 32) = sub_1D4E4C894(off_1E84C0350, &selRef_cloudLibraryEnabledDidChangeNotificationName, OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController);
  *(v20 + 40) = sub_1D4E4C894(off_1E84C0348, &selRef_isUpdateInProgressDidChangeNotificationName, &OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  swift_allocObject();
  swift_weakInit();
  v21 = sub_1D56120C8();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = sub_1D56120D8();
  v25 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_notificationCoalescer);
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_notificationCoalescer) = v24;

  v26 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();

  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v27;
  sub_1D51ECB60(0, 0, v6, &unk_1D5668BB0, v28);

  return v2;
}

uint64_t sub_1D4E4AF0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_0@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{

  return sub_1D4E7661C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_1D5614D18();
}

char *OUTLINED_FUNCTION_5_13(uint64_t a1)
{
  v5 = *(a1 + 48);
  v6 = *(v4 - 192);
  *v6 = v2;
  v6[1] = v1;
  v7 = v6;
  v8 = *(v3 + 32);
  result = v7 + v5;
  v10 = *(v4 - 256);
  return result;
}

void OUTLINED_FUNCTION_5_15()
{
  *(v1 - 208) = *(v0 + 72);
  v2 = *(v1 - 312) + 16;
  v3 = *(v1 - 144) + 32;
}

uint64_t OUTLINED_FUNCTION_44_0@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_1D560C8F8();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_5_20()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_21()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_26()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

double OUTLINED_FUNCTION_5_28()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_29()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t OUTLINED_FUNCTION_5_34()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_1D5616018();
}

__n128 OUTLINED_FUNCTION_5_35()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

void OUTLINED_FUNCTION_5_36()
{

  sub_1D4EFFE00();
}

uint64_t OUTLINED_FUNCTION_5_38(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_53()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_54()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_5_55@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_57(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1D560C0A8();
}

void OUTLINED_FUNCTION_5_58()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_59()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_67()
{
  *(v3 - 120) = v1;
  v4 = *(v2 + 8);
  result = v0;
  v6 = *(v3 - 136);
  return result;
}

void OUTLINED_FUNCTION_5_70()
{
  v0[50] = 0;
  v0[55] = 0;
  v0[56] = 0;
  v0[58] = 0;
  v0[60] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

uint64_t OUTLINED_FUNCTION_5_71()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_10_4()
{
  **(v0 + 40) = 1;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_74()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_76(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_5_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *(v15 + 16) = v16;
  v19 = v15 + 80 * v14;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  result = a11;
  *(v19 + 96) = a14;
  *(v19 + 64) = a12;
  *(v19 + 80) = a13;
  *(v19 + 48) = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_5_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_85()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_5_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_92(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_93@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 72) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_95()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_97(uint64_t a1)
{
  *(a1 + 8) = sub_1D52C0638;
  v2 = v1[116];
  v3 = v1[115];
  return v1[93];
}

void OUTLINED_FUNCTION_5_99()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_104()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_105(uint64_t result)
{
  *(result + 8) = sub_1D5303624;
  v2 = *(v1 + 384);
  v3 = *(v1 + 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_108()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_111()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_112()
{

  return sub_1D5610088();
}

void OUTLINED_FUNCTION_5_116()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_5_117()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_5_118()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_5_120()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_124(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_5_128()
{
  v1 = *(v0 - 224);
  *(v0 - 144) = *(v0 - 232);
  *(v0 - 136) = v1;
}

uint64_t OUTLINED_FUNCTION_5_129()
{
}

uint64_t OUTLINED_FUNCTION_5_131()
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_5_133()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_5_134()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_136()
{
  *(v3 - 132) = v2;
  *(v3 - 128) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_137(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  return a11;
}

uint64_t OUTLINED_FUNCTION_5_140@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_143()
{

  return sub_1D5616168();
}

__n128 OUTLINED_FUNCTION_5_144()
{
  *(v0 + 16) = v1;
  v4 = v0 + 80 * v2;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  result = *(v3 + 304);
  v6 = *(v3 + 320);
  v7 = *(v3 + 336);
  *(v4 + 96) = *(v3 + 352);
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  *(v4 + 48) = result;
  *(v4 + 104) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_146(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *a2 = a13;
  *(a2 + 4) = v14;
  *(a2 + 8) = v13;
}

double OUTLINED_FUNCTION_5_153(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2 + *v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_5_155()
{
  *(v1 - 88) = v0;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_156()
{

  return type metadata accessor for MusicLibraryMapping.ItemContent();
}

double OUTLINED_FUNCTION_5_158()
{
  *(v0 - 144) = 0;
  result = 0.0;
  v2 = v0 - 224;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_160@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_5_161(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return sub_1D55D6508(&a33, &a15);
}

void OUTLINED_FUNCTION_5_164()
{
  *(v0 - 72) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_165()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_166()
{

  return sub_1D560BE88();
}

uint64_t OUTLINED_FUNCTION_5_167()
{

  return swift_once();
}

id getMPCloudControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCloudControllerClass_softClass;
  v7 = getMPCloudControllerClass_softClass;
  if (!getMPCloudControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCloudControllerClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCloudControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4E4C290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr;
  if (!getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification");
    getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPCloudControllerIsUpdateInProgressDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr;
  if (!getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPCloudControllerIsUpdateInProgressDidChangeNotification");
    getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPCloudServiceStatusControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_15();
  result = objc_getClass("MPCloudServiceStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCloudServiceStatusControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCloudServiceStatusControllerClass_block_invoke_cold_1();
    return getMPCloudServiceStatusControllerClass(v3);
  }

  return result;
}

id getMPCloudServiceStatusControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCloudServiceStatusControllerClass_softClass;
  v7 = getMPCloudServiceStatusControllerClass_softClass;
  if (!getMPCloudServiceStatusControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCloudServiceStatusControllerClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCloudServiceStatusControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4E4C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr;
  if (!getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_15();
    v6[3] = dlsym(v1, "MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification");
    getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *sub_1D4E4C80C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D28, &qword_1D563C2B0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[2] = sub_1D560C858();
  v6 = sub_1D560F628();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1D560F618();
  v1[5] = 0;
  v1[6] = 0;
  v1[3] = a1;
  v1[4] = v9;
  return v1;
}

uint64_t sub_1D4E4C894(uint64_t *a1, SEL *a2, void *a3)
{
  v7 = [objc_opt_self() defaultCenter];
  v8 = *a1;
  v9 = [objc_opt_self() *a2];
  v10 = *(v3 + *a3);
  v11 = sub_1D56157E8();

  return v11;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_1D5615E08();
}

_OWORD *OUTLINED_FUNCTION_18_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v13 = (*(a10 + 56) + 32 * v11);

  return sub_1D4E519A8(v13, &a11);
}

uint64_t OUTLINED_FUNCTION_18_9()
{
  v2 = *(v0 - 160);

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_18_10()
{
  v7 = *(v5 - 304) + v3;

  return sub_1D4F1C460(v7, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return sub_1D5615658();
}

void *OUTLINED_FUNCTION_18_15()
{
  v3 = *(v2 - 216);
  *v3 = v0;
  v3[1] = v1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_18_19(uint64_t result, uint64_t a2)
{
  *(v2 - 104) = result;
  *(v2 - 96) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_18_25()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_18_26()
{
  *(v3 - 104) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v2 = *(v0 - 208);

  return sub_1D5615F18();
}

unint64_t OUTLINED_FUNCTION_18_32(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;
  *(v2 - 136) = 10;
  *(v2 - 128) = 0xE100000000000000;
  *(v2 - 152) = 2105354;
  *(v2 - 144) = 0xE300000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_18_34()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_18_35@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 104);
  v5 = *(v1 - 96);

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return sub_1D50B6A1C(v0, type metadata accessor for UploadedVideoPropertyProvider);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_12_8()
{
  v2 = *(v0 - 136);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_18_39@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*(a1 - 256) + 20);

  return sub_1D5610D28();
}

uint64_t OUTLINED_FUNCTION_18_40()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_43()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  v4 = *(v0 - 112);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_18_48()
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_18_49()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  JUMPOUT(0x1DA6EAC70);
}

__n128 OUTLINED_FUNCTION_18_52@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  result = a11;
  *(a1 + 96) = a14;
  *(a1 + 64) = a12;
  *(a1 + 80) = a13;
  *(a1 + 48) = a11;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_53()
{

  return type metadata accessor for MusicSuggestedPivotContainer();
}

uint64_t OUTLINED_FUNCTION_18_55()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_18_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_60()
{

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_18_67()
{

  sub_1D51D2AD0(v4, v3, v2, v1, v0, v5);
}

uint64_t OUTLINED_FUNCTION_18_68()
{
  v1 = v0[111];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = *(v0[88] + 32);
  return v0[89];
}

uint64_t OUTLINED_FUNCTION_21_5@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_70()
{
  v1 = *(*(v0 - 136) + 32);
  result = *(v0 - 144);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_73()
{

  return sub_1D4F7B054(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_75()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 128);

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_18_77()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_18_79(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_80()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  return 0;
}

void OUTLINED_FUNCTION_18_82()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_18_85()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[29];
  return v0[38];
}

uint64_t OUTLINED_FUNCTION_18_91()
{
  result = *(v0 - 304);
  v2 = *(v0 - 312);
  v3 = *(v0 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_92@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1 - a1;

  return sub_1D560C368();
}

uint64_t OUTLINED_FUNCTION_18_94(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v5 = *(v4 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_95()
{
  v2 = *(v1 - 224);
  v3 = *(*(v1 - 232) + 8);
  return v0;
}

uint64_t *OUTLINED_FUNCTION_18_96(uint64_t *result)
{
  v2 = v1[13];
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[8];
  v6 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_97()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_1D5616018();
}

unint64_t sub_1D4E4D51C()
{
  result = qword_1EDD5D038;
  if (!qword_1EDD5D038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD5D038);
  }

  return result;
}

uint64_t sub_1D4E4D560()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_91(v5);

  return sub_1D4E4DC9C(v6, v7, v8, v9);
}

BOOL sub_1D4E4D5FC()
{
  v0 = [swift_getObjCClassFromMetadata() processInfo];
  v1 = [v0 environment];

  v2 = sub_1D5614BB8();
  sub_1D4E504AC(0xD000000000000010, 0x80000001D56878D0, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_1D4E4D6C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D4E6F808;

  return v6(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_59_6(uint64_t result)
{
  v2 = result ^ *(v1 - 168);
  v3 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_55_0()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_59_11@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 32);
  v4 = *(a1 - 16);

  return sub_1D560E678();
}

uint64_t OUTLINED_FUNCTION_59_12()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_59_20()
{
  v2 = *(v0 - 288);
}

void OUTLINED_FUNCTION_59_21(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_59_24(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 800);
  v5 = *(v2 + 584);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_28()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_32()
{

  return sub_1D545D148();
}

uint64_t OUTLINED_FUNCTION_59_33(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[6];
  v5 = v2[3];
  v6 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_59_34()
{

  return _s15InternalStorageVMa_0();
}

uint64_t OUTLINED_FUNCTION_59_36(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  v5 = *(v4 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_59_38()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_59_39()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1D4E4DBD0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D4E6F360;

    return sub_1D4E50414();
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v4();
  }
}

uint64_t sub_1D4E4DC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D4E4DBD0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_13()
{
  *(v0 + 16) = *(v0 + 48);
  v1 = *(v0 + 184);
  v2 = *(v0 + 208);
  v3 = *(v0 + 40);
  *(v0 + 24) = *(v0 + 56);
  return 0;
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1)
{

  return sub_1D4E50004(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_18()
{
  v1 = **(v0 - 168);
  v2 = *(v0 - 144);
  return *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1D4F3FF18;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_12_21()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_1D5615BF8();
}

uint64_t OUTLINED_FUNCTION_39_1@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_12_30()
{
  v2 = *(v1 - 96) | ((*(v1 - 92) | (*(v1 - 90) << 16)) << 32);
  *v0 = *(v1 - 104);
  v0[1] = v2;
}

uint64_t OUTLINED_FUNCTION_12_31@<X0>(char a1@<W8>)
{
  *(v2 - 128) = a1;
  result = v1;
  v4 = *(v2 - 304);
  v5 = *(v2 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_33()
{
  sub_1D4E519A8((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return *(a1 + 16);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1)
{

  return sub_1D4E7661C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_36()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_40()
{
  v2 = *(v1 - 224);
  v3 = *(*(v1 - 216) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_42()
{

  return sub_1D4E6835C(v0, v1, (v2 - 168));
}

void OUTLINED_FUNCTION_12_43(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
}

void OUTLINED_FUNCTION_12_45(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2 + a1;
  *v3 = a2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_12_48()
{

  return sub_1D5613D28();
}

uint64_t OUTLINED_FUNCTION_12_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_53()
{
  v2 = *(v0 + 48);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_54(unint64_t *a1)
{

  return sub_1D517FCAC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_57()
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_12_58@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_59()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_12_63()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_12_67()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 520);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_69(uint64_t a1, uint64_t a2)
{

  return __swift_getEnumTagSinglePayload(a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_12_70()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_71(unint64_t *a1)
{

  return sub_1D52A3BAC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_75()
{
  result = *(v0 - 200);
  v2 = *(v0 - 256);
  v3 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_76()
{

  return sub_1D560CE08();
}

void OUTLINED_FUNCTION_12_78()
{
  v2[12] = sub_1D5341F94;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_12_79(unint64_t *a1)
{

  return sub_1D534F400(a1, v1);
}

void *OUTLINED_FUNCTION_12_80(uint64_t a1)
{
  *(a1 + 8) = sub_1D5352988;
  v5 = v2[57];
  v6 = v2[55];
  v7 = v2[53];
  v8 = v2[47];
  v9 = v2[48];
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return v2 + 37;
}

uint64_t OUTLINED_FUNCTION_12_82()
{
  result = *(v0 - 144);
  v2 = *(*(v0 - 152) + 8);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_83()
{

  return sub_1D56101C8();
}

uint64_t OUTLINED_FUNCTION_12_85@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_87(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[16];
  result = v2[13];
  v5 = v2[14];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_92()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_12_93()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_94(unint64_t *a1)
{

  return sub_1D5446EDC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_97()
{
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[34];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[27];
}

uint64_t OUTLINED_FUNCTION_12_98()
{

  return sub_1D56160C8();
}

uint64_t OUTLINED_FUNCTION_12_99()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_100()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_12_101()
{

  sub_1D4F0029C();
}

uint64_t OUTLINED_FUNCTION_12_104(uint64_t result)
{
  *(v1 - 136) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_106@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[54];
  v6 = v1[51];
  v5 = v1[52];
  v8 = v1[47];
  v7 = v1[48];
  v9 = v1[46];
  v11 = v1[42];
  v10 = v1[43];
  v12 = v1[41];
  v13 = v1[38];
  v16 = v1[37];
  v17 = v1[36];
  v18 = v1[33];
  v19 = v1[32];
  v20 = v1[31];
  v21 = v1[28];
  v22 = v1[27];
  v23 = v1[26];
  v24 = v1[23];
  v25 = v1[22];
  v14 = v1[21];
  v26 = v1[18];
}

unint64_t OUTLINED_FUNCTION_12_108(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;
  *(v2 - 136) = 10;
  *(v2 - 128) = 0xE100000000000000;
  *(v2 - 152) = 2105354;
  *(v2 - 144) = 0xE300000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_12_109(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_12_110()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_112()
{
  *(v0 - 464) = 0;
  *(v0 - 432) = 0;
  *(v0 - 440) = 0;
  *(v0 - 328) = 0;
  *(v0 - 448) = 0;
  *(v0 - 336) = 0;
  *(v0 - 456) = 0;
}

uint64_t OUTLINED_FUNCTION_12_114()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_12_116()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_117()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[39];
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_53_7(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_53_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  *(v12 + 161) = a12;

  return sub_1D56153C8();
}

uint64_t OUTLINED_FUNCTION_53_19()
{

  return sub_1D5615828();
}

uint64_t OUTLINED_FUNCTION_53_20()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_1D4EFF7D0(v3);
}

uint64_t OUTLINED_FUNCTION_53_21()
{
  v4 = *(v2 - 144);

  return sub_1D4E50004(v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_22@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(*(v2 + 712) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_23()
{
  *(v2 - 136) = 0;
  *(v2 - 128) = 0xE000000000000000;
  v3 = *(v0 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_53_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_27()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 97);
}

uint64_t OUTLINED_FUNCTION_53_28()
{
  v4 = *(v1 + 840);
  v5 = *(v1 + 800);

  return sub_1D52CB1F8(v4, v5, v0, v2);
}

void OUTLINED_FUNCTION_139()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_53_33(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 240);
  v5 = *(v3 + 224);
  return v2;
}

unint64_t sub_1D4E4EFA0()
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  sub_1D5616328();
  v0 = OUTLINED_FUNCTION_61();

  return sub_1D4E4F548(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_0()
{
}

uint64_t OUTLINED_FUNCTION_157_0()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_46_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_1D5615968();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_52_16()
{
  v2 = *(v1 + 128);
  v3 = *(*(v1 + 136) + 32);
  return v0;
}

uint64_t *OUTLINED_FUNCTION_8_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_52_17()
{

  return sub_1D51370C8(v0, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
}

uint64_t OUTLINED_FUNCTION_52_18()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_52_19()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_52_20(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6].n128_u64[0] = v4;
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_52_23()
{

  return sub_1D560C4C8();
}

uint64_t OUTLINED_FUNCTION_52_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_28()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 97) & 1;

  return sub_1D51D29D8(v4, v5, v2, v3, v7);
}

uint64_t OUTLINED_FUNCTION_52_30()
{
  v4 = *(v1 + 168);
  *(v0 + 136) = v2 + 1;

  return sub_1D552E500();
}

uint64_t OUTLINED_FUNCTION_52_31(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[55] = a3;
  v4[56] = v3;
  v4[53] = result;
  v4[54] = a2;
  v5 = *(a2 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_33()
{
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  *(v2 + 16) = v1;
  v9 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v4;

  return sub_1D53F74C8(v7, v9, type metadata accessor for GenericMusicItem);
}

uint64_t OUTLINED_FUNCTION_52_34(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 312);
  v4 = *(v2 + 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_39()
{
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];

  return sub_1D4E5A1CC();
}

uint64_t OUTLINED_FUNCTION_52_41()
{

  return type metadata accessor for CloudEditorialItem(0);
}

unint64_t sub_1D4E4F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D5616168() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 344);

  return sub_1D4ED1434(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1D5610708();
}

uint64_t OUTLINED_FUNCTION_70_2()
{
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_30_15()
{

  return type metadata accessor for MusicRequestConfiguration();
}

uint64_t OUTLINED_FUNCTION_30_18()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 136);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 160, v3);
}

uint64_t OUTLINED_FUNCTION_30_21()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_30_23@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1D4E69910(a1, v5, v2, v3);
}

void OUTLINED_FUNCTION_30_26()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_30_28()
{
  v2 = *(v0 + 72);

  return sub_1D4E58568(v2, type metadata accessor for MusicRequestConfiguration);
}

uint64_t OUTLINED_FUNCTION_30_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_31()
{
}

void OUTLINED_FUNCTION_23_6()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_30_32(unint64_t *a1)
{

  return sub_1D4E73624(a1, v1);
}

void OUTLINED_FUNCTION_30_35()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_30_36()
{
  *(v0 + 16) = v1;
  v4 = v0 + 80 * v2;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0xE300000000000000;
}

uint64_t OUTLINED_FUNCTION_30_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_41@<X0>(uint64_t a1@<X8>)
{
  result = *(*(v1 - 104) + a1);
  v3 = *(*(v1 - 96) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_43@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_44()
{
}

uint64_t OUTLINED_FUNCTION_30_49()
{

  return sub_1D5615B98();
}

uint64_t OUTLINED_FUNCTION_30_50()
{

  return sub_1D56160F8();
}

uint64_t OUTLINED_FUNCTION_30_56()
{
  v2 = *(v0 - 448);
}

uint64_t OUTLINED_FUNCTION_30_58()
{
  v2 = *(v0 - 112);

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_30_59()
{

  return swift_once();
}

void OUTLINED_FUNCTION_30_60()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
}

uint64_t OUTLINED_FUNCTION_30_63()
{

  return sub_1D4F39AB0(v0, v0 + 32, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_64()
{

  return sub_1D5616458();
}

uint64_t OUTLINED_FUNCTION_30_65(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 216);
  v5 = *(v3 + 200);
  return v2;
}

uint64_t OUTLINED_FUNCTION_30_67@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 152);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_68()
{
  v4 = *(v0 + 600);
  v3 = *(v0 + 592);

  return sub_1D5614E98();
}

char *OUTLINED_FUNCTION_30_71(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_30_72(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 176);

  return sub_1D4EC76A8(v4, a2);
}

uint64_t OUTLINED_FUNCTION_30_74(unint64_t *a1)
{

  return sub_1D4E74E6C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_30_76()
{

  return swift_once();
}

unint64_t sub_1D4E4FE5C()
{
  result = qword_1EDD5D698;
  if (!qword_1EDD5D698)
  {
    _s19SyncProgressMonitorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D698);
  }

  return result;
}

Class __getMPCloudControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPCloudController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCloudControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCloudControllerClass_block_invoke_cold_1();
    return sub_1D4E50004(v3);
  }

  return result;
}

uint64_t sub_1D4E50004(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E5005C()
{
  v0 = sub_1D560CD48();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D560D3F8();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1D4E4D51C();
  if (sub_1D4E4D5FC())
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v18 = sub_1D560C758();
    v19 = __swift_project_value_buffer(v18, qword_1EDD76DE0);
    v20 = sub_1D560C738();
    v21 = sub_1D56156E8();
    if (!OUTLINED_FUNCTION_6_18(v21))
    {
      goto LABEL_18;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Testing environment detected while initializing the MusicLibrary. Skipping framework logic to provide downloaded item snapshots automatically.";
    goto LABEL_17;
  }

  v24 = [objc_opt_self() mainBundle];
  v25 = sub_1D5615818();

  if ((v25 & 1) == 0)
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v28 = sub_1D560C758();
    v19 = __swift_project_value_buffer(v28, qword_1EDD76DE0);
    v20 = sub_1D560C738();
    v29 = sub_1D56156E8();
    if (!OUTLINED_FUNCTION_6_18(v29))
    {
      goto LABEL_18;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Non-Music app detected while initializing the MusicLibrary, will not provide downloaded item snapshots automatically.";
    goto LABEL_17;
  }

  sub_1D560D3C8();
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v26 = sub_1D560D3E8();
  (*(v3 + 8))(v8, v0);
  (*(v12 + 8))(v17, v9);
  if (v26)
  {
    return 1;
  }

  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v30 = sub_1D560C758();
  v19 = __swift_project_value_buffer(v30, qword_1EDD76DE0);
  v20 = sub_1D560C738();
  v31 = sub_1D56156E8();
  if (OUTLINED_FUNCTION_6_18(v31))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "MusicKit/alchemy FF is not enabled, will not provide downloaded item snapshots automatically.";
LABEL_17:
    _os_log_impl(&dword_1D4E3F000, v20, v19, v23, v22, 2u);
    MEMORY[0x1DA6ED200](v22, -1, -1);
  }

LABEL_18:

  return 0;
}

uint64_t sub_1D4E50384()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D4E50414()
{
  *(v1 + 24) = v0;
  sub_1D56153C8();
  *(v1 + 32) = sub_1D56153B8();
  v3 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4E6E578, v3, v2);
}

uint64_t sub_1D4E504AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_1D4E4EFA0();
    if (v4)
    {
      OUTLINED_FUNCTION_31_9(v3);
    }
  }

  return OUTLINED_FUNCTION_71();
}

double OUTLINED_FUNCTION_24_6()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_6()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_64_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_41_1()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_64_8()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_64_12()
{

  return sub_1D56151F8();
}

uint64_t OUTLINED_FUNCTION_64_17(uint64_t a1)
{

  return sub_1D4F39A1C(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_64_20(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = 0x8000000000000000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_64_21()
{
  v5 = *v1;
  v6 = v2[3];
  v2[4] = v3;
  v2[5] = v0;
}

uint64_t OUTLINED_FUNCTION_64_22(uint64_t result)
{
  *(v3 - 128) = v2;
  *(v3 - 72) = v1;
  *(v3 - 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_24()
{

  return sub_1D560D9F8();
}

uint64_t OUTLINED_FUNCTION_64_25()
{
  v2 = *(v0 - 104);

  return sub_1D56160C8();
}

uint64_t OUTLINED_FUNCTION_64_30(uint64_t result)
{
  *(result + 8) = sub_1D53EC1B0;
  v2 = *(v1 + 160);
  v3 = *(v1 + 144);
  return result;
}

void OUTLINED_FUNCTION_64_31(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 384);

  sub_1D5426514();
}

uint64_t OUTLINED_FUNCTION_64_32()
{

  return sub_1D52F8A78(1, v0);
}

uint64_t OUTLINED_FUNCTION_64_33()
{
}

uint64_t OUTLINED_FUNCTION_64_34()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);

  return sub_1D55078C8(v2, v3, v4);
}

void *sub_1D4E508DC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MusicRequestConfiguration();
  a1[4] = sub_1D4E48388();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1D4E483E0();
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[5];
  v3 = v0[6];
  return 0;
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t result)
{
  *(v1 - 176) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_26_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_10()
{
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_1D5614898();
}

uint64_t OUTLINED_FUNCTION_26_13()
{
  v2 = v0[24];
  result = v0[25];
  v3 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_18()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_23()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));
  v2 = *(v0 - 184);

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_26_28()
{
  sub_1D4E519A8((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_26_30@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_32@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t *OUTLINED_FUNCTION_26_33(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v1);
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void OUTLINED_FUNCTION_26_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_26_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_26_43()
{
  v2 = *(v0 + 40);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_49(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 168);

  return sub_1D52368BC(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_26_50()
{

  return sub_1D524E6A8(v0, type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation);
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v7 = *(v5 - 96) + v3;

  return sub_1D4F1C460(v7, v4 + v2, v0, v1);
}

double OUTLINED_FUNCTION_26_51@<D0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_55()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_26_56()
{
  v1 = v0[111];
  result = v0[93];
  v3 = v0[91];
  v4 = v0[90];
  v5 = *(v0[92] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_57()
{
  result = v0;
  v3 = *(v1 - 112);
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_58()
{
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_26_69()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_70()
{
  v5 = v0[8];
  v3 = v0[5];
  *(v1 - 88) = v0[7];
  *(v1 - 80) = v3;
}

uint64_t OUTLINED_FUNCTION_15_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_74()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_77()
{
  sub_1D55078C8(v3, *(v4 - 152), *(v4 - 136));

  return sub_1D55078C8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_26_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_79(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 2082;
  *(v1 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_81(unint64_t *a1)
{

  return sub_1D55597C4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_26_84()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_26_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_87()
{
  *(v1 - 600) = v0;

  return sub_1D4E48324((v1 - 176), v1 - 128);
}

uint64_t sub_1D4E51274(char a1)
{
  if (!a1)
  {
    return 4804673;
  }

  if (a1 == 1)
  {
    return 6775106;
  }

  return 0x6F44746E65746E49;
}

_BYTE *storeEnumTagSinglePayload for ClientInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D4E51394);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4E51404()
{
  result = qword_1EDD5DC98;
  if (!qword_1EDD5DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC98);
  }

  return result;
}

unint64_t sub_1D4E51458()
{
  result = qword_1EDD5DCA0;
  if (!qword_1EDD5DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientInfo.IntentDonation.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1D4E515B4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4E515DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for MusicRequestConfiguration()
{
  result = qword_1EDD5B4D8;
  if (!qword_1EDD5B4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4E51668()
{
  sub_1D4E518A0(319, qword_1EDD54888);
  if (v0 <= 0x3F)
  {
    sub_1D4E517E8();
    if (v1 <= 0x3F)
    {
      sub_1D4E5184C(319, &qword_1EDD5CF38, MEMORY[0x1E6969BC0]);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD5F070);
        if (v3 <= 0x3F)
        {
          sub_1D4E5184C(319, &qword_1EDD5F558, MEMORY[0x1E6974EF8]);
          if (v4 <= 0x3F)
          {
            sub_1D4E518A0(319, qword_1EDD55F90);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D4E517E8()
{
  if (!qword_1EDD527F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE568, &qword_1D562B680);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD527F0);
    }
  }
}

void sub_1D4E5184C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D4E518A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D56158D8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1D4E5194C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1D4E519A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[8];
  v10 = v0[21];

  return MEMORY[0x1EEDCED68](1, 0, v10);
}

void OUTLINED_FUNCTION_118()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_13()
{
  v1[12] = sub_1D4F40510;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_10_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_1D5613AF8();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1D56140F8();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_1D4E7661C(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return sub_1D4E69910(v2, v1, v0, v3);
}

void OUTLINED_FUNCTION_10_24()
{
  v1 = *(v0 - 132);
  v2 = *(v0 - 112);
  v3 = *(v0 - 168);
}

uint64_t OUTLINED_FUNCTION_10_28()
{
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[64];
  v6 = v0[63];
}

void OUTLINED_FUNCTION_10_30()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_10_32()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return sub_1D4E584B8(v0, type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest);
}

void OUTLINED_FUNCTION_10_39()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_41@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8);
  *(v2 - 112) = v1;
  *(v2 - 104) = v1;
  *(v2 - 96) = v1;
  *(v2 - 88) = v4;

  return sub_1D560F168();
}

uint64_t OUTLINED_FUNCTION_10_45(unint64_t *a1)
{

  return sub_1D507118C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_48()
{
  v2 = *(v0 - 280);

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_10_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_51()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = *(v1 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_53()
{
  v2 = *(v0 - 160);

  return sub_1D4EC76A8(v2, v0 - 136);
}

void OUTLINED_FUNCTION_10_57()
{
  *(v0 - 164) = 1;
  *(v0 - 160) = 1;
  *(v0 - 152) = 1;
}

uint64_t OUTLINED_FUNCTION_10_59@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 96) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_10_60()
{
  v5 = *(v3 - 216);

  return sub_1D4EF21B4(v5, v2, v1, v0, 1);
}

uint64_t OUTLINED_FUNCTION_10_61()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_10_62()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_10_67@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  return v2;
}

__n128 OUTLINED_FUNCTION_10_68@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_71()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_74()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_10_78()
{
  v2 = v0[17];
  *(v1 - 112) = v0[19];
  *(v1 - 104) = v2;
  v3 = v0[13];
  *(v1 - 96) = v0[14];
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_10_81()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  v2 = *(v0 - 344);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_10_87()
{
  *(v0 + 8) = sub_1D52EA834;
  v2 = v1[29];
  v3 = v1[25];
  return v1[11];
}

uint64_t OUTLINED_FUNCTION_10_88@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_10_89()
{
  v2 = *(v0 - 136);

  return sub_1D5615F78();
}

double OUTLINED_FUNCTION_10_92()
{
  *(v0 - 256) = 0;
  result = 0.0;
  *(v0 - 272) = 0u;
  *(v0 - 288) = 0u;
  return result;
}

void OUTLINED_FUNCTION_10_94()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_95()
{
  v2 = *(v0 + 72);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_96()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_10_97()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_100()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_101()
{
  v2 = *(*(v1 - 416) + 8);
  result = v0;
  v4 = *(v1 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_103()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_112()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_10_113()
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_10_115()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_117()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_118()
{
  result = v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_121()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_122(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_10_126()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_10_132()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_133()
{
  v2 = *(*(v1 - 392) + 8);
  result = v0;
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_134()
{

  return sub_1D55C46FC();
}

uint64_t OUTLINED_FUNCTION_10_139()
{
  v1 = v0[5];
  result = v0[2];
  v3 = *(v0[6] + 32);
  return result;
}

unint64_t sub_1D4E528D0()
{
  result = qword_1EDD5DCB0;
  if (!qword_1EDD5DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCB0);
  }

  return result;
}

unint64_t sub_1D4E52928()
{
  result = qword_1EDD5DCB8;
  if (!qword_1EDD5DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCB8);
  }

  return result;
}

unint64_t sub_1D4E5297C()
{
  result = qword_1EDD5DCC0;
  if (!qword_1EDD5DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCC0);
  }

  return result;
}

unint64_t sub_1D4E529D0()
{
  result = qword_1EDD5DC88;
  if (!qword_1EDD5DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 208);
  return result;
}

void OUTLINED_FUNCTION_6_12()
{
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[32];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[10];
  v10 = v0[7];
  *(v1 - 96) = v0[9];
  *(v1 - 88) = v10;
  v11 = v0[2];
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_6_18(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

char *OUTLINED_FUNCTION_6_21(uint64_t a1)
{
  v5 = *(a1 + 48);
  v6 = *(v4 - 128);
  *v6 = v1;
  v6[1] = v2;
  v7 = v6;
  v8 = *(v3 + 32);
  result = v7 + v5;
  v10 = *(v4 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_146_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[22];
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_6_30(unint64_t *a1)
{

  return sub_1D4FBE4DC(a1, v1);
}

void OUTLINED_FUNCTION_6_31()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_6_34()
{
  *(v0 - 208) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_6_41(unint64_t *a1)
{

  return sub_1D50416C4(a1, v1);
}

void OUTLINED_FUNCTION_6_42(uint64_t a1@<X8>)
{
  v5 = *v3;
  v6 = *(*(v1 + 8) + 8);
  *(v4 - 112) = a1;
  *(v4 - 104) = v5;
  *(v4 - 96) = v2;
  *(v4 - 88) = v6;
}

uint64_t OUTLINED_FUNCTION_6_44(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_6_48()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_51()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_6_53()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_54()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_6_56()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_59()
{

  return sub_1D5616068();
}

void OUTLINED_FUNCTION_6_62()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 216);

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_6_70()
{
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  sub_1D51994A8();
}

uint64_t OUTLINED_FUNCTION_6_76()
{

  return sub_1D5222DC0(v0, type metadata accessor for CloudMarketingItem.Relationships);
}

uint64_t OUTLINED_FUNCTION_6_79()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_81()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_84()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_6_89()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_6_91()
{
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v10 = v0[16];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];

  return sub_1D5615458();
}

uint64_t OUTLINED_FUNCTION_6_92()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_94(uint64_t a1)
{
  *(a1 + 8) = sub_1D52C288C;
  v2 = *(v1 + 928);
  v3 = *(v1 + 920);
  return v1 + 368;
}

uint64_t OUTLINED_FUNCTION_6_97()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_100()
{

  return sub_1D5615568();
}

uint64_t OUTLINED_FUNCTION_6_103@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 136);
  v4 = *(v1 - 152);
  v5 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_108()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_6_111()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_6_114()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_6_120()
{

  return sub_1D53A46F4();
}

void OUTLINED_FUNCTION_6_121()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_6_124()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_6_127()
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_6_128()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
}

uint64_t OUTLINED_FUNCTION_6_129()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_130(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_132()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_135(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2;
}

uint64_t OUTLINED_FUNCTION_6_137()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_6_138()
{

  JUMPOUT(0x1DA6EAC70);
}

BOOL OUTLINED_FUNCTION_6_141()
{
  result = *(v0 + 72) == 0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_144@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_147()
{

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_6_149()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_155(unint64_t *a1)
{

  return sub_1D5529598(a1);
}

uint64_t OUTLINED_FUNCTION_6_158()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_162()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_6_163()
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_6_165@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_166()
{
  v1 = *(v0 - 496);
  v2 = *(*(v0 - 384) + 32);
  return *(v0 - 568);
}

uint64_t OUTLINED_FUNCTION_6_167(uint64_t a1)
{
  v6 = v3[42];
  v5 = v3[43];
  v7 = v3[39];
  v8 = v3[36];

  return MEMORY[0x1EEDCE5F8](v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_168()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_169()
{

  return sub_1D5615F18();
}

uint64_t getEnumTagSinglePayload for MusicSiriItemRequest.Error.ItemNotFoundReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1D4E53BD8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v26 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_4(v8);
  v25 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v17 = v25;
    v16 = v26;
    v18 = sub_1D5615F98();
    v20 = v19;
    v21 = sub_1D5615F98();
    v23 = v22;
    v24 = *(v17 + 8);
    v25 = v21;
    v24(v14, v8);
    *v16 = v18;
    v16[1] = v20;
    v16[2] = v25;
    v16[3] = v23;

    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4E53DE0(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726556;
  }

  else
  {
    return 0x696669746E656449;
  }
}

_BYTE *sub_1D4E53E24(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D4E53EF0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1D4E53F68()
{
  result = qword_1EDD5DC68;
  if (!qword_1EDD5DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC68);
  }

  return result;
}

unint64_t sub_1D4E53FC0()
{
  result = qword_1EDD5DC80;
  if (!qword_1EDD5DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC80);
  }

  return result;
}

uint64_t sub_1D4E5401C(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726556;
  }

  else
  {
    return 0x656C69666F7250;
  }
}

void *sub_1D4E5404C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F60E8, &qword_1D5662238);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4E54278();
  sub_1D5616398();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6038, &qword_1D56618C0);
    sub_1D4E4A9E0(&unk_1EDD52860, sub_1D4E55558);
    sub_1D5615FD8();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

void *sub_1D4E541F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D4E5404C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D4E54224()
{
  result = qword_1EDD58A90;
  if (!qword_1EDD58A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58A90);
  }

  return result;
}

unint64_t sub_1D4E54278()
{
  result = qword_1EDD58A98;
  if (!qword_1EDD58A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58A98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_1D560C528();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_13@<X0>(uint64_t a1@<X8>)
{
  result = *(*(v1 - 312) + a1);
  v3 = *(*(v1 - 304) + a1);
  return result;
}

void OUTLINED_FUNCTION_4_14(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  sub_1D4F03BF4();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  v2 = *(v1 - 168);
  v3 = (*(v2 + 48) + 16 * v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v1 - 88);
  v7 = *(v2 + 56) + *(v6 + 72) * v0;
  v8 = *(v6 + 16);
  result = *(v1 - 96);
  v10 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  *(v2 - 128) = 10;
  *(v2 - 120) = 0xE100000000000000;
  *(v2 - 144) = 2105354;
  *(v2 - 136) = 0xE300000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1D560C8E8();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return sub_1D4F79F84(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return sub_1D5614E28();
}

void OUTLINED_FUNCTION_4_28()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_4_30()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return sub_1D5615F18();
}

__n128 OUTLINED_FUNCTION_4_34()
{
  v2 = *(v1 - 128);
  *(v0 + 80) = *(v1 - 144);
  *(v0 + 96) = v2;
  result = *(v1 - 112);
  *(v0 + 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_13_6(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = v2;
  return a2;
}

void OUTLINED_FUNCTION_4_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 504);
  v12 = *(v10 + 488);
  v13 = *(a10 + 480);
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_47@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 8) + 8);

  return sub_1D56150C8();
}

void *OUTLINED_FUNCTION_4_50@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  v4[1] = v2;
  v5 = *(v3 - 96);
  return __swift_project_boxed_opaque_existential_1((v3 - 128), *(v3 - 104));
}

void OUTLINED_FUNCTION_4_52()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_58()
{
  v2 = **(v1 - 152);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_4_60()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_4_66()
{
  v0[58] = 0;
  v0[60] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

uint64_t OUTLINED_FUNCTION_4_71@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - a1;
  v6 = *(v2 + 16);
  result = v5;
  *(v4 - 128) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_73()
{
  v2 = *(v0 - 256);

  return sub_1D5615D98();
}

__n128 OUTLINED_FUNCTION_4_74@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __n128 a4, __int128 a5, __int128 a6, uint64_t a7)
{
  result = a4;
  *(a1 + 96) = a7;
  *(a1 + 64) = a5;
  *(a1 + 80) = a6;
  *(a1 + 48) = a4;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_76(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_83()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_4_84()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_89()
{

  return sub_1D4E6835C(v0, v1, (v2 - 80));
}

void *OUTLINED_FUNCTION_4_90()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_4_94()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v14 = *(v10 + 112);
  *v14 = v12;
  *(v14 + 24) = a9;
  *(v14 + 8) = a10;
  *(v14 + 40) = v11;
  result = v13 + 8;
  v16 = *(v13 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_96(uint64_t a1)
{
  *(a1 + 8) = sub_1D52C1D60;
  v2 = v1[116];
  v3 = v1[115];
  v4 = v1[97];
  return v1[75];
}

void *OUTLINED_FUNCTION_4_98()
{

  return __swift_coroFrameAllocStub(v0);
}

void OUTLINED_FUNCTION_4_99()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_4_101()
{

  sub_1D4F0029C();
}

void OUTLINED_FUNCTION_4_102()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_4_103()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_107()
{

  return sub_1D5615298();
}

uint64_t OUTLINED_FUNCTION_4_112()
{
  v2 = *(v0 + 40);

  return sub_1D5615B68();
}

void OUTLINED_FUNCTION_4_113()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_115()
{

  return sub_1D5375870(v0, v1);
}

uint64_t OUTLINED_FUNCTION_4_116()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_4_118(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 120);

  return sub_1D4E6835C(v5, v2, (v3 - 72));
}

uint64_t OUTLINED_FUNCTION_4_120()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  return result;
}

void OUTLINED_FUNCTION_4_121()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_4_122()
{
  v2 = *(v0 + 16) + 1;

  sub_1D4EFF9AC();
}

void OUTLINED_FUNCTION_4_123()
{
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_4_124()
{
  v2 = *(v0 - 88);

  return sub_1D5610598();
}

void OUTLINED_FUNCTION_4_125()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_128@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 112);
  v4 = *(v1 - 104);

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_4_131()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_133()
{
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[23];
}

uint64_t OUTLINED_FUNCTION_4_135()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

void OUTLINED_FUNCTION_4_136()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_137@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1D5610708();
}

void OUTLINED_FUNCTION_4_138()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_4_144()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_145(uint64_t a1)
{
  *(a1 + 8) = sub_1D54E6150;
  v2 = *(v1 + 600);
  return v1 + 480;
}

uint64_t OUTLINED_FUNCTION_4_146(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 56);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_4_148()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_4_156()
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_4_161()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_163@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_4_167()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_168()
{

  return swift_once();
}

unint64_t sub_1D4E55558()
{
  result = qword_1EDD58AA0;
  if (!qword_1EDD58AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorePlatformPlaylistEntry.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1D4E5567C()
{
  result = qword_1EDD58AA8[0];
  if (!qword_1EDD58AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD58AA8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_10()
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_65_3(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_6()
{
  v1 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_19(unint64_t *a1)
{

  return sub_1D5038614(a1, v1);
}

uint64_t OUTLINED_FUNCTION_32_21()
{
  v2 = *(v0 - 112);

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_32_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_29()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[66];
}

uint64_t OUTLINED_FUNCTION_32_31(unint64_t *a1)
{

  return sub_1D4E74B10(a1, v1);
}

__n128 OUTLINED_FUNCTION_32_32()
{
  v2 = *(v0 + 48);
  result = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = result;
  *(v1 + 32) = v2;
  return result;
}

void OUTLINED_FUNCTION_32_35(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0x20455441445055;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_32_38()
{

  return swift_once();
}

void OUTLINED_FUNCTION_32_42()
{
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_32_43()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_32_44(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 832);
  v5 = *(v2 + 728);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_49@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_32_50()
{
  v2 = *(*(v1 - 264) + 32);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_51()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  v4 = *(v0 - 120);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_32_52()
{
  result = *(v0 - 328);
  v2 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_55(uint64_t a1)
{

  return sub_1D53F7258(a1, type metadata accessor for MusicItemTypedIdentifier);
}

uint64_t OUTLINED_FUNCTION_32_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
  v6 = *(v5 + 8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_32_59(uint64_t a1, uint64_t a2)
{
  v2[48] = v3;
  v2[49] = v4;
  v2[45] = a1;
  v2[46] = a2;

  return sub_1D4E628D4((v2 + 45), (v2 + 2));
}

void OUTLINED_FUNCTION_32_61()
{

  sub_1D4F152A8();
}

uint64_t OUTLINED_FUNCTION_32_62()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_32_63()
{

  return sub_1D5615FD8();
}

uint64_t OUTLINED_FUNCTION_32_66(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_32_70()
{

  return sub_1D560EC28();
}

uint64_t sub_1D4E55E1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal7AccountV4Kind33_4DC350382417CCA3AE2C16666D3F2A3DLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D4E55E98()
{
  v0 = sub_1D56129F8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D56129E8();
  swift_allocObject();
  swift_weakInit();

  sub_1D56129D8();

  sub_1D56129B8();
}

uint64_t sub_1D4E55F60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E55F98()
{
  v0 = type metadata accessor for MusicRequestConfiguration();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v27 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - v10;
  static MusicRequestConfiguration.globalDefault.getter(v9);
  v12 = [objc_opt_self() activeAccount];
  type metadata accessor for Account.UserIdentityWrapper();
  OUTLINED_FUNCTION_40_13();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  OUTLINED_FUNCTION_8_90();
  v14 = OUTLINED_FUNCTION_98();
  sub_1D52D3D4C(v14, v15, v16);
  v17 = v9[16];
  if (v17 == 255)
  {

    OUTLINED_FUNCTION_1_131();
    sub_1D4E58668(v9, v22);
  }

  else
  {
    v19 = *(v9 + 1);
    v29[0] = *v9;
    v18 = v29[0];
    v29[1] = v19;
    v30 = v17;
    v27[0] = v13;
    v27[1] = 0;
    v28 = 0;
    sub_1D4E58128(v29[0], v19, v17);
    v20 = static Account.== infix(_:_:)(v29, v27);
    OUTLINED_FUNCTION_1_131();
    sub_1D4E58668(v9, v21);

    if (v20)
    {
      sub_1D4EF2278(v18, v19, v17);
      v18 = 0;
      v19 = 0;
      LOBYTE(v17) = 2;
    }

    sub_1D4EF2278(*v6, *(v6 + 1), v6[16]);
    *v6 = v18;
    *(v6 + 1) = v19;
    v6[16] = v17;
  }

  type metadata accessor for MusicDownloadedSongCatalogStore();
  OUTLINED_FUNCTION_3_127();
  v23 = OUTLINED_FUNCTION_71();
  sub_1D52D3CF0(v23, v24, v25);
  result = sub_1D4E58938(v11);
  qword_1EDD5A0D0 = result;
  return result;
}

uint64_t static MusicRequestConfiguration.globalDefault.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1D560CD48();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1D560D308();
  sub_1D560CCE8();
  (*(v11 + 8))(v16, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v17 = type metadata accessor for MusicRequestConfiguration();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v17);
    return sub_1D4E56C6C(v7, a1);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
    sub_1D4E50004(v7, &qword_1EC7EA838, &unk_1D561CB10);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id OUTLINED_FUNCTION_21_7()
{
  v3 = *(v1 - 104);

  return sub_1D4F42FA4(v0, v3);
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 208);

  return sub_1D4ECE7D0(v3, v6, a3);
}