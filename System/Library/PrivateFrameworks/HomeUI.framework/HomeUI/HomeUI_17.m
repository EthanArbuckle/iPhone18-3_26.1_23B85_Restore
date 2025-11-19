void sub_20D051AD8()
{
  sub_20D0598BC();
  sub_20D566E88();
  __break(1u);
}

double sub_20D051B00()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight);
}

double sub_20D051BA8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  result = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight);
  *a2 = result;
  return result;
}

void sub_20D051C58(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight) == a1)
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
    sub_20D5638F8();
  }
}

uint64_t sub_20D051D78()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView);
}

uint64_t sub_20D051E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  *a2 = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView);
  return result;
}

uint64_t sub_20D051ED0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
    sub_20D5638F8();
  }

  return result;
}

void *sub_20D051FE8()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__parentChangeObservation);
  v2 = v1;
  return v1;
}

id sub_20D052098@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__parentChangeObservation);
  *a2 = v4;

  return v4;
}

void sub_20D052180(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_20D563548();
  v7 = v6;
  v8 = a1;
  v9 = sub_20D5683F8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

void *sub_20D052304()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__navigationItemTitleObservation);
  v2 = v1;
  return v1;
}

id sub_20D0523B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__navigationItemTitleObservation);
  *a2 = v4;

  return v4;
}

uint64_t sub_20D052544(double a1)
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  v4 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight);
  if (v4 > a1)
  {
    a1 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight);
  }

  if (v4 == a1)
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D5638F8();
  }

  return result;
}

uint64_t sub_20D0526A0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
    sub_20D5638F8();
  }

  return result;
}

id sub_20D0527D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20D052834(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6)
{

  v10 = *a6;
  v11 = sub_20D563948();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

double sub_20D0528D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight);
}

uint64_t sub_20D0529A4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE00, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__shouldShowView);
}

uint64_t sub_20D052ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D058F58();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D052B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D058F58();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D052B84()
{
  sub_20D058F58();
  sub_20D566E88();
  __break(1u);
}

uint64_t sub_20D052BAC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_itemManager) connectedServicesItemModule];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 connectedServicesItemProvider];

    v4 = [v3 asGeneric];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_20D0594F0();
      return sub_20D5674C8();
    }
  }

  return sub_20D5674C8();
}

id sub_20D052CA0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(HUMatterConnectedServicesViewController) initWithConnectedServicesItemProvider_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FFE0);
  sub_20D566ED8();
  sub_20CECF7A0(v16, v13);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  v5 = sub_20D563628();

  v6 = v14;
  v7 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v7 + 16))(v5, v6, v7);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v4;
  v8 = v4;
  v9 = sub_20D563628();

  v10 = v14;
  v11 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v11 + 40))(v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v3;
}

uint64_t sub_20D052EA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultTitleUpdatingViewControllerCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  a1[3] = v2;
  a1[4] = &off_2823D63F8;
  *a1 = result;
  return result;
}

uint64_t sub_20D052EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059A0C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D052F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059A0C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D052FB8()
{
  sub_20D059A0C();
  sub_20D566E88();
  __break(1u);
}

id sub_20D052FE0(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_allocWithZone(HUStatusAndNotificationsViewController) initWithServiceItem:a2 inHome:a3 displayingDetails:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820000);
  sub_20D566ED8();
  sub_20CECF7A0(v22, v19);
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a2;
  v8 = a3;
  v9 = sub_20D563628();

  v10 = v20;
  v11 = v21;
  __swift_mutable_project_boxed_opaque_existential_0(v19, v20);
  (*(v11 + 16))(v9, v10, v11);
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  v13 = v7;
  v14 = v8;
  v15 = sub_20D563628();

  v16 = v20;
  v17 = v21;
  __swift_mutable_project_boxed_opaque_existential_0(v19, v20);
  (*(v17 + 40))(v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v5;
}

uint64_t sub_20D053204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059868();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D053268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059868();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D0532CC()
{
  sub_20D059868();
  sub_20D566E88();
  __break(1u);
}

void sub_20D0532F4()
{
  v43 = sub_20D564028();
  v1 = *(v43 - 8);
  v2 = MEMORY[0x28223BE20](v43);
  v45 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v44 = &v32 - v4;
  v5 = [*(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item) services];
  v6 = sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
  v7 = sub_20D567D08();

  v33 = v0;
  v35 = v7;
  v36 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v7 = v54;
    v8 = v55;
    v9 = v56;
    v10 = v57;
    v11 = v58;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v7 + 56);
    sub_20D5663C8();
    v9 = v13;
    v10 = 0;
  }

  v34 = v9;
  v16 = (v9 + 64) >> 6;
  v41 = *MEMORY[0x277D156D8];
  v39 = (v1 + 8);
  v40 = (v1 + 104);
  v42 = v7;
  while (1)
  {
    v20 = v11;
    v21 = v10;
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    v25 = sub_20D568798();
    if (!v25 || (v52 = v25, swift_dynamicCast(), (v24 = aBlock) == 0))
    {
LABEL_22:
      sub_20CEC80DC();

      return;
    }

LABEL_18:
    v37 = v20;
    v38 = v21;
    sub_20D5684D8();
    (*v40)(v45, v41, v43);
    sub_20D056AEC(&qword_27C81FF38, MEMORY[0x277D158E0]);
    sub_20D5679E8();
    sub_20D5679E8();
    if (aBlock == v52 && v47 == v53)
    {

      v26 = *v39;
      v27 = v43;
      (*v39)(v45, v43);
      v26(v44, v27);

LABEL_21:
      sub_20CEC80DC();

      v28 = [*(v33 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home) hf_fetchWalletKeyDeviceStateForCurrentDevice];
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = sub_20D0594A0;
      v51 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_20D059C04;
      v49 = &block_descriptor_34;
      v30 = _Block_copy(&aBlock);

      v31 = [v28 flatMap_];
      _Block_release(v30);

      return;
    }

    v17 = sub_20D568BF8();

    v18 = *v39;
    v19 = v43;
    (*v39)(v45, v43);
    v18(v44, v19);

    v7 = v42;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  v22 = v10;
  v23 = v11;
  if (v11)
  {
LABEL_14:
    v11 = (v23 - 1) & v23;
    v24 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_22;
    }

    v23 = *(v8 + 8 * v10);
    ++v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_20D053878(void *a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v6 = a1;
  v7 = sub_20D565968();
  v8 = sub_20D567E88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, aBlock);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000019, 0x800000020D5D6C00, aBlock);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s - %s: hf_fetchWalletKeyDeviceStateForCurrentDevice: %@", v9, 0x20u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if ([v6 canAddWalletKeyErrorCode] == 8 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v15 = [objc_opt_self() futureWithNoResult];
    v18 = [v15 asGeneric];
  }

  else
  {
    v14 = Strong;
    v15 = [*(Strong + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home) 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];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_20D0594C0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20D059C04;
    aBlock[3] = &block_descriptor_254;
    v17 = _Block_copy(aBlock);

    v18 = [v15 flatMap_];
    _Block_release(v17);
  }

  return v18;
}

id sub_20D053C58(void *a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v6 = a1;
  v7 = sub_20D565968();
  v8 = sub_20D567E88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, &aBlock);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000019, 0x800000020D5D6C00, &aBlock);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s - %s: 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 %@", v9, 0x20u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (![v6 BOOLValue])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [*(Strong + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home) hf_walletKeyDeviceStatesOfCompatiblePairedWatches];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = sub_20D0594C8;
      v29 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20D059C04;
      v27 = &block_descriptor_258;
      v17 = _Block_copy(&aBlock);

      v18 = [v15 flatMap_];
      goto LABEL_8;
    }

LABEL_9:
    v15 = [objc_opt_self() futureWithNoResult];
    v21 = [v15 asGeneric];
    goto LABEL_10;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [*(v13 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home) hf_hasWalletKey];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_20D0594D0;
  v29 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_20D059C04;
  v27 = &block_descriptor_262;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 flatMap_];
LABEL_8:
  v21 = v18;
  _Block_release(v17);

LABEL_10:
  return v21;
}

id sub_20D05412C(void *a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v6 = a1;
  v7 = sub_20D565968();
  v8 = sub_20D567E88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, v20);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000019, 0x800000020D5D6C00, v20);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s - %s: hf_hasWalletKey %@", v9, 0x20u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (([v6 BOOLValue] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (Strong[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet] == 1)
      {
        Strong[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet] = 1;
      }

      else
      {
        v14 = Strong;
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v19[-2] = v14;
        LOBYTE(v19[-1]) = 1;
        v19[2] = v14;
        sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
        sub_20D5638F8();
      }
    }
  }

  v16 = [objc_opt_self() futureWithNoResult];
  v17 = [v16 asGeneric];

  return v17;
}

uint64_t sub_20D0544D8(void *a1, uint64_t a2)
{
  v30[1] = a2;
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D058160(a1);
  sub_20D565958();

  v8 = sub_20D565968();
  v9 = sub_20D567E88();

  v10 = os_log_type_enabled(v8, v9);
  v11 = MEMORY[0x277D84F70];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v30[0] = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    *&v33 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, &v33);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_20CEE913C(0xD000000000000019, 0x800000020D5D6C00, &v33);
    *(v13 + 22) = 2080;
    v15 = MEMORY[0x20F31CF30](v7, v11 + 8);
    v17 = sub_20CEE913C(v15, v16, &v33);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_20CEB6000, v8, v9, "%s - %s: hf_walletKeyDeviceStatesOfCompatiblePairedWatches %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v13, -1, -1);

    result = (*(v4 + 8))(v6, v30[0]);
  }

  else
  {

    result = (*(v4 + 8))(v6, v3);
  }

  v19 = *(v7 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = v7 + 32;
    while (v20 < *(v7 + 16))
    {
      sub_20CED43FC(v21, v32);
      sub_20CED43FC(v32, &v33);
      sub_20CECF940(0, &unk_27C81FF40);
      if (swift_dynamicCast())
      {
        v22 = v31;
        v23 = [v31 walletKey];

        if (!v23)
        {

          sub_20CEC80B0(v32, &v33);
          goto LABEL_13;
        }
      }

      result = __swift_destroy_boxed_opaque_existential_1(v32);
      ++v20;
      v21 += 32;
      if (v19 == v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v33 = 0u;
    v34 = 0u;
LABEL_13:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (((*(&v34 + 1) != 0) ^ Strong[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet]))
      {
        v25 = *(&v34 + 1) != 0;
        v26 = Strong;
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v30[-2] = v26;
        LOBYTE(v30[-1]) = v25;
        v31 = v26;
        sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
        sub_20D5638F8();
      }

      else
      {
        Strong[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet] = *(&v34 + 1) != 0;
      }
    }

    v28 = [objc_opt_self() futureWithNoResult];
    v29 = [v28 asGeneric];

    sub_20CEF928C(&v33, &qword_27C81BF00);
    return v29;
  }

  return result;
}

id sub_20D054990(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D14930]) initWithHome_];
  v8 = [objc_allocWithZone(HUUsersAndGuestsPinCodeViewController) initWithSourceItem:a2 pinCodeManager:v7 home:a3 forAccessory:a4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820008);
  sub_20D566ED8();
  sub_20CECF7A0(v27, v24);
  swift_getKeyPath();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = sub_20D563628();

  v14 = v25;
  v15 = v26;
  __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
  (*(v15 + 16))(v13, v14, v15);
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = a4;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = sub_20D563628();

  v21 = v25;
  v22 = v26;
  __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
  (*(v22 + 40))(v20, v21, v22);

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v8;
}

uint64_t sub_20D054C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059814();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D054C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059814();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D054CC8()
{
  sub_20D059814();
  sub_20D566E88();
  __break(1u);
}

uint64_t sub_20D054CF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item);
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v1;
    if ([v2 isCompoundItem])
    {
      v2 = [v2 numberOfCompoundItems];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_accessory);
  if (!v4)
  {
    return v2 > 0;
  }

  v5 = v4;
  v6 = [v5 uniqueIdentifiersForBridgedAccessories];
  if (!v6)
  {

    return v2 > 0;
  }

  v7 = v6;
  sub_20D563818();
  v8 = sub_20D567A78();

  v9 = *(v8 + 16);

  v11 = __OFADD__(v2, v9);
  v2 += v9;
  if (!v11)
  {
    return v2 > 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D054E0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item);
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v1;
    if ([v2 isCompoundItem])
    {
      v2 = [v2 numberOfCompoundItems];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_accessory);
  if (!v4)
  {
    return v2;
  }

  v5 = v4;
  v6 = [v5 uniqueIdentifiersForBridgedAccessories];
  if (!v6)
  {

    return v2;
  }

  v7 = v6;
  sub_20D563818();
  v8 = sub_20D567A78();

  v9 = *(v8 + 16);

  v11 = __OFADD__(v2, v9);
  v2 += v9;
  if (!v11)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D054F24()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item];
  v22[3] = &unk_2824C0828;
  v22[4] = &unk_282587E50;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for AccessoryDetailsHelper.ContainedServicesViewRepresentable.Coordinator());
    v9 = v5;
    v10 = [v8 init];
    v22[0] = v7;
    v22[1] = v10;
    sub_20D05944C();
    v11 = sub_20D5674C8();

    return v11;
  }

  else
  {
    sub_20D565958();
    v13 = v0;
    v14 = sub_20D565968();
    v15 = sub_20D567EA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, v22);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D6B90, v22);
      *(v16 + 22) = 2080;
      swift_getObjectType();
      v22[2] = v5;
      swift_getWitnessTable();
      v18 = sub_20D568BB8();
      v20 = sub_20CEE913C(v18, v19, v22);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_20CEB6000, v14, v15, "%s - %s: Expecting to render contained services view for an item that conforms to HUServiceContainerItem, but %s does not", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v17, -1, -1);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return sub_20D5674C8();
  }
}

id sub_20D055214(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for ContainedAccessoryElementsGridViewController();
  swift_getObjectType();
  v6 = a2;
  v7 = sub_20D060AB8(v6, 0, 1, 0, v5);

  v26 = type metadata accessor for AccessoryDetailsHelper.ContainedServicesViewRepresentable.Coordinator();
  v27 = &off_2823D6430;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820010);
  sub_20D566ED8();
  sub_20CECF7A0(v25, v22);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = a3;
  v9 = v6;
  v10 = a3;
  v11 = sub_20D563628();

  v12 = v23;
  v13 = v24;
  __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
  (*(v13 + 16))(v11, v12, v13);
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  v15 = v9;
  v16 = v10;
  v17 = sub_20D563628();

  v18 = v23;
  v19 = v24;
  __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
  (*(v19 + 40))(v17, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_20D566ED8();
  v20 = v22[0];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v7;
}

void sub_20D0554F0(void *a1)
{
  v1 = [a1 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_20D055690(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator_parentChangeObservation);
  *(*v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator_parentChangeObservation) = a1;
}

void sub_20D0556A8(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator_navigationItemTitleObservation);
  *(*v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator_navigationItemTitleObservation) = a1;
}

uint64_t sub_20D0556C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D0599B8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D05572C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D0599B8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D055790()
{
  sub_20D0599B8();
  sub_20D566E88();
  __break(1u);
}

uint64_t sub_20D055998()
{
  result = sub_20D563948();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20D055AE8()
{
  result = sub_20D563948();
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

uint64_t sub_20D055BD0()
{
  v1 = *v0;
  v2 = *&v1[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home];
  sub_20D056EFC();
  v3 = v2;
  v4 = v1;
  return sub_20D5674C8();
}

uint64_t sub_20D055C34()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D5638F8();
}

uint64_t sub_20D055D6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*v3 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item);
  a3();
  v5 = v4;
  return sub_20D5674C8();
}

uint64_t sub_20D055E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedAutomationsViewCoordinator;
  swift_beginAccess();
  return sub_20CECF7A0(v3 + v4, a1);
}

uint64_t sub_20D055EF4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item) homeKitObject];
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = [v2 hf_userNotificationSettings];
    swift_unknownObjectRelease();
    if (v3)
    {

      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_20D055F98()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item) homeKitObject];
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = [v2 hf_supportsHomeStatus];
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_20D056024()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home);
  v5 = *(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item);
  sub_20D056D48();
  v2 = v5;
  v3 = v1;
  return sub_20D5674C8();
}

void sub_20D056094()
{
  v1 = [objc_opt_self() handleAddOrShowHomeKeyButtonTapForHome_];
}

uint64_t sub_20D0560F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home);
  v2 = *(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_accessory);
  v7 = *(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item);
  sub_20D056CF4();
  v3 = v7;
  v4 = v1;
  v5 = v2;
  return sub_20D5674C8();
}

uint64_t sub_20D0561A4()
{
  if (*(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_linkedApplicationViewController))
  {
    sub_20D056C30(*(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_linkedApplicationViewRepresentable), *(*v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_linkedApplicationViewRepresentable + 8));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FE20);
    sub_20D056C70();
    return sub_20D5674C8();
  }

  else
  {

    return sub_20D5674C8();
  }
}

uint64_t sub_20D056250@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__linkedApplicationViewCoordinator;
  swift_beginAccess();
  return sub_20D056B34(v3 + v4, a1);
}

uint64_t sub_20D056318()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  return *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet);
}

uint64_t sub_20D0563E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  return *(v6 + *a4);
}

void sub_20D056544()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  if (v1)
  {
    v2 = v1;
    v3 = sub_20D5677F8();
    [v2 matterAccessoryGenerateRemovalConfirmationForAccessoryName_];
  }
}

uint64_t sub_20D056768(SEL *a1)
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 *a1];
  v5 = sub_20D567838();

  return v5;
}

id sub_20D056850()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  result = *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  if (result)
  {
    return [result shouldUseEcosystemRemovalConfirmation];
  }

  return result;
}

uint64_t sub_20D056908()
{

  return swift_deallocClassInstance();
}

unint64_t sub_20D056990()
{
  result = qword_27C81FDF0;
  if (!qword_27C81FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FDF0);
  }

  return result;
}

unint64_t sub_20D0569E8()
{
  result = qword_27C81FDF8;
  if (!qword_27C81FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FDF8);
  }

  return result;
}

void sub_20D056A3C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 16) = a1;
}

void sub_20D056A4C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 24) = a1;
}

uint64_t sub_20D056AEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D056B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D056BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FE18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20D056C30(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_20D056C70()
{
  result = qword_27C81FE28;
  if (!qword_27C81FE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81FE20);
    sub_20D0569E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FE28);
  }

  return result;
}

unint64_t sub_20D056CF4()
{
  result = qword_27C81FE30;
  if (!qword_27C81FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FE30);
  }

  return result;
}

unint64_t sub_20D056D48()
{
  result = qword_27C81FE38;
  if (!qword_27C81FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FE38);
  }

  return result;
}

unint64_t sub_20D056DB8()
{
  result = qword_27C81FEA0;
  if (!qword_27C81FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FEA0);
  }

  return result;
}

unint64_t sub_20D056E0C()
{
  result = qword_27C81FEA8;
  if (!qword_27C81FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FEA8);
  }

  return result;
}

uint64_t sub_20D056E78()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_20CEC81F4(v1);
  return sub_20CEC8164(v4);
}

unint64_t sub_20D056EFC()
{
  result = qword_27C81FEB0;
  if (!qword_27C81FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FEB0);
  }

  return result;
}

void sub_20D056F50(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_20D567838();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_20D056FB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_20D5677F8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle_];
}

uint64_t sub_20D057028(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20CEC3398(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20D0570A4(v6);
  return sub_20D5688D8();
}

void sub_20D0570A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20D568BA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CECF940(0, &unk_27C81D490);
        v6 = sub_20D567AE8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20D0572B0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20D0571B8(0, v2, 1, a1);
  }
}

void sub_20D0571B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 priority];
      v13 = [v11 priority];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20D0572B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_20D057C88(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_20D057918((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_20D057C88(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_20D057BFC(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 priority];
      v104 = [v14 priority];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 priority];
        v7 = [v18 priority];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_20CEE81E4(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_20CEE81E4((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_20D057918((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_20D057C88(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_20D057BFC(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 priority];
    v41 = [v39 priority];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_20D057918(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 priority];
          v35 = [v33 priority];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 priority];
          v20 = [v18 priority];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_20D057BFC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20D057C88(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_20D057CEC(void *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = sub_20D565988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator(0);
  v41[4] = sub_20D056AEC(&qword_27C81FF88, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  v41[0] = a3;
  *&a4[OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_triggerModuleController] = 0;
  *&a4[OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_home] = a2;
  sub_20CECF7A0(v41, &a4[OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_viewCoordinator]);
  v12 = a2;
  [a1 copy];
  sub_20D568628();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FFA0);
  swift_dynamicCast();
  v13 = v39;
  v14 = objc_allocWithZone(type metadata accessor for AccessoryDetailsSuggestedAutomationsItemManager());
  v15 = v12;
  v16 = sub_20D0E2B58(v13, v15);
  v17 = type metadata accessor for AccessoryDetailsSuggestedAutomationsViewController();
  v38.receiver = a4;
  v38.super_class = v17;
  v18 = v16;
  v19 = objc_msgSendSuper2(&v38, sel_initWithItemManager_tableViewStyle_, v18, 1);
  [v18 setDelegate_];

  [v18 resetItemProvidersAndModules];
  sub_20D565958();
  v20 = v15;
  v21 = v18;
  v22 = a1;
  v37 = v11;
  v23 = sub_20D565968();
  v24 = sub_20D567EC8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = v8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v35 = v9;
    v28 = v27;
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v26 = 138413314;
    *(v26 + 4) = v19;
    *v28 = v19;
    *(v26 + 12) = 2080;
    v34 = v19;
    *(v26 + 14) = sub_20CEE913C(0xD000000000000020, 0x800000020D5D6CE0, v40);
    *(v26 + 22) = 2112;
    *(v26 + 24) = v22;
    *(v26 + 32) = 2112;
    *(v26 + 34) = v20;
    v28[1] = v22;
    v28[2] = v20;
    *(v26 + 42) = 2112;
    *(v26 + 44) = v21;
    v28[3] = v21;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    _os_log_impl(&dword_20CEB6000, v23, v24, "%@ - %s item: %@, home: %@, itemManager: %@", v26, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x20F31FC70](v29, -1, -1);
    MEMORY[0x20F31FC70](v26, -1, -1);

    (*(v35 + 8))(v37, v36);
  }

  else
  {

    (*(v9 + 8))(v37, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return v19;
}

uint64_t sub_20D058160(void *a1)
{
  v2 = sub_20D563608();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EAB8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = v8[3];

  result = sub_20D568338();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_20D056AEC(&unk_27C81FF50, MEMORY[0x277CC9178]);
    do
    {
      result = sub_20D568558();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_20CEC80B0(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_20D056AEC(&unk_27C81FF50, MEMORY[0x277CC9178]);
  sub_20D568558();
  if (v32)
  {
    while (1)
    {
      result = sub_20CEC80B0(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EAB8);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_20CEC80B0(&v33, v14);
      v14 += 2;
      sub_20D568558();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_20CEF928C(&v31, &qword_27C81BF00);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

char *sub_20D0584F4(void *a1, uint64_t a2, void *a3, char *a4)
{
  v24[3] = type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator(0);
  v24[4] = sub_20D056AEC(&unk_27C81FF90, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  v24[0] = a2;
  v8 = [objc_allocWithZone(HULinkedApplicationView) initWithFrame_];
  *&a4[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView] = v8;
  sub_20CECF7A0(v24, &a4[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_viewCoordinator]);
  [a1 copy];
  sub_20D568628();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FFA0);
  swift_dynamicCast();
  v9 = objc_allocWithZone(type metadata accessor for AccessoryDetailsLinkedApplicationItemManager());
  *&a4[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_itemManager] = sub_20CF763C8(v23, a3);
  v22.receiver = a4;
  v22.super_class = type metadata accessor for AccessoryDetailsLinkedApplicationViewController();
  v10 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  v11 = OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView;
  v12 = *&v10[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView];
  v13 = v10;
  [v13 setView_];
  v14 = OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_itemManager;
  [*&v13[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_itemManager] setDelegate_];
  [*&v13[v14] resetItemProvidersAndModules];
  v15 = *&v13[v14];

  v16 = *(*&v13[v14] + OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider);
  if (v16)
  {
    v17 = [v16 items];
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v18 = sub_20D567D08();

    v19 = sub_20CFAF954(v18);

    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        [*&v10[v11] setItem_];
      }
    }
  }

  [*&v10[v11] updateUIWithAnimation_];

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v13;
}

void sub_20D058808(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v9 = a1;
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, &v20);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_20CEE913C(0xD000000000000022, 0x800000020D5D6B10, &v20);
    *(v13 + 22) = 2112;
    *(v13 + 24) = v9;
    *v14 = v9;
    v16 = v9;
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s - %s: updating uiViewController: %@", v13, 0x20u);
    sub_20CEF928C(v14, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v15, -1, -1);
    v17 = v13;
    a3 = v19;
    MEMORY[0x20F31FC70](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = [a3 itemManager];
}

id sub_20D058AD4(uint64_t a1, void *a2)
{
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2;
  sub_20D565958();
  v8 = v7;
  v9 = sub_20D565968();
  v10 = sub_20D567E88();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D6B40, &v17);
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&dword_20CEB6000, v9, v10, "%s - %s: returning viewController: %@", v11, 0x20u);
    sub_20CEF928C(v12, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_20D058D1C(void *a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v6 = a1;
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, &v15);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000022, 0x800000020D5D6B10, &v15);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s - %s: updating uiViewController: %@", v9, 0x20u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_20D058F58()
{
  result = qword_27C81FEC0;
  if (!qword_27C81FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FEC0);
  }

  return result;
}

unint64_t sub_20D058FAC()
{
  result = qword_27C81FEC8;
  if (!qword_27C81FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FEC8);
  }

  return result;
}

id sub_20D059000(void *a1, void *a2)
{
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = a1;
  v10 = _s6HomeUI22AccessoryDetailsRouterC11detailsView3for20navigationController7dismissSo33HUDetailsPresentationDelegateHost_So06UIViewJ0CXcSgSo6HFItemC_So012UINavigationJ0CSgyycSgtFZ_0(a2, 0, sub_20D0592E4, v8);

  if (v10)
  {
    return v10;
  }

  sub_20D565958();
  v12 = a2;
  v13 = sub_20D565968();
  v14 = sub_20D567EA8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_20CEE913C(0xD000000000000023, 0x800000020D5D6AE0, v19);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20CEE913C(0xD000000000000020, 0x800000020D5D6B60, v19);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v12;
    *v16 = v12;
    v18 = v12;
    _os_log_impl(&dword_20CEB6000, v13, v14, "%s - %s: No details view found for item: %@. Falling back to legacy view", v15, 0x20u);
    sub_20CEF928C(v16, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v17, -1, -1);
    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v19[1] = &unk_28251B0C8;
  return [objc_allocWithZone(HUServiceDetailsViewController) initWithServiceLikeItem_];
}

double sub_20D059304()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__viewHeight) = result;
  return result;
}

void sub_20D05931C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__navigationItemTitleObservation);
  *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__navigationItemTitleObservation) = v2;
  v4 = v2;
}

void sub_20D05935C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__parentChangeObservation);
  *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper34LinkedApplicationViewRepresentable11Coordinator__parentChangeObservation) = v2;
  v4 = v2;
}

double sub_20D0593B4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight) = result;
  return result;
}

void sub_20D0593CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__navigationItemTitleObservation);
  *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__navigationItemTitleObservation) = v2;
  v4 = v2;
}

void sub_20D05940C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__parentChangeObservation);
  *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__parentChangeObservation) = v2;
  v4 = v2;
}

unint64_t sub_20D05944C()
{
  result = qword_27C81FED0;
  if (!qword_27C81FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FED0);
  }

  return result;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D0594F0()
{
  result = qword_27C81FF60;
  if (!qword_27C81FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FF60);
  }

  return result;
}

id sub_20D0595EC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = [a1 respondsToSelector_];
  if (result)
  {
    v6 = *(v4 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home);

    return [a1 home:v6 didRemoveAccessory:v3];
  }

  return result;
}

void sub_20D05967C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper) = v2;
  v4 = v2;
}

void sub_20D0596BC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_20D059764(uint64_t *a1, int a2)
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

uint64_t sub_20D0597AC(uint64_t result, int a2, int a3)
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

unint64_t sub_20D059814()
{
  result = qword_27C81FFA8;
  if (!qword_27C81FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFA8);
  }

  return result;
}

unint64_t sub_20D059868()
{
  result = qword_27C81FFB0;
  if (!qword_27C81FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFB0);
  }

  return result;
}

unint64_t sub_20D0598BC()
{
  result = qword_27C81FFB8;
  if (!qword_27C81FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFB8);
  }

  return result;
}

unint64_t sub_20D059910()
{
  result = qword_27C81FFC0;
  if (!qword_27C81FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFC0);
  }

  return result;
}

unint64_t sub_20D059964()
{
  result = qword_27C81FFC8;
  if (!qword_27C81FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFC8);
  }

  return result;
}

unint64_t sub_20D0599B8()
{
  result = qword_27C81FFD0;
  if (!qword_27C81FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFD0);
  }

  return result;
}

unint64_t sub_20D059A0C()
{
  result = qword_27C81FFD8;
  if (!qword_27C81FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FFD8);
  }

  return result;
}

uint64_t objectdestroy_342Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D059C58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D5677F8();
  v3 = HFLocalizedString();

  sub_20D567838();
  v4 = sub_20D5677F8();
  v5 = HFLocalizedString();

  sub_20D567838();
  sub_20D567048();
  sub_20D5670C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820020);
  v9 = sub_20D05A960();
  v10 = MEMORY[0x277CE0BC8];
  sub_20D567588();
  v6 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_20D5672E8();
  v7 = sub_20D5674C8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820050);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_20D059E54()
{
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820058);
  sub_20D563818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820038);
  sub_20CF156D0(&qword_27C820060, &qword_27C820058);
  sub_20D05A9E4();
  sub_20D05AAC8();
  return sub_20D567548();
}

double sub_20D059F4C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_20D566B38();
  v19 = 0;
  sub_20D05A12C(&v10);
  v25 = v15;
  v26 = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v20 = v10;
  v21 = v11;
  v28[5] = v15;
  v28[6] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[0] = v10;
  v28[1] = v11;
  sub_20CEF9178(&v20, &v9, &qword_27C820070);
  sub_20CEF928C(v28, &qword_27C820070);
  *(&v18[6] + 7) = v26;
  *(&v18[5] + 7) = v25;
  *(&v18[2] + 7) = v22;
  *(&v18[1] + 7) = v21;
  *(&v18[7] + 7) = v27[0];
  v18[8] = *(v27 + 9);
  *(&v18[3] + 7) = v23;
  *(&v18[4] + 7) = v24;
  *(v18 + 7) = v20;
  v3 = v18[4];
  *(a1 + 97) = v18[5];
  v4 = v18[7];
  *(a1 + 113) = v18[6];
  *(a1 + 129) = v4;
  *(a1 + 145) = v18[8];
  v5 = v18[0];
  *(a1 + 33) = v18[1];
  result = *&v18[2];
  v7 = v18[3];
  *(a1 + 49) = v18[2];
  *(a1 + 65) = v7;
  *(a1 + 81) = v3;
  v8 = v19;
  *a1 = v2;
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = v8;
  *(a1 + 17) = v5;
  *(a1 + 161) = 0;
  return result;
}

uint64_t sub_20D05A12C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D564388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20D566BA8();
  LOBYTE(v53) = 1;
  sub_20D05A604(v60);
  *&v59[7] = v60[0];
  *&v59[23] = v60[1];
  *&v59[39] = v60[2];
  *&v59[55] = v60[3];
  HIDWORD(v42) = v53;
  v6 = sub_20D564398();
  v7 = *(v3 + 104);
  v7(v5, *MEMORY[0x277D15C80], v2);
  v8 = sub_20D048AB0(v5, v6);

  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    v10 = sub_20D5677F8();
    v11 = HFLocalizedString();

    sub_20D567838();
    v53 = sub_20D567308();
    v12 = sub_20D5670B8();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    *&v47 = v12;
    *(&v47 + 1) = v14;
    *&v48 = v16 & 1;
    *(&v48 + 1) = v18;
    LOBYTE(v49) = 0;
  }

  else
  {
    v19 = sub_20D564398();
    v7(v5, *MEMORY[0x277D15C88], v2);
    v20 = sub_20D048AB0(v5, v19);

    v9(v5, v2);
    if ((v20 & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = -1;
      goto LABEL_7;
    }

    v21 = sub_20D5677F8();
    v22 = HFLocalizedString();

    sub_20D567838();
    v53 = sub_20D567308();
    v23 = sub_20D5670B8();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    *&v47 = v23;
    *(&v47 + 1) = v25;
    *&v48 = v27 & 1;
    *(&v48 + 1) = v29;
    LOBYTE(v49) = 1;
  }

  sub_20D566D18();
  v30 = v53;
  v31 = v54;
  v32 = *v55;
  v33 = *&v55[8];
  v34 = v55[16];
  sub_20D05AB38(v53, v54, v55[0]);
LABEL_7:
  v35 = v43;
  v45[0] = v43;
  v45[1] = 0;
  v36 = BYTE4(v42);
  v46[0] = BYTE4(v42);
  *&v46[1] = *v59;
  *&v46[49] = *&v59[48];
  *&v46[33] = *&v59[32];
  *&v46[17] = *&v59[16];
  *&v46[64] = *&v59[63];
  v47 = v43;
  v48 = *v46;
  v52 = *&v59[63];
  v50 = *&v46[32];
  v51 = *&v46[48];
  v49 = *&v46[16];
  v44 = 1;
  sub_20CEF9178(v45, &v53, &qword_27C820420);
  sub_20D05AB20(v30, v31, v32, v33, v34);
  sub_20D05AB74(v30, v31, v32, v33, v34);
  v37 = v44;
  v38 = v50;
  *(a1 + 32) = v49;
  *(a1 + 48) = v38;
  *(a1 + 64) = v51;
  v39 = v52;
  v40 = v48;
  *a1 = v47;
  *(a1 + 16) = v40;
  *(a1 + 80) = v39;
  *(a1 + 88) = 0;
  *(a1 + 96) = v37;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  *(a1 + 136) = v34;
  sub_20D05AB74(v30, v31, v32, v33, v34);
  v53 = v35;
  v54 = 0;
  v55[0] = v36;
  v56 = *&v59[16];
  v57 = *&v59[32];
  *v58 = *&v59[48];
  *&v58[15] = *&v59[63];
  *&v55[1] = *v59;
  return sub_20CEF928C(&v53, &qword_27C820420);
}

uint64_t sub_20D05A604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D564388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20D0CAA28();
  v44 = v6;
  sub_20CEF44D8();
  v7 = sub_20D5670E8();
  v9 = v8;
  v11 = v10;
  sub_20D566F98();
  v12 = sub_20D5670C8();
  v40 = v13;
  v41 = v12;
  v39 = v14;
  v42 = v15;

  sub_20CF13F34(v7, v9, v11 & 1);

  v16 = sub_20D564398();
  (*(v3 + 104))(v5, *MEMORY[0x277D15C88], v2);
  v17 = sub_20D048AB0(v5, v16);

  (*(v3 + 8))(v5, v2);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if ((v17 & 1) == 0)
  {
    v22 = sub_20D5677F8();
    v23 = HFLocalizedString();

    sub_20D567838();
    sub_20D566F88();
    v24 = sub_20D5670C8();
    v26 = v25;
    v28 = v27;

    v43 = sub_20D567308();
    v18 = sub_20D5670B8();
    v19 = v29;
    v31 = v30;
    v21 = v32;
    sub_20CF13F34(v24, v26, v28 & 1);

    v20 = v31 & 1;
    sub_20CF14B58(v18, v19, v31 & 1);
    sub_20D5663C8();
  }

  v33 = v39 & 1;
  v35 = v40;
  v34 = v41;
  sub_20CF14B58(v41, v40, v39 & 1);
  v36 = v42;
  sub_20D5663C8();
  sub_20D05ABC8(v18, v19, v20, v21);
  sub_20D05AC0C(v18, v19, v20, v21);
  LOBYTE(v43) = v33;
  *a1 = v34;
  *(a1 + 8) = v35;
  *(a1 + 16) = v33;
  *(a1 + 24) = v36;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v20;
  *(a1 + 56) = v21;
  sub_20D05AC0C(v18, v19, v20, v21);
  sub_20CF13F34(v34, v35, v33);
}

unint64_t sub_20D05A960()
{
  result = qword_27C820028;
  if (!qword_27C820028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820020);
    sub_20D05A9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820028);
  }

  return result;
}

unint64_t sub_20D05A9E4()
{
  result = qword_27C820030;
  if (!qword_27C820030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820038);
    sub_20CF156D0(&qword_27C820040, &qword_27C820048);
    sub_20CF156D0(&qword_27C81D628, &qword_27C8202B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820030);
  }

  return result;
}

unint64_t sub_20D05AAC8()
{
  result = qword_27C820068;
  if (!qword_27C820068)
  {
    sub_20D5643B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820068);
  }

  return result;
}

uint64_t sub_20D05AB20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_20D05AB38(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_20D05AB38(uint64_t a1, uint64_t a2, char a3)
{
  sub_20CF14B58(a1, a2, a3 & 1);

  return sub_20D5663C8();
}

uint64_t sub_20D05AB74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_20D05AB8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_20D05AB8C(uint64_t a1, uint64_t a2, char a3)
{
  sub_20CF13F34(a1, a2, a3 & 1);
}

uint64_t sub_20D05ABC8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20CF14B58(result, a2, a3 & 1);

    return sub_20D5663C8();
  }

  return result;
}

uint64_t sub_20D05AC0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20CF13F34(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_20D05AC50()
{
  result = qword_27C820078;
  if (!qword_27C820078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820050);
    sub_20D05AD08();
    sub_20CF156D0(&qword_27C820090, &unk_27C8202D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820078);
  }

  return result;
}

unint64_t sub_20D05AD08()
{
  result = qword_27C820080;
  if (!qword_27C820080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820088);
    sub_20D05A960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820080);
  }

  return result;
}

uint64_t sub_20D05AD98()
{
  type metadata accessor for ControlCenterAnalyticsActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_20CF45BD0();
  result = sub_20D564418();
  v2 = v0 + OBJC_IVAR____TtC6HomeUI27ControlCenterAnalyticsActor_lastTileModuleCountEvent;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 1;
  qword_281120658 = v0;
  return result;
}

uint64_t static ControlCenterAnalyticsActor.shared.getter()
{
  if (qword_281120650 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20D05AE84()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8200A0);
  sub_20D5643E8();
  return swift_endAccess();
}

uint64_t sub_20D05AEFC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_20D567C58();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_20CF18960(0, 0, v4, &unk_20D5C6A08, v6);
}

uint64_t sub_20D05B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_20D565988();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_20D05B11C;

  return sub_20D05B534();
}

uint64_t sub_20D05B11C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20D05B258, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20D05B258()
{
  v23 = v0;
  v1 = *(v0 + 56);
  sub_20D565938();
  v2 = v1;
  v3 = sub_20D565968();
  v4 = sub_20D567EA8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 32);
    v20 = *(v0 + 24);
    v21 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v10 = sub_20D568E18();
    v12 = sub_20CEE913C(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_20CEB6000, v3, v4, "%s failed to send tile count event with error %@", v7, 0x16u);
    sub_20CEF928C(v8, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);

    (*(v6 + 8))(v21, v20);
  }

  else
  {
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 24);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_20D05B474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20D05B02C(a1, v4, v5, v7, v6);
}

uint64_t sub_20D05B534()
{
  v1[18] = v0;
  v1[19] = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8200A8);
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D05B668, v0, 0);
}

uint64_t sub_20D05B668()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8200A0);
  v1 = sub_20D5643F8();
  swift_endAccess();
  v2 = sub_20CEF34E0(v1);

  result = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20CF45BD0();
    sub_20D05C410();
    sub_20D567D58();
    result = v0[2];
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[6];
  }

  else
  {
    v6 = 0;
    v8 = -1;
    v9 = -1 << *(result + 32);
    v4 = result + 56;
    v5 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v8 = ~(-1 << v10);
    }

    v7 = v8 & *(result + 56);
  }

  v0[26] = result;
  v0[27] = v4;
  v11 = MEMORY[0x277D84F90];
  v0[28] = v5;
  v0[29] = v11;
  if (result < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_11:
    v15 = (v13 - 1) & v13;
    v16 = *(*(result + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    while (1)
    {
      v0[31] = v14;
      v0[32] = v15;
      v0[30] = v16;
      if (!v16)
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v19 = swift_conformsToProtocol2();
      if (v19)
      {
        v25 = (*(v19 + 8) + **(v19 + 8));
        v22 = v19;
        v23 = swift_task_alloc();
        v0[33] = v23;
        *v23 = v0;
        v23[1] = sub_20D05BA20;
        v24 = v0[21];

        return v25(v24, ObjectType, v22);
      }

      result = v0[26];
      v6 = v14;
      v7 = v15;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v17 = sub_20D568798();
      if (!v17)
      {
        break;
      }

      v0[17] = v17;
      sub_20CF45BD0();
      swift_dynamicCast();
      v16 = v0[16];
      v14 = v6;
      v15 = v7;
    }

LABEL_18:
    sub_20CEC80DC();
    v20 = swift_task_alloc();
    v0[34] = v20;
    *v20 = v0;
    v20[1] = sub_20D05C01C;
    v21 = v0[29];

    return sub_20D07EFEC((v0 + 10), v21);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v0[28] + 64) >> 6))
      {
        goto LABEL_18;
      }

      v13 = *(v0[27] + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D05BA20()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_20D05BB30, v1, 0);
}

uint64_t sub_20D05BB30()
{
  v1 = *(v0 + 168);
  if ((*(*(v0 + 184) + 48))(v1, 1, *(v0 + 176)) == 1)
  {

    sub_20CEF928C(v1, &qword_27C8200A8);
  }

  else
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 160);
    sub_20D05C468(v1, v2);
    sub_20D0475A4(v2, v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      if (EnumCaseMultiPayload)
      {
        v7 = *(v0 + 160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

        v8 = sub_20D563818();
        (*(*(v8 - 8) + 8))(v7, v8);
      }

      else
      {
        sub_20CF75D00(*(v0 + 160), type metadata accessor for ControlCenterModuleConfiguration.Content);
      }

      sub_20D0475A4(*(v0 + 200), *(v0 + 192), type metadata accessor for ControlCenterModuleConfiguration);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 232);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    v1 = *(v0 + 200);

    sub_20CF75D00(v1, type metadata accessor for ControlCenterModuleConfiguration);
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  while (1)
  {
    v15 = *(v0 + 208);
    if (v15 < 0)
    {
      break;
    }

LABEL_14:
    v16 = v5;
    v17 = v6;
    v18 = v5;
    if (v6)
    {
LABEL_18:
      v19 = (v17 - 1) & v17;
      v1 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      goto LABEL_21;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= ((*(v0 + 224) + 64) >> 6))
      {
        goto LABEL_25;
      }

      v17 = *(*(v0 + 216) + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_32:
    v1 = sub_20CEE8AE0(0, v1[2] + 1, 1, v1);
LABEL_10:
    v11 = v1[2];
    v10 = v1[3];
    if (v11 >= v10 >> 1)
    {
      v1 = sub_20CEE8AE0(v10 > 1, v11 + 1, 1, v1);
    }

    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v14 = *(v0 + 184);

    sub_20CF75D00(v12, type metadata accessor for ControlCenterModuleConfiguration);
    v1[2] = v11 + 1;
    sub_20D05C468(v13, v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    *(v0 + 232) = v1;
  }

  while (1)
  {
    v20 = sub_20D568798();
    if (!v20)
    {
      goto LABEL_25;
    }

    *(v0 + 136) = v20;
    sub_20CF45BD0();
    swift_dynamicCast();
    v1 = *(v0 + 128);
    v18 = v5;
    v19 = v6;
LABEL_21:
    *(v0 + 248) = v18;
    *(v0 + 256) = v19;
    *(v0 + 240) = v1;
    if (!v1)
    {
LABEL_25:
      sub_20CEC80DC();
      v23 = swift_task_alloc();
      *(v0 + 272) = v23;
      *v23 = v0;
      v23[1] = sub_20D05C01C;
      v24 = *(v0 + 232);

      return sub_20D07EFEC(v0 + 80, v24);
    }

    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      break;
    }

    v5 = v18;
    v6 = v19;
    v15 = *(v0 + 208);
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

  v29 = (*(v22 + 8) + **(v22 + 8));
  v26 = v22;
  v27 = swift_task_alloc();
  *(v0 + 264) = v27;
  *v27 = v0;
  v27[1] = sub_20D05BA20;
  v28 = *(v0 + 168);

  return v29(v28, ObjectType, v26);
}

uint64_t sub_20D05C01C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_20D05C278;
  }

  else
  {
    v4 = sub_20D05C148;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20D05C148()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 144) + OBJC_IVAR____TtC6HomeUI27ControlCenterAnalyticsActor_lastTileModuleCountEvent;
  if ((*(v4 + 24) & 1) != 0 || (*v4 == v1 ? (v5 = *(v4 + 8) == v2) : (v5 = 0), v5 ? (v6 = *(v4 + 16) == v3) : (v6 = 0), !v6))
  {
    *v4 = v1;
    *(v4 + 8) = v2;
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v0 + 104) = v1;
    *(v0 + 112) = v2;
    *(v0 + 120) = v3;
    sub_20CFBA768();
    sub_20D564248();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20D05C278()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ControlCenterAnalyticsActor.deinit()
{
  v1 = OBJC_IVAR____TtC6HomeUI27ControlCenterAnalyticsActor_tileModules;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8200A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ControlCenterAnalyticsActor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6HomeUI27ControlCenterAnalyticsActor_tileModules;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8200A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_20D05C410()
{
  result = qword_27C81C138;
  if (!qword_27C81C138)
  {
    sub_20CF45BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C138);
  }

  return result;
}

uint64_t sub_20D05C468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ControlCenterAnalyticsActor()
{
  result = qword_27C8200B8;
  if (!qword_27C8200B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D05C520()
{
  sub_20D05C734();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ControlCenterAnalyticsActor.sendTileModuleCountEvent()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20CEF5FFC;

  return v4();
}

void sub_20D05C734()
{
  if (!qword_27C8200C8)
  {
    sub_20CF45BD0();
    v0 = sub_20D564408();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8200C8);
    }
  }
}

uint64_t dispatch thunk of ControlCenterTileModule.configuration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CEF5FFC;

  return v9(a1, a2, a3);
}

id ContainedAccessoryElementsGridViewController.__allocating_init(serviceContainingItem:isPresentedModally:shouldGroupByRoom:valueSource:)(void *a1, char a2, char a3, uint64_t a4)
{
  swift_getObjectType();
  v9 = sub_20D060AB8(a1, a2, a3, a4, v4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_20D05C970()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D05CA08(char a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20D05CBC4(uint64_t a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D05CC1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_20D05CCE4()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR___HUContainedAccessoryElementsGridViewController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUContainedAccessoryElementsGridViewController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_20D05CDDC()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D05CE34(uint64_t a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_20D05CF38()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D05CF90(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_20D05CFEC(uint64_t a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20D05D044(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_20D05D200()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20D05D260(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceGridDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t sub_20D05D2F8()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellBackgroundDisplayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20D05D33C(uint64_t a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellBackgroundDisplayStyle;
  swift_beginAccess();
  *&v1[v3] = a1;
  if ([v1 isViewLoaded])
  {
    v4 = [v1 itemManager];
    v5 = [v4 firstFullUpdateFuture];

    LODWORD(v4) = [v5 isFinished];
    if (v4)
    {
      v6 = [v1 itemManager];
      v7 = [v1 itemManager];
      v8 = [v7 allDisplayedItems];

      sub_20CECF940(0, &qword_281120AC0);
      sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
      v9 = sub_20D567D08();

      sub_20CF81C08(v9);

      v10 = sub_20D567A58();

      [v6 reconfigureUIRepresentationForItems:v10 withAnimation:0];
    }
  }
}

void (*sub_20D05D4E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D05D548;
}

void sub_20D05D548(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if ([*(a1 + 24) isViewLoaded])
    {
      v4 = [*(a1 + 24) itemManager];
      v5 = [v4 firstFullUpdateFuture];

      LODWORD(v4) = [v5 isFinished];
      if (v4)
      {
        v6 = *(a1 + 24);
        v11 = [v6 itemManager];
        v7 = [v6 itemManager];
        v8 = [v7 allDisplayedItems];

        sub_20CECF940(0, &qword_281120AC0);
        sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
        v9 = sub_20D567D08();

        sub_20CF81C08(v9);

        v10 = sub_20D567A58();

        [v11 reconfigureUIRepresentationForItems:v10 withAnimation:0];
      }
    }
  }
}

uint64_t sub_20D05D70C()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D05D750(char a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20D05D800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_20D05D86C();
}

uint64_t sub_20D05D86C()
{
  v1 = v0;
  v2 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_dataModelObservationCancelable;
  if (*(v0 + OBJC_IVAR___HUContainedAccessoryElementsGridViewController_dataModelObservationCancelable))
  {

    sub_20D566608();
  }

  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for ActionSetDeviceDataModel();
    sub_20D060B20();

    sub_20D566628();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20D566648();
    v4 = sub_20D566698();
  }

  *(v1 + v2) = v4;
}

void sub_20D05D99C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong itemManager];
    v3 = [v1 itemManager];
    v4 = [v3 allDisplayedItems];

    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v5 = sub_20D567D08();

    sub_20D09AF38(v5);

    v6 = sub_20D567CD8();

    v7 = [v2 updateResultsForItems:v6 senderSelector:sub_20D5638E8()];
  }
}

uint64_t sub_20D05DB64(uint64_t a1)
{
  v3 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_20D05D86C();
}

void (*sub_20D05DBD4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20D05DC5C;
}

void sub_20D05DC5C(uint64_t **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_dataModelObservationCancelable;
    v6 = v4;
    if (*(v4 + OBJC_IVAR___HUContainedAccessoryElementsGridViewController_dataModelObservationCancelable))
    {

      sub_20D566608();

      v6 = v3[3];
    }

    v7 = *(v6 + v3[4]);
    if (v7)
    {
      type metadata accessor for ActionSetDeviceDataModel();
      sub_20D060B20();

      v8 = sub_20D566628();

      *v3 = v8;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_20D566648();
      v7 = sub_20D566698();
    }

    *(v4 + v5) = v7;
  }

  free(v3);
}

id ContainedAccessoryElementsGridViewController.init(serviceContainingItem:isPresentedModally:shouldGroupByRoom:valueSource:)(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = a1;
  v9 = [v4 initWithServiceContainingItem:v8 mediaItem:0 isPresentedModally:a2 & 1 shouldGroupByRoom:a3 & 1 valueSource:a4];

  swift_unknownObjectRelease();
  return v9;
}

id ContainedAccessoryElementsGridViewController.__allocating_init(mediaItem:isPresentedModally:shouldGroupByRoom:valueSource:)(void *a1, char a2, char a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = a1;
  v11 = [v9 initWithServiceContainingItem:0 mediaItem:v10 isPresentedModally:a2 & 1 shouldGroupByRoom:a3 & 1 valueSource:a4];

  swift_unknownObjectRelease();
  return v11;
}

id ContainedAccessoryElementsGridViewController.init(mediaItem:isPresentedModally:shouldGroupByRoom:valueSource:)(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = a1;
  v9 = [v4 initWithServiceContainingItem:0 mediaItem:v8 isPresentedModally:a2 & 1 shouldGroupByRoom:a3 & 1 valueSource:a4];

  swift_unknownObjectRelease();
  return v9;
}

char *ContainedAccessoryElementsGridViewController.init(serviceContainingItem:mediaItem:isPresentedModally:shouldGroupByRoom:valueSource:)(void *a1, void *a2, char a3, char a4, uint64_t a5)
{
  v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal] = 0;
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate] = 0;
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController____lazy_storage___collectionLayoutManager] = 0;
  v11 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem] = 0;
  v12 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellBackgroundDisplayStyle] = 2;
  v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellInsetsLayoutMarginsFromSafeArea] = 1;
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_dataModelObservationCancelable] = 0;
  *&v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel] = 0;
  v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_isPresentedModally] = a3;
  if (a1)
  {
    [a1 copy];
    sub_20D568628();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820148);
    if (swift_dynamicCast())
    {
      v13 = v33;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  swift_beginAccess();
  v14 = *&v5[v11];
  *&v5[v11] = v13;

  if (a2)
  {
    [a2 copy];
    sub_20D568628();
    swift_unknownObjectRelease();
    sub_20CECF940(0, &qword_27C820140);
    if (swift_dynamicCast())
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  swift_beginAccess();
  v16 = *&v5[v12];
  *&v5[v12] = v15;
  v17 = v15;

  v18 = a4 & 1;
  v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_shouldGroupByRoom] = a4 & 1;
  v5[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes] = (a4 & 1) == 0;
  v19 = objc_opt_self();
  v20 = *&v5[v11];
  v21 = [v19 itemManagerWithServiceContainerItem:v20 shouldGroupByRoom:v18 mediaItem:v17 valueSource:a5];

  v32.receiver = v5;
  v32.super_class = type metadata accessor for ContainedAccessoryElementsGridViewController();
  v22 = v21;
  v23 = objc_msgSendSuper2(&v32, sel_initUsingCompositionalLayoutWithItemManager_, v22);
  [v22 setDelegate_];
  v24 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  swift_beginAccess();
  v25 = *&v23[v24];
  v26 = v25;
  if (!v25)
  {
    v27 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
    swift_beginAccess();
    v26 = *&v23[v27];
    if (v26)
    {
      v28 = v26;
    }
  }

  v29 = v25;
  [v22 setSourceItem_];

  swift_unknownObjectRelease();
  return v23;
}

void sub_20D05E5C8(void *a1, void *a2)
{
  v3 = v2;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for ContainedAccessoryElementsGridViewController();
  objc_msgSendSuper2(&v38, sel_configureCell_forItem_, a1, a2);
  type metadata accessor for AccessoryTileCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_self();
      v11 = a1;
      v37 = a2;
      v12 = [v3 _childItemsForItem_];
      sub_20CECF940(0, &unk_27C81A3F0);
      sub_20CEF7F74(&qword_27C81D280, &unk_27C81A3F0);
      sub_20D567D08();

      v13 = sub_20D567CD8();

      v14 = [v10 hu:v13 preferredToggleableControlItemInControlItems:?];

      v36 = v14;
      v15 = v14 != 0;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & *v7) + 0x138);
      v18 = v11;
      v17(v15);
      v19 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes;
      swift_beginAccess();
      LODWORD(v19) = v3[v19];
      v20 = OBJC_IVAR___HUTileCell_showPrefixLabel;
      swift_beginAccess();
      v21 = *(v7 + v20);
      *(v7 + v20) = v19;
      if (v19 != v21)
      {
        [v7 setNeedsUpdateConfiguration];
      }

      v22 = sub_20D05CCE4();
      v23 = *((*v16 & *v22) + 0x128);
      v24 = v37;
      v25 = v23(v9);
      v27 = v26;

      v28 = v7 + OBJC_IVAR___HUTileCell__gridSize;
      v30 = *(v7 + OBJC_IVAR___HUTileCell__gridSize);
      v29 = *(v7 + OBJC_IVAR___HUTileCell__gridSize + 8);
      v31 = *(v7 + OBJC_IVAR___HUTileCell__gridSize + 16);
      *v28 = v25;
      *(v28 + 1) = v27;
      v28[16] = 0;
      if ((v31 & 1) != 0 || v25 != v30 || v27 != v29)
      {
        [v7 setNeedsUpdateConfiguration];
      }
    }
  }

  v32 = swift_dynamicCastObjCProtocolConditional();
  if (v32)
  {
    v33 = v32;
    v34 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellBackgroundDisplayStyle;
    swift_beginAccess();
    [v33 setBackgroundDisplayStyle_];
  }

  v35 = [a1 contentView];
  [v35 setInsetsLayoutMarginsFromSafeArea_];
}

void sub_20D05E9CC()
{
  if (v0[OBJC_IVAR___HUContainedAccessoryElementsGridViewController_isPresentedModally] == 1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneWithSender_];
  }

  else
  {
    v1 = 0;
  }

  v2 = [v0 itemManager];
  v3 = [v2 home];

  if (!v3)
  {
LABEL_11:
    if (!v1)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v4 = [v3 hf_currentUserIsAdministrator];

  if (!v4)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v5 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  swift_beginAccess();
  v3 = *&v0[v5];
  if (!v3)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:v0 action:sel_editWithSender_];
    if (!v1)
    {
LABEL_15:
      v6 = v3;
      if (!v3)
      {
        v7 = 0;
        v8 = 0;
        v1 = 0;
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if (!v1)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  v6 = v1;
  if (!v3)
  {
LABEL_16:
    v3 = v3;
    v7 = v1;
    v8 = 0;
    v1 = v6;
    goto LABEL_18;
  }

  v3 = v3;
  v7 = v1;
  v8 = v3;
LABEL_18:
  v9 = [v0 navigationItem];
  [v9 setRightBarButtonItem_];

  v10 = [v0 navigationItem];
  [v10 setLeftBarButtonItem_];
}

uint64_t sub_20D05EC60(uint64_t a1, void *a2)
{
  v5 = sub_20D05CCE4();
  v6 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes;
  swift_beginAccess();
  LOBYTE(v6) = v2[v6];
  v7 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  swift_beginAccess();
  v5[v7] = v6;

  v8 = [v2 itemManager];
  v9 = [v8 displayedSectionIdentifierForSectionIndex_];

  if (v9)
  {
    v10 = sub_20D567838();
    v12 = v11;

    v13 = *&v2[OBJC_IVAR___HUContainedAccessoryElementsGridViewController____lazy_storage___collectionLayoutManager];
    v20 = xmmword_20D5BA030;
    v21 = 2;
    v14 = v13;
    sub_20CEFA3C8(v10, v12, &v20, a2);
    v16 = v15;
  }

  else
  {
    v17 = *&v2[OBJC_IVAR___HUContainedAccessoryElementsGridViewController____lazy_storage___collectionLayoutManager];
    v20 = xmmword_20D5C0F70;
    v21 = 2;
    v14 = v17;
    sub_20CEFA3C8(0, 0xE000000000000000, &v20, a2);
    v16 = v18;
  }

  return v16;
}

uint64_t sub_20D05EE48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF1CFCC;

  return (sub_20D060BA4)(a1);
}

uint64_t sub_20D05F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_20D567C18();
  v4[6] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D05F120, v6, v5);
}

uint64_t sub_20D05F120()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20D02ABCC;
  v9 = v0[2];

  return sub_20D060BA4(v9);
}

id ContainedAccessoryElementsGridViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id ContainedAccessoryElementsGridViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

uint64_t ContainedAccessoryElementsGridViewController.displayedItems(inSection:)()
{
  v1 = [v0 itemManager];
  v2 = [v0 itemManager];
  v3 = sub_20D5677F8();
  v4 = [v2 sectionIndexForDisplayedSectionIdentifier_];

  v5 = [v1 displayedItemsInSection_];
  sub_20CECF940(0, &qword_281120AC0);
  v6 = sub_20D567A78();

  return v6;
}

id ContainedAccessoryElementsGridViewController.finishPresentation(_:animated:)(void *a1, char a2)
{
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
    swift_beginAccess();
    v8 = *&v2[v7];
    if (v8)
    {
      v9 = a1;
      swift_unknownObjectRetain();
      if ([v6 requiresPresentingViewControllerDismissal])
      {
        v10 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_requiresPresentingViewControllerDismissal;
        swift_beginAccess();
        v2[v10] = 1;
        v11 = [v8 finishPresentation:v2 animated:a2 & 1];

        swift_unknownObjectRelease();
        return v11;
      }

      swift_unknownObjectRelease();
    }
  }

  v13 = [v2 hu:a2 & 1 dismissViewControllerAnimated:?];

  return v13;
}

void sub_20D05F9A8()
{
  v1 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      sub_20D05FA60(v4);
    }
  }

  v6 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    sub_20D061EA0();
  }
}

void sub_20D05FA60(void *a1)
{
  v2 = v1;
  v3 = [a1 serviceGroup];
  v4 = [v1 itemManager];
  v5 = [v4 home];

  v6 = [objc_allocWithZone(MEMORY[0x277D14AA8]) initWithExistingObject:v3 inHome:v5];
  v7 = type metadata accessor for ServiceGroupEditorViewController();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR___HUServiceGroupEditorViewController_editingName];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager] = 0;
  v10 = objc_allocWithZone(type metadata accessor for ServiceGroupEditorItemManager());
  v11 = v6;
  v12 = sub_20D11DE68(v11);
  v17.receiver = v8;
  v17.super_class = v7;
  v13 = objc_msgSendSuper2(&v17, sel_initUsingCompositionalLayoutWithItemManager_, v12);
  v14 = sub_20CED1210();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v15 setModalPresentationStyle_];
  v16 = [v2 hu:v15 presentPreloadableViewController:1 animated:?];
}

uint64_t sub_20D05FCF8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if ([v1 respondsToSelector_])
      {
        v4 = off_2823D2600[0];
        v5 = type metadata accessor for ContainedAccessoryElementsGridViewController.AccessoryControlViewController();
        (v4)(v5, &protocol witness table for DataModelAccessoryControlViewController);
        type metadata accessor for ItemCollectionViewControlsTransitionHelper();
        v6 = swift_dynamicCastClassUnconditional();
        v7 = qword_27C81D6C8;
        swift_beginAccess();
        v8 = *(v6 + v7);

        v9 = [v1 hasDetailsActionFor:v3 item:v8];
        swift_unknownObjectRelease();

        return v9;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void sub_20D05FE44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20D05FF24();
  }
}

void sub_20D05FE98()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_20D568A58();
  __break(1u);
}

void sub_20D05FF24()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v14 = v3;
      if ([v2 respondsToSelector_])
      {
        v4 = off_2823D2600[0];
        v5 = type metadata accessor for ContainedAccessoryElementsGridViewController.AccessoryControlViewController();
        swift_unknownObjectRetain();
        (v4)(v5, &protocol witness table for DataModelAccessoryControlViewController);
        type metadata accessor for ItemCollectionViewControlsTransitionHelper();
        v6 = swift_dynamicCastClassUnconditional();
        v7 = qword_27C81D6C8;
        swift_beginAccess();
        v8 = *(v6 + v7);

        v9 = [v2 detailsViewControllerFor:v14 item:v8];
        swift_unknownObjectRelease();

        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = v10;
          [v10 setPresentationDelegate_];
          v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
          v13 = [v0 hu:v12 presentPreloadableViewController:1 animated:?];
        }

        else
        {
          [v0 presentViewController:v9 animated:1 completion:0];
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20D060194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_20D567C18();
  v4[5] = sub_20D567C08();
  v6 = sub_20D567BA8();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_20D060230, v6, v5);
}

uint64_t sub_20D060230()
{
  v1 = v0[3];
  v2 = sub_20D567C08();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_20CFAC3E8;
  v5 = v0[2];
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v2, v6, 0xD00000000000001FLL, 0x800000020D5D1F70, sub_20D061E80, v3, v7);
}

void sub_20D06033C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E270);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20CF27D44;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF48BDC;
  aBlock[3] = &block_descriptor_35;
  v11 = _Block_copy(aBlock);

  v12 = [a2 addCompletionBlock_];
  _Block_release(v11);
}

id sub_20D0604FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = a1;
  v6 = [v5 hu:1 dismissViewControllerAnimated:?];
  v7 = sub_20D567C58();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_20D567C18();
  v8 = v6;
  v9 = sub_20D567C08();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_20CF18960(0, 0, v4, &unk_20D5C6C00, v10);
  sub_20D5653A8();

  return v8;
}

void sub_20D06069C()
{
  sub_20CEC8088(v0 + qword_27C820158);

  JUMPOUT(0x20F31FD50);
}

id sub_20D0606F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20D060730(uint64_t a1)
{
  sub_20CEC8088(a1 + qword_27C820158);

  JUMPOUT(0x20F31FD50);
}

void ContainedAccessoryElementsGridViewController.update(with:context:)()
{
  v1 = sub_20D564F48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v14 - v7;
  v9 = [v0 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 setBackgroundColor_];

    *(v0 + OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellInsetsLayoutMarginsFromSafeArea) = 0;
    sub_20D564FD8();
    (*(v2 + 104))(v4, *MEMORY[0x277D14E68], v1);
    v11 = sub_20D564F38();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v12(v8, v1);
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    sub_20D05D33C(v13);
  }

  else
  {
    __break(1u);
  }
}

void ContainedAccessoryElementsGridViewController.contentSize.getter()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ContainedAccessoryElementsGridViewController.disableScrollingIfNeeded()()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setScrollEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20D0609E8()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
  }

  else
  {
    __break(1u);
  }
}

void sub_20D060A50()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setScrollEnabled_];
  }

  else
  {
    __break(1u);
  }
}

id sub_20D060AB8(uint64_t a1, char a2, char a3, uint64_t a4, Class a5)
{
  v9 = objc_allocWithZone(a5);

  return [v9 initWithServiceContainingItem:a1 mediaItem:0 isPresentedModally:a2 & 1 shouldGroupByRoom:a3 & 1 valueSource:a4];
}

unint64_t sub_20D060B20()
{
  result = qword_27C820120;
  if (!qword_27C820120)
  {
    type metadata accessor for ActionSetDeviceDataModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820120);
  }

  return result;
}

uint64_t sub_20D060BA4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  v4 = swift_task_alloc();
  v2[13] = v4;
  v5 = sub_20D563E88();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_20D567C18();
  v2[20] = sub_20D567C08();
  type metadata accessor for DataModelAccessoryControlViewController(0);
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_20D060D24;

  return static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(v4, a1);
}

uint64_t sub_20D060D24()
{
  v1 = *v0;

  v3 = sub_20D567BA8();
  *(v1 + 176) = v3;
  *(v1 + 184) = v2;

  return MEMORY[0x2822009F8](sub_20D060E68, v3, v2);
}

uint64_t sub_20D060E68()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_20D02A86C(v3);
    v4 = 0;
LABEL_13:

    v31 = v0[1];

    return v31(v4);
  }

  v6 = v0[11];
  v5 = v0[12];
  (*(v2 + 32))(v0[18], v3, v1);
  type metadata accessor for ItemCollectionViewControlsTransitionHelper();
  v7 = swift_allocObject();
  v8 = v7 + qword_27C81D6C0;
  *(v7 + qword_27C81D6C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = v7 + qword_27C81D6D0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = qword_27C81D6D8;
  v11 = sub_20D5655D8();
  (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
  swift_beginAccess();
  *(v8 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
  swift_unknownObjectWeakAssign();
  *(v7 + qword_27C81D6C8) = v6;
  v12 = v6;
  v13 = sub_20D565658();
  v0[24] = v13;
  v14 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
  swift_beginAccess();
  v15 = *(v5 + v14);
  v0[25] = v15;
  if (!v15)
  {
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[15];
    v32 = v0[16];
    v24 = v0[14];
    v33 = v0[11];

    v25 = *(v23 + 16);
    v25(v21, v22, v24);
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    objc_allocWithZone(type metadata accessor for ContainedAccessoryElementsGridViewController.AccessoryControlViewController());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v25(v32, v21, v24);
    v26 = v33;

    v4 = DataModelAccessoryControlViewController.init(identifier:item:tileHelper:)(v32, v26, v13);
    if (v4)
    {
      if (sub_20D05FCF8())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C160);
        sub_20D565438();
        *(swift_allocObject() + 16) = xmmword_20D5BC410;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = v4;

        sub_20D565428();

        sub_20D565398();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v28 = v0[18];
    v29 = v0[14];
    v30 = *(v0[15] + 8);
    v30(v0[17], v29);
    v30(v28, v29);
    goto LABEL_13;
  }

  v16 = v0[11];
  objc_allocWithZone(type metadata accessor for ActionSetAccessoryControlViewController(0));
  swift_retain_n();
  v17 = v16;

  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_20D0613A0;
  v19 = v0[11];

  return sub_20CFAC96C(v19, v15, v13);
}

uint64_t sub_20D0613A0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_20D0614C8, v4, v3);
}

uint64_t sub_20D0614C8()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);
  v4 = v0[27];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_20D06159C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector_])
    {
      v6 = [v5 detailsViewControllerFor:v2 item:a1];
      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  sub_20D568858();
  MEMORY[0x20F31CDB0](0xD000000000000020, 0x800000020D5D6B60);
  MEMORY[0x20F31CDB0](0xD00000000000002DLL, 0x800000020D5D7200);
  swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820190);
  v8 = sub_20D567858();
  MEMORY[0x20F31CDB0](v8);

  MEMORY[0x20F31CDB0](0x65746920726F6620, 0xEA0000000000206DLL);
  v9 = [a1 description];
  v10 = sub_20D567838();
  v12 = v11;

  MEMORY[0x20F31CDB0](v10, v12);

  result = sub_20D568A58();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ContainedAccessoryElementsGridViewController.AccessoryControlViewController()
{
  result = qword_27C820178;
  if (!qword_27C820178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D061DCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D060194(a1, v4, v5, v6);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D061EA0()
{
  v1 = v0;
  v2 = [v0 itemManager];
  v3 = [v2 home];

  if (v3)
  {
    v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_mediaItem;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5)
    {
      v6 = [v5 serviceLikeBuilderInHome_];
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
          {
            sub_20CEF8584(MEMORY[0x277D84F90]);
            v10 = v14;
          }

          else
          {
            v10 = MEMORY[0x277D84FA0];
          }

          objc_allocWithZone(type metadata accessor for MediaSystemEditorViewController());
          v11 = v7;
          v12 = MediaSystemEditorViewController.init(mediaSystemBuilder:staticAccessories:)(v9, v10);
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
          v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
          [v13 setModalPresentationStyle_];
          v7 = [v1 hu:v13 presentPreloadableViewController:1 animated:?];

          v3 = v13;
        }

        v3 = v7;
      }
    }
  }
}

uint64_t sub_20D062084()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20CEF5FFC;

  return sub_20D05F084(v2, v3, v5, v4);
}

uint64_t sub_20D06225C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D0622B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_20D06237C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_20D0623DC()
{
  v1 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20D062430(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id UtilityOnboardingSetupViewController.init(context:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate] = 0;
  v4 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_errorFetchingUtilities;
  v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_errorFetchingUtilities] = 0;
  v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_isPasswordlessEnabled] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 linkButton];
  *&v2[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_accountLoginButton] = v7;
  v8 = [objc_opt_self() boldButton];
  *&v2[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_continueOnboardingButton] = v8;
  v9 = sub_20D5677F8();
  v10 = HULocalizedString(v9);

  sub_20D567838();
  swift_getKeyPath();
  v24 = v6;
  sub_20D06BB38(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  if (*(*&v6[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__availableUtilities] + 16))
  {
    v15 = sub_20D5677F8();
    v16 = HULocalizedString(v15);

    sub_20D567838();
  }

  else
  {

    v11 = sub_20D5677F8();
    v12 = HULocalizedString(v11);

    sub_20D567838();
    v13 = sub_20D5677F8();
    v14 = HULocalizedString(v13);

    sub_20D567838();
    v2[v4] = 1;
  }

  v17 = sub_20D5677F8();

  v18 = sub_20D5677F8();

  v19 = sub_20D5677F8();
  v20 = HUImageNamed(v19);

  v23.receiver = v2;
  v23.super_class = type metadata accessor for UtilityOnboardingSetupViewController();
  v21 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v17, v18, v20, 3);

  return v21;
}

void sub_20D0628CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v109 - v3;
  v113 = sub_20D563BA8();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D566EC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_20D565988();
  v111 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UtilityOnboardingSetupViewController();
  v126.receiver = v1;
  v126.super_class = v11;
  objc_msgSendSuper2(&v126, sel_viewDidLoad);
  v12 = [v1 headerView];
  v13 = sub_20D5677F8();
  [v12 setTitleAccessibilityIdentifier_];

  v14 = [v1 headerView];
  v15 = sub_20D5677F8();
  [v14 setDetailTextAccessibilityIdentifier_];

  if (v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_errorFetchingUtilities] == 1)
  {
    v16 = [objc_opt_self() boldButton];
    v17 = sub_20D5677F8();
    v18 = HULocalizedString(v17);

    if (!v18)
    {
      sub_20D567838();
      v18 = sub_20D5677F8();
    }

    [v16 setTitle:v18 forState:0];

    [v16 addTarget:v1 action:sel_cancelOnboarding forControlEvents:64];
    v19 = v16;
    v20 = sub_20D5677F8();
    [v19 setAccessibilityIdentifier_];

    v21 = [v1 buttonTray];
    [v21 addButton_];

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v22 = qword_27C838280;
    sub_20D565998();
    v23 = v1;
    v24 = sub_20D565968();
    v25 = sub_20D567EC8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v110 = v4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v115 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v23;
      *v28 = v1;
      *(v27 + 12) = 2080;
      v30 = v23;
      *(v27 + 14) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, &v115);
      _os_log_impl(&dword_20CEB6000, v24, v25, "%@:%s Presenting error view", v27, 0x16u);
      sub_20CEF928C(v28, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x20F31FC70](v29, -1, -1);
      v31 = v27;
      v4 = v110;
      MEMORY[0x20F31FC70](v31, -1, -1);
    }

    else
    {
    }

    (*(v111 + 8))(v10, v8);
    goto LABEL_22;
  }

  v109 = v6;
  v111 = v7;
  v110 = v4;
  v32 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_continueOnboardingButton;
  v33 = *&v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_continueOnboardingButton];
  v34 = sub_20D5677F8();
  v35 = HULocalizedString(v34);

  if (!v35)
  {
    sub_20D567838();
    v35 = sub_20D5677F8();
  }

  [v33 setTitle:v35 forState:0];

  v36 = *&v1[v32];
  v37 = sub_20D5677F8();
  [v36 setAccessibilityIdentifier_];

  v38 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_accountLoginButton;
  v39 = *&v1[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_accountLoginButton];
  v40 = sub_20D5677F8();
  v41 = HULocalizedString(v40);

  if (!v41)
  {
    sub_20D567838();
    v41 = sub_20D5677F8();
  }

  [v39 setTitle:v41 forState:0];

  v42 = *&v1[v38];
  v43 = sub_20D5677F8();
  [v42 setAccessibilityIdentifier_];

  [*&v1[v32] addTarget:v1 action:sel_continueOnboarding forControlEvents:64];
  [*&v1[v38] addTarget:v1 action:sel_loginWithPassword forControlEvents:64];
  v44 = [v1 buttonTray];
  [v44 addButton_];

  v45 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v46 = *&v1[v45];
  swift_getKeyPath();
  *&v115 = v46;
  sub_20D06BB38(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v47 = v46;
  sub_20D563908();

  v48 = *&v47[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__availableUtilities];
  v124 = 3;
  sub_20D5663C8();
  sub_20D567438();
  v49 = v115;
  LOBYTE(v124) = 0;
  sub_20D567438();
  v50 = v115;
  v51 = *(&v115 + 1);
  v124 = 0;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
  sub_20D567438();
  v52 = v116;
  v53 = v115;
  v115 = v49;
  LOBYTE(v116) = v50;
  v117 = v51;
  v118 = v53;
  v119 = v52;
  v120 = v47;
  v122 = 0;
  v123 = 0;
  v121 = v48;
  v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8201D8));
  v55 = sub_20D566C08();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = sub_20D566C18();
  v59 = *(v58 + 72);
  *(v58 + 72) = sub_20D063A94;
  *(v58 + 80) = v56;
  sub_20CEC8164(v59);
  v57(&v115, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8201E0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_20D5BC410;
  sub_20D566EB8();
  *&v115 = v60;
  sub_20D06BB38(&qword_27C8201E8, MEMORY[0x277CDE4B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8201F0);
  sub_20CF156D0(&qword_27C8201F8, &qword_27C8201F0);
  sub_20D5686B8();
  sub_20D566BE8();
  v61 = v55;
  v62 = [v61 view];
  if (!v62)
  {
    __break(1u);
    goto LABEL_24;
  }

  v63 = v62;
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];

  v64 = [v61 view];
  if (!v64)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v65 = v64;
  v66 = [v1 contentView];
  [v66 bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  [v65 setFrame_];
  [v1 addChildViewController_];
  v75 = [v1 contentView];
  v76 = [v61 view];
  if (!v76)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v77 = v76;
  [v75 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_20D5BC4C0;
  v79 = [v61 view];
  if (!v79)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v80 = v79;
  v81 = [v79 topAnchor];

  v82 = [v1 contentView];
  v83 = [v82 topAnchor];

  v84 = [v81 constraintEqualToAnchor_];
  *(v78 + 32) = v84;
  v85 = [v61 view];
  if (!v85)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v86 = v85;
  v87 = [v85 leadingAnchor];

  v88 = [v1 contentView];
  v89 = [v88 leadingAnchor];

  v90 = [v87 constraintEqualToAnchor_];
  *(v78 + 40) = v90;
  v91 = [v61 view];
  if (!v91)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v92 = v91;
  v93 = [v91 trailingAnchor];

  v94 = [v1 contentView];
  v95 = [v94 trailingAnchor];

  v96 = [v93 constraintEqualToAnchor_];
  *(v78 + 48) = v96;
  v97 = [v61 view];

  if (v97)
  {
    v98 = objc_opt_self();
    v99 = [v97 bottomAnchor];

    v100 = [v1 contentView];
    v101 = [v100 bottomAnchor];

    v102 = [v99 constraintEqualToAnchor_];
    *(v78 + 56) = v102;
    sub_20CECF940(0, &qword_28111FEC0);
    v103 = sub_20D567A58();

    [v98 activateConstraints_];

    v104 = [v1 navigationItem];
    [v104 setBackButtonDisplayMode_];

    v4 = v110;
LABEL_22:
    sub_20D563AE8();
    (*(v112 + 104))(v114, *MEMORY[0x277D16FF0], v113);
    v105 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
    swift_beginAccess();
    v106 = *&v1[v105];
    swift_getKeyPath();
    v124 = v106;
    sub_20D06BB38(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    v107 = v106;
    sub_20D563908();

    sub_20D5663C8();

    sub_20D563B78();
    v108 = sub_20D563B98();
    (*(*(v108 - 8) + 56))(v4, 0, 1, v108);
    sub_20D563B48();
    swift_allocObject();
    sub_20D563B38();
    MEMORY[0x20F318F80]();

    return;
  }

LABEL_29:
  __break(1u);
}

void sub_20D063A38(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20D0644D0(a1 & 1);
  }
}

id sub_20D063AE4(char a1)
{
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UtilityOnboardingSetupViewController();
  v22.receiver = v1;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, sel_viewWillDisappear_, a1 & 1);
  v8 = sub_20D564B68();
  v21[3] = v8;
  v21[4] = sub_20D06BB38(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v8);
  LOBYTE(v8) = sub_20D563968();
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if ((v8 & 1) == 0)
  {
    result = [v1 isMovingFromParentViewController];
    if (result)
    {
      if (qword_27C81A320 != -1)
      {
        swift_once();
      }

      v11 = qword_27C8382B8;
      sub_20D565998();
      v12 = v1;
      v13 = sub_20D565968();
      v14 = sub_20D567EC8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21[0] = v17;
        *v15 = 138412546;
        *(v15 + 4) = v12;
        *v16 = v12;
        *(v15 + 12) = 2080;
        v18 = v12;
        *(v15 + 14) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D01E0, v21);
        _os_log_impl(&dword_20CEB6000, v13, v14, "%@:%s User tapped BACK button", v15, 0x16u);
        sub_20CEF928C(v16, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x20F31FC70](v17, -1, -1);
        MEMORY[0x20F31FC70](v15, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      v19 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
      swift_beginAccess();
      result = *&v12[v19];
      if (result)
      {
        return [result viewControllerDidGoBack_];
      }
    }
  }

  return result;
}

uint64_t sub_20D063E78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_20D563BA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D565988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v13 = qword_27C838280;
  sub_20D565998();
  v14 = sub_20D565968();
  v15 = sub_20D567EC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v4;
    v33 = v1;
    v17 = v16;
    v18 = v8;
    v19 = swift_slowAlloc();
    v38[0] = v19;
    *v17 = 136315138;
    *(v17 + 4) = sub_20CEE913C(0xD000000000000012, 0x800000020D5D7650, v38);
    _os_log_impl(&dword_20CEB6000, v14, v15, "%s Dismissed onboarding", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    MEMORY[0x20F31FC70](v20, -1, -1);
    v21 = v17;
    v1 = v33;
    v4 = v34;
    MEMORY[0x20F31FC70](v21, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_20D563AE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D16FC8], v5);
  v22 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v23 = *(v1 + v22);
  swift_getKeyPath();
  v37 = v23;
  sub_20D06BB38(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v24 = v23;
  sub_20D563908();

  swift_beginAccess();
  sub_20D5663C8();

  sub_20D563B88();
  v25 = sub_20D563B98();
  (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();

  v26 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  result = swift_beginAccess();
  v28 = *(v1 + v26);
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v35 = sub_20D567838();
    v36 = v30;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 15;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v31 = sub_20D567738();

    [v28 viewController:v1 didFinishWithConfigurationResults:v31];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20D0644D0(char a1)
{
  v2 = v1;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v14 = qword_27C838280;
  sub_20D565998();
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v48 = v2;
    v49 = v5;
    v18 = v17;
    v19 = v10;
    v20 = v7;
    v21 = v4;
    v22 = swift_slowAlloc();
    v50 = v22;
    *v18 = 136315394;
    *(v18 + 4) = sub_20CEE913C(0xD000000000000020, 0x800000020D5D7620, &v50);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1 & 1;
    _os_log_impl(&dword_20CEB6000, v15, v16, "%s value: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v23 = v22;
    v4 = v21;
    v7 = v20;
    v10 = v19;
    MEMORY[0x20F31FC70](v23, -1, -1);
    v24 = v18;
    v2 = v48;
    v5 = v49;
    MEMORY[0x20F31FC70](v24, -1, -1);
  }

  v25 = *(v5 + 8);
  v25(v13, v4);
  if (v2[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_isPasswordlessEnabled] != (a1 & 1))
  {
    v2[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_isPasswordlessEnabled] = a1 & 1;
    v26 = v14;
    if (a1)
    {
      sub_20D565998();
      v27 = sub_20D565968();
      v28 = sub_20D567EC8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v4;
        v30 = swift_slowAlloc();
        v31 = v2;
        v32 = swift_slowAlloc();
        v50 = v32;
        *v30 = 136315138;
        *(v30 + 4) = sub_20CEE913C(0xD000000000000020, 0x800000020D5D7620, &v50);
        _os_log_impl(&dword_20CEB6000, v27, v28, "%s Showing Login with Password button", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v33 = v32;
        v2 = v31;
        MEMORY[0x20F31FC70](v33, -1, -1);
        MEMORY[0x20F31FC70](v30, -1, -1);

        v34 = v10;
        v35 = v29;
      }

      else
      {

        v34 = v10;
        v35 = v4;
      }

      v25(v34, v35);
      v45 = &selRef_addButton_;
    }

    else
    {
      sub_20D565998();
      v36 = sub_20D565968();
      v37 = sub_20D567EC8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v4;
        v39 = swift_slowAlloc();
        v40 = v2;
        v41 = swift_slowAlloc();
        v50 = v41;
        *v39 = 136315138;
        *(v39 + 4) = sub_20CEE913C(0xD000000000000020, 0x800000020D5D7620, &v50);
        _os_log_impl(&dword_20CEB6000, v36, v37, "%s Login with Password button NOT shown.", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v42 = v41;
        v2 = v40;
        MEMORY[0x20F31FC70](v42, -1, -1);
        MEMORY[0x20F31FC70](v39, -1, -1);

        v43 = v7;
        v44 = v38;
      }

      else
      {

        v43 = v7;
        v44 = v4;
      }

      v25(v43, v44);
      v45 = &selRef_removeButton_;
    }

    v46 = [v2 buttonTray];
    [v46 *v45];
  }
}

void sub_20D0649B8()
{
  v1 = v0;
  v2 = sub_20D565988();
  v60 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v14 = qword_27C838280;
  sub_20D565998();
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v59 = v4;
    v18 = v10;
    v19 = v7;
    v20 = v2;
    v21 = v1;
    v22 = v17;
    v23 = swift_slowAlloc();
    v63[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5D7600, v63);
    _os_log_impl(&dword_20CEB6000, v15, v16, "%s Continue button tapped", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x20F31FC70](v23, -1, -1);
    v24 = v22;
    v1 = v21;
    v2 = v20;
    v7 = v19;
    v10 = v18;
    v4 = v59;
    MEMORY[0x20F31FC70](v24, -1, -1);
  }

  v25 = *(v60 + 8);
  v25(v13, v2);
  if (*(v1 + OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_errorFetchingUtilities))
  {
    v26 = v14;
    sub_20D565998();
    v27 = sub_20D565968();
    v28 = sub_20D567EA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v2;
      v31 = v1;
      v32 = swift_slowAlloc();
      v63[0] = v32;
      *v29 = 136315138;
      *(v29 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5D7600, v63);
      _os_log_impl(&dword_20CEB6000, v27, v28, "%s Navigating to error screen", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v33 = v32;
      v1 = v31;
      MEMORY[0x20F31FC70](v33, -1, -1);
      MEMORY[0x20F31FC70](v29, -1, -1);

      v34 = v4;
      v35 = v30;
    }

    else
    {

      v34 = v4;
      v35 = v2;
    }

    v25(v34, v35);
    v47 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
    swift_beginAccess();
    v48 = *(v1 + v47);
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20D5BC410;
      v61 = sub_20D567838();
      v62 = v50;
      swift_unknownObjectRetain();
      sub_20D5687F8();
      *(inited + 96) = MEMORY[0x277D83E88];
      v51 = 13;
LABEL_19:
      *(inited + 72) = v51;
      sub_20CEF49C8(inited);
      swift_setDeallocating();
      sub_20CEF928C(inited + 32, &qword_27C81D8D0);
      v58 = sub_20D567738();

      [v48 viewController:v1 didFinishWithConfigurationResults:v58];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v36 = *(v1 + OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_isPasswordlessEnabled);
    v37 = v14;
    if (v36 == 1)
    {
      sub_20D565998();
      v38 = sub_20D565968();
      v39 = sub_20D567EC8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = v2;
        v42 = v1;
        v43 = swift_slowAlloc();
        v63[0] = v43;
        *v40 = 136315138;
        *(v40 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5D7600, v63);
        _os_log_impl(&dword_20CEB6000, v38, v39, "%s Continue to TAF", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v44 = v43;
        v1 = v42;
        MEMORY[0x20F31FC70](v44, -1, -1);
        MEMORY[0x20F31FC70](v40, -1, -1);

        v45 = v10;
        v46 = v41;
      }

      else
      {

        v45 = v10;
        v46 = v2;
      }

      v25(v45, v46);
      v56 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
      swift_beginAccess();
      v48 = *(v1 + v56);
      if (v48)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20D5BC410;
        v61 = sub_20D567838();
        v62 = v57;
        swift_unknownObjectRetain();
        sub_20D5687F8();
        *(inited + 96) = MEMORY[0x277D83E88];
        v51 = 2;
        goto LABEL_19;
      }
    }

    else
    {
      sub_20D565998();
      v52 = sub_20D565968();
      v53 = sub_20D567EC8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v63[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5D7600, v63);
        _os_log_impl(&dword_20CEB6000, v52, v53, "%s Continue to OAuth", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x20F31FC70](v55, -1, -1);
        MEMORY[0x20F31FC70](v54, -1, -1);
      }

      v25(v7, v2);
      sub_20D06518C();
    }
  }
}

void sub_20D06518C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v9 = qword_27C838280;
  sub_20D565998();
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D75E0, v32);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s Presenting OAuth view controller", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v14 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v15 = *&v1[v14];
  v16 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  swift_beginAccess();
  if (*&v15[v16] != 2)
  {
    KeyPath = swift_getKeyPath();
    v30 = v4;
    MEMORY[0x28223BE20](KeyPath);
    *(&v29 - 2) = v15;
    *(&v29 - 1) = 2;
    v31 = v15;
    sub_20D06BB38(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    v18 = v15;
    sub_20D5638F8();

    v4 = v30;
  }

  v19 = *&v1[v14];
  swift_getKeyPath();
  v31 = v19;
  sub_20D06BB38(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v20 = v19;
  sub_20D563908();

  v21 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v22 = *&v20[v21];
  v23 = v22;

  if (v22)
  {
    sub_20D564BF8();
  }

  else
  {
    v24 = sub_20D5636B8();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  }

  v25 = objc_allocWithZone(type metadata accessor for OAuthLoginManager());
  v26 = v1;
  v27 = sub_20CF349B0(v4, v26, v25);
  v28 = v26;
  sub_20CFD47A4(v28, v27, v28);
}

uint64_t sub_20D065674(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 13;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F98];
  v13 = sub_20D567C58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_20D567C18();
  v14 = a3;
  sub_20D5663C8();
  v15 = a4;

  v16 = sub_20D567C08();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a3;
  v17[5] = v15;
  v17[6] = v12;
  v17[7] = v11;
  v17[8] = a1;
  v17[9] = a2;
  sub_20CF18960(0, 0, v10, &unk_20D5C6F10, v17);
}

uint64_t sub_20D065844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a8;
  v8[36] = v14;
  v8[33] = a6;
  v8[34] = a7;
  v8[31] = a4;
  v8[32] = a5;
  v9 = sub_20D565988();
  v8[37] = v9;
  v8[38] = *(v9 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = sub_20D567C18();
  v8[44] = sub_20D567C08();
  v11 = sub_20D567BA8();
  v8[45] = v11;
  v8[46] = v10;

  return MEMORY[0x2822009F8](sub_20D065970, v11, v10);
}

uint64_t sub_20D065970()
{
  v52 = v0;
  v1 = v0[31];
  if (v1)
  {
    v0[26] = v1;
    v2 = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    type metadata accessor for ASWebAuthenticationSessionError(0);
    if (swift_dynamicCast())
    {
      v4 = v0[27];
      v0[47] = v4;
      v0[29] = v4;
      sub_20D06BB38(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);
      sub_20D563598();
      if (v0[30] == 1)
      {
        if (qword_27C81A2D8 != -1)
        {
          swift_once();
        }

        v5 = qword_27C838280;
        sub_20D565998();
        v6 = sub_20D565968();
        v7 = sub_20D567EC8();
        v8 = os_log_type_enabled(v6, v7);
        v9 = v0[42];
        v10 = v0[37];
        v11 = v0[38];
        if (v8)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v51[0] = v13;
          *v12 = 136315138;
          *(v12 + 4) = sub_20CEE913C(0x75414F7472617473, 0xEF2928534F696874, v51);
          _os_log_impl(&dword_20CEB6000, v6, v7, "%s Canceled OAuth session", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x20F31FC70](v13, -1, -1);
          MEMORY[0x20F31FC70](v12, -1, -1);
        }

        (*(v11 + 8))(v9, v10);
        v14 = sub_20D066034;
        goto LABEL_22;
      }
    }

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v28 = qword_27C838280;
    sub_20D565998();
    v29 = v1;
    v30 = sub_20D565968();
    v31 = sub_20D567EA8();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[41];
    v34 = v0[37];
    v35 = v0[38];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_20CEE913C(0x75414F7472617473, 0xEF2928534F696874, v51);
      *(v36 + 12) = 2112;
      v39 = v1;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_20CEB6000, v30, v31, "%s OAuth Session failed. Error: %@", v36, 0x16u);
      sub_20CEF928C(v37, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x20F31FC70](v38, -1, -1);
      MEMORY[0x20F31FC70](v36, -1, -1);
    }

    (*(v35 + 8))(v33, v34);
    v41 = sub_20D567838();
    v43 = v42;
    swift_getErrorValue();
    v45 = v0[20];
    v44 = v0[21];
    v0[10] = v44;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, v45, v44);
    swift_beginAccess();
    sub_20CED9A44((v0 + 7), v41, v43);
    swift_endAccess();
    v14 = sub_20D0661D0;
  }

  else
  {
    v15 = v0[36];
    if (v15)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v16 = qword_27C838280;
      v0[50] = qword_27C838280;
      v17 = v16;
      sub_20D565998();
      sub_20D5663C8();
      v18 = sub_20D565968();
      v19 = sub_20D567EC8();

      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[40];
      v22 = v0[37];
      v23 = v0[38];
      if (v20)
      {
        v24 = v0[35];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v51[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_20CEE913C(0x75414F7472617473, 0xEF2928534F696874, v51);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_20CEE913C(v24, v15, v51);
        _os_log_impl(&dword_20CEB6000, v18, v19, "%s Found authCode: %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v26, -1, -1);
        MEMORY[0x20F31FC70](v25, -1, -1);
      }

      v27 = *(v23 + 8);
      v27(v21, v22);
      v0[51] = v27;
      v14 = sub_20D0663A8;
    }

    else
    {
      v47 = sub_20D567838();
      v49 = v48;
      v51[3] = &type metadata for UtilityOnboardingError;
      LOBYTE(v51[0]) = 2;
      swift_beginAccess();
      sub_20CED9A44(v51, v47, v49);
      swift_endAccess();
      v0[56] = 0;
      v14 = sub_20D066800;
    }
  }

LABEL_22:

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_20D066034()
{
  *(v0 + 384) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0660C0, v2, v1);
}

uint64_t sub_20D0660C0()
{

  sub_20D066E90();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](sub_20D06612C, v1, v2);
}

uint64_t sub_20D06612C()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0661D0()
{
  *(v0 + 392) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D06625C, v2, v1);
}

uint64_t sub_20D06625C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  sub_20D066C04(v2 + 16, (v1 + 16), v3);
  v4 = v0[45];
  v5 = v0[46];

  return MEMORY[0x2822009F8](sub_20D066310, v4, v5);
}

uint64_t sub_20D066310()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0663A8()
{
  *(v0 + 416) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D066434, v2, v1);
}

uint64_t sub_20D066434()
{

  sub_20D066D68();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x2822009F8](sub_20D0664A0, v1, v2);
}

uint64_t sub_20D0664A0()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[53] = v4;
  v4;
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_20D06657C;
  v6 = v0[35];

  return sub_20CEE310C(v6, v1);
}

uint64_t sub_20D06657C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_20D0669D4;
  }

  else
  {
    v5 = sub_20D0666D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D0666D0()
{
  v1 = v0[34];
  v2 = sub_20D564B68();
  v0[5] = v2;
  v0[6] = sub_20D06BB38(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v2);
  LOBYTE(v2) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2)
  {
    v4 = 7;
  }

  else
  {
    v4 = 17;
  }

  swift_beginAccess();
  *(v1 + 16) = v4;
  v0[56] = v0[55];

  return MEMORY[0x2822009F8](sub_20D066800, 0, 0);
}

uint64_t sub_20D066800()
{
  *(v0 + 456) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D06688C, v2, v1);
}

void sub_20D06688C()
{
  v1 = v0[56];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  sub_20D066C04(v3 + 16, (v2 + 16), v4);
  if (v1)
  {
  }

  else
  {
    v5 = v0[45];
    v6 = v0[46];

    MEMORY[0x2822009F8](sub_20D066948, v5, v6);
  }
}

uint64_t sub_20D066948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0669D4()
{
  v19 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 400);
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 440);
  v8 = *(v0 + 408);
  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  if (v6)
  {
    v17 = *(v0 + 408);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20CEE913C(0x75414F7472617473, 0xEF2928534F696874, &v18);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Couldn't generate tokens from OAuth. Error: %@", v11, 0x16u);
    sub_20CEF928C(v12, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);

    v17(v9, v10);
  }

  else
  {

    v8(v9, v10);
  }

  *(v0 + 448) = 0;

  return MEMORY[0x2822009F8](sub_20D066800, 0, 0);
}

uint64_t sub_20D066C04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_20D567838();
  v7 = v6;
  swift_beginAccess();
  v8 = *a2;
  v14[3] = MEMORY[0x277D83E88];
  v14[0] = v8;
  swift_beginAccess();
  sub_20CED9A44(v14, v5, v7);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  result = swift_beginAccess();
  v11 = *(a3 + v9);
  if (v11)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v12 = sub_20D5663C8();
    sub_20CF27E80(v12);

    v13 = sub_20D567738();

    [v11 viewController:a3 didFinishWithConfigurationResults:v13];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20D066D68()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];

  [*&v0[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_continueOnboardingButton] setEnabled_];
  [*&v0[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_accountLoginButton] setEnabled_];
  v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v2 setRightBarButtonItem_];

  [v4 startAnimating];
}

void sub_20D066E90()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];

  [*&v0[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_continueOnboardingButton] setEnabled_];
  [*&v0[OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_accountLoginButton] setEnabled_];
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItem];

  if (v3)
  {
    v6 = [v3 customView];

    if (v6)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        [v4 stopAnimating];
        [v5 setHidesWhenStopped_];
      }
    }
  }
}

id UtilityOnboardingSetupViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

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

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingSetupViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingSetupViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingSetupViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D06737C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = sub_20D566D38();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820200);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820208);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v25 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820210);
  MEMORY[0x28223BE20](v27);
  v11 = &v25 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820218);
  MEMORY[0x28223BE20](v31);
  v26 = &v25 - v12;
  v39 = *(v1 + 32);
  v40 = *(v1 + 48);
  v37 = *(v1 + 32);
  v38 = *(v1 + 48);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820220);
  sub_20D567468();
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820228);
  sub_20CF156D0(&qword_27C820230, &qword_27C820228);
  sub_20D567078();
  v13 = sub_20CF156D0(&qword_27C820238, &qword_27C820200);
  sub_20D567208();
  (*(v5 + 8))(v7, v4);
  sub_20D566D28();
  *&v36 = v4;
  *(&v36 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v28;
  v15 = v32;
  sub_20D567288();
  (*(v33 + 8))(v3, v15);
  (*(v29 + 8))(v9, v14);
  *&v11[*(v27 + 36)] = 256;
  sub_20D06B038();
  v16 = v26;
  sub_20D5671E8();
  sub_20CEF928C(v11, &qword_27C820210);
  v17 = swift_allocObject();
  v18 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v1 + 64);
  *(v17 + 96) = *(v1 + 80);
  v19 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v19;
  v20 = (v16 + *(v31 + 36));
  *v20 = sub_20D06B190;
  v20[1] = v17;
  v20[2] = 0;
  v20[3] = 0;
  v37 = v39;
  v38 = v40;
  sub_20D06B198(v1, &v36);
  sub_20D567448();
  v37 = v36;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  *(v21 + 96) = *(v1 + 80);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  sub_20D06B198(v1, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
  sub_20D06B1D8();
  sub_20D06B2A0();
  sub_20D567258();

  return sub_20CEF928C(v16, &qword_27C820218);
}

uint64_t sub_20D0679A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820258);
  MEMORY[0x28223BE20](v42);
  v41 = &v40 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820260);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820268);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820270);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *(a1 + 64);
  v48[0] = *a1;
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820278);
  sub_20D567448();
  v49 = sub_20D06802C(v49, v16);
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  sub_20D06B198(a1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820288);
  sub_20CF156D0(&qword_27C820290, &qword_27C820280);
  sub_20D06B354();
  sub_20D06BB38(&qword_27C8202B8, type metadata accessor for Utility);
  sub_20D567548();
  v23 = objc_opt_self();
  v24 = [v23 tertiarySystemFillColor];
  *&v48[0] = sub_20D5672E8();
  *&v15[*(v11 + 44)] = sub_20D5674C8();
  if (*(v16 + 16) < 4uLL || (v48[0] = *(a1 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58), sub_20D567448(), (v49 & 1) != 0))
  {
    v25 = 1;
  }

  else
  {
    v26 = swift_allocObject();
    v27 = *(a1 + 48);
    *(v26 + 48) = *(a1 + 32);
    *(v26 + 64) = v27;
    *(v26 + 80) = *(a1 + 64);
    *(v26 + 96) = *(a1 + 80);
    v28 = *(a1 + 16);
    *(v26 + 16) = *a1;
    *(v26 + 32) = v28;
    sub_20D06B198(a1, v48);
    v29 = v41;
    sub_20D567498();
    v30 = sub_20D567358();
    KeyPath = swift_getKeyPath();
    v32 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE30) + 36));
    *v32 = KeyPath;
    v32[1] = v30;
    v33 = [v23 tertiarySystemFillColor];
    *&v48[0] = sub_20D5672E8();
    *(v29 + *(v42 + 36)) = sub_20D5674C8();
    sub_20D06B500();
    v34 = v40;
    sub_20D567188();
    sub_20CEF928C(v29, &qword_27C820258);
    sub_20CF15584(v34, v9, &qword_27C820260);
    v25 = 0;
  }

  (*(v43 + 56))(v9, v25, 1, v45);
  v35 = v44;
  sub_20CEF9178(v15, v44, &qword_27C820270);
  v36 = v46;
  sub_20CEF9178(v9, v46, &qword_27C820268);
  v37 = v47;
  sub_20CEF9178(v35, v47, &qword_27C820270);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8202C0);
  sub_20CEF9178(v36, v37 + *(v38 + 48), &qword_27C820268);
  sub_20CEF928C(v9, &qword_27C820268);
  sub_20CEF928C(v15, &qword_27C820270);
  sub_20CEF928C(v36, &qword_27C820268);
  return sub_20CEF928C(v35, &qword_27C820270);
}

uint64_t sub_20D06802C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Utility();
    return a2;
  }

  return result;
}

uint64_t sub_20D0680C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for Utility();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RowView();
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CF26D1C(a1, v7);
  v11 = *a1;
  v19 = a1[1];
  v21 = *(a2 + 32);
  v22 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820220);
  sub_20D567468();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8202E0);
  MEMORY[0x20F31C980](&v21, v12);
  v13 = *(&v21 + 1);
  v14 = v21;

  if (v13)
  {
    if (v11 == v14 && v13 == v19)
    {

LABEL_6:
      LOBYTE(v13) = *(*(a2 + 64) + 16) != 1;
      goto LABEL_7;
    }

    v15 = sub_20D568BF8();

    LOBYTE(v13) = 0;
    if (v15)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8215C0);
  swift_storeEnumTagMultiPayload();
  sub_20D06B5B8(v7, v10 + v8[5], type metadata accessor for Utility);
  *(v10 + v8[6]) = v13;
  *(v10 + v8[7]) = 0x4042800000000000;
  v16 = *(*(a2 + 64) + 16) != 1;
  v17 = v20;
  sub_20D06B5B8(v10, v20, type metadata accessor for RowView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820288);
  *(v17 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_20D06834C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820278);
  return sub_20D567458();
}

uint64_t sub_20D0683E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D5677F8();
  v3 = HULocalizedString(v2);

  sub_20D567838();
  sub_20CEF44D8();
  result = sub_20D5670E8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_20D068484(uint64_t a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27C838280;
  sub_20D565998();
  sub_20D06B198(a1, &v22);
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  sub_20D06B31C(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20CEE913C(2036625250, 0xE400000000000000, &v20);
    *(v9 + 12) = 2080;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820220);
    sub_20D567448();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
    v11 = sub_20D567858();
    v13 = sub_20CEE913C(v11, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s ON APPEAR Selection %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = *(a1 + 64);
  if (*(v14 + 16))
  {
    v15 = *(type metadata accessor for Utility() - 8);
    v16 = *(v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
    v17 = sub_20D5663C8();
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  *&v21 = v16;
  *(&v21 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820220);
  return sub_20D567458();
}

uint64_t sub_20D068790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = type metadata accessor for Utility();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v57 = &v55 - v8;
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - v10;
  v11 = sub_20D565988();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v56 = qword_27C838280;
  sub_20D565998();
  sub_20D06B198(a3, &v64);
  v17 = sub_20D565968();
  v18 = sub_20D567EC8();
  sub_20D06B31C(a3);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v55 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v61 = v12;
    v62 = v21;
    v22 = v11;
    v23 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_20CEE913C(2036625250, 0xE400000000000000, &v62);
    *(v20 + 12) = 2080;
    v64 = *(a3 + 32);
    v65 = *(a3 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820220);
    sub_20D567448();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
    v24 = sub_20D567858();
    v26 = sub_20CEE913C(v24, v25, &v62);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_20CEB6000, v17, v18, "%s Selection %s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v23;
    v11 = v22;
    v12 = v61;
    MEMORY[0x20F31FC70](v27, -1, -1);
    v28 = v20;
    v4 = v55;
    MEMORY[0x20F31FC70](v28, -1, -1);
  }

  v29 = *(v12 + 8);
  v29(v16, v11);
  v64 = *(a3 + 32);
  v65 = *(a3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820220);
  result = sub_20D567448();
  v31 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    v55 = v11;
    v32 = v63;
    sub_20D5663C8();
    sub_20CED4B64(v32, v31);
    v33 = *(a3 + 64);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v36 = *(v4 + 72);
      while (1)
      {
        sub_20CF26D1C(v35, v6);
        v37 = *v6 == v32 && v31 == v6[1];
        if (v37 || (sub_20D568BF8() & 1) != 0)
        {
          break;
        }

        sub_20CF26D80(v6);
        v35 += v36;
        if (!--v34)
        {
        }
      }

      v61 = v12;
      v38 = v57;
      sub_20D06B5B8(v6, v57, type metadata accessor for Utility);
      v39 = v59;
      sub_20D06B5B8(v38, v59, type metadata accessor for Utility);
      v40 = v58;
      v41 = *(v39 + *(v58 + 40));
      v42 = v41;
      sub_20CED4D04(v41);
      v43 = *(v39 + 48);
      v44 = v43;
      sub_20CED4EA4(v43);
      v45 = *(v39 + *(v40 + 36));
      v46 = v56;
      v47 = v60;
      sub_20D565998();
      sub_20D5663C8();
      v48 = sub_20D565968();
      v49 = sub_20D567EC8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v64 = v51;
        *v50 = 136315394;
        v52 = sub_20CEE913C(v32, v31, &v64);

        *(v50 + 4) = v52;
        *(v50 + 12) = 1024;
        *(v50 + 14) = v45;
        _os_log_impl(&dword_20CEB6000, v48, v49, "Passwordless method supported for utility %s? %{BOOL}d", v50, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x20F31FC70](v51, -1, -1);
        MEMORY[0x20F31FC70](v50, -1, -1);

        v53 = v60;
      }

      else
      {

        v53 = v47;
      }

      v29(v53, v55);
      v54 = *(a3 + 72);
      if (v54)
      {
        v54(v45);
      }

      return sub_20CF26D80(v39);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20D068D88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D566AE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8215C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20CEF9178(v2, &v14 - v9, &qword_27C8215C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D566938();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D567EB8();
    v13 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20D068FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a4;
  v57 = a5;
  v54 = a2;
  v55 = a3;
  v68 = a6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820330);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v52 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820338);
  MEMORY[0x28223BE20](v62);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v52 - v10;
  MEMORY[0x28223BE20](v11);
  v65 = &v52 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820340);
  MEMORY[0x28223BE20](v58);
  v14 = &v52 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820348);
  MEMORY[0x28223BE20](v52);
  v16 = &v52 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820350);
  MEMORY[0x28223BE20](v53);
  v18 = &v52 - v17;
  v19 = sub_20D566938();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820358);
  MEMORY[0x28223BE20](v26 - 8);
  v60 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v59 = &v52 - v29;
  v30 = a1;
  sub_20D068D88(v25);
  (*(v20 + 104))(v22, *MEMORY[0x277CDF988], v19);
  LOBYTE(a1) = sub_20D566928();
  v31 = *(v20 + 8);
  v31(v22, v19);
  v31(v25, v19);
  if (a1)
  {
    *v18 = sub_20D566B38();
    *(v18 + 1) = 0x402C000000000000;
    v18[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203C0);
    v33 = v30;
    sub_20D0697CC(v30, v54, v55, v56, v57, &v18[*(v32 + 44)]);
    sub_20CEF9178(v18, v16, &qword_27C820350);
    swift_storeEnumTagMultiPayload();
    sub_20CF156D0(&qword_27C820368, &qword_27C820350);
    sub_20CF156D0(&qword_27C820370, &qword_27C820340);
    v34 = v59;
    sub_20D566D18();
    v35 = v18;
    v36 = &qword_27C820350;
  }

  else
  {
    *v14 = sub_20D566BA8();
    *(v14 + 1) = 0x4014000000000000;
    v14[16] = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820360);
    v33 = v30;
    sub_20D069F2C(v30, v54, v55, v56, v57, &v14[*(v37 + 44)]);
    sub_20CEF9178(v14, v16, &qword_27C820340);
    swift_storeEnumTagMultiPayload();
    sub_20CF156D0(&qword_27C820368, &qword_27C820350);
    sub_20CF156D0(&qword_27C820370, &qword_27C820340);
    v34 = v59;
    sub_20D566D18();
    v35 = v14;
    v36 = &qword_27C820340;
  }

  sub_20CEF928C(v35, v36);
  v38 = sub_20D5673C8();
  v39 = sub_20D567358();
  v40 = sub_20D567028();
  KeyPath = swift_getKeyPath();
  v69 = v38;
  v70 = v39;
  v71 = KeyPath;
  v72 = v40;
  sub_20D566FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820378);
  sub_20D06B888();
  v42 = v63;
  sub_20D567118();

  if (*(v33 + *(type metadata accessor for RowView() + 24)))
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = v61;
  (*(v64 + 32))(v61, v42, v66);
  *(v44 + *(v62 + 36)) = v43;
  v45 = v65;
  sub_20CEC3F18(v44, v65);
  v46 = v60;
  sub_20CEF9178(v34, v60, &qword_27C820358);
  v47 = v67;
  sub_20CEC3F88(v45, v67);
  v48 = v68;
  sub_20CEF9178(v46, v68, &qword_27C820358);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203B8);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_20CEC3F88(v47, v48 + *(v49 + 64));
  sub_20CEF928C(v45, &qword_27C820338);
  sub_20CEF928C(v34, &qword_27C820358);
  sub_20CEF928C(v47, &qword_27C820338);
  return sub_20CEF928C(v46, &qword_27C820358);
}

uint64_t sub_20D0697CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v41 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203C8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for RowView();
  v18 = a1 + *(v17 + 20);
  v19 = type metadata accessor for Utility();
  sub_20CEF9178(v18 + *(v19 + 32), v9, &unk_27C81CDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203D0);
  sub_20D06B9F8();
  sub_20D566748();
  v20 = *(a1 + *(v17 + 28)) * 0.225;
  v21 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820408) + 36)];
  v22 = *(sub_20D566978() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_20D566B58();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = v20;
  v21[1] = v20;
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDF0) + 36)) = 256;
  sub_20D5675E8();
  sub_20D566848();
  v25 = &v16[*(v11 + 44)];
  v26 = *&v42[11];
  *v25 = *&v42[9];
  *(v25 + 1) = v26;
  *(v25 + 2) = *&v42[13];
  v27 = sub_20D566BA8();
  LOBYTE(v46[0]) = 0;
  sub_20D069BCC(v37, v38, v39, v40, v43);
  *(v42 + 7) = v43[0];
  *(&v42[2] + 7) = v43[1];
  *(&v42[4] + 7) = v43[2];
  *(&v42[6] + 7) = v43[3];
  LOBYTE(a1) = v46[0];
  sub_20CEF9178(v16, v13, &qword_27C8203C8);
  v28 = v41;
  sub_20CEF9178(v13, v41, &qword_27C8203C8);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820418) + 48);
  *&v44 = v27;
  *(&v44 + 1) = 0x4014000000000000;
  v45[0] = a1;
  *&v45[1] = *v42;
  *&v45[17] = *&v42[2];
  *&v45[33] = *&v42[4];
  *&v45[49] = *&v42[6];
  v30 = *(&v42[7] + 7);
  *&v45[64] = *(&v42[7] + 7);
  v31 = *v45;
  *v29 = v44;
  *(v29 + 16) = v31;
  v32 = *&v45[16];
  v33 = *&v45[32];
  v34 = *&v45[48];
  *(v29 + 80) = v30;
  *(v29 + 48) = v33;
  *(v29 + 64) = v34;
  *(v29 + 32) = v32;
  sub_20CEF9178(&v44, v46, &qword_27C820420);
  sub_20CEF928C(v16, &qword_27C8203C8);
  v46[0] = v27;
  v46[1] = 0x4014000000000000;
  v47 = a1;
  v49 = *&v42[2];
  v50 = *&v42[4];
  *v51 = *&v42[6];
  *&v51[15] = *(&v42[7] + 7);
  v48 = *v42;
  sub_20CEF928C(v46, &qword_27C820420);
  return sub_20CEF928C(v13, &qword_27C8203C8);
}

uint64_t sub_20D069BCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_20CEF44D8();
  sub_20D5663C8();
  v6 = sub_20D5670E8();
  v8 = v7;
  v10 = v9;
  sub_20D566F98();
  v11 = sub_20D5670C8();
  v13 = v12;
  v15 = v14;

  sub_20CF13F34(v6, v8, v10 & 1);

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  sub_20D5672E8();
  v50 = sub_20D5670B8();
  v19 = v18;
  v49 = v20;
  v22 = v21;
  sub_20CF13F34(v11, v13, v15 & 1);

  if (a1 == a3 && a2 == a4 || (sub_20D568BF8() & 1) != 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    sub_20D5663C8();
    v27 = sub_20D5670E8();
    v46 = v16;
    v29 = v28;
    v31 = v30;
    sub_20D567038();
    v32 = sub_20D5670C8();
    v48 = v22;
    v34 = v33;
    v36 = v35;

    sub_20CF13F34(v27, v29, v31 & 1);

    v37 = [v46 secondaryLabelColor];
    sub_20D5672E8();
    v23 = sub_20D5670B8();
    v24 = v38;
    v40 = v39;
    v26 = v41;
    v42 = v34;
    v22 = v48;
    sub_20CF13F34(v32, v42, v36 & 1);

    v25 = v40 & 1;
    sub_20CF14B58(v23, v24, v40 & 1);
    sub_20D5663C8();
  }

  sub_20CF14B58(v50, v19, v49 & 1);
  sub_20D5663C8();
  sub_20D05ABC8(v23, v24, v25, v26);
  sub_20D05AC0C(v23, v24, v25, v26);
  *a5 = v50;
  *(a5 + 8) = v19;
  *(a5 + 16) = v49 & 1;
  *(a5 + 24) = v22;
  *(a5 + 32) = v23;
  *(a5 + 40) = v24;
  *(a5 + 48) = v25;
  *(a5 + 56) = v26;
  sub_20D05AC0C(v23, v24, v25, v26);
  sub_20CF13F34(v50, v19, v49 & 1);
}

uint64_t sub_20D069F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820428);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v41[-v16];
  *v17 = sub_20D566B38();
  *(v17 + 1) = 0x402C000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820430);
  sub_20D06A260(a1, a2, a3, &v17[*(v18 + 44)]);
  if (a2 == a4 && a3 == a5 || (sub_20D568BF8() & 1) != 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v45 = a4;
    v46 = a5;
    sub_20CEF44D8();
    sub_20D5663C8();
    v23 = sub_20D5670E8();
    v25 = v24;
    v27 = v26;
    sub_20D567038();
    v28 = sub_20D5670C8();
    v43 = v29;
    v44 = a6;
    v31 = v30;

    sub_20CF13F34(v23, v25, v27 & 1);

    v32 = [objc_opt_self() secondaryLabelColor];
    v45 = sub_20D5672E8();
    v33 = v31;
    v34 = v43;
    v19 = sub_20D5670B8();
    v20 = v35;
    v42 = v36;
    v22 = v37;
    v38 = v34;
    a6 = v44;
    sub_20CF13F34(v28, v38, v33 & 1);

    v21 = v42 & 1;
    sub_20CF14B58(v19, v20, v42 & 1);
    sub_20D5663C8();
  }

  sub_20CEF9178(v17, v14, &qword_27C820428);
  sub_20CEF9178(v14, a6, &qword_27C820428);
  v39 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820438) + 48));
  sub_20D05ABC8(v19, v20, v21, v22);
  sub_20D05AC0C(v19, v20, v21, v22);
  *v39 = v19;
  v39[1] = v20;
  v39[2] = v21;
  v39[3] = v22;
  sub_20CEF928C(v17, &qword_27C820428);
  sub_20D05AC0C(v19, v20, v21, v22);
  return sub_20CEF928C(v14, &qword_27C820428);
}

uint64_t sub_20D06A260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203C8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v45 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for RowView();
  v17 = a1 + *(v16 + 20);
  v18 = type metadata accessor for Utility();
  sub_20CEF9178(v17 + *(v18 + 32), v9, &unk_27C81CDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203D0);
  sub_20D06B9F8();
  sub_20D566748();
  v19 = *(a1 + *(v16 + 28)) * 0.225;
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820408) + 36)];
  v21 = *(sub_20D566978() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_20D566B58();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDF0) + 36)) = 256;
  sub_20D5675E8();
  sub_20D566848();
  v24 = &v15[*(v11 + 44)];
  v25 = v50;
  *v24 = v49;
  *(v24 + 1) = v25;
  *(v24 + 2) = v51;
  v47 = a2;
  v48 = a3;
  sub_20CEF44D8();
  sub_20D5663C8();
  v26 = sub_20D5670E8();
  v28 = v27;
  LOBYTE(v21) = v29;
  sub_20D566F98();
  v30 = sub_20D5670C8();
  v32 = v31;
  LOBYTE(v9) = v33;

  sub_20CF13F34(v26, v28, v21 & 1);

  v34 = [objc_opt_self() labelColor];
  v47 = sub_20D5672E8();
  v35 = sub_20D5670B8();
  v37 = v36;
  LOBYTE(v17) = v38;
  v40 = v39;
  sub_20CF13F34(v30, v32, v9 & 1);

  v41 = v45;
  sub_20CEF9178(v15, v45, &qword_27C8203C8);
  v42 = v46;
  sub_20CEF9178(v41, v46, &qword_27C8203C8);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820440) + 48);
  *v43 = v35;
  *(v43 + 8) = v37;
  *(v43 + 16) = v17 & 1;
  *(v43 + 24) = v40;
  sub_20CF14B58(v35, v37, v17 & 1);
  sub_20D5663C8();
  sub_20CEF928C(v15, &qword_27C8203C8);
  sub_20CF13F34(v35, v37, v17 & 1);

  return sub_20CEF928C(v41, &qword_27C8203C8);
}

uint64_t sub_20D06A6BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D5673D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8203E8);
  v12[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  if (sub_20D566908())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v9 = sub_20D567418();
    (*(v3 + 8))(v5, v2);
    v12[1] = v9;
    v12[2] = 0;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8A0);
    sub_20CF13EB0();
    sub_20D567188();

    sub_20CF15584(v8, a1, &qword_27C8203E8);
    return (*(v12[0] + 56))(a1, 0, 1, v6);
  }

  else
  {
    v11 = *(v12[0] + 56);

    return v11(a1, 1, 1, v6);
  }
}

uint64_t sub_20D06A960(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820318);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = (v1 + *(a1 + 20));
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  *v5 = sub_20D566B38();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820320);
  sub_20D068FD4(v1, v7, v8, v9, v10, &v5[*(v11 + 44)]);
  sub_20CF156D0(&qword_27C820328, &qword_27C820318);
  sub_20D567188();
  return sub_20CEF928C(v5, &qword_27C820318);
}

uint64_t sub_20D06AAC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D566AB8();
  *a1 = result;
  return result;
}

id sub_20D06AB18()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v8 = result;
    v9 = [result window];

    result = v9;
    if (!v9)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v10 = qword_27C838280;
      sub_20D565998();
      v11 = sub_20D565968();
      v12 = sub_20D567EC8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_20CEE913C(0xD000000000000018, 0x800000020D5CEE80, &v16);
        _os_log_impl(&dword_20CEB6000, v11, v12, "%s OAuth presentation anchor with self.view.window == nil", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x20F31FC70](v14, -1, -1);
        MEMORY[0x20F31FC70](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return [objc_allocWithZone(MEMORY[0x277D75DA0]) init];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20D06AF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D06AFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D06B038()
{
  result = qword_27C820240;
  if (!qword_27C820240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820208);
    sub_20D566D38();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820200);
    sub_20CF156D0(&qword_27C820238, &qword_27C820200);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820240);
  }

  return result;
}

unint64_t sub_20D06B1D8()
{
  result = qword_27C820248;
  if (!qword_27C820248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820210);
    sub_20D06B038();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820248);
  }

  return result;
}

unint64_t sub_20D06B2A0()
{
  result = qword_27C820250;
  if (!qword_27C820250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820250);
  }

  return result;
}

unint64_t sub_20D06B354()
{
  result = qword_27C820298;
  if (!qword_27C820298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820288);
    sub_20D06BB38(&unk_27C8202A0, type metadata accessor for RowView);
    sub_20CF156D0(&qword_27C81D628, &qword_27C8202B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820298);
  }

  return result;
}

uint64_t type metadata accessor for RowView()
{
  result = qword_27C820300;
  if (!qword_27C820300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_20D06B500()
{
  result = qword_27C8202C8;
  if (!qword_27C8202C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820258);
    sub_20CFE6144();
    sub_20CF156D0(&qword_27C820090, &unk_27C8202D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8202C8);
  }

  return result;
}

uint64_t sub_20D06B5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D06B620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20CEF5FFC;

  return sub_20D065844(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_20D06B734()
{
  sub_20CF1589C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Utility();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20D06B7EC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20D5678E8();

    return sub_20D567998();
  }

  return result;
}

unint64_t sub_20D06B888()
{
  result = qword_27C820380;
  if (!qword_27C820380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820378);
    sub_20D06B940();
    sub_20CF156D0(&qword_27C81CCC8, &qword_27C8203B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820380);
  }

  return result;
}

unint64_t sub_20D06B940()
{
  result = qword_27C820388;
  if (!qword_27C820388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C820390);
    sub_20CF156D0(&qword_27C81E110, &unk_27C8203A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820388);
  }

  return result;
}

unint64_t sub_20D06B9F8()
{
  result = qword_27C8203D8;
  if (!qword_27C8203D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8203D0);
    sub_20D06BA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8203D8);
  }

  return result;
}

unint64_t sub_20D06BA7C()
{
  result = qword_27C8203E0;
  if (!qword_27C8203E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8203E8);
    sub_20CF13EB0();
    sub_20D06BB38(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8203E0);
  }

  return result;
}

uint64_t sub_20D06BB38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20D06BB80()
{
  result = qword_27C820448;
  if (!qword_27C820448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C820450);
    sub_20CF156D0(&qword_27C820328, &qword_27C820318);
    sub_20D06BB38(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820448);
  }

  return result;
}

uint64_t DetailsHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = sub_20D5666F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  v7[qword_27C820460] = 0;
  *&v7[qword_27C820468] = 0;
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_20D566C08();
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t sub_20D06BD80(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820470);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = sub_20D5644D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D9D8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_20D5666F8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v49 = &v42 - v23;
  sub_20CF76C2C(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20CEF928C(v9, &qword_27C820470);
    (*(v20 + 56))(v18, 1, 1, v19);
    return sub_20CEF928C(v18, &qword_27C81D9D8);
  }

  (*(v11 + 32))(v15, v9, v10);
  v54 = &unk_28251B0C8;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (v24)
  {
    v25 = v24;
    v45 = a4;
    v46 = v15;
    v44 = a3;
    v26 = objc_opt_self();
    v27 = a1;
    v28 = [v26 sharedDispatcher];
    v29 = [v28 home];

    if (v29)
    {
      v43 = v27;
      v30 = v29;
      v42 = v30;
      v31 = [v25 accessories];
      sub_20CF76A34();
      sub_20D06C5BC(&qword_27C820660, sub_20CF76A34);
      v32 = sub_20D567D08();

      v33 = sub_20CFAF940(v32);

      v34 = type metadata accessor for AccessoryDetailsHelper(0);
      v35 = objc_allocWithZone(v34);
      v36 = sub_20D04EE74(v25, v30, v33);
      v37 = v46;
      (*(v11 + 16))(v47, v46, v10);
      v52 = v34;
      v53 = sub_20D06C5BC(&qword_27C81D9E0, type metadata accessor for AccessoryDetailsHelper);
      v51 = v36;
      v38 = v48;
      sub_20CEC81F4(v44);
      sub_20D5666E8();

      (*(v11 + 8))(v37, v10);
      v39 = 0;
      goto LABEL_9;
    }

    (*(v11 + 8))(v46, v10);
  }

  else
  {
    (*(v11 + 8))(v15, v10);
  }

  v39 = 1;
LABEL_9:
  (*(v20 + 56))(v18, v39, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_20CEF928C(v18, &qword_27C81D9D8);
  }

  v41 = v49;
  (*(v20 + 32))(v49, v18, v19);
  (*(v20 + 16))(v50, v41, v19);
  sub_20D566C38();
  return (*(v20 + 8))(v41, v19);
}

void sub_20D06C358(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_20CF79684;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_20D06BD80(v10, a4, v8, v9);
  sub_20CEC8164(v8);
}

void sub_20D06C43C(uint64_t a1)
{
  *(a1 + qword_27C820460) = 0;
  *(a1 + qword_27C820468) = 0;
  sub_20D568A58();
  __break(1u);
}

uint64_t DetailsHostingController.init(rootView:)(uint64_t a1)
{
  v3 = sub_20D5666F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  *(v1 + qword_27C820460) = 0;
  *(v1 + qword_27C820468) = 0;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  v7 = sub_20D566C08();
  (*(v4 + 8))(a1, v3);
  return v7;
}

uint64_t sub_20D06C5BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D06C604(uint64_t a1)
{
  v2 = qword_27C820460;
  swift_beginAccess();
  return *(a1 + v2);
}

uint64_t sub_20D06C64C()
{
  v1 = qword_27C820460;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D06C690(uint64_t a1, uint64_t a2, char a3)
{
  v5 = qword_27C820460;
  result = swift_beginAccess();
  *(a1 + v5) = a3;
  return result;
}

uint64_t sub_20D06C6E4(char a1)
{
  v3 = qword_27C820460;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_20D06C794()
{
  swift_beginAccess();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_20D06C838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_27C820468;
  swift_beginAccess();
  *(a1 + v5) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20D06C8A0(uint64_t a1)
{
  v3 = qword_27C820468;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D06C8F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27C820468;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id DetailsHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailsHostingController()
{
  result = qword_27C820478;
  if (!qword_27C820478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_20D06CD48(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F31DD20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_20D06CE5C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_20D5643B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_20D06D030(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_20CEF0AC8(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_20D5686C8();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_20D567838();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_20CEF0AC8((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_20CFAE618(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_20CFAE618(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20D06D254(void *a1, uint64_t a2, void *a3)
{
  v41 = a3;
  v5 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (!v8)
  {
    return a1;
  }

  v36 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v9 = a2 + ((*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80));
  v39 = *(*(v36 - 8) + 72);
  while (1)
  {
    v10 = *v41;
    if (*(*v41 + 16) && (v11 = sub_20CEEDA88(v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v40 = v8;
    v15 = v7;
    v16 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v16;
    v18 = v42;
    *v16 = 0x8000000000000000;
    v20 = sub_20CEEDA88(v9);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_26;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v42;
        if (v19)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_20CF9D8D8();
        v27 = v42;
        if (v24)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_20CF9A1F8(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_20CEEDA88(v9);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_28;
      }

      v20 = v25;
      v27 = v42;
      if (v24)
      {
LABEL_15:
        *(v27[7] + 8 * v20) = v14;
        goto LABEL_19;
      }
    }

    v27[(v20 >> 6) + 8] |= 1 << v20;
    sub_20CF9F128(v9, v27[6] + v20 * v39, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    *(v27[7] + 8 * v20) = v14;
    v28 = v27[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_27;
    }

    v27[2] = v30;
LABEL_19:
    *v41 = v27;

    v7 = v15;
    sub_20CF9F128(v9, v15, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    *(v15 + *(v38 + 20)) = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_20CEE8B08(0, a1[2] + 1, 1, a1);
    }

    v31 = v40;
    v33 = a1[2];
    v32 = a1[3];
    if (v33 >= v32 >> 1)
    {
      a1 = sub_20CEE8B08(v32 > 1, v33 + 1, 1, a1);
    }

    a1[2] = v33 + 1;
    sub_20D072108(v7, a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    v9 += v39;
    v8 = v31 - 1;
    if (!v8)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t sub_20D06D5F0()
{
  v1 = v0 + qword_27C820498;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_20D06D63C(uint64_t a1, char a2)
{
  v5 = v2 + qword_27C820498;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_20D06D6FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27C8204A0;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_20D5663C8();

  sub_20D06E374();
  return sub_20D06DBB8();
}

uint64_t sub_20D06D7B4(uint64_t a1)
{
  v3 = qword_27C8204A0;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_20D06E374();
  return sub_20D06DBB8();
}

uint64_t (*sub_20D06D814(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D06D878;
}

uint64_t sub_20D06D878(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_20D06E374();
    return sub_20D06DBB8();
  }

  return result;
}

uint64_t sub_20D06D8B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27C8204A8;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20D06D960(uint64_t a1)
{
  v3 = qword_27C8204A8;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id CustomizedControlCenterModuleItemProvider.init(home:elementIDs:itemLimit:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = &v4[qword_27C820498];
  *v9 = 0;
  v9[8] = 1;
  v10 = qword_27C8204B0;
  *&v4[v10] = [objc_opt_self() weakToStrongObjectsMapTable];
  *&v4[qword_27C8204A8] = 0;
  v11 = qword_27C8204B8;
  v12 = MEMORY[0x277D84F90];
  *&v4[v11] = sub_20CEF503C(MEMORY[0x277D84F90]);
  *&v4[qword_27C8204C0] = v12;
  *&v4[qword_27C820490] = a1;
  *&v4[qword_27C8204A0] = a2;
  swift_beginAccess();
  *v9 = a3;
  v9[8] = a4 & 1;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CustomizedControlCenterModuleItemProvider(0);
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_20D06E374();
  sub_20D06DBB8();

  return v14;
}

uint64_t sub_20D06DBB8()
{
  v1 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v46 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v47 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820570);
  MEMORY[0x28223BE20](v45);
  v44 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (v41 - v8);
  v10 = qword_27C8204C0;
  v11 = *(v0 + qword_27C8204C0);
  if (!*(v11 + 16))
  {
    sub_20D06E374();
    v11 = *(v0 + v10);
  }

  v42 = v0;
  v48 = MEMORY[0x277D84F98];
  sub_20D5663C8();
  v12 = MEMORY[0x277D84F90];
  v13 = sub_20D06D254(MEMORY[0x277D84F90], v11, &v48);

  v14 = sub_20CEF503C(v12);
  v15 = v13;
  v43 = *(v13 + 16);
  if (v43)
  {
    v41[1] = v1;
    v16 = 0;
    while (v16 < *(v15 + 16))
    {
      v17 = v45;
      v18 = *(v46 + 72);
      v19 = v15;
      v20 = v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v18 * v16;
      v21 = *(v45 + 48);
      *v9 = v16;
      sub_20CF9F128(v20, v9 + v21, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      v22 = v44;
      sub_20D072170(v9, v44);
      v23 = *v22;
      sub_20D072108(v22 + *(v17 + 48), v5, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      v24 = v5;
      v25 = v47;
      sub_20CF9F128(v5, v47, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v14;
      v28 = sub_20CEEDA04(v25);
      v29 = v14[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_19;
      }

      v32 = v27;
      if (v14[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20CF9D89C();
        }
      }

      else
      {
        sub_20CF99E80(v31, isUniquelyReferenced_nonNull_native);
        v33 = sub_20CEEDA04(v47);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_21;
        }

        v28 = v33;
      }

      v5 = v24;
      v14 = v48;
      if (v32)
      {
        *(v48[7] + 8 * v28) = v23;
        sub_20D071AA8(v47, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        sub_20D071AA8(v24, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        sub_20CEF928C(v9, &qword_27C820570);
      }

      else
      {
        v48[(v28 >> 6) + 8] |= 1 << v28;
        v35 = v14[6] + v28 * v18;
        v36 = v47;
        sub_20CF9F128(v47, v35, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        *(v14[7] + 8 * v28) = v23;
        sub_20D071AA8(v36, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        sub_20D071AA8(v24, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        sub_20CEF928C(v9, &qword_27C820570);
        v37 = v14[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_20;
        }

        v14[2] = v39;
      }

      ++v16;
      v15 = v19;
      if (v43 == v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_20D568C68();
    __break(1u);
  }

  else
  {
LABEL_17:

    *(v42 + qword_27C8204B8) = v14;
  }

  return result;
}

BOOL sub_20D06E008(void *a1, void *a2)
{
  v3 = v2;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = qword_27C8204B8;
  if (!*(*(v2 + qword_27C8204B8) + 16))
  {
    sub_20D06DBB8();
  }

  sub_20D070828(a1, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_20CEF928C(v10, &unk_27C820EB0);
    return 0;
  }

  sub_20D072108(v10, v17, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  v21 = *(v2 + v18);
  if (!*(v21 + 16))
  {
    goto LABEL_10;
  }

  sub_20D5663C8();
  v22 = sub_20CEEDA04(v17);
  if ((v23 & 1) == 0)
  {

LABEL_10:
    sub_20D071AA8(v17, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    return 0;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  sub_20D070828(v30, v7);
  if (v19(v7, 1, v11) == 1)
  {
    sub_20D071AA8(v17, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    sub_20CEF928C(v7, &unk_27C820EB0);
  }

  else
  {
    sub_20D072108(v7, v14, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    v25 = *(v3 + v18);
    if (*(v25 + 16))
    {
      sub_20D5663C8();
      v26 = sub_20CEEDA04(v14);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);
        sub_20D071AA8(v14, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
        sub_20D071AA8(v17, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

        return v28 >= v24;
      }
    }

    sub_20D071AA8(v14, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    sub_20D071AA8(v17, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  }

  return 1;
}

uint64_t sub_20D06E374()
{
  v54 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v1 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v3 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v43[-v5];
  MEMORY[0x28223BE20](v7);
  v55 = &v43[-v8];
  v9 = qword_27C8204A0;
  swift_beginAccess();
  v50 = v0;
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_29:
    *(v50 + qword_27C8204C0) = v12;
  }

  v56 = MEMORY[0x277D84F90];
  sub_20D5663C8();
  v53 = v11;
  result = sub_20CEF0B90(0, v11, 0);
  v14 = 0;
  v12 = v56;
  v52 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v51 = v10 + v52;
  v49 = qword_27C820490;
  while (v14 < *(v10 + 16))
  {
    v15 = v1;
    v16 = *(v1 + 72);
    sub_20CF9F128(v51 + v16 * v14, v6, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    sub_20CF9F128(v6, v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20D071AA8(v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    if (!EnumCaseMultiPayload && sub_20D06E8F8(*(v50 + v49)))
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        goto LABEL_16;
      }

      v21 = v20;
      if ([v20 hf_isMediaAccessory])
      {
        v22 = [v21 mediaProfile];
        if (v22)
        {
          v48 = v22;
          v23 = [v22 uniqueIdentifier];
          sub_20D5637E8();
          swift_unknownObjectRelease();

          goto LABEL_28;
        }
      }

      if (![v21 hf_isMultiServiceAccessory])
      {
        v24 = [v21 hf_visibleServices];
        sub_20CECF940(0, &qword_27C81AEC0);
        sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
        v25 = sub_20D567D08();

        v26 = v25 & 0xC000000000000001;
        if ((v25 & 0xC000000000000001) != 0)
        {
          v45 = v25 & 0xC000000000000001;
          v47 = sub_20D568708();
          v48 = v27;
          v28 = sub_20D5687B8();
          v46 = v25;
          v30 = v29;
          v44 = MEMORY[0x20F31DBE0](v47, v48, v28, v29);
          v31 = v30;
          v25 = v46;
          sub_20CFAE618(v28, v31, 1);
          v32 = v47;
          v33 = v48;
          v26 = v45;
          if ((v44 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v34 = 0;
          v35 = (v25 + 56);
          v32 = 1 << *(v25 + 32);
          v36 = (v32 + 63) >> 6;
          while (1)
          {
            v38 = *v35++;
            v37 = v38;
            if (v38)
            {
              break;
            }

            v34 -= 64;
            if (!--v36)
            {
              v33 = *(v25 + 36);
              goto LABEL_25;
            }
          }

          v39 = __clz(__rbit64(v37));
          v33 = *(v25 + 36);
          if (v39 - v32 != v34)
          {
            v32 = v39 - v34;
LABEL_27:
            LODWORD(v46) = v26 != 0;
            v40 = v32;
            v48 = v33;
            sub_20CFB1840(v32, v33, v46, v25);
            v47 = v41;
            sub_20CFAE618(v40, v48, v46);

            v42 = [v47 uniqueIdentifier];
            sub_20D5637E8();

            swift_unknownObjectRelease();
LABEL_28:
            swift_storeEnumTagMultiPayload();
            goto LABEL_6;
          }
        }

LABEL_25:
        sub_20CFAE618(v32, v33, v26 != 0);
        swift_unknownObjectRelease();
      }

      else
      {
LABEL_16:
        swift_unknownObjectRelease();
      }
    }

    sub_20CF9F128(v6, v55, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
LABEL_6:
    sub_20D071AA8(v6, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    v56 = v12;
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_20CEF0B90(v18 > 1, v19 + 1, 1);
      v12 = v56;
    }

    ++v14;
    *(v12 + 16) = v19 + 1;
    result = sub_20D072108(v55, v12 + v52 + v19 * v16, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    v1 = v15;
    if (v14 == v53)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}