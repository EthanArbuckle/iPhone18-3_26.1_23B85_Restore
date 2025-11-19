uint64_t sub_24DE6F258(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24E347208();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_24DE6F2E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24E347208();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE6F360()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE6F398()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 336);

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

id sub_24DE6F408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_24DE6F448()
{
  MEMORY[0x253040FB0](v0 + 16);
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE6F47C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_5_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24DE6F51C()
{
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE6F550()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE6F584()
{
  MEMORY[0x253040FB0](v0 + 16);
  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

__n128 sub_24DE6F5F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24DE6F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE6F6A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE6F75C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DE6F79C()
{
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE6F7D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE6F808()
{
  sub_24E3474B8();
  OUTLINED_FUNCTION_0_26();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24DE6F884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E2996E0();
  *a1 = result;
  return result;
}

id sub_24DE6F8CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authenticationState];
  *a2 = result;
  return result;
}

id sub_24DE6F914@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showHighlights];
  *a2 = result;
  return result;
}

uint64_t sub_24DE6F9B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE6FA4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE6FB14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE6FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF740);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_24DE6FC58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF740);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_24DE6FD58()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ProfileCreationOnboardingView();
  OUTLINED_FUNCTION_3_13();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  v5 = v1 + v4;

  v6 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  if (OUTLINED_FUNCTION_31_14() == 1)
  {
    v7 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_18_11(v7))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v8 + 8))(v5 + v6, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_13();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_20_11(v9))
    {
      OUTLINED_FUNCTION_22_0();
      v10 = OUTLINED_FUNCTION_16_13();
      v11(v10);
    }
  }

  else
  {
  }

  v12 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_35_13();
  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_24DE6FF5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  OUTLINED_FUNCTION_5_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24DE7002C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE70060()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24DE700A0()
{
  type metadata accessor for AchievementsLinkData();
  OUTLINED_FUNCTION_22_30();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = v0 + v4;
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  if (*(v0 + v4 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 88);
  }

  v8 = *(v1 + 40);
  v9 = sub_24E3474B8();
  if (!OUTLINED_FUNCTION_35_14(v9))
  {
    (*(*(v1 - 8) + 8))(v7 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_24DE701BC()
{
  type metadata accessor for DetailData();
  OUTLINED_FUNCTION_22_30();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = v0 + v4;
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  switch(*(v0 + v4 + 152))
  {
    case 0:
    case 2:

      break;
    case 1:
    case 3:
    case 4:
    case 5:

      break;
    case 6:
      if (*(v7 + 96))
      {

        __swift_destroy_boxed_opaque_existential_1(v7 + 112);
      }

      break;
    default:
      break;
  }

  if (*(v7 + 160))
  {
  }

  if (*(v7 + 208))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 184);
  }

  v8 = *(v1 + 56);
  v9 = sub_24E3474B8();
  if (!OUTLINED_FUNCTION_35_14(v9))
  {
    (*(*(v1 - 8) + 8))(v7 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_24DE70398()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE703D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE7040C()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE70460(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24E347208();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_24DE704E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24E347208();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE70590(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24E347208();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE70618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24E347208();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE706E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E2BB5F8();
  *a1 = result;
  return result;
}

uint64_t sub_24DE70710(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_24DE707A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE70830()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EA028);
  OUTLINED_FUNCTION_1_139(&qword_27F1EA030);
  sub_24E345538();
  OUTLINED_FUNCTION_2_121(&qword_27F1EA040);
  OUTLINED_FUNCTION_0_175();
  return swift_getWitnessTable();
}

uint64_t sub_24DE708C4()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE708FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE7093C()
{
  MEMORY[0x253040FB0](v0 + 16);
  v1 = OUTLINED_FUNCTION_3_35();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE7096C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE709AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE709EC()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_3_35();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE70A1C()
{

  OUTLINED_FUNCTION_5_30();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE70A7C()
{
  v1 = OUTLINED_FUNCTION_3_35();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE70AAC()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24DE70AFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  if (*(v0 + 344))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  }

  return MEMORY[0x2821FE8E8](v0, 360, 7);
}

uint64_t sub_24DE70B74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  if (*(v0 + 344))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  }

  return MEMORY[0x2821FE8E8](v0, 360, 7);
}

uint64_t sub_24DE70BF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE70C34()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE70E04()
{
  sub_24E347DC8();
}

uint64_t sub_24DE70EB4@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.URLTemplate.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DE70F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_24DE71000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF2C8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24DE710D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE71134()
{
  v1 = (type metadata accessor for GameLeaderboardsAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = (v0 + v3);

  v7 = v1[10];
  v8 = sub_24E347208();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  MEMORY[0x253040FB0](v0 + v4);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24DE712B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24E347208();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE71338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24E347208();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE713B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE713F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE7144C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE71484()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE714BC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24DE71574()
{
  MEMORY[0x253040FB0](v0 + 16);
  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE715A8()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE715E0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24DE71620()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE7165C()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE7169C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  OUTLINED_FUNCTION_0_26();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24DE71750()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE71788()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

BOOL sub_24DE717C8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24E321A6C();
  *a1 = result;
  return result;
}

uint64_t sub_24DE71818()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_40_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE7184C()
{
  MEMORY[0x253040FB0](v0 + 16);
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE71880()
{
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE718C4()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE718F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24DE71970()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE719DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_14_50();
  v2(v0 + v1);

  v3 = OUTLINED_FUNCTION_20_34();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_24DE71A78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  OUTLINED_FUNCTION_0_26();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_20_34();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_24DE71AFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE71B34()
{
  sub_24E343368();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_14_50();
  v2(v0 + v1);

  v3 = OUTLINED_FUNCTION_20_34();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_24DE71BB8()
{

  OUTLINED_FUNCTION_5_30();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE71BEC()
{

  OUTLINED_FUNCTION_5_30();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE71C30()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24DE71C64()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE71CA0()
{

  OUTLINED_FUNCTION_5_30();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE71CE4()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_24DE71D1C()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_24DE71D84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAD0);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_24DE71E50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAE0);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_14_50();
  v2(v0 + v1);
  v3 = OUTLINED_FUNCTION_20_34();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_24DE71ED8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAB08);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_24DE71FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E347208();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_24DE72008(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E347208();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_24DE72054()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE7208C()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE720F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE7218C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE7222C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for PlayerProfileAction() - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (*(*v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);

  v13 = v8[8];
  sub_24E347208();
  OUTLINED_FUNCTION_5_2();
  (*(v14 + 8))(v0 + v10 + v13);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v11 | 7);
}

uint64_t sub_24DE723A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  OUTLINED_FUNCTION_5_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = (v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_24DE72460()
{
  MEMORY[0x253040FB0](v0 + 16);
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE72494()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE724D4()
{
  OUTLINED_FUNCTION_21_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24DE72528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_2_16(*(a1 + 24));
  }

  v7 = sub_24E344658();
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_24DE725A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24E344658();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE72624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_16(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_24DE726C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24DE72784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_24DE72840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24DE72998(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24E347208();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_24DE72A20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24E347208();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE72ADC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24E347208();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_24DE72B64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24E347208();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE72BE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24DE72C3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE72C7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DE72CBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DE72D04()
{
  v1 = (type metadata accessor for AddFriendsAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_24E31B1B4();
  v5 = v1[8];
  sub_24E347208();
  OUTLINED_FUNCTION_0_26();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24DE72E54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DE72E94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24DE72EDC()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE72F90()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE72FC8()
{

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_24DE73008()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24DE73048()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DE73248(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE732DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE73390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24DE7344C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24DE73508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E345A58();
  *a1 = result;
  return result;
}

uint64_t sub_24DE73538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24DFECD88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24DE73590()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EB1D0);
  sub_24E32B930();
  sub_24DF90C4C();
  OUTLINED_FUNCTION_1_161(&qword_27F1DF868);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_119();
  return OUTLINED_FUNCTION_4_119();
}

uint64_t sub_24DE737BC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24DE73808()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E331A14();
  *v0 = result;
  return result;
}

uint64_t sub_24DE73834()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E331B94();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_24DE73888()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E331C84();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_24DE738DC()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E331DF4();
  *v0 = result;
  return result;
}

uint64_t sub_24DE7392C()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E331EF4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_24DE73980()
{

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_24DE73A18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DE73A50()
{
  v1 = (type metadata accessor for LaunchGameAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[10];
  sub_24E347208();
  OUTLINED_FUNCTION_0_26();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24DE73BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24E344158();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24DE73C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_24E344158();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24DE73CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E3433A8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_24DE73D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24E3433A8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_24DE73F34(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

char *sub_24DE73F40(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

char *sub_24DE73F60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_106(a3, result);
  }

  return result;
}

uint64_t sub_24DE73FA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DE73FB0()
{
  OUTLINED_FUNCTION_11();
  result = sub_24DE56A84();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_24DE74024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E2585C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24DE74050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E2585E0(*v1);
  *a1 = result;
  return result;
}

void sub_24DE759D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DE77C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_24DE8676C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t GKHomeScreenIconsGetSize()
{
  if (GKHomeScreenIconsGetVariant_onceToken != -1)
  {
    GKHomeScreenIconsGetSize_cold_1();
  }

  v1 = GKHomeScreenIconsGetVariant_iconVariant;

  return MEMORY[0x282186818](v1);
}

uint64_t GKHomeScreenIconsGetCornerRadius()
{
  if (GKHomeScreenIconsGetVariant_onceToken != -1)
  {
    GKHomeScreenIconsGetSize_cold_1();
  }

  v1 = GKHomeScreenIconsGetVariant_iconVariant;

  return MEMORY[0x282186810](v1);
}

double GKHomeScreenIconsGetScaledCornerRadiusForSize(double a1, double a2)
{
  GKHomeScreenIconsGetSize();
  v5 = v4;
  v7 = v6;
  GKHomeScreenIconsGetCornerRadius();
  v9 = a2 / v7;
  if (a1 > a2)
  {
    v9 = a1 / v5;
  }

  return v8 * v9;
}

uint64_t __GKHomeScreenIconsGetVariant_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = v1;

  v4 = v2;
  result = [MEMORY[0x277D755B8] _iconVariantForUIApplicationIconFormat:2 scale:&v4];
  GKHomeScreenIconsGetVariant_iconVariant = result;
  return result;
}

void sub_24DE87A34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DE895B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DE89900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DE8D5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DE9475C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DE99240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DE9BDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_gkRangeFromToDescription(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (a3 >= 2)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3 + a2 - 1];
    v9 = [v6 stringWithFormat:@"%@%@-%@ ", v5, v7, v8];

LABEL_5:
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v10 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v9 = [v10 stringWithFormat:@"%@%@ ", v5, v7];
    goto LABEL_5;
  }

  v9 = &stru_28612D290;
LABEL_7:

  return v9;
}

void sub_24DEA5050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEA5908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_24DEA87E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEAC758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_24DEB0A44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24DEB9248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 136));
  _Unwind_Resume(a1);
}

void sub_24DEBBF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEC0558(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DEC08F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEC3B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEC3D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DEC455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id GKExtensionProtocolSecureCodedClasses()
{
  if (GKExtensionProtocolSecureCodedClasses_once != -1)
  {
    GKExtensionProtocolSecureCodedClasses_cold_1();
  }

  v1 = GKExtensionProtocolSecureCodedClasses__extractorClasses;

  return v1;
}

void __GKExtensionProtocolSecureCodedClasses_block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v2];
  v1 = GKExtensionProtocolSecureCodedClasses__extractorClasses;
  GKExtensionProtocolSecureCodedClasses__extractorClasses = v0;
}

void sub_24DEC7FBC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24DEC860C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24DECEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_24DECF6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DECFEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DED1434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DED17F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DED8468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEDA1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEDA504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DEDCCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEDD0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEDF214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEDFCC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_24DEE2808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEE36F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24DEE4B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DEE93EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEE9568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEE98D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0x16u);
}

void OUTLINED_FUNCTION_2_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0x16u);
}

void sub_24DEEF238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEF2AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DEF2D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DEF3D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DEF5130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEF6B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEF7D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyMi.isa);

    objc_end_catch();
    JUMPOUT(0x24DEF7D34);
  }

  _Unwind_Resume(exception_object);
}

void sub_24DEF8960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEFA0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DEFF67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF00228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

CGAffineTransform *_TransformForLayoutLocation@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a5 == 0.0)
  {

    return CGAffineTransformMakeTranslation(a1, a2, a3);
  }

  else
  {
    v14 = (a2 + a4 * -0.5) / a5 + a6;
    *&v26.origin.x = a7;
    *&v26.origin.y = a8;
    *&v26.size.width = a9;
    v22 = a3;
    *&v26.size.height = a10;
    MidX = CGRectGetMidX(v26);
    v16 = __sincos_stret(a6);
    *&v27.origin.x = a7;
    *&v27.origin.y = a8;
    *&v27.size.width = a9;
    *&v27.size.height = a10;
    v17 = v22 + CGRectGetMinY(v27) - a5 * v16.__cosval;
    v18 = __sincos_stret(v14);
    CGAffineTransformMakeTranslation(a1, MidX - a5 * v16.__sinval + a5 * v18.__sinval, v17 + a5 * v18.__cosval);
    v19 = *(a1 + 16);
    *&v23.a = *a1;
    *&v23.c = v19;
    *&v23.tx = *(a1 + 32);
    result = CGAffineTransformRotate(&v24, &v23, -v14);
    v21 = *&v24.c;
    *a1 = *&v24.a;
    *(a1 + 16) = v21;
    *(a1 + 32) = *&v24.tx;
    *(a1 + 48) = v14;
  }

  return result;
}

void sub_24DF031F8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF033AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF03EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF05E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF065C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF07784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF07F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF08204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF0F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF107CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF10B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF12FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF175C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0x2Au);
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x20u);
}

void sub_24DF1DE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRUILoaderClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!RemoteUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __RemoteUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27966CA50;
    v5 = 0;
    RemoteUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RemoteUILibraryCore_frameworkLibrary)
  {
    __getRUILoaderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("RUILoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRUILoaderClass_block_invoke_cold_1();
  }

  getRUILoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RemoteUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RemoteUILibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *_GKInterfaceOrientationName(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"UIInterfaceOrientationPortrait";
  }

  else
  {
    return off_27966CAF0[a1];
  }
}

void sub_24DF286BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF29DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF32570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF32A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF367B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF36D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF371AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF3C4C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF3CA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF3CC18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24DF3D1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF3D344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __GKHasSlowerGraphicsHardware_block_invoke()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  GKHasSlowerGraphicsHardware_processorCount = [v0 processorCount];
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF42820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24DF433DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t GKScreenClassGetMain()
{
  if (GKScreenClassGetMain_onceToken != -1)
  {
    GKScreenClassGetMain_cold_1();
  }

  return GKScreenClassGetMain_mainScreenClass;
}

void __GKScreenClassGetMain_block_invoke()
{
  v0 = MGGetSInt32Answer() + 1;
  v1 = 0;
  switch(v0)
  {
    case 0:
      break;
    case 4:
    case 5:
    case 7:
    case 8:
      v1 = 7;
      break;
    case 6:
      v1 = 1;
      break;
    case 9:
      if (GKScreenClassGetMainIsZoomed_onceToken != -1)
      {
        __GKScreenClassGetMain_block_invoke_cold_1();
      }

      v2 = GKScreenClassGetMainIsZoomed_isZoomed == 0;
      v1 = 1;
      goto LABEL_13;
    case 10:
    case 11:
      if (GKScreenClassGetMainIsZoomed_onceToken != -1)
      {
        __GKScreenClassGetMain_block_invoke_cold_1();
      }

      v2 = GKScreenClassGetMainIsZoomed_isZoomed == 0;
      v1 = 2;
LABEL_13:
      if (v2)
      {
        ++v1;
      }

      break;
    case 12:
      v5 = MGGetSInt32Answer();
      v1 = 9;
      if (v5 == 2)
      {
        v1 = 11;
      }

      break;
    case 13:
      v1 = 13;
      break;
    case 14:
      v1 = 12;
      break;
    case 15:
      v1 = 8;
      break;
    case 16:
      v1 = 4;
      break;
    case 17:
      v1 = 14;
      break;
    case 18:
      v1 = 15;
      break;
    case 19:
      v1 = 6;
      break;
    case 20:
      v1 = 5;
      break;
    case 21:
      v1 = 10;
      break;
    default:
      v3 = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"GKScreenClass GKScreenClassGetMain(void)_block_invoke"];
      [v3 handleFailureInFunction:v4 file:@"GKScreenClass.m" lineNumber:165 description:@"Unsupported screen class"];

      v1 = 0;
      break;
  }

  GKScreenClassGetMain_mainScreenClass = v1;
}

uint64_t GKScreenClassGetMainIsZoomed()
{
  if (GKScreenClassGetMainIsZoomed_onceToken != -1)
  {
    __GKScreenClassGetMain_block_invoke_cold_1();
  }

  return GKScreenClassGetMainIsZoomed_isZoomed;
}

double GKScreenClassGetMainScale()
{
  if (GKScreenClassGetMainScale_onceToken != -1)
  {
    GKScreenClassGetMainScale_cold_1();
  }

  return *&GKScreenClassGetMainScale_scale;
}

double __GKScreenClassGetMainScale_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  GKScreenClassGetMainScale_scale = *&result;
  return result;
}

void __GKScreenClassGetMainIsZoomed_block_invoke()
{
  v1 = *MEMORY[0x277CBF3A8];
  v0 = *(MEMORY[0x277CBF3A8] + 8);
  v2 = MGCopyAnswer();
  v3 = v0;
  v4 = v1;
  if (v2)
  {
    v5 = v2;
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(v5);
    v3 = v0;
    v4 = v1;
    if (Length >= 0x10)
    {
      v8 = &BytePtr[Length & 0xFFFFFFFFFFFFFFF0];
      v4 = *(v8 - 2);
      v3 = *(v8 - 1);
    }

    CFRelease(v5);
  }

  if (v4 == v1 && v3 == v0)
  {
    GKScreenClassGetMainIsZoomed_isZoomed = 0;
  }

  else
  {
    v10 = MGCopyAnswer();
    if (v10)
    {
      v23 = v10;
      v11 = [v10 objectForKeyedSubscript:@"zoomed"];
      if ([v11 count] >= 4)
      {
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v11 objectAtIndexedSubscript:1];
        v14 = [v11 objectAtIndexedSubscript:2];
        v15 = [v11 objectAtIndexedSubscript:3];
        [v12 floatValue];
        v17 = v16;
        [v13 floatValue];
        v1 = (v17 * v18);
        [v14 floatValue];
        v20 = v19;
        [v15 floatValue];
        v0 = (v20 * v21);
      }

      v10 = v23;
    }

    v22 = v4 == v1;
    if (v3 != v0)
    {
      v22 = 0;
    }

    GKScreenClassGetMainIsZoomed_isZoomed = v22;
  }
}

uint64_t GKScreenClassFromPortraitSize(double a1, double a2)
{
  result = 0;
  for (i = &qword_24E367AC8; a1 != *(i - 1) || a2 != *i; i += 2)
  {
    if (++result == 16)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GKScreenClassFromLandscapeSize(double a1, double a2)
{
  result = 0;
  for (i = &qword_24E367AC8; a1 != *i || a2 != *(i - 1); i += 2)
  {
    if (++result == 16)
    {
      return 0;
    }
  }

  return result;
}

double GKScreenClassGetCornerRadius()
{
  if (GKScreenClassGetCornerRadius_onceToken != -1)
  {
    GKScreenClassGetCornerRadius_cold_1();
  }

  return *&GKScreenClassGetCornerRadius_cornerRadius;
}

double __GKScreenClassGetCornerRadius_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  GKScreenClassGetCornerRadius_cornerRadius = *&result;
  return result;
}

BOOL GKScreenClassHasRoundedCorners()
{
  if (GKScreenClassGetCornerRadius_onceToken != -1)
  {
    GKScreenClassGetCornerRadius_cold_1();
  }

  return *&GKScreenClassGetCornerRadius_cornerRadius > 0.0;
}

__CFString *GKScreenClassGetString(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @".unknown";
  }

  else
  {
    return off_27966CF70[a1 - 1];
  }
}

void sub_24DF45070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF47640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF48F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF4A5E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24DF4C910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF4ED34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF52A80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF52C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF52EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF540F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF564CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_24DF5C77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_24DF65878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF676E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return objc_opt_class();
}

void __GKHasSlowerGraphicsHardware_block_invoke_0()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  GKHasSlowerGraphicsHardware_processorCount_0 = [v0 processorCount];
}

void sub_24DF6C70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float64x2_t _UIColorEffectPremultiplyColor(float64x2_t *a1, void *a2)
{
  v3 = &a1->f64[1];
  [a2 getRed:a1 green:&a1->f64[1] blue:&a1[1] alpha:&a1[1].f64[1]];
  v4 = a1[1];
  v5 = vextq_s8(v4, v4, 8uLL);
  a1->f64[0] = vmuld_lane_f64(a1->f64[0], v4, 1);
  v4.f64[0] = *v3;
  result = vmulq_f64(v4, v5);
  *(a1 + 8) = result;
  return result;
}

void sub_24DF73A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF74158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24DF742A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24DF74400(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24DF78E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF7A5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24DF7DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24DF8077C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24DF815E4(void *a1)
{
  v68 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v67 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v6 - v5);
  v7 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE190);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_23(&v62 - v13);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE198);
  OUTLINED_FUNCTION_0_14();
  v64 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23(&v62 - v16);
  v17 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v62 - v24;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  OUTLINED_FUNCTION_0_14();
  v62 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_23(&v62 - v28);
  [v1 bounds];
  v33 = [objc_allocWithZone(type metadata accessor for ActivityFeedLeaderboardView()) initWithFrame_];
  v34 = *&v1[OBJC_IVAR____TtC12GameCenterUI33ActivityFeedLeaderboardViewPublic_leaderboardView];
  v71 = v1;
  v69 = OBJC_IVAR____TtC12GameCenterUI33ActivityFeedLeaderboardViewPublic_leaderboardView;
  *&v1[OBJC_IVAR____TtC12GameCenterUI33ActivityFeedLeaderboardViewPublic_leaderboardView] = v33;

  v35 = [a1 instrumentationKey];
  v36 = sub_24E347CF8();
  v38 = v37;

  *&v77[0] = v36;
  *(&v77[0] + 1) = v38;
  v77[1] = xmmword_24E367D00;
  v77[2] = xmmword_24E367D10;
  *&v78 = 0x7469742074736574;
  *(&v78 + 1) = 0xEA0000000000656CLL;
  v76[0] = v77[0];
  v76[1] = xmmword_24E367D00;
  v76[2] = xmmword_24E367D10;
  v76[3] = v78;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  sub_24DF81EF4(v77, v73);
  sub_24E343398();
  (*(v19 + 16))(v23, v25, v17);
  sub_24DF82BE4(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v19 + 8))(v25, v17);
  type metadata accessor for ActivityFeedLeaderboardData();
  swift_allocObject();
  v39 = sub_24E2BA010(v73, a1, 0, 0, v76, 1, v74);
  if (v39)
  {
    v73[0] = v39;
    sub_24DF82BE4(&qword_27F1DE1B8, type metadata accessor for ActivityFeedLeaderboardData);
    sub_24E347158();
    sub_24E347B38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1C0);
    swift_allocObject();
    v73[0] = sub_24E347578();
    sub_24E347AF8();
    sub_24DF82C2C();
    v40 = v70;
    sub_24E347B08();
    type metadata accessor for ObjectGraph();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1D0);
    sub_24E346FA8();
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    type metadata accessor for ArtworkLoader();
    v73[0] = sub_24E2002B8();
    sub_24E346F98();

    v41 = sub_24E347308();
    v42 = v71;
    v43 = v69;
    v44 = *&v71[v69];
    if (v44)
    {
      v45 = v41;
      v46 = v44;
      sub_24E2CB01C(v72, v40, v45);

      v47 = *&v42[v43];
      if (v47)
      {
        v48 = type metadata accessor for HeaderData();
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v48);
        v49 = v7[5];
        v50 = type metadata accessor for FooterData(0);
        __swift_storeEnumTagSinglePayload(v11 + v49, 1, 1, v50);
        v51 = v11 + v7[11];
        *v51 = 0u;
        *(v51 + 16) = 0u;
        *(v51 + 32) = 1;
        v52 = v11 + v7[12];
        *v52 = 0;
        *(v52 + 8) = 1;
        v53 = (v11 + v7[13]);
        v54 = (v11 + v7[14]);
        v55 = (v11 + v7[15]);
        *(v11 + v7[6]) = 1;
        *v53 = 0;
        v53[1] = 0;
        *v54 = 0;
        v54[1] = 0;
        *v55 = 0;
        v55[1] = 0;
        *(v11 + v7[7]) = 1;
        *(v11 + v7[8]) = 1;
        *(v11 + v7[9]) = 1;
        *(v11 + v7[10]) = 0;
        v56 = v47;
        v57 = v66;
        sub_24E343508();
        v58 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
        v59 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v58 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

        sub_24E2CB520(v72, v40, v11, v57, v59, v45);
        (*(v67 + 8))(v57, v68);
        sub_24DF82D00(v11);
        v60 = *&v42[v43];
        if (v60)
        {
          v61 = v60;
          sub_24DF82D5C(v77);
          [v42 addSubview_];

          (*(v64 + 8))(v40, v65);
          (*(v62 + 8))(v72, v63);
          return;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
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

id ActivityFeedLeaderboardViewPublic.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id ActivityFeedLeaderboardViewPublic.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33ActivityFeedLeaderboardViewPublic_leaderboardView) = 0;
  v5 = type metadata accessor for ActivityFeedLeaderboardViewPublic();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id ActivityFeedLeaderboardViewPublic.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ActivityFeedLeaderboardViewPublic.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12GameCenterUI33ActivityFeedLeaderboardViewPublic_leaderboardView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActivityFeedLeaderboardViewPublic();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ActivityFeedLeaderboardViewPublic.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLeaderboardViewPublic();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DF8213C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_24DF82198@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 36) = a2;
  sub_24DF82DD4(a3, a4, a5 & 1);
}

void sub_24DF821F4()
{
  OUTLINED_FUNCTION_32();
  if (!OUTLINED_FUNCTION_1_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1F8);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_3_2();
    v5 = OUTLINED_FUNCTION_24();
    v6(v5);
    *v0 = v2;
    v0[1] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1E8);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27();
  if (!v3)
  {
    OUTLINED_FUNCTION_14();

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_36();
    sub_24E348BA8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_34();
  }

  sub_24E348098();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_2_4(v10, v18);
  v12(v11);

  OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1E8);
  OUTLINED_FUNCTION_3_2();
  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1F0);
  v16 = OUTLINED_FUNCTION_9_0(v15);
  v17(v16);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
}

void sub_24DF8244C()
{
  OUTLINED_FUNCTION_32();
  if (!OUTLINED_FUNCTION_1_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE210);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_3_2();
    v5 = OUTLINED_FUNCTION_24();
    v6(v5);
    *v0 = v2;
    v0[1] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE200);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27();
  if (!v3)
  {
    OUTLINED_FUNCTION_14();

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_36();
    sub_24E348BA8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_34();
  }

  sub_24E348098();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_2_4(v10, v18);
  v12(v11);

  OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE200);
  OUTLINED_FUNCTION_3_2();
  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE208);
  v16 = OUTLINED_FUNCTION_9_0(v15);
  v17(v16);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
}

void sub_24DF826A4()
{
  OUTLINED_FUNCTION_32();
  if (!OUTLINED_FUNCTION_1_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE228);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_3_2();
    v5 = OUTLINED_FUNCTION_24();
    v6(v5);
    *v0 = v2;
    v0[1] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE218);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27();
  if (!v3)
  {
    OUTLINED_FUNCTION_14();

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_36();
    sub_24E348BA8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_34();
  }

  sub_24E348098();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_2_4(v10, v18);
  v12(v11);

  OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE218);
  OUTLINED_FUNCTION_3_2();
  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE220);
  v16 = OUTLINED_FUNCTION_9_0(v15);
  v17(v16);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
}

void sub_24DF828FC()
{
  OUTLINED_FUNCTION_32();
  if (!OUTLINED_FUNCTION_1_8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DE240);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_3_2();
    v5 = OUTLINED_FUNCTION_24();
    v6(v5);
    *v0 = v2;
    v0[1] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27();
  if (!v3)
  {
    OUTLINED_FUNCTION_14();

    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_36();
    sub_24E348BA8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_34();
  }

  sub_24E348098();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_2_4(v10, v18);
  v12(v11);

  OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230);
  OUTLINED_FUNCTION_3_2();
  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE238);
  v16 = OUTLINED_FUNCTION_9_0(v15);
  v17(v16);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24DF82B70(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_24DF82B94(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_24DF82BE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24DF82C2C()
{
  result = qword_27F1DE1C8;
  if (!qword_27F1DE1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE1C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24DF82D00(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.Presentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DF82DD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24DF82DE4(uint64_t a1, id *a2)
{
  result = sub_24E347CD8();
  *a2 = 0;
  return result;
}

uint64_t sub_24DF82E5C(uint64_t a1, id *a2)
{
  v3 = sub_24E347CE8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24DF82EE8@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_19();
  *a1 = result;
  return result;
}

uint64_t sub_24DF82F10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8_1(a1);
  result = sub_24DF8C164(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_24DF82F50()
{
  v1 = OUTLINED_FUNCTION_11();
  result = CGSizeMake(v1, v2, v3, v4);
  *v0 = result;
  return result;
}

_DWORD *sub_24DF82F78@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24DF82F88()
{
  v1 = OUTLINED_FUNCTION_21();
  result = CGSizeMake(v1, v2, v3, v4);
  *v0 = result;
  return result;
}

uint64_t sub_24DF82FBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DF82B60(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_24DF82FEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DF82B68(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_24DF8301C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24DF82B70(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24DF83050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24DF82B94(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24DF8308C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DF82BBC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_24DF830FC()
{
  v0 = sub_24E347CF8();
  v1 = MEMORY[0x25303E9D0](v0);

  return v1;
}

uint64_t sub_24DF83134()
{
  sub_24E347CF8();
  sub_24E347DC8();
}

uint64_t sub_24DF8318C()
{
  sub_24E347CF8();
  sub_24E348D18();
  sub_24E347DC8();
  v0 = sub_24E348D68();

  return v0;
}

uint64_t sub_24DF83224@<X0>(_DWORD *a1@<X8>)
{
  result = sub_24DF8C108();
  *a1 = result;
  return result;
}

uint64_t sub_24DF8324C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_24DF8C110(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_24DF832AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24DF832BC(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE5B0, type metadata accessor for Size);
  v3 = sub_24DF82BE4(&qword_27F1DE5B8, type metadata accessor for Size);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF83378@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24DF8213C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_24DF833AC(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE5A0, type metadata accessor for SystemDesign);
  v3 = sub_24DF82BE4(&qword_27F1DE5A8, type metadata accessor for SystemDesign);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF83468(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE640, type metadata accessor for UIContentSizeCategory);
  v3 = sub_24DF82BE4(&qword_27F1DE648, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF83524(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE590, type metadata accessor for Context);
  v3 = sub_24DF82BE4(&qword_27F1DE598, type metadata accessor for Context);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF835E0(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE5D0, type metadata accessor for Key);
  v3 = sub_24DF82BE4(&qword_27F1DE5D8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF8369C(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE580, type metadata accessor for CALayerContentsGravity);
  v3 = sub_24DF82BE4(&qword_27F1DE588, type metadata accessor for CALayerContentsGravity);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF83758(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE7C0, type metadata accessor for AIDAServiceType);
  v3 = sub_24DF82BE4(&qword_27F1DE7C8, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF83814(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE5C0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_24DF82BE4(&qword_27F1DE5C8, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF838D0(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE7D0, type metadata accessor for _ASCLockupKey);
  v3 = sub_24DF82BE4(&qword_27F1DE7D8, type metadata accessor for _ASCLockupKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24DF8398C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24E347CB8();

  *a1 = v2;
  return result;
}

uint64_t sub_24DF839D4(uint64_t a1)
{
  v2 = sub_24DF82BE4(&qword_27F1DE7E0, type metadata accessor for TemplateKey);
  v3 = sub_24DF82BE4(&qword_27F1DE7E8, type metadata accessor for TemplateKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_24DF83A90()
{
  result = qword_27F1DE1D8;
  if (!qword_27F1DE1D8)
  {
    sub_24E345608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE1D8);
  }

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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24DF84884()
{
  sub_24E347CF8();
  v0 = sub_24E347CB8();

  return v0;
}

void sub_24DF848F8(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_1_8()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

void OUTLINED_FUNCTION_4_1()
{
  strcpy((v0 - 96), "View.task @ ");
  *(v0 - 83) = 0;
  *(v0 - 82) = -5120;

  JUMPOUT(0x25303E950);
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_24E3455F8();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t OUTLINED_FUNCTION_14()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_24E348998();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_24E345528();
}

uint64_t OUTLINED_FUNCTION_20()
{
  *(v3 - 128) = v2;
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;

  return sub_24E345608();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_24E3456D8();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_24E348098();
}

uint64_t OUTLINED_FUNCTION_34()
{
}

void OUTLINED_FUNCTION_35()
{

  JUMPOUT(0x25303E950);
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x25303E950);
}

__n128 sub_24DF84D8C()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D22A30];
  v22 = MEMORY[0x277D839F8];
  v23 = MEMORY[0x277D22A30];
  *&v21 = 0x4040000000000000;
  if (qword_27F1DE030 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F20BC90);
  (*(*(v6 - 8) + 16))(v3, v7, v6);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v19 = sub_24E3444F8();
  v20 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v18);
  v16 = v0;
  v17 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  (*(v1 + 8))(v3, v0);
  v16 = sub_24E3442F8();
  v17 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24E3442E8();
  qword_27F1DE9C0 = v4;
  unk_27F1DE9C8 = v5;
  qword_27F1DE9A8 = 0x4014000000000000;
  qword_27F1DE9E8 = v4;
  unk_27F1DE9F0 = v5;
  qword_27F1DE9D0 = 0x4030000000000000;
  qword_27F1DEA10 = v4;
  unk_27F1DEA18 = v5;
  qword_27F1DE9F8 = 0x4020000000000000;
  sub_24DE56CE8(&v21, &unk_27F1DE930);
  sub_24DE56CE8(&v18, &unk_27F1DE958);
  sub_24DE56CE8(&v15, &unk_27F1DE980);
  xmmword_27F1DEA20 = xmmword_24E369920;
  unk_27F1DEA30 = xmmword_24E369920;
  qword_27F1DEA40 = 0x4054000000000000;
  __asm { FMOV            V0.2D, #20.0 }

  xmmword_27F1DEA48 = result;
  return result;
}

double sub_24DF85004()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D22A30];
  v18 = MEMORY[0x277D839F8];
  v19 = MEMORY[0x277D22A30];
  *&v17 = 0x4050000000000000;
  if (qword_27F1DE030 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F20BC90);
  (*(*(v6 - 8) + 16))(v3, v7, v6);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v15 = sub_24E3444F8();
  v16 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v14);
  v12 = v0;
  v13 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  (*(v1 + 8))(v3, v0);
  v12 = sub_24E3442F8();
  v13 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v11);
  sub_24E3442E8();
  qword_27F1DEAE8 = v4;
  unk_27F1DEAF0 = v5;
  qword_27F1DEAD0 = 0x4000000000000000;
  qword_27F1DEB10 = v4;
  unk_27F1DEB18 = v5;
  qword_27F1DEAF8 = 0x4030000000000000;
  qword_27F1DEB38 = v4;
  unk_27F1DEB40 = v5;
  qword_27F1DEB20 = 0x4030000000000000;
  sub_24DE56CE8(&v17, &unk_27F1DEA58);
  sub_24DE56CE8(&v14, &unk_27F1DEA80);
  sub_24DE56CE8(&v11, &unk_27F1DEAA8);
  xmmword_27F1DEB48 = xmmword_24E369930;
  unk_27F1DEB58 = xmmword_24E369930;
  result = 88.0;
  xmmword_27F1DEB68 = xmmword_24E369940;
  qword_27F1DEB78 = 0x4034000000000000;
  return result;
}

double sub_24DF8527C()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D22A30];
  v18 = MEMORY[0x277D839F8];
  v19 = MEMORY[0x277D22A30];
  *&v17 = 0x4030000000000000;
  if (qword_27F1DE030 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F20BC90);
  (*(*(v6 - 8) + 16))(v3, v7, v6);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v15 = sub_24E3444F8();
  v16 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v14);
  v12 = v0;
  v13 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  (*(v1 + 8))(v3, v0);
  v12 = sub_24E3442F8();
  v13 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v11);
  sub_24E3442E8();
  qword_27F1DEC10 = v4;
  unk_27F1DEC18 = v5;
  qword_27F1DEBF8 = 0x4014000000000000;
  qword_27F1DEC38 = v4;
  unk_27F1DEC40 = v5;
  qword_27F1DEC20 = 0x4030000000000000;
  qword_27F1DEC60 = v4;
  unk_27F1DEC68 = v5;
  qword_27F1DEC48 = 0x4020000000000000;
  sub_24DE56CE8(&v17, &unk_27F1DEB80);
  sub_24DE56CE8(&v14, &unk_27F1DEBA8);
  sub_24DE56CE8(&v11, &unk_27F1DEBD0);
  xmmword_27F1DEC70 = xmmword_24E369920;
  unk_27F1DEC80 = xmmword_24E369920;
  result = 72.0;
  xmmword_27F1DEC90 = xmmword_24E369950;
  qword_27F1DECA0 = 0x4034000000000000;
  return result;
}

__n128 sub_24DF854F8()
{
  v15 = MEMORY[0x277D839F8];
  v16 = MEMORY[0x277D22A30];
  *&v14 = 0x4028000000000000;
  v12 = MEMORY[0x277D839F8];
  v13 = MEMORY[0x277D22A30];
  v10 = MEMORY[0x277D22A30];
  *&v11 = 0x4036000000000000;
  v9 = MEMORY[0x277D839F8];
  *&v8 = 0x4034000000000000;
  v6 = sub_24E3442F8();
  v7 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v5);
  sub_24E3442E8();
  xmmword_27F1DECA8 = xmmword_24E369960;
  unk_27F1DECB8 = xmmword_24E369970;
  xmmword_27F1DECC8 = vdupq_n_s64(0x4048000000000000uLL);
  sub_24DE56CE8(&v14, &unk_27F1DECD8);
  sub_24DE56CE8(&v11, &unk_27F1DED00);
  sub_24DE56CE8(&v8, &unk_27F1DED28);
  sub_24DE56CE8(&v5, &unk_27F1DED50);
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F1DED78 = result;
  return result;
}

id sub_24DF855D4()
{
  type metadata accessor for BundleImage();
  result = sub_24E18ECC8(0xD000000000000020, 0x800000024E39D600, 0);
  qword_27F1DED88 = result;
  return result;
}

id sub_24DF85624()
{
  type metadata accessor for BundleImage();
  result = sub_24E18ECC8(0xD000000000000010, 0x800000024E39D630, 0);
  qword_27F1DED90 = result;
  return result;
}

uint64_t GKMultiplayerParticipantCollectionViewCell.sharePlayEnabled.getter()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_sharePlayEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void GKMultiplayerParticipantCollectionViewCell.sharePlayEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_sharePlayEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_24DF857E0();
}

uint64_t sub_24DF85788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_sharePlayEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24DF857E0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_sharePlayEnabled;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView;
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView);
  if (*(v0 + v1) == 1)
  {
    v4 = [v3 layer];
    [v4 setCornerRadius_];

    [*(v0 + v2) setClipsToBounds_];
    v5 = *(v0 + v2);
    v6 = qword_27F1DD5B8;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F1DED90;
  }

  else
  {
    v9 = qword_27F1DD5B0;
    v7 = v3;
    if (v9 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F1DED88;
  }

  [v7 setImage_];
}

void (*GKMultiplayerParticipantCollectionViewCell.sharePlayEnabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_9_1();
  return sub_24DF85974;
}

void sub_24DF85974(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24DF857E0();
  }
}

char *sub_24DF859A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_sharePlayEnabled] = 0;
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView] = 0;
  v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette] = 0;
  v20 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_removeButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_27F1DE030 != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_27F20BC90);
  v22 = *(v16 + 16);
  v22(v19, v21, v14);
  *&v5[v20] = sub_24E28C8D0(v19);
  v23 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_focusGuide;
  *&v5[v23] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon] = 0;
  v24 = &v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler];
  *v24 = 0;
  v24[1] = 0;
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_layoutMode] = 0;
  v25 = &v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus];
  *v25 = xmmword_24E369980;
  v25[16] = 3;
  v22(v13, v21, v14);
  OUTLINED_FUNCTION_10_1();
  v26 = type metadata accessor for DynamicTypeLabel();
  v27 = objc_allocWithZone(v26);
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_nameLabel] = OUTLINED_FUNCTION_2_5();
  if (qword_27F1DE038 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v14, qword_27F20BCA8);
  v22(v13, v28, v14);
  OUTLINED_FUNCTION_10_1();
  v29 = objc_allocWithZone(v26);
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel] = OUTLINED_FUNCTION_2_5();
  if (qword_27F1DD5B0 != -1)
  {
    swift_once();
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView] = v30;
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView] = OUTLINED_FUNCTION_6_3(objc_allocWithZone(GKDashboardPlayerPhotoView));
  v31 = OUTLINED_FUNCTION_3_3();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = GKGetLocalizedStringFromTableInBundle();

  v34 = sub_24E347CF8();
  v36 = v35;

  v37 = objc_allocWithZone(type metadata accessor for GKMultiplayerStatusView());
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_statusAccessoryView] = sub_24E0C77D8(v34, v36, 0);
  v38 = *&v5[v20];
  v39 = objc_allocWithZone(type metadata accessor for VibrancyHostView());
  v40 = v38;
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_vibrantRemoveButton] = sub_24E300F20(v40, MEMORY[0x277D84F90], 0);
  *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_contentBackgroundView] = OUTLINED_FUNCTION_6_3(objc_allocWithZone(MEMORY[0x277D75D18]));
  v82.receiver = v5;
  v82.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v82, sel_initWithFrame_, a1, a2, a3, a4);
  v81 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_nameLabel;
  v42 = *&v41[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_nameLabel];
  v43 = objc_opt_self();
  v44 = v41;
  v45 = v42;
  v46 = [v43 labelColor];
  [v45 setTextColor_];

  v47 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel;
  v48 = *&v44[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel];
  v49 = [v43 secondaryLabelColor];
  [v48 setTextColor_];

  v50 = [*&v44[v47] layer];
  [v50 setCompositingFilter_];

  v51 = v44;
  v52 = [v51 contentView];
  v53 = GKIsXRUIIdiom();
  v54 = 14.0;
  if (v53)
  {
    v54 = 16.0;
  }

  [v52 _setContinuousCornerRadius_];

  v55 = OUTLINED_FUNCTION_4_2();
  v56 = [v43 clearColor];
  [v55 setBackgroundColor_];

  v57 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_contentBackgroundView;
  v58 = [*&v51[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_contentBackgroundView] layer];
  if (qword_27F1DDDB8 != -1)
  {
    swift_once();
  }

  v59 = [qword_27F20B7E0 CGColor];
  [v58 setBackgroundColor_];

  [*&v51[v57] _setContinuousCornerRadius_];
  v60 = [*&v51[v57] layer];
  [v60 setCompositingFilter_];

  v61 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView;
  [*&v51[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView] setAvatarSize_];
  [*&v51[v61] setTranslatesAutoresizingMaskIntoConstraints_];
  v62 = OUTLINED_FUNCTION_4_2();
  [v62 addSubview_];

  v63 = OUTLINED_FUNCTION_4_2();
  [v63 addSubview_];

  v64 = OUTLINED_FUNCTION_4_2();
  [v64 addSubview_];

  v65 = OUTLINED_FUNCTION_4_2();
  [v65 addSubview_];

  v66 = OUTLINED_FUNCTION_4_2();
  [v66 addSubview_];

  v67 = OUTLINED_FUNCTION_4_2();
  [v67 addSubview_];

  sub_24DF86250();
  v68 = OUTLINED_FUNCTION_4_2();

  v69 = [v68 layer];
  [v69 setAllowsGroupBlending_];

  v70 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_focusGuide;
  v71 = *&v51[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_focusGuide];
  v72 = v51;
  [v72 addLayoutGuide_];
  v73 = *&v51[v70];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_24E369990;
  v75 = *&v72[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_removeButton];
  *(v74 + 32) = v75;
  v76 = v75;
  sub_24DFD7FD0(v74, v73);
  v77 = objc_opt_self();
  v78 = *&v51[v70];
  [v77 _gkInstallEdgeConstraintsForLayoutGuide_containedWithinParentView_];

  return v72;
}

void sub_24DF86250()
{
  v1 = sub_24E344158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_removeButton];
  [v5 addTarget:v0 action:sel_didTapRemoveButton_ forControlEvents:0x2000];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v5 setTintColor_];

  [v5 setContentEdgeInsets_];
  v7 = &v5[OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin];
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  *(v7 + 1) = _Q0;
  v13 = MEMORY[0x277D76988];
  if (!GKIsPadUIIdiom() && !GKIsXRUIIdiom())
  {
    v13 = MEMORY[0x277D769D0];
  }

  v14 = *v13;
  v15 = *MEMORY[0x277D74400];
  *v4 = v14;
  v4[1] = v15;
  (*(v2 + 104))(v4, *MEMORY[0x277D22688], v1);
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v16 = v14;
  v17 = [v0 traitCollection];
  v18 = MEMORY[0x25303F0C0](v4, v17);

  (*(v2 + 8))(v4, v1);
  v19 = [objc_opt_self() configurationWithFont_];
  sub_24DF88A8C(0, &qword_280BE0110);
  v20 = v19;
  v21 = sub_24E0AC60C(0x6B72616D78, 0xE500000000000000, v19);
  if (v21)
  {
    v22 = v21;
    [v5 setImage:v22 forState:0];
  }
}

void sub_24DF86540()
{
  v1 = v0;
  v2 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_sharePlayEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_removeButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_27F1DE030 != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_27F20BC90);
  (*(v4 + 16))(v7, v9, v2);
  *(v1 + v8) = sub_24E28C8D0(v7);
  v10 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_focusGuide;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon) = 0;
  v11 = (v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_layoutMode) = 0;
  v12 = v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus;
  *v12 = xmmword_24E369980;
  *(v12 + 16) = 3;
  sub_24E348AE8();
  __break(1u);
}

id sub_24DF86748()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette) == 1 && (v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView)) != 0)
  {
    return v1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView);
  }
}

id sub_24DF86780()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView;
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView];
  if (v3)
  {
    sub_24DF88A8C(0, &qword_280BE0110);
    v4 = v3;
    v5 = sub_24DFD29F8();
    [v4 setImage_];

    v6 = v4;
    [v6 setContentMode_];
    v7 = [objc_opt_self() whiteColor];
    v8 = [v7 colorWithAlphaComponent_];

    [v6 setTintColor_];
    v9 = [v6 layer];

    [v9 setCompositingFilter_];
    v10 = [v1 contentView];
    [v10 addSubview_];

    v11 = *&v1[v2] != 0;
  }

  else
  {
    v11 = 0;
  }

  [*&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView] setHidden_];

  return [v1 setNeedsLayout];
}

void sub_24DF86954(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_silhouetteView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24DF86780();
}

void sub_24DF869D8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette) != (a1 & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette))
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
    }

    else
    {
      v2 = 0;
    }

    sub_24DF86954(v2);
  }
}

void sub_24DF86A50(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_shouldDisplaySilhouette) = a1;
  sub_24DF869D8(v2);
}

id sub_24DF86A68()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView;
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView) removeFromSuperview];
  v2 = *(v0 + v1);

  return [v2 setHidden_];
}

id sub_24DF86ABC(id result)
{
  if (v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon] != (result & 1))
  {
    v2 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView;
    [*&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView] setHidden_];
    v3 = [v1 contentView];
    [v3 addSubview_];

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_24DF86B70(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon);
  sub_24DF86A68();
  *(v1 + v3) = a1;

  return sub_24DF86ABC(v4);
}

void sub_24DF86BC0()
{
  v1 = [v0 contentView];
  [v1 addSubview_];
}

void sub_24DF86C24(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_statusAccessoryView) removeFromSuperview];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_statusAccessoryView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_statusAccessoryView) = a1;
  v4 = a1;

  sub_24DF86BC0();
}

uint64_t GKMultiplayerParticipantCollectionViewCell.tapHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1);
  return v2;
}

uint64_t sub_24DF86DA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t GKMultiplayerParticipantCollectionViewCell.tapHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6);
}

uint64_t sub_24DF86EFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24DF88B04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4);
}

uint64_t sub_24DF86F9C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DF88ACC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_24DE56C38(v3);
  return sub_24DE73FA0(v8);
}

id sub_24DF870B8(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_layoutMode];
  *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_layoutMode] = result;
  if (*&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_layoutMode] != v2)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id GKMultiplayerParticipantCollectionViewCell.removeButtonHidden.setter(char a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_vibrantRemoveButton) setHidden_];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_focusGuide);

  return [v3 setEnabled_];
}

id (*GKMultiplayerParticipantCollectionViewCell.removeButtonHidden.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_vibrantRemoveButton) isHidden];
  return sub_24DF87264;
}

id GKMultiplayerParticipantCollectionViewCell.apply(participant:number:isRemovingEnabled:isInvitingEnabled:layoutMode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_24DF870B8(a5);
  v8 = a1;
  v30 = sub_24DFDC2AC(v8, a2);
  v10 = v9;
  v11 = sub_24DFDC55C(v8, a2);
  sub_24DFDC670(v8, __src);
  v12 = *__src;
  v13 = *&__src[8];
  v14 = __src[16];
  v15 = [v8 type];
  v16 = &selRef_applyTextStyle_;
  v17 = [v11 contact];
  if (v17)
  {
    v18 = v17;
LABEL_3:

    v19 = 1;
    goto LABEL_4;
  }

  if (!v11)
  {

LABEL_23:
    v18 = 0;
    v19 = -1;
    goto LABEL_4;
  }

  v25 = [v11 internal];
  v18 = [v25 &selRef_bytes];

  if (v18)
  {
    v16 = &selRef_applyTextStyle_;
    goto LABEL_3;
  }

  v18 = [v11 internal];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  if (v18)
  {
    v16 = &selRef_applyTextStyle_;
    if (v15 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v16 = &selRef_applyTextStyle_;
LABEL_4:
  *__src = v30;
  *&__src[8] = v10;
  *&__src[16] = 0;
  *&__src[24] = 0;
  *&__src[32] = v11;
  *&__src[40] = v12;
  *&__src[48] = v13;
  __src[56] = v14;
  *&__src[57] = v33[0];
  *&__src[60] = *(v33 + 3);
  *&__src[64] = v18;
  __src[72] = v19;
  memcpy(__dst, __src, 0x49uLL);
  sub_24DF87530(__dst);
  v20 = *&v5[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_vibrantRemoveButton];
  v21 = [v8 player];
  if (v21)
  {

    result = [v8 player];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = [result isLocalPlayer];
  }

  else
  {
    v24 = 0;
  }

  [v20 setHidden_];
  v26 = [v8 player];
  if (v26 && (v27 = v26, v28 = [v26 v16[398]], v27, v28))
  {

    v29 = 1;
  }

  else
  {
    v29 = [v8 isSharePlayInvitee];
  }

  sub_24DF86B70(v29);
  [v5 setNeedsLayout];
  return sub_24DF88740(__src);
}

id sub_24DF87530(uint64_t *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v18 = *a1;
  v20 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a1 + 56);
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_nameLabel];
  if (v3)
  {
    v10 = sub_24E347CB8();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel];
  if (v5)
  {
    v12 = sub_24E347CB8();
  }

  else
  {
    v12 = 0;
  }

  [v11 setText_];

  v22[0] = v19;
  v22[1] = v3;
  v22[2] = v4;
  v22[3] = v5;
  v22[4] = v21;
  v22[5] = v6;
  v22[6] = v7;
  v23 = v8;
  v24 = *(a1 + 57);
  sub_24DF87730(v22);
  v13 = &v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus];
  v14 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus];
  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus + 8];
  *v13 = v6;
  *(v13 + 1) = v7;
  v16 = v13[16];
  v13[16] = v8;
  sub_24DF889B4(v6, v7, v8);
  sub_24DF889CC(v14, v15, v16);
  sub_24DF86A50(0);
  [*&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView] setPlayer_];

  return [v1 setNeedsLayout];
}

void sub_24DF87730(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  switch(*(a1 + 56))
  {
    case 0:
    case 2:
      objc_allocWithZone(type metadata accessor for GKMultiplayerStatusView());

      v3 = v2;
      v4 = v1;
      v5 = 0;
      break;
    case 1:
      objc_allocWithZone(type metadata accessor for GKMultiplayerStatusView());

      v3 = v2;
      v4 = v1;
      v5 = 1;
      break;
    case 3:
      if (v1 | v2)
      {
        goto LABEL_6;
      }

      v14 = objc_allocWithZone(type metadata accessor for GKMultiplayerStatusView());
      v3 = 0;
      v4 = 0;
      v5 = 2;
      break;
    default:
LABEL_6:
      v6 = sub_24E347CB8();
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = GKGetLocalizedStringFromTableInBundle();

      v9 = sub_24E347CF8();
      v11 = v10;

      v12 = objc_allocWithZone(type metadata accessor for GKMultiplayerStatusView());
      v3 = v9;
      v4 = v11;
      v5 = 0;
      break;
  }

  v13 = sub_24E0C77D8(v3, v4, v5);

  sub_24DF86C24(v13);
}

Swift::Void __swiftcall GKMultiplayerParticipantCollectionViewCell.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v42 = v4;
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  objc_msgSendSuper2(&v60, sel_layoutSubviews);
  v6 = [v1 contentView];
  [v6 bounds];
  OUTLINED_FUNCTION_8_2();

  v7 = OUTLINED_FUNCTION_7_2();
  [v8 v9];
  v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_layoutMode];
  v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_nameLabel];
  v40 = v11;
  if (v10)
  {
    [v11 setNumberOfLines_];
    sub_24E0AEE20(1);
    v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel];
    sub_24E0AEE20(1);
    if (qword_27F1DD5A8 != -1)
    {
      swift_once();
    }

    sub_24DF88794(&xmmword_27F1DECA8, v44);
    v13 = sub_24DF86748();
    v14 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v15 = MEMORY[0x277D22A58];
    v55 = v14;
    v56 = MEMORY[0x277D22A58];
    *&v54 = v13;
    v52 = type metadata accessor for DynamicTypeLabel();
    v53 = MEMORY[0x277D22A68];
    *&v51 = v11;
    v49 = v52;
    v50 = v15;
    *&v48 = v12;
    v16 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_statusAccessoryView];
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v46 = type metadata accessor for GKMultiplayerStatusView();
    v47 = v15;
    *&v45 = v16;
    if (v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon] == 1)
    {
      v17 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView];
      v18 = sub_24DF88A8C(0, &qword_27F1DFF00);
      v20 = v17;
      v19 = MEMORY[0x277D22A58];
    }

    v58 = &unk_286123618;
    v59 = sub_24DF887F0();
    v21 = swift_allocObject();
    *&v57 = v21;
    v22 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_vibrantRemoveButton];
    v21[58] = type metadata accessor for VibrancyHostView();
    v21[59] = v15;
    v21[55] = v22;
    memcpy(v21 + 2, v44, 0xE0uLL);
    sub_24DE56CE8(&v54, (v21 + 30));
    sub_24DE56CE8(&v51, (v21 + 35));
    sub_24DE56CE8(&v48, (v21 + 40));
    sub_24DE56CE8(&v45, (v21 + 45));
    v21[50] = v17;
    v21[51] = 0;
    v21[52] = 0;
    v21[53] = v18;
    v21[54] = v19;
  }

  else
  {
    v23 = [objc_opt_self() mainScreen];
    [v23 bounds];
    OUTLINED_FUNCTION_8_2();

    v61.origin.x = OUTLINED_FUNCTION_7_2();
    if (CGRectGetHeight(v61) <= 320.0)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    [v11 setNumberOfLines_];
    v25 = [v1 traitCollection];
    v26 = sub_24E3483C8();

    if (v26)
    {
      sub_24E0AEE20(1);
      v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel];
      sub_24E0AEE20(1);
    }

    else
    {
      [v11 setTextAlignment_];
      v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_subtitleLabel];
      [v12 setTextAlignment_];
    }

    sub_24DF87EA4(v44);
    v27 = sub_24DF86748();
    v55 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v56 = MEMORY[0x277D22A58];
    *&v54 = v27;
    v52 = type metadata accessor for DynamicTypeLabel();
    v53 = MEMORY[0x277D22A68];
    *&v51 = v11;
    v49 = v52;
    v50 = MEMORY[0x277D22A68];
    *&v48 = v12;
    v16 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_statusAccessoryView];
    v39 = type metadata accessor for GKMultiplayerStatusView();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    if (v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_displaysInviteeSourceIcon] == 1)
    {
      v30 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_messagesIconView];
      v29 = sub_24DF88A8C(0, &qword_27F1DFF00);
      v31 = v30;
      v28 = MEMORY[0x277D22A58];
    }

    v58 = &type metadata for GKMultiplayerCollectionViewCellVerticalLayout;
    v59 = sub_24DF888D4();
    v32 = swift_allocObject();
    *&v57 = v32;
    v22 = *&v1[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_vibrantRemoveButton];
    v32[67] = type metadata accessor for VibrancyHostView();
    v33 = MEMORY[0x277D22A58];
    v32[68] = MEMORY[0x277D22A58];
    v32[64] = v22;
    memcpy(v32 + 2, v44, 0x128uLL);
    sub_24DE56CE8(&v54, (v32 + 39));
    sub_24DE56CE8(&v51, (v32 + 44));
    sub_24DE56CE8(&v48, (v32 + 49));
    v32[54] = v16;
    v32[57] = v39;
    v32[58] = v33;
    v32[59] = v30;
    v32[60] = 0;
    v32[61] = 0;
    v32[62] = v29;
    v32[63] = v28;
  }

  sub_24DE56CE8(&v57, v44);
  v34 = v40;
  v35 = v12;
  v36 = v16;
  v37 = v22;
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  [v1 bounds];
  v38 = v41;
  sub_24E344978();
  (*(v42 + 8))(v38, v43);
  sub_24DF87F98();
  __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_24DF87EA4@<X0>(uint64_t a1@<X8>)
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DD598 != -1)
    {
      swift_once();
    }

    v2 = &unk_27F1DEA58;
  }

  else if (GKIsPadUIIdiom())
  {
    if (qword_27F1DD590 != -1)
    {
      swift_once();
    }

    v2 = &unk_27F1DE930;
  }

  else
  {
    if (qword_27F1DD5A0 != -1)
    {
      swift_once();
    }

    v2 = &unk_27F1DEB80;
  }

  return sub_24DF88B30(v2, a1);
}

void sub_24DF87F98()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_removeButton);
  [v1 bounds];
  Width = CGRectGetWidth(v7);
  [v1 bounds];
  v3 = (Width - CGRectGetHeight(v8)) * 0.5;
  [v1 bounds];
  v10 = CGRectInset(v9, v3, 0.0);
  v4 = [objc_opt_self() bezierPathWithOvalInRect_];
  v5 = [objc_opt_self() effectWithPath_];

  [v1 setFocusEffect_];
}

Swift::Void __swiftcall GKMultiplayerParticipantCollectionViewCell.prepareForReuse()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_prepareForReuse);
  [*&v0[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_avatarView] setPlayer_];
  v1 = OUTLINED_FUNCTION_3_3();
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  v4 = sub_24E347CF8();
  v6 = v5;

  v7 = objc_allocWithZone(type metadata accessor for GKMultiplayerStatusView());
  v8 = sub_24E0C77D8(v4, v6, 0);
  sub_24DF86C24(v8);
  sub_24DF86B70(0);
  sub_24DF86A50(0);
}

uint64_t sub_24DF88240()
{
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_viewStatus + 16);
  if (v2 == 2)
  {
    goto LABEL_14;
  }

  if (v2 == 3)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 == 1;
    }

    if (v5)
    {
      v6 = (v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
      result = swift_beginAccess();
      v8 = *v6;
      if (!*v6)
      {
        return result;
      }

      v9 = 2;
LABEL_16:

      v8(v9);
      return sub_24DE73FA0(v8);
    }
  }

  else
  {
    v3 = *v1;
    v4 = *(v1 + 8);
  }

  v28 = v3;
  v29 = v4;
  v30 = v2;
  sub_24DF889B4(v3, v4, v2);
  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = sub_24E347CF8();
  v15 = v14;

  *&v31 = v13;
  *(&v31 + 1) = v15;
  v32 = 1;
  LOBYTE(v13) = static GKMultiplayerViewStatus.== infix(_:_:)(&v28, &v31);
  sub_24DF889CC(v31, *(&v31 + 1), v32);
  sub_24DF889CC(v28, v29, v30);
  if (v13 & 1) != 0 || (v16 = *(v1 + 8), v17 = *(v1 + 16), v28 = *v1, v29 = v16, v30 = v17, sub_24DF889B4(v28, v16, v17), v18 = sub_24E347CB8(), v19 = GKGameCenterUIFrameworkBundle(), v20 = GKGetLocalizedStringFromTableInBundle(), v18, v19, v21 = sub_24E347CF8(), v23 = v22, v20, *&v31 = v21, *(&v31 + 1) = v23, v32 = 1, LOBYTE(v21) = static GKMultiplayerViewStatus.== infix(_:_:)(&v28, &v31), sub_24DF889CC(v31, *(&v31 + 1), v32), sub_24DF889CC(v28, v29, v30), (v21) || (v24 = *(v1 + 8), v25 = *(v1 + 16), v28 = *v1, v29 = v24, v30 = v25, v31 = xmmword_24E3699A0, v32 = 1, sub_24DF889B4(v28, v24, v25), v26 = static GKMultiplayerViewStatus.== infix(_:_:)(&v28, &v31), sub_24DF889CC(v31, *(&v31 + 1), v32), result = sub_24DF889CC(v28, v29, v30), v26))
  {
LABEL_14:
    v27 = (v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell_tapHandler);
    result = swift_beginAccess();
    v8 = *v27;
    if (!*v27)
    {
      return result;
    }

    v9 = 1;
    goto LABEL_16;
  }

  return result;
}

id GKMultiplayerParticipantCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24DF887F0()
{
  result = qword_27F1DEDE8;
  if (!qword_27F1DEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEDE8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24DF888D4()
{
  result = qword_27F1DEDF8;
  if (!qword_27F1DEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEDF8);
  }

  return result;
}

uint64_t sub_24DF8894C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DF889B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_24DF889CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL GKIsPadUIIdiom()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_24DF88A8C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24DF88ACC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
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

char *OUTLINED_FUNCTION_2_5()
{

  return sub_24E0AEF24(v0, 0, 1, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_24E347CB8();
}

id OUTLINED_FUNCTION_4_2()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_6_3(void *a1)
{

  return [a1 (v1 + 760)];
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t get_enum_tag_for_layout_string_5JetUI10LayoutView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DF88D28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_24DF88D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DF88DFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_24DF88E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24DF88EB4()
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_6_4();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_0_16(v0);
  OUTLINED_FUNCTION_2_6();
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_3_4();
  v4(v5);
  OUTLINED_FUNCTION_0_16(v0 + 5);
  OUTLINED_FUNCTION_2_6();
  v6 = OUTLINED_FUNCTION_3_4();
  v4(v6);
  sub_24DF8968C((v0 + 26), &v15);
  if (v16)
  {
    sub_24DF88BF0(&v15, v17);
    OUTLINED_FUNCTION_0_16(v0 + 11);
    OUTLINED_FUNCTION_2_6();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_3_4();
    v4(v9);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_24E3440E8();
    v11 = v8 + v10;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24DF896FC(&v15);
    v11 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
  v12 = sub_24E344058();
  v13 = 0.0;
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
    sub_24E3440E8();
  }

  return v11 + v13;
}

uint64_t sub_24DF890D4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_6_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_4_3(v4 + 11);
  OUTLINED_FUNCTION_1_10();
  sub_24E344198();
  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_3_4();
  v12(v13);
  sub_24DF89628(v4, v51);
  sub_24DF89628((v4 + 5), v50);
  OUTLINED_FUNCTION_4_3(v4 + 16);
  OUTLINED_FUNCTION_1_10();
  sub_24E344198();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_3_4();
  v12(v16);
  v17 = sub_24DF88EB4();
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v45 = a4;
  v52.size.height = a4;
  v18 = CGRectGetMidX(v52) + v17 * -0.5;
  sub_24DF8968C((v4 + 26), &v46);
  v19 = v47;
  if (v47)
  {
    sub_24DF88BF0(&v46, v48);
    __swift_project_boxed_opaque_existential_1(v48, v49);
    OUTLINED_FUNCTION_5_3();
    CGRectGetWidth(v53);
    sub_24E3440E8();
    v43 = v15;
    v21 = v20;
    v23 = v22;
    OUTLINED_FUNCTION_4_3(v51);
    OUTLINED_FUNCTION_1_10();
    sub_24E344198();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_3_4();
    v12(v26);
    __swift_project_boxed_opaque_existential_1(v48, v49);
    sub_24E348508();
    sub_24E344088();
    v54.origin.x = v18;
    v41 = v43 + v25 - v23;
    v54.origin.y = v41;
    v44 = v21;
    v54.size.width = v21;
    v42 = v23;
    v54.size.height = v23;
    CGRectGetMaxX(v54);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    sub_24DF896FC(&v46);
    v41 = 0.0;
    v44 = 0.0;
    v42 = 0.0;
  }

  OUTLINED_FUNCTION_5_3();
  CGRectGetMaxX(v55);
  __swift_project_boxed_opaque_existential_1(v4 + 21, v4[24]);
  v56.origin.x = OUTLINED_FUNCTION_8_3();
  v56.size.width = a3;
  v56.size.height = a4;
  CGRectGetHeight(v56);
  sub_24E3440D8();
  v28 = v27;
  v30 = v29;
  v57.origin.x = OUTLINED_FUNCTION_8_3();
  v57.size.width = a3;
  v57.size.height = a4;
  MinY = CGRectGetMinY(v57);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  sub_24E3441B8();
  v33 = MinY + v32;
  __swift_project_boxed_opaque_existential_1(v4 + 21, v4[24]);
  OUTLINED_FUNCTION_8_3();
  sub_24E348508();
  sub_24E344088();
  if (v19)
  {
    v34 = v41;
  }

  else
  {
    v34 = v33;
  }

  if (v19)
  {
    v35 = v44;
  }

  else
  {
    v35 = v28;
  }

  if (v19)
  {
    v36 = v42;
  }

  else
  {
    v36 = v30;
  }

  v37 = v18;
  CGRectGetMinX(*(&v34 - 1));
  v58.origin.x = OUTLINED_FUNCTION_8_3();
  v58.size.width = a3;
  v58.size.height = v45;
  CGRectGetMinY(v58);
  OUTLINED_FUNCTION_0_16(v51);
  OUTLINED_FUNCTION_1_10();
  sub_24E344198();
  v38 = OUTLINED_FUNCTION_3_4();
  v12(v38);
  OUTLINED_FUNCTION_0_16(v50);
  OUTLINED_FUNCTION_1_10();
  sub_24E344198();
  v39 = OUTLINED_FUNCTION_3_4();
  v12(v39);
  sub_24E343FE8();
  __swift_destroy_boxed_opaque_existential_1(v50);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_24DF89628(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24DF8968C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF896FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_16(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_24E344198();
}

uint64_t OUTLINED_FUNCTION_4_3(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

uint64_t sub_24DF89868(double a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  MaxX = CGRectGetMaxX(*&a1);
  v13 = *(a9 + 16);
  if (v13)
  {
    v14 = MaxX;
    v15 = floor((1.0 - a7) * a5);
    v16 = (a9 + 32);
    do
    {
      v19.origin.x = OUTLINED_FUNCTION_0_17();
      CGRectGetMinY(v19);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      OUTLINED_FUNCTION_0_17();
      sub_24E348508();
      sub_24E344088();
      v14 = v14 - v15;
      v16 += 5;
      --v13;
    }

    while (v13);
  }

  OUTLINED_FUNCTION_0_17();

  return sub_24E343FD8();
}

double AchievementCardLayout.Metrics.badgeMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = result;
  return result;
}

uint64_t AchievementCardLayout.Metrics.init(size:increasedSize:borderWidth:cornerRadius:horizontalMargin:badgeSize:badgeMetrics:badgeTopSpace:releaseStateIconPadding:titleTopSpace:subtitleTopSpace:friendsViewBottomSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_3_5();
  v17 = v16;
  v28 = *v18;
  v19 = *(v18 + 2);
  *v16 = v20;
  v16[1] = v21;
  v16[2] = v22;
  v16[3] = v23;
  v16[4] = v24;
  v16[5] = v25;
  sub_24DE56CE8(v26, (v16 + 6));
  v17[11] = v15;
  v17[12] = v14;
  sub_24DE56CE8(v13, (v17 + 16));
  *(v17 + 13) = v28;
  v17[15] = v19;
  v17[21] = a9;
  v17[22] = a10;
  sub_24DE56CE8(v12, (v17 + 23));
  result = sub_24DE56CE8(v11, (v17 + 28));
  v17[33] = a11;
  return result;
}

uint64_t AchievementCardLayout.Metrics.init(size:borderWidth:cornerRadius:horizontalMargin:badgeSize:badgeMetrics:badgeTopSpace:releaseStateIconPadding:titleTopSpace:subtitleTopSpace:friendsViewBottomSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_3_5();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v28 = *v20;
  v21 = *(v20 + 2);
  *v18 = v22;
  *(v18 + 8) = v23;
  *(v18 + 16) = round(v22 * 1.33);
  *(v18 + 24) = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = v25;
  sub_24DE56CE8(v26, v18 + 48);
  *(v19 + 88) = v17;
  *(v19 + 96) = v15;
  sub_24DE56CE8(v11, v19 + 128);
  *(v19 + 104) = v28;
  *(v19 + 120) = v21;
  *(v19 + 168) = v13;
  *(v19 + 176) = v12;
  sub_24DE56CE8(v10, v19 + 184);
  result = sub_24DE56CE8(v9, v19 + 224);
  *(v19 + 264) = a9;
  return result;
}

double AchievementCardLayout.Metrics.init(size:cornerRadius:horizontalMargin:badgeSize:badgeMetrics:badgeTopSpace:releaseStateIconPadding:titleTopSpace:subtitleTopSpace:friendsViewBottomSpace:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>)
{
  v27 = *a2;
  v25 = *(a2 + 2);
  sub_24DF89628(a1, a6 + 48);
  sub_24DF89628(a3, a6 + 128);
  sub_24DF89628(a4, a6 + 184);
  sub_24DF89628(a5, a6 + 224);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = round(a7 * 1.33);
  *(a6 + 24) = a8;
  *(a6 + 32) = 0x4000000000000000;
  *(a6 + 40) = a9;
  *(a6 + 88) = a10;
  *(a6 + 96) = a11;
  *(a6 + 104) = v27;
  *(a6 + 120) = v25;
  *(a6 + 168) = a12;
  *(a6 + 176) = a13;
  result = a14;
  *(a6 + 264) = a14;
  return result;
}

uint64_t AchievementCardLayout.init(metrics:achievementView:titleText:subtitleText:friendsView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_24DF89DB4(a1, a6 + 160);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24E3440B8();
  sub_24DF89DEC(a1);
  sub_24DE56CE8(a3, a6 + 40);
  sub_24DE56CE8(a4, a6 + 80);
  sub_24DE56CE8(a5, a6 + 120);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t AchievementCardLayout.placeChildren(relativeTo:in:)()
{
  v1 = v0;
  v2 = sub_24E344648();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v40 = v4 - v3;
  v45 = sub_24E344658();
  OUTLINED_FUNCTION_2_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v44 = sub_24E3445E8();
  OUTLINED_FUNCTION_2_7();
  v12 = v11;
  v47 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v43 = sub_24E3446A8();
  OUTLINED_FUNCTION_2_7();
  v42 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v41 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  *(swift_allocObject() + 16) = xmmword_24E369B70;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v12 + 104))(v16, *MEMORY[0x277D227D0], v44);
  (*(v6 + 104))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24E367D20;
  sub_24E344618();
  *&v49 = v21;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  OUTLINED_FUNCTION_5_4();
  v46 = *(v48 + 8);
  v46(v40, v2);
  (*(v6 + 8))(v10, v45);
  (*(v47 + 8))(v16, v44);
  sub_24DF8A960(&v52);
  v22 = v1[8];
  v23 = v1[9];
  v24 = __swift_project_boxed_opaque_existential_1(v1 + 5, v22);
  *(&v53 + 1) = v22;
  v54 = *(v23 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  OUTLINED_FUNCTION_9_2();
  v26();
  OUTLINED_FUNCTION_6_5();
  v27();
  *(OUTLINED_FUNCTION_4_4() + 16) = xmmword_24E367D20;
  sub_24E344618();
  OUTLINED_FUNCTION_1_11();
  sub_24E3487E8();
  OUTLINED_FUNCTION_5_4();
  v46(v40, v2);
  OUTLINED_FUNCTION_8_4();
  v28();
  OUTLINED_FUNCTION_7_4();
  v29();
  sub_24DF8A960(&v49);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v30 = v1[13];
  v31 = v1[14];
  v32 = __swift_project_boxed_opaque_existential_1(v1 + 10, v30);
  *(&v53 + 1) = v30;
  v54 = *(v31 + 8);
  v33 = __swift_allocate_boxed_opaque_existential_1(&v52);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  OUTLINED_FUNCTION_9_2();
  v34();
  OUTLINED_FUNCTION_6_5();
  v35();
  *(OUTLINED_FUNCTION_4_4() + 16) = xmmword_24E367D20;
  sub_24E344618();
  OUTLINED_FUNCTION_1_11();
  sub_24E3487E8();
  OUTLINED_FUNCTION_5_4();
  v46(v40, v2);
  OUTLINED_FUNCTION_8_4();
  v36();
  OUTLINED_FUNCTION_7_4();
  v37();
  sub_24DF8A960(&v49);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  sub_24E344668();
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24E3440D8();
  v55.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetWidth(v55);
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  v56.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMaxY(v56);
  sub_24E344088();
  if (qword_27F1DDC28 != -1)
  {
    swift_once();
  }

  v38 = sub_24E3444F8();
  __swift_project_value_buffer(v38, qword_27F20B488);
  sub_24E3444E8();
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  sub_24E344168();
  sub_24E3444E8();
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  sub_24E344168();
  sub_24E3484F8();
  sub_24E344608();
  return (*(v42 + 8))(v41, v43);
}

unint64_t sub_24DF8A8A4()
{
  result = qword_27F1E5D20;
  if (!qword_27F1E5D20)
  {
    sub_24E344648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D20);
  }

  return result;
}

unint64_t sub_24DF8A8FC()
{
  result = qword_27F1E5D30;
  if (!qword_27F1E5D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DEE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D30);
  }

  return result;
}

uint64_t sub_24DF8A960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DF8A9E8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24DF8AC94();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24DF8AA5C()
{
  result = qword_27F1DEE50;
  if (!qword_27F1DEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEE50);
  }

  return result;
}

uint64_t sub_24DF8AAB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_24DF8AAF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DF8ABC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_24DF8AC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24DF8AC94()
{
  result = qword_27F1DEE58;
  if (!qword_27F1DEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEE58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return sub_24E344678();
}

uint64_t type metadata accessor for FriendsListAction()
{
  result = qword_27F1DEE60;
  if (!qword_27F1DEE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DF8AE58()
{
  result = sub_24E347208();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DF8AEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24E347208();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24DF8AF68(uint64_t *a1, int a2)
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

uint64_t sub_24DF8AFA8(uint64_t result, int a2, int a3)
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

uint64_t sub_24DF8AFF4()
{
  type metadata accessor for ProfilePrivacyProfileSection();
  result = swift_allocObject();
  *(result + 16) = 270;
  return result;
}

uint64_t sub_24DF8B020(void *a1)
{
  v51 = a1;
  v1 = sub_24E347458();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v57 = v4 - v3;
  v5 = sub_24E347478();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v55 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  v56 = &v50 - v11;
  v54 = sub_24E3433A8();
  v12 = *(v54 - 8);
  v13 = MEMORY[0x28223BE20](v54);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = type metadata accessor for ProfilePrivacyAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = (v20 - v19);
  v22 = sub_24E32C0B8();
  v23 = sub_24E347CF8();
  v25 = v24;
  v26 = sub_24E347CF8();
  ActionMetrics.init(domain:eventType:)(v23, v25, v26, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v21 = v22;
  v21[1] = sub_24DF8BC80;
  v21[2] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_24E367D20;
  v30 = OUTLINED_FUNCTION_5_5();
  v31 = GKGameCenterUIFrameworkBundle();
  v32 = GKGetLocalizedStringFromTableInBundle();

  v53 = sub_24E347CF8();
  v34 = v33;

  v60[0] = sub_24DF8B9D0(v51);
  v60[1] = v35;
  v61 = 5;
  if (sub_24E32C1A8())
  {
    LODWORD(v51) = [objc_opt_self() _gkIsOnline];
  }

  else
  {
    LODWORD(v51) = 0;
  }

  v59[3] = v17;
  v59[4] = sub_24DF8BCEC(&qword_27F1EAE30, type metadata accessor for ProfilePrivacyAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  sub_24DF8BC88(v21, boxed_opaque_existential_1);
  sub_24E343398();
  v37 = v54;
  (*(v12 + 16))(v52, v16, v54);
  sub_24DF8BCEC(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v12 + 8))(v16, v37);
  v38 = type metadata accessor for DetailData();
  *(v29 + 56) = v38;
  *(v29 + 64) = sub_24DF8BCEC(&qword_27F1DEE80, type metadata accessor for DetailData);
  v39 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
  *(v39 + 25) = 0u;
  v39[27] = 0;
  *(v39 + 23) = 0u;
  v40 = *(v38 + 56);
  v54 = v40;
  v41 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v39 + v40, 1, 1, v41);
  v42 = v39 + *(v38 + 60);
  sub_24DF8BD34(v58, v39);
  *(v39 + 40) = 1;
  v43 = v53;
  v39[6] = v53;
  v39[7] = v34;
  v39[9] = 0;
  v39[10] = 0;
  v39[8] = 0;
  sub_24DF8BD90(v60, (v39 + 11), &qword_27F1DEE88);
  v39[20] = 0;
  v39[21] = 0;
  *(v39 + 176) = 0;
  *(v39 + 177) = v51;
  *v42 = 0;
  v42[8] = 0;

  sub_24DF8BDF0(v59, (v39 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v45 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x74656C63696863;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v45;
  *(inited + 80) = 0x6973736572706D69;
  v46 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v46;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v45;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v45;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v43;
  *(inited + 200) = v34;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v47 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v47);
  v48 = v56;
  sub_24E347488();
  sub_24DF8BE60(v58);
  sub_24DF8BFF4(v60, &qword_27F1DEE88);
  sub_24DF8BFF4(v59, &qword_27F1DEE90);
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v41);
  sub_24DF8BEB4(v48, v39 + v54);
  sub_24DF8BF24(v21);
  return v29;
}

void sub_24DF8B738()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E24DFFC();
  }
}

double sub_24DF8B78C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v6 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = type metadata accessor for Shelf.Presentation(0);
  v8 = (a1 + v7[5]);
  v9 = OUTLINED_FUNCTION_5_5();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v15 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  memset(v24, 0, 57);
  *v8 = v12;
  v8[1] = v14;
  sub_24DF8BBD0(v24, (v8 + 3));
  v16 = type metadata accessor for FooterData(0);
  sub_24DF8BD90(v5, v8 + *(v16 + 28), &qword_27F1DEE70);
  v17 = [objc_opt_self() labelColor];
  sub_24DF8BC2C(v24);
  sub_24DF8BFF4(v5, &qword_27F1DEE70);
  v8[2] = v17;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  v18 = a1 + v7[11];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  v20 = a1 + v7[12];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a1 + v7[13]);
  v22 = (a1 + v7[14]);
  v23 = (a1 + v7[15]);
  *(a1 + v7[6]) = 1;
  *v21 = 0;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  *(a1 + v7[7]) = 1;
  *(a1 + v7[8]) = 1;
  *(a1 + v7[9]) = 1;
  *(a1 + v7[10]) = 0;
  return result;
}

uint64_t sub_24DF8B9D0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v74, __src, sizeof(v74));
  v3 = sub_24DF8BF80(v74);
  if (v3 == 1)
  {
    return 0;
  }

  v12 = v74[10];
  if (LODWORD(v74[10]) == 2 || LODWORD(v74[10]) == 1 || !LODWORD(v74[10]))
  {
    v13 = OUTLINED_FUNCTION_0_18(v3, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73[0]);
    OUTLINED_FUNCTION_6_6(v13, v14, v15, v16, v17, v18, v19, v20, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73[0]);
    v21 = sub_24E347CB8();
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = OUTLINED_FUNCTION_1_12();

    v11 = sub_24E347CF8();
    sub_24DF8BFF4(__src, &qword_27F1DEEA0);
    return v11;
  }

  type metadata accessor for GKProfilePrivacyVisibility(0);
  HIDWORD(v71) = v12;
  v25 = memcpy(v73, __dst, sizeof(v73));
  OUTLINED_FUNCTION_6_6(v25, v26, v27, v28, v29, v30, v31, v32, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73[0]);
  result = sub_24E348C58();
  __break(1u);
  return result;
}

uint64_t sub_24DF8BC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfilePrivacyAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF8BCEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DF8BD90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24DF8BDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF8BEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF8BF24(uint64_t a1)
{
  v2 = type metadata accessor for ProfilePrivacyAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DF8BF80(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DF8BFF4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

void *OUTLINED_FUNCTION_0_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst)
{

  return memcpy(&__dst, (v29 - 192), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_24DF8BF98(&a29, &a10);
}

CGSize __swiftcall NSAttributedString._gkSizeThatFits(_:)(CGSize a1)
{
  [v1 boundingRectWithSize:9 options:0 context:{a1.width, a1.height}];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

BOOL sub_24DF8C118(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t *sub_24DF8C17C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347458();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E347478();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_24E3433A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  memcpy(v68, __src, sizeof(v68));
  v18 = 0;
  if (sub_24DF8BF80(v68) != 1)
  {
    v63 = __src;
    v19 = v68[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24E367D20;
    v62 = v4;
    memcpy(v67, __dst, sizeof(v67));
    sub_24DF8BF98(v67, v66);
    v20 = sub_24E347CB8();
    v60 = v7;
    v21 = v20;
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = GKGetLocalizedStringFromTableInBundle();
    v61 = v10;
    v24 = v23;

    v25 = sub_24E347CF8();
    v58 = v26;
    v59 = v25;

    memset(v66, 0, 64);
    v66[64] = -1;
    v27 = [v19 playerID];
    v28 = sub_24E347CF8();
    v55 = v29;
    v56 = v28;

    v54 = sub_24E347CF8();
    v31 = v30;
    v32 = v12;
    v33 = sub_24E347CF8();
    v35 = v34;
    v36 = type metadata accessor for FriendsListAction();
    v65[3] = v36;
    v65[4] = sub_24DF8C8A4(&qword_27F1DEEA8, type metadata accessor for FriendsListAction);
    v37 = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
    v39 = v31;
    v18 = v57;
    ActionMetrics.init(domain:eventType:)(v54, v39, v33, v35);
    v40 = v55;
    *boxed_opaque_existential_1 = v56;
    boxed_opaque_existential_1[1] = v40;
    *(boxed_opaque_existential_1 + 8) = 2;
    *(boxed_opaque_existential_1 + *(v36 + 32)) = 0;
    sub_24E343398();
    (*(v32 + 16))(v15, v37, v11);
    sub_24DF8C8A4(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v32 + 8))(v37, v11);
    v41 = type metadata accessor for DetailData();
    v18[7] = v41;
    v18[8] = sub_24DF8C8A4(&qword_27F1DEE80, type metadata accessor for DetailData);
    v42 = __swift_allocate_boxed_opaque_existential_1(v18 + 4);
    *(v42 + 25) = 0u;
    v42[27] = 0;
    *(v42 + 23) = 0u;
    v43 = *(v41 + 56);
    v44 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v42 + v43, 1, 1, v44);
    v45 = v42 + *(v41 + 60);
    sub_24DF8BD34(v64, v42);
    *(v42 + 40) = 1;
    v47 = v58;
    v46 = v59;
    v42[6] = v59;
    v42[7] = v47;
    v42[9] = 0;
    v42[10] = 0;
    v42[8] = 0;
    sub_24DF8C8EC(v66, (v42 + 11));
    v42[20] = 0;
    v42[21] = 0;
    *(v42 + 88) = 256;
    *v45 = 0;
    v45[8] = 0;

    sub_24DF8BDF0(v65, (v42 + 23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_24E369E30;
    strcpy((v48 + 32), "impressionType");
    *(v48 + 47) = -18;
    v49 = MEMORY[0x277D837D0];
    *(v48 + 48) = 0x74656C63696863;
    *(v48 + 56) = 0xE700000000000000;
    *(v48 + 72) = v49;
    *(v48 + 80) = 0x6973736572706D69;
    v50 = MEMORY[0x277D83B88];
    *(v48 + 88) = 0xEF7865646E496E6FLL;
    *(v48 + 96) = 0;
    *(v48 + 120) = v50;
    *(v48 + 128) = 0x657079546469;
    *(v48 + 136) = 0xE600000000000000;
    *(v48 + 144) = 0x636974617473;
    *(v48 + 152) = 0xE600000000000000;
    *(v48 + 168) = v49;
    *(v48 + 176) = 1701667182;
    *(v48 + 216) = v49;
    *(v48 + 184) = 0xE400000000000000;
    *(v48 + 192) = v46;
    *(v48 + 200) = v47;

    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v51 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v51);
    v52 = v61;
    sub_24E347488();
    sub_24DF8BE60(v64);
    sub_24DF8C95C(v66, &qword_27F1DEE88);
    sub_24DF8C95C(v65, &qword_27F1DEE90);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v44);
    sub_24DF8BEB4(v52, v42 + v43);
    sub_24DF8C95C(v63, &qword_27F1DEEA0);
  }

  return v18;
}

uint64_t sub_24DF8C8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DF8C8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF8C95C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for GKImpressionsSnapshotMetricsFieldsProvider()
{
  result = qword_27F1DEEB0;
  if (!qword_27F1DEEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DF8CA30()
{
  result = sub_24E347918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DF8CA9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_24E3479F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24DF8CB10(uint64_t a1)
{
  v2 = sub_24E343368();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24E3475C8();
  if (result)
  {
    swift_getObjectType();
    sub_24E343358();
    v7 = sub_24E347538();
    (*(v3 + 8))(v5, v2);
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEEC0);
    v8[0] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24E3475A8();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

uint64_t sub_24DF8CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DF8CD84;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

uint64_t sub_24DF8CD84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_24DF8CF4C(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_24E344158();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_13_0();
  v10 = __swift_project_value_buffer(v8, v9);
  v14 = *a3;
  v11 = *a4;
  *v10 = *a3;
  v10[1] = v11;
  OUTLINED_FUNCTION_22_0();
  (*(v12 + 104))();

  return v14;
}

char *sub_24DF8CFFC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  if (*a1 != -1)
  {
    OUTLINED_FUNCTION_13_0();
    swift_once();
  }

  v7 = sub_24E344158();
  __swift_project_value_buffer(v7, a2);
  OUTLINED_FUNCTION_22_0();
  (*(v8 + 16))(v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v9 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v10 = sub_24E0AEF24(v6, 0, 1, 0, 1, 0);
  [v10 setMaximumContentSizeCategory_];
  return v10;
}

void NavigationDoubleHeaderView.titleText.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_titleLabel);
  if (a2)
  {
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

uint64_t (*NavigationDoubleHeaderView.titleText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = NavigationDoubleHeaderView.titleText.getter();
  a1[1] = v3;
  return sub_24DF8D23C;
}

id sub_24DF8D26C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_24DF8D2F8(void *a1)
{
  v2 = [*(v1 + *a1) text];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_24E347CF8();

  return v4;
}

void sub_24DF8D37C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_24E347CF8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t NavigationDoubleHeaderView.subtitleText.setter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_subtitleLabel);
  if (a2)
  {
    OUTLINED_FUNCTION_13_0();
    v8 = sub_24E347CB8();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  if ([v7 jet_isTextExtraTall])
  {
    if (qword_27F1DD5D0 != -1)
    {
      swift_once();
    }

    v9 = qword_27F1DEEF8;
  }

  else
  {
    if (qword_27F1DD5C8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F1DEEE0;
  }

  v10 = sub_24E344158();
  __swift_project_value_buffer(v10, v9);
  OUTLINED_FUNCTION_22_0();
  (*(v11 + 16))(v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  return sub_24E0AED24(v6);
}

uint64_t sub_24DF8D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_13_0();
  return a5(v6);
}

uint64_t (*NavigationDoubleHeaderView.subtitleText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = NavigationDoubleHeaderView.subtitleText.getter();
  a1[1] = v3;
  return sub_24DF8D638;
}

uint64_t sub_24DF8D650(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_13_0();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_13_0();
    return (a3)(v6);
  }
}

id NavigationDoubleHeaderView.titleAlpha.setter(double a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_titleLabel) setAlpha_];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_subtitleLabel);

  return [v3 setAlpha_];
}

id (*NavigationDoubleHeaderView.titleAlpha.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_titleLabel) alpha];
  *a1 = v3;
  return sub_24DF8D834;
}

id NavigationDoubleHeaderView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *NavigationDoubleHeaderView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_titleLabel;
  *(v0 + v2) = OUTLINED_FUNCTION_18_0(&qword_27F1DD5C0, qword_27F1DEEC8);
  v3 = OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_subtitleLabel;
  *(v0 + v3) = OUTLINED_FUNCTION_16_0(&qword_27F1DD5C8, qword_27F1DEEE0);
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView____lazy_storage___layout);
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  v5 = OUTLINED_FUNCTION_28();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, ObjectType);
  v9 = OUTLINED_FUNCTION_7_2();
  [v10 v11];
  [v8 addSubview_];
  [v8 addSubview_];

  return v8;
}

void sub_24DF8D9F4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_titleLabel;
  *(v0 + v1) = OUTLINED_FUNCTION_18_0(&qword_27F1DD5C0, qword_27F1DEEC8);
  v2 = OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_subtitleLabel;
  *(v0 + v2) = OUTLINED_FUNCTION_16_0(&qword_27F1DD5C8, qword_27F1DEEE0);
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView____lazy_storage___layout);
  v3[3] = 0u;
  v3[4] = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  sub_24E348AE8();
  __break(1u);
}

CGSize __swiftcall NavigationDoubleHeaderView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_12_0();
  v2 = sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  sub_24DF8DBEC(v17);
  v9 = [v1 traitCollection];
  sub_24DF8DEDC();
  OUTLINED_FUNCTION_15_0();
  sub_24E344A18();
  v11 = v10;
  v13 = v12;

  (*(v4 + 8))(v8, v2);
  sub_24DF8EFF4(v17);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

void *sub_24DF8DBEC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView____lazy_storage___layout;
  swift_beginAccess();
  sub_24DF8F3A8(v1 + v3, __src, &qword_27F1DEF58);
  if (__src[3])
  {
    return memcpy(a1, __src, 0x50uLL);
  }

  sub_24DF8F34C(__src, &qword_27F1DEF58);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_titleLabel);
  v6 = type metadata accessor for DynamicTypeLabel();
  v7 = MEMORY[0x277D22A70];
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v5;
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26NavigationDoubleHeaderView_subtitleLabel);
  a1[8] = v6;
  a1[9] = v7;
  a1[5] = v8;
  sub_24DF8F40C(a1, __src);
  swift_beginAccess();
  v9 = v5;
  v10 = v8;
  sub_24DF8F444(__src, v1 + v3);
  return swift_endAccess();
}

Swift::Void __swiftcall NavigationDoubleHeaderView.layoutSubviews()()
{
  OUTLINED_FUNCTION_21_0();
  ObjectType = swift_getObjectType();
  v2 = sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  sub_24DF8DBEC(v10);
  [v0 bounds];
  OUTLINED_FUNCTION_8_2();
  v9 = [v0 traitCollection];
  sub_24DF8DEDC();
  OUTLINED_FUNCTION_7_2();
  sub_24E344A08();

  (*(v4 + 8))(v8, v2);
  sub_24DF8EFF4(v10);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_24DF8DEDC()
{
  v1 = v0;
  v2 = sub_24E3442D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E3442B8();
  sub_24E3442C8();
  (*(v3 + 8))(v5, v2);
  sub_24DF8F3A8(v1 + 40, &v7, &qword_27F1DEF60);
  if (!v8)
  {
    return sub_24DF8F34C(&v7, &qword_27F1DEF60);
  }

  sub_24DE56CE8(&v7, v9);
  sub_24E344298();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void sub_24DF8E08C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E1D9EA8();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A18();
  v1 = OUTLINED_FUNCTION_3_6();
  v2(v1);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E158()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_19_0();
  v0();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_14_0();
  sub_24E344A18();
  OUTLINED_FUNCTION_8_2();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E21C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E0D6F88(v1);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A18();
  v2 = OUTLINED_FUNCTION_3_6();
  v3(v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E2D0()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24DF9E938();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A18();
  v1 = OUTLINED_FUNCTION_3_6();
  v2(v1);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E39C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24DF9D578(v1);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A18();
  v2 = OUTLINED_FUNCTION_3_6();
  v3(v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E468()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_19_0();
  v0();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_14_0();
  sub_24E344A18();
  OUTLINED_FUNCTION_8_2();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E52C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E250F80(v1);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A18();
  v2 = OUTLINED_FUNCTION_3_6();
  v3(v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E5E0()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_12_0();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E00CFFC();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A18();
  v1 = OUTLINED_FUNCTION_3_6();
  v2(v1);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_20_0();
}

double sub_24DF8E694()
{
  v0 = sub_24E3442D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF8DEDC();
  sub_24E344A18();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

void sub_24DF8E7D4()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E1D9EA8();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A08();
  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E8A4()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_19_0();
  v0();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_14_0();
  sub_24E344A08();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8E968()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E0D6F88(v1);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A08();
  v2 = OUTLINED_FUNCTION_11_0();
  v3(v2);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8EA20()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24DF9E938();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A08();
  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8EAF0()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24DF9D578(v1);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A08();
  v2 = OUTLINED_FUNCTION_11_0();
  v3(v2);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8EBC0()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_19_0();
  v0();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_14_0();
  sub_24E344A08();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8EC84()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E250F80(v1);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A08();
  v2 = OUTLINED_FUNCTION_11_0();
  v3(v2);
  OUTLINED_FUNCTION_20_0();
}

void sub_24DF8ED3C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_29();
  sub_24E3449C8();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_20();
  sub_24E00CFFC();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_10_2();
  sub_24E344A08();
  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_24DF8EDF4()
{
  v0 = sub_24E3442D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF8DEDC();
  sub_24E344A08();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24DF8EF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DF8F2F8();

  return MEMORY[0x282180C48](a1, a2, v4);
}

id NavigationDoubleHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NavigationDoubleHeaderView()
{
  result = qword_27F1DEF28;
  if (!qword_27F1DEF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DF8F078()
{
  sub_24DF8F118();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24DF8F118()
{
  if (!qword_27F1DEF38)
  {
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1DEF38);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5JetUI9Placeable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DF8F188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24DF8F1C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24DF8F230()
{
  result = qword_27F1DEF40;
  if (!qword_27F1DEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEF40);
  }

  return result;
}

unint64_t sub_24DF8F288()
{
  result = qword_27F1DEF48;
  if (!qword_27F1DEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEF48);
  }

  return result;
}

unint64_t sub_24DF8F2F8()
{
  result = qword_27F1DEF50;
  if (!qword_27F1DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DEF50);
  }

  return result;
}

uint64_t sub_24DF8F34C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_22_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24DF8F3A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_22_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24DF8F444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
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

char *OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2)
{

  return sub_24DF8CFFC(a1, a2);
}

char *OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2)
{

  return sub_24DF8CFFC(a1, a2);
}

void *sub_24DF8F684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF80);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF88) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24E369B70;
  v4 = v3 + v2;
  v5 = (v4 + v0[14]);
  type metadata accessor for AchievementHighlight();
  sub_24E3472C8();
  v6 = type metadata accessor for AchievementHighlightCollectionViewCell();
  v7 = sub_24DF902E8(&qword_27F1DEF90, type metadata accessor for AchievementHighlightCollectionViewCell);
  *v5 = v6;
  v5[1] = v7;
  v8 = (v4 + v1 + v0[14]);
  type metadata accessor for Achievement();
  sub_24E3472C8();
  v9 = type metadata accessor for AchievementCardCollectionViewCell();
  v10 = sub_24DF902E8(&qword_27F1DEF98, type metadata accessor for AchievementCardCollectionViewCell);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v4 + 2 * v1 + v0[14]);
  type metadata accessor for TitleWithHighlights();
  sub_24E3472C8();
  v12 = type metadata accessor for TitleWithHighlightsCollectionViewCell();
  v13 = sub_24DF902E8(&qword_27F1DEFA0, type metadata accessor for TitleWithHighlightsCollectionViewCell);
  *v11 = v12;
  v11[1] = v13;
  sub_24E3472B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFA8);
  sub_24DF902E8(&qword_27F1DEFB0, MEMORY[0x277D21D58]);
  result = sub_24E347C28();
  off_27F1DEF68 = result;
  return result;
}

uint64_t static GameLayerComponents.componentCells.getter()
{
  if (qword_27F1DD5D8 != -1)
  {
    OUTLINED_FUNCTION_1_14();
  }
}

uint64_t static GameLayerComponents.registerCells(in:)(void *a1)
{
  v41 = a1;
  v46 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v45 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF70);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  if (qword_27F1DD5D8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = off_27F1DEF68 + 64;
    v11 = 1 << *(off_27F1DEF68 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(off_27F1DEF68 + 8);
    v14 = (v11 + 63) >> 6;
    v34[1] = v2 + 16;
    v44 = (v2 + 32);
    v37 = v2;
    v38 = off_27F1DEF68;
    v40 = (v2 + 8);

    v15 = 0;
    v35 = v10;
    v36 = v9;
    v39 = v14;
    if (v13)
    {
      break;
    }

LABEL_6:
    v2 = v42;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF78);
        __swift_storeEnumTagSinglePayload(v2, 1, 1, v32);
        v13 = 0;
        goto LABEL_12;
      }

      v13 = *&v10[8 * v16];
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_1_14();
  }

  while (1)
  {
    v16 = v15;
LABEL_11:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = v17 | (v16 << 6);
    v19 = v37;
    v20 = v38;
    v22 = v45;
    v21 = v46;
    (*(v37 + 16))(v45, v38[6] + *(v37 + 72) * v18, v46);
    v23 = v20[7];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF78);
    v25 = *(v24 + 48);
    v26 = *(v19 + 32);
    v43 = *(v23 + 16 * v18);
    v2 = v42;
    v26(v42, v22, v21);
    *(v2 + v25) = v43;
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v24);
    v10 = v35;
    v9 = v36;
LABEL_12:
    sub_24DF8FCDC(v2, v9);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF78);
    if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
    {
    }

    v28 = v45;
    v29 = v46;
    (*v44)(v45, v9, v46);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24E347288();
    v31 = sub_24E347CB8();

    [v41 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

    (*v40)(v28, v29);
    v14 = v39;
    if (!v13)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_24DF8FCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GameLayerComponents.dequeueCell(for:at:with:asPartOf:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v43 = a3;
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v41 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 + 16);
  v42 = a1;
  v20(v14, a1, v9);
  sub_24DF9005C();
  sub_24E347298();
  sub_24E347288();
  v21 = sub_24E347CB8();

  v22 = sub_24E343488();
  v23 = [a5 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:v22];

  swift_getObjectType();
  v24 = dynamic_cast_existential_1_unconditional(v23);
  v26 = v25;
  [a5 frame];
  v28 = v27;
  [a5 frame];
  if (v29 < v28)
  {
    v28 = v29;
  }

  ObjectType = swift_getObjectType();
  (*(v26 + 24))(v28 < 375.0, ObjectType, v26);
  [a5 frame];
  v32 = v31;
  v34 = v33;
  v35 = [a5 traitCollection];
  v36 = [objc_allocWithZone(type metadata accessor for PageGrid()) initWithSize:v35 traitCollection:{v32, v34}];

  v37 = a6;
  if (!a6)
  {
    v37 = v36;
  }

  v38 = *(v26 + 48);
  v39 = a6;
  v38(v42, v37, v43, v44, ObjectType, v26);

  (*(v16 + 8))(v19, v41);
  return v24;
}

unint64_t sub_24DF9005C()
{
  result = qword_27F1EA1C0;
  if (!qword_27F1EA1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1E1C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA1C0);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

id sub_24DF90108(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  if (v3 == 2 || (!v3 ? (v5 = a2 == 1) : (v5 = 0), v5 && (sub_24E348458() & 1) == 0))
  {
    [v4 setScrollDirection_];
  }

  if (qword_27F1DDC38 != -1)
  {
    swift_once();
  }

  v6 = sub_24E3444F8();
  __swift_project_value_buffer(v6, qword_27F20B4B8);
  sub_24E3444E8();
  [v4 setInterSectionSpacing_];
  return v4;
}

uint64_t getEnumTagSinglePayload for GameLayerComponents(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GameLayerComponents(_BYTE *result, int a2, int a3)
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

uint64_t sub_24DF902E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_once();
}

void sub_24DF90350(uint64_t a1@<X8>)
{
  sub_24E343208();
  OUTLINED_FUNCTION_0_14();
  v89 = v3;
  v90 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v88 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v75 - v8;
  v10 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v23 = v22 - v21;
  sub_24E343018();
  sub_24E343008();
  MEMORY[0x253039B20](0, 0xE000000000000000);
  MEMORY[0x253039B40](47, 0xE100000000000000);
  sub_24E342FA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v19 + 8))(v23, v17);
    sub_24DF90BE4(v9);
    v24 = 1;
  }

  else
  {
    v84 = v17;
    v85 = v19;
    v86 = a1;
    v87 = v16;
    v27 = *(v12 + 32);
    v26 = v12 + 32;
    v25 = v27;
    v27(v16, v9, v10);
    v29 = *v1;
    v28 = *(v1 + 8);
    v31 = *(v1 + 16);
    v30 = *(v1 + 24);
    v32 = *(v1 + 32);
    v33 = v90;
    v83 = v10;
    switch(v32)
    {
      case 1:
        v80 = v28;
        v81 = v29;
        OUTLINED_FUNCTION_7_5();
        goto LABEL_11;
      case 2:
        v80 = v28;
        v81 = v29;
        OUTLINED_FUNCTION_7_5();
        v91 = v39;
        v92 = v40;
        v78 = *MEMORY[0x277CC91D8];
        v77 = *(v33 + 13);
        v82 = v25;
        v41 = OUTLINED_FUNCTION_2_8();
        v42(v41);
        v76 = sub_24DF90C4C();
        OUTLINED_FUNCTION_0_21();
        v79 = v26;
        v38 = v87;
        sub_24E343248();
        v43 = *(v33 + 1);
        v44 = OUTLINED_FUNCTION_6_7();
        (v43)(v44);
        v91 = v31;
        v92 = v30;
        v45 = v78;
        v46 = v77;
        v77(v25, v78, v16);
        OUTLINED_FUNCTION_0_21();
        sub_24E343248();
        v47 = OUTLINED_FUNCTION_6_7();
        (v43)(v47);
        v90 = v43;
        v91 = 0x6F6272656461656CLL;
        v92 = 0xEB00000000647261;
        v46(v25, v45, v16);
        OUTLINED_FUNCTION_0_21();
        sub_24E343248();
        v48 = OUTLINED_FUNCTION_6_7();
        (v43)(v48);
        v91 = v81;
        v92 = v80;
        v46(v25, v45, v16);
        OUTLINED_FUNCTION_0_21();
        sub_24E343248();
        v49 = v25;
        v25 = v82;
        (v90)(v49, v16);
        goto LABEL_12;
      case 3:
        v81 = v29;
        v82 = v25;
        v79 = v26;
        v80 = v28;
        OUTLINED_FUNCTION_7_5();
        v91 = v50;
        v92 = v51;
        v78 = *MEMORY[0x277CC91D8];
        v52 = *(v33 + 13);
        v53 = OUTLINED_FUNCTION_2_8();
        v52(v53);
        sub_24DF90C4C();
        OUTLINED_FUNCTION_0_21();
        v38 = v87;
        sub_24E343248();
        v54 = *(v33 + 1);
        v55 = OUTLINED_FUNCTION_6_7();
        (v54)(v55);
        v91 = v80;
        v92 = v31;
        v80 = v52;
        v77 = (v33 + 104);
        v52(v25);
        OUTLINED_FUNCTION_0_21();
        sub_24E343248();
        v56 = OUTLINED_FUNCTION_6_7();
        v90 = v54;
        (v54)(v56);
        if (v81[2] == 1)
        {
          v57 = v81[5];
          v76 = v81[4];
          v58 = OUTLINED_FUNCTION_5_6(0xEB00000000746E65);
          v59 = v80;
          v80(v58);

          OUTLINED_FUNCTION_0_21();
          sub_24E343248();
          v60 = v90;
          (v90)(v25, v16);
          v91 = v76;
          v92 = v57;
          v38 = v87;
          v59(v25, v78, v16);
          OUTLINED_FUNCTION_0_21();
          sub_24E343248();
          (v60)(v25, v16);
          v61 = OUTLINED_FUNCTION_3_7();
          v62(v61);
        }

        else
        {
          v70 = OUTLINED_FUNCTION_5_6(0xEC00000073746E65);
          v80(v70);
          OUTLINED_FUNCTION_0_21();
          sub_24E343248();
          (v90)(v25, v16);
          v71 = OUTLINED_FUNCTION_3_7();
          v72(v71);
        }

        a1 = v86;
        v25 = v82;
        goto LABEL_16;
      case 4:
        if (v31 | v28 | v29 | v30)
        {
          v91 = 0x776F6E2D79616C70;
          v92 = 0xE800000000000000;
          v36 = OUTLINED_FUNCTION_2_8();
          v37(v36);
          sub_24DF90C4C();
          OUTLINED_FUNCTION_0_21();
          v38 = v87;
          sub_24E343248();
          (*(v33 + 1))(v25, v16);
LABEL_12:
          v68 = OUTLINED_FUNCTION_3_7();
          v69(v68);
          a1 = v86;
        }

        else
        {
          v73 = OUTLINED_FUNCTION_3_7();
          v74(v73);
          a1 = v86;
          v38 = v87;
        }

LABEL_16:
        v10 = v83;
        v25(a1, v38, v83);
        v24 = 0;
        break;
      default:
        v80 = v28;
        v81 = v29;
        v34 = 0x726579616C70;
        v35 = 0xE600000000000000;
LABEL_11:
        v91 = v34;
        v92 = v35;
        LODWORD(v79) = *MEMORY[0x277CC91D8];
        v63 = *(v33 + 13);
        v82 = v25;
        v64 = OUTLINED_FUNCTION_2_8();
        v63(v64);
        sub_24DF90C4C();
        OUTLINED_FUNCTION_0_21();
        v38 = v87;
        sub_24E343248();
        v65 = *(v33 + 1);
        v66 = OUTLINED_FUNCTION_6_7();
        v65(v66);
        v91 = v81;
        v92 = v80;
        (v63)(v25, v79, v16);
        OUTLINED_FUNCTION_0_21();
        sub_24E343248();
        v67 = v25;
        v25 = v82;
        (v65)(v67, v16);
        goto LABEL_12;
    }
  }

  __swift_storeEnumTagSinglePayload(a1, v24, 1, v10);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24DF90BE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24DF90C4C()
{
  result = qword_280BDFB90;
  if (!qword_280BDFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BDFB90);
  }

  return result;
}

void sub_24DF90CA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityFeedRelationshipAchievement();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_7_1();
  v8 = (v7 - v6);
  switch(*(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_brickType))
  {
    case 0:
      OUTLINED_FUNCTION_8_5(4);
      goto LABEL_26;
    case 1:

      OUTLINED_FUNCTION_9_3();
      v14 = v13;

      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = [v14 adamID];

      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = [v15 stringValue];
      sub_24E347CF8();

      OUTLINED_FUNCTION_8_5(1);
      goto LABEL_11;
    case 2:
    case 3:
      if (!*(*(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships) + 16))
      {
        goto LABEL_22;
      }

      sub_24DF90350(a2);
      goto LABEL_11;
    case 4:
      v18 = a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;
      v19 = *(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
      v20 = *(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 8);

      sub_24E150D04(v19, v20);
      v22 = v21;

      if (!v22)
      {
        goto LABEL_22;
      }

      v23 = [v22 bundleIdentifier];

      sub_24E347CF8();
      v24 = *(v18 + 24);
      v25 = *(v24 + 16);
      if (v25)
      {
        v38 = MEMORY[0x277D84F90];

        sub_24E12F080(0, v25, 0);
        v26 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v27 = *(v5 + 72);
        do
        {
          sub_24DF911B8(v26, v8);
          v29 = *v8;
          v28 = v8[1];

          sub_24DF9121C(v8);
          v31 = *(v38 + 16);
          v30 = *(v38 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_24E12F080((v30 > 1), v31 + 1, 1);
          }

          *(v38 + 16) = v31 + 1;
          v32 = v38 + 16 * v31;
          *(v32 + 32) = v29;
          *(v32 + 40) = v28;
          v26 += v27;
          --v25;
        }

        while (v25);
      }

      OUTLINED_FUNCTION_8_5(3);

LABEL_26:
      OUTLINED_FUNCTION_18();
      return;
    case 5:
    case 6:
      v9 = a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;

      OUTLINED_FUNCTION_9_3();
      v11 = v10;

      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = [v11 bundleIdentifier];

      sub_24E347CF8();
      if (*(*(v9 + 16) + 16))
      {

        sub_24DF90350(a2);

LABEL_11:
        OUTLINED_FUNCTION_18();
      }

      else
      {

LABEL_22:
        sub_24E343288();
        OUTLINED_FUNCTION_18();

        __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      }

      return;
    default:
      type metadata accessor for GKPlayerActivityType(0);
      sub_24E348C58();
      __break(1u);
      return;
  }
}

uint64_t sub_24DF911B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedRelationshipAchievement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DF9121C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedRelationshipAchievement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = 0x6D65766569686361;
  *(v2 - 88) = a1;
  return v1;
}

void OUTLINED_FUNCTION_8_5(char a1@<W8>)
{
  *(v2 - 96) = a1;

  sub_24DF90350(v1);
}

void OUTLINED_FUNCTION_9_3()
{

  sub_24E150D04(v0, v1);
}

uint64_t sub_24DF91334()
{
  v0 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = (v5 - v4);
  v7 = sub_24E3444F8();
  __swift_allocate_value_buffer(v7, qword_27F20A8C8);
  __swift_project_value_buffer(v7, qword_27F20A8C8);
  v8 = *MEMORY[0x277D76918];
  *v6 = *MEMORY[0x277D76918];
  (*(v2 + 104))(v6, *MEMORY[0x277D22620], v0);
  v12[3] = v0;
  v12[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v10 = v8;
  sub_24E344508();
  return (*(v2 + 8))(v6, v0);
}

char *sub_24DF9148C(double a1, double a2, double a3, double a4)
{
  v9 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277CEC298]) init];
  v17 = *MEMORY[0x277CEC238];
  *&v4[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockupSize] = *MEMORY[0x277CEC238];
  v40.receiver = v4;
  v40.super_class = type metadata accessor for AppStoreLockupView();
  v18 = v17;
  v19 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = qword_27F1DD5E0;
  v21 = v19;
  if (v20 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v22 = sub_24E3444F8();
  __swift_project_value_buffer(v22, qword_27F20A8C8);
  v23 = v21;
  sub_24E343F98();
  OUTLINED_FUNCTION_3_8();
  v25 = v24;

  v26 = *(v11 + 8);
  v26(v15, v9);
  sub_24E343F98();
  OUTLINED_FUNCTION_3_8();
  v28 = v27;

  v26(v15, v9);
  [v23 setLayoutMargins_];

  v29 = OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup;
  [*&v23[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup] setLayoutMargins_];
  v30 = qword_27F1DDB50;
  v31 = *&v23[v29];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setGroup_];

  v32 = qword_27F1DE118;
  v33 = *&v23[v29];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for PlayerCardTheme();
  [v33 setOfferTheme_];

  [v23 addSubview_];
  v35 = *&v23[v29];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 whiteColor];
  [v37 setTintColor_];

  return v23;
}

void sub_24DF91810()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CEC298]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockupSize) = *MEMORY[0x277CEC238];
  sub_24E348AE8();
  __break(1u);
}

id sub_24DF918D8()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for AppStoreLockupView();
  objc_msgSendSuper2(&v36, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [v0 layoutMargins];
  [v1 sizeThatFits_];
  v11 = v10;
  v13 = v12;
  [v0 bounds];
  v15 = v14;
  v17 = v16;
  [v0 layoutMargins];
  v19 = v18;
  v37.origin.x = v20;
  v22 = v15 - v20 - v21;
  v37.size.height = v17 - v19 - v23;
  v37.origin.y = v19;
  v37.size.width = v22;
  MinX = CGRectGetMinX(v37);
  [v0 bounds];
  v26 = v25;
  v28 = v27;
  [v0 layoutMargins];
  v30 = v29;
  v38.origin.x = v31;
  v33 = v26 - v31 - v32;
  v38.size.height = v28 - v30 - v34;
  v38.origin.y = v30;
  v38.size.width = v33;
  [v1 setFrame_];
  return [v1 layoutIfNeeded];
}

id sub_24DF91AA0(uint64_t a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for AppStoreLockupView();
  v7 = objc_msgSendSuper2(&v18, sel_hitTest_withEvent_, a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    v9 = *&v3[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup];
    v10 = v7;
    v11 = [v9 subviews];
    sub_24DF88A8C(0, &qword_27F1E1D30);
    v12 = sub_24E347F08();

    if (sub_24DFD8654(v12))
    {
      sub_24DFFA844(0, (v12 & 0xC000000000000001) == 0, v12);
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25303F560](0, v12);
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v14 = v13;

      v15 = v10;
      v16 = sub_24E348628();

      if (v16)
      {

        return 0;
      }
    }

    else
    {
    }
  }

  return v8;
}

id sub_24DF91C84()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup);
  [v1 setRequest_];

  return [v1 setLockup_];
}

double sub_24DF91CE0(double a1, double a2, uint64_t a3, void *a4)
{
  v25 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(MEMORY[0x277CEC298]) init];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFD8);
  sub_24E347128();

  v13 = sub_24E347CB8();
  [v12 setValue:v29 forKey:v13];

  swift_getKeyPath();
  sub_24E347128();

  v14 = *MEMORY[0x277CEC230];
  swift_getKeyPath();
  v15 = v14;
  sub_24E347128();

  swift_getKeyPath();
  sub_24E347128();

  v16 = objc_allocWithZone(MEMORY[0x277CEC280]);
  v17 = sub_24DF924A4(v31, v15, 0, 0, 0, v29, v30, v27, v28, 0, 0, 0);
  [v12 setLockup_];

  if (qword_27F1DD5E0 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v18 = sub_24E3444F8();
  __swift_project_value_buffer(v18, qword_27F20A8C8);
  swift_getObjectType();
  v19 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();

  v20 = *(v7 + 8);
  v20(v11, v25);
  v21 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();

  v20(v11, v25);
  [v12 measurementsWithFitting:sub_24DFC1764() in:{a1, a2}];
  swift_unknownObjectRelease();
  sub_24E348558();
  v23 = v22;

  return v23;
}

id sub_24DF92080()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFD8);
  sub_24E347128();

  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockupSize];
  *&v0[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockupSize] = v5;

  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup];
  swift_getKeyPath();
  sub_24E347128();

  v3 = sub_24E347CB8();
  [v2 setValue:v5 forKey:v3];

  sub_24DF92198();
  return [v0 setNeedsLayout];
}

id sub_24DF92198()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFD8);
  sub_24E347128();

  v1 = v7;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18AppStoreLockupView_appStoreLockup);
  if (v7)
  {
    [v2 setLockup_];
  }

  else
  {
    sub_24DF88A8C(0, &qword_27F1DEFE0);
    swift_getKeyPath();
    sub_24E347128();

    v3 = *MEMORY[0x277CEC230];
    swift_getKeyPath();
    v4 = v3;
    sub_24E347128();

    v1 = sub_24E1C69D4(0, v4, v6);
    [v2 setRequest_];
  }

  return [v2 setAutomaticallyPresentsProductDetails_];
}

id sub_24DF92300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DF9245C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24DF924A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (a5)
  {
    v18 = sub_24E347CB8();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_24E347CB8();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_24E347CB8();
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    v21 = sub_24E347CB8();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v13 initWithID:a1 kind:a2 icon:a3 heading:v18 title:v19 subtitle:v20 ageRating:v21 offer:a12];

  swift_unknownObjectRelease();
  return v22;
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_24E344198();
}

void sub_24DF9263C()
{
  OUTLINED_FUNCTION_32();
  v1 = type metadata accessor for DashboardSidebarItemData();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI14SidebarSection_items);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_24E12F610(0, v7, 0);
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_24DF95C30(v8, v5, type metadata accessor for DashboardSidebarItemData);
      v10 = *(v5 + 112);
      v11 = *(v5 + 120);
      sub_24DF959BC(v10, v11);
      sub_24DF95C8C(v5, type metadata accessor for DashboardSidebarItemData);
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24E12F610(v12 > 1, v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24DF927CC(char a1, int a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  HIDWORD(v22) = a2;
  v12 = *a3;
  v13 = OBJC_IVAR____TtC12GameCenterUI14SidebarSection_onSelectedItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF010);
  swift_allocObject();
  *(v6 + v13) = sub_24E346F88();
  *(v6 + 24) = v12;
  sub_24DF95B98(a4, v6 + OBJC_IVAR____TtC12GameCenterUI14SidebarSection_requiredData, &qword_27F1DF018);
  v24[0] = v12;
  v14 = v12;
  sub_24DF92918(a4, v24, a5, a6, v15, v16, v17, v18, v22, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10]);
  v20 = v19;

  sub_24DF8BFF4(a4, &qword_27F1DF018);

  *(v7 + OBJC_IVAR____TtC12GameCenterUI14SidebarSection_items) = v20;
  *(v7 + 16) = a1;
  *(v7 + 17) = v23;
  return v7;
}

void sub_24DF92918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  OUTLINED_FUNCTION_4_5(v26);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_1();
  v34 = v33 - v32;
  v35 = *v23;
  sub_24DF95B98(v25, v29, &qword_27F1DF018);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_24DF8BFF4(v29, &qword_27F1DF018);
  }

  else
  {
    sub_24DF95A20(v29, v34, type metadata accessor for DashboardRequiredDataPresenter.Data);
    if (v35)
    {
      sub_24DF92AD8();
    }

    else
    {
      sub_24DF932C8();
    }

    sub_24DF95C8C(v34, type metadata accessor for DashboardRequiredDataPresenter.Data);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24DF92AA4()
{
  if (*(*(v0 + OBJC_IVAR____TtC12GameCenterUI14SidebarSection_items) + 16))
  {
    sub_24E079910();
  }
}

void sub_24DF92AD8()
{
  OUTLINED_FUNCTION_32();
  v89 = v0;
  v90 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_24E347458();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v86 = v9 - v8;
  OUTLINED_FUNCTION_18_1();
  v85 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v84 = v14 - v13;
  OUTLINED_FUNCTION_18_1();
  v83 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v82 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v80 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF020);
  OUTLINED_FUNCTION_4_5(v22);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  v78 = type metadata accessor for DashboardSidebarItemData();
  OUTLINED_FUNCTION_0_14();
  v72 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v77 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v71 = &v69 - v31;
  OUTLINED_FUNCTION_18_1();
  sub_24DF95978();

  v32 = sub_24E1C6A3C();
  v33 = [objc_opt_self() gameRecordForPlayer:v32 game:v5];

  memcpy(v100, (v3 + 16), 0x199uLL);
  v88 = v3;
  memcpy(v99, (v3 + 16), 0x199uLL);
  sub_24DF95B98(v100, v101, &qword_27F1DF030);
  v87 = v5;
  v70 = v33;
  v34 = sub_24DF93A80(v99, v5, v33);
  memcpy(v101, v99, 0x199uLL);
  sub_24DF8BFF4(v101, &qword_27F1DF030);
  v35 = 0;
  v91 = *(v34 + 16);
  v92 = v34;
  v81 = v11;
  v75 = v11 + 8;
  v76 = v11 + 16;
  v73 = (v16 + 8);
  v74 = (v16 + 16);
  v36 = (v34 + 40);
  v93 = MEMORY[0x277D84F90];
  v79 = v25;
  v95 = xmmword_24E367D20;
  while (1)
  {
    if (v91 == v35)
    {

      OUTLINED_FUNCTION_18();
      return;
    }

    if (v35 >= *(v92 + 16))
    {
      break;
    }

    v37 = *(v36 - 1);
    v94 = v36;
    v38 = *v36;
    v39 = OUTLINED_FUNCTION_26_0();
    sub_24DF959BC(v39, v40);
    OUTLINED_FUNCTION_26_0();
    sub_24E2A07FC();
    v41 = sub_24E3488D8();
    v43 = v42;
    sub_24DF8BE60(v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    v44 = swift_allocObject();
    *(v44 + 16) = v95;
    *(v44 + 32) = 0x79546E6F69746361;
    *(v44 + 40) = 0xEA00000000006570;
    *(v44 + 72) = MEMORY[0x277D837D0];
    *(v44 + 48) = 0x657461676976616ELL;
    *(v44 + 56) = 0xE800000000000000;
    v45 = sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      swift_once();
    }

    v46 = sub_24E347058();
    v47 = __swift_project_value_buffer(v46, qword_27F20AE00);
    v48 = v84;
    MEMORY[0x25303DB90](v41, v43, 0x74656C63696863, 0xE700000000000000, v45, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    v49 = v81;
    OUTLINED_FUNCTION_25_0();
    v50 = swift_allocObject();
    *(v50 + 16) = v95;
    v51 = v85;
    (*(v49 + 16))(v50 + v45, v48, v85);
    sub_24E347448();
    v52 = v80;
    sub_24E3471D8();
    (*(v49 + 8))(v48, v51);
    v53 = v83;
    (*v74)(v82, v52, v83);
    v54 = swift_allocObject();
    v55 = v90;
    *(v54 + 16) = v89;
    *(v54 + 24) = v55;
    *(v54 + 32) = v37;
    *(v54 + 40) = v38;
    v97[3] = sub_24E347238();
    v97[4] = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1(v97);
    v56 = OUTLINED_FUNCTION_26_0();
    sub_24DF959BC(v56, v57);

    sub_24E347228();
    v58 = v88;
    memcpy(v98, (v88 + 16), 0x199uLL);
    memcpy(v96, (v88 + 16), 0x199uLL);
    sub_24DF95B98(v98, v99, &qword_27F1DF030);
    v59 = v79;
    sub_24DF93CC4(v58, v96, v97, v35, v37, v38, v79);
    memcpy(v99, v96, 0x199uLL);
    sub_24DF8BFF4(v99, &qword_27F1DF030);
    (*v73)(v52, v53);
    sub_24DF8BFF4(v97, &qword_27F1DEE90);
    v60 = OUTLINED_FUNCTION_26_0();
    sub_24DF959D0(v60, v61);
    if (__swift_getEnumTagSinglePayload(v59, 1, v78) == 1)
    {
      sub_24DF8BFF4(v59, &qword_27F1DF020);
      v62 = v94;
    }

    else
    {
      v63 = v71;
      sub_24DF95A20(v59, v71, type metadata accessor for DashboardSidebarItemData);
      sub_24DF95A20(v63, v77, type metadata accessor for DashboardSidebarItemData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E077170();
        v93 = v67;
      }

      v62 = v94;
      v64 = *(v93 + 16);
      if (v64 >= *(v93 + 24) >> 1)
      {
        sub_24E077170();
        v93 = v68;
      }

      *(v93 + 16) = v64 + 1;
      OUTLINED_FUNCTION_7_6();
      sub_24DF95A20(v77, v65, v66);
    }

    v36 = v62 + 16;
    ++v35;
  }

  __break(1u);
}

void sub_24DF932C8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v5 = type metadata accessor for DashboardSidebarItemData();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E347208();
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  sub_24E3471C8();
  v12 = swift_allocObject();
  v49 = v3;
  *(v12 + 16) = v3;
  *(v12 + 24) = v1;
  v47 = sub_24E347238();
  v56[3] = v47;
  v56[4] = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(v56);
  v50 = v1;

  sub_24E347228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF048);
  OUTLINED_FUNCTION_25_0();
  v51 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24E367D20;
  v15 = v14 + v6;
  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  sub_24DF95B98(v56, v15 + 72, &qword_27F1DEE90);
  v48 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  memcpy(v57, (v52 + *(v48 + 28)), 0x70uLL);
  v22 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v53[0] = 0x7974697669746361;
  v53[1] = 0xE800000000000000;
  sub_24DF95B98(v57, v55, &qword_27F1DF038);
  sub_24E348918();
  *(v15 + 40) = v19;
  *(v15 + 48) = v21;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  memcpy((v15 + 128), v57, 0x70uLL);
  v26 = [objc_opt_self() local];
  v27 = [v26 internal];

  LODWORD(v26) = [v27 isArcadeSubscriber];
  if (v26)
  {
    sub_24E3471C8();
    v28 = swift_allocObject();
    *(v28 + 16) = v49;
    *(v28 + 24) = v50;
    *(v28 + 32) = 0;
    *(v28 + 40) = 4;
    v54[3] = v47;
    v54[4] = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1(v54);

    sub_24E347228();
    v29 = sub_24E347CB8();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();

    v32 = sub_24E347CF8();
    v34 = v33;

    v35 = sub_24E347CB8();
    v36 = GKGameCenterUIFrameworkBundle();
    v37 = GKGetLocalizedStringFromTableInBundle();

    v38 = sub_24E347CF8();
    v40 = v39;

    sub_24DF95B98(v54, v9 + 72, &qword_27F1DEE90);
    memcpy(v55, (v52 + *(v48 + 72)), sizeof(v55));
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
    v53[14] = 0x656461637261;
    v53[15] = 0xE600000000000000;
    sub_24DF95B98(v55, v53, &qword_27F1DF038);
    sub_24E348918();
    *(v9 + 40) = v32;
    *(v9 + 48) = v34;
    *(v9 + 56) = v38;
    *(v9 + 64) = v40;
    *(v9 + 112) = 0;
    *(v9 + 120) = 4;
    memcpy((v9 + 128), v55, 0x70uLL);
    sub_24E077170();
    *(v44 + 16) = 2;
    OUTLINED_FUNCTION_7_6();
    sub_24DF95A20(v9, v45 + v51, v46);
    sub_24DF8BFF4(v54, &qword_27F1DEE90);
  }

  sub_24DF8BFF4(v56, &qword_27F1DEE90);
  OUTLINED_FUNCTION_18();
}