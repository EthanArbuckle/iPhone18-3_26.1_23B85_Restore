void sub_1C445E6E0()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C445E76C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1C445E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void (*a7)(uint64_t), void (*a8)(uint64_t))
{

  return sub_1C47BC864(v8, v11, v10, v9, a5, a6, a7, a8);
}

void sub_1C445E7F4()
{
}

uint64_t sub_1C445E838(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void sub_1C445E868()
{

  sub_1C459E7C8();
}

uint64_t sub_1C445E8CC(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

double sub_1C445E8EC()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t sub_1C445E918()
{
  v2 = v0[5];
  v0[8] = *(v0[4] + 56);
}

uint64_t sub_1C445E938()
{

  return sub_1C4EFF088();
}

uint64_t sub_1C445E950(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 376) & 1;

  return sub_1C440951C(v2, a2, v5);
}

uint64_t sub_1C445E970()
{

  return sub_1C4420C3C(v0, v1, v2);
}

uint64_t sub_1C445E98C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1240);
  return result;
}

void sub_1C445E9B8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C445E9D0(uint64_t a1)
{
  *(v2 - 128) = v1;
  *(v2 - 208) = a1;
  return 0;
}

double sub_1C445EA20()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_1C445EA3C()
{
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  return sub_1C4F00978();
}

uint64_t sub_1C445EA5C()
{

  return sub_1C4EFBFF8();
}

void sub_1C445EA88()
{
  sub_1C4CD7B5C(v0);

  JUMPOUT(0x1C6942830);
}

__n128 sub_1C445EACC(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

uint64_t sub_1C445EAF0@<X0>(void *a1@<X8>)
{
  v1[32] = a1[4];
  v1[33] = a1[5];
  v1[34] = a1[6];

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1C445EB64@<X0>(uint64_t a1@<X8>)
{
  result = v2 + *(v1 + 28);
  v5 = *(v3 - 96) + a1;
  return result;
}

uint64_t sub_1C445EB7C@<X0>(void *a1@<X8>, double a2@<D0>)
{
  *a1 = *(v2 - 256);
  a1[1] = v4;
  v8 = (v3 + v5[10]);
  v9 = *(v6 - 224);
  *v8 = *(v6 - 232);
  v8[1] = v9;
  *(v3 + v5[11]) = a2;
  *(v3 + v5[12]) = *(v6 - 260);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445EBBC()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 128);
  result = *(v2 + v1);
  *(v2 + v1) = *(v0 - 112);
  return result;
}

void sub_1C445EBF0(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 136);
  v4 = *(v1 - 160);
}

uint64_t sub_1C445EC18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1C4422F90(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C443FA18(&v12, v10 + 40 * a1 + 32);
}

char *sub_1C445ECB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

void sub_1C445ECDC()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C44108C0(v6);
  if (v2)
  {
    sub_1C4422208(v9, v10, v11, v12, v13, v14);
    v3 = 40;
    v15 = sub_1C4440F6C();
    sub_1C43FEA8C(v15);
  }

  sub_1C440BB20();
  if (v1)
  {
    sub_1C4469098();
    if (v17)
    {
      v18 = v16 > v3;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      v19 = sub_1C4404044();
      memmove(v19, v20, v21);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v22 = sub_1C4404050();
    sub_1C456902C(v22, v23);
    sub_1C4416D38();
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

uint64_t sub_1C445EDA0()
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

void sub_1C445EDE8(char a1)
{
  switch(a1)
  {
    case 1:
    case 6:
      sub_1C43FE984();
      break;
    case 5:
      sub_1C443F3D8();
      break;
    default:
      return;
  }
}

unint64_t sub_1C445EF64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x656D6F6962;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C4F86930;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x4C5153656D6F6962;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
          break;
        case 4:
          v9 = 0x6D6F74737563;
          goto LABEL_12;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x6264726F74636576;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C4F86960;
          break;
        case 7:
          v9 = 0x7463656A626FLL;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x5153000000000000;
          v7 = 0xE90000000000004CLL;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x6B6E615265676170;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x6C616E676973;
          break;
        case 0xA:
          v8 = 0x656E6E6F436C7173;
          v7 = 0xED00006E6F697463;
          break;
        case 0xB:
          v7 = 0xE800000000000000;
          v8 = 0x6870617267627573;
          break;
        case 0xC:
          v8 = 0xD000000000000011;
          v7 = 0x80000001C4F869A0;
          break;
        default:
          break;
      }

      v10 = 0xE500000000000000;
      v11 = 0x656D6F6962;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001C4F86930;
          break;
        case 2:
          v10 = 0xE800000000000000;
          v11 = 0x4C5153656D6F6962;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = 0x6D6F74737563;
          break;
        case 4:
          v12 = 0x6D6F74737563;
          goto LABEL_26;
        case 5:
          v10 = 0xE800000000000000;
          v11 = 0x6264726F74636576;
          break;
        case 6:
          v11 = 0xD000000000000010;
          v10 = 0x80000001C4F86960;
          break;
        case 7:
          v12 = 0x7463656A626FLL;
LABEL_26:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0x5153000000000000;
          v10 = 0xE90000000000004CLL;
          break;
        case 8:
          v10 = 0xE800000000000000;
          v11 = 0x6B6E615265676170;
          break;
        case 9:
          v10 = 0xE600000000000000;
          v11 = 0x6C616E676973;
          break;
        case 10:
          v11 = 0x656E6E6F436C7173;
          v10 = 0xED00006E6F697463;
          break;
        case 11:
          v10 = 0xE800000000000000;
          v11 = 0x6870617267627573;
          break;
        case 12:
          v11 = 0xD000000000000011;
          v10 = 0x80000001C4F869A0;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1C4F02938();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1C445F364(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = _s10ViewConfigVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);
  if (!v5)
  {
    v21 = (v14 + *(v10 + 76));
    v22 = v21[1];
    if (v22 && a5)
    {
      v25 = *v21;
      if (*(v14 + 248))
      {
        v23 = *(v14 + 248);
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      _s29BiomeIncrementalViewGeneratorCMa();
      a4 = swift_allocObject();
      a4[2] = a1;
      a4[3] = a2;
      a4[4] = v25;
      a4[5] = v22;
      a4[6] = a5;
      a4[7] = v23;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      _s33NullBiomeIncrementalViewGeneratorCMa();
      a4 = swift_allocObject();
    }

    sub_1C445F57C(v14);
  }

  return a4;
}

uint64_t sub_1C445F4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C445F364(a1, a2, 0, *v2, *(v2 + 8));
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_1C445F57C(uint64_t a1)
{
  v2 = _s10ViewConfigVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C445F5D8(uint64_t a1, uint64_t a2)
{
  sub_1C43FBDE4();
  v7 = v6;
  v8 = v6[10];
  v9 = *v3;
  sub_1C43FBDAC();
  *v10 = v9;
  v7[11] = v2;

  if (v2)
  {
    v11 = sub_1C4C81BA8;
  }

  else
  {
    v7[12] = a2;
    v7[13] = a1;
    v11 = sub_1C445F700;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1C445F700()
{
  sub_1C43FBCD4();
  sub_1C440962C(v0 + 2);
  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_1C445F764()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FEB84();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  v3[24] = v7;
  v3[25] = v8;
  v3[26] = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C445F88C, 0, 0);
  }
}

uint64_t sub_1C445F88C()
{
  v1 = *(v0 + 208);
  sub_1C4F01968();
  v2 = *(v0 + 192);
  if (v1)
  {
    swift_unknownObjectRelease();
    sub_1C43FBDA0();

    return v3();
  }

  else
  {
    v5 = *(v0 + 248);
    swift_getObjectType();
    v6 = sub_1C4450104();
    if (v7)
    {
      v8 = *(v6 + 16);
      sub_1C4411260();
      v20 = (v9 + *v9);
      v11 = *(v10 + 4);
      v12 = swift_task_alloc();
      *(v0 + 216) = v12;
      *v12 = v0;
      v19 = sub_1C442D848(v12);
      v13 = v20;
    }

    else
    {
      v14 = *(v6 + 8);
      sub_1C4411260();
      v21 = (v15 + *v15);
      v17 = *(v16 + 4);
      v18 = swift_task_alloc();
      *(v0 + 232) = v18;
      *v18 = v0;
      v19 = sub_1C442D848(v18);
      v13 = v21;
    }

    return v13(v19);
  }
}

uint64_t sub_1C445FAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1C443309C();
  sub_1C4F01298();
  v5 = sub_1C4F02B68();

  return a3(a1, a2, v5);
}

unint64_t sub_1C445FB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C445FBF0()
{

  return type metadata accessor for Blocker();
}

void *sub_1C445FC08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_1C445FC2C()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_1C445FC3C()
{
  v2 = *(v0 - 400);
}

uint64_t sub_1C445FC68()
{

  return sub_1C4F02618();
}

uint64_t sub_1C445FC80(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1C445FC94()
{
  result = *(v1 - 208) + v0;
  v3 = *(v1 - 256);
  return result;
}

uint64_t sub_1C445FD38()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 216);

  return sub_1C4471874(v2, v3);
}

void sub_1C445FD88()
{

  sub_1C457B070();
}

uint64_t sub_1C445FDA0()
{

  return swift_dynamicCast();
}

uint64_t sub_1C445FDB8(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v2, v1);
}

uint64_t sub_1C445FE04(uint64_t a1)
{
  sub_1C440BAA8(v1, 1, 1, a1);
  v3 = *(v2 - 112);
  v4 = *(v2 - 104);

  return sub_1C4EFF1A8();
}

uint64_t sub_1C445FE5C()
{

  return swift_beginAccess();
}

uint64_t sub_1C445FEC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_1C445FF08()
{
  v3 = *(v1 - 24);
  v4 = *(v1 - 2);
  v5 = *(v1 - 1);
  v6 = *v1;
  v7 = *(v0 + 24);
  v8 = *(v0 + 16) + 1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445FF58()
{
  v2 = *(v1 - 136);
  v3 = *(*(v1 - 144) + 8);
  return v0;
}

uint64_t sub_1C445FFA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

uint64_t sub_1C445FFF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4460050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1C44600A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C4460108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

uint64_t sub_1C4460188()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C44601C8()
{
  v1 = v0[10];
  result = v0[6];
  v3 = result + *(v0[5] + 24);
  return result;
}

uint64_t sub_1C44601DC()
{
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
}

uint64_t sub_1C4460240()
{

  return sub_1C4F02AC8();
}

void sub_1C446028C()
{
  v2 = *(v0 + 8);
  *(v1 + 616) = v2;
  *(v1 + 624) = *(v2 + 16);
}

uint64_t sub_1C44602A0(double a1)
{
  *(v1 + 8) = a1;
  v4 = *(v2 + 48);

  return sub_1C4EF9CD8();
}

void sub_1C44602BC()
{
  v1[45] = v0;
  v1[46] = 0x6D617473656D6974;
  v1[47] = 0xE900000000000070;
}

uint64_t sub_1C44602E4()
{
  v2 = **(v1 - 176);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t sub_1C44602F8()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4460344()
{

  return sub_1C4EF97B8();
}

uint64_t sub_1C4460374(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1C441D828(a1, a2, va);
}

uint64_t sub_1C4460398()
{
  v2 = (*(v0 + 184) & 0xC000000000000001) == 0;
  v3 = *(v0 + 208);

  return sub_1C4431590(v3, v2);
}

uint64_t sub_1C44603BC()
{
  v2 = *(v0 + 232);

  return sub_1C4F00198();
}

void sub_1C44603D4()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 224);
  v4 = *(v0 - 344);
  v5 = *(v0 - 348);
  v6 = *(v0 - 208);

  sub_1C4B1E304();
}

uint64_t sub_1C4460410()
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 240);

  return sub_1C449F920(v3, v6, v0, v5, v4);
}

uint64_t sub_1C4460448()
{
  v2 = *(v0 - 72);

  return swift_dynamicCast();
}

uint64_t sub_1C446047C()
{

  return sub_1C4F02008();
}

uint64_t sub_1C44604A0()
{
  v2 = *(v1 - 200);
  *(v1 - 88) = *(v1 - 196);
  *(v1 - 87) = v2;
  *(v1 - 86) = *(v1 - 204);
  *(v1 - 85) = v0;
  return v1 - 128;
}

uint64_t sub_1C44604C0()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44604E8()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4460504(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C44FDC24(a1, v5, a3, v3, v4);
}

uint64_t sub_1C446052C@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 128);

  return sub_1C4F02618();
}

uint64_t sub_1C4460550(double a1)
{
  v7 = (v4 + v5[8]);
  *v7 = v3;
  v7[1] = v2;
  v8 = (v4 + v5[10]);
  v9 = *(v1 + 200);
  *v8 = *(v1 + 192);
  v8[1] = v9;
  *(v4 + v5[11]) = a1;
  *(v4 + v5[12]) = *(v1 + 156);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4460590@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 288);
  v5 = *(v1 - 144);

  return sub_1C4F026C8();
}

void sub_1C44605FC()
{
  v2 = *(v0 - 88);
  v1 = *(v0 - 80);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  v5 = *(v0 - 112);
}

uint64_t sub_1C4460618()
{
}

uint64_t sub_1C4460630()
{

  return swift_beginAccess();
}

uint64_t sub_1C4460650()
{
}

uint64_t sub_1C4460690(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 928);
  return result;
}

uint64_t sub_1C446069C(uint64_t result, uint64_t a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2;
  return result;
}

uint64_t sub_1C44606BC()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C44606DC()
{

  return sub_1C4F01678();
}

uint64_t sub_1C446070C()
{
  result = v0;
  v3 = *(v1 - 232);
  return result;
}

uint64_t sub_1C446071C()
{
  v2 = *(*(v1 - 152) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

void sub_1C446073C(uint64_t a1@<X8>)
{
  *(v2 + 40) = a1;

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C4460754()
{
  v2 = *(v0 - 304);

  return sub_1C4EF9C88();
}

uint64_t sub_1C4460770()
{
  result = *(v0 - 256);
  v3 = *(v1 - 280);
  return result;
}

uint64_t sub_1C446078C()
{
  v2 = *(v0 - 184);

  return sub_1C4F02778();
}

uint64_t sub_1C44607D4(uint64_t a1)
{
  *(v2 - 176) = a1;
  *(v2 - 120) = v1;

  return sub_1C4EF93D8();
}

uint64_t sub_1C4460814()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 200);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_1C4460830()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_1C4F026C8();
}

void sub_1C4460858()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
}

uint64_t sub_1C4460864()
{
  v2 = *(v0 - 576);
  v3 = *(v0 - 584);

  return sub_1C44239FC(v2);
}

__n128 sub_1C446089C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

void sub_1C44608A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 460);
  v9 = *(v6 - 460);

  _os_log_impl(a1, v4, v9, a4, v5, 0x1Cu);
}

void sub_1C44608EC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4460954()
{

  return swift_beginAccess();
}

uint64_t sub_1C4460970()
{
  v2 = *(v0 - 296);

  return sub_1C4F02618();
}

void sub_1C446098C(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 104);
  v4 = *(v1 - 480);
}

id sub_1C44609F0(id a1, SEL a2, double a3)
{
  v6 = *(v3 - 260);
  v7 = *(v3 - 240);
  v8 = *(v3 - 240);
  LODWORD(a3) = v5;

  return [a1 a2];
}

uint64_t sub_1C4460A3C()
{
}

void sub_1C4460A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = **(v22 - 304);
  v26 = *(v22 - 288);
  v27 = *(v22 - 276);
  v28 = *(v22 - 296);

  sub_1C4601D10(v26, v27, v28, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4460A90(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

void sub_1C4460AB8()
{
  v1 = *(v0 - 120);
  v2 = *(v0 - 208);
  v3 = *(v0 - 152);
}

uint64_t sub_1C4460AC8()
{

  return type metadata accessor for PeopleMatcher();
}

uint64_t sub_1C4460AE0(uint64_t result)
{
  *(v2 - 440) = v1;
  *(v2 - 456) = result;
  *(v2 - 176) = result;
  return result;
}

uint64_t sub_1C4460AF8()
{
  v2 = *(v0 - 216);

  return sub_1C4EFB438();
}

uint64_t sub_1C4460B18()
{
  *(v1 - 192) = *(v0 + 592);
  *(v1 - 184) = 0;

  return sub_1C44E3634(v1 - 240);
}

uint64_t sub_1C4460B4C()
{

  return sub_1C4F02BC8();
}

void sub_1C4460BA4()
{
  v2 = *(v0 + 16) + 1;

  sub_1C44F4214();
}

uint64_t sub_1C4460BC8()
{
  v8 = (v3 + v4[8]);
  *v8 = *(v5 - 248);
  v8[1] = v0;
  v9 = (v3 + v4[10]);
  *v9 = v1;
  v9[1] = v2;
  *(v3 + v4[11]) = v7;
  *(v3 + v4[12]) = *(v5 - 124);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4460C1C()
{
  *(v5 - 176) = v3;
  *(v5 - 168) = v2;
  *(v5 - 192) = v4;
  *(v5 - 184) = v0;
  *(v5 - 96) = v1;
  *(v5 - 65) = 0;
}

uint64_t static Configuration.intelligencePlatformComputeService.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  if (qword_1EDDFFA78 != -1)
  {
    sub_1C4416F34();
  }

  v13 = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    sub_1C4402E14();
  }

  v14 = xmmword_1EDDFFA48;
  if (qword_1EDDFA610 != -1)
  {
    sub_1C4434F24();
  }

  v15 = xmmword_1EDDFA618;
  if (qword_1EDDFEC60 != -1)
  {
    sub_1C43FC180();
  }

  v16 = xmmword_1EDDFFAE0;
  if (qword_1EDDFEC10 != -1)
  {
    sub_1C43FD3C4();
  }

  sub_1C4412EB0();
  v17 = xmmword_1EDDFEC18;
  do
  {
    sub_1C44119E0(v4);
    v4 = v5 + 16;
  }

  while (v4 != 80);
  sub_1C4F001A8();
  v6 = sub_1C4406994();
  v7(v6);
  static Features.optionsForEnabledFeatures.getter(&v12);
  v8 = sub_1C440F45C();
  v9(v8);
  v10 = sub_1C442DE2C();
  return sub_1C44320F0(v10);
}

uint64_t static Features.optionsForEnabledFeatures.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_1C4F001E8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F001B8();
  v11 = *(v10 + 16);
  if (v11)
  {
    v36[1] = v10;
    v37 = a1;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v17 = (v12 - 8);
    v18 = MEMORY[0x1E69E7CC0];
    v38 = v12;
    do
    {
      v13(v9, v15, v2);
      if (sub_1C4F001D8())
      {
        Features.FeatureFlag.asOption()();
        (*v17)(v9, v2);
        v39 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = v18[2];
          sub_1C4461ABC();
          v18 = v21;
        }

        v19 = v18[2];
        if (v19 >= v18[3] >> 1)
        {
          sub_1C4461ABC();
          v18 = v22;
        }

        v18[2] = v19 + 1;
        *&v18[2 * v19 + 4] = v39;
      }

      else
      {
        (*v17)(v9, v2);
      }

      v15 += v16;
      --v11;
    }

    while (v11);

    a1 = v37;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v23 = v18[2];
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v18 + 5;
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v31 = *v28 & v26;
      v28 += 2;
      v32 = (v29 & ~v27) == 0 && v31 == v30;
      v33 = v29 | v27;
      v34 = v30 | v26;
      if (!v32)
      {
        v24 = v33;
        v25 = v34;
        v26 = v34;
        v27 = v33;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *a1 = v24;
  a1[1] = v25;
  return result;
}

IntelligencePlatformCore::Options __swiftcall Features.FeatureFlag.asOption()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1C4F001E8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v2, v4);
  v12 = (*(v7 + 88))(v11, v4);
  if (v12 == *MEMORY[0x1E69A9CA8])
  {
    if (qword_1EDDDBFD0 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBFD8;
  }

  else if (v12 == *MEMORY[0x1E69A9CB0])
  {
    if (qword_1EDDFA648 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFA650;
  }

  else if (v12 == *MEMORY[0x1E69A9D60])
  {
    if (qword_1EDDFFA10 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFFA18;
  }

  else if (v12 == *MEMORY[0x1E69A9D68])
  {
    if (qword_1EDDF0C58 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDF0C60;
  }

  else if (v12 == *MEMORY[0x1E69A9CC0])
  {
    if (qword_1EDDFFAC8 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFFAD0;
  }

  else if (v12 == *MEMORY[0x1E69A9D10])
  {
    if (qword_1EDDFFA90 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFFA98;
  }

  else if (v12 == *MEMORY[0x1E69A9C98])
  {
    if (qword_1EC0B7000 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EC0C22A8;
  }

  else if (v12 == *MEMORY[0x1E69A9D48])
  {
    if (qword_1EDDFFA28 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFFA30;
  }

  else if (v12 == *MEMORY[0x1E69A9CF0])
  {
    if (qword_1EDDDBF60 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBF68;
  }

  else if (v12 == *MEMORY[0x1E69A9CF8])
  {
    if (qword_1EDDDBF48 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBF50;
  }

  else if (v12 == *MEMORY[0x1E69A9D30])
  {
    if (qword_1EC0B7008 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EC0C22B8;
  }

  else if (v12 == *MEMORY[0x1E69A9D18])
  {
    if (qword_1EDDF0C70 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDF0C78;
  }

  else if (v12 == *MEMORY[0x1E69A9CA0])
  {
    if (qword_1EDDDBF28 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBF30;
  }

  else if (v12 == *MEMORY[0x1E69A9D38])
  {
    if (qword_1EDDDBEF8 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBF00;
  }

  else if (v12 == *MEMORY[0x1E69A9D00])
  {
    if (qword_1EDDFFAB0 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFEBD0;
  }

  else if (v12 == *MEMORY[0x1E69A9CE8])
  {
    if (qword_1EDDFA628 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFA630;
  }

  else if (v12 == *MEMORY[0x1E69A9D78])
  {
    if (qword_1EDDFFA60 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFFA68;
  }

  else if (v12 == *MEMORY[0x1E69A9CD0])
  {
    if (qword_1EDDDBF80 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBF88;
  }

  else if (v12 == *MEMORY[0x1E69A9D50])
  {
    if (qword_1EC0B7010 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EC0C22C8;
  }

  else if (v12 == *MEMORY[0x1E69A9CD8])
  {
    if (qword_1EDDFFAB8 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFEBF8;
  }

  else if (v12 == *MEMORY[0x1E69A9D28])
  {
    if (qword_1EC0B7020 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EC0C22D8;
  }

  else if (v12 == *MEMORY[0x1E69A9CC8])
  {
    if (qword_1EDDDBF98 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBFA0;
  }

  else if (v12 == *MEMORY[0x1E69A9D20])
  {
    if (qword_1EDDDBF10 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBF18;
  }

  else if (v12 == *MEMORY[0x1E69A9CB8])
  {
    if (qword_1EDDDBFB8 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBFC0;
  }

  else if (v12 == *MEMORY[0x1E69A9D58])
  {
    if (qword_1EDDFEB80 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFEB88;
  }

  else if (v12 == *MEMORY[0x1E69A9D08])
  {
    if (qword_1EC0B7028 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EC0C22E8;
  }

  else if (v12 == *MEMORY[0x1E69A9D40])
  {
    if (qword_1EDDDBEE0 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDDBEE8;
  }

  else if (v12 == *MEMORY[0x1E69A9D70])
  {
    if (qword_1EDDFEB68 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFEB70;
  }

  else
  {
    if (v12 != *MEMORY[0x1E69A9CE0])
    {
      v12 = sub_1C4F02928();
      __break(1u);
      goto LABEL_119;
    }

    if (qword_1EDDFEBE0 != -1)
    {
      v12 = swift_once();
    }

    v14 = &xmmword_1EDDFEBE8;
  }

  v16 = *v14;
  v15 = *(v14 + 1);
  *v3 = v16;
  v3[1] = v15;
LABEL_119:
  result.rawValue.featureFlags = v13;
  result.rawValue.options = v12;
  return result;
}

void sub_1C4461AE4()
{
  sub_1C441B754();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C441E1B8(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = sub_1C44182F4();
      j__malloc_size(v16);
      sub_1C4402B0C();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44099F4();
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

    v19 = sub_1C440CAA0();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1C4461B98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C4461BB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C4461C04()
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C4461C24()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4461C4C()
{

  return sub_1C4485354(v1, v0);
}

uint64_t sub_1C4461C64(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 168));
}

void sub_1C4461C7C(unint64_t a1@<X8>)
{

  sub_1C458C108(a1 > 1, v1, 1, v2);
}

uint64_t sub_1C4461CA0()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t sub_1C4461CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1C4F01298();
}

uint64_t sub_1C4461CDC()
{

  return sub_1C44CDA7C();
}

void sub_1C4461D38()
{

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1C4461D70()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4461D94()
{
}

BOOL sub_1C4461DB8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C4461DE4()
{
  v3 = v0 + *(v1 + 24);

  return sub_1C4EFF888();
}

void sub_1C4461E3C()
{
  v7 = (v2 + v4[8]);
  *v7 = *(v5 - 184);
  v7[1] = v1;
  v8 = (v2 + v4[10]);
  *v8 = v0;
  v8[1] = v3;
  *(v2 + v4[11]) = v6;
  v9 = v4[12];
}

uint64_t sub_1C4461E68()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4462C04(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4461F20()
{
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = *(v0[25] + 8);
  return v0[30];
}

uint64_t sub_1C4461F5C()
{
  v2 = *(v0 - 136);

  return sub_1C448C9D8();
}

__n128 sub_1C4461F74()
{
  result = v0[7];
  v0[33] = result;
  return result;
}

uint64_t sub_1C4461FD4(double a1)
{
  *v3 = a1;
  v5 = v2 + *(v1 + 28);

  return sub_1C4EF9AD8();
}

void sub_1C4461FF0()
{

  sub_1C44CD9C0();
}

uint64_t sub_1C446202C(uint64_t a1)
{
  *(v2 + *(v1 + 36)) = a1;

  return sub_1C44829A4(v4, v3);
}

uint64_t sub_1C4462064()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44620AC()
{
  v2 = *(v0 - 512);
}

uint64_t sub_1C44620D0()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44620EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = v3;
  a1[8] = a2;
  a1[4] = v2;

  return sub_1C4EFB728();
}

uint64_t sub_1C4462134()
{
  result = v0;
  v3 = *(v1 - 72);
  *(v1 - 208) = *(*(v1 - 112) + 8);
  return result;
}

uint64_t sub_1C446218C()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442E8C4;
  v6 = sub_1C441B0C0();

  return v7(v6);
}

uint64_t sub_1C446222C()
{
  sub_1C43FCF70();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1C43FCF54(v4);
  *v5 = v6;
  v5[1] = sub_1C445229C;

  return v8(v1);
}

uint64_t static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)()
{
  if (qword_1EDDFE628 != -1)
  {
    sub_1C4402394();
  }

  return sub_1C4461E68();
}

uint64_t sub_1C44623AC()
{

  return sub_1C4EFDE58();
}

uint64_t sub_1C44623C4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C44623D8()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_1C4F004B8();
}

uint64_t sub_1C4462420()
{
  v3 = v0[14];
  *(v1 - 136) = v0[15];
  *(v1 - 128) = v3;
  v4 = v0[10];
  *(v1 - 120) = v0[11];
  *(v1 - 112) = v4;
  *(v1 - 104) = v0[7];
}

uint64_t sub_1C4462464()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t sub_1C4462470()
{
  *(v3 - 200) = v1;
  v5 = *(v3 - 88);

  return sub_1C4471BAC(v0 + v2 * v1, v5);
}

uint64_t sub_1C44624A0()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44624C4(uint64_t a1)
{
  v3 = *(v2 - 96);
  v4 = *(*(v2 - 104) + 32);
  return a1 + *(v1 + 20);
}

uint64_t sub_1C44624F0()
{

  return sub_1C441D828(v1, v0, (v2 - 168));
}

uint64_t sub_1C446250C(uint64_t a1)
{

  return sub_1C44157D4(v1 + v2, 1, a1);
}

uint64_t sub_1C4462540()
{
  *(v0 - 104) = 5;
  v2 = *(v0 - 176);
  v3 = *(v0 - 144);

  return sub_1C4F026C8();
}

uint64_t sub_1C44625AC(double a1)
{
  v5 = (v1 + v2[10]);
  v6 = *(v3 - 112);
  *v5 = *(v3 - 120);
  v5[1] = v6;
  *(v1 + v2[11]) = a1;
  *(v1 + v2[12]) = *(v3 - 132);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4462610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for ViewUpdate.ViewInProcessRunner, ViewUpdate.ViewInProcessRunner.__allocating_init(config:), sub_1C4662DE4);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C446268C()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44626F8()
{
  sub_1C440DD3C();
  if (v1 == v2)
  {
    return sub_1C4475524();
  }

  v4 = v0;
  sub_1C4EF9CD8();
  v5 = sub_1C4412B9C(*(v4 + 28));

  return sub_1C44157D4(v5, v6, v7);
}

uint64_t sub_1C4462788()
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C44627AC()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_1C44627BC()
{

  return swift_once();
}

uint64_t sub_1C44627E4()
{
  v2 = *(v0 - 704);
  v3 = *(v0 - 712);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4462804()
{
  *(v1 + *(v0 + 28)) = *(v2 - 120);

  return sub_1C4EF9E48();
}

uint64_t sub_1C4462830()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
}

uint64_t sub_1C4462848()
{

  return swift_dynamicCast();
}

uint64_t sub_1C446286C()
{
  v2 = *(v0 - 224);

  return sub_1C4EFB438();
}

uint64_t sub_1C4462894()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44628C8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + *(v3 + 36);

  return sub_1C449ED64(v2 + a1, v5);
}

uint64_t sub_1C4462934()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for Configuration() + 20));
  if (qword_1EDDFA628 != -1)
  {
    sub_1C442CC60();
    v13 = v12;
    swift_once();
    v2 = v13;
  }

  v3.n128_u64[0] = sub_1C43FC158(xmmword_1EDDFA630, v2);
  if (v4)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDF8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v8, v9, "IntelligencePlatformComputeSystem: Preparing...");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  v10 = *(v0 + 8);

  return v10(v3);
}

uint64_t sub_1C4462A6C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  sub_1C447FAB0(&dword_1C4F69F48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1C4454A50;
  v8 = v0[2];
  v7 = v0[3];
  sub_1C4426C44();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1C4462B70()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t type metadata accessor for ViewUpdate.ViewInProcessRunner()
{
  result = qword_1EDDFC838;
  if (!qword_1EDDFC838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4462C40()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&qword_1EC0C6438, &qword_1C4F6D808);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4EFD618();
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v11);
  sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  v19 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name);
  *v19 = v6;
  v19[1] = v4;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_requests) = v2;
  sub_1C446268C();
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v11);
  sub_1C4403138();
  sub_1C468282C();
  swift_endAccess();
  sub_1C43FE9F0();
}

void sub_1C4462D98()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v79 - v5;
  sub_1C43FBE44();
  v6 = sub_1C4F008B8();
  v7 = sub_1C43FCDF8(v6);
  v89 = v8;
  v90 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v86 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v79 - v14;
  sub_1C43FBE44();
  v15 = sub_1C4F008F8();
  v16 = sub_1C43FCDF8(v15);
  v87 = v17;
  v88 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v85 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - v23;
  v25 = sub_1C4F00978();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v79 - v35;
  v37 = sub_1C456902C(&qword_1EC0C6438, &qword_1C4F6D808);
  v38 = sub_1C43FBD18(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBD08();
  v84 = v41 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v79 - v44;
  v46 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost;
  sub_1C440F1BC();
  swift_beginAccess();
  v92 = v0;
  v83 = v46;
  sub_1C44DDE2C();
  v47 = sub_1C4EFD618();
  sub_1C4401818(v45);
  v48 = sub_1C44AB2BC();
  sub_1C4420C3C(v48, &qword_1EC0C6438, &qword_1C4F6D808);
  if (v46 == 1)
  {
    v79 = v47;
    sub_1C4F00188();
    v80 = v36;
    v81 = v28;
    v49 = *(v28 + 16);
    v82 = v25;
    v49(v33, v36, v25);
    sub_1C4F008C8();
    sub_1C4F008D8();
    sub_1C4F00898();
    v50 = sub_1C4F008D8();
    v51 = sub_1C4F01E28();
    if (sub_1C4F01F28())
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v50, v51, v53, "viewGeneration", "", v52, 2u);
      v54 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v54);
    }

    v56 = v89;
    v55 = v90;
    v57 = v93;
    (*(v89 + 16))(v86, v93, v90);
    v58 = sub_1C4F00948();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    sub_1C4F00938();
    v61 = v87;
    v62 = v88;
    (*(v87 + 16))(v85, v24, v88);
    sub_1C4EFD5E8();
    (*(v56 + 8))(v57, v55);
    (*(v61 + 8))(v24, v62);
    (*(v81 + 8))(v80, v82);
    sub_1C43FBD94();
    sub_1C440BAA8(v63, v64, v65, v79);
    sub_1C4403138();
    sub_1C468282C();
    swift_endAccess();
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v66, v67, v68, v69);
    sub_1C4403138();
    sub_1C468282C();
    swift_endAccess();
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    sub_1C43FCEE8(v25, qword_1EDE2DDF8);
    v70 = v92;

    v71 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      sub_1C43FECF0();
      v72 = swift_slowAlloc();
      sub_1C43FEC60();
      v73 = swift_slowAlloc();
      v94 = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_1C441D828(*(v70 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name), *(v70 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name + 8), &v94);
      sub_1C43FD0B4();
      _os_log_impl(v74, v75, v76, v77, v72, 0xCu);
      sub_1C440962C(v73);
      v78 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v78);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C446339C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1C44633C0()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4402120();
  sub_1C4434BD0(v2, v3, v4, v5);
  objc_autoreleasePoolPop(v1);
  if (v0)
  {
    v6 = sub_1C4402120();
    sub_1C4434000(v6, v7);
    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    v1 = v13;
    sub_1C441DFEC(0, 0xF000000000000000);
    swift_unknownObjectRetain();
    v8 = sub_1C4402120();
    sub_1C4431E64(v8, v9);
    swift_unknownObjectRelease();
    v10 = sub_1C4402120();
    sub_1C441DFEC(v10, v11);
  }

  return v1;
}

void sub_1C44634A0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_5;
  }

  v11[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v11];
  v5 = v11[0];
  if (!v4)
  {
    v8 = v5;
    v9 = sub_1C4EF97A8();

    swift_willThrow();
    v2 = 0;
LABEL_5:
    v7 = 0xF000000000000000;
    goto LABEL_6;
  }

  v2 = sub_1C4EF9A68();
  v7 = v6;

LABEL_6:
  *a2 = v2;
  a2[1] = v7;
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1C446359C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441016C();
    sub_1C44635EC();
    *v0 = v4;
  }
}

void sub_1C44635EC()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1C44108C0(v6);
    if (v3)
    {
      sub_1C4422208(v9, v10, v11, v12, v13, v14);
      v15 = sub_1C4440F6C();
      sub_1C43FEA8C(v15);
      if (v2)
      {
LABEL_9:
        v16 = sub_1C44330CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_12:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v7)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1C4463698(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C4463710()
{
  sub_1C4463744();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4463744()
{
  [objc_opt_self() clearCache];

  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C446380C()
{
  v1 = v0 + OBJC_IVAR___GDBiomeStreamStoreCache_inner;
  v2 = *(v0 + OBJC_IVAR___GDBiomeStreamStoreCache_inner);
  v3 = *(v1 + 16);

  sub_1C4EFF108();

  os_unfair_lock_lock((v6 + 24));
  v4 = *(v6 + 16);
  sub_1C4F00238();
  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1C4463890(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
  }

  return result;
}

double sub_1C44638A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (*(a1 + 49))
  {
    sub_1C44F92C4();
  }

  else
  {
    sub_1C4463B90();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v32 - v14;
  sub_1C4463BE4();
  if (!v7)
  {
    v35 = v10;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v34 = v18;
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    v33 = 0xEu >> (v36 & 0xF);
    LODWORD(v36) = 0x20104u >> (8 * v36);
    v19 = v36;
    v20 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    v21 = v38;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C4440254(v37, v21, 0x6C6F72746E6F63, 0xE700000000000000, 0);
    sub_1C4441C50(v19);
    v24 = v23;
    v26 = v25;
    objc_allocWithZone(MEMORY[0x1E69A9F18]);
    v27 = v22;
    v28 = v35;
    sub_1C4431E64(v35, v9);
    v29 = v34;
    sub_1C44344B8(v17, v34);
    sub_1C4441D58(v27, v28, v9, v17, v29, v24, v26, v33 & 1);
    sub_1C4EF9AD8();
    v8 = v30;

    sub_1C4434000(v17, v29);
  }

  return v8;
}

unint64_t sub_1C4463B90()
{
  result = qword_1EDDFE148[0];
  if (!qword_1EDDFE148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFE148);
  }

  return result;
}

void sub_1C4463BE4()
{
  sub_1C43FE96C();
  v34 = v2;
  v35 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C4F01F48();
  sub_1C43FCE64();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_1C43FCE64();
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - v22;
  if (v8 >> 60 == 15)
  {
    sub_1C440BAA8(v17, 1, 1, AssociatedTypeWitness);
    (*(v4 + 56))(v17, v6, v4);
    (*(v12 + 8))(v17, v10);
  }

  else
  {
    v29 = v21;
    v30 = v12;
    v31 = v10;
    v32 = v4;
    v33 = v6;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = *(AssociatedConformanceWitness + 40);
    v26 = v34;
    sub_1C44344B8(v34, v8);
    v25(v26, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (!v1)
    {
      v27 = v29;
      (*(v29 + 16))(v17, v23, AssociatedTypeWitness);
      sub_1C440BAA8(v17, 0, 1, AssociatedTypeWitness);
      (*(v32 + 56))(v17, v33);
      (*(v30 + 8))(v17, v31);
      (*(v27 + 8))(v23, AssociatedTypeWitness);
    }
  }

  sub_1C43FBC80();
}

double sub_1C4463E90(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0.0;
  sub_1C4463F50(&v6, &v7, a1, a2);
  sub_1C4434000(a1, a2);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4463F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_8;
      }

      v4 = v4;
LABEL_5:
      if (v4 < 0)
      {
        __break(1u);
LABEL_8:
        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x1C4464048);
      }

LABEL_6:
      sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
      sub_1C4464058();
      sub_1C44640AC();
      return sub_1C4EF9498();
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    default:
      goto LABEL_6;
  }
}

unint64_t sub_1C4464058()
{
  result = qword_1EDDFE880;
  if (!qword_1EDDFE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE880);
  }

  return result;
}

unint64_t sub_1C44640AC()
{
  result = qword_1EDDFCE80;
  if (!qword_1EDDFCE80)
  {
    sub_1C4572308(&qword_1EC0C4030, &unk_1C4F57320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCE80);
  }

  return result;
}

double sub_1C4464138()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v9 = v8;
  (*(v3 + 8))(v7, v0);
  return v9;
}

uint64_t sub_1C4464208()
{
  sub_1C447CCA8();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440101C();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A82C();
  swift_unownedRetainStrong();
  v15 = sub_1C4458808();
  result = sub_1C4461D94();
  if (!v1)
  {
    v17 = *(v15 + 432);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C4F0C890;
    v19 = MEMORY[0x1E69A0180];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v19;
    v20 = MEMORY[0x1E69E6158];
    *(v18 + 32) = v4;
    v21 = MEMORY[0x1E69A0138];
    *(v18 + 96) = v20;
    *(v18 + 104) = v21;
    strcpy((v18 + 72), "alwaysUpdate");
    *(v18 + 85) = 0;
    *(v18 + 86) = -5120;
    *(v18 + 136) = &unk_1F44095F0;
    *(v18 + 144) = sub_1C44248E8();
    *(v18 + 112) = 1;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v12 + 8))(v2, v9);
    v22 = sub_1C44038D0();
    sub_1C440BAA8(v22, v23, v24, v9);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4464408(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();

  return sub_1C4EFBA18();
}

unint64_t sub_1C44644B0()
{
  result = qword_1EDDF95D8;
  if (!qword_1EDDF95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95D8);
  }

  return result;
}

uint64_t sub_1C4464504()
{
  v1 = sub_1C4405D78();
  result = sub_1C4424B10(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1C446452C()
{
  sub_1C43FE96C();
  sub_1C441AE30();
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A474();
  v7 = sub_1C4EFB768();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C441C544();
  v13 = sub_1C4408D00();
  v14 = sub_1C4440C6C(v13);

  if (v0)
  {
    goto LABEL_3;
  }

  v15 = *(v14 + 88);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v16 = sub_1C44331AC();
  v17 = MEMORY[0x1E69E6530];
  *(v16 + 16) = xmmword_1C4F0D130;
  v18 = MEMORY[0x1E69A0180];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = v1;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v19 = *(v10 + 8);
  v20 = sub_1C43FD018();
  v21(v20);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C44112DC(v22, v23, v24, v7);
  v25 = sub_1C4EFBC48();
  sub_1C4420C3C(&v37, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v25)
  {
    v37.n128_u64[0] = v1;
    v27 = sub_1C4F02858();
    v29 = v28;
    sub_1C450B034();
    sub_1C441C114();
    v30 = swift_allocError();
    v31->n128_u64[0] = v27;
    v31->n128_u64[1] = v29;
    v31[1].n128_u64[0] = 0xD00000000000001BLL;
    v31[1].n128_u64[1] = 0x80000001C4FB5120;
    v31[2].n128_u64[0] = 0;
    v31[2].n128_u64[1] = 0xE000000000000000;
    sub_1C4426EA4(v37, v30, v31);

LABEL_3:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  sub_1C445FEE0();
  sub_1C4EFBBA8();
  v26 = sub_1C4EFBBE8();
  if (v26)
  {
    if (sqlite3_column_type(v26, 0) != 5)
    {
      v37.n128_u64[0] = sub_1C4F011E8();
    }
  }

  else
  {
    sub_1C446C094();
    sub_1C4EFBBF8();
  }

  sub_1C44091DC();
  sub_1C4EFBBA8();
  v32 = sub_1C4EFBBE8();
  if (!v32)
  {
    sub_1C440CDC4();
    sub_1C4EFBB98();

    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v32);
  sub_1C4423838();
  v35 = sub_1C4414708(v33, v34);
  if (v35 != 5)
  {
    sub_1C4F017E8();

    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD954();
  *(v36 - 16) = sub_1C487BF24;
  *(v36 - 8) = v14;
  sub_1C444157C();
  sub_1C4433888();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C44649A8(uint64_t a1)
{
  v2 = _s20BookmarkLoadingStateVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4464A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4464A74()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11[-v2];
  v4 = sub_1C444AF90();
  v6 = v5;
  v7 = _s7MetricsO7PayloadVMa();
  if (!sub_1C44157D4(v6, 1, v7))
  {
    sub_1C4EF9CC8();
    v8 = sub_1C4EF9CD8();
    sub_1C440BAA8(v3, 0, 1, v8);
    v9 = *(v7 + 56);
    sub_1C468282C();
  }

  return (v4)(v11, 0);
}

uint64_t sub_1C4464B84(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 192);

  return sub_1C4471988(a1, a2);
}

uint64_t sub_1C4464B9C()
{

  return sub_1C45D17A0(v0 - 176, v0 - 240);
}

uint64_t sub_1C4464BC0()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4464BF4()
{
  sub_1C43FBCD4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 113) = v3;
  *(v1 + 112) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  updated = _s17ViewUpdateRequestVMa(0);
  sub_1C43FBD18(updated);
  v10 = *(v9 + 64);
  *(v1 + 56) = sub_1C43FBE7C();
  v11 = _s17ViewUpdateResultsVMa(0);
  *(v1 + 64) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  *(v1 + 72) = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4464CA4()
{
  sub_1C43FEAEC();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v1[8];
  sub_1C4409678(v1 + 4, v1[7]);
  v0[10] = sub_1C4464DE4();
  v4 = *(v3 + 8);
  sub_1C4404280();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1C4459390;
  v9 = v0[4];
  v10 = sub_1C440F4D4(v0[3]);

  return v12(v10);
}

uint64_t sub_1C4464DE4()
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 24);
  MEMORY[0x1C6940330]();
  v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2 >> 1)
  {
    sub_1C43FCFE8(v2);
    sub_1C4F016D8();
  }

  sub_1C4F01748();
  v3 = *(v0 + 48);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v6 = (v3 + 32);
    do
    {
      v7 = *v6;
      v6 += 3;
      v8 = v7;
      sub_1C4F02318();
      v9 = *(v11 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v4;
    }

    while (v4);
    v5 = v11;
  }

  sub_1C4464EF8(v5);
  return v12;
}

uint64_t sub_1C4464F38(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x1E69E6290];
  v7[4] = MEMORY[0x1E6969DF8];
  v7[0] = a1;
  v7[1] = a2;
  v2 = sub_1C4409678(v7, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v4 - v3;
    if (v4 != v3)
    {
      if (v5 <= 14)
      {
        sub_1C4EF9908();
      }

      else if (v5 >= 0x7FFFFFFF)
      {
        MEMORY[0x1C6938610]();
      }

      else
      {
        MEMORY[0x1C6938650]();
      }
    }
  }

  sub_1C440962C(v7);
  return sub_1C43FBC98();
}

uint64_t sub_1C4464FF0(double a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a1;
  result = sub_1C4464F38(&v3, &v4);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C446504C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C4465218()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1C441016C();
    sub_1C440F1DC();
    sub_1C44635EC();
    *v1 = v4;
  }
}

uint64_t sub_1C44652C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7 >> 60 != 11)
  {
    return sub_1C441DFEC(a6, a7);
  }

  return result;
}

void sub_1C44653AC()
{
  v27 = 0;
  v28 = 1;
  v25 = 0;
  v26 = 1;
  v22 = &v27;
  v23 = &v25;
  sub_1C4465390(sub_1C4465BCC, v21);
  if (v28)
  {
    return;
  }

  v0 = v27;
  if (v27 < 1)
  {
    return;
  }

  if (v26)
  {
    return;
  }

  if (v25 < 1)
  {
    return;
  }

  v1 = v25 - v27;
  v2 = (v25 - v27) / v25;
  if (v27 <= 0x400 && v2 >= 0.85)
  {
    return;
  }

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2E088);

  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    sub_1C43FEC60();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315394;
    v8 = sub_1C47773C4();
    v10 = sub_1C441D828(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_1C43F8000, v4, v5, "%s: load factor = %f", v6, 0x16u);
    sub_1C440962C(v7);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (v2 >= 0.4)
  {
    goto LABEL_15;
  }

  v11 = v0 - v1;
  if (__OFSUB__(v0, v1))
  {
    __break(1u);
LABEL_15:
    if ((v0 + 0x4000000000000000) < 0)
    {
      __break(1u);
      return;
    }

    v11 = v0 / 5;
  }

  if (v11 >= 250)
  {
    v12 = 250;
  }

  else
  {
    v12 = v11;
  }

  v24[3] = v12;

  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    sub_1C43FEC60();
    v16 = swift_slowAlloc();
    v24[0] = v16;
    *v15 = 136315394;
    v17 = sub_1C47773C4();
    v19 = sub_1C441D828(v17, v18, v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    _os_log_impl(&dword_1C43F8000, v13, v14, "%s: will vacuum %ld pages.", v15, 0x16u);
    sub_1C440962C(v16);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  MEMORY[0x1EEE9AC00](v20);
  sub_1C4470F24();
  swift_beginAccess();
}

void sub_1C446572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  v42 = *v10;
  v43 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v43);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C4433378();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v25 = sub_1C442BAE8(v17, v18, v19, v20, v21, v22, v23, v24, v41);
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4406E1C();
  v31 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C444FD74();
  if (!v11)
  {
    goto LABEL_7;
  }

  v32 = v11;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v33 = *(v28 + 8);
  v34 = sub_1C43FCE84();
  v33(v34);
  if (v12)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v35 = v11;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v36 = sub_1C43FCE84();
  v33(v36);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C())
  {

    goto LABEL_7;
  }

  v37 = sub_1C440F670();
  v38(v37);
  v39 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v39, v40);
  __break(1u);
}

uint64_t sub_1C446594C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  result = sub_1C4EFBED8();
  if (!v3)
  {
    v14 = sub_1C4EFB768();
    sub_1C440BAA8(v12, 1, 1, v14);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1C4EFB9A8();

    sub_1C4423A0C(&v17, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v15 = v21;
    *a2 = v20;
    *(a2 + 8) = v15;
    sub_1C4EFBED8();
    sub_1C440BAA8(v10, 1, 1, v14);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1C4EFB9A8();

    sub_1C4423A0C(&v17, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v16 = v21;
    *a3 = v20;
    *(a3 + 8) = v16;
  }

  return result;
}

void sub_1C4465BE8(uint64_t a1)
{
  v3 = *(sub_1C4EF98F8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1C4465C84(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1C4465C84(uint64_t a1, char a2, uint64_t a3, char *a4, uint64_t a5)
{
  v64 = a5;
  v73 = a4;
  v77 = a3;
  v80 = sub_1C4EFB1E8();
  v63 = *(v80 - 8);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v80);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v62 - v10;
  v11 = sub_1C4EFB768();
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v74 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v62 - v19;
  v20 = sub_1C4EFBEC8();
  v70 = *(v20 - 8);
  v71 = v20;
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C4EF98F8();
  v67 = *(v23 - 8);
  v68 = v23;
  v24 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C4EFB148();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x10) == 0)
  {
    sub_1C4EFF9A8();
    sub_1C44901D4(&qword_1EDDFF9C0, MEMORY[0x1E69A9A70]);
    sub_1C4EFBE68();
    if (v5)
    {
      v31 = v79;
      v30 = v80;
      v32 = v5;
      goto LABEL_34;
    }
  }

  v76 = v11;
  if ((a2 & 0x20) == 0)
  {
    v33 = sub_1C4EFB588();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    LOBYTE(v81) = 0;
    sub_1C4EFB598();
    sub_1C4EFBF48();
  }

  sub_1C4EFBE88();
  v36 = sub_1C4EFB128();
  (*(v26 + 8))(v29, v25);
  if (v36)
  {
    v32 = v5;
  }

  else
  {
    sub_1C44FA5AC();
    v32 = v5;
    if (v5)
    {
      goto LABEL_33;
    }
  }

  if ((a2 & 1) != 0 && [objc_opt_self() isInternalDevice])
  {
    v37 = v66;
    v38 = v67;
    v39 = v68;
    (*(v67 + 16))(v66, v73, v68);
    v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v41 = swift_allocObject();
    (*(v38 + 32))(v41 + v40, v37, v39);
    v42 = v69;
    sub_1C4EFBEB8();
    sub_1C4EFBF88();

    (*(v70 + 8))(v42, v71);
  }

  if ((a2 & 2) != 0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v44 = sub_1C4F00978();
    sub_1C442B738(v44, qword_1EDDFECB8);
    v45 = sub_1C4F00968();
    v46 = sub_1C4F01CC8();
    v47 = os_log_type_enabled(v45, v46);
    v43 = v78;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = v49;
      *v48 = 136315138;
      v50 = sub_1C4F02C58();
      v52 = v32;
      v53 = sub_1C441D828(v50, v51, &v81);

      *(v48 + 4) = v53;
      v32 = v52;
      _os_log_impl(&dword_1C43F8000, v45, v46, "%s: disabling cache_spill", v48, 0xCu);
      sub_1C440962C(v49);
      MEMORY[0x1C6942830](v49, -1, -1);
      MEMORY[0x1C6942830](v48, -1, -1);
    }

    v54 = v75;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    if (!v32)
    {
      (*(v43 + 8))(v54, v76);
      goto LABEL_31;
    }

    (*(v43 + 8))(v54, v76);
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1C4F02248();

      v81 = 0xD000000000000015;
      v82 = 0x80000001C4F8D6D0;
      v43 = v78;
      if (qword_1EDDF34F0 != -1)
      {
        swift_once();
      }

      v83 = qword_1EDE2D3C0;
      v55 = sub_1C4F02858();
      MEMORY[0x1C6940010](v55);

      v56 = v72;
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a2 & 8) == 0)
      {
        v43 = v78;
LABEL_31:
        v58 = v74;
        sub_1C4EFB758();
        sub_1C4EFBFF8();
        if (!v32)
        {
          (*(v43 + 8))(v58, v76);
          return;
        }

        (*(v43 + 8))(v58, v76);
        goto LABEL_33;
      }

      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1C4F02248();

      v81 = 0xD000000000000015;
      v82 = 0x80000001C4F8D6D0;
      if (qword_1EDDFEDC8 != -1)
      {
        swift_once();
      }

      v83 = qword_1EDE2DF90;
      v57 = sub_1C4F02858();
      MEMORY[0x1C6940010](v57);

      v56 = v65;
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      v43 = v78;
      if (!v32)
      {
LABEL_30:
        (*(v43 + 8))(v56, v76);

        goto LABEL_31;
      }
    }

    (*(v43 + 8))(v56, v76);
  }

LABEL_33:
  v31 = v79;
  v30 = v80;
LABEL_34:
  v81 = v32;
  v59 = v32;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    v60 = v31;
    v61 = v62;
    (*(v63 + 32))(v62, v60, v30);
    sub_1C4774554(v73, v61);
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1C4466674()
{
  v1 = sub_1C4EF98F8();
  sub_1C43FD3F8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C4466710(char a1)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v43[-v12];
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440D124();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v43[-v16];
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43[-v19];
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      return result;
    case 7:
      if (qword_1EDDFC178 != -1)
      {
        result = sub_1C441294C();
      }

      sub_1C4406260(result, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v17);
      v30 = type metadata accessor for Configuration();
      sub_1C443DFF4(v17, v31, v30);
      sub_1C4420C3C(v17, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v32);
      sub_1C43FD954();
      *(v33 - 16) = 1;
      v25 = 0x72756F4877656976;
      goto LABEL_23;
    case 8:
      if (qword_1EDDFC178 != -1)
      {
        result = sub_1C441294C();
      }

      sub_1C4406260(result, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v13);
      v38 = type metadata accessor for Configuration();
      sub_1C443DFF4(v13, v39, v38);
      sub_1C4420C3C(v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v41);
      sub_1C4440E64();
      *(v42 - 16) = 2;
      v25 = 0xD000000000000012;
      goto LABEL_23;
    case 9:
      if (qword_1EDDFC178 != -1)
      {
        result = sub_1C441294C();
      }

      sub_1C4406260(result, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v1);
      v26 = type metadata accessor for Configuration();
      sub_1C443DFF4(v1, v27, v26);
      sub_1C4420C3C(v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v28);
      sub_1C4440E64();
      *(v29 - 16) = 3;
      v25 = 0xD000000000000011;
      goto LABEL_23;
    case 10:
      if (qword_1EDDFC178 != -1)
      {
        result = sub_1C441294C();
      }

      sub_1C4406260(result, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v9);
      v34 = type metadata accessor for Configuration();
      sub_1C443DFF4(v9, v35, v34);
      sub_1C4420C3C(v9, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v36);
      sub_1C4440E64();
      *(v37 - 16) = 4;
      v25 = 0xD000000000000017;
      goto LABEL_23;
    default:
      if (qword_1EDDFC178 != -1)
      {
        result = sub_1C441294C();
      }

      sub_1C4406260(result, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v20);
      v21 = type metadata accessor for Configuration();
      sub_1C443DFF4(v20, v22, v21);
      sub_1C4420C3C(v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
LABEL_21:
        sub_1C446D0DC();
        swift_allocError();
        *v40 = 0xD000000000000037;
        *(v40 + 8) = 0x80000001C4FB1670;
        *(v40 + 16) = 2;
        return swift_willThrow();
      }

      else
      {
        type metadata accessor for OneShotSingletons();
        sub_1C44A1F64();
        MEMORY[0x1EEE9AC00](v23);
        sub_1C43FD954();
        *(v24 - 16) = 0;
        v25 = 0x6576694C77656976;
LABEL_23:
        sub_1C446703C(v25);
        sub_1C4467260();
      }
  }
}

void sub_1C4466CE4()
{
  v3 = *(v2 - 208);
  *(v2 - 240) = *(v2 - 200);
  *(v2 - 232) = v3;
  v4 = *(*(v1 + *(v0 + 28)) + 16);
}

uint64_t sub_1C4466CFC@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 72) * (a1 | (v4 << 6));
  v7 = *(v1 + 16);
  v8 = *(v3 + 48) + v6;
  result = v2;
  v10 = *(v5 - 88);
  return result;
}

uint64_t sub_1C4466D24()
{
  v2 = *(v0 - 992);
  v3 = *(v0 - 1008);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4466D44(uint64_t a1)
{

  return LocationMatcher.init(stores:source:pipelineType:)(v2, v1, (v3 - 96), a1);
}

void sub_1C4466D68()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 316);

  sub_1C4B1E304();
}

uint64_t sub_1C4466DB0(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 100) = a3;
}

void sub_1C4466DD0()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
}

uint64_t sub_1C4466DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 - 280) + a1 + 8);
}

void sub_1C4466E38()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4466E68()
{
  v7 = (v3 + v4[8]);
  *v7 = v2;
  v7[1] = v1;
  v8 = (v3 + v4[10]);
  v9 = *(v0 + 184);
  *v8 = *(v0 + 192);
  v8[1] = v9;
  *(v3 + v4[11]) = v6;
  *(v3 + v4[12]) = *(v0 + 180);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4466ED0()
{
  result = *(v0 - 256);
  v3 = *(v1 - 304);
  v4 = *(v1 - 104);
  v5 = *(v1 - 144);
  return result;
}

uint64_t sub_1C4466EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4466F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4466FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C446703C(uint64_t a1)
{
  if (qword_1EDDFB440 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EDDFB450 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4467108((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1C4467128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = sub_1C445FAA8(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    *a5 = v13;
  }

  else
  {
    v15 = swift_endAccess();
    v16 = a4(v15);
    swift_beginAccess();

    v17 = *(v9 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v9 + 16);
    sub_1C466274C();
    *(v9 + 16) = v18;
    result = swift_endAccess();
    *a5 = v16;
  }

  return result;
}

void sub_1C4467260()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4467244((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1C44672B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if ((*(*a1 + 16) & 1) == 0)
  {
    *(v3 + 16) = 1;
    if (*(v3 + 24))
    {
      v5 = *(v3 + 24);
      v6 = swift_unknownObjectRetain();
      if (xpc_activity_copy_criteria(v6) && (swift_getObjectType(), v7 = sub_1C4A4E438(), swift_unknownObjectRelease(), !v7))
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v22 = sub_1C4F00978();
        sub_1C442B738(v22, qword_1EDE2DE10);

        v23 = sub_1C4F00968();
        v24 = sub_1C4F01CB8();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = v26;
          *v25 = 136315138;
          v27 = a2[5];
          v28 = a2[6];
          sub_1C4409678(a2 + 2, v27);
          v29 = (*(v28 + 8))(v27, v28);
          v31 = sub_1C441D828(v29, v30, &v32);

          *(v25 + 4) = v31;
          _os_log_impl(&dword_1C43F8000, v23, v24, "ScheduledTask: %s: has already been scheduled", v25, 0xCu);
          sub_1C440962C(v26);
          MEMORY[0x1C6942830](v26, -1, -1);
          MEMORY[0x1C6942830](v25, -1, -1);
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v8 = sub_1C4F00978();
        sub_1C442B738(v8, qword_1EDE2DE10);

        v9 = sub_1C4F00968();
        v10 = sub_1C4F01CB8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v32 = v12;
          *v11 = 136315138;
          v14 = a2[5];
          v13 = a2[6];
          sub_1C4409678(a2 + 2, v14);
          v15 = (*(v13 + 8))(v14, v13);
          v17 = sub_1C441D828(v15, v16, &v32);

          *(v11 + 4) = v17;
          _os_log_impl(&dword_1C43F8000, v9, v10, "ScheduledTask: %s: scheduling OneShotTask", v11, 0xCu);
          sub_1C440962C(v12);
          MEMORY[0x1C6942830](v12, -1, -1);
          MEMORY[0x1C6942830](v11, -1, -1);
        }

        v18 = a2[11];
        v19 = a2[12];
        sub_1C4409678(a2 + 8, v18);
        v20 = (*(v19 + 16))(v18, v19);
        v21 = MEMORY[0x1EEE9AC00](v20);
        os_unfair_lock_lock(v21 + 6);
        sub_1C4AF1E4C((v20 + 16));
        os_unfair_lock_unlock((v20 + 24));
        if (v2)
        {
          __break(1u);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1C446769C()
{
  sub_1C447CCA8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C440101C();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  swift_unownedRetainStrong();
  v17 = sub_1C4458808();
  sub_1C4461D94();
  if (!v1)
  {
    v18 = *(v17 + 392);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = sub_1C4404370();
    *(v19 + 16) = xmmword_1C4F0CE60;
    v20 = MEMORY[0x1E69A0180];
    *(v19 + 56) = MEMORY[0x1E69E6530];
    *(v19 + 64) = v20;
    v21 = MEMORY[0x1E69E63B0];
    *(v19 + 32) = v6;
    v22 = MEMORY[0x1E69A0168];
    *(v19 + 96) = v21;
    *(v19 + 104) = v22;
    *(v19 + 72) = v4;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v14 + 8))(v2, v11);
    v23 = sub_1C44038D0();
    sub_1C44554A8(v23, v24, v25);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
}

uint64_t sub_1C446784C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1C4401CBC(&qword_1EDDF0060, &unk_1EC0BC928, &qword_1C4F29AF0);
  result = sub_1C4EFB4D8();
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1C4467900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C446784C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4467948(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C44679C8(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a1;
  v9 = sub_1C43FBC98();

  return sub_1C446D134(v9, v10);
}

uint64_t sub_1C4467A44(uint64_t *a1)
{
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F3B920;
  *(inited + 32) = 0x656D614E77656956;
  *(inited + 40) = 0xE800000000000000;
  v3 = *a1;
  v4 = a1[1];
  *(inited + 48) = sub_1C4F01108();
  *(inited + 56) = 0x7265646E6553;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 80), "UpdateStatus");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 104), "TotalDuration");
  *(inited + 118) = -4864;
  sub_1C4467E58();
  sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1C43FBDF0();
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v6;
  sub_1C4468050();
  sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1C43FBDF0();
  *(inited + 144) = v7;
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = v8;
  v9 = _s7MetricsO7PayloadVMa();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C43FBDF0();
  *(inited + 168) = v10;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = v11;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C43FBDF0();
  *(inited + 192) = v12;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = v13;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C4468200();
  v14 = sub_1C4F00F28();
  sub_1C4468244();
  if ((v15 & 1) == 0)
  {
    sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    v14 = v20;
  }

  sub_1C44684FC();
  if ((v16 & 1) == 0)
  {
    sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    v14 = v20;
  }

  if (a1[3])
  {
    v17 = a1[2];
    sub_1C4F01108();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    v14 = v20;
  }

  v18 = *(a1 + 34);
  if (v18 != 2)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    return v20;
  }

  return v14;
}

uint64_t sub_1C4467DFC()
{
  v1 = _s7MetricsO7PayloadVMa();
  sub_1C43FBD18(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_1C4467A44(v3);
}

uint64_t sub_1C4467E58()
{
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = _s7MetricsO7PayloadVMa();
  sub_1C4467FE0(v0 + *(v15 + 40), v14);
  v16 = sub_1C44157D4(v14, 1, v1);
  result = 0;
  if (v16 != 1)
  {
    (*(v4 + 32))(v8, v14, v1);
    v18 = *(v15 + 36);
    sub_1C4EF9B78();
    v20 = v19;
    (*(v4 + 8))(v8, v1);
    return v20;
  }

  return result;
}

uint64_t sub_1C4467FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C4468050()
{
  sub_1C43FEC28();
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C441292C();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C440B784();
  sub_1C4467FE0(v1 + *(v16 + 52), v2);
  sub_1C440A6F0(v2);
  if (v19)
  {
    v17 = v2;
LABEL_7:
    sub_1C44686E4(v17);
    goto LABEL_8;
  }

  v18 = sub_1C44208C0();
  v3(v18);
  sub_1C4467FE0(v1 + *(v16 + 56), v0);
  sub_1C440A6F0(v0);
  if (v19)
  {
    v20 = *(v12 + 8);
    v21 = sub_1C4405814();
    v22(v21);
    v17 = v0;
    goto LABEL_7;
  }

  v23 = sub_1C4402EE8();
  v3(v23);
  sub_1C4EF9B78();
  v24 = sub_1C44012EC();
  v0(v24);
  v25 = sub_1C4405814();
  v0(v25);
LABEL_8:
  sub_1C44086C4();
}

unint64_t sub_1C4468200()
{
  result = qword_1EDDFCDD0[0];
  if (!qword_1EDDFCDD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDDFCDD0);
  }

  return result;
}

void sub_1C4468244()
{
  sub_1C43FEC28();
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C441292C();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C440B784();
  sub_1C4467FE0(v1 + *(v16 + 60), v2);
  sub_1C440A6F0(v2);
  if (v19)
  {
    v17 = v2;
LABEL_7:
    sub_1C44686E4(v17);
    goto LABEL_8;
  }

  v18 = sub_1C44208C0();
  v3(v18);
  sub_1C4467FE0(v1 + *(v16 + 64), v0);
  sub_1C440A6F0(v0);
  if (v19)
  {
    v20 = *(v12 + 8);
    v21 = sub_1C4405814();
    v22(v21);
    v17 = v0;
    goto LABEL_7;
  }

  v23 = sub_1C4402EE8();
  v3(v23);
  sub_1C4EF9B78();
  v24 = sub_1C44012EC();
  v0(v24);
  v25 = sub_1C4405814();
  v0(v25);
LABEL_8:
  sub_1C44086C4();
}

void sub_1C44683F4()
{
  sub_1C44158A0();
  sub_1C446060C();
  v4 = sub_1C440DFB8(v2, v3);
  v6 = sub_1C445FAA8(v4, v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4423AC0();
  sub_1C4408720();
  v9 = sub_1C4F02458();
  if (v9)
  {
    sub_1C4451290();
    sub_1C4410A40();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C4440968(v9, v10, v11, v12, *v0);
    sub_1C4410198();
  }

  else
  {
    v16 = sub_1C441E240();
    v17(v16);
    sub_1C4410198();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C44684FC()
{
  sub_1C43FEC28();
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C441292C();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C440B784();
  sub_1C4467FE0(v1 + *(v16 + 44), v2);
  sub_1C440A6F0(v2);
  if (v19)
  {
    v17 = v2;
LABEL_7:
    sub_1C44686E4(v17);
    goto LABEL_8;
  }

  v18 = sub_1C44208C0();
  v3(v18);
  sub_1C4467FE0(v1 + *(v16 + 48), v0);
  sub_1C440A6F0(v0);
  if (v19)
  {
    v20 = *(v12 + 8);
    v21 = sub_1C4405814();
    v22(v21);
    v17 = v0;
    goto LABEL_7;
  }

  v23 = sub_1C4402EE8();
  v3(v23);
  sub_1C4EF9B78();
  v24 = sub_1C44012EC();
  v0(v24);
  v25 = sub_1C4405814();
  v0(v25);
LABEL_8:
  sub_1C44086C4();
}

void sub_1C44686AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C440647C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C43FEA08(v6, v10);
  }
}

uint64_t sub_1C44686E4(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C446874C()
{
  v1 = sub_1C4F01108();
  v2 = [v0 valueForEntitlement_];

  if (v2)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    if (swift_dynamicCast() && (v30 & 1) != 0)
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v3 = sub_1C4F00978();
      sub_1C442B738(v3, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = v0;
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CF8();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *&v33[0] = v8;
        *(v7 + 4) = sub_1C442CFF4(4.8151e-34, v8, v9, v10, v11, v12, v13);
        *(v7 + 12) = 1024;
        *(v7 + 14) = [v4 processIdentifier];

        sub_1C4407650(&dword_1C43F8000, v14, v15, "XPC connection for service(%s) from %d");
        sub_1C440962C(v8);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      return 1;
    }
  }

  else
  {
    sub_1C4448244(v33);
  }

  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = v0;
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CD8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v33[0] = v21;
    *(v20 + 4) = sub_1C442CFF4(4.8151e-34, v21, v22, v23, v24, v25, v26);
    *(v20 + 12) = 1024;
    *(v20 + 14) = [v17 processIdentifier];

    sub_1C4407650(&dword_1C43F8000, v27, v28, "IntelligencePlatform %s: Rejecting connection from %d: lacking entitlement");
    sub_1C440962C(v21);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C4468A64(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C445229C;

  return v7(a1);
}

uint64_t sub_1C4468B5C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C4999D64;

  return KnowledgeConstructionXPC.Server.runFastpassPipeline(with:)();
}

uint64_t sub_1C4468C14()
{
  sub_1C43FCF70();
  v1 = [objc_opt_self() isInternalDevice];
  *(v0 + 96) = v1;
  if (v1)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v2 = sub_1C4F00978();
    *(v0 + 64) = sub_1C442B738(v2, qword_1EDE2DCD8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (sub_1C4402B64(v4))
    {
      v5 = sub_1C43FCED0();
      sub_1C43FBD24(v5);
      sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "KnowledgeConstructionXPC: runFastpassPipeline");
      sub_1C43FE9D4();
    }

    if (qword_1EDDE1A10 != -1)
    {
      sub_1C4407344();
    }

    v8 = *(v0 + 56);
    sub_1C442B738(*(v0 + 48), qword_1EDE2CB88);
    sub_1C43FC600();
    v9 = sub_1C43FBC98();
    sub_1C4466EEC(v9, v10);
    v11 = type metadata accessor for Configuration();
    result = sub_1C43FD9F0(v11);
    if (v13)
    {
      __break(1u);
    }

    else
    {
      if (qword_1EDDF0AB0 != -1)
      {
        sub_1C4402D88();
      }

      v14 = *(v0 + 56);
      *(v0 + 72) = sub_1C4468E90();
      sub_1C4467948(*(v0 + 56));
      v24 = swift_task_alloc();
      *(v0 + 80) = v24;
      *v24 = v0;
      v24[1] = sub_1C49AF7F0;
      v25 = *(v0 + 40);

      return sub_1C4470C88(v25);
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v15 = sub_1C4F00978();
    sub_1C43FCEE8(v15, qword_1EDE2DCD8);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (sub_1C4402B64(v17))
    {
      v18 = sub_1C43FCED0();
      sub_1C43FBD24(v18);
      sub_1C43FFFD8(&dword_1C43F8000, v19, v20, "KnowledgeConstructionXPC: API disabled on customer devices.");
      sub_1C43FE9D4();
    }

    v21 = *(v0 + 56);

    sub_1C43FBCF0();
    v23 = *(v0 + 96);

    return v22(v23);
  }

  return result;
}

uint64_t sub_1C4468E90()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4470C6C(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4468F24(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Configuration();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  v10 = sub_1C44019F8(a2, *(v9 + 16));
  swift_endAccess();
  if (!v10)
  {
    sub_1C443113C(a2, v8);
    v11 = type metadata accessor for Pipeline();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v10 = swift_allocObject();
    sub_1C4AC22D4(v8);
    if (!v2)
    {
      swift_beginAccess();

      v14 = *(v9 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v9 + 16);
      sub_1C4661A80();
      *(v9 + 16) = v17;
      swift_endAccess();
    }
  }

  return v10;
}

float sub_1C4469088(float *a1, int *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

void sub_1C44690B8()
{

  JUMPOUT(0x1C6940010);
}

id sub_1C44690E8(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(a1, a2);

  return v2;
}

uint64_t sub_1C4469110()
{

  return sub_1C449D50C(v0 - 120, 0);
}

uint64_t sub_1C446912C()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 24);

  return sub_1C4EF9C18();
}

void sub_1C4469144()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
}

uint64_t sub_1C4469198()
{

  return type metadata accessor for Configuration();
}

void *sub_1C44691B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7 = *(v5 - 256);

  return sub_1C4D2C7B8(a1, a2, v4, a4);
}

uint64_t sub_1C4469224()
{
}

uint64_t sub_1C4469240()
{
  v2 = *(v0 - 456);
  v3 = *(v0 - 432);

  return sub_1C4F00DB8();
}

uint64_t sub_1C446927C()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C44692E0()
{
  v0[53] = v1;
  v0[54] = v4;
  v0[50] = v2;

  return sub_1C442E860(v3 + 128, (v0 + 44));
}

uint64_t sub_1C4469300()
{
  result = v0;
  v3 = *(v1 - 296);
  v4 = *(v1 - 288);
  v5 = *(v1 - 280);
  return result;
}

void sub_1C4469320()
{
  v3 = *(v0 - 200);
  v2 = *(v0 - 192);
  v4 = *(v0 - 208);

  sub_1C4C75EF8();
}

id sub_1C446934C(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_1C4469374(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C4469394()
{

  return sub_1C4F02938();
}

void sub_1C44693E4(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

uint64_t sub_1C446940C()
{
  result = v1;
  v3 = *(v0 + 24);
  return result;
}

uint64_t sub_1C4469434()
{
  result = v1 + v0;
  v4 = *(v2 - 104);
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_1C4469448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v51 = a5;
  v56 = a4;
  v54 = a6;
  v55 = a3;
  v53 = a7;
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v48 - v11;
  v13 = type metadata accessor for Pipeline.StatusStore();
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config;
  v20 = v58;
  result = sub_1C446DE28(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config);
  if (!v20)
  {
    v48[1] = v14;
    v49 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v18;
    v50 = v12;
    v22 = v54;
    sub_1C443113C(a2 + v19, v17);
    v24 = v55;
    v23 = v56;
    v17[*(v13 + 20)] = v55;
    sub_1C446A728(v17, v23);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DE10);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Pipeline: run starting.", v28, 2u);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    v29 = [objc_opt_self() defaultCenter];
    v30 = *MEMORY[0x1E69A9F50];
    sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy(v57, "pipelineType");
    HIBYTE(v57[6]) = 0;
    v57[7] = -5120;
    v32 = v30;
    v33 = MEMORY[0x1E69E6158];
    sub_1C4F02198();
    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E75;
    switch(v24)
    {
      case 1:
        v34 = 0xE400000000000000;
        v35 = 1819047270;
        break;
      case 2:
        v34 = 0xE500000000000000;
        v35 = 0x61746C6564;
        break;
      case 3:
        v34 = 0xEA0000000000676ELL;
        v35 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    *(inited + 96) = v33;
    *(inited + 72) = v35;
    *(inited + 80) = v34;
    v36 = sub_1C4F00F28();
    sub_1C446C7A4(v32, 0, v36, v29);

    v37 = v58;
    *(v58 + 24) = v24;
    MEMORY[0x1EEE9AC00](v38);
    v48[-2] = v17;
    LOBYTE(v48[-1]) = v24;
    sub_1C446C840(0, 0, sub_1C446F14C);
    v39 = v50;
    sub_1C4F01898();
    v40 = sub_1C4F018C8();
    sub_1C440BAA8(v39, 0, 1, v40);
    v41 = v49;
    sub_1C443113C(v17, v49);
    v42 = (*(v52 + 80) + 64) & ~*(v52 + 80);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v44 = v56;
    v43[4] = a2;
    v43[5] = v44;
    v43[6] = v51;
    v43[7] = v22;
    sub_1C44760B0(v41, v43 + v42);

    sub_1C4AC1B58();
    v46 = v45;
    sub_1C446F170(v39, &qword_1EC0BC660, &qword_1C4F29150);
    v47 = *(v37 + 32);
    *(v37 + 32) = v46;

    *v53 = *(v37 + 32);

    return sub_1C4454270();
  }

  return result;
}

uint64_t sub_1C44699EC()
{
  v1 = type metadata accessor for Pipeline.StatusStore();
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  v8 = v0[7];

  v9 = sub_1C4EF98F8();
  sub_1C43FD3F8(v9);
  (*(v10 + 8))(v0 + ((v3 + 64) & ~v3));
  v11 = sub_1C445BFD0();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1C4469AB4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = a2;
  v5 = sub_1C4F00A58();
  v6 = sub_1C43FCDF8(v5);
  v55 = v7;
  v56 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EF98F8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v20;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v54 = v11;
  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDDFECB8);
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = v12;
    v26 = v25;
    v27 = swift_slowAlloc();
    v50 = v2;
    v28 = v27;
    v58[0] = v27;
    *v26 = 136315138;
    v29 = sub_1C446A060(v57);
    v51 = a1;
    v31 = sub_1C441D828(v29, v30, v58);
    a1 = v51;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1C43F8000, v23, v24, "%s: tryLock called.", v26, 0xCu);
    sub_1C440962C(v28);
    v3 = v50;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v12 = v52;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v15 + 16))(v21, a1, v12);
  v32 = v53;
  sub_1C446E1BC();
  v33 = sub_1C4EF98E8();
  v35 = v34;
  v36 = *(v15 + 8);
  v36(v32, v12);
  v37 = v54;
  v38 = MEMORY[0x1C693F750](v33, v35);
  v39 = &v50;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C4F00A48();
  if (v3)
  {
    (*(v55 + 8))(v37, v56);
    goto LABEL_9;
  }

  (*(v55 + 8))(v37, v56);
  v40 = flock(v58[0], 6);
  LOBYTE(v39) = v40 == 0;
  if (!v40)
  {
    type metadata accessor for InterprocessLockDescriptors();
    sub_1C446E3AC();
    goto LABEL_9;
  }

  v41 = sub_1C4999FA0();
  if (MEMORY[0x1C693F6A0](v41) == 35)
  {
LABEL_9:
    v36(v21, v12);
    return v39 & 1;
  }

  sub_1C440E49C();
  v43 = sub_1C446A060(v57);
  v45 = v44;

  v58[0] = v43;
  v58[1] = v45;
  v46 = sub_1C441FDAC();
  MEMORY[0x1C6940010](v46);
  sub_1C44266D0();
  v47 = sub_1C4F02858();
  MEMORY[0x1C6940010](v47);

  sub_1C43FE984();
  v48 = MEMORY[0x1C6940010](0xD000000000000022);
  LODWORD(v59) = MEMORY[0x1C693F6A0](v48);
  v49 = sub_1C4F02858();
  MEMORY[0x1C6940010](v49);

  sub_1C44072D4();
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C446A060(char a1)
{
  sub_1C4F02248();

  v2 = 0xED00006D65747379;
  v3 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = sub_1C43FD3B0();
      break;
    case 2:
      v2 = 0xED00006E6F697461;
      v3 = sub_1C4432574();
      break;
    case 3:
      v2 = 0xEE0070756E61656CLL;
      v3 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1C446A178()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C446A288(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C446A20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for InterprocessLockDescriptors, sub_1C499A74C, sub_1C46626FC);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1C446A2A4()
{
  sub_1C442F0C4();
  sub_1C4424FA4();
  v5 = v4;
  v6 = *v0;
  v8 = sub_1C446A3F0(v7);
  sub_1C442C5D8(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0BA888, &qword_1C4F14780);
  if (sub_1C440D17C())
  {
    v11 = sub_1C440C3B4();
    sub_1C446A3F0(v11);
    sub_1C43FED0C();
    if (!v13)
    {
      goto LABEL_12;
    }

    v3 = v12;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 4 * v3) = v5;
    sub_1C4422220();
  }

  else
  {
    sub_1C4422220();

    sub_1C457E55C(v14, v15, v16, v17);
  }
}

uint64_t sub_1C446A378(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1C443309C();
  a2(v8, a1);
  v5 = sub_1C4F02B68();

  return a3(a1, v5);
}

uint64_t sub_1C446A41C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1C443FB80();
      break;
    case 2:
      sub_1C4410238();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

unint64_t sub_1C446A4F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00006D65747379;
      v8 = 0x53656761726F7473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x656E696C65706970;
          break;
        case 2:
          v8 = 0x7267694D77656976;
          v7 = 0xED00006E6F697461;
          break;
        case 3:
          v8 = 0x43656761726F7473;
          v7 = 0xEE0070756E61656CLL;
          break;
        default:
          break;
      }

      v9 = 0x53656761726F7473;
      v10 = 0xED00006D65747379;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x656E696C65706970;
          break;
        case 2:
          v9 = 0x7267694D77656976;
          v10 = 0xED00006E6F697461;
          break;
        case 3:
          v9 = 0x43656761726F7473;
          v10 = 0xEE0070756E61656CLL;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C4F02938();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C446A728(uint64_t a1, uint64_t i)
{
  v4 = v3;
  v5 = v2;
  v8 = *v2;
  if (Pipeline.StatusStore.currentSessionId()().value._object)
  {

    v9 = sub_1C4AD2440(10);
    v10 = sub_1C4AD2518();
    if ((v9 & 1) != 0 && (v10 & 1) == 0)
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v11 = sub_1C4F00978();
        sub_1C442B738(v11, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        v13 = sub_1C4F01CD8();
        v14 = os_log_type_enabled(v12, v13);
        v37 = v8;
        if (v14)
        {
          v15 = swift_slowAlloc();
          v33 = i;
          v34[0] = swift_slowAlloc();
          v16 = v34[0];
          *v15 = 136315138;
          v17 = sub_1C46655C4();
          v8 = sub_1C441D828(v17, v18, v34);

          *(v15 + 4) = v8;
          _os_log_impl(&dword_1C43F8000, v12, v13, "%s pipeline failure: Tried too many times for current session", v15, 0xCu);
          sub_1C440962C(v16);
          v19 = v16;
          i = v33;
          MEMORY[0x1C6942830](v19, -1, -1);
          MEMORY[0x1C6942830](v15, -1, -1);
        }

        sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
        if ((static NSUserDefaults.testTelemetry.getter() & 1) != 0 || i != 1)
        {
          sub_1C4AD1484();
        }

        if (sub_1C4AD2654())
        {
          break;
        }

        v20 = sub_1C4F00968();
        v21 = sub_1C4F01CF8();
        if (os_log_type_enabled(v20, v21))
        {
          v8 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v34[0] = v22;
          *v8 = 136315138;
          v23 = sub_1C46655C4();
          v25 = sub_1C441D828(v23, v24, v34);

          *(v8 + 4) = v25;
          _os_log_impl(&dword_1C43F8000, v20, v21, "%s reset intermediate data", v8, 0xCu);
          sub_1C440962C(v22);
          MEMORY[0x1C6942830](v22, -1, -1);
          MEMORY[0x1C6942830](v8, -1, -1);
        }

        LOBYTE(v34[0]) = *(a1 + *(type metadata accessor for Pipeline.StatusStore() + 20));
        sub_1C4AC3480(v34);
        v26 = v5 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
        v27 = *(v26 + *(type metadata accessor for PhaseStores() + 24));
        sub_1C4873648();
        if (v4)
        {
          break;
        }

        sub_1C446ABD0(0);
        v4 = 0;
        v5 = sub_1C4AC37B4();
        v28 = 0;
        v29 = *(v5 + 16);
        for (i = v5 + 32; ; i += 40)
        {
          if (v29 == v28)
          {

            return sub_1C446B930();
          }

          if (v28 >= *(v5 + 16))
          {
            break;
          }

          sub_1C448BD48(i, v34);
          v8 = v35;
          v30 = v36;
          v31 = sub_1C4409678(v34, v35);
          sub_1C446F2A0(v31, 0, 0, v8, v30);
          ++v28;
          sub_1C440962C(v34);
        }

        __break(1u);
LABEL_21:
        swift_once();
      }
    }
  }

  return sub_1C446B930();
}

Swift::String_optional __swiftcall Pipeline.StatusStore.currentSessionId()()
{
  if (qword_1EDDF7AC0 != -1)
  {
    swift_once();
  }

  sub_1C442013C(&qword_1EDE2D758);
  if (v0)
  {

    v1 = 0;
    v2 = 0;
  }

  else
  {
    sub_1C44078DC();
    v1 = sub_1C446B0A0();
    v2 = v5;
  }

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void *sub_1C446ABD0(char a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C44098F0(v1, v6 - v5);
  v15 = *(v1 + *(type metadata accessor for Pipeline.StatusStore() + 20));
  v8 = sub_1C446ACA4(&v15, a1);
  v10 = v9;
  v11 = type metadata accessor for KeyValueStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return KeyValueStore.init(config:domain:)(v7, v8, v10);
}

unint64_t sub_1C446ACA4(unsigned __int8 *a1, char a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  switch(v2)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x61746C6564;
      break;
    case 3:
      v3 = 0xEA0000000000676ELL;
      v4 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v4, v3);

  if (a2)
  {
    v6 = 0x756F69766572702ELL;
  }

  else
  {
    v6 = 0x746E65727275632ELL;
  }

  if (a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  MEMORY[0x1C6940010](v6, v7);

  return 0xD000000000000010;
}

void *KeyValueStore.init(config:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *v3;
  v3[2] = a2;
  v3[3] = a3;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_config;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_config);
  if (qword_1EDDFF230 != -1)
  {
    swift_once();
  }

  v9 = sub_1C446B00C();
  if (v4)
  {
    sub_1C4467948(a1);
    v10 = v3[3];

    sub_1C4467948(v3 + v8);
    v11 = *(*v3 + 48);
    v12 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) = v9;
    v13 = sub_1C4EF96F8();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder) = sub_1C4EF96E8();

    sub_1C4EF96C8();

    v16 = sub_1C4EF96B8();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1C4EF96A8();
    sub_1C4467948(a1);
    *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder) = v19;
  }

  return v5;
}

uint64_t sub_1C446AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for KeyValueDatabase, sub_1C44FB3DC, sub_1C44FBF54);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C446B00C()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C446AFF0(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C446B0A0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v2 = sub_1C440CABC();
  sub_1C443ABE4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  v11 = v10;

  return v11;
}

uint64_t sub_1C446B134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C446B17C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_1C446B1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v34 = a2;
  v33[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v33 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v40 = v12;
  v41 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v39);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v33[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v37 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69A0130];
  v35 = v16;
  v36 = v17;
  v18 = sub_1C4EFB298();
  v43 = v18;
  v44 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v42);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v35, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v39);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v42);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v40 = v12;
  v41 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v39);
  v15(v20, v19, v12);
  v37 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69A0130];
  v35 = v34;
  v36 = v51;
  v43 = v18;
  v44 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v42);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v35, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v39);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v42);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v33[2];
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v24 = v46;
  if (!v46)
  {
    return 0;
  }

  v25 = v45;
  v26 = v47;
  v27 = v48;
  v28 = v49;
  v29 = v50;
  v30 = *(v33[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C45A2A18();
  sub_1C4EF9698();
  if (v45[2])
  {
    v31 = v26;
    v21 = v45[4];
    v32 = v45[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4470E30(v25, v24, v31, v27, v28, v29);

    return v21;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1C4F02248();

  v45 = 0xD00000000000002FLL;
  v46 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v34, v51);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C446B728()
{
  result = qword_1EDDFE0E8;
  if (!qword_1EDDFE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0E8);
  }

  return result;
}

unint64_t sub_1C446B794()
{
  result = qword_1EDDFE0D8;
  if (!qword_1EDDFE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0D8);
  }

  return result;
}

uint64_t sub_1C446B7EC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C446B838(uint64_t a1, int a2)
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

uint64_t KeyValueStore.__deallocating_deinit()
{
  KeyValueStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t KeyValueStore.deinit()
{
  v1 = *(v0 + 24);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_config);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db);

  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);

  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);

  return v0;
}

uint64_t sub_1C446B930()
{
  if (qword_1EDDF7BC0 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(0);
  sub_1C446BA18();
}

uint64_t sub_1C446BA18()
{
  sub_1C440D848();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];

    sub_1C4433DE4();
    sub_1C442604C();
    v2(v4);
    v5 = sub_1C441E6D0();
    return sub_1C44239FC(v5);
  }

  else
  {
    v8 = *v1;
    v7 = v1[1];
    if (v0)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443F350();
    }

    else
    {
      v9 = v1[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C446BAF0();
    sub_1C441E6D0();
  }
}

void sub_1C446BAF0()
{
  sub_1C4413F18();
  sub_1C440BDEC();
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFE48, &qword_1C4F3DD88);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  *(v6 + 32) = v4;
  sub_1C456902C(&qword_1EC0B9238, &qword_1C4F3DD90);
  sub_1C496D600();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v7);
    sub_1C43FDA14();
    sub_1C4435934();
    v8 = sub_1C4404044();
    sub_1C4434000(v8, v9);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C446BC24(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v1 - 88) = 1;

  return sub_1C4EF9CD8();
}

uint64_t sub_1C446BC6C()
{

  return sub_1C4F02248();
}

uint64_t sub_1C446BC90()
{
  v2 = *(v0 - 344);
  v3 = *(v0 - 352);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C446BCBC()
{

  return type metadata accessor for Configuration();
}

uint64_t sub_1C446BCDC()
{
  *(v1 - 576) = v0;

  return sub_1C4F02858();
}

uint64_t sub_1C446BD00()
{
  v2 = *(v0 - 216);

  return sub_1C4EFB448();
}

uint64_t sub_1C446BD28(uint64_t result)
{
  *(result + 8) = sub_1C4D0300C;
  v2 = *(v1 + 152);
  return result;
}

uint64_t sub_1C446BD4C()
{

  return swift_unownedRetain();
}

uint64_t sub_1C446BD80()
{
  *(v1 - 136) = v0;
  result = *(v1 - 312);
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_1C446BDB0()
{
  v2 = *(*(v0 + 192) + 20);

  return sub_1C4EFEEF8();
}

double sub_1C446BDFC(double *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

void sub_1C446BE3C()
{

  JUMPOUT(0x1C6940010);
}

id sub_1C446BE6C(id a1)
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[3];

  return a1;
}

uint64_t sub_1C446BE8C()
{

  return sub_1C4F01298();
}

uint64_t sub_1C446BEA4()
{

  return sub_1C44FEF34(v0 - 120, 1);
}

uint64_t sub_1C446BEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 256) = a6;
  *(v6 - 248) = a5;
  *(v6 - 72) = a4;
  *(v6 - 224) = result;
  *(v6 - 216) = a3;
  return result;
}

void sub_1C446BED8(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*(v1 - 200) + 52);
}

uint64_t sub_1C446BF24(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for HUTenPointContext(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1C446BF80(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = *(v4 - 272);

  return sub_1C4D2C7B8(result, a2, a3, a4);
}

uint64_t sub_1C446BF9C(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for LongitudinalEventData(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C446BFD8()
{

  return sub_1C4EF9138();
}

void *sub_1C446BFF0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  result[10] = v20;
  result[11] = a11;
  result[12] = a12;
  result[13] = a13;
  result[14] = a14;
  result[15] = a15;
  result[16] = a16;
  result[17] = a17;
  result[18] = a18;
  result[19] = a19;
  result[20] = a20;
  return result;
}

uint64_t sub_1C446C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 56) + 32 * a1;

  return sub_1C442B870(v9, va);
}

uint64_t sub_1C446C048()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C446C080(uint64_t result, uint64_t a2)
{
  v2[55] = result;
  v2[56] = a2;
  v3 = v2[49];
  v4 = v2[50];
  return result;
}

void sub_1C446C0B8()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C446C0D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1C446C0F0()
{
  *(v1 - 120) = 0x46204554454C4544;
  *(v1 - 112) = v0;
  v3 = *(v1 - 184);
  v4 = *v3;
  v5 = v3[1];

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C446C11C(uint64_t a1)
{

  return sub_1C446F170(a1, v1, v2);
}

id sub_1C446C140(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_1C446C160()
{

  return sub_1C4F02938();
}

uint64_t sub_1C446C1BC()
{
  v3 = *(v2 - 104);
  v4 = *(*(v2 - 112) + 16);
  result = v1 + *(v0 + 24);
  v6 = *(v2 - 144);
  return result;
}

uint64_t sub_1C446C210()
{
  *(v1 - 97) = *(v0 + 220);
  v2 = *(v0 + 232) + *(v0 + 240);
  result = *(v0 + 208);
  v4 = *(v0 + 224);
  return result;
}

uint64_t sub_1C446C24C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 104);
  v5 = *(v1 - 352);
  v6 = *(v1 - 464);
  v7 = *(v1 - 152);

  return sub_1C4F026C8();
}

unint64_t sub_1C446C2FC()
{
  result = qword_1EDDF7B70;
  if (!qword_1EDDF7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7B70);
  }

  return result;
}

unint64_t sub_1C446C350@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C446E4BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C446C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44344B8(a5, a6);
  sub_1C446C4A0();
  sub_1C4EFB6C8();

  return sub_1C4434000(a5, a6);
}

unint64_t sub_1C446C4A0()
{
  result = qword_1EDDFC188;
  if (!qword_1EDDFC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC188);
  }

  return result;
}

uint64_t sub_1C446C4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C446C548();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C446C548()
{
  result = qword_1EDDFE0D0;
  if (!qword_1EDDFE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0D0);
  }

  return result;
}

uint64_t sub_1C446C59C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C09F0, &qword_1C4F3FDB8);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20[-v11 - 8];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C446C744();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v21) = 0;
  sub_1C441FBD0();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v21) = 1;
    sub_1C441FBD0();
    v21 = *(v3 + 2);
    v22 = v21;
    v20[23] = 2;
    sub_1C446E59C(&v22, v20);
    sub_1C446E5F8();
    sub_1C4F027E8();
    sub_1C4434000(v21, *(&v21 + 1));
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1C446C744()
{
  result = qword_1EDDFE118;
  if (!qword_1EDDFE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE118);
  }

  return result;
}

void sub_1C446C7A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C4F00EC8();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_1C446C840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = sub_1C446ABD0(0);
  if (!v3)
  {
    v18 = a1;
    result = a3();
    v8 = result;
    v9 = 0;
    v10 = *(result + 16);
    for (i = result + 32; ; i += 40)
    {
      if (v10 == v9)
      {
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      sub_1C442E860(i, v15);
      v12 = v16;
      v13 = v17;
      v14 = sub_1C4409678(v15, v16);
      sub_1C446F2A0(v14, v18, a2, v12, v13);
      ++v9;
      result = sub_1C440962C(v15);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C446C964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C456902C(a3, a4);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C446C9C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_1C456902C(a1, a2);
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C446CA08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v45 = a2;
  v43 = a1;
  v41 = a4;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v40 - v7;
  v8 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4EFBD38();
  v17 = sub_1C442B738(v16, qword_1EDE2E068);
  v51 = v16;
  v52 = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v50);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  v42 = v4;
  v20 = *(v4 + 16);
  v21 = *(v4 + 24);
  v48 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69A0130];
  v46 = v20;
  v47 = v21;
  v22 = sub_1C4EFB298();
  v54 = v22;
  v55 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v53);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v46, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v50);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v53);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v23 = sub_1C442B738(v16, qword_1EDE2DF28);
  v51 = v16;
  v52 = MEMORY[0x1E69A0050];
  v24 = sub_1C4422F90(v50);
  v19(v24, v23, v16);
  v48 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69A0130];
  v46 = v45;
  v47 = v62;
  v54 = v22;
  v55 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v53);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v46, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v50);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v25 = *(v9 + 8);
  v25(v13, v8);
  sub_1C440962C(v53);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v26 = v44;
  sub_1C4EFAFF8();
  v25(v15, v8);
  if (!v26)
  {
    v27 = v57;
    if (v57)
    {
      v28 = v56;
      v30 = v58;
      v29 = v59;
      v31 = v60;
      v32 = v61;
      v33 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
      sub_1C456902C(&qword_1EC0B90E8, &qword_1C4F3DCF0);
      sub_1C4470054();
      sub_1C4EF9698();
      v44 = v30;
      v37 = v40;
      sub_1C446D094(v56, v40);
      v38 = sub_1C4EF9CD8();
      if (sub_1C44157D4(v37, 1, v38) == 1)
      {
        sub_1C4420C3C(v37, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C4F02248();

        v56 = 0xD00000000000002FLL;
        v57 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v45, v62);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      sub_1C4470E30(v28, v27, v44, v29, v31, v32);
      v39 = v41;
      (*(*(v38 - 8) + 32))(v41, v37, v38);
      v35 = v39;
      v36 = 0;
      v34 = v38;
    }

    else
    {
      v34 = sub_1C4EF9CD8();
      v35 = v41;
      v36 = 1;
    }

    sub_1C440BAA8(v35, v36, 1, v34);
  }
}

__n128 sub_1C446D080(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C446D0AC(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C446D0DC()
{
  result = qword_1EDDE7330;
  if (!qword_1EDDE7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7330);
  }

  return result;
}

uint64_t sub_1C446D134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = sub_1C4F018C8();
  sub_1C440BAA8(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C4F6DB50;
  v12[5] = v11;
  sub_1C4D277B8(0, 0, v9, &unk_1C4F6DB60, v12);
}

uint64_t sub_1C446D244(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C442E8C4;

  return v8();
}

uint64_t sub_1C446D32C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 712) = v4;
  *(v5 + 704) = a4;
  *(v5 + 696) = a3;
  *(v5 + 688) = a1;
  v7 = sub_1C4F01828();
  *(v5 + 720) = v7;
  v8 = *(v7 - 8);
  *(v5 + 728) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 578) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C446D410, 0, 0);
}

uint64_t sub_1C446D410()
{
  v89 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  if (static NSUserDefaults.isGraphStoreManuallyOverridden.getter())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C43FCEE8(v1, qword_1EDE2DE10);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CD8();
    if (sub_1C4402B64(v3))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B48();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      sub_1C43FE9D4();
    }

    v9 = *(v0 + 688);

    if (v9 != 1)
    {
      sub_1C4ACE0A8();

      sub_1C43FC1B0();
      goto LABEL_11;
    }

    sub_1C4ACD9E4();
    sub_1C43FFB2C();
    *v10 = 0xD000000000000061;
    *(v10 + 8) = 0x80000001C4FAFE70;
    *(v10 + 16) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  v11 = *(v0 + 578);
  v12 = *(v0 + 712);
  v13 = *(v0 + 688);
  v14 = *(v12 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);
  v15 = swift_task_alloc();
  v16 = *(v0 + 696);
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = v16;
  os_unfair_lock_lock((v14 + 24));
  sub_1C446F880((v14 + 16), &v88);
  os_unfair_lock_unlock((v14 + 24));
  v19 = v88;
  *(v0 + 752) = v88;

  if (!v19)
  {
    sub_1C4ACD9E4();
    v25 = sub_1C43FFB2C();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 2;
    swift_willThrow();
    v27 = *(v0 + 744);
    v28 = *(v0 + 720);
    *(v0 + 664) = v25;
    v29 = v25;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 578);
      v31 = *(v0 + 744);
      v32 = *(v0 + 736);
      v33 = *(v0 + 728);
      v34 = *(v0 + 720);

      v35 = *(v33 + 32);
      v36 = sub_1C43FE5F8();
      v37(v36);
      v38 = [objc_opt_self() defaultCenter];
      v39 = *MEMORY[0x1E69A9F38];
      sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      strcpy((v0 + 616), "pipelineType");
      *(v0 + 629) = 0;
      *(v0 + 630) = -5120;
      v41 = v39;
      v42 = MEMORY[0x1E69E6158];
      sub_1C4F02198();
      sub_1C440BDD4();
      switch(v30)
      {
        case 1:
          sub_1C4426D3C();
          break;
        case 2:
          sub_1C44336F0();
          break;
        case 3:
          sub_1C4403620();
          break;
        default:
          break;
      }

      v63 = *(v0 + 752);
      v64 = *(v0 + 736);
      v65 = *(v0 + 728);
      v66 = *(v0 + 720);
      *(inited + 96) = v42;
      *(inited + 72) = v44;
      *(inited + 80) = v43;
      sub_1C4F00F28();
      v67 = sub_1C4440DAC();
      sub_1C446C7A4(v67, v68, v69, v38);

      sub_1C43FFB2C();
      sub_1C44803FC();
      sub_1C4AC3120(v70);
      swift_willThrow();

      v71 = *(v65 + 8);
      v72 = sub_1C4404044();
      v73(v72);
      v74 = *(v0 + 664);
    }

    else
    {

      *(v0 + 672) = v25;
      v45 = v25;
      v46 = swift_dynamicCast();
      v47 = *(v0 + 578);
      if (!v46)
      {

        v56 = [objc_opt_self() defaultCenter];
        v57 = *MEMORY[0x1E69A9F48];
        sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
        v58 = swift_initStackObject();
        *(v58 + 16) = xmmword_1C4F0D130;
        strcpy((v0 + 584), "pipelineType");
        *(v0 + 597) = 0;
        *(v0 + 598) = -5120;
        v59 = v57;
        v60 = MEMORY[0x1E69E6158];
        sub_1C4F02198();
        sub_1C440BDD4();
        switch(v47)
        {
          case 1:
            sub_1C4426D3C();
            break;
          case 2:
            sub_1C44336F0();
            break;
          case 3:
            sub_1C4403620();
            break;
          default:
            break;
        }

        v80 = *(v0 + 752);
        *(v58 + 96) = v60;
        *(v58 + 72) = v62;
        *(v58 + 80) = v61;
        v81 = sub_1C4F00F28();
        sub_1C446C7A4(v59, 0, v81, v56);

        swift_getErrorValue();
        v82 = *(v0 + 536);
        v83 = *(v0 + 544);
        v84 = *(v0 + 552);
        sub_1C43FFB2C();
        sub_1C44803FC();
        sub_1C4ACE0C0(v83, v85);
        swift_willThrow();

        goto LABEL_9;
      }

      v86 = *(v0 + 568);
      v87 = *(v0 + 560);
      v48 = *(v0 + 576);
      v49 = [objc_opt_self() defaultCenter];
      v50 = *MEMORY[0x1E69A9F48];
      sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_1C4F0D130;
      strcpy((v0 + 600), "pipelineType");
      *(v0 + 613) = 0;
      *(v0 + 614) = -5120;
      v52 = v50;
      v53 = MEMORY[0x1E69E6158];
      sub_1C4F02198();
      sub_1C440BDD4();
      switch(v47)
      {
        case 1:
          sub_1C4426D3C();
          break;
        case 2:
          sub_1C44336F0();
          break;
        case 3:
          sub_1C4403620();
          break;
        default:
          break;
      }

      v75 = *(v0 + 752);
      *(v51 + 96) = v53;
      *(v51 + 72) = v55;
      *(v51 + 80) = v54;
      sub_1C4F00F28();
      v76 = sub_1C4440DAC();
      sub_1C446C7A4(v76, v77, v78, v49);

      sub_1C43FFB2C();
      *v79 = v87;
      *(v79 + 8) = v86;
      *(v79 + 16) = v48;
      swift_willThrow();

      v74 = *(v0 + 672);
    }

LABEL_9:
    sub_1C4ACE0A8();

    sub_1C43FBDA0();
LABEL_11:

    return v17();
  }

  v20 = *(MEMORY[0x1E69E86A8] + 4);

  v21 = swift_task_alloc();
  *(v0 + 760) = v21;
  v22 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  *v21 = v0;
  v21[1] = sub_1C4AC2640;
  v23 = MEMORY[0x1E69E6370];
  v24 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 577, v19, v23, v22, v24);
}

uint64_t sub_1C446DC44()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4406C84(v4);

  return v7(v6);
}

uint64_t sub_1C446DCDC()
{
  sub_1C43FCF70();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v7 = sub_1C440E174(v5);

  return v8(v7);
}

uint64_t sub_1C446DD70()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);
  *(v0 + 48) = 2;

  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  v3[1] = sub_1C4ABFD8C;
  v5 = *(v0 + 24);
  v6 = sub_1C4414E5C(*(v0 + 16));

  return sub_1C446D32C(v6, v7, v8, v9);
}

uint64_t sub_1C446DE28(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v3 = *(v1 + 24);
    if (v3 == 4)
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v4 = sub_1C4F00978();
      sub_1C442B738(v4, qword_1EDE2DE10);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CE8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C43F8000, v5, v6, "Pipeline: pipelineType was nil when task was not nil.", v7, 2u);
        MEMORY[0x1C6942830](v7, -1, -1);
      }

      sub_1C4ACD9E4();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v11 = sub_1C4F00978();
      sub_1C442B738(v11, qword_1EDE2DE10);
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CF8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        sub_1C4F02248();

        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
        switch(v3)
        {
          case 1:
            v16 = 0xE400000000000000;
            v17 = 1819047270;
            break;
          case 2:
            v16 = 0xE500000000000000;
            v17 = 0x61746C6564;
            break;
          case 3:
            v16 = 0xEA0000000000676ELL;
            v17 = 0x69686374614D6F74;
            break;
          default:
            break;
        }

        MEMORY[0x1C6940010](v17, v16);

        MEMORY[0x1C6940010](62, 0xE100000000000000);
        v18 = sub_1C441D828(0x6E696C657069503CLL, 0xEF203A6570795465, &v19);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1C43F8000, v12, v13, "Pipeline: already running %s pipeline.", v14, 0xCu);
        sub_1C440962C(v15);
        MEMORY[0x1C6942830](v15, -1, -1);
        MEMORY[0x1C6942830](v14, -1, -1);
      }

      sub_1C4ACD9E4();
      swift_allocError();
      *v8 = v3;
      *(v8 + 8) = 0;
    }

    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  result = sub_1C4469AB4(a1, 1);
  if (!v2 && (result & 1) == 0)
  {
    sub_1C4ACD9E4();
    swift_allocError();
    *v10 = xmmword_1C4F49E20;
    *(v10 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C446E1BC()
{
  v0 = 0xED00006D65747379;
  v1 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      v1 = sub_1C43FD3B0();
      break;
    case 2:
      v0 = 0xED00006E6F697461;
      v1 = sub_1C4432574();
      break;
    case 3:
      v0 = 0xEE0070756E61656CLL;
      v1 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v1, v0);

  MEMORY[0x1C6940010](0x6B636F6C2ELL, 0xE500000000000000);
  sub_1C4EF9888();
}

uint64_t sub_1C446E2D8@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return sub_1C446E324(a1);
}

uint64_t sub_1C446E324@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1C4F00A28();
  v3 = result;
  if ((result & 0x100000000) != 0)
  {
    sub_1C499A9B0();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C446E3AC()
{
  if (qword_1EDDF2318 != -1)
  {
    swift_once();
  }

  result = sub_1C446A178();
  if (!v0)
  {
    v2 = *(result + 16);

    os_unfair_lock_lock((v2 + 24));
    v3 = *(v2 + 16);
    swift_beginAccess();
    v4 = *(v3 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v3 + 16);
    sub_1C446A2A4();
    *(v3 + 16) = v5;
    swift_endAccess();
    os_unfair_lock_unlock((v2 + 24));
  }

  return result;
}

unint64_t sub_1C446E4BC(char a1)
{
  result = 0x676E696E6E7572;
  switch(a1)
  {
    case 1:
      result = 0x656C6C65636E6163;
      break;
    case 2:
      result = 0x6574656C706D6F63;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C446E554(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x65756C6176;
}

unint64_t sub_1C446E5F8()
{
  result = qword_1EDDFE8A0;
  if (!qword_1EDDFE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE8A0);
  }

  return result;
}

uint64_t sub_1C446E650(uint64_t a1, int a2)
{
  LODWORD(v98) = a2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v84 - v5;
  v97 = sub_1C4EF9CD8();
  v6 = *(v97 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EF9D38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0C2AA8, &qword_1C4F4E070);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v93 = (&v84 - v20);
  v96 = a1;
  v21 = Pipeline.StatusStore.currentSessionId()();
  v22 = &unk_1C4F0D000;
  v91 = v6;
  v92 = v15;
  v90 = v9;
  if (v21.value._object)
  {

    v95 = MEMORY[0x1E69E7CC0];
    v23 = v98;
  }

  else
  {
    v88 = v14;
    v94 = v11;
    v95 = v10;
    if (qword_1EDDF7B38 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDE2D8C0;
    v24 = *algn_1EDE2D8C8;
    v26 = qword_1EDE2D8D0;
    v27 = unk_1EDE2D8D8;
    v28 = qword_1EDE2D8E0;
    v29 = *(v15 + 44);
    v30 = v15;
    v31 = v93;
    sub_1C4EF9CC8();
    *v31 = v25;
    v31[1] = v24;
    v31[2] = v26;
    v31[3] = v27;
    v31[4] = v28;
    v32 = (v31 + *(v30 + 48));
    *v32 = v27;
    v32[1] = v28;
    v107 = v30;
    v108 = sub_1C4401CBC(qword_1EDDF7CD8, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v33 = sub_1C4422F90(&v106);
    sub_1C446C964(v31, v33, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v87 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
    inited = swift_initStackObject();
    v86 = xmmword_1C4F0D130;
    *(inited + 16) = xmmword_1C4F0D130;
    v89 = inited;
    sub_1C441D670(&v106, inited + 32);
    sub_1C446F0D0(v27);
    sub_1C446F0D0(v27);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446F170(v31, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v35 = v88;
    if (qword_1EDDF7AC0 != -1)
    {
      swift_once();
    }

    v36 = qword_1EDE2D758;
    v37 = unk_1EDE2D760;
    v39 = qword_1EDE2D768;
    v38 = unk_1EDE2D770;
    v40 = qword_1EDE2D778;
    sub_1C4EF9058();
    v41 = sub_1C4EF9CF8();
    v85 = v41;
    v43 = v42;
    (*(v94 + 8))(v35, v95);
    *__src = v36;
    *&__src[8] = v37;
    *&__src[16] = v39;
    *&__src[24] = v38;
    *&__src[32] = v40;
    *&__src[40] = v41;
    *&__src[48] = v43;
    *&__src[56] = v38;
    *&__src[64] = v40;
    v104 = sub_1C456902C(&unk_1EC0C2E78, &qword_1C4F4E0A8);
    v105 = sub_1C4401CBC(&qword_1EDDF7CB0, &unk_1EC0C2E78, &qword_1C4F4E0A8);
    *&v103 = swift_allocObject();
    memcpy((v103 + 16), __src, 0x48uLL);
    v44 = swift_initStackObject();
    *(v44 + 16) = v86;
    sub_1C441D670(&v103, v44 + 32);
    v110 = v36;
    v111 = v37;
    v112 = v39;
    v113 = v38;
    v114 = v40;
    v115 = v85;
    v116 = v43;
    v117 = v38;
    v118 = v40;
    sub_1C446F0D0(v38);
    sub_1C446F0D0(v38);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C964(__src, &v100, &unk_1EC0C2E78, &qword_1C4F4E0A8);
    sub_1C446F170(&v110, &unk_1EC0C2E78, &qword_1C4F4E0A8);
    sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1C4F0CE60;
    *(v45 + 32) = v89;
    *(v45 + 40) = v44;
    sub_1C446F8F4(v45);
    v95 = v46;
    swift_setDeallocating();
    sub_1C446FAEC();
    v15 = v92;
    v23 = v98;
    v22 = &unk_1C4F0D000;
  }

  *__src = 0xD000000000000013;
  *&__src[8] = 0x80000001C4FAFEE0;
  *&__src[24] = 0;
  *&__src[32] = 0;
  *&__src[16] = &unk_1F43DAAE0;
  __src[40] = v23;
  *&__src[48] = 0uLL;
  v107 = sub_1C456902C(&unk_1EC0C2E20, &qword_1C4F4E078);
  v108 = sub_1C4401CBC(&unk_1EDDF7CB8, &unk_1EC0C2E20, &qword_1C4F4E078);
  v47 = swift_allocObject();
  *&v106 = v47;
  v48 = *&__src[16];
  v47[1] = *__src;
  v47[2] = v48;
  v49 = *&__src[48];
  v47[3] = *&__src[32];
  v47[4] = v49;
  v50 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  v51 = swift_initStackObject();
  v98 = v22[19];
  *(v51 + 16) = v98;
  v94 = v51;
  sub_1C441D670(&v106, v51 + 32);
  v110 = 0xD000000000000013;
  v111 = 0x80000001C4FAFEE0;
  v113 = 0;
  v114 = 0;
  v112 = &unk_1F43DAAE0;
  LOBYTE(v115) = v23;
  v116 = 0;
  v117 = 0;
  sub_1C446C964(__src, &v100, &unk_1EC0C2E20, &qword_1C4F4E078);
  sub_1C446F170(&v110, &unk_1EC0C2E20, &qword_1C4F4E078);
  if (qword_1EDDF7B98 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDE2D9D8;
  v52 = unk_1EDE2D9E0;
  v54 = qword_1EDE2D9E8;
  v55 = unk_1EDE2D9F0;
  v56 = qword_1EDE2D9F8;
  v57 = v19 + *(v15 + 44);
  sub_1C4EF9CC8();
  *v19 = v53;
  v19[1] = v52;
  v19[2] = v54;
  v19[3] = v55;
  v19[4] = v56;
  v58 = (v19 + *(v15 + 48));
  *v58 = v55;
  v58[1] = v56;
  v101 = v15;
  v88 = sub_1C4401CBC(qword_1EDDF7CD8, &qword_1EC0C2AA8, &qword_1C4F4E070);
  v102 = v88;
  v59 = sub_1C4422F90(&v100);
  sub_1C446C964(v19, v59, &qword_1EC0C2AA8, &qword_1C4F4E070);
  v89 = v50;
  v60 = swift_initStackObject();
  *(v60 + 16) = v98;
  sub_1C441D670(&v100, v60 + 32);
  sub_1C446F0D0(v55);
  sub_1C446F0D0(v55);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F170(v19, &qword_1EC0C2AA8, &qword_1C4F4E070);
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(1);
  v61 = v97;
  v62 = v99;
  sub_1C446FB00();

  v69 = sub_1C44157D4(v62, 1, v61);
  if (v69 == 1)
  {
    sub_1C446F170(v62, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v63 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v70 = v91;
    v71 = v90;
    (*(v91 + 32))();
    if (qword_1EDDF7AC8 != -1)
    {
      swift_once();
    }

    v72 = *algn_1EDE2D788;
    v87 = qword_1EDE2D780;
    v96 = *algn_1EDE2D788;
    v73 = qword_1EDE2D790;
    v74 = unk_1EDE2D798;
    v99 = qword_1EDE2D790;
    v75 = qword_1EDE2D7A0;
    v76 = v92;
    v77 = *(v70 + 16);
    v78 = v93;
    v77(v93 + *(v92 + 44), v71, v61);
    *v78 = v87;
    v78[1] = v72;
    v78[2] = v73;
    v78[3] = v74;
    v78[4] = v75;
    v79 = (v78 + *(v76 + 48));
    *v79 = v74;
    v79[1] = v75;
    v104 = v76;
    v105 = v88;
    v80 = sub_1C4422F90(&v103);
    v81 = v71;
    sub_1C446C964(v78, v80, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v82 = swift_allocObject();
    v83 = v91;
    v63 = v82;
    *(v82 + 16) = v98;
    sub_1C441D670(&v103, v82 + 32);
    sub_1C446F0D0(v74);
    sub_1C446F0D0(v74);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446F170(v78, &qword_1EC0C2AA8, &qword_1C4F4E070);
    (*(v83 + 8))(v81, v61);
  }

  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v64 = swift_initStackObject();
  *(v64 + 16) = xmmword_1C4F0D480;
  v65 = v94;
  *(v64 + 32) = v95;
  *(v64 + 40) = v65;
  *(v64 + 48) = v60;
  *(v64 + 56) = v63;
  sub_1C446F8F4(v64);
  v67 = v66;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v67;
}

uint64_t sub_1C446F0D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C446F0E4()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  v4 = v0[8];

  if (v0[9])
  {
    v5 = v0[10];
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C446F158(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C446F170(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C456902C(a2, a3);
  sub_1C43FD3F8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1C446F1C4()
{
  sub_1C441B2E0();
  v3 = *(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v0(v2, &v5);
}

uint64_t sub_1C446F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  (*(a5 + 32))(&v20, a4, a5);
  v17 = *(&v21 + 1);
  v24 = v21;
  v23 = v20;
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  (*(a5 + 40))(a4, a5);
  sub_1C440B350();
  sub_1C440B350();
  v13 = type metadata accessor for StatusItem();
  WitnessTable = swift_getWitnessTable();
  sub_1C44701AC(v18, v12, a2, v16, v13, WitnessTable);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  sub_1C4471348(&v23);
  sub_1C44706BC(&v24);
  return sub_1C44239FC(v17);
}

uint64_t sub_1C446F49C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C446F0D0(v6);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t (*sub_1C446F538(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = *(a1 + 16);
    *(v5 + 32) = *(a1 + 32);
    *(v5 + 40) = v2;
    *(v5 + 48) = v3;
    v6 = sub_1C44BAB1C;
  }

  else
  {
    v6 = 0;
  }

  sub_1C446F0D0(v2);
  return v6;
}

uint64_t sub_1C446F5C8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C446F600()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id _s24IntelligencePlatformCore24KnowledgeConstructionXPCC6ServerCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1C446F70C()
{
  sub_1C43FEAEC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  sub_1C445EB20();

  return v8();
}

uint64_t KnowledgeConstructionXPC.Server.runFastpassPipeline(with:)()
{
  sub_1C43FBCD4();
  v0[5] = v1;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t type metadata accessor for Pipeline.StatusStore()
{
  result = qword_1EDDF0B38;
  if (!qword_1EDDF0B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C446F8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v7 = *v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_1C446FA30();
        v2 = v8;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        sub_1C456902C(&qword_1EC0B8A68, &unk_1C4F0DE90);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v2 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_1C446FA30()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8A68, &unk_1C4F0DE90);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C446FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  v13 = v12;
  v15 = v14;
  v44 = *v10;
  v45 = sub_1C4EFB1E8();
  v16 = sub_1C43FCDF8(v45);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C440D420();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v28 = sub_1C43FEFC4(v20, v21, v22, v23, v24, v25, v26, v27, v43);
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4406E1C();
  sub_1C441DCFC(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(v15, v13);
  sub_1C4EFAF88();
  if (!v11)
  {
    goto LABEL_7;
  }

  v34 = v11;
  sub_1C4EFA798();
  v35 = sub_1C447F088();

  v36 = *(v31 + 8);
  v37 = sub_1C43FCE84();
  v36(v37);
  if (v35 & 1) != 0 || (v38 = v11, sub_1C4EFAAC8(), v39 = sub_1C447F088(), v11, v40 = sub_1C43FCE84(), v36(v40), (v39))
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C440BCF8())
  {

    goto LABEL_7;
  }

  v41 = sub_1C4403150();
  v42(v41);
  sub_1C44159C8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C446FDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4470D98();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C446FE04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C09E8, &qword_1C4F3FDB0);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C446C744();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4409E6C();
  v12 = v11;
  v19 = v10;
  LOBYTE(v20) = 1;
  v17 = sub_1C4409E6C();
  v18 = v13;
  sub_1C444C16C();
  sub_1C4F026C8();
  v14 = sub_1C43FBF04();
  v15(v14);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44344B8(v20, v21);
  sub_1C440962C(a1);

  result = sub_1C4434000(v20, v21);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v21;
  return result;
}

unint64_t sub_1C4470054()
{
  result = qword_1EDDFCEE8;
  if (!qword_1EDDFCEE8)
  {
    sub_1C4572308(&qword_1EC0B90E8, &qword_1C4F3DCF0);
    sub_1C450220C(&unk_1EDDFCD60, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEE8);
  }

  return result;
}

uint64_t sub_1C4470108@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = sub_1C442FDE8();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C44701AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(a6 + 48))(a5, a6);
  if (v11)
  {
    v12 = v11;
    v11(v6, a1, a2, a3, a4);
    return sub_1C44239FC(v12);
  }

  else
  {
    if (a4)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](46, 0xE100000000000000);
      v14 = sub_1C4407BD4();
      v16 = v15(v14);
      MEMORY[0x1C6940010](v16);

      swift_getAssociatedTypeWitness();
      sub_1C4400E98();
      swift_getAssociatedConformanceWitness();
      sub_1C4400E98();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_1C4412548(a3, a4, v18, v19, v20, AssociatedConformanceWitness, v21, v22, a2);
    }

    else
    {
      v23 = sub_1C4407BD4();
      v25 = v24(v23);
      v27 = v26;
      swift_getAssociatedTypeWitness();
      sub_1C4400E98();
      swift_getAssociatedConformanceWitness();
      sub_1C4400E98();
      v28 = swift_getAssociatedConformanceWitness();
      sub_1C4412548(v25, v27, v29, v30, v31, v28, v32, v33, a2);
    }
  }
}

uint64_t sub_1C44703C4()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t KeyValueStore.store<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v28 = a2;
  v13 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  v14 = sub_1C4470614(a4, a4);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = *(a4 - 8);
  v18 = *(v17 + 72);
  v19 = *(v17 + 80);
  swift_allocObject();
  v20 = sub_1C4F016A8();
  (*(v17 + 16))(v21, a3, a4);
  sub_1C4470680();
  v30 = v20;
  sub_1C4F017A8();
  v29 = a6;
  swift_getWitnessTable();
  v22 = sub_1C4EF96D8();
  v24 = v23;

  if (!v7)
  {
    v26 = *(*(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
    MEMORY[0x1EEE9AC00](result);
    v27[2] = v8;
    v27[3] = a1;
    v27[4] = v28;
    v27[5] = v22;
    v27[6] = v24;

    sub_1C44652E0(sub_1C446C398, v27, sub_1C4418704);
    sub_1C4434000(v22, v24);
  }

  return result;
}

uint64_t sub_1C4470614(uint64_t a1, uint64_t a2)
{
  if (sub_1C446D0AC(a2))
  {

    return sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8]();
  }
}

uint64_t sub_1C44706BC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4470724(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  if (qword_1EDDE1A10 != -1)
  {
    sub_1C4407344();
  }

  v7 = sub_1C442B738(v3, qword_1EDE2CB88);
  swift_beginAccess();
  sub_1C4466EEC(v7, v6);
  v8 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C4467948(v6);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v18 = sub_1C4F00978();
      sub_1C43FCEE8(v18, qword_1EDE2DCD8);
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CF8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = sub_1C43FCED0();
        sub_1C43FBD24(v21);
        _os_log_impl(&dword_1C43F8000, v19, v20, "KnowledgeConstructionXPC: service is in no-op mode.", v11, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      sub_1C44351C0();
      if (sub_1C446874C())
      {
        v14 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v14, sel_setExportedInterface_);

        v15 = [objc_allocWithZone(type metadata accessor for KnowledgeConstructionXPC.Server()) init];
        sub_1C44059FC(v15, sel_setExportedObject_);

        v27 = sub_1C49AEF14;
        v28 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1C4833DD0;
        v26 = &unk_1F43F2B90;
        v16 = _Block_copy(&aBlock);
        sub_1C44059FC(v16, sel_setInterruptionHandler_);
        _Block_release(v16);
        v27 = sub_1C49AEF34;
        v28 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1C4833DD0;
        v26 = &unk_1F43F2BB8;
        v17 = _Block_copy(&aBlock);
        sub_1C44059FC(v17, sel_setInvalidationHandler_);
        _Block_release(v17);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C4470ABC()
{
  sub_1C43FEAEC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v8 = sub_1C4411F54(v6);

  return v9(v8);
}

uint64_t sub_1C4470B58(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C442F080;

  return v7();
}

uint64_t sub_1C4470C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4468F24(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4470C88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C446DD70);
}

uint64_t sub_1C4470CA0()
{
  sub_1C447F304();
  v2 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FF6CC();
  if (!v8)
  {
    swift_once();
  }

  sub_1C442B738(v0, v1);
  sub_1C44138E4();
  v9 = sub_1C440FCB0(v4);
  v10(v9);
  sub_1C4EFD698();
  v11 = sub_1C443F394();
  v12(v11);
  return v14;
}

unint64_t sub_1C4470D98()
{
  result = qword_1EDDFF8D8;
  if (!qword_1EDDFF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8D8);
  }

  return result;
}

double sub_1C4470DEC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C446FE04(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void sub_1C4470E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1C4434000(a5, a6);
  }
}

uint64_t type metadata accessor for InterprocessLockDescriptors()
{
  result = qword_1EDDF2300;
  if (!qword_1EDDF2300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4470F24()
{
  v1 = *v0;
  v2 = sub_1C4EFB1E8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  return sub_1C4EFAF18();
}

uint64_t sub_1C44711B0(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_1C4F02248();

  v10[4] = 0xD00000000000001ALL;
  v10[5] = 0x80000001C4F99AF0;
  swift_beginAccess();
  v10[7] = *a2;
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C447139C()
{
  result = qword_1EDDF89F8;
  if (!qword_1EDDF89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF89F8);
  }

  return result;
}

uint64_t sub_1C44713F0@<X0>(uint64_t *a1@<X8>)
{
  result = PipelineType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4471418()
{
  sub_1C4403FC0();
  v2 = type metadata accessor for Pipeline.StatusStore();
  sub_1C43FBD18(v2);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  v12 = sub_1C43FC218(v11);
  *v12 = v13;
  v12[1] = sub_1C442F080;

  return sub_1C4471524(v0, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_1C4471524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v13 = (a6 + *a6);
  v10 = a6[1];
  v11 = swift_task_alloc();
  v8[5] = v11;
  *v11 = v8;
  v11[1] = sub_1C4AC2F14;

  return v13(a8);
}

uint64_t sub_1C4471624(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = sub_1C448B4DC;

  return sub_1C4480C54();
}

uint64_t type metadata accessor for PhaseStores()
{
  result = qword_1EDDF90D8;
  if (!qword_1EDDF90D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RelationshipPhase()
{
  result = qword_1EDDE61A0;
  if (!qword_1EDDE61A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4471750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C44717B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471874(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44718CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C44719E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4471A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471A98()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4471AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4471BAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4471C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FCE50(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4471C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4471CC8()
{

  return sub_1C4EF9368();
}

uint64_t sub_1C4471CE0()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 400);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4471D00()
{
  v4 = v1 + *(v0 + 20);

  return sub_1C4471988(v2, v4);
}

void sub_1C4471D20()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

uint64_t sub_1C4471D34()
{

  return sub_1C4EFF808();
}

uint64_t sub_1C4471DB8()
{
  v2 = *(v0 - 304);
  v3 = *(v0 - 104);
  v4 = *(v0 - 144);

  return sub_1C4F02658();
}

uint64_t sub_1C4471DEC()
{
  v1 = sub_1C43FECE0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 32);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C4471E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4471E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4471EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4471F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4471FB4()
{
  v2 = sub_1C43FECE0();
  v4 = v3(v2);
  sub_1C43FBCE0(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C447200C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4472068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C44720C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C447212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4472188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C44721E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4472240()
{
  v1 = *(v0 + 121);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v23 = *(v0 + 96);
  v24 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_1C44717B8(*(v0 + 104), *(v0 + 72), type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v2, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C4472468();
  v11 = sub_1C4422F90(v10);
  sub_1C4485828(v5, v11, type metadata accessor for RelationshipFullSourceIngestor);
  sub_1C44002E8();
  sub_1C4485828(v3, v12, v13);
  sub_1C44002E8();
  sub_1C4485828(v23, v14, v15);
  sub_1C44002E8();
  sub_1C4485828(v24, v16, v17);
  sub_1C44002E8();
  sub_1C4485828(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

unint64_t sub_1C4472468()
{
  result = qword_1EDDDEE70;
  if (!qword_1EDDDEE70)
  {
    type metadata accessor for RelationshipFullSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDEE70);
  }

  return result;
}

uint64_t sub_1C44724C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4472508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4472550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4472598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44725E0()
{
  switch(*(v0 + 218))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 192);
        v3 = *(v0 + 96);
        v4 = *(v0 + 104);
        sub_1C4419288();
        sub_1C4471750(v5, v2, v6);
        *(v0 + 40) = type metadata accessor for CNContactDeltaSourceIngestor(0);
        *(v0 + 48) = sub_1C4475A90(&qword_1EDDF22C8, type metadata accessor for CNContactDeltaSourceIngestor);
        v7 = sub_1C4422F90((v0 + 16));
        sub_1C467EAD0(v2, v4, v7);
      }

      else
      {
        v8 = *(v0 + 184);
        v9 = *(v0 + 96);
        v10 = *(v0 + 104);
        sub_1C4419288();
        sub_1C4471750(v11, v12, v13);
        v14 = type metadata accessor for CNContactFullSourceIngestor(0);
        *(v0 + 40) = v14;
        *(v0 + 48) = sub_1C4475A90(&qword_1EDDE0908, type metadata accessor for CNContactFullSourceIngestor);
        v15 = sub_1C4422F90((v0 + 16));
        *(v15 + v14[6]) = 1;
        v16 = v14[9];
        v17 = v10;
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        *(v15 + v14[10]) = 9;
        v18 = v14[12];
        v19 = sub_1C4EFF1C8();
        sub_1C440BAA8(v15 + v18, 1, 1, v19);
        if (qword_1EDDFED28 != -1)
        {
          sub_1C442C6A0();
        }

        v20 = *(v0 + 184);
        v22 = *(v0 + 160);
        v21 = *(v0 + 168);
        v23 = *(v0 + 217);
        v24 = *(v0 + 104);
        sub_1C442B738(*(v0 + 136), &unk_1EDDFD088);
        v25 = v14[5];
        sub_1C44068F0();
        sub_1C4471750(v27, v15 + v26, v28);
        sub_1C4419288();
        sub_1C4471750(v20, v15, v29);
        *(v15 + v14[7]) = v24;
        *(v15 + v14[8]) = v23;
        v30 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
        [v30 setStyle_];
        *(v15 + v14[11]) = v30;
        v31 = sub_1C4EF9E48();
        sub_1C440BAA8(v22, 1, 1, v31);
        sub_1C4EFF1A8();
        v32 = *(v0 + 168);
        sub_1C44857CC(*(v0 + 184));
        sub_1C440BAA8(v32, 0, 1, v19);
        sub_1C447D15C(v32, v15 + v18);
      }

      v33 = *(v0 + 192);
      v34 = *(v0 + 96);
      sub_1C4419288();
      sub_1C4471750(v35, v36, v37);
      if (qword_1EDDFED28 != -1)
      {
        sub_1C442C6A0();
      }

      v38 = *(v0 + 218);
      v39 = *(v0 + 176);
      v41 = *(v0 + 144);
      v40 = *(v0 + 152);
      v42 = *(v0 + 96);
      v43 = sub_1C442B738(*(v0 + 136), &unk_1EDDFD088);
      *(v0 + 200) = v43;
      sub_1C4471750(v43, v40, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v43, v41, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v42, v39, v44);
      *(v0 + 216) = v38;
      v45 = swift_task_alloc();
      *(v0 + 208) = v45;
      *v45 = v0;
      v45[1] = sub_1C44808F8;
      v46 = *(v0 + 176);
      v47 = *(v0 + 144);
      v48 = *(v0 + 128);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t LocationMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for LocationMatcher();
  *(a4 + v8[8]) = 2;
  sub_1C440053C();
  v9 = sub_1C43FE99C();
  sub_1C44719E4(v9, v10);
  v11 = v8[5];
  sub_1C43FD90C();
  sub_1C44719E4(a2, a4 + v12);
  v13 = v8[6];
  *(a4 + v13) = v7;
  *(a4 + v8[7]) = *(a1 + *(type metadata accessor for PhaseStores() + 28));

  *(a4 + v8[10]) = sub_1C4475694();
  switch(*(a4 + v13))
  {
    case 2:

      goto LABEL_4;
    default:
      v14 = sub_1C4F02938();

      if (v14)
      {
LABEL_4:
        v15 = 0;
      }

      else
      {
        if (qword_1EDDE57B0 != -1)
        {
          swift_once();
        }

        v15 = sub_1C4472C34();
      }

      sub_1C447EA28(a2, type metadata accessor for Source);
      result = sub_1C447EA28(a1, type metadata accessor for PhaseStores);
      *(a4 + v8[9]) = v15;
      return result;
  }
}

uint64_t sub_1C4472C34()
{
  v1 = v0;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = sub_1C43FE99C();
  sub_1C447D1CC(v15, v16, v17);
  if (v46 == 1)
  {
    v44 = v5;
    sub_1C4423A0C(&v45, &qword_1EC0B8520, &unk_1C4F613E0);
    swift_endAccess();
    goto LABEL_7;
  }

  sub_1C447D27C(&v45, v48);
  swift_endAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v44 = v5;
    sub_1C447D2B4(v48);
LABEL_7:
    type metadata accessor for AddressLinkingModel();
    v19 = swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = sub_1C43FE99C();
    sub_1C447D2E4(v30, v31);
    swift_weakInit();
    v46 = 0;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4476000();
    swift_endAccess();
    sub_1C4F00158();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v34 = 136315394;
      v45 = v19;

      v35 = sub_1C4F01198();
      v43 = v2;
      v37 = sub_1C441D828(v35, v36, v47);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = sub_1C43FE99C();
      *(v34 + 14) = sub_1C441D828(v38, v39, v40);
      _os_log_impl(&dword_1C43F8000, v32, v33, "AddressLinkingModel: caching model %s for %s", v34, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v44 + 8))(v11, v43);
    }

    else
    {

      (*(v44 + 8))(v11, v2);
    }

    return v19;
  }

  v19 = Strong;
  sub_1C4F00158();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CC8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v22 = 136315394;
    v45 = v19;
    type metadata accessor for AddressLinkingModel();
    v44 = v5;

    v23 = sub_1C4F01198();
    v25 = sub_1C441D828(v23, v24, v47);
    v43 = v2;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = sub_1C43FE99C();
    *(v22 + 14) = sub_1C441D828(v27, v28, v29);
    _os_log_impl(&dword_1C43F8000, v20, v21, "AddressLinkingModel: using cached model %s for %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (*(v44 + 8))(v13, v43);
  }

  else
  {

    (*(v5 + 8))(v13, v2);
  }

  sub_1C447D2B4(v48);
  return v19;
}

unint64_t sub_1C447323C()
{
  result = qword_1EDDED1F0;
  if (!qword_1EDDED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED1F0);
  }

  return result;
}

void *sub_1C4473290(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0B8538, &qword_1C4F0CFF8);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = sub_1C4409678(a1, a1[3]);
  sub_1C4475FAC();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4473454(&qword_1EDDFCEF0);
    sub_1C4F026C8();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    sub_1C440962C(a1);
  }

  return v12;
}

void *sub_1C4473428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C4473290(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4473454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfigData.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C447355CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigData.CodingKeys(unsigned int *a1, int a2)
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

uint64_t sub_1C44735D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C4434540(v3);
    v6 = *v5;
    v7 = v5[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C4473620(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  v7 = type metadata accessor for Configuration();
  sub_1C43FBD18(v7);
  return a3(a1, a2, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)));
}

uint64_t *sub_1C44736B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1C4EFF948();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EFFAD8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = type metadata accessor for Configuration();
  v25 = sub_1C43FBD18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  sub_1C44098F0(a3, v29 - v28);
  (*(v18 + 16))(v23, a1, v15);
  (*(v9 + 16))(v14, a2, v6);
  type metadata accessor for InferenceSupportRemoteBackendInProcess();
  v31 = swift_allocObject();
  result = sub_1C447387C(v30, v23, v14);
  if (!v35)
  {
    *a4 = v31;
  }

  return result;
}

uint64_t *sub_1C447387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *v3;
  v7 = sub_1C4EFF948();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = type metadata accessor for Configuration();
  v17 = sub_1C43FBD18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C4EF9348();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v3[3] = sub_1C4EF9338();
  type metadata accessor for AssetRegistryRemoteBackendInProcess();
  sub_1C44098F0(a1, v22);
  (*(v10 + 16))(v15, a3, v7);
  v26 = sub_1C4473AD0(v22, v15);
  if (v4)
  {
    (*(v10 + 8))(a3, v7);
    v27 = sub_1C4EFFAD8();
    sub_1C43FD3F8(v27);
    (*(v28 + 8))(a2);
    sub_1C4467948(a1);
    v29 = v3[3];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v26;
    (*(v10 + 8))(a3, v7);
    v31 = sub_1C4EFFAD8();
    sub_1C43FD3F8(v31);
    (*(v32 + 8))(a2);
    sub_1C4467948(a1);
    v3[2] = v30;
  }

  return v3;
}

uint64_t sub_1C4473AD0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v8 = type metadata accessor for Configuration();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  v12 = sub_1C4EF9348();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1C4EF9338();
  type metadata accessor for AssetRegistryFullServer();
  sub_1C44098F0(a1, v4);

  v16 = sub_1C4473C20(v4);
  if (v3)
  {

    v17 = sub_1C4EFF948();
    sub_1C43FBCE0(v17);
    (*(v18 + 8))(a2);
    sub_1C4467948(a1);
  }

  else
  {
    v19 = v16;
    sub_1C4467948(a1);
    v20 = *(v5 + 48);
    v21 = *(v5 + 52);
    a1 = swift_allocObject();
    sub_1C4485988(v19, a2, v15);
  }

  return a1;
}

uint64_t sub_1C4473C20(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C4EFF9D8();

  v8 = sub_1C4EFF9B8();
  if (v1)
  {
    sub_1C4467948(a1);
  }

  else
  {
    v9 = v8;
    type metadata accessor for AssetRegistryOverrideStore();
    sub_1C44098F0(a1, v7);
    v10 = AssetRegistryOverrideStore.__allocating_init(config:)(v7);
    sub_1C4467948(a1);

    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v10;
  }

  return result;
}

uint64_t sub_1C4473D64()
{

  return sub_1C4F01578();
}

uint64_t sub_1C4473D84()
{
  v3 = *(v1 - 216);

  return sub_1C447E970(v0, v3);
}

uint64_t sub_1C4473DA8()
{
  v2 = **(v1 - 248);
  result = v0;
  v4 = *(v1 - 224);
  return result;
}

uint64_t type metadata accessor for OrganizationMatcher()
{
  result = qword_1EDDF4AD8;
  if (!qword_1EDDF4AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicMatcher()
{
  result = qword_1EDDF89C8;
  if (!qword_1EDDF89C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeopleMatcher.init(stores:source:pipelineType:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  v6 = sub_1C4F00008();
  *(v0 + 40) = v6;
  v7 = *(v6 - 8);
  *(v0 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 104) = *v2;
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4473F70()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1C4419288();
  sub_1C4471A98();
  v5 = type metadata accessor for PeopleMatcher();
  *(v0 + 72) = v5;
  *(v0 + 96) = v5[5];
  sub_1C44068F0();
  sub_1C4471A98();
  *(v0 + 100) = v5[6];
  sub_1C4EFD4C8();
  *(v4 + v5[7]) = 2;
  *(v4 + v5[8]) = v1;
  type metadata accessor for Nicknames();
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1C448A2A4;

  return sub_1C44860FC();
}

uint64_t sub_1C4474074()
{
  sub_1C4411B70();
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C4406AC8();
      sub_1C44740C4();
    }
  }

  return result;
}

uint64_t sub_1C44740C4()
{
  type metadata accessor for NicknameEntry(0);
  sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry);
  return sub_1C4F003E8();
}

uint64_t sub_1C4474164(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v35 = a3;
  v7 = sub_1C456902C(&qword_1EC0C6128, &qword_1C4F6A840);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - v10;
  v12 = OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations;
  if (*(*(a1 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) + 16))
  {
    goto LABEL_6;
  }

  if (qword_1EDDFD018 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DDF8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v12;
      v17 = v4;
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "ViewUpdate.JobScheduler/ExecutionLoop: Job continuations list is unexpectedly empty. Something else may have finished this job already. This is an error.", v18, 2u);
      v19 = v18;
      v4 = v17;
      v12 = v16;
      MEMORY[0x1C6942830](v19, -1, -1);
    }

LABEL_6:
    v20 = *(a1 + v12);
    v21 = *(v20 + 16);
    if (v21)
    {
      v32 = v12;
      v33 = a1;
      v34 = v4;
      v24 = *(v8 + 16);
      v22 = v8 + 16;
      v23 = v24;
      v25 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v26 = *(v22 + 56);
      v31[1] = v20;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      do
      {
        v23(v11, v25, v7);
        v36 = a2;
        if (v35)
        {
          v27 = a2;
          sub_1C4F01808();
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01818();
        }

        (*(v22 - 8))(v11, v7);
        v25 += v26;
        --v21;
      }

      while (v21);

      v12 = v32;
      a1 = v33;
      v28 = *(v33 + v32);
      v4 = v34;
    }

    *(a1 + v12) = MEMORY[0x1E69E7CC0];

    v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
    swift_beginAccess();

    v12 = 0;
    a1 = sub_1C4474A5C((v4 + v8), a1);
    v29 = sub_1C4428DA0(*(v4 + v8));
    if (v29 >= a1)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  sub_1C44298CC(a1, v29);
  return swift_endAccess();
}