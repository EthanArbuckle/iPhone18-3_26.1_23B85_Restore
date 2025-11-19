__n128 sub_22BE17938(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22BE1798C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BE17A28()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE17A58(uint64_t a1)
{
  *(a1 + 8) = sub_22BE77770;
  v2 = *(v1 + 456);
  v3 = *(v1 + 440);
  return v1 + 288;
}

uint64_t sub_22BE17A94()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22BE17B78()
{

  return swift_once();
}

uint64_t sub_22BE17C18(__n128 a1)
{
  *(v1 - 144) = a1;
  *(v1 - 128) = 6;

  return sub_22BF0F5D8(v1 - 144);
}

uint64_t sub_22BE17C40(uint64_t a1)
{

  return sub_22BE19DC4(a1, 1, 1, v1);
}

uint64_t sub_22BE17CA0()
{

  return sub_22C274014();
}

uint64_t sub_22BE17D90@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void sub_22BE17EC0()
{
}

uint64_t sub_22BE17F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return sub_22BE17F4C();
  }

  else
  {
    return sub_22C274014();
  }
}

uint64_t type metadata accessor for Session.SessionState()
{
  result = qword_28106F0C8;
  if (!qword_28106F0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE18070@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);

  return sub_22C273FA4();
}

uint64_t sub_22BE180A8()
{
  v2 = v0[15];
  v3 = v0[22];
  v4 = v0[16];

  return sub_22BF249B8(v4);
}

uint64_t sub_22BE18154()
{

  return sub_22C273C44();
}

void *sub_22BE18204(uint64_t a1)
{
  sub_22BE19DC4(v2, 1, 1, a1);
  v3 = v1[4];
  return sub_22BE1BD3C(v1, v1[3]);
}

uint64_t sub_22BE18258()
{

  return swift_dynamicCast();
}

uint64_t sub_22BE1828C()
{
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
}

uint64_t sub_22BE182B4()
{

  return sub_22BE22814();
}

void sub_22BE182F0()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22BE18384()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_22BE183C8()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE184D0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_22BE1858C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 96);
  v4 = *(v1 - 112);
  return result;
}

uint64_t sub_22BE185E4()
{

  return sub_22C26E624();
}

void sub_22BE18614()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE186C0()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t sub_22BE18780()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 32);
  return *(v0 - 128);
}

uint64_t sub_22BE18798(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[12];
  v4 = v2[4];
  return v2[2];
}

void sub_22BE187C0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_22BE18838()
{

  return sub_22BE1AD50(v0, type metadata accessor for TranscriptProtoEvent);
}

uint64_t sub_22BE18878()
{

  return sub_22C274214();
}

_OWORD *sub_22BE188C8()
{
  result = sub_22BE92370(v0, (v1 - 96));
  *(v1 - 112) = 0;
  *(v1 - 104) = 0xE000000000000000;
  return result;
}

uint64_t sub_22BE188F0()
{

  return swift_once();
}

uint64_t sub_22BE18910@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_22BE189D8()
{

  return swift_beginAccess();
}

uint64_t sub_22BE18A6C()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22BE18AD8()
{
  result = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_22BE18B98()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v0[11] + 16);
  return v0[12];
}

uint64_t sub_22BE18BB4()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_22BE18D4C(uint64_t a1)
{
  v4 = v1 + *(a1 + 24);

  return sub_22BE19DC4(v4, 1, 1, v2);
}

uint64_t sub_22BE18DDC()
{

  return swift_once();
}

uint64_t sub_22BE19054()
{

  return sub_22C273924();
}

uint64_t sub_22BE190C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22BE5CE4C(a3, a4);
}

uint64_t sub_22BE19114()
{

  return sub_22C274014();
}

void sub_22BE19148()
{
  *(v0 + 272) = 0;
  *(v0 + 284) = 0;
  *(v1 - 72) = 0;
}

uint64_t sub_22BE19160()
{
  v2 = *(v0 - 72);

  return sub_22C273EB4();
}

uint64_t sub_22BE191D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22BE19DC4(a1, 1, 1, a4);
}

uint64_t sub_22BE19220()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22BE19298()
{
  v2 = v0[32];
  result = v0[33];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  return result;
}

uint64_t sub_22BE19318()
{

  return sub_22C273FA4();
}

uint64_t sub_22BE19400(uint64_t result)
{
  *(v2 + 80) = result;
  v3 = *(v1 - 8);
  return result;
}

uint64_t sub_22BE19414(uint64_t result, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 104) = result;
  *(v3 - 96) = a2;
  return result;
}

uint64_t sub_22BE1942C()
{
}

uint64_t sub_22BE194D0()
{

  return sub_22C274234();
}

uint64_t sub_22BE19514()
{

  return sub_22C270494();
}

uint64_t sub_22BE19618()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22BE19638()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE196B4()
{

  return swift_allocError();
}

id sub_22BE196FC()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2112;

  return v0;
}

uint64_t sub_22BE197D0(uint64_t a1)
{

  return sub_22BE1AEA8(v2 + v1, 1, a1);
}

uint64_t static SharedAssistantSchemaProvider.shared.getter()
{
  if (qword_281072040 != -1)
  {
    swift_once();
  }

  v0 = sub_22C271C14();
  sub_22BE199F4(v0, qword_28108A218);
  sub_22BE19964(qword_281076450, v1, type metadata accessor for SharedAssistantSchemaProvider);
  return sub_22C271BD4();
}

uint64_t sub_22BE1991C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE19964(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BE199AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE199F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t SharedAssistantSchemaProvider.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SharedAssistantSchemaProvider.init(parameters:)(a1);
  return v2;
}

uint64_t SharedAssistantSchemaProvider.init(parameters:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_22C2720A4() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_22C272C34();
  v5 = sub_22C272BC4();
  v6 = sub_22C271B74();
  sub_22BE18524(v6);
  (*(v7 + 8))(a1);
  *(v2 + 16) = v5;
  return v2;
}

uint64_t sub_22BE19E2C()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE19E44()
{
  v3 = *(v2 - 128);
  *(v2 - 240) = v0;
  return v1;
}

void sub_22BE19E74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22BE19EDC()
{
  sub_22BF0CE34(*(v0 - 112), *(v0 - 104), *(v0 - 96));
  v1 = *(v0 - 144);
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);

  return sub_22BF0CE34(v1, v2, v3);
}

uint64_t sub_22BE19F24()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
}

uint64_t sub_22BE19F48()
{

  return sub_22C273FA4();
}

uint64_t sub_22BE19F84()
{

  return sub_22BE61C88(v0, v1, (v2 - 72));
}

uint64_t sub_22BE19FA0(unint64_t *a1)
{

  return sub_22BE863A0(a1);
}

uint64_t sub_22BE19FC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t sub_22BE1A084()
{
  v5 = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v6 = *(v2 + 16);
  result = v0;
  v8 = *(v4 - 144);
  return result;
}

uint64_t sub_22BE1A0CC()
{
  v2 = *(v0 - 96);

  return sub_22C272FD4();
}

uint64_t sub_22BE1A0FC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BE5CE4C(&qword_27D912188, &qword_22C2B60F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

BOOL sub_22BE1A15C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BE1A210()
{

  return sub_22C274014();
}

void sub_22BE1A230()
{
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = -1;
}

uint64_t sub_22BE1A26C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_22BE1A27C()
{

  sub_22BF6B0F4();
}

uint64_t sub_22BE1A2A0()
{
  v4 = *(v1 + 32);
  result = v2;
  v6 = *(v3 - 88);
  *(v3 - 88) = v0;
  return result;
}

uint64_t sub_22BE1A2C4()
{
  v2 = *(v0 - 328);

  return sub_22BF680B4();
}

uint64_t sub_22BE1A2F0(float a1)
{
  *v3 = a1;
  *(v4 - 88) = v1;
  v6 = *v2;
  v7 = v2[1];
}

uint64_t sub_22BE1A31C()
{

  return sub_22BFC2A2C(v1, v0);
}

uint64_t sub_22BE1A384@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_22BE2B984(v2, &a2 - a1, v3, v4);
}

uint64_t sub_22BE1A3B0()
{

  return sub_22BE41F44(v0, type metadata accessor for ClientAction.ShimParameter);
}

uint64_t sub_22BE1A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 128) = a4;

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_22BE1A5D0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_22BE1A608()
{

  return sub_22C274014();
}

uint64_t sub_22BE1A638@<X0>(uint64_t a1@<X8>)
{
  v7[6] = v3;
  v7[7] = v2;
  v7[4] = v5;
  v7[5] = v4;
  v7[2] = v1;
  v7[3] = v6;
  return a1;
}

uint64_t sub_22BE1A68C()
{
  result = *(v0 - 184);
  v2 = *(*(v0 - 192) + 8);
  v3 = *(v0 - 400);
  return result;
}

uint64_t sub_22BE1A6C8()
{

  return sub_22C274014();
}

void sub_22BE1A6F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22BE1A730()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_22BE1A7A0()
{

  return sub_22BE41F44(v0, type metadata accessor for RequestContent.SystemPromptResolution.UserAction);
}

uint64_t sub_22BE1A83C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v0[8] + 16);
  return v0[9];
}

uint64_t sub_22BE1A854(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[10];
  v4 = v2[4];
  return v2[2];
}

uint64_t sub_22BE1A870()
{
  *(v1 - 88) = v0;
  v3 = *(v1 - 128);

  return sub_22C273304();
}

void sub_22BE1A8D0()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22BE1A8E8()
{
  result = v0;
  v3 = *(v1 - 628);
  return result;
}

uint64_t sub_22BE1A918()
{

  return sub_22C273B24();
}

uint64_t sub_22BE1A964(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE1834C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t sub_22BE1A9B8()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BE1AA10()
{
  v2 = sub_22BE1B2D4();
  v4 = v3(v2);
  sub_22BE18000(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_22BE1AA68(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE1834C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t sub_22BE1AB8C()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE1ABB0()
{
  sub_22BF1C1E4(v2, v1);
  sub_22BF1C1E4(v0, v3);
  return v2;
}

uint64_t sub_22BE1ABE0()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 288);
  v3 = *(v0 - 272);
  return result;
}

uint64_t sub_22BE1AC00(float a1)
{
  *v3 = a1;
  *(v4 - 104) = v1;
  v6 = *v2;
  v7 = v2[1];
}

uint64_t sub_22BE1AC30()
{

  return sub_22C270494();
}

uint64_t sub_22BE1AC54(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_22BE22868();
}

void sub_22BE1AC84(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_22BE1AD50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE1ADA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE1AE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE1AE58()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18524(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BE1AF5C()
{

  return sub_22BFB18F4(v1, v0);
}

uint64_t sub_22BE1AF78(uint64_t a1)
{

  return sub_22BE19DC4(v1 + v2, 1, 1, a1);
}

uint64_t _s30IntelligenceFlowPlannerSupport23ContextProtoBoundingBoxV11xCoordinateSfSgvs_0(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22BE1AFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_22BE1AFD8(uint64_t a1)
{

  return MEMORY[0x282174DA0](a1, 0, 0, 0, 0);
}

uint64_t sub_22BE1B02C()
{

  return sub_22C274234();
}

uint64_t sub_22BE1B04C()
{
  v3 = *(v1 + 48);
  v5 = *v0;
  v4 = v0[1];
  v6 = *(v2 - 128);
  v7 = **(v2 - 112);
  return *(v2 - 152);
}

uint64_t sub_22BE1B080()
{
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
}

uint64_t sub_22BE1B0AC()
{

  return sub_22BE22868();
}

uint64_t _s30IntelligenceFlowPlannerSupport23ContextProtoBoundingBoxV6heightSfSgvs_0(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t _s30IntelligenceFlowPlannerSupport7SessionO17StatusUpdateEventV23IntermediateQueryResultV6SourceO015AppEntityStringJ0V13ActionContextV6toolId09parameterS0AMSS_SStcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_22BE1B114()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t sub_22BE1B198()
{

  return sub_22C273B24();
}

uint64_t sub_22BE1B1D0()
{
  v2 = *(v0 - 256);

  return sub_22C273EB4();
}

uint64_t sub_22BE1B1F4()
{
  v1 = v0[45];
  v2 = v0[35];
  result = v0[25];
  v4 = v0[20];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[21] + 8;
  return result;
}

uint64_t sub_22BE1B410()
{
  v2 = v0[32];
  result = v0[33];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v11 = v0[19];
  v13 = v0[15];
  v12 = v0[16];
  return result;
}

uint64_t sub_22BE1B4A0(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return sub_22C0EC174();
}

uint64_t sub_22BE1B4D0()
{
  v1 = *(v0 - 88);
  v2 = *(*(v0 - 96) + 32);
  return *(v0 - 72);
}

uint64_t sub_22BE1B574()
{
  result = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[3];
  v5 = *(v0[11] + 32);
  return result;
}

uint64_t sub_22BE1B588()
{
  result = v0[10];
  v2 = v0[8];
  v3 = v0[3];
  v4 = *(v0[9] + 32);
  return result;
}

uint64_t sub_22BE1B59C()
{

  return sub_22C273844();
}

uint64_t sub_22BE1B664()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v0;
}

void sub_22BE1B698()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22BE1B6AC()
{
  v2 = *(v0 - 152);

  return sub_22BE1AE58();
}

uint64_t ConcurrencySafeToolKitExecutionSession.__allocating_init(sessionHolder:sessionId:)()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  sub_22BF84F5C(v0, v5 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport38ConcurrencySafeToolKitExecutionSession_sessionId);
  return v5;
}

uint64_t sub_22BE1B760(float a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v5 = a1;

  return sub_22BE61C88(v4, v6, va);
}

uint64_t sub_22BE1B7B0(uint64_t result)
{
  *(v1 - 120) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_22BE1B7DC()
{
  v2 = ((*(*(v0 - 112) + 80) + 32) & ~*(*(v0 - 112) + 80)) + *(*(v0 - 112) + 72);

  return swift_allocObject();
}

char *sub_22BE1B838(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

uint64_t sub_22BE1B860(uint64_t a1, int a2)
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

uint64_t sub_22BE1B8A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BE1B8DC()
{

  return sub_22C272ED4();
}

uint64_t sub_22BE1B918()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE1BA38@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v5 = *(v1 + 32);
  v6 = *(v3 - 136);
  return result;
}

uint64_t sub_22BE1BACC(uint64_t a1, uint64_t a2)
{

  return sub_22BE2B9D0(a1, a2, v2, v3);
}

uint64_t sub_22BE1BB30()
{

  return sub_22BE41F44(v0, type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput);
}

uint64_t sub_22BE1BBE0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_22BE1BC4C()
{

  return sub_22C2702B4();
}

uint64_t sub_22BE1BC68()
{
  v1 = v0[43];
  v2 = v0[33];
  result = v0[21];
  v4 = v0[18];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[19] + 8;
  return result;
}

uint64_t sub_22BE1BC88()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t sub_22BE1BCAC()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE1BCD4()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

void *sub_22BE1BD3C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22BE1BEB8()
{

  return sub_22BF0CE34(v1, v0, 6u);
}

uint64_t sub_22BE1BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = (&a9 + *(v10 + 56) - v9);

  return sub_22BF4319C(&a9 - v9, v12);
}

unint64_t sub_22BE1C01C()
{
  *(v0 + 16) = v3;
  result = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v5 = *(v2 + 32);
  return result;
}

uint64_t sub_22BE1C10C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  v7 = *(a4 + 16);
  v6[8] = v7;
  v8 = *(v7 - 8);
  return result;
}

void sub_22BE1C134()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);
}

void sub_22BE1C218(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_22BE1C228(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_22BE1C238(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t sub_22BE1C2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 160);
  v4 = *(v1 - 152);

  return sub_22C273EE4();
}

uint64_t sub_22BE1C310()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_22C273EB4();
}

uint64_t sub_22BE1C354(uint64_t result)
{
  *(v1 + 14) = result;
  **(v2 - 104) = result;
  return result;
}

void sub_22BE1C3D4()
{
  *(v3 - 160) = v0;
  *(v3 - 152) = *(v2 + 16);
  *(v3 - 168) = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  *(v3 - 184) = v1;
  *(v3 - 176) = v1 + 16;
  *(v3 - 88) = v1 + 8;
}

void Session.Event.encode(to:)()
{
  sub_22BE19130();
  sub_22C18E9F8();
  v3 = sub_22BE5CE4C(&qword_27D912C48, &qword_22C2B7DE8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22BE271CC();
  sub_22BE25524();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v7);
  sub_22BE3EAFC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for Session.Event(0);
    sub_22C18E864(v8);
    sub_22BE3EAFC();
    sub_22C273FA4();
    v9 = v2[6];
    sub_22BE3EAFC();
    sub_22C273F34();
    v10 = v2[7];
    type metadata accessor for Session.Event.Payload(0);
    sub_22C18EB50();
    sub_22BE20458(v11);
    sub_22BE41644();
    sub_22C273FA4();
    sub_22C11FDEC(v2[8]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(v2[9]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(v2[10]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(v2[11]);
    sub_22BE1BB58();
    sub_22C273EF4();
    v12 = v2[12];
    type metadata accessor for Timepoint();
    sub_22BE48880();
    sub_22BE20458(v13);
    sub_22BE41644();
    sub_22C273FA4();
    v16 = *(v1 + v2[13]);
    sub_22BE31554();
    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273F34();
    sub_22C18FA84((v1 + v2[14]));
    sub_22BE315A8();
    sub_22C18EBC8();
    sub_22BE1C270();
    sub_22C273F34();
    v17 = *(v1 + v2[15]);
    sub_22BE5CE4C(&qword_27D912C50, &qword_22C2B7DF0);
    sub_22BE32284();
    sub_22BE41644();
    sub_22C273FA4();
  }

  v14 = sub_22BE47E18();
  v15(v14);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.Event.Payload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE3F494();
  a19 = v24;
  a20 = v25;
  v800 = v21;
  v801 = v20;
  v27 = v26;
  v28 = sub_22BE5CE4C(&qword_27D9125F8, &qword_22C2B7B18);
  sub_22BE18910(v28, &a17);
  v795 = v29;
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  v34 = sub_22BE18950(v33);
  v35 = type metadata accessor for AgentPrimitiveAction(v34);
  v36 = sub_22BE290A0(v35, &a13);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  sub_22BE190A8(v39);
  v40 = sub_22BE5CE4C(&qword_27D912600, &qword_22C2B7B20);
  sub_22BE18910(v40, &a12);
  v790 = v41;
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BE18950(v45);
  v46 = sub_22C270234();
  v47 = sub_22BE18910(v46, &a10);
  v788 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&qword_27D912608, &qword_22C2B7B28);
  sub_22BE18910(v52, &v807[24]);
  v784 = v53;
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  sub_22BE18950(v57);
  v58 = sub_22C270074();
  v59 = sub_22BE18910(v58, &v807[8]);
  v782 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BE17A44();
  sub_22BE190A8(v63);
  v64 = sub_22BE5CE4C(&qword_27D912610, &qword_22C2B7B30);
  sub_22BE18910(v64, &v805 + 8);
  v778 = v65;
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A174();
  sub_22BE190A8(v69);
  v70 = sub_22BE5CE4C(&qword_27D912618, &qword_22C2B7B38);
  sub_22BE18910(v70, &v804[16]);
  v775 = v71;
  v73 = *(v72 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v74);
  sub_22BE1A174();
  sub_22BE190A8(v75);
  v76 = sub_22BE5CE4C(&qword_27D912620, &qword_22C2B7B40);
  sub_22BE18910(v76, &v803 + 8);
  v772 = v77;
  v79 = *(v78 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE1A174();
  sub_22BE190A8(v81);
  v82 = sub_22BE5CE4C(&qword_27D912628, &qword_22C2B7B48);
  sub_22BE18910(v82, &v802 + 8);
  v769 = v83;
  v85 = *(v84 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE1A174();
  v88 = sub_22BE18950(v87);
  v89 = type metadata accessor for RequestAmendment(v88);
  v90 = sub_22BE290A0(v89, &v798);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  sub_22BE17A44();
  sub_22BE190A8(v93);
  v94 = sub_22BE5CE4C(&qword_27D912630, &qword_22C2B7B50);
  sub_22BE18910(v94, &v797);
  v764 = v95;
  v97 = *(v96 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v98);
  sub_22BE1A174();
  v100 = sub_22BE18950(v99);
  v101 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(v100);
  v102 = sub_22BE290A0(v101, &v793);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22BE17A44();
  sub_22BE190A8(v105);
  v106 = sub_22BE5CE4C(&qword_27D912638, &qword_22C2B7B58);
  sub_22BE18910(v106, &v792);
  v759 = v107;
  v109 = *(v108 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v110);
  sub_22BE1A174();
  v112 = sub_22BE18950(v111);
  v113 = type metadata accessor for SkipStatement(v112);
  v114 = sub_22BE290A0(v113, &v788);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22BE17A44();
  sub_22BE190A8(v117);
  v118 = sub_22BE5CE4C(&qword_27D912640, &qword_22C2B7B60);
  sub_22BE18910(v118, &v787);
  v754 = v119;
  v121 = *(v120 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v122);
  sub_22BE1A174();
  v124 = sub_22BE18950(v123);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v124);
  v126 = sub_22BE290A0(DecorationPrePlannerResult, &v783);
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22BE17A44();
  sub_22BE190A8(v129);
  v130 = sub_22BE5CE4C(&qword_27D912648, &qword_22C2B7B68);
  sub_22BE18910(v130, &v782);
  v749 = v131;
  v133 = *(v132 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v134);
  sub_22BE1A174();
  sub_22BE190A8(v135);
  v136 = sub_22BE5CE4C(&qword_27D912650, &qword_22C2B7B70);
  sub_22BE18910(v136, &v780);
  v747 = v137;
  v139 = *(v138 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v140);
  sub_22BE1A174();
  v142 = sub_22BE18950(v141);
  DecorationResult = type metadata accessor for QueryDecorationResult(v142);
  v144 = sub_22BE290A0(DecorationResult, &v775);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22BE17A44();
  sub_22BE190A8(v147);
  v148 = sub_22BE5CE4C(&qword_27D912658, &qword_22C2B7B78);
  sub_22BE18910(v148, &v774);
  v741 = v149;
  v151 = *(v150 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v152);
  sub_22BE1A174();
  v154 = sub_22BE18950(v153);
  v155 = type metadata accessor for TypeConversionResult(v154);
  v156 = sub_22BE290A0(v155, &v770);
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v156);
  sub_22BE17A44();
  sub_22BE190A8(v159);
  v160 = sub_22BE5CE4C(&qword_27D912660, &qword_22C2B7B80);
  sub_22BE18910(v160, &v769);
  v736 = v161;
  v163 = *(v162 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v164);
  sub_22BE1A174();
  v166 = sub_22BE18950(v165);
  v167 = type metadata accessor for TypeConversionRequest(v166);
  v168 = sub_22BE290A0(v167, &v765);
  v170 = *(v169 + 64);
  MEMORY[0x28223BE20](v168);
  sub_22BE17A44();
  sub_22BE190A8(v171);
  v172 = sub_22BE5CE4C(&qword_27D912668, &qword_22C2B7B88);
  sub_22BE18910(v172, &v764);
  v731 = v173;
  v175 = *(v174 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v176);
  sub_22BE1A174();
  v178 = sub_22BE18950(v177);
  v179 = type metadata accessor for ClientUndoRedoRequest(v178);
  v180 = sub_22BE290A0(v179, &v760);
  v182 = *(v181 + 64);
  MEMORY[0x28223BE20](v180);
  sub_22BE17A44();
  sub_22BE190A8(v183);
  v184 = sub_22BE5CE4C(&qword_27D912670, &qword_22C2B7B90);
  sub_22BE18910(v184, &v759);
  v726[1] = v185;
  v187 = *(v186 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v188);
  sub_22BE1A174();
  v190 = sub_22BE18950(v189);
  v191 = type metadata accessor for UndoRedoRequest(v190);
  v192 = sub_22BE290A0(v191, &v755);
  v194 = *(v193 + 64);
  MEMORY[0x28223BE20](v192);
  sub_22BE17A44();
  sub_22BE190A8(v195);
  v196 = sub_22BE5CE4C(&qword_27D912678, &qword_22C2B7B98);
  sub_22BE18910(v196, &v754);
  v722 = v197;
  v199 = *(v198 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v200);
  sub_22BE1A174();
  v202 = sub_22BE18950(v201);
  v203 = type metadata accessor for ToolResolution(v202);
  v204 = sub_22BE290A0(v203, &v750);
  v206 = *(v205 + 64);
  MEMORY[0x28223BE20](v204);
  sub_22BE17A44();
  sub_22BE190A8(v207);
  v208 = sub_22BE5CE4C(&qword_27D912680, &qword_22C2B7BA0);
  sub_22BE18910(v208, &v749);
  v718 = v209;
  v211 = *(v210 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v212);
  sub_22BE1A174();
  sub_22BE190A8(v213);
  v214 = sub_22BE5CE4C(&qword_27D912688, &qword_22C2B7BA8);
  sub_22BE18910(v214, &v746);
  v715 = v215;
  v217 = *(v216 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v218);
  sub_22BE1A174();
  v220 = sub_22BE18950(v219);
  v221 = type metadata accessor for ExternalAgentOutcome(v220);
  v222 = sub_22BE290A0(v221, &v742);
  v224 = *(v223 + 64);
  MEMORY[0x28223BE20](v222);
  sub_22BE17A44();
  sub_22BE190A8(v225);
  v226 = sub_22BE5CE4C(&qword_27D912690, &qword_22C2B7BB0);
  sub_22BE18910(v226, &v741);
  v710 = v227;
  v229 = *(v228 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v230);
  sub_22BE1A174();
  v232 = sub_22BE18950(v231);
  v233 = type metadata accessor for ExternalAgentRequest(v232);
  v234 = sub_22BE290A0(v233, &v737);
  v236 = *(v235 + 64);
  MEMORY[0x28223BE20](v234);
  sub_22BE17A44();
  sub_22BE190A8(v237);
  v238 = sub_22BE5CE4C(&qword_27D912698, &qword_22C2B7BB8);
  sub_22BE18910(v238, &v736);
  v705 = v239;
  v241 = *(v240 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v242);
  sub_22BE1A174();
  v244 = sub_22BE18950(v243);
  v245 = type metadata accessor for StatementResult(v244);
  v246 = sub_22BE290A0(v245, &v732);
  v248 = *(v247 + 64);
  MEMORY[0x28223BE20](v246);
  sub_22BE17A44();
  sub_22BE190A8(v249);
  v250 = sub_22BE5CE4C(&qword_27D9126A0, &qword_22C2B7BC0);
  sub_22BE18910(v250, &v731);
  v700 = v251;
  v253 = *(v252 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v254);
  sub_22BE1A174();
  sub_22BE18950(v255);
  v256 = sub_22C26F754();
  v257 = sub_22BE18910(v256, &v729);
  v698 = v258;
  v260 = *(v259 + 64);
  MEMORY[0x28223BE20](v257);
  sub_22BE17A44();
  sub_22BE190A8(v261);
  v262 = sub_22BE5CE4C(&qword_27D9126A8, &qword_22C2B7BC8);
  sub_22BE18910(v262, v726);
  v694 = v263;
  v265 = *(v264 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v266);
  sub_22BE1A174();
  sub_22BE190A8(v267);
  v268 = sub_22BE5CE4C(&qword_27D9126B0, &qword_22C2B7BD0);
  sub_22BE18910(v268, &v724);
  v692 = v269;
  v271 = *(v270 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v272);
  sub_22BE1A174();
  sub_22BE190A8(v273);
  v274 = sub_22BE5CE4C(&qword_27D9126B8, &qword_22C2B7BD8);
  sub_22BE18910(v274, v721);
  v688 = v275;
  v277 = *(v276 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v278);
  sub_22BE1A174();
  sub_22BE190A8(v279);
  v280 = sub_22BE5CE4C(&qword_27D9126C0, &qword_22C2B7BE0);
  sub_22BE18910(v280, &v718);
  v685 = v281;
  v283 = *(v282 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v284);
  sub_22BE1A174();
  sub_22BE190A8(v285);
  v286 = sub_22BE5CE4C(&qword_27D9126C8, &qword_22C2B7BE8);
  sub_22BE18910(v286, &v715);
  v682 = v287;
  v289 = *(v288 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v290);
  sub_22BE1A174();
  sub_22BE190A8(v291);
  v292 = sub_22BE5CE4C(&qword_27D9126D0, &qword_22C2B7BF0);
  sub_22BE18910(v292, &v712);
  v679 = v293;
  v295 = *(v294 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v296);
  sub_22BE1A174();
  sub_22BE190A8(v297);
  v298 = sub_22BE5CE4C(&qword_27D9126D8, &qword_22C2B7BF8);
  sub_22BE18910(v298, &v710);
  v676 = v299;
  v301 = *(v300 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v302);
  sub_22BE1A174();
  v304 = sub_22BE18950(v303);
  v305 = type metadata accessor for ActionResolverRequest(v304);
  v306 = sub_22BE290A0(v305, &v705);
  v308 = *(v307 + 64);
  MEMORY[0x28223BE20](v306);
  sub_22BE17A44();
  sub_22BE190A8(v309);
  v310 = sub_22BE5CE4C(&qword_27D9126E0, &qword_22C2B7C00);
  sub_22BE18910(v310, &v704);
  v671 = v311;
  v313 = *(v312 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v314);
  sub_22BE1A174();
  v316 = sub_22BE18950(v315);
  StepResults = type metadata accessor for QueryStepResults(v316);
  v318 = sub_22BE290A0(StepResults, &v700);
  v320 = *(v319 + 64);
  MEMORY[0x28223BE20](v318);
  sub_22BE17A44();
  sub_22BE190A8(v321);
  v322 = sub_22BE5CE4C(&qword_27D9126E8, &qword_22C2B7C08);
  sub_22BE18910(v322, &v699);
  v666 = v323;
  v325 = *(v324 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v326);
  sub_22BE1A174();
  sub_22BE190A8(v327);
  v328 = sub_22BE5CE4C(&qword_27D9126F0, &qword_22C2B7C10);
  sub_22BE18910(v328, &v694);
  v660 = v329;
  v331 = *(v330 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v332);
  sub_22BE1A174();
  sub_22BE190A8(v333);
  v334 = sub_22BE5CE4C(&qword_27D9126F8, &qword_22C2B7C18);
  sub_22BE18910(v334, &v697);
  v664 = v335;
  v337 = *(v336 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v338);
  sub_22BE1A174();
  sub_22BE18950(v339);
  v340 = type metadata accessor for SessionError();
  v341 = sub_22BE290A0(v340, &v689);
  v343 = *(v342 + 64);
  MEMORY[0x28223BE20](v341);
  sub_22BE17A44();
  sub_22BE190A8(v344);
  v345 = sub_22BE5CE4C(&qword_27D912700, &qword_22C2B7C20);
  sub_22BE18910(v345, &v688);
  v655 = v346;
  v348 = *(v347 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v349);
  sub_22BE1A174();
  v351 = sub_22BE18950(v350);
  v352 = type metadata accessor for Session.RecoverableError(v351);
  v353 = sub_22BE290A0(v352, &v684);
  v355 = *(v354 + 64);
  MEMORY[0x28223BE20](v353);
  sub_22BE17A44();
  sub_22BE190A8(v356);
  v357 = sub_22BE5CE4C(&qword_27D912708, &qword_22C2B7C28);
  sub_22BE18910(v357, &v683);
  v650 = v358;
  v360 = *(v359 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v361);
  sub_22BE1A174();
  v363 = sub_22BE18950(v362);
  v364 = type metadata accessor for VariableStep(v363);
  v365 = sub_22BE290A0(v364, &v679);
  v367 = *(v366 + 64);
  MEMORY[0x28223BE20](v365);
  sub_22BE17A44();
  sub_22BE190A8(v368);
  v369 = sub_22BE5CE4C(&qword_27D912710, &qword_22C2B7C30);
  sub_22BE18910(v369, &v678);
  v645 = v370;
  v372 = *(v371 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v373);
  sub_22BE1A174();
  v375 = sub_22BE18950(v374);
  Step = type metadata accessor for QueryStep(v375);
  v377 = sub_22BE290A0(Step, &v674);
  v379 = *(v378 + 64);
  MEMORY[0x28223BE20](v377);
  sub_22BE17A44();
  sub_22BE190A8(v380);
  v381 = sub_22BE5CE4C(&qword_27D912718, &qword_22C2B7C38);
  sub_22BE18910(v381, &v673);
  v383 = *(v382 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v384);
  sub_22BE1A174();
  v386 = sub_22BE18950(v385);
  v387 = type metadata accessor for ClientAction(v386);
  v388 = sub_22BE290A0(v387, &v669);
  v390 = *(v389 + 64);
  MEMORY[0x28223BE20](v388);
  sub_22BE17A44();
  sub_22BE190A8(v391);
  v392 = sub_22BE5CE4C(&qword_27D912720, &qword_22C2B7C40);
  sub_22BE18910(v392, &v668);
  v394 = *(v393 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v395);
  sub_22BE1A174();
  v397 = sub_22BE18950(v396);
  v398 = type metadata accessor for ActionCancellation(v397);
  v399 = sub_22BE290A0(v398, &v664);
  v401 = *(v400 + 64);
  MEMORY[0x28223BE20](v399);
  sub_22BE17A44();
  sub_22BE190A8(v402);
  v403 = sub_22BE5CE4C(&qword_27D912728, &qword_22C2B7C48);
  sub_22BE18910(v403, &v663);
  v405 = *(v404 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v406);
  sub_22BE1A174();
  v408 = sub_22BE18950(v407);
  v409 = type metadata accessor for Action(v408);
  v410 = sub_22BE290A0(v409, &v659);
  v412 = *(v411 + 64);
  MEMORY[0x28223BE20](v410);
  sub_22BE17A44();
  sub_22BE190A8(v413);
  v414 = sub_22BE5CE4C(&qword_27D912730, &qword_22C2B7C50);
  sub_22BE18910(v414, &v658);
  v416 = *(v415 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v417);
  sub_22BE1A174();
  sub_22BE190A8(v418);
  v419 = sub_22BE5CE4C(&qword_27D912738, &qword_22C2B7C58);
  sub_22BE18910(v419, &v655);
  v421 = *(v420 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v422);
  sub_22BE1A174();
  v424 = sub_22BE18950(v423);
  v425 = type metadata accessor for Request(v424);
  v426 = sub_22BE290A0(v425, &v651);
  v428 = *(v427 + 64);
  MEMORY[0x28223BE20](v426);
  sub_22BE17A44();
  sub_22BE190A8(v429);
  v430 = sub_22BE5CE4C(&qword_27D912740, &qword_22C2B7C60);
  sub_22BE18910(v430, &v650);
  v432 = *(v431 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v433);
  sub_22BE1A174();
  sub_22BE190A8(v434);
  v435 = sub_22BE5CE4C(&qword_27D912748, &qword_22C2B7C68);
  sub_22BE18910(v435, &v647);
  v437 = *(v436 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v438);
  sub_22BE1A174();
  v440 = sub_22BE18950(v439);
  v441 = type metadata accessor for UserTurnStarted(v440);
  v442 = sub_22BE290A0(v441, &v643);
  v444 = *(v443 + 64);
  MEMORY[0x28223BE20](v442);
  sub_22BE17A44();
  sub_22BE190A8(v445);
  v446 = sub_22BE5CE4C(&qword_27D912750, &qword_22C2B7C70);
  sub_22BE18910(v446, &v642);
  v448 = *(v447 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v449);
  v450 = sub_22BE1AED0();
  v451 = type metadata accessor for SessionStart(v450);
  v452 = sub_22BE29F40(v451);
  v454 = *(v453 + 64);
  MEMORY[0x28223BE20](v452);
  sub_22BE19338();
  v455 = type metadata accessor for Session.Event.Payload(0);
  v456 = sub_22BE18000(v455);
  v458 = *(v457 + 64);
  MEMORY[0x28223BE20](v456);
  sub_22BE1955C();
  v459 = sub_22BE5CE4C(&qword_27D912758, &qword_22C2B7C78);
  v798 = sub_22BE179D8(v459);
  v799 = v460;
  v462 = *(v461 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v463);
  sub_22BE1A8B4();
  v465 = v27[3];
  v464 = v27[4];
  sub_22C18E560(v27);
  sub_22BE32B90();
  v797 = v23;
  sub_22BEE939C();
  sub_22C18FF9C();
  sub_22C274234();
  sub_22BE1C058();
  sub_22BE1A964(v801, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C18F440(v22, &v644);
      LOBYTE(v805) = 1;
      sub_22C173A20();
      sub_22BE22D18(&v645);
      sub_22C18ED9C();
      sub_22BE20458(v543);
      sub_22BE35E54();
      sub_22BEC0400(&v647);
      sub_22C18E6A8(&v643);
      v544 = sub_22BE2C65C(&v646);
      v545(v544);
      goto LABEL_55;
    case 2u:
      v529 = *v22;
      v528 = *(v22 + 8);
      v530 = *(v22 + 16);
      LOBYTE(v805) = 2;
      sub_22C173978();
      sub_22BE351B8(&v648);
      sub_22BE32C18();
      v532 = *(v531 - 256);
      sub_22C273EE4();
      *&v805 = v529;
      *(&v805 + 1) = v528;
      *&v806 = v530;
      sub_22C1739CC();
      sub_22BEC0400(&v650);
      sub_22C273FA4();
      v527 = &v649;
      goto LABEL_20;
    case 3u:
      sub_22C18F440(v22, &v652);
      LOBYTE(v805) = 3;
      sub_22C173924();
      sub_22BE22D18(&v653);
      sub_22C18E0B8();
      sub_22BE20458(v537);
      sub_22BE35E54();
      sub_22BEC0400(&v655);
      sub_22C18E6A8(&v651);
      v538 = sub_22BE2C65C(&v654);
      v539(v538);
      goto LABEL_55;
    case 4u:
      *&v807[9] = sub_22C18F994();
      LOBYTE(v802) = 4;
      sub_22C17387C();
      sub_22BE22D18(&v656);
      v802 = v805;
      v803 = v806;
      *v804 = *v807;
      *&v804[9] = *&v807[9];
      sub_22C1738D0();
      sub_22BEC0400(&v658);
      sub_22C18F428();
      v501 = sub_22BE2C65C(&v657);
      v502(v501);
      v503 = sub_22BE25EE4();
      v504(v503);
      sub_22C10D970(&v805);
      break;
    case 5u:
      sub_22C18F440(v22, &v660);
      LOBYTE(v805) = 5;
      sub_22C173828();
      sub_22BE22D18(&v661);
      sub_22BE415B0();
      sub_22BE20458(v562);
      sub_22BE35E54();
      sub_22BEC0400(&v663);
      sub_22C18E6A8(&v659);
      v563 = sub_22BE2C65C(&v662);
      v564(v563);
      goto LABEL_55;
    case 6u:
      sub_22C18F440(v22, &v665);
      LOBYTE(v805) = 6;
      sub_22C1737D4();
      sub_22BE22D18(&v666);
      sub_22C18ED00();
      sub_22BE20458(v571);
      sub_22BE35E54();
      sub_22BEC0400(&v668);
      sub_22C18E6A8(&v664);
      v572 = sub_22BE2C65C(&v667);
      v573(v572);
      goto LABEL_55;
    case 7u:
      sub_22C18F440(v22, &v670);
      LOBYTE(v805) = 7;
      sub_22C173780();
      sub_22BE22D18(&v671);
      sub_22BE3CE44();
      sub_22BE20458(v540);
      sub_22BE35E54();
      sub_22BEC0400(&v673);
      sub_22C18E6A8(&v669);
      v541 = sub_22BE2C65C(&v672);
      v542(v541);
      goto LABEL_55;
    case 8u:
      sub_22C18F440(v22, &v675);
      LOBYTE(v805) = 8;
      sub_22C17372C();
      sub_22BE22D18(&v676);
      sub_22C18ECB8();
      sub_22BE20458(v590);
      sub_22BE35E54();
      sub_22BEC0400(&v678);
      sub_22C18E6A8(&v674);
      v591 = sub_22BE2C65C(&v677);
      v592(v591);
      goto LABEL_55;
    case 9u:
      sub_22C18F440(v22, &v680);
      LOBYTE(v805) = 9;
      sub_22C1736D8();
      sub_22BE22D18(&v681);
      sub_22BE3B2E4();
      sub_22BE20458(v516);
      sub_22BE35E54();
      sub_22BEC0400(&v683);
      sub_22C18E6A8(&v679);
      v517 = sub_22BE2C65C(&v682);
      v518(v517);
      goto LABEL_55;
    case 0xAu:
      sub_22C18F440(v22, &v685);
      LOBYTE(v805) = 10;
      sub_22C173684();
      sub_22BE22D18(&v686);
      sub_22C18ECD0();
      sub_22BE20458(v587);
      sub_22BE35E54();
      sub_22BEC0400(&v688);
      sub_22C18E6A8(&v684);
      v588 = sub_22BE2C65C(&v687);
      v589(v588);
      goto LABEL_55;
    case 0xBu:
      sub_22C18F440(v22, &v691);
      LOBYTE(v805) = 11;
      sub_22C173630();
      sub_22BE22D18(&v693);
      sub_22C18EE5C();
      sub_22BE20458(v498);
      sub_22BE35E54();
      sub_22BEC0400(&v697);
      sub_22C18E6A8(&v689);
      v499 = sub_22BE2C65C(&v696);
      v500(v499);
      goto LABEL_55;
    case 0xCu:
      sub_22C18F440(v22, &v701);
      LOBYTE(v805) = 14;
      sub_22C173588();
      sub_22BE22D18(&v702);
      sub_22BE3C260();
      sub_22BE20458(v513);
      sub_22BE35E54();
      sub_22BEC0400(&v704);
      sub_22C18E6A8(&v700);
      v514 = sub_22BE2C65C(&v703);
      v515(v514);
      goto LABEL_55;
    case 0xDu:
      sub_22C18F440(v22, &v706);
      LOBYTE(v805) = 15;
      sub_22C173534();
      sub_22BE22D18(&v707);
      sub_22C18ED24();
      sub_22BE20458(v568);
      sub_22BE35E54();
      sub_22BEC0400(&v710);
      sub_22C18E6A8(&v705);
      v569 = sub_22BE2C65C(&v708);
      v570(v569);
      goto LABEL_55;
    case 0xEu:
      v493 = *v22;
      LOBYTE(v805) = 16;
      sub_22C17348C();
      sub_22BE204A4(&v709);
      sub_22BE27168();
      sub_22C18FBA8();
      *&v805 = v493;
      sub_22C1734E0();
      sub_22C18F85C();
      v494 = &v711;
      goto LABEL_44;
    case 0xFu:
      LOBYTE(v805) = 17;
      sub_22C1733E4();
      sub_22BE22D18(&v713);
      sub_22C173438();
      sub_22BEC0400(&v715);
      sub_22C18F428();
      v478 = &v714;
      goto LABEL_26;
    case 0x10u:
      v492 = *v22;
      v491 = *(v22 + 8);
      LOBYTE(v805) = 18;
      sub_22C17333C();
      sub_22BE204A4(&v716);
      sub_22BE32C18();
      sub_22C1901EC();
      *&v805 = v492;
      *(&v805 + 1) = v491;
      sub_22C173390();
      sub_22BE3926C(&v718);
      v484 = &v717;
      goto LABEL_51;
    case 0x11u:
      v548 = *v22;
      v549 = *(v22 + 8);
      LOBYTE(v805) = 19;
      sub_22C173294();
      sub_22BE351B8(&v719);
      sub_22BE32C18();
      sub_22C1901EC();
      *&v805 = v548;
      *(&v805 + 1) = v549;
      sub_22C1732E8();
      sub_22C18FF08(v721);
      sub_22C273FA4();
      v550 = sub_22BE3A530(&v720);
      v551(v550, v22);
      v535 = sub_22BE35B0C();
      goto LABEL_28;
    case 0x12u:
      v574 = *(v22 + 8);
      v801 = *v22;
      v576 = *(v22 + 16);
      v575 = *(v22 + 24);
      v577 = *(v22 + 32);
      v579 = *(v22 + 40);
      v578 = *(v22 + 48);
      LOBYTE(v805) = 20;
      sub_22C1731EC();
      v580 = v798;
      sub_22BE32C18();
      v582 = *(v581 - 256);
      sub_22C273EE4();
      *&v805 = v801;
      *(&v805 + 1) = v574;
      v801 = v574;
      *&v806 = v576;
      *(&v806 + 1) = v575;
      *v807 = v577;
      *&v807[8] = v579;
      *&v807[16] = v578;
      sub_22C173240();
      sub_22C273FA4();
      sub_22BE1B5D4(&v723);
      v583 = sub_22BE180C8();
      v584(v583);
      v585 = sub_22C11FDE0();
      v586(v585, v580);

      goto LABEL_53;
    case 0x13u:
      v614 = *v22;
      LOBYTE(v805) = 21;
      sub_22C173144();
      sub_22BE204A4(&v722);
      sub_22BE27168();
      sub_22C18FBA8();
      *&v805 = v614;
      sub_22C173198();
      sub_22C18F85C();
      v494 = &v725;
LABEL_44:
      v615 = *(v494 - 32);
      v616 = sub_22BE32D8C();
      v617(v616);
      v618 = sub_22BE38A68();
      goto LABEL_52;
    case 0x14u:
      sub_22BE351B8(&v728);
      v556 = *(v555 + 32);
      v557 = sub_22BF0AFB8();
      v558(v557);
      LOBYTE(v805) = 22;
      sub_22C1730F0();
      sub_22BE204A4(&v727);
      sub_22BE20280();
      v560 = *(v559 - 256);
      sub_22C273EE4();
      sub_22C18ED84();
      sub_22BE20458(v561);
      sub_22C18FDE4();
      sub_22BEC0400(&v731);
      sub_22C18F85C();
      v512 = &v730;
      goto LABEL_42;
    case 0x15u:
      sub_22C18F440(v22, &v733);
      LOBYTE(v805) = 23;
      sub_22C17309C();
      sub_22BE22D18(&v734);
      sub_22C18ED54();
      sub_22BE20458(v565);
      sub_22BE35E54();
      sub_22BEC0400(&v736);
      sub_22C18E6A8(&v732);
      v566 = sub_22BE2C65C(&v735);
      v567(v566);
      goto LABEL_55;
    case 0x16u:
      sub_22C18F440(v22, &v738);
      LOBYTE(v805) = 24;
      sub_22BE45BD4();
      sub_22BE22D18(&v739);
      sub_22C18EC70();
      sub_22BE20458(v599);
      sub_22BE35E54();
      sub_22BEC0400(&v741);
      sub_22C18E6A8(&v737);
      v600 = sub_22BE2C65C(&v740);
      v601(v600);
      goto LABEL_55;
    case 0x17u:
      sub_22C18F440(v22, &v743);
      LOBYTE(v805) = 25;
      sub_22BE48A9C();
      sub_22BE22D18(&v744);
      sub_22C18EC28();
      sub_22BE20458(v624);
      sub_22BE35E54();
      sub_22BEC0400(&v746);
      sub_22C18E6A8(&v742);
      v625 = sub_22BE2C65C(&v745);
      v626(v625);
      goto LABEL_55;
    case 0x18u:
      v523 = *v22;
      v522 = *(v22 + 8);
      v524 = *(v22 + 16);
      LOBYTE(v805) = 26;
      sub_22C173048();
      sub_22BE351B8(&v747);
      sub_22BE32C18();
      v526 = *(v525 - 256);
      sub_22C273EE4();
      *&v805 = v523;
      *(&v805 + 1) = v522;
      *&v806 = v524;
      sub_22BE48A04();
      sub_22BEC0400(&v749);
      sub_22C273FA4();
      v527 = &v748;
LABEL_20:
      v533 = sub_22BE40C84(v527);
      v534(v533);
      v535 = sub_22BE32D8C();
LABEL_28:
      v536(v535);

      goto LABEL_53;
    case 0x19u:
      sub_22C18F440(v22, &v751);
      LOBYTE(v805) = 27;
      sub_22C172FF4();
      sub_22BE22D18(&v752);
      sub_22C18EDE4();
      sub_22BE20458(v519);
      sub_22BE35E54();
      sub_22BEC0400(&v754);
      sub_22C18E6A8(&v750);
      v520 = sub_22BE2C65C(&v753);
      v521(v520);
      goto LABEL_55;
    case 0x1Au:
      sub_22C18F440(v22, &v756);
      LOBYTE(v805) = 28;
      sub_22C172FA0();
      sub_22BE22D18(&v757);
      sub_22C18EBE0();
      sub_22BE20458(v638);
      sub_22BE35E54();
      sub_22BEC0400(&v759);
      sub_22C18E6A8(&v755);
      v639 = sub_22BE2C65C(&v758);
      v640(v639);
      goto LABEL_55;
    case 0x1Bu:
      sub_22C18F440(v22, &v761);
      LOBYTE(v805) = 29;
      sub_22C172F4C();
      sub_22BE22D18(&v762);
      sub_22C18EEBC();
      sub_22BE20458(v485);
      sub_22BE35E54();
      sub_22BEC0400(&v764);
      sub_22C18E6A8(&v760);
      v486 = sub_22BE2C65C(&v763);
      v487(v486);
      goto LABEL_55;
    case 0x1Cu:
      sub_22C18F440(v22, &v766);
      LOBYTE(v805) = 30;
      sub_22C172EF8();
      sub_22BE22D18(&v767);
      sub_22C18EC10();
      sub_22BE20458(v627);
      sub_22BE35E54();
      sub_22BEC0400(&v769);
      sub_22C18E6A8(&v765);
      v628 = sub_22BE2C65C(&v768);
      v629(v628);
      goto LABEL_55;
    case 0x1Du:
      sub_22C18F440(v22, &v771);
      LOBYTE(v805) = 31;
      sub_22C172EA4();
      sub_22BE22D18(&v772);
      sub_22C18EBF8();
      sub_22BE20458(v630);
      sub_22BE35E54();
      sub_22BEC0400(&v774);
      sub_22C18E6A8(&v770);
      v631 = sub_22BE2C65C(&v773);
      v632(v631);
      goto LABEL_55;
    case 0x1Eu:
      sub_22C18F440(v22, &v776);
      LOBYTE(v805) = 32;
      sub_22C172E50();
      sub_22BE22D18(&v777);
      sub_22C18ECA0();
      sub_22BE20458(v593);
      sub_22BE35E54();
      sub_22BEC0400(&v780);
      sub_22C18E6A8(&v775);
      v594 = sub_22BE2C65C(&v779);
      v595(v594);
      goto LABEL_55;
    case 0x1Fu:
      LOBYTE(v805) = 33;
      sub_22C172DA8();
      sub_22BE22D18(&v778);
      sub_22C172DFC();
      sub_22BEC0400(&v782);
      sub_22C18F428();
      v478 = &v781;
      goto LABEL_26;
    case 0x20u:
      sub_22C18F440(v22, &v784);
      LOBYTE(v805) = 34;
      sub_22C172D54();
      sub_22BE22D18(&v785);
      sub_22C18EC88();
      sub_22BE20458(v596);
      sub_22BE35E54();
      sub_22BEC0400(&v787);
      sub_22C18E6A8(&v783);
      v597 = sub_22BE2C65C(&v786);
      v598(v597);
      goto LABEL_55;
    case 0x21u:
      sub_22C18F440(v22, &v789);
      LOBYTE(v805) = 35;
      sub_22C172D00();
      sub_22BE22D18(&v790);
      sub_22C18EE74();
      sub_22BE20458(v495);
      sub_22BE35E54();
      sub_22BEC0400(&v792);
      sub_22C18E6A8(&v788);
      v496 = sub_22BE2C65C(&v791);
      v497(v496);
      goto LABEL_55;
    case 0x22u:
      sub_22C18F440(v22, &v794);
      LOBYTE(v805) = 36;
      sub_22C172CAC();
      sub_22BE22D18(&v795);
      sub_22C18EEA4();
      sub_22BE20458(v488);
      sub_22BE35E54();
      sub_22BEC0400(&v797);
      sub_22C18E6A8(&v793);
      v489 = sub_22BE2C65C(&v796);
      v490(v489);
      goto LABEL_55;
    case 0x23u:
      sub_22C18F440(v22, &v799);
      LOBYTE(v805) = 37;
      sub_22C172C58();
      sub_22BE22D18(&v800);
      sub_22BE31148();
      sub_22BE20458(v479);
      sub_22BE35E54();
      sub_22BEC0400(&v802 + 8);
      sub_22C18E6A8(&v798);
      v480 = sub_22BE2C65C(&v801);
      v481(v480);
      goto LABEL_55;
    case 0x24u:
      v483 = *v22;
      v482 = *(v22 + 8);
      LOBYTE(v805) = 38;
      sub_22C172BB0();
      sub_22BE204A4(&v802);
      sub_22BE32C18();
      sub_22C1901EC();
      *&v805 = v483;
      *(&v805 + 1) = v482;
      sub_22C172C04();
      sub_22BE3926C(&v803 + 8);
      v484 = &v803;
      goto LABEL_51;
    case 0x25u:
      LOBYTE(v805) = 39;
      sub_22C172B08();
      sub_22BE22D18(v804);
      sub_22C172B5C();
      sub_22BEC0400(&v804[16]);
      sub_22C18F428();
      v478 = &v804[8];
LABEL_26:
      v546 = sub_22BE2C65C(v478);
      v547(v546);
      goto LABEL_56;
    case 0x26u:
      v634 = *v22;
      v633 = *(v22 + 8);
      LOBYTE(v805) = 40;
      sub_22C172A60();
      sub_22BE204A4(&v804[24]);
      sub_22BE32C18();
      sub_22C1901EC();
      *&v805 = v634;
      *(&v805 + 1) = v633;
      sub_22C172AB4();
      sub_22BE3926C(&v805 + 8);
      v484 = &v805;
LABEL_51:
      v635 = *(v484 - 32);
      v636 = sub_22C18E3C8();
      v637(v636);
      v618 = sub_22BE35B0C();
LABEL_52:
      v619(v618);
LABEL_53:

      break;
    case 0x27u:
      sub_22BE351B8(v807);
      v603 = *(v602 + 32);
      v604 = sub_22BF0AFB8();
      v605(v604);
      LOBYTE(v805) = 41;
      sub_22C172A0C();
      sub_22BE204A4(&v806 + 8);
      sub_22BE20280();
      v607 = *(v606 - 256);
      sub_22C273EE4();
      sub_22C18EC58();
      sub_22BE20458(v608);
      sub_22C18FDE4();
      sub_22BEC0400(&v807[24]);
      sub_22C18F85C();
      v512 = &v807[16];
      goto LABEL_42;
    case 0x28u:
      sub_22BE351B8(&a9);
      v506 = *(v505 + 32);
      v507 = sub_22BF0AFB8();
      v508(v507);
      LOBYTE(v805) = 42;
      sub_22C1729B8();
      sub_22BE204A4(&v808);
      sub_22BE20280();
      v510 = *(v509 - 256);
      sub_22C273EE4();
      sub_22C18EDFC();
      sub_22BE20458(v511);
      sub_22C18FDE4();
      sub_22BEC0400(&a12);
      sub_22C18F85C();
      v512 = &a11;
LABEL_42:
      sub_22BE1B5D4(v512);
      v609 = sub_22BE33560();
      v610(v609);
      v611 = *(v23 + 8);
      v612 = sub_22BE1824C();
      v613(v612);
      goto LABEL_56;
    case 0x29u:
      sub_22C18F440(v22, &a14);
      LOBYTE(v805) = 43;
      sub_22C172964();
      sub_22BE22D18(&a15);
      sub_22BE3CCA4();
      sub_22BE20458(v552);
      sub_22BE35E54();
      sub_22BEC0400(&a17);
      sub_22C18E6A8(&a13);
      v553 = sub_22BE2C65C(&a16);
      v554(v553);
LABEL_55:
      sub_22C171FFC();
LABEL_56:
      v471 = sub_22BE25EE4();
      goto LABEL_57;
    case 0x2Au:
      LOBYTE(v805) = 12;
      sub_22C1735DC();
      sub_22BE3C6E0(&v690);
      sub_22BE20280();
      v621 = *(v620 - 256);
      sub_22C273EE4();
      v475 = sub_22BE194B4(&v692);
      v477 = &v694;
      goto LABEL_46;
    case 0x2Bu:
      LOBYTE(v805) = 13;
      sub_22BE46594();
      sub_22BE3C6E0(&v695);
      sub_22BE20280();
      v474 = *(v473 - 256);
      sub_22C273EE4();
      v475 = sub_22BE194B4(&v698);
      v477 = &v699;
LABEL_46:
      v476(v475, *(v477 - 32));
      v622 = sub_22BE4073C();
      v623(v622);
      break;
    default:
      v466 = sub_22BE18240();
      sub_22C171FA8(v466, v467);
      LOBYTE(v805) = 0;
      sub_22BE32DD8();
      sub_22BE27168();
      sub_22C18FBA8();
      sub_22C18EED4();
      sub_22BE20458(v468);
      sub_22C18FF08(&v642);
      sub_22C273FA4();
      v469 = sub_22BE19698(&v641);
      v470(v469, v22);
      sub_22BE23F00();
      sub_22C171FFC();
      v471 = sub_22BE38A68();
LABEL_57:
      v472(v471);
      break;
  }

  sub_22BEE94B0();
  sub_22BE3CAD8();
}

uint64_t sub_22BE20148()
{

  return sub_22C273C44();
}

uint64_t sub_22BE201A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_22C273EE4();
}

uint64_t sub_22BE201DC()
{
  v2 = *(*(v1 - 128) + 8);
  result = v0;
  v4 = *(v1 - 152);
  return result;
}

double sub_22BE20208()
{
  result = *v1;
  *v0;
  return result;
}

void sub_22BE20244()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t type metadata accessor for Timepoint()
{
  result = qword_28106E020;
  if (!qword_28106E020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE202F8()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE20394()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t sub_22BE20414(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C26E1D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BE20458(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v3(255);
    sub_22BE1ACEC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_22BE204B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 104);

  return sub_22C273FA4();
}

uint64_t sub_22BE204D4()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE20524()
{

  return sub_22C0C1AC4();
}

void TranscriptProtoPayload.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v29;
  a20 = v30;
  v638 = v22;
  a10 = v31;
  v32 = sub_22BE25DC4();
  v33 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v32);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v631 = v37;
  v38 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  v633 = v42;
  v43 = sub_22BE183BC();
  v629 = type metadata accessor for AgentPrimitiveAction(v43);
  v44 = sub_22BE18000(v629);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  v635 = v47;
  sub_22BE1B99C();
  v49 = MEMORY[0x28223BE20](v48);
  sub_22C259824(v49, v50, v51, v52, v53, v54, v55, v56, v577);
  v630 = sub_22C270234();
  v57 = sub_22BE179D8(v630);
  v628 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  sub_22BE18950(v62);
  v63 = sub_22C270074();
  v64 = sub_22BE18910(v63, &a17);
  v625[2] = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v68);
  sub_22BE19E94();
  v70 = sub_22BE18950(v69);
  v71 = type metadata accessor for RequestAmendment(v70);
  v72 = sub_22BE19448(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v75);
  sub_22BE19E94();
  v77 = sub_22BE18950(v76);
  v78 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(v77);
  v79 = sub_22BE19448(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v82);
  sub_22BE19E94();
  v84 = sub_22BE18950(v83);
  v85 = type metadata accessor for SkipStatement(v84);
  v86 = sub_22BE19448(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v89);
  sub_22BE19E94();
  v91 = sub_22BE18950(v90);
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v91);
  v93 = sub_22BE19448(DecorationPrePlannerResult);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v96);
  sub_22BE19E94();
  v98 = sub_22BE18950(v97);
  DecorationResult = type metadata accessor for QueryDecorationResult(v98);
  v100 = sub_22BE19448(DecorationResult);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v103);
  sub_22BE19E94();
  v105 = sub_22BE18950(v104);
  v106 = type metadata accessor for TypeConversionResult(v105);
  v107 = sub_22BE19448(v106);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v110);
  sub_22BE19E94();
  v112 = sub_22BE18950(v111);
  v113 = type metadata accessor for TypeConversionRequest(v112);
  v114 = sub_22BE19448(v113);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v117);
  sub_22BE19E94();
  v119 = sub_22BE18950(v118);
  v120 = type metadata accessor for ClientUndoRedoRequest(v119);
  v121 = sub_22BE19448(v120);
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v121);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v124);
  sub_22BE19E94();
  v126 = sub_22BE18950(v125);
  v127 = type metadata accessor for UndoRedoRequest(v126);
  v128 = sub_22BE19448(v127);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v131);
  sub_22BE19E94();
  v133 = sub_22BE18950(v132);
  v134 = type metadata accessor for ToolResolution(v133);
  v135 = sub_22BE19448(v134);
  v137 = *(v136 + 64);
  MEMORY[0x28223BE20](v135);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v138);
  sub_22BE19E94();
  v140 = sub_22BE18950(v139);
  v141 = type metadata accessor for ExternalAgentOutcome(v140);
  v142 = sub_22BE19448(v141);
  v144 = *(v143 + 64);
  MEMORY[0x28223BE20](v142);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v145);
  sub_22BE19E94();
  v147 = sub_22BE18950(v146);
  v148 = type metadata accessor for ExternalAgentRequest(v147);
  v149 = sub_22BE19448(v148);
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v149);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v152);
  sub_22BE19E94();
  v154 = sub_22BE18950(v153);
  v155 = type metadata accessor for StatementResult(v154);
  v156 = sub_22BE19448(v155);
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v156);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v159);
  sub_22BE19E94();
  sub_22BE18950(v160);
  v161 = sub_22C26F754();
  v162 = sub_22BE18910(v161, &v628);
  v164 = *(v163 + 64);
  MEMORY[0x28223BE20](v162);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v165);
  sub_22BE19E94();
  v167 = sub_22BE18950(v166);
  v168 = type metadata accessor for ActionCancellation(v167);
  v169 = sub_22BE19448(v168);
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v172);
  sub_22BE19E94();
  v174 = sub_22BE18950(v173);
  v175 = type metadata accessor for TranscriptProtoContextRetrieved(v174);
  v176 = sub_22BE290A0(v175, &v622);
  v178 = *(v177 + 64);
  MEMORY[0x28223BE20](v176);
  sub_22BE17A44();
  v180 = sub_22BE18950(v179);
  v181 = type metadata accessor for ActionResolverRequest(v180);
  v182 = sub_22BE19448(v181);
  v184 = *(v183 + 64);
  MEMORY[0x28223BE20](v182);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v185);
  sub_22BE19E94();
  v187 = sub_22BE18950(v186);
  StepResults = type metadata accessor for QueryStepResults(v187);
  v189 = sub_22BE19448(StepResults);
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v189);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v192);
  sub_22BE19E94();
  sub_22BE18950(v193);
  v194 = type metadata accessor for SessionError();
  v195 = sub_22BE19448(v194);
  v197 = *(v196 + 64);
  MEMORY[0x28223BE20](v195);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v198);
  sub_22BE19E94();
  sub_22BE18950(v199);
  v200 = sub_22C26E684();
  v201 = sub_22BE18910(v200, &v606);
  v580 = v202;
  v204 = *(v203 + 64);
  MEMORY[0x28223BE20](v201);
  sub_22BE17A44();
  sub_22BE190A8(v205);
  v206 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v206);
  v208 = *(v207 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v209);
  sub_22BE1A174();
  v211 = sub_22BE18950(v210);
  v212 = type metadata accessor for VariableStep(v211);
  v213 = sub_22BE290A0(v212, &v615);
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v213);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v216);
  sub_22BE19E94();
  v218 = sub_22BE18950(v217);
  Step = type metadata accessor for QueryStep(v218);
  v220 = sub_22BE19448(Step);
  v222 = *(v221 + 64);
  MEMORY[0x28223BE20](v220);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v223);
  sub_22BE19E94();
  v225 = sub_22BE18950(v224);
  v226 = type metadata accessor for ClientAction(v225);
  v227 = sub_22BE19448(v226);
  v229 = *(v228 + 64);
  MEMORY[0x28223BE20](v227);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v230);
  sub_22BE19E94();
  v232 = sub_22BE18950(v231);
  v233 = type metadata accessor for Action(v232);
  v234 = sub_22BE19448(v233);
  v236 = *(v235 + 64);
  MEMORY[0x28223BE20](v234);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v237);
  sub_22BE19E94();
  v239 = sub_22BE18950(v238);
  v240 = type metadata accessor for Session.RecoverableError(v239);
  v241 = sub_22BE19448(v240);
  v243 = *(v242 + 64);
  MEMORY[0x28223BE20](v241);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v244);
  sub_22BE19E94();
  v246 = sub_22BE18950(v245);
  v247 = type metadata accessor for Request(v246);
  v248 = sub_22BE19448(v247);
  v250 = *(v249 + 64);
  MEMORY[0x28223BE20](v248);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v251);
  v252 = sub_22C2595A0();
  v253 = type metadata accessor for UserTurnStarted(v252);
  v254 = sub_22BE19448(v253);
  v256 = *(v255 + 64);
  MEMORY[0x28223BE20](v254);
  sub_22BE25544();
  MEMORY[0x28223BE20](v257);
  v258 = sub_22BE39EE8();
  v259 = type metadata accessor for SessionStart(v258);
  v260 = sub_22BE19448(v259);
  v262 = *(v261 + 64);
  MEMORY[0x28223BE20](v260);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v263);
  v264 = sub_22BE41E38();
  v265 = type metadata accessor for Session.Event.Payload(v264);
  v266 = sub_22BE18000(v265);
  v268 = *(v267 + 64);
  MEMORY[0x28223BE20](v266);
  sub_22BE17CBC();
  v269 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  sub_22BE19448(v269);
  v271 = *(v270 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v272);
  sub_22BE1A174();
  v274 = sub_22C259DF0(v273);
  type metadata accessor for TranscriptProtoPayloadEnum(v274);
  sub_22BE1A140();
  v636 = v275;
  v279 = sub_22C18F17C(v276, v277, v278, v275);
  v280 = *(type metadata accessor for TranscriptProtoPayload(v279) + 20);
  v639 = v27;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C25A2D8();
  sub_22BE1AA68(a10, v23);
  sub_22BE354DC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v394 = sub_22BE385E4();
      sub_22BE3B620(v394, v26);
      v395 = sub_22C1088AC();
      sub_22BE1AA68(v395, v21);
      v396 = sub_22C25978C();
      TranscriptProtoUserTurnStarted.init(handwritten:)(v396, v397, v398, v399, v400, v401, v402, v403, v578, v580);
      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE336C4();
      sub_22BE1AE58();
      if (v22)
      {
        goto LABEL_78;
      }

      goto LABEL_103;
    case 2u:
      v366 = *v23;
      v365 = *(v23 + 8);
      v367 = *(v23 + 16);

      sub_22C1C36F4();
      v369 = v368;
      v370 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
      v371 = v637;
      v372 = v637 + *(v370 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE17EA8();
      sub_22BE1AE58();

      *v371 = v366;
      v371[1] = v365;
      v371[2] = v369;
      goto LABEL_103;
    case 3u:
      v373 = sub_22BE385E4();
      sub_22BE3B620(v373, v25);
      v374 = sub_22C1088E8();
      sub_22BE1AA68(v374, v24);
      sub_22C259F44();
      TranscriptProtoRequest.init(handwritten:)(v24, v375, v376, v377, v378, v379, v380, v381, v578, v580);
      if (v22)
      {
        sub_22BE17EA8();
        sub_22BE1AE58();
        sub_22BE1BBC8();
        goto LABEL_77;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE1BBC8();
      sub_22BE1AE58();
      goto LABEL_103;
    case 4u:
      v317 = *(v23 + 16);
      v640 = *v23;
      v641 = v317;
      *v642 = *(v23 + 32);
      *&v642[9] = *(v23 + 41);
      sub_22C259F44();
      TranscriptProtoPlan.init(handwritten:)(v318, v319);
      if (!v22)
      {
        goto LABEL_16;
      }

      goto LABEL_77;
    case 5u:
      sub_22BE385E4();
      sub_22BEE94A4(&v611);
      sub_22BE3B620(v442, v443);
      sub_22BE19EBC();
      sub_22BE22944(&v608);
      sub_22BE1AA68(v444, v445);
      v446 = sub_22C25978C();
      TranscriptProtoAction.init(handwritten:)(v446, v447, v448, v449, v450, v451, v452, v453, v578, v580, v583, v585, v588, v590, v592, v594, v596, v598, v600, v602);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE360B0();
      sub_22BE1AE58();
      goto LABEL_103;
    case 6u:
      sub_22BE385E4();
      sub_22BEE94A4(v625);
      sub_22BE3B620(v462, v463);
      sub_22BE19EBC();
      sub_22BE22944(&v624);
      sub_22BE1AA68(v464, v465);
      sub_22C25978C();
      TranscriptProtoActionCancellation.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      goto LABEL_102;
    case 7u:
      sub_22BE385E4();
      sub_22BEE94A4(&v613);
      sub_22BE3B620(v382, v383);
      sub_22BE19EBC();
      sub_22BE22944(&v610);
      sub_22BE1AA68(v384, v385);
      v386 = sub_22C25978C();
      TranscriptProtoClientAction.init(handwritten:)(v386, v387, v388, v389, v390, v391, v392, v393, v578, v580, v583, v585, v588, v590, v592, v594, v596, v598, v600, v602);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE287FC();
      sub_22BE1AE58();
      goto LABEL_103;
    case 8u:
      sub_22BE385E4();
      sub_22BEE94A4(&v614);
      sub_22BE3B620(v474, v475);
      sub_22BE19EBC();
      sub_22BE22944(&v612);
      sub_22BE1AA68(v476, v477);
      v478 = sub_22C25978C();
      TranscriptProtoQueryStep.init(handwritten:)(v478);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C259AE8();
      sub_22BE1AE58();
      goto LABEL_103;
    case 9u:
      sub_22BE385E4();
      sub_22C25A87C(&v619);
      sub_22BE3B620(v332, v333);
      v334 = sub_22C259FB8();
      v335 = v634;
      sub_22BE1AA68(v334, v634);
      sub_22BE2ED7C(&v615);
      v337 = *(v335 + v336);

      v339 = v638;
      sub_22C1C241C(v338, v340, v341, v342, v343, v344, v345, v346, v578, v580, v583, v585, v588, v590, v592, v594, v596, v598, v600, v602);
      if (v339)
      {
        sub_22BE17EA8();
        sub_22BE1AE58();
        goto LABEL_39;
      }

      v536 = *(v581 + 16);
      v638 = v347;
      v537 = sub_22BE3C5E4();
      v538(v537);
      LODWORD(v635) = sub_22C26E674();
      v539 = sub_22C26E654();
      v540 = sub_22C25A788();
      v541 = v586 + *(type metadata accessor for TranscriptProtoStatementID(v540) + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v542 = *(v581 + 8);
      v543 = sub_22BE3911C();
      v544(v543);
      *v586 = v635;
      *(v586 + 8) = v539;
      *(v586 + 16) = v24;
      v545 = sub_22C25974C();
      v548 = sub_22C259E00(v545, v546, v547);
      v549 = type metadata accessor for TranscriptProtoVariableStep(v548);
      sub_22C25ACC0(v549);
      v550 = v637;
      sub_22C259BD0();
      sub_22BE3A034(v551, v552, v553, v554);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE1AE58();
      sub_22C0B1AF0();
      sub_22BE1AE58();
      *v550 = v638;
      sub_22BE2343C();
      goto LABEL_103;
    case 0xAu:
      sub_22BE385E4();
      sub_22BEE94A4(&v609);
      sub_22BE3B620(v470, v471);
      sub_22BE19EBC();
      sub_22BE37B14(&v607);
      sub_22BE1AA68(v472, v473);
      sub_22C259F44();
      TranscriptProtoRecoverableError.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C259B00();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0xBu:
      sub_22BE385E4();
      sub_22BEE94A4(&v617);
      sub_22BE3B620(v313, v314);
      sub_22BE19EBC();
      sub_22BE22944(&v616);
      sub_22BE1AA68(v315, v316);
      sub_22C259F64();
      TranscriptProtoSessionError.init(handwritten:)();
      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE26148();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0xCu:
      sub_22BE385E4();
      sub_22BEE94A4(&v621);
      sub_22BE3B620(v328, v329);
      sub_22BE19EBC();
      sub_22BE22944(&v618);
      sub_22BE1AA68(v330, v331);
      sub_22C25978C();
      TranscriptProtoQueryStepResults.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE47E28();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0xDu:
      sub_22BE385E4();
      sub_22BEE94A4(&v623);
      sub_22BE3B620(v458, v459);
      sub_22BE19EBC();
      sub_22BE22944(&v620);
      sub_22BE1AA68(v460, v461);
      sub_22C25978C();
      TranscriptProtoActionResolverRequest.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE2943C();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0xEu:
      v306 = v638;
      sub_22C1C5FF8(*v23, v281, v282, v283, v284, v285, v286, v287, v578, v580);
      if (v306)
      {
        goto LABEL_77;
      }

      v307 = sub_22BE17BC4();
      v308 = type metadata accessor for TranscriptProtoResponseGenerationRequest(v307);
      sub_22C25A5C4(v308);
      sub_22BE17EA8();
      sub_22BE1AE58();
      *v27 = v20;
      goto LABEL_103;
    case 0xFu:
    case 0x1Fu:
    case 0x25u:
      sub_22C25A5F8();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE17EA8();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x10u:
      v304 = sub_22C25AA38();
      v305 = type metadata accessor for TranscriptProtoSafetyModeException(v304);
      sub_22C25A5C4(v305);
      sub_22BE17EA8();
      sub_22BE1AE58();
      *v27 = v20;
      v27[1] = v21;
      goto LABEL_103;
    case 0x11u:
      v404 = *v23;
      v405 = *(v23 + 8);
      v406 = v605 + *(v604 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v407 = MEMORY[0x277D84F90];
      *v605 = MEMORY[0x277D84F90];
      v605[1] = v407;

      v409 = v638;
      sub_22C1C4730(v408, v410, v411, v412, v413, v414, v415, v416, v578, v580, v583, v585, v588, v590, v592, v594, v596, v598, v600, v602);
      if (!v409)
      {
        *v605 = v417;

        sub_22C1C4730(v418, v419, v420, v421, v422, v423, v424, v425, v579, v582, v584, v587, v589, v591, v593, v595, v597, v599, v601, v603);
        v571 = v570;

        sub_22BE17EA8();
        sub_22BE1AE58();
        v605[1] = v571;
        v572 = sub_22BE29370();
        sub_22BE3B620(v572, v637);
        goto LABEL_103;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE3AE5C();
      goto LABEL_77;
    case 0x12u:
      v466 = *(v23 + 16);
      v467 = *(v23 + 24);
      v468 = *(v23 + 32);
      v640 = *v23;
      *&v641 = v466;
      *(&v641 + 1) = v467;
      *v642 = v468;
      *&v642[8] = *(v23 + 40);
      sub_22C259F44();
      TranscriptProtoToolRetrievalResponse.init(handwritten:)(v469);
      if (v22)
      {
        goto LABEL_77;
      }

LABEL_16:
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x13u:
      v508 = v638;
      sub_22C1C557C(*v23, v281, v282, v283, v284, v285, v286, v287, v578, v580, v583, v585, v588, v590, v592, v594, v596, v598, v600, v602);
      if (v508)
      {
        goto LABEL_77;
      }

      v568 = sub_22BE17BC4();
      matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(v568);
      sub_22C25A5C4(matched);
      sub_22BE17EA8();
      sub_22BE1AE58();
      *v27 = v20;
      goto LABEL_103;
    case 0x14u:
      sub_22BE2BD40(&v627);
      v435 = *(v434 + 32);
      sub_22BE1B328();
      sub_22C25A5E0();
      v436();
      sub_22BE3C6EC();
      v437 = sub_22BE2590C();
      v438(v437);
      sub_22C259F44();
      (TranscriptProtoSystemResponse.init(handwritten:))();
      if (v22)
      {
        goto LABEL_63;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      v439 = *(v21 + 8);
      v440 = sub_22BE200D4();
      v441(v440);
      goto LABEL_103;
    case 0x15u:
      sub_22BE385E4();
      sub_22BEE94A4(&v630);
      sub_22BE3B620(v454, v455);
      sub_22BE19EBC();
      sub_22BE22944(&v626);
      sub_22BE1AA68(v456, v457);
      sub_22C25978C();
      TranscriptProtoStatementResult.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C2598D0();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x16u:
      sub_22BE385E4();
      sub_22BEE94A4(&v632);
      sub_22BE3B620(v496, v497);
      sub_22BE19EBC();
      sub_22BE22944(&v629);
      sub_22BE1AA68(v498, v499);
      sub_22C25978C();
      TranscriptProtoExternalAgentRequest.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE46560();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x17u:
      sub_22BE385E4();
      sub_22BEE94A4(&v634);
      sub_22BE3B620(v509, v510);
      sub_22BE19EBC();
      sub_22BE22944(&v631);
      sub_22BE1AA68(v511, v512);
      v513 = sub_22C25978C();
      TranscriptProtoExternalAgentOutcome.init(handwritten:)(v513);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE3CF30();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x18u:
      v361 = *v23;
      v360 = *(v23 + 8);
      v362 = *(v23 + 16);
      v363 = *(type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0) + 24);

      v364 = v637;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE17EA8();
      sub_22BE1AE58();

      *v364 = v361;
      v364[1] = v360;
      v364[2] = v362;
      goto LABEL_103;
    case 0x19u:
      sub_22BE385E4();
      sub_22BEE94A4(&v636);
      sub_22BE3B620(v348, v349);
      sub_22BE19EBC();
      sub_22BE22944(&v633);
      sub_22BE1AA68(v350, v351);
      v352 = sub_22C25978C();
      TranscriptProtoToolResolution.init(handwritten:)(v352, v353, v354, v355, v356, v357, v358, v359, v578, v580);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C2598E8();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x1Au:
      sub_22BE385E4();
      sub_22BEE94A4(&v638);
      sub_22BE3B620(v532, v533);
      sub_22BE19EBC();
      sub_22BE22944(&v635);
      sub_22BE1AA68(v534, v535);
      sub_22C25978C();
      TranscriptProtoUndoRedoRequest.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      goto LABEL_102;
    case 0x1Bu:
      sub_22BE385E4();
      sub_22BEE94A4(&v640);
      sub_22BE3B620(v296, v297);
      sub_22BE19EBC();
      sub_22BE22944(&v637);
      sub_22BE1AA68(v298, v299);
      sub_22C25978C();
      TranscriptProtoClientUndoRedoRequest.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

LABEL_102:
      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE26148();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x1Cu:
      sub_22BE385E4();
      sub_22BEE94A4(&v641);
      sub_22BE3B620(v514, v515);
      sub_22BE19EBC();
      sub_22BE22944(&v639);
      sub_22BE1AA68(v516, v517);
      sub_22C25978C();
      TranscriptProtoTypeConversionRequest.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE3AEE0();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x1Du:
      sub_22BE385E4();
      sub_22BEE94A4(v642);
      sub_22BE3B620(v518, v519);
      sub_22BE19EBC();
      sub_22BE22944(&v640 + 8);
      sub_22BE1AA68(v520, v521);
      v522 = sub_22C25978C();
      TranscriptProtoTypeConversionResult.init(handwritten:)(v522, v523, v524, v525, v526, v527, v528, v529, v578, v580);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C259AD0();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x1Eu:
      sub_22BE385E4();
      sub_22BEE94A4(&v642[16]);
      sub_22BE3B620(v479, v480);
      sub_22BE19EBC();
      sub_22BE22944(&v641 + 8);
      sub_22BE1AA68(v481, v482);
      v483 = sub_22C25978C();
      TranscriptProtoQueryDecorationResult.init(handwritten:)(v483);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C259560();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x20u:
      sub_22BE385E4();
      sub_22BEE94A4(&v643);
      sub_22BE3B620(v484, v485);
      sub_22BE19EBC();
      sub_22BE22944(&v642[8]);
      sub_22BE1AA68(v486, v487);
      v488 = sub_22C25978C();
      TranscriptProtoQueryDecorationPrePlannerResult.init(handwritten:)(v488, v489, v490, v491, v492, v493, v494, v495, v578, v580);
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE310A4();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x21u:
      sub_22BE385E4();
      sub_22BEE94A4(&v644);
      sub_22BE3B620(v309, v310);
      sub_22BE19EBC();
      sub_22BE22944(&v642[24]);
      sub_22BE1AA68(v311, v312);
      sub_22C259F64();
      TranscriptProtoSkipStatement.init(handwritten:)();
      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE26148();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x22u:
      sub_22BE385E4();
      sub_22BEE94A4(&a11);
      sub_22BE3B620(v300, v301);
      sub_22BE19EBC();
      sub_22BE22944(&a9);
      sub_22BE1AA68(v302, v303);
      sub_22C25978C();
      TranscriptProtoExecutionPreconditionEvaluatorRequest.init(handwritten:)();
      if (v22)
      {
        goto LABEL_76;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22C259900();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x23u:
      sub_22BE385E4();
      sub_22BEE94A4(&a13);
      sub_22BE3B620(v290, v291);
      sub_22BE19EBC();
      sub_22BE22944(&a10);
      sub_22BE1AA68(v292, v293);
      sub_22C25978C();
      TranscriptProtoRequestAmendment.init(handwritten:)();
      if (v22)
      {
LABEL_76:
        sub_22BE17EA8();
        sub_22BE1AE58();
        goto LABEL_77;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE35908();
      sub_22BE1AE58();
      goto LABEL_103;
    case 0x24u:
      v294 = sub_22C25AA38();
      v295 = type metadata accessor for TranscriptProtoToolRetrievalRequest(v294);
      sub_22C25A5C4(v295);
      sub_22BE17EA8();
      sub_22BE1AE58();
      *v27 = v20;
      v27[1] = v21;
      goto LABEL_103;
    case 0x26u:
      v530 = sub_22C25AA38();
      v531 = type metadata accessor for TranscriptProtoSpanMatchRequest(v530);
      sub_22C25A5C4(v531);
      sub_22BE17EA8();
      sub_22BE1AE58();
      *v27 = v20;
      v27[1] = v21;
      goto LABEL_103;
    case 0x27u:
      sub_22BE2BD40(&a16);
      v501 = *(v500 + 32);
      sub_22BE1B328();
      sub_22C25A5E0();
      v502();
      sub_22BE3C6EC();
      v503 = sub_22BE2590C();
      v504(v503);
      sub_22C259F44();
      TranscriptProtoIntermediateSystemResponse.init(handwritten:)();
      if (v22)
      {
        goto LABEL_63;
      }

      sub_22BE17EA8();
      sub_22BE1AE58();
      v565 = *(v21 + 8);
      v566 = sub_22BE200D4();
      v567(v566);
      goto LABEL_103;
    case 0x28u:
      v21 = v628;
      v320 = *(v628 + 32);
      v321 = sub_22BE1B328();
      v322(v321);
      sub_22BE3C6EC();
      v323 = sub_22BE2590C();
      v324(v323);
      sub_22C259F44();
      TranscriptProtoIntermediateSystemResponseRendered.init(handwritten:)();
      if (!v22)
      {
        sub_22BE17EA8();
        sub_22BE1AE58();
        v325 = *(v21 + 8);
        v326 = sub_22BE200D4();
        v327(v326);
        goto LABEL_103;
      }

LABEL_63:
      sub_22BE1AE58();
      v505 = *(v21 + 8);
      v506 = sub_22BE200D4();
      v507(v506);
      goto LABEL_78;
    case 0x29u:
      v426 = sub_22BE385E4();
      sub_22BE3B620(v426, v632);
      v427 = sub_22C259FB8();
      v428 = v635;
      sub_22BE1AA68(v427, v635);
      v430 = *v428;
      v429 = v428[1];
      v431 = *(v629 + 20);
      sub_22BE3E784();
      sub_22BE1AA68(v428 + v432, v631);

      sub_22C25A6C4();
      v433 = v638;
      TranscriptProtoPrimitiveAction.init(handwritten:)();
      if (v433)
      {

        sub_22BE17EA8();
        sub_22BE1AE58();
LABEL_39:
        sub_22BE1AE58();
        sub_22BE1B074();
LABEL_77:
        sub_22BE1AE58();
LABEL_78:
        sub_22BE1AE58();
      }

      else
      {
        v555 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
        v556 = sub_22C25974C();
        v559 = sub_22C18F17C(v556, v557, v558, v555);
        v560 = *(type metadata accessor for TranscriptProtoAgentPrimitiveAction(v559) + 20);
        v561 = v637;
        sub_22BE1A140();
        sub_22C25AD2C(v562, v563, v564, v555);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE17EA8();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22C0B1AF0();
        sub_22BE1AE58();
        *v561 = v430;
        v561[1] = v429;
        sub_22BE2343C();
LABEL_103:
        v573 = v636;
        swift_storeEnumTagMultiPayload();
        v574 = sub_22BE360A0();
        sub_22BE19DC4(v574, v575, v576, v573);
        sub_22BE3C968();
        sub_22BE2343C();
      }

      sub_22BE1AB28();
      sub_22BE18478();
      return;
    case 0x2Au:
    case 0x2Bu:
      sub_22BE17EA8();
      sub_22BE1AE58();
      goto LABEL_103;
    default:
      v288 = sub_22BE385E4();
      sub_22BE3B620(v288, v28);
      v289 = sub_22C259FB8();
      sub_22BE1AA68(v289, v20);
      sub_22C25A5F8();
      TranscriptProtoSessionStart.init(handwritten:)();
      sub_22BE17EA8();
      sub_22BE1AE58();
      sub_22BE3E76C();
      sub_22BE1AE58();
      goto LABEL_103;
  }
}

uint64_t sub_22BE22814()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE1834C(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE19454();
  v7(v6);
  return v0;
}

uint64_t sub_22BE22868()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE19454();
  v7(v6);
  return v0;
}

uint64_t sub_22BE228CC(void *a1)
{
  v3 = v1[2];

  sub_22BF84FC0(v1 + *a1);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v4, v5);
}

uint64_t ToolKitExecutionSession.__allocating_init(sessionHolder:sessionId:)()
{
  sub_22BE1A8A8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_22BE1B5EC();
  ToolKitExecutionSession.init(sessionHolder:sessionId:)();
  return v3;
}

uint64_t ToolKitExecutionSession.init(sessionHolder:sessionId:)()
{
  sub_22BE1A8A8();
  v3 = *(*(sub_22C270274() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_22BE179EC();
  v6 = v5 - v4;
  sub_22BF84EF8(v0, v5 - v4);
  v7 = type metadata accessor for ConcurrencySafeToolKitExecutionSession(0);
  v8 = sub_22BE33584(v7);
  *(v8 + 16) = v2;
  sub_22BF84F5C(v6, v8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport38ConcurrencySafeToolKitExecutionSession_sessionId);
  *(v1 + 16) = v8;
  sub_22BF84F5C(v0, v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23ToolKitExecutionSession_sessionId);
  return v1;
}

uint64_t sub_22BE22B28(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22BE22B58(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t *sub_22BE22BB8(uint64_t a1)
{
  v1[4] = a1;

  return sub_22BE62524(v1);
}

uint64_t sub_22BE22C10()
{
  v2 = *(v0 - 168);

  return sub_22C273DE4();
}

uint64_t sub_22BE22C34()
{

  return sub_22C273DE4();
}

BOOL sub_22BE22C54(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22BE22C98()
{
}

uint64_t sub_22BE22D18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 256);
  v5 = *(v1 - 264);

  return sub_22C273EE4();
}

uint64_t sub_22BE22D48(uint64_t a1)
{

  return sub_22BE1AEA8(v1, 1, a1);
}

uint64_t sub_22BE22DC4()
{
  result = *(v0 - 112);
  v2 = *(v0 - 160);
  return result;
}

uint64_t sub_22BE22DD4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v5 = a1;

  return sub_22BE61C88(v4, v6, va);
}

uint64_t sub_22BE22E00@<X0>(uint64_t a1@<X8>)
{
  v5 = __clz(__rbit64(v1)) | (v3 << 6);
  v6 = (*(a1 + 48) + 16 * v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(a1 + 56) + *(v4 + 72) * v5;
  v10 = *(v4 + 16);
  return v2;
}

uint64_t sub_22BE22E3C()
{

  return sub_22BFB18F4(v0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_22BE22EB4()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE22F50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

void sub_22BE22FD4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v1 + ((((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
}

uint64_t sub_22BE23008()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE2302C()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE2304C()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE2313C()
{

  return sub_22C26DF54();
}

id sub_22BE2316C()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_22BE2318C()
{
  v2 = v0[30];
  result = v0[31];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  return result;
}

void sub_22BE231F8()
{
  *(v0 + 16) = v2;
  v3 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v1 + 72);
}

uint64_t sub_22BE23274()
{

  return sub_22C26589C(v0, type metadata accessor for ExpressionConverterError);
}

void sub_22BE23340()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t sub_22BE23388(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BE5CE4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22BE233E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BE5CE4C(a2, a3);
  sub_22BE18524(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22BE2343C()
{
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE19454();
  v7(v6);
  return v0;
}

uint64_t sub_22BE23490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE1834C(v5);
  v7 = *(v6 + 40);
  v8 = sub_22BE19454();
  v9(v8);
  return v4;
}

uint64_t sub_22BE2355C(uint64_t a1)
{
  *(a1 + 8) = sub_22BF726D4;
  result = *(v1 + 312);
  v3 = *(v1 + 320);
  v5 = *(v1 + 240);
  v4 = *(v1 + 248);
  v6 = *(v1 + 232);
  v7 = *(v1 + 360);
  return result;
}

uint64_t sub_22BE235A8(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_22C270494();
}

uint64_t sub_22BE235D0()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE2360C()
{

  return swift_once();
}

uint64_t sub_22BE2362C()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 192);

  return sub_22C273574();
}

uint64_t sub_22BE23674()
{
}

uint64_t sub_22BE23698()
{
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[3];

  return sub_22C271AE4();
}

uint64_t sub_22BE236E0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22BE2375C()
{

  return sub_22BE41F44(v0, type metadata accessor for StatementResult);
}

uint64_t sub_22BE237DC()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE2382C()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_22C273EE4();
}

uint64_t sub_22BE2384C()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22BE23898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[2] = 0;
  v7[3] = 0;
  v7[12] = v4;
  v7[13] = v6;
  v7[10] = v5;
  v7[11] = a1;
  v7[8] = v5;
  v7[9] = a1;
  v7[6] = v3;
  v7[7] = v3;
  v7[4] = v2;
  v7[5] = v3;
  return a2;
}

uint64_t sub_22BE23940@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 184);

  return sub_22C273DE4();
}

uint64_t sub_22BE23968()
{
  v1 = **(v0 - 192);
  result = *(v0 - 144);
  v3 = *(v0 - 280);
  return result;
}

uint64_t sub_22BE239B8()
{

  return sub_22C273FA4();
}

uint64_t sub_22BE23A04(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_22C2704B4();
}

uint64_t sub_22BE23A1C()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE23A44()
{
  v2 = *(v0 - 256);

  return sub_22C273EB4();
}

uint64_t sub_22BE23A68(uint64_t a1)
{
  v2 = *(v1 - 280) + *(a1 + 48);
  result = *(v1 - 280);
  v4 = *(v1 - 168);
  return result;
}

uint64_t sub_22BE23ACC()
{
  v1 = v0[1];
  v2 = v0[9];
  v3 = v0[10];
  result = v0[7];
  v5 = v0[8];
  return result;
}

uint64_t sub_22BE23B58()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22BE23BC8()
{
  v2 = *(v0 - 96);

  return sub_22C273EE4();
}

uint64_t sub_22BE23BE8@<X0>(uint64_t a1@<X8>)
{

  return sub_22BE7EF5C(v2, v1 - a1);
}

uint64_t sub_22BE23C18()
{

  return sub_22C274214();
}

uint64_t sub_22BE23C64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 168);

  return sub_22C273DE4();
}

uint64_t sub_22BE23CB4@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + *v2;

  return sub_22BF1F294(v4, v1);
}

uint64_t sub_22BE23D30(uint64_t a1)
{
  result = sub_22BE19DC4(v1 + v3, 1, 1, a1);
  v5 = v1 + *(v2 + 28);
  return result;
}

uint64_t sub_22BE23D8C@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_22BE23E0C()
{

  return MEMORY[0x2821FCB48](v2, 1, v3, v2, v3, v0, v1);
}

void sub_22BE23E9C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t sub_22BE23EBC()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE23F18(uint64_t result)
{
  *(v2 - 96) = result;
  v3 = *(v1 + 16);
  return result;
}

uint64_t ClientAction.Definition.toolDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v227 = a1;
  v226 = sub_22C2723C4();
  v2 = sub_22BE179D8(v226);
  v225 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17A44();
  sub_22BE18950(v6);
  v223 = sub_22C2723E4();
  v7 = sub_22BE18000(v223);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE18950(v10);
  v252 = sub_22C26E6B4();
  v11 = sub_22BE179D8(v252);
  v243 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v251 = v15;
  sub_22BE183BC();
  v250 = sub_22C272D24();
  v16 = sub_22BE179D8(v250);
  v253 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v209 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v204 - v22;
  v24 = sub_22C272294();
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE190A8(v28);
  v29 = sub_22BE5CE4C(&qword_27D90B1C0, &qword_22C28C410);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  sub_22BE190A8(v33);
  v34 = sub_22BE5CE4C(&qword_27D90B1C8, &qword_22C28C418);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  sub_22BE18950(v38);
  v39 = sub_22C272264();
  v40 = sub_22BE19448(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  sub_22BE190A8(v43);
  v44 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  sub_22BE18950(v48);
  v217 = sub_22C272A94();
  v49 = sub_22BE179D8(v217);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE179EC();
  v56 = v55 - v54;
  v216 = sub_22C272A74();
  v57 = sub_22BE179D8(v216);
  v215 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE179EC();
  v63 = v62 - v61;
  v212 = sub_22C272A14();
  v64 = sub_22BE179D8(v212);
  v211 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BE17A44();
  sub_22BE18950(v68);
  v213 = sub_22C272AC4();
  v69 = sub_22BE18000(v213);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  sub_22BE190A8(v72);
  v73 = sub_22BE5CE4C(&qword_27D90B1D0, &qword_22C28C420);
  sub_22BE19448(v73);
  v75 = *(v74 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v76);
  sub_22BE1A174();
  v241 = v77;
  sub_22BE183BC();
  v78 = sub_22C2728A4();
  v79 = sub_22BE19448(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE17B98();
  v229 = v82;
  MEMORY[0x28223BE20](v83);
  v240 = &v204 - v84;
  sub_22BE183BC();
  v239 = sub_22C272AE4();
  v85 = sub_22BE18000(v239);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v238 = v88;
  sub_22BE183BC();
  v237 = sub_22C26E6F4();
  v89 = sub_22BE179D8(v237);
  v91 = v90;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v89);
  sub_22BE17A44();
  v236 = v94;
  sub_22BE183BC();
  v235 = sub_22C272B14();
  v95 = sub_22BE179D8(v235);
  v242 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BE17A44();
  sub_22BE18950(v99);
  v100 = sub_22C272274();
  v101 = sub_22BE179D8(v100);
  v103 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v101);
  sub_22BE179EC();
  v108 = v107 - v106;
  v221 = sub_22C26E6D4();
  v220 = v109;
  v219 = sub_22C26E6D4();
  v218 = v110;
  v111 = *MEMORY[0x277D723F0];
  v112 = *(v103 + 104);
  v222 = v108;
  v112(v108, v111, v100);
  v113 = sub_22C26E724();
  v114 = *(v113 + 16);
  v115 = MEMORY[0x277D84F90];
  v228 = v1;
  if (v114)
  {
    v205 = v63;
    v206 = v56;
    v207 = v51;
    v208 = v23;
    v116 = sub_22BE3AFEC();
    sub_22BE24F30(v116, v114, 0);
    v117 = v255;
    v119 = *(v91 + 16);
    v118 = v91 + 16;
    v233 = v119;
    v120 = *(v118 + 64);
    sub_22BE19E14();
    v204 = v113;
    v122 = v113 + v121;
    v232 = (v118 - 8);
    v231 = v242 + 32;
    v230 = *(v118 + 56);
    v123 = v210;
    v234 = v118;
    v124 = v236;
    do
    {
      v125 = v237;
      v233(v124, v122, v237);
      v126 = sub_22C26E6D4();
      v248 = v127;
      v249 = v126;
      v128 = sub_22C26E6D4();
      v246 = v129;
      v247 = v128;
      v130 = sub_22C26E6C4();
      v244 = v131;
      v245 = v130;
      v254 = MEMORY[0x277D84F90];
      sub_22BE25360(&qword_28106DF00, MEMORY[0x277D73128]);
      sub_22BE5CE4C(&qword_27D90B1D8, &qword_22C28C428);
      sub_22BF16CCC(&qword_28106DC18, &qword_27D90B1D8, &qword_22C28C428);
      sub_22C2739B4();
      sub_22C26E6E4();
      v132 = sub_22C272AD4();
      sub_22BE19DC4(v241, 1, 1, v132);
      sub_22C272AF4();
      (*v232)(v124, v125);
      v255 = v117;
      v134 = *(v117 + 16);
      v133 = *(v117 + 24);
      if (v134 >= v133 >> 1)
      {
        v138 = sub_22BE1A674(v133);
        sub_22BE24F30(v138, v139, v140);
        v123 = v210;
        v117 = v255;
      }

      *(v117 + 16) = v134 + 1;
      v135 = v242;
      v136 = *(v242 + 80);
      sub_22BE19E14();
      (*(v135 + 32))(v117 + v137 + *(v135 + 72) * v134, v123, v235);
      v122 += v230;
      --v114;
    }

    while (v114);
    v247 = v117;

    v115 = MEMORY[0x277D84F90];
    v141 = v217;
    v51 = v207;
    v56 = v206;
    v63 = v205;
  }

  else
  {

    v247 = MEMORY[0x277D84F90];
    v141 = v217;
  }

  sub_22C26E714();
  (*(v211 + 104))(v214, *MEMORY[0x277D730B0], v212);
  (*(v215 + 104))(v63, *MEMORY[0x277D730D8], v216);
  (*(v51 + 104))(v56, *MEMORY[0x277D730E8], v141);
  sub_22C272A44();
  v142 = sub_22BF16D20(&v256);
  sub_22BE19DC4(v142, v143, v144, v213);
  sub_22C26E6C4();
  sub_22C272254();
  sub_22C2723F4();
  v145 = sub_22BF16D20(&v257);
  sub_22BE19DC4(v145, v146, v147, v148);
  sub_22C2723D4();
  v149 = sub_22BF16D20(&v258);
  sub_22BE19DC4(v149, v150, v151, v152);
  v153 = v115;
  if (sub_22C26E704())
  {
    sub_22BE5CE4C(&qword_27D90B1E8, &qword_22C28C438);
    v154 = sub_22C2720D4();
    sub_22BE179D8(v154);
    v156 = v155;
    v158 = *(v157 + 72);
    v159 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_22C275160;
    (*(v156 + 104))(v153 + v159, *MEMORY[0x277D72190], v154);
  }

  v246 = v153;
  sub_22C272284();
  v160 = sub_22C26E754();
  v161 = *(v160 + 16);
  if (v161)
  {
    v162 = sub_22BE3AFEC();
    sub_22BE7116C(v162, v161, 0);
    v163 = v255;
    v165 = v243 + 16;
    v164 = *(v243 + 16);
    v166 = *(v243 + 80);
    sub_22BE19E14();
    v245 = v160;
    v168 = v160 + v167;
    v248 = *(v165 + 56);
    v249 = v169;
    do
    {
      v170 = v251;
      v171 = v252;
      v249(v251, v168, v252);
      sub_22C26E6A4();
      sub_22C26E694();
      sub_22BE38334();
      sub_22C272D04();
      (*(v165 - 8))(v170, v171);
      v255 = v163;
      v173 = *(v163 + 16);
      v172 = *(v163 + 24);
      if (v173 >= v172 >> 1)
      {
        v178 = sub_22BE1A674(v172);
        sub_22BE7116C(v178, v179, v180);
        v163 = v255;
      }

      *(v163 + 16) = v173 + 1;
      v174 = *(v253 + 80);
      sub_22BE19E14();
      v176 = sub_22BE1BA38(v163 + v175);
      v177(v176);
      v168 += v248;
      --v161;
    }

    while (v161);

    v115 = MEMORY[0x277D84F90];
  }

  else
  {

    v163 = MEMORY[0x277D84F90];
  }

  v181 = sub_22C26E744();
  v182 = *(v181 + 16);
  if (v182)
  {
    v183 = sub_22BE3AFEC();
    sub_22BE7116C(v183, v182, 0);
    v184 = v255;
    v185 = *(v243 + 16);
    v186 = *(v243 + 80);
    sub_22BE19E14();
    v245 = v181;
    v188 = v181 + v187;
    v248 = *(v189 + 56);
    v249 = v190;
    v243 = v189;
    v191 = (v189 - 8);
    do
    {
      v192 = v251;
      v193 = v252;
      v249(v251, v188, v252);
      sub_22C26E6A4();
      sub_22C26E694();
      sub_22BE38334();
      sub_22C272CE4();
      (*v191)(v192, v193);
      v255 = v184;
      v195 = *(v184 + 16);
      v194 = *(v184 + 24);
      if (v195 >= v194 >> 1)
      {
        v200 = sub_22BE1A674(v194);
        sub_22BE7116C(v200, v201, v202);
        v184 = v255;
      }

      *(v184 + 16) = v195 + 1;
      v196 = *(v253 + 80);
      sub_22BE19E14();
      v198 = sub_22BE1BA38(v184 + v197);
      v199(v198);
      v188 += v248;
      --v182;
    }

    while (v182);

    v115 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v255 = v163;
  sub_22BE6E098();
  v255 = v115;
  sub_22BE25360(&qword_28106DF68, MEMORY[0x277D726D0]);
  sub_22BE5CE4C(&qword_27D90B1E0, &qword_22C28C430);
  sub_22BF16CCC(&qword_28106DC40, &qword_27D90B1E0, &qword_22C28C430);
  sub_22C2739B4();
  (*(v225 + 104))(v224, *MEMORY[0x277D72680], v226);
  return sub_22C2721C4();
}

uint64_t sub_22BE24FEC()
{
  v1 = *(*(v0 - 168) + 32);
  result = *(v0 - 176);
  v3 = *(v0 - 160);
  return result;
}

uint64_t sub_22BE2501C()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  result = v0[40];
  v8 = v0[41];
  v9 = v0[37];
  return result;
}

BOOL sub_22BE25044()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BE2505C()
{
  v4 = v0[17];
  v5 = v0[14];
  v2 = v0[11];
  v6 = v0[8];
  v7 = v0[5];
}

uint64_t sub_22BE25134()
{
}

uint64_t sub_22BE25158()
{
  v2 = *(v0 + 40);

  return sub_22C274154();
}

uint64_t sub_22BE25184()
{

  return swift_task_alloc();
}

BOOL sub_22BE251A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22BE251DC()
{
  v2 = *(v0 - 256);

  return sub_22C273EB4();
}

uint64_t sub_22BE25200()
{

  return sub_22BF042A8();
}

uint64_t sub_22BE25234()
{

  return swift_once();
}

uint64_t sub_22BE25254()
{

  return sub_22C272054();
}

uint64_t sub_22BE25360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE253D0()
{

  return sub_22C273C64();
}

uint64_t sub_22BE25444(unint64_t *a1)
{

  return sub_22BEF8A28(a1, v1, v2);
}

void sub_22BE2547C()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 216);
  v3 = *(v0 - 240);
  v4 = *(v0 - 232);
  v6 = *(v0 - 160);
  v5 = *(v0 - 152);
}

uint64_t sub_22BE254B0()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE254D4@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_22BE25524()
{

  return sub_22C274234();
}

uint64_t sub_22BE255CC(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FCB90](a1, a2, v4, v5, v2, v3);
}

uint64_t sub_22BE255EC()
{

  return sub_22BE22814();
}

uint64_t sub_22BE25618()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE25668()
{
  sub_22BF158B4(*(v1 - 232), *(v1 - 176));
  v2 = *(v1 - 272);
  sub_22BF158B4(v2, v0);

  return sub_22BF158B4(v2, v0);
}

uint64_t sub_22BE256B0()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
}

uint64_t sub_22BE256D4(uint64_t result)
{
  *(result + 36) = 0;
  *(result + 16) = sub_22BF2E964;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_22BE256F4()
{

  return sub_22C273F34();
}

uint64_t sub_22BE25720(uint64_t a1)
{
  *(v1 - 104) = a1;

  return swift_slowAlloc();
}

uint64_t sub_22BE25798()
{
  v2 = *(v0 - 96);

  return sub_22C273E44();
}

void sub_22BE257BC()
{
  v4 = *(v0 + 16);
  *(v3 - 144) = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  *(v3 - 136) = v4;
  *(v3 - 152) = v1 + 32;
}

uint64_t sub_22BE258C0()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE258F4@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

unint64_t sub_22BE25918()
{
  *(v2 - 67) = *(v0 + *(v1 + 24));
  *(v2 - 68) = 2;

  return sub_22BF40E6C();
}

void sub_22BE259C8()
{
  v1 = *(v0 - 144);
  v2 = *(v0 - 264);
  v3 = *(v0 - 304);
}

uint64_t sub_22BE259EC()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE25A38()
{
  v2 = *(v0 - 96);

  return sub_22C273FA4();
}

uint64_t sub_22BE25AC8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t sub_22BE25AE8()
{
}

uint64_t sub_22BE25B00()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22BE25B84()
{

  return sub_22C194C00(v1, v3 + v2, v0);
}

uint64_t sub_22BE25BB8()
{
  v3 = *(v2 - 168) + *(v1 + 72) * v0;
  v4 = *(v1 + 16);
  result = *(v2 - 160);
  v6 = *(v2 - 176);
  return result;
}

uint64_t sub_22BE25C14()
{
}

void sub_22BE25C30()
{
  v1 = *(v0 - 320);
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v0 - 360);
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
}

uint64_t sub_22BE25D28()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE25D44(uint64_t a1)
{

  return sub_22BE2B984(a1, v2, v3, v1);
}

unint64_t sub_22BE25D60(uint64_t a1)
{

  return sub_22BE48F64(a1);
}

uint64_t sub_22BE25DAC()
{

  return sub_22C274154();
}

uint64_t Toolbox.init(toolDatabase:schemaProvider:clientActions:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ToolboxCache();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_22BE40C08(v8, MEMORY[0x277D84F98]);
  sub_22BE26B00(a1, a4 + 16);
  *(a4 + 56) = a3;
  sub_22BE26B00(a2, a4 + 64);
  sub_22BE5CE4C(&qword_27D90B2C8, &qword_22C28C988);
  v9 = swift_allocObject();
  sub_22BE256D4(v9);
  sub_22BE26B64(a2);
  result = sub_22BE26B64(a1);
  *(a4 + 8) = v9;
  return result;
}

uint64_t sub_22BE25EA0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BE5CE4C(&qword_27D90B3A8, &qword_22C28CD78);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_22BE25F34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22BE25F6C(uint64_t a1)
{
  *(a1 + 8) = sub_22BF80964;
  result = v1[11];
  v3 = v1[12];
  v4 = v1[5];
  return result;
}

uint64_t sub_22BE25FB0(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return sub_22C270494();
}

void Session.Transcript.init(sessionId:clientSessionId:clientApplicationId:clientGroupId:events:)()
{
  sub_22BE19460();
  v6 = v5;
  sub_22C18F2A8();
  sub_22BE3F3E4();
  v7 = sub_22C26E1D4();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE180C8();
  v11(v10);
  v12 = type metadata accessor for Session.Transcript(0);
  sub_22C18FF20(*(v12 + 20));
  v14 = (v4 + v13[6]);
  *v14 = v3;
  v14[1] = v2;
  v15 = (v4 + v13[7]);
  *v15 = v1;
  v15[1] = v0;
  *(v4 + v13[8]) = v6;
  sub_22BE1AABC();
}

void sub_22BE260C4()
{
  *(v2 - 248) = (v0 + 63) >> 6;
  *(v2 - 240) = v1;
  v3 = *(v2 - 176);
  *(v2 - 232) = v3 + 16;
  v4 = *(v2 - 96);
  *(v2 - 120) = v3 + 32;
  *(v2 - 136) = v4 + 16;
  *(v2 - 128) = v4 + 32;
  *(v2 - 216) = v3 + 8;
  *(v2 - 208) = v4 + 8;
}

void sub_22BE261E0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t static PlatformPnRTelemetry.ended(_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19668();
  v12 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = type metadata accessor for Session.Transcript(0);
  sub_22BE26400(*(a2 + *(v19 + 32)), v3);
  v20 = type metadata accessor for Session.Event(0);
  sub_22BE25A50(v20);
  if (v21)
  {
    sub_22BE33928(v3, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    Session.Event.formingTraceIds()();
    sub_22BE34278(v3);
  }

  v22 = sub_22C271E24();
  sub_22BE2B7A4(v22);
  v24[0] = v16;
  v24[1] = v17;
  v24[2] = v18;
  static PlatformPnRTelemetry.ended(_:_:_:)(v24, v4, a3);
  return sub_22BE33928(v4, &qword_27D908318, &unk_22C27A418);
}

uint64_t sub_22BE2642C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = v5 - 1;
    v9 = a2(0);
    sub_22BE95C0C(a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v8, a4, a3);
    sub_22BE187DC();
    v13 = v9;
  }

  else
  {
    a2(0);
    v10 = sub_22BE3116C();
  }

  return sub_22BE19DC4(v10, v11, v12, v13);
}

uint64_t Session.Event.formingTraceIds()()
{
  v1 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v6 = __src - v5;
  v7 = sub_22C26E1D4();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v15 = v14 - v13;
  sub_22C271E14();
  if (qword_28107B210 != -1)
  {
    sub_22BE188F0();
  }

  sub_22C2742D4();
  if (__src[3] == 1)
  {
    *__dst = 0;
    __dst[8] = 1;
    memset(&__dst[16], 0, 72);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  sub_22BE341BC(__dst);
  sub_22C271DE4();
  v16 = type metadata accessor for Session.Event(0);
  (*(v10 + 16))(v15, v0 + v16[5], v7);
  sub_22C271E04();
  sub_22BE184D0(v16[8]);
  sub_22BE1A590();
  sub_22C271D94();
  sub_22BE184D0(v16[9]);
  sub_22BE1A590();
  sub_22C271DA4();
  sub_22BE184D0(v16[10]);
  sub_22BE1A590();
  sub_22C271DB4();
  sub_22BE184D0(v16[11]);
  sub_22BE1A590();
  sub_22C271DC4();
  sub_22BE2B9D0(v0 + v16[6], v6, &qword_27D9082F0, &qword_22C27AB00);
  return sub_22C271D84();
}

uint64_t sub_22BE2674C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BE267A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_22BE26810(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v3 + 16);
  result = a1 + v2;
  v7 = *(v4 - 144);
  return result;
}

void sub_22BE26828()
{
  v2 = *(v0 + 16) + 1;

  sub_22BE66B04(0, v2, 1, v0);
}

uint64_t sub_22BE2692C()
{

  return swift_beginAccess();
}

uint64_t sub_22BE26968()
{

  return sub_22BE904B4(v2, v1, v0);
}

uint64_t sub_22BE269A8()
{

  return static SessionInjection.request<A, B>(id:instanceId:_:_:injectionContext:with:isolatedTo:expecting:)();
}

uint64_t sub_22BE269BC()
{

  return sub_22C273E44();
}

uint64_t sub_22BE26A04()
{

  return sub_22BF1F294(v1, v0);
}

uint64_t sub_22BE26B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BE26B64(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Session.SessionState.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for Session.Event(0);
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v17);
  sub_22BE360F8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  sub_22BE18AF8();
  v48 = a2;
  sub_22BE28A90(a1, a2, v24);
  v25 = *(type metadata accessor for Session.Transcript(0) + 32);
  v47 = a1;
  v26 = *(a1 + v25);
  v27 = *(v26 + 16);

  v29 = v27;
  do
  {
    if (v29)
    {
      if (--v29 >= v27)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v30 = v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v31 = *(v9 + 72);
      sub_22BE1C040();
      sub_22BE28A90(v32, v23, v33);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    sub_22BE19DC4(v23, v34, 1, v6);
    sub_22BE26EE0(v23, v21);
    if (sub_22BE1AEA8(v21, 1, v6) == 1)
    {
      v39 = 0;
      goto LABEL_10;
    }

    sub_22BE18F14();
    sub_22BE3F2A0(v21, v14, v35);
    sub_22C19B5A0(&v50, v14);
    sub_22BE17E14();
    result = sub_22BE26F74(v14, v36);
  }

  while ((v50 & 0x100000000) != 0);
  v39 = v50;
  while (1)
  {
    if (v29)
    {
      if (--v29 >= v27)
      {
        goto LABEL_21;
      }

      v40 = v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v41 = *(v9 + 72);
      sub_22BE1C040();
      sub_22BE28A90(v42, v3, v43);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    sub_22BE19DC4(v3, v44, 1, v6);
    sub_22BE26EE0(v3, v2);
    if (sub_22BE1AEA8(v2, 1, v6) == 1)
    {
      break;
    }

    sub_22BE18F14();
    sub_22BE3F2A0(v2, v14, v45);
    sub_22C19B5A0(&v49, v14);
    sub_22BE17E14();
    result = sub_22BE26F74(v14, v46);
    if ((v49 & 0x100000000) == 0 && v39 <= v49)
    {
      v39 = v49;
    }
  }

LABEL_10:

  if (v39 != -1)
  {
    type metadata accessor for Session.StatementIdCounter();
    v37 = swift_allocObject();
    *(v37 + 16) = v39 + 1;
    sub_22BE186F0();
    sub_22BE26F74(v47, v38);
    result = type metadata accessor for Session.SessionState();
    *(v48 + *(result + 20)) = v37;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22BE26EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE26F74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ODPEvent.__deallocating_deinit()
{
  sub_22BE18CC8();
  sub_22BE1ADA8(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_timestamp;
  v4 = sub_22C26E164();
  sub_22BE18000(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_22BE27098()
{
  v2 = *(v0 + 24);

  return sub_22C2704B4();
}

uint64_t getEnumTagSinglePayload for PlannerError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_22BE271CC()
{
  result = qword_28106E950[0];
  if (!qword_28106E950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106E950);
  }

  return result;
}

uint64_t sub_22BE2723C()
{
  v2 = *(v0 - 176);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t sub_22BE272C0(uint64_t result)
{
  *(v1 - 104) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_22BE2730C()
{
  v2 = *(v1 - 216);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t ODPEvent.init(_:)(uint64_t a1)
{
  v3 = sub_22C26E164();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v8 = v7 - v6;
  sub_22BE274A8(a1, v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_payload);
  sub_22C26E134();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_timestamp, v8, v3);
  v9 = mach_absolute_time();
  sub_22BE18CC8();
  sub_22BE1ADA8(a1, v10);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_machAbsoluteTime) = v9;
  return v1;
}

uint64_t ODPEvent.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ODPEvent.init(_:)(a1);
  return v5;
}

uint64_t sub_22BE274A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODPEventPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void TailTranscriptProtocol.latestRequestEvent()()
{
  sub_22BE19460();
  v60 = type metadata accessor for Session.Event.Payload(0);
  v3 = sub_22BE18000(v60);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE35AE8();
  v6 = type metadata accessor for Session.Event(0);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v61 = v10;
  sub_22BE3EB10();
  v12 = *(v11 + 8);
  sub_22BE3A540();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v58 = v14;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  v64 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BE3C50C();
  v63 = sub_22C273844();
  v19 = sub_22BE179D8(v63);
  v57 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  sub_22BE181E4();
  sub_22C1AE2B0();
  v27 = *(*(sub_22C26F7B4() - 8) + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE2C64C();
  sub_22BE2565C();
  sub_22C2736C4();
  sub_22BE1C3BC();
  swift_getWitnessTable();
  v29 = v2;
  v30 = sub_22C273394();
  v65 = sub_22C2734A4();
  v62 = (v58 + 32);
  v59 = (v58 + 8);
  while (1)
  {
    sub_22BE3E8FC();
    if (v65 == sub_22C273564())
    {
      v31 = sub_22BE391E8();
      goto LABEL_7;
    }

    v33 = v29;
    sub_22BE3E8FC();
    v34 = sub_22C273544();
    sub_22C2734E4();
    if ((v34 & 1) == 0)
    {
      break;
    }

    (*(*(TupleTypeMetadata2 - 8) + 16))(v25, v30 + ((*(*(TupleTypeMetadata2 - 8) + 80) + 32) & ~*(*(TupleTypeMetadata2 - 8) + 80)) + *(*(TupleTypeMetadata2 - 8) + 72) * v65, TupleTypeMetadata2);
LABEL_6:
    v29 = v33;
    sub_22C2735A4();
    v31 = v25;
    v32 = 0;
LABEL_7:
    sub_22BE19DC4(v31, v32, 1, TupleTypeMetadata2);
    (*(v57 + 32))(v0, v25, v63);
    sub_22BE1A940();
    sub_22BE1AB5C(v35, v36, v37);
    if (v38)
    {

      sub_22BE1C0A4();
      swift_getTupleTypeMetadata2();
      sub_22BE1A140();
LABEL_14:
      sub_22BE19DC4(v50, v51, v52, v53);
      sub_22BE1AABC();
      return;
    }

    v39 = v29;
    v40 = *(TupleTypeMetadata2 + 48);
    v41 = *v62;
    v42 = sub_22BE2590C();
    v41(v42);
    sub_22BE18B40();
    sub_22BE3F300();
    v43 = *(v64 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 3)
    {

      sub_22BE17E60();
      sub_22BE1AE00(v1, v54);
      sub_22BE1C0A4();
      v55 = *(swift_getTupleTypeMetadata2() + 48);
      v56 = sub_22BE1B328();
      v41(v56);
      sub_22BE18B40();
      sub_22BE3F300();
      sub_22BE25FFC();
      goto LABEL_14;
    }

    sub_22BE1AE00(v61, type metadata accessor for Session.Event);
    v44 = *v59;
    v45 = sub_22BE194F8();
    v46(v45);
    sub_22BE17E60();
    sub_22BE1AE00(v1, v47);
    v29 = v39;
  }

  sub_22BE1804C();
  v48 = sub_22C273AF4();
  if (*(*(TupleTypeMetadata2 - 8) + 64) == 8)
  {
    sub_22BE23F18(v48);
    v49(v25);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22BE27A98()
{
  v4 = *(v1 + 48);
  v5 = v2 + *(v1 + 64);

  return sub_22BE1AE00(v5, v0);
}

uint64_t sub_22BE27B14()
{
  sub_22C274154();
  v0 = sub_22BEC03B0();
  MEMORY[0x2318AC890](v0);
  return sub_22C2741A4();
}

uint64_t sub_22BE27B5C()
{

  return sub_22BEBFDC4();
}

uint64_t sub_22BE27BB0()
{
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
}

uint64_t sub_22BE27BD8()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t Session.Transcript.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session.Transcript(0) + 32));
}

unint64_t sub_22BE27CFC()
{
  result = qword_28106DAC8;
  if (!qword_28106DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DAC8);
  }

  return result;
}

uint64_t Session.InstrumentableEvent.encode(to:)(void *a1)
{
  v2 = type metadata accessor for Session.Event(0);
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v34 = v7 - v6;
  v8 = type metadata accessor for TranscriptProtoEvent(0);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v12 = sub_22BE5CE4C(&qword_27D907DF8, &qword_22C278138);
  v13 = sub_22BE179D8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v33 - v18;
  v20 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE280C0();
  v21 = v36;
  sub_22C274234();
  LOBYTE(v37) = 0;
  sub_22BE17AF4();
  sub_22BE286A8(v22, v23);
  v24 = v35;
  sub_22C273FA4();
  if (!v24)
  {
    sub_22BE1BDF0();
    sub_22BE3B980(v21, v34, v25);
    TranscriptProtoEvent.init(handwritten:)();
    sub_22BE286A8(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);
    v27 = sub_22C270744();
    v29 = v28;
    v37 = v27;
    v38 = v28;
    v39 = 1;
    sub_22BE3BE7C();
    sub_22C273FA4();
    v30 = (v36 + *(type metadata accessor for Session.InstrumentableEvent() + 20));
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v37) = 2;
    sub_22C273F54();
    sub_22BE29DD4(v27, v29);
    sub_22BE18838();
  }

  return (*(v15 + 8))(v19, v12);
}

unint64_t sub_22BE280C0()
{
  result = qword_28106EB30;
  if (!qword_28106EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106EB30);
  }

  return result;
}

_BYTE *_s19InstrumentableEventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22BE281E0);
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

uint64_t ODPEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_timestamp;
  v4 = sub_22C26E164();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t getEnumTagSinglePayload for ContextProtoStructuredContextSiriRequestContextDeviceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_22BE28314(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x6576457972657571;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    case 4:
      result = 0x6552746E65696C63;
      break;
    case 5:
      result = 0x6553746E65696C63;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7247746E65696C63;
      break;
    case 8:
      result = 0x6E696F70656D6974;
      break;
    case 9:
      result = 0x7265646E6573;
      break;
    case 10:
      result = 0x53676E6974736F70;
      break;
    case 11:
      result = 0x6574616974696E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Session.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x22BE28594);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BE286A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE286FC()
{
  v2 = *(v0 - 768);

  return sub_22BE1AE58();
}

uint64_t sub_22BE28714()
{
  v3 = *(v0 + 32);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

id sub_22BE28744(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return v2;
}

uint64_t sub_22BE28764()
{

  return sub_22BE22868();
}

uint64_t sub_22BE28784(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = *(result - 8);
  return result;
}

void sub_22BE28828()
{
  sub_22BE367BC();
  v2 = sub_22C26E1D4();
  sub_22BE187D0(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    sub_22BE187D0(v4);
    if (*(v5 + 84) == v1)
    {
      sub_22BE38994();
    }

    else
    {
      v6 = type metadata accessor for Session.Event.Payload(0);
      sub_22BE187D0(v6);
      if (*(v7 + 84) == v1)
      {
        sub_22BE272B4();
      }

      else
      {
        if (v1 == 0x7FFFFFFF)
        {
          sub_22C18F7C4(*(v0 + 32));
          return;
        }

        type metadata accessor for Timepoint();
        v8 = *(v0 + 48);
      }
    }
  }

  sub_22BE38A34();

  sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE28988()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 104);
  return v0;
}

uint64_t sub_22BE2899C()
{

  return sub_22C273DE4();
}

uint64_t sub_22BE289E4()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE28A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BE28B28()
{
  sub_22BE25FE8();
  v3 = sub_22C26E1D4();
  sub_22BE187D0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BE291BC();
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
    sub_22BE187D0(v7);
    if (*(v8 + 84) == v0)
    {
      sub_22BE1C1E8();
    }

    else
    {
      v10 = type metadata accessor for Session.Event.Payload(0);
      sub_22BE187D0(v10);
      if (*(v11 + 84) == v0)
      {
        sub_22BE22B34();
      }

      else
      {
        if (v0 == 0x7FFFFFFF)
        {
          return sub_22BE1A5D0(*(v1 + *(v2 + 32) + 8));
        }

        v6 = type metadata accessor for Timepoint();
        v9 = *(v2 + 48);
      }
    }

    v5 = v1 + v9;
  }

  return sub_22BE1AEA8(v5, v0, v6);
}

uint64_t sub_22BE28C70()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 128);
  return result;
}

uint64_t sub_22BE28CA8()
{

  return sub_22BE2343C();
}

uint64_t sub_22BE28D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_22BE28D7C()
{
  v2 = *(v0 - 136);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t sub_22BE28DE0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BE28E40()
{

  return sub_22BEC3264();
}

uint64_t sub_22BE28F04()
{

  return sub_22C273DE4();
}

void sub_22BE28F38()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
}

uint64_t sub_22BE28F48@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_22BE28FB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  return result;
}

uint64_t sub_22BE28FF0()
{
  v3 = *(v0 - 288);
  v4 = *(v0 - 296);

  return sub_22C2735B4();
}

uint64_t sub_22BE29060()
{

  return sub_22BE424BC();
}

uint64_t sub_22BE29080()
{

  return sub_22C271D74();
}

uint64_t sub_22BE290A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

void sub_22BE290B4()
{

  JUMPOUT(0x2318AC860);
}

void sub_22BE291C8()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[15];
  v4 = v0[12];
}

uint64_t sub_22BE29228()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE29280()
{

  return sub_22C272FB4();
}

uint64_t sub_22BE292A4()
{

  return sub_22C274014();
}

uint64_t sub_22BE29300()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE29350()
{
  v2 = *(v0 - 128);

  return sub_22BEBFC80();
}

uint64_t sub_22BE29390()
{

  return sub_22C273FA4();
}

uint64_t sub_22BE293BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 4) = a1;
  *(v9 + 12) = 2080;

  return sub_22BE61C88(0xD000000000000087, v10 | 0x8000000000000000, &a9);
}

uint64_t sub_22BE29494(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_22BE294A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t sub_22BE294C8()
{

  return sub_22C2704B4();
}

uint64_t sub_22BE294F8(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_22C270494();
}

uint64_t sub_22BE29520(uint64_t a1)
{
  sub_22BE19DC4(v1 + v3, 1, 1, a1);
  result = sub_22BE19DC4(v1 + *(v2 + 28), 1, 1, a1);
  v6 = *(v2 + 32);
  return result;
}

uint64_t sub_22BE29564(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BE295D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = sub_22C272DC4();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22C272E04();
  v16 = sub_22BE179D8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v23 = v22 - v21;
  v34 = a1;
  sub_22C272DF4();
  MEMORY[0x2318AB4D0](&v34, &v35);
  v24 = sub_22BE297F8(a2, a3);
  v26 = v25;
  sub_22BE19208();
  sub_22BF153E0(v27, v28, v23, v29, v30, MEMORY[0x277CC5540]);
  sub_22BE29DD4(v24, v26);
  sub_22C272DE4();
  sub_22BE1A65C();
  sub_22C272DB4();
  (*(v9 + 8))(v14, v6);
  (*(v18 + 8))(v23, v15);
  v31 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_22BE297F8(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  *&v46 = a1;
  *(&v46 + 1) = a2;

  sub_22BE5CE4C(&qword_27D90B190, &qword_22C28C158);
  if (swift_dynamicCast())
  {
    sub_22BE49224(v44, &v47);
    sub_22BE1BD3C(&v47, v48);
    sub_22BE18574();
    sub_22C26DD64();
    v44[0] = v46;
    sub_22BE26B64(&v47);
    goto LABEL_59;
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_22BF157F8(v44);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v44[0] = a1;
    *(&v44[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v44;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22C273B44();
  }

  sub_22BE29CB4(v4, v5, &v47);
  v6 = *(&v47 + 1);
  v7 = v47;
  if (*(&v47 + 1) >> 60 != 15)
  {
    v44[0] = v47;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v44[0] = MEMORY[0x2318A66F0](v8);
  *(&v44[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v44[0]);
  v10 = sub_22BF14E88(sub_22BF15898);
  v12 = *(&v44[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v44[0]);
  switch(*(&v44[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v44[0]) - LODWORD(v44[0]);
      if (__OFSUB__(DWORD1(v44[0]), v44[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v44[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v44[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v44[0] + 16);
      v20 = *(*&v44[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_22C26DFE4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v43 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v46 + 7) = 0;
      *&v46 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v44[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = sub_22BE1B398();
      v27 = sub_22C192BB0(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_22C273214();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_22C273254();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v47 = v13;
      *(&v47 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v47 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_22C273B44();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = sub_22BE1B398();
      v17 = sub_22C192BB0(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    sub_22BE1B398();
    v17 = sub_22C273224();
LABEL_46:
    *(&v46 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      sub_22BE1A24C();
      sub_22C26E004();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    sub_22BE1A24C();
    sub_22C26E004();
    sub_22BF158B4(v43, v6);
    goto LABEL_58;
  }

  sub_22BF158B4(v43, v6);
LABEL_59:
  v37 = sub_22BE18040();
  sub_22BE29D7C(v37, v38);

  v39 = sub_22BE18040();
  sub_22BE29DD4(v39, v40);
  v41 = *MEMORY[0x277D85DE8];
  return sub_22BE18040();
}

uint64_t sub_22BE29CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22C26DF74();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22C26DD24();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22C26DCE4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22C26DFD4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_22BE29D7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22BE29DD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22BE29E2C()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);

  return sub_22C273EE4();
}

uint64_t sub_22BE29E58()
{

  return sub_22C273E44();
}

void sub_22BE29E9C()
{
  v4 = v1[11];
  v3 = v1[12];
  v6 = v1[9];
  v5 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  v10 = v1[5];
  v9 = v1[6];
}

void sub_22BE29ED4(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
}

uint64_t sub_22BE29EF0(uint64_t a1)
{
  sub_22BE19DC4(v1 + v3, 1, 1, a1);
  v4 = *(v2 + 24);
  return 0;
}

void sub_22BE29F2C(char a1@<W8>)
{
  v3 = *(v2 - 96);
  v4 = *(v2 - 112);
  *v3 = v1;
  *(v3 + 8) = v4;
  *(v3 + 16) = a1;
}

uint64_t sub_22BE29F88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Session.Event.Payload.queryBehavior.getter()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for Session.Event.Payload(v1);
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  sub_22BE1C058();
  v6 = sub_22BE1804C();
  sub_22BE1A964(v6, v7);
  sub_22BE1A8C4();
  result = swift_getEnumCaseMultiPayload();
  if ((result - 22) < 3)
  {
    v9 = 2;
LABEL_10:
    result = sub_22C171FFC();
    goto LABEL_11;
  }

  if (!result)
  {
    v9 = 3;
    goto LABEL_10;
  }

  if (result == 3)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (result != 43)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = 3;
LABEL_11:
  *v0 = v9;
  return result;
}

Swift::Void __swiftcall TranscriptProtoEvent.prepareForLogging()()
{
  sub_22BE19460();
  v353 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v3 = sub_22BE179D8(v353);
  v329 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17B98();
  v352 = v7;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  v356 = v9;
  v10 = sub_22BE183BC();
  v11 = type metadata accessor for TranscriptProtoVariableStep(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v17 = sub_22BE18950(v16 - v15);
  v330 = type metadata accessor for TranscriptProtoStatementResult(v17);
  v18 = sub_22BE179D8(v330);
  v328 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v342 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v355 = v24;
  v25 = sub_22BE183BC();
  v26 = type metadata accessor for TranscriptProtoResponseGenerationRequest(v25);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v341 = v31 - v30;
  v32 = sub_22BE183BC();
  v359 = type metadata accessor for TranscriptProtoCandidate(v32);
  v33 = sub_22BE179D8(v359);
  v348 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE183AC();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v41 = sub_22BE2558C();
  Results = type metadata accessor for TranscriptProtoQueryResults(v41);
  v349 = *(Results - 8);
  v43 = *(v349 + 64);
  MEMORY[0x28223BE20](Results - 8);
  sub_22BE17B98();
  v354 = v44;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v45);
  v357 = &v317 - v46;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v47);
  sub_22BE19E94();
  v350 = v48;
  v49 = sub_22BE183BC();
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(v49);
  v51 = sub_22BE19448(StepResults);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE179EC();
  v56 = sub_22BE18950(v55 - v54);
  v346 = type metadata accessor for TranscriptProtoParameter(v56);
  v57 = sub_22BE179D8(v346);
  v327 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v345 = v61;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v62);
  v351 = &v317 - v63;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v347 = v65;
  v66 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  v67 = sub_22BE19448(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = sub_22BE18950(&v317 - v70);
  v337 = type metadata accessor for TranscriptProtoParameterSet(v71);
  v72 = sub_22BE18000(v337);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE179EC();
  v77 = sub_22BE18950(v76 - v75);
  v333 = type metadata accessor for TranscriptProtoActionResolverRequest(v77);
  v78 = sub_22BE18000(v333);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22BE179EC();
  sub_22BE18950(v82 - v81);
  v358 = sub_22C272594();
  v83 = sub_22BE179D8(v358);
  v334 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22BE179EC();
  v331 = v88 - v87;
  v89 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  v90 = sub_22BE19448(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  sub_22BE17B98();
  v339 = v93;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v94);
  sub_22BE19E94();
  v343 = v95;
  v96 = sub_22BE183BC();
  v97 = type metadata accessor for TranscriptProtoActionParameterValue(v96);
  v344 = *(v97 - 8);
  v98 = *(v344 + 64);
  MEMORY[0x28223BE20](v97 - 8);
  sub_22BE183AC();
  v101 = v99 - v100;
  MEMORY[0x28223BE20](v102);
  v104 = &v317 - v103;
  v105 = type metadata accessor for TranscriptProtoAction(0);
  v106 = sub_22BE19448(v105);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  sub_22BE179EC();
  v111 = v110 - v109;
  v112 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v113 = sub_22BE19448(v112);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v116);
  v118 = &v317 - v117;
  v119 = *(type metadata accessor for TranscriptProtoEvent(0) + 44);
  v120 = type metadata accessor for TranscriptProtoPayload(0);
  if (sub_22BE3744C(v0 + v119))
  {
    v121 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    sub_22BE2F260(v121, v122, v123, v121);
  }

  else
  {
    v323 = v2;
    v324 = v104;
    v321 = v101;
    v320 = v111;
    v322 = v120;
    sub_22BE2B9D0(v0 + v119, v118, &qword_27D90E450, &qword_22C2AE470);
    v124 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    if (sub_22BE3744C(v118) != 1)
    {
      v125 = v323;
      sub_22BE2B9D0(v118, v323, &qword_27D90E450, &qword_22C2AE470);
      v318 = v124;
      v126 = swift_getEnumCaseMultiPayload() - 5;
      v127 = v0;
      v319 = v0;
      v325 = v118;
      v326 = v119;
      switch(v126)
      {
        case 0:
          v128 = sub_22BE19EBC();
          v129 = v320;
          sub_22C194BA0(v128, v320, v130);
          v131 = *(v129 + 8);
          sub_22BE5CE4C(&qword_27D915300, &qword_22C2CC8C0);
          v132 = sub_22C273D04();
          v133 = v132;
          v134 = 0;
          v136 = v131 + 8;
          v135 = v131[8];
          v356 = v131;
          v137 = 1 << *(v131 + 32);
          v138 = -1;
          if (v137 < 64)
          {
            v138 = ~(-1 << v137);
          }

          i = v138 & v135;
          v140 = (v137 + 63) >> 6;
          v352 = (v334 + 32);
          v355 = v132 + 64;
          v141 = v344;
          v142 = v324;
          v354 = v132;
          if ((v138 & v135) != 0)
          {
            goto LABEL_8;
          }

LABEL_9:
          v144 = v134;
          v145 = v322;
          while (2)
          {
            v134 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            if (v134 < v140)
            {
              v146 = v136[v134];
              ++v144;
              if (v146)
              {
                v143 = __clz(__rbit64(v146));
                for (i = (v146 - 1) & v146; ; i &= i - 1)
                {
                  v147 = v143 | (v134 << 6);
                  v148 = v356[7];
                  v149 = (v356[6] + 16 * v147);
                  v127 = v149[1];
                  v357 = *v149;
                  v359 = *(v141 + 72) * v147;
                  v118 = v142;
                  sub_22C194C00(v148 + v359, v142, type metadata accessor for TranscriptProtoActionParameterValue);
                  v150 = v321;
                  sub_22C194C00(v118, v321, type metadata accessor for TranscriptProtoActionParameterValue);
                  v151 = type metadata accessor for TranscriptProtoToolParameterValue(0);
                  if (sub_22BE22D48(v151))
                  {

                    sub_22BE1B4FC();
                    sub_22BE3AD48(v118, v152);
                  }

                  else
                  {
                    v153 = v343;
                    sub_22BE2B9D0(v150, v343, &qword_27D90F038, &qword_22C297100);
                    v118 = v153;
                    v353 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
                    v154 = sub_22BE1AEA8(v153, 1, v353);
                    v155 = v150;
                    v156 = v339;
                    if (v154 == 1)
                    {

                      sub_22BE1B4FC();
                      sub_22BE3AD48(v324, v157);
                      v158 = v118;
                    }

                    else
                    {
                      sub_22BE2B9D0(v118, v339, &qword_27D90F038, &qword_22C297100);
                      v118 = v352;
                      v159 = *v352;
                      v160 = v156;
                      v161 = v331;
                      (*v352)(v331, v160, v358);

                      sub_22C193960();
                      sub_22BE1B4FC();
                      sub_22BE3AD48(v324, v162);
                      sub_22BE33928(v155, &qword_27D90F038, &qword_22C297100);
                      v159(v155, v161, v358);
                      v119 = v326;
                      sub_22BE187DC();
                      sub_22BE19DC4(v163, v164, v165, v353);
                      v158 = v343;
                    }

                    sub_22BE33928(v158, &qword_27D90F038, &qword_22C297100);
                    v150 = v155;
                    v133 = v354;
                  }

                  *(v355 + ((v147 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v147;
                  v166 = (v133[6] + 16 * v147);
                  *v166 = v357;
                  v166[1] = v127;
                  sub_22C194BA0(v150, v133[7] + v359, type metadata accessor for TranscriptProtoActionParameterValue);
                  v167 = v133[2];
                  v168 = __OFADD__(v167, 1);
                  v169 = v167 + 1;
                  if (v168)
                  {
                    break;
                  }

                  v133[2] = v169;
                  sub_22BE26A84();
                  v141 = v344;
                  v142 = v324;
                  if (!i)
                  {
                    goto LABEL_9;
                  }

LABEL_8:
                  v143 = __clz(__rbit64(i));
                }

LABEL_95:
                __break(1u);
                JUMPOUT(0x22BE2B6E4);
              }

              continue;
            }

            break;
          }

          v173 = v320;
          *(v320 + 8) = v133;
          if (!sub_22BE1AEA8(v127 + v119, 1, v145))
          {
            sub_22BE33928(v127 + v119, &qword_27D90E450, &qword_22C2AE470);
            sub_22BE25B84();
            v252 = v318;
            swift_storeEnumTagMultiPayload();
            sub_22BE187DC();
            sub_22BE19DC4(v253, v254, v255, v252);
          }

          v256 = type metadata accessor for TranscriptProtoAction;
          break;
        case 3:
          v206 = sub_22BE19EBC();
          v207 = v336;
          sub_22C194BA0(v206, v336, v208);
          v209 = *v207;
          v210 = *(*v207 + 16);
          if (v210)
          {
            v211 = sub_22BE3B138(MEMORY[0x277D84F90]);
            sub_22BE7090C(v211, v212, v213);
            v214 = v361;
            sub_22BE3D52C(&v361);
            v118 = v216 & ~v215;
            v217 = v209 + v118;
            v219 = *(v218 + 72);
            v220 = v356;
            do
            {
              v221 = v352;
              sub_22C194C00(v217, v352, type metadata accessor for TranscriptProtoVariableSetter);
              sub_22C194C00(v221, v220, type metadata accessor for TranscriptProtoVariableSetter);
              if (!sub_22BE1AEA8(v220 + *(v353 + 20), 1, v358))
              {
                sub_22C193960();
              }

              sub_22BE3AD48(v221, type metadata accessor for TranscriptProtoVariableSetter);
              v361 = v214;
              v223 = v214[2];
              v222 = v214[3];
              v127 = v223 + 1;
              if (v223 >= v222 >> 1)
              {
                v225 = sub_22BE237B4(v222);
                sub_22BE7090C(v225, v223 + 1, 1);
                v214 = v361;
              }

              v214[2] = v127;
              v224 = v214 + v118 + v223 * v219;
              v220 = v356;
              sub_22C194BA0(v356, v224, type metadata accessor for TranscriptProtoVariableSetter);
              v217 += v219;
              --v210;
            }

            while (v210);

            sub_22BE26A84();
          }

          else
          {
            v290 = *v207;

            v214 = MEMORY[0x277D84F90];
          }

          *v207 = v214;
          v291 = v326;
          v292 = sub_22BE23DB8(v127 + v326);
          v294 = *(v293 - 256);
          if (!v292)
          {
            sub_22BE33928(v127 + v291, &qword_27D90E450, &qword_22C2AE470);
            sub_22C194C00(v207, v127 + v291, type metadata accessor for TranscriptProtoVariableStep);
            swift_storeEnumTagMultiPayload();
            sub_22BE187DC();
            sub_22BE19DC4(v295, v296, v297, v294);
          }

          v298 = type metadata accessor for TranscriptProtoVariableStep;
          goto LABEL_85;
        case 6:
          v172 = sub_22BE19EBC();
          v173 = v340;
          sub_22C194BA0(v172, v340, v174);
          v175 = *v173;
          v176 = *(*v173 + 16);
          if (v176)
          {
            v177 = sub_22BE3B138(MEMORY[0x277D84F90]);
            sub_22BE70C24(v177, v178, v179);
            v180 = 0;
            v356 = v361;
            v182 = v348;
            v181 = v349;
            v346 = (*(v349 + 80) + 32) & ~*(v349 + 80);
            v347 = v176;
            v345 = v175 + v346;
            v183 = v354;
            v351 = v175;
            do
            {
              if (v180 >= *(v175 + 16))
              {
                goto LABEL_94;
              }

              v184 = *(v181 + 72);
              v355 = v180;
              v353 = v184;
              v185 = v357;
              sub_22C194C00(v345 + v184 * v180, v357, type metadata accessor for TranscriptProtoQueryResults);
              sub_22C194C00(v185, v183, type metadata accessor for TranscriptProtoQueryResults);
              v186 = *v183;
              v187 = *(*v183 + 16);
              if (v187)
              {
                v360 = MEMORY[0x277D84F90];
                sub_22BE708B4(0, v187, 0);
                v188 = v358;
                v189 = v360;
                v190 = v182;
                v191 = (*(v182 + 80) + 32) & ~*(v182 + 80);
                v352 = v186;
                v192 = v186 + v191;
                v193 = *(v190 + 72);
                do
                {
                  sub_22C194C00(v192, v39, type metadata accessor for TranscriptProtoCandidate);
                  sub_22C194C00(v39, v1, type metadata accessor for TranscriptProtoCandidate);
                  if (!sub_22BE1AEA8(v1 + *(v359 + 20), 1, v188))
                  {
                    sub_22C193960();
                    v188 = v358;
                  }

                  sub_22BE3AD48(v39, type metadata accessor for TranscriptProtoCandidate);
                  v360 = v189;
                  v195 = *(v189 + 16);
                  v194 = *(v189 + 24);
                  if (v195 >= v194 >> 1)
                  {
                    sub_22BE708B4(v194 > 1, v195 + 1, 1);
                    v188 = v358;
                    v189 = v360;
                  }

                  *(v189 + 16) = v195 + 1;
                  sub_22C194BA0(v1, v189 + v191 + v195 * v193, type metadata accessor for TranscriptProtoCandidate);
                  v192 += v193;
                  --v187;
                }

                while (v187);
                sub_22BE38414();
                sub_22BE3AD48(v357, v196);

                v118 = v325;
                v182 = v348;
                v181 = v349;
              }

              else
              {
                sub_22BE38414();
                sub_22BE3AD48(v185, v197);

                v189 = MEMORY[0x277D84F90];
              }

              v183 = v354;
              *v354 = v189;
              sub_22BE1A3F0();
              v198 = v350;
              sub_22C194BA0(v183, v350, v199);
              v200 = v356;
              v361 = v356;
              v202 = v356[2];
              v201 = v356[3];
              if (v202 >= v201 >> 1)
              {
                v205 = sub_22BE237B4(v201);
                sub_22BE70C24(v205, v202 + 1, 1);
                v181 = v349;
                v200 = v361;
              }

              v180 = v355 + 1;
              v200[2] = v202 + 1;
              v356 = v200;
              sub_22BE1A3F0();
              sub_22C194BA0(v198, v203, v204);
              v119 = v326;
              v175 = v351;
            }

            while (v180 != v347);

            v173 = v340;
            v127 = v319;
            v257 = v356;
          }

          else
          {
            v283 = *v173;

            v257 = MEMORY[0x277D84F90];
          }

          *v173 = v257;
          v284 = sub_22BE23DB8(v127 + v119);
          v286 = *(v285 - 256);
          if (!v284)
          {
            sub_22BE33928(v127 + v119, &qword_27D90E450, &qword_22C2AE470);
            sub_22BE25B84();
            swift_storeEnumTagMultiPayload();
            sub_22BE187DC();
            sub_22BE19DC4(v287, v288, v289, v286);
          }

          v256 = type metadata accessor for TranscriptProtoQueryStepResults;
          break;
        case 7:
          v226 = sub_22BE19EBC();
          v227 = v338;
          sub_22C194BA0(v226, v338, v228);
          v229 = *(v333 + 28);
          v230 = v335;
          sub_22BE2B9D0(v227 + v229, v335, &qword_27D90ECF8, &qword_22C2970B0);
          v231 = v337;
          if (sub_22BE1AEA8(v230, 1, v337) == 1)
          {
            sub_22BE33928(v230, &qword_27D90ECF8, &qword_22C2970B0);
          }

          else
          {
            v258 = sub_22BE1ACF8();
            v259 = v332;
            sub_22C194BA0(v258, v332, v260);
            v261 = *v259;
            v262 = *(*v259 + 16);
            if (v262)
            {
              v263 = sub_22BE3B138(MEMORY[0x277D84F90]);
              sub_22BE7085C(v263, v264, v265);
              v266 = v361;
              sub_22BE3D52C(&v359);
              v357 = v261;
              v269 = v261 + (v268 & ~v267);
              v271 = *(v270 + 72);
              do
              {
                v272 = v351;
                sub_22C194C00(v269, v351, type metadata accessor for TranscriptProtoParameter);
                v273 = v345;
                sub_22C194C00(v272, v345, type metadata accessor for TranscriptProtoParameter);
                v274 = v273 + *(v346 + 24);
                v275 = v359;
                if (!sub_22BE1AEA8(v274, 1, v359) && !sub_22BE1AEA8(v274 + *(v275 + 20), 1, v358))
                {
                  sub_22C193960();
                }

                sub_22BE3AD48(v351, type metadata accessor for TranscriptProtoParameter);
                sub_22BE1BB80();
                v276 = v347;
                sub_22C194BA0(v273, v347, v277);
                v361 = v266;
                v279 = v266[2];
                v278 = v266[3];
                if (v279 >= v278 >> 1)
                {
                  v282 = sub_22BE237B4(v278);
                  sub_22BE7085C(v282, v279 + 1, 1);
                  v276 = v347;
                  v266 = v361;
                }

                v266[2] = v279 + 1;
                sub_22BE1BB80();
                sub_22C194BA0(v276, v280, v281);
                v269 += v271;
                --v262;
              }

              while (v262);

              v119 = v326;
              v227 = v338;
              v259 = v332;
              v231 = v337;
            }

            else
            {
              v307 = *v259;

              v266 = MEMORY[0x277D84F90];
            }

            *v259 = v266;
            sub_22BE33928(v227 + v229, &qword_27D90ECF8, &qword_22C2970B0);
            sub_22C194C00(v259, v227 + v229, type metadata accessor for TranscriptProtoParameterSet);
            sub_22BE187DC();
            sub_22BE19DC4(v308, v309, v310, v231);
            v311 = sub_22BE23DB8(v127 + v119);
            v313 = *(v312 - 256);
            if (!v311)
            {
              sub_22BE33928(v127 + v119, &qword_27D90E450, &qword_22C2AE470);
              sub_22BE25B84();
              swift_storeEnumTagMultiPayload();
              sub_22BE187DC();
              sub_22BE19DC4(v314, v315, v316, v313);
            }

            sub_22BE3AD48(v259, type metadata accessor for TranscriptProtoParameterSet);
          }

          sub_22BE3AD48(v227, type metadata accessor for TranscriptProtoActionResolverRequest);
          v118 = v325;
          goto LABEL_87;
        case 10:
          v232 = sub_22BE19EBC();
          v207 = v341;
          sub_22C194BA0(v232, v341, v233);
          v234 = *v207;
          v235 = *(*v207 + 16);
          if (v235)
          {
            v361 = MEMORY[0x277D84F90];
            sub_22BE70DA4(0, v235, 0);
            v236 = v361;
            sub_22BE3D52C(&v360);
            v127 = v238 & ~v237;
            v239 = v234 + v127;
            v118 = *(v240 + 72);
            v241 = v330;
            v242 = v342;
            v243 = v355;
            do
            {
              sub_22C194C00(v239, v242, type metadata accessor for TranscriptProtoStatementResult);
              sub_22C194C00(v242, v243, type metadata accessor for TranscriptProtoStatementResult);
              v244 = *(v241 + 20);
              v245 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
              if (!sub_22BE197D0(v245))
              {
                v246 = type metadata accessor for TranscriptProtoStatementOutcome(0);
                if (!sub_22BE197D0(v246))
                {
                  v247 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
                  if (!sub_22BE197D0(v247))
                  {
                    sub_22C1941EC();
                    v242 = v342;
                  }
                }
              }

              sub_22BE3AD48(v242, type metadata accessor for TranscriptProtoStatementResult);
              v361 = v236;
              v249 = v236[2];
              v248 = v236[3];
              if (v249 >= v248 >> 1)
              {
                v251 = sub_22BE237B4(v248);
                sub_22BE70DA4(v251, v249 + 1, 1);
                v242 = v342;
                v236 = v361;
              }

              v236[2] = v249 + 1;
              v250 = v236 + v127 + v249 * v118;
              v243 = v355;
              sub_22C194BA0(v355, v250, type metadata accessor for TranscriptProtoStatementResult);
              v239 += v118;
              --v235;
            }

            while (v235);

            sub_22BE26A84();
            v207 = v341;
          }

          else
          {
            v299 = *v207;

            v236 = MEMORY[0x277D84F90];
          }

          *v207 = v236;
          v300 = v326;
          v301 = sub_22BE23DB8(v127 + v326);
          v303 = *(v302 - 256);
          if (!v301)
          {
            sub_22BE33928(v127 + v300, &qword_27D90E450, &qword_22C2AE470);
            sub_22C194C00(v207, v127 + v300, type metadata accessor for TranscriptProtoResponseGenerationRequest);
            swift_storeEnumTagMultiPayload();
            sub_22BE187DC();
            sub_22BE19DC4(v304, v305, v306, v303);
          }

          v298 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
LABEL_85:
          v170 = v298;
          v171 = v207;
          goto LABEL_86;
        default:
          v170 = type metadata accessor for TranscriptProtoPayloadEnum;
          v171 = v125;
          goto LABEL_86;
      }

      v170 = v256;
      v171 = v173;
LABEL_86:
      sub_22BE3AD48(v171, v170);
    }
  }

LABEL_87:
  sub_22BE33928(v118, &qword_27D90E450, &qword_22C2AE470);
  sub_22BE1AABC();
}

uint64_t sub_22BE2B740()
{

  return swift_allocObject();
}

void sub_22BE2B770()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
}

uint64_t sub_22BE2B7A4(uint64_t a1)
{

  return sub_22BE19DC4(v2, v1, 1, a1);
}

uint64_t sub_22BE2B808()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE2B820()
{
  v2 = *(v1 - 72);
  result = v0;
  v4 = *(v1 - 296);
  v5 = *(v1 - 136);
  return result;
}

uint64_t sub_22BE2B838(unint64_t *a1)
{

  return sub_22BE863A0(a1);
}

uint64_t sub_22BE2B85C()
{

  return sub_22C272FD4();
}

uint64_t sub_22BE2B8DC@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_22BE2B960()
{
  *(v1 - 96) = v0;

  return sub_22C272ED4();
}

uint64_t sub_22BE2B984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE18000(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return v4;
}

uint64_t sub_22BE2B9D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BE5CE4C(a3, a4);
  sub_22BE18000(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BE2BA44()
{
  v3 = *(v2 - 120);
  v4 = (*(v3 + 48) + 16 * v0);
  v5 = *v4;
  v6 = v4[1];
  return *(v3 + 56) + *(v1 + 72) * v0;
}

void *sub_22BE2BA60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *v3 = a1;
  result = v3;
  v5 = *(v2 - 176);
  return result;
}

uint64_t sub_22BE2BAA4()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE2BB00()
{
  v2 = *(v0 - 112);

  return sub_22BE1AE58();
}

uint64_t sub_22BE2BB84()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 112);

  return sub_22C273EB4();
}

uint64_t sub_22BE2BBBC()
{

  return sub_22C272EE4();
}

uint64_t sub_22BE2BBDC()
{
  result = *(v1 + 48);
  v3 = *(v0 + 48);
  return result;
}

uint64_t sub_22BE2BC78()
{

  return sub_22C274014();
}

void sub_22BE2BD78()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE1A730();
  if (!v4 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v5 = v1[2];
    v6 = v1[3];
    sub_22BE1B448();
    if (!v7 || (sub_22BE2910C(), sub_22C270844(), !v0))
    {
      v8 = v1[4];
      v9 = v1[5];
      sub_22BE1B448();
      if (!v10 || (sub_22BE2910C(), sub_22C270844(), !v0))
      {
        v11 = v3(0);
        sub_22BE375E4(v11);
        sub_22BE363D4();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BE2BE24(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_22BE2BE3C()
{
  sub_22BE18378();
  v5 = sub_22BE39168(v1, v2, v3, v4);
  sub_22BE18000(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return v0;
}

void TranscriptProtoPayload.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE18648();
  v2 = sub_22BE289D8();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19668();
  sub_22BE36680();
  sub_22BE36CB8();
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  sub_22BE1AB5C(v0, 1, v8);
  if (!v9)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v94 = sub_22BE17D60();
        sub_22BFDAC64(v94, v95, v96, v97);
        goto LABEL_49;
      case 2u:
        v78 = sub_22BE17D60();
        sub_22BFDAE6C(v78, v79, v80, v81);
        goto LABEL_49;
      case 3u:
        v86 = sub_22BE17D60();
        sub_22BFD8BE4(v86, v87, v88, v89);
        goto LABEL_49;
      case 4u:
        v54 = sub_22BE17D60();
        sub_22BFD5F14(v54, v55, v56, v57);
        goto LABEL_49;
      case 5u:
        v114 = sub_22BE17D60();
        sub_22BFD611C(v114, v115, v116, v117);
        goto LABEL_49;
      case 6u:
        v126 = sub_22BE17D60();
        sub_22BFD6324(v126, v127, v128, v129);
        goto LABEL_49;
      case 7u:
        v90 = sub_22BE17D60();
        sub_22BFD652C(v90, v91, v92, v93);
        goto LABEL_49;
      case 8u:
        v138 = sub_22BE17D60();
        sub_22BFD6734(v138, v139, v140, v141);
        goto LABEL_49;
      case 9u:
        v66 = sub_22BE17D60();
        sub_22BFD693C(v66, v67, v68, v69);
        goto LABEL_49;
      case 0xAu:
        v134 = sub_22BE17D60();
        sub_22BFD9404(v134, v135, v136, v137);
        goto LABEL_49;
      case 0xBu:
        v50 = sub_22BE17D60();
        sub_22BFD6D6C(v50, v51, v52, v53);
        goto LABEL_49;
      case 0xCu:
        v62 = sub_22BE17D60();
        sub_22BFD6F74(v62, v63, v64, v65);
        goto LABEL_49;
      case 0xDu:
        v122 = sub_22BE17D60();
        sub_22BFD717C(v122, v123, v124, v125);
        goto LABEL_49;
      case 0xEu:
        v42 = sub_22BE17D60();
        sub_22BFD7384(v42, v43, v44, v45);
        goto LABEL_49;
      case 0xFu:
        v82 = sub_22BE17D60();
        sub_22BFD758C(v82, v83, v84, v85);
        goto LABEL_49;
      case 0x10u:
        v38 = sub_22BE17D60();
        sub_22BFD7794(v38, v39, v40, v41);
        goto LABEL_49;
      case 0x11u:
        v102 = sub_22BE17D60();
        sub_22BFD799C(v102, v103, v104, v105);
        goto LABEL_49;
      case 0x12u:
        v130 = sub_22BE17D60();
        sub_22BFD7BA4(v130, v131, v132, v133);
        goto LABEL_49;
      case 0x13u:
        v158 = sub_22BE17D60();
        sub_22BFD7DAC(v158, v159, v160, v161);
        goto LABEL_49;
      case 0x14u:
        v110 = sub_22BE17D60();
        sub_22BFD7FB4(v110, v111, v112, v113);
        goto LABEL_49;
      case 0x15u:
        v118 = sub_22BE17D60();
        sub_22BFD81BC(v118, v119, v120, v121);
        goto LABEL_49;
      case 0x16u:
        v150 = sub_22BE17D60();
        sub_22BE3DFFC(v150, v151, v152, v153);
        goto LABEL_49;
      case 0x17u:
        v166 = sub_22BE17D60();
        sub_22BE46E38(v166, v167, v168, v169);
        goto LABEL_49;
      case 0x18u:
        v74 = sub_22BE17D60();
        sub_22BFD83C4(v74, v75, v76, v77);
        goto LABEL_49;
      case 0x19u:
        v70 = sub_22BE17D60();
        sub_22BFD85CC(v70, v71, v72, v73);
        goto LABEL_49;
      case 0x1Au:
        v182 = sub_22BE17D60();
        sub_22BFD87D4(v182, v183, v184, v185);
        goto LABEL_49;
      case 0x1Bu:
        v30 = sub_22BE17D60();
        sub_22BFD89DC(v30, v31, v32, v33);
        goto LABEL_49;
      case 0x1Cu:
        v170 = sub_22BE17D60();
        sub_22BFD8DEC(v170, v171, v172, v173);
        goto LABEL_49;
      case 0x1Du:
        v174 = sub_22BE17D60();
        sub_22BFD8FF4(v174, v175, v176, v177);
        goto LABEL_49;
      case 0x1Eu:
        v142 = sub_22BE17D60();
        sub_22BFD91FC(v142, v143, v144, v145);
        goto LABEL_49;
      case 0x1Fu:
        v98 = sub_22BE17D60();
        sub_22BFD960C(v98, v99, v100, v101);
        goto LABEL_49;
      case 0x20u:
        v146 = sub_22BE17D60();
        sub_22BFD9814(v146, v147, v148, v149);
        goto LABEL_49;
      case 0x21u:
        v46 = sub_22BE17D60();
        sub_22BFD9A1C(v46, v47, v48, v49);
        goto LABEL_49;
      case 0x22u:
        v34 = sub_22BE17D60();
        sub_22BFD9C24(v34, v35, v36, v37);
        goto LABEL_49;
      case 0x23u:
        v22 = sub_22BE17D60();
        sub_22BFD9E2C(v22, v23, v24, v25);
        goto LABEL_49;
      case 0x24u:
        v26 = sub_22BE17D60();
        sub_22BFDA034(v26, v27, v28, v29);
        goto LABEL_49;
      case 0x25u:
        v18 = sub_22BE17D60();
        sub_22BFDA23C(v18, v19, v20, v21);
        goto LABEL_49;
      case 0x26u:
        v178 = sub_22BE17D60();
        sub_22BFDA444(v178, v179, v180, v181);
        goto LABEL_49;
      case 0x27u:
        v154 = sub_22BE17D60();
        sub_22BFDA64C(v154, v155, v156, v157);
        goto LABEL_49;
      case 0x28u:
        v58 = sub_22BE17D60();
        sub_22BFDA854(v58, v59, v60, v61);
        goto LABEL_49;
      case 0x29u:
        v106 = sub_22BE17D60();
        sub_22BFDAA5C(v106, v107, v108, v109);
        goto LABEL_49;
      case 0x2Au:
        v162 = sub_22BE17D60();
        sub_22BFD6B44(v162, v163, v164, v165);
        goto LABEL_42;
      case 0x2Bu:
        v14 = sub_22BE17D60();
        sub_22BE2CA68(v14, v15, v16, v17);
LABEL_42:
        if (!v1)
        {
          break;
        }

        goto LABEL_53;
      default:
        v10 = sub_22BE17D60();
        sub_22BE2C2B8(v10, v11, v12, v13);
LABEL_49:
        if (v1)
        {
          sub_22BE27A70();
          sub_22C0B08BC();
          goto LABEL_53;
        }

        sub_22BE27A70();
        sub_22C0B08BC();
        break;
    }
  }

  v186 = type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE294F8(v186);
LABEL_53:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BE2C278()
{

  return sub_22BE2343C();
}

uint64_t sub_22BE2C2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionStart(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t TranscriptProtoSessionStart.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BE30CFC(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_22BE17D78();
    sub_22BE30AC8(v6, v7, v8, v9);
    v10 = sub_22BE17D78();
    sub_22BE2C76C(v10, v11, v12, v13);
    sub_22BE17D78();
    sub_22C085A48();
    v14 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 32);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BE2C5AC(unsigned __int8 *a1, int a2)
{
  if (a2 == 252)
  {
    v2 = *a1;
    if (v2 >= 4)
    {
      return v2 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    v4 = sub_22BE41590();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

uint64_t sub_22BE2C620(uint64_t a1)
{

  return sub_22BE33928(a1, v1, v2);
}

uint64_t sub_22BE2C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  a13 = 6;

  return sub_22BF0F5D8(&a11);
}

uint64_t sub_22BE2C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E490, &qword_22C296EB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E490, &qword_22C296EB8);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE2C940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE2C988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BE2CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 43)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

void Session.Event.Payload.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v25;
  a20 = v26;
  v522 = v21;
  v515 = type metadata accessor for AgentPrimitiveAction(0);
  v27 = sub_22BE18000(v515);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v517 = v30;
  sub_22BE183BC();
  v31 = sub_22C270234();
  v32 = sub_22BE179D8(v31);
  v513 = v33;
  v514 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v512 = v36;
  sub_22BE183BC();
  v37 = sub_22C270074();
  v38 = sub_22BE179D8(v37);
  v510 = v39;
  v511 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v509 = v42;
  v43 = sub_22BE183BC();
  v508 = type metadata accessor for RequestAmendment(v43);
  v44 = sub_22BE18000(v508);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  v516 = v47;
  v48 = sub_22BE183BC();
  v49 = type metadata accessor for ExecutionPreconditionEvaluatorRequest(v48);
  v50 = sub_22BE19448(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v54 = sub_22BE18950(v53);
  v55 = type metadata accessor for SkipStatement(v54);
  v56 = sub_22BE19448(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17A44();
  v507 = v59;
  v60 = sub_22BE183BC();
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(v60);
  v62 = sub_22BE19448(DecorationPrePlannerResult);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17A44();
  v66 = sub_22BE18950(v65);
  DecorationResult = type metadata accessor for QueryDecorationResult(v66);
  v68 = sub_22BE19448(DecorationResult);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17A44();
  v72 = sub_22BE18950(v71);
  v73 = type metadata accessor for TypeConversionResult(v72);
  v74 = sub_22BE19448(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE17A44();
  v78 = sub_22BE18950(v77);
  v79 = type metadata accessor for TypeConversionRequest(v78);
  v80 = sub_22BE19448(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BE17A44();
  v84 = sub_22BE18950(v83);
  v85 = type metadata accessor for ClientUndoRedoRequest(v84);
  v86 = sub_22BE19448(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE17A44();
  v90 = sub_22BE18950(v89);
  v91 = type metadata accessor for UndoRedoRequest(v90);
  v92 = sub_22BE19448(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22BE17A44();
  v96 = sub_22BE18950(v95);
  v97 = type metadata accessor for ToolResolution(v96);
  v98 = sub_22BE19448(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22BE17A44();
  v102 = sub_22BE18950(v101);
  v103 = type metadata accessor for ExternalAgentOutcome(v102);
  v104 = sub_22BE290A0(v103, &v523);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22BE17A44();
  v518 = v107;
  v108 = sub_22BE183BC();
  v109 = type metadata accessor for ExternalAgentRequest(v108);
  v110 = sub_22BE19448(v109);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  sub_22BE17A44();
  sub_22BE18950(v113);
  v114 = sub_22C26FFF4();
  v115 = sub_22BE18910(v114, v497);
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v115);
  sub_22BE17A44();
  sub_22BE18950(v118);
  v119 = sub_22C26FE94();
  v120 = sub_22BE18910(v119, v499);
  v490 = v121;
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  sub_22BE17A44();
  sub_22BE18950(v124);
  v125 = sub_22C26FC54();
  v126 = sub_22BE18910(v125, &v501);
  v491 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22BE17A44();
  sub_22BE18950(v130);
  v131 = sub_22C26FB84();
  v132 = sub_22BE18910(v131, &v504);
  v492 = v133;
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v132);
  sub_22BE17A44();
  sub_22BE18950(v136);
  v137 = sub_22C272874();
  v138 = sub_22BE18910(v137, &v526);
  v497[1] = v139;
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  sub_22BE17A44();
  sub_22BE18950(v142);
  v143 = sub_22C26E9D4();
  v144 = sub_22BE18910(v143, &a14);
  v502 = v145;
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v148);
  sub_22BE19E94();
  sub_22BE18950(v149);
  v150 = sub_22C26F894();
  v520 = sub_22BE179D8(v150);
  v521 = v151;
  v153 = *(v152 + 64);
  MEMORY[0x28223BE20](v520);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v154);
  sub_22BE19E94();
  v156 = sub_22BE18950(v155);
  v157 = type metadata accessor for StatementResult(v156);
  v158 = sub_22BE290A0(v157, &v520);
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v158);
  sub_22BE17A44();
  v162 = sub_22BE18950(v161);
  v163 = type metadata accessor for ActionCancellation(v162);
  v164 = sub_22BE19448(v163);
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v164);
  sub_22BE17A44();
  sub_22BE18950(v167);
  v168 = type metadata accessor for SessionError();
  v169 = sub_22BE290A0(v168, &v518);
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  sub_22BE17A44();
  v173 = sub_22BE18950(v172);
  StepResults = type metadata accessor for QueryStepResults(v173);
  v175 = sub_22BE19448(StepResults);
  v177 = *(v176 + 64);
  MEMORY[0x28223BE20](v175);
  sub_22BE17A44();
  v519 = v178;
  v179 = sub_22BE183BC();
  v180 = type metadata accessor for VariableStep(v179);
  v181 = sub_22BE290A0(v180, &v511);
  v183 = *(v182 + 64);
  MEMORY[0x28223BE20](v181);
  sub_22BE17A44();
  sub_22BE190A8(v184);
  v185 = sub_22BE5CE4C(&qword_27D911F48, &unk_22C2B5CB0);
  sub_22BE290A0(v185, &v514);
  v187 = *(v186 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v188);
  sub_22BE1A174();
  v190 = sub_22BE18950(v189);
  Step = type metadata accessor for QueryStep(v190);
  v192 = sub_22BE290A0(Step, &v515);
  v194 = *(v193 + 64);
  MEMORY[0x28223BE20](v192);
  sub_22BE17A44();
  v196 = sub_22BE18950(v195);
  v197 = type metadata accessor for ClientAction(v196);
  v198 = sub_22BE19448(v197);
  v200 = *(v199 + 64);
  MEMORY[0x28223BE20](v198);
  sub_22BE17A44();
  v202 = sub_22BE18950(v201);
  v203 = type metadata accessor for Action(v202);
  v204 = sub_22BE19448(v203);
  v206 = *(v205 + 64);
  MEMORY[0x28223BE20](v204);
  sub_22BE2379C();
  v207 = type metadata accessor for Session.RecoverableError(0);
  v208 = sub_22BE290A0(v207, &v509);
  v210 = *(v209 + 64);
  MEMORY[0x28223BE20](v208);
  sub_22BE17A44();
  v212 = sub_22BE18950(v211);
  v213 = type metadata accessor for RequestContent.SystemPromptResolution(v212);
  v214 = sub_22BE19448(v213);
  v216 = *(v215 + 64);
  MEMORY[0x28223BE20](v214);
  sub_22BE17A44();
  v218 = sub_22BE18950(v217);
  v219 = type metadata accessor for RequestContent.SpeechContent(v218);
  v220 = sub_22BE19448(v219);
  v222 = *(v221 + 64);
  MEMORY[0x28223BE20](v220);
  sub_22BE17A44();
  v224 = sub_22BE18950(v223);
  v225 = type metadata accessor for RequestContent.TextContent(v224);
  v226 = sub_22BE19448(v225);
  v228 = *(v227 + 64);
  MEMORY[0x28223BE20](v226);
  sub_22BE17A44();
  v230 = sub_22BE18950(v229);
  v231 = type metadata accessor for RequestContent(v230);
  v232 = sub_22BE18000(v231);
  v234 = *(v233 + 64);
  MEMORY[0x28223BE20](v232);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v235);
  sub_22BE23858();
  MEMORY[0x28223BE20](v236);
  sub_22BE2EDB8();
  v237 = type metadata accessor for Request(0);
  v238 = sub_22BE19448(v237);
  v240 = *(v239 + 64);
  MEMORY[0x28223BE20](v238);
  sub_22BE18DFC();
  v241 = type metadata accessor for UserTurnStarted(0);
  v242 = sub_22BE18000(v241);
  v244 = *(v243 + 64);
  MEMORY[0x28223BE20](v242);
  sub_22BE19338();
  v245 = type metadata accessor for Session.Event.Payload(0);
  v246 = sub_22BE18000(v245);
  v248 = *(v247 + 64);
  MEMORY[0x28223BE20](v246);
  sub_22BE197B8();
  sub_22BE1C058();
  sub_22BE1A964(v522, v20);
  sub_22BE29264();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE46150();
      v330 = sub_22BE37490();
      sub_22C171FA8(v330, v331);
      v332 = *(v22 + *(v241 + 20));
      sub_22BE4875C();
      sub_22C171FFC();
      if ((v332 & 1) == 0)
      {
        goto LABEL_78;
      }

      sub_22BE3C93C();
      v249 = v333 - 2;
      goto LABEL_75;
    case 2u:
      v316 = *v20;
      v315 = v20[1];
      v317 = v20[2];
      sub_22BE3CFB4();
      sub_22C273AA4();

      sub_22C18E3B4();
      v525 = v319;
      v526 = v318;
      *&v523 = v316;
      *(&v523 + 1) = v315;
      v524 = v317;
      SpeechPartialResult.description.getter();

      v320 = sub_22BE2590C();
      MEMORY[0x2318AB8D0](v320);

      v249 = v525;
      goto LABEL_75;
    case 3u:
      sub_22BE28EA8();
      v322 = sub_22BE3CC34();
      sub_22C171FA8(v322, v323);
      sub_22BE19368();
      v324 = sub_22BE3AF28();
      sub_22BE1A964(v324, v325);
      sub_22BE200E0();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22BEE94A4(&v506);
          sub_22C171FA8(v453, v454);
          sub_22BE487D8();
          MEMORY[0x2318AB8D0](*v20, v20[1]);
          sub_22C18E90C();
          sub_22BE26A6C();
          sub_22C171FFC();
          goto LABEL_109;
        case 2u:
          sub_22BE1BB68();
          sub_22BEE94A4(&v507);
          sub_22C171FA8(v448, v449);
          sub_22BE487D8();
          MEMORY[0x2318AB8D0](*v20, v20[1]);
          sub_22C18E90C();
          sub_22BE26A6C();
          sub_22C171FFC();
          goto LABEL_109;
        case 3u:
          sub_22C18DFC0();
          sub_22BE22944(&v505);
          sub_22C171FA8(v450, v451);
          v452 = RequestContent.SystemPromptResolution.description.getter();
          sub_22C18E918(v452);
          sub_22C18E000();
          sub_22C171FFC();
          goto LABEL_109;
        default:
          sub_22BE37D34();
          v522 = v326 & 0xFFFFFFFFFFFFLL | 0x7473000000000000;
          sub_22BE26A6C();
          goto LABEL_56;
      }

    case 4u:
      v273 = v20[1];
      v274 = v20[2];
      v275 = v20[3];
      v276 = v20[4];
      v277 = v20[6];
      *&v523 = 0x203A6E616C70;
      *(&v523 + 1) = 0xE600000000000000;

      v278 = sub_22BE2590C();
      MEMORY[0x2318AB8D0](v278);

      swift_bridgeObjectRelease_n();

      goto LABEL_25;
    case 5u:
      sub_22BE23784();
      v340 = sub_22BE19454();
      sub_22C171FA8(v340, v341);
      v342 = Action.description.getter();
      sub_22C18E918(v342);
      goto LABEL_109;
    case 6u:
      sub_22C18E254();
      sub_22BE22944(&v517);
      sub_22C171FA8(v365, v366);
      v367 = ActionCancellation.description.getter();
      sub_22C18E918(v367);
      goto LABEL_109;
    case 7u:
      sub_22BE3C3F8();
      sub_22BE22944(&v510);
      sub_22C171FA8(v327, v328);
      ClientAction.description.getter();
      sub_22C18E918(v329);
      goto LABEL_109;
    case 8u:
      sub_22BE35FFC();
      sub_22C18FC44(v20, &v516);
      sub_22BE3CFB4();
      sub_22C273AA4();
      sub_22C18F350();
      sub_22C18F4F8();
      MEMORY[0x2318AB8D0](0xD000000000000017);
      v372 = v231 + *(v493 + 20);
      sub_22BEE94A4(&v512);
      sub_22BE22814();
      v373 = sub_22C273074();
      MEMORY[0x2318AB8D0](v373);

      v374 = sub_22C18F774(0x7020u);
      MEMORY[0x2318AB8D0](v374, 0xE90000000000003DLL);
      v375 = *(v493 + 24);
      type metadata accessor for QueryPayload(0);
      sub_22C273C24();
      v376 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v376);
      sub_22C18E90C();
      goto LABEL_109;
    case 9u:
      sub_22BE19EBC();
      sub_22BE22944(&v513);
      sub_22C171FA8(v299, v300);
      sub_22BE2ED7C(&v511);
      v302 = *(v21 + v301);
      v303 = type metadata accessor for VariableSetter(0);
      v304 = MEMORY[0x2318ABBB0](v302, v303);
      sub_22C18E918(v304);
      goto LABEL_109;
    case 0xAu:
      sub_22BE3C4F4();
      sub_22BEE94A4(&v508);
      sub_22C171FA8(v368, v369);
      sub_22BE3CFB4();
      sub_22C273AA4();
      sub_22C18F350();
      sub_22C18E7E8();
      MEMORY[0x2318AB8D0](v370 - 5, v371 | 0x8000000000000000);
      sub_22C273C24();
      sub_22C18E90C();
      goto LABEL_109;
    case 0xBu:
      sub_22BE19EBC();
      sub_22BEE94A4(&v519);
      sub_22C171FA8(v270, v271);
      *&v523 = 0;
      *(&v523 + 1) = 0xE000000000000000;
      MEMORY[0x2318AB8D0](0x6F6261203A6D6C6CLL, 0xEC00000028207472);
      sub_22C273C24();
      v272 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v272);
      sub_22C18E90C();
      goto LABEL_109;
    case 0xCu:
      sub_22C18E29C();
      v286 = v20;
      v287 = v519;
      sub_22C171FA8(v286, v519);
      v288 = *v287;
      v289 = *(*v287 + 16);
      v290 = MEMORY[0x277D84F90];
      if (v289)
      {
        v525 = MEMORY[0x277D84F90];
        sub_22C18E984();
        sub_22BE70138();
        v290 = v525;
        v291 = (v288 + 32);
        v292 = type metadata accessor for Candidate(0);
        do
        {
          v293 = *v291;
          *&v523 = 0x203A646E756F66;
          *(&v523 + 1) = 0xE700000000000000;

          v295 = MEMORY[0x2318ABBB0](v294, v292);
          MEMORY[0x2318AB8D0](v295);

          v296 = v523;
          v525 = v290;
          v297 = *(v290 + 16);
          if (v297 >= *(v290 + 24) >> 1)
          {
            sub_22BE70138();
            v290 = v525;
          }

          *(v290 + 16) = v297 + 1;
          *(v290 + 16 * v297 + 32) = v296;
          ++v291;
          --v289;
        }

        while (v289);
      }

      *&v523 = v290;
      sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
      sub_22BEBAF64();
      v298 = sub_22C272FB4();
      sub_22C18E918(v298);

      sub_22BE365AC();
      goto LABEL_109;
    case 0xDu:
      sub_22C18EA78();
      sub_22BE1A7E0();
      sub_22C171FFC();
      goto LABEL_47;
    case 0xEu:
      sub_22BE1A7E0();
      sub_22C171FFC();
      sub_22BE3C93C();
      v249 = v267 + 9;
      goto LABEL_75;
    case 0xFu:
      sub_22BE3C93C();
      v249 = v321 - 6;
      goto LABEL_75;
    case 0x10u:
      sub_22C171FFC();
      sub_22C18EA78();
      goto LABEL_10;
    case 0x11u:
      sub_22C171FFC();
      goto LABEL_34;
    case 0x12u:
      sub_22C171FFC();
      v249 = 0x746552736C6F6F54;
      goto LABEL_75;
    case 0x13u:
      v396 = *v20;
      *&v523 = 0x20646E756F66;
      *(&v523 + 1) = 0xE600000000000000;
      v397 = *(v396 + 16);

      v525 = v397;
      v398 = sub_22C273FD4();
      MEMORY[0x2318AB8D0](v398);

      v399 = 0x616D206E61707320;
      v400 = 0xED00007365686374;
      goto LABEL_73;
    case 0x14u:
      sub_22C18ED18();
      v522 = v339;
      sub_22C18EA78();
      goto LABEL_109;
    case 0x15u:
      sub_22C18E26C();
      v343 = v505;
      sub_22C171FA8(v20, v505);
      sub_22BE2ED7C(&v520);
      v344 = v521;
      (*(v521 + 16))(v494, v343 + v345, v520);
      v346 = *(v344 + 88);
      v347 = sub_22BE2565C();
      v349 = v348(v347);
      if (v349 == *MEMORY[0x277D1CBF0])
      {
        v350 = sub_22C18E3D8();
        v351(v350);
        sub_22C18E964(&a12);
        v352 = sub_22BE1AEE4();
        v353(v352);
        sub_22BE3CFB4();
        sub_22C273AA4();
        sub_22C18F350();
        v354 = sub_22C18FD38();
        MEMORY[0x2318AB8D0](v354, 0xE800000000000000);
        sub_22BE236D4(&v523 + 8);
        sub_22C26E984();
        sub_22C18FB84();
        v355 = sub_22BE3D13C(&v525);
        v356(v355, v344);
        sub_22C18F3D8();
        v357 = sub_22C26E964();
        v358 = (v357 & 1) == 0;
        if (v357)
        {
          v359 = 1702195828;
        }

        else
        {
          v359 = 0x65736C6166;
        }

        if (v358)
        {
          v360 = 0xE500000000000000;
        }

        else
        {
          v360 = 0xE400000000000000;
        }

        MEMORY[0x2318AB8D0](v359, v360);

        sub_22C18E90C();
        v361 = *(v241 + 8);
        v362 = sub_22BE200E0();
        v363(v362);
LABEL_109:
        sub_22C171FFC();
        goto LABEL_110;
      }

      if (v349 == *MEMORY[0x277D1CBA8])
      {
        v438 = sub_22C18E3D8();
        v439(v438);
        sub_22C18F1D4(&v503);
        v440 = sub_22BE354DC();
        v442 = &v504;
LABEL_104:
        v470 = *(v442 - 32);
        v441(v440);
        *&v523 = 0;
        *(&v523 + 1) = 0xE000000000000000;
        v471 = sub_22C18FD38();
        MEMORY[0x2318AB8D0](v471, 0xE800000000000000);
        sub_22BE38608();
        sub_22C273C24();
        sub_22C18E90C();
        v472 = v231[1];
        v473 = sub_22BE1AB74();
        v474(v473);
        goto LABEL_109;
      }

      if (v349 == *MEMORY[0x277D1CBB8])
      {
        v455 = sub_22C18E3D8();
        v456(v455);
        sub_22C18F1D4(&v500);
        v440 = sub_22BE354DC();
        v442 = &v501;
        goto LABEL_104;
      }

      if (v349 == *MEMORY[0x277D1CBD0])
      {
        v464 = sub_22C18E3D8();
        v465(v464);
        sub_22C18F1D4(&v498);
        v440 = sub_22BE354DC();
        v442 = v499;
        goto LABEL_104;
      }

      if (v349 == *MEMORY[0x277D1CBD8])
      {
        v468 = sub_22C18E3D8();
        v469(v468);
        sub_22C18F1D4(&v496);
        v440 = sub_22BE354DC();
        v442 = v497;
        goto LABEL_104;
      }

      sub_22C18EA78();
      sub_22C0E9830();
      sub_22C171FFC();
      v483 = *(v344 + 8);
      v484 = sub_22BE2565C();
      v485(v484);
LABEL_10:
      sub_22C18ED18();
      v249 = v266 - 4;
      goto LABEL_75;
    case 0x16u:
      sub_22BE19EBC();
      sub_22BEE94A4(&a11);
      sub_22C171FA8(v383, v384);
      sub_22BE19368();
      v385 = sub_22BE1A6BC();
      sub_22BE1A964(v385, v386);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22C18FC44(v23, &v506);
          sub_22C18E3B4();
          sub_22C19007C(v461);
          sub_22BE32E9C(v523);
          goto LABEL_91;
        case 2u:
          sub_22BE1BB68();
          sub_22C18FC44(v23, &v507);
          sub_22C18E3B4();
          sub_22C19007C(v457);
          sub_22BE32E9C(v523);
          goto LABEL_91;
        case 3u:
          goto LABEL_92;
        default:
          sub_22BE37D34();
          sub_22BE32E9C(v387 & 0xFFFFFFFFFFFFLL | 0x7473000000000000);
          goto LABEL_56;
      }

    case 0x17u:
      v402 = sub_22BE19EBC();
      v403 = v518;
      sub_22C171FA8(v402, v518);
      sub_22BE2ED7C(&v523);
      v404 = v521;
      (*(v521 + 16))(v495, v403 + v405, v520);
      v406 = *(v404 + 88);
      v407 = sub_22BE2565C();
      v409 = v408(v407);
      if (v409 == *MEMORY[0x277D1CBF0])
      {
        v410 = sub_22C18E3D8();
        v411(v410);
        v412 = v502;
        sub_22C18F338();
        v413 = sub_22BE1AEE4();
        v414(v413);
        sub_22BE3CFB4();
        sub_22C273AA4();
        sub_22C18F350();
        sub_22C18E7E8();
        MEMORY[0x2318AB8D0](v415 - 1, v416 | 0x8000000000000000);
        sub_22BE236D4(&v523 + 8);
        sub_22C26E984();
        sub_22C18FB84();
        v417 = sub_22BE3D13C(&v525);
        v418(v417, v404);
        sub_22C18F3D8();
        v419 = sub_22C26E964();
        v420 = (v419 & 1) == 0;
        if (v419)
        {
          v421 = 1702195828;
        }

        else
        {
          v421 = 0x65736C6166;
        }

        if (v420)
        {
          v422 = 0xE500000000000000;
        }

        else
        {
          v422 = 0xE400000000000000;
        }

        MEMORY[0x2318AB8D0](v421, v422);

        sub_22C18E90C();
        v423 = *(v412 + 8);
        v424 = sub_22BE1B5E0();
        v425(v424);
        goto LABEL_109;
      }

      if (v409 == *MEMORY[0x277D1CBA8])
      {
        v443 = sub_22C18E3D8();
        v444(v443);
        sub_22C18E964(&v503);
        v445 = sub_22BE36658();
        v447 = &v504;
LABEL_108:
        v477 = *(v447 - 32);
        v446(v445);
        sub_22BE3CFB4();
        sub_22C273AA4();
        sub_22C18F350();
        sub_22C18E7E8();
        MEMORY[0x2318AB8D0](v478 - 1, v479 | 0x8000000000000000);
        sub_22C273C24();
        sub_22C18E90C();
        v480 = *(v241 + 8);
        v481 = sub_22BE200D4();
        v482(v481);
        goto LABEL_109;
      }

      if (v409 == *MEMORY[0x277D1CBB8])
      {
        v462 = sub_22C18E3D8();
        v463(v462);
        sub_22C18E964(&v500);
        v445 = sub_22BE36658();
        v447 = &v501;
        goto LABEL_108;
      }

      if (v409 == *MEMORY[0x277D1CBD0])
      {
        v466 = sub_22C18E3D8();
        v467(v466);
        sub_22C18E964(&v498);
        v445 = sub_22BE36658();
        v447 = v499;
        goto LABEL_108;
      }

      if (v409 == *MEMORY[0x277D1CBD8])
      {
        v475 = sub_22C18E3D8();
        v476(v475);
        sub_22C18E964(&v496);
        v445 = sub_22BE36658();
        v447 = v497;
        goto LABEL_108;
      }

      sub_22C18EA78();
      sub_22C18EB08();
      sub_22C171FFC();
      v486 = *(v404 + 8);
      v487 = sub_22BE2565C();
      v488(v487);
      sub_22C18ED18();
      v249 = v489 + 10;
LABEL_75:
      v522 = v249;
LABEL_110:
      sub_22BE1AABC();
      return;
    case 0x18u:
      v308 = *v20;
      v309 = v20[1];
      v310 = v20[2];
      sub_22C18E3B4();
      *&v523 = v312 + 9;
      *(&v523 + 1) = v311;

      v313 = sub_22BE191CC();
      MEMORY[0x2318AB8D0](v313);

      MEMORY[0x2318AB8D0](0x746972776572202CLL, 0xEC000000203A7365);
      v314 = MEMORY[0x2318ABBB0](v310, MEMORY[0x277D837D0]);
      MEMORY[0x2318AB8D0](v314);

LABEL_25:

      goto LABEL_74;
    case 0x19u:
      sub_22BE36CE8();
      sub_22BE22944(&v524);
      sub_22C171FA8(v305, v306);
      v307 = ToolResolution.description.getter();
      sub_22C18E918(v307);
      goto LABEL_109;
    case 0x1Au:
      sub_22BE41514();
      sub_22BE22944(&v527);
      sub_22C171FA8(v434, v435);
      UndoRedoRequest.description.getter();
      sub_22C18E918(v436);
      goto LABEL_109;
    case 0x1Bu:
      sub_22C18E2CC();
      sub_22BE22944(&a9);
      sub_22C171FA8(v260, v261);
      ClientUndoRedoRequest.description.getter();
      sub_22C18E918(v262);
      goto LABEL_109;
    case 0x1Cu:
      sub_22BE37B38();
      sub_22BE22944(&a10);
      sub_22C171FA8(v426, v427);
      TypeConversionRequest.description.getter();
      sub_22C18E918(v428);
      goto LABEL_109;
    case 0x1Du:
      sub_22BE22B40();
      sub_22BE22944(&a13);
      sub_22C171FA8(v429, v430);
      TypeConversionResult.description.getter();
      sub_22C18E918(v431);
      goto LABEL_109;
    case 0x1Eu:
      sub_22BE3CA54();
      sub_22BE22944(&a15);
      sub_22C171FA8(v377, v378);
      QueryDecorationResult.description.getter();
      sub_22C18E918(v379);
      goto LABEL_109;
    case 0x1Fu:
LABEL_34:
      sub_22BE3C93C();
      v249 = v334 - 7;
      goto LABEL_75;
    case 0x20u:
      sub_22C18E23C();
      sub_22BE22944(&a16);
      sub_22C171FA8(v380, v381);
      DecorationPrePlanner = QueryDecorationPrePlannerResult.description.getter();
      sub_22C18E918(DecorationPrePlanner);
      goto LABEL_109;
    case 0x21u:
      sub_22BE1B674();
      sub_22C171FA8(v20, v507);
      strcpy(&v523, "SkipStatement(");
      HIBYTE(v523) = -18;
      LODWORD(v525) = sub_22C26E674();
      v268 = sub_22C273FD4();
      MEMORY[0x2318AB8D0](v268);

      v269 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v269);
      sub_22C18E90C();
      goto LABEL_109;
    case 0x22u:
      sub_22C18E2B4();
      sub_22BE22944(&a18);
      sub_22C171FA8(v263, v264);
      v265 = ExecutionPreconditionEvaluatorRequest.description.getter();
      sub_22C18E918(v265);
      goto LABEL_109;
    case 0x23u:
      sub_22C18E2E4();
      v250 = v20;
      v251 = v516;
      sub_22C171FA8(v250, v516);
      v252 = *(v508 + 20);
      sub_22BE19368();
      sub_22BE1A964(v251 + v253, v24);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22C18DFA8();
          sub_22C18FC44(v24, &v506);
          sub_22BE487D8();
          MEMORY[0x2318AB8D0](*v231, v231[1]);
          sub_22C18E2FC(v523);
          goto LABEL_91;
        case 2u:
          sub_22BE1BB68();
          sub_22C18FC44(v24, &v507);
          sub_22BE487D8();
          MEMORY[0x2318AB8D0](*v231, v231[1]);
          sub_22C18E2FC(v523);
LABEL_91:
          sub_22C171FFC();
          goto LABEL_109;
        case 3u:
LABEL_92:
          sub_22C18DFC0();
          sub_22BE22944(&v505);
          sub_22C171FA8(v458, v459);
          v460 = RequestContent.SystemPromptResolution.description.getter();
          sub_22C18E918(v460);
          sub_22C18E000();
          sub_22C171FFC();
          goto LABEL_109;
        default:
          sub_22BE37D34();
          sub_22C18E2FC(v254 & 0xFFFFFFFFFFFFLL | 0x7473000000000000);
LABEL_56:
          sub_22C171FFC();
          goto LABEL_110;
      }

    case 0x24u:
      v255 = *v20;
      v256 = v20[1];
      sub_22C18E3B4();
      v259 = v258 + 4;
      goto LABEL_72;
    case 0x25u:
LABEL_78:
      sub_22C18ED18();
      v522 = v437;
      sub_22C18EA78();
      goto LABEL_110;
    case 0x26u:
      v432 = *v20;
      v433 = v20[1];
      sub_22C18E3B4();
LABEL_72:
      *&v523 = v259;
      *(&v523 + 1) = v257;
      MEMORY[0x2318AB8D0]();

      v399 = sub_22C18E830();
LABEL_73:
      MEMORY[0x2318AB8D0](v399, v400);
LABEL_74:
      v249 = v523;
      goto LABEL_75;
    case 0x27u:
      v279 = v510;
      v388 = *(v510 + 32);
      v389 = sub_22BE1AB74();
      v390(v389);
      sub_22BE3CFB4();
      sub_22C273AA4();
      sub_22C18F350();
      sub_22C18E7E8();
      v285 = v391 + 4;
      goto LABEL_58;
    case 0x28u:
      v279 = v513;
      v280 = *(v513 + 32);
      v281 = sub_22BE1AB74();
      v282(v281);
      sub_22BE3CFB4();
      sub_22C273AA4();
      sub_22C18F350();
      sub_22C18E7E8();
      v285 = v284 + 12;
LABEL_58:
      MEMORY[0x2318AB8D0](v285, v283 | 0x8000000000000000);
      sub_22BE38608();
      sub_22C273C24();
      v392 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v392);
      sub_22C18E90C();
      v393 = *(v279 + 8);
      v394 = sub_22BE1AB74();
      v395(v394);
      goto LABEL_110;
    case 0x29u:
      v335 = sub_22BE19EBC();
      sub_22C171FA8(v335, v517);
      sub_22BE3CFB4();
      sub_22C273AA4();
      sub_22C18F350();
      sub_22C18E7E8();
      MEMORY[0x2318AB8D0](v336 - 2, v337 | 0x8000000000000000);
      sub_22C273C24();
      v338 = sub_22C18E830();
      MEMORY[0x2318AB8D0](v338);
      sub_22C18E90C();
      goto LABEL_109;
    case 0x2Au:
      sub_22BE3C93C();
      v249 = v401 | 8;
      goto LABEL_75;
    case 0x2Bu:
      sub_22C18EA78();
LABEL_47:
      sub_22C18ED18();
      v249 = v364 + 5;
      goto LABEL_75;
    default:
      sub_22C171FFC();
      v249 = 0x206E6F6973736573;
      goto LABEL_75;
  }
}

uint64_t sub_22BE2ED88()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);

  return sub_22C273EB4();
}

uint64_t Session.SessionEnded.init(sessionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t EntitySpanMatchService.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t SiriEntityMatcherShim.__deallocating_deinit()
{
  SiriEntityMatcherShim.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t SiriEntityMatcherShim.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType;
  v2 = sub_22C270F94();
  sub_22BE18000(v2);
  (*(v3 + 8))(v0 + v1);
  sub_22BE26B64((v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher));

  v4 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_locale;
  v5 = sub_22C26E244();
  sub_22BE18000(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes);

  return v0;
}

uint64_t GlobalEntityMatcherShim.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_matcherType;
  v2 = sub_22C270F94();
  sub_22BE18000(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_intelligencePlatformBundleId + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_22BE2F06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_22BE25158();
  sub_22BE35F50();
  sub_22C272F44();
  v5 = sub_22C2741A4();

  return a3(a1, a2, v5);
}

uint64_t sub_22BE2F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22BE5CE4C(a5, a6);
}

void sub_22BE2F154()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
}

uint64_t sub_22BE2F1D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t sub_22BE2F204()
{

  return sub_22C273F54();
}

uint64_t sub_22BE2F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22BE19DC4(v4, 1, 1, a4);
}

void TranscriptProtoEvent.init(handwritten:)()
{
  sub_22BE19130();
  v5 = v4;
  v201 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v204 = v11;
  v12 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22C25984C(v16);
  v17 = sub_22C26E164();
  v18 = sub_22BE179D8(v17);
  v210 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE3668C(v22);
  v23 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE415D8(v27);
  v28 = type metadata accessor for Timepoint();
  v29 = sub_22BE18000(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE28FD8();
  v32 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  v202 = v36;
  v37 = sub_22BE183BC();
  v38 = type metadata accessor for Session.Event.Payload(v37);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE294E0();
  v42 = sub_22BE5CE4C(&qword_27D90E438, &unk_22C2AE450);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22C0B1ABC(v46);
  v47 = sub_22BE260B8();
  v49 = sub_22BE5CE4C(v47, v48);
  sub_22BE19448(v49);
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE23E58();
  v200 = sub_22C26E184();
  v205 = v53;
  v54 = type metadata accessor for Session.Event(0);
  sub_22C25A73C(v54);
  v199 = sub_22C26E184();
  v56 = v55;
  v57 = v54[6];
  sub_22BE22814();
  sub_22C26E1D4();
  v58 = sub_22C25ADE0();
  sub_22BE18190(v58);
  v206 = v5;
  if (v59)
  {
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
    v198 = 0;
    v63 = 0;
  }

  else
  {
    v198 = sub_22C26E184();
    sub_22BE1BC24(&qword_27D9082F0);
    v61 = v2;
    v63 = v62;
    (*(v60 + 8))(v61, &qword_27D9082F0);
  }

  v64 = v54[7];
  sub_22C25A2D8();
  sub_22BE1AA68(v5 + v65, v1);
  v66 = sub_22C25AD7C();
  TranscriptProtoPayload.init(handwritten:)(v66, v67, v68, v69, v70, v71, v72, v73, v175, v177, v179, v181, v183, v185, v187, v189, v191, v192, v194, v196);
  if (v0)
  {
    sub_22C2596B0();
    sub_22BE1AE58();

LABEL_33:
    sub_22BE19650();
    sub_22BE18478();
    return;
  }

  v195 = v63;
  v197 = v56;
  type metadata accessor for TranscriptProtoPayload(0);
  v74 = sub_22BE2500C();
  v178 = v75;
  sub_22BE19DC4(v74, v76, v77, v75);
  v78 = v54[9];
  v79 = (v5 + v54[8]);
  v80 = v79[1];
  v193 = *v79;
  v81 = *(v5 + v78 + 8);
  v190 = *(v5 + v78);
  v82 = v54[11];
  v83 = (v5 + v54[10]);
  v84 = v83[1];
  v186 = *v83;
  v85 = *(v5 + v82 + 8);
  v182 = *(v5 + v82);
  sub_22BE1AA68(v5 + v54[12], v3);
  v86 = *(v210 + 16);
  v87 = sub_22BE25D0C();
  v88(v87);
  v180 = v85;

  v188 = v81;

  v184 = v84;

  sub_22C270444();
  sub_22C270454();
  sub_22BE25FFC();
  sub_22BE19DC4(v89, v90, v91, v92);
  v216 = *(v3 + v28[5]);
  v213 = *(v3 + v28[6]);
  v93 = v3 + v28[7];
  sub_22C26E184();
  sub_22BE29328();
  v94 = type metadata accessor for TranscriptProtoTimepoint(0);
  v95 = *(v94 + 28);
  sub_22BE32EE0();
  sub_22BE19DC4(v96, v97, v98, v99);
  v100 = v202 + *(v94 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3E76C();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v202 = v216;
  v202[1] = v213;
  v202[2] = v93;
  v202[3] = v84;
  v101 = v206;
  v102 = sub_22BE360A0();
  v176 = v94;
  sub_22BE19DC4(v102, v103, v104, v94);
  v105 = (v206 + v54[13]);
  v106 = v105[1];
  if (v106)
  {
    v107 = *v105;
    v108 = type metadata accessor for TranscriptProtoParticipantID(0);
    sub_22C25ACA8(v108);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v203 = v107;
    v203[1] = v106;
    v109 = sub_22BE3C530();
    v112 = v206;
    v101 = v206;
  }

  else
  {
    type metadata accessor for TranscriptProtoParticipantID(0);
    sub_22BE1A140();
  }

  sub_22BE19DC4(v109, v110, v111, v112);
  v113 = (v101 + v54[14]);
  if (v113[1])
  {
    type metadata accessor for TranscriptProtoSpanID(0);
    sub_22BE1A140();
  }

  else
  {
    v118 = *v113;
    v119 = type metadata accessor for TranscriptProtoSpanID(0);
    sub_22C25A374(v119);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v204 = v118;
    v101 = v206;
    sub_22BE25FFC();
  }

  sub_22BE19DC4(v114, v115, v116, v117);
  v120 = *(v101 + v54[15]);
  v121 = *(v120 + 16);
  v122 = MEMORY[0x277D84F90];
  if (!v121)
  {
LABEL_32:
    sub_22C1EE5C8(v122, &qword_27D915CC0, &qword_22C2D1AD0, sub_22BE3B68C);
    v151 = sub_22BE23C8C();
    v152 = type metadata accessor for TranscriptProtoEvent(v151);
    v153 = v152[11];
    sub_22BE1A140();
    sub_22BE19DC4(v154, v155, v156, v178);
    v157 = v152[13];
    v158 = (v201 + v152[12]);
    sub_22BE1A140();
    sub_22BE19DC4(v159, v160, v161, v176);
    v162 = v152[14];
    type metadata accessor for TranscriptProtoParticipantID(0);
    sub_22BE1A140();
    sub_22BE19DC4(v163, v164, v165, v166);
    v167 = v152[15];
    type metadata accessor for TranscriptProtoSpanID(0);
    sub_22BE1A140();
    sub_22BE19DC4(v168, v169, v170, v171);
    v172 = v201 + v152[16];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2596B0();
    sub_22BE1AE58();
    *v201 = v200;
    v201[1] = v205;
    v201[2] = v199;
    v201[3] = v197;
    v201[11] = v198;
    v201[12] = v195;
    sub_22BE2343C();
    sub_22C1CF148();
    v201[4] = v174;
    v201[5] = v173;
    v201[6] = v190;
    v201[7] = v188;
    v201[8] = v186;
    v201[9] = v184;
    *v158 = v182;
    v158[1] = v180;
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE2343C();
    v201[10] = v122;
    goto LABEL_33;
  }

  v218 = MEMORY[0x277D84F90];
  v123 = sub_22C25A000();
  sub_22BE3B960(v123, v121, 0);
  v122 = v218;
  v126 = sub_22BE308D0(v120);
  v127 = 0;
  v217 = v120 + 64;
  v208 = v124;
  v209 = v121;
  v207 = v120 + 72;
  v128 = 1;
  while ((v126 & 0x8000000000000000) == 0 && v126 < v128 << *(v120 + 32))
  {
    v129 = v126 >> 6;
    v130 = v128 << v126;
    if ((*(v217 + 8 * (v126 >> 6)) & (v128 << v126)) == 0)
    {
      goto LABEL_35;
    }

    if (*(v120 + 36) != v124)
    {
      goto LABEL_36;
    }

    v212 = v127;
    v214 = v124;
    v211 = v125;
    v131 = (*(v120 + 48) + 16 * v126);
    v132 = v131[1];
    v215 = *v131;
    v133 = *(*(v120 + 56) + 8 * v126);
    v134 = v120;
    v136 = *(v218 + 16);
    v135 = *(v218 + 24);

    if (v136 >= v135 >> 1)
    {
      sub_22BE31778();
      sub_22BE3B960(v148, v149, v150);
    }

    *(v218 + 16) = v136 + 1;
    v137 = (v218 + 24 * v136);
    v137[4] = v215;
    v137[5] = v132;
    v137[6] = v133;
    v138 = 1 << *(v134 + 32);
    if (v126 >= v138)
    {
      goto LABEL_37;
    }

    if ((*(v217 + 8 * v129) & v130) == 0)
    {
      goto LABEL_38;
    }

    v120 = v134;
    if (*(v134 + 36) != v214)
    {
      goto LABEL_39;
    }

    sub_22C25AC7C();
    if (v59)
    {
      v143 = v129 << 6;
      v144 = v129 + 1;
      v145 = (v207 + 8 * v129);
      v141 = v209;
      v142 = v212;
      while (v144 < (v138 + 63) >> 6)
      {
        v146 = *v145++;
        v143 += 64;
        ++v144;
        if (v146)
        {
          sub_22BE2FC64(v126, v139, v211 & 1);
          sub_22C25AC70();
          v138 = v147 + v143;
          goto LABEL_30;
        }
      }

      sub_22BE2FC64(v126, v139, v211 & 1);
LABEL_30:
      v128 = 1;
    }

    else
    {
      v138 = __clz(__rbit64(v140)) | v126 & 0x7FFFFFFFFFFFFFC0;
      v141 = v209;
      v142 = v212;
    }

    v125 = 0;
    v127 = v142 + 1;
    v126 = v138;
    v124 = v208;
    if (v127 == v141)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}