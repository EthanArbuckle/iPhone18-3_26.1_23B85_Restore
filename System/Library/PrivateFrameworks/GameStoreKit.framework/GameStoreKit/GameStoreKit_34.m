Swift::Bool __swiftcall LegacyAppStateController.purchaseHistoryIncludes(_:)(GameStoreKit::AdamId a1)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v13 = *a1.underlyingAdamID._countAndFlagsBits;
  v6 = (v2 + 40);
  v7 = v3 - 1;
  while (1)
  {
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v14[0] = v13;
    v14[1] = v5;
    v10 = *(v8 + 48);
    swift_unknownObjectRetain();
    v10(v15, v14, ObjectType, v8);
    swift_unknownObjectRelease();
    v17[0] = v15[0];
    v17[1] = v15[1];
    v17[2] = v15[2];
    v17[3] = v16;
    if ((v16 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_8;
    }

    if (v16 >> 60 != 1)
    {
      break;
    }

    v11 = v17[0];
    sub_24E601704(v17, &unk_27F22BE00);
    if ((v11 & 1) == 0)
    {
      return 1;
    }

LABEL_8:
    if (v7 == v4)
    {
      return 0;
    }

    ++v4;
    v6 += 2;
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  if (v16 >> 60 != 3)
  {
    sub_24E601704(v17, &unk_27F22BE00);
    goto LABEL_8;
  }

  sub_24E601704(v17, &unk_27F22BE00);
  return 1;
}

Swift::Bool __swiftcall LegacyAppStateController.isLocalApplication(for:includeBetaApps:)(GameStoreKit::AdamId a1, Swift::Bool includeBetaApps)
{
  v3 = 24;
  if (a1.underlyingAdamID._object)
  {
    v3 = 16;
  }

  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v14 = *a1.underlyingAdamID._countAndFlagsBits;

  v7 = 0;
  v8 = (v4 + 40);
  while (1)
  {
    v9 = *v8;
    ObjectType = swift_getObjectType();
    v15[0] = v14;
    v15[1] = v6;
    v11 = *(v9 + 48);
    swift_unknownObjectRetain();
    v11(v16, v15, ObjectType, v9);
    swift_unknownObjectRelease();
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v17;
    if ((v17 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
    {
      break;
    }

LABEL_15:
    if (v5 - 1 == v7)
    {
      goto LABEL_18;
    }

    ++v7;
    v8 += 2;
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_18:

      return 0;
    }
  }

  v12 = v17 >> 60;
  if (v17 >> 60 != 8)
  {
    if (v12 == 2 || v12 == 7)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (*(&v21 + 1) || v17 != 0x8000000000000000 || v18 != 1 || v19 | *(&v18 + 1) | *(&v19 + 1) | v20 | *(&v20 + 1))
  {
LABEL_14:
    sub_24E601704(&v18, &unk_27F22BE00);
    goto LABEL_15;
  }

LABEL_20:
  sub_24E601704(&v18, &unk_27F22BE00);

  return 1;
}

Swift::String_optional __swiftcall LegacyAppStateController.betaAppBundleVersion(for:)(Swift::String_optional result)
{
  v2 = 0;
  v20 = *(result.value._countAndFlagsBits + 8);
  v21 = *result.value._countAndFlagsBits;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  countAndFlagsBits = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v7 = v6 + 2;
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v22[0] = v21;
    v22[1] = v20;
    v10 = *(v8 + 88);
    swift_unknownObjectRetain();
    v11 = v10(v22, ObjectType, v8);
    v13 = v12;
    result.value._countAndFlagsBits = swift_unknownObjectRelease();
    v6 = v7;
    if (v13)
    {
      result.value._countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
      if ((result.value._countAndFlagsBits & 1) == 0)
      {
        result.value._countAndFlagsBits = sub_24E615CF4(0, *(countAndFlagsBits + 16) + 1, 1, countAndFlagsBits);
        countAndFlagsBits = result.value._countAndFlagsBits;
      }

      v15 = *(countAndFlagsBits + 16);
      v14 = *(countAndFlagsBits + 24);
      if (v15 >= v14 >> 1)
      {
        result.value._countAndFlagsBits = sub_24E615CF4((v14 > 1), v15 + 1, 1, countAndFlagsBits);
        countAndFlagsBits = result.value._countAndFlagsBits;
      }

      v5 = v3 + 40;
      *(countAndFlagsBits + 16) = v15 + 1;
      v16 = countAndFlagsBits + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      goto LABEL_2;
    }
  }

  if (*(countAndFlagsBits + 16))
  {
    v17 = *(countAndFlagsBits + 32);
    v18 = *(countAndFlagsBits + 40);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  result.value._countAndFlagsBits = v17;
  result.value._object = v18;
  return result;
}

uint64_t LegacyAppStateController.fetchBetaAppBundleVersion(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_24E970218, 0, 0);
}

uint64_t sub_24E970218(uint64_t a1, uint64_t a2)
{
  v9 = v2;
  v3 = v2[4];
  v8[0] = v2[3];
  v8[1] = v3;
  v4 = v8;
  v5 = LegacyAppStateController.betaAppBundleVersion(for:)(*(&a2 - 1));
  v6 = v2[1];

  return v6(v5.value._countAndFlagsBits, v5.value._object);
}

uint64_t LegacyAppStateController.refreshDataSources(for:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v7 = *v4;
  v8 = sub_24F927D88();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F927DC8();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v23 = v4[9];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a3;
  v17[5] = v15;
  v17[6] = v14;
  v17[7] = v7;
  aBlock[4] = sub_24E9724B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_27_0;
  v19 = _Block_copy(aBlock);

  sub_24F927DA8();
  v26 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v13, v10, v19);
  _Block_release(v19);
  (*(v25 + 8))(v10, v8);
  (*(v11 + 8))(v13, v24);
}

void sub_24E9705C8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F927DE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  if (!*(*(Strong + 24) + 16))
  {

LABEL_9:
    a2(Strong);
    return;
  }

  v36 = v12;
  v17 = Strong;
  v18 = dispatch_group_create();
  v38 = v17;
  v19 = *(*(v17 + 24) + 16);
  if (v19)
  {
    v31 = v15;
    v32 = v10;
    v33 = v9;
    v34 = a3;
    v35 = a2;

    v20 = (v30 + 40);
    v37 = a4;
    do
    {
      v21 = *v20;
      swift_unknownObjectRetain();
      dispatch_group_enter(v18);
      ObjectType = swift_getObjectType();
      v39[0] = v37;
      v39[1] = a5;
      v23 = swift_allocObject();
      *(v23 + 16) = v38;
      *(v23 + 24) = v18;
      v24 = a5;
      v25 = *(v21 + 40);

      v26 = v18;
      v25(v39, sub_24E9727F8, v23, ObjectType, v21);
      a5 = v24;

      swift_unknownObjectRelease();
      v20 += 2;
      --v19;
    }

    while (v19);

    a2 = v35;
    v10 = v32;
    v9 = v33;
    v15 = v31;
  }

  v27 = v36;
  sub_24F927DD8();
  sub_24F927E58();
  v28 = *(v10 + 8);
  v28(v27, v9);
  sub_24F92BE48();
  v29 = (v28)(v15, v9);
  a2(v29);
}

uint64_t LegacyAppStateController.refreshDataSources(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_24F927D88();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F927DC8();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[9];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v6;
  aBlock[4] = sub_24E972528;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  sub_24E5FCA4C(a1);
  sub_24F927DA8();
  v20 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

void sub_24E970B90(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_24F927DE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (*(*(Strong + 16) + 16))
    {
      v31 = v8;
      v14 = dispatch_group_create();
      v15 = *(*(v13 + 16) + 16);
      if (v15)
      {
        v26 = v11;
        v27 = v6;
        v28 = v5;
        v29 = a3;
        v30 = a2;

        v16 = (v25 + 40);
        do
        {
          v17 = *v16;
          swift_unknownObjectRetain();
          dispatch_group_enter(v14);
          ObjectType = swift_getObjectType();
          v19 = swift_allocObject();
          *(v19 + 16) = v13;
          *(v19 + 24) = v14;
          v20 = *(v17 + 32);

          v21 = v14;
          v20(sub_24E972674, v19, ObjectType, v17);
          swift_unknownObjectRelease();

          v16 += 2;
          --v15;
        }

        while (v15);

        a2 = v30;
        v6 = v27;
        v5 = v28;
        v11 = v26;
      }

      v22 = v31;
      sub_24F927DD8();
      sub_24F927E58();
      v23 = *(v6 + 8);
      v23(v22, v5);
      sub_24F92BE48();
      v24 = (v23)(v11, v5);
      if (a2)
      {
        a2(v24);
      }

      return;
    }
  }

  if (a2)
  {
    a2(Strong);
  }
}

void sub_24E970E10(__int128 *a1, int a2, dispatch_group_t group)
{
  v4 = *(a1 + 48);
  if (v4 != 255)
  {
    v5 = a1[1];
    v11 = *a1;
    v12 = v5;
    v13 = a1[2];
    v14 = v4;
    v6 = AppStateDataSourceError.errorDescription.getter();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v10 = sub_24F92AAE8();
      __swift_project_value_buffer(v10, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      *(&v12 + 1) = MEMORY[0x277D837D0];
      *&v11 = v8;
      *(&v11 + 1) = v9;
      sub_24F928438();
      sub_24E601704(&v11, &qword_27F2129B0);
      sub_24F92A5A8();
    }
  }

  dispatch_group_leave(group);
}

uint64_t LegacyAppStateController.performAfterLoading(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = &v12;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24E972574;
  *(v8 + 24) = v7;
  aBlock[4] = sub_24E9727BC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_44;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v12 == 1)
    {
      a1(result);
    }
  }

  return result;
}

uint64_t sub_24E971144(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) == 2)
  {
    *a2 = 1;
  }

  else
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    swift_beginAccess();
    v8 = *(v6 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 88) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_24E618160(0, v8[2] + 1, 1, v8);
      *(v6 + 88) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_24E618160((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_24E972460;
    v12[5] = v7;
    *(v6 + 88) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24E9712B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E971310();
  }

  return result;
}

uint64_t sub_24E971310()
{
  v1 = sub_24F927D88();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 80);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24E972764;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_82;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v13 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_24E9715E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 96) == 2)
    {
    }

    else
    {
      *(result + 96) = 2;
      v1 = result;
      swift_beginAccess();
      v2 = *(v1 + 88);
      v3 = *(v2 + 16);
      if (v3)
      {

        v4 = v2 + 40;
        do
        {
          v5 = *(v4 - 8);

          v5(v6);

          v4 += 16;
          --v3;
        }

        while (v3);

        v7 = v1;
      }

      else
      {
        v7 = v1;
      }

      *(v7 + 88) = MEMORY[0x277D84F90];
    }
  }

  return result;
}

id *LegacyAppStateController.deinit()
{

  return v0;
}

uint64_t LegacyAppStateController.__deallocating_deinit()
{
  LegacyAppStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E971794(uint64_t *a1)
{
  v2 = a1[1];
  v4 = *a1;
  v1 = v4;
  v5 = v2;
  sub_24E96E218(&v4);
  v4 = v1;
  v5 = v2;
  return sub_24E96E708(&v4);
}

uint64_t sub_24E9717E0()
{
  type metadata accessor for LegacyAppStateMachine();
  sub_24F92BF18();
  return v1;
}

uint64_t sub_24E971890(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E614970;

  return LegacyAppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(a1, a2, a3, a4);
}

uint64_t sub_24E971954(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_24E970218, 0, 0);
}

uint64_t sub_24E971980(char a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20[0] = a2;
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v3 + OBJC_IVAR____TtC12GameStoreKit24DeviceAppStateDataSource_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  aBlock[0] = v13;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  if (a1)
  {
    sub_24F92C6A8();
    v14 = swift_allocObject();
    v15 = v21;
    *(v14 + 16) = v20[0];
    *(v14 + 24) = v15;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_76;
    v16 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v8, v12, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v18);
    v19 = v21;
    v20[-2] = v20[0];
    v20[-1] = v19;
    sub_24F92BF08();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_24E971DB8(char a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20[0] = a2;
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v3 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  aBlock[0] = v13;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  if (a1)
  {
    sub_24F92C6A8();
    v14 = swift_allocObject();
    v15 = v21;
    *(v14 + 16) = v20[0];
    *(v14 + 24) = v15;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_57;
    v16 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v8, v12, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v18);
    v19 = v21;
    v20[-2] = v20[0];
    v20[-1] = v19;
    sub_24F92BF08();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_24E9721F0()
{

  return swift_deallocObject();
}

void sub_24E972228()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 96))
  {
    v2 = *(v0 + 24);
    *(v1 + 96) = 1;
    *v2 = 1;
  }
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E97229C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E9722F4()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24E97232C()
{

  return swift_deallocObject();
}

uint64_t sub_24E97238C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E9723D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E972428()
{

  return swift_deallocObject();
}

uint64_t sub_24E972468()
{

  return swift_deallocObject();
}

uint64_t sub_24E9724E0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E972534()
{

  return swift_deallocObject();
}

unint64_t sub_24E972600()
{
  result = qword_27F222D28;
  if (!qword_27F222D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D28);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24E9726D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24E97280C(double a1)
{
  v3 = sub_24F922348();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if ((*(v1 + 40) & 1) == 0)
  {
    v17 = *(v1 + 32) * a1;
    if ((*(v1 + 24) & 1) == 0)
    {
      return floor(v17);
    }

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F922308();
    goto LABEL_8;
  }

  if ((*(v1 + 24) & 1) == 0)
  {
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222F8();
    v17 = v18;
LABEL_8:
    (*(v4 + 8))(v12, v3);
    return floor(v17);
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v14 = v13;
  sub_24F9222E8();
  if (v14 >= v15)
  {
    sub_24F922308();
  }

  else
  {
    sub_24F9222F8();
    a1 = v16;
  }

  v19 = *(v4 + 8);
  v19(v7, v3);
  v19(v10, v3);
  return a1;
}

uint64_t sub_24E972A38(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 7368564;
    v6 = 0x6D6F74746F62;
    if (a1 != 2)
    {
      v6 = 0x676E696C69617274;
    }

    if (a1)
    {
      v5 = 0x676E696461656CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x654C6D6F74746F62;
    v2 = 0x72546D6F74746F62;
    if (a1 != 7)
    {
      v2 = 0x7265746E6563;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696461654C706F74;
    if (a1 != 4)
    {
      v3 = 0x6C69617254706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E972B74()
{
  sub_24F92D068();
  sub_24F2045BC();
  return sub_24F92D0B8();
}

uint64_t sub_24E972BC4()
{
  sub_24F92D068();
  sub_24F2045BC();
  return sub_24F92D0B8();
}

uint64_t sub_24E972C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E97672C();
  *a1 = result;
  return result;
}

uint64_t sub_24E972C38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E972A38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E972D14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9761BC();
  sub_24F92D128();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E10);
  sub_24E976408();
  sub_24F92CD48();
  if (!v2)
  {
    *&v12 = *(v3 + 2);
    BYTE8(v12) = *(v3 + 24);
    v11 = 1;
    sub_24E620F7C();
    sub_24F92CCF8();
    *&v12 = *(v3 + 4);
    BYTE8(v12) = *(v3 + 40);
    v11 = 2;
    sub_24F92CCF8();
    v12 = v3[3];
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E20);
    sub_24E9764BC();
    sub_24F92CD48();
    LOBYTE(v12) = *(v3 + 64);
    v11 = 4;
    sub_24E976570();
    sub_24F92CCF8();
    LOBYTE(v12) = *(v3 + 65);
    v11 = 5;
    sub_24E9765C4();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E972FE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222EA8);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - v3;
  v23 = type metadata accessor for GSKVideo();
  MEMORY[0x28223BE20](v23);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222EB0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v23 - v6;
  v7 = sub_24F9289E8();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MixedMediaItem.ContentType();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222EB8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E97630C();
  sub_24F92D128();
  sub_24E976618(v30, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v24;
    sub_24E97667C(v11, v24, type metadata accessor for GSKVideo);
    v38 = 1;
    sub_24E976360();
    v17 = v25;
    sub_24F92CC98();
    sub_24E9766E4(&qword_27F214068, type metadata accessor for GSKVideo);
    v18 = v27;
    sub_24F92CD48();
    (*(v26 + 8))(v17, v18);
    sub_24E81BC84(v16);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128);
    (*(v32 + 32))(v31, v11, v7);
    v37 = 0;
    sub_24E9763B4();
    sub_24F92CC98();
    v36 = 0;
    sub_24E9766E4(&qword_27F214060, MEMORY[0x277D21C48]);
    v20 = v29;
    v21 = v33;
    sub_24F92CD48();
    if (v21)
    {

      (*(v28 + 8))(v34, v20);
      (*(v32 + 8))(v31, v7);
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      v33 = v15;
      v22 = v31;
      v35 = 1;
      sub_24F92CD08();

      (*(v28 + 8))(v34, v20);
      (*(v32 + 8))(v22, v7);
      return (*(v13 + 8))(v33, v12);
    }
  }
}

uint64_t sub_24E9735D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E40);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E48);
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x28223BE20](v5);
  v56 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E50);
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for MixedMediaItem.ContentType();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E97630C();
  v21 = v58;
  sub_24F92D108();
  if (!v21)
  {
    v48 = v13;
    v49 = v16;
    v23 = v55;
    v22 = v56;
    v58 = v11;
    v24 = v57;
    v25 = sub_24F92CC78();
    v26 = (2 * *(v25 + 16)) | 1;
    v60 = v25;
    v61 = v25 + 32;
    v62 = 0;
    v63 = v26;
    v27 = sub_24E643430();
    v28 = v10;
    if (v27 == 2 || v62 != v63 >> 1)
    {
      v34 = sub_24F92C918();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v36 = v58;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v23 + 8))(v28, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v64 = 1;
        sub_24E976360();
        v29 = v54;
        v30 = v8;
        sub_24F92CBA8();
        type metadata accessor for GSKVideo();
        sub_24E9766E4(&qword_27F214020, type metadata accessor for GSKVideo);
        v31 = v48;
        v32 = v51;
        sub_24F92CC68();
        (*(v50 + 8))(v29, v32);
        (*(v23 + 8))(v28, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v31;
        v24 = v57;
      }

      else
      {
        v64 = 0;
        sub_24E9763B4();
        v38 = v22;
        v39 = v8;
        sub_24F92CBA8();
        sub_24F9289E8();
        v40 = v38;
        v64 = 0;
        sub_24E9766E4(&qword_27F214018, MEMORY[0x277D21C48]);
        v41 = v52;
        sub_24F92CC68();
        v64 = 1;
        v42 = sub_24F92CC28();
        v50 = v43;
        v51 = v42;
        v54 = 0;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128);
        v45 = v49;
        v46 = &v49[*(v44 + 48)];
        (*(v53 + 8))(v40, v41);
        (*(v23 + 8))(v28, v39);
        swift_unknownObjectRelease();
        v47 = v50;
        *v46 = v51;
        v46[1] = v47;
        swift_storeEnumTagMultiPayload();
        v33 = v45;
      }

      sub_24E97667C(v33, v19, type metadata accessor for MixedMediaItem.ContentType);
      sub_24E97667C(v19, v24, type metadata accessor for MixedMediaItem.ContentType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_24E973CE8()
{
  v1 = *v0;
  v2 = 0x6953656372756F73;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x636E41656D617266;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E6F697463617266;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E973DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E976C94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E973DEC(uint64_t a1)
{
  v2 = sub_24E9761BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E973E28(uint64_t a1)
{
  v2 = sub_24E9761BC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24E973E64@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E9752D0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24E973ED0()
{
  if (*v0)
  {
    return 0x65646F43706F7263;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24E973F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E973FE8(uint64_t a1)
{
  v2 = sub_24E9763B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E974024(uint64_t a1)
{
  v2 = sub_24E9763B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E974060()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24E974098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E974170(uint64_t a1)
{
  v2 = sub_24E97630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9741AC(uint64_t a1)
{
  v2 = sub_24E97630C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9741FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E974280(uint64_t a1)
{
  v2 = sub_24E976360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9742BC(uint64_t a1)
{
  v2 = sub_24E976360();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E97433C(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6548656E6F685069;
      break;
    case 2:
    case 17:
    case 39:
    case 44:
    case 84:
      result = 0xD000000000000012;
      break;
    case 3:
    case 23:
    case 49:
      result = 0xD000000000000015;
      break;
    case 4:
    case 9:
    case 57:
    case 78:
      result = 0xD000000000000014;
      break;
    case 5:
    case 56:
    case 75:
    case 77:
    case 85:
      result = 0xD000000000000011;
      break;
    case 6:
    case 16:
    case 43:
    case 66:
    case 68:
      result = 0xD000000000000019;
      break;
    case 7:
    case 10:
    case 20:
    case 26:
    case 47:
    case 69:
      result = 0xD00000000000001CLL;
      break;
    case 8:
    case 31:
    case 33:
    case 54:
    case 60:
    case 62:
    case 70:
      result = 0xD00000000000001BLL;
      break;
    case 11:
    case 29:
      result = 0xD00000000000001FLL;
      break;
    case 12:
    case 34:
    case 63:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x614C656E6F685069;
      break;
    case 14:
    case 41:
    case 51:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
    case 25:
    case 27:
    case 35:
    case 46:
    case 64:
      result = 0xD00000000000001DLL;
      break;
    case 21:
    case 38:
    case 58:
    case 79:
      result = 0xD000000000000013;
      break;
    case 22:
    case 65:
      result = 0xD000000000000016;
      break;
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 28:
      result = 0xD000000000000020;
      break;
    case 30:
    case 50:
    case 53:
    case 59:
    case 67:
      result = 0xD000000000000018;
      break;
    case 32:
      result = 0xD00000000000001ALL;
      break;
    case 36:
      result = 0x6F72654864615069;
      break;
    case 37:
    case 52:
    case 76:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0x6174654464615069;
      break;
    case 42:
      result = 0xD00000000000001ALL;
      break;
    case 45:
      result = 0xD00000000000001ALL;
      break;
    case 48:
      result = 0x6772614C64615069;
      break;
    case 55:
      result = 0xD00000000000001ALL;
      break;
    case 61:
      result = 0xD00000000000001ALL;
      break;
    case 71:
      result = 0x6F72654863616DLL;
      break;
    case 72:
      result = 0x526F72654863616DLL;
      break;
    case 73:
      result = 0x416F72654863616DLL;
      break;
    case 74:
      result = 0x696174654463616DLL;
      break;
    case 80:
    case 81:
    case 82:
      result = 0x656772614C63616DLL;
      break;
    case 83:
      result = 0x7274726F5063616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E974B38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24E97433C(*a1);
  v5 = v4;
  if (v3 == sub_24E97433C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E974BC0()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24E97433C(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E974C24()
{
  sub_24E97433C(*v0);
  sub_24F92B218();
}

uint64_t sub_24E974C78()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24E97433C(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E974CD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E976778();
  *a1 = result;
  return result;
}

unint64_t sub_24E974D08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E97433C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E974DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E976168();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_24E974E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24E976168();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_24E974EB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9758A8();
  sub_24F92D128();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D50);
  sub_24E975AAC(&qword_27F222D90, sub_24E975B3C, sub_24E975B90);
  sub_24F92CD48();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D70);
    sub_24E975BE4();
    sub_24F92CD48();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E9750B8()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 0x676E697A69736572;
  }
}

uint64_t sub_24E975100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697A69736572 && a2 == 0xEF736769666E6F43;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E9751E4(uint64_t a1)
{
  v2 = sub_24E9758A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E975220(uint64_t a1)
{
  v2 = sub_24E9758A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E97525C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24E975654(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_24E9752A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24EA34D78(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    a3[1] = v6;
  }
}

uint64_t sub_24E9752D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9761BC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E10);
  v27 = 0;
  sub_24E976210(&qword_27F222E18, &qword_27F222E10);
  sub_24F92CC68();
  v9 = v23;
  v10 = v24;
  v27 = 1;
  sub_24E620E90();
  sub_24F92CC18();
  v11 = v23;
  v26 = v24;
  v27 = 2;
  sub_24F92CC18();
  v21 = v11;
  v22 = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222E20);
  v27 = 3;
  sub_24E976210(&qword_27F222E28, &qword_27F222E20);
  sub_24F92CC68();
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v27 = 4;
  sub_24E976264();
  sub_24F92CC18();
  v15 = v23;
  v27 = 5;
  sub_24E9762B8();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v16 = v23;
  v17 = v26;
  v18 = v25;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  *(a2 + 40) = v18;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 65) = v16;
  return result;
}

uint64_t sub_24E975654(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9758A8();
  sub_24F92D108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D50);
  HIBYTE(v8) = 0;
  sub_24E975AAC(&qword_27F222D58, sub_24E9758FC, sub_24E975950);
  sub_24F92CC68();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D70);
  HIBYTE(v8) = 1;
  sub_24E9759A4();
  sub_24F92CC68();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E9758A8()
{
  result = qword_27F222D48;
  if (!qword_27F222D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D48);
  }

  return result;
}

unint64_t sub_24E9758FC()
{
  result = qword_27F222D60;
  if (!qword_27F222D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D60);
  }

  return result;
}

unint64_t sub_24E975950()
{
  result = qword_27F222D68;
  if (!qword_27F222D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D68);
  }

  return result;
}

unint64_t sub_24E9759A4()
{
  result = qword_27F222D78;
  if (!qword_27F222D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D70);
    sub_24E9758FC();
    sub_24E9766E4(&qword_27F222D80, type metadata accessor for MixedMediaItem.ContentType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D78);
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaItem.ContentType()
{
  result = qword_27F222DB8;
  if (!qword_27F222DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E975AAC(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D50);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E975B3C()
{
  result = qword_27F222D98;
  if (!qword_27F222D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222D98);
  }

  return result;
}

unint64_t sub_24E975B90()
{
  result = qword_27F222DA0;
  if (!qword_27F222DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DA0);
  }

  return result;
}

unint64_t sub_24E975BE4()
{
  result = qword_27F222DA8;
  if (!qword_27F222DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D70);
    sub_24E975B3C();
    sub_24E9766E4(&qword_27F222DB0, type metadata accessor for MixedMediaItem.ContentType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DA8);
  }

  return result;
}

void sub_24E975CB0()
{
  sub_24E975D24();
  if (v0 <= 0x3F)
  {
    sub_24E975D90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E975D24()
{
  if (!qword_27F222DC8)
  {
    sub_24F9289E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F222DC8);
    }
  }
}

void sub_24E975D90()
{
  if (!qword_27F222DD0)
  {
    v0 = type metadata accessor for GSKVideo();
    if (!v1)
    {
      atomic_store(v0, &qword_27F222DD0);
    }
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E975DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 66))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_24E975E50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MixedMediaItem.Variant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MixedMediaItem.Variant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E97600C()
{
  result = qword_27F222DD8;
  if (!qword_27F222DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DD8);
  }

  return result;
}

unint64_t sub_24E976064()
{
  result = qword_27F222DE0;
  if (!qword_27F222DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DE0);
  }

  return result;
}

unint64_t sub_24E9760BC()
{
  result = qword_27F222DE8;
  if (!qword_27F222DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DE8);
  }

  return result;
}

unint64_t sub_24E976114()
{
  result = qword_27F222DF0;
  if (!qword_27F222DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DF0);
  }

  return result;
}

unint64_t sub_24E976168()
{
  result = qword_27F222DF8;
  if (!qword_27F222DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222DF8);
  }

  return result;
}

unint64_t sub_24E9761BC()
{
  result = qword_27F222E08;
  if (!qword_27F222E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E08);
  }

  return result;
}

uint64_t sub_24E976210(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E976264()
{
  result = qword_27F222E30;
  if (!qword_27F222E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E30);
  }

  return result;
}

unint64_t sub_24E9762B8()
{
  result = qword_27F222E38;
  if (!qword_27F222E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E38);
  }

  return result;
}

unint64_t sub_24E97630C()
{
  result = qword_27F222E58;
  if (!qword_27F222E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E58);
  }

  return result;
}

unint64_t sub_24E976360()
{
  result = qword_27F222E60;
  if (!qword_27F222E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E60);
  }

  return result;
}

unint64_t sub_24E9763B4()
{
  result = qword_27F222E68;
  if (!qword_27F222E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E68);
  }

  return result;
}

unint64_t sub_24E976408()
{
  result = qword_27F222E78;
  if (!qword_27F222E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222E10);
    sub_24E9766E4(&qword_27F222E80, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E78);
  }

  return result;
}

unint64_t sub_24E9764BC()
{
  result = qword_27F222E88;
  if (!qword_27F222E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222E20);
    sub_24E9766E4(&qword_27F222E90, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E88);
  }

  return result;
}

unint64_t sub_24E976570()
{
  result = qword_27F222E98;
  if (!qword_27F222E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222E98);
  }

  return result;
}

unint64_t sub_24E9765C4()
{
  result = qword_27F222EA0;
  if (!qword_27F222EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EA0);
  }

  return result;
}

uint64_t sub_24E976618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MixedMediaItem.ContentType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E97667C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9766E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E97672C()
{
  v0 = sub_24F92CB88();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E976778()
{
  v0 = sub_24F92CF18();

  if (v0 >= 0x56)
  {
    return 86;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E976820()
{
  result = qword_27F222EC0;
  if (!qword_27F222EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EC0);
  }

  return result;
}

unint64_t sub_24E976878()
{
  result = qword_27F222EC8;
  if (!qword_27F222EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EC8);
  }

  return result;
}

unint64_t sub_24E9768D0()
{
  result = qword_27F222ED0;
  if (!qword_27F222ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222ED0);
  }

  return result;
}

unint64_t sub_24E976928()
{
  result = qword_27F222ED8;
  if (!qword_27F222ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222ED8);
  }

  return result;
}

unint64_t sub_24E976980()
{
  result = qword_27F222EE0;
  if (!qword_27F222EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EE0);
  }

  return result;
}

unint64_t sub_24E9769D8()
{
  result = qword_27F222EE8;
  if (!qword_27F222EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EE8);
  }

  return result;
}

unint64_t sub_24E976A30()
{
  result = qword_27F222EF0;
  if (!qword_27F222EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EF0);
  }

  return result;
}

unint64_t sub_24E976A88()
{
  result = qword_27F222EF8;
  if (!qword_27F222EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222EF8);
  }

  return result;
}

unint64_t sub_24E976AE0()
{
  result = qword_27F222F00;
  if (!qword_27F222F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F00);
  }

  return result;
}

unint64_t sub_24E976B38()
{
  result = qword_27F222F08;
  if (!qword_27F222F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F08);
  }

  return result;
}

unint64_t sub_24E976B90()
{
  result = qword_27F222F10;
  if (!qword_27F222F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F10);
  }

  return result;
}

unint64_t sub_24E976BE8()
{
  result = qword_27F222F18;
  if (!qword_27F222F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F18);
  }

  return result;
}

unint64_t sub_24E976C40()
{
  result = qword_27F222F20;
  if (!qword_27F222F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F20);
  }

  return result;
}

uint64_t sub_24E976C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6953656372756F73 && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA43100 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xEF68746469576C61 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4B3B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA4B3D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E41656D617266 && a2 == 0xEB00000000726F68)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24E976EB0()
{
  result = qword_27F222F28;
  if (!qword_27F222F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F28);
  }

  return result;
}

uint64_t sub_24E976F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_allocate_value_buffer(v0, qword_27F222F30);
  __swift_project_value_buffer(v0, qword_27F222F30);
  return sub_24F928C68();
}

uint64_t sub_24E976F7C()
{
  ObjectType = swift_getObjectType();
  v31 = sub_24F922028();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v9 = sub_24F922058();
  __swift_project_value_buffer(v9, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v10 = sub_24F922038();
  v11 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v10, v11, v13, "RefreshTokenPromise", "", v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  v14 = v31;
  v26 = *(v0 + 16);
  v26(v5, v8, v31);
  sub_24F922098();
  swift_allocObject();
  v27 = sub_24F922088();
  v15 = *(v0 + 8);
  v28 = v0 + 8;
  v15(v8, v14);
  sub_24F922038();
  sub_24F921FF8();
  v16 = sub_24F922038();
  v17 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v16, v17, v19, "RefreshToken", "", v18, 2u);
    MEMORY[0x2530542D0](v18, -1, -1);
  }

  v20 = v31;
  v26(v5, v2, v31);
  swift_allocObject();
  v21 = sub_24F922088();
  v15(v2, v20);
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v22 = sub_24F92C448();
  MEMORY[0x28223BE20](v22);
  *(&v26 - 4) = v27;
  *(&v26 - 3) = v21;
  v23 = ObjectType;
  *(&v26 - 2) = v30;
  *(&v26 - 1) = v23;
  v24 = sub_24F92C458();

  return v24;
}

const char *sub_24E977348(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = a4;
  v38 = a1;
  v39 = a5;
  v42 = a2;
  v6 = sub_24F922068();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92AC68();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (!v16)
  {
    v24 = v10;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v25 = sub_24F922058();
    __swift_project_value_buffer(v25, qword_27F23DAC0);
    v26 = sub_24F922038();
    sub_24F922078();
    LODWORD(v41) = sub_24F92C048();
    v27 = v9;
    v28 = v24;
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v29 = v35;
      if ((*(v35 + 88))(v8, v6) == *MEMORY[0x277D85B00])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v8, v6);
        v30 = "override=false,success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v41, v32, "RefreshToken", v30, v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    (*(v28 + 8))(v12, v27);
    v18 = "RefreshTokenPromise";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v19 = v39;
  v20 = v40;
  *(v18 + 2) = a3;
  *(v18 + 3) = v20;
  *(v18 + 4) = v17;
  *(v18 + 5) = v19;
  v21 = v38;

  v22 = v20;

  v23 = v41;
  sub_24F92AC48();
  if (v23)
  {

LABEL_13:
    sub_24E9777BC();
    return v18;
  }

  v18 = sub_24F92AC58();

  (*(v36 + 8))(v15, v37);
  sub_24E9777BC();
  return v18;
}

uint64_t sub_24E9777BC()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "RefreshTokenPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_24E977A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v69 = a2;
  v64 = a3;
  v65 = a6;
  v63 = a5;
  v75 = a4;
  *&v71 = a1;
  v6 = sub_24F922068();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x28223BE20](v12);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = sub_24F9281B8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210028 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v21, qword_27F222F30);
  sub_24F928868();

  if (v74[1])
  {

    v22 = sub_24F92CF68();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:v71];
    swift_unknownObjectRelease();
    if (v23)
    {
      v65 = v8;
      v24 = v73;

      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v25 = sub_24F922058();
      __swift_project_value_buffer(v25, qword_27F23DAC0);
      v26 = sub_24F922038();
      sub_24F922078();
      v27 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();

        v29 = v66;
        v28 = v67;
        if ((*(v66 + 88))(v11, v67) == *MEMORY[0x277D85B00])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v29 + 8))(v11, v28);
          v30 = "override=true,success=true";
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v27, v44, "RefreshToken", v30, v43, 2u);
        MEMORY[0x2530542D0](v43, -1, -1);
      }

      v45 = *(v24 + 8);
      v45(v17, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v46 = swift_allocObject();
      v71 = xmmword_24F93DE60;
      *(v46 + 16) = xmmword_24F93DE60;
      *(v46 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
      *(v46 + 32) = v23;
      v47 = v23;
      v48 = v70;
      v49 = sub_24F9281A8();
      if (v48)
      {
        v73 = v24 + 8;

        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v50 = sub_24F92AAE8();
        __swift_project_value_buffer(v50, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v71;
        sub_24F9283A8();
        sub_24F92A5A8();

        v51 = sub_24F922038();
        v52 = v68;
        sub_24F922078();
        v53 = sub_24F92C048();
        if (sub_24F92C478())
        {

          v54 = v65;
          sub_24F9220A8();

          v56 = v66;
          v55 = v67;
          if ((*(v66 + 88))(v54, v67) == *MEMORY[0x277D85B00])
          {
            v57 = "[Error] Interval already ended";
          }

          else
          {
            (*(v56 + 8))(v54, v55);
            v57 = "override=true,success=false";
          }

          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v68;
          v62 = sub_24F922008();
          _os_signpost_emit_with_name_impl(&dword_24E5DD000, v51, v53, v62, "RefreshToken", v57, v60, 2u);
          MEMORY[0x2530542D0](v60, -1, -1);

          v59 = v61;
        }

        else
        {

          v59 = v52;
        }

        v45(v59, v72);
      }

      else
      {
        v58 = v49;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F78);
    v31 = [*(v63 + OBJC_IVAR____TtC12GameStoreKit25JSMediaTokenServiceObject_tokenService) fetchMediaToken];
    v73 = sub_24F92A9D8();
    v32 = v19;
    v68 = *(v19 + 16);
    v33 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v68)(v33, v69, v18);
    v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v35 = swift_allocObject();
    v72 = v35;
    v36 = v71;
    v37 = v75;
    *(v35 + 16) = v71;
    *(v35 + 24) = v37;
    v38 = *(v32 + 32);
    v38(v35 + v34, v33, v18);
    (v68)(v33, v64, v18);
    v39 = swift_allocObject();
    v40 = v75;
    *(v39 + 16) = v36;
    *(v39 + 24) = v40;
    v38(v39 + v34, v33, v18);
    v74[3] = sub_24F9298F8();
    v74[4] = MEMORY[0x277D22078];
    v74[0] = v65;
    v41 = v36;
    swift_retain_n();
    v42 = v41;

    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v74);
  }
}

void sub_24E978360(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = sub_24F922068();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = v37 - v17;
  v19 = [*a1 tokenString];
  v20 = sub_24F92B0D8();
  v22 = v21;

  v43 = v20;
  v44 = v22;
  v23 = sub_24F92CF68();
  v24 = [objc_opt_self() valueWithObject:v23 inContext:a2];
  swift_unknownObjectRelease();
  if (v24)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v25 = sub_24F922058();
    __swift_project_value_buffer(v25, qword_27F23DAC0);
    v26 = sub_24F922038();
    sub_24F922078();
    v27 = sub_24F92C048();
    if (sub_24F92C478())
    {
      *&v38 = v13;

      sub_24F9220A8();
      v37[0] = a3;

      v29 = v39;
      v28 = v40;
      v30 = v12;
      if ((*(v39 + 88))(v11, v40) == *MEMORY[0x277D85B00])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v11, v28);
        v31 = "override=false,success=true";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v27, v33, "RefreshToken", v31, v32, 2u);
      MEMORY[0x2530542D0](v32, -1, -1);
      v12 = v30;
      v13 = v38;
    }

    (*(v13 + 8))(v18, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v34 = swift_allocObject();
    v38 = xmmword_24F93DE60;
    *(v34 + 16) = xmmword_24F93DE60;
    *(v34 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v34 + 32) = v24;
    v35 = v24;
    v36 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E9789C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = sub_24F922068();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = sub_24F922028();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v13 = MEMORY[0x253051C90](a1, a2);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v14 = sub_24F922058();
  __swift_project_value_buffer(v14, qword_27F23DAC0);
  v15 = sub_24F922038();
  sub_24F922078();
  v16 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v17 = v25;
    if ((*(v25 + 88))(v8, v6) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v8, v6);
      v18 = "override=false,success=false";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v20, "RefreshToken", v18, v19, 2u);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v21 = swift_allocObject();
  v26 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  *(v21 + 56) = v12;
  *(v21 + 32) = v13;
  v22 = v13;
  v23 = sub_24F9281A8();
}

id sub_24E978E68(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = sub_24F92C2F8();
  if (!v9)
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    v14 = a2;
    sub_24F92A828();
    swift_willThrow();
    return a2;
  }

  v10 = v8;
  v11 = v9;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210028 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_27F222F30);
  (*(v5 + 16))(v7, v12, v4);
  v15[0] = v10;
  v15[1] = v11;

  sub_24F928878();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a2 = result;

    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E979394()
{
  result = qword_27F222F60;
  if (!qword_27F222F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F60);
  }

  return result;
}

unint64_t sub_24E979414()
{
  result = qword_27F222F70;
  if (!qword_27F222F70)
  {
    sub_24F92A868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F70);
  }

  return result;
}

uint64_t sub_24E97948C()
{

  return swift_deallocObject();
}

void sub_24E9794F8(id *a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24E978360(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24E979638(uint64_t a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24E9789C0(a1, v4, v5, v6);
}

uint64_t OfferDisplayProperties.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v3 - 8);
  v178 = &v144[-v4];
  v181 = sub_24F9285B8();
  v183 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v171 = &v144[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v166 = &v144[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v165 = &v144[-v10];
  MEMORY[0x28223BE20](v9);
  v164 = &v144[-v11];
  v184 = sub_24F928388();
  v187 = *(v184 - 8);
  v12 = MEMORY[0x28223BE20](v184);
  v177 = &v144[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v176 = &v144[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v175 = &v144[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v174 = &v144[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v173 = &v144[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v172 = &v144[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v170 = &v144[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v169 = &v144[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v168 = &v144[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v167 = &v144[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v144[-v33];
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v144[-v36];
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v144[-v39];
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v144[-v42];
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v144[-v45];
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v144[-v48];
  MEMORY[0x28223BE20](v47);
  v51 = &v144[-v50];
  v52 = a1;
  sub_24F928398();
  sub_24E97C76C();
  v53 = v180;
  sub_24F928218();
  if (v53)
  {
    (*(v183 + 8))(v182, v181);
    v54 = *(v187 + 8);
    v55 = v184;
    (v54)(a1, v184);
    (v54)(v51, v55);
    return v54;
  }

  v162 = v43;
  v156 = v40;
  v157 = v37;
  v158 = v34;
  v163 = v46;
  v180 = 0;
  v56 = v183;
  v57 = v184;
  v58 = v187 + 8;
  v59 = *(v187 + 8);
  v59(v51, v184);
  v161 = LOBYTE(v186[0]);
  sub_24F928398();
  v160 = sub_24F928348();
  v61 = v60;
  v59(v49, v57);
  v159 = v61;
  if (!v61)
  {
    v54 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v75 = 0x64496D616461;
    v75[1] = 0xE600000000000000;
    v75[2] = v179;
    (*(*(v54 - 8) + 104))(v75, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v56 + 8))(v182, v181);
    v59(v52, v57);
    return v54;
  }

  v62 = v163;
  sub_24F928398();
  v155 = sub_24F928348();
  v154 = v63;
  v59(v62, v57);
  v64 = v162;
  sub_24F928398();
  v65 = sub_24F928348();
  v67 = v66;
  v59(v64, v57);
  v153 = v67;
  if (v67)
  {
    v68 = v65;
  }

  else
  {
    v68 = 0;
  }

  v152 = v68;
  v69 = v156;
  v162 = v52;
  sub_24F928398();
  v70 = v164;
  sub_24F9281F8();
  v187 = v58;
  v179 = v59;
  v59(v69, v57);
  v71 = sub_24F928E68();
  v72 = *(v71 - 8);
  v73 = *(v72 + 48);
  v74 = v73(v70, 1, v71);
  v151 = v72;
  if (v74 == 1)
  {
    sub_24E601704(v70, qword_27F221C40);
    v156 = sub_24E6096FC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_24E97CFA0();
    v76 = v180;
    v156 = sub_24F928E38();
    v180 = v76;
    (*(v72 + 8))(v70, v71);
  }

  v77 = v166;
  v78 = v165;
  v79 = v157;
  sub_24F928398();
  sub_24F9281F8();
  v80 = v184;
  v179(v79, v184);
  v81 = v73(v78, 1, v71);
  v82 = v163;
  if (v81 == 1)
  {
    sub_24E601704(v78, qword_27F221C40);
    v166 = sub_24E6096FC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_24E97CFA0();
    v83 = v180;
    v166 = sub_24F928E38();
    v180 = v83;
    (*(v151 + 8))(v78, v71);
  }

  v84 = v158;
  sub_24F928398();
  sub_24F9281F8();
  v179(v84, v80);
  if (v73(v77, 1, v71) == 1)
  {
    sub_24E601704(v77, qword_27F221C40);
    v165 = sub_24E6096FC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_24E97CFA0();
    v85 = v180;
    v165 = sub_24F928E38();
    v180 = v85;
    (*(v151 + 8))(v77, v71);
  }

  sub_24F928398();
  v86 = sub_24F928348();
  v88 = v87;
  v89 = v82;
  v90 = v82;
  v91 = v179;
  v179(v89, v80);
  v92.value._countAndFlagsBits = v86;
  v92.value._object = v88;
  OfferStyle.init(fromString:)(v92);
  v93 = LOBYTE(v186[0]);
  if (LOBYTE(v186[0]) == 7)
  {
    v93 = 0;
  }

  LODWORD(v164) = v93;
  sub_24F928398();
  v94 = sub_24F928348();
  v96 = v95;
  v91(v90, v80);
  v97.value._countAndFlagsBits = v94;
  v97.value._object = v96;
  OfferEnvironment.init(fromString:)(v97);
  v98 = LOBYTE(v186[0]);
  if (LOBYTE(v186[0]) == 16)
  {
    v98 = 0;
  }

  LODWORD(v158) = v98;
  sub_24F928398();
  (*(v183 + 16))(v171, v182, v181);
  sub_24E97CF28();
  sub_24F929548();
  v99 = v186[0];
  if (v186[0] == 3)
  {
    v99 = 0;
  }

  v171 = v99;
  if (v186[0] == 3)
  {
    v100 = 0;
  }

  else
  {
    v100 = v186[1];
  }

  v157 = v100;
  v101 = v167;
  sub_24F928398();
  LODWORD(v151) = sub_24F928278();
  v91(v101, v80);
  v102 = v168;
  sub_24F928398();
  LODWORD(v167) = sub_24F928278();
  v91(v102, v80);
  v103 = v169;
  sub_24F928398();
  LODWORD(v168) = sub_24F928278();
  v91(v103, v80);
  v104 = v170;
  sub_24F928398();
  LODWORD(v169) = sub_24F928278();
  v91(v104, v80);
  v105 = v172;
  sub_24F928398();
  LODWORD(v170) = sub_24F928278();
  v91(v105, v80);
  v106 = v173;
  sub_24F928398();
  v107 = sub_24F928348();
  v109 = v108;
  v91(v106, v80);
  v110 = v174;
  v111 = v175;
  if (!v109)
  {
    goto LABEL_31;
  }

  if ((v107 != 1701736302 || v109 != 0xE400000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (v107 == 0x726564726F657270 && v109 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v142 = 1;
    }

    else
    {
      if (v107 == 0xD000000000000010 && 0x800000024FA4B690 == v109)
      {
      }

      else
      {
        v143 = sub_24F92CE08();

        if ((v143 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v142 = 2;
    }

    LODWORD(v173) = v142;
    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v173) = 0;
LABEL_32:
  sub_24F928398();
  LODWORD(v172) = sub_24F928278();
  v112 = v179;
  v179(v110, v80);
  v113 = v163;
  sub_24F928398();
  v174 = sub_24F928258();
  v150 = v114;
  v112(v113, v80);
  sub_24F928398();
  sub_24F928368();
  v112(v113, v80);
  sub_24F928398();
  v149 = sub_24F928348();
  v148 = v115;
  v112(v113, v80);
  sub_24F928398();
  v147 = sub_24F928348();
  v146 = v116;
  v112(v113, v80);
  sub_24F928398();
  v145 = sub_24F928278();
  v112(v111, v80);
  sub_24F928398();
  v117 = sub_24F928348();
  v119 = v118;
  v112(v113, v80);
  v120 = v176;
  sub_24F928398();
  v121 = v80;
  v122 = sub_24F928278();
  v112(v120, v121);
  v123 = v177;
  sub_24F928398();
  v124 = v178;
  sub_24F9282B8();
  v125 = v124;
  v112(v123, v121);
  v126 = sub_24F92AC28();
  v127 = *(v126 - 8);
  if ((*(v127 + 48))(v125, 1, v126) == 1)
  {
    sub_24E601704(v125, &qword_27F2213B0);
    v128 = 0;
  }

  else
  {
    v129 = v180;
    v128 = sub_24F92ABB8();
    v180 = v129;
    (*(v127 + 8))(v125, v126);
  }

  v130 = v181;
  v131 = v182;
  v132 = v160;
  v133 = v159;
  if (v186[3])
  {
    *&v185[0] = v160;
    *(&v185[0] + 1) = v159;
    sub_24ECDF340(v185);
  }

  (*(v183 + 8))(v131, v130);
  v179(v162, v184);
  sub_24E94E17C(v186, v185);
  type metadata accessor for OfferDisplayProperties();
  v54 = swift_allocObject();
  *(v54 + 16) = v161;
  *(v54 + 24) = v132;
  *(v54 + 32) = v133;
  v134 = v154;
  *(v54 + 40) = v155;
  *(v54 + 48) = v134;
  v135 = v153;
  *(v54 + 56) = v152;
  *(v54 + 64) = v135;
  v136 = v166;
  *(v54 + 72) = v156;
  *(v54 + 80) = v136;
  *(v54 + 88) = v165;
  *(v54 + 96) = v164;
  *(v54 + 97) = v158;
  v137 = v157;
  *(v54 + 104) = v171;
  *(v54 + 112) = v137;
  *(v54 + 120) = v151 & 1;
  *(v54 + 121) = v167 & 1;
  *(v54 + 122) = v168 & 1;
  *(v54 + 123) = v169 & 1;
  *(v54 + 124) = v170 & 1;
  *(v54 + 125) = v172 & 1;
  *(v54 + 126) = v173;
  *(v54 + 128) = v174;
  *(v54 + 136) = v150 & 1;
  v138 = v185[1];
  *(v54 + 144) = v185[0];
  *(v54 + 160) = v138;
  v139 = v148;
  *(v54 + 176) = v149;
  *(v54 + 184) = v139;
  v140 = v146;
  *(v54 + 192) = v147;
  *(v54 + 200) = v140;
  *(v54 + 208) = v145 & 1;
  *(v54 + 216) = v117;
  *(v54 + 224) = v119;
  *(v54 + 232) = v122 & 1;
  *(v54 + 240) = v128;
  sub_24E601704(v186, &qword_27F2129B0);
  return v54;
}

uint64_t OfferDisplayProperties.isArcadeAppOffer.getter()
{
  if (*(v0 + 16) > 2u)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_24F92CE08();
  }

  return v1 & 1;
}

GameStoreKit::OfferTitleType_optional __swiftcall OfferTitleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OfferTitleType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 1:
      result = 0x616D7269666E6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 1852141679;
      break;
    case 5:
      result = 0x657461647075;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x6573616863727570;
      break;
    case 8:
      result = 0x64616F6C6E776F64;
      break;
    case 9:
      result = 0x6C61697274;
      break;
    case 0xA:
      result = 0x6373627553746F6ELL;
      break;
    case 0xB:
      result = 0x6269726373627573;
      break;
    case 0xC:
      result = 0x7463697274736572;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E97AEAC()
{
  v0 = OfferTitleType.rawValue.getter();
  v2 = v1;
  if (v0 == OfferTitleType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24E97AF48()
{
  sub_24F92D068();
  OfferTitleType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E97AFB0()
{
  OfferTitleType.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24E97B014()
{
  sub_24F92D068();
  OfferTitleType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24E97B084@<X0>(unint64_t *a1@<X8>)
{
  result = OfferTitleType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::OfferStyle_optional __swiftcall OfferStyle.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_31;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 0x7265666E69 || fromString.value._object != 0xE500000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 2036691559 && object == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x6465726F6C6F63 && object == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 2;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x746E6172626976 && object == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x6574696877 && object == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x64656C6261736964 && object == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x726170736E617274 && object == 0xEB00000000746E65)
    {

      v5 = 6;
      goto LABEL_32;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 6;
      goto LABEL_32;
    }

LABEL_31:
    v5 = 7;
    goto LABEL_32;
  }

  v5 = 0;
LABEL_32:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

GameStoreKit::OfferEnvironment_optional __swiftcall OfferEnvironment.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_67;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 0x746867696CLL || fromString.value._object != 0xE500000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000010 && 0x800000024FA4B6B0 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 1802658148 && object == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 2;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x50746375646F7270 && object == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 25697 && object == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000016 && 0x800000024FA4B6D0 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x697461676976616ELL && object == 0xED00007261426E6FLL || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 6;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x656461637261 && object == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 7;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000011 && 0x800000024FA4B6F0 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 8;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000013 && 0x800000024FA4B710 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 9;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x6F43746E65696C63 && object == 0xED00006C6F72746ELL || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 10;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x6853656461637261 && object == 0xEE0065736163776FLL || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 11;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD00000000000001ELL && 0x800000024FA4B730 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 12;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000015 && 0x800000024FA4B750 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 13;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000014 && 0x800000024FA4B770 == object || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 14;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x7261437961646F74 && object == 0xE900000000000064)
    {

      v5 = 15;
      goto LABEL_68;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 15;
      goto LABEL_68;
    }

LABEL_67:
    v5 = 16;
    goto LABEL_68;
  }

  v5 = 0;
LABEL_68:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

void OfferTint.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v12, v5);
  if (!v15)
  {
    v21 = sub_24F9285B8();
    (*(*(v21 - 8) + 8))(a2, v21);
    v16(a1, v5);
    v20 = 0;
    goto LABEL_17;
  }

  v40 = v5;
  v17 = a2;
  v18 = v13 == 1702194274 && v15 == 0xE400000000000000;
  if (v18 || (sub_24F92CE08() & 1) != 0)
  {

    v19 = sub_24F9285B8();
    (*(*(v19 - 8) + 8))(a2, v19);
    v16(a1, v40);
LABEL_8:
    v20 = 0;
LABEL_9:
    v15 = 0;
    goto LABEL_17;
  }

  v22 = v13 == 0x65676E61726FLL && v15 == 0xE600000000000000;
  v23 = a1;
  v24 = v16;
  if (v22 || (sub_24F92CE08() & 1) != 0)
  {

    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v17, v25);
    v16(a1, v40);
    v15 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v27 = v13 == 0x6E65657267 && v15 == 0xE500000000000000;
  v28 = v17;
  v29 = v40;
  if (v27 || (sub_24F92CE08() & 1) != 0)
  {

    v30 = sub_24F9285B8();
    (*(*(v30 - 8) + 8))(v17, v30);
    v24(v23, v29);
    v15 = 0;
    v20 = 2;
    goto LABEL_17;
  }

  if (v13 == 0x6D6F74737563 && v15 == 0xE600000000000000)
  {
  }

  else
  {
    v32 = sub_24F92CE08();

    if ((v32 & 1) == 0)
    {
      v33 = sub_24F9285B8();
      (*(*(v33 - 8) + 8))(v28, v33);
      v24(v23, v29);
      goto LABEL_8;
    }
  }

  v34 = v39;
  sub_24F928398();
  v20 = JSONObject.appStoreColor.getter();
  v24(v34, v29);
  if (!v20)
  {
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v28, v37);
    v24(v23, v29);
    goto LABEL_9;
  }

  v35 = v38;
  sub_24F928398();
  v15 = JSONObject.appStoreColor.getter();
  v36 = sub_24F9285B8();
  (*(*(v36 - 8) + 8))(v28, v36);
  v24(v23, v29);
  v24(v35, v29);
  if (!v15)
  {

    v20 = 0;
  }

LABEL_17:
  v26 = v41;
  *v41 = v20;
  v26[1] = v15;
}

GameStoreKit::OfferLabelStyle_optional __swiftcall OfferLabelStyle.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_15;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 1701736302 || fromString.value._object != 0xE400000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 0x726564726F657270 && object == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_16;
    }

    if (countAndFlagsBits == 0xD000000000000010 && 0x800000024FA4B690 == object)
    {

      v5 = 2;
      goto LABEL_16;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 2;
      goto LABEL_16;
    }

LABEL_15:
    v5 = 3;
    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

GameStoreKit::OfferType_optional __swiftcall OfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OfferType.rawValue.getter()
{
  v1 = 7368801;
  v2 = 0x656461637261;
  if (*v0 != 2)
  {
    v2 = 0x7041656461637261;
  }

  if (*v0)
  {
    v1 = 0x7275507070416E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E97C044()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E97C10C()
{
  sub_24F92B218();
}

uint64_t sub_24E97C1C0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E97C290(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x7041656461637261;
    v4 = 0xE900000000000070;
  }

  if (*v1)
  {
    v3 = 0x7275507070416E69;
    v2 = 0xED00006573616863;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t OfferDisplayProperties.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t OfferDisplayProperties.bundleId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t OfferDisplayProperties.parentAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

id OfferDisplayProperties.tint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return sub_24E9534EC(v2, v3);
}

uint64_t OfferDisplayProperties.subscriptionFamilyId.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t OfferDisplayProperties.overrideLocale.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t OfferDisplayProperties.priceFormatted.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

__n128 OfferDisplayProperties.__allocating_init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, _OWORD *a11, char a12, char a13, char a14, char a15, char a16, char *a17, char a18, uint64_t a19, char a20, _OWORD *a21, __n128 a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  v31 = swift_allocObject();
  v32 = *a2;
  v33 = a2[1];
  v34 = *a9;
  v35 = *a10;
  v36 = *a17;
  *(v31 + 16) = *a1;
  *(v31 + 24) = v32;
  *(v31 + 32) = v33;
  *(v31 + 40) = a3;
  *(v31 + 48) = a4;
  *(v31 + 56) = *a5;
  *(v31 + 72) = a6;
  *(v31 + 80) = a7;
  *(v31 + 88) = a8;
  *(v31 + 96) = v34;
  *(v31 + 97) = v35;
  *(v31 + 104) = *a11;
  *(v31 + 120) = a12;
  *(v31 + 121) = a13;
  *(v31 + 122) = a14;
  *(v31 + 123) = a15;
  *(v31 + 124) = a16;
  *(v31 + 125) = a18;
  *(v31 + 126) = v36;
  *(v31 + 128) = a19;
  *(v31 + 136) = a20 & 1;
  v37 = a21[1];
  *(v31 + 144) = *a21;
  *(v31 + 160) = v37;
  result = a22;
  *(v31 + 176) = a22;
  *(v31 + 192) = a23;
  *(v31 + 200) = a24;
  *(v31 + 208) = a25;
  *(v31 + 216) = a26;
  *(v31 + 224) = a27;
  *(v31 + 232) = a28;
  *(v31 + 240) = a29;
  return result;
}

uint64_t OfferDisplayProperties.init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, _OWORD *a11, char a12, char a13, char a14, char a15, char a16, char *a17, char a18, uint64_t a19, char a20, _OWORD *a21, __int128 a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  v31 = *a2;
  v30 = a2[1];
  v32 = *a9;
  v33 = *a10;
  v34 = *a17;
  *(v29 + 16) = *a1;
  *(v29 + 24) = v31;
  *(v29 + 32) = v30;
  *(v29 + 40) = a3;
  *(v29 + 48) = a4;
  *(v29 + 56) = *a5;
  *(v29 + 72) = a6;
  *(v29 + 80) = a7;
  *(v29 + 88) = a8;
  *(v29 + 96) = v32;
  *(v29 + 97) = v33;
  *(v29 + 104) = *a11;
  *(v29 + 120) = a12;
  *(v29 + 121) = a13;
  *(v29 + 122) = a14;
  *(v29 + 123) = a15;
  *(v29 + 124) = a16;
  *(v29 + 125) = a18;
  *(v29 + 126) = v34;
  *(v29 + 128) = a19;
  *(v29 + 136) = a20 & 1;
  v35 = a21[1];
  *(v29 + 144) = *a21;
  *(v29 + 160) = v35;
  *(v29 + 176) = a22;
  *(v29 + 192) = a23;
  *(v29 + 200) = a24;
  *(v29 + 208) = a25;
  *(v29 + 216) = a26;
  *(v29 + 224) = a27;
  *(v29 + 232) = a28;
  *(v29 + 240) = a29;
  return v29;
}

unint64_t sub_24E97C76C()
{
  result = qword_27F222F88;
  if (!qword_27F222F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F88);
  }

  return result;
}

char sub_24E97C7D8@<W0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  LOBYTE(v7) = OfferTitleType.init(rawValue:)(v6);
  if (v10 == 18 || (v7 = sub_24F928348(), !v8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = v10;
    a3[1] = v7;
    a3[2] = v8;
  }

  return v7;
}

uint64_t sub_24E97C85C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, unsigned __int8 *a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  v30 = *a4;
  v76 = *a5;
  v32 = *a6;
  v31 = *(a6 + 8);
  v33 = *a12;
  v67 = *(v25 + 16);
  v66 = *(v25 + 24);
  v75 = *(v25 + 32);
  v64 = *(v25 + 56);
  v65 = *(v25 + 40);
  v73 = *(v25 + 64);
  v74 = *(v25 + 48);
  if (a1)
  {
    v63 = a1;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v63 = *(v25 + 72);

    if (a2)
    {
LABEL_3:
      v62 = a2;
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  v62 = *(v25 + 80);

  if (a3)
  {
LABEL_4:
    v61 = a3;
    if (v30 != 7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_31:
  v61 = *(v25 + 88);

  if (v30 == 7)
  {
LABEL_5:
    LOBYTE(v30) = *(v25 + 96);
  }

LABEL_6:
  if (v76 == 16)
  {
    LOBYTE(v76) = *(v25 + 97);
  }

  v71 = v31;
  v72 = v32;
  if (v32 == 3)
  {
    v71 = *(v25 + 112);
    v72 = *(v25 + 104);
    sub_24E9534EC(v72, v71);
  }

  if (a7 == 2)
  {
    a7 = *(v25 + 120);
  }

  v34 = a9;
  if (a8 == 2)
  {
    a8 = *(v25 + 121);
  }

  v35 = a10;
  if (a9 == 2)
  {
    v34 = *(v25 + 122);
  }

  v36 = a11;
  if (a10 == 2)
  {
    v35 = *(v25 + 123);
  }

  if (a11 == 2)
  {
    v36 = *(v25 + 124);
  }

  v60 = v34;
  v37 = a13;
  if (v33 == 3)
  {
    LOBYTE(v33) = *(v25 + 126);
  }

  if (a13 == 2)
  {
    v37 = *(v25 + 125);
  }

  v58 = v36;
  v59 = v35;
  v57 = v37;
  if (a15)
  {
    v56 = *(v25 + 128);
    v55 = *(v25 + 136);
  }

  else
  {
    v55 = 0;
    v56 = a14;
  }

  v69 = a8;
  sub_24E94E17C(a16, &v77);
  if (v78)
  {
    sub_24E612B0C(&v77, v79);

    sub_24E97CFF4(v32, v31);
  }

  else
  {
    sub_24E94E17C(v25 + 144, v79);
    v38 = v78;

    sub_24E97CFF4(v32, v31);
    if (v38)
    {
      sub_24E601704(&v77, &qword_27F2129B0);
    }
  }

  v68 = v33;
  v40 = a18;
  if (!a18)
  {
    a17 = *(v25 + 176);
  }

  v53 = v40;
  v41 = a21;
  v42 = a20;
  if (!a20)
  {
    a19 = *(v25 + 192);
  }

  v52 = v42;
  v54 = a19;
  if (a21 == 2)
  {
    v41 = *(v25 + 208);
  }

  v44 = a24;
  v45 = a23;
  if (!a23)
  {
    a22 = *(v25 + 216);
    v45 = *(v25 + 224);
  }

  v51 = a22;
  v46 = v30;
  if (a24 == 2)
  {
    v44 = *(v25 + 232);
  }

  v47 = a25;
  if (!a25)
  {
    v47 = *(v25 + 240);
  }

  type metadata accessor for OfferDisplayProperties();
  v48 = swift_allocObject();
  *(v48 + 16) = v67;
  *(v48 + 24) = v66;
  *(v48 + 32) = v75;
  *(v48 + 40) = v65;
  *(v48 + 48) = v74;
  *(v48 + 56) = v64;
  *(v48 + 64) = v73;
  *(v48 + 72) = v63;
  *(v48 + 80) = v62;
  *(v48 + 88) = v61;
  *(v48 + 96) = v46;
  *(v48 + 97) = v76;
  *(v48 + 104) = v72;
  *(v48 + 112) = v71;
  *(v48 + 120) = a7 & 1;
  *(v48 + 121) = v69 & 1;
  *(v48 + 122) = v60 & 1;
  *(v48 + 123) = v59 & 1;
  *(v48 + 124) = v58 & 1;
  *(v48 + 125) = v57 & 1;
  *(v48 + 126) = v68;
  *(v48 + 128) = v56;
  *(v48 + 136) = v55;
  v49 = v79[1];
  *(v48 + 144) = v79[0];
  *(v48 + 160) = v49;
  *(v48 + 176) = a17;
  *(v48 + 184) = v53;
  *(v48 + 192) = v54;
  *(v48 + 200) = v52;
  *(v48 + 208) = v41 & 1;
  *(v48 + 216) = v51;
  *(v48 + 224) = v45;
  *(v48 + 232) = v44 & 1;
  *(v48 + 240) = v47;

  return v48;
}

uint64_t OfferDisplayProperties.deinit()
{

  sub_24E97D004(*(v0 + 104), *(v0 + 112));
  sub_24E601704(v0 + 144, &qword_27F2129B0);

  return v0;
}

uint64_t OfferDisplayProperties.__deallocating_deinit()
{
  OfferDisplayProperties.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E97CD80@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OfferDisplayProperties.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t OfferDisplayProperties.isArcadeOffer.getter()
{
  if (*(v0 + 16) == 2)
  {
    goto LABEL_8;
  }

  v1 = sub_24F92CE08();

  if (v1)
  {
LABEL_9:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  if (*(v0 + 16) > 2u)
  {
LABEL_8:

    goto LABEL_9;
  }

  v2 = sub_24F92CE08();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 97);
  v4 = v3 > 0xC;
  v5 = 0x1380u >> v3;
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

unint64_t sub_24E97CF28()
{
  result = qword_27F222F90;
  if (!qword_27F222F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F90);
  }

  return result;
}

unint64_t sub_24E97CFA0()
{
  result = qword_27F222F98;
  if (!qword_27F222F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222F98);
  }

  return result;
}

id sub_24E97CFF4(id result, void *a2)
{
  if (result != 3)
  {
    return sub_24E9534EC(result, a2);
  }

  return result;
}

void sub_24E97D004(void *a1, void *a2)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_24E97D04C()
{
  result = qword_27F222FA0;
  if (!qword_27F222FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FA0);
  }

  return result;
}

unint64_t sub_24E97D0A4()
{
  result = qword_27F222FA8;
  if (!qword_27F222FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FA8);
  }

  return result;
}

unint64_t sub_24E97D0FC()
{
  result = qword_27F222FB0;
  if (!qword_27F222FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FB0);
  }

  return result;
}

unint64_t sub_24E97D154()
{
  result = qword_27F222FB8;
  if (!qword_27F222FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FB8);
  }

  return result;
}

unint64_t sub_24E97D1AC()
{
  result = qword_27F222FC0;
  if (!qword_27F222FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222FC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E97D370(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E97D3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_24E97D41C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of OfferDisplayProperties.__allocating_init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 280);

  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 296);

  return v5(a1, a2, a3, a4);
}

uint64_t OfferStateAction.preferredAction(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v12, *(v2 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps), ObjectType, a2);
  v5 = v16 >> 60;
  if ((v16 >> 60) <= 2)
  {
    if (v5 == 1)
    {
    }

    if (v5 == 2)
    {
      goto LABEL_30;
    }

LABEL_16:
    v6 = v12;
    goto LABEL_17;
  }

  if (v5 == 3 || v5 == 4)
  {
LABEL_30:
    sub_24E88D2AC(&v12);
  }

  if (v5 != 8)
  {
    goto LABEL_16;
  }

  v6 = v12;
  if (!v17 && v16 == 0x8000000000000000 && v12 == 1)
  {
    v7 = vorrq_s8(v14, v15);
    if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v13))
    {
    }
  }

LABEL_17:
  if (v5 == 8)
  {
    v8 = v15.i64[1] | v17;
    v9 = v14.i64[1] | v14.i64[0] | v13;
    if (v16 == 0x8000000000000000 && !(v8 | v6 | v15.i64[0] | v9))
    {
      goto LABEL_30;
    }

    if (v16 == 0x8000000000000000 && v6 == 4 && !(v8 | v15.i64[0] | v9))
    {
      goto LABEL_30;
    }
  }

  if (v5 != 8)
  {
    goto LABEL_30;
  }

  if (v17)
  {
    goto LABEL_30;
  }

  if (v16 != 0x8000000000000000)
  {
    goto LABEL_30;
  }

  if (v6 != 3)
  {
    goto LABEL_30;
  }

  v10 = vorrq_s8(v14, v15);
  if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v13)
  {
    goto LABEL_30;
  }
}

uint64_t OfferStateAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  a1[1] = v2;
}

void *OfferStateAction.__allocating_init(title:adamId:defaultAction:buyAction:updateAction:downloadAction:purchasedAction:installedAction:resumeAction:openAction:subscribePageAction:restrictedAction:cancelAction:includeBetaApps:presentationStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v53 = a8;
  v42 = a7;
  v49 = a1;
  v50 = a2;
  v51 = a16;
  v44 = a13;
  v43 = a12;
  v41 = a11;
  v52 = a10;
  LODWORD(v48) = a15;
  v40 = sub_24F91F6B8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = a3[1];
  v24 = (v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  *v24 = *a3;
  v24[1] = v23;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction) = a4;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_buyAction) = a5;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_updateAction) = a6;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_downloadAction) = v42;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_purchasedAction) = a8;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_installedAction) = a9;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_resumeAction) = a10;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction) = a11;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction) = v43;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction) = v44;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_cancelAction) = a14;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps) = v48;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v46 = a14;

  v48 = a4;

  v47 = a5;

  v45 = a6;

  sub_24F928A98();
  v25 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  v27 = (v22 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = v22 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v59, &v56);
  if (*(&v57 + 1))
  {
    v29 = v57;
    *v28 = v56;
    *(v28 + 1) = v29;
    *(v28 + 4) = v58;
  }

  else
  {
    v30 = v38;
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v39 + 8))(v30, v40);
    v54 = v31;
    v55 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v56, &qword_27F235830);
  }

  sub_24E601704(v59, &qword_27F235830);
  v34 = v50;
  v22[2] = v49;
  v22[3] = v34;
  v35 = v51;
  v22[4] = 0;
  v22[5] = v35;
  return v22;
}

void *OfferStateAction.init(title:adamId:defaultAction:buyAction:updateAction:downloadAction:purchasedAction:installedAction:resumeAction:openAction:subscribePageAction:restrictedAction:cancelAction:includeBetaApps:presentationStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v17 = v16;
  v61 = a2;
  v60 = a1;
  v62 = a16;
  v64 = a14;
  v50 = a13;
  v65 = a12;
  LODWORD(v57) = a15;
  v48 = sub_24F91F6B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v25 - 8);
  v63 = &v45 - v26;
  v59 = sub_24F928AD8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v49 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3[1];
  v29 = (v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  *v29 = *a3;
  v29[1] = v28;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction) = a4;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_buyAction) = a5;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_updateAction) = a6;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_downloadAction) = a7;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_purchasedAction) = a8;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_installedAction) = a9;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_resumeAction) = a10;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction) = a11;
  v30 = v64;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction) = v65;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction) = v50;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_cancelAction) = v30;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps) = v57;
  v75 = 0;
  memset(v74, 0, sizeof(v74));

  v51 = a4;

  v52 = a5;

  v53 = a6;

  v54 = a7;
  v31 = v49;

  v55 = a8;

  v56 = a10;

  v57 = a11;

  sub_24F928A98();
  v32 = sub_24F929608();
  v33 = v63;
  (*(*(v32 - 8) + 56))();
  v34 = (v17 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E65E064(v74, &v68);
  if (*(&v69 + 1))
  {
    v71 = v68;
    v72 = v69;
    v73 = v70;
  }

  else
  {
    v35 = v46;
    sub_24F91F6A8();
    v36 = sub_24F91F668();
    v45 = a9;
    v37 = v36;
    v39 = v38;
    (*(v47 + 8))(v35, v48);
    v66 = v37;
    v67 = v39;
    v33 = v63;
    sub_24F92C7F8();
    sub_24E601704(&v68, &qword_27F235830);
  }

  sub_24E601704(v74, &qword_27F235830);
  v40 = v17 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v40 + 4) = v73;
  v41 = v72;
  *v40 = v71;
  *(v40 + 1) = v41;
  sub_24E65E0D4(v33, v17 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v42 = v61;
  v17[2] = v60;
  v17[3] = v42;
  v43 = v62;
  v17[4] = 0;
  v17[5] = v43;
  (*(v58 + 32))(v17 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v31, v59);
  return v17;
}

char *OfferStateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v289 = a2;
  v286 = *v3;
  v290 = sub_24F9285B8();
  v287 = *(v290 - 8);
  v5 = MEMORY[0x28223BE20](v290);
  v278 = &v263 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v272 = &v263 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v271 = &v263 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v270 = &v263 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v269 = &v263 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v268 = &v263 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v267 = &v263 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v266 = &v263 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v265 = &v263 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v264 = &v263 - v24;
  MEMORY[0x28223BE20](v23);
  v263 = &v263 - v25;
  v26 = sub_24F928388();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v277 = &v263 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v275 = &v263 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v285 = &v263 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v291 = &v263 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v274 = &v263 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v273 = &v263 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v263 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v263 - v43;
  v45 = a1;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v276 = v27;
  v51 = *(v27 + 8);
  v50 = v27 + 8;
  v49 = v51;
  v51(v44, v26);
  if (!v48)
  {
    v42 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v59 = 0x64496D616461;
    v60 = v286;
    v59[1] = 0xE600000000000000;
    v59[2] = v60;
    (*(*(v42 - 1) + 104))(v59, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v287 + 8))(v289, v290);
    v49(v45, v26);
    goto LABEL_5;
  }

  v288 = v49;
  v292 = v50;
  v293 = v26;
  v52 = (v3 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  *v52 = v46;
  v52[1] = v48;
  v53 = type metadata accessor for Action();
  sub_24F928398();
  v54 = v289;
  v55 = v283;
  v56 = static Action.makeInstance(byDeserializing:using:)(v42, v289);
  v279 = v55;
  if (v55)
  {
    (*(v287 + 8))(v54, v290);
    v57 = v293;
    v58 = v288;
    v288(v45, v293);
    v58(v42, v57);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v42;
  }

  v62 = v56;
  v284 = v45;
  v288(v42, v293);
  v63 = OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction;
  v283 = v3;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction) = v62;
  if (qword_27F210030 != -1)
  {
    swift_once();
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE0);
  v65 = __swift_project_value_buffer(v64, qword_27F222FC8);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE8);
  v281 = v65;
  sub_24F9285D8();
  v66 = v295;
  v282 = v53;
  if (!v295)
  {
    v66 = sub_24E6091F0(MEMORY[0x277D84F90]);
  }

  v296 = v66;
  v67 = v273;
  sub_24F928398();
  v68 = v274;
  sub_24F928398();
  v69 = v67;
  v70 = v293;
  v71 = v288;
  v288(v69, v293);
  v72 = sub_24F928348();
  v74 = v73;
  v71(v68, v70);
  if (v74)
  {
    v75 = *(v283 + v63);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v295 = v296;
    sub_24E81C4B0(v75, v72, v74, isUniquelyReferenced_nonNull_native);

    v66 = v295;
    v296 = v295;
  }

  v286 = v66;
  v77 = v291;
  sub_24F928398();
  v78 = v285;
  sub_24F928398();
  v79 = v293;
  v80 = v288;
  v288(v77, v293);
  v81 = sub_24F928348();
  v83 = v82;
  v84 = v78;
  v85 = v286;
  v80(v84, v79);
  v86 = v80;
  if (v83)
  {
    if (*(v85 + 16))
    {

      v87 = sub_24E76D644(v81, v83);
      v89 = v88;

      if (v89)
      {
        v90 = *(*(v85 + 56) + 8 * v87);

LABEL_22:

        goto LABEL_23;
      }
    }
  }

  v295 = v85;

  v91 = v263;
  sub_24F928528();

  v92 = v291;
  sub_24F928398();
  v90 = static Action.tryToMakeInstance(byDeserializing:using:)(v92, v91);
  v86(v92, v293);
  if (!v90)
  {
    (*(v287 + 8))(v91, v290);
    goto LABEL_22;
  }

  v93 = v287;
  if (v83)
  {
    swift_beginAccess();
    swift_retain_n();
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v90, v81, v83, v94);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v93 + 8))(v91, v290);
LABEL_23:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_buyAction) = v90;
  v95 = v291;
  sub_24F928398();
  v96 = v285;
  sub_24F928398();
  v97 = v293;
  v98 = v288;
  v288(v95, v293);
  v99 = sub_24F928348();
  v101 = v100;
  v98(v96, v97);
  v102 = v98;
  v103 = v286;
  if (v101)
  {
    if (*(v286 + 16))
    {

      v104 = sub_24E76D644(v99, v101);
      v106 = v105;

      if (v106)
      {
        v107 = *(*(v103 + 56) + 8 * v104);

LABEL_32:

        goto LABEL_33;
      }
    }
  }

  v295 = v103;

  v108 = v264;
  sub_24F928528();

  v109 = v291;
  v110 = v108;
  sub_24F928398();
  v107 = static Action.tryToMakeInstance(byDeserializing:using:)(v109, v108);
  v102(v109, v293);
  if (!v107)
  {
    (*(v287 + 8))(v110, v290);
    goto LABEL_32;
  }

  v111 = v287;
  if (v101)
  {
    swift_beginAccess();
    swift_retain_n();
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v107, v99, v101, v112);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v111 + 8))(v110, v290);
LABEL_33:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_updateAction) = v107;
  v113 = v291;
  sub_24F928398();
  v114 = v285;
  sub_24F928398();
  v115 = v293;
  v116 = v288;
  v288(v113, v293);
  v117 = sub_24F928348();
  v119 = v118;
  v116(v114, v115);
  v120 = v116;
  v121 = v286;
  if (v119)
  {
    if (*(v286 + 16))
    {

      v122 = sub_24E76D644(v117, v119);
      v124 = v123;

      if (v124)
      {
        v125 = *(*(v121 + 56) + 8 * v122);

LABEL_42:

        goto LABEL_43;
      }
    }
  }

  v295 = v121;

  v126 = v265;
  sub_24F928528();

  v127 = v291;
  sub_24F928398();
  v125 = static Action.tryToMakeInstance(byDeserializing:using:)(v127, v126);
  v120(v127, v293);
  if (!v125)
  {
    (*(v287 + 8))(v126, v290);
    goto LABEL_42;
  }

  if (v119)
  {
    swift_beginAccess();
    swift_retain_n();
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v125, v117, v119, v128);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v287 + 8))(v126, v290);
LABEL_43:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_downloadAction) = v125;
  v129 = v291;
  sub_24F928398();
  v130 = v285;
  sub_24F928398();
  v131 = v293;
  v132 = v288;
  v288(v129, v293);
  v133 = sub_24F928348();
  v135 = v134;
  v132(v130, v131);
  v136 = v132;
  v137 = v286;
  if (v135)
  {
    if (*(v286 + 16))
    {

      v138 = sub_24E76D644(v133, v135);
      v140 = v139;

      if (v140)
      {
        v141 = *(*(v137 + 56) + 8 * v138);

LABEL_52:

        goto LABEL_53;
      }
    }
  }

  v295 = v137;

  v142 = v266;
  sub_24F928528();

  v143 = v291;
  v144 = v142;
  sub_24F928398();
  v141 = static Action.tryToMakeInstance(byDeserializing:using:)(v143, v142);
  v136(v143, v293);
  if (!v141)
  {
    (*(v287 + 8))(v144, v290);
    goto LABEL_52;
  }

  if (v135)
  {
    swift_beginAccess();
    swift_retain_n();
    v145 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v141, v133, v135, v145);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v287 + 8))(v144, v290);
LABEL_53:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_purchasedAction) = v141;
  v146 = v291;
  sub_24F928398();
  v147 = v285;
  sub_24F928398();
  v148 = v293;
  v149 = v288;
  v288(v146, v293);
  v150 = sub_24F928348();
  v152 = v151;
  v149(v147, v148);
  v153 = v149;
  v154 = v286;
  if (v152 && *(v286 + 16) && (, v155 = sub_24E76D644(v150, v152), v157 = v156, , (v157 & 1) != 0))
  {
    v158 = *(*(v154 + 56) + 8 * v155);
  }

  else
  {
    v295 = v154;

    v159 = v267;
    sub_24F928528();

    v160 = v291;
    sub_24F928398();
    v158 = static Action.tryToMakeInstance(byDeserializing:using:)(v160, v159);
    v153(v160, v293);
    if (v158)
    {
      v161 = v287;
      if (v152)
      {
        swift_beginAccess();
        swift_retain_n();
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v158, v150, v152, v162);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v161 + 8))(v159, v290);
    }

    else
    {
      (*(v287 + 8))(v159, v290);
    }
  }

  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_installedAction) = v158;
  v163 = v291;
  sub_24F928398();
  v164 = v285;
  sub_24F928398();
  v165 = v293;
  v166 = v288;
  v288(v163, v293);
  v167 = sub_24F928348();
  v169 = v168;
  v166(v164, v165);
  v170 = v166;
  v171 = v286;
  if (v169)
  {
    if (*(v286 + 16))
    {

      v172 = sub_24E76D644(v167, v169);
      v174 = v173;

      if (v174)
      {
        v175 = *(*(v171 + 56) + 8 * v172);

LABEL_71:

        goto LABEL_72;
      }
    }
  }

  v295 = v171;

  v176 = v268;
  sub_24F928528();
  v177 = v176;

  v178 = v291;
  sub_24F928398();
  v175 = static Action.tryToMakeInstance(byDeserializing:using:)(v178, v176);
  v170(v178, v293);
  if (!v175)
  {
    (*(v287 + 8))(v177, v290);
    goto LABEL_71;
  }

  v179 = v287;
  if (v169)
  {
    swift_beginAccess();
    swift_retain_n();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_24E81C4B0(v175, v167, v169, v180);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v179 + 8))(v177, v290);
LABEL_72:
  *(v283 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_resumeAction) = v175;
  v181 = v291;
  sub_24F928398();
  v182 = v285;
  sub_24F928398();
  v183 = v293;
  v184 = v288;
  v288(v181, v293);
  v185 = sub_24F928348();
  v187 = v186;
  v184(v182, v183);
  v188 = v184;
  v189 = v286;
  if (v187 && *(v286 + 16) && (, v190 = sub_24E76D644(v185, v187), v192 = v191, , (v192 & 1) != 0))
  {
    v193 = *(*(v189 + 56) + 8 * v190);
  }

  else
  {
    v295 = v189;

    v194 = v269;
    sub_24F928528();
    v195 = v194;

    v196 = v291;
    sub_24F928398();
    v193 = static Action.tryToMakeInstance(byDeserializing:using:)(v196, v194);
    v188(v196, v293);
    if (v193)
    {
      v197 = v287;
      v198 = v283;
      if (v187)
      {
        swift_beginAccess();
        swift_retain_n();
        v199 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v193, v185, v187, v199);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v197 + 8))(v195, v290);
      goto LABEL_82;
    }

    (*(v287 + 8))(v195, v290);
  }

  v198 = v283;
LABEL_82:
  *(v198 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction) = v193;
  v200 = v291;
  sub_24F928398();
  v201 = v285;
  sub_24F928398();
  v202 = v293;
  v203 = v288;
  v288(v200, v293);
  v204 = sub_24F928348();
  v206 = v205;
  v203(v201, v202);
  v207 = v286;
  if (v206 && *(v286 + 16) && (, v208 = sub_24E76D644(v204, v206), v210 = v209, , (v210 & 1) != 0))
  {
    v211 = *(*(v207 + 56) + 8 * v208);

    v212 = v283;
  }

  else
  {
    v295 = v207;

    v213 = v270;
    sub_24F928528();

    v214 = v291;
    sub_24F928398();
    v211 = static Action.tryToMakeInstance(byDeserializing:using:)(v214, v213);
    v203(v214, v293);
    if (v211)
    {
      v215 = v287;
      v212 = v283;
      if (v206)
      {
        swift_beginAccess();
        swift_retain_n();
        v216 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v211, v204, v206, v216);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v215 + 8))(v213, v290);
    }

    else
    {
      (*(v287 + 8))(v213, v290);

      v212 = v283;
    }
  }

  *(v212 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction) = v211;
  v217 = v291;
  sub_24F928398();
  v218 = v285;
  sub_24F928398();
  v219 = v293;
  v220 = v288;
  v288(v217, v293);
  v221 = sub_24F928348();
  v223 = v222;
  v220(v218, v219);
  v224 = v286;
  if (v223 && *(v286 + 16) && (, v225 = sub_24E76D644(v221, v223), v227 = v226, , (v227 & 1) != 0))
  {
    v228 = *(*(v224 + 56) + 8 * v225);
  }

  else
  {
    v295 = v224;

    v229 = v271;
    sub_24F928528();

    v230 = v291;
    sub_24F928398();
    v228 = static Action.tryToMakeInstance(byDeserializing:using:)(v230, v229);
    v220(v230, v293);
    if (v228)
    {
      v231 = v287;
      if (v223)
      {
        swift_beginAccess();
        swift_retain_n();
        v232 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v228, v221, v223, v232);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v231 + 8))(v229, v290);
    }

    else
    {
      (*(v287 + 8))(v229, v290);
    }

    v212 = v283;
  }

  *(v212 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction) = v228;
  v233 = v291;
  sub_24F928398();
  v234 = v285;
  sub_24F928398();
  v235 = v293;
  v236 = v288;
  v288(v233, v293);
  v237 = sub_24F928348();
  v239 = v238;
  v236(v234, v235);
  v240 = v236;
  v241 = v286;
  if (v239 && *(v286 + 16) && (, v242 = sub_24E76D644(v237, v239), v244 = v243, , (v244 & 1) != 0))
  {
    v245 = *(*(v241 + 56) + 8 * v242);

    v246 = v212;
    v247 = v287;
    v248 = v284;
  }

  else
  {
    v285 = v237;
    v295 = v241;

    v249 = v272;
    sub_24F928528();

    v250 = v291;
    v248 = v284;
    sub_24F928398();
    v245 = static Action.tryToMakeInstance(byDeserializing:using:)(v250, v249);
    v240(v250, v293);
    if (v245)
    {
      v247 = v287;
      if (v239)
      {
        swift_beginAccess();
        swift_retain_n();
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_24E81C4B0(v245, v285, v239, v251);

        v286 = v294;
        swift_endAccess();
      }

      (*(v247 + 8))(v249, v290);
    }

    else
    {
      v247 = v287;
      (*(v287 + 8))(v249, v290);
    }

    v246 = v283;
  }

  *(v246 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_cancelAction) = v245;
  v252 = v275;
  sub_24F928398();
  v253 = sub_24F928278();
  v254 = v252;
  v255 = v293;
  v256 = v288;
  v288(v254, v293);
  *(v246 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_includeBetaApps) = v253 & 1;
  v257 = v277;
  (*(v276 + 16))(v277, v248, v255);
  v258 = v247;
  v259 = *(v247 + 16);
  v42 = v278;
  v260 = v289;
  v259(v278, v289, v290);
  v261 = v279;
  v262 = Action.init(deserializing:using:)(v257, v42);
  if (!v261)
  {
    v42 = v262;
  }

  (*(v258 + 8))(v260, v290);
  v256(v248, v255);

  return v42;
}

uint64_t sub_24E9803E4()
{
}

uint64_t OfferStateAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t OfferStateAction.__deallocating_deinit()
{
  OfferStateAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E9806B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE0);
  __swift_allocate_value_buffer(v0, qword_27F222FC8);
  __swift_project_value_buffer(v0, qword_27F222FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222FE8);
  return sub_24F928588();
}

uint64_t type metadata accessor for OfferStateAction()
{
  result = qword_27F222FF0;
  if (!qword_27F222FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E980878(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F92CA08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E980938, 0, 0);
}

uint64_t sub_24E980938()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_24E980A18;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24E980A18()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24E980C44;
  }

  else
  {
    v5 = sub_24E980B88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E980B88()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E980C44()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24E980CC4()
{
  result = qword_27F2163F0;
  if (!qword_27F2163F0)
  {
    type metadata accessor for WaitAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163F0);
  }

  return result;
}

uint64_t sub_24E980D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for WaitAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24E980F34(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24E981074(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F96D030;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F94D7B0, v12);

  return v10;
}

uint64_t sub_24E980F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E980F98()
{
  v1 = type metadata accessor for WaitAction();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24E981074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9810D8(uint64_t a1)
{
  v4 = *(type metadata accessor for WaitAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24E980878(a1, v1 + v5);
}

uint64_t sub_24E9811B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *SearchChartOrCategory.backgroundColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t SearchChartOrCategory.brickBadge.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchChartOrCategory.brickTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchChartOrCategory.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F213E68);
}

uint64_t SearchChartOrCategory.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F213E68);
  return swift_endAccess();
}

uint64_t SearchChartOrCategory.clickAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchChartOrCategory.clickSender.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0);
}

uint64_t SearchChartOrCategory.clickSender.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F2129B0);
  return swift_endAccess();
}

__n128 SearchChartOrCategory.artworkSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 SearchChartOrCategory.textSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t SearchChartOrCategory.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchChartOrCategory.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchChartOrCategory.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v89 = *v2;
  v87 = sub_24F91F6B8();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F9285B8();
  v6 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v99 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v84 - v9;
  MEMORY[0x28223BE20](v10);
  v106 = &v84 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  v103 = sub_24F928388();
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v94 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = &v84 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v84 - v26;
  v28 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  v102 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  v29 = sub_24F929608();
  (*(*(v29 - 8) + 56))(&v2[v28], 1, 1, v29);
  v90 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction;
  v30 = v2;
  *&v2[OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction] = 0;
  v31 = &v2[OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  sub_24F928398();
  v100 = v6;
  v32 = *(v6 + 16);
  v32(v14, a2, v118);
  v95 = v24;
  v91 = v14;
  sub_24F929548();
  v33 = v102;
  swift_beginAccess();
  v96 = v30;
  sub_24E61DA68(v27, v33 + v30, &qword_27F213E68);
  swift_endAccess();
  v34 = v106;
  v101 = a2;
  v35 = a2;
  v36 = v118;
  v32(v106, v35, v118);
  sub_24F928398();
  v102 = v32;
  v32(v97, v34, v36);
  type metadata accessor for Artwork();
  sub_24E982B1C(&qword_27F219660, type metadata accessor for Artwork);
  v37 = v104;
  v38 = sub_24F92B678();
  if (v37)
  {

    v97 = 0;
  }

  else
  {
    v97 = v38;
  }

  sub_24F928398();
  v102(v99, v106, v118);
  v39 = sub_24F92B678();
  v40 = v95;
  v99 = v39;
  v41 = v103;
  v42 = v98;
  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v104 = *(v105 + 8);
  v105 += 8;
  v104(v42, v41);
  if (v45)
  {
    v98 = 0;
    v94 = v45;
    sub_24F928398();
    v88 = a1;
    v46 = v91;
    v47 = v118;
    v48 = v102;
    v102(v91, v106, v118);
    sub_24E951E68();
    sub_24F929548();
    v93 = v43;
    v49 = v96;
    v50 = (v96 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea);
    v51 = v113;
    *v50 = v112;
    v50[1] = v51;
    v50[2] = *v114;
    *(v50 + 42) = *&v114[10];
    sub_24F928398();
    v52 = v106;
    v53 = v47;
    v54 = v103;
    v48(v46, v106, v53);
    sub_24F929548();
    v55 = (v49 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea);
    v56 = v116;
    *v55 = v115;
    v55[1] = v56;
    v55[2] = *v117;
    *(v55 + 42) = *&v117[10];
    type metadata accessor for Action();
    v57 = v88;
    sub_24F928398();
    v58 = static Action.tryToMakeInstance(byDeserializing:using:)(v40, v52);
    v59 = v104;
    v104(v40, v54);
    v60 = v90;
    swift_beginAccess();
    *(v49 + v60) = v58;

    sub_24F928398();
    sub_24E9824A0();
    sub_24F928208();
    v59(v40, v54);
    *(v49 + 48) = v109;
    v61 = v99;
    v49[7] = v97;
    v49[8] = v61;
    sub_24F928398();
    v62 = JSONObject.appStoreColor.getter();
    v59(v40, v54);
    v49[10] = v62;
    sub_24F928398();
    v63 = sub_24F928348();
    v65 = v64;
    v59(v40, v54);
    v49[2] = v63;
    v49[3] = v65;
    v66 = v94;
    v49[4] = v93;
    v49[5] = v66;
    v67 = v92;
    sub_24F928398();
    v68 = sub_24F928348();
    if (v69)
    {
      v107 = v68;
      v108 = v69;
      sub_24F92C7F8();
      v70 = v67;
    }

    else
    {
      v75 = v85;
      sub_24F91F6A8();
      v76 = sub_24F91F668();
      v78 = v77;
      (*(v86 + 8))(v75, v87);
      v107 = v76;
      v108 = v78;
      sub_24F92C7F8();
      v70 = v92;
    }

    v104(v70, v54);
    v79 = v110;
    *(v49 + 11) = v109;
    *(v49 + 13) = v79;
    v49[15] = v111;
    sub_24F928398();
    sub_24E951EBC();
    sub_24F928208();

    v80 = *(v100 + 8);
    v81 = v118;
    v80(v101, v118);
    v82 = v104;
    v104(v57, v54);
    v82(v40, v54);
    v80(v106, v81);
    *(v49 + 72) = v109;
  }

  else
  {

    v71 = sub_24F92AC38();
    sub_24E982B1C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v72 = 0x656C746974;
    v72[1] = 0xE500000000000000;
    v72[2] = v89;
    (*(*(v71 - 8) + 104))(v72, *MEMORY[0x277D22530], v71);
    swift_willThrow();
    v73 = *(v100 + 8);
    v74 = v118;
    v73(v101, v118);
    v104(a1, v41);
    v73(v106, v74);
    v49 = v96;
    sub_24E601704(v96 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics, &qword_27F213E68);

    sub_24E601704(v49 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender, &qword_27F2129B0);
    swift_deallocPartialClassInstance();
  }

  return v49;
}

unint64_t sub_24E9824A0()
{
  result = qword_27F223080;
  if (!qword_27F223080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223080);
  }

  return result;
}

uint64_t SearchChartOrCategory.deinit()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics, &qword_27F213E68);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t SearchChartOrCategory.__deallocating_deinit()
{
  SearchChartOrCategory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E982600()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_24E982634()
{
  v1 = *(*v0 + 32);

  return v1;
}

__n128 sub_24E982668@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_24E982694@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t type metadata accessor for SearchChartOrCategory()
{
  result = qword_27F223090;
  if (!qword_27F223090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E982764@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = type metadata accessor for Action();
    v7 = sub_24E982B1C(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = v6;
  a1[4] = v7;
}

void *sub_24E98281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchChartOrCategory.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9828D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F2129B0);
}

void *sub_24E982948()
{
  v1 = *(*v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_24E982984@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F213E68);
}

void sub_24E9829F8()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E982B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E982BD8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24F9287F8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_24F9287D8();
}

uint64_t sub_24E982C5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9287F8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24E982CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E982D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24E982D8C(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = result;

  v9 = v8;
  v10 = [v6 valueWithObject:sub_24F92CF68() inContext:{a1, v4, v3}];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  LOBYTE(v12) = v5;
  v11 = [v6 valueWithObject:sub_24F92CF68() inContext:{a1, v12}];
  result = swift_unknownObjectRelease();
  if (v11)
  {
    sub_24F92C328();

    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_24E982F10()
{
  result = qword_27F2230D0;
  if (!qword_27F2230D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2230D0);
  }

  return result;
}

unint64_t sub_24E982F6C()
{
  result = qword_27F2230D8;
  if (!qword_27F2230D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2230D8);
  }

  return result;
}

uint64_t FramedArtwork.__allocating_init(id:artwork:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v25 = a7;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork) = a2;
  sub_24E60169C(a1, v35, &qword_27F235830);
  sub_24E60169C(a8, v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);
  v16 = v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  sub_24E60169C(v35, &v32, &qword_27F235830);
  if (*(&v33 + 1))
  {
    v17 = v33;
    *v16 = v32;
    *(v16 + 16) = v17;
    *(v16 + 32) = v34;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v30 = v18;
    v31 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  sub_24E601704(a8, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v35, &qword_27F235830);
  *(v15 + 17) = v26 & 1;
  *(v15 + 16) = v27 & 1;
  v21 = v29;
  *(v15 + 24) = v28;
  *(v15 + 32) = v21;
  v22 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v23 = sub_24F91F008();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  return v15;
}

uint64_t FramedArtwork.init(id:artwork:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v29 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v28 = sub_24F91F6B8();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork) = a2;
  v30 = a1;
  sub_24E60169C(a1, v43, &qword_27F235830);
  sub_24E60169C(a8, v17, &qword_27F213E68);
  sub_24E60169C(v43, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v27 + 8))(v14, v28);
    v35 = v18;
    v36 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a8, &qword_27F213E68);
  sub_24E601704(v30, &qword_27F235830);
  sub_24E601704(v43, &qword_27F235830);
  v21 = v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  *(v21 + 32) = v42;
  v22 = v41;
  *v21 = v40;
  *(v21 + 16) = v22;
  sub_24E65E0D4(v17, v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics);
  *(v9 + 17) = v31 & 1;
  *(v9 + 16) = v32 & 1;
  v23 = v34;
  *(v9 + 24) = v33;
  *(v9 + 32) = v23;
  v24 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v25 = sub_24F91F008();
  (*(*(v25 - 8) + 56))(v9 + v24, 1, 1, v25);
  return v9;
}

uint64_t FramedArtwork.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v25 = sub_24F928388();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  type metadata accessor for Artwork();
  v31 = a1;
  sub_24F928398();
  v28 = v5;
  v29 = v4;
  v14 = *(v5 + 16);
  v30 = a2;
  v24 = v14;
  v14(v9, a2, v4);
  sub_24E9838D4();
  sub_24F929548();
  if (v32)
  {
    v15 = sub_24E9F738C();
  }

  else
  {
    v15 = 0;
  }

  *(v27 + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork) = v15;
  v16 = v31;
  v17 = v25;
  (*(v10 + 16))(v12, v31, v25);
  v18 = v26;
  v19 = v29;
  v20 = v30;
  v24(v26, v30, v29);
  v21 = FramedMedia.init(deserializing:using:)(v12, v18);
  (*(v28 + 8))(v20, v19);
  (*(v10 + 8))(v16, v17);
  return v21;
}

unint64_t sub_24E9838D4()
{
  result = qword_27F219660;
  if (!qword_27F219660)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219660);
  }

  return result;
}

uint64_t FramedArtwork.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t FramedArtwork.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramedArtwork()
{
  result = qword_27F2230E0;
  if (!qword_27F2230E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchResultsSegment.__allocating_init(id:name:contextCard:content:message:noResultsLink:noResultsHidesLargeTitle:pageMetrics:pageRenderEvent:transparencyLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  v21 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v22 = sub_24F928818();
  (*(*(v22 - 8) + 32))(v20 + v21, a10, v22);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageRenderEvent) = a11;
  *(v20 + 88) = a12;
  return v20;
}

uint64_t SearchResultsSegment.init(id:name:contextCard:content:message:noResultsLink:noResultsHidesLargeTitle:pageMetrics:pageRenderEvent:transparencyLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = a9;
  v13 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v14 = sub_24F928818();
  (*(*(v14 - 8) + 32))(v12 + v13, a10, v14);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageRenderEvent) = a11;
  *(v12 + 88) = a12;
  return v12;
}

uint64_t SearchResultsSegment.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = sub_24F928818();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = v64 - v9;
  MEMORY[0x28223BE20](v10);
  v84 = v64 - v11;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = v64 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  MEMORY[0x28223BE20](v20);
  v85 = v64 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v64 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v64 - v26;
  v91 = a1;
  sub_24F928398();
  v75 = sub_24F928348();
  v29 = v28;
  v32 = *(v13 + 8);
  v31 = v13 + 8;
  v30 = v32;
  v32(v27, v12);
  v86 = v29;
  if (!v29)
  {
    v40 = sub_24F92AC38();
    sub_24E984BD8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v46 = 25705;
    v47 = v88;
    v46[1] = 0xE200000000000000;
    v46[2] = v47;
    (*(*(v40 - 8) + 104))(v46, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v6 + 8))(v90, v5);
LABEL_7:
    v30(v91, v12);
    return v40;
  }

  v87 = v6;
  v89 = v30;
  sub_24F928398();
  v33 = sub_24F928348();
  v30 = v89;
  v34 = v33;
  v36 = v35;
  v89(v24, v12);
  if (!v36)
  {

    v40 = sub_24F92AC38();
    sub_24E984BD8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v48 = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v88;
    (*(*(v40 - 8) + 104))(v48, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v87 + 8))(v90, v5);
    goto LABEL_7;
  }

  v69 = v34;
  v71 = v36;
  v73 = v31;
  v74 = v12;
  type metadata accessor for SearchResultsContextCard();
  sub_24F928398();
  v37 = v87 + 16;
  v38 = *(v87 + 16);
  v39 = v90;
  v38(v84, v90, v5);
  sub_24E984BD8(&qword_27F2230F0, type metadata accessor for SearchResultsContextCard);
  v40 = v39;
  v41 = v5;
  sub_24F929548();
  v42 = v96;
  sub_24F928398();
  v43 = v82;
  v70 = v37;
  v72 = v38;
  v38(v82, v40, v41);
  type metadata accessor for SearchResultsContent();
  swift_allocObject();
  v44 = v83;
  v45 = SearchResultsContent.init(deserializing:using:)(v19, v43);
  if (v44)
  {

    (*(v87 + 8))(v40, v41);
    v89(v91, v74);
  }

  else
  {
    v82 = v45;
    v83 = v42;
    type metadata accessor for SearchResultsMessage();
    sub_24F928398();
    v50 = v84;
    v72(v84, v90, v41);
    sub_24E984BD8(&qword_27F2230F8, type metadata accessor for SearchResultsMessage);
    v51 = v90;
    sub_24F929548();
    v68 = v95;
    v52 = type metadata accessor for LinkableText();
    sub_24F928398();
    v72(v50, v51, v41);
    v64[1] = sub_24E984BD8(&qword_27F21C360, type metadata accessor for LinkableText);
    v66 = v52;
    sub_24F929548();
    v67 = v94;
    v53 = v78;
    sub_24F928398();
    v65 = sub_24F928278();
    v89(v53, v74);
    sub_24F928398();
    v54 = v51;
    v72(v80, v51, v41);
    sub_24F928788();
    type metadata accessor for PageRenderMetricsEvent();
    v64[0] = v41;
    v55 = v91;
    sub_24F928398();
    v56 = v41;
    v57 = v72;
    v72(v50, v51, v56);
    sub_24E984BD8(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
    sub_24F929548();
    v80 = v93;
    sub_24F928398();
    v58 = v64[0];
    v57(v50, v54, v64[0]);
    sub_24F929548();
    (*(v87 + 8))(v54, v58);
    v89(v55, v74);
    v59 = v92;
    v40 = swift_allocObject();
    v60 = v86;
    *(v40 + 16) = v75;
    *(v40 + 24) = v60;
    v61 = v71;
    *(v40 + 32) = v69;
    *(v40 + 40) = v61;
    v62 = v82;
    *(v40 + 48) = v83;
    *(v40 + 56) = v62;
    v63 = v67;
    *(v40 + 64) = v68;
    *(v40 + 72) = v63;
    *(v40 + 80) = v65 & 1;
    (*(v76 + 32))(v40 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics, v81, v77);
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageRenderEvent) = v80;
    *(v40 + 88) = v59;
  }

  return v40;
}

uint64_t SearchResultsSegment.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchResultsSegment.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchResultsSegment.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsSegment.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchResultsSegment.__deallocating_deinit()
{
  SearchResultsSegment.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E984B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = SearchResultsSegment.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24E984B5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24E984BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchResultsSegment()
{
  result = qword_27F223100;
  if (!qword_27F223100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E984C74()
{
  result = sub_24F928818();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E984D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
  MEMORY[0x28223BE20](v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v7;
  v8 = sub_24F91EF38();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF18();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v57 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v42 - v13;
  v14 = sub_24F91EF48();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v22 = sub_24F91F008();
  (*(*(v22 - 8) + 16))(a2, a1, v22);
  sub_24F91EF68();
  (*(v15 + 16))(v21, v17, v14);
  v23 = *(v19 + 44);
  v24 = v10;
  sub_24E6584F8(&qword_27F215360, MEMORY[0x277CC8C08]);
  sub_24F92BB88();
  (*(v15 + 8))(v17, v14);
  v25 = v44;
  ++v55;
  v50 = (v49 + 4);
  v51 = (v49 + 2);
  v42 = "transparencyLink";
  ++v49;
  v46 = v10;
  v52 = v23;
  v53 = v14;
  while (1)
  {
    sub_24F92BC08();
    sub_24E6584F8(&unk_27F237EA0, MEMORY[0x277CC8BF8]);
    v26 = v56;
    v27 = sub_24F92AFF8();
    (*v55)(v25, v26);
    if (v27)
    {
      break;
    }

    v28 = sub_24F92BC88();
    v29 = v54;
    (*v51)(v54);
    v28(v59, 0);
    sub_24F92BC18();
    v30 = v57;
    (*v50)(v57, v29, v24);
    sub_24E985554();
    sub_24F91EF28();
    if (v59[0] == 2)
    {
      (*v49)(v30, v24);
    }

    else
    {
      sub_24F91EF28();
      v31 = v59[0];
      if (v59[0] == 2)
      {
        v24 = v46;
        (*v49)(v30, v46);
      }

      else
      {
        v32 = v43;
        sub_24F91EF08();
        v33 = sub_24F92B098();
        v34 = v33;
        v45 = v31 & 1;
        v35 = 66.0;
        if (v31)
        {
          v35 = 30.36;
        }

        CTFontCreateWithNameAndOptions(v33, v35, 0, 0x20000uLL);

        v36 = sub_24F925A78();
        sub_24E602068(&qword_27F22D340, &qword_27F22D330);
        v37 = sub_24F91F048();
        v58 = v36;
        sub_24E6584A4();
        sub_24F91F148();
        v37(v59, 0);
        v38 = v57;
        sub_24E601704(v32, &qword_27F22D330);
        sub_24F91EF08();
        if (v45)
        {
          v39 = sub_24F91F048();
          v58 = 0;
        }

        else
        {
          v40 = sub_24F926D18();
          v39 = sub_24F91F048();
          v58 = v40;
        }

        sub_24E876600();
        sub_24F91F148();
        v39(v59, 0);
        sub_24E601704(v5, &qword_27F22D330);
        v24 = v46;
        (*v49)(v38, v46);
        v25 = v44;
      }
    }
  }

  return sub_24E601704(v21, &qword_27F215348);
}

unint64_t sub_24E985554()
{
  result = qword_27F223110;
  if (!qword_27F223110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223110);
  }

  return result;
}

uint64_t sub_24E9855BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E98563C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AchievementCountHeaderText()
{
  result = qword_27F223118;
  if (!qword_27F223118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9856F8()
{
  result = sub_24F91F008();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E985780@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v26[-v4];
  v6 = sub_24F91F008();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v1, v7);
  v10 = sub_24F925DF8();
  v12 = v11;
  v14 = v13;
  v15 = sub_24F9251C8();
  v16 = *(v3 + 36);
  v17 = *MEMORY[0x277CE13B8];
  v18 = sub_24F927748();
  (*(*(v18 - 8) + 104))(&v5[v16], v17, v18);
  *v5 = v15;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v19 = sub_24F925C58();
  v21 = v20;
  LOBYTE(v15) = v22;
  v24 = v23;
  sub_24E600B40(v10, v12, v14 & 1);

  result = sub_24E601704(v5, &qword_27F213F10);
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v24;
  return result;
}

unint64_t sub_24E9859DC()
{
  result = qword_27F21A590;
  if (!qword_27F21A590)
  {
    type metadata accessor for LeaderboardsWithActivityDataIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A590);
  }

  return result;
}

uint64_t sub_24E985A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24E985AEC)(a2, a3);
}

uint64_t sub_24E985AEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Leaderboard(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for LeaderboardsListDataIntent();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E985BE8, 0, 0);
}

uint64_t sub_24E985BE8()
{
  v1 = v0[8];
  v17 = v0[9];
  v2 = v0[2];
  sub_24E90FCE0(v2, v17, type metadata accessor for Game);
  v3 = type metadata accessor for LeaderboardsWithActivityDataIntent();
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  sub_24E90FCE0(v2 + *(v3 + 24), v17 + *(v1 + 24), type metadata accessor for Player);
  v12 = (v17 + *(v1 + 20));
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  sub_24E7ED984(v5, v6);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_24E985D5C;
  v14 = v0[9];
  v15 = v0[3];

  return sub_24E648690(v14, v15);
}

uint64_t sub_24E985D5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_24E90FC40;
  }

  else
  {
    v4 = sub_24E985E70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E985E70()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[4];
    v4 = v0[5];
    v6 = MEMORY[0x277D84F90];
    v15 = v0[11];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[7];
      v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v9 = *(v4 + 72);
      sub_24E90FCE0(v0[11] + v8 + v9 * v3, v7, type metadata accessor for Leaderboard);
      v10 = v0[7];
      if (*(v7 + *(v5 + 44)) < 1)
      {
        sub_24E90FD48(v10, type metadata accessor for Leaderboard);
      }

      else
      {
        sub_24E90FDA8(v10, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F45834C(0, *(v6 + 16) + 1, 1);
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24F45834C(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[6];
        *(v6 + 16) = v12 + 1;
        sub_24E90FDA8(v13, v6 + v8 + v12 * v9);
        v1 = v15;
      }

      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:
    sub_24E90FD48(v0[9], type metadata accessor for LeaderboardsListDataIntent);

    v14 = v0[1];

    v14(v6);
  }
}

uint64_t sub_24E98606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = type metadata accessor for JSColor();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v97 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128);
  MEMORY[0x28223BE20](v12 - 8);
  v114 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v97 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130);
  MEMORY[0x28223BE20](v17 - 8);
  v115 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v97 - v20;
  MEMORY[0x28223BE20](v21);
  v111 = &v97 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v118 = &v97 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = (&v97 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = (&v97 - v35);
  MEMORY[0x28223BE20](v37);
  v117 = (&v97 - v38);
  v39 = *(a1 + 40);
  if (!v39)
  {
    v48 = 0;
    v110 = 0;
    v113 = 0;
    v51 = 0;
    v52 = 0;
LABEL_7:

    v53 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    (*(*(v53 - 8) + 56))(v117, 1, 1, v53);
    v54 = v115;
    goto LABEL_16;
  }

  v99 = v4;
  v100 = v3;
  v101 = v11;
  v98 = v6;
  v104 = v16;
  v40 = v33;
  v106 = v28;
  v41 = v25;
  v42 = *(v39 + 24);
  v103 = *(v39 + 16);
  v43 = *(v39 + 80);
  v108 = *(v39 + 72);
  v109 = a1;
  v44 = *(v39 + 120);
  v110 = *(v39 + 112);
  v46 = *(v39 + 32);
  v45 = *(v39 + 40);
  v47 = *(v39 + 48);
  v48 = *(v39 + 144);

  v107 = v43;

  v113 = v44;

  v49 = v48;
  v102 = v42;
  if (!v42)
  {
    v25 = v41;
    v28 = v106;
    v52 = v107;
    v51 = v108;
    a1 = v109;
    v33 = v40;
    goto LABEL_7;
  }

  v50 = v49;
  if (v46)
  {

    sub_24E986DF4(v45, v47, v111);
  }

  else
  {
    v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v55 - 8) + 56))(v111, 1, 1, v55);
  }

  v25 = v41;
  v33 = v40;
  v28 = v106;
  v56 = v104;
  if (v48)
  {
    v57 = v50;
    v58 = v101;
    sub_24E9870D0(v101);

    v59 = v105;
    sub_24E60169C(v58, v105, &qword_27F21C728);
    if ((*(v99 + 48))(v59, 1, v100) != 1)
    {
      v61 = v59;
      v62 = v98;
      sub_24E9873F8(v61, v98);
      sub_24E98745C(v62, v56);
      v63 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
      swift_storeEnumTagMultiPayload();

      sub_24E9874C0(v62);
      sub_24E601704(v58, &qword_27F21C728);
      (*(*(v63 - 8) + 56))(v56, 0, 1, v63);
      goto LABEL_15;
    }

    sub_24E601704(v58, &qword_27F21C728);
  }

  else
  {
  }

  v60 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  (*(*(v60 - 8) + 56))(v56, 1, 1, v60);
LABEL_15:
  a1 = v109;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v64 = v117;
  v65 = v102;
  *v117 = v103;
  v64[1] = v65;
  v66 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E6009C8(v111, v64 + v66[5], &qword_27F223130);
  *(v64 + v66[6]) = 2;
  sub_24E6009C8(v56, v64 + v66[7], &qword_27F223128);
  *(v64 + v66[8]) = 2;
  v67 = v64 + v66[9];
  *v67 = 0;
  *(v67 + 4) = 256;
  v68 = v64 + v66[10];
  *(v68 + 32) = 0;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  sub_24E7D5870(&v119, v68);
  (*(*(v66 - 1) + 56))(v64, 0, 1, v66);
  v54 = v115;
  v52 = v107;
  v51 = v108;
LABEL_16:
  v69 = v114;
  if (v52)
  {
    v70 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v71 = v33;
    v72 = v52;
    v73 = v116;
    (*(*(v70 - 8) + 56))(v116, 1, 1, v70);
    v74 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
    (*(*(v74 - 8) + 56))(v69, 1, 1, v74);
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    *v36 = v51;
    v36[1] = v72;
    v33 = v71;
    v75 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    sub_24E6009C8(v73, v36 + v75[5], &qword_27F223130);
    *(v36 + v75[6]) = 2;
    sub_24E6009C8(v69, v36 + v75[7], &qword_27F223128);
    *(v36 + v75[8]) = 2;
    v76 = v36 + v75[9];
    *v76 = 0;
    *(v76 + 4) = 256;
    v77 = v36 + v75[10];
    *(v77 + 32) = 0;
    *v77 = 0u;
    *(v77 + 16) = 0u;
    sub_24E7D5870(&v119, v77);
    (*(*(v75 - 1) + 56))(v36, 0, 1, v75);
  }

  else
  {
    v78 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    (*(*(v78 - 8) + 56))(v36, 1, 1, v78);
  }

  v79 = *(a1 + 40);
  if (v79 && *(v79 + 88))
  {

    sub_24E986DF4(0, 1, v54);

    v80 = v113;
    if (!v113)
    {
LABEL_22:

      v81 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
      (*(*(v81 - 1) + 56))(v33, 1, 1, v81);
      goto LABEL_25;
    }
  }

  else
  {
    v82 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v82 - 8) + 56))(v54, 1, 1, v82);
    v80 = v113;
    if (!v113)
    {
      goto LABEL_22;
    }
  }

  v83 = v80;
  v84 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v85 = v116;
  (*(*(v84 - 8) + 56))(v116, 1, 1, v84);

  v86 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  (*(*(v86 - 8) + 56))(v69, 1, 1, v86);
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  *v33 = v110;
  v33[1] = v83;
  v81 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E6009C8(v85, v33 + v81[5], &qword_27F223130);
  *(v33 + v81[6]) = 2;
  sub_24E6009C8(v69, v33 + v81[7], &qword_27F223128);
  *(v33 + v81[8]) = 2;
  v87 = v33 + v81[9];
  *v87 = 0;
  *(v87 + 4) = 256;
  v88 = v33 + v81[10];
  *(v88 + 32) = 0;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  sub_24E7D5870(&v119, v88);
  (*(*(v81 - 1) + 56))(v33, 0, 1, v81);
LABEL_25:
  sub_24E60169C(v36, v118, &qword_27F223138);
  type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v89 = *(v81 - 1);
  v90 = *(v89 + 48);
  if (v90(v36, 1, v81) == 1)
  {
    sub_24E601704(v117, &qword_27F223138);
    (*(v89 + 56))(v28, 1, 1, v81);
  }

  else
  {
    sub_24E6009C8(v117, v28, &qword_27F223138);
  }

  if (v90(v36, 1, v81) == 1)
  {
    sub_24E601704(v33, &qword_27F223138);
    (*(v89 + 56))(v25, 1, 1, v81);
  }

  else
  {
    sub_24E6009C8(v33, v25, &qword_27F223138);
  }

  v91 = type metadata accessor for HeaderPresentation(0);
  v92 = v112;
  v93 = v112 + v91[7];
  *(v93 + 48) = 0;
  *(v93 + 16) = 0u;
  *(v93 + 32) = 0u;
  *v93 = 0u;
  *(v93 + 56) = -1;
  v94 = v91[8];
  sub_24E6009C8(v54, v92 + v94, &qword_27F223130);
  v95 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v95 - 8) + 56))(v92 + v94, 0, 1, v95);
  sub_24E6009C8(v118, v92, &qword_27F223138);
  sub_24E6009C8(v28, v92 + v91[5], &qword_27F223138);
  sub_24E6009C8(v25, v92 + v91[6], &qword_27F223138);
  *(v92 + v91[9]) = 7;
  *(v92 + v91[10]) = 2;
  *(v92 + v91[11]) = 2;
  *(v92 + v91[12]) = 2;
  return sub_24E601704(v36, &qword_27F223138);
}

uint64_t sub_24E986DF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_24F9289E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v26 = sub_24E609AB0(MEMORY[0x277D84F90]);
  v14 = *(v3 + 48);
  if (v14)
  {
    v15 = *MEMORY[0x277CEE210];
    v16 = v14;
    sub_24E988884([v16 CGColor], v15);
  }

  sub_24F928948();
  v17 = *(v8 + 32);
  v17(v13, v10, v7);
  if (*(v4 + 64) == 1)
  {
    v18 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48)];
    v17(a3, v13, v7);
    (*(v8 + 56))(a3, 0, 1, v7);
    v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    *v18 = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223148);
    v21 = &a3[*(v20 + 48)];
    v22 = *(v20 + 64);
    v17(a3, v13, v7);
    *v21 = a1;
    v21[8] = v25 & 1;
    a3[v22] = 1;
    v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  }

  swift_storeEnumTagMultiPayload();
  type metadata accessor for HeaderPresentation.HeaderIconType(0);
  return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
}

uint64_t sub_24E9870D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F928388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  UIColor.rgbaComponents.getter(v22);
  if (v24)
  {
    v9 = type metadata accessor for JSColor();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    v13 = v22[2];
    v12 = v23;
    v15 = v22[0];
    v14 = v22[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F942000;
    *(inited + 32) = 0x646E696B24;
    v17 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 6449010;
    *(inited + 56) = 0xE300000000000000;
    *(inited + 72) = v17;
    *(inited + 80) = 6579570;
    *(inited + 88) = 0xE300000000000000;
    v18 = MEMORY[0x277D85048];
    *(inited + 96) = v15;
    *(inited + 120) = v18;
    *(inited + 128) = 0x6E65657267;
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = v14;
    *(inited + 168) = v18;
    *(inited + 176) = 1702194274;
    *(inited + 184) = 0xE400000000000000;
    *(inited + 192) = v13;
    *(inited + 216) = v18;
    *(inited + 224) = 0x6168706C61;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 264) = v18;
    *(inited + 240) = v12;
    v19 = sub_24E608448(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
    swift_arrayDestroy();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v22[0] = v19;
    sub_24F928378();
    (*(v3 + 16))(v5, v8, v2);
    JSColor.init(base:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v20 = type metadata accessor for JSColor();
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_24E9873F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSColor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E98745C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSColor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9874C0(uint64_t a1)
{
  v2 = type metadata accessor for JSColor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E987530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeaderPresentation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E987678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeaderPresentation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for GamesPageHeader()
{
  result = qword_27F223150;
  if (!qword_27F223150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9877F8()
{
  type metadata accessor for HeaderPresentation(319);
  if (v0 <= 0x3F)
  {
    sub_24E61C7D0();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E987894(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223178);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E988150();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for HeaderPresentation(0);
  sub_24E988320(&qword_27F21BE58, type metadata accessor for HeaderPresentation);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GamesPageHeader();
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    sub_24E9882D0(&qword_27F214040);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F929608();
    sub_24E988320(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E987B04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223168);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for GamesPageHeader();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E988150();
  v28 = v11;
  v16 = v29;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v17 = v26;
  v18 = v14;
  v29 = v5;
  LOBYTE(v31) = 0;
  sub_24E988320(&qword_27F21BEB8, type metadata accessor for HeaderPresentation);
  v19 = v27;
  sub_24F92CC68();
  sub_24E777530(v8, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v34 = 1;
  sub_24E9882D0(&qword_27F213F30);
  sub_24F92CC68();
  v20 = v18 + *(v12 + 20);
  v21 = v32;
  *v20 = v31;
  *(v20 + 16) = v21;
  *(v20 + 32) = v33;
  sub_24F929608();
  LOBYTE(v31) = 2;
  sub_24E988320(&qword_27F213F48, MEMORY[0x277D21F70]);
  v22 = v29;
  sub_24F92CC18();
  (*(v17 + 8))(v28, v19);
  sub_24E65E0D4(v22, v18 + *(v12 + 24));
  sub_24E98820C(v18, v25);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24E988270(v18, type metadata accessor for GamesPageHeader);
}

uint64_t sub_24E987F68()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61746E6573657270;
  }
}

uint64_t sub_24E987FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E988480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E987FEC(uint64_t a1)
{
  v2 = sub_24E988150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E988028(uint64_t a1)
{
  v2 = sub_24E988150();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E988064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 20), v6, &qword_27F213F18);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_24E988150()
{
  result = qword_27F223170;
  if (!qword_27F223170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223170);
  }

  return result;
}

uint64_t sub_24E9881A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E98820C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesPageHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E988270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E9882D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E988320(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E98837C()
{
  result = qword_27F223180;
  if (!qword_27F223180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223180);
  }

  return result;
}

unint64_t sub_24E9883D4()
{
  result = qword_27F223188;
  if (!qword_27F223188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223188);
  }

  return result;
}

unint64_t sub_24E98842C()
{
  result = qword_27F223190;
  if (!qword_27F223190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223190);
  }

  return result;
}

uint64_t sub_24E988480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24E98859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24E612B0C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24E81C1D4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F2129B0);
    sub_24E98EF1C(a2, a3, v9);

    return sub_24E601704(v9, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24E98866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223218);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24E601704(a1, &qword_27F223218);
    sub_24E98F518(a2, a3, &qword_27F2130C0, sub_24EB52B48, sub_24E8ADBE4, v9);

    return sub_24E601704(v9, &qword_27F223218);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24E81C324(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_24E988884(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24E81C670(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_24E7728E8(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_24E8ADF98();
        v10 = v13;
      }

      sub_24EB52DDC(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_24E988988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24E601704(a1, &unk_27F22EC30);
    sub_24E98EFFC(a2, a3, v9);

    return sub_24E601704(v9, &unk_27F22EC30);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24E81C7A4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24E988B60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v4;
    v9[4] = *(a1 + 64);
    v10 = *(a1 + 80);
    v5 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_24E81C978(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E772780(a2);
    *v2 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F223230);
    sub_24E98F16C(a2, v9);
    sub_24E772780(a2);
    return sub_24E601704(v9, &qword_27F223230);
  }

  return result;
}

uint64_t sub_24E988C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24E601704(a1, &qword_27F223220);
    sub_24E98F518(a2, a3, &qword_27F21EC40, sub_24EB53340, sub_24E8AEDC8, v9);

    return sub_24E601704(v9, &qword_27F223220);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24E81D064(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24E988E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_24E81D324(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_24E76D644(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_24E8AF124();
        v16 = v18;
      }

      result = sub_24EB53354(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_24E988F54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213360);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F21E6C0);
    sub_24E98FC84(a2, &qword_27F213360, sub_24EB53504, sub_24E8AF29C, v7);
    sub_24E6585F8(a2);
    return sub_24E601704(v7, &qword_27F21E6C0);
  }

  else
  {
    sub_24E6009C8(a1, v11, &qword_27F213360);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24E81D474(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24E989150(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Game();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F216FE0);
    sub_24E98F334(a2, v7);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_24E601704(v7, &qword_27F216FE0);
  }

  else
  {
    sub_24E990FE4(a1, v11, type metadata accessor for Game);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24E81D5C8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_24E989388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223228);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130D8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_24E601704(a1, &qword_27F223228);
    sub_24E98F518(a2, a3, &qword_27F2130D8, sub_24EB53860, sub_24E8AF860, v9);

    return sub_24E601704(v9, &qword_27F223228);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81D7E4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24E9895A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_24E81D9CC(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_24E76D934(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_24E8B02DC();
        v12 = v14;
      }

      sub_24E6585F8(*(v12 + 48) + 40 * v10);

      sub_24EB53A74(v10, v12);
      result = sub_24E6585F8(a2);
      *v3 = v12;
    }

    else
    {

      return sub_24E6585F8(a2);
    }
  }

  return result;
}

uint64_t sub_24E9896A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24E612C80(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24E81DDE4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F223248);
    sub_24E98FA18(a2, a3, sub_24E612E28, sub_24EB5BA0C, sub_24E8B07B4, v9);

    return sub_24E601704(v9, &qword_27F223248);
  }

  return result;
}

uint64_t sub_24E9897B4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E76DDAC(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B0BFC();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_24F929598();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_24EB53DD0(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_24F929598();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_24E81E0B0(a1, a3, v17);
    v18 = sub_24F929598();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_24E989968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24E81E24C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_24F929598();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24E76DDAC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24E8B0E6C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_24F929598();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24EB53DD0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_24F929598();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_24E989B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24E81E458(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a3);
    *v3 = v15;
  }

  else
  {
    v10 = sub_24E76D934(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_24E8B0EA8();
        v14 = v16;
      }

      sub_24E6585F8(*(v14 + 48) + 40 * v12);

      sub_24EB54294(v12, v14);
      result = sub_24E6585F8(a3);
      *v4 = v14;
    }

    else
    {

      return sub_24E6585F8(a3);
    }
  }

  return result;
}

unint64_t sub_24E989C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_24E81E71C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_24E76DBF8(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24E8B104C();
        v11 = v13;
      }

      result = sub_24EB54298(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_24E989D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24E612C80(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24E81EF70(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F223240);
    sub_24E98FA18(a2, a3, sub_24E612E28, sub_24EB5BA0C, sub_24E8B1D44, v9);

    return sub_24E601704(v9, &qword_27F223240);
  }

  return result;
}

uint64_t sub_24E989E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for GameSearchResultsTabContent(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_24E601704(a1, &qword_27F223250);
    sub_24E98FAEC(a2, a3, v9);

    return sub_24E601704(v9, &qword_27F223250);
  }

  else
  {
    sub_24E990FE4(a1, v13, type metadata accessor for GameSearchResultsTabContent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81F28C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24E989FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_24E81F3F8(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_24E76D9B8(a2, a3, a4, a5);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        sub_24E8B22E4();
        v18 = v20;
      }

      result = sub_24EB54CB0(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_24E98A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24E81F6C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_24E7728F0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_24E8B2608();
        v14 = v16;
      }

      result = sub_24EB53C20(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

unint64_t sub_24E98A214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == 255)
  {
    sub_24E601704(a1, &qword_27F223238);
    v8 = sub_24E7728CC(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B2790();
        v12 = v17;
      }

      v13 = *(v12 + 56) + 40 * v10;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v18 = *v13;
      v19 = v15;
      v20 = v14;
      sub_24EB5502C(v10, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = -1;
    }

    return sub_24E601704(&v18, &qword_27F223238);
  }

  else
  {
    v5 = *(a1 + 16);
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_24E81F85C(&v18, a2, v6);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24E98A338(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213348);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F21E6F0);
    sub_24E98FC84(a2, &qword_27F213348, sub_24EB551BC, sub_24E8B2930, v7);
    sub_24E6585F8(a2);
    return sub_24E601704(v7, &qword_27F21E6F0);
  }

  else
  {
    sub_24E6009C8(a1, v11, &qword_27F213348);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24E81F9C0(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v16;
  }

  return result;
}

unint64_t sub_24E98A534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_24E8220DC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_24E76D97C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24E8B5974();
        v11 = v13;
      }

      result = sub_24EB55CC8(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_24E98A5F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213330);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F21E6F8);
    sub_24E98FC84(a2, &qword_27F213330, sub_24EB56140, sub_24E8B7948, v7);
    sub_24E6585F8(a2);
    return sub_24E601704(v7, &qword_27F21E6F8);
  }

  else
  {
    sub_24E6009C8(a1, v11, &qword_27F213330);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24E822E3C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v16;
  }

  return result;
}