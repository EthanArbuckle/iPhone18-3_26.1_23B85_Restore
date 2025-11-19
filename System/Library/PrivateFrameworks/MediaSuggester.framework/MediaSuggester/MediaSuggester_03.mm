uint64_t static MSRankedSuggester.candidateCount(for:)()
{
  sub_22C9D6F3C();
  v0[2] = v1;
  v2 = sub_22CA20A20();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22CA0C408()
{
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14();
  }

  v0[6] = qword_28143A4B8;
  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4();
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v13 = v0[3];
  v6 = sub_22CA20AE0();
  v0[7] = sub_22C9D0494(v6, qword_28143A4C0);
  v0[8] = sub_22C9D02E4(&qword_27D9E5080, &qword_22CA24838);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22CA22F90;
  v8 = [v5 bundleId];
  sub_22CA20E20();
  sub_22CA0D710();

  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22CA0CBDC();
  v0[9] = v9;
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  sub_22CA0D114();
  sub_22CA20AC0();

  type metadata accessor for MSRankedSuggester();
  sub_22CA20A10();
  sub_22CA20A00();
  (*(v4 + 8))(v3, v13);
  sub_22CA0D77C();
  v0[10] = _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_22CA0C648;
  v11 = v0[2];

  return sub_22CA05F64(v11, 1);
}

uint64_t sub_22CA0C648(uint64_t a1)
{
  sub_22C9D70B4();
  v5 = v4;
  v6 = *(v4 + 88);
  v7 = *v2;
  sub_22C9D6EA4();
  *v8 = v7;
  *(v5 + 96) = v1;

  if (!v1)
  {
    *(v5 + 104) = a1;
  }

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22CA0C760()
{
  v3 = v0[13];
  v4 = v0[9];
  v14 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[2];
  sub_22CA21070();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22CA22F90;
  v10 = [v8 bundleId];
  sub_22CA20E20();
  sub_22CA0D758();

  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = v4;
  *(v9 + 32) = v1;
  *(v9 + 40) = v2;
  sub_22CA0D114();
  sub_22CA20AC0();

  sub_22C9E6DA0(v3);
  sub_22CA0D74C();

  v11 = v0[5];

  sub_22C9E6EBC();

  return v12(v5);
}

uint64_t sub_22CA0C8B8()
{
  sub_22CA0D6D4();
  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4();
  }

  v1 = v0[12];
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  v6 = sub_22C9D72E0();
  v7 = v0[12];
  v8 = v0[10];
  if (v6)
  {
    v9 = sub_22C9D7164();
    v10 = sub_22CA0D434();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Candidate count fetch (shallowLoading), error: %@", v9, 0xCu);
    sub_22C9DF60C(v10, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D6FFC();
    sub_22C9D6FC4();
  }

  else
  {
  }

  v13 = v0[5];

  sub_22C9E6EBC();

  return v14(0);
}

id MSRankedSuggester.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22CA0CAB8(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

void sub_22CA0CB14()
{
  v1 = *v0;
  sub_22CA120A4();
  *v0 = v2;
}

uint64_t sub_22CA0CB34()
{
  sub_22CA0D6D4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_22C9D70A8(v6);
  *v7 = v8;
  v9 = sub_22CA0D480(v7);

  return sub_22CA0AF5C(v9, v10, v11, v12, v13, v5);
}

unint64_t sub_22CA0CBDC()
{
  result = qword_27D9E5088;
  if (!qword_27D9E5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E5088);
  }

  return result;
}

uint64_t sub_22CA0CC38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_22C9D70A8(v7);
  *v8 = v9;
  v10 = sub_22CA0D480(v8);

  return sub_22CA0B2D0(v10, v11, v12, v13, v14, v6, v5);
}

uint64_t sub_22CA0CD08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C9D70A8(v4);
  *v5 = v6;
  v5[1] = sub_22C9D6E54;

  return sub_22CA09BF0(v1, v2, v3);
}

void sub_22CA0CDC0()
{
  v1 = *v0;
  sub_22CA12170();
  *v0 = v2;
}

uint64_t sub_22CA0CDE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C9D02E4(a3, a4);
  sub_22C9E054C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C9E3C08();
  v9(v8);
  return a2;
}

uint64_t sub_22CA0CE3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CA0CEA4()
{

  return swift_once();
}

char *sub_22CA0CEC4()
{
  v5 = v3 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v1;
  v6 = *(*(v4 - 128) + 48);
  *v2 = v1;
  v7 = *(v0 + 16);
  return v2 + v6;
}

uint64_t sub_22CA0CEF4()
{

  return swift_once();
}

uint64_t sub_22CA0CF14()
{

  return swift_once();
}

void sub_22CA0CF34()
{
  *(v2 + 12) = 2048;
  *(v2 + 14) = v1;
  *(v2 + 22) = 2112;
  *(v2 + 24) = v0;
}

void sub_22CA0CF50()
{
  *(v1 + 12) = 2048;
  *(v1 + 14) = v0;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v2;
}

id sub_22CA0CF88()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = 2112;
  *(v2 + 24) = v1;
  *v3 = v1;
  *(v2 + 32) = 2048;
  *(v2 + 34) = v5;

  return v1;
}

uint64_t sub_22CA0CFB8@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = *(v15 + 112);
  v18 = *a1;
  v19 = *a14;
  v20 = a1 + *(*(v16 - 128) + 48);
  return v14;
}

uint64_t sub_22CA0CFDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  sub_22C9D0B98(v3, a2, 1, *(v2 + 160));
  return v3;
}

__n128 sub_22CA0D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  *(v24 - 96) = a1;
  result = a23;
  *v23 = a23.n128_u32[0];
  return result;
}

void sub_22CA0D034()
{
  v2 = *(v0 - 104);

  JUMPOUT(0x2318BB680);
}

void sub_22CA0D0B8()
{

  JUMPOUT(0x2318BB680);
}

id sub_22CA0D0D4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  *v2 = v3;

  return v3;
}

void sub_22CA0D0F8()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D120()
{

  return swift_slowAlloc();
}

uint64_t sub_22CA0D13C()
{

  return swift_slowAlloc();
}

void sub_22CA0D158()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D1DC()
{
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
}

uint64_t sub_22CA0D1FC()
{
  *(v2 - 120) = v1;
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);

  return swift_slowAlloc();
}

void sub_22CA0D228(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22CA0D248()
{
  v2 = *(*(v0 - 104) + 112);

  return swift_slowAlloc();
}

void sub_22CA0D268()
{
  v2 = *(v0 - 112);

  JUMPOUT(0x2318BB680);
}

void sub_22CA0D2B8()
{
  v2 = *(v0 - 104);

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D2F8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 120);
  return result;
}

uint64_t sub_22CA0D318(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 96) = result;
  return result;
}

void sub_22CA0D328()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[16];
}

uint64_t sub_22CA0D338(uint64_t a1)
{

  return sub_22C9D0B98(a1, 1, 1, v1);
}

void sub_22CA0D354(float a1)
{
  *v2 = a1;
  v4 = *(v1 + 24);
  v5 = *(v3 - 104);
}

void sub_22CA0D364()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D39C()
{

  return swift_slowAlloc();
}

void sub_22CA0D3B8()
{

  JUMPOUT(0x2318BB680);
}

id sub_22CA0D3E4()
{
  *(v0 + 4) = v4;
  v7 = *(v5 - 104);
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2112;
  *(v0 + 24) = v1;
  *v3 = v1;

  return v1;
}

uint64_t sub_22CA0D434()
{

  return swift_slowAlloc();
}

id sub_22CA0D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v16 - 96) = a1;
  *v13 = a13;
  *(v13 + 4) = v14;
  *v15 = v14;
  *(v13 + 12) = 2080;

  return v14;
}

uint64_t sub_22CA0D4E0()
{
  v2 = *(v0 - 128);

  return sub_22CA20AC0();
}

uint64_t sub_22CA0D50C()
{

  return swift_unknownObjectRetain_n();
}

uint64_t sub_22CA0D528()
{
}

uint64_t sub_22CA0D540()
{

  return sub_22C9D60B0(v0, v1, (v2 - 96));
}

uint64_t sub_22CA0D55C()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_22CA21220();
}

void sub_22CA0D578(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22CA0D594(uint64_t result)
{
  *(v2 - 120) = result;
  *(v2 - 112) = v1;
  *(v2 - 128) = v1 & 0xC000000000000001;
  return result;
}

uint64_t sub_22CA0D5B0()
{

  return swift_allocObject();
}

uint64_t sub_22CA0D5E4()
{
  v2 = *(v0 - 120);

  return sub_22CA21230();
}

uint64_t sub_22CA0D600(uint64_t result)
{
  *(v2 - 120) = result;
  *(v2 - 112) = v1;
  *(v2 - 128) = v1 & 0xC000000000000001;
  return result;
}

id sub_22CA0D61C()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 112);

  return v3;
}

uint64_t sub_22CA0D634(uint64_t a1, unint64_t a2)
{

  return sub_22C9D60B0(a1, a2, (v2 - 96));
}

uint64_t sub_22CA0D64C()
{

  return swift_allocObject();
}

uint64_t sub_22CA0D664()
{
  *(v1 - 136) = v0;

  return sub_22CA20AC0();
}

id sub_22CA0D68C()
{

  return [v0 (v1 + 3004)];
}

id sub_22CA0D6A4()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void sub_22CA0D6BC()
{

  JUMPOUT(0x2318BAD10);
}

void sub_22CA0D6E0()
{
  v2 = v1[14];
  v1[4] = v0;
  v1[5] = v2;
}

void sub_22CA0D6F8()
{
  v2 = v1[14];
  v1[10] = v0;
  v1[11] = v2;
}

void sub_22CA0D788()
{
  *(v0 + 4) = v2;
  v4 = *(v3 - 104);
  *(v0 + 12) = 2048;
  *(v0 + 14) = v1;
}

uint64_t sub_22CA0D7C0()
{
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  *(v1 - 128) = v0[29];
  *(v1 - 120) = v3;
  v6 = v0[28];
  v8 = v0[14];
  v7 = v0[15];

  return sub_22CA21070();
}

unint64_t sub_22CA0D7E4()
{

  return type metadata accessor for MSRankedSuggester();
}

id sub_22CA0D808()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v3;
  *v2 = v3;

  return v3;
}

void sub_22CA0D82C()
{

  sub_22CA0CB14();
}

id sub_22CA0D850(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return v2;
}

BOOL sub_22CA0D874(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22CA0D890()
{
  v2 = *(v0 + 16) + 1;

  sub_22CA0CB14();
}

uint64_t sub_22CA0D8B4()
{
  *(v1 - 136) = v0;

  return sub_22CA21030();
}

void sub_22CA0D9E4()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

uint64_t sub_22CA0D9F8()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);

  return sub_22CA20AC0();
}

void sub_22CA0DA18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22CA0DA38()
{
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
}

void sub_22CA0DA58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void sub_22CA0DA78(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x2Au);
}

void sub_22CA0DA98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x2Au);
}

id sub_22CA0DAB8()
{
  *(v0 + 22) = 2112;
  *(v0 + 24) = v1;
  *v2 = v1;

  return v1;
}

uint64_t sub_22CA0DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  return sub_22C9D60B0(a27, v27, (v28 - 96));
}

uint64_t sub_22CA0DAF8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27)
{
  *v27 = a1;
  v30 = *a27;
  v29 = a27[1];
}

uint64_t sub_22CA0DB18()
{
  *(v2 - 112) = v0;
  *(v2 - 96) = v1;

  return sub_22CA21210();
}

uint64_t sub_22CA0DB38(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
}

uint64_t sub_22CA0DB58()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = v2;
  v5 = *(v3 - 136);

  return sub_22CA21020();
}

uint64_t sub_22CA0DB78()
{

  return sub_22C9DF60C(v2, v1, v0);
}

uint64_t sub_22CA0DB98(uint64_t a1)
{
  *(v1 + 4) = a1;
  v4 = *(v2 - 112);
}

uint64_t sub_22CA0DBB0(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 112);

  return sub_22C9E6DA0(v4);
}

uint64_t sub_22CA0DBC8()
{

  return sub_22C9F7A58(v0);
}

void sub_22CA0DBE0(uint64_t a1, uint64_t a2)
{

  sub_22C9FA050(a1, a2, v2, v3);
}

uint64_t sub_22CA0DBF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
}

uint64_t sub_22CA0DC10()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  return sub_22CA20D50();
}

void sub_22CA0DC28(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

void sub_22CA0DC40(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

BOOL sub_22CA0DC58()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_22CA0DC70()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_22CA0DC88()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22CA0DCA0()
{
}

uint64_t sub_22CA0DCB8()
{
}

void sub_22CA0DCD0()
{
}

uint64_t sub_22CA0DCE8()
{
  v2 = *(v0 + 48);

  return sub_22CA211F0();
}

void sub_22CA0DD00(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

uint64_t sub_22CA0DD18()
{

  return sub_22CA20D40();
}

void sub_22CA0DD30()
{
}

uint64_t sub_22CA0DD48()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22CA0DD60()
{
}

uint64_t sub_22CA0DD78(uint64_t a1)
{

  return sub_22C9DF60C(a1, v1, v2);
}

unint64_t sub_22CA0DD9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C9D02E4(&qword_27D9E50F8, &qword_22CA24AD0);
    v2 = sub_22CA21310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);

    swift_dynamicCast();
    sub_22C9E9818(&v25, v27);
    sub_22C9E9818(v27, v28);
    sub_22C9E9818(v28, &v26);
    result = sub_22C9FBFA8(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      sub_22C9D04CC(v19);
      result = sub_22C9E9818(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_22C9E9818(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_22CA0DFE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v8 = v52 - v7;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v58 = v8;
    v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = v5;
    v13 = *(v6 + 72);
    v14 = &selRef_setIntent_;
    v15 = v11;
    v16 = v9;
    v56 = v6;
    v57 = v13;
    do
    {
      v17 = sub_22CA20B80();
      v18 = sub_22CA20E10();
      v19 = [v17 v14[11]];

      swift_unknownObjectRelease();
      [v19 int64Value];

      v14 = &selRef_setIntent_;
      v15 += v57;
      --v16;
    }

    while (v16);
    v54 = *(v56 + 16);
    v55 = "mostRecentPlayback";
    v52[2] = "itemFeedbackRewardScoreDecayed";
    v52[1] = "itemPlaybackScoreDecayed";
    v52[3] = "candidateSourceType";
    v56 += 16;
    v20 = (v56 - 8);
    v21 = MEMORY[0x277D84F90];
    v53 = xmmword_22CA22F90;
    v22 = v58;
    v23 = v12;
    while (1)
    {
      v54(v22, v11, v12);
      sub_22CA20B80();
      swift_getObjectType();
      v24 = sub_22CA21040();
      v26 = v25;

      swift_unknownObjectRelease();
      if (v24 == 0x6574736567677573 && v26 == 0xEE00616964654D64)
      {
      }

      else
      {
        v28 = sub_22CA21360();

        if ((v28 & 1) == 0)
        {
          sub_22CA20B80();
          v29 = sub_22CA20E10();
          v30 = sub_22CA0EB28(v29);

          swift_unknownObjectRelease();
          if (v30)
          {
            [v30 doubleValue];
            v32 = v31;

            v33 = v32 * 10.0;
          }

          else
          {
            v33 = 0.0;
          }

          sub_22CA20B80();
          v39 = sub_22CA20E10();
          v40 = sub_22CA0EB28(v39);

          swift_unknownObjectRelease();
          if (v40)
          {
            [v40 doubleValue];
            v42 = v41;

            v33 = v33 + v42;
          }

          goto LABEL_14;
        }
      }

      sub_22CA20B80();
      swift_getObjectType();
      sub_22CA21030();
      v33 = v34;
      swift_unknownObjectRelease();
LABEL_14:
      sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
      inited = swift_initStackObject();
      *(inited + 16) = v53;
      *(inited + 32) = 0x6F63536C616E6966;
      *(inited + 40) = 0xEA00000000006572;
      *(inited + 48) = v33;
      v36 = sub_22CA20DD0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v21 + 16);
        sub_22CA11E70();
        v21 = v44;
      }

      v37 = *(v21 + 16);
      v38 = v37 + 1;
      if (v37 >= *(v21 + 24) >> 1)
      {
        sub_22CA11E70();
        v21 = v45;
      }

      v22 = v58;
      v12 = v23;
      (*v20)(v58, v23);
      *(v21 + 16) = v38;
      *(v21 + 8 * v37 + 32) = v36;
      v11 += v57;
      if (!--v9)
      {
        v10 = MEMORY[0x277D84F90];
LABEL_25:
        v59 = v10;
        sub_22CA21210();
        v46 = 0;
        while (v46 < *(v21 + 16))
        {
          v47 = *(v21 + 8 * v46 + 32);

          sub_22CA0DD9C(v48);
          v49 = objc_allocWithZone(MEMORY[0x277CBFED0]);
          sub_22CA17474();
          ++v46;

          sub_22CA211F0();
          v50 = *(v59 + 16);
          sub_22CA21220();
          sub_22CA21230();
          sub_22CA21200();
          if (v38 == v46)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }
  }

  v38 = *(MEMORY[0x277D84F90] + 16);
  if (v38)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_28:

  sub_22C9E28F0();
  return sub_22CA169F0();
}

uint64_t sub_22CA0E638()
{
  sub_22C9D02E4(&qword_27D9E50E8, &qword_22CA24AB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22CA22F90;
  v1 = type metadata accessor for MSSuggestionRewardScorer();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_22CA0EAE4(&qword_27D9E50F0, type metadata accessor for MSSuggestionRewardScorer);
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_22CA0E6E8()
{
  *(v0 + 16) = 0;
  v1 = sub_22CA20C60();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_22CA20C50();
  return v0;
}

uint64_t sub_22CA0E7A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_22CA0E7C8()
{
  sub_22CA0E7A0();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22CA0E838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CE9AF8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = type metadata accessor for MSSuggestionRewardScorerPipeline();
  v7 = sub_22CA0EAE4(&qword_27D9E4C90, type metadata accessor for MSSuggestionRewardScorerPipeline);
  *v5 = v2;
  v5[1] = sub_22C9D8320;

  return MEMORY[0x28213B598](a2, v6, v7);
}

uint64_t sub_22CA0E924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSSuggestionRewardScorerPipeline();

  return MEMORY[0x28213B588](a1, v5, a3);
}

uint64_t sub_22CA0E970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213B580](a1, WitnessTable);
}

uint64_t sub_22CA0EAE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22CA0EB28(uint64_t a1)
{

  return [v2 (v1 + 1400)];
}

uint64_t sub_22CA0EB48(uint64_t a1, uint64_t a2)
{
  sub_22C9D02E4(&unk_27D9E4D70, &qword_22CA231E8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_22CA0EBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_22CA20F70();
  sub_22C9D0B98(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_22CA24B10;
  v10[5] = v9;
  sub_22CA10990(0, 0, v7, &unk_22CA24B20, v10);
}

uint64_t sub_22CA0ECEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_22C9D05CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_22CA0EB48(v4, a3);
  }

  type metadata accessor for MSSuggestion(0);
  v6 = sub_22CA20EC0();
  return sub_22CA0EBBC(v4, v6);
}

uint64_t sub_22CA0EDAC()
{
  v1 = *(v0 + OBJC_IVAR___MSLegacySuggester_requestIdentifier);
  v2 = *(v0 + OBJC_IVAR___MSLegacySuggester_requestIdentifier + 8);

  return v1;
}

uint64_t sub_22CA0EE58(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSLegacySuggester_requestIdentifier);
  v4 = *(v2 + OBJC_IVAR___MSLegacySuggester_requestIdentifier + 8);
  *v3 = a1;
  v3[1] = a2;
}

id MSLegacySuggester.init(requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSLegacySuggester_requestIdentifier);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = MSLegacySuggester;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22CA0EEEC()
{
  v0 = sub_22CA20A20();
  v1 = sub_22C9DAE90(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22CA11160();
  sub_22CA20A10();
  sub_22CA20A00();
  v4 = sub_22CA0D71C();
  v5(v4);
  _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0();
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t MSLegacySuggester.description.getter()
{
  sub_22CA211A0();

  swift_getObjectType();
  v1 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v1);

  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA27F20);
  v2 = [v0 requestIdentifier];
  v3 = sub_22CA20E20();
  v5 = v4;

  MEMORY[0x2318BA9C0](v3, v5);

  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return 60;
}

id MSLegacySuggester.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = sub_22CA20A20();
  v3 = sub_22C9DAE90(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22CA11160();
  sub_22CA20A10();
  sub_22CA20A00();
  v7 = sub_22CA0D71C();
  v8(v7);
  result = _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0();
  a1[3] = v6;
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MSLegacySuggester()
{
  result = qword_28143A2A0;
  if (!qword_28143A2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A2A0);
  }

  return result;
}

Swift::Void __swiftcall MSLegacySuggester.encode(with:)(NSCoder with)
{
  v3 = [v1 requestIdentifier];
  if (!v3)
  {
    sub_22CA20E20();
    sub_22CA20E10();
    sub_22C9D7254();
  }

  v4 = sub_22C9D07A8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id MSLegacySuggester.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = sub_22C9D07A8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_22C9D6C44(v14, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_9:
    type metadata accessor for MSLegacySuggester();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v11;
  v6 = &v1[OBJC_IVAR___MSLegacySuggester_requestIdentifier];
  *v6 = v10;
  *(v6 + 1) = v5;
  v9.receiver = v1;
  v9.super_class = MSLegacySuggester;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t MSLegacySuggester.suggestions(with:)()
{
  sub_22C9D6F3C();
  v1[4] = v2;
  v1[5] = v0;
  v3 = *(*(sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA0F638, 0, 0);
}

uint64_t sub_22CA0F638()
{
  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, &unk_28143A4E0);
  v4 = v1;
  v5 = v2;
  v6 = sub_22CA20AF0();
  v7 = sub_22CA21010();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v8;
    v11[1] = v9;
    v12 = v8;
    v13 = v9;
    _os_log_impl(&dword_22C9CA000, v6, v7, "(Legacy) Performing preference-respecting request %@ with options: %@", v10, 0x16u);
    sub_22C9D02E4(&unk_27D9E5090, &qword_22CA22E00);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[4];

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v17 = sub_22CA209F0();
  sub_22C9D0B98(v14, 1, 1, v17);
  sub_22C9D0B98(v15, 1, 1, v17);
  v18 = sub_22C9F0A1C(v16, 0, v14, v15);
  v19 = v0[7];
  v20 = v18;
  sub_22C9D6C44(v0[6], &unk_27D9E4F00, &unk_22CA232D0);
  v21 = sub_22CA11184();
  sub_22C9D6C44(v21, v22, &unk_22CA232D0);

  v23 = v0[1];

  return v23(v20);
}

uint64_t sub_22CA0F98C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22CA0FA50;

  return MSLegacySuggester.suggestions(with:)();
}

uint64_t sub_22CA0FA50()
{
  sub_22CA0D6D4();
  v2 = v0;
  sub_22C9D70B4();
  v4 = v3;
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  sub_22C9D6EA4();
  *v10 = v9;

  if (v0)
  {
    if (v6)
    {
      v11 = v4[4];
      v12 = sub_22CA20920();

      v11[2](v11, 0, v12);
      v13 = v11;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v14 = v4[4];
      type metadata accessor for MSSuggestion(0);
      v12 = sub_22CA20EB0();

      v15 = v14[2];
      v16 = sub_22CA11184();
      v17(v16);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_22C9D7050();

  return v18();
}

uint64_t static MSLegacySuggester.availablebundleIDsForMediaSuggestions()()
{
  v0 = sub_22CA209F0();
  v1 = sub_22C9DAE90(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  sub_22CA209E0();
  sub_22CA209B0();
  v11 = *(v3 + 8);
  v11(v8, v0);
  sub_22CA209E0();
  type metadata accessor for MSBiomeMediaReader();
  inited = swift_initStackObject();
  sub_22C9F81A4();
  v13 = sub_22C9D7254();
  v11(v13, v0);
  v11(v10, v0);
  return inited;
}

uint64_t sub_22CA0FDE4()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 16);
  v2 = [swift_getObjCClassFromMetadata() availablebundleIDsForMediaSuggestions];
  v3 = sub_22CA20EC0();

  v4 = *(v0 + 8);

  return v4(v3);
}

void sub_22CA0FE70(uint64_t a1, void (**a2)(void, void))
{
  v3 = [swift_getObjCClassFromMetadata() availablebundleIDsForMediaSuggestions];
  sub_22CA20EC0();

  v4 = sub_22CA20EB0();
  (a2)[2](a2, v4);

  _Block_release(a2);
}

uint64_t static MSLegacySuggester.availableBundleIDs(completion:)(void (*a1)(uint64_t))
{
  v2 = [swift_getObjCClassFromMetadata() availablebundleIDsForMediaSuggestions];
  v3 = sub_22CA20EC0();

  a1(v3);
}

uint64_t sub_22CA1019C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_22CA20F70();
  sub_22C9D0B98(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;
  v14 = a1;

  sub_22C9D1034(0, 0, v10, &unk_22CA24AF0, v12);
}

uint64_t sub_22CA102A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  return MEMORY[0x2822009F8](sub_22CA102C4, 0, 0);
}

uint64_t sub_22CA102C4()
{
  sub_22CA0D6D4();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22CA103E8;
  v3 = swift_continuation_init();
  v0[17] = sub_22C9D02E4(&qword_27D9E5110, &qword_22CA24858);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22CA0ECEC;
  v0[13] = &unk_283FCE2D8;
  v0[14] = v3;
  [v2 suggestionsWithOptions:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22CA103E8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 184) = v4;
  if (v4)
  {
    v5 = sub_22CA104F0;
  }

  else
  {
    v5 = sub_22CA0B514;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22CA104F0()
{
  v1 = v0[23];
  swift_willThrow();
  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4();
  }

  v2 = v0[23];
  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, &unk_28143A4E0);
  v4 = sub_22C9D7254();
  v5 = sub_22CA20AF0();
  v6 = sub_22CA21000();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22C9CA000, v5, v6, "Error encountered while fetching suggestions. Error: %@", v8, 0xCu);
    sub_22C9D6C44(v9, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];

  v15 = v12;
  v14(0, v12);

  sub_22C9D7050();

  return v16();
}

id MSLegacySuggester.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22CA107C0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22C9D6E54;

  return v7();
}

uint64_t sub_22CA108A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22C9D0F54;

  return v8();
}

uint64_t sub_22CA10990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_22CA10F98(a3, v25 - v11);
  v13 = sub_22CA20F70();
  if (sub_22C9D68B0(v12, 1, v13) == 1)
  {
    sub_22C9D6C44(v12, &unk_27D9E4A00, &qword_22CA22D90);
  }

  else
  {
    sub_22CA20F60();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_22CA20F10();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22CA20E50() + 32;
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

      sub_22C9D6C44(a3, &unk_27D9E4A00, &qword_22CA22D90);

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

  sub_22C9D6C44(a3, &unk_27D9E4A00, &qword_22CA22D90);
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

uint64_t sub_22CA10C5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_22C9D705C(v7);
  *v8 = v9;
  v8[1] = sub_22C9D6E54;
  v10 = sub_22C9D708C();

  return sub_22CA102A0(v10, v11, v2, v3, v4, v6, v5);
}

uint64_t sub_22CA10D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22C9D6E54;
  v6 = sub_22CA11184();

  return v7(v6);
}

uint64_t sub_22CA10DE8()
{
  sub_22CA0D6D4();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22C9D6E54;
  v7 = sub_22CA11184();

  return v8(v7);
}

uint64_t sub_22CA10EA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CA10EE0()
{
  sub_22CA0D6D4();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_22C9D705C(v5);
  *v6 = v7;
  v6[1] = sub_22C9D0F54;
  v8 = sub_22C9D708C();

  return v9(v8);
}

uint64_t sub_22CA10F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CA11008()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C9D705C(v3);
  *v4 = v5;
  v4[1] = sub_22C9D6E54;
  v6 = sub_22C9D708C();

  return v7(v6);
}

uint64_t sub_22CA110B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C9D705C(v3);
  *v4 = v5;
  v4[1] = sub_22C9D0F54;
  v6 = sub_22C9D708C();

  return v7(v6);
}

unint64_t sub_22CA11160()
{

  return type metadata accessor for MSLegacySuggester();
}

uint64_t sub_22CA11190()
{
  *(v0 + 16) = 0;
  v1 = sub_22CA20C40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_22CA1410C();
  if (&OBJC_IVAR____TtC14MediaSuggester33MSSuggestionRewardRankingPipeline_partitionAllocations)
  {
    swift_unexpectedError();
    v6 = *(v0 + 16);

    type metadata accessor for MSSuggestionRewardRanker();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v4;
    return v0;
  }

  return result;
}

size_t sub_22CA11234(uint64_t a1, size_t a2)
{
  v3 = a2;

  sub_22CA1255C(&v3);
  return v3;
}

BOOL sub_22CA1128C()
{
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v0 = sub_22CA20B80();
  v1 = sub_22CA20E10();
  v2 = [v0 featureValueForName_];

  swift_unknownObjectRelease();
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    [v2 doubleValue];
    v4 = v5;
  }

  v6 = sub_22CA20B80();
  v7 = sub_22CA20E10();
  v8 = [v6 featureValueForName_];

  swift_unknownObjectRelease();
  if (v8)
  {
    [v8 doubleValue];
    v3 = v9;
  }

  return v3 < v4;
}

uint64_t sub_22CA11414()
{
  sub_22C9D02E4(&qword_27D9E5138, &unk_22CA24D50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22CA22F90;
  v1 = type metadata accessor for MSSuggestionRewardRanker();
  v2 = swift_allocObject();
  sub_22CA11190();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_22CA118FC(&qword_27D9E5140, type metadata accessor for MSSuggestionRewardRanker);
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_22CA114C8()
{
  v0[2] = sub_22CA20DD0();
  v0[3] = 0;
  v1 = sub_22CA20C40();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_22CA1410C();
  if (&OBJC_IVAR____TtC14MediaSuggester33MSSuggestionRewardRankingPipeline_partitionAllocations)
  {
    swift_unexpectedError();
    v6 = v0[2];

    v7 = v0[3];

    type metadata accessor for MSSuggestionRewardRankingPipeline();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v0[4] = v4;
    return v0;
  }

  return result;
}

void *sub_22CA11598()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_22CA115C8()
{
  sub_22CA11598();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_22CA11644(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CE9AF0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = type metadata accessor for MSSuggestionRewardRankingPipeline();
  v7 = sub_22CA118FC(&qword_27D9E4CA0, type metadata accessor for MSSuggestionRewardRankingPipeline);
  *v5 = v2;
  v5[1] = sub_22C9D8320;

  return MEMORY[0x28213B590](a2, v6, v7);
}

uint64_t sub_22CA11730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSSuggestionRewardRankingPipeline();

  return MEMORY[0x28213B588](a1, v5, a3);
}

uint64_t sub_22CA1177C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213B580](a1, WitnessTable);
}

uint64_t sub_22CA118FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22CA11940()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5168, &qword_22CA24D90);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_22CA14130(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22CA14100();
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v2] <= v11)
    {
      memmove(v11, v12, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA11A28()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E4BE8, &qword_22CA22E90);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22CA14100();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_22CA11AF8()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5180, &qword_22CA24DA8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_22CA14130(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22CA14100();
  if (v1)
  {
    if (v9 != v0 || &v12[112 * v2] <= v11)
    {
      memmove(v11, v12, 112 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA11BE0()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5170, &qword_22CA24D98);
    v9 = sub_22CA140E4();
    j__malloc_size(v9);
    sub_22CA14088();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[2 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22C9D02E4(&qword_27D9E5178, &qword_22CA24DA0);
    sub_22CA140C4();
  }
}

void sub_22CA11CC8()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E4F70, &unk_22CA23EA0);
    v9 = sub_22CA140E4();
    j__malloc_size(v9);
    sub_22CA14088();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22CA14100();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA11D94()
{
  sub_22CA140B8();
  if (v3)
  {
    sub_22CA14078();
    if (v5 != v6)
    {
      sub_22CA140AC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_22C9D02E4(&qword_27D9E5148, &qword_22CA24D60);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_22CA14088();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_22CA11E70()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5158, &qword_22CA24D70);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22C9D02E4(&qword_27D9E5160, &qword_22CA24D78);
    sub_22CA140C4();
  }
}

char *sub_22CA11F70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22CA14058(a3, result);
  }

  return result;
}

char *sub_22CA11F90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_22CA14058(a3, result);
  }

  return result;
}

uint64_t sub_22CA11FB8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_22CA120A4()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E4F70, &unk_22CA23EA0);
    v9 = sub_22CA140E4();
    j__malloc_size(v9);
    sub_22CA14088();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = sub_22CA14100();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22CA12170()
{
  sub_22CA140B8();
  if (v5)
  {
    sub_22CA14078();
    if (v7 != v8)
    {
      sub_22CA140AC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22CA14068();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_22CA1409C(v6);
  if (v3)
  {
    sub_22C9D02E4(&qword_27D9E5170, &qword_22CA24D98);
    v9 = sub_22CA140E4();
    j__malloc_size(v9);
    sub_22CA14088();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[2 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22C9D02E4(&qword_27D9E5178, &qword_22CA24DA0);
    sub_22CA140C4();
  }
}

void *sub_22CA12258(void *result, int64_t a2, char a3, void *a4)
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
    sub_22C9D02E4(&qword_27D9E4F58, &unk_22CA24D80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22C9D02E4(&qword_27D9E5018, &qword_22CA243D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22CA12390(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22C9D02E4(&qword_27D9E5150, &qword_22CA24D68);
  v10 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22CA11FB8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22CA1255C(size_t *a1)
{
  v2 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22CA14044(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22CA12610(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22CA12610(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22CA21330();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
        v6 = sub_22CA20EF0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22CA12AD0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22CA12758(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22CA12758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v40 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v51 = *(v15 + 16);
    v52 = v15 + 16;
    v19 = *(v15 + 72);
    v20 = (v15 + 8);
    v21 = v18 + v19 * (a3 - 1);
    v47 = -v19;
    v48 = (v15 + 32);
    v22 = a1 - a3;
    v49 = v18;
    v41 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v45 = v21;
      v46 = a3;
      v43 = v23;
      v44 = v22;
      do
      {
        v24 = v51;
        v51(v17, v23, v8);
        v24(v53, v21, v8);
        v25 = v17;
        v26 = sub_22CA20B80();
        v27 = sub_22CA20E10();
        v28 = [v26 featureValueForName_];

        swift_unknownObjectRelease();
        v29 = 0.0;
        v30 = 0.0;
        if (v28)
        {
          [v28 doubleValue];
          v30 = v31;
        }

        v32 = sub_22CA20B80();
        v33 = sub_22CA20E10();
        v34 = [v32 featureValueForName_];

        swift_unknownObjectRelease();
        if (v34)
        {
          [v34 doubleValue];
          v29 = v35;
        }

        v36 = *v20;
        (*v20)(v53, v8);
        v17 = v25;
        result = (v36)(v25, v8);
        if (v29 >= v30)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return result;
        }

        v37 = *v48;
        v38 = v50;
        (*v48)(v50, v23, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v37)(v21, v38, v8);
        v21 += v47;
        v23 += v47;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v46 + 1;
      v21 = v45 + v41;
      v22 = v44 - 1;
      v23 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22CA12AD0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v150 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v160 = &v140 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v165 = &v140 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v164 = &v140 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v140 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v140 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v154 = v24;
  v155 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_111:
    v165 = *v146;
    if (!v165)
    {
      goto LABEL_153;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_113;
    }

    goto LABEL_147;
  }

  v142 = &v140 - v23;
  v143 = v25;
  v141 = a4;
  v27 = 0;
  v162 = v24 + 16;
  v163 = (v24 + 8);
  v161 = (v24 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    v29 = v27++;
    if (v27 < v26)
    {
      v153 = v26;
      v144 = v28;
      v30 = v27;
      v31 = *v155;
      v32 = *(v24 + 72);
      v157 = v30;
      v33 = v31 + v32 * v30;
      v34 = *(v24 + 16);
      v35 = v142;
      v28 = v29;
      v34(v142, v33, v8);
      v159 = v31;
      v36 = v31 + v32 * v29;
      v37 = v35;
      v38 = v143;
      v151 = v34;
      v34(v143, v36, v8);
      LODWORD(v152) = sub_22CA1128C();
      if (v5)
      {
        v139 = *v163;
        (*v163)(v38, v8);
        v139(v37, v8);
LABEL_121:

        return;
      }

      v147 = 0;
      v39 = *v163;
      (*v163)(v38, v8);
      v39(v37, v8);
      v145 = v29;
      v40 = (v29 + 2);
      v41 = v159 + v32 * (v29 + 2);
      v27 = v157;
      v42 = v32;
      v159 = v32;
      v43 = v153;
      while (1)
      {
        v5 = v40;
        if (v27 + 1 >= v43)
        {
          break;
        }

        v28 = v27;
        v44 = v151;
        (v151)(v156, v41, v8);
        v44(v158, v33, v8);
        v45 = sub_22CA20B80();
        v46 = sub_22CA20E10();
        v47 = [v45 featureValueForName_];

        swift_unknownObjectRelease();
        v48 = 0.0;
        v49 = 0.0;
        if (v47)
        {
          [v47 doubleValue];
          v49 = v50;
        }

        v51 = sub_22CA20B80();
        v52 = sub_22CA20E10();
        v53 = [v51 featureValueForName_];

        swift_unknownObjectRelease();
        if (v53)
        {
          [v53 doubleValue];
          v48 = v54;
        }

        v39(v158, v8);
        v39(v156, v8);
        v42 = v159;
        v41 += v159;
        v33 += v159;
        v27 = (v28 + 1);
        v40 = v5 + 1;
        v43 = v153;
        if (((v152 ^ (v48 >= v49)) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v27 = v43;
LABEL_14:
      if (v152)
      {
        v29 = v145;
        if (v27 < v145)
        {
          goto LABEL_146;
        }

        if (v145 >= v27)
        {
          v5 = v147;
          v28 = v144;
          goto LABEL_37;
        }

        if (v43 >= v5)
        {
          v55 = v5;
        }

        else
        {
          v55 = v43;
        }

        v56 = v145;
        v57 = v27;
        v58 = v42 * (v55 - 1);
        v59 = v42 * v55;
        v60 = v145 * v42;
        v157 = v57;
        v5 = v147;
        do
        {
          if (v56 != --v57)
          {
            v61 = *v155;
            if (!*v155)
            {
              goto LABEL_151;
            }

            v62 = *v161;
            (*v161)(v150, v61 + v60, v8);
            v63 = v60 < v58 || v61 + v60 >= v61 + v59;
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v62((v61 + v58), v150, v8);
            v5 = v147;
            v42 = v159;
          }

          ++v56;
          v58 -= v42;
          v59 -= v42;
          v60 += v42;
        }

        while (v56 < v57);
        v28 = v144;
        v27 = v157;
      }

      else
      {
        v5 = v147;
        v28 = v144;
      }

      v29 = v145;
    }

LABEL_37:
    v64 = v155[1];
    if (v27 < v64)
    {
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_143;
      }

      if (v27 - v29 < v141)
      {
        break;
      }
    }

LABEL_57:
    if (v27 < v29)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = *(v28 + 2);
      sub_22CA11D94();
      v28 = v130;
    }

    v87 = *(v28 + 2);
    v88 = v87 + 1;
    if (v87 >= *(v28 + 3) >> 1)
    {
      sub_22CA11D94();
      v28 = v131;
    }

    *(v28 + 2) = v88;
    v89 = v28 + 32;
    v90 = &v28[16 * v87 + 32];
    *v90 = v29;
    *(v90 + 1) = v27;
    v159 = *v146;
    if (!v159)
    {
      goto LABEL_152;
    }

    if (v87)
    {
      v157 = v27;
      v153 = v28 + 32;
      while (1)
      {
        v91 = v88 - 1;
        v92 = &v89[16 * v88 - 16];
        v93 = &v28[16 * v88];
        if (v88 >= 4)
        {
          break;
        }

        if (v88 == 3)
        {
          v94 = *(v28 + 4);
          v95 = *(v28 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_78:
          if (v97)
          {
            goto LABEL_129;
          }

          v109 = *v93;
          v108 = *(v93 + 1);
          v110 = __OFSUB__(v108, v109);
          v111 = v108 - v109;
          v112 = v110;
          if (v110)
          {
            goto LABEL_132;
          }

          v113 = *(v92 + 1);
          v114 = v113 - *v92;
          if (__OFSUB__(v113, *v92))
          {
            goto LABEL_135;
          }

          if (__OFADD__(v111, v114))
          {
            goto LABEL_137;
          }

          if (v111 + v114 >= v96)
          {
            if (v96 < v114)
            {
              v91 = v88 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v88 < 2)
        {
          goto LABEL_131;
        }

        v116 = *v93;
        v115 = *(v93 + 1);
        v104 = __OFSUB__(v115, v116);
        v111 = v115 - v116;
        v112 = v104;
LABEL_93:
        if (v112)
        {
          goto LABEL_134;
        }

        v118 = *v92;
        v117 = *(v92 + 1);
        v104 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v104)
        {
          goto LABEL_136;
        }

        if (v119 < v111)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v91 - 1 >= v88)
        {
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
          goto LABEL_145;
        }

        if (!*v155)
        {
          goto LABEL_149;
        }

        v123 = v28;
        v124 = &v89[16 * v91 - 16];
        v28 = *v124;
        v125 = v91;
        v126 = &v89[16 * v91];
        v127 = *(v126 + 1);
        sub_22CA1374C(*v155 + *(v154 + 72) * *v124, *v155 + *(v154 + 72) * *v126, (*v155 + *(v154 + 72) * v127), v159);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v127 < v28)
        {
          goto LABEL_124;
        }

        v5 = *(v123 + 2);
        if (v125 > v5)
        {
          goto LABEL_125;
        }

        *v124 = v28;
        *(v124 + 1) = v127;
        if (v125 >= v5)
        {
          goto LABEL_126;
        }

        v88 = v5 - 1;
        memmove(v126, v126 + 16, 16 * (v5 - 1 - v125));
        v28 = v123;
        *(v123 + 2) = v5 - 1;
        v128 = v5 > 2;
        v5 = 0;
        v27 = v157;
        v89 = v153;
        if (!v128)
        {
          goto LABEL_107;
        }
      }

      v98 = &v89[16 * v88];
      v99 = *(v98 - 8);
      v100 = *(v98 - 7);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_127;
      }

      v103 = *(v98 - 6);
      v102 = *(v98 - 5);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_128;
      }

      v105 = *(v93 + 1);
      v106 = v105 - *v93;
      if (__OFSUB__(v105, *v93))
      {
        goto LABEL_130;
      }

      v104 = __OFADD__(v96, v106);
      v107 = v96 + v106;
      if (v104)
      {
        goto LABEL_133;
      }

      if (v107 >= v101)
      {
        v121 = *v92;
        v120 = *(v92 + 1);
        v104 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v104)
        {
          goto LABEL_141;
        }

        if (v96 < v122)
        {
          v91 = v88 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

LABEL_107:
    v24 = v154;
    v26 = v155[1];
    if (v27 >= v26)
    {
      goto LABEL_111;
    }
  }

  v65 = &v29[v141];
  if (__OFADD__(v29, v141))
  {
    goto LABEL_144;
  }

  if (v65 >= v64)
  {
    v65 = v155[1];
  }

  if (v65 < v29)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    v28 = sub_22CA13E30(v28);
LABEL_113:
    v132 = v28 + 16;
    v133 = *(v28 + 2);
    while (v133 >= 2)
    {
      if (!*v155)
      {
        goto LABEL_150;
      }

      v134 = v28;
      v28 += 16 * v133;
      v135 = *v28;
      v136 = &v132[2 * v133];
      v137 = v136[1];
      sub_22CA1374C(*v155 + *(v154 + 72) * *v28, *v155 + *(v154 + 72) * *v136, (*v155 + *(v154 + 72) * v137), v165);
      if (v5)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_138;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_139;
      }

      *v28 = v135;
      *(v28 + 1) = v137;
      v138 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_140;
      }

      v133 = *v132 - 1;
      memmove(v136, v136 + 2, 16 * v138);
      *v132 = v133;
      v28 = v134;
    }

    goto LABEL_121;
  }

  if (v27 == v65)
  {
    goto LABEL_57;
  }

  v144 = v28;
  v147 = v5;
  v66 = *v155;
  v67 = *(v154 + 72);
  v68 = *(v154 + 16);
  v69 = v29;
  v70 = *v155 + v67 * (v27 - 1);
  v71 = -v67;
  v145 = v69;
  v72 = &v69[-v27];
  v159 = v66;
  v148 = v67;
  v149 = v65;
  v73 = (v66 + v27 * v67);
LABEL_46:
  v157 = v27;
  v151 = v73;
  v152 = v72;
  v153 = v70;
  while (1)
  {
    v68(v164, v73, v8);
    v68(v165, v70, v8);
    v74 = sub_22CA20B80();
    v75 = sub_22CA20E10();
    v76 = [v74 featureValueForName_];

    swift_unknownObjectRelease();
    v77 = 0.0;
    v78 = 0.0;
    if (v76)
    {
      [v76 doubleValue];
      v78 = v79;
    }

    v80 = sub_22CA20B80();
    v81 = sub_22CA20E10();
    v82 = [v80 featureValueForName_];

    swift_unknownObjectRelease();
    if (v82)
    {
      [v82 doubleValue];
      v77 = v83;
    }

    v84 = *v163;
    (*v163)(v165, v8);
    v84(v164, v8);
    if (v77 >= v78)
    {
LABEL_55:
      v27 = (v157 + 1);
      v70 = &v153[v148];
      v72 = v152 - 1;
      v73 = &v151[v148];
      if (v157 + 1 == v149)
      {
        v27 = v149;
        v5 = v147;
        v28 = v144;
        v29 = v145;
        goto LABEL_57;
      }

      goto LABEL_46;
    }

    if (!v159)
    {
      break;
    }

    v85 = v160;
    v86 = *v161;
    (*v161)(v160, v73, v8);
    swift_arrayInitWithTakeFrontToBack();
    v86(v70, v85, v8);
    v70 += v71;
    v73 += v71;
    v63 = __CFADD__(v72++, 1);
    if (v63)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_22CA1374C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v68 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v76 = &v68 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v68 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_68;
  }

  v23 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_69;
  }

  v25 = (a2 - a1) / v21;
  v79 = a1;
  v78 = a4;
  v74 = (v17 + 8);
  v75 = (v17 + 16);
  v26 = v23 / v21;
  if (v25 >= v23 / v21)
  {
    sub_22CA11FB8(a2, v23 / v21, a4);
    v47 = a4 + v26 * v21;
    v48 = -v21;
    v49 = v47;
    v70 = a4;
    v76 = -v21;
LABEL_40:
    v71 = a2 + v48;
    v50 = a3;
    v68 = v49;
    while (1)
    {
      if (v47 <= a4)
      {
        v79 = a2;
        v77 = v49;
        goto LABEL_66;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v49;
      v51 = v47 + v48;
      v52 = *v75;
      (*v75)(v72, v51, v8);
      v52(v73, v71, v8);
      v53 = sub_22CA20B80();
      v54 = sub_22CA20E10();
      v55 = [v53 featureValueForName_];

      swift_unknownObjectRelease();
      v56 = 0.0;
      v57 = 0.0;
      if (v55)
      {
        [v55 doubleValue];
        v57 = v58;
      }

      v59 = sub_22CA20B80();
      v60 = sub_22CA20E10();
      v61 = [v59 featureValueForName_];

      swift_unknownObjectRelease();
      if (v61)
      {
        [v61 doubleValue];
        v56 = v62;
      }

      a3 = (v50 + v76);
      v63 = *v74;
      (*v74)(v73, v8);
      v63(v72, v8);
      a4 = v70;
      if (v56 < v57)
      {
        if (v50 < a2 || a3 >= a2)
        {
          a2 = v71;
          swift_arrayInitWithTakeFrontToBack();
          v49 = v69;
          v48 = v76;
        }

        else
        {
          v49 = v69;
          v22 = v50 == a2;
          v66 = v71;
          a2 = v71;
          v48 = v76;
          if (!v22)
          {
            v67 = v69;
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v49 = v67;
          }
        }

        goto LABEL_40;
      }

      if (v50 < v47 || a3 >= v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        v50 = a3;
        v47 = v51;
        v49 = v51;
        v48 = v76;
      }

      else
      {
        v49 = v51;
        v22 = v47 == v50;
        v50 = a3;
        v47 = v51;
        v48 = v76;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v50 = a3;
          v47 = v51;
          v49 = v51;
        }
      }
    }

    v79 = a2;
    v77 = v68;
  }

  else
  {
    sub_22CA11FB8(a1, (a2 - a1) / v21, a4);
    v73 = (a4 + v25 * v21);
    v77 = v73;
    v27 = v21;
    v71 = a3;
    while (a4 < v73 && a2 < a3)
    {
      v29 = *v75;
      v30 = a2;
      (*v75)(v19, a2, v8);
      v31 = a4;
      v29(v76, a4, v8);
      v32 = sub_22CA20B80();
      v33 = sub_22CA20E10();
      v34 = [v32 featureValueForName_];

      swift_unknownObjectRelease();
      v35 = 0.0;
      v36 = 0.0;
      if (v34)
      {
        [v34 doubleValue];
        v36 = v37;
      }

      v38 = sub_22CA20B80();
      v39 = sub_22CA20E10();
      v40 = [v38 featureValueForName_];

      swift_unknownObjectRelease();
      if (v40)
      {
        [v40 doubleValue];
        v35 = v41;
      }

      v42 = *v74;
      (*v74)(v76, v8);
      v42(v19, v8);
      a4 = v31;
      if (v35 >= v36)
      {
        v45 = v31 + v27;
        v46 = a1 < v31 || a1 >= v45;
        a2 = v30;
        if (v46)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v71;
        }

        else
        {
          a3 = v71;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v78 = v45;
        a4 += v27;
      }

      else
      {
        v43 = v30;
        a2 = v30 + v27;
        if (a1 < v30 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v71;
        }

        else
        {
          a3 = v71;
          if (a1 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 += v27;
      v79 = a1;
    }
  }

LABEL_66:
  sub_22CA13E44(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_22CA13E44(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22CA13F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_22C9D02E4(&qword_27D9E5148, &qword_22CA24D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_22CA1409C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_22CA140C4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22CA140E4()
{

  return swift_allocObject();
}

uint64_t sub_22CA1410C()
{

  return MEMORY[0x28213B608](0xD000000000000021, v0 | 0x8000000000000000);
}

uint64_t sub_22CA14130(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_22CA14144()
{
  v1 = sub_22CA20BD0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22CA20BC0();
  return v0;
}

void *sub_22CA14214()
{
  v1 = v0;
  v2 = sub_22CA20C80();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_22CA20C70();
  type metadata accessor for MSAppIntentPlayAudioCandidateSourceRequestTransformer();
  v5 = swift_allocObject();
  sub_22CA14144();
  v1[5] = v5;
  v6 = sub_22C9D02E4(&qword_27D9E4E08, &qword_22CA234E0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v1[6] = sub_22CA20B70();
  type metadata accessor for MSAppIntentAudioPlaybackCandidateSource();
  swift_allocObject();

  v1[4] = sub_22C9E8E9C(v9);
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  v12 = v1[12];
  sub_22CA14884(&qword_27D9E4E20, 255, MEMORY[0x277CE9B38]);

  v10 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v10);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA26F20);
  v13 = v1[5];
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000016, 0x800000022CA26F40);
  v14 = v1[6];
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA26F60);
  v15 = v1[4];
  sub_22CA21240();

  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  return v1;
}

uint64_t sub_22CA14554(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CE9B00] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline();
  v8 = sub_22CA14884(&qword_27D9E4C78, v7, type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline);
  *v5 = v2;
  v5[1] = sub_22C9D8320;

  return MEMORY[0x28213B5A0](a2, v6, v8);
}

uint64_t sub_22CA14884(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_22CA148CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22CA21440();
  sub_22CA20E60();
  v7 = sub_22CA21490();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_22CA21360();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_22CA149B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = *(*(sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA14A64, 0, 0);
}

uint64_t sub_22CA14A64()
{
  v126 = v0;
  if (qword_28143A320 != -1)
  {
LABEL_58:
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = sub_22CA20B10();
  v5 = sub_22C9D0494(v4, &unk_28143A4E0);
  v6 = v3;

  v113 = v5;
  v7 = sub_22CA20AF0();
  v8 = sub_22CA21010();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = v10 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
    v13 = *(v10 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
    v14 = *(v12 + 8);

    v15 = sub_22C9D60B0(v13, v14, &v125);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[15] = *(v9 + 16);
    v16 = sub_22CA20C20();
    sub_22CA1624C();
    sub_22CA16204(v17, 255, v18);
    v19 = sub_22CA21340();
    sub_22C9D60B0(v19, v20, &v125);
    sub_22CA1627C();

    *(v11 + 14) = v16;
    _os_log_impl(&dword_22C9CA000, v7, v8, "<requestID: %s> %s: Get suggestions (with features)", v11, 0x16u);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[17];
  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v24 = sub_22CA209F0();
  sub_22C9D0B98(v22, 1, 1, v24);
  sub_22C9D0B98(v21, 1, 1, v24);
  v25 = [v23 allowedBundleIdentifiers];
  sub_22CA20EC0();

  sub_22C9EFAC4();
  v27 = v26;

  sub_22C9E9758(v21);
  sub_22C9E9758(v22);
  result = sub_22C9E6DA0(v27);
  v29 = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84F90];
  if (result)
  {
    if (result >= 1)
    {
      v31 = 0;
      v115 = v0;
      v32 = v0[19];
      v120 = result;
      v121 = v27 & 0xC000000000000001;
      v116 = v27 + 32;
      v119 = v27;
      do
      {
        if (v121)
        {
          v33 = MEMORY[0x2318BAD10](v31, v27);
        }

        else
        {
          v33 = *(v27 + 8 * v31 + 32);
        }

        v0 = v33;
        v34 = *(v33 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);
        v35 = *(v33 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8);
        v36 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent;
        v37 = *(v33 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
        v38 = objc_allocWithZone(MSUnifiedMediaIntent);
        swift_bridgeObjectRetain_n();
        v39 = v37;
        sub_22CA1627C();
        v40 = sub_22CA20E10();

        v41 = [v38 initWithIntent:v37 bundleID:v40];

        v42 = *(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
        objc_allocWithZone(MSSuggestion);
        v43 = v41;
        v44 = sub_22C9DDDC8(v43, v34, v35, v42);
        v45 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date;
        [v44 setIntentDate_];
        [v44 setIntent_];
        sub_22C9DDEBC(v44);
        if (v46)
        {

          v47 = *(v32 + 24);
          v48 = *(v0 + v45);

          sub_22CA00C9C(v44, 84, v48);
        }

        ++v31;

        v27 = v119;
        v49 = v120;
      }

      while (v120 != v31);
      v50 = 0;
      v122 = v29;
      v123 = MEMORY[0x277D84F90];
      v124 = MEMORY[0x277D84F90];
      v114 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v121)
        {
          v51 = MEMORY[0x2318BAD10](v50, v27);
        }

        else
        {
          if (v50 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v51 = *(v116 + 8 * v50);
        }

        v52 = v51;
        v53 = OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent;
        v54 = *&v51[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent];
        v55 = [v54 mediaContainer];
        if (v55)
        {
          v56 = v55;
          v57 = sub_22C9D6670(v55);
          if (v58)
          {
            v59 = v57;
            v0 = v58;
            v118 = v54;
            if (v122[2])
            {
              v60 = v122[5];
              sub_22CA21440();
              sub_22CA20E60();
              sub_22CA21490();
              sub_22CA16264();
              while (1)
              {
                v62 = v61 & v49;
                if (((*(&v125 + (((v61 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v49)) & 1) == 0)
                {
                  break;
                }

                v63 = (v122[6] + 16 * v62);
                if (*v63 != v59 || v0 != v63[1])
                {
                  v65 = sub_22CA21360();
                  v61 = v62 + 1;
                  if ((v65 & 1) == 0)
                  {
                    continue;
                  }
                }

                v27 = v119;
                v49 = v120;
                goto LABEL_48;
              }
            }

            sub_22CA15904(&v125, v59, v0);

            v66 = *&v52[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
            v67 = *&v52[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8];
            v68 = *&v52[v53];
            v69 = v53;
            v70 = objc_allocWithZone(MSUnifiedMediaIntent);
            swift_bridgeObjectRetain_n();
            v71 = v68;
            sub_22CA1627C();
            v72 = sub_22CA20E10();

            v73 = [v70 initWithIntent:v68 bundleID:v72];

            v74 = *&v52[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource];
            objc_allocWithZone(MSSuggestion);
            v75 = v73;
            v76 = sub_22C9DDDC8(v75, v66, v67, v74);
            [v76 setIntentDate_];
            v117 = v69;
            [v76 setIntent_];
            v0 = v76;
            MEMORY[0x2318BA9F0]();
            if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22CA20EE0();
            }

            sub_22CA20F00();
            v114 = v123;
            sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22CA22F90;
            *(inited + 32) = 0xD000000000000013;
            *(inited + 40) = 0x800000022CA25DF0;
            *(inited + 72) = MEMORY[0x277D837D0];
            strcpy((inited + 48), "consumedMedia");
            *(inited + 62) = -4864;
            sub_22CA20DD0();
            v78 = objc_allocWithZone(MEMORY[0x277CBFED0]);
            sub_22CA17474();
            v27 = v119;
            MEMORY[0x2318BA9F0]();
            if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22CA20EE0();
            }

            sub_22CA20F00();

            v49 = v120;
            v53 = v117;
            v54 = v118;
          }
        }

        v79 = [*&v52[v53] identifier];
        if (v79)
        {
          v80 = v79;
          v81 = sub_22CA20E20();
          v0 = v82;

          if (v122[2])
          {
            v83 = v122[5];
            sub_22CA21440();
            sub_22CA20E60();
            sub_22CA21490();
            sub_22CA16264();
            while (1)
            {
              v85 = v84 & v49;
              if (((*(&v125 + (((v84 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v84 & v49)) & 1) == 0)
              {
                break;
              }

              v86 = (v122[6] + 16 * v85);
              if (*v86 != v81 || v86[1] != v0)
              {
                v88 = sub_22CA21360();
                v84 = v85 + 1;
                if ((v88 & 1) == 0)
                {
                  continue;
                }
              }

              v54 = v52;
              v49 = v120;
              goto LABEL_48;
            }

            v49 = v120;
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_48:
        ++v50;

        if (v50 == v49)
        {

          v89 = v114;
          v0 = v115;
          goto LABEL_51;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v89 = v30;
LABEL_51:
    v90 = v0[18];
    v91 = v0[19];
    v92 = v0[17];

    swift_bridgeObjectRetain_n();
    v93 = v92;

    v94 = sub_22CA20AF0();
    v95 = sub_22CA21010();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = v0[19];
      v97 = v0[17];
      v98 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v98 = 136315650;
      v99 = v97 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
      v100 = *(v97 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
      v101 = *(v99 + 8);

      v102 = sub_22C9D60B0(v100, v101, &v125);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2080;
      v0[14] = *(v96 + 16);
      v103 = sub_22CA20C20();
      sub_22CA1624C();
      sub_22CA16204(v104, 255, v105);
      v106 = sub_22CA21340();
      sub_22C9D60B0(v106, v107, &v125);
      sub_22CA1627C();

      *(v98 + 14) = v103;
      *(v98 + 22) = 2048;
      v108 = sub_22C9E6DA0(v89);

      *(v98 + 24) = v108;

      _os_log_impl(&dword_22C9CA000, v94, v95, "<requestID: %s> %s: Returning %ld suggestions with features", v98, 0x20u);
      swift_arrayDestroy();
      sub_22C9D70C0();
      sub_22C9D70C0();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v109 = v0[20];
    v110 = v0[21];
    v111 = v0[16];
    sub_22C9E28F0();
    sub_22CA169F0();
    type metadata accessor for MSSuggestion(0);
    sub_22CA20CB0();

    v112 = v0[1];

    return v112();
  }

  return result;
}

uint64_t sub_22CA156A8(uint64_t a1)
{
  v3 = sub_22CA20C20();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_22CA20C10();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_22CA1577C(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *v2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22C9E2724;

  return sub_22CA149B8(a1, v5, v6);
}

BOOL sub_22CA15904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22CA21440();
  sub_22CA20E60();
  v9 = sub_22CA21490();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_22CA21360() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_22CA15CAC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_22CA15A50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22C9D02E4(&qword_27D9E51D8, &qword_22CA25198);
  result = sub_22CA21170();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
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

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22CA15E14(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_22CA21440();
    sub_22CA20E60();
    result = sub_22CA21490();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22CA15CAC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22CA15A50(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22CA15FD0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_22CA21440();
      sub_22CA20E60();
      result = sub_22CA21490();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_22CA21360() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_22CA15E78();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_22CA213B0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_22CA15E14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22CA25080;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_22CA15E78()
{
  v1 = v0;
  sub_22C9D02E4(&qword_27D9E51D8, &qword_22CA25198);
  v2 = *v0;
  v3 = sub_22CA21160();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22CA15FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22C9D02E4(&qword_27D9E51D8, &qword_22CA25198);
  result = sub_22CA21170();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_22CA21440();

        sub_22CA20E60();
        result = sub_22CA21490();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
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

          v2 = v29;
          goto LABEL_27;
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

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22CA16204(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22CA16288(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result == 1)
    {
      return 1;
    }

    else
    {
      if (qword_28143A320 != -1)
      {
        sub_22CA16988();
        swift_once();
      }

      v2 = sub_22CA20B10();
      sub_22C9D0494(v2, &unk_28143A4E0);
      v3 = sub_22CA20AF0();
      v4 = sub_22CA21000();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 67109120;
        v5[1] = v1;
        sub_22CA169D0(&dword_22C9CA000, v6, v7, "Cannot convert suggestionSource %d to candidate source type");
        sub_22CA169C4();
        MEMORY[0x2318BB680]();
      }

      sub_22C9D661C();
      v8 = swift_allocError();
      return sub_22CA1699C(v8, v9);
    }
  }

  return result;
}

uint64_t sub_22CA1638C()
{

  v0 = sub_22C9DE2A4() - 22;
  if (v0 > 0xCu)
  {
    return 3000;
  }

  else
  {
    return *&a9[4 * v0];
  }
}

id sub_22CA163EC()
{

  switch(sub_22C9DE2A4())
  {
    case '#':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    case '$':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    case '%':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    case '&':
      result = [objc_opt_self() featureValueWithDouble_];
      break;
    default:
      v1 = sub_22CA1638C();
      result = sub_22C9FDEC0(v1);
      break;
  }

  return result;
}

uint64_t sub_22CA1651C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 mediaContainer];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_22C9DDE44(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_9:
    if (qword_28143A320 != -1)
    {
      sub_22CA16988();
      swift_once();
    }

    v16 = sub_22CA20B10();
    sub_22C9D0494(v16, &unk_28143A4E0);

    v17 = a1;
    v18 = sub_22CA20AF0();
    v19 = sub_22CA21000();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_22C9D60B0(a2, a3, &v25);
      *(v20 + 12) = 2112;
      v23 = [v17 mediaContainer];
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_22C9CA000, v18, v19, "INPlayMediaIntent Invalid (%s has nil identifier. Media container: %@", v20, 0x16u);
      sub_22CA16920(v21);
      sub_22CA169C4();
      MEMORY[0x2318BB680]();
      sub_22C9D04CC(v22);
      sub_22CA169C4();
      MEMORY[0x2318BB680]();
      sub_22CA169C4();
      MEMORY[0x2318BB680]();
    }

    goto LABEL_14;
  }

  v12 = [a1 mediaContainer];
  if (!v12 || (v13 = v12, v14 = [v12 type], v13, v14 >= 0x14))
  {
LABEL_14:
    LOBYTE(v15) = 0;
    return v15 & 1;
  }

  v15 = 0xF87FEu >> v14;
  return v15 & 1;
}

uint64_t sub_22CA16750(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 2;
  }

  else
  {
    return dword_22CA251F8[a1 - 1];
  }
}

uint64_t sub_22CA16774(int a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x6574736567677573;
  }

  if ((a1 - 4) < 5 || a1 == 2)
  {
    return 0x64656D75736E6F63;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22CA167EC(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  if (qword_28143A320 != -1)
  {
    sub_22CA16988();
    swift_once();
  }

  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, &unk_28143A4E0);
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v6[1] = a1;
    sub_22CA169D0(&dword_22C9CA000, v7, v8, "Cannot convert engagementType %d to candidate source type");
    sub_22CA169C4();
    MEMORY[0x2318BB680]();
  }

  sub_22C9D661C();
  v9 = swift_allocError();
  return sub_22CA1699C(v9, v10);
}

uint64_t sub_22CA16920(uint64_t a1)
{
  v2 = sub_22C9D02E4(&unk_27D9E5090, &qword_22CA22E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CA1699C(uint64_t a1, uint64_t a2)
{
  *a2 = 5;
  *(a2 + 8) = 2;

  return swift_willThrow();
}

void sub_22CA169D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

id sub_22CA169F0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9D02E4(&qword_27D9E51F0, qword_22CA25318);
  v1 = sub_22CA20EB0();

  v2 = [v0 initWithFeatureProviderArray_];

  return v2;
}

uint64_t sub_22CA16A80(uint64_t a1)
{
  v3 = sub_22CA20D30();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_22CA20D20();
  *(v1 + 16) = a1;
  *(v1 + 24) = v6;
  return v1;
}

uint64_t sub_22CA16B30(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA16C00, 0, 0);
}

uint64_t sub_22CA16C00()
{
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 64);
    *(v0 + 136) = *(*(v0 + 80) + 80);
    v4 = sub_22CA20B80();
    *(v0 + 104) = v4;
    *(v0 + 112) = *(v3 + 16);

    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_22CA16D40;

    return sub_22CA00D88(v4);
  }

  else
  {
    sub_22C9E28F0();
    sub_22CA169F0();
    v7 = *(v0 + 88);

    v8 = sub_22CA175D8();

    return v9(v8);
  }
}

uint64_t sub_22CA16D40()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);

  if (v0)
  {
    v6 = sub_22CA1727C;
  }

  else
  {
    v6 = sub_22CA16E74;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22CA16E74()
{
  v40 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = (*(v0 + 136) + 32) & ~*(v0 + 136);
  v39 = MEMORY[0x277D84F90];
  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v6 = [v3 allowedBundleIdentifiers];
  sub_22CA20EC0();

  [v3 suggestionType];
  sub_22C9F234C();

  sub_22CA20B80();
  sub_22C9FFB48();
  if (v1)
  {
    v7 = *(v0 + 104);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v35 = *(v0 + 88);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v8 = *(v0 + 80);
    swift_unknownObjectRelease();
    v9 = 0;
    v10 = 0;
    v12 = *(v8 + 16);
    v11 = v8 + 16;
    v37 = *(v11 + 56);
    v38 = v12;
    while (v10 != *(v0 + 96))
    {
      v38(*(v0 + 88), *(v0 + 56) + v9 + ((*(v0 + 136) + 32) & ~*(v0 + 136)), *(v0 + 72));
      sub_22CA20DD0();
      v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
      v14 = sub_22CA17474();
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      v17 = *(v0 + 72);
      v18 = v14;
      sub_22CA20B90();
      v19 = *(v0 + 32);
      v20 = sub_22C9FFBE8(v19);

      if (v20)
      {

        v18 = v20;
      }

      v21 = *(v0 + 88);
      v22 = *(v0 + 72);
      v23 = *(*(v0 + 64) + 16);

      sub_22CA20B90();
      v24 = *(v0 + 40);
      v25 = sub_22CA01CE0(v24);

      if (v25)
      {
        swift_getObjectType();
        v26 = v25;
        v27 = sub_22CA21050();

        swift_unknownObjectRelease();
        v18 = v27;
      }

      v28 = *(v0 + 88);
      v29 = *(v0 + 72);
      swift_getObjectType();
      sub_22CA17584(v18, &v39);
      (*(v11 - 8))(v28, v29);
      v9 += v37;
      ++v10;
    }

    v30 = *(v0 + 104);
    sub_22C9E28F0();
    sub_22CA169F0();

    swift_unknownObjectRelease();
    v31 = *(v0 + 88);

    v32 = sub_22CA175D8();

    return v33(v32);
  }
}

uint64_t sub_22CA1727C()
{
  v1 = v0[13];
  swift_unknownObjectRelease();
  v2 = v0[16];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22CA17324(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C9ECDEC;

  return sub_22CA16B30(v5, a2);
}

uint64_t sub_22CA17434(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSBatchCandidateFeatureProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22CA17474()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22CA20DA0();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22CA20930();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22CA17584(uint64_t a1, void *a2)
{
  MEMORY[0x2318BA9F0]();
  sub_22C9FAF48(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_22CA20F00();
}

__n128 sub_22CA175EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22CA175F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22CA17638(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_22CA17684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22CA20920();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_22CA17714()
{
  sub_22C9D7018();
  v1 = [*(v0 + 48) currentIntent];
  *(v0 + 56) = [v1 intent];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for MSPlayMediaIntent();
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22CA17930;

    return sub_22CA1BD4C();
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for MSPlayMediaAppIntent();
      *(v0 + 40) = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
      *(v0 + 16) = v5;
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      *(v0 + 88) = v6;
      *v6 = v0;
      v6[1] = sub_22CA17B00;

      return sub_22CA1CCDC();
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = *(v0 + 8);

      return v7(0);
    }
  }
}

uint64_t sub_22CA17930()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  sub_22C9D6EA4();
  *v9 = v8;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22CA17A38()
{
  sub_22C9D6F3C();
  v1 = v0[7];
  swift_unknownObjectRelease_n();
  v2 = v0[10];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22CA17AA0()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 56);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 72);
  sub_22C9D7050();

  return v3();
}

uint64_t sub_22CA17B00()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  sub_22C9D6EA4();
  *v9 = v8;
  v4[12] = v0;

  if (!v0)
  {
    v4[13] = v1;
    sub_22C9D04CC(v4 + 2);
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22CA17C10()
{
  sub_22C9D6F3C();
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[13];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22CA17C74()
{
  sub_22C9D6F3C();
  v1 = v0[7];
  swift_unknownObjectRelease();
  sub_22C9D04CC(v0 + 2);
  v2 = v0[12];
  sub_22C9D7050();

  return v3();
}

uint64_t static MSAlbumArtwork.artwork(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_22CA181B8(a1, a2, a3, &unk_283FCE458, &unk_22CA25378);
}

{
  return sub_22CA181B8(a1, a2, a3, &unk_283FCE480, &unk_22CA25388);
}

uint64_t sub_22CA17CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  type metadata accessor for MSPlayMediaIntent();
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_22CA17DA0;

  return sub_22CA1BD4C();
}

uint64_t sub_22CA17DA0()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  sub_22C9D6EA4();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 48) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22CA17EA8()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  (*(v0 + 16))(v1, 0);

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22CA17F14()
{
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Failed to retrieve artwork. Error: %@", v7, 0xCu);
    sub_22CA16920(v8);
    MEMORY[0x2318BB680](v8, -1, -1);
    MEMORY[0x2318BB680](v7, -1, -1);
  }

  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  v14 = v11;
  v13(0, v11);

  sub_22C9D7050();

  return v15();
}

uint64_t sub_22CA180BC()
{
  sub_22CA18710();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22CA186DC(v1);

  return sub_22CA17CF8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22CA181B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22CA20F70();
  sub_22C9D0B98(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = a1;

  sub_22C9D1034(0, 0, v13, a5, v15);
}

uint64_t sub_22CA182B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_22CA18354;

  return sub_22CA176F4(a5);
}

uint64_t sub_22CA18354()
{
  sub_22C9D7018();
  sub_22C9DE214();
  v4 = v3;
  sub_22CA18704();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  sub_22C9D6EA4();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 48) = v1;
  }

  sub_22C9DE1F4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22CA1845C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CA184A4()
{
  sub_22CA18710();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22CA186DC(v1);

  return sub_22CA182B4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22CA18580(int a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v9 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v9;
  swift_getObjCClassMetadata();
  v10 = a3;
  a7();
}

MSAlbumArtwork __swiftcall MSAlbumArtwork.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_22CA18710()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t sub_22CA18724()
{
  v1 = sub_22CA20BD0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22CA20BC0();
  return v0;
}

void *sub_22CA187F4()
{
  v1 = v0;
  v2 = sub_22CA20C80();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_22CA20C70();
  type metadata accessor for MSSiriKitPlayMediaIntentCandidateSourceRequestTransformer();
  v5 = swift_allocObject();
  sub_22CA18724();
  v1[5] = v5;
  v6 = sub_22C9D02E4(&qword_27D9E4E08, &qword_22CA234E0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v1[6] = sub_22CA20B70();
  type metadata accessor for MSSiriKitPlayMediaIntentCandidateSource();
  swift_allocObject();

  v1[4] = sub_22CA156A8(v9);
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  v12 = v1[12];
  sub_22CA18E64(&qword_27D9E4E20, 255, MEMORY[0x277CE9B38]);

  v10 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v10);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA26F20);
  v13 = v1[5];
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000016, 0x800000022CA26F40);
  v14 = v1[6];
  sub_22CA21240();
  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA26F60);
  v15 = v1[4];
  sub_22CA21240();

  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  return v1;
}

uint64_t sub_22CA18B34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CE9B00] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline();
  v8 = sub_22CA18E64(&qword_27D9E4C80, v7, type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline);
  *v5 = v2;
  v5[1] = sub_22C9D8320;

  return MEMORY[0x28213B5A0](a2, v6, v8);
}

uint64_t sub_22CA18E64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22CA18EC0()
{
  sub_22C9D6F3C();
  if (os_feature_enabled_ranked_suggestions())
  {
    type metadata accessor for MSRankedSuggester();
    v1 = swift_task_alloc();
    *(v0 + 16) = v1;
    *v1 = v0;
    v1[1] = sub_22CA18FD4;

    return static MSRankedSuggester.availableBundleIDs()();
  }

  else
  {
    type metadata accessor for MSLegacySuggester();
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_22CA190B4;

    return static MSLegacySuggester.availableBundleIDs()();
  }
}

uint64_t sub_22CA18FD4()
{
  sub_22C9D6F3C();
  sub_22CA1A600();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C9D6EA4();
  *v4 = v3;

  v5 = sub_22CA1A610();

  return v6(v5);
}

uint64_t sub_22CA190B4()
{
  sub_22C9D6F3C();
  sub_22CA1A600();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_22C9D6EA4();
  *v4 = v3;

  v5 = sub_22CA1A610();

  return v6(v5);
}

void sub_22CA19194(uint64_t a1, uint64_t a2)
{
  v3 = sub_22CA20EB0();
  (*(a2 + 16))(a2, v3);
}

void sub_22CA191F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for MSSuggestion(0);
    v5 = sub_22CA20EB0();
  }

  if (a2)
  {
    v6 = sub_22CA20920();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22CA19380()
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v2 = [v0 *v1];
  v3 = [v2 requestIdentifier];

  v4 = sub_22CA20E20();
  return v4;
}

id MSSuggester.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for MSSuggester();
  v4 = [v1 requestIdentifier];
  sub_22CA20E20();

  result = sub_22CA199E8();
  a1[3] = v3;
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MSSuggester()
{
  result = qword_27D9E5250;
  if (!qword_27D9E5250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E5250);
  }

  return result;
}

Swift::Void __swiftcall MSSuggester.encode(with:)(NSCoder with)
{
  v3 = [v1 legacySuggester];
  sub_22CA1A620();
  v4 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 rankedSuggester];
  sub_22CA1A640();
  v6 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

MSSuggester_optional __swiftcall MSSuggester.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v6 = v2;
  result.value.rankedSuggester = v4;
  result.value.legacySuggester = v3;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

id MSSuggester.init(coder:)(void *a1)
{
  sub_22CA1A620();
  v3 = sub_22CA20E10();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {

LABEL_15:
    sub_22C9D027C(&v14);
    goto LABEL_16;
  }

  type metadata accessor for MSLegacySuggester();
  if ((sub_22CA1A654() & 1) == 0)
  {

LABEL_16:
    type metadata accessor for MSSuggester();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_22CA1A640();
  v5 = sub_22CA20E10();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {

    goto LABEL_15;
  }

  type metadata accessor for MSRankedSuggester();
  if ((sub_22CA1A654() & 1) == 0)
  {

    goto LABEL_16;
  }

  v7 = v11;
  *&v1[OBJC_IVAR___MSSuggester_legacySuggester] = v11;
  *&v1[OBJC_IVAR___MSSuggester_rankedSuggester] = v7;
  v10.receiver = v1;
  v10.super_class = MSSuggester;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t sub_22CA198D8()
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v1 = *v0;
  v2 = [objc_opt_self() defaultRequest];
  type metadata accessor for MSSuggester();
  v3 = [v2 requestIdentifier];
  sub_22CA20E20();

  sub_22CA199E8();

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_22CA199E8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_22CA20E10();

  v2 = [v0 initWithRequestIdentifier_];

  return v2;
}

id MSSuggester.init(requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MSRankedSuggester();

  *&v2[OBJC_IVAR___MSSuggester_rankedSuggester] = j___sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC(a1, a2);
  type metadata accessor for MSLegacySuggester();
  *&v2[OBJC_IVAR___MSSuggester_legacySuggester] = j___sSo17MSLegacySuggesterC05MediaB0E17requestIdentifierABSS_tcfC(a1, a2);
  v6.receiver = v2;
  v6.super_class = MSSuggester;
  return objc_msgSendSuper2(&v6, sel_init);
}

void MSSuggester.suggestions(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 requestIdentifier];
  v9 = sub_22CA20E20();
  v11 = v10;

  v12 = (a1 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
  v13 = *(a1 + OBJC_IVAR___MSSuggesterRequestOptions_requestID + 8);
  *v12 = v9;
  v12[1] = v11;

  if (os_feature_enabled_ranked_suggestions())
  {
    v14 = [v4 rankedSuggester];
    v19 = a2;
    v20 = a3;
    sub_22CA1A5B0();
    sub_22CA1A5E8();
    v16 = &unk_283FCE510;
  }

  else
  {
    v14 = [v4 legacySuggester];
    v19 = a2;
    v20 = a3;
    sub_22CA1A5B0();
    sub_22CA1A5E8();
    v16 = &unk_283FCE4E8;
  }

  v18[2] = v15;
  v18[3] = v16;
  v17 = _Block_copy(v18);

  [v14 suggestionsWithOptions:a1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_22CA19C84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for MSSuggestion(0);
    v4 = sub_22CA20EC0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_22CA19D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static MSSuggester.availablebundleIDsForMediaSuggestions()()
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v1 = *v0;
  v2 = [objc_opt_self() availablebundleIDsForMediaSuggestions];
  v3 = sub_22CA20EC0();

  return v3;
}

void static MSSuggester.availableBundleIDs(completion:)(uint64_t a1, uint64_t a2)
{
  if (os_feature_enabled_ranked_suggestions())
  {
    v4 = objc_opt_self();
    v9 = a1;
    v10 = a2;
    sub_22CA1A5B0();
    sub_22CA1A5D0();
    v6 = &unk_283FCE560;
  }

  else
  {
    v4 = objc_opt_self();
    v9 = a1;
    v10 = a2;
    sub_22CA1A5B0();
    sub_22CA1A5D0();
    v6 = &unk_283FCE538;
  }

  v8[2] = v5;
  v8[3] = v6;
  v7 = _Block_copy(v8);

  [v4 availableBundleIDsWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_22CA19F64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_22CA20EC0();

  v2(v3);
}

uint64_t MSSuggester.candidates(for:)(uint64_t a1)
{
  os_feature_enabled_ranked_suggestions();
  sub_22CA1A634();
  v4 = [v1 *v3];
  v5 = [v4 candidatesForRequestOptions_];

  type metadata accessor for MSSuggestion(0);
  v6 = sub_22CA20EC0();

  return v6;
}

uint64_t MSSuggester.candidates(for:from:to:)(uint64_t a1)
{
  if (os_feature_enabled_ranked_suggestions())
  {
    v3 = [v1 rankedSuggester];
    v4 = sub_22CA209A0();
    v5 = sub_22CA209A0();
    v6 = [v3 candidatesForRequestOptions:a1 from:v4 to:v5];
  }

  else
  {
    v5 = [v1 legacySuggester];
    v6 = [v5 candidatesForRequestOptions_];
  }

  type metadata accessor for MSSuggestion(0);
  v7 = sub_22CA20EC0();

  return v7;
}

uint64_t sub_22CA1A3F8()
{
  sub_22C9D6F3C();
  if (os_feature_enabled_ranked_suggestions())
  {
    type metadata accessor for MSRankedSuggester();
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_22CA190B4;
    v2 = v0[2];

    return static MSRankedSuggester.candidateCount(for:)();
  }

  else
  {
    v4 = v0[1];

    return v4(0);
  }
}

MSSuggester __swiftcall MSSuggester.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.rankedSuggester = v3;
  result.legacySuggester = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_22CA1A654()
{

  return swift_dynamicCast();
}

uint64_t getEnumTagSinglePayload for MSConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MSConstants(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22CA1A79C()
{
  v0 = sub_22CA20B10();
  sub_22CA1AA1C(v0, qword_28143A438);
  sub_22C9D0494(v0, qword_28143A438);
  return sub_22CA20B00();
}

uint64_t sub_22CA1A880()
{
  sub_22CA1AC54();
  v1 = sub_22CA20B10();
  sub_22CA1AA1C(v1, v0);
  sub_22C9D0494(v1, v0);
  return sub_22CA20B00();
}

uint64_t sub_22CA1A960()
{
  sub_22CA1AC54();
  sub_22CA1ABFC();
  result = sub_22CA21100();
  *v0 = result;
  return result;
}

uint64_t *sub_22CA1AA1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22CA1AB70(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_22CA20AE0();
  sub_22CA1AA1C(v7, a2);
  sub_22C9D0494(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_22CA20AD0();
}

unint64_t sub_22CA1ABFC()
{
  result = qword_28143A090;
  if (!qword_28143A090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A090);
  }

  return result;
}

uint64_t MSPlayMediaIntent.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8);

  return v1;
}

id MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(void *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v6 = &v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent] = a1;
  v7 = &v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
  *v7 = a2;
  *(v7 + 1) = a3;
  *&v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date] = a5;
  *&v5[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource] = a4;
  v8 = a1;
  v9 = [v8 mediaContainer];
  if (v9)
  {
    v9 = sub_22C9DDE44(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v6 + 1);
  *v6 = v9;
  *(v6 + 1) = v10;

  v14.receiver = v5;
  v14.super_class = type metadata accessor for MSPlayMediaIntent();
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_22CA1AE34@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
  v5 = v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID;
  v6 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);
  v7 = *(v5 + 8);
  v8 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date);
  v9 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
  v10 = type metadata accessor for MSPlayMediaIntent();
  v11 = objc_allocWithZone(v10);
  v12 = v4;

  v13 = MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(v12, v6, v7, v9, v8);
  v15 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier);
  v14 = *(v2 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier + 8);
  v16 = &v13[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier];
  v17 = *&v13[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier + 8];
  *v16 = v15;
  *(v16 + 1) = v14;

  a1[3] = v10;
  *a1 = v13;
  return result;
}

void sub_22CA1AF84(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
  v4 = sub_22C9D7030();
  sub_22C9D06F4();

  v5 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID);
  v6 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8);
  v7 = sub_22CA20E10();
  v8 = sub_22C9D6F18();
  sub_22C9D06F4();

  v9 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date);
  v10 = sub_22CA20E10();
  [a1 encodeDouble:v10 forKey:v9];

  v11 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
  v12 = sub_22C9E050C();
  [a1 encodeInt32:v11 forKey:v12];

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier + 8))
  {
    v13 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier);

    v14 = sub_22CA20E10();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22CA1CB48();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();
}

id MSPlayMediaIntent.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = sub_22C9D7030();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_22CA21130();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  sub_22C9D0698(v6, v7, v8, v9, v10, v11, v12, v13, v51, v54, v57.receiver, v57.super_class, v58, v59, v60, *(&v60 + 1), v61);
  if (!v14)
  {

LABEL_16:
    sub_22C9D6C44(v62, &unk_27D9E4D60, &unk_22CA22BE0);
    goto LABEL_17;
  }

  sub_22CA1C660();
  if ((sub_22CA1CB28() & 1) == 0)
  {

    goto LABEL_17;
  }

  v15 = v58;
  v16 = sub_22C9D6F18();
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    sub_22CA21130();
    v18 = swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  sub_22C9D0698(v18, v19, v20, v21, v22, v23, v24, v25, v52, v55, v57.receiver, v57.super_class, v58, v59, v60, *(&v60 + 1), v61);
  if (!v26)
  {

    goto LABEL_16;
  }

  if (sub_22CA1CB28())
  {
    v27 = v58;
    v28 = sub_22CA20E10();
    [a1 decodeDoubleForKey_];
    v30 = v29;

    v31 = sub_22C9E050C();
    v32 = [a1 decodeInt32ForKey_];

    v33 = sub_22CA1CB48();
    v34 = [a1 decodeObjectForKey_];

    if (v34)
    {
      sub_22CA21130();
      v35 = swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    sub_22C9D0698(v35, v36, v37, v38, v39, v40, v41, v42, v53, v59, v57.receiver, v57.super_class, v58, v59, v60, *(&v60 + 1), v61);
    if (v46)
    {
      if (sub_22CA1CB28())
      {
        v47 = v58;
        v48 = v59;
LABEL_26:
        *&v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent] = v15;
        v49 = &v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID];
        *v49 = v27;
        v49[1] = v56;
        *&v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date] = v30;
        *&v1[OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource] = v32;
        v50 = v3[1];
        *v3 = v47;
        v3[1] = v48;

        v57.receiver = v1;
        v57.super_class = type metadata accessor for MSPlayMediaIntent();
        v44 = objc_msgSendSuper2(&v57, sel_init);

        return v44;
      }
    }

    else
    {
      sub_22C9D6C44(v62, &unk_27D9E4D60, &unk_22CA22BE0);
    }

    v47 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_26;
  }

LABEL_17:
  v43 = v3[1];

  type metadata accessor for MSPlayMediaIntent();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22CA1B520()
{
  v1 = v0;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v2);

  MEMORY[0x2318BA9C0](0x746E65746E49203ALL, 0xE90000000000003DLL);
  v3 = [*(v0 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent) description];
  v4 = sub_22CA20E20();
  v6 = v5;

  MEMORY[0x2318BA9C0](v4, v6);

  MEMORY[0x2318BA9C0](0x656C646E7562202CLL, 0xEB000000003D4449);
  MEMORY[0x2318BA9C0](*(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID), *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_bundleID + 8));
  MEMORY[0x2318BA9C0](0x3D65746164202CLL, 0xE700000000000000);
  v7 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_date);
  sub_22CA20FA0();
  MEMORY[0x2318BA9C0](0xD000000000000013, 0x800000022CA28940);
  v9 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_suggestionSource);
  type metadata accessor for MSSuggestionSourceType(0);
  sub_22CA1CB70();
  MEMORY[0x2318BA9C0](0x6669746E65646920, 0xEC0000003D726569);
  v10 = *(v1 + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_identifier);
  sub_22C9D02E4(&qword_27D9E5178, &qword_22CA24DA0);
  sub_22CA1CB70();
  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_22CA1B74C()
{
  sub_22C9D7018();
  v1 = *(v0[19] + OBJC_IVAR____TtC14MediaSuggester17MSPlayMediaIntent_intent);
  v0[20] = v1;
  v2 = [v1 mediaContainer];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 artwork];
    v0[21] = v4;

    if (v4 && [v4 _requiresRetrieval])
    {
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_22CA1B900;
      v5 = swift_continuation_init();
      v0[17] = sub_22C9D02E4(&unk_27D9E5290, &unk_22CA256A8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_22CA1BCC4;
      v0[13] = &unk_283FCE650;
      v0[14] = v5;
      [v4 _retrieveImageDataWithReply_];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_22C9E6EBC();

  return v6(v4);
}

uint64_t sub_22CA1B900()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 176) = v4;
  if (v4)
  {
    v5 = sub_22CA1BC5C;
  }

  else
  {
    v5 = sub_22CA1BA08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22CA1BA08()
{
  v22 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {

    sub_22C9E6EBC();

    return v2(v1);
  }

  else
  {
    if (qword_27D9E4730 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 152);
    v5 = sub_22CA20B10();
    sub_22C9D0494(v5, &unk_27D9E8080);
    v6 = v4;
    v7 = sub_22CA20AF0();
    v8 = sub_22CA21000();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = [v9 identifier];
      if (v12)
      {
        v13 = v12;
        v14 = sub_22CA20E20();
        v16 = v15;
      }

      else
      {
        v16 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E55;
      }

      v17 = sub_22C9D60B0(v14, v16, &v21);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_22C9CA000, v7, v8, "PlayMediaIntent: Artwork retrieval error %s", v10, 0xCu);
      sub_22C9D04CC(v11);
      sub_22C9D70C0();
      sub_22C9D70C0();
    }

    v18 = *(v0 + 168);
    sub_22C9D661C();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 2;
    swift_willThrow();

    sub_22C9D7050();

    return v20();
  }
}

uint64_t sub_22CA1BC5C()
{
  sub_22C9D7018();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();

  v3 = *(v0 + 176);
  sub_22C9D7050();

  return v4();
}

uint64_t sub_22CA1BCC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_22C9D05CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_22CA11158(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_22CA0EBB8(v5, a2);
  }
}

uint64_t sub_22CA1BD4C()
{
  sub_22C9D6F3C();
  v0[2] = v1;
  v2 = sub_22CA209F0();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA1BE08, 0, 0);
}

uint64_t sub_22CA1BE08()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_22CA209E0();
  sub_22CA20990();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = objc_allocWithZone(type metadata accessor for MSPlayMediaIntent());
  v0[6] = MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(v4, 0x6C7070612E6D6F63, 0xEE0044494F4E2E65, 2, v6);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_22CA1BF18;

  return sub_22CA1B72C();
}

uint64_t sub_22CA1BF18()
{
  sub_22C9D7018();
  v3 = v2;
  sub_22C9D70B4();
  v5 = v4;
  v6 = *(v4 + 56);
  v7 = *v1;
  sub_22C9D6EA4();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    v9 = sub_22CA1C098;
  }

  else
  {
    *(v5 + 72) = v3;
    v9 = sub_22CA1C030;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22CA1C030()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 40);

  sub_22C9E6EBC();
  v3 = *(v0 + 72);

  return v2(v3);
}

uint64_t sub_22CA1C098()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 40);

  sub_22C9D7050();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_22CA1C0FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_22CA20F70();
  sub_22C9D0B98(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = v3;
  v13 = a1;

  sub_22C9D1034(0, 0, v10, &unk_22CA256C0, v12);
}

uint64_t sub_22CA1C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_22CA1C294;

  return sub_22CA1BD4C();
}

uint64_t sub_22CA1C294()
{
  sub_22C9D7018();
  v3 = v2;
  sub_22C9D70B4();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v1;
  sub_22C9D6EA4();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    v9 = sub_22CA1C3AC;
  }

  else
  {
    *(v5 + 48) = v3;
    v9 = sub_22CA17EA8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22CA1C3AC()
{
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Failed to retrieve artwork. Error: %@", v7, 0xCu);
    sub_22C9D6C44(v8, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  v14 = v11;
  v13(0, v11);

  sub_22C9D7050();

  return v15();
}

id MSPlayMediaIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSPlayMediaIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPlayMediaIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22CA1C660()
{
  result = qword_28143A310;
  if (!qword_28143A310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A310);
  }

  return result;
}

uint64_t sub_22CA1C6BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22C9D0F54;

  return sub_22CA1C1FC(a1, v4, v5, v6, v7, v9);
}

uint64_t dispatch thunk of MSPlayMediaIntent.albumArtwork()()
{
  sub_22C9D7018();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22CA1C968;

  return v6();
}

uint64_t sub_22CA1C968()
{
  sub_22C9D6F3C();
  v2 = v1;
  sub_22C9D70B4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22C9D6EA4();
  *v6 = v5;

  sub_22C9E6EBC();

  return v7(v2);
}

uint64_t getEnumTagSinglePayload for MSSuggestionError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MSSuggestionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22CA1CAE8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22CA1CB00(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22CA1CB28()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA1CB48()
{

  return sub_22CA20E10();
}

uint64_t sub_22CA1CB70()
{

  return sub_22CA21240();
}

uint64_t sub_22CA1CB94(uint64_t a1)
{
  result = MEMORY[0x2318BAB30](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22CA15904(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

id MSPlayMediaAppIntent.__allocating_init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)()
{
  sub_22CA206B4();
  v1 = objc_allocWithZone(v0);
  return MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
}

uint64_t sub_22CA1CCDC()
{
  sub_22C9D6F3C();
  v0[6] = v1;
  v2 = sub_22CA209F0();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v0[8] = v3;
  v4 = *(v3 + 64) + 15;
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](&sub_22CA1CD98, 0, 0);
}

uint64_t sub_22CA1CEC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 96) = v1;

  if (v1)
  {
    v8 = sub_22CA1D04C;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_22CA1CFE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22CA1CFE0()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_22CA1D04C()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 72);

  sub_22C9D7050();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t MSPlayMediaAppIntent.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8);

  return v1;
}

id MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)()
{
  sub_22CA206B4();
  sub_22C9D66FC(v11, &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction]);
  v12 = &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
  *v12 = v7;
  *(v12 + 1) = v6;
  *&v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date] = v10;
  *&v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource] = v5;
  v13 = &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
  *v13 = v4;
  *(v13 + 1) = v3;
  *&v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags] = v2;
  v14 = &v1[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle];
  *v14 = v0;
  *(v14 + 1) = v9;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for MSPlayMediaAppIntent();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_22C9D04CC(v8);
  return v15;
}

id sub_22CA1D230@<X0>(void *a1@<X8>)
{
  sub_22C9D66FC(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v15);
  v3 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8);
  v14 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID);
  v4 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date);
  v5 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource);
  v6 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags);
  v7 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier);
  v8 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8);
  v9 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle);
  v10 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle + 8);
  v11 = type metadata accessor for MSPlayMediaAppIntent();
  v12 = objc_allocWithZone(v11);

  result = MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
  a1[3] = v11;
  *a1 = result;
  return result;
}

void sub_22CA1D3B8(void *a1)
{
  sub_22C9D05CC((v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction), *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction + 24));
  sub_22CA21350();
  v3 = sub_22CA206E0();
  sub_22C9D06F4();
  swift_unknownObjectRelease();

  v4 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID);
  v5 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8);
  v6 = sub_22CA20E10();
  v7 = sub_22C9D6F18();
  sub_22C9D06F4();

  v8 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date);
  v9 = sub_22CA20E10();
  [a1 encodeDouble:v9 forKey:v8];

  v10 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource);
  v11 = sub_22C9E050C();
  [a1 encodeInt32:v10 forKey:v11];

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8))
  {
    v12 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier);
    sub_22CA20E10();
  }

  v13 = sub_22CA1CB48();
  sub_22C9D06F4();
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags))
  {

    sub_22CA054BC(v14);
    v15 = sub_22CA20EB0();

    v16 = sub_22CA20E10();
    [a1 encodeObject:v15 forKey:v16];
  }

  if (*(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle + 8))
  {
    v17 = *(v1 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle);
    v18 = sub_22CA20E10();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_22CA20830();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();
}

id MSPlayMediaAppIntent.init(coder:)()
{
  v2 = v0;
  v3 = sub_22CA206E0();
  v4 = sub_22CA207EC();
  v6 = [v4 v5];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_22CA21130();
  swift_unknownObjectRelease();
  v7 = sub_22C9D6F18();
  v8 = sub_22CA207EC();
  v10 = [v8 v9];

  if (v10)
  {
    sub_22CA21130();
    v11 = swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  sub_22C9DAEE8(v11, v12, v13, v14, v15, v16, v17, v18, v73, v76, v79, v84, v87.receiver, v87.super_class, v88, v89, v90, *(&v90 + 1), v91);
  if (!v19)
  {
    sub_22C9D04CC(v93);

    sub_22C9D6C44(v92, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_12:
    type metadata accessor for MSPlayMediaAppIntent();
    sub_22CA207A8();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((sub_22CA20730() & 1) == 0)
  {
    sub_22C9D04CC(v93);
LABEL_11:

    goto LABEL_12;
  }

  v20 = sub_22CA20E10();
  [v1 decodeDoubleForKey_];
  v22 = v21;

  v23 = sub_22C9E050C();
  LODWORD(v80) = [v1 decodeInt32ForKey_];

  v24 = sub_22CA1CB48();
  v25 = sub_22CA207EC();
  v27 = [v25 v26];

  if (v27)
  {
    sub_22CA21130();
    v28 = swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  sub_22C9DAEE8(v28, v29, v30, v31, v32, v33, v34, v35, v74, v88, v80, v89, v87.receiver, v87.super_class, v88, v89, v90, *(&v90 + 1), v91);
  if (v38)
  {
    v39 = sub_22CA20730();
    if (v39)
    {
      v40 = v88;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v89;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    sub_22C9D6C44(v92, &unk_27D9E4D60, &unk_22CA22BE0);
    v40 = 0;
    v41 = 0;
  }

  sub_22C9D0434(0, &qword_27D9E52E0, 0x277CCACA8);
  v42 = sub_22CA210A0();
  v43 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  if (v42)
  {
    v92[0] = v42;
    sub_22C9D02E4(&unk_27D9E52E8, &qword_22CA25768);
    sub_22C9D02E4(&qword_27D9E4980, &qword_22CA25770);
    if (swift_dynamicCast())
    {
      v43 = v90;
    }
  }

  v45 = sub_22CA20830();
  v46 = sub_22CA207EC();
  v48 = [v46 v47];

  if (v48)
  {
    sub_22CA21130();
    v49 = swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  sub_22C9DAEE8(v49, v50, v51, v52, v53, v54, v55, v56, v75, v77, v81, v85, v87.receiver, v87.super_class, v88, v89, v90, *(&v90 + 1), v91);
  if (v57)
  {
    v58 = sub_22CA20730();
    if (v58)
    {
      v59 = v88;
    }

    else
    {
      v59 = 0;
    }

    if (v58)
    {
      v60 = v89;
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    sub_22C9D6C44(v92, &unk_27D9E4D60, &unk_22CA22BE0);
    v59 = 0;
    v60 = 0;
  }

  sub_22C9D66FC(v93, &v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction]);
  v61 = &v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
  *v61 = v78;
  *(v61 + 1) = v86;
  *&v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_date] = v22;
  *&v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource] = v82;
  v62 = &v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
  *v62 = v40;
  v62[1] = v41;
  v63 = *(v43 + 16);
  if (v63)
  {
    v83 = v59;
    v92[0] = v44;
    sub_22CA0CB14();
    v64 = v92[0];
    v65 = (v43 + 40);
    do
    {
      v67 = *(v65 - 1);
      v66 = *v65;
      v92[0] = v64;
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);

      if (v69 >= v68 >> 1)
      {
        sub_22CA0CB14();
        v64 = v92[0];
      }

      *(v64 + 16) = v69 + 1;
      v70 = v64 + 16 * v69;
      *(v70 + 32) = v67;
      *(v70 + 40) = v66;
      v65 += 2;
      --v63;
    }

    while (v63);

    v59 = v83;
  }

  else
  {

    v64 = MEMORY[0x277D84F90];
  }

  v71 = sub_22CA1CB94(v64);
  sub_22C9D04CC(v93);
  *&v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags] = v71;
  v72 = &v2[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle];
  *v72 = v59;
  v72[1] = v60;
  v87.receiver = v2;
  v87.super_class = type metadata accessor for MSPlayMediaAppIntent();
  v36 = objc_msgSendSuper2(&v87, sel_init);

  return v36;
}

void sub_22CA1DF60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22CA207F8();
  a27 = v29;
  a28 = v30;
  sub_22C9D66FC(v28 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, &a13);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20710())
  {
    goto LABEL_30;
  }

  v31 = [a12 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  sub_22CA207A8();
  v32 = sub_22CA20EC0();

  v33 = sub_22C9E6DA0(v32);
  if (!v33)
  {
LABEL_29:

LABEL_30:
    sub_22CA20814();
    return;
  }

  v34 = v33;
  v35 = 0;
  while (1)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x2318BAD10](v35, v32);
    }

    else
    {
      if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v36 = *(v32 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v39 = [v36 identifier];
    v40 = sub_22CA20E20();
    v42 = v41;

    if (v40 == 0x65646F73697065 && v42 == 0xE700000000000000)
    {
LABEL_20:

      goto LABEL_21;
    }

    v44 = sub_22CA207B4();

    if ((v44 & 1) == 0)
    {
      v45 = [v37 identifier];
      v46 = sub_22CA20E20();
      v48 = v47;

      sub_22CA20668();
      if (v46 == v49 && v48 == 0xEB00000000797469)
      {
        goto LABEL_20;
      }

      v51 = sub_22CA21360();

      if ((v51 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_21:
    v52 = [v37 value];
    if (!v52)
    {
      goto LABEL_27;
    }

    v53 = v52;
    v54 = [v52 displayRepresentation];

    if (!v54)
    {
      goto LABEL_27;
    }

    v55 = [v54 image];
    if (!v55)
    {

LABEL_27:
      goto LABEL_28;
    }

    v56 = v55;
    v57 = [v55 inImage];

    if (v57)
    {

      goto LABEL_30;
    }

LABEL_28:
    ++v35;
    if (v38 == v34)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_22CA1E254()
{
  v43 = v0;
  sub_22C9D66FC(v0[7] + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, (v0 + 2));
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (sub_22CA20778())
  {
    v2 = v0[6];
    v3 = [v2 parameters];
    sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
    sub_22CA207A8();
    v4 = sub_22CA20EC0();

    v5 = sub_22C9E6DA0(v4);
    if (v5)
    {
      v6 = v5;
      v40 = v2;
      v41 = v0;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2318BAD10](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v2 = v8;
        v0 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v9 = [v8 identifier];
        v10 = sub_22CA20E20();
        v1 = v11;

        if (v10 == 0x65646F73697065 && v1 == 0xE700000000000000)
        {
          goto LABEL_20;
        }

        v13 = sub_22CA207B4();

        if ((v13 & 1) == 0)
        {
          break;
        }

LABEL_21:
        v19 = [v2 value];
        if (v19)
        {
          v20 = v19;
          v1 = [v19 displayRepresentation];

          if (v1)
          {

            v24 = [v1 image];
            if (v24)
            {
              v25 = v24;
              v21 = [v24 inImage];

              if (v21)
              {

                goto LABEL_25;
              }
            }

            v0 = v41;
            if (qword_27D9E4730 == -1)
            {
LABEL_35:
              v26 = v0[7];
              v27 = sub_22CA20B10();
              sub_22C9D0494(v27, &unk_27D9E8080);
              v28 = v26;
              v29 = sub_22CA20AF0();
              v30 = sub_22CA21000();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = v0[7];
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v42 = v33;
                *v32 = 136315138;
                v34 = *(v31 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8);
                if (v34)
                {
                  v35 = *(v31 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier);
                }

                else
                {
                  v35 = 0x6E776F6E6B6E55;
                }

                if (v34)
                {
                  v36 = v34;
                }

                else
                {
                  v36 = 0xE700000000000000;
                }

                v37 = sub_22C9D60B0(v35, v36, &v42);

                *(v32 + 4) = v37;
                _os_log_impl(&dword_22C9CA000, v29, v30, "AppIntent: Artwork empty %s", v32, 0xCu);
                sub_22C9D04CC(v33);
                sub_22C9D70C0();
                sub_22C9D70C0();
              }

              sub_22CA20604();
              swift_allocError();
              *v38 = 4;
              *(v38 + 8) = 2;
              swift_willThrow();

              sub_22C9D7050();

              return v39();
            }

LABEL_48:
            swift_once();
            goto LABEL_35;
          }
        }

LABEL_23:

        ++v7;
        if (v0 == v6)
        {

          v21 = 0;
LABEL_25:
          v0 = v41;
          goto LABEL_28;
        }
      }

      v14 = [v2 identifier];
      v15 = sub_22CA20E20();
      v1 = v16;

      if (v15 != 0x746E456F69647561 || v1 != 0xEB00000000797469)
      {
        sub_22CA20668();
        v18 = sub_22CA21360();

        if ((v18 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

LABEL_20:

      goto LABEL_21;
    }
  }

  v21 = 0;
LABEL_28:
  v22 = v0[1];

  return v22(v21);
}

void sub_22CA1E76C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22CA207F8();
  a27 = v29;
  a28 = v30;
  sub_22C9D66FC(v28 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, &a13);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20710())
  {
    goto LABEL_22;
  }

  v31 = [a12 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  sub_22CA207A8();
  v32 = sub_22CA20EC0();

  v33 = sub_22C9E6DA0(v32);
  if (!v33)
  {
LABEL_21:

    sub_22C9D02E4(&unk_27D9E5320, &qword_22CA231E0);
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D837D0];
    *(v52 + 16) = xmmword_22CA22F90;
    *(v52 + 56) = v53;
    *(v52 + 32) = 0x6E696E7275746552;
    *(v52 + 40) = 0xEF7974706D452067;
    sub_22CA21430();

LABEL_22:
    v54 = 1;
    goto LABEL_23;
  }

  v34 = v33;
  v35 = 0;
  v36 = 0xEB00000000797469;
  v37 = 0x1FAF97000uLL;
  while (1)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x2318BAD10](v35, v32);
    }

    else
    {
      if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_49;
      }

      v38 = *(v32 + 8 * v35 + 32);
    }

    v28 = v38;
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    v40 = v37;
    v41 = v36;
    v42 = [v38 identifier];
    v43 = sub_22CA20E20();
    v45 = v44;

    v36 = v41;
    sub_22CA20668();
    if (v43 == v46 && v45 == v41)
    {
    }

    else
    {
      v48 = sub_22CA21360();

      if ((v48 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v37 = v40;
    v49 = [v28 (v40 + 376)];
    if (!v49)
    {

      goto LABEL_20;
    }

    v50 = v49;
    v51 = [v49 (v40 + 376)];

    sub_22CA21130();
    swift_unknownObjectRelease();
    sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
    if (sub_22CA20778())
    {
      break;
    }

LABEL_18:

    v37 = v40;
LABEL_20:
    ++v35;
    if (v39 == v34)
    {
      goto LABEL_21;
    }
  }

  v32 = a12;
  v55 = [a12 identifier];
  v56 = [v55 typeIdentifier];

  v35 = sub_22CA20E20();
  v34 = v57;

  v58 = v35 == 0x4565646F73697045 && v34 == 0xED0000797469746ELL;
  if (v58 || (sub_22CA2075C() & 1) != 0 || (v35 == 0x746E456D75626C41 ? (v59 = v34 == v41) : (v59 = 0), v59 || (sub_22CA2075C() & 1) != 0 || (v35 == 0x7473696C79616C50 ? (v60 = v34 == 0xEE00797469746E45) : (v60 = 0), v60 || (sub_22CA2075C() & 1) != 0)))
  {

    v54 = 0;
    goto LABEL_23;
  }

LABEL_43:
  if (v35 != 0x6E45747369747241 || v34 != 0xEC00000079746974)
  {
    sub_22CA2075C();

    goto LABEL_50;
  }

LABEL_49:

LABEL_50:

  v54 = 0;
LABEL_23:
  a13 = v54;
  sub_22CA20814();
}

uint64_t sub_22CA1EC14()
{
  sub_22C9D66FC(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v3);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (sub_22CA20778())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_22CA1EC80()
{
  sub_22C9D66FC(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v50);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20890())
  {
    v37 = *(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle);
    v38 = *(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_cachedTitle + 8);

    return;
  }

  v1 = [v49 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v2 = sub_22CA20EC0();

  v46 = sub_22C9E6DA0(v2);
  if (!v46)
  {
LABEL_67:

    return;
  }

  v3 = 0;
  v41 = (v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID);
  v42 = v2;
  v47 = v2 & 0xC000000000000001;
  v43 = v2 + 32;
  v44 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v47)
    {
      v4 = MEMORY[0x2318BAD10](v3, v2);
    }

    else
    {
      if (v3 >= *(v44 + 16))
      {
        goto LABEL_73;
      }

      v4 = *(v43 + 8 * v3);
    }

    v5 = v4;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_72;
    }

    v7 = [v4 identifier];
    sub_22CA20E20();
    sub_22CA208C8();
    sub_22CA20790();
    v8 = v8 && v1 == 0xE700000000000000;
    if (v8)
    {
LABEL_20:

      goto LABEL_21;
    }

    sub_22CA20750();
    sub_22CA207B4();
    sub_22CA208B0();
    if ((v0 & 1) == 0)
    {
      v9 = [v5 identifier];
      sub_22CA20E20();
      sub_22CA208C8();
      sub_22CA20668();
      if (v0 == v10 && v1 == 0xEB00000000797469)
      {
        goto LABEL_20;
      }

      sub_22CA20750();
      sub_22CA21360();
      sub_22CA208B0();
      if ((v0 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

LABEL_21:
    v0 = 0x27872A000uLL;
    v12 = [v5 value];
    if (!v12 || (v1 = v12, v0 = [v12 value], v1, sub_22CA21130(), swift_unknownObjectRelease(), sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0), (sub_22CA20890() & 1) == 0))
    {
LABEL_61:

      goto LABEL_62;
    }

    v45 = v5;
    v1 = [v49 properties];
    v13 = sub_22CA20EC0();

    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        break;
      }

      goto LABEL_60;
    }

    v14 = sub_22CA21290();
    if (v14)
    {
      break;
    }

LABEL_60:

    v2 = v42;
LABEL_62:
    if (v3 == v46)
    {
      goto LABEL_67;
    }
  }

  v15 = 0;
  v17 = *v41 == 0xD000000000000012 && 0x800000022CA25AB0 == v41[1];
  v48 = v17;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2318BAD10](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v18 = *(v13 + 8 * v15 + 32);
    }

    v19 = v18;
    v1 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v48 || (sub_22CA21360() & 1) != 0)
    {
LABEL_39:
      v20 = [v19 identifier];
      v21 = sub_22CA20E20();
      v0 = v22;

      if (v21 == 0x656D614E776F6873 && v0 == 0xE800000000000000)
      {
      }

      else
      {
        v24 = sub_22CA21360();

        if ((v24 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      v25 = [v19 value];
      if (v25)
      {
        v26 = v25;
        sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
        v27 = [v26 valueType];
        v28 = [objc_opt_self() stringValueType];
        v0 = sub_22CA210D0();

        if (v0)
        {

          v39 = [v26 value];
          sub_22CA21130();

          swift_unknownObjectRelease();
LABEL_69:

          sub_22CA20778();
          return;
        }

LABEL_58:

        goto LABEL_59;
      }

      goto LABEL_59;
    }

    v29 = [v19 identifier];
    v30 = sub_22CA20E20();
    v0 = v31;

    if (v30 == 0x656C746974 && v0 == 0xE500000000000000)
    {
    }

    else
    {
      v33 = sub_22CA21360();

      if ((v33 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v34 = [v19 value];
    if (v34)
    {
      v26 = v34;
      sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
      v35 = [v26 valueType];
      v36 = [objc_opt_self() stringValueType];
      v0 = sub_22CA210D0();

      if (v0)
      {

        v40 = [v26 value];
        sub_22CA21130();

        swift_unknownObjectRelease();
        goto LABEL_69;
      }

      goto LABEL_58;
    }

LABEL_59:

    ++v15;
    if (v1 == v14)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_22CA1F3C8()
{
  sub_22C9D66FC(v0 + OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_intentAction, v37);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20870())
  {
    return;
  }

  v1 = v36;
  v2 = [v36 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v3 = sub_22CA20EC0();

  v4 = sub_22C9E6DA0(v3);
  if (!v4)
  {
LABEL_50:

    return;
  }

  v5 = v4;
  v6 = 0;
  v34 = v3 & 0xC000000000000001;
  v31 = v3 + 32;
  v32 = v3 & 0xFFFFFFFFFFFFFF8;
  v29 = v4;
  v30 = v3;
  while (1)
  {
    if (v34)
    {
      v7 = MEMORY[0x2318BAD10](v6, v3);
    }

    else
    {
      if (v6 >= *(v32 + 16))
      {
        goto LABEL_56;
      }

      v7 = *(v31 + 8 * v6);
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_55;
    }

    v35 = v7;
    v9 = [v7 identifier];
    sub_22CA20E20();
    sub_22CA208C8();
    sub_22CA20790();
    v10 = v10 && v2 == 0xE700000000000000;
    if (v10)
    {
      break;
    }

    sub_22CA20750();
    sub_22CA207B4();
    sub_22CA208B0();
    if (v0)
    {
      goto LABEL_21;
    }

    v11 = [v35 identifier];
    sub_22CA20E20();
    sub_22CA208C8();
    sub_22CA20668();
    if (v0 == v12 && v2 == 0xEB00000000797469)
    {
      break;
    }

    sub_22CA20750();
    sub_22CA21360();
    sub_22CA208B0();
    if (v0)
    {
      goto LABEL_21;
    }

LABEL_44:

LABEL_47:
    if (v6 == v5)
    {
      goto LABEL_50;
    }
  }

LABEL_21:
  v0 = 0x27872A000uLL;
  v14 = [v35 value];
  if (!v14)
  {
    goto LABEL_44;
  }

  v2 = v14;
  v0 = [v14 value];

  sub_22CA21130();
  swift_unknownObjectRelease();
  sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
  if ((sub_22CA20870() & 1) == 0)
  {
    goto LABEL_44;
  }

  v33 = v6;
  v2 = [v36 properties];
  v15 = sub_22CA20EC0();

  if (v15 >> 62)
  {
    v16 = sub_22CA21290();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22CA207D8();
  if (!v16)
  {

LABEL_46:
    v3 = v30;
    v5 = v29;
    v6 = v33;
    goto LABEL_47;
  }

  v2 = 0;
  while (2)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2318BAD10](v2, v15);
    }

    else
    {
      if (v2 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v17 = *(v15 + 8 * v2 + 32);
    }

    v18 = v17;
    v19 = (v2 + 1);
    if (!__OFADD__(v2, 1))
    {
      v20 = [v17 identifier];
      v21 = sub_22CA20E20();
      v0 = v22;

      if (v21 == v6 && v0 == 0xE700000000000000)
      {
      }

      else
      {
        v24 = sub_22CA207B4();

        if ((v24 & 1) == 0)
        {
LABEL_42:

          ++v2;
          if (v19 == v16)
          {

            v1 = v36;
            goto LABEL_46;
          }

          continue;
        }
      }

      v25 = [v18 value];
      if (v25)
      {
        v26 = v25;
        sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
        v27 = [v26 valueType];
        v6 = [objc_opt_self() stringValueType];
        v0 = sub_22CA210D0();

        if (v0)
        {

          v28 = [v26 value];
          sub_22CA21130();

          swift_unknownObjectRelease();
          sub_22CA20778();
          return;
        }

        sub_22CA207D8();
      }

      goto LABEL_42;
    }

    break;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_22CA1F910(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22CA207F8();
  a27 = v28;
  a28 = v29;
  sub_22C9D66FC(v30, &a13);
  sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
  if (!sub_22CA20710())
  {
    goto LABEL_26;
  }

  v31 = [a12 parameters];
  sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  sub_22CA207A8();
  v32 = sub_22CA20EC0();

  v33 = sub_22C9E6DA0(v32);
  if (!v33)
  {
LABEL_25:

LABEL_26:
    sub_22CA20814();
    return;
  }

  v34 = v33;
  v35 = 0;
  v36 = 0x65646F73697065;
  while (1)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x2318BAD10](v35, v32);
    }

    else
    {
      if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v37 = *(v32 + 8 * v35 + 32);
    }

    v38 = v37;
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v40 = v36;
    v41 = [v37 identifier];
    v42 = sub_22CA20E20();
    v44 = v43;

    v36 = v40;
    if (v42 == v40 && v44 == 0xE700000000000000)
    {
      goto LABEL_21;
    }

    v46 = sub_22CA207B4();

    if ((v46 & 1) == 0)
    {
      v47 = [v38 identifier];
      v48 = sub_22CA20E20();
      v50 = v49;

      sub_22CA20668();
      if (v48 != v51 || v50 != 0xEB00000000797469)
      {
        v53 = sub_22CA21360();

        v36 = v40;
        if ((v53 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v36 = v40;
LABEL_21:
    }

LABEL_22:
    v54 = [v38 value];
    if (v54)
    {
      v55 = v54;
      [v54 value];

      sub_22CA21130();
      swift_unknownObjectRelease();
      sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
      if (sub_22CA20778())
      {

        v56 = [a12 identifier];
        v57 = [v56 instanceIdentifier];

        sub_22CA20E20();
        goto LABEL_26;
      }
    }

LABEL_24:

    ++v35;
    if (v39 == v34)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_22CA1FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v13 - v8;
  v10 = sub_22CA20F70();
  sub_22C9D0B98(v9, 1, 1, v10);
  sub_22C9D66FC(a1, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_22C9E9818(v13, (v11 + 32));
  *(v11 + 64) = a2;
  *(v11 + 72) = a3;

  sub_22C9D1034(0, 0, v9, &unk_22CA257D0, v11);
}

uint64_t sub_22CA1FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_22CA209F0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](&sub_22CA1FE08, 0, 0);
}

uint64_t sub_22CA1FF2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v4 + 112) = v1;

  if (v1)
  {
    v8 = sub_22CA200D4;
  }

  else
  {
    *(v4 + 120) = a1;
    v8 = sub_22CA2004C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22CA2004C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  (*(v0 + 56))(v1, 0);

  v4 = *(v0 + 88);

  sub_22C9D7050();

  return v5();
}

uint64_t sub_22CA200D4()
{
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Failed to retrieve artwork. Error: %@", v7, 0xCu);
    sub_22C9D6C44(v8, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  v11 = *(v0 + 112);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  v14 = v11;
  v13(0, v11);

  v15 = *(v0 + 88);

  sub_22C9D7050();

  return v16();
}

id MSPlayMediaAppIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSPlayMediaAppIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPlayMediaAppIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22CA20540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22C9DE05C;

  return sub_22CA1FD44(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_22CA20604()
{
  result = qword_27D9E5310;
  if (!qword_27D9E5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E5310);
  }

  return result;
}

uint64_t sub_22CA206E0()
{

  return sub_22CA20E10();
}

uint64_t sub_22CA20710()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA20730()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA2075C()
{

  return sub_22CA21360();
}

uint64_t sub_22CA20778()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA207B4()
{

  return sub_22CA21360();
}

uint64_t sub_22CA20830()
{

  return sub_22CA20E10();
}

uint64_t sub_22CA20850()
{

  return sub_22CA21240();
}

uint64_t sub_22CA20870()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA20890()
{

  return swift_dynamicCast();
}

uint64_t sub_22CA208B0()
{
}

void sub_22CA208C8()
{
}