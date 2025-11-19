id getMediaServiceConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280E03DF8;
  v7 = qword_280E03DF8;
  if (!qword_280E03DF8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMediaServiceConfigurationClass_block_invoke;
    v3[3] = &unk_277DFDC48;
    v3[4] = &v4;
    __getMediaServiceConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_20D9C27B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_20D9C27F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_20DD64EB4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_20D9C2834@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20D9C284C()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C2884()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C28D0()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C2908()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C2950()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C2998()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_20D9C29D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20D9C29F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C2A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20D9C2A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CharacteristicNotificationManager.disableReasons.setter(v4);
}

uint64_t sub_20D9C2AB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C2AF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C2B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D9C2BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  return sub_20D9D7558(v3 + v4, a2, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9C2C78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20DD64294();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_20D9C2D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20DD64294();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D9C2DC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20D9C2E00()
{
  v1 = [*v0 home];

  return v1;
}

uint64_t sub_20D9C2E38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20D9C2F74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C2FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_20D9C3008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_20D9C3058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_20D9C30A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C3100()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C314C()
{
  _Block_release(*(v0 + 56));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20D9C31A4()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C31F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C3240()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3278()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C32C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C3300()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C3378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DD649D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D9C3474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20DD649D4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D9C357C()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C35B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D9C3660()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D9C37CC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C380C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3844()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C3894()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C38CC()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C3914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20D9C3974()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C39AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3A24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3A60()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844820, &unk_20DD95D50);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_20D9C3A90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C3AD0()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3B08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C3B50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C3B98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C3BD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_20DA65904();
}

uint64_t sub_20D9C3C14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20DA62670(v4);
}

uint64_t sub_20D9C3C58()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3C90()
{
  v1 = sub_20DD64354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20D9C3D2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3D74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C3DAC()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3DF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3E44()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3E94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C3ED4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_20DA87014(a1, a2);
}

uint64_t sub_20D9C3F2C()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C3F64()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C4034@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20D9C408C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_20DA8FD3C();
}

uint64_t sub_20D9C40E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
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

uint64_t sub_20D9C415C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20D9C41E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C4228()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C4274()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C42B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D9C4384()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C43DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_20D9C4438()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C4470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_20DA97288();
}

uint64_t sub_20D9C44AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20DA959B4(v4);
}

uint64_t sub_20D9C44F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20D9C4538()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C4578()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C45BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C4604()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v2 = sub_20DD650C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_20D9C46C0()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C4700()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C4754()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D9C4820()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C4858()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C4898()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D9C48E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D9C4920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20D9C4978(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_20DAA2FD4();
}

id sub_20D9C49D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20D9C4A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_20DAA36DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20D9C4A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_20DAA3D58();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20D9C4AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_20DAA4D14();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20D9C4B50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20D9C4BB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_20DAA59DC();
}

uint64_t sub_20D9C4C08()
{
  _Block_release(*(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20D9C4C88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D9C4CC8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C4D08()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D9C4D48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C4D80()
{
  MEMORY[0x20F327E10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20D9C51D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_20D9C524C()
{
  v2.receiver = v0;
  v2.super_class = _s21HomeFrameworkObserverCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9C55F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  v6 = sub_20DD64C44();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_20DD639D4();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9C5718, 0, 0);
}

uint64_t sub_20D9C5718()
{
  v1 = *(v0 + 72);
  if (v1 == 1)
  {
    v12 = *(v0 + 80);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = *(v0 + 120);
      v14 = *(v0 + 128);
      v16 = *(v0 + 112);
      *(v0 + 152) = *(Strong + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
      v17 = Strong;

      (*(v15 + 104))(v14, *MEMORY[0x277D15398], v16);
      sub_20DD63BB4();
      *(v0 + 160) = sub_20DD63BA4();
      sub_20D9C6D80(&unk_27C842970, MEMORY[0x277D153C8]);
      v8 = sub_20DD65094();
      v10 = v18;
      v11 = sub_20D9C5B70;
      goto LABEL_7;
    }
  }

  else
  {
    if (v1)
    {
      v19 = *(v0 + 104);
      sub_20DD63B44();
      sub_20DD63B14();
      v20 = sub_20DD64C24();
      v21 = sub_20DD65374();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 72);
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v22;
        _os_log_impl(&dword_20D9BF000, v20, v21, "Received unknown running state from HFExecutionEnvironment: %lu", v23, 0xCu);
        MEMORY[0x20F327D10](v23, -1, -1);
      }

      v25 = *(v0 + 96);
      v24 = *(v0 + 104);
      v26 = *(v0 + 88);

      (*(v25 + 8))(v24, v26);
      v27 = 0;
      goto LABEL_14;
    }

    v2 = *(v0 + 80);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v5 = *(v0 + 120);
      v4 = *(v0 + 128);
      v6 = *(v0 + 112);
      *(v0 + 136) = *(v3 + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
      v7 = v3;

      (*(v5 + 104))(v4, *MEMORY[0x277D15398], v6);
      sub_20DD63BB4();
      *(v0 + 144) = sub_20DD63BA4();
      sub_20D9C6D80(&unk_27C842970, MEMORY[0x277D153C8]);
      v8 = sub_20DD65094();
      v10 = v9;
      v11 = sub_20D9C5A5C;
LABEL_7:

      return MEMORY[0x2822009F8](v11, v8, v10);
    }
  }

  v27 = 1;
LABEL_14:
  v28 = *(v0 + 128);
  v29 = *(v0 + 104);
  **(v0 + 64) = v27;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20D9C5A5C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  sub_20DD63AF4();

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_20D9C5AFC, 0, 0);
}

uint64_t sub_20D9C5AFC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  **(v0 + 64) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20D9C5B70()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  sub_20DD63B24();

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_20D9C7DA4, 0, 0);
}

uint64_t sub_20D9C5FAC(int a1, void *a2)
{
  v28 = a1;
  v4 = sub_20DD63744();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20DD63E44();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DD64464();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 supportsCHIP])
  {
    v17 = MEMORY[0x277D16638];
  }

  else
  {
    v18 = *MEMORY[0x277D165E8];
    v19 = sub_20DD64454();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17 = MEMORY[0x277D16610];
  }

  v20 = *(v13 + 104);
  v20(v16, *v17, v12);
  v21 = *(v2 + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
  sub_20DD63AE4();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C842960, &qword_20DD93818) + 48);
  v23 = [a2 uniqueIdentifier];
  sub_20DD63714();

  (*(v26 + 32))(v11, v7, v27);
  if (v28)
  {
    (*(v13 + 16))(&v11[v22], v16, v12);
  }

  else
  {
    v20(&v11[v22], *MEMORY[0x277D16600], v12);
  }

  v24 = v29;
  (*(v8 + 104))(v11, *MEMORY[0x277D159E0], v29);
  sub_20DD63AD4();

  (*(v8 + 8))(v11, v24);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_20D9C6424(uint64_t a1, int a2)
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

uint64_t sub_20D9C6444(uint64_t result, int a2, int a3)
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

uint64_t sub_20D9C64BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DD63E44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20DD643E4();
  v60 = *(v63 - 8);
  v9 = *(v60 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v62 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = v51 - v12;
  v53 = v5;
  v54 = v4;
  v51[1] = a2;
  v52 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9C7830();
    sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830);
    sub_20DD65284();
    a1 = v66;
    v13 = v67;
    v14 = v68;
    v15 = v69;
    v16 = v70;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v15 = 0;
  }

  v51[0] = v14;
  v20 = (v14 + 64) >> 6;
  v58 = *MEMORY[0x277D165B8];
  v57 = (v60 + 104);
  v61 = (v60 + 32);
  v55 = v60 + 40;
  v21 = MEMORY[0x277D84F98];
  v56 = v20;
  while (a1 < 0)
  {
    v27 = sub_20DD655F4();
    if (!v27 || (v64 = v27, sub_20D9C7830(), swift_dynamicCast(), v26 = v65, v24 = v15, v25 = v16, !v65))
    {
LABEL_29:
      sub_20D9C51CC();
      sub_20DD63AE4();
      v45 = v52;
      *v52 = v21;
      v46 = *MEMORY[0x277D159F8];
      v47 = sub_20DD63E64();
      (*(*(v47 - 8) + 104))(v45, v46, v47);
      v49 = v53;
      v48 = v54;
      (*(v53 + 104))(v45, *MEMORY[0x277D159F0], v54);
      sub_20DD63AD4();

      return (*(v49 + 8))(v45, v48);
    }

LABEL_19:
    v28 = v13;
    v29 = a1;
    v30 = v59;
    v31 = v63;
    (*v57)(v59, v58, v63);
    v32 = *v61;
    (*v61)(v62, v30, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v21;
    v34 = sub_20D9CB120(v26);
    v36 = v21[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_31;
    }

    v40 = v35;
    if (v21[3] < v39)
    {
      sub_20D9CBFA8(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_20D9CB120(v26);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      v21 = v65;
      if (v40)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v44 = v34;
    sub_20D9D2180();
    v34 = v44;
    v21 = v65;
    if (v40)
    {
LABEL_8:
      (*(v60 + 40))(v21[7] + *(v60 + 72) * v34, v62, v63);

      goto LABEL_9;
    }

LABEL_25:
    v21[(v34 >> 6) + 8] |= 1 << v34;
    *(v21[6] + 8 * v34) = v26;
    v32((v21[7] + *(v60 + 72) * v34), v62, v63);
    v42 = v21[2];
    v38 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v38)
    {
      goto LABEL_32;
    }

    v21[2] = v43;
LABEL_9:
    v15 = v24;
    v16 = v25;
    a1 = v29;
    v13 = v28;
    v20 = v56;
  }

  v22 = v15;
  v23 = v16;
  v24 = v15;
  if (v16)
  {
LABEL_15:
    v25 = (v23 - 1) & v23;
    v26 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      goto LABEL_29;
    }

    v23 = *(v13 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_20D9C7830();
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20D9C6A3C(uint64_t a1, id *a2)
{
  result = sub_20DD64E94();
  *a2 = 0;
  return result;
}

uint64_t sub_20D9C6AB4(uint64_t a1, id *a2)
{
  v3 = sub_20DD64EA4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_20D9C6B34@<X0>(uint64_t *a1@<X8>)
{
  sub_20DD64EB4();
  v2 = sub_20DD64E74();

  *a1 = v2;
  return result;
}

uint64_t sub_20D9C6B78(uint64_t a1)
{
  v2 = sub_20D9C6D80(&qword_27C842870, type metadata accessor for HFCAPackageIconIdentifier);
  v3 = sub_20D9C6D80(&qword_27C842878, type metadata accessor for HFCAPackageIconIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20D9C6C34(uint64_t a1)
{
  v2 = sub_20D9C6D80(&qword_27C842890, type metadata accessor for HFItemResultKey);
  v3 = sub_20D9C6D80(&qword_27C842898, type metadata accessor for HFItemResultKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20D9C6D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D9C6E10(uint64_t a1)
{
  v2 = sub_20D9C6D80(&qword_27C842880, type metadata accessor for HFItemUpdateOption);
  v3 = sub_20D9C6D80(&qword_27C842888, type metadata accessor for HFItemUpdateOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20D9C6FEC(uint64_t a1)
{
  v2 = sub_20D9C6D80(&qword_27C842860, type metadata accessor for HFImageIconIdentifier);
  v3 = sub_20D9C6D80(&qword_27C842868, type metadata accessor for HFImageIconIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20D9C70A8(uint64_t a1)
{
  v2 = sub_20D9C6D80(&qword_27C842A00, type metadata accessor for URLResourceKey);
  v3 = sub_20D9C6D80(&qword_27C842A08, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20D9C7164@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20DD64E74();

  *a2 = v5;
  return result;
}

uint64_t sub_20D9C71AC(uint64_t a1)
{
  v2 = sub_20D9C6D80(&qword_27C842850, type metadata accessor for HFItemProviderInvalidationReason);
  v3 = sub_20D9C6D80(&qword_27C842858, type metadata accessor for HFItemProviderInvalidationReason);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20D9C7268()
{
  v1 = *v0;
  v2 = sub_20DD64EB4();
  v3 = MEMORY[0x20F325EB0](v2);

  return v3;
}

uint64_t sub_20D9C72A4()
{
  v1 = *v0;
  sub_20DD64EB4();
  sub_20DD64F24();
}

uint64_t sub_20D9C72F8()
{
  v1 = *v0;
  sub_20DD64EB4();
  sub_20DD65A64();
  sub_20DD64F24();
  v2 = sub_20DD65AA4();

  return v2;
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

uint64_t sub_20D9C75F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20D9C55F8(a1, v4, v5, v7, v6);
}

uint64_t sub_20D9C76B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20D9C77A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_20DD64EB4();
  v6 = v5;
  if (v4 == sub_20DD64EB4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20DD65974();
  }

  return v9 & 1;
}

unint64_t sub_20D9C7830()
{
  result = qword_280E02100;
  if (!qword_280E02100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E02100);
  }

  return result;
}

uint64_t sub_20D9C787C(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_20DD655B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  v7 = *(v1 + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
  sub_20DD63BB4();
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;

  sub_20DD63B94();

  return sub_20D9C7BC4(v5);
}

uint64_t sub_20D9C79E4(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v18 = sub_20DA54FA8(a1);

  sub_20DA12BD0(v8);
  v9 = v18;
  if (v18 >> 62)
  {
    v15 = v18;
    v16 = sub_20DD655B4();
    v9 = v15;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v10 = *(v2 + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
    v11 = sub_20D9F916C(v9);

    sub_20DD63BB4();
    v12 = sub_20DD65114();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;

    sub_20DD63B94();

    return sub_20D9C7BC4(v7);
  }
}

uint64_t sub_20D9C7BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_20D9C7C80(uint64_t a1, unint64_t *a2)
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

uint64_t sub_20D9C7DE4@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo25HFCAPackageIconIdentifiera4HomeE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t _sSo25HFCAPackageIconIdentifiera4HomeE8allCasesSayABGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843380, &qword_20DD93A28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD939D0;
  *(v0 + 32) = @"HFCAPackageIconIdentifierAirPurifier";
  *(v0 + 40) = @"HFCAPackageIconIdentifierHumidifier";
  *(v0 + 48) = @"HFCAPackageIconIdentifierDehumidifier";
  *(v0 + 56) = @"HFCAPackageIconIdentifierSpaceHeater";
  *(v0 + 64) = @"HFCAPackageIconIdentifierAirCooler";
  *(v0 + 72) = @"HFCAPackageIconIdentifierWindowCooler";
  *(v0 + 80) = @"HFCAPackageIconIdentifierSwitch";
  *(v0 + 88) = @"HFCAPackageIconIdentifierSwitch2";
  *(v0 + 96) = @"HFCAPackageIconIdentifierProgrammableSwitch";
  *(v0 + 104) = @"HFCAPackageIconIdentifierGarageDoor";
  *(v0 + 112) = @"HFCAPackageIconIdentifierGarageDoorDoubleBay";
  *(v0 + 120) = @"HFCAPackageIconIdentifierDoor";
  *(v0 + 128) = @"HFCAPackageIconIdentifierDoorLeftHand";
  *(v0 + 136) = @"HFCAPackageIconIdentifierSlidingDoor";
  *(v0 + 144) = @"HFCAPackageIconIdentifierSlidingDoorRightHand";
  *(v0 + 152) = @"HFCAPackageIconIdentifierGate";
  *(v0 + 160) = @"HFCAPackageIconIdentifierFrenchDoor";
  *(v0 + 168) = @"HFCAPackageIconIdentifierDeskFan";
  *(v0 + 176) = @"HFCAPackageIconIdentifierCeilingFan";
  *(v0 + 184) = @"HFCAPackageIconIdentifierCeilingFanWithLight";
  *(v0 + 192) = @"HFCAPackageIconIdentifierFloorFan";
  *(v0 + 200) = @"HFCAPackageIconIdentifierLightbulb";
  *(v0 + 208) = @"HFCAPackageIconIdentifierLightBulb2";
  *(v0 + 216) = @"HFCAPackageIconIdentifierLightbulbLED";
  *(v0 + 224) = @"HFCAPackageIconIdentifierLightbulbLEDWide";
  *(v0 + 232) = @"HFCAPackageIconIdentifierRecessedLight3";
  *(v0 + 240) = @"HFCAPackageIconIdentifierLightRibbon";
  *(v0 + 248) = @"HFCAPackageIconIdentifierDeskLamp";
  *(v0 + 256) = @"HFCAPackageIconIdentifierFloorLamp";
  *(v0 + 264) = @"HFCAPackageIconIdentifierCeilingLight";
  *(v0 + 272) = @"HFCAPackageIconIdentifierTableLight";
  *(v0 + 280) = @"HFCAPackageIconIdentifierRecessedLight";
  *(v0 + 288) = @"HFCAPackageIconIdentifierLightPanel";
  *(v0 + 296) = @"HFCAPackageIconIdentifierCylindricalLight";
  *(v0 + 304) = @"HFCAPackageIconIdentifierLightStrip";
  *(v0 + 312) = @"HFCAPackageIconIdentifierChandelier";
  *(v0 + 320) = @"HFCAPackageIconIdentifierTelevision";
  *(v0 + 328) = @"HFCAPackageIconIdentifierTelevisionSetTopBox";
  *(v0 + 336) = @"HFCAPackageIconIdentifierTelevisionStreamingStick";
  *(v0 + 344) = @"HFCAPackageIconIdentifierRemoteControl";
  *(v0 + 352) = @"HFCAPackageIconIdentifierReceiver";
  *(v0 + 360) = @"HFCAPackageIconIdentifierAirport";
  *(v0 + 368) = @"HFCAPackageIconIdentifierWiFiRouter";
  *(v0 + 376) = @"HFCAPackageIconIdentifierPowerStrip";
  *(v0 + 384) = @"HFCAPackageIconIdentifierOutletTypeA";
  *(v0 + 392) = @"HFCAPackageIconIdentifierOutletTypeB";
  *(v0 + 400) = @"HFCAPackageIconIdentifierOutletTypeC";
  *(v0 + 408) = @"HFCAPackageIconIdentifierOutletTypeG";
  *(v0 + 416) = @"HFCAPackageIconIdentifierOutletTypeI";
  *(v0 + 424) = @"HFCAPackageIconIdentifierOutletTypeK";
  *(v0 + 432) = @"HFCAPackageIconIdentifierOutletTypeN";
  *(v0 + 440) = @"HFCAPackageIconIdentifierIPCamera";
  *(v0 + 448) = @"HFCAPackageIconIdentifierDoorLock";
  *(v0 + 456) = @"HFCAPackageIconIdentifierPINEntryDoorLock";
  *(v0 + 464) = @"HFCAPackageIconIdentifierSecuritySystem";
  *(v0 + 472) = @"HFCAPackageIconIdentifierVideoDoorbell";
  *(v0 + 480) = @"HFCAPackageIconIdentifierContactSensor";
  *(v0 + 488) = @"HFCAPackageIconIdentifierTemperatureSensor";
  *(v0 + 496) = @"HFCAPackageIconIdentifierAirQualitySensor";
  *(v0 + 504) = @"HFCAPackageIconIdentifierHumiditySensor";
  *(v0 + 512) = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
  *(v0 + 520) = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
  *(v0 + 528) = @"HFCAPackageIconIdentifierMotionSensor";
  *(v0 + 536) = @"HFCAPackageIconIdentifierLeakSensor";
  *(v0 + 544) = @"HFCAPackageIconIdentifierSmokeSensor";
  *(v0 + 552) = @"HFCAPackageIconIdentifierLightSensor";
  *(v0 + 560) = @"HFCAPackageIconIdentifierOccupancySensor";
  *(v0 + 568) = @"HFCAPackageIconIdentifierGenericSensor";
  *(v0 + 576) = @"HFCAPackageIconIdentifierSprinkler";
  *(v0 + 584) = @"HFCAPackageIconIdentifierFaucet";
  *(v0 + 592) = @"HFCAPackageIconIdentifierIrrigationController";
  *(v0 + 600) = @"HFCAPackageIconIdentifierValveCeilingJet";
  *(v0 + 608) = @"HFCAPackageIconIdentifierValveSideJets";
  *(v0 + 616) = @"HFCAPackageIconIdentifierValveShowerHead";
  *(v0 + 624) = @"HFCAPackageIconIdentifierValveHandheldShowerHead";
  *(v0 + 632) = @"HFCAPackageIconIdentifierWindowVertical";
  *(v0 + 640) = @"HFCAPackageIconIdentifierWindowHorizontal";
  *(v0 + 648) = @"HFCAPackageIconIdentifierWindowCeiling";
  *(v0 + 656) = @"HFCAPackageIconIdentifierWindowCasement";
  *(v0 + 664) = @"HFCAPackageIconIdentifierWindowAwning";
  *(v0 + 672) = @"HFCAPackageIconIdentifierWindowCoveringGenericShade";
  *(v0 + 680) = @"HFCAPackageIconIdentifierWindowCoveringBlindsVertical";
  *(v0 + 688) = @"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal";
  *(v0 + 696) = @"HFCAPackageIconIdentifierWindowCoveringRollerShade";
  *(v0 + 704) = @"HFCAPackageIconIdentifierWindowCoveringRomanShade";
  *(v0 + 712) = @"HFCAPackageIconIdentifierWindowCoveringCurtains";
  *(v0 + 720) = @"HFCAPackageIconIdentifierWindowCoveringAwning";
  *(v0 + 728) = @"HFCAPackageIconIdentifierLockKeyholeLightModeMatteBlack";
  *(v0 + 736) = @"HFCAPackageIconIdentifierLockKeyholeDarkModeMatteBlack";
  *(v0 + 744) = @"HFCAPackageIconIdentifierLockKeypadLightModeMatteBlack";
  *(v0 + 752) = @"HFCAPackageIconIdentifierLockKeypadDarkModeMatteBlack";
  *(v0 + 760) = @"HFCAPackageIconIdentifierCameraMicrophoneVoiceWave";
  *(v0 + 768) = @"HFCAPackageIconIdentifierTileToggleLight";
  *(v0 + 776) = @"HFCAPackageIconIdentifierTileToggleDark";
  v1 = @"HFCAPackageIconIdentifierAirPurifier";
  v2 = @"HFCAPackageIconIdentifierHumidifier";
  v3 = @"HFCAPackageIconIdentifierDehumidifier";
  v4 = @"HFCAPackageIconIdentifierSpaceHeater";
  v5 = @"HFCAPackageIconIdentifierAirCooler";
  v6 = @"HFCAPackageIconIdentifierWindowCooler";
  v7 = @"HFCAPackageIconIdentifierSwitch";
  v8 = @"HFCAPackageIconIdentifierSwitch2";
  v9 = @"HFCAPackageIconIdentifierProgrammableSwitch";
  v10 = @"HFCAPackageIconIdentifierGarageDoor";
  v11 = @"HFCAPackageIconIdentifierGarageDoorDoubleBay";
  v12 = @"HFCAPackageIconIdentifierDoor";
  v13 = @"HFCAPackageIconIdentifierDoorLeftHand";
  v14 = @"HFCAPackageIconIdentifierSlidingDoor";
  v15 = @"HFCAPackageIconIdentifierSlidingDoorRightHand";
  v16 = @"HFCAPackageIconIdentifierGate";
  v17 = @"HFCAPackageIconIdentifierFrenchDoor";
  v18 = @"HFCAPackageIconIdentifierDeskFan";
  v19 = @"HFCAPackageIconIdentifierCeilingFan";
  v20 = @"HFCAPackageIconIdentifierCeilingFanWithLight";
  v21 = @"HFCAPackageIconIdentifierFloorFan";
  v22 = @"HFCAPackageIconIdentifierLightbulb";
  v23 = @"HFCAPackageIconIdentifierLightBulb2";
  v24 = @"HFCAPackageIconIdentifierLightbulbLED";
  v25 = @"HFCAPackageIconIdentifierLightbulbLEDWide";
  v26 = @"HFCAPackageIconIdentifierRecessedLight3";
  v27 = @"HFCAPackageIconIdentifierLightRibbon";
  v28 = @"HFCAPackageIconIdentifierDeskLamp";
  v29 = @"HFCAPackageIconIdentifierFloorLamp";
  v30 = @"HFCAPackageIconIdentifierCeilingLight";
  v31 = @"HFCAPackageIconIdentifierTableLight";
  v32 = @"HFCAPackageIconIdentifierRecessedLight";
  v33 = @"HFCAPackageIconIdentifierLightPanel";
  v34 = @"HFCAPackageIconIdentifierCylindricalLight";
  v35 = @"HFCAPackageIconIdentifierLightStrip";
  v36 = @"HFCAPackageIconIdentifierChandelier";
  v37 = @"HFCAPackageIconIdentifierTelevision";
  v38 = @"HFCAPackageIconIdentifierTelevisionSetTopBox";
  v39 = @"HFCAPackageIconIdentifierTelevisionStreamingStick";
  v40 = @"HFCAPackageIconIdentifierRemoteControl";
  v41 = @"HFCAPackageIconIdentifierReceiver";
  v42 = @"HFCAPackageIconIdentifierAirport";
  v43 = @"HFCAPackageIconIdentifierWiFiRouter";
  v44 = @"HFCAPackageIconIdentifierPowerStrip";
  v45 = @"HFCAPackageIconIdentifierOutletTypeA";
  v46 = @"HFCAPackageIconIdentifierOutletTypeB";
  v47 = @"HFCAPackageIconIdentifierOutletTypeC";
  v48 = @"HFCAPackageIconIdentifierOutletTypeG";
  v49 = @"HFCAPackageIconIdentifierOutletTypeI";
  v50 = @"HFCAPackageIconIdentifierOutletTypeK";
  v51 = @"HFCAPackageIconIdentifierOutletTypeN";
  v52 = @"HFCAPackageIconIdentifierIPCamera";
  v53 = @"HFCAPackageIconIdentifierDoorLock";
  v54 = @"HFCAPackageIconIdentifierPINEntryDoorLock";
  v55 = @"HFCAPackageIconIdentifierSecuritySystem";
  v56 = @"HFCAPackageIconIdentifierVideoDoorbell";
  v57 = @"HFCAPackageIconIdentifierContactSensor";
  v58 = @"HFCAPackageIconIdentifierTemperatureSensor";
  v59 = @"HFCAPackageIconIdentifierAirQualitySensor";
  v60 = @"HFCAPackageIconIdentifierHumiditySensor";
  v61 = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
  v62 = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
  v63 = @"HFCAPackageIconIdentifierMotionSensor";
  v64 = @"HFCAPackageIconIdentifierLeakSensor";
  v65 = @"HFCAPackageIconIdentifierSmokeSensor";
  v66 = @"HFCAPackageIconIdentifierLightSensor";
  v67 = @"HFCAPackageIconIdentifierOccupancySensor";
  v68 = @"HFCAPackageIconIdentifierGenericSensor";
  v69 = @"HFCAPackageIconIdentifierSprinkler";
  v70 = @"HFCAPackageIconIdentifierFaucet";
  v71 = @"HFCAPackageIconIdentifierIrrigationController";
  v72 = @"HFCAPackageIconIdentifierValveCeilingJet";
  v73 = @"HFCAPackageIconIdentifierValveSideJets";
  v74 = @"HFCAPackageIconIdentifierValveShowerHead";
  v75 = @"HFCAPackageIconIdentifierValveHandheldShowerHead";
  v76 = @"HFCAPackageIconIdentifierWindowVertical";
  v77 = @"HFCAPackageIconIdentifierWindowHorizontal";
  v78 = @"HFCAPackageIconIdentifierWindowCeiling";
  v79 = @"HFCAPackageIconIdentifierWindowCasement";
  v80 = @"HFCAPackageIconIdentifierWindowAwning";
  v81 = @"HFCAPackageIconIdentifierWindowCoveringGenericShade";
  v82 = @"HFCAPackageIconIdentifierWindowCoveringBlindsVertical";
  v83 = @"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal";
  v84 = @"HFCAPackageIconIdentifierWindowCoveringRollerShade";
  v85 = @"HFCAPackageIconIdentifierWindowCoveringRomanShade";
  v86 = @"HFCAPackageIconIdentifierWindowCoveringCurtains";
  v87 = @"HFCAPackageIconIdentifierWindowCoveringAwning";
  v88 = @"HFCAPackageIconIdentifierLockKeyholeLightModeMatteBlack";
  v89 = @"HFCAPackageIconIdentifierLockKeyholeDarkModeMatteBlack";
  v90 = @"HFCAPackageIconIdentifierLockKeypadLightModeMatteBlack";
  v91 = @"HFCAPackageIconIdentifierLockKeypadDarkModeMatteBlack";
  v92 = @"HFCAPackageIconIdentifierCameraMicrophoneVoiceWave";
  v93 = @"HFCAPackageIconIdentifierTileToggleLight";
  v94 = @"HFCAPackageIconIdentifierTileToggleDark";
  return v0;
}

unint64_t sub_20D9C8808()
{
  result = qword_27C843370;
  if (!qword_27C843370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C843378, &qword_20DD939E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843370);
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

uint64_t sub_20D9C88B4()
{
  sub_20D9C8A28();
  v0 = sub_20DD654C4();
  v2 = v1;
  v3 = sub_20DD654C4();
  v5 = v4;
  v6 = sub_20DA48C3C(v0, v2, v3, v4);
  if (v6 == 2)
  {
    v6 = sub_20DA06210(v0, v2, v3, v5);
    if (v6 == 2)
    {
      v6 = sub_20D9C8C08();
    }
  }

  v7 = v6;

  return v7;
}

unint64_t sub_20D9C8A28()
{
  result = qword_27C843388;
  if (!qword_27C843388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843388);
  }

  return result;
}

id RoomDashboardReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_20DD64E74();

  v5 = [v3 initWithApplicationDataContainer:a1 category:v4];
  swift_unknownObjectRelease();

  return v5;
}

id RoomDashboardReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = sub_20DD64E74();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for RoomDashboardReorderableItemList();
  v4 = objc_msgSendSuper2(&v6, sel_initWithApplicationDataContainer_category_, a1, v3);

  swift_unknownObjectRelease();
  return v4;
}

id RoomDashboardReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoomDashboardReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9C8C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  sub_20DD636D4();
  sub_20DD636D4();
  v13 = sub_20DD63744();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    goto LABEL_2;
  }

  sub_20D9C90A8(v12, v7);
  result = (v15)(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v19 = sub_20DD636F4();
  v17 = [objc_opt_self() accessoryTypeGroupWithIdentifier_];

  (*(v14 + 8))(v7, v13);
  if (!v17)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v20 = [v17 name];

  if (!v20)
  {
LABEL_2:
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = sub_20DD64EB4();
    v17 = v21;
  }

LABEL_8:
  if (v15(v10, 1, v13) == 1)
  {
    goto LABEL_9;
  }

  sub_20D9C90A8(v10, v4);
  result = (v15)(v4, 1, v13);
  if (result != 1)
  {
    v24 = sub_20DD636F4();
    v23 = [objc_opt_self() accessoryTypeGroupWithIdentifier_];

    (*(v14 + 8))(v4, v13);
    if (!v23)
    {
      v22 = 0;
      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v25 = [v23 name];

    if (v25)
    {
      v22 = sub_20DD64EB4();
      v23 = v26;

      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

LABEL_9:
    v22 = 0;
    v23 = 0;
    if (!v17)
    {
LABEL_22:
      if (v23)
      {

        v27 = 0;
      }

      else
      {
        v27 = 2;
      }

LABEL_26:
      sub_20D9C9040(v10);
      sub_20D9C9040(v12);
      return v27;
    }

LABEL_15:
    if (v23)
    {
      if (v16 == v22 && v17 == v23 || (sub_20DD65974() & 1) != 0)
      {

        v27 = 2;
      }

      else
      {
        v28 = sub_20DD65974();

        v27 = v28 & 1;
      }
    }

    else
    {

      v27 = 1;
    }

    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20D9C9040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D9C90A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_20D9C911C@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 latestResults];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_20DD64DC4();

  v6 = sub_20DD64EB4();
  if (!*(v5 + 16))
  {

    goto LABEL_8;
  }

  v8 = sub_20D9D41DC(v6, v7, sub_20D9CB940);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  sub_20D9D7174(*(v5 + 56) + 32 * v8, a1);

  return result;
}

uint64_t HFItem.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = [v2 latestResults];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_20DD64DC4();

  v8 = sub_20DD64EB4();
  if (!*(v7 + 16))
  {

    goto LABEL_6;
  }

  v10 = sub_20D9D41DC(v8, v9, sub_20D9CB940);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    memset(v15, 0, sizeof(v15));
    goto LABEL_8;
  }

  sub_20D9D7174(*(v7 + 56) + 32 * v10, v15);

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
  v13 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v13 ^ 1u, 1, a1);
}

id HFPrimaryState.init(item:)(void *a1)
{
  HFItem.result(for:)(v5, @"state");
  if (v5[3])
  {
    sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v2 = [v4 integerValue];

      return v2;
    }
  }

  else
  {

    sub_20D9D76EC(v5, &unk_27C843A80, &qword_20DD94100);
  }

  return 0;
}

uint64_t sub_20D9C9480()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C843390);
  __swift_project_value_buffer(v0, qword_27C843390);
  if (qword_27C842498 != -1)
  {
    swift_once();
  }

  v1 = qword_27C84C660;
  return sub_20DD64C54();
}

uint64_t static Logger.itemUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C842400 != -1)
  {
    swift_once();
  }

  v2 = sub_20DD64C44();
  v3 = __swift_project_value_buffer(v2, qword_27C843390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_20D9C95B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v22 - v6;
  if (a1)
  {
    v23 = sub_20DD64EB4();
    v24 = v8;
    sub_20DD65684();
    if (*(a1 + 16) && (v9 = sub_20D9CB264(v25), (v10 & 1) != 0))
    {
      sub_20D9D7174(*(a1 + 56) + 32 * v9, v26);
      sub_20D9D4298(v25);
      if ((swift_dynamicCast() & 1) != 0 && v23 == 1)
      {
        v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))(a1);
        if (v11)
        {
          v12._rawValue = v11;
          sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
          v13 = HFItemUpdateOutcome.init(results:)(v12);
          v14 = [objc_opt_self() futureWithResult_];

          return v14;
        }
      }
    }

    else
    {
      sub_20D9D4298(v25);
    }

    v15 = sub_20DD65114();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v17[5] = a1;
    v18 = objc_allocWithZone(MEMORY[0x277D2C900]);

    v19 = [v18 init];
    [v19 setDescriptor_];
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = &unk_20DD93A90;
    v20[5] = v17;
    v20[6] = v19;
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = &unk_20DD93AA0;
    v21[5] = v20;

    v14 = v19;

    sub_20D9D6B40(0, 0, v7, 0, 0, &unk_20DD95DF0, v21);

    sub_20D9D76EC(v7, &qword_27C8443F0, &qword_20DD93820);
    return v14;
  }

  __break(1u);
  return result;
}

HFItemUpdateOutcome __swiftcall HFItemUpdateOutcome.init(results:)(Swift::OpaquePointer results)
{
  v2 = sub_20D9D4C24(MEMORY[0x277D84F90]);
  v3 = results._rawValue + 64;
  v4 = 1 << *(results._rawValue + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(results._rawValue + 8);
  v7 = (v4 + 63) >> 6;
  rawValue = results._rawValue;

  v8 = 0;
  v37 = v3;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = *(rawValue[6] + 8 * v11);
    sub_20D9D7174(rawValue[7] + 32 * v11, &v45);
    v44 = v12;
    sub_20D9D7558(&v44, &v42, &unk_27C845130, &unk_20DD96BA0);
    v13 = v42;
    v14 = sub_20DD64EB4();
    v16 = v15;
    v17 = v12;

    sub_20D9D7558(&v44, &v40, &unk_27C845130, &unk_20DD96BA0);
    sub_20D9C29D8(&v41, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_20D9D41DC(v14, v16, sub_20D9CB940);
    v21 = v2[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v2[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_20D9D2E54(&unk_27C843620, &qword_20DD93C60, sub_20D9D77C8);
        if (v24)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_20D9CE73C(v23, isUniquelyReferenced_nonNull_native, &unk_27C843620, &qword_20DD93C60, sub_20D9D77C8);
      v25 = sub_20D9D41DC(v14, v16, sub_20D9CB940);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

      v20 = v25;
      if (v24)
      {
LABEL_4:

        v9 = (v2[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_0(v9);
        sub_20D9C29D8(v39, v9);
        sub_20D9D76EC(&v44, &unk_27C845130, &unk_20DD96BA0);
        goto LABEL_5;
      }
    }

    v2[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v2[6] + 16 * v20);
    *v27 = v14;
    v27[1] = v16;
    sub_20D9C29D8(v39, (v2[7] + 32 * v20));
    sub_20D9D76EC(&v44, &unk_27C845130, &unk_20DD96BA0);
    v28 = v2[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_25;
    }

    v2[2] = v30;
LABEL_5:
    v6 &= v6 - 1;
    __swift_destroy_boxed_opaque_existential_0(v43);
    v3 = v37;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_20D9CA5EC(v2);

      v32 = sub_20DD64DB4();

      v33 = [v31 initWithResults_];

      v36 = v33;
      goto LABEL_27;
    }

    v6 = *&v3[8 * v10];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v36 = sub_20DD659E4();
  __break(1u);
LABEL_27:
  result._outcomeType = v35;
  result._results = v34;
  result.super.isa = v36;
  return result;
}

uint64_t sub_20D9C9CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = a4;
  return MEMORY[0x2822009F8](sub_20D9C9D1C, 0, 0);
}

void *sub_20D9C9D1C()
{
  v1 = v0[14];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v0[16] = result;
  if (result)
  {
    v3 = v0[15];
    if (v3)
    {
      v4 = *((*MEMORY[0x277D85000] & *result) + 0x50);
      v12 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      v0[17] = v6;
      *v6 = v0;
      v6[1] = sub_20D9C9F68;

      return v12(v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
    inited = swift_initStackObject();
    *(inited + 32) = @"hidden";
    *(inited + 16) = xmmword_20DD93A70;
    *(inited + 64) = MEMORY[0x277D839B0];
    *(inited + 40) = 1;
    v8 = @"hidden";
    v9 = sub_20D9D4AFC(inited);
    swift_setDeallocating();
    sub_20D9D76EC(inited + 32, &qword_27C8452C0, &qword_20DD96DA0);
    v10 = HFItemUpdateOutcome.init(results:)(v9);
    v11 = v0[1];

    return v11(v10);
  }

  return result;
}

uint64_t sub_20D9C9F68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_20D9CA128;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_20D9CA090;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20D9CA090()
{
  v1._rawValue = v0[19];
  v2 = v0[16];
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v3 = HFItemUpdateOutcome.init(results:)(v1);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_20D9CA128()
{
  if (qword_27C842400 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C843390);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20D9BF000, v4, v5, "Swift subclassUpdate threw error %@. Hiding item", v8, 0xCu);
    sub_20D9D76EC(v9, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[16];
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v13._rawValue = (*((*MEMORY[0x277D85000] & *v12) + 0x60))();
  v14 = HFItemUpdateOutcome.init(results:)(v13);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_20D9CA3EC()
{
  v1 = sub_20D9D4AFC(MEMORY[0x277D84F90]);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_20D9CA45C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
  inited = swift_initStackObject();
  *(inited + 32) = @"hidden";
  *(inited + 16) = xmmword_20DD93A70;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v1 = @"hidden";
  v2 = sub_20D9D4AFC(inited);
  swift_setDeallocating();
  sub_20D9D76EC(inited + 32, &qword_27C8452C0, &qword_20DD96DA0);
  return v2;
}

id SwiftItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftItem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SwiftItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9CA5EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434A8, &qword_20DD93B58);
    v2 = sub_20DD65884();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20D9D7174(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_20D9C29D8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_20D9C29D8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_20D9C29D8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_20DD65664();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_20D9C29D8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20D9CA8B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_20D9C76B4;

  return v9(a1);
}

uint64_t sub_20D9CA9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_20D9CA9D0, 0, 0);
}

uint64_t sub_20D9CA9D0()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  *v5 = v0;
  v5[1] = sub_20D9CAAF4;

  return MEMORY[0x282200830](v0 + 16, &unk_20DD93C78, v2, sub_20D9D7678, v3, 0, 0, v6);
}

uint64_t sub_20D9CAAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_20D9CACA4;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_20D9CAC18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D9CAC18()
{
  v1 = *(v0 + 16);
  if (([*(v0 + 40) isCancelled] & 1) == 0)
  {
    [*(v0 + 40) finishWithResult_];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D9CACA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = [v3 isCancelled];
  v5 = v0[9];
  if (v4)
  {
  }

  else
  {
    v6 = v0[5];
    v7 = v0[9];
    v8 = sub_20DD63494();
    [v6 finishWithError_];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20D9CAD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_20D9CAD94, 0, 0);
}

uint64_t sub_20D9CAD94()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434E8, &qword_20DD95E00);
  *v5 = v0;
  v5[1] = sub_20D9CAEB4;

  return MEMORY[0x282200830](v0 + 16, &unk_20DD93B98, v2, sub_20D9D77B8, v3, 0, 0, v6);
}

uint64_t sub_20D9CAEB4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_20D9D77B4;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_20D9D77B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D9CAFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_20D9CAFFC, 0, 0);
}

uint64_t sub_20D9CAFFC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_20D9D7510(0, &qword_27C8434A0, 0x277CBEB68);
  *v5 = v0;
  v5[1] = sub_20D9CAEB4;

  return MEMORY[0x282200830](v0 + 16, &unk_20DD93B50, v2, sub_20D9D77B8, v3, 0, 0, v6);
}

unint64_t sub_20D9CB120(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20DD65444();
  return sub_20D9CBCA0(a1, v5, &qword_280E02100, 0x277CD1970);
}

unint64_t sub_20D9CB188(unsigned __int16 a1)
{
  v3 = MEMORY[0x20F3269A0](*(v1 + 40), a1, 2);

  return sub_20D9CB9F8(a1, v3);
}

unint64_t sub_20D9CB1D0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_20DD64EB4();
  sub_20DD65A64();
  sub_20DD64F24();
  v4 = sub_20DD65AA4();

  return sub_20D9CBA68(a1, v4);
}

unint64_t sub_20D9CB264(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20DD65664();

  return sub_20D9CBB6C(a1, v5);
}

unint64_t sub_20D9CB2A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_20DD65A54();

  return sub_20D9CBC34(a1, v4);
}

unint64_t sub_20D9CB2EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20DD65444();
  return sub_20D9CBCA0(a1, v5, &qword_280E01EF0, 0x277CD1A60);
}

unint64_t sub_20D9CB33C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20DD65444();
  return sub_20D9CBCA0(a1, v5, &qword_27C8435F0, 0x277CD1D90);
}

unint64_t sub_20D9CB38C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DD63744();
  v5 = MEMORY[0x277CC95F0];
  sub_20D9D7464(&qword_280E02290, MEMORY[0x277CC95F0]);
  v6 = sub_20DD64E24();
  return sub_20D9CBD6C(a1, v6, MEMORY[0x277CC95F0], &qword_280E02288, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_20D9CB460(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DD641A4();
  v5 = MEMORY[0x277D15F40];
  sub_20D9D7464(&qword_27C8435C0, MEMORY[0x277D15F40]);
  v6 = sub_20DD64E24();
  return sub_20D9CBD6C(a1, v6, MEMORY[0x277D15F40], &qword_27C8435D0, v5, MEMORY[0x277D15F60]);
}

unint64_t sub_20D9CB534(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DD64504();
  v5 = MEMORY[0x277D16B08];
  sub_20D9D7464(&unk_27C8443B0, MEMORY[0x277D16B08]);
  v6 = sub_20DD64E24();
  return sub_20D9CBD6C(a1, v6, MEMORY[0x277D16B08], &qword_27C843590, v5, MEMORY[0x277D16B28]);
}

unint64_t sub_20D9CB608(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DD63CD4();
  v5 = MEMORY[0x277D15560];
  sub_20D9D7464(&qword_27C843578, MEMORY[0x277D15560]);
  v6 = sub_20DD64E24();
  return sub_20D9CBD6C(a1, v6, MEMORY[0x277D15560], &qword_27C843598, v5, MEMORY[0x277D15580]);
}

unint64_t sub_20D9CB6DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20DD65444();
  return sub_20D9CBCA0(a1, v5, &unk_280E020A0, off_277DEF390);
}

unint64_t sub_20D9CB72C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DD636C4();
  v5 = MEMORY[0x277CC9578];
  sub_20D9D7464(&qword_27C844E10, MEMORY[0x277CC9578]);
  v6 = sub_20DD64E24();
  return sub_20D9CBD6C(a1, v6, MEMORY[0x277CC9578], &qword_27C843510, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_20D9CB800(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20DD63FE4();
  v5 = MEMORY[0x277D15B60];
  sub_20D9D7464(&qword_27C844380, MEMORY[0x277D15B60]);
  v6 = sub_20DD64E24();
  return sub_20D9CBD6C(a1, v6, MEMORY[0x277D15B60], &qword_27C8434C0, v5, MEMORY[0x277D15B70]);
}

unint64_t sub_20D9CB8D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_20DD65A64();
  sub_20DD63874();
  v4 = sub_20DD65AA4();

  return sub_20D9CBF0C(a1, v4);
}

unint64_t sub_20D9CB940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20D9CB9F8(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20D9CBA68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_20DD64EB4();
      v9 = v8;
      if (v7 == sub_20DD64EB4() && v9 == v10)
      {
        break;
      }

      v12 = sub_20DD65974();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_20D9CBB6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20D9D7288(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F3265D0](v9, a1);
      sub_20D9D4298(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20D9CBC34(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20D9CBCA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_20D9D7510(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_20DD65454();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_20D9CBD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_20D9D7464(v24, v25);
      v20 = sub_20DD64E64();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_20D9CBF0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      if (sub_20DD63864())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_20D9CBFA8(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_20DD643E4();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843490, &qword_20DD93B38);
  v42 = a2;
  result = sub_20DD65874();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v42)
      {
        (*v19)(v43, v28, v44);
      }

      else
      {
        (*v40)(v43, v28, v44);
        v29 = v26;
      }

      v30 = *(v12 + 40);
      result = sub_20DD65444();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v43, v44);
      ++*(v12 + 16);
      v6 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_20D9CC2F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8434B0, &qword_20DD93B60);
  v37 = a2;
  result = sub_20DD65874();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_20D9C29D8(v23, v38);
      }

      else
      {
        sub_20D9D7174(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_20DD64EB4();
      sub_20DD65A64();
      sub_20DD64F24();
      v26 = sub_20DD65AA4();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_20D9C29D8(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_20D9CC628(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - v13;
  v14 = sub_20DD63744();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  result = sub_20DD65874();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_20D9D7464(&qword_280E02290, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_20D9CCACC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s21AccessoryCommandTupleVMa();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD63744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435B0, &qword_20DD93C18);
  v48 = a2;
  result = sub_20DD65874();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_20D9D7400(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_20D9D739C(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_20D9D7464(&qword_280E02290, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_20D9D7400(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_20D9CCF30(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20DD641A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435B8, &qword_20DD93C20);
  v43 = a2;
  result = sub_20DD65874();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20D9D7464(&qword_27C8435C0, MEMORY[0x277D15F40]);
      result = sub_20DD64E24();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20D9CD30C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434A8, &qword_20DD93B58);
  result = sub_20DD65874();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_20D9C29D8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_20D9D7288(v24, &v38);
        sub_20D9D7174(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_20DD65664();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_20D9C29D8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_20D9CD5C4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_20DD638D4();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD64504();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843580, &qword_20DD93C00);
  v52 = a2;
  result = sub_20DD65874();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_20D9D7464(&unk_27C8443B0, MEMORY[0x277D16B08]);
      result = sub_20DD64E24();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_20D9CDA6C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20DD63CD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843570, &qword_20DD93BF8);
  v43 = a2;
  result = sub_20DD65874();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20D9D7464(&qword_27C843578, MEMORY[0x277D15560]);
      result = sub_20DD64E24();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20D9CDE48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843568, &qword_20DD93BF0);
  result = sub_20DD65874();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 2 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x20F3269A0](*(v8 + 40), v22, 2);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_20D9CE0D0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_20DD63744();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_20DD65874();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_20D9D7464(&qword_280E02290, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_20D9CE4AC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_20DD65874();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_20DD65444();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_20D9CE73C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_20DD65874();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_20D9D7174(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_20DD65A64();
      sub_20DD64F24();
      result = sub_20DD65AA4();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_20D9CEA14(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_20DD63744();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_20DD65874();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
        swift_unknownObjectRetain();
      }

      v33 = *(v18 + 40);
      sub_20D9D7464(&qword_280E02290, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_20D9CEDF0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843520, &qword_20DD93BC0);
  v44 = a2;
  result = sub_20DD65874();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_20D9D7464(&qword_280E02290, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20D9CF1B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20DD636C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843518, &qword_20DD93BB8);
  v43 = a2;
  result = sub_20DD65874();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20D9D7464(&qword_27C844E10, MEMORY[0x277CC9578]);
      result = sub_20DD64E24();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20D9CF5C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434C8, &qword_20DD93B68);
  v49 = a2;
  result = sub_20DD65874();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_20D9D7464(&qword_27C844380, MEMORY[0x277D15B60]);
      result = sub_20DD64E24();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_20D9CFA14(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434D8, &qword_20DD93B78);
  v43 = a2;
  result = sub_20DD65874();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20D9D7464(&qword_27C844380, MEMORY[0x277D15B60]);
      result = sub_20DD64E24();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20D9CFDF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D8, &qword_20DD93AE8);
  result = sub_20DD65874();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_20DD65A64();
      sub_20DD63874();
      result = sub_20DD65AA4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

_OWORD *sub_20D9D0070(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20D9CB1D0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20D9D23EC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20D9CC2F4(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_20D9CB1D0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for HFItemResultKey(0);
      result = sub_20DD659E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_20D9C29D8(a1, v20);
  }

  else
  {
    sub_20D9D1BAC(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_20D9D01B0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20D9D41DC(a2, a3, sub_20D9CB940);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20D9D2E54(&unk_27C843620, &qword_20DD93C60, sub_20D9D77C8);
      v11 = v19;
      goto LABEL_8;
    }

    sub_20D9CE73C(v16, a4 & 1, &unk_27C843620, &qword_20DD93C60, sub_20D9D77C8);
    v20 = *v5;
    v11 = sub_20D9D41DC(a2, a3, sub_20D9CB940);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_20DD659E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_20D9C29D8(a1, v23);
  }

  else
  {
    sub_20D9D1C14(v11, a2, a3, a1, v22);
  }
}

id sub_20D9D0374(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20D9CB33C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_20D9CE4AC(v13, a3 & 1, &unk_27C8435F8, &qword_20DD93C40);
      v17 = *v4;
      v8 = sub_20D9CB33C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        result = sub_20DD659E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_20D9D2C9C(&unk_27C8435F8, &qword_20DD93C40);
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

uint64_t sub_20D9D0514(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB38C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D37F8(MEMORY[0x277CC9578], MEMORY[0x277CC95F0], &qword_27C843470, &qword_20DD93B10);
      goto LABEL_7;
    }

    sub_20D9CC628(v18, a3 & 1, MEMORY[0x277CC9578], &qword_27C843470, &qword_20DD93B10);
    v29 = *v4;
    v30 = sub_20D9CB38C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20D9D1EF0(v15, v12, a1, v21, MEMORY[0x277CC9578]);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_20DD636C4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_20D9D079C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB38C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D37F8(MEMORY[0x277D16408], MEMORY[0x277CC95F0], &qword_27C8435D8, &qword_20DD93C28);
      goto LABEL_7;
    }

    sub_20D9CC628(v18, a3 & 1, MEMORY[0x277D16408], &qword_27C8435D8, &qword_20DD93C28);
    v29 = *v4;
    v30 = sub_20D9CB38C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20D9D1EF0(v15, v12, a1, v21, MEMORY[0x277D16408]);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_20DD64294();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_20D9D0A10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB38C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D2620();
      goto LABEL_7;
    }

    sub_20D9CCACC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_20D9CB38C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20D9D1CC4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(_s21AccessoryCommandTupleVMa() - 8) + 72) * v15;

  return sub_20D9D74AC(a1, v23);
}

uint64_t sub_20D9D0BF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD641A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB460(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D3540(MEMORY[0x277D15F40], &qword_27C8435B8, &qword_20DD93C20);
      goto LABEL_7;
    }

    sub_20D9CCF30(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_20D9CB460(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20D9D1E34(v15, v12, a1, v21, MEMORY[0x277D15F40]);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_20D9D0DFC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20D9CB264(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_20D9D2924();
      goto LABEL_7;
    }

    sub_20D9CD30C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_20D9CB264(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20D9D7288(a2, v22);
      return sub_20D9D1DA0(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_20D9C29D8(a1, v17);
}

uint64_t sub_20D9D0F5C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_20DD63744();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_20D9CB38C(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_20D9D3540(MEMORY[0x277CC95F0], v30, v31);
      goto LABEL_7;
    }

    sub_20D9CE0D0(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_20D9CB38C(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_20D9D1E34(v17, v14, a1, v23, MEMORY[0x277CC95F0]);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

id sub_20D9D1160(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20D9CB6DC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_20D9CE4AC(v13, a3 & 1, &unk_27C843550, &qword_20DD93BE0);
      v17 = *v4;
      v8 = sub_20D9CB6DC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
        result = sub_20DD659E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_20D9D2C9C(&unk_27C843550, &qword_20DD93BE0);
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

uint64_t sub_20D9D1300(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB38C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D37F8(MEMORY[0x277D16C40], MEMORY[0x277CC95F0], &qword_27C843478, &qword_20DD93B18);
      goto LABEL_7;
    }

    sub_20D9CC628(v18, a3 & 1, MEMORY[0x277D16C40], &qword_27C843478, &qword_20DD93B18);
    v29 = *v4;
    v30 = sub_20D9CB38C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20D9D1EF0(v15, v12, a1, v21, MEMORY[0x277D16C40]);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_20DD64544();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_20D9D1588(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB38C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D37F8(MEMORY[0x277CC88A8], MEMORY[0x277CC95F0], &qword_27C8434F0, &qword_20DD93BA0);
      goto LABEL_7;
    }

    sub_20D9CC628(v18, a3 & 1, MEMORY[0x277CC88A8], &qword_27C8434F0, &qword_20DD93BA0);
    v29 = *v4;
    v30 = sub_20D9CB38C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20D9D1EF0(v15, v12, a1, v21, MEMORY[0x277CC88A8]);
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_20DD63484();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_20D9D17FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63FE4();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20D9CB800(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20D9D3B54();
      goto LABEL_9;
    }

    sub_20D9CF5C8(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_20D9CB800(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_20D9D1FEC(v14, v11, a1, v23);
  }
}

void sub_20D9D19E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20DD63FE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20D9CB800(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20D9D3E1C();
      goto LABEL_7;
    }

    sub_20D9CFA14(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_20D9CB800(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_20D9D20C8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_20DD659E4();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_20D9D1BAC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_20D9C29D8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_20D9D1C14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_20D9D1C80(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_20D9D1CC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20DD63744();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s21AccessoryCommandTupleVMa();
  result = sub_20D9D7400(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_20D9D1DA0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_20D9C29D8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_20D9D1E34(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_20D9D1EF0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_20DD63744();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_20D9D1FEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20DD63FE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_20D9D20C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20DD63FE4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_20D9D2180()
{
  v1 = v0;
  v30 = sub_20DD643E4();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843490, &qword_20DD93B38);
  v4 = *v0;
  v5 = sub_20DD65864();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_20D9D23EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8434B0, &qword_20DD93B60);
  v2 = *v0;
  v3 = sub_20DD65864();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_20D9D7174(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_20D9C29D8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_20D9D2620()
{
  v1 = v0;
  v2 = _s21AccessoryCommandTupleVMa();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20DD63744();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435B0, &qword_20DD93C18);
  v7 = *v0;
  v8 = sub_20DD65864();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_20D9D739C(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_20D9D7400(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_20D9D2924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434A8, &qword_20DD93B58);
  v2 = *v0;
  v3 = sub_20DD65864();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_20D9D7288(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_20D9D7174(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_20D9C29D8(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20D9D2B2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843568, &qword_20DD93BF0);
  v2 = *v0;
  v3 = sub_20DD65864();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20D9D2C9C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_20DD65864();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_20D9D2E54(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_20DD65864();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_20D9D7174(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_20D9D3008(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_20DD63744();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_20DD65864();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;
        result = swift_unknownObjectRetain();
        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_20D9D3280()
{
  v1 = v0;
  v32 = sub_20DD63744();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843520, &qword_20DD93BC0);
  v4 = *v0;
  v5 = sub_20DD65864();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20D9D3540(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_20DD65864();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_20D9D37F8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v50 = a1(0);
  v53 = *(v50 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - v10;
  v48 = a2(0);
  v52 = *(v48 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_20DD65864();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v39 = v8;
    v40 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v51 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = v52 + 16;
    v45 = v24;
    v42 = v52 + 32;
    v43 = v53 + 16;
    v41 = v53 + 32;
    v46 = v13;
    v26 = v47;
    v25 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v52;
        v32 = *(v52 + 72) * v30;
        (*(v52 + 16))(v26, *(v13 + 48) + v32, v25);
        v33 = v53;
        v34 = *(v53 + 72) * v30;
        v35 = v49;
        v36 = v50;
        (*(v53 + 16))(v49, *(v13 + 56) + v34, v50);
        v37 = v51;
        (*(v31 + 32))(*(v51 + 48) + v32, v26, v25);
        v38 = *(v37 + 56);
        v13 = v46;
        result = (*(v33 + 32))(v38 + v34, v35, v36);
        v24 = v45;
        v23 = v54;
      }

      while (v54);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v39;
        v15 = v51;
        goto LABEL_18;
      }

      v29 = *(v40 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v15;
  }

  return result;
}

char *sub_20D9D3B54()
{
  v1 = v0;
  v35 = sub_20DD63FE4();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434C8, &qword_20DD93B68);
  v6 = *v0;
  v7 = sub_20DD65864();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_20D9D3E1C()
{
  v1 = v0;
  v32 = sub_20DD63FE4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434D8, &qword_20DD93B78);
  v4 = *v0;
  v5 = sub_20DD65864();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20D9D4090()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D8, &qword_20DD93AE8);
  v2 = *v0;
  v3 = sub_20DD65864();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_20D9D41DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_20DD65A64();
  sub_20DD64F24();
  v7 = sub_20DD65AA4();

  return a3(a1, a2, v7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20D9D42EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20D9D77BC;

  return sub_20D9C9CFC(v2, v3, v5, v4);
}

uint64_t sub_20D9D4398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9C76B4;

  return sub_20D9CA9AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20D9D4460(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20D9D454C;

  return v6();
}

uint64_t sub_20D9D454C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_20D9D4698, 0, 0);
  }
}

uint64_t sub_20D9D46BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20D9D47A8;

  return v6();
}

uint64_t sub_20D9D47A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_20D9D77C0, 0, 0);
  }
}

unint64_t sub_20D9D48F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435C8, &unk_20DD94370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435B0, &qword_20DD93C18);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8435C8, &unk_20DD94370);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = _s21AccessoryCommandTupleVMa();
      result = sub_20D9D7400(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D4AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8434B0, &qword_20DD93B60);
    v3 = sub_20DD65884();
    v4 = a1 + 32;

    while (1)
    {
      sub_20D9D7558(v4, &v11, &qword_27C8452C0, &qword_20DD96DA0);
      v5 = v11;
      result = sub_20D9CB1D0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20D9C29D8(&v12, (v3[7] + 32 * result));
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

unint64_t sub_20D9D4C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843620, &qword_20DD93C60);
    v3 = sub_20DD65884();
    v4 = a1 + 32;

    while (1)
    {
      sub_20D9D7558(v4, &v13, &unk_27C844030, &qword_20DD93C68);
      v5 = v13;
      v6 = v14;
      result = sub_20D9D41DC(v13, v14, sub_20D9CB940);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20D9C29D8(&v15, (v3[7] + 32 * result));
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

void *sub_20D9D4D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843568, &qword_20DD93BF0);
  v3 = sub_20DD65884();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_20D9CB188(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 2 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 4);
    v15 = *v10;

    v8 = sub_20D9CB188(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20D9D4EC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_20DD65884();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_20D9D4FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843610, &qword_20DD93C50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843470, &qword_20DD93B10);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C843610, &qword_20DD93C50);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20DD636C4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D51E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435E8, &qword_20DD93C38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435D8, &qword_20DD93C28);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8435E8, &qword_20DD93C38);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20DD64294();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D5400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435E0, &qword_20DD93C30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435B8, &qword_20DD93C20);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8435E0, &qword_20DD93C30);
      result = sub_20D9CB460(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD641A4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D55E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435A8, &qword_20DD93C10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843570, &qword_20DD93BF8);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8435A8, &qword_20DD93C10);
      result = sub_20D9CB608(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63CD4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D57D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8435A0, &qword_20DD93C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843580, &qword_20DD93C00);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8435A0, &qword_20DD93C08);
      result = sub_20D9CB534(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD64504();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20DD638D4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D59F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843540, &qword_20DD93BD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843480, &unk_20DD93B20);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &unk_27C843540, &qword_20DD93BD8);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D5BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843538, &qword_20DD93BD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843478, &qword_20DD93B18);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C843538, &qword_20DD93BD0);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20DD64544();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D5DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843440, &qword_20DD94BC0);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C843530, &qword_20DD95680);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D5FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843468, &qword_20DD93B08);
    v3 = sub_20DD65884();
    v4 = a1 + 32;

    while (1)
    {
      sub_20D9D7558(v4, &v13, &unk_27C8442F0, &qword_20DD93BC8);
      v5 = v13;
      v6 = v14;
      result = sub_20D9D41DC(v13, v14, sub_20D9CB940);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20D9C29D8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_20D9D6124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843500, &qword_20DD93BB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843450, &qword_20DD93AF0);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &unk_27C843500, &qword_20DD93BB0);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D630C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843458, &qword_20DD93AF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843460, &qword_20DD93B00);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C843458, &qword_20DD93AF8);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20DD64444();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D652C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434F8, &qword_20DD93BA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434F0, &qword_20DD93BA0);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8434F8, &qword_20DD93BA8);
      result = sub_20D9CB38C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63744();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_20DD63484();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D674C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434E0, &qword_20DD93B80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434D8, &qword_20DD93B78);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8434E0, &qword_20DD93B80);
      result = sub_20D9CB800(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_20DD63FE4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_20D9D6934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434D0, &qword_20DD93B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434C8, &qword_20DD93B68);
    v8 = sub_20DD65884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_20D9D7558(v10, v6, &qword_27C8434D0, &qword_20DD93B70);
      result = sub_20D9CB800(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_20DD63FE4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 32);
      v18 = *(v16 + 72) * v13;
      v17(v14 + v18, v6, v15);
      result = (v17)(v8[7] + v18, &v6[v23], v15);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
      if (!--v7)
      {

        return v8;
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