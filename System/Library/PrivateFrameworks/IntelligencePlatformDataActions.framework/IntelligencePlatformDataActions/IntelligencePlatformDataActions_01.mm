unint64_t sub_254FD1858()
{
  result = qword_27F76C9D8;
  if (!qword_27F76C9D8)
  {
    sub_254FC5448(&qword_27F76C9D0, &qword_254FF3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C9D8);
  }

  return result;
}

uint64_t sub_254FD18D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_254FC0048(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_254FD1924()
{
  sub_254FC5DD4();
  v2 = v1(0);
  sub_254FC5864(v2);
  v4 = *(v3 + 16);
  v5 = sub_254FBF6B0();
  v6(v5);
  return v0;
}

unint64_t sub_254FD197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  sub_254FF2404();
  sub_254FF2424();
  if (a2)
  {
    sub_254FD36B4();
    sub_254FF1FC4();
  }

  sub_254FF2434();
  v9 = -1 << *(a4 + 32);
  result = sub_254FF21C4();
  *(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v11 = (*(a4 + 48) + 16 * result);
  *v11 = a1;
  v11[1] = a2;
  *(*(a4 + 56) + 8 * result) = a3;
  ++*(a4 + 16);
  return result;
}

uint64_t sub_254FD1A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_254FC5864(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254FD1AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v8 = *(i - 1) == a2 && *i == a3;
    if (!v8 && (sub_254FF2364() & 1) == 0)
    {
      break;
    }

    ++v5;
  }

  v9 = v5;
LABEL_11:

  return v9;
}

uint64_t sub_254FD1B78(void *a1)
{
  v1 = [a1 artworkData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254FF1554();

  return v3;
}

uint64_t sub_254FD1C08()
{
  sub_254FC5DD4();
  v2 = v1(0);
  sub_254FC5864(v2);
  v4 = *(v3 + 32);
  v5 = sub_254FBF6B0();
  v6(v5);
  return v0;
}

uint64_t sub_254FD1C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDisplayInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DeviceActivityHelpers()
{
  result = qword_27F76CA88;
  if (!qword_27F76CA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_254FD1D10(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FCFED0();
  *v1 = result;
  return result;
}

void *sub_254FD1D3C(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD0058();
  *v1 = result;
  return result;
}

void *sub_254FD1D68(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD01E4();
  *v1 = result;
  return result;
}

void *sub_254FD1D94(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD036C();
  *v1 = result;
  return result;
}

void *sub_254FD1DC0(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD04F4();
  *v1 = result;
  return result;
}

void *sub_254FD1DEC(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD067C();
  *v1 = result;
  return result;
}

void *sub_254FD1E18(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD0804();
  *v1 = result;
  return result;
}

void *sub_254FD1E44(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD098C();
  *v1 = result;
  return result;
}

void *sub_254FD1E70(uint64_t *a1)
{
  sub_254FD32F0(a1);
  result = sub_254FD0B14();
  *v1 = result;
  return result;
}

void sub_254FD1EA4()
{
  sub_254FD2454(319, &qword_27F76CA98, MEMORY[0x277CC5848]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_254FD2454(319, &qword_27F76CAA0, MEMORY[0x277CC57C0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of DeviceActivityHelpers.fetchSegments(startDate:endDate:userId:deviceId:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_254FD33B8(v3);
  *v4 = v5;
  v4[1] = sub_254FD21FC;
  v6 = sub_254FD34DC();

  return v8(v6);
}

uint64_t sub_254FD21FC()
{
  sub_254FD3208();
  v2 = v1;
  sub_254FD3388();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_254FD3074();
  *v6 = v5;

  sub_254FD3394();

  return v7(v2);
}

uint64_t dispatch thunk of DeviceActivityHelpers.fetchAppInfo(for:)()
{
  sub_254FD3870();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = sub_254FD33B8(v5);
  *v6 = v7;
  v6[1] = sub_254FCFDB4;

  return v9(v2);
}

void sub_254FD2454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_254FF21A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_254FD2AAC()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254FD2B0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_254FD33B8(v7);
  *v8 = v9;
  v8[1] = sub_254FD1008;
  v10 = sub_254FD3858();

  return v11(v10);
}

uint64_t sub_254FD2BDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_254FD33B8(v5);
  *v6 = v7;
  v6[1] = sub_254FD2FBC;
  v8 = sub_254FD3858();

  return v9(v8);
}

uint64_t sub_254FD2C94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254FD2CD4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_254FD33B8(v7);
  *v8 = v9;
  v8[1] = sub_254FD2FBC;

  return sub_254FD0F20(a1, v3, v4, v6);
}

uint64_t sub_254FD2D9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254FD2DD4()
{
  sub_254FD3870();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_254FD33B8(v3);
  *v4 = v5;
  v6 = sub_254FD33F0(v4);

  return v7(v6);
}

uint64_t sub_254FD2E6C()
{
  sub_254FD3870();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_254FD33B8(v3);
  *v4 = v5;
  v6 = sub_254FD33F0(v4);

  return v7(v6);
}

unint64_t sub_254FD2F18()
{
  result = qword_27F76CAC8;
  if (!qword_27F76CAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F76CAC8);
  }

  return result;
}

uint64_t sub_254FD2F5C()
{
  sub_254FC5DD4();
  v3 = sub_254FC0048(v1, v2);
  sub_254FC5864(v3);
  v5 = *(v4 + 40);
  v6 = sub_254FBF6B0();
  v7(v6);
  return v0;
}

void sub_254FD2FC8()
{
  v2 = v0[110];
  *(v1 - 256) = v0[113];
  *(v1 - 248) = v2;
  v3 = v0[108];
  *(v1 - 240) = v0[109];
  *(v1 - 232) = v3;
  v4 = v0[102];
  *(v1 - 224) = v0[105];
  *(v1 - 216) = v4;
  v5 = v0[98];
  *(v1 - 208) = v0[101];
  *(v1 - 200) = v5;
  v6 = v0[94];
  *(v1 - 192) = v0[95];
  *(v1 - 184) = v6;
  v7 = v0[90];
  *(v1 - 176) = v0[91];
  *(v1 - 168) = v7;
  v8 = v0[88];
  *(v1 - 160) = v0[89];
  *(v1 - 152) = v8;
  v9 = v0[82];
  *(v1 - 144) = v0[85];
  *(v1 - 136) = v9;
  v10 = v0[76];
  *(v1 - 128) = v0[79];
  *(v1 - 120) = v10;
  *(v1 - 112) = v0[73];
}

uint64_t sub_254FD3050(uint64_t result)
{
  v3 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v1 + 72);
  *(v2 - 208) = *(v1 + 16);
  *(v2 - 200) = v4;
  return result;
}

void sub_254FD3084()
{
  v2 = v0 + *(v1 - 200);
  v3 = *(v1 - 168);
  v5 = *(v1 - 144);
  v4 = *(v1 - 136);
}

uint64_t sub_254FD309C()
{

  return swift_beginAccess();
}

uint64_t sub_254FD30BC()
{

  return swift_beginAccess();
}

uint64_t sub_254FD30DC()
{

  return swift_beginAccess();
}

uint64_t sub_254FD3150@<X0>(unint64_t a1@<X8>)
{

  return MEMORY[0x2821FC280](a1 > 1, v1 + 1, 1);
}

void sub_254FD3174()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[129];
  v4 = v0[128];
}

uint64_t sub_254FD31B4()
{
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[112];
  v7 = *(*(v1 - 112) + 888);
  v8 = *(*(v1 - 112) + 872);
  return v3;
}

void sub_254FD3238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = v32[108];
  v35 = v32[101];
  v36 = v32[99];
  v37 = v32[98];
  v38 = v32[95];
  v39 = v32[94];
  *(v33 - 120) = v32[92];
  v40 = *(a32 + 72);
}

void sub_254FD3264()
{
  v2 = *(v0 + 64);
  v3 = -1 << *(v0 + 32);
  v4 = *(v1 + 1048);
  v5 = *(v1 + 944);
}

uint64_t sub_254FD32A8()
{
  v3 = v0[119];
  v4 = v0[98];
  *(v1 - 144) = v0[90];
  *(v1 - 136) = v3;
  v5 = v0[85];
  v6 = v0[83];
  v7 = v0[82];
  *(v1 - 152) = v0[80];

  return sub_254FF1A64();
}

uint64_t sub_254FD32FC()
{
  v2 = *(*(v0 - 112) + 952);
  v3 = *(*(v0 - 112) + 912);
  v4 = *(*(v0 - 112) + 888);
  v5 = *(*(v0 - 112) + 608);

  return MEMORY[0x28211B9D0]();
}

uint64_t sub_254FD3334()
{
  result = *(v0 - 552);
  v2 = *(v0 - 536);
  v3 = *(v0 - 264);
  v4 = *(v0 - 728);
  return result;
}

uint64_t sub_254FD3364()
{
  result = v0[116];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[65];
  v6 = *(v0[112] + 32);
  return result;
}

uint64_t sub_254FD33A0()
{

  return swift_beginAccess();
}

uint64_t sub_254FD33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  *(v39 - 128) = a1;
  *(v39 - 96) = a1;
  *v37 = a37;
  return v38;
}

uint64_t sub_254FD33F0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_254FD3410()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_254FD341C()
{
  v3 = *(v0 + 952);
  v4 = *(v0 + 912);
  v5 = *(*(v1 - 112) + 888);
  v6 = *(*(v1 - 112) + 584);

  return MEMORY[0x28211B9D0]();
}

void sub_254FD3468()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

uint64_t sub_254FD3480()
{

  return swift_task_alloc();
}

void sub_254FD3498()
{
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[102];
}

uint64_t sub_254FD34B4()
{

  return MEMORY[0x2821FC2E0](v0, v1);
}

void sub_254FD34E8()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

uint64_t sub_254FD3500()
{
  *(v2 - 168) = v0;
  result = *(v1 + 584);
  v4 = *(v1 + 568);
  v5 = *(v2 - 232);
  v6 = *(v2 - 208);
  return result;
}

void sub_254FD351C()
{
  *(v3 - 144) = v1;
  *(v3 - 136) = v0;
  v4 = *(v3 - 120);
  *(v3 - 152) = v2;
}

void sub_254FD3544()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

uint64_t sub_254FD356C()
{
  *(v2 - 120) = v0;
  v4 = *(v1 + 704);
  v5 = *(*(v2 - 112) + 688);

  return swift_slowAlloc();
}

uint64_t sub_254FD3594()
{

  return swift_task_alloc();
}

uint64_t sub_254FD35C4()
{
  result = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  return result;
}

void sub_254FD3618()
{
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[118];
  *(v1 - 136) = v0[117];
  *(v1 - 128) = v2;
}

uint64_t sub_254FD3630()
{
  result = v0[116];
  v2 = v0[111];
  v3 = v0[109];
  v4 = *(v0[112] + 8);
  return result;
}

uint64_t sub_254FD3648()
{
  *(v2 - 168) = v0;
  result = *(v1 + 608);
  v4 = *(v1 + 592);
  v5 = *(v2 - 216);
  v6 = *(v2 - 208);
  return result;
}

uint64_t sub_254FD3678()
{
  v2 = *(v0 + 8);
  v3 = *(v1 - 136);
  return *(v1 - 128);
}

void sub_254FD369C()
{
  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  v5 = *(v1 + v0 + 48);
  v6 = *(v1 + v0 + 56);
}

void sub_254FD36C0()
{
  v1 = v0[132];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[86];
}

uint64_t sub_254FD36E4()
{
  v1 = v0[98];
  v2 = v0[96];
  v3 = v0[95];
  result = v0[94];
  v5 = v0[92];
  return result;
}

BOOL sub_254FD36FC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_254FD3718()
{
  v3 = v1[133];
  v4 = v1[131];
  v5 = v1[130];
  v6 = v1[124];
  v7 = v1[70];
}

void *sub_254FD373C()
{
  v5 = 16 * (*(v1 + 16) - v0);

  return memmove(v2, (v3 + 16 * v0), v5);
}

uint64_t sub_254FD3760()
{
  v2 = v0[94];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[86];

  return MEMORY[0x2821162B8](v3);
}

uint64_t sub_254FD3784()
{
  v2 = v0[119];
  v3 = v0[117];
  v4 = v0[90];
  v5 = v0[86];
}

uint64_t sub_254FD37A8()
{
}

void sub_254FD3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v55 = *(v54 + 632);
  v56 = *(v54 + 616);
  v57 = *(a54 + 72);
}

uint64_t sub_254FD3824()
{
  result = *(v0 - 544);
  v2 = *(v0 - 568);
  return result;
}

uint64_t sub_254FD3844()
{
  v3 = *v1;
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_254FD38C8()
{
  result = *(v0 + 864);
  v2 = *(v0 + 848);
  return result;
}

uint64_t sub_254FD38DC()
{
  v2 = v0[108];
  v3 = v0[70];
  v4 = v0[127];

  return sub_254FC9244(v4);
}

uint64_t sub_254FD38FC()
{

  return MEMORY[0x28211B9C0](v0, v1);
}

uint64_t sub_254FD391C()
{
  v2 = v0[121];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[64];

  return sub_254FF1484();
}

void sub_254FD393C()
{

  sub_254FC3D0C();
}

uint64_t sub_254FD395C()
{
  v3 = (v0 + 32 + 16 * v1);
  v5 = *v3;
  v4 = v3[1];
}

uint64_t sub_254FD397C()
{

  return sub_254FF22A4();
}

uint64_t sub_254FD399C(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 112);

  return sub_254FC9084(v1);
}

void sub_254FD39BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_254FD39DC()
{
  v2 = *(v0 - 128);

  return sub_254FF1F24();
}

uint64_t sub_254FD39F4()
{
  v2 = *(v0 - 176);

  return sub_254FF1F24();
}

uint64_t sub_254FD3A0C()
{
  v2 = *(v0 - 184);

  return sub_254FF1F24();
}

uint64_t sub_254FD3A24()
{
  v2 = *(v0 - 192);

  return sub_254FF1F24();
}

uint64_t sub_254FD3A3C()
{
}

uint64_t sub_254FD3A54()
{
}

void sub_254FD3A6C()
{
  v4 = *(v2 + v0);
  *(v2 + v0) = v1;
}

uint64_t sub_254FD3A84()
{

  return sub_254FF1A54();
}

uint64_t sub_254FD3AAC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = sub_254FF1F94();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a4)
        {
          if (a6)
          {
            v13 = sqlite3_malloc(48);
            if (v13)
            {
              if (*(a4 + 16) && (v14 = v13, sub_254FF1F84(), sub_254FF1F74(), v15))
              {

                v16 = *(a2 + 8);
                v17 = *a2;
                v18 = v16;
                v19 = [v17 createTableSQL];
                if (v19)
                {
                  sub_254FF1F54();

                  v20 = sub_254FF1FB4();

                  v21 = (v20 + 32);
                }

                else
                {
                  v21 = 0;
                }

                v24 = sqlite3_declare_vtab(a1, v21);
                swift_unknownObjectRelease();
                if (!v24)
                {
                  v27 = 0;
                  v28 = 0;
                  v29 = 0;
                  v30 = v17;
                  v31 = v18;
                  swift_unknownObjectWeakInit();
                  swift_arrayInitWithCopy();
                  *a5 = v14;
                  sub_254FD6BC0(&v27);
                  result = 0;
                  goto LABEL_16;
                }
              }

              else
              {
                sub_254FD6B6C();
                v22 = swift_allocError();
                *v23 = 0;
                swift_willThrow();
              }
            }
          }
        }
      }
    }
  }

  result = 1;
LABEL_16:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254FD3CD0(uint64_t a1, unsigned int *a2)
{
  result = 1;
  if (a1 && a2)
  {
    a2[10] = 0;
    v5 = sub_254FF1EE4();
    v6 = *a2;
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_80;
    }

    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = 12 * v6;
    while (v10 != v9)
    {
      if (v9 == 0x5FFFFFFF4)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
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
        sub_254FF2384();
        __break(1u);
        JUMPOUT(0x254FD4214);
      }

      v11 = *(a2 + 1);
      if (!v11)
      {
        goto LABEL_81;
      }

      v12 = v11 + v9;
      v13 = *(v11 + v9);
      v14 = *(v11 + v9 + 4);
      v15 = *(v12 + 5);
      switch(v13)
      {
        case 0:
          if (v14 != 2 || v15 == 0)
          {
            goto LABEL_61;
          }

          a2[10] |= 4u;
          swift_isUniquelyReferenced_nonNull_native();
          v17 = sub_254FC4CCC(4u);
          if (__OFADD__(v7[2], (v18 & 1) == 0))
          {
            goto LABEL_72;
          }

          v19 = v17;
          v20 = v18;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_17;
          }

          v21 = sub_254FC4CCC(4u);
          if ((v20 & 1) != (v22 & 1))
          {
            goto LABEL_83;
          }

          v19 = v21;
LABEL_17:
          if (v20)
          {
            goto LABEL_58;
          }

          v7[(v19 >> 6) + 8] |= 1 << v19;
          *(v7[6] + 4 * v19) = 4;
          *(v7[7] + 4 * v19) = v8;
          v23 = v7[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (!v24)
          {
            goto LABEL_60;
          }

          goto LABEL_77;
        case 2:
          if (v14 != 2 || v15 == 0)
          {
            goto LABEL_61;
          }

          a2[10] |= 8u;
          swift_isUniquelyReferenced_nonNull_native();
          v34 = sub_254FC4CCC(8u);
          if (__OFADD__(v7[2], (v35 & 1) == 0))
          {
            goto LABEL_73;
          }

          v19 = v34;
          v36 = v35;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_43;
          }

          v37 = sub_254FC4CCC(8u);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_83;
          }

          v19 = v37;
LABEL_43:
          if (v36)
          {
            goto LABEL_58;
          }

          v7[(v19 >> 6) + 8] |= 1 << v19;
          *(v7[6] + 4 * v19) = 8;
          *(v7[7] + 4 * v19) = v8;
          v39 = v7[2];
          v24 = __OFADD__(v39, 1);
          v25 = v39 + 1;
          if (!v24)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        case 4:
          if (!v15)
          {
            goto LABEL_61;
          }

          if (v14 != 32 && v14 != 4)
          {
            goto LABEL_61;
          }

          a2[10] |= 1u;
          swift_isUniquelyReferenced_nonNull_native();
          v27 = sub_254FC4CCC(1u);
          if (__OFADD__(v7[2], (v28 & 1) == 0))
          {
            goto LABEL_75;
          }

          v19 = v27;
          v29 = v28;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_31;
          }

          v30 = sub_254FC4CCC(1u);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_83;
          }

          v19 = v30;
LABEL_31:
          if (v29)
          {
            goto LABEL_58;
          }

          v7[(v19 >> 6) + 8] |= 1 << v19;
          *(v7[6] + 4 * v19) = 1;
          *(v7[7] + 4 * v19) = v8;
          v32 = v7[2];
          v24 = __OFADD__(v32, 1);
          v25 = v32 + 1;
          if (!v24)
          {
            goto LABEL_60;
          }

          goto LABEL_78;
        case 5:
          if (!v15)
          {
            goto LABEL_61;
          }

          if (v14 != 16 && v14 != 8)
          {
            goto LABEL_61;
          }

          a2[10] |= 2u;
          swift_isUniquelyReferenced_nonNull_native();
          v41 = sub_254FC4CCC(2u);
          if (__OFADD__(v7[2], (v42 & 1) == 0))
          {
            goto LABEL_74;
          }

          v19 = v41;
          v43 = v42;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_57;
          }

          v44 = sub_254FC4CCC(2u);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_83;
          }

          v19 = v44;
LABEL_57:
          if (v43)
          {
LABEL_58:
            *(v7[7] + 4 * v19) = v8;
          }

          else
          {
            v7[(v19 >> 6) + 8] |= 1 << v19;
            *(v7[6] + 4 * v19) = 2;
            *(v7[7] + 4 * v19) = v8;
            v46 = v7[2];
            v24 = __OFADD__(v46, 1);
            v25 = v46 + 1;
            if (v24)
            {
              goto LABEL_79;
            }

LABEL_60:
            v7[2] = v25;
          }

LABEL_61:
          v9 += 12;
          ++v8;
          break;
        default:
          goto LABEL_61;
      }
    }

    v47 = 0;
    v48 = v7[2];
    v49 = 1;
    do
    {
      if (v48)
      {
        v50 = sub_254FC4CCC(*(&unk_286730878 + v47 + 32));
        if (v51)
        {
          v52 = *(a2 + 4);
          if (!v52)
          {
            goto LABEL_82;
          }

          *(v52 + 8 * *(v7[7] + 4 * v50)) = v49;
          v24 = __OFADD__(v49++, 1);
          if (v24)
          {
            goto LABEL_71;
          }
        }
      }

      v47 += 4;
    }

    while (v47 != 16);
    *(a2 + 8) = 1000000.0 / v49;

    return 0;
  }

  return result;
}

uint64_t sub_254FD4230(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t sub_254FD4260(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  result = 1;
  if (a1 && a2)
  {
    result = *(*(type metadata accessor for SQLiteVTabCursor() - 8) + 64);
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v9 = sqlite3_malloc(result);
      if (!v9)
      {
        return 1;
      }

      v10 = v9;
      v11 = dispatch_semaphore_create(0);
      v12 = sub_254FF2114();
      sub_254FC4BB8(v7, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v10;
      v13[5] = a2;
      v13[6] = v10;
      v13[7] = v11;
      v14 = v11;
      sub_254FD45D0(0, 0, v7, &unk_254FF3AA8, v13);

      sub_254FF2184();

      return 0;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254FD43D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for SQLiteVTabCursor();
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254FD4494, 0, 0);
}

uint64_t sub_254FD4494()
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v2[7];
  v8 = sub_254FF1614();
  sub_254FC4BB8(v1 + v7, 1, 1, v8);
  sub_254FC4BB8(v1 + v2[8], 1, 1, v8);
  v9 = MEMORY[0x277D84F90];
  *v1 = 0;
  v1[1] = v9;
  v1[2] = 0;
  v10 = (v1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + v2[10]);
  *v11 = 0;
  v11[1] = 0;
  swift_arrayInitWithCopy();
  *v6 = v4;
  sub_254FF2194();
  sub_254FD688C(v1);

  sub_254FD3410();
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_254FD45D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_254FD6A34(a3, v26 - v11, &qword_27F76CAA8, &qword_254FF3880);
  v13 = sub_254FF2114();
  v14 = sub_254FC5364(v12, 1, v13);

  if (v14 == 1)
  {
    sub_254FC8740(v12, &qword_27F76CAA8, &qword_254FF3880);
  }

  else
  {
    sub_254FF2104();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_254FF20F4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_254FF1FB4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_254FC8740(a3, &qword_27F76CAA8, &qword_254FF3880);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254FC8740(a3, &qword_27F76CAA8, &qword_254FF3880);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_254FD48B8(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_254FD688C(a1);
  sqlite3_free(a1);
  return 0;
}

uint64_t sub_254FD48FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, sqlite3_value **a5)
{
  v8 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  if (!a1 || !a5)
  {
    return 1;
  }

  v16 = swift_allocBox();
  v18 = v17;
  v19 = sub_254FF1614();
  sub_254FC4BB8(v18, 1, 1, v19);
  v20 = swift_allocBox();
  v22 = v21;
  result = sub_254FC4BB8(v21, 1, 1, v19);
  if (!*a1)
  {
    __break(1u);
    return result;
  }

  v24 = *(*a1 + 32);
  v47 = v16;
  v48 = v20;
  if ((a2 & 1) == 0)
  {
    v25 = v24;
    if ((a2 & 2) == 0)
    {
      if ((a2 & 4) == 0)
      {
        v26 = v24;
        v27 = 0;
        v28 = 0;
        v46 = 0;
        v29 = 0;
        v30 = 0;
        if ((a2 & 8) == 0)
        {
          goto LABEL_28;
        }

LABEL_25:
        if (sqlite3_value_text(a5[v27]))
        {
          v29 = sub_254FF1FE4();
          v30 = v37;
          goto LABEL_28;
        }

LABEL_27:
        v29 = 0;
        v30 = 0;
        goto LABEL_28;
      }

      v35 = v24;
      v27 = 0;
      goto LABEL_19;
    }

    v34 = v24;
    v33 = 0;
    goto LABEL_15;
  }

  v31 = *a5;
  v25 = v24;
  v32 = v24;
  sqlite3_value_double(v31);
  sub_254FF1564();
  v33 = 1;
  sub_254FC4BB8(v15, 0, 1, v19);
  sub_254FD65E0(v15, v18);
  if ((a2 & 2) != 0)
  {
LABEL_15:
    sqlite3_value_double(a5[v33]);
    sub_254FF1564();
    sub_254FC4BB8(v15, 0, 1, v19);
    sub_254FD65E0(v15, v22);
    v27 = v33 + 1;
    if ((a2 & 4) == 0)
    {
LABEL_22:
      v28 = 0;
      v46 = 0;
      if ((a2 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_19:
    if (sqlite3_value_text(a5[v27]))
    {
      v28 = sub_254FF1FE4();
      v46 = v36;
      ++v27;
      if ((a2 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ((a2 & 4) != 0)
  {
    v27 = 1;
    goto LABEL_19;
  }

  v28 = 0;
  if ((a2 & 8) != 0)
  {
    v27 = 1;
    v46 = 0;
    goto LABEL_25;
  }

  v29 = 0;
  v30 = 0;
  v46 = 0;
LABEL_28:
  v38 = dispatch_semaphore_create(0);
  v39 = sub_254FF2114();
  sub_254FC4BB8(v11, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v25;
  v41 = v48;
  v40[5] = v47;
  v40[6] = v41;
  v40[7] = v29;
  v40[8] = v30;
  v42 = v46;
  v40[9] = v28;
  v40[10] = v42;
  v40[11] = a1;
  v40[12] = v38;
  v43 = v25;

  v44 = v38;
  sub_254FD6FFC(0, 0, v11, &unk_254FF3A98, v40);

  sub_254FF2184();

  return 0;
}

uint64_t sub_254FD4C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v13;
  *(v8 + 112) = v14;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 64) = a4;
  v9 = *(*(sub_254FC0048(&qword_27F76CA00, &qword_254FF3790) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_projectBox();
  *(v8 + 144) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_254FD4D60, 0, 0);
}

uint64_t sub_254FD4D60()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  swift_beginAccess();
  sub_254FD6A34(v1, v3, &qword_27F76CA00, &qword_254FF3790);
  swift_beginAccess();
  sub_254FD6A34(v2, v4, &qword_27F76CA00, &qword_254FF3790);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_254FD4E78;
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];

  return sub_254FCB1A0();
}

uint64_t sub_254FD4E78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_254FD3074();
  *v6 = v5;
  v7 = v4[19];
  *v6 = *v2;
  v5[20] = v1;

  v8 = v4[16];
  v9 = v4[15];
  if (v1)
  {
    sub_254FD6FE4(v9);
    sub_254FD6FE4(v8);
    v10 = sub_254FD5088;
  }

  else
  {
    v5[21] = a1;
    sub_254FD6FE4(v9);
    sub_254FD6FE4(v8);
    v10 = sub_254FD4FFC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_254FD4FFC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = *(v3 + 8);
  *(v3 + 8) = v0[21];
  *(v3 + 16) = 0;

  sub_254FF2194();

  sub_254FD3410();

  return v6();
}

uint64_t sub_254FD5088()
{
  sub_254FD3208();
  v2 = v0[15];
  v1 = v0[16];

  sub_254FD3410();
  v4 = v0[20];

  return v3();
}

uint64_t sub_254FD50F0(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    *(v1 + 16) = v4;
  }

  return result;
}

BOOL sub_254FD5120(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *(a1 + 8);
    }

    v3 = sub_254FF22E4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == v3;
}

uint64_t sub_254FD5180(void *a1, sqlite3_context *a2, int a3)
{
  if (!a1)
  {
    return 1;
  }

  sub_254FD51D0(a1, a3, a2, &v4);
  return v4;
}

void sub_254FD51D0(void *a1@<X0>, int a2@<W1>, sqlite3_context *a3@<X2>, int *a4@<X8>)
{
  v9 = a1[1];
  v8 = a1[2];
  sub_254FDA638(v8, (v9 & 0xC000000000000001) == 0, v9);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C31960](v8, v9);
  }

  else
  {
    v10 = *(v9 + 8 * v8 + 32);
  }

  v11 = v10;
  if (!*a1)
  {
    __break(1u);
    JUMPOUT(0x254FD5848);
  }

  v12 = *(*a1 + 24);
  switch(a2)
  {
    case 0:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId;
      goto LABEL_11;
    case 1:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName;
      goto LABEL_11;
    case 2:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID;
      goto LABEL_11;
    case 3:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail;
      goto LABEL_11;
    case 4:
      v14 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
      goto LABEL_14;
    case 5:
      v14 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
LABEL_14:
      v19 = *v14;
      swift_beginAccess();
      v16 = *&v11[v19];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = &qword_27F76CB18;
      v18 = 0x277CBEAA8;
      goto LABEL_20;
    case 6:
      v20 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
      goto LABEL_18;
    case 7:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier;
LABEL_11:
      v15 = *v13;
      swift_beginAccess();
      v16 = *&v11[v15];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = &qword_27F76CB20;
      v18 = 0x277CCACA8;
      goto LABEL_20;
    case 8:
      v20 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication;
LABEL_18:
      v21 = *v20;
      swift_beginAccess();
      v16 = *&v11[v21];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = &unk_27F76CB28;
      v18 = 0x277CCABB0;
LABEL_20:
      v22 = sub_254FD65A0(0, v17, v18);
      v23 = v16;
      break;
    default:
      v16 = 0;
LABEL_22:
      v22 = 0;
      break;
  }

  v41[0] = v16;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = v22;
  v24 = v12;
  v25 = [v24 columns];
  sub_254FD65A0(0, &qword_27F76CB08, 0x277CF1A80);
  v26 = sub_254FF2074();

  sub_254FDA638(a2, (v26 & 0xC000000000000001) == 0, v26);
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x259C31960](a2, v26);
  }

  else
  {
    v27 = *(v26 + 8 * a2 + 32);
  }

  v28 = v27;

  v29 = [v28 dataType];

  switch(v29)
  {
    case 0uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      sqlite3_result_int64(a3, v38);
      goto LABEL_48;
    case 1uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      sqlite3_result_double(a3, *&v38);
      goto LABEL_48;
    case 2uLL:
    case 5uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      sub_254FD65A0(0, &qword_27F76CB20, 0x277CCACA8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      v30 = v38;
      v31 = [v38 UTF8String];
      if (qword_27F76C798 != -1)
      {
        swift_once();
      }

      sqlite3_result_text(a3, v31, -1, qword_27F76EC70);
      goto LABEL_37;
    case 3uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      sub_254FD65A0(0, &qword_27F76CB18, 0x277CBEAA8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      [v38 timeIntervalSinceReferenceDate];
      sqlite3_result_double(a3, v36);

      v11 = v38;
      goto LABEL_48;
    case 4uLL:
    case 6uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
LABEL_49:
        sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);

        sub_254FC8740(v39, &qword_27F76C870, &qword_254FF3110);
LABEL_51:
        v35 = 1;
        goto LABEL_52;
      }

      sub_254FD65A0(0, &qword_27F76CB10, 0x277CBEA90);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_50:
        sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);

        goto LABEL_51;
      }

      v30 = v38;
      v32 = [v38 bytes];
      v33 = [v38 length];
      if (v33 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v34 = v33;
        if (v33 <= 0x7FFFFFFF)
        {
          if (qword_27F76C798 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_57:
      v37 = v34;
      swift_once();
      v34 = v37;
LABEL_36:
      sqlite3_result_blob(a3, v32, v34, qword_27F76EC70);
LABEL_37:

LABEL_48:
      sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);
      v35 = 0;
LABEL_52:
      *a4 = v35;
      return;
    default:
      sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);

      v35 = 17;
      goto LABEL_52;
  }
}

uint64_t sub_254FD588C(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

id static DeviceActivityIPSQLConnector.schema.getter()
{
  sub_254FC0048(&qword_27F76CAF8, &qword_254FF3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254FF3910;
  v1 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  v2 = sub_254FD6FBC();
  result = sub_254FD6038(v2 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 32) = result;
  v4 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  v5 = sub_254FD6FBC();
  result = sub_254FD6038(v5 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, 2);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v0 + 40) = result;
  v6 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x44495344746C61, 0xE700000000000000, 2);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 48) = result;
  v7 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x6D4564756F6C6369, 0xEB000000006C6961, 2);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 56) = result;
  v8 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x6D69547472617473, 0xE900000000000065, 3);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 64) = result;
  v9 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x656D6954646E65, 0xE700000000000000, 3);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 72) = result;
  v10 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x6E6F697461727564, 0xE800000000000000, 1);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v0 + 80) = result;
  v11 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0xD000000000000010, 0x8000000254FF4F90, 2);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 88) = result;
  v12 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x63696C7070417369, 0xED00006E6F697461, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 96) = result;
  v13 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  result = sub_254FD60A4(0xD000000000000012, 0x8000000254FF5AF0, v0);
  if (!result)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t static DeviceActivityIPSQLConnector.vtabDestroyBlock.setter(void (__cdecl *a1)(void *))
{
  result = swift_beginAccess();
  off_281D50AC0 = a1;
  return result;
}

uint64_t sub_254FD5C88@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = off_281D50AC0;
  return result;
}

uint64_t sub_254FD5CD4(void (__cdecl **a1)(void *))
{
  v1 = *a1;
  result = swift_beginAccess();
  off_281D50AC0 = v1;
  return result;
}

double sub_254FD5D3C()
{
  v0 = swift_slowAlloc();
  *v0 = 0;
  *(v0 + 8) = sub_254FD3CCC;
  *(v0 + 16) = sub_254FD3CCC;
  *(v0 + 24) = sub_254FD422C;
  *(v0 + 32) = sub_254FD425C;
  *(v0 + 40) = sub_254FD425C;
  *(v0 + 48) = sub_254FD48B4;
  *(v0 + 56) = sub_254FD48F8;
  *(v0 + 64) = sub_254FD50EC;
  *(v0 + 72) = sub_254FD511C;
  *(v0 + 80) = sub_254FD517C;
  *(v0 + 88) = sub_254FD5888;
  *(v0 + 96) = sub_254FD58AC;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

uint64_t static DeviceActivityIPSQLConnector.vtabModule.getter()
{
  if (qword_27F76C7A0 != -1)
  {
    swift_once();
  }

  return qword_27F76CAF0;
}

void *sub_254FD5E84()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sqlite3_malloc(16);
  if (v0)
  {
    v1 = [objc_allocWithZone(type metadata accessor for DeviceActivityHelpers()) init];
    if (v1)
    {
      v2 = v1;
      v5 = static DeviceActivityIPSQLConnector.schema.getter();
      swift_arrayInitWithCopy();
    }

    else
    {
      v0 = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t DeviceActivityConnectorError.hashValue.getter()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

id sub_254FD6038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254FF1F24();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 dataType:a3];

  return v6;
}

id sub_254FD60A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_254FF1F24();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_254FD65A0(0, &qword_27F76CB08, 0x277CF1A80);
  v6 = sub_254FF2064();

LABEL_6:
  v7 = [v3 initWithTableName:v5 columns:v6];

  return v7;
}

unint64_t sub_254FD6154()
{
  result = qword_27F76CB00;
  if (!qword_27F76CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CB00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceActivityConnectorError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254FD62F0);
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

__n128 sub_254FD6328(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254FD6334(uint64_t *a1, int a2)
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

uint64_t sub_254FD6374(uint64_t result, int a2, int a3)
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

uint64_t sub_254FD63C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254FD64B8;

  return v7(a1);
}

uint64_t sub_254FD64B8()
{
  sub_254FD3208();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_254FD3074();
  *v3 = v2;

  sub_254FD3410();

  return v4();
}

uint64_t sub_254FD65A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_254FD65E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FD6650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_254FD66B8()
{
  v1 = *(v0 + 24);
  v20 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v19 = *(v0 + 72);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = swift_task_alloc();
  v10 = sub_254FD6FAC(v9);
  *v10 = v11;
  v10[1] = sub_254FD67A8;
  sub_254FD6FD0();

  return sub_254FD4C78(v12, v13, v14, v15, v16, v17, v5, v6);
}

uint64_t sub_254FD67A8()
{
  sub_254FD3208();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_254FD3074();
  *v3 = v2;

  sub_254FD3410();

  return v4();
}

uint64_t sub_254FD688C(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteVTabCursor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SQLiteVTabCursor()
{
  result = qword_27F76CB40;
  if (!qword_27F76CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254FD6934()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254FD6974()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_254FD6FAC(v7);
  *v8 = v9;
  v8[1] = sub_254FD67A8;
  sub_254FD6FD0();

  return sub_254FD43D0(v10, v11, v12, v13, v14, v15, v5);
}

uint64_t sub_254FD6A34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254FC0048(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_254FD6A9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254FD6AD4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_254FD6FAC(v3);
  *v4 = v5;
  v6 = sub_254FD33F0(v4);

  return v7(v6);
}

unint64_t sub_254FD6B6C()
{
  result = qword_27F76CB38;
  if (!qword_27F76CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CB38);
  }

  return result;
}

uint64_t sub_254FD6BF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_254FD6C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254FD6CA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = a1 + *(a3 + 28);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FD6D48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v8 = v5 + *(a4 + 28);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FD6DD4()
{
  type metadata accessor for sqlite3_vtab_cursor(319);
  if (v0 <= 0x3F)
  {
    sub_254FD6EF0(319, &qword_27F76CB50, type metadata accessor for ActivitySegment, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_254FD6EF0(319, &qword_27F76CB58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_254FD6F54();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254FD6EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_254FD6F54()
{
  if (!qword_27F76CB60)
  {
    v0 = sub_254FF21A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76CB60);
    }
  }
}

uint64_t sub_254FD6FE4(uint64_t a1)
{

  return sub_254FC8740(a1, v1, v2);
}

uint64_t sub_254FD6FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  sub_254FD32E4(v8);
  v10 = *(v9 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  sub_254FDA578(a3, v25 - v12, &qword_27F76CAA8, &qword_254FF3880);
  v14 = sub_254FF2114();
  v15 = sub_254FC5364(v13, 1, v14);

  if (v15 == 1)
  {
    sub_254FC538C(v13, &qword_27F76CAA8, &qword_254FF3880);
  }

  else
  {
    sub_254FF2104();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_254FF20F4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_254FF1FB4() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = sub_254FDA714();

      sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return sub_254FDA714();
}

uint64_t DeviceActivityVirtualTable.Module.moduleName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeviceActivityVirtualTable.Module.moduleType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  v4 = sub_254FF1DF4();
  v5 = sub_254FC5864(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DeviceActivityVirtualTable.Module.createTable(using:databaseName:tableName:args:)()
{
  v0 = type metadata accessor for DeviceActivityVirtualTable.Table(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  sub_254FD7718();
  return v3;
}

uint64_t sub_254FD73C4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = sub_254FC4A10(a2, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_254FC7780();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a3(a1, v13, v3, v7, v8);
  sub_254FC49C4(a2);
  return v15;
}

uint64_t DeviceActivityVirtualTable.Module.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  v3 = sub_254FF1DF4();
  sub_254FC5864(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_ipsqlDb);
  swift_unownedRelease();
  sub_254FC49C4((v0 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource));
  return v0;
}

uint64_t sub_254FD75A4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  result = DeviceActivityVirtualTable.Module.createTable(using:databaseName:tableName:args:)();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DeviceActivityVirtualTable.Table.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DeviceActivityVirtualTable.Table.createSQL.getter()
{
  v1 = sub_254FF18B4();
  v2 = sub_254FC583C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254FC7780();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable5Table_tableSchema, v1);
  v10 = sub_254FF1884();
  (*(v4 + 8))(v9, v1);
  return v10;
}

void sub_254FD7718()
{
  sub_254FDA734();
  v2 = v1;
  v4 = v3;
  v202 = v3;
  v6 = v5;
  v7 = sub_254FC0048(&qword_27F76CB98, &qword_254FF3D60);
  sub_254FD32E4(v7);
  v9 = *(v8 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v10);
  v11 = sub_254FC0048(&qword_27F76CBA0, &qword_254FF3D68);
  sub_254FD32E4(v11);
  v13 = *(v12 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v14);
  v219 = v197 - v15;
  v16 = sub_254FC0048(&qword_27F76CBA8, &qword_254FF3D70);
  sub_254FD32E4(v16);
  v18 = *(v17 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v19);
  v21 = v197 - v20;
  v22 = sub_254FC0048(&qword_27F76CBB0, &qword_254FF3D78);
  sub_254FD32E4(v22);
  v24 = *(v23 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v25);
  v27 = v197 - v26;
  v213 = sub_254FF1864();
  v217 = *(v213 - 8);
  v28 = *(v217 + 64);
  MEMORY[0x28223BE20](v213);
  sub_254FC7780();
  v31 = v30 - v29;
  v218 = v30 - v29;
  v212 = sub_254FF18B4();
  v32 = sub_254FC583C(v212);
  v205 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_254FC7780();
  v203 = v37 - v36;
  v204 = v0;
  *(v0 + 16) = xmmword_254FF3B30;
  *(v0 + 32) = v6;
  *(v0 + 40) = v4;
  v200 = v6;
  v208 = v2;
  *(v0 + 48) = v2;
  sub_254FC0048(&qword_27F76CBB8, &qword_254FF3D80);
  v38 = *(sub_254FF18E4() - 8);
  v216 = *(v38 + 72);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  v201 = v40;
  *(v40 + 16) = xmmword_254FF3B40;
  v211 = v40 + v39;
  v207 = *MEMORY[0x277CF1848];
  v41 = v217 + 104;
  v209 = *(v217 + 104);
  v209(v31);
  v217 = v41;
  v214 = sub_254FF18F4();
  v42 = v27;
  sub_254FD3690();
  sub_254FC4BB8(v43, v44, v45, v46);
  v215 = sub_254FF1874();
  v47 = v21;
  sub_254FD3690();
  sub_254FC4BB8(v48, v49, v50, v51);
  sub_254FD3690();
  v52 = v212;
  sub_254FC4BB8(v53, v54, v55, v212);
  v56 = sub_254FF1854();
  sub_254FDA6E4();
  sub_254FD3690();
  v210 = v56;
  sub_254FC4BB8(v57, v58, v59, v56);
  swift_unownedRetain();

  sub_254FDA6A8();
  v60 = v211;
  sub_254FDA64C();
  v61 = v218;
  v206 = v42;
  sub_254FF18C4();
  v62 = v61;
  v63 = v207;
  v64 = v209;
  (v209)(v62, v207, v213);
  v65 = sub_254FDA63C();
  v66 = v214;
  sub_254FC4BB8(v65, v67, v68, v214);
  sub_254FD3690();
  v69 = v215;
  sub_254FC4BB8(v70, v71, v72, v215);
  v73 = sub_254FDA63C();
  sub_254FC4BB8(v73, v74, v75, v52);
  sub_254FD3690();
  sub_254FC4BB8(v76, v77, v78, v56);
  sub_254FDA6A8();
  v79 = v216;
  v80 = v60;
  sub_254FDA64C();
  v81 = v218;
  sub_254FF18C4();
  sub_254FDA6F0(v80 + 2 * v79);
  v82 = v81;
  v83 = v63;
  v84 = v213;
  v64(v82, v63, v213);
  sub_254FD3690();
  sub_254FC4BB8(v85, v86, v87, v66);
  v88 = v47;
  sub_254FD3690();
  sub_254FC4BB8(v89, v90, v91, v69);
  sub_254FD3690();
  v92 = v212;
  sub_254FC4BB8(v93, v94, v95, v212);
  sub_254FDA6E4();
  sub_254FD3690();
  v96 = v210;
  sub_254FC4BB8(v97, v98, v99, v210);
  sub_254FDA6A8();
  sub_254FDA6D8();
  sub_254FDA64C();
  v100 = v218;
  v197[1] = v88;
  sub_254FF18C4();
  v101 = v216;
  sub_254FDA6F0(3 * v216);
  v102 = v83;
  v103 = v209;
  (v209)(v100, v102, v84);
  v104 = sub_254FDA63C();
  sub_254FC4BB8(v104, v105, v106, v214);
  sub_254FD3690();
  v107 = v215;
  sub_254FC4BB8(v108, v109, v110, v215);
  sub_254FD3690();
  sub_254FC4BB8(v111, v112, v113, v92);
  sub_254FD3690();
  sub_254FC4BB8(v114, v115, v116, v96);
  sub_254FDA6A8();
  v117 = v211;
  sub_254FDA6D8();
  sub_254FDA64C();
  v118 = v218;
  sub_254FF18C4();
  v198 = v117 + 4 * v101;
  v199 = *MEMORY[0x277CF1838];
  v119 = v213;
  v103(v118);
  v120 = sub_254FDA63C();
  v121 = v214;
  sub_254FC4BB8(v120, v122, v123, v214);
  sub_254FD3690();
  sub_254FC4BB8(v124, v125, v126, v107);
  sub_254FD3690();
  v127 = v212;
  sub_254FC4BB8(v128, v129, v130, v212);
  sub_254FD3690();
  v131 = v210;
  sub_254FC4BB8(v132, v133, v134, v210);
  sub_254FDA6A8();
  sub_254FDA64C();
  v135 = v218;
  sub_254FF18C4();
  v136 = v216;
  v198 = 5 * v216;
  v137 = v135;
  v138 = v209;
  (v209)(v137, v199, v119);
  v139 = sub_254FDA63C();
  sub_254FC4BB8(v139, v140, v141, v121);
  sub_254FD3690();
  sub_254FC4BB8(v142, v143, v144, v215);
  sub_254FD3690();
  sub_254FC4BB8(v145, v146, v147, v127);
  sub_254FD3690();
  sub_254FC4BB8(v148, v149, v150, v131);
  sub_254FDA6A8();
  v151 = v211;
  sub_254FDA64C();
  v152 = v218;
  sub_254FF18C4();
  sub_254FDA6F0(v151 + 6 * v136);
  (v138)(v152, *MEMORY[0x277CF1840], v213);
  v153 = sub_254FDA63C();
  v154 = v214;
  sub_254FC4BB8(v153, v155, v156, v214);
  sub_254FD3690();
  v157 = v215;
  sub_254FC4BB8(v158, v159, v160, v215);
  sub_254FD3690();
  sub_254FC4BB8(v161, v162, v163, v127);
  sub_254FD3690();
  v164 = v210;
  sub_254FC4BB8(v165, v166, v167, v210);
  sub_254FDA6A8();
  sub_254FDA6D8();
  sub_254FDA64C();
  v168 = v218;
  sub_254FF18C4();
  sub_254FDA6F0(7 * v216);
  v198 = "tity.Software AS S";
  v169 = v213;
  (v138)(v168, v207, v213);
  sub_254FD3690();
  sub_254FC4BB8(v170, v171, v172, v154);
  sub_254FD3690();
  sub_254FC4BB8(v173, v174, v175, v157);
  sub_254FD3690();
  v176 = v212;
  sub_254FC4BB8(v177, v178, v179, v212);
  v180 = sub_254FDA63C();
  sub_254FC4BB8(v180, v181, v182, v164);
  sub_254FDA6D8();
  sub_254FDA64C();
  sub_254FDA74C();
  (v138)(v168, *MEMORY[0x277CF1850], v169);
  sub_254FD3690();
  sub_254FC4BB8(v183, v184, v185, v214);
  sub_254FD3690();
  sub_254FC4BB8(v186, v187, v188, v215);
  v189 = sub_254FDA63C();
  sub_254FC4BB8(v189, v190, v191, v176);
  sub_254FD3690();
  sub_254FC4BB8(v192, v193, v194, v210);
  sub_254FDA6A8();
  sub_254FDA64C();
  sub_254FDA74C();
  sub_254FDA64C();
  sub_254FF1894();
  v195 = *(v205 + 32);
  sub_254FDA6B4();
  v196();

  sub_254FDA6FC();
}

void *DeviceActivityVirtualTable.Table.createCursor()()
{
  type metadata accessor for DeviceActivityVirtualTable.Cursor();
  v1 = swift_allocObject();
  v1[3] = MEMORY[0x277D84F90];
  v1[4] = 0;
  v1[2] = v0;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Table.bestIndex(indexInfo:)(sqlite3_index_info *indexInfo)
{
  sub_254FDA734();
  v2 = v1;
  v3 = sub_254FF1EB4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if ((v8 & 0x80000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    JUMPOUT(0x254FD84C0);
  }

  v9 = 0;
  v10 = 0;
  v32 = (v5 + 8);
  v33 = 0;
  for (i = 1; v8; --v8)
  {
    v11 = *(v2 + 1);
    if (!v11)
    {
      goto LABEL_41;
    }

    if (*(v11 + v10 + 5))
    {
      v12 = *(v11 + v10 + 4);
      switch(*(v11 + v10))
      {
        case 0:
          if (v12 != 2)
          {
            break;
          }

          v13 = *(v2 + 4);
          if (!v13)
          {
            goto LABEL_44;
          }

          sub_254FDA678(v13);
          i = v14;
          if (v15)
          {
            goto LABEL_39;
          }

          v16 = v33 | 4;
          goto LABEL_33;
        case 2:
          if (v12 != 2)
          {
            break;
          }

          v26 = *(v2 + 4);
          if (!v26)
          {
            goto LABEL_45;
          }

          sub_254FDA678(v26);
          i = v27;
          if (v15)
          {
            goto LABEL_38;
          }

          v16 = v33 | 8;
          goto LABEL_33;
        case 4:
          if (v12 != 32 && v12 != 4)
          {
            break;
          }

          v24 = *(v2 + 4);
          if (!v24)
          {
            goto LABEL_42;
          }

          sub_254FDA678(v24);
          i = v25;
          if (v15)
          {
            goto LABEL_37;
          }

          v16 = v33 | 1;
          goto LABEL_33;
        case 5:
          if (v12 != 16 && v12 != 8)
          {
            break;
          }

          v29 = *(v2 + 4);
          if (!v29)
          {
            goto LABEL_43;
          }

          sub_254FDA678(v29);
          i = v30;
          if (v15)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v16 = v33 | 2;
LABEL_33:
          v33 = v16;
          break;
        default:
          break;
      }
    }

    else
    {
      sub_254FF1D14();
      v17 = v7;
      v18 = sub_254FF1EA4();
      v19 = sub_254FF2154();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = v3;
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_254FBD000, v18, v19, "DeviceActivityVirtualTable: constraint not usable, skipping", v21, 2u);
        v22 = v21;
        v3 = v20;
        MEMORY[0x259C32150](v22, -1, -1);
      }

      v7 = v17;
      (*v32)(v17, v3);
    }

    v10 += 12;
    v9 += 8;
  }

  v2[10] = v33;
  *(v2 + 8) = 1000000.0 / i;
  sub_254FDA6FC();
}

uint64_t DeviceActivityVirtualTable.Table.deinit()
{
  v1 = *(v0 + 32);
  swift_unownedRelease();
  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable5Table_tableSchema;
  v4 = sub_254FF18B4();
  sub_254FC5864(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_254FD8558(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void *sub_254FD85F0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = DeviceActivityVirtualTable.Table.createCursor()();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  sub_254FDA734();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  sub_254FD32E4(v9);
  v11 = *(v10 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  sub_254FC5864(v15);
  v17 = *(v16 + 64);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v49 = swift_allocBox();
  v22 = v21;
  v23 = sub_254FF1614();
  sub_254FD3690();
  sub_254FC4BB8(v24, v25, v26, v23);
  v48 = swift_allocBox();
  v28 = v27;
  sub_254FD3690();
  sub_254FC4BB8(v29, v30, v31, v23);
  v32 = *(*(v3 + 16) + 32);
  swift_unownedRetainStrong();
  sub_254FD9D58(v32 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource, v51);

  if (v8)
  {
    if (!*(v6 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    sqlite3_value_double(*(v6 + 32));
    sub_254FF1564();
    v33 = 1;
    sub_254FC4BB8(v20, 0, 1, v23);
    sub_254FD65E0(v20, v22);
    if ((v8 & 2) == 0)
    {
      if ((v8 & 4) == 0)
      {
        v34 = 0;
        if ((v8 & 8) == 0)
        {
          v36 = 0;
          v37 = 0;
          v35 = 0;
LABEL_26:
          v40 = dispatch_semaphore_create(0);
          sub_254FF2114();
          v41 = sub_254FDA63C();
          sub_254FC4BB8(v41, v42, v43, v44);
          sub_254FD9D58(v51, v50);
          v45 = swift_allocObject();
          v45[2] = 0;
          v45[3] = 0;
          v45[4] = v4;
          sub_254FC5820(v50, (v45 + 5));
          v46 = v48;
          v45[10] = v49;
          v45[11] = v46;
          v45[12] = v36;
          v45[13] = v37;
          v45[14] = v34;
          v45[15] = v35;
          v45[16] = v40;

          v47 = v40;
          sub_254FD6FFC(0, 0, v14, &unk_254FF3B58, v45);

          sub_254FF2184();
          DeviceActivityVirtualTable.Cursor.next()();
          sub_254FC49C4(v51);

          sub_254FDA6FC();
          return;
        }

        v33 = 1;
        v35 = 0;
        goto LABEL_22;
      }

      v33 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v33 = 0;
    if ((v8 & 2) == 0)
    {
      if ((v8 & 4) == 0)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if ((v8 & 8) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  if (v33 >= *(v6 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sqlite3_value_double(*(v6 + 8 * v33 + 32));
  sub_254FF1564();
  sub_254FC4BB8(v20, 0, 1, v23);
  sub_254FD65E0(v20, v28);
  ++v33;
  if ((v8 & 4) == 0)
  {
LABEL_19:
    v34 = 0;
    v35 = 0;
    if ((v8 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_15:
  if (v33 >= *(v6 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!sqlite3_value_text(*(v6 + 8 * v33 + 32)))
  {
    goto LABEL_19;
  }

  v34 = sub_254FF1FE4();
  v35 = v38;
  ++v33;
  if ((v8 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v33 < *(v6 + 16))
  {
    if (sqlite3_value_text(*(v6 + 8 * v33 + 32)))
    {
      v36 = sub_254FF1FE4();
      v37 = v39;
      goto LABEL_26;
    }

LABEL_25:
    v36 = 0;
    v37 = 0;
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_254FD89D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 136) = v14;
  *(v8 + 112) = v12;
  *(v8 + 96) = a5;
  *(v8 + 104) = a8;
  *(v8 + 88) = a4;
  v9 = *(*(sub_254FC0048(&qword_27F76CA00, &qword_254FF3790) - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_projectBox();
  *(v8 + 168) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_254FD8AC0, 0, 0);
}

uint64_t sub_254FD8AC0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[12];
  v6 = v5[3];
  v7 = v5[4];
  sub_254FC3908(v5, v6);
  sub_254FDA64C();
  swift_beginAccess();
  sub_254FDA578(v2, v3, &qword_27F76CA00, &qword_254FF3790);
  sub_254FDA64C();
  swift_beginAccess();
  sub_254FDA578(v1, v4, &qword_27F76CA00, &qword_254FF3790);
  v8 = *(v7 + 40);
  v18 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_254FD8C6C;
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[19];

  return v18(v16, v11, v14, v15, v12, v13, v6, v7);
}

uint64_t sub_254FD8C6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = v1;

  v7 = v4[19];
  v8 = v4[18];
  if (v1)
  {
    sub_254FDA6B4();
    sub_254FC538C(v9, v10, v11);
    sub_254FDA6B4();
    sub_254FC538C(v12, v13, v14);
    v15 = sub_254FD8EB8;
  }

  else
  {
    v4[24] = a1;
    sub_254FDA6B4();
    sub_254FC538C(v16, v17, v18);
    sub_254FDA6B4();
    sub_254FC538C(v19, v20, v21);
    v15 = sub_254FD8E08;
  }

  return MEMORY[0x2822009F8](v15, 0, 0);
}

uint64_t sub_254FD8E08()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v5 + 24) = v1;

  sub_254FF2194();

  v7 = v0[1];

  return v7();
}

uint64_t sub_254FD8EB8()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Cursor.next()()
{
  v1 = v0;
  sub_254FDA64C();
  swift_beginAccess();
  if (sub_254FDA46C(*(v0 + 24)))
  {
    swift_beginAccess();
    v2 = sub_254FD8FF8();
    swift_endAccess();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

BOOL sub_254FD8FB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_254FF22E4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_254FD8FF8()
{
  v1 = *v0;
  if (sub_254FD8FB4(*v0))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_254FDA46C(v1);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v3 = MEMORY[0x259C31960](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
LABEL_6:
  v4 = v3;
  result = sub_254FDA46C(v1);
  if (result)
  {
    sub_254FDA3C8(0, 1);
    return v4;
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  sub_254FDA734();
  v5 = v4;
  v7 = v6;
  v66 = sub_254FF18E4();
  v8 = sub_254FC583C(v66);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_254FC7780();
  v15 = v14 - v13;
  v16 = sub_254FF18B4();
  v17 = sub_254FC583C(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_254FC7780();
  v24 = (v23 - v22);
  v25 = sub_254FF1864();
  v26 = sub_254FC583C(v25);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v67 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v68 = v2;
  v34 = *(v2 + 32);
  if (v34)
  {
    v64 = v33;
    v65 = v3;
    v62 = &v60 - v32;
    v63 = v31;
    v61 = v7;
    switch(v5)
    {
      case 0uLL:
        v35 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId;
        goto LABEL_10;
      case 1uLL:
        v35 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName;
        goto LABEL_10;
      case 2uLL:
        v35 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID;
        goto LABEL_10;
      case 3uLL:
        v35 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail;
        goto LABEL_10;
      case 4uLL:
        v37 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
        goto LABEL_13;
      case 5uLL:
        v37 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
LABEL_13:
        v42 = *v37;
        sub_254FDA64C();
        swift_beginAccess();
        v39 = *&v34[v42];
        if (!v39)
        {
          goto LABEL_21;
        }

        v40 = &qword_27F76CB18;
        v41 = 0x277CBEAA8;
        goto LABEL_19;
      case 6uLL:
        v43 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
        goto LABEL_17;
      case 7uLL:
        v35 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier;
LABEL_10:
        v38 = *v35;
        sub_254FDA64C();
        swift_beginAccess();
        v39 = *&v34[v38];
        if (!v39)
        {
          goto LABEL_21;
        }

        v40 = &qword_27F76CB20;
        v41 = 0x277CCACA8;
        goto LABEL_19;
      case 8uLL:
        v43 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication;
LABEL_17:
        v44 = *v43;
        sub_254FDA64C();
        swift_beginAccess();
        v39 = *&v34[v44];
        if (!v39)
        {
          goto LABEL_21;
        }

        v40 = &unk_27F76CB28;
        v41 = 0x277CCABB0;
LABEL_19:
        v45 = sub_254FD65A0(0, v40, v41);
        v46 = v39;
        break;
      default:
        v39 = 0;
LABEL_21:
        v45 = 0;
        break;
    }

    v71[0] = v39;
    v71[1] = 0;
    v71[2] = 0;
    v71[3] = v45;
    (*(v19 + 16))(v24, *(v68 + 16) + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable5Table_tableSchema, v16);
    v47 = v34;
    v48 = v24;
    v49 = sub_254FF18A4();
    v51 = *(v19 + 8);
    v50 = (v19 + 8);
    v51(v24, v16);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v49 + 16) > v5)
    {
      v50 = v47;
      v16 = v66;
      (*(v10 + 16))(v15, v49 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5, v66);

      v47 = v62;
      sub_254FF18D4();
      (*(v10 + 8))(v15, v16);
      v24 = v63;
      v15 = v64;
      v52 = v67;
      (*(v64 + 16))(v67, v47, v63);
      v53 = (*(v15 + 88))(v52, v24);
      if (v53 == *MEMORY[0x277CF1850])
      {
        sub_254FDA6C0(v53, v54, &qword_27F76C870, &qword_254FF3110);
        if (v70)
        {
          if (sub_254FDA658())
          {
            sqlite3_result_int64(v61, v72);
          }

          goto LABEL_49;
        }

LABEL_51:

        (*(v15 + 8))(v47, v24);
        sub_254FC538C(v71, &qword_27F76C870, &qword_254FF3110);
        v58 = &v69;
        goto LABEL_52;
      }

      if (v53 == *MEMORY[0x277CF1840])
      {
        sub_254FDA6C0(v53, v54, &qword_27F76C870, &qword_254FF3110);
        if (v70)
        {
          if (sub_254FDA658())
          {
            sqlite3_result_double(v61, *&v72);
          }

          goto LABEL_49;
        }

        goto LABEL_51;
      }

      if (v53 == *MEMORY[0x277CF1848])
      {
LABEL_33:
        sub_254FDA6C0(v53, v54, &qword_27F76C870, &qword_254FF3110);
        if (!v70)
        {
          goto LABEL_51;
        }

        sub_254FD65A0(0, &qword_27F76CB20, 0x277CCACA8);
        if (sub_254FDA658())
        {
          v48 = [sub_254FDA6E4() UTF8String];
          if (qword_27F76C798 == -1)
          {
LABEL_36:
            sqlite3_result_text(v61, v48, -1, qword_27F76EC70);
LABEL_48:

            goto LABEL_49;
          }

LABEL_59:
          sub_254FDA688();
          goto LABEL_36;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v53 == *MEMORY[0x277CF1838])
      {
        sub_254FDA6C0(v53, v54, &qword_27F76C870, &qword_254FF3110);
        if (!v70)
        {
          goto LABEL_51;
        }

        sub_254FD65A0(0, &qword_27F76CB18, 0x277CBEAA8);
        if (sub_254FDA658())
        {
          [v72 timeIntervalSinceReferenceDate];
          sqlite3_result_double(v61, v55);

LABEL_50:
          (*(v15 + 8))(v47, v24);
          v58 = v71;
LABEL_52:
          sub_254FC538C(v58, &qword_27F76C870, &qword_254FF3110);
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      if (v53 != *MEMORY[0x277CF1830])
      {
        if (v53 == *MEMORY[0x277CF1820])
        {
          goto LABEL_33;
        }

        if (v53 != *MEMORY[0x277CF1828])
        {
          sqlite3_result_null(v61);

          v59 = *(v15 + 8);
          v59(v47, v24);
          sub_254FC538C(v71, &qword_27F76C870, &qword_254FF3110);
          v59(v52, v24);
          goto LABEL_53;
        }
      }

      sub_254FDA6C0(v53, v54, &qword_27F76C870, &qword_254FF3110);
      if (!v70)
      {
        goto LABEL_51;
      }

      sub_254FD65A0(0, &qword_27F76CB10, 0x277CBEA90);
      if ((sub_254FDA658() & 1) == 0)
      {
        goto LABEL_49;
      }

      v56 = [sub_254FDA6E4() bytes];
      v57 = [v16 length];
      if (v57 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v49) = v57;
        if (v57 <= 0x7FFFFFFF)
        {
          if (qword_27F76C798 == -1)
          {
LABEL_47:
            sqlite3_result_blob(v61, v56, v49, qword_27F76EC70);
            goto LABEL_48;
          }

LABEL_62:
          sub_254FDA688();
          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_59;
  }

  sub_254FC389C();
  swift_allocError();
  *v36 = 2;
  swift_willThrow();
LABEL_53:
  sub_254FDA6FC();
}

uint64_t DeviceActivityVirtualTable.Cursor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DeviceActivityVirtualTable.Cursor.__deallocating_deinit()
{
  DeviceActivityVirtualTable.Cursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_254FD99E4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_254FD9A08(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_254FC3C30();
    *v1 = v6;
  }
}

uint64_t sub_254FD9A70(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_254FF22E4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_254FF2274();
  *v1 = result;
  return result;
}

uint64_t sub_254FD9B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  v17 = sub_254FD9C34(a1, v12, v16, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v17;
}

uint64_t sub_254FD9C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource);
  v9[3] = a4;
  v9[4] = a5;
  v10 = sub_254FDA5D8(v9);
  (*(*(a4 - 8) + 32))(v10, a2, a4);
  *(a3 + 16) = 0xD00000000000001ALL;
  *(a3 + 24) = 0x8000000254FF3C40;
  v11 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  v12 = *MEMORY[0x277D21220];
  v13 = sub_254FF1DF4();
  (*(*(v13 - 8) + 104))(a3 + v11, v12, v13);
  *(a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_ipsqlDb) = a1;
  swift_unownedRetain();

  return a3;
}

uint64_t sub_254FD9D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254FD9DBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_254FC49C4((v0 + 40));
  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_254FD9E2C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v13 = *(v1 + 104);
  v10 = *(v1 + 120);
  v9 = *(v1 + 128);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_254FD9F30;

  return sub_254FD89D8(a1, v14, v4, v5, v1 + 40, v6, v7, v8);
}

uint64_t sub_254FD9F30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_254FDA0B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DeviceActivityVirtualTable(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254FDA19CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254FDA1FC()
{
  result = sub_254FF1DF4();
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

uint64_t sub_254FDA2E0()
{
  result = sub_254FF18B4();
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

uint64_t sub_254FDA3C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_254FDA46C(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_254FDA46C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_254FD9A70(result);

  return sub_254FDA490(v4, a2, 0);
}

uint64_t sub_254FDA46C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_254FF22E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_254FDA490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ActivitySegment();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_254FF22E4();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_254FD1648(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_254FF22E4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_254FDA578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254FC0048(a3, a4);
  sub_254FC5864(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t *sub_254FDA5D8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_254FDA658()
{

  return swift_dynamicCast();
}

uint64_t sub_254FDA688()
{

  return swift_once();
}

uint64_t sub_254FDA6C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_254FDA578(v4 - 112, v4 - 144, a3, a4);
}

uint64_t sub_254FDA714()
{

  return swift_task_create();
}

uint64_t sub_254FDA74C()
{

  return sub_254FF18C4();
}

uint64_t Email.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254FBF6B0();
}

uint64_t Email.subject.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_254FBF6B0();
}

uint64_t Email.dateSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Email() + 24);
  v4 = sub_254FF1614();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Email()
{
  result = qword_27F76CBC0;
  if (!qword_27F76CBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Email.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Email() + 28);

  return sub_254FC6204(v3, a1);
}

uint64_t Email.to.getter()
{
  v1 = (v0 + *(type metadata accessor for Email() + 32));
  v2 = *v1;
  v3 = v1[1];

  return sub_254FBF6B0();
}

uint64_t Email.from.getter()
{
  v1 = (v0 + *(type metadata accessor for Email() + 36));
  v2 = *v1;
  v3 = v1[1];

  return sub_254FBF6B0();
}

uint64_t sub_254FDA948@<X0>(uint64_t *a1@<X8>)
{
  result = Email.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FDA984(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FF1614();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
      v10 = *(a3 + 28);
    }

    return sub_254FC5364(a1 + v10, a2, v9);
  }
}

uint64_t sub_254FDAA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_254FF1614();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
      v10 = *(a4 + 28);
    }

    return sub_254FC4BB8(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_254FDAB44()
{
  sub_254FF1614();
  if (v0 <= 0x3F)
  {
    sub_254FC7370();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_254FDABE0()
{
  v0 = type metadata accessor for IPSQLQuerySource();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = IPSQLQuerySource.init(sqlConnection:)(0);
  qword_27F76EC98 = v3;
  return result;
}

uint64_t IPSQLQuerySource.__allocating_init(sqlConnection:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  IPSQLQuerySource.init(sqlConnection:)(a1);
  return v5;
}

uint64_t sub_254FDAC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16) || (v7 = sub_254FC4A60(), (v8 & 1) == 0) || (sub_254FC4B5C(*(a3 + 56) + 32 * v7, &v61), v9 = sub_254FC0048(&qword_27F76CC20, " 8"), sub_254FDCE08(v9, v10, v11, v9, v12, v13, v14, v15, v51, a2, v57), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_26:
    v35 = 1;
    goto LABEL_27;
  }

  v52 = a4;
  v17 = 0;
  v18 = v58;
  v19 = *(v58 + 16);
  while (1)
  {
    if (v19 == v17)
    {

      v35 = 1;
      a4 = v52;
      goto LABEL_27;
    }

    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v18 + 8 * v17 + 32);
    if (!*(v20 + 16))
    {
      goto LABEL_17;
    }

    v21 = *(v18 + 8 * v17 + 32);

    v22 = sub_254FC4A60();
    if ((v23 & 1) == 0 || (v24 = sub_254FC4B5C(*(v20 + 56) + 32 * v22, &v61), sub_254FDCE08(v24, v25, v26, v27, v28, v29, v30, v31, v52, v55, v58), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_17;
    }

    if (v58 == a1 && v60 == v55)
    {
      break;
    }

    v33 = a1;
    v34 = sub_254FF2364();

    if (v34)
    {
      goto LABEL_20;
    }

    a1 = v33;
LABEL_17:
    ++v17;
  }

LABEL_20:

  sub_254FBFF80(v20, &v61);

  a4 = v52;
  if (!v62)
  {
    goto LABEL_25;
  }

  v36 = sub_254FC0048(&qword_27F76CC28, &qword_254FF3F08);
  sub_254FDCE08(v36, v37, v38, v36, v39, v40, v41, v42, v52, v55, v58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_254FBFF80(v59, &v61);

  if (!v62)
  {
LABEL_25:
    sub_254FC8740(&v61, &qword_27F76C870, &qword_254FF3110);
    goto LABEL_26;
  }

  sub_254FDCE08(v43, v44, v45, MEMORY[0x277D839F8], v46, v47, v48, v49, v53, v56, v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_254FF1564();
  v35 = 0;
LABEL_27:
  v50 = sub_254FF1614();
  return sub_254FC4BB8(a4, v35, 1, v50);
}

uint64_t sub_254FDAF2C()
{
  v158[7] = *MEMORY[0x277D85DE8];
  v1 = sub_254FF1EB4();
  v2 = sub_254FC583C(v1);
  v154 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254FC590C();
  v151 = (v6 - v7);
  sub_254FDCE18();
  MEMORY[0x28223BE20](v8);
  sub_254FDCE60();
  v150 = v9;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v10);
  sub_254FDCE60();
  v148 = v11;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v12);
  v149 = v142 - v13;
  v14 = sub_254FF1F94();
  v15 = sub_254FC583C(v14);
  v152 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_254FC7780();
  v21 = v20 - v19;
  v22 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  sub_254FC590C();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v142 - v28;
  v30 = sub_254FF1614();
  v31 = sub_254FC583C(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_254FC590C();
  v147 = v36 - v37;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v38);
  sub_254FDCE60();
  v146 = v39;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v40);
  sub_254FDCE60();
  v155 = v41;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v42);
  v44 = v142 - v43;
  v45 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt;
  swift_beginAccess();
  sub_254FDCD30(v0 + v45, v29);
  if (sub_254FC5364(v29, 1, v30) != 1)
  {
    v143 = v1;
    v145 = v33;
    v46 = *(v33 + 32);
    v156 = v30;
    v144 = v46;
    v46(v44, v29, v30);
    v47 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewService);
    v48 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewQuery);
    v158[0] = 0;
    v49 = [v47 viewValidateWithViewQuery:v48 applyFixes:1 verbose:5 error:v158];
    v50 = v158[0];
    if (v49)
    {
      v51 = v49;
      v153 = v44;
      sub_254FF1F54();
      v52 = v50;

      sub_254FF1F84();
      v53 = sub_254FF1F64();
      v55 = v54;

      v152[1](v21, v14);
      v56 = v156;
      if (v55 >> 60 == 15)
      {
        goto LABEL_19;
      }

      v57 = objc_opt_self();
      sub_254FDCE6C();
      v58 = sub_254FF1534();
      v158[0] = 0;
      v59 = [v57 JSONObjectWithData:v58 options:0 error:v158];

      if (v59)
      {
        v142[1] = v53;
        v142[2] = v55;
        v60 = v158[0];
        sub_254FF21B4();
        swift_unknownObjectRelease();
        sub_254FC0048(&qword_27F76CC28, &qword_254FF3F08);
        if (swift_dynamicCast())
        {
          v61 = 0;
          v62 = v156;
          v152 = v157;
          v63 = *(v0 + 16);
          v64 = *(v63 + 16);
          v151 = (v145 + 8);
          for (i = (v63 + 40); ; i += 2)
          {
            if (v64 == v61)
            {
              v107 = sub_254FDCE34();
              v108(v107);
              sub_254FDCDE8();

              result = 0;
              goto LABEL_24;
            }

            if (v61 >= *(v63 + 16))
            {
              __break(1u);
            }

            v67 = *(i - 1);
            v66 = *i;

            sub_254FDAC64(v67, v66, v152, v26);
            if (sub_254FC5364(v26, 1, v62) == 1)
            {
              break;
            }

            v68 = v155;
            v144(v155, v26, v62);
            if (sub_254FF15B4())
            {

              sub_254FF1D14();
              v119 = *(v145 + 16);
              v120 = v146;
              v119(v146, v68, v62);
              v121 = v153;
              v119(v147, v153, v62);

              v122 = sub_254FF1EA4();
              v123 = sub_254FF2164();

              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                v158[0] = v152;
                *v124 = 136315650;
                v125 = sub_254FC4454(v67, v66, v158);
                LODWORD(v150) = v123;
                v126 = v125;

                *(v124 + 4) = v126;
                *(v124 + 12) = 2080;
                sub_254FDCDA0(&qword_27F76CC38, MEMORY[0x277CC9578]);
                v127 = sub_254FF2344();
                v129 = v128;
                v130 = *v151;
                (*v151)(v120, v62);
                v131 = sub_254FC4454(v127, v129, v158);

                *(v124 + 14) = v131;
                *(v124 + 22) = 2080;
                v132 = sub_254FF2344();
                v134 = v133;
                v135 = sub_254FDCE6C();
                (v130)(v135);
                v136 = sub_254FC4454(v132, v134, v158);

                *(v124 + 24) = v136;
                _os_log_impl(&dword_254FBD000, v122, v150, "IPSQLConnection: %s [updated: %s] updated after connection [updated: %s]. Refreshing connection", v124, 0x20u);
                swift_arrayDestroy();
                sub_254FC592C();
                MEMORY[0x259C32150]();
                sub_254FC592C();
                MEMORY[0x259C32150]();
                sub_254FDCDE8();

                sub_254FDCE54();
                sub_254FDCE48();
                v137();
                v130(v155, v62);
                v130(v153, v62);
              }

              else
              {
                sub_254FDCDE8();

                v139 = *v151;
                v140 = sub_254FDCE6C();
                v139(v140);
                (v139)(v120, v62);
                sub_254FDCE54();
                sub_254FDCE48();
                v141();
                (v139)(v68, v62);
                (v139)(v121, v62);
              }

              goto LABEL_23;
            }

            (*v151)(v68, v62);

            ++v61;
          }

          sub_254FC8740(v26, &qword_27F76CA00, &qword_254FF3790);
          sub_254FF1D14();

          v109 = sub_254FF1EA4();
          v110 = sub_254FF2174();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v158[0] = v112;
            *v111 = 136315138;
            v113 = sub_254FC4454(v67, v66, v158);

            *(v111 + 4) = v113;
            sub_254FDCE24();
            _os_log_impl(v114, v115, v116, v117, v118, 0xCu);
            sub_254FC49C4(v112);
            sub_254FC592C();
            MEMORY[0x259C32150]();
            sub_254FC592C();
            MEMORY[0x259C32150]();
            sub_254FDCDE8();
          }

          else
          {
            sub_254FDCDE8();
          }

          sub_254FDCE54();
          sub_254FDCE48();
          v138();
          v103 = sub_254FDCE34();
          goto LABEL_22;
        }

        sub_254FDCDE8();
        v56 = v156;
LABEL_19:
        sub_254FF1D14();
        v94 = sub_254FF1EA4();
        v95 = sub_254FF2174();
        if (os_log_type_enabled(v94, v95))
        {
          *swift_slowAlloc() = 0;
          sub_254FDCE24();
          _os_log_impl(v96, v97, v98, v99, v100, 2u);
          sub_254FC592C();
          MEMORY[0x259C32150]();
        }

        sub_254FDCE54();
        sub_254FDCE48();
        v101();
        v102 = *(v145 + 8);
        v103 = v153;
        v104 = v56;
LABEL_22:
        v102(v103, v104);
        goto LABEL_23;
      }

      v74 = v158[0];
      v70 = sub_254FF14F4();

      swift_willThrow();
      v75 = sub_254FDCE6C();
      sub_254FC4BE0(v75, v76);
      v44 = v153;
      v73 = v154;
      v71 = v143;
      v72 = v156;
    }

    else
    {
      v69 = v158[0];
      v70 = sub_254FF14F4();

      swift_willThrow();
      v71 = v143;
      v72 = v156;
      v73 = v154;
    }

    v77 = v151;
    sub_254FF1D14();
    v78 = v70;
    v79 = sub_254FF1EA4();
    v80 = sub_254FF2174();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v145;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v153 = v44;
      v84 = v83;
      v85 = v72;
      v86 = swift_slowAlloc();
      *v84 = 138412290;
      v87 = v70;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v88;
      *v86 = v88;
      sub_254FDCE24();
      _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
      sub_254FC8740(v86, &qword_27F76CBE0, &qword_254FF3F40);
      v72 = v85;
      sub_254FC592C();
      MEMORY[0x259C32150]();
      v44 = v153;
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v73 + 8))(v77, v71);
    (*(v82 + 8))(v44, v72);
    goto LABEL_23;
  }

  sub_254FC8740(v29, &qword_27F76CA00, &qword_254FF3790);
LABEL_23:
  result = 1;
LABEL_24:
  v106 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254FDBB40()
{
  v1 = v0;
  v2 = sub_254FF1EB4();
  v3 = sub_254FC583C(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254FC7780();
  v6 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  if (*(v0 + 24) == 1 && (sub_254FDAF2C() & 1) != 0)
  {
    sub_254FF1604();
    v10 = sub_254FF1614();
    sub_254FC4BB8(v9, 0, 1, v10);
    v11 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt;
    swift_beginAccess();
    sub_254FD65E0(v9, v1 + v11);
    swift_endAccess();
    sub_254FF1E54();
    v12 = *(v1 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_useCase);
    v13 = sub_254FF1E34();
    v14 = objc_allocWithZone(type metadata accessor for DeviceActivityHelpers());

    v15 = [v14 init];
    v16 = type metadata accessor for DeviceActivityVirtualTable.Module(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = sub_254FDC950(v13, v15, v19);
    v26[3] = v16;
    v26[4] = sub_254FDCDA0(&qword_27F76CBE8, type metadata accessor for DeviceActivityVirtualTable.Module);
    v26[0] = v20;

    sub_254FF1E44();
    sub_254FC49C4(v26);
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);

    sub_254FF1E14();

    v25 = *(v1 + 32);
    *(v1 + 32) = v13;
  }

  v23 = *(v1 + 32);
}

uint64_t IPSQLQuerySource.init(sqlConnection:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = &unk_2867307B8;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  v4 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt;
  v5 = sub_254FF1614();
  sub_254FC4BB8(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_useCase;
  *(v2 + v6) = sub_254FF1F24();
  v7 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewService;
  *(v2 + v7) = [objc_allocWithZone(MEMORY[0x277D1F4B8]) init];
  sub_254FF1E94();
  sub_254FDCDA0(&qword_27F76CBF8, MEMORY[0x277D20478]);
  sub_254FF1844();
  sub_254FDCA38();
  v8 = *(v2 + 16);

  *(v2 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewQuery) = sub_254FDC060(v9, 0);
  if (a1)
  {
    v10 = *(v2 + 32);
    *(v2 + 32) = a1;

    *(v2 + 24) = 0;
  }

  return v2;
}

id sub_254FDC060(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_254FF2064();

  v5 = [v3 initWithNames:v4 includeDependencies:a2 & 1];

  return v5;
}

uint64_t sub_254FDC0FC@<X0>(uint64_t *a1@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_254FDC578();
  result = v4;
  if (v1)
  {
  }

  a1[3] = &type metadata for SQLConnectionResultSet;
  a1[4] = &protocol witness table for SQLConnectionResultSet;
  *a1 = v4;
  a1[1] = 0;
  return result;
}

uint64_t sub_254FDC180(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_254FF1DD4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v9;
  v32 = v9 + 16;
  v33 = (v9 + 8);
  v30[1] = a1;
LABEL_2:
  result = sub_254FF1E64();
  if (!v3 && (result & 1) != 0)
  {
    v11 = sub_254FF1EE4();
    v12 = sub_254FF1E84();
    v13 = 0;
    v35 = *(v12 + 16);
    while (1)
    {
      if (v35 == v13)
      {

        v27 = v31;
        sub_254FDC8C4();
        v28 = *(*v27 + 16);
        sub_254FDC910(v28);
        v29 = *v27;
        *(v29 + 16) = v28 + 1;
        *(v29 + 8 * v28 + 32) = v11;
        goto LABEL_2;
      }

      if (v13 >= *(v12 + 16))
      {
        break;
      }

      (*(v34 + 16))(v8, v12 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13, v5);
      v14 = sub_254FF1DC4();
      v16 = v15;
      sub_254FF1DB4();
      v36 = v13;
      (*v33)();
      *&v37[0] = v14;
      *(&v37[0] + 1) = v16;
      sub_254FF21F4();
      sub_254FC4B5C(v39, v37);
      swift_isUniquelyReferenced_nonNull_native();
      v40 = v11;
      v17 = sub_254FC4AC4(v38);
      if (__OFADD__(v11[2], (v18 & 1) == 0))
      {
        goto LABEL_19;
      }

      v19 = v17;
      v20 = v18;
      sub_254FC0048(&qword_27F76CC30, &qword_254FF3F10);
      if (sub_254FF22A4())
      {
        v21 = sub_254FC4AC4(v38);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_21;
        }

        v19 = v21;
      }

      v11 = v40;
      if (v20)
      {
        v23 = (v40[7] + 32 * v19);
        sub_254FC49C4(v23);
        sub_254FDCD20(v37, v23);
        sub_254FC4B08(v38);
        sub_254FC49C4(v39);
        v3 = 0;
      }

      else
      {
        v40[(v19 >> 6) + 8] |= 1 << v19;
        sub_254FC5714(v38, v11[6] + 40 * v19);
        sub_254FDCD20(v37, (v11[7] + 32 * v19));
        sub_254FC4B08(v38);
        sub_254FC49C4(v39);
        v24 = v11[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_20;
        }

        v3 = 0;
        v11[2] = v26;
      }

      v13 = v36 + 1;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_254FF2384();
    __break(1u);
  }

  return result;
}

uint64_t sub_254FDC578()
{
  v0 = sub_254FF1EB4();
  v1 = sub_254FC583C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_254FC7780();
  v8 = v7 - v6;
  if (sub_254FDBB40())
  {
    sub_254FF1E24();
  }

  else
  {
    sub_254FF1D14();
    v10 = sub_254FF1EA4();
    v11 = sub_254FF2174();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_254FBD000, v10, v11, "IPSQLQuerySource: sqlConnection is not available, returning empty results", v12, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v3 + 8))(v8, v0);
    sub_254FC389C();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }
}

uint64_t IPSQLQuerySource.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_254FC8740(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt, &qword_27F76CA00, &qword_254FF3790);

  return v0;
}

uint64_t IPSQLQuerySource.__deallocating_deinit()
{
  IPSQLQuerySource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnectionResultSet.next()()
{
  v1 = v0[1];
  if (v1 >= *(*v0 + 16))
  {
    v3 = 0;
  }

  else if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*v0 + 8 * v1 + 32);
    v0[1] = v1 + 1;
  }

  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

void sub_254FDC8C4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_254FC3ED0();
    *v0 = v4;
  }
}

void sub_254FDC910(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_254FC3ED0();
    *v1 = v2;
  }
}

uint64_t sub_254FDC950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource);
  v6[3] = type metadata accessor for DeviceActivityHelpers();
  v6[4] = &protocol witness table for DeviceActivityHelpers;
  *v6 = a2;
  *(a3 + 16) = 0xD00000000000001ALL;
  *(a3 + 24) = 0x8000000254FF6050;
  v7 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  v8 = *MEMORY[0x277D21220];
  v9 = sub_254FF1DF4();
  (*(*(v9 - 8) + 104))(a3 + v7, v8, v9);
  *(a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_ipsqlDb) = a1;
  swift_unownedRetain();

  return a3;
}

unint64_t sub_254FDCA38()
{
  result = qword_27F76CC00;
  if (!qword_27F76CC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F76CC00);
  }

  return result;
}

uint64_t type metadata accessor for IPSQLQuerySource()
{
  result = qword_27F76CC10;
  if (!qword_27F76CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_254FDCAEC()
{
  sub_254FDCCB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_254FDCCB8()
{
  if (!qword_27F76CB58)
  {
    sub_254FF1614();
    v0 = sub_254FF21A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76CB58);
    }
  }
}

_OWORD *sub_254FDCD20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_254FDCD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FDCDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254FDCDE8()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 288);

  return sub_254FC4BE0(v2, v3);
}

uint64_t sub_254FDCE34()
{
  v1 = **(v0 - 216);
  result = *(v0 - 200);
  v3 = *(v0 - 176);
  return result;
}

uint64_t LiveGlobalKnowledgeError.hashValue.getter()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

uint64_t sub_254FDCF0C()
{
  qword_27F76ECB8 = sub_254FF1D74();
  unk_27F76ECC0 = MEMORY[0x277D1F4D0];
  sub_254FDA5D8(qword_27F76ECA0);
  return sub_254FF1D64();
}

uint64_t LiveGlobalKnowledgeQuerySource.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254FF1D74();
  v3 = MEMORY[0x277D1F4D0];
  a1[3] = v2;
  a1[4] = v3;
  sub_254FDA5D8(a1);
  return sub_254FF1D64();
}

uint64_t LiveGlobalKnowledgeQuerySource.callPegasusProxyWithTimeout(request:timeoutMs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a2;
  v139 = a3;
  v137 = sub_254FF1D34();
  v4 = sub_254FC583C(v137);
  v136 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254FC5888();
  v140 = v8;
  v147 = sub_254FF17E4();
  v9 = sub_254FC583C(v147);
  v144 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254FC5888();
  v143 = v13;
  v14 = sub_254FC0048(&qword_27F76CC40, &qword_254FF3F30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_254FDE4EC();
  v146 = v16;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v17);
  v157 = v135 - v18;
  v19 = sub_254FF1CB4();
  v20 = sub_254FC583C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_254FDE4EC();
  v149 = v25;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v26);
  sub_254FDCE60();
  v138 = v27;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v28);
  sub_254FDCE60();
  v145 = v29;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v30);
  v32 = v135 - v31;
  v160 = sub_254FF1EB4();
  v33 = sub_254FC583C(v160);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_254FDE4EC();
  v158 = v38;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v39);
  sub_254FDCE60();
  v141 = v40;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v41);
  sub_254FDCE60();
  v142 = v42;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v43);
  sub_254FDCE60();
  v148 = v44;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v45);
  v47 = v135 - v46;
  sub_254FF1D14();
  v48 = v19;
  v153 = *(v22 + 16);
  v154 = v22 + 16;
  v153(v32, a1, v19);
  v49 = sub_254FF1EA4();
  v50 = sub_254FF2164();
  v51 = sub_254FDE584(v50);
  v159 = v35;
  v156 = v22;
  if (v51)
  {
    v52 = sub_254FDE56C();
    v53 = swift_slowAlloc();
    v135[1] = a1;
    v54 = v53;
    v161 = v53;
    *v52 = 136642819;
    v55 = sub_254FF1C94();
    v56 = v22;
    v58 = v57;
    v155 = *(v56 + 8);
    v155(v32, v48);
    v59 = sub_254FC4454(v55, v58, &v161);
    v60 = v157;

    *(v52 + 4) = v59;
    _os_log_impl(&dword_254FBD000, v49, v50, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeout request: %{sensitive}s", v52, 0xCu);
    sub_254FC49C4(v54);
    sub_254FDE524();
    sub_254FDE524();

    v61 = *(v159 + 8);
    v61(v47, v160);
    v62 = v48;
  }

  else
  {

    v155 = *(v22 + 8);
    v155(v32, v48);
    v61 = *(v35 + 8);
    v61(v47, v160);
    v62 = v48;
    v60 = v157;
  }

  v63 = v150[4];
  sub_254FC3908(v150, v150[3]);
  v64 = v152;
  v65 = sub_254FF1D94();
  v66 = v64;
  if (v64)
  {
    v67 = v149;
LABEL_19:
    sub_254FF1D14();
    v109 = sub_254FDE4D8();
    v110(v109);
    v111 = v66;
    v112 = sub_254FF1EA4();
    v113 = v62;
    v114 = sub_254FF2174();

    if (os_log_type_enabled(v112, v114))
    {
      v115 = v67;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v152 = v61;
      v161 = v117;
      *v116 = 136315395;
      swift_getErrorValue();
      v118 = sub_254FF2394();
      v120 = sub_254FC4454(v118, v119, &v161);

      *(v116 + 4) = v120;
      *(v116 + 12) = 2085;
      v121 = sub_254FF1C94();
      v123 = v122;
      sub_254FDE548();
      v124(v115, v113);
      v125 = sub_254FC4454(v121, v123, &v161);

      *(v116 + 14) = v125;
      _os_log_impl(&dword_254FBD000, v112, v114, "LiveGlobalKnowledgeQuerySource callPegasusProxyWithTimeout error: %s, request: %{sensitive}s", v116, 0x16u);
      swift_arrayDestroy();
      sub_254FDE524();
      sub_254FDE524();

      v152(v158, v160);
    }

    else
    {

      sub_254FDE548();
      v126(v67, v113);
      v127 = sub_254FDE53C();
      (v61)(v127);
    }

    return swift_willThrow();
  }

  v68 = v60;
  if (v65)
  {
    v69 = v148;
    sub_254FF1D14();
    v70 = v145;
    v71 = sub_254FDE4D8();
    v72(v71);
    v73 = sub_254FF1EA4();
    v74 = sub_254FF2174();
    if (sub_254FDE584(v74))
    {
      sub_254FDE56C();
      v75 = sub_254FDE59C();
      v152 = v61;
      v76 = v75;
      v161 = v75;
      *v70 = 136642819;
      sub_254FF1C94();
      v77 = sub_254FDE500();
      v78(v77);
      sub_254FC4454(v61, v62, &v161);
      sub_254FDE5DC();
      *(v70 + 4) = v69;
      sub_254FDE5BC(&dword_254FBD000, v79, v80, "LiveGlobalKnowledgeQuerySource callPegasusProxyWithTimeout timeout from Pegasus proxy for request: %{sensitive}s");
      sub_254FC49C4(v76);
      v68 = v157;
      v61 = v152;
      sub_254FDE524();
      sub_254FDE524();

      v81 = v148;
    }

    else
    {

      sub_254FDE548();
      v97(v70, v62);
      v81 = sub_254FDE53C();
    }

    v61(v81, v160);
    v67 = v149;
    sub_254FDE14C();
    v66 = sub_254FDE554();
    *v98 = 1;
LABEL_18:
    swift_willThrow();
    sub_254FC8740(v68, &qword_27F76CC40, &qword_254FF3F30);
    goto LABEL_19;
  }

  v82 = v146;
  sub_254FDE0DC(v60, v146);
  v83 = v147;
  if (sub_254FC5364(v82, 1, v147) == 1)
  {
    sub_254FC8740(v82, &qword_27F76CC40, &qword_254FF3F30);
    v84 = v141;
    sub_254FF1D14();
    v85 = v138;
    v86 = sub_254FDE4D8();
    v87(v86);
    v88 = sub_254FF1EA4();
    v89 = sub_254FF2174();
    if (sub_254FDE584(v89))
    {
      sub_254FDE56C();
      v90 = sub_254FDE59C();
      v152 = v61;
      v91 = v90;
      v161 = v90;
      *v85 = 136642819;
      sub_254FF1C94();
      v92 = sub_254FDE500();
      v93(v92);
      sub_254FC4454(v61, v62, &v161);
      sub_254FDE5DC();
      *(v85 + 4) = v84;
      sub_254FDE5BC(&dword_254FBD000, v94, v95, "LiveGlobalKnowledgeQuerySource callPegasusProxyWithTimeout received nil response from Pegasus proxy for request: %{sensitive}s");
      sub_254FC49C4(v91);
      v68 = v157;
      v61 = v152;
      sub_254FDE524();
      sub_254FDE524();

      v96 = v141;
    }

    else
    {

      sub_254FDE548();
      v107(v85, v62);
      v96 = sub_254FDE53C();
    }

    v61(v96, v160);
    v67 = v149;
    sub_254FDE14C();
    v66 = sub_254FDE554();
    *v108 = 0;
    goto LABEL_18;
  }

  v99 = v144;
  v100 = v139;
  (*(v144 + 32))(v139, v82, v83);
  sub_254FF1D14();
  v101 = v143;
  (*(v99 + 16))(v143, v100, v83);
  v102 = sub_254FF1EA4();
  v103 = sub_254FF2164();
  if (sub_254FDE584(v103))
  {
    v104 = v61;
    v105 = sub_254FDE56C();
    v106 = swift_slowAlloc();
    v161 = v106;
    *v105 = 136642819;
    sub_254FF1D24();
    sub_254FDE1A0();
    v130 = sub_254FF1D44();
    v132 = v131;
    (*(v136 + 8))(v140, v137);
    (*(v144 + 8))(v143, v147);
    v133 = sub_254FC4454(v130, v132, &v161);

    *(v105 + 4) = v133;
    _os_log_impl(&dword_254FBD000, v102, v103, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeout response: %{sensitive}s", v105, 0xCu);
    sub_254FC49C4(v106);
    sub_254FDE524();
    sub_254FDE524();

    v104(v142, v160);
    v134 = v157;
  }

  else
  {

    (*(v99 + 8))(v101, v83);
    v129 = sub_254FDE53C();
    (v61)(v129);
    v134 = v68;
  }

  return sub_254FC8740(v134, &qword_27F76CC40, &qword_254FF3F30);
}

void LiveGlobalKnowledgeQuerySource.callPegasusProxyWithTimeoutAndRetry(request:timeoutMs:maxRetries:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v60 = a1;
  v61 = a2;
  v59 = a4;
  v9 = sub_254FF1EB4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v62 = a3;
  if (a3 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v54 = v17;
    v55 = &v53 - v16;
    v19 = 0;
    v20 = 0;
    v21 = (v15 + 8);
    *&v18 = 138412290;
    v57 = v18;
    v58 = (v15 + 8);
    v56 = v9;
    while (v62 != v19)
    {
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      LiveGlobalKnowledgeQuerySource.callPegasusProxyWithTimeout(request:timeoutMs:)(v60, v61, v59);
      if (!v6)
      {
        v44 = v20;
        goto LABEL_23;
      }

      v64 = v6;
      v22 = v6;
      sub_254FC0048(&qword_27F76CC58, &qword_254FF3F38);
      if (!swift_dynamicCast())
      {
        goto LABEL_22;
      }

      v23 = v63;
      if (v63 > 1u)
      {
        v45 = v54;
        sub_254FF1D14();
        v46 = sub_254FF1EA4();
        v47 = sub_254FF2174();
        if (sub_254FDE584(v47))
        {
          v48 = sub_254FDE56C();
          v49 = swift_slowAlloc();
          *v48 = v57;
          sub_254FDE14C();
          sub_254FDE554();
          *v50 = v23;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_254FBD000, v46, v47, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeoutAndRetry non retryable error: %@", v48, 0xCu);
          sub_254FC8740(v49, &qword_27F76CBE0, &qword_254FF3F40);
          sub_254FDE524();
          sub_254FDE524();
        }

        (*v21)(v45, v9);
        sub_254FDE14C();
        sub_254FDE554();
        *v52 = v23;
        swift_willThrow();
LABEL_22:

        v44 = v64;
LABEL_23:

        return;
      }

      sub_254FF1D14();
      v24 = sub_254FF1EA4();
      v25 = sub_254FF2174();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = sub_254FDE56C();
        v27 = v7;
        v28 = v20;
        v29 = swift_slowAlloc();
        *v26 = v57;
        sub_254FDE14C();
        sub_254FDE554();
        *v30 = v23;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_254FBD000, v24, v25, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeoutAndRetry retrying due to error: %@", v26, 0xCu);
        sub_254FC8740(v29, &qword_27F76CBE0, &qword_254FF3F40);
        v20 = v28;
        v7 = v27;
        sub_254FDE524();
        v9 = v56;
        v21 = v58;
        sub_254FDE524();
      }

      (*v21)(v14, v9);
      sub_254FDE14C();
      v32 = sub_254FDE554();
      *v33 = v23;

      v6 = 0;
      ++v19;
      v20 = v32;
    }

    v34 = v55;
    sub_254FF1D14();
    v35 = v20;
    v36 = sub_254FF1EA4();
    v37 = sub_254FF2174();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_254FDE56C();
      v39 = swift_slowAlloc();
      *v38 = v57;
      if (!v20)
      {
        sub_254FDE14C();
        sub_254FDE554();
        *v40 = 4;
      }

      v41 = v20;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v42;
      *v39 = v42;
      _os_log_impl(&dword_254FBD000, v36, v37, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeoutAndRetry all retries failed. Returning last retryable error: %@", v38, 0xCu);
      sub_254FC8740(v39, &qword_27F76CBE0, &qword_254FF3F40);
      sub_254FDE524();
      sub_254FDE524();
    }

    (*v58)(v34, v9);
    if (!v20)
    {
      sub_254FDE14C();
      sub_254FDE554();
      *v43 = 4;
    }

    swift_willThrow();
  }
}

uint64_t sub_254FDE0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CC40, &qword_254FF3F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254FDE14C()
{
  result = qword_27F76CC48;
  if (!qword_27F76CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC48);
  }

  return result;
}

unint64_t sub_254FDE1A0()
{
  result = qword_27F76CC50;
  if (!qword_27F76CC50)
  {
    sub_254FF17E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC50);
  }

  return result;
}

unint64_t sub_254FDE1FC()
{
  result = qword_27F76CC60;
  if (!qword_27F76CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveGlobalKnowledgeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledgeError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x254FDE3A4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 sub_254FDE42C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254FDE440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_254FDE480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254FDE4D8()
{
  result = v0;
  v4 = *(v1 - 184);
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_254FDE500()
{
  v2 = *(v1 - 168);
  v3 = *(v1 - 160) + 8;
  return v0;
}

void sub_254FDE524()
{

  JUMPOUT(0x259C32150);
}

uint64_t sub_254FDE554()
{

  return swift_allocError();
}

uint64_t sub_254FDE56C()
{

  return swift_slowAlloc();
}

BOOL sub_254FDE584(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_254FDE59C()
{

  return swift_slowAlloc();
}

void sub_254FDE5BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_254FDE5DC()
{
}

uint64_t Location.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Location.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Location.addressString.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Location.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x80uLL);
  memcpy(a1, (v1 + 48), 0x80uLL);
  return sub_254FDE6E0(__dst, v4);
}

uint64_t sub_254FDE6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CC68, &qword_254FF40B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Location.latitude.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t Location.longitude.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t sub_254FDE768@<X0>(uint64_t *a1@<X8>)
{
  result = Location.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FDE790(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254FDE7BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_254FDE7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Organization.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Organization.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Organization.domainName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_254FDE910@<X0>(uint64_t *a1@<X8>)
{
  result = Organization.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_254FDE938(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_254FDE94C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_254FDE98C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PublicEvent.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PublicEvent.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PublicEvent.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PublicEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PublicEvent() + 28);

  return sub_254FDCD30(v3, a1);
}

uint64_t type metadata accessor for PublicEvent()
{
  result = qword_27F76CC70;
  if (!qword_27F76CC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254FDEB08@<X0>(uint64_t *a1@<X8>)
{
  result = PublicEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FDEB44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = a1 + *(a3 + 28);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FDEBEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v8 = v5 + *(a4 + 28);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FDEC78()
{
  sub_254FD6F54();
  if (v0 <= 0x3F)
  {
    sub_254FDCCB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Reservation.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_254FBF6B0();
}

uint64_t Reservation.eventName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_254FBF6B0();
}

uint64_t type metadata accessor for Reservation()
{
  result = qword_27F76CCA8;
  if (!qword_27F76CCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Reservation.attendees.getter()
{
  v1 = *(v0 + *(type metadata accessor for Reservation() + 32));
}

uint64_t Reservation.location.getter()
{
  v0 = sub_254FDFCA8();
  v1 = *(v0 + 36);
  sub_254FDFCDC(v0, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v11[0]);
  sub_254FDFCC0();
  return sub_254FDF09C(v11, v10, &qword_27F76CC80, "45");
}

uint64_t Reservation.startingLocation.getter()
{
  v0 = sub_254FDFCA8();
  v1 = *(v0 + 40);
  sub_254FDFCDC(v0, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v11[0]);
  sub_254FDFCC0();
  return sub_254FDF09C(v11, v10, &qword_27F76CC80, "45");
}

uint64_t Reservation.endLocation.getter()
{
  v0 = sub_254FDFCA8();
  v1 = *(v0 + 44);
  sub_254FDFCDC(v0, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v11[0]);
  sub_254FDFCC0();
  return sub_254FDF09C(v11, v10, &qword_27F76CC80, "45");
}

uint64_t Reservation.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for Reservation() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t Reservation.bookingProvider.getter()
{
  v0 = type metadata accessor for Reservation();
  sub_254FDFC80(*(v0 + 60));
  return sub_254FBF6B0();
}

uint64_t Reservation.businessName.getter()
{
  v0 = type metadata accessor for Reservation();
  sub_254FDFC80(*(v0 + 64));
  return sub_254FBF6B0();
}

uint64_t sub_254FDF09C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_254FC0048(a3, a4) - 8) + 16);
  v6 = sub_254FBF6B0();
  v7(v6);
  return a2;
}

uint64_t Reservation.phoneNumber.getter()
{
  v0 = type metadata accessor for Reservation();
  sub_254FDFC80(*(v0 + 76));
  return sub_254FBF6B0();
}

uint64_t Reservation.reservationId.getter()
{
  v0 = type metadata accessor for Reservation();
  sub_254FDFC80(*(v0 + 80));
  return sub_254FBF6B0();
}

uint64_t Reservation.confirmationNumber.getter()
{
  v0 = type metadata accessor for Reservation();
  sub_254FDFC80(*(v0 + 84));
  return sub_254FBF6B0();
}

uint64_t Reservation.status.getter()
{
  v0 = type metadata accessor for Reservation();
  sub_254FDFC80(*(v0 + 88));
  return sub_254FBF6B0();
}

uint64_t Reservation.seatNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for Reservation() + 92));
}

uint64_t Reservation.roomNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for Reservation() + 96));
}

uint64_t sub_254FDF228@<X0>(uint64_t *a1@<X8>)
{
  result = Reservation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatformDataActions::ReservationType_optional __swiftcall ReservationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReservationType.rawValue.getter()
{
  result = 0x746867696C66;
  switch(*v0)
  {
    case 1:
      result = 0x6C65746F68;
      break;
    case 2:
      result = 0x72656E6E6964;
      break;
    case 3:
      result = 0x726F70736E617274;
      break;
    case 4:
      result = 0x656C6369686576;
      break;
    case 5:
      result = 2003789939;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254FDF384()
{
  result = qword_27F76CC90;
  if (!qword_27F76CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC90);
  }

  return result;
}

uint64_t sub_254FDF3FC@<X0>(uint64_t *a1@<X8>)
{
  result = ReservationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254FDF428()
{
  result = qword_27F76CC98;
  if (!qword_27F76CC98)
  {
    sub_254FC5448(&qword_27F76CCA0, &qword_254FF43B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC98);
  }

  return result;
}

uint64_t sub_254FDF4B0(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_254FC0048(&qword_27F76C888, &unk_254FF3130);
    v9 = sub_254FDFC9C(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
      v14 = sub_254FDFC9C(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[13];
      }

      else
      {
        v16 = sub_254FC0048(&qword_27F76CC88, ",5");
        v17 = sub_254FDFC9C(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[17];
        }

        else
        {
          v11 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
          v12 = a3[18];
        }
      }
    }

    return sub_254FC5364(a1 + v12, a2, v11);
  }
}

uint64_t sub_254FDF63C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_254FC0048(&qword_27F76C888, &unk_254FF3130);
    v9 = sub_254FDFC9C(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
      v14 = sub_254FDFC9C(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[13];
      }

      else
      {
        v16 = sub_254FC0048(&qword_27F76CC88, ",5");
        v17 = sub_254FDFC9C(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[17];
        }

        else
        {
          v11 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
          v12 = a4[18];
        }
      }
    }

    return sub_254FC4BB8(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_254FDF7B0()
{
  sub_254FDFAC8(319, &qword_27F76CCB8, MEMORY[0x277CB9DB8], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_254FDFAC8(319, &qword_27F76CCC0, MEMORY[0x277CB9DB8], MEMORY[0x277D83940]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_254FDFB2C(319, &qword_27F76CCC8, &type metadata for Location, MEMORY[0x277D83D88]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_254FDFB2C(319, &qword_27F76CCD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_254FDFAC8(319, &qword_27F76CB58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_254FDFB2C(319, &qword_27F76CB60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_254FDFAC8(319, &qword_27F76CCD8, MEMORY[0x277CBA1B8], MEMORY[0x277D83D88]);
              if (v14 > 0x3F)
              {
                return v13;
              }

              sub_254FDFAC8(319, &qword_27F76C960, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
              if (v15 > 0x3F)
              {
                return v13;
              }

              else
              {
                sub_254FDFB2C(319, &qword_27F76CCE0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                v1 = v16;
                if (v17 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_254FDFAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_254FDFB2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReservationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x254FDFC48);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254FDFC80@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_254FDFCA8()
{

  return type metadata accessor for Reservation();
}

void *sub_254FDFCC0()
{

  return memcpy(v0, (v1 + v2), 0xC9uLL);
}

void *sub_254FDFCDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char __dst)
{

  return memcpy(&__dst, (v35 + v36), 0xC9uLL);
}

uint64_t sub_254FDFCF8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_254FDF09C(v4 + a3, v3, a1, a2);
}

uint64_t Software.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Software.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Software.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Software.publisher.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_254FDFDBC(v2, v3);
}

uint64_t sub_254FDFDBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_254FDFE0C@<X0>(uint64_t *a1@<X8>)
{
  result = Software.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatformDataActions::SoftwareCategory_optional __swiftcall SoftwareCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SoftwareCategory.rawValue.getter()
{
  result = 0x73656D6147;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6961747265746E45;
      break;
    case 3:
      result = 0x6976697461657243;
      break;
    case 4:
      result = 0x69746375646F7250;
      break;
    case 5:
      result = 0x6F69746163756445;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x726568744FLL;
      break;
    case 9:
      result = 0x656974696C697455;
      break;
    case 0xA:
      result = 0x6D6574737953;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x6C6576617254;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254FE0048(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_254FF0074();
}

unint64_t sub_254FE0058()
{
  result = qword_27F76CCE8;
  if (!qword_27F76CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CCE8);
  }

  return result;
}

unint64_t sub_254FE00D0@<X0>(unint64_t *a1@<X8>)
{
  result = SoftwareCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254FE00FC()
{
  result = qword_27F76CCF0;
  if (!qword_27F76CCF0)
  {
    sub_254FC5448(&qword_27F76CCF8, &qword_254FF45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CCF0);
  }

  return result;
}

uint64_t sub_254FE0170(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254FE0188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_254FE01C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SoftwareCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SoftwareCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x254FE0384);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

void sub_254FE03BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v34 = MEMORY[0x277D84F90];
  v8 = a1 + 40;
  v33 = a1 + 40;
LABEL_2:
  for (i = (v8 + 16 * v6); ; i += 2)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= v7)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_24;
    }

    v11 = *(i - 1);
    v10 = *i;
    swift_beginAccess();
    v12 = *a2;
    v13 = *(*a2 + 16);

    if (!v13 || (v14 = sub_254FC4A60(), (v15 & 1) == 0))
    {
      swift_endAccess();

      memset(&v45, 0, 64);
      goto LABEL_16;
    }

    v16 = (*(v12 + 56) + 16 * v14);
    v17 = v16[1];
    v46 = *v16;
    swift_endAccess();
    v18 = *a3;
    if (!*(*a3 + 16))
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_13;
    }

    v19 = sub_254FC4A60();
    if (v20)
    {
      v21 = (*(v18 + 56) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
LABEL_13:

      goto LABEL_15;
    }

    v22 = 0;
    v23 = 0;
LABEL_15:
    id._countAndFlagsBits = a4;
    id._object = a5;
    v24._countAndFlagsBits = v46;
    v24._object = v17;
    v25.value._countAndFlagsBits = v22;
    v25.value._object = v23;
    SportsAction.getTeamForId(id:shortName:)(&v45, v24, v25);

    if (v45.value.id._object)
    {
      id = v45.value.id;
      name = v45.value.name;
      league = v45.value.league;
      imageData = v45.value.imageData;
      v26 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v34 + 16);
        sub_254FC4070();
        v26 = v31;
      }

      v8 = v33;
      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_254FC4070();
        v26 = v32;
      }

      v39 = league;
      v40 = imageData;
      v28 = id;
      v38 = name;
      *(v26 + 16) = v27 + 1;
      v34 = v26;
      v29 = (v26 + (v27 << 6));
      v29[4] = v39;
      v29[5] = v40;
      v29[2] = v28;
      v29[3] = v38;
      ++v6;
      goto LABEL_2;
    }

LABEL_16:
    id = v45.value.id;
    name = v45.value.name;
    league = v45.value.league;
    imageData = v45.value.imageData;
    sub_254FC538C(&id, &qword_27F76CD80, &qword_254FF47C8);
    ++v6;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_254FE065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_254FC0048(&qword_27F76CD38, "B1");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SportsAction.CacheEntry();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_254FC5364(a1, 1, v16) == 1)
  {
    sub_254FC538C(a1, &qword_27F76CD38, "B1");
    sub_254FE95E0(v11);

    return sub_254FC538C(v11, &qword_27F76CD38, "B1");
  }

  else
  {
    sub_254FEDBC0();
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_254FE9728(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_254FE07FC()
{
  v0 = sub_254FE9880(&unk_286730B08);
  if (qword_27F76C790 != -1)
  {
    swift_once();
  }

  qword_27F76CD00 = v0;
  *algn_27F76CD08 = qword_27F76C9A0;
}

uint64_t SportsAction.init(dataActionsQueryService:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_254FE9880(&unk_286730B48);
  v5 = result;
  if (!v3)
  {
    if (qword_27F76C790 != -1)
    {
      swift_once();
    }

    v3 = qword_27F76C9A0;
  }

  *a2 = v5;
  a2[1] = v3;
  return result;
}

uint64_t static SportsAction.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F76C7B8 != -1)
  {
    swift_once();
  }

  v2 = *algn_27F76CD08;
  *a1 = qword_27F76CD00;
  a1[1] = v2;
}

uint64_t sub_254FE0978()
{
  type metadata accessor for SportsAction.CacheStorage();
  v0 = swift_allocObject();
  type metadata accessor for SportsAction.CacheEntry();
  result = sub_254FF1EE4();
  *(v0 + 16) = result;
  off_27F76CD10 = v0;
  return result;
}

uint64_t sub_254FE09E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_254FE0A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - v6;
  v7 = sub_254FF1CF4();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_254FF1D04();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_254FF1CE4();
  v12 = *(v63 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_254FF1CD4();
  v16 = *(v68 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v68);
  v64 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v20;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v59 = a2;
  if (v22)
  {
    v69 = MEMORY[0x277D84F90];
    sub_254FC4DF8(0, v22, 0);
    v24 = v69;
    LODWORD(v62) = *MEMORY[0x277D1F358];
    v61 = *(v12 + 104);
    *&v60 = v16 + 32;
    v25 = (a1 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      (v61)(v15, v62, v63);

      sub_254FF1CC4();
      v69 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_254FC4DF8(v28 > 1, v29 + 1, 1);
        v24 = v69;
      }

      *(v24 + 16) = v29 + 1;
      (*(v16 + 32))(v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v29, v21, v68);
      v25 += 2;
      --v22;
    }

    while (v22);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v30 = *(v24 + 16);
  if (v30)
  {
    v69 = v23;
    sub_254FC4DD8(0, v30, 0);
    v32 = v68;
    v31 = v69;
    v34 = *(v16 + 16);
    v33 = v16 + 16;
    v35 = v24 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v62 = *(v33 + 56);
    v63 = v34;
    v61 = (v33 - 8);
    v60 = xmmword_254FF3720;
    v36 = v67;
    do
    {
      v38 = v63;
      v37 = v64;
      v63(v64, v35, v32);
      v39 = *(v66 + 48);
      v38(v36, v37, v32);
      sub_254FC0048(&qword_27F76CD88, &qword_254FF47D0);
      v40 = *(sub_254FF1C84() - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v60;
      v36 = v67;
      sub_254FF1C34();
      v44 = sub_254FE9B28(v43);
      (*v61)(v37, v32);
      *&v36[v39] = v44;
      v69 = v31;
      v46 = *(v31 + 16);
      v45 = *(v31 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_254FC4DD8(v45 > 1, v46 + 1, 1);
        v31 = v69;
      }

      *(v31 + 16) = v46 + 1;
      v47 = v31 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v48 = *(v65 + 72);
      sub_254FC57C8();
      v35 += v62;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  sub_254FE108C(v31);
  v50 = v54;
  v49 = v55;
  *v54 = 0xD000000000000041;
  v50[1] = 0x8000000254FF61F0;
  (*(v53 + 104))(v50, *MEMORY[0x277D1F3B0], v49);
  (*(v57 + 104))(v56, *MEMORY[0x277D1F368], v58);
  return sub_254FF1CA4();
}

uint64_t sub_254FE108C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_254FC0048(&qword_27F76CD90, &qword_254FF47D8);
    v2 = sub_254FF2304();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_254FE9E6C(a1, 1, &v4);
  return v4;
}

uint64_t sub_254FE1134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v55 - v6;
  v7 = sub_254FF1CF4();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_254FF1D04();
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_254FF1CE4();
  v12 = *(v67 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v67);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_254FF1CD4();
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v72);
  v68 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v62 = a2;
  if (v22)
  {
    v73 = MEMORY[0x277D84F90];
    sub_254FC4DF8(0, v22, 0);
    v24 = v73;
    LODWORD(v66) = *MEMORY[0x277D1F360];
    v26 = *(v12 + 104);
    v25 = v12 + 104;
    v64 = (v16 + 32);
    v65 = v26;
    v27 = (a1 + 40);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v30 = v25;
      v65(v15, v66, v67);

      sub_254FF1CC4();
      v73 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_254FC4DF8(v31 > 1, v32 + 1, 1);
        v24 = v73;
      }

      *(v24 + 16) = v32 + 1;
      (*(v16 + 32))(v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v32, v21, v72);
      v27 += 2;
      --v22;
      v25 = v30;
    }

    while (v22);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v33 = *(v24 + 16);
  if (v33)
  {
    v73 = v23;
    sub_254FC4DD8(0, v33, 0);
    v34 = v73;
    v36 = *(v16 + 16);
    v35 = v16 + 16;
    v37 = v24 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v65 = *(v35 + 56);
    v66 = v36;
    v67 = v35;
    v64 = (v35 - 8);
    v63 = xmmword_254FF46D0;
    v38 = v71;
    v39 = v68;
    do
    {
      v40 = v72;
      v41 = v66;
      v66(v39, v37, v72);
      v42 = *(v70 + 48);
      v41(v38, v39, v40);
      sub_254FC0048(&qword_27F76CD88, &qword_254FF47D0);
      v43 = *(sub_254FF1C84() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v63;
      sub_254FF1C74();
      sub_254FF1C44();
      sub_254FF1C64();
      v38 = v71;
      sub_254FF1C54();
      v47 = sub_254FE9B28(v46);
      (*v64)(v39, v40);
      *&v38[v42] = v47;
      v73 = v34;
      v49 = *(v34 + 16);
      v48 = *(v34 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_254FC4DD8(v48 > 1, v49 + 1, 1);
        v34 = v73;
      }

      *(v34 + 16) = v49 + 1;
      v50 = v34 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v51 = *(v69 + 72);
      sub_254FC57C8();
      v37 += v65;
      --v33;
    }

    while (v33);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  sub_254FE108C(v34);
  v53 = v57;
  v52 = v58;
  *v57 = 0xD000000000000041;
  v53[1] = 0x8000000254FF61F0;
  (*(v56 + 104))(v53, *MEMORY[0x277D1F3B0], v52);
  (*(v60 + 104))(v59, *MEMORY[0x277D1F368], v61);
  return sub_254FF1CA4();
}

void sub_254FE17D8(uint64_t a1@<X8>)
{
  v4 = sub_254FF1EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  os_unfair_lock_lock((v9 + 24));
  sub_254FC827C((v9 + 16), &v15);
  if (v2)
  {
    os_unfair_lock_unlock((v9 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
    v18[0] = v15;
    v18[1] = v16;
    v19 = v17;
    if (*(&v16 + 1))
    {
      sub_254FC38F0(v18, a1);
    }

    else
    {
      sub_254FC538C(v18, &qword_27F76C9B0, &unk_254FF3640);
      sub_254FF1D14();
      v10 = sub_254FF1EA4();
      v11 = sub_254FF2164();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_254FBD000, v10, v11, "SportsAction: processEventDetails: liveGlobalKnowledgeQuerySource is nil", v12, 2u);
        MEMORY[0x259C32150](v12, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      sub_254FDE14C();
      swift_allocError();
      *v13 = 2;
      swift_willThrow();
    }
  }
}

void sub_254FE19CC(uint64_t a1@<X8>)
{
  v4 = sub_254FF1EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  os_unfair_lock_lock((v9 + 24));
  sub_254FC80C0((v9 + 16), &v15);
  if (v2)
  {
    os_unfair_lock_unlock((v9 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
    v18[0] = v15;
    v18[1] = v16;
    v19 = v17;
    if (*(&v16 + 1))
    {
      sub_254FC38F0(v18, a1);
    }

    else
    {
      sub_254FC538C(v18, &qword_27F76C840, &qword_254FF4810);
      sub_254FF1D14();
      v10 = sub_254FF1EA4();
      v11 = sub_254FF2164();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_254FBD000, v10, v11, "SportsAction: processEventDetails: sqlConnection is nil", v12, 2u);
        MEMORY[0x259C32150](v12, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      sub_254FC389C();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_254FE1BBC(uint64_t a1)
{
  v3 = v2;
  v459 = a1;
  v4 = sub_254FC0048(&qword_27F76CD50, &unk_254FF47A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v388 = &v370 - v6;
  v387 = type metadata accessor for SportsEvent();
  v383 = *(v387 - 8);
  v7 = *(v383 + 64);
  v8 = MEMORY[0x28223BE20](v387);
  v390 = &v370 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v384 = &v370 - v10;
  v418 = sub_254FF1614();
  v394 = *(v418 - 8);
  v11 = *(v394 + 64);
  v12 = MEMORY[0x28223BE20](v418);
  v386 = &v370 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v392 = &v370 - v14;
  v15 = sub_254FF17B4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v445 = &v370 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = sub_254FF1C84();
  *&v461 = *(v458 - 8);
  v18 = *(v461 + 64);
  v19 = MEMORY[0x28223BE20](v458);
  v423 = &v370 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v425 = &v370 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v444 = &v370 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v457 = &v370 - v26;
  MEMORY[0x28223BE20](v25);
  v476 = &v370 - v27;
  v429 = sub_254FF1684();
  v446 = *(v429 - 8);
  v28 = *(v446 + 64);
  MEMORY[0x28223BE20](v429);
  v456 = &v370 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v393 = &v370 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v430 = &v370 - v35;
  MEMORY[0x28223BE20](v34);
  v421 = &v370 - v36;
  v411 = sub_254FF1744();
  v396 = *(v411 - 8);
  v37 = *(v396 + 64);
  MEMORY[0x28223BE20](v411);
  v410 = &v370 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v419 = sub_254FF1814();
  v439 = *(v419 - 8);
  v39 = *(v439 + 8);
  MEMORY[0x28223BE20](v419);
  v428 = &v370 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = sub_254FF1EB4();
  v397 = *(v398 - 8);
  v41 = *(v397 + 64);
  v42 = MEMORY[0x28223BE20](v398);
  v391 = &v370 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v399 = &v370 - v45;
  MEMORY[0x28223BE20](v44);
  v395 = &v370 - v46;
  v406 = sub_254FF16C4();
  v455 = *(v406 - 8);
  v47 = *(v455 + 64);
  MEMORY[0x28223BE20](v406);
  v405 = &v370 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_254FC0048(&qword_27F76CD58, &qword_254FF47B0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v426 = (&v370 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x28223BE20](v51);
  *&v420 = &v370 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v422 = &v370 - v56;
  MEMORY[0x28223BE20](v55);
  v443 = &v370 - v57;
  v460 = sub_254FF1794();
  *&v454 = *(v460 - 8);
  v58 = *(v454 + 64);
  v59 = MEMORY[0x28223BE20](v460);
  v409 = &v370 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v436 = &v370 - v62;
  MEMORY[0x28223BE20](v61);
  v451 = &v370 - v63;
  v447 = sub_254FF16A4();
  v448 = *(v447 - 8);
  v64 = *(v448 + 64);
  v65 = MEMORY[0x28223BE20](v447);
  v389 = &v370 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v408 = &v370 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v404 = &v370 - v70;
  MEMORY[0x28223BE20](v69);
  v434 = (&v370 - v71);
  v433 = sub_254FF1834();
  *&v438 = *(v433 - 8);
  v72 = *(v438 + 64);
  MEMORY[0x28223BE20](v433);
  *&v432 = &v370 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_254FF17A4();
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x28223BE20](v74 - 8);
  v401 = &v370 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  *&v450 = &v370 - v78;
  v415 = sub_254FF1C14();
  v441 = *(v415 - 8);
  v79 = *(v441 + 64);
  v80 = MEMORY[0x28223BE20](v415);
  v400 = &v370 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v452 = &v370 - v83;
  MEMORY[0x28223BE20](v82);
  *&v449 = &v370 - v84;
  v424 = sub_254FF1724();
  v453 = *(v424 - 8);
  v85 = *(v453 + 64);
  v86 = MEMORY[0x28223BE20](v424);
  v385 = &v370 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v417 = &v370 - v89;
  MEMORY[0x28223BE20](v88);
  v462 = &v370 - v90;
  v91 = sub_254FF17E4();
  v402 = *(v91 - 8);
  v92 = *(v402 + 64);
  MEMORY[0x28223BE20](v91);
  v94 = &v370 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_254FF1CB4();
  v96 = *(v95 - 8);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v99 = &v370 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v1[1];
  *&v469 = *v1;
  v101 = v469;
  *(&v469 + 1) = v100;
  sub_254FE1134(v459, v99);
  *&v465 = v101;
  *(&v465 + 1) = v100;
  sub_254FE17D8(&v469);
  if (v2)
  {
    return (*(v96 + 8))(v99, v95);
  }

  v372 = v100;
  v373 = v101;
  v377 = v91;
  v380 = v96;
  v382 = v95;
  v103 = *(&v470 + 1);
  v104 = v471;
  sub_254FC3908(&v469, *(&v470 + 1));
  (*(v104 + 8))(v99, v103, v104);
  v371 = v99;
  sub_254FC49C4(&v469);
  v379 = sub_254FF1EE4();
  v475 = v379;
  v374 = sub_254FF1EE4();
  v474 = v374;
  v375 = v94;
  v105 = sub_254FF17D4();
  v106 = 0;
  v435 = *(v105 + 16);
  v107 = v453;
  v442 = v453 + 16;
  v437 = (v441 + 8);
  v441 = v453 + 8;
  v414 = v438 + 16;
  v427 = (v448 + 8);
  v413 = v438 + 8;
  v412 = v454 + 16;
  v381 = *MEMORY[0x277D38F98];
  v448 = v454 + 8;
  v376 = (v455 + 8);
  v108 = v424;
  v109 = v461;
  v110 = v462;
  v431 = v105;
LABEL_4:
  v111 = v402;
  v112 = v415;
  while (v435 != v106)
  {
    if (v106 >= *(v105 + 16))
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v113 = v105 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v114 = *(v107 + 72);
    v455 = v106;
    (*(v107 + 16))(v110, v113 + v114 * v106, v108);
    sub_254FF1674();
    v115 = v449;
    sub_254FF1BE4();
    if (v3)
    {

      (*v441)(v110, v108);
      (*(v111 + 8))(v375, v377);
      (*(v380 + 8))(v371, v382);
    }

    v116 = v452;
    sub_254FF1BF4();
    sub_254FEDC98(&qword_27F76CD60, MEMORY[0x277D1F200]);
    v117 = v115;
    v118 = sub_254FF1F14();
    v119 = *v437;
    (*v437)(v116, v112);
    v119(v117, v112);
    if (v118)
    {
      v459 = 0;
      *&v416 = sub_254FF16F4();
      v120 = v374;
      v109 = v461;
      v121 = v454;
      v122 = v434;
      v123 = v433;
      v124 = v438;
      v125 = v432;
      v407 = *(v416 + 16);
      if (v407)
      {
        v126 = 0;
        v403 = v416 + ((*(v438 + 80) + 32) & ~*(v438 + 80));
        do
        {
          if (v126 >= *(v416 + 16))
          {
            goto LABEL_167;
          }

          v127 = v125;
          v128 = v123;
          (*(v124 + 16))(v125, v403 + *(v124 + 72) * v126, v123);
          sub_254FF1704();
          v129 = sub_254FF1694();
          v130 = v124;
          v132 = v131;
          (*v427)(v122, v447);
          v133 = sub_254FF1664();
          v440 = v134;
          (*(v130 + 8))(v127, v128);
          v135 = v474;
          swift_isUniquelyReferenced_nonNull_native();
          *&v469 = v135;
          v136 = sub_254FC4A60();
          if (__OFADD__(*(v135 + 16), (v137 & 1) == 0))
          {
            goto LABEL_168;
          }

          v138 = v136;
          v139 = v137;
          sub_254FC0048(&qword_27F76CD68, &qword_254FF47B8);
          if (sub_254FF22A4())
          {
            v140 = sub_254FC4A60();
            v109 = v461;
            if ((v139 & 1) != (v141 & 1))
            {
              goto LABEL_178;
            }

            v138 = v140;
            if ((v139 & 1) == 0)
            {
LABEL_17:
              v120 = v469;
              *(v469 + 8 * (v138 >> 6) + 64) |= 1 << v138;
              v142 = (v120[6] + 16 * v138);
              *v142 = v129;
              v142[1] = v132;
              v143 = (v120[7] + 16 * v138);
              v144 = v440;
              *v143 = v133;
              v143[1] = v144;
              v145 = v120[2];
              v146 = __OFADD__(v145, 1);
              v147 = v145 + 1;
              if (v146)
              {
                goto LABEL_170;
              }

              v120[2] = v147;
              goto LABEL_21;
            }
          }

          else
          {
            v109 = v461;
            if ((v139 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v120 = v469;
          v148 = (*(v469 + 56) + 16 * v138);
          v149 = v148[1];
          v150 = v440;
          *v148 = v133;
          v148[1] = v150;

LABEL_21:
          ++v126;
          v474 = v120;
          v121 = v454;
          v122 = v434;
          v123 = v433;
          v124 = v438;
          v125 = v432;
        }

        while (v407 != v126);
      }

      v374 = v120;

      v110 = v462;
      v151 = sub_254FF16E4();
      v440 = *(v151 + 16);
      if (v440)
      {
        v152 = 0;
        *&v416 = v151 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v3 = v459;
        v108 = v424;
        v407 = v151;
        while (1)
        {
          if (v152 >= *(v151 + 16))
          {
            goto LABEL_169;
          }

          v153 = v416 + *(v121 + 72) * v152;
          v154 = *(v121 + 16);
          v155 = v451;
          v156 = v460;
          v154(v451, v153, v460);
          sub_254FF1784();
          v157 = v443;
          v158 = sub_254FF1774();
          if (sub_254FC5364(v157, 1, v158) == 1)
          {
            (*v448)(v155, v156);
          }

          else
          {
            v159 = v422;
            sub_254FC5770();
            v160 = *(v158 - 8);
            v161 = (*(v160 + 88))(v159, v158);
            if (v161 == v381)
            {
              v162 = v404;
              sub_254FF1704();
              v163 = sub_254FF1694();
              v165 = v164;
              (*v427)(v162, v447);
              v166 = v405;
              sub_254FF1754();
              v378 = sub_254FF1694();
              v379 = v167;
              (*v376)(v166, v406);
              v168 = v475;
              swift_isUniquelyReferenced_nonNull_native();
              *&v469 = v168;
              v403 = v163;
              v169 = v165;
              v170 = sub_254FC4A60();
              if (__OFADD__(*(v168 + 16), (v171 & 1) == 0))
              {
                goto LABEL_172;
              }

              v172 = v170;
              v173 = v171;
              sub_254FC0048(&qword_27F76CD68, &qword_254FF47B8);
              if (sub_254FF22A4())
              {
                v174 = sub_254FC4A60();
                v176 = v460;
                v110 = v462;
                if ((v173 & 1) != (v175 & 1))
                {
                  goto LABEL_178;
                }

                v172 = v174;
                if ((v173 & 1) == 0)
                {
LABEL_32:
                  v177 = v469;
                  *(v469 + 8 * (v172 >> 6) + 64) |= 1 << v172;
                  v178 = (v177[6] + 16 * v172);
                  *v178 = v403;
                  v178[1] = v169;
                  v179 = (v177[7] + 16 * v172);
                  v180 = v379;
                  *v179 = v378;
                  v179[1] = v180;
                  (*v448)(v451, v176);
                  v181 = v177[2];
                  v146 = __OFADD__(v181, 1);
                  v182 = v181 + 1;
                  if (v146)
                  {
                    goto LABEL_175;
                  }

                  v183 = v177;
                  v177[2] = v182;
                  goto LABEL_37;
                }
              }

              else
              {
                v176 = v460;
                v110 = v462;
                if ((v173 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              v184 = v469;
              v185 = (*(v469 + 56) + 16 * v172);
              v186 = v185[1];
              v187 = v379;
              *v185 = v378;
              v185[1] = v187;

              (*v448)(v451, v176);
              v183 = v184;
LABEL_37:
              v3 = v459;
              v108 = v424;
              v109 = v461;
              v157 = v443;
              v379 = v183;
              v475 = v183;
              (*(v160 + 8))(v422, v158);
              goto LABEL_38;
            }

            (*v448)(v451, v460);
            (*(v160 + 8))(v159, v158);
          }

LABEL_38:
          ++v152;
          sub_254FC538C(v157, &qword_27F76CD58, &qword_254FF47B0);
          v121 = v454;
          v151 = v407;
          if (v440 == v152)
          {
            goto LABEL_41;
          }
        }
      }

      v3 = v459;
      v108 = v424;
LABEL_41:
      v106 = v455 + 1;

      (*v441)(v110, v108);
      v107 = v453;
      v105 = v431;
      goto LABEL_4;
    }

    v110 = v462;
    (*v441)(v462, v108);
    v106 = v455 + 1;
    v107 = v453;
    v109 = v461;
    v105 = v431;
  }

  v188 = v395;
  sub_254FF1D14();
  v189 = sub_254FF1EA4();
  v190 = sub_254FF2164();
  v191 = os_log_type_enabled(v189, v190);
  v192 = &unk_254FF3000;
  v459 = v3;
  if (v191)
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    *&v469 = v194;
    *v193 = 136642819;

    v195 = sub_254FF1ED4();
    v197 = v196;
    v192 = &unk_254FF3000;

    v198 = sub_254FC4454(v195, v197, &v469);

    *(v193 + 4) = v198;
    _os_log_impl(&dword_254FBD000, v189, v190, "SportsAction: teamSbIdToUmcId: %{sensitive}s", v193, 0xCu);
    sub_254FC49C4(v194);
    MEMORY[0x259C32150](v194, -1, -1);
    MEMORY[0x259C32150](v193, -1, -1);
  }

  v435 = *(v397 + 8);
  v435(v188, v398);
  v199 = v399;
  v200 = v420;
  v201 = v396;
  v202 = sub_254FF1EE4();
  v203 = sub_254FF17C4();
  v204 = *(v203 + 16);
  v205 = v428;
  if (v204)
  {
    v462 = *(v439 + 2);
    v206 = (*(v439 + 80) + 32) & ~*(v439 + 80);
    v434 = v203;
    v207 = v203 + v206;
    v455 = *(v439 + 9);
    *&v454 = v439 + 8;
    *&v438 = v201 + 8;
    LODWORD(v449) = *MEMORY[0x277D38FA0];
    v208 = v419;
    v209 = v436;
    v439 = (v439 + 16);
    do
    {
      (v462)(v205, v207, v208);
      sub_254FF1804();
      sub_254FF1784();
      v210 = *v448;
      (*v448)(v209, v460);
      v211 = sub_254FF1774();
      if (sub_254FC5364(v200, 1, v211) == 1)
      {
        (*v454)(v205, v208);
      }

      else
      {
        v212 = v426;
        sub_254FC5770();
        v213 = *(v211 - 8);
        v214 = (*(v213 + 88))(v212, v211);
        if (v214 == v449)
        {
          v215 = v408;
          sub_254FF17F4();
          *&v450 = sub_254FF1694();
          v451 = v216;
          (*v427)(v215, v447);
          v217 = v409;
          sub_254FF1804();
          v218 = v410;
          sub_254FF1764();
          v210(v217, v460);
          v440 = sub_254FF1694();
          v443 = v219;
          (*v438)(v218, v411);
          swift_isUniquelyReferenced_nonNull_native();
          *&v469 = v202;
          v220 = sub_254FC4A60();
          if (__OFADD__(v202[2], (v221 & 1) == 0))
          {
            goto LABEL_171;
          }

          v222 = v220;
          v223 = v221;
          sub_254FC0048(&qword_27F76CD68, &qword_254FF47B8);
          if (sub_254FF22A4())
          {
            v224 = sub_254FC4A60();
            if ((v223 & 1) != (v225 & 1))
            {
              goto LABEL_178;
            }

            v222 = v224;
          }

          v208 = v419;
          v202 = v469;
          if (v223)
          {
            v226 = (*(v469 + 56) + 16 * v222);
            v227 = v226[1];
            v228 = v443;
            *v226 = v440;
            v226[1] = v228;
          }

          else
          {
            *(v469 + 8 * (v222 >> 6) + 64) |= 1 << v222;
            v229 = (v202[6] + 16 * v222);
            v230 = v451;
            *v229 = v450;
            v229[1] = v230;
            v231 = (v202[7] + 16 * v222);
            v232 = v443;
            *v231 = v440;
            v231[1] = v232;
            v233 = v202[2];
            v146 = __OFADD__(v233, 1);
            v234 = v233 + 1;
            if (v146)
            {
              goto LABEL_174;
            }

            v202[2] = v234;
          }

          v205 = v428;
          v235 = v426;
          v200 = v420;
          (*v454)(v428, v208);
          (*(v213 + 8))(v235, v211);
        }

        else
        {
          v205 = v428;
          v208 = v419;
          (*v454)(v428, v419);
          (*(v213 + 8))(v212, v211);
          v200 = v420;
        }
      }

      sub_254FC538C(v200, &qword_27F76CD58, &qword_254FF47B0);
      v207 += v455;
      --v204;
      v209 = v436;
    }

    while (v204);

    v109 = v461;
    v199 = v399;
    v192 = &unk_254FF3000;
  }

  else
  {
  }

  sub_254FF1D14();
  v236 = v199;
  v237 = sub_254FF1EA4();
  v238 = sub_254FF2164();
  v239 = os_log_type_enabled(v237, v238);
  v434 = v202;
  if (v239)
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    *&v469 = v241;
    *v240 = v192[483];

    v242 = sub_254FF1ED4();
    v244 = v243;

    v245 = sub_254FC4454(v242, v244, &v469);

    *(v240 + 4) = v245;
    _os_log_impl(&dword_254FBD000, v237, v238, "SportsAction: eventSbIdToStatsId: %{sensitive}s", v240, 0xCu);
    sub_254FC49C4(v241);
    MEMORY[0x259C32150](v241, -1, -1);
    MEMORY[0x259C32150](v240, -1, -1);

    v246 = (v397 + 8);
    v247 = v399;
  }

  else
  {

    v246 = (v397 + 8);
    v247 = v236;
  }

  v422 = v246;
  v435(v247, v398);
  v248 = v418;
  v249 = v452;
  v250 = sub_254FF17D4();
  v251 = 0;
  v443 = *(v250 + 16);
  v460 = v446 + 16;
  v455 = v446 + 8;
  v431 = (v394 + 32);
  v428 = (v394 + 16);
  v426 = (v394 + 8);
  *&v252 = v192[483];
  v420 = v252;
  v433 = MEMORY[0x277D84F90];
  v253 = v421;
  v440 = v250;
  v462 = (v109 + 8);
  while (2)
  {
    v254 = v382;
    v255 = v453;
    while (1)
    {
      if (v251 == v443)
      {

        (*(v402 + 8))(v375, v377);
        (*(v380 + 8))(v371, v254);

        return v433;
      }

      if (v251 >= *(v250 + 16))
      {
        goto LABEL_173;
      }

      v256 = v253;
      v257 = *(v255 + 16);
      v257(v417, v250 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v251, v424);
      sub_254FC4BB8(v256, 1, 1, v248);
      sub_254FF1674();
      v258 = v400;
      v259 = v459;
      sub_254FF1BE4();
      v459 = v259;
      if (v259)
      {

        sub_254FC538C(v256, &qword_27F76CA00, &qword_254FF3790);
        (*v441)(v417, v424);
        (*(v402 + 8))(v375, v377);
        (*(v380 + 8))(v371, v382);

        v368 = &v460;
LABEL_162:
        v369 = *(v368 - 32);
      }

      v439 = v257;
      v451 = v251 + 1;
      sub_254FF1C04();
      sub_254FEDC98(&qword_27F76CD60, MEMORY[0x277D1F200]);
      v260 = v415;
      v261 = v258;
      v262 = sub_254FF1F14();
      v263 = *v437;
      (*v437)(v249, v260);
      v263(v261, v260);
      if (v262)
      {
        break;
      }

      v253 = v421;
      sub_254FC538C(v421, &qword_27F76CA00, &qword_254FF3790);
      (*v441)(v417, v424);
LABEL_132:
      v254 = v382;
      v249 = v452;
LABEL_133:
      v255 = v453;
      v250 = v440;
      v251 = v451;
    }

    v264 = sub_254FF1714();
    v436 = 0;
    v448 = 0;
    *&v438 = 0;
    *&v449 = 0;
    v265 = 0;
    *&v461 = *(v264 + 16);
    *&v450 = MEMORY[0x277D84F90];
    v266 = v429;
    v267 = v462;
    *&v454 = v264;
LABEL_73:
    v268 = v456;
    while (v461 != v265)
    {
      if (v265 >= *(v264 + 16))
      {
        goto LABEL_166;
      }

      (*(v446 + 16))(v268, v264 + ((*(v446 + 80) + 32) & ~*(v446 + 80)) + *(v446 + 72) * v265, v266);
      sub_254FF1674();
      v269 = v459;
      sub_254FF1C24();
      v459 = v269;
      if (v269)
      {

        (*v455)(v456, v266);
        sub_254FC538C(v421, &qword_27F76CA00, &qword_254FF3790);
        (*v441)(v417, v424);
        (*(v402 + 8))(v375, v377);
        (*(v380 + 8))(v371, v382);

        v368 = &v468;
        goto LABEL_162;
      }

      sub_254FF1C44();
      sub_254FEDC98(&qword_27F76CD70, MEMORY[0x277D1F310]);
      sub_254FF2024();
      sub_254FF2024();
      if (v469 == v465 && *(&v469 + 1) == *(&v465 + 1))
      {
        v271 = 1;
      }

      else
      {
        v271 = sub_254FF2364();
      }

      v272 = *v267;
      v273 = v458;
      v272(v457, v458);

      if (v271)
      {
        v296 = sub_254FF1664();
        v298 = v297;
        v299 = v450;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v432 = v298;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v311 = *(v299 + 16);
          sub_254FC3D0C();
          v299 = v312;
        }

        v301 = *(v299 + 16);
        if (v301 >= *(v299 + 24) >> 1)
        {
          sub_254FC3D0C();
          *&v450 = v313;
        }

        else
        {
          *&v450 = v299;
        }

        ++v265;
        v302 = v462;
        v272(v476, v458);
        (*v455)(v456, v266);
        v303 = v450;
        *(v450 + 16) = v301 + 1;
        v304 = v303 + 16 * v301;
        v267 = v302;
        v305 = v432;
        *(v304 + 32) = v296;
        *(v304 + 40) = v305;
        goto LABEL_127;
      }

      v274 = v444;
      sub_254FF1C74();
      sub_254FF2024();
      sub_254FF2024();
      if (v469 == v465 && *(&v469 + 1) == *(&v465 + 1))
      {
        v272(v274, v273);
      }

      else
      {
        v276 = sub_254FF2364();
        v277 = v274;
        v278 = v276;
        v272(v277, v273);

        if ((v278 & 1) == 0)
        {
          v279 = v458;
          goto LABEL_105;
        }
      }

      v280 = sub_254FF1664();
      v282 = v281;
      *&v465 = 0;
      MEMORY[0x28223BE20](v280);
      *(&v370 - 2) = &v465;
      v279 = v458;
      if ((v282 & 0x1000000000000000) == 0)
      {
        if ((v282 & 0x2000000000000000) != 0)
        {
          *&v469 = v283;
          *(&v469 + 1) = v282 & 0xFFFFFFFFFFFFFFLL;
          if (v283 >= 0x21u || ((0x100003E01uLL >> v283) & 1) == 0)
          {
            goto LABEL_99;
          }

LABEL_101:
          v286 = 0;
LABEL_102:
          v463[0] = v286;
          goto LABEL_103;
        }

        if ((v283 & 0x1000000000000000) != 0)
        {
          v284 = *((v282 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v284 < 0x21 && ((0x100003E01uLL >> v284) & 1) != 0)
          {
            goto LABEL_101;
          }

LABEL_99:
          v285 = _swift_stdlib_strtod_clocale();
          if (!v285)
          {
            goto LABEL_101;
          }

          v286 = *v285 == 0;
          goto LABEL_102;
        }
      }

      v295 = v459;
      sub_254FF2244();
      v459 = v295;
LABEL_103:

      if (v463[0])
      {
        v287 = v430;
        sub_254FF15D4();
        v272(v476, v279);
        v268 = v456;
        (*v455)(v456, v266);
        sub_254FC538C(v421, &qword_27F76CA00, &qword_254FF3790);
        sub_254FC4BB8(v287, 0, 1, v418);
        v267 = v462;
        sub_254FC57C8();
        goto LABEL_116;
      }

LABEL_105:
      v288 = v425;
      sub_254FF1C64();
      sub_254FF2024();
      sub_254FF2024();
      if (v469 == v465 && *(&v469 + 1) == *(&v465 + 1))
      {
        v272(v288, v279);

LABEL_124:

        v306 = v456;
        *&v438 = sub_254FF1664();
        *&v449 = v307;
        v267 = v462;
        v272(v476, v279);
        v266 = v429;
        (*v455)(v306, v429);
        ++v265;
        goto LABEL_73;
      }

      v290 = sub_254FF2364();
      v272(v288, v279);

      if (v290)
      {
        goto LABEL_124;
      }

      v291 = v423;
      sub_254FF1C54();
      sub_254FF2024();
      sub_254FF2024();
      v292 = v469 == v465 && *(&v469 + 1) == *(&v465 + 1);
      v266 = v429;
      if (v292)
      {
        v308 = v291;
        v267 = v462;
        v272(v308, v279);

LABEL_126:

        v309 = v456;
        v436 = sub_254FF1664();
        v448 = v310;
        v272(v476, v279);
        (*v455)(v309, v266);
        ++v265;
LABEL_127:
        v264 = v454;
        goto LABEL_73;
      }

      v293 = sub_254FF2364();
      v294 = v291;
      v267 = v462;
      v272(v294, v279);

      if (v293)
      {
        goto LABEL_126;
      }

      v272(v476, v279);
      v268 = v456;
      (*v455)(v456, v266);
LABEL_116:
      ++v265;
      v264 = v454;
    }

    v253 = v421;
    v314 = v393;
    sub_254FC5770();
    v248 = v418;
    if (sub_254FC5364(v314, 1, v418) == 1)
    {

      sub_254FC538C(v253, &qword_27F76CA00, &qword_254FF3790);
      (*v441)(v417, v424);

      sub_254FC538C(v314, &qword_27F76CA00, &qword_254FF3790);
      goto LABEL_132;
    }

    (*v431)(v392, v314, v248);
    v315 = v373;

    v316 = v372;

    v317 = v315;
    v318 = v459;
    sub_254FE03BC(v450, &v475, &v474, v317, v316);
    v459 = v318;
    v473 = v319;
    if (!v449)
    {

      v461 = 0u;
      v450 = 0u;
      v454 = 0u;
      v449 = 0u;
      v438 = 0u;
      v432 = 0u;
      v419 = 0u;
      v416 = 0u;
      v324 = v447;
LABEL_145:
      v329 = v389;
LABEL_146:
      v336 = v417;
      sub_254FF1704();
      v337 = sub_254FF1694();
      v339 = v338;
      (*v427)(v329, v324);
      v340 = sub_254FC0090(v337, v339, v434);
      v342 = v341;

      if (v342)
      {
        v343 = v340;
      }

      else
      {
        v343 = 0;
      }

      if (!v342)
      {
        v342 = 0xE000000000000000;
      }

      v344 = v473;
      v469 = v461;
      v470 = v450;
      v471 = v454;
      v472 = v449;
      v465 = v438;
      v466 = v432;
      v467 = v419;
      v468 = v416;
      v345 = v386;
      (*v428)(v386, v392, v248);

      v346 = v388;
      *&v461 = v344;
      SportsEvent.init(id:teams:homeTeam:awayTeam:startTime:firstTeamId:)(v343, v342, v344, &v469, &v465, v345, 0, v388);
      if (sub_254FC5364(v346, 1, v387) == 1)
      {
        sub_254FC538C(v346, &qword_27F76CD50, &unk_254FF47A0);
        v347 = v391;
        sub_254FF1D14();
        v348 = v385;
        v349 = v424;
        v439(v385, v336, v424);
        v350 = sub_254FF1EA4();
        v351 = sub_254FF2174();
        if (os_log_type_enabled(v350, v351))
        {
          v352 = swift_slowAlloc();
          v353 = swift_slowAlloc();
          *&v469 = v353;
          *v352 = v420;
          sub_254FEDC98(&qword_27F76CD78, MEMORY[0x277D38EE0]);
          v354 = sub_254FF1D54();
          v355 = v349;
          v357 = v356;
          v358 = *v441;
          (*v441)(v348, v355);
          v359 = sub_254FC4454(v354, v357, &v469);

          *(v352 + 4) = v359;
          _os_log_impl(&dword_254FBD000, v350, v351, "SportsAction: Could not create event for %{sensitive}s", v352, 0xCu);
          sub_254FC49C4(v353);
          MEMORY[0x259C32150](v353, -1, -1);
          MEMORY[0x259C32150](v352, -1, -1);

          v435(v391, v398);
          v248 = v418;
          (*v426)(v392, v418);
          v360 = v421;
          sub_254FC538C(v421, &qword_27F76CA00, &qword_254FF3790);
          v358(v417, v355);
          v253 = v360;
        }

        else
        {

          v361 = *v441;
          (*v441)(v348, v349);
          v435(v347, v398);
          v248 = v418;
          (*v426)(v392, v418);
          v253 = v421;
          sub_254FC538C(v421, &qword_27F76CA00, &qword_254FF3790);
          v361(v336, v349);
        }

        v249 = v452;
        v254 = v382;
        goto LABEL_133;
      }

      sub_254FEDBC0();
      sub_254FEDB10();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v365 = *(v433 + 16);
        sub_254FC3F94();
        v433 = v366;
      }

      v362 = *(v433 + 16);
      if (v362 >= *(v433 + 24) >> 1)
      {
        sub_254FC3F94();
        v433 = v367;
      }

      sub_254FEDB68(v384, type metadata accessor for SportsEvent);
      v248 = v418;
      (*v426)(v392, v418);
      v253 = v421;
      sub_254FC538C(v421, &qword_27F76CA00, &qword_254FF3790);
      (*v441)(v417, v424);
      v363 = v433;
      *(v433 + 16) = v362 + 1;
      v364 = v363 + ((*(v383 + 80) + 32) & ~*(v383 + 80)) + *(v383 + 72) * v362;
      sub_254FEDBC0();

      v249 = v452;
      v250 = v440;
      v251 = v451;
      continue;
    }

    break;
  }

  v320 = v319;
  v321 = sub_254FC0090(v438, v449, v379);
  v323 = v322;

  v324 = v447;
  if (!v323)
  {

    v461 = 0u;
    v450 = 0u;
    v454 = 0u;
    v449 = 0u;
    v438 = 0u;
    v432 = 0u;
    v419 = 0u;
    v416 = 0u;
    v248 = v418;
    goto LABEL_145;
  }

  v464 = v320;

  v325 = v459;
  sub_254FEA344(&v464, v321, v323);
  v326 = &v474;
  v459 = v325;
  if (v325)
  {
    goto LABEL_179;
  }

  v327 = v464;

  v473 = v327;
  v328 = *(v327 + 16);

  v461 = 0u;
  v450 = 0u;
  v454 = 0u;
  v449 = 0u;
  v438 = 0u;
  v432 = 0u;
  v419 = 0u;
  v416 = 0u;
  v248 = v418;
  v329 = v389;
  if (v328 != 2)
  {
LABEL_141:
    v335 = sub_254FE5754(v436, v448, v373);

    if ((v335 & 1) == 0)
    {
      sub_254FE587C();
    }

    goto LABEL_146;
  }

  v330 = *(v327 + 16);
  if (!v330)
  {
    goto LABEL_176;
  }

  v331 = *(v327 + 48);
  v465 = *(v327 + 32);
  v466 = v331;
  v332 = *(v327 + 80);
  v467 = *(v327 + 64);
  v468 = v332;
  if (v330 != 1)
  {
    v449 = v468;
    v454 = v467;
    v450 = v466;
    v461 = v465;
    v333 = *(v327 + 112);
    v469 = *(v327 + 96);
    v470 = v333;
    v334 = *(v327 + 144);
    v471 = *(v327 + 128);
    v472 = v334;
    v432 = v470;
    v438 = v469;
    v416 = v334;
    v419 = v471;
    sub_254FE9A5C(&v465, v463);
    sub_254FE9A5C(&v469, v463);
    goto LABEL_141;
  }

LABEL_177:
  __break(1u);
LABEL_178:
  sub_254FF2384();
  __break(1u);
LABEL_179:

  __break(1u);
  return result;
}