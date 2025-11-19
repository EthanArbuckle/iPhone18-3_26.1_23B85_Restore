id DBIconModel.automaticallyAddsWebClips.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DBIconModel();
  return objc_msgSendSuper2(&v4, sel_setAutomaticallyAddsWebClips_, a1 & 1);
}

Swift::OpaquePointer_optional __swiftcall DBIconModel.iconModelMetadata()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839EA80;
  sub_248383960();
  v2 = MEMORY[0x277D837D0];
  sub_2483843E0();
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v4 = v3;
  }

  *(inited + 72) = v4;
  sub_248383960();

  v5 = sub_2483843E0();
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x210))(v5);
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = v7 & 1;
  sub_248383960();
  v8 = sub_2483843E0();
  v9 = (*((*v6 & *v0) + 0x218))(v8);
  *(inited + 240) = v2;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v10)
  {
    v12 = v10;
  }

  *(inited + 216) = v11;
  *(inited + 224) = v12;
  v13 = sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0);
  swift_arrayDestroy();
  v15 = v13;
  result.value._rawValue = v15;
  result.is_nil = v14;
  return result;
}

id sub_2483607C0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6 = sub_248383880();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Swift::Void __swiftcall DBIconModel.didUnarchiveMetadata(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_248383880();
  v45.receiver = v2;
  v45.super_class = type metadata accessor for DBIconModel();
  objc_msgSendSuper2(&v45, sel_didUnarchiveMetadata_, v4);

  v39 = sub_248383960();
  sub_2483843E0();
  if (!*(a1._rawValue + 2) || (v5 = sub_2482652B8(&v43), (v6 & 1) == 0))
  {
    sub_2482655AC(&v43);
    goto LABEL_18;
  }

  sub_24814A550(*(a1._rawValue + 7) + 32 * v5, v44);
  sub_2482655AC(&v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v37 = v2;
  v7 = *(v39 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v39 + 40;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v38 = v10;
      v11 = v9 + 16 * v8;
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v39 + 16))
        {
          __break(1u);
          return;
        }

        v8 = v12 + 1;
        v13 = objc_opt_self();

        v14 = [v13 sharedInstance];
        v15 = sub_248383930();
        v16 = [v14 applicationWithBundleIdentifier_];

        if (v16)
        {
          break;
        }

        v11 += 16;
        ++v12;
        if (v7 == v8)
        {
          v10 = v38;
          goto LABEL_38;
        }
      }

      v17 = [v16 bundleIdentifier];
      v36 = sub_248383960();
      v19 = v18;

      v20 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24822B3C4(0, *(v38 + 16) + 1, 1, v38);
      }

      v21 = v20;
      v22 = *(v20 + 2);
      v23 = v21;
      v24 = *(v21 + 3);
      if (v22 >= v24 >> 1)
      {
        v23 = sub_24822B3C4((v24 > 1), v22 + 1, 1, v23);
      }

      *(v23 + 2) = v22 + 1;
      v25 = &v23[16 * v22];
      v10 = v23;
      *(v25 + 4) = v36;
      *(v25 + 5) = v19;
      v9 = v39 + 40;
    }

    while (v7 - 1 != v12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_38:

  v2 = v37;
LABEL_19:
  v40 = sub_248383960();
  sub_2483843E0();
  if (*(a1._rawValue + 2) && (v26 = sub_2482652B8(&v43), (v27 & 1) != 0))
  {
    sub_24814A550(*(a1._rawValue + 7) + 32 * v26, v44);
    sub_2482655AC(&v43);
    if (swift_dynamicCast())
    {
      v2[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_showsOEMIcon] = v40;
    }
  }

  else
  {
    sub_2482655AC(&v43);
  }

  v41 = sub_248383960();
  v42 = v28;
  sub_2483843E0();
  if (!*(a1._rawValue + 2) || (v29 = sub_2482652B8(&v43), (v30 & 1) == 0))
  {
    sub_2482655AC(&v43);
    if (!v10)
    {
      return;
    }

LABEL_31:
    v32 = sub_2482B8D6C(v10);

    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = sub_2482FA424(*(v32 + 16), 0);
      v35 = sub_2482FA92C(&v43, v34 + 4, v33, v32);
      sub_248167908();
      if (v35 == v33)
      {
LABEL_35:
        *&v2[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers] = v34;

        return;
      }

      __break(1u);
    }

    v34 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  sub_24814A550(*(a1._rawValue + 7) + 32 * v29, v44);
  sub_2482655AC(&v43);
  if (swift_dynamicCast())
  {
    v31 = &v2[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_OEMIconLabel];
    *v31 = v41;
    v31[1] = v42;
  }

  if (v10)
  {
    goto LABEL_31;
  }
}

id sub_248360D18(uint64_t a1)
{
  v2 = v1;
  v60 = *MEMORY[0x277D85DE8];
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v56 = sub_248383960();
  v57 = v11;
  sub_2483843E0();
  if (*(a1 + 16) && (v12 = sub_2482652B8(v58), (v13 & 1) != 0))
  {
    sub_24814A550(*(a1 + 56) + 32 * v12, v59);
    sub_2482655AC(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers] = v56;
    }
  }

  else
  {
    sub_2482655AC(v58);
  }

  sub_2483621EC(a1, v2);
  v14 = sub_24827C6F0();
  v15 = *(v5 + 16);
  v54 = v14;
  v55 = v5 + 16;
  v53 = v15;
  (v15)(v10);
  v16 = v2;

  v17 = sub_248382A80();
  v18 = sub_248383DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v51 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v58[0] = v23;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v22 = v16;
    *(v20 + 12) = 2080;
    v24 = v16;
    v25 = sub_2483838B0();
    v27 = sub_24814A378(v25, v26, v58);
    v50 = v10;
    v28 = v27;

    *(v20 + 14) = v28;
    _os_log_impl(&dword_248146000, v17, v18, "%@ importing icon state %s", v20, 0x16u);
    sub_24822D578(v22, &qword_27EE8FE40);
    v29 = v22;
    v7 = v51;
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1CD5F0](v23, -1, -1);
    v30 = v20;
    v31 = v52;
    MEMORY[0x24C1CD5F0](v30, -1, -1);

    v32 = *(v31 + 8);
    v32(v50, v4);
  }

  else
  {

    v32 = *(v5 + 8);
    v32(v10, v4);
  }

  [v16 clearDesiredIconState];
  v33 = [v16 store];
  if (v33)
  {
    v34 = v33;
    v35 = sub_248383880();

    v58[0] = 0;
    v36 = [v34 saveCurrentIconState:v35 error:v58];
    swift_unknownObjectRelease();

    if (v36)
    {
      v37 = v58[0];
    }

    else
    {
      v38 = v58[0];
      v39 = sub_2483810C0();

      swift_willThrow();
      v53(v7, v54, v4);
      v40 = v39;
      v41 = sub_248382A80();
      v42 = sub_248383DA0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = v7;
        v45 = swift_slowAlloc();
        *v43 = 138412290;
        v46 = v39;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_248146000, v41, v42, "Failed saving current icon state: %@", v43, 0xCu);
        sub_24822D578(v45, &qword_27EE8FE40);
        v48 = v45;
        v7 = v44;
        MEMORY[0x24C1CD5F0](v48, -1, -1);
        MEMORY[0x24C1CD5F0](v43, -1, -1);
      }

      else
      {
      }

      v32(v7, v4);
    }
  }

  else
  {
  }

  [v16 loadAllIcons];
  return [v16 markIconStateClean];
}

uint64_t sub_2483612E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_2483838A0();
  v7 = a1;
  a4(v6);
}

id DBIconModel.__allocating_init(store:iconRepository:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithStore:a1 iconRepository:a2];
  swift_unknownObjectRelease();

  return v4;
}

id DBIconModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBIconModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2483614E0(uint64_t a1, void *a2)
{
  v4 = sub_248381260();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_248381250();
  v9 = a2;
  v8();

  return (*(v5 + 8))(v7, v4);
}

BOOL sub_248361630(void *a1, uint64_t *a2)
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

void *sub_248361660@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24836168C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_248361764@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_248361B08(a1);

  *a2 = v3;
  return result;
}

void sub_2483617B8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_248384020();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_24814FB28(0, &unk_27EE93D00);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_248384030();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

id sub_2483618F8(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers;
  *&v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers] = 0;
  v3 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_OEMIconLabel];
  *v3 = 0;
  v3[1] = 0;
  v13 = OBJC_IVAR____TtC9DashBoard11DBIconModel_current_isSet;
  v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_current_isSet] = 2;
  v4 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_current_screenBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v12 = OBJC_IVAR____TtC9DashBoard11DBIconModel_current_showsOEMIcon;
  v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_current_showsOEMIcon] = 2;
  v5 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_current_OEMIconLabel];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_current_statusBarEdge];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_interactionAffordances];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_iconImageSize];
  *v8 = 0;
  v8[1] = 0;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v1[v2] = 0;

  v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_showsOEMIcon] = 0;
  *v3 = 0;
  v3[1] = 0;

  v1[v13] = 2;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v1[v12] = 2;
  *v5 = 0;
  v5[1] = 0;

  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[8] = 1;
  v9 = [objc_allocWithZone(MEMORY[0x277D661F8]) initWithApplicationInfoProvider_];
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DBIconModel();
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v15, sel_initWithStore_iconRepository_, a1, v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_248361B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_248361B40(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v3 = [a1 rootFolder];
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = &v35;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_248362594;
    *(v5 + 24) = v4;
    v33 = sub_2483626D8;
    v34 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_2483614E0;
    v32 = &block_descriptor_53_0;
    v6 = _Block_copy(&aBlock);

    [v3 enumerateAllIconsUsingBlock_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v3 = sub_248362594;
    v9 = v35;
  }

  else
  {
    v9 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F908);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24839C7F0;
  *(v10 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839F1A0;
  aBlock = sub_248383960();
  v30 = v12;

  v13 = MEMORY[0x277D837D0];
  sub_2483843E0();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390);
  *(inited + 72) = v10;
  aBlock = sub_248383960();
  v30 = v14;
  v15 = sub_2483843E0();
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *a1) + 0x1F0))(v15);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v2;
  }

  *(inited + 144) = v18;
  aBlock = sub_248383960();
  v30 = v19;
  v20 = sub_2483843E0();
  v21 = (*((*v16 & *a1) + 0x210))(v20);
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 216) = v21 & 1;
  aBlock = sub_248383960();
  v30 = v22;
  v23 = sub_2483843E0();
  v24 = (*((*v16 & *a1) + 0x218))(v23);
  *(inited + 312) = v13;
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v25)
  {
    v27 = v25;
  }

  *(inited + 288) = v26;
  *(inited + 296) = v27;
  v28 = sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0);
  swift_arrayDestroy();

  sub_248167864(v3);
  return v28;
}

uint64_t sub_248361F8C()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = [v1 leafIcons];
  sub_24814FB28(0, &unk_27EE92AC0);
  sub_24832DF38(&qword_27EE943F0, &unk_27EE92AC0);
  v7 = sub_248383C80();

  sub_24835E25C(v7);
  v9 = v8;

  *v2 = v9;

  v11 = MEMORY[0x277D85000];
  *v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x200))(v10);
  *v3 = (*((*v11 & *v1) + 0x208))();
  v12 = MEMORY[0x277D84F90];
  if (*(v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers))
  {
    v12 = *(v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers);
  }

  *v5 = v12;
}

uint64_t sub_248362130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248362178(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE93AB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2483621EC(uint64_t a1, id a2)
{
  v3 = [a2 iconModelMetadata];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2483838A0();
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  v13 = 0x7473694C6E6F6369;
  v14 = 0xE900000000000073;
  sub_2483843E0();
  v12 = sub_248383960();
  sub_2483843E0();
  if (!*(a1 + 16) || (v7 = sub_2482652B8(&v13), (v8 & 1) == 0))
  {
    sub_2482655AC(&v13);
    goto LABEL_10;
  }

  sub_24814A550(*(a1 + 56) + 32 * v7, v15);
  sub_2482655AC(&v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390);
LABEL_11:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v9 = v12;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390);
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(inited + 72) = v9;
  v13 = 0x617461646174656DLL;
  v14 = 0xE800000000000000;
  sub_2483843E0();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE943E8);
  *(inited + 144) = v5;
  v10 = sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0);
  swift_arrayDestroy();
  return v10;
}

void sub_248362594(void *a1)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v18 = a1;
    v6 = [v5 applicationBundleID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_248383960();
      v10 = v9;

      v11 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_24822B3C4(0, *(v11 + 2) + 1, 1, v11);
        *v3 = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      v15 = v18;
      if (v14 >= v13 >> 1)
      {
        *v3 = sub_24822B3C4((v13 > 1), v14 + 1, 1, v11);
        v15 = v18;
      }

      v16 = *v3;
      *(v16 + 2) = v14 + 1;
      v17 = &v16[16 * v14];
      *(v17 + 4) = v8;
      *(v17 + 5) = v10;
    }

    else
    {
    }
  }
}

id DBToStackedAppAnimationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBToStackedAppAnimationSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBToStackedAppAnimationSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static DBToStackedAppAnimation.animation(with:)(void (*a1)(void))
{
  v2 = [objc_allocWithZone(type metadata accessor for DBToStackedAppAnimationSettings()) init];
  a1();
  v3 = objc_allocWithZone(type metadata accessor for DBToStackedAppAnimation());
  return DBDashboardAnimation.init(settings:)(v2);
}

void DBToStackedAppAnimation.startAnimation(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
  if (v6)
  {
    v7 = v6;
    v8 = (*((*v5 & *v2) + 0xD0))();
    if (v8)
    {
      v9 = v8;
      v10 = (*((*v5 & *v2) + 0x100))();
      if (v10)
      {
        v11 = v10;
        [v7 addSubview_];
        [v7 setAlpha_];
        v19 = objc_opt_self();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = v2;
        v12[4] = v7;
        v24 = sub_248362CA0;
        v25 = v12;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v22 = sub_24814C01C;
        v23 = &block_descriptor_32;
        v13 = _Block_copy(&aBlock);
        v14 = v11;
        v15 = v2;
        v16 = v7;

        v17 = swift_allocObject();
        *(v17 + 16) = a1;
        *(v17 + 24) = a2;
        v24 = sub_248260F70;
        v25 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v22 = sub_24824BBE0;
        v23 = &block_descriptor_6_4;
        v18 = _Block_copy(&aBlock);
        sub_248167910(a1);

        [v19 animateWithDuration:v13 animations:v18 completion:0.5];
        _Block_release(v18);
        _Block_release(v13);

        return;
      }

      v7 = v9;
    }
  }

  if (a1)
  {
    a1();
  }
}

id sub_248362CA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x118))();
  [v1 setBackgroundColor_];

  return [v2 setAlpha_];
}

id sub_248362D88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DBDockWindow.__allocating_init(windowScene:frame:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive] = 0;
  return sub_248279ADC(a1, 6, a2, a3, a4, a5);
}

uint64_t DBDockWindow.isRightHandDrive.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBDockWindow.isRightHandDrive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DBDockWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDockWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall DBDockWindow._reversesLinearFocusWrapping()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  return ((*((*MEMORY[0x277D85000] & *v0) + 0x68))() ^ (v2 == 0)) & 1;
}

unint64_t sub_248363238(void *a1)
{
  sub_248384440();

  v2 = [a1 shortDescription];
  v3 = sub_248383960();
  v5 = v4;

  MEMORY[0x24C1CAFD0](v3, v5);

  return 0xD00000000000001BLL;
}

unint64_t sub_2483632E8()
{
  v1 = *v0;
  sub_248384440();

  v2 = [v1 shortDescription];
  v3 = sub_248383960();
  v5 = v4;

  MEMORY[0x24C1CAFD0](v3, v5);

  return 0xD00000000000001BLL;
}

uint64_t sub_248363398(void *a1)
{
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 uniqueIdentifier];
  sub_2483811F0();

  v8 = sub_2483811D0();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_248363498@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*v1 uniqueIdentifier];
  sub_2483811F0();

  v9 = sub_2483811D0();
  v11 = v10;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v9;
  a1[1] = v11;
  return result;
}

uint64_t sub_2483635C0()
{
  sub_24814FB28(0, &qword_27EE92190);
  if (sub_248384030())
  {
    return sub_248384030() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248363700()
{
  sub_24814FB28(0, &qword_27EE92190);
  if (sub_248384030())
  {
    return sub_248384030() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_248363778()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_predictedSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2483637C0(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_predictedSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

void sub_2483638A8()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {

    v6 = sub_24827C864();
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_248382A80();
    v8 = sub_248383D90();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_248146000, v7, v8, "[updateCarouselElements] Carousel model ready, updatingCarouselElements.", v9, 2u);
      MEMORY[0x24C1CD5F0](v9, -1, -1);
    }

    v10 = (*(v3 + 8))(v5, v2);
    (*((*MEMORY[0x277D85000] & *v1) + 0x220))(v10);
  }
}

uint64_t DBSmartWidgetCarousel.isShowingDecorations.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_248363C00(char a1))(void)
{
  v3 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x168))(v4);
  if (result)
  {
    v6 = result;
    result(*(v1 + v3));
    return sub_248167864(v6);
  }

  return result;
}

uint64_t sub_248363CC0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x150))();
  *a2 = result & 1;
  return result;
}

void (*sub_248363D28(char *a1, void **a2))(void)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  result = (*((*MEMORY[0x277D85000] & *v3) + 0x168))(v5);
  if (result)
  {
    v7 = result;
    result(*(v3 + v4));
    return sub_248167864(v7);
  }

  return result;
}

uint64_t DBSmartWidgetCarousel.decorationsStateChanged.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_decorationsStateChanged);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_248167864(v6);
}

char *DBSmartWidgetCarousel.init(environment:engine:predictedSmartSize:)(double a1, double a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model] = 0;
  v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup] = 0;
  v8 = &v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion];
  *v8 = 0;
  v8[1] = 0;
  *&v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_updateCarouselWorkItem] = 0;
  v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations] = 0;
  v9 = &v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_decorationsStateChanged];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture] = 0;
  *&v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture] = 0;
  v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselForeground] = 0;
  v10 = &v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_frontmostItem];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_engine] = a4;
  swift_unknownObjectUnownedInit();
  v11 = &v4[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_predictedSize];
  *v11 = a1;
  v11[1] = a2;
  v12 = *v8;
  *v8 = 0;
  v8[1] = 0;
  v13 = a4;
  sub_248167864(v12);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for DBSmartWidgetCarousel();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();

  *&v14[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model] = 0;

  return v14;
}

id DBSmartWidgetCarousel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_updateCarouselWorkItem;
  if (*&v0[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_updateCarouselWorkItem])
  {

    sub_248383820();
  }

  *&v0[v1] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBSmartWidgetCarousel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DBSmartWidgetCarousel.prepareInitialPredictions(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  v4 = *(v2 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  *v3 = a1;
  v3[1] = a2;

  sub_248167864(v4);

  return sub_2483682F8();
}

uint64_t DBSmartWidgetCarousel.carouselForeground.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

void DBSmartWidgetCarousel.carouselForeground.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselForeground;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture);
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v6 = *((*MEMORY[0x277D85000] & *v1) + 0x1C8);
    v7 = v4;
    [v7 setEnabled_];
  }

  v8 = *(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture);
  if (v8)
  {
    v9 = *((*v5 & *v1) + 0x1C8);
    v10 = v8;
    [v10 setEnabled_];
  }
}

void (*DBSmartWidgetCarousel.carouselForeground.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2483647E8;
}

void sub_2483647E8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture);
    v6 = MEMORY[0x277D85000];
    if (v5)
    {
      v7 = *((*MEMORY[0x277D85000] & *v4) + 0x1C8);
      v8 = v5;
      [v8 setEnabled_];

      v4 = *(a1 + 24);
    }

    v9 = *(v4 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture);
    if (v9)
    {
      v10 = *((*v6 & *v4) + 0x1C8);
      v11 = v9;
      [v11 setEnabled_];
    }
  }
}

Swift::Void __swiftcall DBSmartWidgetCarousel.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DBSmartWidgetCarousel();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {

    v4 = *(sub_248381A00() + 16);

    if (v4 >= 2 && (v5 = [v2 parentViewController]) != 0)
    {
      v6 = v5;
      if ((*((*MEMORY[0x277D85000] & *v2) + 0x1C8))())
      {
LABEL_8:

        return;
      }

      v7 = [v6 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 isFocused];

        if ((v9 & 1) == 0)
        {
          sub_2483819B0();
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_248364ACC()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_frontmostItem;
  swift_beginAccess();
  v10 = *&v1[v9];
  if (!v10)
  {
    v22 = [v1 view];
    if (v22)
    {
      v23 = v22;
      v24 = sub_248383930();
      [v23 setAccessibilityValue_];

      v25 = sub_24827C864();
      (*(v3 + 16))(v5, v25, v2);
      v26 = sub_248382A80();
      v27 = sub_248383D90();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_248146000, v26, v27, "Current prediction (Carousel): unknown", v28, 2u);
        MEMORY[0x24C1CD5F0](v28, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v13 = [objc_opt_self() defaultCenter];
      [v13 postNotificationName:@"CARSmartWidgetPredictionUpdatedNotification" object:0];
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = sub_24827C864();
  (*(v3 + 16))(v8, v12, v2);
  v13 = v11;
  v14 = sub_248382A80();
  v15 = sub_248383D90();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v13;
    *v17 = v10;
    v18 = v13;
    _os_log_impl(&dword_248146000, v14, v15, "Current prediction (Carousel): %{public}@", v16, 0xCu);
    sub_24822D578(v17, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v17, -1, -1);
    MEMORY[0x24C1CD5F0](v16, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  v19 = [objc_opt_self() defaultCenter];
  [v19 postNotificationName:@"CARSmartWidgetPredictionUpdatedNotification" object:v13];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v20 = [v1 view];
    if (v20)
    {
      v21 = v20;
LABEL_14:
      v30 = sub_248383930();
      [v21 setAccessibilityValue_];
LABEL_15:

LABEL_16:
      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v29 = [v1 view];
    if (v29)
    {
      v21 = v29;
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v32 = [v1 view];
  v21 = v32;
  if (v31)
  {
    if (v32)
    {
      v30 = sub_248383930();
      [v21 setAccessibilityIdentifier_];
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  if (v32)
  {
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_248364FE8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_248365050(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_frontmostItem;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2;
  sub_24836D6AC(a1, a2);
  sub_24836D66C(v6, v7);
  sub_248364ACC();
  sub_24836D66C(a1, a2);
}

void (*sub_2483650DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248365140;
}

void sub_248365140(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_248364ACC();
  }
}

NSArray __swiftcall DBSmartWidgetCarousel.linearFocusItems()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94470);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - v3;
  if (!*(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {
    sub_24814FB28(0, &unk_27EE94478);
    return MEMORY[0x24C1CB5B0](MEMORY[0x277D84F90]);
  }

  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0x150);

  if (v6(v7))
  {
    v8 = *(v2 + 104);
    v8(v4, *MEMORY[0x277CF8B58], v1);
    sub_248381990();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v10 = v24;
    v11 = v25;
    v8(v4, *MEMORY[0x277CF8B60], v1);
    sub_248381990();
    v9(v4, v1);
    v13 = v24;
    v12 = v25;
    if (v10 && v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24839CCA0;
      v15 = sub_24814FB28(0, &qword_27EE94488);
      *(v14 + 32) = v12;
      *(v14 + 88) = v15;
      *(v14 + 56) = v15;
      *(v14 + 64) = v11;
      sub_24814FB28(0, &unk_27EE94478);
      sub_24836D6AC(v10, v11);
      sub_24836D6AC(v13, v12);
      v16 = v12;
      v17 = v11;
      isa = MEMORY[0x24C1CB5B0](v14);
    }

    else
    {
      sub_24814FB28(0, &unk_27EE94478);
      isa = MEMORY[0x24C1CB5B0](MEMORY[0x277D84F90]);
    }

    sub_24836D66C(v13, v12);
    sub_24836D66C(v10, v11);
    goto LABEL_13;
  }

  v20 = (*((*v5 & *v0) + 0x1E8))();
  if (!v20)
  {
    sub_24814FB28(0, &unk_27EE94478);
    isa = MEMORY[0x24C1CB5B0](MEMORY[0x277D84F90]);
LABEL_13:

    return isa;
  }

  v22 = v20;
  v23 = v21;
  result.super.isa = [v21 linearFocusItems];
  if (!result.super.isa)
  {
    __break(1u);
    return result;
  }

  isa = result.super.isa;

  return isa;
}

Swift::Void __swiftcall DBSmartWidgetCarousel.widgetViewTapped()()
{
  if (*(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {

    sub_2483819B0();
  }
}

Swift::Void __swiftcall DBSmartWidgetCarousel.updateCarouselElements()()
{
  v1 = v0;
  v2 = sub_248383800();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_2483837A0();
  MEMORY[0x28223BE20](v9);
  v10 = *(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model);
  if (v10)
  {
    v22 = v5;
    v23 = v8;
    v24 = v3;
    v25 = v2;
    v11 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_updateCarouselWorkItem;
    if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_updateCarouselWorkItem))
    {

      sub_248383820();
    }

    else
    {
    }

    *(v1 + v11) = 0;

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    aBlock[4] = sub_24836D6EC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24814C01C;
    aBlock[3] = &block_descriptor_33;
    v21 = _Block_copy(aBlock);
    v26 = MEMORY[0x277D84F90];
    sub_24836DCE0(&qword_27EE91EB0, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
    sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
    sub_2483842D0();
    sub_248383830();
    swift_allocObject();
    v14 = sub_248383810();

    *(v1 + v11) = v14;

    sub_24814FB28(0, &qword_27EE90280);
    v15 = sub_248383E50();
    v16 = v22;
    sub_2483837F0();
    v17 = v23;
    sub_248383850();
    v18 = *(v24 + 8);
    v19 = v16;
    v20 = v25;
    v18(v19, v25);
    sub_248383E30();

    v18(v17, v20);
  }
}

void sub_248365A30(uint64_t a1, uint64_t a2)
{
  v100 = sub_248381210();
  v3 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  *&v97 = &v93 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v93 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v93 = v3;
  v96 = Strong;
  v15 = [*&Strong[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_engine] currentPredictions];
  sub_24814FB28(0, &unk_27EE945B0);
  v16 = sub_248383B10();

  v17 = sub_24827C864();
  v18 = *(v6 + 16);
  v105 = v6 + 16;
  v106 = v17;
  v104 = v18;
  v18(v13);

  v19 = sub_248382A80();
  LODWORD(v15) = sub_248383D90();

  LODWORD(v112) = v15;
  v20 = os_log_type_enabled(v19, v15);
  v110 = a2;
  v111 = v16;
  v21 = v16 >> 62;
  v102 = v5;
  v101 = v8;
  v98 = v6;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v115[0] = v23;
    *v22 = 136446210;
    if (v21)
    {
      v24 = sub_248384360();
    }

    else
    {
      v24 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v103 = v23;
      v107 = v22;
      v108 = v19;
      v109 = v16 >> 62;
      v113 = MEMORY[0x277D84F90];
      sub_24822C8F0(0, v24 & ~(v24 >> 63), 0);
      if (v24 < 0)
      {
        __break(1u);
        return;
      }

      v26 = 0;
      v25 = v113;
      v27 = v111 & 0xC000000000000001;
      do
      {
        if (v27)
        {
          v28 = MEMORY[0x24C1CBA50](v26, v111);
        }

        else
        {
          v28 = *(v111 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 shortDescription];
        v31 = sub_248383960();
        v33 = v32;

        v113 = v25;
        v35 = *(v25 + 16);
        v34 = *(v25 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_24822C8F0((v34 > 1), v35 + 1, 1);
          v25 = v113;
        }

        ++v26;
        *(v25 + 16) = v35 + 1;
        v36 = v25 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
      }

      while (v24 != v26);
      v21 = v109;
      a2 = v110;
      v22 = v107;
      v19 = v108;
      v23 = v103;
    }

    v38 = MEMORY[0x24C1CB100](v25, MEMORY[0x277D837D0]);
    v40 = v39;

    v41 = sub_24814A378(v38, v40, v115);

    *(v22 + 4) = v41;
    _os_log_impl(&dword_248146000, v19, v112, "[updateCarouselElements] Updated predictions: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1CD5F0](v23, -1, -1);
    MEMORY[0x24C1CD5F0](v22, -1, -1);

    v6 = v98;
    v5 = v102;
    v103 = *(v98 + 8);
    v103(v13, v102);
    v37 = a2;
    v8 = v101;
  }

  else
  {
    v37 = a2;

    v103 = *(v6 + 8);
    v103(v13, v5);
  }

  v42 = MEMORY[0x277D84F90];
  v43 = sub_248381A00();
  if (v43[2])
  {
    v44 = v43[5];
    v95 = v43[4];
    v45 = v95;
    v94 = v44;
    v46 = v44;
  }

  else
  {
    v95 = 0;
    v94 = 0;
  }

  v115[0] = v42;
  if (v21)
  {
    goto LABEL_40;
  }

  v47 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
LABEL_41:
    v59 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  while (1)
  {
    v48 = 0;
    *&v112 = v111 & 0xC000000000000001;
    v108 = (v111 + 32);
    v109 = v111 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x277D82BB8uLL;
    v107 = v47;
LABEL_25:
    if (v112)
    {
      v49 = MEMORY[0x24C1CBA50](v48, v111);
    }

    else
    {
      if (v48 >= *(v109 + 16))
      {
        goto LABEL_39;
      }

      v49 = v108[v48].isa;
    }

    v50 = v49;
    if (!__OFADD__(v48++, 1))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v47 = sub_248384360();
    if (!v47)
    {
      goto LABEL_41;
    }
  }

  v5 = sub_248381A00();
  v52 = (v5 + 40);
  v53 = -*(v5 + 16);
  v54 = -1;
  do
  {
    if (v53 + v54 == -1)
    {

      sub_2483844A0();
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      goto LABEL_24;
    }

    if (++v54 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v55 = v52 + 2;
    v56 = *(v52 - 1);
    v57 = *v52;
    sub_24814FB28(0, &qword_27EE92190);
    v58 = v56;
    v8 = v57;
    v37 = sub_248384030();

    v52 = v55;
  }

  while ((v37 & 1) == 0);

LABEL_24:
  v37 = v110;
  if (v48 != v107)
  {
    goto LABEL_25;
  }

  v59 = v115[0];
  v5 = v102;
  v8 = v101;
  v6 = v98;
  if (v115[0] < 0)
  {
LABEL_45:
    if (!sub_248384360())
    {
      goto LABEL_46;
    }

LABEL_44:
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = v37;
    v62 = v95;
    v63 = v94;
    v61[4] = v95;
    v61[5] = v63;

    sub_24836D6AC(v62, v63);
    sub_2483691E4(v59, sub_24836E0C8, v61);

    goto LABEL_49;
  }

LABEL_42:
  if ((v59 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (*(v59 + 16))
  {
    goto LABEL_44;
  }

LABEL_46:

  v64 = v97;
  v104(v97, v106, v5);
  v65 = sub_248382A80();
  v66 = sub_248383D90();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_248146000, v65, v66, "[updateCarouselElements] No new predictions to prepare.", v67, 2u);
    MEMORY[0x24C1CD5F0](v67, -1, -1);
  }

  v103(v64, v5);
LABEL_49:
  v68 = v93;
  v69 = sub_248381A00();
  v93 = v69;
  v71 = *(v69 + 16);
  if (v71)
  {
    v72 = 0;
    v73 = (v93 + 32);
    v109 = v6 + 8;
    v98 = v68 + 8;
    *&v70 = 136446210;
    v97 = v70;
    do
    {
      v112 = *v73;
      v115[0] = v112;
      MEMORY[0x28223BE20](v69);
      *(&v93 - 2) = v115;
      v75 = v74;
      v76 = *(&v112 + 1);
      if (sub_248366588(sub_24836E0D4, (&v93 - 4), v111))
      {
      }

      else
      {
        v104(v8, v106, v5);
        v77 = v75;
        v78 = v76;
        v79 = sub_248382A80();
        v80 = sub_248383D90();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v115[0] = v108;
          *v81 = v97;
          v82 = [v77 uniqueIdentifier];
          LODWORD(v107) = v80;
          v83 = v99;
          sub_2483811F0();

          v84 = v77;
          v85 = v72;
          v86 = sub_2483811D0();
          v88 = v87;
          (*v98)(v83, v100);
          v89 = v86;
          v72 = v85;
          v77 = v84;
          v90 = sub_24814A378(v89, v88, v115);

          *(v81 + 4) = v90;
          _os_log_impl(&dword_248146000, v79, v107, "[updateCarouselElements] Removing item from model: %{public}s", v81, 0xCu);
          v91 = v108;
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x24C1CD5F0](v91, -1, -1);
          MEMORY[0x24C1CD5F0](v81, -1, -1);

          v8 = v101;
          v92 = v101;
          v5 = v102;
        }

        else
        {

          v92 = v8;
        }

        v103(v92, v5);
        *v115 = v112;
        v113 = 0;
        v114 = 0;
        sub_248381A10();
      }

      ++v73;
      --v71;
    }

    while (v71);
  }

  sub_24836D66C(v95, v94);
}

uint64_t sub_248366588(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C1CBA50](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_248384360();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_2483666B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v112 = a5;
  v113 = a4;
  v115 = a3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94470);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = (&v107 - v9);
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v111 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v107 - v14);
  MEMORY[0x28223BE20](v16);
  v116 = &v107 - v17;
  v133 = sub_248381210();
  v114 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v126 = *(a1 + 16);
  v118 = v10;
  v107 = v11;
  if (v126)
  {
    v20 = 0;
    v124 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model;
    v123 = a1 + 32;
    v131 = (v114 + 8);
    v121 = (v11 + 16);
    v120 = (v11 + 8);
    *&v19 = 136446210;
    v117 = v19;
    v125 = v15;
    do
    {
      v130 = v20;
      v21 = *(v123 + 16 * v20);
      v22 = *&Strong[v124];
      v23 = *(v123 + 16 * v20 + 8);
      v129 = v21;
      if (v22)
      {
        v134 = v21;
        v122 = v23;
        v119 = v23;

        v128 = v22;
        v24 = sub_248381A00();
        v25 = (v24 + 40);
        v135 = -*(v24 + 16);
        v136 = v24;
        v26 = -1;
        while (v135 + v26 != -1)
        {
          if (++v26 >= *(v136 + 2))
          {
            __break(1u);
            goto LABEL_41;
          }

          isa = v25->isa;
          v28 = v25[-1].isa;
          v137 = isa;
          v138 = v28;
          v29 = [(objc_class *)v28 uniqueIdentifier];
          v30 = v132;
          sub_2483811F0();

          v5 = sub_2483811D0();
          v7 = v31;
          v23 = v131;
          v15 = *v131;
          v32 = v133;
          (*v131)(v30, v133);
          v33 = [v134 uniqueIdentifier];
          sub_2483811F0();

          v34 = sub_2483811D0();
          v6 = v35;
          v15(v30, v32);
          if (v5 == v34 && v7 == v6)
          {

LABEL_15:

            v10 = v118;
            v15 = v125;
            v23 = v122;
            goto LABEL_17;
          }

          v25 += 2;
          v11 = sub_248384680();

          if (v11)
          {
            goto LABEL_15;
          }
        }

        v47 = sub_24827C864();
        v11 = v116;
        v10 = v118;
        (*v121)(v116, v47, v118);
        v48 = v134;
        v5 = v119;
        v49 = sub_248382A80();
        v50 = sub_248383D90();

        if (os_log_type_enabled(v49, v50))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *&v139 = v7;
          *v6 = v117;
          v51 = [v48 uniqueIdentifier];
          v52 = v132;
          sub_2483811F0();

          v53 = sub_2483811D0();
          v11 = v54;
          (*v131)(v52, v133);
          v55 = sub_24814A378(v53, v11, &v139);

          *(v6 + 4) = v55;
          _os_log_impl(&dword_248146000, v49, v50, "[updateCarouselElements] Inserting item into model: %{public}s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v7);
          MEMORY[0x24C1CD5F0](v7, -1, -1);
          MEMORY[0x24C1CD5F0](v6, -1, -1);

          (*v120)(v116, v10);
        }

        else
        {

          (*v120)(v11, v10);
        }

        v139 = v129;
        sub_24836E13C();
        sub_248381980();

        v15 = v125;
      }

      else
      {
        v36 = v21;
        v37 = v23;
LABEL_17:
        v38 = sub_24827C864();
        (*v121)(v15, v38, v10);
        v11 = v129;
        v5 = v23;
        v39 = sub_248382A80();
        v40 = sub_248383D90();

        if (os_log_type_enabled(v39, v40))
        {
          v6 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v139 = v41;
          *v6 = v117;
          v42 = [v11 uniqueIdentifier];
          v43 = v132;
          sub_2483811F0();

          v44 = sub_2483811D0();
          v7 = v45;
          (*v131)(v43, v133);
          v46 = sub_24814A378(v44, v7, &v139);

          *(v6 + 4) = v46;
          _os_log_impl(&dword_248146000, v39, v40, "[updateCarouselElements] Skipping duplicate item: %{public}s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          v15 = v125;
          MEMORY[0x24C1CD5F0](v41, -1, -1);
          MEMORY[0x24C1CD5F0](v6, -1, -1);
        }

        else
        {
        }

        (*v120)(v15, v10);
      }

      v20 = v130 + 1;
    }

    while (v130 + 1 != v126);
  }

  if ((Strong[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup] & 1) == 0)
  {
    v56 = *(sub_248381A00() + 16);

    if (v56)
    {
      if ([Strong isViewLoaded])
      {
        sub_2483674F8();
      }
    }
  }

  v57 = sub_248381A00();
  if (!*(v57 + 16))
  {

LABEL_34:

    return;
  }

  v58 = *(v57 + 40);
  v59 = *(v57 + 32);
  v60 = v58;

  if (!v113)
  {

    goto LABEL_34;
  }

  v138 = v60;
  v61 = v113;
  v137 = v112;
  v62 = [v61 uniqueIdentifier];
  v63 = v132;
  sub_2483811F0();

  v64 = sub_2483811D0();
  v66 = v65;
  v68 = v114 + 8;
  v67 = *(v114 + 8);
  v69 = v133;
  v67(v63, v133);
  v70 = [v59 uniqueIdentifier];
  sub_2483811F0();

  v71 = sub_2483811D0();
  v73 = v72;
  v114 = v68;
  v136 = v67;
  v67(v63, v69);
  if (v64 == v71 && v66 == v73)
  {

    v74 = v138;
LABEL_37:

    return;
  }

  v75 = sub_248384680();

  v74 = v138;
  if (v75)
  {

    goto LABEL_37;
  }

  v76 = sub_24827C864();
  v7 = v107;
  v77 = v111;
  v5 = v118;
  (*(v107 + 16))(v111, v76, v118);
  v23 = v59;
  v78 = v74;
  v11 = v77;
  v6 = v78;
  v15 = v61;
  v26 = v137;
  v25 = sub_248382A80();
  v79 = sub_248383D90();

  if (os_log_type_enabled(v25, v79))
  {
    v80 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v140 = v134;
    *v80 = 136446466;
    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    v81 = v15;
    v82 = v26;
    v138 = v6;
    v83 = v82;
    LODWORD(v131) = v79;
    sub_248384440();

    v137 = v15;
    *&v139 = 0xD00000000000001BLL;
    *(&v139 + 1) = 0x80000002483B4440;
    v84 = [v81 shortDescription];
    v85 = sub_248383960();
    v135 = v26;
    v86 = v85;
    v88 = v87;

    MEMORY[0x24C1CAFD0](v86, v88);

    v89 = sub_24814A378(v139, *(&v139 + 1), &v140);

    *(v80 + 4) = v89;
    *(v80 + 12) = 2082;
    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    v90 = v23;
    v91 = v138;
    sub_248384440();

    *&v139 = 0xD00000000000001BLL;
    *(&v139 + 1) = 0x80000002483B4440;
    v15 = v137;
    v92 = [v90 shortDescription];
    v93 = sub_248383960();
    v95 = v94;

    v96 = v93;
    v6 = v138;
    MEMORY[0x24C1CAFD0](v96, v95);

    v26 = v135;

    v97 = sub_24814A378(v139, *(&v139 + 1), &v140);

    *(v80 + 14) = v97;
    _os_log_impl(&dword_248146000, v25, v131, "[updateCarouselElements] rotating from %{public}s to %{public}s", v80, 0x16u);
    v98 = v134;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v98, -1, -1);
    MEMORY[0x24C1CD5F0](v80, -1, -1);

    (*(v7 + 8))(v111, v118);
  }

  else
  {
LABEL_41:

    (*(v7 + 8))(v11, v5);
  }

  v99 = [v23 uniqueIdentifier];
  v100 = v132;
  sub_2483811F0();

  v101 = sub_2483811D0();
  v103 = v102;
  v136(v100, v133);
  v104 = v108;
  *v108 = v101;
  v104[1] = v103;
  v105 = v109;
  v106 = v110;
  (*(v109 + 104))(v104, *MEMORY[0x277CF8B68], v110);
  sub_248381A20();

  (*(v105 + 8))(v104, v106);
}

void sub_2483674F8()
{
  if (v0[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup])
  {
    return;
  }

  v1 = v0;
  v0[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup] = 1;
  if (*&v0[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model])
  {
    v2 = objc_opt_self();

    v3 = [v2 standardUserDefaults];
    v4 = sub_248383930();
    [v3 BOOLForKey_];

    sub_2483836B0();
  }

  sub_24836E074();
  sub_248383420();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94598));
  sub_24836DD28(v104, v105, v106, v107, v108);
  v6 = sub_248383350();
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_44;
  }

  v8 = v7;
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = v10;
  v12 = [v6 view];
  if (!v12)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v13 = v12;
  [v11 addSubview_];

  [v6 didMoveToParentViewController_];
  v14 = [v6 view];
  if (!v14)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24839CCB0;
  v17 = [v6 view];
  if (!v17)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v16 + 32) = v23;
  v24 = [v6 view];
  if (!v24)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v16 + 40) = v30;
  v31 = [v6 view];
  if (!v31)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v16 + 48) = v37;
  v38 = [v6 view];

  if (!v38)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v103 = v6;
  v39 = [v38 bottomAnchor];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v41 bottomAnchor];

  v44 = [v39 constraintEqualToAnchor_];
  *(v16 + 56) = v44;
  sub_24814FB28(0, &qword_27EE8FE90);
  v45 = sub_248383B00();

  [v42 activateConstraints_];

  v46 = objc_allocWithZone(MEMORY[0x277D75AE0]);
  v47 = v1;
  v48 = [v46 initWithTarget:v47 action:sel__handleSwipeGestureUp];
  [v48 setDirection_];
  v49 = v48;
  [v49 setDelegate_];
  v50 = objc_opt_self();
  v51 = [v50 sharedInstance];
  v52 = v49;
  if (v51)
  {
    v53 = v51;
    v52 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
    swift_unknownObjectRelease();
    [v53 addGestureRecognizer:v49 toDisplayWithIdentity:v52];
  }

  v54 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v47 action:sel__handleSwipeGestureDown];
  [v54 setDirection_];
  v55 = v54;
  [v55 setDelegate_];
  v56 = [v50 sharedInstance];
  if (v56)
  {
    v57 = v56;
    v58 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
    swift_unknownObjectRelease();
    [v57 addGestureRecognizer:v55 toDisplayWithIdentity:v58];

    v59 = v55;
    v60 = &selRef_setToView_;
  }

  else
  {
    v59 = v49;
    v49 = v55;
    v60 = &selRef_setToView_;
  }

  v61 = objc_allocWithZone(MEMORY[0x277D75708]);
  v62 = v47;
  v63 = [v61 initWithTarget:v62 action:sel__handleLongPressGesture_];
  [v63 setDelegate_];
  v64 = [v62 v60[504]];
  if (!v64)
  {
    goto LABEL_55;
  }

  v65 = v64;
  [v64 addGestureRecognizer_];

  v66 = objc_opt_self();
  v67 = [v66 sharedInstance];
  v68 = v63;
  if (v67)
  {
    v69 = v67;
    v68 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
    swift_unknownObjectRelease();
    [v69 addGestureRecognizer:v63 toDisplayWithIdentity:v68];
  }

  v70 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture;
  v71 = *(v62 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture);
  *(v62 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture) = v63;
  v72 = v63;

  v73 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v62 action:sel__handleLongPressKnobGesture_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_24839C700;
  v75 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v76 = v73;
  *(v74 + 32) = [v75 initWithInteger_];
  sub_24814FB28(0, &qword_27EE90740);
  v77 = sub_248383B00();

  [v76 setAllowedPressTypes_];

  v78 = [v62 view];
  if (!v78)
  {
    goto LABEL_56;
  }

  v79 = v78;
  [v78 addGestureRecognizer_];

  v80 = [v66 sharedInstance];
  v81 = v76;
  if (v80)
  {
    v82 = v80;
    v81 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
    swift_unknownObjectRelease();
    [v82 addGestureRecognizer:v76 toDisplayWithIdentity:v81];
  }

  v83 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture;
  v84 = *(v62 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture);
  *(v62 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture) = v76;
  v85 = v76;

  v86 = *(v62 + v70);
  v87 = MEMORY[0x277D85000];
  v88 = &selRef_setDamping_;
  if (v86)
  {
    v89 = *((*MEMORY[0x277D85000] & *v62) + 0x1C8);
    v90 = v86;
    v88 = &selRef_setDamping_;
    [v90 setEnabled_];
  }

  v91 = *(v62 + v83);
  if (v91)
  {
    v92 = *((*v87 & *v62) + 0x1C8);
    v93 = v91;
    [v93 v88[47]];
  }

  v94 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v62 action:sel__handleTapGesture];
  [v94 setAllowableMovement_];
  v95 = [v62 view];
  if (!v95)
  {
    goto LABEL_57;
  }

  v96 = v95;
  [v95 addGestureRecognizer_];

  if (*(v62 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2483819D0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2483819C0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2483819A0();
    sub_2483819E0();
    v97 = *(sub_248381A00() + 16);

    if (v97 < 2 || (v98 = [v62 parentViewController]) == 0)
    {
      sub_24836DD6C(v104, v105, v106, v107, v108);

LABEL_40:

      return;
    }

    v99 = v98;
    v100 = [v98 view];
    if (v100)
    {
      v101 = v100;
      v102 = [v100 isFocused];

      if ((v102 & 1) == 0)
      {
        sub_2483819B0();
      }

      sub_24836DD6C(v104, v105, v106, v107, v108);

      goto LABEL_40;
    }

    goto LABEL_58;
  }

  sub_24836DD6C(v104, v105, v106, v107, v108);
}

uint64_t sub_2483682F8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [*(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_engine) currentPredictions];
  sub_24814FB28(0, &unk_27EE945B0);
  v8 = sub_248383B10();

  if (v8 >> 62)
  {
    if (sub_248384360())
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = ObjectType;

    sub_2483691E4(v11, sub_24836E1EC, v10);
  }

  v13 = v0;

  v14 = sub_24827C864();
  (*(v3 + 16))(v6, v14, v2);
  v15 = sub_248382A80();
  v16 = sub_248383DA0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_248146000, v15, v16, "[prepareInitialPredictions] No predictions to prepare", v17, 2u);
    MEMORY[0x24C1CD5F0](v17, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839C7F0;
  *(inited + 32) = sub_248383960();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v19;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x80000002483B4670;
  sub_24828CCA0(inited);
  swift_setDeallocating();
  sub_24822D578(inited + 32, &unk_27EE945D0);
  v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v21 = sub_248383930();
  v22 = sub_248383880();

  v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

  v24 = (v13 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  v25 = *(v13 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  if (v25)
  {
    sub_248167910(*(v13 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion));
    v26 = v23;
    v25(v23);

    sub_248167864(v25);
  }

  v27 = *v24;
  *v24 = 0;
  v24[1] = 0;
  return sub_248167864(v27);
}

void sub_248368714(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v104 = sub_248381210();
  v5 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248382A90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v94 - v12;
  MEMORY[0x28223BE20](v14);
  v105 = &v94 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v94 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v107 = v5;
    v21 = *(a1 + 16);
    if (v21)
    {
      v95 = v13;
      v96 = a3;
      v112 = MEMORY[0x277D84F90];
      sub_2483844C0();
      v22 = 32;
      v106 = v21;
      v23 = v8;
      do
      {
        v24 = *(a1 + v22);
        sub_2483844A0();
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
        v22 += 16;
        --v21;
      }

      while (v21);
      v25 = v112;
      v26 = sub_24827C864();
      v27 = *(v8 + 16);
      v110 = v26;
      v111 = v8 + 16;
      v109 = v27;
      (v27)(v18);

      v28 = v20;
      v29 = sub_248382A80();
      v30 = sub_248383D90();

      v31 = os_log_type_enabled(v29, v30);
      v32 = MEMORY[0x277D85000];
      v99 = v28;
      v97 = v20;
      v98 = a1;
      v94 = v25;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v112 = v108;
        *v33 = 136446466;
        v34 = sub_24814FB28(0, &unk_27EE945B0);
        v35 = MEMORY[0x24C1CB100](v25, v34);
        LODWORD(v102) = v30;
        v37 = sub_24814A378(v35, v36, &v112);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        (*((*v32 & *v28) + 0xB8))(v38);
        v39 = sub_248383F30();
        v41 = sub_24814A378(v39, v40, &v112);

        *(v33 + 14) = v41;
        _os_log_impl(&dword_248146000, v29, v102, "[prepareInitialPredictions] Created carousel model with starting predictions: %{public}s, and predicted size: %{public}s", v33, 0x16u);
        v42 = v108;
        swift_arrayDestroy();
        MEMORY[0x24C1CD5F0](v42, -1, -1);
        v43 = v33;
        a1 = v98;
        MEMORY[0x24C1CD5F0](v43, -1, -1);
      }

      v108 = *(v23 + 8);
      v44 = v108(v18, v7);
      v101 = (v107 + 8);
      v45 = (a1 + 40);
      v44.n128_u64[0] = 136446210;
      v100 = v44;
      v102 = v23 + 8;
      v46 = v105;
      v47 = v106;
      do
      {
        v49 = *(v45 - 1);
        v50 = *v45;
        v109(v46, v110, v7);
        v51 = v49;
        v52 = v50;
        v53 = sub_248382A80();
        v54 = sub_248383D90();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v107 = v52;
          v57 = v56;
          v112 = v56;
          *v55 = v100.n128_u32[0];
          v58 = [v51 uniqueIdentifier];
          v59 = v103;
          sub_2483811F0();

          v60 = sub_2483811D0();
          v106 = v51;
          v61 = v47;
          v62 = v60;
          v63 = v7;
          v65 = v64;
          (*v101)(v59, v104);
          v66 = v62;
          v47 = v61;
          v67 = sub_24814A378(v66, v65, &v112);
          v7 = v63;

          *(v55 + 4) = v67;
          _os_log_impl(&dword_248146000, v53, v54, "[prepareInitialPredictions] Adding item to initial model: %{public}s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x24C1CD5F0](v57, -1, -1);
          v68 = v55;
          v46 = v105;
          MEMORY[0x24C1CD5F0](v68, -1, -1);
        }

        else
        {
        }

        v48 = (v108)(v46, v7);
        v45 += 2;
        --v47;
      }

      while (v47);
      v69 = v99;
      v20 = v97;
      v70 = (*((*MEMORY[0x277D85000] & *v99) + 0xB8))(v48);
      *&v69[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model] = sub_24836E1F4(v98, v70);

      sub_2483638A8();

      v71 = v95;
      v109(v95, v110, v7);
      v72 = v94;

      v73 = v96;

      v74 = sub_248382A80();
      v75 = sub_248383D90();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 134218240;
        if (v72 < 0 || (v72 & 0x4000000000000000) != 0)
        {
          v77 = sub_248384360();
        }

        else
        {
          v77 = *(v72 + 16);
        }

        *(v76 + 4) = v77;

        *(v76 + 12) = 2048;
        if (v73 >> 62)
        {
          v78 = sub_248384360();
        }

        else
        {
          v78 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v76 + 14) = v78;

        _os_log_impl(&dword_248146000, v74, v75, "[prepareInitialPredictions] Prepared %ld out of %ld predictions", v76, 0x16u);
        MEMORY[0x24C1CD5F0](v76, -1, -1);

        v69 = v99;
      }

      else
      {
      }

      v108(v71, v7);
      if ([v69 isViewLoaded])
      {
        if ((v69[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup] & 1) == 0)
        {
          sub_2483674F8();
        }
      }

      v89 = &v69[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion];
      v92 = *&v69[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion];
      if (!v92)
      {
        v93 = 0;
        goto LABEL_32;
      }

      v92(0);
      sub_248167864(v92);
    }

    else
    {
      v79 = sub_24827C864();
      (*(v8 + 16))(v10, v79, v7);
      v80 = sub_248382A80();
      v81 = sub_248383DA0();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_248146000, v80, v81, "[prepareInitialPredictions] No predictions were successfully prepared", v82, 2u);
        MEMORY[0x24C1CD5F0](v82, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24839C7F0;
      *(inited + 32) = sub_248383960();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v84;
      *(inited + 48) = 0xD000000000000021;
      *(inited + 56) = 0x80000002483B4690;
      sub_24828CCA0(inited);
      swift_setDeallocating();
      sub_24822D578(inited + 32, &unk_27EE945D0);
      v85 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v86 = sub_248383930();
      v87 = sub_248383880();

      v88 = [v85 initWithDomain:v86 code:2 userInfo:v87];

      v89 = &v20[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion];
      v90 = *&v20[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion];
      if (v90)
      {
        sub_248167910(*&v20[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion]);
        v91 = v88;
        v90(v88);

        sub_248167864(v90);
      }
    }

    v93 = *v89;
LABEL_32:
    *v89 = 0;
    v89[1] = 0;
    sub_248167864(v93);
  }
}

id sub_2483691E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v37 = a2;
  v5 = sub_2483837A0();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2483837E0();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch_group_create();
  v50 = swift_allocObject();
  *(v50 + 16) = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_24814FB28(0, &qword_27EE90280);
    v29 = sub_248383E50();
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v37;
    v30[3] = v31;
    v30[4] = v50;
    v56 = sub_24836DB94;
    v57 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_24814C01C;
    v55 = &block_descriptor_65_0;
    v32 = _Block_copy(&aBlock);

    v33 = v8;
    v34 = v39;
    sub_2483837C0();
    v51 = MEMORY[0x277D84F90];
    sub_24836DCE0(&qword_27EE91EB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
    sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
    v35 = v41;
    v36 = v44;
    sub_2483842D0();
    sub_248383E10();
    _Block_release(v32);

    (*(v43 + 8))(v35, v36);
    (*(v40 + 8))(v34, v42);
  }

LABEL_14:
  v9 = sub_248384360();
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_3:
  v10 = 0;
  v49 = a1 & 0xC000000000000001;
  v47 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_engine;
  v48 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = &v54;
  v45 = a1;
  while (1)
  {
    if (v49)
    {
      v11 = MEMORY[0x24C1CBA50](v10, a1);
    }

    else
    {
      if (v10 >= *(v48 + 16))
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    dispatch_group_enter(v8);
    v14 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);
    v15 = v12;
    v16 = v14();
    v18 = [objc_opt_self() viewWithPrediction:v15 predictedSize:{v16, v17}];

    [v18 setEngine_];
    [v18 setHidden_];
    result = [v3 view];
    if (!result)
    {
      break;
    }

    v20 = result;
    [result addSubview_];

    v21 = v14();
    v23 = v22;
    v24 = swift_allocObject();
    v24[2] = v18;
    v24[3] = v15;
    v24[4] = v50;
    v24[5] = v8;
    v56 = sub_24836DB88;
    v57 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_248369D34;
    v55 = &block_descriptor_59_0;
    v25 = _Block_copy(&aBlock);
    v26 = v15;
    v27 = v18;

    v28 = v8;

    [v27 preparePrediction:v26 withPredictedSize:v25 completion:{v21, v23}];
    _Block_release(v25);

    ++v10;
    a1 = v45;
    if (v13 == v9)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_248369804(void *a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v61 - v16;
  [a2 removeFromSuperview];
  [a2 setHidden_];
  if (a1)
  {
    v18 = sub_24827C864();
    (*(v11 + 16))(v13, v18, v10);
    v19 = a3;
    v20 = a1;
    v21 = sub_248382A80();
    v22 = sub_248383DA0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66[0] = v24;
      *v23 = 136446466;
      v25 = [v19 shortDescription];
      v64 = v11;
      v26 = v25;
      v27 = sub_248383960();
      v63 = v10;
      v28 = a5;
      v30 = v29;

      v31 = sub_24814A378(v27, v30, v66);
      a5 = v28;

      *(v23 + 4) = v31;
      *(v23 + 12) = 2082;
      v65 = a1;
      v32 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94520);
      v33 = sub_2483839A0();
      v35 = sub_24814A378(v33, v34, v66);

      *(v23 + 14) = v35;
      _os_log_impl(&dword_248146000, v21, v22, "[preparePredictions] Failed to prepare prediction: %{public}s, error: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v24, -1, -1);
      MEMORY[0x24C1CD5F0](v23, -1, -1);

      (*(v64 + 8))(v13, v63);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    [a2 setPrediction_];
    swift_beginAccess();
    v36 = *(a4 + 16);
    v37 = a3;
    v38 = a2;
    v39 = v37;
    v40 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v36;
    v42 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_24836C91C(0, *(v36 + 2) + 1, 1, v36);
      *(a4 + 16) = v36;
    }

    v44 = *(v36 + 2);
    v43 = *(v36 + 3);
    if (v44 >= v43 >> 1)
    {
      v36 = sub_24836C91C((v43 > 1), v44 + 1, 1, v36);
    }

    *(v36 + 2) = v44 + 1;
    v45 = &v36[16 * v44];
    *(v45 + 4) = v39;
    *(v45 + 5) = v40;
    *(a4 + 16) = v36;
    swift_endAccess();
    v46 = sub_24827C864();
    (*(v42 + 16))(v17, v46, v10);
    v47 = v39;
    v48 = sub_248382A80();
    v49 = sub_248383D90();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v62 = v40;
      v51 = v50;
      v52 = swift_slowAlloc();
      v66[0] = v52;
      *v51 = 136446210;
      v53 = [v47 shortDescription];
      v63 = v10;
      v54 = a5;
      v55 = v53;
      v56 = sub_248383960();
      v64 = v42;
      v57 = v56;
      v59 = v58;

      a5 = v54;
      v60 = sub_24814A378(v57, v59, v66);

      *(v51 + 4) = v60;
      _os_log_impl(&dword_248146000, v48, v49, "[preparePredictions] Successfully prepared prediction: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1CD5F0](v52, -1, -1);
      MEMORY[0x24C1CD5F0](v51, -1, -1);

      (*(v64 + 8))(v17, v63);
    }

    else
    {

      (*(v42 + 8))(v17, v10);
    }
  }

  dispatch_group_leave(a5);
}

void sub_248369D34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id DBSmartWidgetCarousel.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall DBSmartWidgetCarousel._wheelChanged(with:)(UIEvent_optional with)
{
  isa = with.value.super.isa;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94470);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  if (!*(v1 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {
    goto LABEL_12;
  }

  v8 = v5;

  v9 = [v1 parentViewController];
  if (!v9)
  {

    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 isFocused];

  if (v13 && ((*((*MEMORY[0x277D85000] & *v1) + 0x150))() & 1) != 0)
  {
    if (isa)
    {
      v14 = [(objc_class *)isa subtype];
      if (v14 == 201)
      {
        v15 = MEMORY[0x277CF8B58];
        goto LABEL_15;
      }

      if (v14 == 200)
      {
        v15 = MEMORY[0x277CF8B60];
LABEL_15:
        (*(v4 + 104))(v7, *v15, v8);
        sub_248381A20();

        (*(v4 + 8))(v7, v8);
        return;
      }

      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:

LABEL_12:
  v16 = type metadata accessor for DBSmartWidgetCarousel();
  v17.receiver = v1;
  v17.super_class = v16;
  objc_msgSendSuper2(&v17, sel__wheelChangedWithEvent_, isa);
}

Swift::Void __swiftcall DBSmartWidgetCarousel.viewDidLoad()()
{
  v1 = v0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBSmartWidgetCarousel();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (*&v0[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model])
  {

    v2 = *(sub_248381A00() + 16);

    if (v2)
    {
      if ((v1[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup] & 1) == 0)
      {
        sub_2483674F8();
      }
    }
  }
}

id sub_24836A200(void *a1)
{
  v2 = v1;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = aBlock - v10;
  if ([a1 state] == 1)
  {
    v12 = sub_24827C864();
    (*(v5 + 16))(v11, v12, v4);
    v13 = sub_248382A80();
    v14 = sub_248383D90();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_248146000, v13, v14, "[handleLongPressGesture] long press gesture began", v15, 2u);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

    v16 = (*(v5 + 8))(v11, v4);
    v17 = (*((*MEMORY[0x277D85000] & *v2) + 0x1E8))(v16);
    if (v17)
    {
      v19 = v18;
      v20 = v17;
      v21 = v17;
      sub_24836D66C(v20, v19);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v21;
      aBlock[4] = sub_24836D6F4;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24814C01C;
      aBlock[3] = &block_descriptor_10;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      v26 = [v25 managerConfigurationWithAction_];
      _Block_release(v24);
      v27 = [objc_opt_self() eventWithType:12 context:v26];
      [swift_unknownObjectUnownedLoadStrong() handleEvent_];

      swift_unknownObjectRelease();
    }
  }

  result = [a1 state];
  if (result == 3)
  {
    v29 = sub_24827C864();
    (*(v5 + 16))(v7, v29, v4);
    v30 = sub_248382A80();
    v31 = sub_248383D90();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_248146000, v30, v31, "[handleLongPressGesture] long press gesture ended", v32, 2u);
      MEMORY[0x24C1CD5F0](v32, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_24836A614(uint64_t a1, void *a2)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_248382A90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v12 = sub_24827C864();
    (*(v8 + 16))(v10, v12, v7);
    v13 = a2;
    v14 = sub_248382A80();
    v15 = sub_248383D90();

    v16 = &selRef_setToView_;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      v35 = v4;
      v18 = v17;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v18 = 136446210;
      v19 = [v13 uniqueIdentifier];
      sub_2483811F0();

      sub_24836DCE0(&qword_27EE94590, MEMORY[0x277CC95F0]);
      v20 = sub_248384650();
      v33 = v15;
      v21 = v13;
      v22 = v3;
      v24 = v23;
      (*(v35 + 8))(v6, v22);
      v25 = sub_24814A378(v20, v24, &v37);
      v3 = v22;

      *(v18 + 4) = v25;
      v16 = &selRef_setToView_;
      _os_log_impl(&dword_248146000, v14, v33, "[handleLongPressGesture] hiding prediction with identifier: %{public}s for this drive", v18, 0xCu);
      v26 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1CD5F0](v26, -1, -1);
      v27 = v18;
      v4 = v35;
      MEMORY[0x24C1CD5F0](v27, -1, -1);

      (*(v8 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      v21 = v13;
    }

    v28 = v36;
    v29 = *&v36[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_engine];
    v30 = [v21 v16[411]];
    sub_2483811F0();

    v31 = sub_2483811E0();
    (*(v4 + 8))(v6, v3);
    [v29 sessionShouldHidePrediction_];
  }
}

void sub_24836AA40(uint64_t a1)
{
  v3 = [v1 parentViewController];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 isFocused];

      if (v6)
      {
        [v1 _handleLongPressGesture_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Bool __swiftcall DBSmartWidgetCarousel.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [v1 view];
    [(UIGestureRecognizer *)a1 locationInView:v13];
    v15 = v14;
    v17 = v16;

    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v19.x = v15;
    v19.y = v17;
    LOBYTE(v3) = CGRectContainsPoint(v20, v19);
  }

  else
  {
    __break(1u);
  }

  return v3;
}

void sub_24836ADAC(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94470);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  if (*&a1[OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model])
  {
    (*(v6 + 104))(v9, *a3, v5, v7);
    v10 = a1;

    sub_248381A20();

    (*(v6 + 8))(v9, v5);
  }
}

void sub_24836AF2C()
{
  v1 = sub_248382A90();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))(v3);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v10 = v6;
    sub_24836D66C(v8, v9);
    v11 = sub_24827C864();
    (*(v2 + 16))(v5, v11, v1);
    v12 = v10;
    v13 = sub_248382A80();
    v14 = sub_248383D90();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v8;
      v17 = v12;
      _os_log_impl(&dword_248146000, v13, v14, "(Carousel) Performing action: Primary %{public}@", v15, 0xCu);
      sub_24822D578(v16, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v18 = [v12 primaryActionBlock];
    v18[2]();
    _Block_release(v18);
  }
}

uint64_t sub_24836B24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24836DC38();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24836B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24836DC38();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24836B314()
{
  sub_24836DC38();
  sub_2483833F0();
  __break(1u);
}

uint64_t sub_24836B340()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490);
  sub_2483836C0();
  return v1;
}

void (*sub_24836B3E4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a5;
  *(v8 + 50) = a4 & 1;
  *v8 = a4 & 1;
  *(v8 + 8) = a5;

  *(v9 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490);
  sub_2483836C0();
  return sub_24836B498;
}

void sub_24836B498(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_2483836D0();

  free(v1);
}

uint64_t sub_24836B500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490);
  sub_2483836E0();
  return v1;
}

uint64_t sub_24836B554@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24836D6FC();

  sub_248382620();
  v10 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490);
  sub_2483836C0();
  v11 = 0;
  if (v20 == 1)
  {
    sub_248383790();
    sub_2483830B0();
    sub_2483830C0();
    sub_2483830D0();

    sub_248383790();
    sub_2483830B0();
    sub_2483830C0();
    sub_2483830D0();

    v11 = sub_2483830A0();
  }

  v12 = sub_248383780();
  sub_2483836C0();
  v13 = sub_248383760();
  v15 = v14;
  v16 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE944A0) + 36);
  *v16 = v11;
  *(v16 + 8) = v12;
  *(v16 + 16) = v20;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2 & 1;
  *(v17 + 32) = v10;
  *(v17 + 40) = a4;
  v18 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE944A8) + 36));
  sub_248383100();

  result = sub_248383BC0();
  *v18 = &unk_2483A2780;
  v18[1] = v17;
  return result;
}

id sub_24836B7B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

uint64_t sub_24836B7C4(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  *(v4 + 195) = a3;
  *(v4 + 194) = a2;
  v5 = sub_248382A90();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_248384500();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  sub_248383BB0();
  *(v4 + 120) = sub_248383BA0();
  v8 = sub_248383B90();
  *(v4 + 128) = v8;
  *(v4 + 136) = v7;

  return MEMORY[0x2822009F8](sub_24836B934, v8, v7);
}

uint64_t sub_24836B934()
{
  if (*(v0 + 194) == 1)
  {
    sub_248384710();
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_24836BB3C;

    return sub_24825A254(4000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);

    v6 = sub_24827C864();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_248382A80();
    v8 = sub_248383D90();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_248146000, v7, v8, "Already showed instruction overlay on this device", v13, 2u);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_24836BB3C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[14];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    v7 = *(v5 + 8);
    v3[20] = v7;
    v7(v4, v6);
    v8 = v3[16];
    v9 = v3[17];
    v10 = sub_24836BE00;
  }

  else
  {
    v11 = *(v5 + 8);
    v3[19] = v11;
    v11(v4, v6);
    v8 = v3[16];
    v9 = v3[17];
    v10 = sub_24836BCD8;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24836BCD8()
{
  *(v0 + 168) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 195);
  *(v0 + 24) = *(v0 + 48);
  *(v0 + 192) = 1;

  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490);
  sub_2483836D0();
  sub_248384710();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_24836BF28;

  return sub_24825A254(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24836BE00()
{
  *(v0 + 168) = *(v0 + 160);
  *(v0 + 16) = *(v0 + 195);
  *(v0 + 24) = *(v0 + 48);
  *(v0 + 192) = 1;

  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490);
  sub_2483836D0();
  sub_248384710();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_24836BF28;

  return sub_24825A254(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24836BF28()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[21];
  v5 = v2[13];
  v6 = v2[11];
  if (v0)
  {

    v4(v5, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_24836E560;
  }

  else
  {
    v4(v5, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_24836C0D8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24836C0D8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 195);

  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 193) = 0;
  sub_2483836D0();

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_248383930();
  [v6 setBool:1 forKey:v7];

  v8 = sub_24827C864();
  (*(v3 + 16))(v1, v8, v2);
  v9 = sub_248382A80();
  v10 = sub_248383D90();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_248146000, v9, v10, "Successfully showed instruction overlay, will not show again.", v15, 2u);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
  }

  (*(v14 + 8))(v12, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24836C2D4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_248383760();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE944B0);
  return sub_24836C31C(a1 + *(v3 + 44));
}

uint64_t sub_24836C31C@<X0>(uint64_t a1@<X8>)
{
  v36[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94538);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v36 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94540);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94548);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v36 - v16;
  sub_248383750();
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94550) + 56)] = 256;
  v18 = &v17[*(v12 + 44)];
  v19 = *(sub_248383160() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_248383330();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  *v18 = 0x4032000000000000;
  *(v18 + 1) = 0x4032000000000000;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94558) + 36)] = 256;
  sub_248383320();
  sub_24836DC8C();
  sub_248230210(v10);

  sub_2483834B0();
  v22 = sub_248383490();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  v23 = sub_2483834C0();
  sub_24822D578(v3, &qword_27EE94538);
  KeyPath = swift_getKeyPath();
  v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94568) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94570) + 36)];
  *v27 = v26;
  v27[8] = 1;
  LOBYTE(v26) = sub_248383460();
  sub_248383020();
  v28 = &v10[*(v5 + 44)];
  *v28 = v26;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_248232C78(v17, v14, &qword_27EE94548);
  sub_2481675A8(v10, v7);
  v33 = v36[0];
  sub_248232C78(v14, v36[0], &qword_27EE94548);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94578);
  sub_2481675A8(v7, v33 + *(v34 + 48));
  sub_248167618(v10);
  sub_24822D578(v17, &qword_27EE94548);
  sub_248167618(v7);
  return sub_24822D578(v14, &qword_27EE94548);
}

uint64_t sub_24836C78C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_248384500();
  v5 = sub_24836DCE0(&unk_27EE94580, MEMORY[0x277D85928]);
  sub_2483846F0();
  sub_24836DCE0(&qword_27EE90220, MEMORY[0x277D858F8]);
  sub_248384510();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24825A4E4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

char *sub_24836C91C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24836CA28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24836CB34(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24836D578(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24836CBA0(v5);
  *a1 = v2;
  return result;
}

char *sub_24836CBA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248384640();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_248383B60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24836CD64(v7, v8, a1, v4);
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
    return sub_24836CC98(0, v2, 1, a1);
  }

  return result;
}

char *sub_24836CC98(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3 - 16;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 16 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 16);
      *(v10 + 16) = *v10;
      *v10 = v11;
      v10 -= 16;
      result = v11;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24836CD64(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v86 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v13 = 16 * v11;
        v14 = (*v6 + 16 * v11);
        v16 = *v14;
        v15 = (v14 + 4);
        result = [*(*v6 + 16 * v12) compare_];
        v17 = v11;
        v18 = result;
        v87 = v17;
        v5 = v17 + 2;
        while (v8 != v5)
        {
          result = [*v15 compare_];
          ++v5;
          v15 += 2;
          if ((v18 == -1) == (result != -1))
          {
            v8 = v5 - 1;
            break;
          }
        }

        if (v18 == -1)
        {
          v11 = v87;
          if (v8 < v87)
          {
            __break(1u);
LABEL_123:
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
            return result;
          }

          if (v87 < v8)
          {
            v19 = 16 * v8 - 16;
            v20 = v8;
            v21 = v87;
            do
            {
              if (v21 != --v20)
              {
                v23 = *v6;
                if (!*v6)
                {
                  goto LABEL_126;
                }

                v22 = *(v23 + v13);
                *(v23 + v13) = *(v23 + v19);
                *(v23 + v19) = v22;
              }

              ++v21;
              v19 -= 16;
              v13 += 16;
            }

            while (v21 < v20);
          }

          v7 = v86;
        }

        else
        {
          v7 = v86;
          v11 = v87;
        }
      }

      v24 = v6[1];
      if (v8 >= v24)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_118;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_119;
      }

      if (v11 + a4 < v24)
      {
        v24 = v11 + a4;
      }

      if (v24 < v11)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v8 == v24)
      {
LABEL_29:
        v5 = v8;
        if (v8 < v11)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v90 = v24;
        v84 = v6;
        v71 = v11;
        v72 = *v6;
        v73 = *v6 + 16 * v8 - 16;
        v88 = v71;
        v74 = v71 - v8;
        do
        {
          v75 = *(v72 + 16 * v8);
          v76 = v74;
          v77 = v73;
          do
          {
            result = [v75 compare_];
            if (result != -1)
            {
              break;
            }

            if (!v72)
            {
              goto LABEL_123;
            }

            v78 = *(v77 + 16);
            *(v77 + 16) = *v77;
            *v77 = v78;
            v77 -= 16;
            v75 = v78;
          }

          while (!__CFADD__(v76++, 1));
          ++v8;
          v73 += 16;
          --v74;
        }

        while (v8 != v90);
        v6 = v84;
        v7 = v86;
        v11 = v88;
        v5 = v90;
        if (v90 < v88)
        {
          goto LABEL_117;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_248299530(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v26 = *(v10 + 2);
      v25 = *(v10 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        result = sub_248299530((v25 > 1), v26 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v27;
      v28 = &v10[16 * v26];
      *(v28 + 4) = v11;
      *(v28 + 5) = v5;
      v29 = *v7;
      if (!*v7)
      {
        goto LABEL_127;
      }

      v89 = v5;
      if (v26)
      {
        while (1)
        {
          v30 = v27 - 1;
          if (v27 >= 4)
          {
            break;
          }

          if (v27 == 3)
          {
            v31 = *(v10 + 4);
            v32 = *(v10 + 5);
            v41 = __OFSUB__(v32, v31);
            v33 = v32 - v31;
            v34 = v41;
LABEL_49:
            if (v34)
            {
              goto LABEL_106;
            }

            v47 = &v10[16 * v27];
            v49 = *v47;
            v48 = *(v47 + 1);
            v50 = __OFSUB__(v48, v49);
            v51 = v48 - v49;
            v52 = v50;
            if (v50)
            {
              goto LABEL_109;
            }

            v53 = &v10[16 * v30 + 32];
            v55 = *v53;
            v54 = *(v53 + 1);
            v41 = __OFSUB__(v54, v55);
            v56 = v54 - v55;
            if (v41)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v51, v56))
            {
              goto LABEL_113;
            }

            if (v51 + v56 >= v33)
            {
              if (v33 < v56)
              {
                v30 = v27 - 2;
              }

              goto LABEL_70;
            }

            goto LABEL_63;
          }

          v57 = &v10[16 * v27];
          v59 = *v57;
          v58 = *(v57 + 1);
          v41 = __OFSUB__(v58, v59);
          v51 = v58 - v59;
          v52 = v41;
LABEL_63:
          if (v52)
          {
            goto LABEL_108;
          }

          v60 = &v10[16 * v30];
          v62 = *(v60 + 4);
          v61 = *(v60 + 5);
          v41 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v41)
          {
            goto LABEL_111;
          }

          if (v63 < v51)
          {
            goto LABEL_3;
          }

LABEL_70:
          v68 = v30 - 1;
          if (v30 - 1 >= v27)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (!*v6)
          {
            goto LABEL_124;
          }

          v5 = *&v10[16 * v68 + 32];
          v69 = *&v10[16 * v30 + 40];
          sub_24836D344((*v6 + 16 * v5), (*v6 + 16 * *&v10[16 * v30 + 32]), (*v6 + 16 * v69), v29);
          if (v4)
          {
          }

          if (v69 < v5)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_24829B58C(v10);
          }

          if (v68 >= *(v10 + 2))
          {
            goto LABEL_103;
          }

          v70 = &v10[16 * v68];
          *(v70 + 4) = v5;
          *(v70 + 5) = v69;
          result = sub_24829B500(v30);
          v27 = *(v10 + 2);
          if (v27 <= 1)
          {
            goto LABEL_3;
          }
        }

        v35 = &v10[16 * v27 + 32];
        v36 = *(v35 - 64);
        v37 = *(v35 - 56);
        v41 = __OFSUB__(v37, v36);
        v38 = v37 - v36;
        if (v41)
        {
          goto LABEL_104;
        }

        v40 = *(v35 - 48);
        v39 = *(v35 - 40);
        v41 = __OFSUB__(v39, v40);
        v33 = v39 - v40;
        v34 = v41;
        if (v41)
        {
          goto LABEL_105;
        }

        v42 = &v10[16 * v27];
        v44 = *v42;
        v43 = *(v42 + 1);
        v41 = __OFSUB__(v43, v44);
        v45 = v43 - v44;
        if (v41)
        {
          goto LABEL_107;
        }

        v41 = __OFADD__(v33, v45);
        v46 = v33 + v45;
        if (v41)
        {
          goto LABEL_110;
        }

        if (v46 >= v38)
        {
          v64 = &v10[16 * v30 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v41 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v41)
          {
            goto LABEL_114;
          }

          if (v33 < v67)
          {
            v30 = v27 - 2;
          }

          goto LABEL_70;
        }

        goto LABEL_49;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v89;
      if (v89 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_90:
  v5 = *v7;
  if (!*v7)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_24829B58C(v10);
    v10 = result;
  }

  v80 = *(v10 + 2);
  if (v80 >= 2)
  {
    while (*v6)
    {
      v81 = *&v10[16 * v80];
      v82 = *&v10[16 * v80 + 24];
      sub_24836D344((*v6 + 16 * v81), (*v6 + 16 * *&v10[16 * v80 + 16]), (*v6 + 16 * v82), v5);
      if (v4)
      {
      }

      if (v82 < v81)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24829B58C(v10);
      }

      if (v80 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v83 = &v10[16 * v80];
      *v83 = v81;
      *(v83 + 1) = v82;
      result = sub_24829B500(v80 - 1);
      v80 = *(v10 + 2);
      if (v80 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_24836D344(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[2 * v13];
    if (v11 >= 16 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 2;
      v5 -= 2;
      v18 = v14;
      do
      {
        v19 = v5 + 2;
        v20 = *(v18 - 2);
        v18 -= 2;
        if ([v20 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 2, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        v5 -= 2;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[2 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while ([*v6 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 2;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 2;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_24836D58C()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselViewSetup) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_updateCarouselWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_decorationsStateChanged);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressGesture) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_longPressKnobGesture) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselForeground) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_frontmostItem);
  *v3 = 0;
  v3[1] = 0;
  sub_248384580();
  __break(1u);
}

void sub_24836D66C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_24836D6AC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_24836D6FC()
{
  result = qword_27EE94498;
  if (!qword_27EE94498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94498);
  }

  return result;
}

uint64_t sub_24836D750()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24823DDD0;

  return sub_24836B7C4(v5, v2, v3, v4);
}

unint64_t sub_24836D80C()
{
  result = qword_27EE944B8;
  if (!qword_27EE944B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE944B8);
  }

  return result;
}

uint64_t sub_24836D89C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24836D8E4(uint64_t result, int a2, int a3)
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

uint64_t sub_24836D940(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24836D988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24836D9E8()
{
  result = qword_27EE944C8;
  if (!qword_27EE944C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE944A8);
    sub_24836DAA4();
    sub_24836DCE0(&qword_27EE901B0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE944C8);
  }

  return result;
}

unint64_t sub_24836DAA4()
{
  result = qword_27EE944D0;
  if (!qword_27EE944D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE944A0);
    sub_24822D648(&qword_27EE944D8, &qword_27EE944E0);
    sub_24822D648(&qword_27EE944E8, &unk_27EE944F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE944D0);
  }

  return result;
}

uint64_t sub_24836DB94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_bridgeObjectRetain_n();
  sub_24836CB34(&v4);

  v1(v4);
}

unint64_t sub_24836DC38()
{
  result = qword_27EE94530;
  if (!qword_27EE94530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94530);
  }

  return result;
}

unint64_t sub_24836DC8C()
{
  result = qword_27EE94560;
  if (!qword_27EE94560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94560);
  }

  return result;
}

uint64_t sub_24836DCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24836DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24836DD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

void sub_24836DDAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
    v3 = swift_beginAccess();
    *(v1 + v2) = 1;
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x168))(v3);
    if (v4)
    {
      v5 = v4;
      v4(*(v1 + v2));

      sub_248167864(v5);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsFocusUpdate];
  }
}

void sub_24836DEDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
    v3 = swift_beginAccess();
    *(v1 + v2) = 0;
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x168))(v3);
    if (v4)
    {
      v5 = v4;
      v4(*(v1 + v2));

      sub_248167864(v5);
    }

    else
    {
    }
  }
}

void sub_24836DFC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *((*MEMORY[0x277D85000] & *Strong) + 0x1F0);
    v5 = Strong;
    v6 = v1;
    v7 = v2;
    v4(v1, v2);
  }
}

unint64_t sub_24836E074()
{
  result = qword_27EE945A8;
  if (!qword_27EE945A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE945A8);
  }

  return result;
}

unint64_t sub_24836E13C()
{
  result = qword_27EE945C0;
  if (!qword_27EE945C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE945C0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_24836E1F4(uint64_t a1, double a2)
{
  v25 = a1;
  v24 = sub_248381CD0();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_248381CC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_248381D00();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE945E0) + 48);
  *v9 = 0x4032000000000000;
  *v16 = xmmword_2483A2750;
  *(v16 + 2) = 0x3FE0000000000000;
  v17 = *MEMORY[0x277CF8C98];
  v18 = sub_248381CE0();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(v7 + 104))(v9, *MEMORY[0x277CF8C88], v6);
  *v5 = (a2 + -24.0) / a2;
  (*(v3 + 104))(v5, *MEMORY[0x277CF8C90], v24);
  sub_248381CF0();
  v19 = v23;
  (*(v10 + 16))(v12, v15, v23);
  v26 = 0;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE945E8);
  swift_allocObject();

  v20 = sub_2483819F0();
  (*(v10 + 8))(v15, v19);
  return v20;
}

id DBWallpaperRootViewController.__allocating_init(environment:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_248370474();
  swift_unknownObjectRelease();
  return v2;
}

id DBWallpaperRootViewController.init(environment:)()
{
  v0 = sub_248370474();
  swift_unknownObjectRelease();
  return v0;
}

void sub_24836E664()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController) = 0;
  sub_248384580();
  __break(1u);
}

id DBWallpaperRootViewController.currentWallpaper.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController);
  if (!v1 || (result = [v1 wallpaper]) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController);
    if (!v3 || (result = [v3 wallpaper]) == 0)
    {
      v4 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
      swift_unknownObjectRelease();
      v5 = [v4 wallpaperPreferences];

      v6 = [v5 currentWallpaper];
      return v6;
    }
  }

  return result;
}

id DBWallpaperRootViewController.interfaceStyleOverride.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController);
  if (result)
  {
    return [result interfaceStyleOverride];
  }

  return result;
}

id (*DBWallpaperRootViewController.interfaceStyleOverride.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v4 = [v4 interfaceStyleOverride];
  }

  *a1 = v4;
  return sub_24836E974;
}

void DBWallpaperRootViewController.setWallpaper(_:duration:delay:updates:)(uint64_t a1, void (*a2)(id), uint64_t a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController;
  v12 = *&v5[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController];
  if (v12)
  {
    v13 = [v12 view];
    if (!v13)
    {
      __break(1u);
      goto LABEL_27;
    }

    v14 = v13;
    v15 = [v13 layer];

    [v15 removeAllAnimations];
  }

  if (a4 <= 0.0 && a5 <= 0.0)
  {
    a2([*&v5[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController] setWallpaper_]);
    return;
  }

  v16 = sub_24836F17C();
  if (v16)
  {
    v17 = v16;
    v18 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene;
    [*&v5[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene] invalidate];
    v19 = *&v5[v18];
    *&v5[v18] = v17;
    v70 = v17;

    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectRetain();
    v21 = [v5 traitCollection];
    v22 = [v21 homeScreenStyleWantsDimmedWallpaper];

    v23 = [objc_allocWithZone(DBWallpaperViewController) initWithScene:v70 environment:Strong wallpaper:a1 isDimmed:v22];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v23)
    {
      v24 = v23;
      [v5 addChildViewController_];
      v25 = [v5 view];
      if (v25)
      {
        v26 = v25;
        v27 = [v24 view];
        if (v27)
        {
          v28 = v27;
          [v26 addSubview_];

          v29 = [v24 view];
          if (v29)
          {
            v69 = v23;
            [v29 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_24839CCB0;
            v31 = [v24 view];

            if (v31)
            {
              v68 = a2;
              v32 = [v31 leadingAnchor];

              v33 = [v5 view];
              if (v33)
              {
                v34 = v33;
                v35 = [v33 leadingAnchor];

                v36 = [v32 constraintEqualToAnchor_];
                *(v30 + 32) = v36;
                v37 = [v24 view];

                if (v37)
                {
                  v38 = [v37 trailingAnchor];

                  v39 = [v5 view];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = [v39 trailingAnchor];

                    v42 = [v38 constraintEqualToAnchor_];
                    *(v30 + 40) = v42;
                    v43 = [v24 view];

                    if (v43)
                    {
                      v44 = [v43 topAnchor];

                      v45 = [v5 view];
                      if (v45)
                      {
                        v46 = v45;
                        v47 = [v45 topAnchor];

                        v48 = [v44 constraintEqualToAnchor_];
                        *(v30 + 48) = v48;
                        v49 = [v24 view];

                        if (v49)
                        {
                          v50 = [v49 bottomAnchor];

                          v51 = [v5 view];
                          if (v51)
                          {
                            v52 = v51;
                            v53 = objc_opt_self();
                            v54 = [v52 bottomAnchor];

                            v55 = [v50 constraintEqualToAnchor_];
                            *(v30 + 56) = v55;
                            sub_24814FB28(0, &qword_27EE8FE90);
                            v56 = sub_248383B00();

                            [v53 activateConstraints_];

                            [v24 didMoveToParentViewController_];
                            v57 = [v24 view];

                            if (v57)
                            {
                              [v57 setAlpha_];

                              v58 = objc_opt_self();
                              v59 = swift_allocObject();
                              v59[2] = v24;
                              v59[3] = v68;
                              v59[4] = a3;
                              v75 = sub_248370530;
                              v76 = v59;
                              aBlock = MEMORY[0x277D85DD0];
                              v72 = 1107296256;
                              v73 = sub_24814C01C;
                              v74 = &block_descriptor_34;
                              v60 = _Block_copy(&aBlock);
                              v61 = v24;

                              v62 = swift_allocObject();
                              *(v62 + 16) = v5;
                              *(v62 + 24) = v61;
                              v75 = sub_24837053C;
                              v76 = v62;
                              aBlock = MEMORY[0x277D85DD0];
                              v72 = 1107296256;
                              v73 = sub_24824BBE0;
                              v74 = &block_descriptor_6_5;
                              v63 = _Block_copy(&aBlock);
                              v64 = v61;
                              v65 = v5;

                              [v58 animateWithDuration:0 delay:v60 options:v63 animations:a4 completion:a5];

                              _Block_release(v63);
                              _Block_release(v60);
                              v66 = *&v5[v11];
                              *&v5[v11] = v69;

                              return;
                            }

LABEL_38:
                            __break(1u);
                            return;
                          }

LABEL_37:
                          __break(1u);
                          goto LABEL_38;
                        }

LABEL_36:
                        __break(1u);
                        goto LABEL_37;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v67 = *&v5[v18];
    [v67 invalidate];
  }
}

id sub_24836F17C()
{
  v1 = v0;
  v17 = 0x72616F6268736164;
  v18 = 0xEA00000000002D64;
  v2 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v3 = [v2 description];
  v4 = sub_248383960();
  v6 = v5;

  MEMORY[0x24C1CAFD0](v4, v6);

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 wallpaperApplication];

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = *&v1[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperSceneWorkspace];
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v8;
  v10[4] = 0x72616F6268736164;
  v10[5] = 0xEA00000000002D64;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_248370ED4;
  *(v11 + 24) = v10;
  v21 = sub_248282F14;
  v22 = v11;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2482BB934;
  v20 = &block_descriptor_59_1;
  v12 = _Block_copy(&v17);
  v13 = v1;
  v14 = v8;

  v15 = [v9 createScene_];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_4:

    return 0;
  }

  return v15;
}

id sub_24836F3D4(void *a1, uint64_t (*a2)(void))
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result setAlpha_];

    return a2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24836F43C(char a1, uint64_t a2, id a3)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController;
    v6 = *(a2 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController);
    if (!v6)
    {
      goto LABEL_12;
    }

    [v6 willMoveToParentViewController_];
    v7 = *(a2 + v5);
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v8 removeFromSuperview];

      v10 = *(a2 + v5);
      if (v10)
      {
        [v10 removeFromParentViewController];
        v11 = *(a2 + v5);
        if (v11)
        {
          [v11 invalidate];
          v12 = *(a2 + v5);
LABEL_13:
          *(a2 + v5) = a3;
          v15 = a3;

          v16 = *(a2 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController);
          *(a2 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController) = 0;

          v17 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene;
          v18 = *(a2 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene);
          v19 = *(a2 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene);
          *(a2 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene) = v18;
          v20 = v18;

          v21 = *(a2 + v17);
          *(a2 + v17) = 0;

          return;
        }
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return;
  }

  [a3 willMoveToParentViewController_];
  v13 = [a3 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  [v13 removeFromSuperview];

  [a3 removeFromParentViewController];

  [a3 invalidate];
}

id DBWallpaperRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DBWallpaperRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBWallpaperRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBWallpaperRootViewController.viewDidLoad()()
{
  v52.receiver = v0;
  v52.super_class = type metadata accessor for DBWallpaperRootViewController();
  objc_msgSendSuper2(&v52, sel_viewDidLoad);
  v1 = sub_24836F17C();
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene];
    *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene] = v1;
    v3 = v1;

    v4 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v5 = [v4 wallpaperPreferences];

    v6 = [v5 currentWallpaper];
    if (!v6)
    {
      goto LABEL_16;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = [v0 traitCollection];
    v9 = [v8 homeScreenStyleWantsDimmedWallpaper];

    v10 = [objc_allocWithZone(DBWallpaperViewController) initWithScene:v3 environment:Strong wallpaper:v6 isDimmed:v9];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    [v0 addChildViewController_];
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 view];
      if (v14)
      {
        v15 = v14;
        [v13 addSubview_];

        v16 = [v11 view];
        if (v16)
        {
          [v16 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_24839CCB0;
          v18 = [v11 view];

          if (v18)
          {
            v19 = [v18 leadingAnchor];

            v20 = [v0 view];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 leadingAnchor];

              v23 = [v19 constraintEqualToAnchor_];
              *(v17 + 32) = v23;
              v24 = [v11 view];

              if (v24)
              {
                v25 = [v24 trailingAnchor];

                v26 = [v0 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = [v26 trailingAnchor];

                  v29 = [v25 constraintEqualToAnchor_];
                  *(v17 + 40) = v29;
                  v30 = [v11 view];

                  if (v30)
                  {
                    v31 = [v30 topAnchor];

                    v32 = [v0 view];
                    if (v32)
                    {
                      v33 = v32;
                      v34 = [v32 topAnchor];

                      v35 = [v31 constraintEqualToAnchor_];
                      *(v17 + 48) = v35;
                      v36 = [v11 view];

                      if (v36)
                      {
                        v37 = [v36 bottomAnchor];

                        v38 = [v0 view];
                        if (v38)
                        {
                          v39 = v38;
                          v40 = objc_opt_self();
                          v41 = [v39 bottomAnchor];

                          v42 = [v37 constraintEqualToAnchor_];
                          *(v17 + 56) = v42;
                          sub_24814FB28(0, &qword_27EE8FE90);
                          v43 = sub_248383B00();

                          [v40 activateConstraints_];

                          [v11 didMoveToParentViewController_];
                          v44 = *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController];
                          *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController] = v10;
                          v45 = v11;

                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
                          v46 = swift_allocObject();
                          *(v46 + 16) = xmmword_24839C7F0;
                          v47 = sub_248382C50();
                          v48 = MEMORY[0x277D74BF0];
                          *(v46 + 32) = v47;
                          *(v46 + 40) = v48;
                          MEMORY[0x24C1CB3C0](v46, sel__userInterfaceStyleChanged);
                          swift_unknownObjectRelease();

                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CE0);
                          v49 = swift_allocObject();
                          *(v49 + 16) = xmmword_24839C7F0;
                          *(v49 + 32) = sub_24814FB28(0, &unk_27EE91480);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CF0);
                          v50 = sub_248383B00();

                          v51 = [v0 registerForTraitChanges:v50 withAction:sel__homeScreenStyleChanged];

                          swift_unknownObjectRelease();
                          v3 = v50;
LABEL_16:

                          return;
                        }

LABEL_28:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

Swift::Void __swiftcall DBWallpaperRootViewController.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController);
  if (v2)
  {
    [v2 invalidate];
  }

  [*(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene) invalidate];
  [*(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene) invalidate];
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperSceneWorkspace);

  [v3 invalidate];
}

void sub_24836FFE8()
{
  v1 = [objc_opt_self() sharedInstance];
  isEscapingClosureAtFileLocation = [v1 wallpaperApplication];

  if (isEscapingClosureAtFileLocation)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    if ([Strong respondsToSelector_])
    {
      v4 = [Strong sceneInterfaceStyleForApplication:isEscapingClosureAtFileLocation proxyApplication:0];
      swift_unknownObjectRelease();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene);
      if (v6)
      {
        v7 = swift_allocObject();
        v8 = sub_248370568;
        *(v7 + 16) = sub_248370568;
        *(v7 + 24) = v5;
        v19 = sub_2482BB938;
        v20 = v7;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v17 = sub_248282F3C;
        v18 = &block_descriptor_26_1;
        v9 = _Block_copy(&v15);
        v10 = v6;

        [v10 updateSettingsWithBlock_];

        _Block_release(v9);
        LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

        if (v9)
        {
          __break(1u);
          return;
        }
      }

      else
      {
        v8 = 0;
      }

      v11 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene);
      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = sub_248370568;
        *(v12 + 24) = v5;
        v19 = sub_2482BB938;
        v20 = v12;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v17 = sub_248282F3C;
        v18 = &block_descriptor_33_0;
        v13 = _Block_copy(&v15);

        v14 = v11;

        [v14 updateSettingsWithBlock_];

        _Block_release(v13);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        sub_248167864(v8);

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      sub_248167864(v8);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_248370474()
{
  *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperScene] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController] = 0;
  swift_unknownObjectUnownedInit();
  v1 = [objc_allocWithZone(DBSceneWorkspace) initWithIdentifier_];
  *&v0[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperSceneWorkspace] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBWallpaperRootViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id sub_248370568()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setUserInterfaceStyle_];
  }

  return result;
}

void sub_2483705DC(uint64_t a1, char *a2, void (**a3)(void), double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController;
  v12 = *&a2[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperViewController];
  if (v12)
  {
    _Block_copy(a3);
    v13 = [v12 view];
    if (!v13)
    {
      _Block_release(a3);
      __break(1u);
      goto LABEL_30;
    }

    v14 = v13;
    v15 = [v13 layer];

    [v15 removeAllAnimations];
    if (a4 > 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    _Block_copy(a3);
    if (a4 > 0.0)
    {
      goto LABEL_8;
    }
  }

  if (a5 <= 0.0)
  {
    [*&a2[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__wallpaperViewController] setWallpaper_];
    a3[2](a3);
LABEL_23:

    return;
  }

LABEL_8:
  v16 = sub_24836F17C();
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene;
  [*&a2[OBJC_IVAR____TtC9DashBoard29DBWallpaperRootViewController__nextWallpaperScene] invalidate];
  v19 = *&a2[v18];
  *&a2[v18] = v17;
  v69 = v17;

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  v21 = [a2 traitCollection];
  v22 = [v21 homeScreenStyleWantsDimmedWallpaper];

  v23 = [objc_allocWithZone(DBWallpaperViewController) initWithScene:v69 environment:Strong wallpaper:a1 isDimmed:v22];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v23)
  {
    v24 = v23;
    [a2 addChildViewController_];
    v25 = [a2 view];
    if (v25)
    {
      v26 = v25;
      v27 = [v24 view];
      if (v27)
      {
        v28 = v27;
        [v26 addSubview_];

        v29 = [v24 view];
        if (v29)
        {
          v68 = v23;
          [v29 setTranslatesAutoresizingMaskIntoConstraints_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_24839CCB0;
          v31 = [v24 view];

          if (v31)
          {
            v32 = [v31 leadingAnchor];

            v33 = [a2 view];
            if (v33)
            {
              v34 = v33;
              v35 = [v33 leadingAnchor];

              v36 = [v32 constraintEqualToAnchor_];
              *(v30 + 32) = v36;
              v37 = [v24 view];

              if (v37)
              {
                v38 = [v37 trailingAnchor];

                v39 = [a2 view];
                if (v39)
                {
                  v40 = v39;
                  v41 = [v39 trailingAnchor];

                  v42 = [v38 constraintEqualToAnchor_];
                  *(v30 + 40) = v42;
                  v43 = [v24 view];

                  if (v43)
                  {
                    v44 = [v43 topAnchor];

                    v45 = [a2 view];
                    if (v45)
                    {
                      v46 = v45;
                      v47 = [v45 topAnchor];

                      v48 = [v44 constraintEqualToAnchor_];
                      *(v30 + 48) = v48;
                      v49 = [v24 view];

                      if (v49)
                      {
                        v50 = [v49 bottomAnchor];

                        v51 = [a2 view];
                        if (v51)
                        {
                          v52 = v51;
                          v53 = objc_opt_self();
                          v54 = [v52 bottomAnchor];

                          v55 = [v50 constraintEqualToAnchor_];
                          *(v30 + 56) = v55;
                          sub_24814FB28(0, &qword_27EE8FE90);
                          v56 = sub_248383B00();

                          [v53 activateConstraints_];

                          [v24 didMoveToParentViewController_];
                          v57 = [v24 view];

                          if (v57)
                          {
                            [v57 setAlpha_];

                            v58 = objc_opt_self();
                            v59 = swift_allocObject();
                            v59[2] = v24;
                            v59[3] = sub_248260D2C;
                            v59[4] = v10;
                            v74 = sub_2483710E0;
                            v75 = v59;
                            aBlock = MEMORY[0x277D85DD0];
                            v71 = 1107296256;
                            v72 = sub_24814C01C;
                            v73 = &block_descriptor_43;
                            v60 = _Block_copy(&aBlock);
                            v61 = v24;

                            v62 = swift_allocObject();
                            *(v62 + 16) = a2;
                            *(v62 + 24) = v61;
                            v74 = sub_2483710DC;
                            v75 = v62;
                            aBlock = MEMORY[0x277D85DD0];
                            v71 = 1107296256;
                            v72 = sub_24824BBE0;
                            v73 = &block_descriptor_50;
                            v63 = _Block_copy(&aBlock);
                            v64 = v61;
                            v65 = a2;

                            [v58 animateWithDuration:0 delay:v60 options:v63 animations:a4 completion:a5];

                            _Block_release(v63);
                            _Block_release(v60);
                            v66 = *&a2[v11];
                            *&a2[v11] = v68;

                            return;
                          }

                          goto LABEL_41;
                        }

LABEL_40:
                        _Block_release(a3);
                        __break(1u);
LABEL_41:
                        _Block_release(a3);
                        __break(1u);
                        return;
                      }

LABEL_39:
                      _Block_release(a3);
                      __break(1u);
                      goto LABEL_40;
                    }

LABEL_38:
                    _Block_release(a3);
                    __break(1u);
                    goto LABEL_39;
                  }

LABEL_37:
                  _Block_release(a3);
                  __break(1u);
                  goto LABEL_38;
                }

LABEL_36:
                _Block_release(a3);
                __break(1u);
                goto LABEL_37;
              }

LABEL_35:
              _Block_release(a3);
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            _Block_release(a3);
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          _Block_release(a3);
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        _Block_release(a3);
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      _Block_release(a3);
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    _Block_release(a3);
    __break(1u);
    goto LABEL_31;
  }

  v67 = *&a2[v18];
  [v67 invalidate];
}

void sub_248370ED4(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  sub_248383960();

  MEMORY[0x24C1CAFD0](58, 0xE100000000000000);

  MEMORY[0x24C1CAFD0](v4, v5);

  v7 = sub_248383930();

  [a1 setIdentifier_];

  v8 = [v3 info];
  v9 = [v8 processIdentity];

  if (v9)
  {
    v10 = [objc_opt_self() defaultIdentityForProcessIdentity_];

    [a1 setClientIdentity_];
    v11 = [objc_allocWithZone(MEMORY[0x277CF9398]) init];
    [a1 setSpecification_];
  }

  else
  {
    __break(1u);
  }
}

char *sub_2483710E4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v48 = a2;
  v6 = sub_248381210();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_imageView] = 0;
  v10 = sub_248383D90();
  v11 = *sub_24827C280();
  if (os_log_type_enabled(v11, v10))
  {
    v46 = v11;
    v12 = swift_slowAlloc();
    v13 = a1;
    v14 = swift_slowAlloc();
    v49 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_24814A378(0xD00000000000002FLL, 0x80000002483B4A20, &v49);
    *(v12 + 12) = 2080;
    v15 = [v13 uniqueIdentifier];
    sub_2483811F0();

    sub_2482ADA48(&qword_27EE94590);
    v16 = sub_248384650();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_24814A378(v16, v18, &v49);

    *(v12 + 14) = v19;
    v20 = v46;
    _os_log_impl(&dword_248146000, v46, v10, "%s overlay=%s", v12, 0x16u);
    swift_arrayDestroy();
    v21 = v14;
    a1 = v13;
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
  }

  *&v4[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_overlay] = a1;
  v22 = objc_allocWithZone(MEMORY[0x277CCAAD0]);
  swift_unknownObjectRetain();
  v23 = [v22 init];
  *&v4[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_widthConstraint] = v23;
  v24 = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v4[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_heightConstraint] = v24;
  v25 = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v4[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_leftConstraint] = v25;
  v26 = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v4[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_topConstraint] = v26;
  v27 = type metadata accessor for DBOverlayView();
  v50.receiver = v4;
  v50.super_class = v27;
  v28 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    [v29 registerObserver_];
  }

  v30 = v28;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [v30 widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  v33 = *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_widthConstraint];
  *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_widthConstraint] = v32;

  v34 = [v30 heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  v36 = *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_heightConstraint];
  *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_heightConstraint] = v35;

  v37 = [v30 leftAnchor];
  v38 = v47;
  v39 = [v37 constraintEqualToAnchor:v47 constant:0.0];

  v40 = *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_leftConstraint];
  *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_leftConstraint] = v39;

  v41 = [v30 topAnchor];
  v42 = v48;
  v43 = [v41 constraintEqualToAnchor:v48 constant:0.0];

  swift_unknownObjectRelease();
  v44 = *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_topConstraint];
  *&v30[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_topConstraint] = v43;

  return v30;
}

id sub_248371594()
{
  v1 = v0;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248383D90();
  v7 = *sub_24827C280();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24814A378(0x74696E696564, 0xE600000000000000, &v19);
    *(v9 + 12) = 2080;
    v11 = [*&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_overlay] uniqueIdentifier];
    sub_2483811F0();

    sub_2482ADA48(&qword_27EE94590);
    v12 = sub_248384650();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_24814A378(v12, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_248146000, v8, v6, "%s overlay=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  v16 = type metadata accessor for DBOverlayView();
  v20.receiver = v1;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

void sub_248371898()
{
  v1 = v0;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248383D90();
  v7 = *sub_24827C280();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24814A378(0x29287075746573, 0xE700000000000000, &v28);
    *(v9 + 12) = 2080;
    v11 = [*(v1 + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_overlay) uniqueIdentifier];
    sub_2483811F0();

    sub_2482ADA48(&qword_27EE94590);
    v12 = sub_248384650();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_24814A378(v12, v14, &v28);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_248146000, v8, v6, "%s overlay=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  sub_248371E64();
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24839CCB0;
  v18 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_widthConstraint);
  v19 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_heightConstraint);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_leftConstraint);
  v21 = *(v1 + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_topConstraint);
  *(v17 + 48) = v20;
  *(v17 + 56) = v21;
  sub_248264108();
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = sub_248383B00();

  [v16 activateConstraints_];
}

id sub_248371BA0()
{
  v1 = v0;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248383D90();
  v7 = *sub_24827C280();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24814A378(0x6164696C61766E69, 0xEC00000029286574, &v18);
    *(v9 + 12) = 2080;
    v11 = [*(v1 + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_overlay) uniqueIdentifier];
    sub_2483811F0();

    sub_2482ADA48(&qword_27EE94590);
    v12 = sub_248384650();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_24814A378(v12, v14, &v18);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_248146000, v8, v6, "%s overlay=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result unregisterObserver_];
  }

  return result;
}

void sub_248371E64()
{
  v1 = v0;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248383D90();
  v7 = *sub_24827C280();
  v8 = os_log_type_enabled(v7, v6);
  v9 = &OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID;
  v10 = &selRef_badgeNumberOrString;
  v11 = &selRef_viewStateObservers;
  v12 = &selRef_badgeNumberOrString;
  if (v8)
  {
    v82 = v7;
    v13 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v85 = v81;
    *v13 = 136316674;
    *(v13 + 4) = sub_24814A378(0xD000000000000012, 0x80000002483B49B0, &v85);
    *(v13 + 12) = 2080;
    v14 = *&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_overlay];
    v15 = [v14 uniqueIdentifier];
    sub_2483811F0();

    sub_2482ADA48(&qword_27EE94590);
    v16 = sub_248384650();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_24814A378(v16, v18, &v85);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    v20 = [v14 &selRef_iconLabelsRequireBackground];
    v21 = sub_248383960();
    v23 = v22;

    v24 = sub_24814A378(v21, v23, &v85);
    v10 = &selRef_badgeNumberOrString;

    *(v13 + 24) = v24;
    *(v13 + 32) = 2048;
    [v14 originX];
    *(v13 + 34) = v25;
    *(v13 + 42) = 2048;
    [v14 originY];
    *(v13 + 44) = v26;
    *(v13 + 52) = 2048;
    [v14 width];
    *(v13 + 54) = v27;
    *(v13 + 62) = 2048;
    v28 = v14;
    v12 = &selRef_badgeNumberOrString;
    [v28 height];
    *(v13 + 64) = v29;
    v30 = v82;
    _os_log_impl(&dword_248146000, v82, v6, "%s uuid=%s identifier=%s x=%f y=%f w=%f h=%f", v13, 0x48u);
    v31 = v81;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v31, -1, -1);
    v32 = v13;
    v11 = &selRef_viewStateObservers;
    MEMORY[0x24C1CD5F0](v32, -1, -1);

    v9 = &OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID;
  }

  v33 = *&v1[v9[198]];
  v34 = *&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_widthConstraint];
  [v33 v11[77]];
  v36 = v35;
  v37 = [v1 traitCollection];
  [v37 displayScale];
  v39 = v38;

  [v34 setConstant_];
  v40 = *&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_heightConstraint];
  [v33 v12[81]];
  v42 = v41;
  v43 = [v1 traitCollection];
  [v43 displayScale];
  v45 = v44;

  [v40 setConstant_];
  v46 = *&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_leftConstraint];
  [v33 v10[82]];
  v48 = v47;
  v49 = [v1 traitCollection];
  [v49 displayScale];
  v51 = v50;

  v52 = [v1 window];
  v53 = 0.0;
  v54 = 0.0;
  if (v52)
  {
    v55 = v52;
    [v52 frame];
    v54 = v56;
  }

  [v46 setConstant_];

  v57 = *&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_topConstraint];
  [v33 originY];
  v59 = v58;
  v60 = [v1 traitCollection];
  [v60 displayScale];
  v62 = v61;

  v63 = [v1 window];
  if (v63)
  {
    v64 = v63;
    [v63 frame];
    v53 = v65;
  }

  [v57 setConstant_];

  v66 = OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_imageView;
  v67 = *&v1[OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_imageView];
  if (v67)
  {
    [v67 removeFromSuperview];
    v68 = *&v1[v66];
  }

  else
  {
    v68 = 0;
  }

  *&v1[v66] = 0;

  v69 = objc_opt_self();
  v70 = [v69 clearColor];
  [v1 setBackgroundColor_];

  v71 = [v33 identifier];
  v72 = sub_248383960();
  v74 = v73;

  v85 = v72;
  v86 = v74;
  v83 = 0x5F5F6465725F5FLL;
  v84 = 0xE700000000000000;
  sub_24831576C();
  LOBYTE(v71) = sub_248384220();

  if (v71)
  {
    v75 = &selRef_systemRedColor;
  }

  else
  {
    v76 = [v33 identifier];
    v77 = sub_248383960();
    v79 = v78;

    v85 = v77;
    v86 = v79;
    v83 = 0x5F5F65756C625F5FLL;
    v84 = 0xE800000000000000;
    LOBYTE(v76) = sub_248384220();

    if ((v76 & 1) == 0)
    {
      return;
    }

    v75 = &selRef_systemBlueColor;
  }

  v80 = [v69 *v75];
  [v1 setBackgroundColor_];
}

id DBAutomakerOverlayLockoutView.__allocating_init(mode:environmentConfiguration:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithMode:a1 environmentConfiguration:a2];

  return v4;
}

void *DBAutomakerOverlayLockoutView.init(mode:environmentConfiguration:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9DashBoard29DBAutomakerOverlayLockoutView_overlayViews] = MEMORY[0x277D84F98];
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DBAutomakerOverlayLockoutView();
  v5 = objc_msgSendSuper2(&v12, sel_initWithMode_environmentConfiguration_, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839C7F0;
  v7 = sub_248382C50();
  v8 = MEMORY[0x277D74BF0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = v5;
  sub_248383FB0();
  swift_unknownObjectRelease();

  (*((*MEMORY[0x277D85000] & *v9) + 0x70))(v10);

  return v9;
}

void sub_2483728C4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 > 2)
  {
    v3 = &selRef_systemBlackColor;
  }

  else
  {
    v3 = off_278F04970[v2];
  }

  v4 = [objc_opt_self() *v3];
  v5 = [v4 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
}

id DBAutomakerOverlayLockoutView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAutomakerOverlayLockoutView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2483729FC(uint64_t a1)
{
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_2482ADA48(&qword_27EE91CD8);
  result = MEMORY[0x24C1CB280](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2482A9B34(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248372CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_248381210();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2482ADA48(&qword_27EE91CD8);
  v31 = a1;
  v10 = sub_2483838D0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_2482ADA48(&unk_27EE91CE0);
      v19 = sub_248383910();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2482AA3B0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_248373D48(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_248372F50(uint64_t a1)
{
  sub_248381210();
  sub_2482ADA48(&qword_27EE91CD8);
  v2 = sub_2483838D0();

  return sub_2483736A4(a1, v2);
}

uint64_t sub_248372FD4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_248381210();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94670);
  v39 = a2;
  result = sub_2483845D0();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2482ADA48(&qword_27EE91CD8);
      result = sub_2483838D0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_24837339C(int64_t a1, uint64_t a2)
{
  v38 = sub_248381210();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_2483842F0();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_2482ADA48(&qword_27EE91CD8);
      v22 = sub_2483838D0();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_2483736A4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_248381210();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_2482ADA48(&unk_27EE91CE0);
      v16 = sub_248383910();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_248373850()
{
  v1 = v0;
  v31 = sub_248381210();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94670);
  v3 = *v0;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_248373AC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248381210();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_248372F50(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_248373850();
      goto LABEL_7;
    }

    sub_248372FD4(v17, a3 & 1);
    v23 = sub_248372F50(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_248373C90(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_2483846E0();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_248373C90(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_248381210();
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

void sub_248373D48(int64_t a1)
{
  v3 = sub_248381210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_2483842F0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_2482ADA48(&qword_27EE91CD8);
        v23 = sub_2483838D0();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_248374094(unint64_t a1)
{
  v2 = v1;
  v65 = sub_248381210();
  v58 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94660);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v56 - v12;
  v13 = OBJC_IVAR____TtC9DashBoard29DBAutomakerOverlayLockoutView_overlayViews;
  swift_beginAccess();

  v15 = sub_2483729FC(v14);
  v67 = v15;
  v63 = a1;
  if (!(a1 >> 62))
  {
    result = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    result = v15;
LABEL_17:
    v37 = 0;
    v38 = result + 56;
    v39 = 1 << *(result + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(result + 56);
    v42 = (v39 + 63) >> 6;
    v60 = v58 + 16;
    v61 = result;
    for (i = (v58 + 8); v41; result = v61)
    {
LABEL_26:
      while (1)
      {
        v44 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v45 = *(result + 48);
        v46 = v57;
        v47 = v58;
        v63 = *(v58 + 72);
        v48 = v65;
        (*(v58 + 16))(v57, v45 + v63 * (v44 | (v37 << 6)), v65);
        swift_beginAccess();
        v62 = sub_248372F50(v46);
        v50 = v49;
        v51 = *(v47 + 8);
        v51(v46, v48);
        if (v50)
        {
          break;
        }

        swift_endAccess();
        result = v61;
        if (!v41)
        {
          goto LABEL_22;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *&v2[v13];
      v66 = v53;
      *&v2[v13] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_248373850();
        v53 = v66;
      }

      v54 = v62;
      v51(*(v53 + 48) + v62 * v63, v65);
      v55 = *(*(v53 + 56) + 8 * v54);
      sub_24837339C(v54, v53);
      *&v2[v13] = v53;
      swift_endAccess();
      [v55 removeFromSuperview];
      sub_248371BA0();
    }

LABEL_22:
    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v42)
      {
      }

      v41 = *(v38 + 8 * v43);
      ++v37;
      if (v41)
      {
        v37 = v43;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  result = sub_248384360();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (result >= 1)
  {
    v17 = 0;
    v59 = v63 & 0xC000000000000001;
    v60 = result;
    i = (v58 + 8);
    v61 = v7;
    while (1)
    {
      if (v59)
      {
        v26 = MEMORY[0x24C1CBA50](v17, v63);
      }

      else
      {
        v26 = *(v63 + 8 * v17 + 32);
        swift_unknownObjectRetain();
      }

      v27 = [v26 uniqueIdentifier];
      sub_2483811F0();

      v28 = v62;
      sub_248372CD0(v10, v62);
      v29 = *i;
      (*i)(v10, v65);
      sub_2483746B8(v28);
      v30 = [v26 uniqueIdentifier];
      sub_2483811F0();

      v31 = *&v2[v13];
      if (*(v31 + 16))
      {

        v32 = sub_248372F50(v7);
        if (v33)
        {
          v34 = *(*(v31 + 56) + 8 * v32);
          v35 = v7;
          v36 = v34;
          v29(v35, v65);

          swift_unknownObjectRelease();

          goto LABEL_7;
        }
      }

      v18 = v65;
      v29(v7, v65);
      swift_unknownObjectRetain();
      v19 = [v2 topAnchor];
      v20 = [v2 leftAnchor];
      v21 = objc_allocWithZone(type metadata accessor for DBOverlayView());
      v22 = sub_2483710E4(v26, v19, v20);
      [v2 addSubview_];
      v23 = [v26 uniqueIdentifier];
      sub_2483811F0();

      swift_beginAccess();
      v24 = v22;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v66 = *&v2[v13];
      *&v2[v13] = 0x8000000000000000;
      sub_248373AC4(v24, v10, v25);
      v29(v10, v18);
      *&v2[v13] = v66;
      swift_endAccess();
      sub_248371898();

      swift_unknownObjectRelease();
LABEL_7:
      ++v17;
      v7 = v61;
      if (v60 == v17)
      {
        result = v67;
        goto LABEL_17;
      }
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2483746B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DBNotificationWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBNotificationWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBThemeAssetDocument.init(documentURL:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2483810F0();
  v4 = [v2 initWithDocumentURL_];

  v5 = sub_248381170();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id DBThemeAssetDocument.init(documentURL:)(char *a1)
{
  v68[5] = *MEMORY[0x277D85DE8];
  v2 = sub_248382A90();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_248381840();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - v6;
  v54 = sub_248381A40();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248381A70();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2483810D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_248381170();
  v59 = *(v15 - 8);
  v16 = v59;
  MEMORY[0x28223BE20](v15);
  v58 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  v68[0] = 0x696C702E6F666E49;
  v68[1] = 0xEA00000000007473;
  (*(v12 + 104))(v14, *MEMORY[0x277CC91D8], v11, v22);
  sub_24831576C();
  v66 = a1;
  sub_248381150();
  (*(v12 + 8))(v14, v11);
  v25 = sub_248381180();
  v61 = v15;
  v26 = v25;
  v28 = v27;
  v62 = *(v16 + 8);
  v62(v24, v15);
  v29 = objc_opt_self();
  v30 = sub_2483811A0();
  v68[0] = 0;
  v31 = [v29 propertyListWithData:v30 options:0 format:0 error:v68];

  if (v31)
  {
    v32 = v68[0];
    sub_248384230();
    sub_24823BD70(v26, v28);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0);
    if (swift_dynamicCast())
    {
      v33 = v68[4];
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v34 = v68[0];
    v35 = sub_2483810C0();

    swift_willThrow();
    sub_24823BD70(v26, v28);

    v33 = 0;
  }

  v36 = v63;
  v37 = v61;
  *&v63[OBJC_IVAR___DBThemeAssetDocument_documentInfo] = v33;
  (*(v16 + 16))(v20, v66, v37);
  v38 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  sub_248375768(v20, 0);
  (*(v53 + 104))(v52, *MEMORY[0x277CF8B78], v54);
  sub_248381A50();
  v39 = v57;
  sub_248381A60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94698);
  v40 = v50;
  v41 = v49;
  v42 = v51;
  (*(v50 + 16))(v49, v39, v51);
  *&v36[OBJC_IVAR___DBThemeAssetDocument__document] = sub_248294AA4(v41);
  v43 = v66;
  v44 = sub_2483810F0();
  v45 = v39;
  v46 = v44;
  (*(v40 + 8))(v45, v42);
  (*(v55 + 8))(v10, v56);
  *&v36[OBJC_IVAR___DBThemeAssetDocument__documentURL] = v46;
  v67.receiver = v36;
  v67.super_class = DBThemeAssetDocument;
  v47 = objc_msgSendSuper2(&v67, sel_init);
  v62(v43, v61);
  return v47;
}

id DBThemeAssetDocument.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t DBThemeAssetDocument.document.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___DBThemeAssetDocument__document);
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v5 = sub_248381840();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, &v3[v4], v5);
}

id sub_248375768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2483810F0();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_248381170();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_2483810C0();

    swift_willThrow();
    v13 = sub_248381170();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

unint64_t type metadata accessor for DBThemeAssetDocument()
{
  result = qword_27EE98E20;
  if (!qword_27EE98E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE98E20);
  }

  return result;
}

unint64_t sub_248375908()
{
  result = qword_27EE904F0;
  if (!qword_27EE904F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE8FEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE904F0);
  }

  return result;
}

uint64_t sub_2483759BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBModelPolicyAssertion_assertion;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DBModelPolicyAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBModelPolicyAssertion.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard22DBModelPolicyAssertion_assertion] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBModelPolicyAssertion();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DBModelPolicyAssertion.acquireAssertion()()
{
  v1[2] = v0;
  v2 = sub_248382A90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248375C18, 0, 0);
}

uint64_t sub_248375C18()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_24827C6F0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_248382A80();
  v6 = sub_248383DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_248146000, v5, v6, "Acquiring ModelManagerServices assertion", v7, 2u);
    MEMORY[0x24C1CD5F0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  sub_2483828F0();
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_248375DA4;

  return MEMORY[0x282188E18](0xD000000000000011, 0x80000002483B4B40, 0xD000000000000028, 0x80000002483B4B60);
}

uint64_t sub_248375DA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_248375EF8, 0, 0);
  }
}

uint64_t sub_248375EF8()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x60))(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248376110(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2483761B8;

  return DBModelPolicyAssertion.acquireAssertion()();
}

uint64_t sub_2483761B8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_2483810B0();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t DBModelPolicyAssertion.invalidate()()
{
  v1[2] = v0;
  v2 = sub_248382A90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2483763FC, 0, 0);
}

uint64_t sub_2483763FC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_24827C6F0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_248382A80();
  v6 = sub_248383DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_248146000, v5, v6, "Invalidating ModelManagerServices assertion", v7, 2u);
    MEMORY[0x24C1CD5F0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = (*(v9 + 8))(v8, v11);
  v13 = (*((*MEMORY[0x277D85000] & *v10) + 0x58))(v12);
  v0[6] = v13;
  if (v13)
  {
    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_2483765D0;

    return MEMORY[0x282188E10]();
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2483765D0()
{

  return MEMORY[0x2822009F8](sub_2483766CC, 0, 0);
}

uint64_t sub_2483766CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2483768A8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_248376950;

  return DBModelPolicyAssertion.invalidate()();
}

uint64_t sub_248376950()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id DBModelPolicyAssertion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBModelPolicyAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248376ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24825ED28;

  return sub_2483768A8(v2, v3);
}

uint64_t sub_248376B78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24825ED28;

  return v6();
}

uint64_t sub_248376C60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24825ED28;

  return sub_248376B78(v2, v3, v4);
}

uint64_t sub_248376D20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24823DDD0;

  return v7();
}

uint64_t sub_248376E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24825ED28;

  return sub_248376D20(a1, v4, v5, v6);
}

uint64_t sub_248376ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24823ECAC(a3, v23 - v10);
  v12 = sub_248383BE0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24823ED1C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248383BD0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_248383B90();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2483839C0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24823ED1C(a3);

    return v21;
  }

LABEL_8:
  sub_24823ED1C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_248377190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24825ED28;

  return sub_2482E6114(a1, v4);
}

uint64_t sub_248377248(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24823DDD0;

  return sub_2482E6114(a1, v4);
}

uint64_t objectdestroyTm_5()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248377340()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24823DDD0;

  return sub_248376110(v2, v3);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_24837742C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EE98E30 = result;
  return result;
}

uint64_t sub_248377564()
{
  v0 = sub_248382910();
  __swift_allocate_value_buffer(v0, qword_27EE99090);
  __swift_project_value_buffer(v0, qword_27EE99090);
  if (qword_27EE98E28 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE98E30;
  return sub_248382900();
}

uint64_t sub_248377680(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248382910();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27EE98E28 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE98E30;
  return sub_248382900();
}

uint64_t sub_248377748(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_248382910();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2483777C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_248382910();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void __DBSaveScreenshotToLibrary_block_invoke_255_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Failed saving screenshots with %@", &v2, 0xCu);
}

void ResetCarPlayUSB_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void ResetCarPlayUSB_cold_2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void ResetCarPlayUSB_cold_3(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void ResetCarPlayUSB_cold_4(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void ResetCarPlayUSB_cold_5(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x282111698](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}