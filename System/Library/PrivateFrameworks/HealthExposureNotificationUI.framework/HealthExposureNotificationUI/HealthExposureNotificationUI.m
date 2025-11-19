void *sub_25167FFD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_251680030(_DWORD *a1, int *a2)
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

_DWORD *sub_251680060@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
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

int *sub_25168008C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

BOOL sub_2516801A0(void *a1, uint64_t *a2)
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

uint64_t sub_25168023C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_25168C360(a1);

  *a2 = v3;
  return result;
}

_DWORD *sub_25168027C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2516802A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_251703164();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_251680310(uint64_t a1, int a2)
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

uint64_t sub_251680330(uint64_t result, int a2, int a3)
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

uint64_t sub_25168036C()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516803A4(uint64_t a1, int a2)
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

uint64_t sub_2516803C4(uint64_t result, int a2, int a3)
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

uint64_t sub_251680480()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516804B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516804F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251680530()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251680588()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2516805C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

id sub_251680628@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static ENUIPublicHealthAgencyModel.activeRegion;
  *a1 = static ENUIPublicHealthAgencyModel.activeRegion;

  return v2;
}

id sub_251680784@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static ENUIPublicHealthAgencyModel.turndownEntity;
  *a1 = static ENUIPublicHealthAgencyModel.turndownEntity;

  return v2;
}

uint64_t sub_251680800()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251680838()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2516808A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516808E0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251680930()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251680968()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2516809C8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_251680A0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *sub_251680A80()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_251680AC4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_251680B50()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251680B94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251680BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251702E24();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251680C38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_251702E24();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_251680CBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SymptomOnset(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_251702E24();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  v8 = v3 + v4;
  v9 = (v3 + v4 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_251680E64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251680EA4()
{
  v1 = sub_251702E64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_251680F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251680FD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251681018()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_251681050@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_251681098()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516810D0()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681108()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251681150()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251681198()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516811D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25168128C()
{
  v1 = sub_251702E64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251681350()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25168138C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2516813CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681404()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251681444()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25168147C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2516814C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681504()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25168153C()
{
  sub_2516C4838(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2516815A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516815E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251681620()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251681660()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SymptomOnset(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_251702E24();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  v8 = v3 + v4;
  v9 = (v3 + v4 + 25) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v2 | 7);
}

uint64_t sub_25168180C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25168185C()
{
  v1 = sub_251702E64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_251681938()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_251702E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SymptomOnset(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = sub_251702E24();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v0 + v3, 1, v10))
    {
      (*(v11 + 8))(v0 + v3, v10);
    }
  }

  v12 = (v4 + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = (v13 + v8) & 0xFFFFFFFFFFFFFFF8;

  (*(v6 + 8))(v0 + v13, v5);
  v15 = *(v0 + v14 + 16);

  return MEMORY[0x2821FE8E8](v0, v14 + 24, v2 | v7 | 7);
}

uint64_t sub_251681B5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681BB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_251681BF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 manager];
  *a2 = result;
  return result;
}

id sub_251681C30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureNotificationStatus];
  *a2 = result;
  return result;
}

uint64_t sub_251681C64()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681C9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681CD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251681D38()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251681EB8()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681EF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681F30()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681F68()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251681FA0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251681FF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25168202C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25168207C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2516820B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251682104()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25168213C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_2516C47E4(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251682194()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25168227C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516822B4()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2516822EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25168232C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_251682360(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_251682360(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_251682374()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2516823AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25168240C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251682444()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251682484()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2516824C4()
{
  MEMORY[0x253080470](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25168250C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251682548()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

const char *ENUILogCategoryForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    ENUILogCategoryForCategory_cold_1();
  }

  if (a1 - 1 > 2)
  {
    return "general";
  }

  else
  {
    return off_2796C3138[a1 - 1];
  }
}

id ENUILogForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    ENUILogForCategory_cold_2();
  }

  if (ENUILogForCategory_onceToken[0] != -1)
  {
    ENUILogForCategory_cold_1();
  }

  v2 = ENUILogForCategory_logObjects[a1];

  return v2;
}

void __ENUILogForCategory_block_invoke()
{
  for (i = 0; i != 4; ++i)
  {
    v1 = ENUILogSubsystem;
    v2 = ENUILogCategoryForCategory(i);
    v3 = os_log_create(v1, v2);
    v4 = ENUILogForCategory_logObjects[i];
    ENUILogForCategory_logObjects[i] = v3;
  }
}

uint64_t VerificationSymptomDateEntryViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_25168A464(a1, a3, v7, ObjectType, a2);
}

uint64_t VerificationSymptomDateEntryViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_25168A464(a1, a3, v3, ObjectType, a2);
}

void sub_251684B5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = [v0 viewIfLoaded];
  [v11 setNeedsLayout];

  sub_251685038();
  v12 = [v1 tableView];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  if (!v13)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v12;
  v42 = 1;
  v15 = v13;
  sub_251703034();

  v16 = sub_251702EE4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = sub_251702EB4();
  (*(v17 + 8))(v10, v16);
  v19 = [v14 byte_2796C31BB];

  if (v19)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v20[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms] & 1;
      [v20 setNeedsLayout];
    }
  }

LABEL_8:
  v21 = [v1 tableView];
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v21;
  v41 = 4;
  v24 = v22;
  sub_251703034();

  v25 = sub_251702EE4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v8, 1, v25) == 1)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = sub_251702EB4();
  (*(v26 + 8))(v8, v25);
  v28 = [v23 cellForRowAtIndexPath_];

  if (v28)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v29[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms] != 2) ^ v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms]) & 1;
      [v29 setNeedsLayout];
    }
  }

LABEL_15:
  v30 = [v1 tableView];
  if (!v30)
  {
    return;
  }

  v31 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = v30;
  v40 = 2;
  v33 = v31;
  v34 = v39;
  sub_251703034();

  v35 = sub_251702EE4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v37 = sub_251702EB4();
  (*(v36 + 8))(v34, v35);
  v38 = [v32 cellForRowAtIndexPath_];

  if (v38)
  {
    [v1 updateSymptomsDateCell_];
  }
}

id sub_251685038()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539E8, &qword_251706F68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  result = [v0 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_25168B670();
  sub_25168B6C4();
  sub_251702FD4();
  sub_251702FB4();
  v17[15] = 0;
  sub_251702FA4();
  v17[14] = 1;
  sub_251702FA4();
  v11 = v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms];
  if (v11 != 2 && (v11 & 1) != 0 && v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker] == 1)
  {
    v17[12] = 1;
    sub_251702FA4();
  }

  v17[13] = 2;
  result = sub_251702FA4();
  v12 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  if (!v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(v3 + 16))(v7, v9, v2);
  v13 = v12;
  result = [v1 tableView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result window];

  if (v15)
  {
  }

  sub_251703014();

  v16 = *(v3 + 8);
  v16(v7, v2);
  return (v16)(v9, v2);
}

void sub_2516852E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [v0 viewIfLoaded];
  [v11 setNeedsLayout];

  v12 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  if (v12)
  {
    v18[15] = 2;
    v13 = v12;
    sub_251703034();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_25168B718(v5, &qword_27F4539F0, &qword_251706F70);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v14 = [v1 tableView];
      if (v14)
      {
        v15 = v14;
        v16 = sub_251702EB4();
        v17 = [v15 cellForRowAtIndexPath_];

        if (v17)
        {
          [v1 updateSymptomsDateCell_];
        }
      }

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_251685530@<X0>(char *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v23 - v4;
  v6 = sub_251702E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms);
  if (v11 == 2)
  {
    v12 = type metadata accessor for SymptomOnset(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = v12;
    v15 = a1;
    v16 = 1;
  }

  else
  {
    if (v11)
    {
      v17 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
      swift_beginAccess();
      sub_25168A9CC(v1 + v17, v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_25168B718(v5, &unk_27F4538C0, &qword_2517090F0);
        v18 = type metadata accessor for SymptomOnset(0);
        return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
      }

      else
      {
        v21 = *(v7 + 32);
        v21(v10, v5, v6);
        v21(a1, v10, v6);
        (*(v7 + 56))(a1, 0, 1, v6);
        v22 = type metadata accessor for SymptomOnset(0);
        return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
      }
    }

    (*(v7 + 56))(a1, 1, 1, v6);
    v20 = type metadata accessor for SymptomOnset(0);
    v13 = *(*(v20 - 8) + 56);
    v14 = v20;
    v15 = a1;
    v16 = 0;
  }

  return v13(v15, v16, 1, v14);
}

id sub_25168583C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_251685038();
  v12 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  if (v12)
  {
    v18[15] = 2;
    v13 = v12;
    sub_251703034();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_25168B718(v5, &qword_27F4539F0, &qword_251706F70);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v14 = [v1 tableView];
      if (v14)
      {
        v15 = v14;
        v16 = sub_251702EB4();
        v17 = [v15 cellForRowAtIndexPath_];

        if (v17)
        {
          [v1 updateSymptomsDateCell_];
        }
      }

      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_251685A68@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_251685A8C()
{
  v1 = *v0;
  sub_2517036E4();
  MEMORY[0x25307FAC0](v1);
  return sub_251703724();
}

uint64_t sub_251685AD4()
{
  v1 = *v0;
  sub_2517036E4();
  MEMORY[0x25307FAC0](v1);
  return sub_251703724();
}

Swift::Void __swiftcall VerificationSymptomDateEntryViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_251685D54();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_251685D54()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton;
  v3 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton];
  v4 = sub_251703134();
  [v3 setTitle:v4 forState:{0, 0xE000000000000000}];

  [*&v0[v2] addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v5 = [v0 buttonTray];
  [v5 addButton_];

  sub_251702C94();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_secondaryButton;
  v7 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_secondaryButton];
  v8 = sub_251703134();
  [v7 setTitle:v8 forState:{0, 0xE000000000000000}];

  [*&v0[v6] addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v9 = [v0 buttonTray];
  [v9 addButton_];

  v10 = [objc_allocWithZone(type metadata accessor for VerificationTableView()) init];
  [v0 setTableView_];

  v11 = [v0 tableView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  [v11 setDelegate_];

  v13 = [v0 tableView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  type metadata accessor for AuthorityTextCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = sub_251703134();
  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];

  v17 = [v0 tableView];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  type metadata accessor for VerificationCheckmarkCell();
  v19 = swift_getObjCClassFromMetadata();
  v20 = sub_251703134();
  [v18 registerClass:v19 forCellReuseIdentifier:v20];

  v21 = [v0 tableView];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  type metadata accessor for SymptomOnsetDateCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = sub_251703134();
  [v22 registerClass:v23 forCellReuseIdentifier:v24];

  v25 = [v0 tableView];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  type metadata accessor for DatePickerCell();
  v27 = swift_getObjCClassFromMetadata();
  v28 = sub_251703134();
  [v26 registerClass:v27 forCellReuseIdentifier:v28];

  if (![v0 tableView])
  {
LABEL_17:
    __break(1u);
    return;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A08, &qword_251706F78));
  v30 = sub_251702FE4();
  v31 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource];
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource] = v30;
  v32 = v30;

  sub_251703004();
  sub_251685038();
  v33 = [v1 navigationItem];
  v34 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v33 setRightBarButtonItem_];
}

char *sub_251686338(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v63[-v7];
  v9 = sub_251702E24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v63[-v15];
  v17 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (v17 <= 1)
    {
      if (!v17)
      {
        v25 = sub_251703134();
        v26 = sub_251702EB4();
        v27 = [a1 dequeueReusableCellWithIdentifier:v25 forIndexPath:v26];

        type metadata accessor for AuthorityTextCell();
        v23 = swift_dynamicCastClassUnconditional();
        v28 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_healthAgencyModel];
        v29 = *(v28 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
        v30 = (v28 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText);
        v31 = *v30;
        v32 = v30[1];
        v33 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
        v34 = v29;

        v35 = sub_2516DD44C(v34, 20.0, 20.0, 20.0, 20.0);
        v36 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
        *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = v35;
        v37 = v35;
        sub_2516FDCBC(v36);

        v19 = v36;
LABEL_24:

        return v23;
      }

      v50 = sub_251703134();
      v51 = sub_251702EB4();
      v52 = [a1 dequeueReusableCellWithIdentifier:v50 forIndexPath:v51];

      type metadata accessor for VerificationCheckmarkCell();
      v23 = swift_dynamicCastClassUnconditional();
      v53 = qword_28151EB58;
      v54 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
      if (v53 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      v55 = sub_251703134();

      [v54 setText_];

      v49 = v19[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms];
    }

    else
    {
      if (v17 == 2)
      {
        v38 = sub_251703134();
        v39 = sub_251702EB4();
        v23 = [a1 dequeueReusableCellWithIdentifier:v38 forIndexPath:v39];

        v40 = [v23 textLabel];
        if (v40)
        {
          v41 = v40;
          if (qword_28151EB58 != -1)
          {
            swift_once();
          }

          sub_251702C94();
          v42 = sub_251703134();

          [v41 setText_];
        }

        [v19 updateSymptomsDateCell_];
        goto LABEL_24;
      }

      if (v17 == 3)
      {
        v20 = sub_251703134();
        v21 = sub_251702EB4();
        v22 = [a1 dequeueReusableCellWithIdentifier:v20 forIndexPath:v21];

        type metadata accessor for DatePickerCell();
        v23 = swift_dynamicCastClassUnconditional();
        v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
        swift_beginAccess();
        sub_25168A9CC(&v19[v24], v8);
        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {
          sub_25168B718(v8, &unk_27F4538C0, &qword_2517090F0);
        }

        else
        {
          (*(v10 + 32))(v16, v8, v9);
          v56 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker];
          v57 = sub_251702DD4();
          [v56 setDate_];

          (*(v10 + 8))(v16, v9);
        }

        v58 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker;
        v59 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker];
        sub_251702E14();
        v60 = sub_251702DD4();
        (*(v10 + 8))(v14, v9);
        [v59 setMaximumDate_];

        [*&v23[v58] removeTarget:v19 action:sel_datePickerValueChanged_ forControlEvents:4096];
        v61 = *&v23[v58];
        [v61 addTarget:v19 action:sel_datePickerValueChanged_ forControlEvents:4096];

        goto LABEL_24;
      }

      v43 = sub_251703134();
      v44 = sub_251702EB4();
      v45 = [a1 dequeueReusableCellWithIdentifier:v43 forIndexPath:v44];

      type metadata accessor for VerificationCheckmarkCell();
      v23 = swift_dynamicCastClassUnconditional();
      v46 = qword_28151EB58;
      v47 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
      if (v46 != -1)
      {
        swift_once();
      }

      sub_251702C94();
      v48 = sub_251703134();

      [v47 setText_];

      v49 = (v19[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms] != 2) ^ v19[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms];
    }

    v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v49 & 1;
    [v23 setNeedsLayout];
    goto LABEL_24;
  }

  return 0;
}

void sub_251686BE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_251702E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
  swift_beginAccess();
  sub_25168A9CC(v1 + v12, v6);
  v13 = 0x27F453000uLL;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25168B718(v6, &unk_27F4538C0, &qword_2517090F0);
    v14 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms);
    if (v14 == 2 || (v14 & 1) == 0)
    {
      v24 = [a1 detailTextLabel];
      if (v24)
      {
        v25 = v24;
        [v24 setText_];
      }
    }

    else
    {
      v15 = [a1 detailTextLabel];
      if (v15)
      {
        v16 = v15;
        if (qword_28151EB58 != -1)
        {
          swift_once();
        }

        sub_251702C94();
        v17 = sub_251703134();

        [v16 setText_];
      }
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v18 = [a1 detailTextLabel];
    if (v18)
    {
      v19 = v18;
      v20 = v1;
      v21 = objc_opt_self();
      v22 = sub_251702DD4();
      v23 = [v21 localizedStringFromDate:v22 dateStyle:2 timeStyle:0];

      if (!v23)
      {
        sub_251703164();
        v23 = sub_251703134();
      }

      [v19 setText_];

      v1 = v20;
      v13 = 0x27F453000;
    }

    (*(v8 + 8))(v11, v7);
  }

  v26 = [a1 textLabel];
  if (v26)
  {
    v27 = v26;
    v28 = *(v1 + *(v13 + 2256));
    if (v28 == 2 || (v28 & 1) == 0)
    {
      v29 = &selRef_tertiaryLabelColor;
    }

    else
    {
      v29 = &selRef_labelColor;
    }

    v30 = [objc_opt_self() *v29];
    [v27 setTextColor_];
  }

  v31 = [a1 detailTextLabel];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() systemBlueColor];
    [v32 setTextColor_];
  }
}

Swift::Void __swiftcall VerificationSymptomDateEntryViewController.viewDidLayoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_viewDidLayoutSubviews);
  v6 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton];
  sub_251685530(v5);
  v7 = type metadata accessor for SymptomOnset(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_25168B718(v5, &unk_27F4538B0, &unk_2517068C0);
  [v6 setEnabled_];
}

void VerificationSymptomDateEntryViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v11 animated:1];

  v12 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  sub_251702FF4();

  if (v26 <= 3u)
  {
    if (v26 != 1)
    {
      if (v26 == 2)
      {
        v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
        swift_beginAccess();
        sub_25168A9CC(v1 + v14, v10);
        v15 = sub_251702E24();
        v16 = *(v15 - 8);
        v17 = (*(v16 + 48))(v10, 1, v15);
        sub_25168B718(v10, &unk_27F4538C0, &qword_2517090F0);
        if (v17 == 1)
        {
          sub_251702E14();
          (*(v16 + 56))(v8, 0, 1, v15);
          swift_beginAccess();
          sub_25168A95C(v8, v2 + v14);
          swift_endAccess();
          sub_2516852E0();
          sub_25168B718(v8, &unk_27F4538C0, &qword_2517090F0);
        }

        *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker) = (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker) & 1) == 0;
        sub_25168583C();
      }

      goto LABEL_17;
    }

    v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms;
    v21 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms);
    if (v21 == 2 || (v21 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v26 != 4)
  {
    if (v26 != 5)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms;
  v19 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms);
  if (v19 != 2 && (v19 & 1) == 0)
  {
LABEL_14:
    v20 = 2;
    goto LABEL_16;
  }

  v20 = 0;
LABEL_16:
  *(v1 + v18) = v20;
  sub_251684B5C();
LABEL_17:
  v22 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms);
  if (v22 == 2 || (v22 & 1) == 0)
  {
    v23 = sub_251702E24();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
    swift_beginAccess();
    sub_25168A95C(v8, v2 + v24);
    swift_endAccess();
    sub_2516852E0();
    sub_25168B718(v8, &unk_27F4538C0, &qword_2517090F0);
    *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker) = 0;
    sub_25168583C();
  }
}

uint64_t sub_251687A98()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow);
  v5 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow + 8);
  type metadata accessor for VerificationOnboardingFlow(0);
  if (swift_dynamicCastClass())
  {
    v6 = swift_dynamicCastClassUnconditional();
    sub_251685530(v3);
    v7 = &OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
LABEL_5:
    v8 = *v7;
    swift_beginAccess();
    sub_25168B600(v3, v6 + v8);
    swift_endAccess();
    goto LABEL_6;
  }

  type metadata accessor for PreAuthorizationFlow(0);
  if (swift_dynamicCastClass())
  {
    v6 = swift_dynamicCastClassUnconditional();
    sub_251685530(v3);
    v7 = &OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_symptomOnset;
    goto LABEL_5;
  }

LABEL_6:
  ObjectType = swift_getObjectType();
  return (*(v5 + 120))(v0, &protocol witness table for VerificationSymptomDateEntryViewController, ObjectType, v5);
}

id VerificationSymptomDateEntryViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_251703134();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_251703134();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id VerificationSymptomDateEntryViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_251703134();

  if (a4)
  {
    v10 = sub_251703134();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id VerificationSymptomDateEntryViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id VerificationSymptomDateEntryViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

char *sub_251688288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  if (a3)
  {
    v8 = sub_251703134();
  }

  else
  {
    v8 = 0;
  }

  v34.receiver = v3;
  v34.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v34, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker;
  v11 = *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUIP33_B34324B7016DDD2106849E0328F1789A14DatePickerCell_datePicker];
  v12 = v9;
  [v11 setDatePickerMode_];
  [*&v9[v10] setPreferredDatePickerStyle_];
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 contentView];
  [v13 addSubview_];

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2517068A0;
  v16 = [*&v9[v10] leadingAnchor];
  v17 = [v12 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  v20 = [*&v9[v10] trailingAnchor];
  v21 = [v12 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v15 + 40) = v23;
  v24 = [*&v9[v10] topAnchor];
  v25 = [v12 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v15 + 48) = v27;
  v28 = [*&v9[v10] bottomAnchor];
  v29 = [v12 contentView];

  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor_];

  *(v15 + 56) = v31;
  sub_25168B5B4();
  v32 = sub_2517031F4();

  [v14 activateConstraints_];

  return v12;
}

id _s28HealthExposureNotificationUI42VerificationSymptomDateEntryViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id variable initialization expression of LoadingStatusView.spinnerView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D750E8]);

  return [v0 initWithActivityIndicatorStyle_];
}

id variable initialization expression of LoadingStatusView.statusLabel()
{
  v0 = objc_allocWithZone(MEMORY[0x277D756B8]);

  return [v0 init];
}

char *variable initialization expression of WebReportViewController.statusView()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  return LoadingStatusView.init(with:backgroundColor:)(0, 0xE000000000000000, v0);
}

uint64_t sub_251688970@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of OnboardingInfoViewController.scrollView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D759D8]);

  return [v0 init];
}

id variable initialization expression of OnboardingWelcomeViewController.notificationPreview()
{
  type metadata accessor for NotificationPreviewView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of OnboardingWelcomeViewController.secondaryButton()
{
  v0 = [objc_opt_self() linkButton];

  return v0;
}

id variable initialization expression of OnboardingWelcomeViewController.howItWorksButton()
{
  type metadata accessor for MultilineButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];

  return v0;
}

id variable initialization expression of OnboardingWelcomeViewController.buttonTray()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D68]);

  return [v0 init];
}

id variable initialization expression of TurndownViewController.primaryButton()
{
  v0 = [objc_opt_self() boldButton];

  return v0;
}

char *variable initialization expression of OnboardingRegionSelectionViewController.statusView()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v0 = sub_251702C94();
  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  v4 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  return LoadingStatusView.init(with:backgroundColor:)(v0, v2, v3);
}

id variable initialization expression of OnboardingRegionSelectionViewController.regionTableView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75B40]);

  return [v0 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t variable initialization expression of OnboardingRegionSelectionViewController.regionsProvider()
{
  v0 = type metadata accessor for RegionsProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2516E2EB8();
}

char *variable initialization expression of VerificationSummaryViewController.statusView()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v0 = sub_251702C94();
  v2 = v1;
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  v4 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  return LoadingStatusView.init(with:backgroundColor:)(v0, v2, v3);
}

id variable initialization expression of AuthorizationViewController.contentView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D759D8]);

  return [v0 initWithFrame_];
}

char *variable initialization expression of VerificationCodeEntryViewController.statusView()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v0 = sub_251702C94();
  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  v4 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  return LoadingStatusView.init(with:backgroundColor:)(v0, v2, v3);
}

id variable initialization expression of OnboardingHeaderView.imageView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D755E8]);

  return [v0 init];
}

id sub_25168909C()
{
  v0 = objc_allocWithZone(type metadata accessor for VerificationCheckmarkCell());

  return [v0 initWithStyle:0 reuseIdentifier:0];
}

uint64_t sub_2516890E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x25307F2D0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_251689138(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x25307F2E0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_2516891C0(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x25307F650](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_251689214(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x25307F660](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_251689294(uint64_t a1, id *a2)
{
  result = sub_251703144();
  *a2 = 0;
  return result;
}

uint64_t sub_25168930C(uint64_t a1, id *a2)
{
  v3 = sub_251703154();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25168938C@<X0>(uint64_t *a1@<X8>)
{
  sub_251703164();
  v2 = sub_251703134();

  *a1 = v2;
  return result;
}

uint64_t sub_2516893D0()
{
  v1 = *v0;
  v2 = sub_251703164();
  v3 = MEMORY[0x25307F5A0](v2);

  return v3;
}

uint64_t sub_25168940C()
{
  v1 = *v0;
  sub_251703164();
  sub_2517031A4();
}

uint64_t sub_251689460()
{
  v1 = *v0;
  sub_251703164();
  sub_2517036E4();
  sub_2517031A4();
  v2 = sub_251703724();

  return v2;
}

uint64_t sub_2516894D4(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B28, type metadata accessor for ENError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_251689540(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B28, type metadata accessor for ENError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2516895AC(uint64_t a1)
{
  v2 = sub_25168B254(&unk_27F453B60, type metadata accessor for ENError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_251689618()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_251702F54();
}

uint64_t sub_251689664()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_251702F44();
}

uint64_t sub_2516896BC()
{
  sub_2517036E4();
  v1 = *v0;
  swift_getWitnessTable();
  sub_251702F44();
  return sub_251703724();
}

uint64_t sub_251689734(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B78, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2516897A0(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B78, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_25168980C(void *a1, uint64_t a2)
{
  v4 = sub_25168B254(&qword_27F453B78, type metadata accessor for ENTestResultError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25168989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25168B254(&qword_27F453B78, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_251689918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_251703164();
  v6 = v5;
  if (v4 == sub_251703164() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_251703624();
  }

  return v9 & 1;
}

uint64_t sub_2516899B0(uint64_t a1)
{
  v2 = sub_25168B254(&unk_27F453B60, type metadata accessor for ENError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_251689A1C(uint64_t a1)
{
  v2 = sub_25168B254(&unk_27F453B60, type metadata accessor for ENError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_251689A88(void *a1, uint64_t a2)
{
  v4 = sub_25168B254(&unk_27F453B60, type metadata accessor for ENError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_251689B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_25168B254(&unk_27F453B60, type metadata accessor for ENError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_251689B94()
{
  v2 = *v0;
  sub_2517036E4();
  sub_251703124();
  return sub_251703724();
}

uint64_t sub_251689BF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_251702F34();
}

uint64_t sub_251689C60()
{
  sub_25168B254(&qword_27F453E30, type metadata accessor for OpenExternalURLOptionsKey);
  sub_25168B254(&qword_27F4539E0, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_2517035D4();
}

double sub_251689D1C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_251689D28()
{
  v2 = *v0;
  sub_25168B254(&qword_27F453BD8, type metadata accessor for Weight);
  sub_25168B254(&qword_27F453BE0, type metadata accessor for Weight);
  sub_25168C398();
  return sub_2517035D4();
}

uint64_t sub_251689DF0()
{
  sub_25168B254(&qword_28151E910, type metadata accessor for Key);
  sub_25168B254(&qword_27F453BF8, type metadata accessor for Key);

  return sub_2517035D4();
}

float sub_251689EAC@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_251689EB8()
{
  v2 = *v0;
  sub_25168B254(&qword_27F453C00, type metadata accessor for UILayoutPriority);
  sub_25168B254(&qword_27F453C08, type metadata accessor for UILayoutPriority);
  return sub_2517035D4();
}

uint64_t sub_251689F74(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B80, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_251689FE0(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B80, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_25168A04C(uint64_t a1)
{
  v2 = sub_25168B254(&qword_27F453B78, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_25168A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25168B254(&qword_27F453B78, type metadata accessor for ENTestResultError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_25168A13C()
{
  sub_25168B254(&qword_28151E8C8, type metadata accessor for AttributeName);
  sub_25168B254(&qword_27F453BD0, type metadata accessor for AttributeName);

  return sub_2517035D4();
}

uint64_t sub_25168A1F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251703134();

  *a2 = v5;
  return result;
}

uint64_t sub_25168A240()
{
  sub_25168B254(&qword_27F453BB8, type metadata accessor for TraitKey);
  sub_25168B254(&unk_27F453BC0, type metadata accessor for TraitKey);

  return sub_2517035D4();
}

uint64_t sub_25168A2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25168B254(&unk_27F453B60, type metadata accessor for ENError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_25168A388()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x25307FAE0](*&v1);
}

uint64_t sub_25168A3C4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_25168A464(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms] = 2;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
  v11 = sub_251702E24();
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_isShowingDatePicker] = 0;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource] = 0;
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton;
  *&a3[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_secondaryButton;
  *&a3[v13] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v14 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow];
    *v14 = a1;
    v14[1] = a5;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_healthAgencyModel] = a2;
    v15 = qword_28151EB58;
    swift_unknownObjectRetain();
    v16 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v17 = sub_251703134();

    v22.receiver = a3;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_, v17, 0, 0, 0xE000000000000000);

    v19 = v18;
    [v19 set:1 shouldInlineButtontray:?];

    swift_unknownObjectRelease();
    return v19;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v21 = sub_251703194();
    MEMORY[0x25307F580](v21);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

BOOL sub_25168A810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A18, &qword_251708900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v1 = type metadata accessor for VerificationOnboardingFlow(0);
  *(inited + 32) = v1;
  v2 = type metadata accessor for PreAuthorizationFlow(0);
  *(inited + 40) = v2;
  ObjectType = swift_getObjectType();
  v5 = ObjectType == v1 || ObjectType == v2;

  return v5;
}

void sub_25168A8AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource);
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  sub_251702FF4();

  if (v4 > 3u)
  {
    if (v4 != 5)
    {
      return;
    }

LABEL_8:
    __break(1u);
    return;
  }

  if (v4 == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_hasSymptoms);
  }
}

uint64_t sub_25168A95C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25168A9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25168AA3C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539E8, &qword_251706F68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_251703024();

    v11 = sub_251702FC4();
    result = (*(v4 + 8))(v8, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + a1 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25168AB7C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539E8, &qword_251706F68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_251703024();

    v11 = sub_251702FC4();
    result = (*(v4 + 8))(v8, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + a1 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for VerificationSymptomDateEntryViewController()
{
  result = qword_28151E988;
  if (!qword_28151E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25168AD0C()
{
  sub_25168ADD8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25168ADD8()
{
  if (!qword_28151EBA8)
  {
    sub_251702E24();
    v0 = sub_2517033E4();
    if (!v1)
    {
      atomic_store(v0, &qword_28151EBA8);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VerificationSymptomDateEntryViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerificationSymptomDateEntryViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerificationSymptomDateEntryViewController.Section(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerificationSymptomDateEntryViewController.Section(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25168B254(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25168B2A0()
{
  result = qword_27F4539A0;
  if (!qword_27F4539A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4539A0);
  }

  return result;
}

unint64_t sub_25168B2F8()
{
  result = qword_27F4539A8;
  if (!qword_27F4539A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4539A8);
  }

  return result;
}

id sub_25168B4B4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v2;
  v11.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, 1, v5);

  v7 = [v6 textLabel];
  if (v7)
  {
    if (qword_27F4538A8 != -1)
    {
      v10 = v7;
      swift_once();
      v7 = v10;
    }

    v8 = v7;
    [v7 setFont_];
  }

  return v6;
}

unint64_t sub_25168B5B4()
{
  result = qword_28151E920;
  if (!qword_28151E920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151E920);
  }

  return result;
}

uint64_t sub_25168B600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25168B670()
{
  result = qword_27F4539F8;
  if (!qword_27F4539F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4539F8);
  }

  return result;
}

unint64_t sub_25168B6C4()
{
  result = qword_27F453A00;
  if (!qword_27F453A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453A00);
  }

  return result;
}

uint64_t sub_25168B718(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_25168BFE0()
{
  result = qword_27F453B50;
  if (!qword_27F453B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453B50);
  }

  return result;
}

uint64_t sub_25168C360(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_25168C398()
{
  result = qword_27F453BE8;
  if (!qword_27F453BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453BE8);
  }

  return result;
}

void sub_25168C400(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *LoadingStatusView.init(with:backgroundColor:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_statusLabel;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13.receiver = v3;
  v13.super_class = type metadata accessor for LoadingStatusView();
  v7 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_statusLabel];
  v9 = v7;
  v10 = v8;
  v11 = sub_251703134();

  [v10 setText_];

  [v9 setBackgroundColor_];
  sub_25168C810();

  return v9;
}

void sub_25168C810()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setHidden_];
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView];
  [v1 setHidesWhenStopped_];
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_statusLabel];
  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v0 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251707F60;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v6 = v1;
  v7 = v2;
  v8 = sub_2517031F4();

  v9 = [v5 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setAlignment_];
  [v9 setSpacing_];
  v10 = v9;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251707F70;
  v13 = [v10 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v10 centerYAnchor];

  v20 = [v0 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v12 + 48) = v21;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v22 = sub_2517031F4();

  [v11 activateConstraints_];
}

id sub_25168CBF4(SEL *a1, char a2)
{
  [*&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] *a1];

  return [v2 setHidden_];
}

id LoadingStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LoadingStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadingStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25168CD90(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t PreApprovalDialogue.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PreApprovalDialogue.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PreApprovalDialogue.detailText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PreApprovalDialogue.detailText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PreApprovalDialogue.detailTextTemplate.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PreApprovalDialogue.detailTextTemplate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PreApprovalDialogue.explainers.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t PreApprovalDialogue.footerText.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PreApprovalDialogue.footerText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PreApprovalDialogue.primaryButtonTitle.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PreApprovalDialogue.primaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PreApprovalDialogue.secondaryButtonTitle.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t PreApprovalDialogue.secondaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

void __swiftcall PreApprovalDialogue.init()(HealthExposureNotificationUI::PreApprovalDialogue *__return_ptr retstr)
{
  sub_25168D904(v5);
  v2 = v5[5];
  retstr->footerText = v5[4];
  retstr->primaryButtonTitle = v2;
  retstr->secondaryButtonTitle = v5[6];
  retstr->style = v6;
  v3 = v5[1];
  *&retstr->icon.super.isa = v5[0];
  *&retstr->title._object = v3;
  v4 = v5[3];
  *&retstr->detailText.value._object = v5[2];
  *&retstr->detailTextTemplate.value._object = v4;
}

uint64_t sub_25168D248()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_25168D278()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_25168D2A8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_25168D2D8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_25168D310()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_25168D340()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

double sub_25168D378@<D0>(uint64_t a1@<X8>)
{
  sub_25168D904(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

id sub_25168D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v17 = MEMORY[0x277D85000];
  *(v8 + *((*MEMORY[0x277D85000] & *v8) + 0x80)) = 0;
  v18 = *((*v17 & *v8) + 0x88);
  *(v11 + v18) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *(v11 + *((*v17 & *v11) + 0x90)) = 0;
  *(v11 + *((*v17 & *v11) + 0x98)) = 0;
  *(v11 + *((*v17 & *v11) + 0xA0)) = 0;
  if (*(a1 + 32) && *(a1 + 48))
  {
    v32 = a7;
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v19 = sub_251702F84();
    __swift_project_value_buffer(v19, static Logger.general);
    v20 = sub_251702F64();
    v21 = sub_251703324();
    if (os_log_type_enabled(v20, v21))
    {
      v31 = a8;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25167E000, v20, v21, "Ambiguous AuthorizationDisplayable: both detailText and detailTextTemplate are set, will be using detailText", v22, 2u);
      v23 = v22;
      a8 = v31;
      MEMORY[0x2530803C0](v23, -1, -1);
    }

    a7 = v32;
  }

  v24 = v11 + *((*v17 & *v11) + 0x68);
  v25 = *(a1 + 16);
  *v24 = *a1;
  *(v24 + 1) = v25;
  v26 = *(a1 + 48);
  *(v24 + 2) = *(a1 + 32);
  *(v24 + 3) = v26;
  v24[112] = *(a1 + 112);
  v27 = *(a1 + 96);
  *(v24 + 5) = *(a1 + 80);
  *(v24 + 6) = v27;
  *(v24 + 4) = *(a1 + 64);
  v28 = (v11 + *((*v17 & *v11) + 0x78));
  *v28 = a2;
  v28[1] = a3;
  *(v11 + *((*v17 & *v11) + 0x70)) = a4;
  v29 = (v11 + *((*v17 & *v11) + 0x60));
  *v29 = a5;
  v29[1] = a6;
  v34.receiver = v11;
  v34.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  return objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);
}

id sub_25168D7AC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id PreApprovalViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25168D85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v12;
  v17[6] = *(a1 + 96);
  v18 = *(a1 + 112);
  v13 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v13;
  v14 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v14;
  v15 = objc_allocWithZone(v6);
  return sub_25168D4C4(v17, a2, a3, a4, a5, a6, &qword_27F453D10, &unk_2517080B0);
}

void sub_25168D904(uint64_t a1@<X8>)
{
  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle.exposureNotificationUI;
  v3 = sub_251703134();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  if (v4)
  {
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    v5 = sub_251702C94();
    v23 = v6;
    v24 = v5;
    v22 = sub_251702C94();
    v8 = v7;
    v9 = sub_251702C94();
    v11 = v10;
    v12 = sub_251702C94();
    v14 = v13;
    v15 = sub_251702C94();
    *&v26 = v4;
    *(&v26 + 1) = v24;
    *&v27 = v23;
    *(&v27 + 1) = v22;
    v28 = v8;
    *&v29 = 0;
    *(&v29 + 1) = MEMORY[0x277D84F90];
    *&v30 = v9;
    *(&v30 + 1) = v11;
    *&v31 = v12;
    *(&v31 + 1) = v14;
    *&v32 = v15;
    *(&v32 + 1) = v16;
    v33 = 1;
    v34[0] = v4;
    v34[1] = v24;
    v34[2] = v23;
    v34[3] = v22;
    v34[4] = v8;
    v34[5] = 0;
    v34[6] = 0;
    v34[7] = MEMORY[0x277D84F90];
    v34[8] = v9;
    v34[9] = v11;
    v34[10] = v12;
    v34[11] = v14;
    v34[12] = v15;
    v34[13] = v16;
    v35 = 1;
    sub_25168DDA0(&v26, v25);
    sub_25168DDD8(v34);
    v17 = v31;
    v18 = v32;
    v19 = v29;
    *(a1 + 64) = v30;
    *(a1 + 80) = v17;
    *(a1 + 96) = v18;
    v20 = v27;
    v21 = v28;
    *a1 = v26;
    *(a1 + 16) = v20;
    *(a1 + 112) = v33;
    *(a1 + 32) = v21;
    *(a1 + 48) = v19;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25168DC24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25168DC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for PreApprovalViewController()
{
  result = qword_27F453CF0;
  if (!qword_27F453CF0)
  {
    return swift_getSingletonMetadata();
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

id OnboardingSummaryViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_25168E5A4(a1, a3, v7, ObjectType, a2);
}

id OnboardingSummaryViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_25168E5A4(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingSummaryViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_25168DF3C();
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void sub_25168DF3C()
{
  if (*(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics) != 1)
  {
    if (qword_28151EB58 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_28151EB58 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

id OnboardingSummaryViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingSummaryViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingSummaryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25168E5A4(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_primaryButton;
  *&a3[v10] = [objc_opt_self() boldButton];
  v11 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_flow];
  *v11 = a1;
  *(v11 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingSummaryViewController_healthAgencyModel] = a2;
  v12 = qword_28151EB58;
  swift_unknownObjectRetain();
  v25 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v13 = sub_251703134();

  sub_251702C94();
  v14 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v15 = static NSBundle.exposureNotificationUI;
  v16 = sub_251703134();
  v17 = [objc_opt_self() imageNamed:v16 inBundle:{v15, 0xE000000000000000}];

  v26.receiver = a3;
  v26.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, v17, 3);

  v19 = v18;
  v20 = [v19 headerView];
  v21 = [objc_opt_self() systemPinkColor];
  [v20 setTintColor_];

  v22 = [v19 headerView];
  LODWORD(v23) = 1036831949;
  [v22 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_25168E900()
{
  v1 = *v0;
  sub_2517036E4();
  MEMORY[0x25307FAC0](v1);
  return sub_251703724();
}

uint64_t sub_25168E948()
{
  v1 = *v0;
  sub_2517036E4();
  MEMORY[0x25307FAC0](v1);
  return sub_251703724();
}

unint64_t sub_25168E98C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25169478C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ENUIPublicHealthHeader.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title + 8);

  return v1;
}

uint64_t ENUIPublicHealthHeader.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle + 8);

  return v1;
}

id ENUIPublicHealthHeader.__allocating_init(title:subtitle:backgroundColor:textColor:logoURL:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor] = a5;
  *&v17[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor] = a6;
  sub_25169479C(a7, &v17[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL]);
  *&v17[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style] = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_25168B718(a7, &qword_27F453E10, &unk_251708160);
  return v20;
}

id ENUIPublicHealthHeader.init(title:subtitle:backgroundColor:textColor:logoURL:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = &v8[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v8[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle];
  *v12 = a3;
  *(v12 + 1) = a4;
  *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor] = a5;
  *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor] = a6;
  sub_25169479C(a7, &v8[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL]);
  *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style] = a8;
  v15.receiver = v8;
  v15.super_class = type metadata accessor for ENUIPublicHealthHeader(0);
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_25168B718(a7, &qword_27F453E10, &unk_251708160);
  return v13;
}

uint64_t ENUIPublicHealthLegalDocument.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text + 8);

  return v1;
}

uint64_t ENUIPublicHealthLegalDocument.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version + 8);

  return v1;
}

id ENUIPublicHealthLegalDocument.__allocating_init(text:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ENUIPublicHealthLegalDocument.init(text:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for ENUIPublicHealthLegalDocument();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_25168F1E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ENUIUserConsentStatus.textConsented.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented + 8);

  return v1;
}

uint64_t ENUIUserConsentStatus.versionConsented.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented + 8);

  return v1;
}

uint64_t ENUIUserConsentStatus.dateConsented.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented;
  v4 = sub_251702E24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ENUIUserConsentStatus.__allocating_init(textConsented:versionConsented:dateConsented:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented;
  v15 = sub_251702E24();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v11[v14], a5, v15);
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v16 + 8))(a5, v15);
  return v17;
}

id ENUIUserConsentStatus.init(textConsented:versionConsented:dateConsented:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v5[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented;
  v10 = sub_251702E24();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a5, v10);
  v14.receiver = v5;
  v14.super_class = type metadata accessor for ENUIUserConsentStatus(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a5, v10);
  return v12;
}

uint64_t ENUIPublicHealthAgencyModel.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8);

  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);

  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.introductoryText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_introductoryText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_introductoryText + 8);

  return v1;
}

void *ENUIPublicHealthAgencyModel.legalese.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese);
  v2 = v1;
  return v1;
}

void *ENUIPublicHealthAgencyModel.consentStatus.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus);
  v2 = v1;
  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.consentVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion + 8);

  return v1;
}

void *ENUIPublicHealthAgencyModel.diagnosisKeysPreAuthorization.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_diagnosisKeysPreAuthorization);
  v2 = v1;
  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.analyticsConsentStatus.getter()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ENUIPublicHealthAgencyModel.analyticsConsentStatus.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_25168FDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_251703134();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ENUIPublicHealthAgencyModel.analyticsConsentText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText + 8);

  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.verificationIntroductoryText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText + 8);

  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.selfReportIntroductoryText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText + 8);

  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.verificationSymptomOnsetText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8);

  return v1;
}

uint64_t ENUIPublicHealthAgencyModel.verificationTravelStatusText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8);

  return v1;
}

id sub_25168FFB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_251703134();

  return v6;
}

uint64_t ENUIPublicHealthAgencyModel.vaccinationQuestionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8);

  return v1;
}

id sub_25169005C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_25169479C(a1 + *a3, &v15 - v7);
  v9 = sub_251702DA4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_251702D74();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

BOOL ENUIPublicHealthAgencyModel.isSymptomOnsetNeeded.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL ENUIPublicHealthAgencyModel.isTravelStatusNeeded.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL ENUIPublicHealthAgencyModel.isVaccinationQuestionNeeded.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText + 8];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText] & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = 1;
  if (([v0 supportsFeatures_] & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
    swift_beginAccess();
    return *&v0[v4] == 2;
  }

  return v3;
}

id ENUIPublicHealthAgencyModel.__allocating_init(region:name:appBundleId:introductoryText:header:legalese:consentStatus:consentVersion:diagnosisKeysPreAuthorization:isAssociatedDomainAllowed:isPreauthorizationDomainAllowed:isAuthorized:regionVersion:regionWebsiteURL:regionFAQWebsiteURL:featureFlags:wantsAnalytics:analyticsConsentStatus:analyticsConsentText:verificationIntroductoryText:selfReportIntroductoryText:verificationCodeHelpURL:verificationSymptomOnsetText:verificationTravelStatusText:vaccinationQuestionText:webReportURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v37 = v36;
  v43 = objc_allocWithZone(v37);
  v44 = v43;
  *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] = a1;
  v45 = &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  *v45 = a2;
  *(v45 + 1) = a3;
  v46 = &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
  *v46 = a4;
  *(v46 + 1) = a5;
  v47 = &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_introductoryText];
  *v47 = a6;
  *(v47 + 1) = a7;
  *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header] = a8;
  *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese] = a9;
  *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus] = a10;
  v48 = 3157553;
  if (a12)
  {
    v48 = a11;
  }

  v49 = 0xE300000000000000;
  if (a12)
  {
    v49 = a12;
  }

  v50 = &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion];
  *v50 = v48;
  v50[1] = v49;
  *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_diagnosisKeysPreAuthorization] = a13;
  v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAssociatedDomainAllowed] = a14;
  v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isPreauthorizationDomainAllowed] = a15;
  v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized] = a16;
  *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] = a17;
  sub_25169479C(a18, &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionWebsiteURL]);
  sub_25169479C(a19, &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionFAQWebsiteURL]);
  *&v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_featureFlags] = a20;
  v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics] = a21;
  *&v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus] = a22;
  v51 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText];
  *v51 = a23;
  v51[1] = a24;
  v52 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText];
  *v52 = a25;
  v52[1] = a26;
  v53 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText];
  *v53 = a27;
  v53[1] = a28;
  sub_25169479C(a29, &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL]);
  v54 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText];
  *v54 = a30;
  v54[1] = a31;
  v55 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText];
  *v55 = a32;
  v55[1] = a33;
  v56 = &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText];
  *v56 = a34;
  v56[1] = a35;
  sub_25169479C(a36, &v44[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL]);
  v63.receiver = v44;
  v63.super_class = v62;
  v57 = objc_msgSendSuper2(&v63, sel_init);
  sub_25168B718(a36, &qword_27F453E10, &unk_251708160);
  sub_25168B718(a29, &qword_27F453E10, &unk_251708160);
  sub_25168B718(a19, &qword_27F453E10, &unk_251708160);
  sub_25168B718(a18, &qword_27F453E10, &unk_251708160);
  return v57;
}

id ENUIPublicHealthAgencyModel.init(region:name:appBundleId:introductoryText:header:legalese:consentStatus:consentVersion:diagnosisKeysPreAuthorization:isAssociatedDomainAllowed:isPreauthorizationDomainAllowed:isAuthorized:regionVersion:regionWebsiteURL:regionFAQWebsiteURL:featureFlags:wantsAnalytics:analyticsConsentStatus:analyticsConsentText:verificationIntroductoryText:selfReportIntroductoryText:verificationCodeHelpURL:verificationSymptomOnsetText:verificationTravelStatusText:vaccinationQuestionText:webReportURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] = a1;
  v37 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  *v37 = a2;
  v37[1] = a3;
  v38 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
  *v38 = a4;
  v38[1] = a5;
  v39 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_introductoryText];
  *v39 = a6;
  v39[1] = a7;
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header] = a8;
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese] = a9;
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus] = a10;
  v41 = a12;
  if (!a12)
  {
    a11 = 3157553;
    v41 = 0xE300000000000000;
  }

  v42 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion];
  *v42 = a11;
  v42[1] = v41;
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_diagnosisKeysPreAuthorization] = a13;
  v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAssociatedDomainAllowed] = a14;
  v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isPreauthorizationDomainAllowed] = a15;
  v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized] = a16;
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] = a17;
  sub_25169479C(a18, &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionWebsiteURL]);
  sub_25169479C(a19, &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionFAQWebsiteURL]);
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_featureFlags] = a20;
  v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics] = a21;
  *&v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus] = a22;
  v43 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText];
  *v43 = a23;
  v43[1] = a24;
  v44 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText];
  *v44 = a25;
  v44[1] = a26;
  v45 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText];
  *v45 = a27;
  v45[1] = a28;
  sub_25169479C(a29, &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL]);
  v46 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText];
  *v46 = a30;
  v46[1] = a31;
  v47 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText];
  *v47 = a32;
  v47[1] = a33;
  v48 = &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText];
  *v48 = a34;
  v48[1] = a35;
  sub_25169479C(a36, &v36[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL]);
  v51.receiver = v36;
  v51.super_class = type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v49 = objc_msgSendSuper2(&v51, sel_init);
  sub_25168B718(a36, &qword_27F453E10, &unk_251708160);
  sub_25168B718(a29, &qword_27F453E10, &unk_251708160);
  sub_25168B718(a19, &qword_27F453E10, &unk_251708160);
  sub_25168B718(a18, &qword_27F453E10, &unk_251708160);
  return v49;
}

id ENUIPublicHealthAgencyModel.isAppInstalled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_251693E20(v2, v1, 0);
  v6 = [v5 applicationState];
  v7 = [v6 isInstalled];

  return v7;
}

uint64_t ENUIPublicHealthAgencyModel.isRegionUsingApp.getter()
{
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
      if (v1)
      {
        v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
        if (qword_28151EB60 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v3 = static ENManagerAdapter.defaultAdapter;
        _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0();
        LOBYTE(v1) = v4;
      }
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t ENUIPublicHealthAgencyModel.isAppInstalledAndRegionYetToBeOnboarded.getter()
{
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ENUIPublicHealthAgencyModel.installedAppName.getter()
{
  if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
  v3 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v4 = sub_251693E20(v2, v1, 0);
  v5 = [v4 localizedName];
  v6 = sub_251703164();

  return v6;
}

void ENUIPublicHealthAgencyModel.installedAppIcon.getter()
{
  if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) != 0 && *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
    v2 = sub_251703134();
    v3 = [objc_opt_self() applicationProxyForIdentifier_];

    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithResourceProxy_];
      v5 = [objc_opt_self() imageDescriptorNamed_];
      v6 = [v4 prepareImageForDescriptor_];
      v7 = v6;
      if (v6 && (v8 = [v6 CGImage]) != 0)
      {
        v9 = v8;
        [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
      }

      else
      {
        if (qword_27F453878 != -1)
        {
          swift_once();
        }

        v10 = sub_251702F84();
        __swift_project_value_buffer(v10, static Logger.general);
        v11 = sub_251702F64();
        v12 = sub_251703324();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_25167E000, v11, v12, "Failed to get image for installed app icon", v13, 2u);
          MEMORY[0x2530803C0](v13, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t ENUIPublicHealthAgencyModel.regionIsPlaceholder.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region) regionCode];
  v2 = sub_251703164();
  v4 = v3;

  if (v2 == 11565 && v4 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_251703624();

    return v6 & 1;
  }
}

uint64_t static ENUIPublicHealthAgencyModel.activeRegion.getter()
{
  swift_beginAccess();
  v0 = static ENUIPublicHealthAgencyModel.activeRegion;
  v1 = static ENUIPublicHealthAgencyModel.activeRegion;
  return v0;
}

uint64_t *ENUIPublicHealthAgencyModel.authorizedRegions.unsafeMutableAddressor()
{
  if (qword_28151EBA0 != -1)
  {
    swift_once();
  }

  return &static ENUIPublicHealthAgencyModel.authorizedRegions;
}

uint64_t *ENUIPublicHealthAgencyModel.availableRegions.unsafeMutableAddressor()
{
  if (qword_27F453858 != -1)
  {
    swift_once();
  }

  return &static ENUIPublicHealthAgencyModel.availableRegions;
}

uint64_t sub_251691DD0(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

id sub_251691E50(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a4;
  type metadata accessor for ENUIPublicHealthAgencyModel(0);

  v6 = sub_2517031F4();

  return v6;
}

uint64_t sub_251691F0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v7 = sub_251703214();
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = *a5;
  *a5 = v7;
}

uint64_t sub_251691F9C@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t sub_251692004(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v7;
}

uint64_t static ENUIPublicHealthAgencyModel.turndownEntity.getter()
{
  swift_beginAccess();
  v0 = static ENUIPublicHealthAgencyModel.turndownEntity;
  v1 = static ENUIPublicHealthAgencyModel.turndownEntity;
  return v0;
}

void sub_251692188(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = *a5;
  *a5 = v6;
  v8 = v6;
}

id ENUIPublicHealthAgencyModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static ENUIPublicHealthAgencyModel.refreshRegions(completion:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_251703084();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517030B4();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251703094();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static ENManagerAdapter.defaultAdapter;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = v12;
  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v19;

  v21 = v19;
  sub_2516C74B4(sub_251694A4C, v20);

  dispatch_group_enter(v21);
  v22 = swift_allocObject();
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v22[6] = v21;
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = sub_251694A54;
  v23[4] = v22;
  v38 = v18;
  v39 = v21;

  sub_2516C59C8(sub_251694A84, v23);

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v25 = v40;
  v24 = v41;
  (*(v40 + 104))(v11, *MEMORY[0x277D851B8], v41);
  v37 = sub_251703384();
  (*(v25 + 8))(v11, v24);
  v26 = swift_allocObject();
  v26[2] = v14;
  v26[3] = v13;
  v36 = v13;
  v26[4] = v15;
  v26[5] = v16;
  v27 = v43;
  v26[6] = v42;
  v26[7] = v17;
  v28 = v44;
  v26[8] = v27;
  v26[9] = v28;
  aBlock[4] = sub_251694A90;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);

  v30 = v45;
  sub_2517030A4();
  v51 = MEMORY[0x277D84F90];
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v31 = v48;
  v32 = v50;
  sub_251703434();
  v33 = v37;
  v34 = v39;
  sub_251703344();
  _Block_release(v29);

  (*(v49 + 8))(v31, v32);
  (*(v46 + 8))(v30, v47);
}

void sub_251692B2C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  v7 = qword_27F453878;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_251702F84();
  __swift_project_value_buffer(v8, static Logger.general);
  v9 = sub_251702F64();
  v10 = sub_251703314();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_251693FCC(0xD00000000000001BLL, 0x800000025170C1C0, &v13);
    _os_log_impl(&dword_25167E000, v9, v10, "[%{public}s] Done fetching configurations", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2530803C0](v12, -1, -1);
    MEMORY[0x2530803C0](v11, -1, -1);
  }

  dispatch_group_leave(a3);
}

void sub_251692CA8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSObject *a10)
{
  v15 = a10;
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v16 = sub_251702F84();
  __swift_project_value_buffer(v16, static Logger.general);
  v17 = sub_251702F64();
  v18 = sub_251703314();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_251693FCC(0xD00000000000001BLL, 0x800000025170C1C0, &v30);
    _os_log_impl(&dword_25167E000, v17, v18, "[%{public}s] Done fetching all entities", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    v15 = a10;
    MEMORY[0x2530803C0](v21, -1, -1);
    MEMORY[0x2530803C0](v19, -1, -1);
  }

  swift_beginAccess();
  v22 = *(a6 + 16);
  *(a6 + 16) = a1;
  v23 = a1;

  swift_beginAccess();
  v24 = *(a7 + 16);
  *(a7 + 16) = a2;

  swift_beginAccess();
  v25 = *(a8 + 16);
  *(a8 + 16) = a3;

  swift_beginAccess();
  v26 = *(a9 + 16);
  *(a9 + 16) = a4;
  v27 = a4;

  dispatch_group_leave(v15);
}

uint64_t sub_251692EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v39 = a7;
  v40 = a6;
  v38 = a5;
  v12 = sub_251703084();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2517030B4();
  v42 = *(v44 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  v19 = *(a2 + 16);

  v20 = v18;
  v21 = sub_251696404(v18, v19, 1);

  swift_beginAccess();
  if (*(a3 + 16))
  {
    v22 = *(a3 + 16);

    v24 = sub_2516932E4(v23, (a1 + 16), (a2 + 16));
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v25 = MEMORY[0x277D84F90];
  if (*(a4 + 16))
  {
    v26 = *(a4 + 16);

    v28 = sub_25169354C(v27, (a1 + 16), (a2 + 16));
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
  v29 = sub_251703364();
  v30 = swift_allocObject();
  v30[2] = v38;
  v30[3] = v21;
  v30[4] = v24;
  v30[5] = v28;
  v31 = v39;
  v30[6] = v40;
  v30[7] = v31;
  v30[8] = v41;
  aBlock[4] = sub_251696880;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251693A80;
  aBlock[3] = &block_descriptor_51;
  v32 = _Block_copy(aBlock);
  v33 = v21;

  sub_2517030A4();
  aBlock[0] = v25;
  sub_251694ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454360, &qword_251708170);
  sub_251694B14();
  v34 = v43;
  v35 = v46;
  sub_251703434();
  MEMORY[0x25307F740](0, v17, v34, v32);
  _Block_release(v32);

  (*(v45 + 8))(v34, v35);
  return (*(v42 + 8))(v17, v44);
}

uint64_t sub_2516932E4(unint64_t a1, id *a2, uint64_t *a3)
{
  v23 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_32:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_251703474();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  swift_beginAccess();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  result = MEMORY[0x277D84F90];
  v7 = &off_2796C3000;
  do
  {
    v19 = result;
    for (i = v5; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25307F910](i, a1);
      }

      else
      {
        if (i >= *(v21 + 16))
        {
          goto LABEL_31;
        }

        v9 = *(a1 + 8 * i + 32);
      }

      v10 = v9;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v11 = [v9 v7[255]];
      if (*a2)
      {
        break;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_6:

LABEL_7:
      v7 = &off_2796C3000;
      if (v5 == v4)
      {
        return v19;
      }
    }

    v12 = [*a2 v7[255]];
    v13 = v12;
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
      v14 = sub_2517033B4();

      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    v11 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_20:

LABEL_21:
    v15 = *a3;

    v16 = sub_251696404(v10, v15, 1);

    if (!v16)
    {
      goto LABEL_7;
    }

    MEMORY[0x25307F5B0](v17);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_251703224();
    }

    sub_251703244();
    result = v23;
    v7 = &off_2796C3000;
  }

  while (v5 != v4);
  return result;
}

uint64_t sub_25169354C(unint64_t a1, id *a2, uint64_t *a3)
{
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_35:
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_251703474();
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  swift_beginAccess();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  result = MEMORY[0x277D84F90];
  v7 = &off_2796C3000;
  do
  {
    v18 = result;
    for (i = v5; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25307F910](i, a1);
      }

      else
      {
        if (i >= *(v20 + 16))
        {
          goto LABEL_34;
        }

        v10 = *(a1 + 8 * i + 32);
      }

      v9 = v10;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v11 = [v10 v7[255]];
      if (!*a2)
      {
        if (!v11)
        {
          goto LABEL_8;
        }

LABEL_21:

        goto LABEL_22;
      }

      v12 = [*a2 v7[255]];
      v13 = v12;
      if (!v11)
      {
        v11 = v12;
        if (!v12)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }

      if (!v12)
      {
        goto LABEL_21;
      }

      sub_25168CD90(0, &qword_27F453DF0, 0x277CC5C98);
      v14 = sub_2517033B4();

      if (v14)
      {
        goto LABEL_7;
      }

LABEL_22:
      v15 = *a3;

      v16 = sub_251696404(v9, v15, 0);

      if (!v16)
      {
        goto LABEL_7;
      }

      if (*&v16[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] != 1 || (ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) != 0)
      {
        break;
      }

      v9 = v16;
LABEL_7:
      v7 = &off_2796C3000;
LABEL_8:

      if (v5 == v4)
      {
        return v18;
      }
    }

    MEMORY[0x25307F5B0]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_251703224();
    }

    sub_251703244();
    result = v22;
    v7 = &off_2796C3000;
  }

  while (v5 != v4);
  return result;
}

uint64_t sub_2516937DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  swift_beginAccess();
  v11 = static ENUIPublicHealthAgencyModel.activeRegion;
  static ENUIPublicHealthAgencyModel.activeRegion = a2;
  v12 = a2;

  if (qword_28151EBA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ENUIPublicHealthAgencyModel.authorizedRegions = a3;

  if (qword_27F453858 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ENUIPublicHealthAgencyModel.availableRegions = a4;

  swift_beginAccess();
  v13 = *(a5 + 16);
  swift_beginAccess();
  v14 = static ENUIPublicHealthAgencyModel.turndownEntity;
  static ENUIPublicHealthAgencyModel.turndownEntity = v13;
  v15 = v13;

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v16 = sub_251702F84();
  __swift_project_value_buffer(v16, static Logger.general);
  v17 = sub_251702F64();
  v18 = sub_251703314();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_251693FCC(0xD00000000000001BLL, 0x800000025170C1C0, &v22);
    _os_log_impl(&dword_25167E000, v17, v18, "[%{public}s] Done refreshing regions, calling completion handler", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x2530803C0](v20, -1, -1);
    MEMORY[0x2530803C0](v19, -1, -1);
  }

  return a6();
}

uint64_t sub_251693A80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_251693B50()
{
  v1 = v0;
  v2 = sub_251702E24();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  result = [v1 consentText];
  if (result)
  {
    v11 = result;
    v12 = sub_251703164();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15 && [v1 consent] == 2)
    {
      [v1 consentTimestamp];
      sub_251702DE4();
      v16 = [v1 consentVersion];
      v17 = sub_251703164();
      v27 = v18;
      v28 = v17;

      v19 = v3[2];
      v19(v7, v9, v2);
      v20 = type metadata accessor for ENUIUserConsentStatus(0);
      v21 = objc_allocWithZone(v20);
      v22 = &v21[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented];
      *v22 = v12;
      v22[1] = v14;
      v23 = &v21[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented];
      v24 = v27;
      *v23 = v28;
      v23[1] = v24;
      v19(&v21[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented], v7, v2);
      v29.receiver = v21;
      v29.super_class = v20;
      v25 = objc_msgSendSuper2(&v29, sel_init);
      v26 = v3[1];
      v26(v7, v2);
      v26(v9, v2);
      return v25;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_251693E20(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_251703134();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_251702D44();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_251693EFC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_251693F70(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_251693FCC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_251693FCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251694098(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251696894(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251694098(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2516941A4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_251703564();
    a6 = v11;
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

uint64_t sub_2516941A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2516941F0(a1, a2);
  sub_251694320(&unk_286392EF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2516941F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25169440C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251703564();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2517031C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25169440C(v10, 0);
        result = sub_251703524();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251694320(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_251694480(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25169440C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453E00, &qword_251708348);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251694480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453E00, &qword_251708348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_251694574(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0()
{
  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    v0 = qword_28151EBA0;
    v1 = static ENUIPublicHealthAgencyModel.activeRegion;
    if (v0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = static ENUIPublicHealthAgencyModel.authorizedRegions;
    v3 = qword_27F453858;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_2516DBDC0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251708140;
    *(inited + 32) = v1;
    sub_2516DBDC0(inited);
    return v2;
  }

  else
  {
    if (qword_28151EBA0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static ENUIPublicHealthAgencyModel.authorizedRegions;
    v8 = qword_27F453858;

    if (v8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_2516DBDC0(v9);
    return v7;
  }
}

unint64_t sub_25169478C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_25169479C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251694890(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *_s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC9regionFor0H4CodeACSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251703474())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25307F910](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [*&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] regionCode];
      v12 = sub_251703164();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

        return v9;
      }

      v16 = sub_251703624();

      if (v16)
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251694ABC()
{
  result = qword_28151E980;
  if (!qword_28151E980)
  {
    sub_251703084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E980);
  }

  return result;
}

unint64_t sub_251694B14()
{
  result = qword_28151E970;
  if (!qword_28151E970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F454360, &qword_251708170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E970);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_251694BC4()
{
  result = qword_27F453DD8;
  if (!qword_27F453DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453DD8);
  }

  return result;
}

void sub_251694C30()
{
  sub_251694CE8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_251694CE8()
{
  if (!qword_28151EBB0)
  {
    sub_251702DA4();
    v0 = sub_2517033E4();
    if (!v1)
    {
      atomic_store(v0, &qword_28151EBB0);
    }
  }
}

uint64_t sub_251694D48()
{
  result = sub_251702E24();
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

void sub_251694DEC()
{
  sub_251694CE8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_251694F00(void *a1, void *a2, void *a3, int a4)
{
  v176 = a4;
  v172 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v177 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v147 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v179 = &v147 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v178 = &v147 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v147 - v17;
  v166 = a1;
  v175 = [a1 region];
  v19 = [a3 agencyHeaderStyle];
  if (v19 >= 4)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v174 = v20;
  v21 = [a3 localizedConfiguration];
  v22 = [v21 displayName];

  v173 = sub_251703164();
  v24 = v23;

  v25 = [a3 localizedConfiguration];
  v26 = [v25 regionName];

  v27 = sub_251703164();
  v29 = v28;

  sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  v30 = [a3 agencyColor];
  sub_25168CD90(0, &qword_28151E850, 0x277CCABB0);
  v31 = sub_251703214();

  sub_251701920(v31);
  if (!v32)
  {
    v32 = [objc_opt_self() systemGray2Color];
  }

  v33 = v32;
  v34 = [a3 agencyHeaderTextColor];
  v35 = sub_251703214();

  sub_251701920(v35);
  v180 = v12;
  if (!v36)
  {
    v36 = [objc_opt_self() labelColor];
  }

  v37 = v36;
  v38 = [a3 agencyImageURL];
  sub_251703164();

  sub_251702D94();

  v39 = type metadata accessor for ENUIPublicHealthHeader(0);
  v40 = objc_allocWithZone(v39);
  v41 = &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title];
  *v41 = v173;
  v41[1] = v24;
  v42 = &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle];
  *v42 = v27;
  v42[1] = v29;
  *&v40[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor] = v33;
  *&v40[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor] = v37;
  sub_25169479C(v18, &v40[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL]);
  *&v40[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style] = v174;
  v183.receiver = v40;
  v183.super_class = v39;
  v174 = objc_msgSendSuper2(&v183, sel_init);
  sub_25168B718(v18, &qword_27F453E10, &unk_251708160);
  v43 = &off_2796C3000;
  v44 = [a3 localizedConfiguration];
  v45 = [v44 legalConsentText];

  if (v45)
  {
    v46 = sub_251703164();
    v48 = v47;

    v49 = v172;
    v50 = [v172 legalConsentVersion];
    if (v50)
    {
      v51 = v50;
      v52 = sub_251703164();
      v54 = v53;

      v55 = type metadata accessor for ENUIPublicHealthLegalDocument();
      v56 = objc_allocWithZone(v55);
      v57 = &v56[OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text];
      *v57 = v46;
      v57[1] = v48;
      v58 = &v56[OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version];
      *v58 = v52;
      v58[1] = v54;
      v43 = &off_2796C3000;
      v181.receiver = v56;
      v181.super_class = v55;
      v173 = objc_msgSendSuper2(&v181, sel_init);
    }

    else
    {

      v173 = 0;
    }
  }

  else
  {
    v173 = 0;
    v49 = v172;
  }

  v59 = v166;
  v60 = [v166 userConsent];
  v61 = v178;
  if (v60)
  {
    v62 = v60;
    v63 = [v60 consentVersion];

    v64 = sub_251703164();
    v170 = v65;
    v171 = v64;
  }

  else
  {
    v170 = 0;
    v171 = 0;
  }

  LODWORD(v172) = [v49 telemetryAuthorization];
  v66 = [v59 userConsent];
  if (v66)
  {
    v67 = v66;
    v169 = [v66 differentialPrivacyConsent];
  }

  else
  {
    v169 = 0;
  }

  v68 = [a3 v43[257]];
  v69 = [v68 phaTelemetryOptInMessage];

  if (v69)
  {
    v70 = sub_251703164();
    v167 = v71;
    v168 = v70;
  }

  else
  {
    v167 = 0;
    v168 = 0;
  }

  v72 = [a3 agencyDisplayName];
  v165 = sub_251703164();
  v164 = v73;

  v74 = [v49 appBundleID];
  if (v74)
  {
    v75 = v74;
    v163 = sub_251703164();
    v162 = v76;
  }

  else
  {
    v163 = 0;
    v162 = 0;
  }

  v77 = [a3 v43[257]];
  v78 = [v77 agencyMessage];

  v161 = sub_251703164();
  v160 = v79;

  v80 = [v59 userConsent];
  if (v80)
  {
    v81 = v80;
    v159 = sub_251693B50();
  }

  else
  {
    v159 = 0;
  }

  v82 = v59;
  v166 = [v82 diagnosisKeysPreAuthorization];
  v83 = v49;

  v158 = [v83 associatedDomainsEnabled];
  v157 = [v83 preArmTestVerificationEnabled];
  v84 = v82;
  v156 = [v84 enVersion];
  v85 = a3;

  v86 = [v85 agencyWebsiteURL];
  if (v86)
  {
    sub_251702D84();

    v87 = 0;
  }

  else
  {
    v87 = 1;
  }

  v88 = sub_251702DA4();
  v89 = *(*(v88 - 8) + 56);
  v90 = 1;
  v89(v61, v87, 1, v88);
  v91 = [v85 agencyFAQWebsiteURL];
  v92 = v179;
  if (v91)
  {
    v93 = v91;
    sub_251702D84();

    v90 = 0;
  }

  v89(v92, v90, 1, v88);
  v155 = [v83 featureFlags];
  v94 = [v85 v43[257]];
  v95 = [v94 testVerificationIntroMessage];

  if (v95)
  {
    v154 = sub_251703164();
    v153 = v96;
  }

  else
  {
    v154 = 0;
    v153 = 0xE000000000000000;
  }

  v97 = [v85 v43[257]];
  v98 = [v97 selfReportIntroMessage];

  if (v98)
  {
    v152 = sub_251703164();
    v151 = v99;
  }

  else
  {
    v152 = 0;
    v151 = 0xE000000000000000;
  }

  v100 = v180;
  v101 = [v85 verificationCodeLearnMoreURL];
  if (v101)
  {
    v102 = v101;
    sub_251702D84();

    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  v89(v100, v103, 1, v88);
  v104 = [v85 v43[257]];
  v105 = [v104 symptomsOnsetDescription];

  if (v105)
  {
    v150 = sub_251703164();
    v149 = v106;
  }

  else
  {
    v150 = 0;
    v149 = 0xE000000000000000;
  }

  v107 = [v85 v43[257]];
  v108 = [v107 traveledQuestionText];

  if (v108)
  {
    v148 = sub_251703164();
    v110 = v109;
  }

  else
  {
    v148 = 0;
    v110 = 0xE000000000000000;
  }

  v111 = [v85 v43[257]];
  v112 = [v111 vaccinationQuestionTextAlt];

  if (v112)
  {
    v113 = sub_251703164();
    v115 = v114;
  }

  else
  {

    v113 = 0;
    v115 = 0xE000000000000000;
  }

  v116 = v177;
  v117 = [v85 webReportURL];

  if (v117)
  {
    sub_251702D84();

    v118 = 0;
  }

  else
  {
    v118 = 1;
  }

  v89(v116, v118, 1, v88);
  v119 = type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v120 = objc_allocWithZone(v119);
  v121 = v120;
  *&v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] = v175;
  v122 = &v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v123 = v164;
  *v122 = v165;
  v122[1] = v123;
  v124 = &v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
  v125 = v162;
  *v124 = v163;
  v124[1] = v125;
  v126 = &v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_introductoryText];
  v127 = v160;
  *v126 = v161;
  v126[1] = v127;
  v128 = v173;
  *&v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header] = v174;
  *&v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese] = v128;
  *&v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus] = v159;
  v129 = 3157553;
  if (v170)
  {
    v129 = v171;
  }

  v130 = 0xE300000000000000;
  if (v170)
  {
    v130 = v170;
  }

  v131 = &v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion];
  *v131 = v129;
  v131[1] = v130;
  *&v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_diagnosisKeysPreAuthorization] = v166;
  v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAssociatedDomainAllowed] = v158;
  v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isPreauthorizationDomainAllowed] = v157;
  v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized] = v176 & 1;
  *&v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] = v156;
  v132 = v178;
  sub_25169479C(v178, &v120[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionWebsiteURL]);
  v133 = v179;
  sub_25169479C(v179, &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionFAQWebsiteURL]);
  *&v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_featureFlags] = v155;
  v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics] = v172;
  v134 = v168;
  *&v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus] = v169;
  v135 = &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText];
  *v135 = v134;
  v135[1] = v167;
  v136 = &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText];
  v137 = v153;
  *v136 = v154;
  v136[1] = v137;
  v138 = &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText];
  v139 = v151;
  *v138 = v152;
  v138[1] = v139;
  v140 = v180;
  sub_25169479C(v180, &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL]);
  v141 = &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText];
  v142 = v149;
  *v141 = v150;
  v141[1] = v142;
  v143 = &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText];
  *v143 = v148;
  v143[1] = v110;
  v144 = &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText];
  *v144 = v113;
  v144[1] = v115;
  sub_25169479C(v116, &v121[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL]);
  v182.receiver = v121;
  v182.super_class = v119;
  v145 = objc_msgSendSuper2(&v182, sel_init);
  sub_25168B718(v116, &qword_27F453E10, &unk_251708160);
  sub_25168B718(v140, &qword_27F453E10, &unk_251708160);
  sub_25168B718(v133, &qword_27F453E10, &unk_251708160);
  sub_25168B718(v132, &qword_27F453E10, &unk_251708160);
  return v145;
}

id sub_251695CDC(uint64_t a1, uint64_t a2, int a3)
{
  v77 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = sub_251702E24();
  v76 = *(v18 - 8);
  v19 = v76[8];
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_251693E20(a1, a2, 0);
  v70 = v21;
  v71 = a1;
  v72 = a2;
  v73 = v17;
  v74 = v15;
  v75 = v12;
  if (result)
  {
    v69 = v9;
    v24 = result;
    v25 = [result applicationState];
    v26 = [v25 isInstalled];

    if (v26)
    {
      v68 = v24;
      v27 = [v24 localizedName];
      v28 = sub_251703164();
      v30 = v29;

      v31 = v70;
      sub_251702E14();
      v32 = type metadata accessor for ENUIUserConsentStatus(0);
      v33 = objc_allocWithZone(v32);
      v34 = &v33[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented];
      *v34 = 0;
      *(v34 + 1) = 0xE000000000000000;
      v35 = &v33[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented];
      *v35 = 49;
      *(v35 + 1) = 0xE100000000000000;
      v36 = v76;
      (v76[2])(&v33[OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented], v31, v18);
      v80.receiver = v33;
      v80.super_class = v32;
      v67 = objc_msgSendSuper2(&v80, sel_init);
      (v36[1])(v31, v18);
      v37 = objc_opt_self();

      v76 = [v37 darkGrayColor];
      v38 = [v37 whiteColor];
      v39 = sub_251702DA4();
      v40 = *(*(v39 - 8) + 56);
      v41 = v73;
      v40(v73, 1, 1, v39);
      v42 = type metadata accessor for ENUIPublicHealthHeader(0);
      v43 = objc_allocWithZone(v42);
      v44 = &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title];
      *v44 = v28;
      v44[1] = v30;
      v45 = v28;
      v46 = &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle];
      *v46 = 0;
      *(v46 + 1) = 0xE000000000000000;
      *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor] = v76;
      *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor] = v38;
      sub_25169479C(v41, &v43[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL]);
      *&v43[OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style] = 0;
      v79.receiver = v43;
      v79.super_class = v42;
      v76 = objc_msgSendSuper2(&v79, sel_init);
      sub_25168B718(v41, &qword_27F453E10, &unk_251708160);
      v47 = objc_allocWithZone(MEMORY[0x277CC5C98]);
      v48 = sub_251703134();
      v49 = [v47 initWithCountryCode_];

      v40(v41, 1, 1, v39);
      v50 = v74;
      v40(v74, 1, 1, v39);
      v51 = v75;
      v40(v75, 1, 1, v39);
      v52 = v69;
      v40(v69, 1, 1, v39);
      v53 = type metadata accessor for ENUIPublicHealthAgencyModel(0);
      v54 = objc_allocWithZone(v53);
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region] = v49;
      v55 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
      *v55 = v45;
      v55[1] = v30;
      v56 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId];
      v57 = v72;
      *v56 = v71;
      v56[1] = v57;
      v58 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_introductoryText];
      *v58 = 0;
      v58[1] = 0xE000000000000000;
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header] = v76;
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_legalese] = 0;
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentStatus] = v67;
      v59 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion];
      *v59 = 3157553;
      v59[1] = 0xE300000000000000;
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_diagnosisKeysPreAuthorization] = 0;
      v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAssociatedDomainAllowed] = 1;
      v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isPreauthorizationDomainAllowed] = 0;
      v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized] = v77 & 1;
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion] = 1;
      sub_25169479C(v41, &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionWebsiteURL]);
      sub_25169479C(v50, &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionFAQWebsiteURL]);
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_featureFlags] = 0;
      v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_wantsAnalytics] = 0;
      *&v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus] = 0;
      v60 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText];
      *v60 = 0;
      v60[1] = 0;
      v61 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText];
      *v61 = 0;
      v61[1] = 0xE000000000000000;
      v62 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText];
      *v62 = 0;
      v62[1] = 0xE000000000000000;
      sub_25169479C(v51, &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL]);
      v63 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText];
      *v63 = 0;
      v63[1] = 0xE000000000000000;
      v64 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText];
      *v64 = 0;
      v64[1] = 0xE000000000000000;
      v65 = &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText];
      *v65 = 0;
      v65[1] = 0xE000000000000000;
      sub_25169479C(v52, &v54[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL]);
      v78.receiver = v54;
      v78.super_class = v53;

      v66 = objc_msgSendSuper2(&v78, sel_init);

      sub_25168B718(v52, &qword_27F453E10, &unk_251708160);
      sub_25168B718(v51, &qword_27F453E10, &unk_251708160);
      sub_25168B718(v50, &qword_27F453E10, &unk_251708160);
      sub_25168B718(v41, &qword_27F453E10, &unk_251708160);
      return v66;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_251696404(void *a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v14 = sub_251702F84();
    __swift_project_value_buffer(v14, static Logger.general);
    v8 = sub_251702F64();
    v15 = sub_251703324();
    if (os_log_type_enabled(v8, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_25167E000, v8, v15, "Failed to create a agency model with empty entity", v16, 2u);
      MEMORY[0x2530803C0](v16, -1, -1);
    }

    goto LABEL_25;
  }

  v6 = a1;
  v7 = [v6 region];
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      if (*(a2 + 16))
      {
        v9 = sub_2516D865C(v7);
        if (v11)
        {
          v12 = sub_251694F00(*(*(a2 + 56) + 24 * v9), *(v10 + 8), *(v10 + 16), a3 & 1);

          return v12;
        }
      }
    }

    v17 = [v6 bundleIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_251703164();
      v21 = v20;

      v22 = sub_251695CDC(v19, v21, a3 & 1);

      return v22;
    }

    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v29 = sub_251702F84();
    __swift_project_value_buffer(v29, static Logger.general);
    v30 = v6;
    v31 = sub_251702F64();
    v32 = sub_251703324();

    if (!os_log_type_enabled(v31, v32))
    {

      goto LABEL_25;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = a1;
    v35 = v30;
    _os_log_impl(&dword_25167E000, v31, v32, "Failed to create a agency model with no matching configurations: %@", v33, 0xCu);
    sub_25168B718(v34, &qword_27F453DF8, &unk_251708338);
    MEMORY[0x2530803C0](v34, -1, -1);
    MEMORY[0x2530803C0](v33, -1, -1);

LABEL_23:
LABEL_25:

    return 0;
  }

  v23 = [v6 bundleIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_251703164();
    v27 = v26;

    v28 = sub_251695CDC(v25, v27, a3 & 1);

    return v28;
  }

  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v36 = sub_251702F84();
  __swift_project_value_buffer(v36, static Logger.general);
  v35 = v6;
  v8 = sub_251702F64();
  v37 = sub_251703324();

  if (!os_log_type_enabled(v8, v37))
  {
    goto LABEL_23;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  *v38 = 138412290;
  *(v38 + 4) = v35;
  *v39 = a1;
  v40 = v35;
  _os_log_impl(&dword_25167E000, v8, v37, "Failed to create a agency model using an entity with empty region and emoty bundle identifier: %@", v38, 0xCu);
  sub_25168B718(v39, &qword_27F453DF8, &unk_251708338);
  MEMORY[0x2530803C0](v39, -1, -1);
  MEMORY[0x2530803C0](v38, -1, -1);

  return 0;
}

uint64_t sub_251696894(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_251696908()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView);
  }

  else
  {
    v4 = sub_25169696C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_25169696C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNavigationDelegate_];
  v3 = [v2 configuration];
  v4 = [v3 userContentController];

  v5 = sub_251703134();
  [v4 addScriptMessageHandler:a1 name:v5];

  return v2;
}

id WebReportViewController.init(agencyModel:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView] = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_statusView;
  v10 = [objc_opt_self() systemBackgroundColor];
  v11 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *&v2[v9] = LoadingStatusView.init(with:backgroundColor:)(0, 0xE000000000000000, v10);
  if (a1)
  {
    sub_251699D18(a1 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v8, &qword_27F453E10, &unk_251708160);
    v12 = sub_251702DA4();
    if ((*(*(v12 - 8) + 48))(v8, 1, v12) != 1)
    {
      sub_25168B718(v8, &qword_27F453E10, &unk_251708160);
      *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_healthAgencyModel] = a1;
      v14.receiver = v2;
      v14.super_class = ObjectType;
      return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
    }

    sub_25168B718(v8, &qword_27F453E10, &unk_251708160);
  }

  result = sub_251703584();
  __break(1u);
  return result;
}

Swift::Void __swiftcall WebReportViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v6 = [v0 navigationItem];
  v7 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v8 = v0;
  v9 = [v7 initWithBarButtonSystemItem:1 target:v8 action:sel_didTapCancel];
  [v6 setLeftBarButtonItem_];

  v10 = [v8 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v8 action:sel_didTapDone];

  [v10 setRightBarButtonItem_];
  v12 = [v8 navigationItem];
  v13 = [v12 rightBarButtonItem];

  if (v13)
  {
    [v13 setEnabled_];
  }

  v14 = [v8 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [objc_opt_self() whiteColor];
  [v15 setBackgroundColor_];

  v17 = [v8 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_251696908();
  [v18 addSubview_];

  sub_251699D18(*&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v5, &qword_27F453E10, &unk_251708160);
  v20 = sub_251702DA4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_25168B718(v5, &qword_27F453E10, &unk_251708160);
    v22 = 0;
  }

  else
  {
    sub_251702D64();
    (*(v21 + 8))(v5, v20);
    v22 = sub_251703134();
  }

  [v8 setTitle_];

  v23 = [v8 navigationController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 navigationBar];

    v26 = [v25 standardAppearance];
    [v25 setScrollEdgeAppearance_];
  }

  sub_2516971B8();
}

id sub_2516971B8()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = result;
  v3 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_statusView];
  [result addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView] startAnimating];
  [v3 setHidden_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251708350;
  v5 = [v3 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = [result leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v3 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [v3 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = [result topAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  v17 = [v3 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = result;
  v19 = [result bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v4 + 56) = v20;
  v21 = sub_251696908();
  v22 = [v21 leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = result;
  v24 = [result leadingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v4 + 64) = v25;
  v26 = OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView;
  v27 = [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = result;
  v29 = [result trailingAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v4 + 72) = v30;
  v31 = [*&v0[v26] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = result;
  v33 = [result topAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v4 + 80) = v34;
  v35 = [*&v0[v26] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = objc_opt_self();
  v38 = [v36 bottomAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v4 + 88) = v39;
  sub_25168B5B4();
  v40 = sub_2517031F4();

  [v37 activateConstraints_];

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = static ENManagerAdapter.defaultAdapter;
  v42 = *(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v43 = swift_allocObject();
  *(v43 + 16) = v0;
  v44 = swift_allocObject();
  v44[2] = v41;
  v44[3] = v42;
  v44[4] = sub_251699D80;
  v44[5] = v43;
  v45 = v41;
  v46 = v42;
  v47 = v45;
  v48 = v46;
  v49 = v0;

  sub_2516C59C8(sub_251699D88, v44);
}

void sub_251697848(uint64_t a1, NSObject *a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_251702C54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v14 = sub_251702F84();
    __swift_project_value_buffer(v14, static Logger.testVerification);
    v15 = v4;
    v52 = sub_251702F64();
    v16 = sub_251703324();
    sub_25168B718(a1, &unk_27F453F70, qword_251708410);
    if (os_log_type_enabled(v52, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53 = v4;
      v54 = v18;
      *v17 = 136315138;
      v19 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v20 = sub_251703194();
      v22 = sub_251693FCC(v20, v21, &v54);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_25167E000, v52, v16, "Failed to start web report session: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x2530803C0](v18, -1, -1);
      MEMORY[0x2530803C0](v17, -1, -1);
    }

    else
    {
      v44 = v52;
    }
  }

  else
  {
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    sub_251699D18(*(&a2->isa + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_healthAgencyModel) + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v8, &qword_27F453E10, &unk_251708160);
    v26 = sub_251702DA4();
    if ((*(*(v26 - 8) + 48))(v8, 1, v26) == 1)
    {
      __break(1u);
    }

    else
    {
      v49 = v25;
      v50 = v24;
      sub_251702C24();
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v27 = sub_251702F84();
      __swift_project_value_buffer(v27, static Logger.testVerification);

      v28 = sub_251702F64();
      v29 = sub_251703314();

      v30 = os_log_type_enabled(v28, v29);
      v51 = v4;
      v52 = a2;
      if (v30)
      {
        v31 = v10;
        v32 = v9;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v54 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_251693FCC(v4, v23, &v54);
        _os_log_impl(&dword_25167E000, v28, v29, "apiKey: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x2530803C0](v34, -1, -1);
        v35 = v33;
        v9 = v32;
        v10 = v31;
        MEMORY[0x2530803C0](v35, -1, -1);
      }

      v37 = v49;
      v36 = v50;
      if (v49)
      {

        v38 = sub_251702F64();
        v39 = sub_251703314();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = v9;
          v42 = swift_slowAlloc();
          v54 = v42;
          *v40 = 136315138;
          *(v40 + 4) = sub_251693FCC(v36, v37, &v54);
          _os_log_impl(&dword_25167E000, v38, v39, "nonce: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v43 = v42;
          v9 = v41;
          MEMORY[0x2530803C0](v43, -1, -1);
          MEMORY[0x2530803C0](v40, -1, -1);
        }
      }

      else
      {
        v38 = sub_251702F64();
        v45 = sub_251703314();
        if (os_log_type_enabled(v38, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_25167E000, v38, v45, "nonce: nil", v46, 2u);
          MEMORY[0x2530803C0](v46, -1, -1);
        }
      }

      sub_251702C44();
      sub_251702C44();
      v47 = sub_251696908();
      v48 = sub_251702C04();

      (*(v10 + 8))(v13, v9);
    }
  }
}

void sub_251697E9C()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  v1 = sub_251703134();

  v2 = sub_251703134();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_251702C94();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  v6 = sub_251703134();

  aBlock[4] = sub_251699CE8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25169F470;
  aBlock[3] = &block_descriptor_0;
  v7 = _Block_copy(aBlock);

  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:{v7, 0xE000000000000000}];
  _Block_release(v7);

  [v3 addAction_];
  [v5 presentViewController:v3 animated:1 completion:0];
}

id WebReportViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251703134();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WebReportViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WebReportViewController.webView(_:decidePolicyFor:decisionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_251702C54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251702DA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 targetFrame];
  if (v19)
  {

    v20 = 1;
  }

  else
  {
    v21 = [a2 request];
    sub_251702C14();

    sub_251702C34();
    (*(v10 + 8))(v13, v9);
    if ((*(v15 + 48))(v8, 1, v14) == 1)
    {
      sub_25168B718(v8, &qword_27F453E10, &unk_251708160);
    }

    else
    {
      (*(v15 + 32))(v18, v8, v14);
      v22 = objc_opt_self();
      v23 = [v22 sharedApplication];
      v24 = sub_251702D74();
      v25 = [v23 canOpenURL_];

      if (v25)
      {
        v26 = [v22 sharedApplication];
        v27 = sub_251702D74();
        sub_2516991DC(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_251699304();
        v28 = sub_2517030F4();

        [v26 openURL:v27 options:v28 completionHandler:0];
      }

      (*(v15 + 8))(v18, v14);
    }

    v20 = 0;
  }

  return a3(v20);
}

void WebReportViewController.webView(_:decidePolicyFor:decisionHandler:)(int a1, id a2, void (*a3)(uint64_t))
{
  v11 = [a2 response];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if ([v4 statusCode] == 200)
    {
      a3(1);

      return;
    }

    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v6 = sub_251702F84();
    __swift_project_value_buffer(v6, static Logger.testVerification);
    v7 = v11;
    v8 = sub_251702F64();
    v9 = sub_251703314();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v5 statusCode];

      _os_log_impl(&dword_25167E000, v8, v9, "WebReport: bad response code: %ld", v10, 0xCu);
      MEMORY[0x2530803C0](v10, -1, -1);
    }

    else
    {

      v8 = v7;
    }
  }

  a3(0);

  sub_251697E9C();
}

void *sub_251698B5C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_251698B7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_251698BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F38, &unk_2517083E0);
    v3 = sub_2517035C4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2516D8DEC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251698C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F28, &qword_2517083D0);
    v3 = sub_2517035C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_251699D18(v4, &v11, &qword_27F453F30, &qword_2517083D8);
      v5 = v11;
      result = sub_2516D8DEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251699CD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251698DC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F10, &qword_2517083B8);
    v3 = sub_2517035C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_251699D18(v4, &v11, &qword_27F453F18, &qword_2517083C0);
      v5 = v11;
      result = sub_2516D8DEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251699CD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_251698EEC(void *a1)
{
  v2 = [a1 body];
  sub_251703414();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F58, &unk_251708400);
  if (swift_dynamicCast())
  {
    v3 = v1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v4 = sub_251702F84();
    __swift_project_value_buffer(v4, static Logger.testVerification);

    v5 = sub_251702F64();
    v6 = sub_251703314();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136315138;
      v9 = sub_251703114();
      v11 = sub_251693FCC(v9, v10, v19);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25167E000, v5, v6, "WebReport: message from webpage: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2530803C0](v8, -1, -1);
      MEMORY[0x2530803C0](v7, -1, -1);
    }

    if (*(v18 + 16) && (v12 = sub_2516CE534(0x5364694472657375, 0xED000074696D6275), (v13 & 1) != 0))
    {
      v14 = *(*(v18 + 56) + 8 * v12);
      swift_unknownObjectRetain();

      v19[0] = v14;
      if ((swift_dynamicCast() & 1) != 0 && v18 == 1)
      {
        v15 = [v3 navigationItem];
        v16 = [v15 rightBarButtonItem];

        if (v16)
        {
          [v16 setEnabled_];
        }

        v17 = [v3 navigationItem];
        [v17 setLeftBarButtonItem_];
      }
    }

    else
    {
    }
  }
}

unint64_t sub_2516991DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F48, &qword_2517083F0);
    v3 = sub_2517035C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_251699D18(v4, &v11, &qword_27F453F50, &qword_2517083F8);
      v5 = v11;
      result = sub_2516D8DEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251699CD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251699304()
{
  result = qword_27F453E30;
  if (!qword_27F453E30)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F453E30);
  }

  return result;
}

uint64_t sub_25169935C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_251702C54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251702DA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 targetFrame];
  if (v18)
  {

    v19 = *(a2 + 16);

    return v19(a2, 1);
  }

  else
  {
    v21 = [a1 request];
    sub_251702C14();

    sub_251702C34();
    (*(v9 + 8))(v12, v8);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {
      sub_25168B718(v7, &qword_27F453E10, &unk_251708160);
    }

    else
    {
      (*(v14 + 32))(v17, v7, v13);
      v22 = objc_opt_self();
      v23 = [v22 sharedApplication];
      v24 = sub_251702D74();
      v25 = [v23 canOpenURL_];

      if (v25)
      {
        v26 = [v22 sharedApplication];
        v27 = sub_251702D74();
        sub_2516991DC(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_251699304();
        v28 = sub_2517030F4();

        [v26 openURL:v27 options:v28 completionHandler:0];
      }

      (*(v14 + 8))(v17, v13);
    }

    return (*(a2 + 16))(a2, 0);
  }
}

unint64_t sub_251699708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F00, "̗");
    v3 = sub_2517035C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_251699D18(v4, &v13, &qword_27F453F08, &qword_2517083B0);
      v5 = v13;
      v6 = v14;
      result = sub_2516CE534(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251699CD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251699838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F20, &qword_2517083C8);
    v3 = sub_2517035C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2516CE534(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25169994C(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = [a1 response];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
LABEL_12:

    (*(a3 + 16))(a3, 0);
    sub_251697E9C();
    return;
  }

  v5 = v4;
  if ([v4 statusCode] != 200)
  {
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v6 = sub_251702F84();
    __swift_project_value_buffer(v6, static Logger.testVerification);
    v7 = v11;
    v8 = sub_251702F64();
    v9 = sub_251703314();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v5 statusCode];

      _os_log_impl(&dword_25167E000, v8, v9, "WebReport: bad response code: %ld", v10, 0xCu);
      MEMORY[0x2530803C0](v10, -1, -1);
    }

    else
    {

      v8 = v7;
    }

    goto LABEL_12;
  }

  (*(a3 + 16))(a3, 1);
}

void sub_251699B2C(void *a1)
{
  if (qword_27F453888 != -1)
  {
    swift_once();
  }

  v2 = sub_251702F84();
  __swift_project_value_buffer(v2, static Logger.testVerification);
  v3 = a1;
  v4 = sub_251702F64();
  v5 = sub_251703314();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
    v9 = sub_251703194();
    v11 = sub_251693FCC(v9, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25167E000, v4, v5, "WebReport: failed to load webpage with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2530803C0](v7, -1, -1);
    MEMORY[0x2530803C0](v6, -1, -1);
  }

  sub_251697E9C();
}

_OWORD *sub_251699CD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251699D18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_251699D9C(char a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton] = 0;
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton] = 0;
  *&v5[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel] = 0;
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v24.receiver = v5;
  v24.super_class = type metadata accessor for AuthorizationFooterView();
  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a2, a3, a4, a5);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = &selRef_boldButton;
  v16 = [v13 boldButton];
  v17 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton] = v16;

  if (a1)
  {
    v18 = objc_opt_self();
    v15 = &selRef_linkButton;
  }

  else
  {
    v18 = v13;
  }

  v19 = [v18 *v15];
  v20 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton] = v19;

  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v22 = *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel];
  *&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel] = v21;

  sub_25169A1F8();
  return v14;
}

id sub_251699F48(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton] = 0;
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton] = 0;
  *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel] = 0;
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AuthorizationFooterView();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = qword_27F453878;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_251702F84();
  __swift_project_value_buffer(v13, static Logger.general);
  v14 = sub_251702F64();
  v15 = sub_251703314();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25167E000, v14, v15, "Not supported", v16, 2u);
    MEMORY[0x2530803C0](v16, -1, -1);
  }

  return v12;
}

id sub_25169A104(void *a1)
{
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton] = 0;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton] = 0;
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel] = 0;
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AuthorizationFooterView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_25169A1F8();
  }

  return v5;
}

void sub_25169A1F8()
{
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView];
  [v1 setHidden_];
  v72 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel];
  v77 = v1;
  v78 = v2;
  v70 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton;
  v71 = OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton;
  v3 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  v79 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  v80 = v3;
  v4 = v1;
  v5 = v2;
  v6 = v79;
  v7 = v3;
  if (v1)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  if (v2)
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  if (v79)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  if (v3)
  {
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453FA8, &qword_251708478);
  swift_arrayDestroy();
  [v0 addSubview_];
  v8 = [objc_opt_self() effectWithStyle_];
  [v4 setEffect_];

  v9 = [v4 leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  [v11 setActive_];
  v12 = [v4 trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  [v14 setActive_];
  v15 = [v4 topAnchor];
  v16 = [v0 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  [v17 setActive_];
  v18 = [v4 bottomAnchor];
  v19 = [v0 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  [v20 setActive_];
  if (!*&v0[v72])
  {
    __break(1u);
    goto LABEL_31;
  }

  [v0 addSubview_];
  v21 = *&v0[v72];
  if (!v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = *&v0[v72];
  if (!v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v22 setNumberOfLines_];
  v23 = *&v0[v72];
  if (!v23)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v23 setTextAlignment_];
  v24 = *&v0[v72];
  if (!v24)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = *MEMORY[0x277D76968];
  v26 = *MEMORY[0x277D74418];
  v27 = v24;
  v28 = sub_2516C19DC(v25, v26, 0, 0, 0, 0);
  [v27 setFont_];

  v29 = *&v0[v72];
  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 secondaryLabelColor];
  [v31 setTextColor_];

  v33 = *&v0[v70];
  if (!v33)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v33 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  if (!*&v0[v70])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v0 addSubview_];
  v34 = *&v0[v71];
  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v34 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  if (!*&v0[v71])
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v0 addSubview_];
  v35 = *&v0[v70];
  v74 = *&v0[v72];
  v75 = v35;
  v76 = *&v0[v71];
  v36 = v76;
  v37 = v74;
  v38 = v35;
  for (i = 32; i != 56; i += 8)
  {
    v40 = *&v73[i];
    if (v40)
    {
      v41 = v40;
      v42 = [v41 leadingAnchor];
      v43 = [v0 layoutMarginsGuide];
      v44 = [v43 leadingAnchor];

      v45 = [v42 constraintEqualToAnchor_];
      [v45 setActive_];

      v46 = [v41 trailingAnchor];
      v47 = [v0 layoutMarginsGuide];
      v48 = [v47 trailingAnchor];

      v49 = [v46 constraintEqualToAnchor_];
      [v49 setActive_];
    }
  }

  swift_arrayDestroy();
  v50 = *&v0[v72];
  if (!v50)
  {
    goto LABEL_40;
  }

  v51 = [v50 topAnchor];
  v52 = [v0 layoutMarginsGuide];
  v53 = [v52 topAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  [v54 setActive_];

  v55 = *&v0[v72];
  if (!v55)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v56 = [v55 bottomAnchor];
  v57 = *&v0[v70];
  if (!v57)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v58 = [v57 topAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:-16.0];

  [v59 setActive_];
  v60 = *&v0[v70];
  if (!v60)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v61 = [v60 bottomAnchor];
  v62 = *&v0[v71];
  if (!v62)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v63 = [v62 topAnchor];
  v64 = [v61 constraintEqualToAnchor:v63 constant:-8.0];

  [v64 setActive_];
  v65 = *&v0[v71];
  if (v65)
  {
    v66 = [v65 bottomAnchor];
    v67 = [v0 layoutMarginsGuide];
    v68 = [v67 bottomAnchor];

    v69 = [v66 constraintEqualToAnchor_];
    [v69 setActive_];

    return;
  }

LABEL_45:
  __break(1u);
}

id sub_25169AC08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25169AD04()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_25169AD9C()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_25169ADFC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_25169ADFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  LODWORD(v2) = 0.5;
  [v0 _setHyphenationFactor_];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v3 = sub_251703134();

  [v0 setText_];

  return v0;
}

char *sub_25169AF6C()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_healthAgencyModel);
    v5 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v6 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_selfReportIntroductoryText);
    v7 = *v6;
    v8 = v6[1];
    objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v9 = v5;

    v10 = v0;
    v11 = sub_2516DD44C(v9, 20.0, 20.0, 20.0, 20.0);
    v12 = *(v0 + v1);
    *(v10 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_25169B048()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView;
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView);
  }

  else
  {
    v4 = sub_25169B0AC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_25169B0AC()
{
  v0 = objc_allocWithZone(type metadata accessor for AuthorizationFooterView());
  v1 = sub_251699D9C(1, 0.0, 0.0, 0.0, 0.0);
  [v1 setLayoutMargins_];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  result = sub_251702C94();
  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_251703134();

  [v4 setTitle:v5 forState:{0, 0xE000000000000000}];

  result = sub_251702C94();
  v6 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_secondaryButton];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_251703134();

  [v7 setTitle:v8 forState:{0, 0xE000000000000000}];

  result = sub_251702C94();
  v9 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_footerLabel];
  if (v9)
  {
    v10 = v9;
    v11 = sub_251703134();

    [v10 setText_];

    *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate + 8] = &off_2863939A8;
    swift_unknownObjectWeakAssign();
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_25169B3FC(void *a1, double a2)
{
  v6 = a1;
  v3 = [v6 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setAlpha_];
  }
}

void sub_25169B548()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for SelfReportVerificationWelcomeViewController();
  objc_msgSendSuper2(&v38, sel_viewDidLayoutSubviews);
  v1 = sub_25169AD04();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v39.origin.x = v5;
    v39.origin.y = v7;
    v39.size.width = v9;
    v39.size.height = v11;
    Width = CGRectGetWidth(v39);
    v13 = sub_25169AF6C();
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    [v1 setContentSize_];

    v22 = sub_25169B048();
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v41.origin.x = v24;
    v41.origin.y = v26;
    v41.size.width = v28;
    v41.size.height = v30;
    Height = CGRectGetHeight(v41);
    v32 = [v0 view];
    if (v32)
    {
      v33 = v32;
      [v32 safeAreaInsets];
      v35 = v34;

      v36 = Height - v35;
      v37 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView;
      [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView] setContentInset_];
      [*&v0[v37] setScrollIndicatorInsets_];
      sub_25169B730();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25169B730()
{
  v1 = sub_25169AD04();
  [v1 layoutIfNeeded];

  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView;
  [*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView) contentOffset];
  v4 = v3;
  [*(v0 + v2) frame];
  v5 = v4 + CGRectGetHeight(v13);
  [*(v0 + v2) contentInset];
  v7 = v5 - v6;
  [*(v0 + v2) contentSize];
  v9 = v8 <= v7;
  v10 = sub_25169B048();
  v11 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_visualEffectView];

  [v11 setHidden_];
}

void sub_25169B868()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = sub_25169AD04();
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView;
  [v5 addSubview_];

  v8 = [*&v0[v7] leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  [v12 setActive_];

  v13 = [*&v0[v7] trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  [v17 setActive_];

  v18 = [*&v0[v7] topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor_];

  [v23 setActive_];
  v24 = [*&v0[v7] bottomAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 bottomAnchor];
  v29 = [v24 constraintEqualToAnchor_];

  [v29 setActive_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251707F60;
  *(inited + 32) = sub_25169AD9C();
  *(inited + 40) = sub_25169AF6C();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x25307F910](0, inited))
  {
    v32 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v0[v7] addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v33 = &off_2796C3000;
      v34 = *(inited + 40);
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v33 = &off_2796C3000;
  v34 = MEMORY[0x25307F910](1, inited);
LABEL_13:
  v35 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v7] addSubview_];

  swift_setDeallocating();
  v36 = *(inited + 16);
  swift_arrayDestroy();
  v37 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel;
  v38 = [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel] leadingAnchor];
  v39 = [v0 view];
  if (!v39)
  {
    goto LABEL_32;
  }

  v40 = v39;
  v41 = [v39 layoutMarginsGuide];

  v42 = [v41 leadingAnchor];
  v43 = [v38 constraintEqualToAnchor_];

  [v43 setActive_];
  v44 = [*&v0[v37] v33[185]];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = v45;
  v47 = [v45 layoutMarginsGuide];

  v48 = [v47 v33[185]];
  v49 = [v44 constraintEqualToAnchor_];

  [v49 setActive_];
  v50 = [*&v0[v37] topAnchor];
  v51 = [*&v0[v7] topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_titleLabelTopOffset]];

  [v52 setActive_];
  v53 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView;
  v54 = [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___authorityTextView] leadingAnchor];
  v55 = [v0 view];
  if (!v55)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v56 = v55;
  v57 = [v55 layoutMarginsGuide];

  v58 = [v57 leadingAnchor];
  v59 = [v54 constraintEqualToAnchor_];

  [v59 setActive_];
  v60 = [*&v0[v53] v33[185]];
  v61 = [v0 view];
  if (!v61)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v62 = v61;
  v63 = [v61 layoutMarginsGuide];

  v64 = [v63 v33[185]];
  v65 = [v60 constraintEqualToAnchor_];

  [v65 setActive_];
  v66 = [*&v0[v53] topAnchor];
  v67 = [*&v0[v37] bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:20.0];

  [v68 setActive_];
  v69 = sub_25169B048();
  [v69 setTranslatesAutoresizingMaskIntoConstraints_];

  v70 = [v0 view];
  if (!v70)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v71 = v70;
  v72 = OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___footerView;
  [v70 addSubview_];

  v73 = [*&v0[v72] leadingAnchor];
  v74 = [v0 view];
  if (!v74)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v75 = v74;
  v76 = [v74 leadingAnchor];

  v77 = [v73 constraintEqualToAnchor_];
  [v77 setActive_];

  v78 = [*&v0[v72] v33[185]];
  v79 = [v0 view];
  if (!v79)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v80 = v79;
  v81 = [v79 v33[185]];

  v82 = [v78 constraintEqualToAnchor_];
  [v82 setActive_];

  v83 = [*&v0[v72] bottomAnchor];
  v84 = [v0 view];
  if (!v84)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v85 = v84;
  v86 = [v84 bottomAnchor];

  v87 = [v83 constraintEqualToAnchor_];
  [v87 setActive_];

  v88 = [v0 view];
  if (v88)
  {
    v89 = v88;
    [v88 layoutMarginsDidChange];

    return;
  }

LABEL_40:
  __break(1u);
}

id sub_25169C314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfReportVerificationWelcomeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25169C3F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36[-v8];
  v10 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_flow];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v10 + v11, v9, &qword_27F454000, &unk_251708500);
  v12 = sub_251702E64();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_25168B718(v9, &qword_27F454000, &unk_251708500);
  if (v11 != 1)
  {
    v18 = sub_25169B048();
    v19 = *&v18[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
    v20 = v19;

    if (v19)
    {
      [v20 setUserInteractionEnabled_];

      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      sub_25169D7BC();
      v22 = v1;
      v23 = sub_251703364();
      sub_2516AAE70(sub_25169D7B4, v21);

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if ((*(v10 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) & 1) == 0 && ![*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_healthAgencyModel] supportsFeatures_])
  {
    v29 = sub_2516A3614(v10);
    if (v29)
    {
      v30 = v29;
      v31 = [v1 navigationController];
      if (!v31)
      {
LABEL_14:

        return;
      }

LABEL_13:
      v32 = v31;
      [v31 pushViewController:v30 animated:1];

      goto LABEL_14;
    }

LABEL_18:
    swift_beginAccess();
    v34 = *(v10 + 16);
    v35 = *(v10 + 24);

    v34(1);

    return;
  }

  if (v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_regionSupportsSelfReportV1] != 1)
  {
    if (v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_regionSupportsWebReport] == 1)
    {
      v24 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_healthAgencyModel];
      v25 = objc_allocWithZone(type metadata accessor for WebReportViewController());
      v26 = v24;
      v27 = WebReportViewController.init(agencyModel:)(v24);
      v28 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v28 setModalPresentationStyle_];
      [v1 presentViewController:v28 animated:1 completion:0];

      return;
    }

    v33 = sub_2516A3614(v10);
    if (v33)
    {
      v30 = v33;
      v31 = [v1 navigationController];
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_18;
  }

  sub_251699D18(*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v5, &qword_27F453E10, &unk_251708160);
  v13 = sub_251702DA4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) != 1)
  {
    v15 = objc_allocWithZone(MEMORY[0x277CDB700]);
    v16 = sub_251702D74();
    v17 = [v15 initWithURL_];

    (*(v14 + 8))(v5, v13);
    [v17 setModalPresentationStyle_];
    [v1 presentViewController:v17 animated:1 completion:0];

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_25169C8CC(void *a1, char *a2)
{
  v4 = sub_25169B048();
  v5 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_primaryButton];
  v6 = v5;

  if (v5)
  {
    [v6 setUserInteractionEnabled_];

    if (a1)
    {
      v7 = a1;
      if (qword_27F453888 != -1)
      {
        swift_once();
      }

      v8 = sub_251702F84();
      __swift_project_value_buffer(v8, static Logger.testVerification);
      v9 = a1;
      v10 = sub_251702F64();
      v11 = sub_251703324();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v25 = v13;
        *v12 = 136315138;
        v14 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
        v15 = sub_251703194();
        v17 = sub_251693FCC(v15, v16, &v25);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_25167E000, v10, v11, "Failed to receive test metadata %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x2530803C0](v13, -1, -1);
        MEMORY[0x2530803C0](v12, -1, -1);

        return;
      }

      v21 = a1;

      goto LABEL_10;
    }

    v18 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_flow];
    v19 = sub_2516A3614(v18);
    if (v19)
    {
      v24 = v19;
      v20 = [a2 navigationController];
      [v20 pushViewController:v24 animated:1];

      v21 = v24;

LABEL_10:

      return;
    }

    swift_beginAccess();
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);

    v23(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_25169CBA8(char a1)
{
  v3 = sub_25169AD04();
  [v3 layoutIfNeeded];

  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___contentView] contentOffset];
  v5 = v4;
  v6 = [v1 navigationController];
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = [v6 navigationBar];
    v10 = [v9 isHidden];

    if (v10)
    {
    }

    else
    {
      v11 = [v8 navigationBar];
      [v11 bounds];
      v7 = v12;
    }
  }

  v13 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController_titleLabelTopOffset];
  v14 = v13 - v7;
  if (v13 - v7 >= v5)
  {
    if (a1)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v16 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_25169E178;
      *(v23 + 24) = v22;
      v40 = sub_25169E198;
      v41 = v23;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_251693A80;
      v39 = &block_descriptor_54;
      v18 = _Block_copy(&v36);
      v24 = v1;

      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      v40 = sub_25169E1C0;
      v41 = v25;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v21 = &block_descriptor_60;
      goto LABEL_10;
    }

    v30 = [v1 navigationController];
    if (v30)
    {
      v31 = v30;
      v29 = [v30 navigationBar];

      [v29 setAlpha_];
      goto LABEL_15;
    }
  }

  else
  {
    if (a1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      v16 = objc_opt_self();
      v17 = swift_allocObject();
      *(v17 + 16) = sub_25169E1C4;
      *(v17 + 24) = v15;
      v40 = sub_25169E8D0;
      v41 = v17;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_251693A80;
      v39 = &block_descriptor_70;
      v18 = _Block_copy(&v36);
      v19 = v1;

      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v40 = sub_25169E8F8;
      v41 = v20;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v21 = &block_descriptor_77;
LABEL_10:
      v38 = sub_25169D200;
      v39 = v21;
      v26 = _Block_copy(&v36);

      [v16 animateWithDuration:4 delay:v18 options:v26 animations:0.25 completion:{0.0, v36, v37}];
      _Block_release(v26);
      _Block_release(v18);

      goto LABEL_16;
    }

    v27 = [v1 navigationController];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 navigationBar];

      [v29 setAlpha_];
LABEL_15:
    }
  }

LABEL_16:
  v32 = sub_25169AD9C();
  [v32 bounds];
  v34 = v33;

  if (v13 + v34 - v7 >= v5)
  {
    [v1 setTitle_];
  }

  else
  {
    v35 = [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController____lazy_storage___titleLabel] text];
    [v1 setTitle_];
  }
}

void sub_25169D15C(void *a1, double a2)
{
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setAlpha_];
  }
}

uint64_t sub_25169D200(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_25169D25C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(a2 + v8, v7, &qword_27F454000, &unk_251708500);
  v9 = sub_251702E64();
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_25168B718(v7, &qword_27F454000, &unk_251708500);
  if (v10 == 1)
  {
    swift_beginAccess();
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);

    v12(0);
  }

  else
  {
    v30 = a1;
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    sub_251702C94();
    v13 = sub_251702C94();
    v29[0] = v14;
    v29[1] = v13;
    sub_251702C94();
    v15 = sub_251703134();

    v16 = sub_251703134();

    v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:0];

    v18 = swift_allocObject();
    v19 = v30;
    *(v18 + 16) = v30;
    *(v18 + 24) = a2;
    v30 = v19;

    v20 = sub_251703134();

    v35 = sub_25169D78C;
    v36 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_25169F470;
    v34 = &block_descriptor_1;
    v21 = _Block_copy(&aBlock);

    v22 = objc_opt_self();
    v23 = [v22 actionWithTitle:v20 style:2 handler:v21];
    _Block_release(v21);

    [v17 addAction_];
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    v25 = v17;
    v26 = sub_251703134();

    v35 = sub_25169D7AC;
    v36 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_25169F470;
    v34 = &block_descriptor_14;
    v27 = _Block_copy(&aBlock);

    v28 = [v22 actionWithTitle:v26 style:1 handler:v27];
    _Block_release(v27);

    [v25 addAction_];
    [v30 presentViewController:v25 animated:1 completion:0];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25169D7BC()
{
  result = qword_28151E930;
  if (!qword_28151E930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28151E930);
  }

  return result;
}

void sub_25169D808(void *a1, uint64_t a2)
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  sub_251702C94();
  sub_251702C94();
  v2 = sub_251703134();

  v3 = sub_251703134();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:{0, 0xE000000000000000}];

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v17 = a1;

  v6 = sub_251703134();

  v22 = sub_25169E8FC;
  v23 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_25169F470;
  v21 = &block_descriptor_38;
  v7 = _Block_copy(&aBlock);

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v6 style:2 handler:v7];
  _Block_release(v7);

  [v4 addAction_];
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v11 = v4;
  v12 = sub_251703134();

  v22 = sub_25169E900;
  v23 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_25169F470;
  v21 = &block_descriptor_45;
  v13 = _Block_copy(&aBlock);

  v14 = [v8 actionWithTitle:v12 style:1 handler:v13];
  _Block_release(v13);

  [v11 addAction_];
  [v17 presentViewController:v11 animated:1 completion:0];
}