uint64_t sub_21BD942BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_21BC75944(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_21BD942CC()
{
  result = qword_27CDBC4D8;
  if (!qword_27CDBC4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB92B0, &unk_21BE3EF80);
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC4D8);
  }

  return result;
}

unint64_t sub_21BD943B0()
{
  result = qword_27CDBC500;
  if (!qword_27CDBC500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC4A8, &qword_21BE4A600);
    sub_21BD94468();
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC500);
  }

  return result;
}

unint64_t sub_21BD94468()
{
  result = qword_27CDBC508;
  if (!qword_27CDBC508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC4C8, &unk_21BE4A620);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&unk_27CDBC510, &qword_27CDBC4D0, &qword_21BE425D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC508);
  }

  return result;
}

unint64_t sub_21BD94560()
{
  result = qword_27CDBC548;
  if (!qword_27CDBC548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC448, &qword_21BE4A5A0);
    sub_21BD94618();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC548);
  }

  return result;
}

unint64_t sub_21BD94618()
{
  result = qword_27CDBC550;
  if (!qword_27CDBC550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC440, &qword_21BE4A568);
    sub_21BD946A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC550);
  }

  return result;
}

unint64_t sub_21BD946A4()
{
  result = qword_27CDBC558;
  if (!qword_27CDBC558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC438, &qword_21BE4A560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC410, &qword_21BE4A520);
    sub_21BE2721C();
    sub_21BB3B038(&qword_27CDBC428, &qword_27CDBC410, &qword_21BE4A520);
    sub_21BD94264(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC558);
  }

  return result;
}

unint64_t sub_21BD94820()
{
  result = qword_27CDBC570;
  if (!qword_27CDBC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC570);
  }

  return result;
}

unint64_t sub_21BD94874()
{
  result = qword_27CDBC578;
  if (!qword_27CDBC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC578);
  }

  return result;
}

id sub_21BD948E4()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator____lazy_storage___remoteViewController;
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator____lazy_storage___remoteViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator____lazy_storage___remoteViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21BD9496C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection);
  if (v8)
  {
    aBlock[4] = sub_21BD967B8;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD94E40;
    aBlock[3] = &block_descriptor_50;
    v9 = _Block_copy(aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_21BE294BC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC618, &qword_21BE4A880);
    if (swift_dynamicCast())
    {
      v12 = aBlock[7];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  v13 = *v7;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (v12)
    {

      return v12;
    }

    sub_21BE2614C();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "FamilyExtensionHost:: proxy is nil", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    sub_21BD967C0();
    swift_allocError();
    *v19 = 1;
  }

  swift_willThrow();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_21BD94C78(void *a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a2 + 16);
  *(a2 + 16) = a1;

  v10 = a1;
  sub_21BE2614C();
  v11 = a1;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_21BB35000, v12, v13, "FamilyExtensionHost:: failed to get proxy %@", v14, 0xCu);
    sub_21BC9E984(v15);
    MEMORY[0x21CF05C50](v15, -1, -1);
    MEMORY[0x21CF05C50](v14, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_21BD94E40(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_21BD94EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC640, &qword_21BE4A890) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v6 = sub_21BE26A4C();
  v4[21] = v6;
  v7 = *(v6 - 8);
  v4[22] = v7;
  v8 = *(v7 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = sub_21BE268CC();
  v4[26] = v9;
  v10 = *(v9 - 8);
  v4[27] = v10;
  v11 = *(v10 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_21BE28D7C();
  v4[32] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v4[33] = v13;
  v4[34] = v12;

  return MEMORY[0x2822009F8](sub_21BD9506C, v13, v12);
}

uint64_t sub_21BD9506C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v2 = sub_21BE289CC();
  v3 = [v1 initWithExtensionPointIdentifier_];
  v0[35] = v3;

  v4 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BD951F0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC648, &qword_21BE4A898);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD95858;
  v0[13] = &block_descriptor_30_0;
  v0[14] = v5;
  [v4 executeQuery:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD951F0()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD952F8, v2, v1);
}

size_t sub_21BD952F8()
{
  v1 = v0[32];

  v2 = v0[18];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v46 = v0[18];
    }

    v3 = sub_21BE2951C();
    if (v3)
    {
LABEL_3:
      v66 = MEMORY[0x277D84F90];
      result = sub_21BC59DB4(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = 0;
      v6 = v0[27];
      v7 = v66;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CF047C0](v5, v2);
        }

        else
        {
          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v0[29];
        sub_21BE268DC();
        v11 = *(v66 + 16);
        v10 = *(v66 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21BC59DB4(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[29];
        v13 = v0[26];
        ++v5;
        *(v66 + 16) = v11 + 1;
        (*(v6 + 32))(v66 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v12, v13);
      }

      while (v3 != v5);

      if (*(v66 + 16))
      {
        goto LABEL_12;
      }

LABEL_21:
      v44 = v0 + 25;
      v47 = v0[25];

      sub_21BE2614C();
      v48 = sub_21BE26A2C();
      v49 = sub_21BE28FDC();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v0[35];
      if (v50)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_21BB35000, v48, v49, "No AppExtensionIdentity", v52, 2u);
        MEMORY[0x21CF05C50](v52, -1, -1);
      }

      v43 = v0 + 22;
      v45 = v0 + 21;
      goto LABEL_24;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v7 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_21;
  }

LABEL_12:
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[24];
  v65 = *(v16 + 16);
  v65(v15, v7 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);

  (*(v16 + 32))(v14, v15, v17);
  sub_21BE2614C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21BB35000, v19, v20, "Got AppExtensionIdentity", v21, 2u);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  v22 = v0[28];
  v23 = v0[26];
  v24 = v0[24];
  v63 = v0[31];
  v64 = v0[23];
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v28 = v0[20];

  v29 = v24;
  v30 = *(v25 + 8);
  v30(v29, v26);
  v31 = sub_21BD948E4();
  [v31 setDelegate_];

  v32 = *(v27 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator____lazy_storage___remoteViewController);
  v65(v22, v63, v23);
  v33 = v32;
  sub_21BE2931C();
  v34 = sub_21BE2932C();
  (*(*(v34 - 8) + 56))(v28, 0, 1, v34);
  sub_21BE2933C();

  *(v27 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state) = 2;
  sub_21BE2614C();
  v35 = sub_21BE26A2C();
  v36 = sub_21BE28FFC();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[35];
  v40 = v0[22];
  v39 = v0[23];
  v41 = v0[21];
  if (v37)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_21BB35000, v35, v36, "loaded remote view", v42, 2u);
    MEMORY[0x21CF05C50](v42, -1, -1);
  }

  v30(v39, v41);
  v43 = v0 + 27;
  v44 = v0 + 31;
  v45 = v0 + 26;
LABEL_24:
  v53 = *v44;
  v54 = v0[30];
  v55 = v0[31];
  v57 = v0[28];
  v56 = v0[29];
  v59 = v0[24];
  v58 = v0[25];
  v60 = v0[23];
  v61 = v0[20];
  (*(*v43 + 8))(v53, *v45);

  v62 = v0[1];

  return v62();
}

uint64_t sub_21BD95858(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_21BB3A2A4(0, &qword_27CDBC650, 0x277CC5DD8);
  **(*(v1 + 64) + 40) = sub_21BE28C3C();

  return MEMORY[0x282200948](v1);
}

void sub_21BD958DC()
{
  v1 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  sub_21BE2614C();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21BB35000, v10, v11, "FamilyExtensionHost: Establising connection...", v12, 2u);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  v13 = *(v3 + 8);
  v13(v9, v2);
  v14 = sub_21BD948E4();
  v35[0] = 0;
  v15 = [v14 makeXPCConnectionWithError_];

  v16 = v35[0];
  if (v15)
  {
    v17 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection);
    *(v1 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection) = v15;
    v18 = v16;
    v19 = v15;

    [v19 setExportedObject_];
    v20 = objc_opt_self();
    v21 = [v20 interfaceWithProtocol_];
    [v19 setExportedInterface_];

    v22 = [v20 interfaceWithProtocol_];
    [v19 setRemoteObjectInterface_];

    [v19 resume];
    sub_21BD95D04(*(v1 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_ageRangeRequestModel));
  }

  else
  {
    v23 = v35[0];
    v24 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v25 = v24;
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FFC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE60C80, v35);
      *(v28 + 12) = 2112;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v32;
      *v29 = v32;
      _os_log_impl(&dword_21BB35000, v26, v27, "FamilyExtensionHost: Error xpc: %s %@", v28, 0x16u);
      sub_21BC9E984(v29);
      MEMORY[0x21CF05C50](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21CF05C50](v30, -1, -1);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    else
    {
    }

    v13(v7, v2);
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21BD95D04(uint64_t a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE60C50, v12);
    _os_log_impl(&dword_21BB35000, v7, v8, "Host: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  [sub_21BD9496C() initiationMessageWithAgeRangeRequestModel_];
  return swift_unknownObjectRelease();
}

uint64_t sub_21BD95EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "HostRemoteViewCoordinator dismissFlow is called", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection);
  *(v3 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection) = 0;

  v15 = (v3 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd);
  v16 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd);
  if (v16)
  {
    v17 = v15[1];

    v16(a1, a2);
    sub_21BB5AEC4(v16);
    v18 = *v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = v15[1];
  *v15 = 0;
  v15[1] = 0;
  return sub_21BB5AEC4(v18);
}

uint64_t sub_21BD96194(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "FamilyExtensionHost: dismiss received!", v17, 2u);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v18 = sub_21BE28DAC();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_21BE28D7C();
  v19 = a2;
  v20 = v3;
  v21 = a1;
  v22 = sub_21BE28D6C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v20;
  v23[5] = a1;
  v23[6] = a2;
  sub_21BBA932C(0, 0, v9, &unk_21BE4A868, v23);
}

uint64_t sub_21BD963E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21BE28D7C();
  v6[5] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD96484, v8, v7);
}

uint64_t sub_21BD96484()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_21BD95EE4(v3, v2);
  *(v4 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state) = 0;
  v5 = v0[1];

  return v5();
}

id sub_21BD965C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostRemoteViewCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21BD9669C()
{
  result = qword_27CDBC610;
  if (!qword_27CDBC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC610);
  }

  return result;
}

uint64_t sub_21BD966F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BD963E8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21BD967C0()
{
  result = qword_27CDBC620;
  if (!qword_27CDBC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC620);
  }

  return result;
}

uint64_t sub_21BD96814(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = a1;
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_21BB3D81C(0xD00000000000002ALL, 0x800000021BE60CD0, &v31);
    *(v13 + 12) = 2080;
    v30 = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF8, &qword_21BE36260);
    v16 = sub_21BE28A5C();
    v18 = sub_21BB3D81C(v16, v17, &v31);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_21BB35000, v10, v11, "FamilyExtensionHost: %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v14, -1, -1);
    v19 = v13;
    v2 = v29;
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v20 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd);
  v22 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd);
  v21 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd + 8);
  if (v22)
  {
    if (a1)
    {
      v31 = a1;
      v23 = a1;
      sub_21BB3D80C(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
      sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        a1 = v30;
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      v25 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd + 8);
    }

    v22(a1, 0);
    sub_21BB5AEC4(v22);

    v24 = *v20;
    v26 = v20[1];
  }

  else
  {
    v24 = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  return sub_21BB5AEC4(v24);
}

uint64_t sub_21BD96AFC(const char *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v7, v8, a1, v9, 2u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_21BD96C64()
{
  result = qword_27CDBC658;
  if (!qword_27CDBC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC658);
  }

  return result;
}

uint64_t sub_21BD96CB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v49 = a1;
  v52 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC660, &qword_21BE4AB00);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15);
  v53 = v38 - v17;
  v18 = sub_21BE2754C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v48) = a4;
  v47 = a3;
  if (a4)
  {
    v54 = a3;
  }

  else
  {

    sub_21BE28FEC();
    v23 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v19 + 8))(v22, v18);
  }

  v45 = swift_allocBox();
  v25 = v24;
  v43 = v24;
  type metadata accessor for ChecklistStateVars();
  v44 = sub_21BBEAC94();
  sub_21BE2864C();
  v42 = v8[2];
  v42(v12, v25, v7);
  sub_21BE2863C();
  v26 = v8[1];
  v26(v12, v7);
  v41 = v26;
  swift_getKeyPath();
  sub_21BE2865C();

  v27 = (v26)(v14, v7);
  v40 = v38;
  v38[1] = v54;
  v39 = v56;
  MEMORY[0x28223BE20](v27);
  v28 = v14;
  LOBYTE(v38[-4]) = v46 & 1;
  v38[-3] = v47;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC668, &qword_21BE4AB30);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC670, &unk_21BE4AB38);
  v31 = sub_21BB3B038(&qword_27CDBC678, &qword_27CDBC668, &qword_21BE4AB30);
  v48 = sub_21BD9784C();
  v37 = v48;
  v32 = v29;
  sub_21BE2806C();

  v42(v28, v43, v7);
  sub_21BE2862C();
  v41(v28, v7);
  v33 = v54;
  swift_getKeyPath();
  v54 = v33;
  sub_21BE25F1C();

  swift_beginAccess();
  LOBYTE(v29) = *(v33 + 21);

  v58 = v29;

  v54 = v32;
  v55 = v30;
  v56 = v31;
  v57 = v48;
  swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = v53;
  sub_21BE281CC();

  (*(v50 + 8))(v35, v34);
}

uint64_t sub_21BD972A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BD97944();
  sub_21BB41FA4();
  sub_21BE27F9C();

  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  v5 = sub_21BE2826C();
  v6 = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC670, &unk_21BE4AB38);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

void sub_21BD9741C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9;
  swift_getKeyPath();
  v9 = v6;
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  LOBYTE(v4) = *(v6 + 21);

  if ((v4 & 1) == 0)
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EB0 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_27CDB7E60 object:0 userInfo:0 deliverImmediately:1];
  }
}

void *sub_21BD975F8(void *a1, char a2)
{
  v4 = sub_21BE2754C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a1;
  }

  else
  {

    sub_21BE28FEC();
    v10 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BBC9024(a1, 0);
    (*(v5 + 8))(v8, v4);
    return v12[1];
  }

  return a1;
}

uint64_t sub_21BD97778(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BD977CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21BD9783C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_21BD972A4(a1);
}

unint64_t sub_21BD9784C()
{
  result = qword_27CDBC680;
  if (!qword_27CDBC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC670, &unk_21BE4AB38);
    sub_21BD97944();
    sub_21BB41FA4();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC680);
  }

  return result;
}

unint64_t sub_21BD97944()
{
  result = qword_27CDBC688;
  if (!qword_27CDBC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC688);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_21BD979B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BD979FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21BD97A54()
{
  v1 = sub_21BD975F8(*v0, *(v0 + 8));
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CEC9F8]) initWithAccountManager_];

    return v3;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD97B1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BeneficiaryViewControllerWrapper.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_21BD97B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD97C40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BD97BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD97C40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BD97C18()
{
  sub_21BD97C40();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BD97C40()
{
  result = qword_27CDBC690;
  if (!qword_27CDBC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC690);
  }

  return result;
}

uint64_t sub_21BD97C94()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "updateUIViewController", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BD97DC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C746974627573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4C52556567616D69;
    }

    else
    {
      v3 = 0x49646441776F6873;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEC0000006567616DLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656C746974627573)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x4C52556567616D69)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC0000006567616DLL;
    if (v3 != 0x49646441776F6873)
    {
LABEL_34:
      v7 = sub_21BE2995C();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_21BD97F64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x800000021BE55690;
      v3 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x7261436572616873;
    }

    if (v2)
    {
      v4 = 0x800000021BE55670;
    }

    else
    {
      v4 = 0xE900000000000064;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000021BE55690;
      if (v3 != 0xD000000000000017)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE700000000000000;
      if (v3 != 0x6E776F6E6B6E75)
      {
LABEL_26:
        v7 = sub_21BE2995C();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x7261436572616873;
    }

    if (a2)
    {
      v6 = 0x800000021BE55670;
    }

    else
    {
      v6 = 0xE900000000000064;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_21BD980C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEF796C696D614664;
  v4 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v4 = 0x726143656C707061;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v5 = 0xD000000000000013;
  v6 = 0x800000021BE556C0;
  if (!a1)
  {
    v5 = 0x6553796C696D6166;
    v6 = 0xEE0073676E697474;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x726143656C707061;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (a2 == 2)
    {
      v10 = 0xEF796C696D614664;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x6553796C696D6166;
    }

    if (a2)
    {
      v10 = 0x800000021BE556C0;
    }

    else
    {
      v10 = 0xEE0073676E697474;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_21BE2995C();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_21BD98230(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64697364746C61;
    }

    else
    {
      v3 = 1684632420;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6469656C707061;
  }

  else if (a1 == 3)
  {
    v3 = 0x6D614E7473726966;
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x656D614E7473616CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64697364746C61;
    }

    else
    {
      v9 = 1684632420;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6D614E7473726966;
    v6 = 0xE900000000000065;
    if (a2 != 3)
    {
      v5 = 0x656D614E7473616CLL;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6469656C707061;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21BE2995C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21BD983BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C6562614C627573;
    }

    else
    {
      v3 = 0x4D746E656D796170;
    }

    if (v2 == 2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xED0000646F687465;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6C6562616CLL;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE800000000000000;
  v8 = 0x6C6562614C627573;
  if (a2 != 2)
  {
    v8 = 0x4D746E656D796170;
    v7 = 0xED0000646F687465;
  }

  if (a2)
  {
    v6 = 0x6C6562616CLL;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD98508(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xD000000000000014;
  v5 = 0x800000021BE542B0;
  if (a1 != 5)
  {
    v4 = 0x4D65726F6C707865;
    v5 = 0xEB0000000065726FLL;
  }

  v6 = 0x746553646C696863;
  v7 = 0xEA00000000007075;
  if (a1 != 3)
  {
    v6 = 0x7250797465666173;
    v7 = 0xED00007963617669;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7069726373627573;
  v9 = 0xED0000736E6F6974;
  if (a1 != 1)
  {
    v8 = 0x646C696843726F66;
    v9 = 0xEB000000006E6572;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x756F59726F66;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x756F59726F66)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v13 = 0x7069726373627573;
      v14 = 0x736E6F6974;
      goto LABEL_33;
    }

    v15 = 0x646C696843726F66;
    v16 = 7234930;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v12 = 0xEA00000000007075;
        if (v10 != 0x746553646C696863)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v13 = 0x7250797465666173;
      v14 = 0x7963617669;
LABEL_33:
      v12 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v10 != v13)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v12 = 0x800000021BE542B0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v15 = 0x4D65726F6C707865;
    v16 = 6648431;
  }

  v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v10 != v15)
  {
LABEL_39:
    v17 = sub_21BE2995C();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v17 = 1;
LABEL_40:

  return v17 & 1;
}

uint64_t sub_21BD98770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_21BE2995C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21BD98974(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000021BE558C0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000021BE558E0;
    }

    v5 = 0x800000021BE55880;
    if (a1 != 3)
    {
      v5 = 0x800000021BE558A0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_21BE2995C();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000021BE558C0;
    }

    else
    {
      v10 = 0x800000021BE558E0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000021BE55880;
    }

    else
    {
      v10 = 0x800000021BE558A0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_21BD98B4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_21BE2995C();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_21BD98D44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEF6E6572646C6968;
  v4 = 0x47726F46796C6E6FLL;
  if (a1 == 2)
  {
    v4 = 0x43726F46796C6E6FLL;
  }

  else
  {
    v3 = 0xEF6E616964726175;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000021BE54660;
  if (a1)
  {
    v5 = 0x41726F46796C6E6FLL;
    v6 = 0xEC000000746C7564;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x43726F46796C6E6FLL;
    }

    else
    {
      v11 = 0x47726F46796C6E6FLL;
    }

    if (a2 == 2)
    {
      v10 = 0xEF6E6572646C6968;
    }

    else
    {
      v10 = 0xEF6E616964726175;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x41726F46796C6E6FLL;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEC000000746C7564;
    }

    else
    {
      v10 = 0x800000021BE54660;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_21BE2995C();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_21BD98EC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64756F6C4369;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF676E6972616853;
    v4 = 0xEF676E6972616853;
    if (a1 == 2)
    {
      v6 = 0x6573616863727550;
    }

    else
    {
      v6 = 0x6E6F697461636F4CLL;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xED0000736E6F6974;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x7069726373627553;
    }

    else
    {
      v6 = 0x64756F6C4369;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6573616863727550;
  if (a2 != 2)
  {
    v9 = 0x6E6F697461636F4CLL;
  }

  if (a2)
  {
    v2 = 0x7069726373627553;
    v8 = 0xED0000736E6F6974;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v9;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xEF676E6972616853;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21BE2995C();
  }

  return v12 & 1;
}

uint64_t FamilyRowCache.__allocating_init(defaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_21BB41118(a1, &v7);
  if (v8)
  {
    sub_21BB3A4CC(a1, &qword_27CDBA2C8, &qword_21BE42FC8);
    sub_21BB3D104(&v7, &v9);
  }

  else
  {
    sub_21BE25FEC();
    sub_21BE25FDC();
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = sub_21BE289CC();

    v5 = [v3 initWithSuiteName_];

    v10 = sub_21BB41228();
    v11 = MEMORY[0x277D08080];
    if (!v5)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    }

    *&v9 = v5;
    sub_21BB3A4CC(a1, &qword_27CDBA2C8, &qword_21BE42FC8);
    if (v8)
    {
      sub_21BB3A4CC(&v7, &qword_27CDBA2C8, &qword_21BE42FC8);
    }
  }

  sub_21BB3D104(&v9, v2 + 16);
  return v2;
}

uint64_t FamilyRowStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6564646968;
  v3 = 0x69766E49746E6573;
  v4 = 0x6465766965636572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x796C696D6166;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static FamilyRowCache.clearStatusInfo(withDefaults:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_21BD9A4DC(v4, v1, v2, v3);
}

uint64_t static FamilyRowCache.writeStatusInfo(_:withDefaults:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a2, v4);

  return sub_21BD9A5DC(a1, v6, v2, v4, v5);
}

FamilyCircleUI::FamilyRowStatus_optional __swiftcall FamilyRowStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21BD99EC8()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD99FB8()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD9A094()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD9A18C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6564646968;
  v5 = 0xEA00000000006574;
  v6 = 0x69766E49746E6573;
  v7 = 0xEE00657469766E49;
  v8 = 0x6465766965636572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000021BE54640;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x796C696D6166;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BD9A2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE25D1C();
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25C7C();
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v1[5]);
  sub_21BE264AC();
  sub_21BE2649C();
  v9 = sub_21BE2603C();

  if (v9)
  {
    v11 = v2[6];
    __swift_project_boxed_opaque_existential_1Tm(v2 + 2, v2[5]);
    sub_21BE2649C();
    v12 = sub_21BE2605C();

    if (v12 >= 1)
    {
      sub_21BE25C1C();
      v13 = v15;
      (*(v15 + 8))(a1, v4);
      return (*(v13 + 32))(a1, v7, v4);
    }
  }

  return result;
}

uint64_t FamilyRowCache.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21BD9A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v10 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  sub_21BE264AC();
  sub_21BE2649C();
  sub_21BE2602C();

  sub_21BE2648C();
  sub_21BE2602C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_21BD9A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21BE25D1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4;
  v27 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v14 = v27;
  v15 = __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  FAFamilyCircle.rowStatusForFamily()();
  v21[0] = v15;
  v21[1] = v14;
  if (v22 <= 1u)
  {
    v16 = 0xE600000000000000;
    if (v22)
    {
      v17 = 0x796C696D6166;
    }

    else
    {
      v17 = 0x6E6564646968;
    }
  }

  else if (v22 == 2)
  {
    v16 = 0xEA00000000006574;
    v17 = 0x69766E49746E6573;
  }

  else if (v22 == 3)
  {
    v16 = 0xEE00657469766E49;
    v17 = 0x6465766965636572;
  }

  else
  {
    v16 = 0x800000021BE54640;
    v17 = 0xD000000000000013;
  }

  v24 = MEMORY[0x277D837D0];
  v23[0] = v17;
  v23[1] = v16;
  sub_21BE264AC();
  sub_21BE2648C();
  sub_21BE2601C();

  sub_21BB3A4CC(v23, &qword_27CDB5940, &unk_21BE32B10);
  sub_21BE25D0C();
  sub_21BE25C2C();
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  v24 = MEMORY[0x277D839F8];
  v23[0] = v19;
  sub_21BE2649C();
  sub_21BE2601C();

  sub_21BB3A4CC(v23, &qword_27CDB5940, &unk_21BE32B10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

uint64_t sub_21BD9A8A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21BE25D1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD9A8EC()
{
  result = qword_27CDBC698;
  if (!qword_27CDBC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC698);
  }

  return result;
}

uint64_t sub_21BD9A9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD9B670();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21BD9AA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD9B670();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21BD9AAAC()
{
  sub_21BD9B670();
  sub_21BE277FC();
  __break(1u);
}

__n128 sub_21BD9AAD4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21BD9B23C(a1, a2, a4);
  if (v10)
  {
    v11 = v10;
    sub_21BE2869C();
    sub_21BE2725C();
    v12 = sub_21BE27BAC();
    sub_21BE26E0C();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    LOBYTE(v69) = 0;
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    *&v31[0] = v11;
    BYTE8(v32) = v12;
    *&v33 = v14;
    *(&v33 + 1) = v16;
    *&v34 = v18;
    *(&v34 + 1) = v20;
    LOBYTE(v35) = 0;
    *(&v35 + 1) = sub_21BD9B44C;
    v36 = v21;
    *&v37 = 0;
    *(&v37 + 1) = a3;
    *&v38 = sub_21BD9B44C;
    *(&v38 + 1) = v22;
    v66 = v37;
    v67 = v38;
    v64 = v35;
    v65 = v21;
    v54 = v31[0];
    v55 = v31[1];
    v58 = v31[4];
    v59 = v31[5];
    v56 = v31[2];
    v57 = v31[3];
    v62 = v33;
    v63 = v34;
    v60 = v31[6];
    v61 = v32;
    sub_21BD9B49C(&v54);
    v81 = v66;
    v82 = v67;
    v83 = v68;
    v77 = v62;
    v78 = v63;
    v79 = v64;
    v80 = v65;
    v73 = v58;
    v74 = v59;
    v75 = v60;
    v76 = v61;
    v69 = v54;
    v70 = v55;
    v71 = v56;
    v72 = v57;
    swift_retain_n();
    swift_unknownObjectRetain_n();
    v23 = a4;
    sub_21BD9B4A4(v31, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6A0, &unk_21BE4ADF0);
    sub_21BD9B3E8();
    sub_21BE2784C();

    sub_21BD9B514(v31);
    v81 = v51;
    v82 = v52;
    v83 = v53;
    v77 = v47;
    v78 = v48;
    v79 = v49;
    v80 = v50;
    v73 = v43;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    v69 = v39;
    v70 = v40;
    v71 = v41;
    v72 = v42;
  }

  else
  {
    sub_21BD9B3DC(&v54);
    v51 = v66;
    v52 = v67;
    v53 = v68;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6A0, &unk_21BE4ADF0);
    sub_21BD9B3E8();
    sub_21BE2784C();
  }

  v24 = v82;
  *(a5 + 192) = v81;
  *(a5 + 208) = v24;
  *(a5 + 224) = v83;
  v25 = v78;
  *(a5 + 128) = v77;
  *(a5 + 144) = v25;
  v26 = v80;
  *(a5 + 160) = v79;
  *(a5 + 176) = v26;
  v27 = v74;
  *(a5 + 64) = v73;
  *(a5 + 80) = v27;
  v28 = v76;
  *(a5 + 96) = v75;
  *(a5 + 112) = v28;
  v29 = v70;
  *a5 = v69;
  *(a5 + 16) = v29;
  result = v72;
  *(a5 + 32) = v71;
  *(a5 + 48) = result;
  return result;
}

void sub_21BD9AE50(void *a1, void *a2)
{
  [a1 setUserInteractionEnabled_];
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21BE397B0;
  v6 = [a1 heightAnchor];
  v7 = [a2 heightAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [a1 widthAnchor];
  v10 = [a2 widthAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [a1 centerXAnchor];
  v13 = [a2 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [a1 centerYAnchor];
  v16 = [a2 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  sub_21BC47284();
  v18 = sub_21BE28C1C();

  [v4 activateConstraints_];
}

uint64_t sub_21BD9B0B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  if ((*(a2 + 32))(ObjectType, a2))
  {
    return (*(a2 + 48))(ObjectType, a2);
  }

  sub_21BE2614C();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21BB35000, v10, v11, "ST View no longer active", v12, 2u);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_21BD9B23C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 24))(ObjectType, a2);
  if (v11)
  {
    v12 = v11;
    v13 = a3;
    [v13 addSubview_];
    sub_21BD9AE50(v12, v13);
  }

  else
  {
    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "No STUsageSummaryTableViewCellProvider view available", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  return v13;
}

unint64_t sub_21BD9B3E8()
{
  result = qword_27CDBC6A8;
  if (!qword_27CDBC6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC6A0, &unk_21BE4ADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC6A8);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BD9B4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6A0, &unk_21BE4ADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD9B514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6A0, &unk_21BE4ADF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD9B58C()
{
  result = qword_27CDBC6B0;
  if (!qword_27CDBC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC6B8, &qword_21BE4AE40);
    sub_21BD9B3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC6B0);
  }

  return result;
}

unint64_t sub_21BD9B61C()
{
  result = qword_27CDBC6C0;
  if (!qword_27CDBC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC6C0);
  }

  return result;
}

unint64_t sub_21BD9B670()
{
  result = qword_27CDBC6C8;
  if (!qword_27CDBC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC6C8);
  }

  return result;
}

id ScreentimePasscodeListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

FamilyCircleUI::ScreentimePasscodeListener::State_optional __swiftcall ScreentimePasscodeListener.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21BD9B728()
{
  v1 = v0 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21BD9B778(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BD9B7E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21BCA9374;
}

uint64_t sub_21BD9B884()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();
}

uint64_t sub_21BD9B8FC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BBA5904;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4);
}

uint64_t sub_21BD9B99C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BD9C7CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21BB3D80C(v3);
  return sub_21BB5AEC4(v8);
}

uint64_t sub_21BD9BA64()
{
  v1 = (v0 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_21BB3D80C(v3);
  return v3;
}

uint64_t sub_21BD9BAC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21BB5AEC4(v6);
}

void sub_21BD9BB80()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_handleRestrictionsPINNotification_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];
}

void sub_21BD9BC00()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D4BDE8] object:0];
}

uint64_t sub_21BD9BC74(void *a1)
{
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1 name:*MEMORY[0x277D4BDE8] object:0];

  v4 = [a1 userInfo];
  if (!v4)
  {
    v23 = 0u;
    v24 = 0u;
LABEL_10:
    sub_21BBBC274(&v23);
    goto LABEL_11;
  }

  v5 = v4;
  sub_21BE2890C();

  v6 = sub_21BE288EC();

  v7 = [v6 objectForKey_];

  if (v7)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    *v20 = 0u;
    v21 = 0u;
  }

  v23 = *v20;
  v24 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_10;
  }

  sub_21BCBEAA4();
  if (swift_dynamicCast())
  {
    v8 = [v20[0] BOOLValue];

    if (v8)
    {
      v9 = 1;
      v10 = 1;
      goto LABEL_12;
    }
  }

LABEL_11:
  v10 = 0;
  v9 = 2;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = v9;
  v11 = v1;
  sub_21BE26CBC();
  v12 = &v11[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v22 = v20[0];
    (*(v14 + 8))(v11, &v22, ObjectType, v14);
    result = swift_unknownObjectRelease();
  }

  if (v10)
  {
    v16 = &v11[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction];
    result = swift_beginAccess();
    v17 = *v16;
    if (*v16)
    {
      v18 = *(v16 + 1);

      v17(v19);
      return sub_21BB5AEC4(v17);
    }
  }

  return result;
}

id ScreentimePasscodeListener.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6D8, &qword_21BE4AF30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener__state;
  v12 = 0;
  sub_21BE26C6C();
  (*(v2 + 32))(&v0[v6], v5, v1);
  v7 = &v0[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction];
  v8 = type metadata accessor for ScreentimePasscodeListener();
  *v7 = 0;
  *(v7 + 1) = 0;
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t type metadata accessor for ScreentimePasscodeListener()
{
  result = qword_27CDBC6F0;
  if (!qword_27CDBC6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ScreentimePasscodeListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreentimePasscodeListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21BD9C2D4()
{
  result = qword_27CDBC6E8;
  if (!qword_27CDBC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC6E8);
  }

  return result;
}

uint64_t sub_21BD9C3C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScreentimePasscodeListener();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

void sub_21BD9C420()
{
  sub_21BD9C67C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21BD9C67C()
{
  if (!qword_27CDBC700)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBC700);
    }
  }
}

uint64_t sub_21BD9C6DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BD9C75C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BD9C7CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Bool __swiftcall ACAccount.isSameUser(_:)(ACAccount_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = [v1 accountType];
  v5 = [(objc_class *)isa accountType];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v8 = 0;
      v4 = v5;
LABEL_13:

      return v8 & 1;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  sub_21BB3A2A4(0, &qword_280BD6990, 0x277CB8F58);
  v7 = sub_21BE2940C();

  if (v7)
  {
LABEL_7:
    v4 = [v2 identifier];
    v9 = [(objc_class *)isa identifier];
    v10 = v9;
    if (!v4)
    {
      if (!v9)
      {
        v8 = 1;
        return v8 & 1;
      }

      v8 = 0;
      v4 = v9;
      goto LABEL_13;
    }

    if (v9)
    {
      sub_21BB3A2A4(0, &unk_280BD68E8, 0x277CCACA8);
      v8 = sub_21BE2940C();

      goto LABEL_13;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 0;
  return v8 & 1;
}

void sub_21BD9C948()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC860, &qword_21BE4B4C8);
    sub_21BB3B038(&unk_280BD8998, &unk_27CDBC860, &qword_21BE4B4C8);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BD9CA90()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C8, &qword_21BE4B3B0);
    sub_21BB3B038(&unk_280BD8988, &qword_27CDBC7C8, &qword_21BE4B3B0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD9CBD8()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_21BD9CCA8, v4, v3);
}

void sub_21BD9CCA8()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BBE7748;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD9CDBC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x2822009F8](sub_21BD9CE8C, v5, v4);
}

void sub_21BD9CE8C()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v8 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BC495D8;
    v6 = v0[4];
    v7 = v0[2];

    v8(v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD9CFA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268);
    **(*(v4 + 64) + 40) = sub_21BE2890C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t (*sub_21BD9D104(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCD59C;
}

uint64_t sub_21BD9D1A8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BD9D32C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BD9D464(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_280BD7A28;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCD9E8;
}

uint64_t sub_21BD9D5F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BD9D670(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BD9D710()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t (*sub_21BD9D77C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

uint64_t sub_21BD9D820(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BD9D9C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BD9DAF8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_280BD7A00;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BDA2E60;
}

uint64_t static FamilyCircleStore.shared.getter()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21BD9DCC4()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BD9DD98, v4, v3);
}

uint64_t sub_21BD9DD98()
{
  v1 = v0[5];
  *(v0[3] + qword_280BD7A18) = 1;
  v0[9] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[10] = v3;
  v0[11] = v2;

  return MEMORY[0x2822009F8](sub_21BD9DE38, v3, v2);
}

void sub_21BD9DE38()
{
  v1 = *(v0[3] + 40);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_21BD9DF4C;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD9DF4C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 112) = v0;

  sub_21BB3A4CC(v5, &qword_27CDB5790, &qword_21BE32800);

  v7 = *(v2 + 88);
  v8 = *(v2 + 80);
  if (v0)
  {
    v9 = sub_21BD9E1B8;
  }

  else
  {
    v9 = sub_21BD9E0D8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BD9E0D8()
{
  v1 = v0[9];

  v0[15] = v0[2];
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_21BD9E144, v2, v3);
}

uint64_t sub_21BD9E144()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

uint64_t sub_21BD9E1B8()
{
  v1 = v0[9];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_21BD9E21C, v2, v3);
}

uint64_t sub_21BD9E21C()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

void sub_21BD9E28C()
{
  v1 = qword_280BD7A28;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_280BD7A00;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_280BD7A08);
  swift_unknownObjectRelease();
  v6 = *(v0 + qword_280BD79F0);
}

char *FamilyCircleStore.deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D080E0] object:0];

  v3 = [v1 defaultCenter];
  if (qword_280BD7E90 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:qword_280BDCBD8 object:0];

  v4 = *(v0 + 3);

  v5 = *(v0 + 4);

  v6 = *(v0 + 5);

  v7 = qword_280BD7A28;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = qword_280BD7A00;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *&v0[qword_280BD7A08];
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_21BD9E538(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_21BE26A4C();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v2[12] = v10;
  v2[13] = v9;

  return MEMORY[0x2822009F8](sub_21BD9E688, v10, v9);
}

uint64_t sub_21BD9E688()
{
  v16 = v0;
  v1 = v0[10];
  v2 = v0[4];
  sub_21BE2613C();

  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21BB3D81C(*(v9 + 16), *(v9 + 24), &v15);
    _os_log_impl(&dword_21BB35000, v3, v4, "%s load method called", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_21BD9E82C;
  v13 = v0[4];

  return sub_21BD9F954();
}

uint64_t sub_21BD9E82C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_21BD9EB34;
  }

  else
  {
    v7 = sub_21BD9E968;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BD9E968()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    **(v0 + 24) = v3;
  }

  else
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v14 = *(v9 + 16);
    v15 = *(v9 + 24);

    MEMORY[0x21CF03CA0](0x61746164206F6E20, 0xE800000000000000);
    (*(v8 + 104))(v7, *MEMORY[0x277D07F60], v10);
    MEMORY[0x21CF01220](v14, v15, v7, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000026, 0x800000021BE61060);

    (*(v8 + 8))(v7, v10);
    swift_willThrow();
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BD9EB34()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BD9EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_21BE26A4C();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD9ECAC, v9, v8);
}

uint64_t sub_21BD9ECAC()
{
  v34 = v0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    return sub_21BE2978C();
  }

  v2 = v1;
  v3 = v0[9];

  v4 = [v2 aa_primaryAppleAccount];

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0[4];
  if (v4)
  {
    v6 = v0[8];
    v0[3] = v4;
    v7 = v4;

    sub_21BE26CBC();
    sub_21BE260FC();
    v8 = v7;
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FCC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    if (v11)
    {
      v32 = v0[8];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE592D0, &v33);
      *(v15 + 12) = 2112;
      *(v15 + 14) = v8;
      *v16 = v4;
      v18 = v8;
      _os_log_impl(&dword_21BB35000, v9, v10, "%s account set to %@", v15, 0x16u);
      sub_21BB3A4CC(v16, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);

      (*(v13 + 8))(v32, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    v20 = v0[7];
    v0[2] = 0;

    sub_21BE26CBC();
    sub_21BE260FC();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FCC();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[5];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE592D0, &v33);
      _os_log_impl(&dword_21BB35000, v21, v22, "%s account set to nil", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x21CF05C50](v28, -1, -1);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[7];
  v29 = v0[8];

  v31 = v0[1];

  return v31();
}

uint64_t sub_21BD9F0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = sub_21BE26A4C();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = sub_21BE28D7C();
  v4[10] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[11] = v10;
  v4[12] = v9;

  return MEMORY[0x2822009F8](sub_21BD9F224, v10, v9);
}

uint64_t sub_21BD9F224()
{
  v1 = v0[8];
  sub_21BE2613C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "FAFamilyUpdate received", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = v0[6];

  v9 = *(v8 + 8);
  v0[13] = v9;
  v9(v6, v7);
  v0[14] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v0[15] = v11;
  v0[16] = v10;

  return MEMORY[0x2822009F8](sub_21BD9F358, v11, v10);
}

void sub_21BD9F358()
{
  v1 = *(v0[3] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21BD9F46C;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD9F46C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    sub_21BB3A4CC(*(v2 + 32), &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v2 + 120);
    v6 = *(v2 + 128);
    v7 = sub_21BD9F6B0;
  }

  else
  {
    v8 = *(v2 + 136);
    v9 = *(v2 + 32);

    sub_21BB3A4CC(v9, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v2 + 120);
    v6 = *(v2 + 128);
    v7 = sub_21BD9F5D0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BD9F5D0()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BD9F634, v2, v3);
}

uint64_t sub_21BD9F634()
{
  v1 = v0[10];

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BD9F6B0()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BD9F714, v2, v3);
}

uint64_t sub_21BD9F714()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  sub_21BE2613C();
  v7 = v1;
  sub_21BC51D50(v1);

  v2(v4, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BD9F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BE28D7C();
  swift_retain_n();
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  sub_21BBA932C(0, 0, v9, a4, v12);
}

uint64_t sub_21BD9F954()
{
  v1[24] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v1[26] = v3;
  v4 = *(v3 - 8);
  v1[27] = v4;
  v5 = *(v4 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_21BE28D7C();
  v1[30] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[31] = v7;
  v1[32] = v6;

  return MEMORY[0x2822009F8](sub_21BD9FA8C, v7, v6);
}

uint64_t sub_21BD9FA8C()
{
  v1 = type metadata accessor for FamilySignpost();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[33] = sub_21BC84D18(0xD000000000000013, 0x800000021BE60FC0, "loadStore", 9, 2);
  v4 = [objc_opt_self() defaultStore];
  if (!v4)
  {
    return sub_21BE2978C();
  }

  v5 = v4;
  v6 = [v4 aa_primaryAppleAccount];
  v0[34] = v6;

  v7 = v0[24];
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0[20] = v6;
    v8 = v6;

    sub_21BE26CBC();
    v9 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    v10 = v9;
    v0[35] = v9;
    v11 = qword_280BD7A18;
    if (*(v7 + qword_280BD7A18))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v9 setCachePolicy_];
    *(v7 + v11) = 0;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_21BD9FEF4;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBB25CC;
    v0[13] = &block_descriptor_92;
    v0[14] = v13;
    [v10 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v14 = v0[30];

    swift_getKeyPath();
    swift_getKeyPath();
    v0[18] = 0;

    sub_21BE26CBC();
    v15 = MEMORY[0x21CF01210](0xD00000000000001ALL, 0x800000021BE5CD90, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
    v16 = v0[33];
    v17 = v0[28];
    v18 = v0[27];
    v23 = v0[26];
    v24 = v0[29];
    v19 = v0[24];
    v25 = v0[25];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[19] = 0;

    sub_21BE26CBC();
    sub_21BE2613C();
    v20 = v15;
    sub_21BC51D50(v15);

    (*(v18 + 8))(v17, v23);
    swift_willThrow();
    sub_21BC852D8();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_21BD9FEF4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_21BDA046C;
  }

  else
  {
    v6 = sub_21BDA0024;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDA0024()
{
  v1 = v0[29];
  v2 = v0[21];
  v0[37] = v2;
  sub_21BE260FC();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Loaded family circle", v5, 2u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[24];

  (*(v8 + 8))(v6, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v10 = v0[22];
  if (v10)
  {
    sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
    v11 = v2;
    v12 = sub_21BE2940C();

    if (v12)
    {

      goto LABEL_8;
    }
  }

  else
  {
    v13 = v2;
  }

  v14 = v0[24];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[23] = v2;

  sub_21BE26CBC();
LABEL_8:
  if (qword_280BD84E8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BDCBF8;
  v0[38] = qword_280BDCBF8;

  return MEMORY[0x2822009F8](sub_21BDA0250, v15, 0);
}

uint64_t sub_21BDA0250()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[25];
  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_21BDA2A84();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  v6[5] = v2;
  swift_retain_n();
  v7 = v2;
  sub_21BBA932C(0, 0, v3, &unk_21BE4B468, v6);

  v8 = v0[31];
  v9 = v0[32];

  return MEMORY[0x2822009F8](sub_21BDA0368, v8, v9);
}

uint64_t sub_21BDA0368()
{
  v1 = v0[30];

  if (qword_280BD6F00 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  sub_21BBFA8F4(v2);

  sub_21BC852D8();

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BDA046C()
{
  v1 = v0;
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v1[30];

  swift_willThrow();

  v6 = v1[36];
  v7 = v1[33];
  v8 = v1[28];
  v9 = v1[26];
  v10 = v1[27];
  v11 = v1[24];
  v15 = v1[29];
  v16 = v1[25];
  swift_getKeyPath();
  swift_getKeyPath();
  v1[19] = 0;

  sub_21BE26CBC();
  sub_21BE2613C();
  v12 = v6;
  sub_21BC51D50(v6);

  (*(v10 + 8))(v8, v9);
  swift_willThrow();
  sub_21BC852D8();

  v13 = v1[1];

  return v13();
}

uint64_t sub_21BDA05EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t (*sub_21BDA0674(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 32) = swift_getKeyPath();
  *(v4 + 40) = swift_getKeyPath();
  *(v4 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

uint64_t sub_21BDA0744()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t (*sub_21BDA07B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 32) = swift_getKeyPath();
  *(v4 + 40) = swift_getKeyPath();
  *(v4 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

uint64_t sub_21BDA0878(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x2822009F8](sub_21BDA0910, v4, v3);
}

uint64_t sub_21BDA0910()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for FamilySignpost();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[24] = sub_21BC84D18(0xD000000000000014, 0x800000021BE60FA0, "loadStore", 9, 2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = v0[10];
  [v6 setFamilyCircle_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = v0[10];
  v0[25] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BDA0B38;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC820, &unk_21BE4B450);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD9CFA0;
  v0[13] = &block_descriptor_51;
  v0[14] = v8;
  [v7 fetchProfileImagesWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDA0B38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_21BDA0CE8;
  }

  else
  {
    v6 = sub_21BDA0C68;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BDA0C68()
{
  v1 = v0[25];
  v2 = v0[21];

  v3 = v0[18];

  v4 = v0[24];
  sub_21BC852D8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BDA0CE8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[21];

  swift_willThrow();

  v4 = v0[24];
  sub_21BC852D8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BDA0D78()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  v1 = qword_280BD83C8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7E0, &qword_21BE4B420);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

void *sub_21BDA0DF4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D080E0] object:0];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 6);
  v5 = qword_280BD83C8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7E0, &qword_21BE4B420);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_21BDA0EE0(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BDA0F3C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_21BDA103C, v7, v6);
}

uint64_t sub_21BDA103C()
{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[4];
  sub_21BE2613C();

  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  if (v5)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21BB3D81C(*(v9 + 16), *(v9 + 24), &v21);
    _os_log_impl(&dword_21BB35000, v3, v4, "%s load method called", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  v12 = *(v8 + 8);
  v12(v6, v7);
  v0[12] = v12;
  v13 = v0[4];
  v14 = v13[9];
  v15 = v13[10];
  __swift_project_boxed_opaque_existential_1Tm(v13 + 6, v14);
  v16 = *(v15 + 72);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_21BDA1274;

  return v20(v14, v15);
}

uint64_t sub_21BDA1274(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];

    return MEMORY[0x2822009F8](sub_21BDA16FC, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[16] = v9;
    *v9 = v6;
    v9[1] = sub_21BDA13F4;
    v10 = v4[4];

    return sub_21BDA0878(a1);
  }
}

uint64_t sub_21BDA13F4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BDA1514, v4, v3);
}

uint64_t sub_21BDA1514()
{
  v22 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  sub_21BE2613C();

  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v6)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_21BB3D81C(*(v11 + 16), *(v11 + 24), &v21);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s returning picture store", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  v7(v8, v10);
  v14 = v0[14];
  v15 = v0[7];
  v16 = v0[8];
  v18 = v0[3];
  v17 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *v18 = v0[2];

  v19 = v0[1];

  return v19();
}

uint64_t sub_21BDA16FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_21BDA1774(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_21BDA1848, v5, v4);
}

uint64_t sub_21BDA1848()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v0[13] = sub_21BE28D6C();
    v5 = sub_21BE28D0C();
    v0[14] = v5;
    v0[15] = v4;

    return MEMORY[0x2822009F8](sub_21BDA1940, v5, v4);
  }

  else
  {
    v6 = v0[9];

    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }
}

void sub_21BDA1940()
{
  v1 = *(v0[12] + 40);
  v0[16] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21BDA1A54;
    v6 = v0[7];

    v7(v0 + 5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDA1A54()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = *(v2 + 128);
  v7 = *(v2 + 56);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 112);
    v9 = *(v3 + 120);
    v10 = sub_21BDA1CC4;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 112);
    v9 = *(v3 + 120);
    v10 = sub_21BDA1BE4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BDA1BE4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21BDA1C58, v3, v4);
}

uint64_t sub_21BDA1C58()
{
  v1 = v0[9];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BDA1CC4()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_21BDA2E58, v3, v4);
}

uint64_t sub_21BDA1D30()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v3;
}

uint64_t dispatch thunk of FamilyCircleStoreProtocol.doLoad()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FamilyCircleStoreProtocol.doReload()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

uint64_t sub_21BDA2360(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8C3C;

  return v9(a1, a2);
}

uint64_t sub_21BDA2478(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

id sub_21BDA25B8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC14FamilyCircleUI21AccountStatusObserver_accountStore;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_21BB3A35C(v2, v8);
    v3 = v8[4];
    __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
    v4 = *(v3 + 16);
    v5 = v1;
    v4();

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v6 = type metadata accessor for AccountStatusObserver();
  v9.receiver = v1;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_21BDA2714()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_280BD7E90 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_280BDCBD8 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_21BDA27BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BDA283C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BDA28B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BDA0F3C(a1, v1);
}

uint64_t sub_21BDA2950(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDA1774(a1, v1);
}

unint64_t sub_21BDA2A84()
{
  result = qword_280BD84D8;
  if (!qword_280BD84D8)
  {
    type metadata accessor for FamilyConfigLogger();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD84D8);
  }

  return result;
}

uint64_t sub_21BDA2ADC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BD18E78(a1, v4, v5, v7, v6);
}

uint64_t sub_21BDA2B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD9F0E8(a1, v4, v5, v6);
}

uint64_t objectdestroy_69Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BDA2C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD9EBAC(a1, v4, v5, v6);
}

uint64_t sub_21BDA2D80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BD9E538(a1, v1);
}

uint64_t type metadata accessor for DoneBarButton()
{
  result = qword_27CDBC8A8;
  if (!qword_27CDBC8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BDA2EE8()
{
  result = sub_21BE278CC();
  if (v1 <= 0x3F)
  {
    result = sub_21BC41568();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BDA2F88(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DoneBarButton() + 20));
  v2 = *v1;
  v3 = v1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8D8, &qword_21BE4B568);
  sub_21BDA357C();

  return sub_21BE2843C();
}

uint64_t sub_21BDA3028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8F8, qword_21BE4B578);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8F0, &qword_21BE4B570);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = sub_21BE2866C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  v19[0] = v12;
  v19[1] = v14;
  sub_21BB41FA4();
  if (v9)
  {
    sub_21BE283DC();
    (*(v5 + 16))(v3, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC8E8, &qword_27CDBC8F0, &qword_21BE4B570);
    sub_21BE2784C();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    *v3 = sub_21BE27DBC();
    *(v3 + 1) = v16;
    v3[16] = v17 & 1;
    *(v3 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC8E8, &qword_27CDBC8F0, &qword_21BE4B570);
    return sub_21BE2784C();
  }
}

uint64_t sub_21BDA3338()
{
  v1 = v0;
  v2 = sub_21BE278CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8B8, &qword_21BE4B558);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  (*(v3 + 16))(v6, v1, v2);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8C0, &qword_21BE4B560);
  sub_21BB3B038(&qword_27CDBC8C8, &qword_27CDBC8C0, &qword_21BE4B560);
  sub_21BE26EDC();
  v12 = sub_21BB3B038(&qword_27CDBC8D0, &qword_27CDBC8B8, &qword_21BE4B558);
  MEMORY[0x21CF02AD0](v11, v7, v12);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_21BDA357C()
{
  result = qword_27CDBC8E0;
  if (!qword_27CDBC8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC8D8, &qword_21BE4B568);
    sub_21BB3B038(&qword_27CDBC8E8, &qword_27CDBC8F0, &qword_21BE4B570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC8E0);
  }

  return result;
}

uint64_t sub_21BDA3634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDA41E4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BDA3698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDA41E4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BDA36FC()
{
  sub_21BDA41E4();
  sub_21BE27ABC();
  __break(1u);
}

void sub_21BDA37EC(void *a1)
{
  v2 = v1;
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v17 = [a1 itemProvider];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() rem_remindersAllowedSharingOptions];
    v20 = [v19 shareOptions];

    [v16 insertCollaborationItemProvider:v18 collaborationShareOptions:v20 collaborationMetadata:0 isCollaboration:1];
  }

  else
  {
    v21 = [a1 URL];
    if (v21)
    {
      v22 = v21;
      sub_21BE25B5C();

      (*(v5 + 56))(v13, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v13, 1, 1, v4);
    }

    sub_21BC438F8(v13, v15);
    if ((*(v5 + 48))(v15, 1, v4))
    {
      sub_21BC12FE4(v15);
      v23 = 0;
    }

    else
    {
      (*(v5 + 16))(v8, v15, v4);
      sub_21BC12FE4(v15);
      sub_21BE25AFC();
      (*(v5 + 8))(v8, v4);
      v23 = sub_21BE289CC();
    }

    [v16 setBody_];
  }

  v24 = sub_21BE28C1C();
  [v16 setRecipients_];

  [v16 setMessageComposeDelegate_];
  [v2 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_21BDA3CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_21BE28D7C();
  v5[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDA3D8C, v7, v6);
}

uint64_t sub_21BDA3D8C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = sub_21BE28C3C();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  *(v0 + 72) = sub_21BE28D6C();
  v9 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDA3E54, v9, v8);
}

uint64_t sub_21BDA3E54()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[4];

    v5 = *&v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients];
    *&v4[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients] = v1;

    if (v3)
    {
      v6 = v0[7];
      v6[2](v6, 1);
      _Block_release(v6);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21BDA3FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageComposeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BDA4064(uint64_t a1)
{
  v2 = v1;
  if (a1 == 1)
  {
    v4 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onDoneSharing];
    v3 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onDoneSharing + 8];
    v5 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients];

    v4(v6);
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onCancel];
    v8 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onCancel + 8];
    v7();
  }

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_21BDA4108()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBA6A64;

  return sub_21BDA3CEC(v2, v3, v4, v5, v6);
}

unint64_t sub_21BDA41E4()
{
  result = qword_27CDBC988;
  if (!qword_27CDBC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC988);
  }

  return result;
}

uint64_t sub_21BDA4248(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  sub_21BE289DC();

  sub_21BB41FA4();
  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11;
  sub_21BE27BEC();
  v13 = sub_21BE27D9C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  v18 = sub_21BE27D8C();
  sub_21BBC7C7C(v13, v15, v17 & 1);

  return v18;
}

uint64_t sub_21BDA4474(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  sub_21BE289DC();

  sub_21BB41FA4();
  return sub_21BE27DBC();
}

uint64_t sub_21BDA4644()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC9F8, &qword_21BE4B7A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - v3;
  v5 = sub_21BE26AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA00, &qword_21BE4B7B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_21BE26B0C();
  v15 = MEMORY[0x277CE1A00];
  MEMORY[0x21CF01C70](v9, v5, MEMORY[0x277CE1A00]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF01C90](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_21BE26ADC();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

unint64_t sub_21BDA490C()
{
  result = qword_27CDBC9F0;
  if (!qword_27CDBC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC9F0);
  }

  return result;
}

uint64_t sub_21BDA4960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA08, &qword_21BE4B7B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE289CC();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  if (v7)
  {
    sub_21BE2836C();
    v8 = *MEMORY[0x277CE1020];
    v9 = sub_21BE283AC();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v3, v8, v9);
    (*(v10 + 56))(v3, 0, 1, v9);
    v11 = sub_21BE2839C();

    sub_21BDA4B94(v3);
    return v11;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDA4B94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA08, &qword_21BE4B7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BDA4BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BDA4C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BDA4CB4(char a1)
{
  v1 = 0x726177726F666F67;
  v2 = &selRef_systemCyanColor;
  v3 = &selRef_whiteColor;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v1 = 0x6573616863727570;
      v2 = &selRef_systemMintColor;
      break;
    case 3:
      v1 = 0xD000000000000015;
      v2 = &selRef_systemOrangeColor;
      break;
    case 4:
      v1 = 0xD000000000000025;
      v2 = &selRef_systemGreenColor;
      break;
    case 5:
    case 6:
      v1 = 0x6F6C2E656C707061;
      v2 = &selRef_blackColor;
      break;
    case 7:
      v1 = 0x61632E656C707061;
      v2 = &selRef_blackColor;
      break;
    case 8:
      v1 = 0x6F6C2E656C707061;
      v2 = &selRef_systemGrayColor;
      break;
    case 9:
      v1 = 0xD00000000000001ELL;
      goto LABEL_6;
    case 10:
      v1 = 0x73616C6772756F68;
      goto LABEL_15;
    case 11:
    case 12:
      v1 = 0xD00000000000001DLL;
LABEL_6:
      v2 = &selRef_systemPurpleColor;
      break;
    case 13:
      v1 = 0x6E6F697461636F6CLL;
      v2 = &selRef_systemBlueColor;
      break;
    case 14:
      v1 = 0xD00000000000001FLL;
LABEL_15:
      v2 = &selRef_systemIndigoColor;
      break;
    case 15:
      v1 = 0xD00000000000001FLL;
      v2 = &selRef_whiteColor;
      v3 = &selRef_systemIndigoColor;
      break;
    default:
      v1 = 0x2E6E6F7276656863;
      v2 = &selRef_clearColor;
      v3 = &selRef_tertiaryLabelColor;
      break;
  }

  v4 = objc_opt_self();
  v5 = [v4 *v3];
  v6 = [v4 *v2];
  return v1;
}

unint64_t sub_21BDA4F70(char a1)
{
  result = 0x6E6F7276656863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 12:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x425F4F545F4B5341;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x41435F454C505041;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x4449656C707061;
      break;
    case 9:
      result = 0x73696C6B63656863;
      break;
    case 10:
      result = 0x69746E6565726373;
      break;
    case 11:
      result = 0x7567746E65726170;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
      result = 0x6E656D6D6F636572;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BDA5144(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21BDA4F70(*a1);
  v5 = v4;
  if (v3 == sub_21BDA4F70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BDA51CC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BDA4F70(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDA5230()
{
  sub_21BDA4F70(*v0);
  sub_21BE28ABC();
}

uint64_t sub_21BDA5284()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BDA4F70(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDA52E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BDA6580();
  *a2 = result;
  return result;
}

unint64_t sub_21BDA5314@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BDA4F70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_21BDA5340(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E0, &qword_21BE3E908);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E8, &qword_21BE3EFE0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA78, &qword_21BE4B918);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - v11);
  v13 = *v1;
  v14 = sub_21BDA4CB4(*v1);
  v16 = v15;
  v18 = v17;

  v20 = *(v1 + 24);
  v36 = v14;
  v37 = v16;
  v35 = &v36;
  if (sub_21BC9BF08(sub_21BBF0CC4, v34, v20))
  {
    type metadata accessor for FamilyChecklistStore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_21BE289CC();
    v24 = [objc_opt_self() imageNamed:v23 inBundle:v22 withConfiguration:0];

    if (v24)
    {

      v25 = [v24 imageWithRenderingMode_];
      *v12 = sub_21BE2836C();
      swift_storeEnumTagMultiPayload();
      v26 = sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908);
      swift_retain_n();
      v36 = v2;
      v37 = v26;
      swift_getOpaqueTypeConformance2();
      sub_21BE2784C();
    }

    else
    {
      sub_21BE2978C();
      __break(1u);
    }
  }

  else
  {

    sub_21BDA65CC(v13);
    sub_21BE269CC();
    *(v1 + 1);
    v27 = sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908);
    v28 = v31;
    sub_21BE27DCC();
    (*(v30 + 8))(v5, v2);
    v29 = v32;
    (*(v32 + 16))(v12, v28, v6);
    swift_storeEnumTagMultiPayload();
    v36 = v2;
    v37 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    (*(v29 + 8))(v28, v6);
  }
}

uint64_t sub_21BDA5824@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA10, &qword_21BE4B868);
  v2 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v55[-v3];
  v4 = sub_21BE2838C();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA18, &unk_21BE4B870);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v9 = &v55[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55[-v12];
  v14 = sub_21BE27CEC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = v1;
  v19 = *v1;
  v21 = sub_21BDA4F70(v19);
  v22 = v20;
  if (v21 == 0x6E6F7276656863 && v20 == 0xE700000000000000)
  {
  }

  else
  {
    v56 = v19;
    v57 = v4;
    v23 = sub_21BE2995C();

    if ((v23 & 1) == 0)
    {
      if (v21 == 0xD000000000000015 && 0x800000021BE55A00 == v22)
      {
      }

      else
      {
        v34 = sub_21BE2995C();

        if ((v34 & 1) == 0)
        {
          v54 = v59;
          sub_21BDA5340(v59);
          sub_21BB576FC(v54, v9);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA20, &qword_21BE4B880);
          sub_21BDA60A8();
          sub_21BDA6414();
          sub_21BE2784C();
          return sub_21BB5776C(v54);
        }
      }

      v35 = v56;
      sub_21BDA4CB4(v56);
      v37 = v36;

      sub_21BE2837C();
      v40 = v60;
      v39 = v61;
      v41 = v57;
      (*(v61 + 104))(v60, *MEMORY[0x277CE0FE0], v57);
      v42 = sub_21BE283CC();

      (*(v39 + 8))(v40, v41);
      sub_21BE2869C();
      sub_21BE26F2C();
      v43 = v81;
      v44 = v82;
      LOBYTE(v41) = v84;
      v60 = v85;
      v61 = v83;
      v59 = v86;
      sub_21BDA4CB4(v35);
      v46 = v45;

      v47 = sub_21BE2826C();
      KeyPath = swift_getKeyPath();
      LOBYTE(v69) = v44;
      LOBYTE(v65) = v41;
      sub_21BDA4CB4(v35);

      v50 = sub_21BE2826C();
      v51 = sub_21BE27B7C();
      *&v75 = v42;
      *(&v75 + 1) = v43;
      v76[0] = v44;
      *&v76[8] = v61;
      v76[16] = v41;
      *&v76[24] = v60;
      *&v77 = v59;
      *(&v77 + 1) = KeyPath;
      *&v78 = v47;
      *(&v78 + 1) = v50;
      v79 = v51;
      *v67 = *&v76[16];
      *&v67[16] = v77;
      *&v67[32] = v78;
      v67[48] = v51;
      v65 = v75;
      v66 = *v76;
      v80 = 1;
      v68 = 1;
      sub_21BDA6510(&v75, &v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA38, &qword_21BE4B888);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA58, &qword_21BE4B898);
      sub_21BDA6134();
      sub_21BDA62A4();
      sub_21BE2784C();
      v52 = v72;
      *(v9 + 2) = v71;
      *(v9 + 3) = v52;
      *(v9 + 4) = v73;
      *(v9 + 40) = v74;
      v53 = v70;
      *v9 = v69;
      *(v9 + 1) = v53;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA20, &qword_21BE4B880);
      sub_21BDA60A8();
      sub_21BDA6414();
      sub_21BE2784C();
      return sub_21BB3A4CC(&v75, &qword_27CDBCA58, &qword_21BE4B898);
    }
  }

  v24 = sub_21BE2837C();
  v25 = [objc_opt_self() tertiaryLabelColor];
  v26 = sub_21BE2826C();
  v27 = swift_getKeyPath();
  (*(v15 + 104))(v18, *MEMORY[0x277CE0AA0], v14);
  v28 = sub_21BE27C1C();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  sub_21BE27C6C();
  sub_21BB3A4CC(v13, &qword_27CDB8858, &qword_21BE3CA18);
  (*(v15 + 8))(v18, v14);
  sub_21BE27C2C();
  v29 = sub_21BE27C9C();

  v30 = swift_getKeyPath();
  LOBYTE(v81) = 0;
  *&v65 = v24;
  *(&v65 + 1) = v27;
  *&v66 = v26;
  *(&v66 + 1) = v30;
  *v67 = v29;
  *&v67[8] = v75;
  *&v67[24] = *v76;
  *&v67[33] = *&v76[9];
  v68 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA38, &qword_21BE4B888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA58, &qword_21BE4B898);
  sub_21BDA6134();
  sub_21BDA62A4();
  sub_21BE2784C();
  v31 = v72;
  *(v9 + 2) = v71;
  *(v9 + 3) = v31;
  *(v9 + 4) = v73;
  *(v9 + 40) = v74;
  v32 = v70;
  *v9 = v69;
  *(v9 + 1) = v32;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA20, &qword_21BE4B880);
  sub_21BDA60A8();
  sub_21BDA6414();
  sub_21BE2784C();
}

unint64_t sub_21BDA60A8()
{
  result = qword_27CDBCA28;
  if (!qword_27CDBCA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA20, &qword_21BE4B880);
    sub_21BDA6134();
    sub_21BDA62A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA28);
  }

  return result;
}

unint64_t sub_21BDA6134()
{
  result = qword_27CDBCA30;
  if (!qword_27CDBCA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA38, &qword_21BE4B888);
    sub_21BDA61EC();
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA30);
  }

  return result;
}

unint64_t sub_21BDA61EC()
{
  result = qword_27CDBCA40;
  if (!qword_27CDBCA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA48, &qword_21BE4B890);
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA40);
  }

  return result;
}

unint64_t sub_21BDA62A4()
{
  result = qword_27CDBCA50;
  if (!qword_27CDBCA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA58, &qword_21BE4B898);
    sub_21BDA635C();
    sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA50);
  }

  return result;
}

unint64_t sub_21BDA635C()
{
  result = qword_27CDBCA60;
  if (!qword_27CDBCA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA68, &unk_21BE4B8A0);
    sub_21BC65EA8();
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA60);
  }

  return result;
}

unint64_t sub_21BDA6414()
{
  result = qword_27CDBCA70;
  if (!qword_27CDBCA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA10, &qword_21BE4B868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB90E0, &qword_21BE3E908);
    sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA70);
  }

  return result;
}

uint64_t sub_21BDA6510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCA58, &qword_21BE4B898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDA6580()
{
  v0 = sub_21BE2980C();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

id sub_21BDA65CC(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D1B1A0]) init];
  sub_21BDA4CB4(a1);
  v4 = v3;
  v6 = v5;

  v7 = [v4 CGColor];
  v8 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

  sub_21BDA4CB4(a1);
  v10 = v9;

  v12 = [v10 CGColor];

  v13 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21BE32770;
  v15 = sub_21BDA684C();
  *(v14 + 56) = v15;
  *(v14 + 32) = v8;
  v16 = v8;
  v17 = sub_21BE28C1C();

  [v2 setSymbolColors_];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21BE32770;
  *(v18 + 56) = v15;
  *(v18 + 32) = v13;
  v19 = v13;
  v20 = sub_21BE28C1C();

  [v2 setEnclosureColors_];

  sub_21BDA4CB4(a1);
  v22 = v21;

  v24 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v25 = v2;
  v26 = sub_21BE289CC();

  v27 = [v24 initWithSymbolName:v26 configuration:v25];

  return v27;
}

unint64_t sub_21BDA684C()
{
  result = qword_27CDBCA80;
  if (!qword_27CDBCA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDBCA80);
  }

  return result;
}

unint64_t sub_21BDA68B8()
{
  result = qword_27CDBCA88;
  if (!qword_27CDBCA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCA90, qword_21BE4B958);
    sub_21BDA60A8();
    sub_21BDA6414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA88);
  }

  return result;
}

unint64_t sub_21BDA6948()
{
  result = qword_27CDBCA98;
  if (!qword_27CDBCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCA98);
  }

  return result;
}

unint64_t sub_21BDA69A0()
{
  result = qword_27CDBCAA0;
  if (!qword_27CDBCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCAA0);
  }

  return result;
}

uint64_t sub_21BDA69F4()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCB50, &unk_21BE4BBB8);
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[10] = v7;
  v1[11] = v6;

  return MEMORY[0x2822009F8](sub_21BDA6B44, v7, v6);
}

uint64_t sub_21BDA6B44()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  sub_21BDA72D4();
  sub_21BE262BC();

  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D07FE8] && (v5 = v0[7], v6 = v0[5], v7 = v0[6], (*(v7 + 16))(v5, v0[8], v6), (*(v7 + 96))(v5, v6), *v5 != 2))
  {
    v15 = v0[4];
    v0[12] = *(v0[2] + 24);
    v16 = sub_21BE28DAC();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v17 = *(MEMORY[0x277D07FF8] + 4);
    v20 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_21BDA6DC4;
    v13 = v0[4];
    v14 = (v0 + 129);
  }

  else
  {
    v8 = v0[2];
    v9 = v0[3];
    (*(v0[6] + 8))(v0[8], v0[5]);
    v0[14] = *(v8 + 24);
    v10 = sub_21BE28DAC();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = *(MEMORY[0x277D07FD0] + 4);
    v20 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_21BDA6FFC;
    v13 = v0[3];
    v14 = v0 + 16;
  }

  return v20(v14, v13);
}

uint64_t sub_21BDA6DC4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;

  v6 = *(v2 + 96);
  v7 = *(v2 + 32);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    v10 = sub_21BDA93A4;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    v10 = sub_21BDA6F54;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BDA6F54()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[3];
  v7 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BDA6FFC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;

  v6 = *(v2 + 112);
  v7 = *(v2 + 24);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    v10 = sub_21BDA93A8;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    v10 = sub_21BDA718C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BDA718C()
{
  v1 = v0[9];

  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BDA7218()
{
  sub_21BD0A07C();
  sub_21BE2755C();
  return v1;
}

void sub_21BDA7254()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = type metadata accessor for ScreenTimeStore();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    v5 = swift_allocObject();
    v6 = v1;
    v7 = sub_21BDA8C7C(v6, v5);

    qword_27CDD4360 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDA72D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-v3];
  if (*(v0 + 24))
  {
    v5 = *(v0 + 24);
  }

  else
  {
    sub_21BE2610C();
    v6 = sub_21BE26A4C();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    swift_allocObject();
    swift_weakInit();
    v13[15] = 0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCB60, &qword_21BE4BBD8);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = v0;
    v5 = sub_21BE262AC();
    v11 = *(v0 + 24);
    *(v10 + 24) = v5;
  }

  return v5;
}

uint64_t sub_21BDA7470(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_21BE26A4C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[11] = v7;
  v2[12] = v6;

  return MEMORY[0x2822009F8](sub_21BDA7564, v7, v6);
}

uint64_t sub_21BDA7564()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    sub_21BE2613C();
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FCC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21BB35000, v4, v5, "ScreenTimeStore: load method called", v6, 2u);
      MEMORY[0x21CF05C50](v6, -1, -1);
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];

    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_21BDA7738;

    return sub_21BDA7968();
  }

  else
  {
    v12 = v0[10];

    sub_21BDA8B54();
    swift_allocError();
    swift_willThrow();
    v13 = v0[9];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21BDA7738(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = sub_21BDA78F0;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = sub_21BDA7864;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BDA7864()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);

  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BDA78F0()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BDA7968()
{
  *(v1 + 16) = v0;
  sub_21BE28D7C();
  *(v1 + 24) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDA7A00, v3, v2);
}

uint64_t sub_21BDA7A00()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = type metadata accessor for FamilySignpost();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21BC84D18(0xD000000000000010, 0x800000021BE613D0, "loadSettings", 12, 2);
  v6 = v2[7];
  v7 = v2[8];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 4, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = sub_21BDA8DD0(v8);
  v10 = *MEMORY[0x277D26050];
  v11 = sub_21BE28A0C();
  v13 = sub_21BDE56F0(v11, v12, v9);

  sub_21BC852D8();

  v14 = v0[1];

  return v14(v13 & 1);
}

uint64_t sub_21BDA7B38(uint64_t a1)
{
  v1[5] = a1;
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_21BDA7BD0, v3, v2);
}

uint64_t sub_21BDA7BD0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BDA7CC0;

    return sub_21BDA69F4();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BDA7CC0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BDA7DE0, v4, v3);
}

uint64_t sub_21BDA7DE0()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BDA7E4C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  v2 = OBJC_IVAR____TtC14FamilyCircleUI15ScreenTimeStore___observationRegistrar;
  v3 = sub_21BE25F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BDA7F00()
{
  v1 = [*v0 effectiveUserSettings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  return v3;
}

uint64_t type metadata accessor for ScreenTimeStore()
{
  result = qword_27CDBCAC0;
  if (!qword_27CDBCAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BDA7FD8()
{
  result = sub_21BE25F5C();
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

id sub_21BDA80BC()
{
  ObjectType = swift_getObjectType();
  sub_21BB3A35C(v0 + OBJC_IVAR____TtC14FamilyCircleUI29FAMCProfileConnectionObserver_connection, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v4 = *(v3 + 24);
  v5 = v0;
  v4(v0, v2, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  v7.receiver = v5;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21BDA82D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BDA83A4, 0, 0);
}

uint64_t sub_21BDA83A4()
{
  v24 = v0;
  v1 = v0[6];
  v2 = v0[2];
  sub_21BE2613C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315394;
    swift_getObjectType();
    v13 = sub_21BE29BBC();
    v15 = sub_21BB3D81C(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_21BB3D81C(0xD000000000000046, 0x800000021BE613F0, &v23);
    _os_log_impl(&dword_21BB35000, v4, v5, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  v0[7] = v16;
  v17 = (v0[2] + OBJC_IVAR____TtC14FamilyCircleUI29FAMCProfileConnectionObserver_changeBlock);
  v18 = v17[1];
  v22 = (*v17 + **v17);
  v19 = (*v17)[1];
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = sub_21BDA8608;

  return v22();
}

uint64_t sub_21BDA8608()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BDA8704, 0, 0);
}

uint64_t sub_21BDA8704()
{
  v23 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE2613C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v6)
  {
    v11 = v0[2];
    v21 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    swift_getObjectType();
    v14 = sub_21BE29BBC();
    v16 = sub_21BB3D81C(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_21BB3D81C(0xD000000000000046, 0x800000021BE613F0, &v22);
    _os_log_impl(&dword_21BB35000, v4, v5, "…Complete (%s.%s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    v21(v8, v10);
  }

  else
  {

    v7(v8, v10);
  }

  v18 = v0[5];
  v17 = v0[6];

  v19 = v0[1];

  return v19();
}

uint64_t getEnumTagSinglePayload for ScreenTimeStore.Settings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21BDA8AB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BDA7470(a1, v1);
}

unint64_t sub_21BDA8B54()
{
  result = qword_27CDBCB68;
  if (!qword_27CDBCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCB68);
  }

  return result;
}

uint64_t sub_21BDA8BA8()
{
  if (qword_27CDB4FD8 != -1)
  {
    swift_once();
  }

  qword_27CDD4368 = qword_27CDD4360;
}

uint64_t sub_21BDA8C0C@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4FE0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CDD4368;
}

uint64_t sub_21BDA8C7C(void *a1, uint64_t a2)
{
  v13[3] = sub_21BDA9250();
  v13[4] = &off_282D964C0;
  v13[0] = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_21BE25F4C();
  sub_21BB3A35C(v13, a2 + 32);
  sub_21BB3A35C(v13, v12);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = type metadata accessor for FAMCProfileConnectionObserver();
  v6 = objc_allocWithZone(v5);
  sub_21BB3A35C(v12, &v6[OBJC_IVAR____TtC14FamilyCircleUI29FAMCProfileConnectionObserver_connection]);
  v7 = &v6[OBJC_IVAR____TtC14FamilyCircleUI29FAMCProfileConnectionObserver_changeBlock];
  *v7 = &unk_21BE4BC10;
  *(v7 + 1) = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  swift_retain_n();
  v8 = objc_msgSendSuper2(&v11, sel_init);
  [a1 registerObserver_];

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);

  v9 = *(a2 + 16);
  *(a2 + 16) = v8;

  return a2;
}

uint64_t sub_21BDA8DD0(uint64_t a1)
{
  v36 = MEMORY[0x277D84FA0];
  if (!a1)
  {
    goto LABEL_33;
  }

  v2 = *MEMORY[0x277D26158];
  *&v25[0] = sub_21BE28A0C();
  *(&v25[0] + 1) = v3;
  sub_21BE2958C();
  if (!*(a1 + 16) || (v4 = sub_21BBB31E8(&v32), (v5 & 1) == 0))
  {

    sub_21BBB7238(&v32);
LABEL_33:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_34;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v4, &v27);
  sub_21BBB7238(&v32);

  if (!*(&v28 + 1))
  {
LABEL_34:
    sub_21BB3A4CC(&v27, &qword_27CDB5940, &unk_21BE32B10);
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7AD8, &qword_21BE4BBF0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  v7 = 0;
  v8 = v32;
  v9 = v32 + 64;
  v10 = 1 << *(v32 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v32 + 64);
  v13 = (v10 + 63) >> 6;
  v22 = *MEMORY[0x277D26190];
  while (v12)
  {
    v14 = v7;
LABEL_21:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v14 << 6);
    sub_21BBB71DC(*(v8 + 48) + 40 * v18, v25);
    sub_21BB3DCD4(*(v8 + 56) + 32 * v18, v24);
    v27 = v25[0];
    v28 = v25[1];
    *&v29 = v26;
    sub_21BB414D0(v24, (&v29 + 8));
LABEL_22:
    v34[0] = v29;
    v34[1] = v30;
    v35 = v31;
    v32 = v27;
    v33 = v28;
    if (!*(&v28 + 1))
    {

      return v36;
    }

    v27 = v32;
    v28 = v33;
    *&v29 = *&v34[0];
    sub_21BB414D0((v34 + 8), v25);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v19 = *&v24[0];
    v23 = sub_21BE28A0C();
    sub_21BE2958C();
    if (!*(v19 + 16) || (v20 = sub_21BBB31E8(v25), (v21 & 1) == 0))
    {

      sub_21BBB7238(v25);
      goto LABEL_10;
    }

    sub_21BB3DCD4(*(v19 + 56) + 32 * v20, v24);
    sub_21BBB7238(v25);

    if (swift_dynamicCast() & 1) != 0 && (sub_21BBB71DC(&v27, v25), (swift_dynamicCast()))
    {
      if (v23)
      {
        sub_21BBB7238(&v27);
      }

      else
      {
        sub_21BC67C60(v25, *&v24[0], *(&v24[0] + 1));

        result = sub_21BBB7238(&v27);
      }
    }

    else
    {
LABEL_10:
      result = sub_21BBB7238(&v27);
    }
  }

  if (v13 <= v7 + 1)
  {
    v15 = v7 + 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      v12 = 0;
      v31 = 0;
      v30 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = v16;
      v27 = 0u;
      goto LABEL_22;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      v7 = v14;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BDA919C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BDA82D8(a1, v4, v5, v6);
}

unint64_t sub_21BDA9250()
{
  result = qword_27CDBCB78;
  if (!qword_27CDBCB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDBCB78);
  }

  return result;
}

uint64_t sub_21BDA929C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBA6A64;

  return sub_21BDA7B38(v0);
}

unint64_t sub_21BDA9350()
{
  result = qword_27CDBCB80;
  if (!qword_27CDBCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCB80);
  }

  return result;
}

double sub_21BDA93D8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21BE275DC();
  v36 = 0;
  sub_21BDA9648(a2, a3, a1, &v19);
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v53[12] = v31;
  v53[13] = v32;
  v53[14] = v33;
  v53[8] = v27;
  v53[9] = v28;
  v53[10] = v29;
  v53[11] = v30;
  v53[4] = v23;
  v53[5] = v24;
  v53[6] = v25;
  v53[7] = v26;
  v53[0] = v19;
  v53[1] = v20;
  v52 = v34;
  v54 = v34;
  v53[2] = v21;
  v53[3] = v22;
  sub_21BBA3854(&v37, v18, &qword_27CDBCB90, &qword_21BE4BDE8);
  sub_21BB3A4CC(v53, &qword_27CDBCB90, &qword_21BE4BDE8);
  *(&v35[12] + 7) = v49;
  *(&v35[13] + 7) = v50;
  *(&v35[14] + 7) = v51;
  *(&v35[15] + 7) = v52;
  *(&v35[8] + 7) = v45;
  *(&v35[9] + 7) = v46;
  *(&v35[10] + 7) = v47;
  *(&v35[11] + 7) = v48;
  *(&v35[4] + 7) = v41;
  *(&v35[5] + 7) = v42;
  *(&v35[6] + 7) = v43;
  *(&v35[7] + 7) = v44;
  *(v35 + 7) = v37;
  *(&v35[1] + 7) = v38;
  *(&v35[2] + 7) = v39;
  *(&v35[3] + 7) = v40;
  v9 = v35[13];
  *(a4 + 209) = v35[12];
  *(a4 + 225) = v9;
  *(a4 + 241) = v35[14];
  *(a4 + 256) = *(&v35[14] + 15);
  v10 = v35[9];
  *(a4 + 145) = v35[8];
  *(a4 + 161) = v10;
  v11 = v35[11];
  *(a4 + 177) = v35[10];
  *(a4 + 193) = v11;
  v12 = v35[5];
  *(a4 + 81) = v35[4];
  *(a4 + 97) = v12;
  v13 = v35[7];
  *(a4 + 113) = v35[6];
  *(a4 + 129) = v13;
  v14 = v35[1];
  *(a4 + 17) = v35[0];
  *(a4 + 33) = v14;
  result = *&v35[2];
  v16 = v35[3];
  *(a4 + 49) = v35[2];
  v17 = v36;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v17;
  *(a4 + 65) = v16;
  return result;
}

uint64_t sub_21BDA9648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_21BE289CC();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8 withConfiguration:0];

  if (v10)
  {
    v25 = sub_21BE2836C();
    v24 = sub_21BE2771C();
    v11 = 1;
    v58 = 1;
    sub_21BDA9A74(v60);
    *&v57[7] = v60[0];
    *&v57[23] = v60[1];
    *&v57[39] = v60[2];
    *&v57[55] = v60[3];
    sub_21BE286AC();
    sub_21BE2725C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if ((v32[0] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v11 = v32[0];
    }

    KeyPath = swift_getKeyPath();
    v59 = 0;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v28 = v24;
    v29[0] = 1;
    *&v29[17] = *&v57[16];
    *&v29[33] = *&v57[32];
    *&v29[49] = *&v57[48];
    *&v29[64] = *&v57[63];
    *&v29[1] = *v57;
    *&v29[104] = v52;
    *&v29[88] = v51;
    *&v29[72] = v50;
    *&v29[168] = v56;
    *&v29[152] = v55;
    *&v29[136] = v54;
    *&v29[120] = v53;
    v29[184] = v11;
    *&v30 = KeyPath;
    WORD4(v30) = 0;
    v14 = *&v29[144];
    *(a4 + 184) = *&v29[160];
    v15 = v30;
    *(a4 + 200) = *&v29[176];
    *(a4 + 216) = v15;
    v16 = *&v29[80];
    *(a4 + 120) = *&v29[96];
    v17 = *&v29[128];
    *(a4 + 136) = *&v29[112];
    *(a4 + 152) = v17;
    *(a4 + 168) = v14;
    v18 = *&v29[16];
    *(a4 + 56) = *&v29[32];
    v19 = *&v29[64];
    *(a4 + 72) = *&v29[48];
    *&v31 = sub_21BDAAE28;
    *(&v31 + 1) = v13;
    *(a4 + 88) = v19;
    *(a4 + 104) = v16;
    v20 = *v29;
    *(a4 + 8) = v28;
    *(a4 + 24) = v20;
    *(a4 + 40) = v18;
    *(a4 + 232) = v31;
    v35 = *&v57[16];
    v36 = *&v57[32];
    *v37 = *&v57[48];
    v34 = *v57;
    v21 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v38 = v50;
    v39 = v51;
    *a4 = v25;
    v32[0] = v24;
    v32[1] = 0;
    v33 = 1;
    *&v37[15] = *&v57[63];
    v40 = v21;
    v45 = v11;
    v46 = KeyPath;
    v47 = 0;
    v48 = sub_21BDAAE28;
    v49 = v13;
    v22 = a3;

    sub_21BBA3854(&v28, v27, &qword_27CDBCB98, &unk_21BE4BEB0);
    sub_21BB3A4CC(v32, &qword_27CDBCB98, &unk_21BE4BEB0);
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDA9A74@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v40 = v10;
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BDA9D5C();
  if (v15)
  {
    v16 = sub_21BE27DBC();
    v18 = v17;
    v20 = v19;
    sub_21BE27BEC();
    v21 = sub_21BE27D9C();
    v38 = v12;
    v23 = v22;
    v39 = v14;
    v25 = v24;

    sub_21BBC7C7C(v16, v18, v20 & 1);

    sub_21BE2833C();
    v26 = sub_21BE27D4C();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v25 & 1;
    v14 = v39;
    v34 = v23;
    v12 = v38;
    sub_21BBC7C7C(v21, v34, v33);

    v35 = v30 & 1;
    sub_21BBA4A38(v26, v28, v35);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
  }

  v36 = v12 & 1;
  sub_21BBA4A38(v9, v40, v36);

  sub_21BC75900(v26, v28, v35, v32);
  sub_21BC75944(v26, v28, v35, v32);
  *a1 = v9;
  *(a1 + 8) = v40;
  *(a1 + 16) = v36;
  *(a1 + 24) = v14;
  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = v35;
  *(a1 + 56) = v32;
  sub_21BC75944(v26, v28, v35, v32);
  sub_21BBC7C7C(v9, v40, v36);
}

uint64_t sub_21BDA9D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v4 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
    v2 = sub_21BE2599C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    return 0;
  }

  return v2;
}

uint64_t sub_21BDA9FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BE28D7C();
  v11 = a3;

  v12 = sub_21BE28D6C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  sub_21BBA932C(0, 0, v9, &unk_21BE4BEC8, v13);
}

uint64_t sub_21BDAA10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21BE28D7C();
  v6[3] = sub_21BE28D6C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_21BBAFDA8;

  return sub_21BDAA1C8(a6, v10, a5);
}

uint64_t sub_21BDAA1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a1;
  v3[35] = a3;
  v4 = sub_21BE26A4C();
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v6 = *(v5 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  sub_21BE28D7C();
  v3[40] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[41] = v8;
  v3[42] = v7;

  return MEMORY[0x2822009F8](sub_21BDAA2C8, v8, v7);
}

uint64_t sub_21BDAA2C8()
{
  v1 = *(v0 + 272);
  if (v1 && (v2 = [v1 topViewController], (*(v0 + 344) = v2) != 0))
  {
    v3 = v2;
    v4 = *(v0 + 280);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if (*(v0 + 360))
    {
      v5 = v0 + 80;
      v6 = *(*(v0 + 280) + 32);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 363;
      *(v0 + 88) = sub_21BDAA664;
      v7 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_21BBDC4C4;
      *(v0 + 232) = &block_descriptor_23_1;
      *(v0 + 240) = v7;
      [v6 presentAppleCardUserInvitationFlowWithViewController:v3 completion:v0 + 208];
LABEL_14:

      return MEMORY[0x282200938](v5);
    }

    v13 = *(v0 + 280);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if (*(v0 + 361) == 1)
    {
      v14 = *(v0 + 280);
      v15 = *(v14 + 32);
      v16 = [*(v14 + 16) altDSID];
      if (v16)
      {
        v17 = v16;
        sub_21BE28A0C();
      }

      v5 = v0 + 16;
      v19 = *(v0 + 344);
      v20 = sub_21BE289CC();
      *(v0 + 352) = v20;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 362;
      *(v0 + 24) = sub_21BDAAAB8;
      v21 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_21BBDC4C4;
      *(v0 + 168) = &block_descriptor_52;
      *(v0 + 176) = v21;
      [v15 presentAppleCardSharingDetailsForAltDSID:v20 viewController:v19 completion:v0 + 144];
      goto LABEL_14;
    }

    v18 = *(v0 + 320);
  }

  else
  {
    v8 = *(v0 + 320);
  }

  v10 = *(v0 + 304);
  v9 = *(v0 + 312);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21BDAA664()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BDAA76C, v2, v1);
}

uint64_t sub_21BDAA76C()
{
  v27 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 363);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "MemberDetailAppleCardView presentAppleCardUserInvitationFlow %{BOOL}d", v5, 8u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);

  (*(v8 + 8))(v6, v7);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v22[0] = 0;
  v23 = xmmword_21BE33DF0;
  v24 = 0;
  v25 = 0;
  v26 = 256;
  sub_21BD23430(v22);
  v9 = *(v0 + 280);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (*(v0 + 361) == 1)
  {
    v10 = *(v0 + 280);
    v11 = *(v10 + 32);
    v12 = [*(v10 + 16) altDSID];
    if (v12)
    {
      v13 = v12;
      sub_21BE28A0C();
    }

    v19 = *(v0 + 344);
    v20 = sub_21BE289CC();
    *(v0 + 352) = v20;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 362;
    *(v0 + 24) = sub_21BDAAAB8;
    v21 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21BBDC4C4;
    *(v0 + 168) = &block_descriptor_52;
    *(v0 + 176) = v21;
    [v11 presentAppleCardSharingDetailsForAltDSID:v20 viewController:v19 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 320);

    v16 = *(v0 + 304);
    v15 = *(v0 + 312);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_21BDAAAB8()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BDAABC0, v2, v1);
}

uint64_t sub_21BDAABC0()
{
  v22 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);

  v5 = *(v0 + 362);

  sub_21BE2614C();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v5;
    _os_log_impl(&dword_21BB35000, v6, v7, "MemberDetailAppleCardView presentAppleCardSharingDetails %{BOOL}d", v8, 8u);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 288);

  (*(v10 + 8))(v9, v11);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 344);
  v17[0] = 0;
  v18 = xmmword_21BE33DF0;
  v19 = 0;
  v20 = 0;
  v21 = 257;
  sub_21BD23430(v17);

  v14 = *(v0 + 304);
  v13 = *(v0 + 312);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21BDAAD50@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  result = sub_21BE283EC();
  *a1 = v7;
  a1[1] = v8;
  a1[2] = sub_21BDAAE20;
  a1[3] = v5;
  return result;
}

uint64_t sub_21BDAAE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BDAA10C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21BDAAEFC()
{
  result = qword_27CDBCBA0;
  if (!qword_27CDBCBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCBA8, qword_21BE4BF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCBA0);
  }

  return result;
}

uint64_t type metadata accessor for MemberDetailsLocationView()
{
  result = qword_27CDBCBB0;
  if (!qword_27CDBCBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BDAAFD8()
{
  sub_21BC08EAC();
  if (v0 <= 0x3F)
  {
    sub_21BDAB110();
    if (v1 <= 0x3F)
    {
      sub_21BD5F4A8();
      if (v2 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
        if (v3 <= 0x3F)
        {
          sub_21BB403C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21BDAB0B8()
{
  result = qword_27CDBDC20;
  if (!qword_27CDBDC20)
  {
    type metadata accessor for LocationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDC20);
  }

  return result;
}

void sub_21BDAB110()
{
  if (!qword_27CDB5EC8)
  {
    sub_21BE26FEC();
    v0 = sub_21BE26E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB5EC8);
    }
  }
}

uint64_t sub_21BDAB198(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v5 = type metadata accessor for MemberDetailsLocationView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_21BE26A4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_21BE2614C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v12;
    v22 = v6;
    v23 = v21;
    *v21 = 67109120;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_21BB35000, v19, v20, "Updating value to newState: %{BOOL}d", v21, 8u);
    v24 = v23;
    v6 = v22;
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = v31;
    MEMORY[0x21CF05C50](v24, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v25 = sub_21BE28DAC();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  sub_21BDAE054(v32, v8);
  sub_21BE28D7C();
  v26 = sub_21BE28D6C();
  v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v26;
  *(v28 + 24) = v29;
  sub_21BDAE794(v8, v28 + v27, type metadata accessor for MemberDetailsLocationView);
  sub_21BBA932C(0, 0, v12, &unk_21BE4C130, v28);
}

uint64_t sub_21BDAB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BDAB54C, v6, v5);
}

uint64_t sub_21BDAB54C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 8);
  v3 = *(v1 + *(type metadata accessor for MemberDetailsLocationView() + 28));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_21BC34664;

  return sub_21BCD1B24(v3);
}

uint64_t sub_21BDAB608()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + *(type metadata accessor for MemberDetailsLocationView() + 28));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (*(v7 + 16) && (v3 = sub_21BBB31A4(v2), (v4 & 1) != 0))
  {
    v5 = *(*(v7 + 56) + v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21BDAB6C8()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v8;
  v3 = [*(v0 + *(type metadata accessor for MemberDetailsLocationView() + 28)) dsid];
  if (!v3)
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v3 = sub_21BE293EC();
  }

  v8 = v3;
  v7[2] = &v8;
  v4 = MEMORY[0x28223BE20](v3);
  v5 = sub_21BC9DAC4(sub_21BBF0CE4, v7, v2);

  return v5 & 1;
}

uint64_t sub_21BDAB7FC()
{
  sub_21BDAB608();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t sub_21BDAB908()
{
  sub_21BDAB6C8();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t sub_21BDABA04()
{
  sub_21BDAB6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  v2 = *(v0 + *(type metadata accessor for MemberDetailsLocationView() + 28));
  v3 = sub_21BE2917C();
  v5 = v4;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_21BBBEFE8();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  sub_21BE2599C();

  v9 = sub_21BE289DC();

  return v9;
}

uint64_t sub_21BDABBB4()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v2 = swift_allocObject();
  if (v20 == 1)
  {
    *(v2 + 16) = xmmword_21BE32770;
    v3 = *(v0 + *(type metadata accessor for MemberDetailsLocationView() + 28));
    v4 = sub_21BE2917C();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_21BBBEFE8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
  }

  else
  {
    *(v2 + 16) = xmmword_21BE33260;
    v10 = *(v0 + *(type metadata accessor for MemberDetailsLocationView() + 28));
    v11 = sub_21BE2917C();
    v13 = v12;
    v14 = MEMORY[0x277D837D0];
    *(v2 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21BBBEFE8();
    *(v2 + 64) = v15;
    *(v2 + 32) = v11;
    *(v2 + 40) = v13;
    v16 = sub_21BE2917C();
    *(v2 + 96) = v14;
    *(v2 + 104) = v15;
    *(v2 + 72) = v16;
    *(v2 + 80) = v17;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_21BE2599C();

  v18 = sub_21BE289DC();

  return v18;
}

uint64_t sub_21BDABE74()
{
  v0 = sub_21BE2917C();
  v2 = v1;
  v3 = sub_21BDAB608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21BE33260;
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_21BBBEFE8();
    *(v4 + 32) = v0;
    *(v4 + 40) = v2;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = v0;
    *(v4 + 80) = v2;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();

    v9 = [v8 bundleForClass_];
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21BE32770;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21BBBEFE8();
    *(v10 + 32) = v0;
    *(v10 + 40) = v2;
    type metadata accessor for ConfirmChildAgeViewModel();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();

    v9 = [v12 bundleForClass_];
  }

  sub_21BE2599C();

  v13 = sub_21BE289DC();

  return v13;
}

uint64_t sub_21BDAC0D8@<X0>(uint64_t a1@<X8>)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCBC0, &qword_21BE4C000);
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v56 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCBC8, &unk_21BE4C008);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A8, &qword_21BE31080);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v57 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCBD0, &qword_21BE4C018);
  sub_21BB3B038(&qword_27CDBCBD8, &qword_27CDBCBD0, &qword_21BE4C018);
  v50 = v12;
  sub_21BE27D0C();
  v13 = type metadata accessor for MemberDetailsLocationView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_21BDAE054(v1, &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v16 = sub_21BE28D6C();
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_21BDAE794(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MemberDetailsLocationView);
  v49 = sub_21BE28DAC();
  v20 = *(v49 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v49);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v43 - v22;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v45 = sub_21BE2715C();
    v46 = &v43;
    v44 = *(v45 - 8);
    v24 = *(v44 + 64);
    MEMORY[0x28223BE20](v45);
    v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_21BE295EC();

    v59 = 0xD00000000000003BLL;
    v60 = 0x800000021BE61490;
    v58 = 161;
    v27 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v27);

    v47 = v3;
    MEMORY[0x28223BE20](v28);
    v29 = &v43 - v22;
    v30 = &v43 - v22;
    v31 = v49;
    (*(v20 + 16))(v29, v30, v49);
    sub_21BE2714C();
    (*(v20 + 8))(v23, v31);
    v3 = v47;
    v32 = v52;
    v33 = v53;
    (*(v51 + 32))(v53, v50, v52);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50B0, &qword_21BE31088);
    (*(v44 + 32))(&v33[*(v34 + 36)], v26, v45);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50B8, &qword_21BE31090);
    v33 = v53;
    v36 = &v53[*(v35 + 36)];
    v37 = sub_21BE2701C();
    (*(v20 + 32))(&v36[*(v37 + 20)], &v43 - v22, v49);
    *v36 = &unk_21BE4C030;
    *(v36 + 1) = v18;
    v32 = v52;
    (*(v51 + 32))(v33, v50, v52);
  }

  v38 = sub_21BB3B038(&qword_27CDBCBE0, &qword_27CDB50A8, &qword_21BE31080);
  v59 = v32;
  v60 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v55;
  v39 = v56;
  sub_21BE27E3C();
  (*(v54 + 8))(v33, v40);
  (*(v3 + 32))(a1, v39, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCBE8, &unk_21BE4C040);
  v42 = (a1 + *(result + 36));
  *v42 = sub_21BDADF08;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_21BDAC7D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCBF0, &qword_21BE4C050);
  v99 = *(v100 - 8);
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v89 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCBF8, &qword_21BE4C058);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v101 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v87 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC00, &qword_21BE4C060);
  v92 = *(v93 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC08, &qword_21BE4C068);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v98 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v103 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC10, &qword_21BE4C070);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC18, &qword_21BE4C078);
  v96 = *(v97 - 8);
  v22 = *(v96 + 64);
  v23 = MEMORY[0x28223BE20](v97);
  v95 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - v25;
  v91 = type metadata accessor for MemberDetailsLocationView();
  v27 = *(a1 + *(v91 + 28));
  v110 = sub_21BDABE74();
  v111 = v28;
  sub_21BB41FA4();
  v110 = sub_21BE27DBC();
  v111 = v29;
  v112 = v30 & 1;
  v113 = v31;
  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC20, &unk_21BE4C080);
  sub_21BB3B038(&qword_27CDBCC28, &qword_27CDBCC20, &unk_21BE4C080);
  sub_21BE2861C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v87 = objc_opt_self();
  v88 = ObjCClassFromMetadata;
  v33 = [v87 bundleForClass_];
  v34 = sub_21BE2599C();
  v36 = v35;

  v110 = v34;
  v111 = v36;
  sub_21BDAE19C();
  v94 = v26;
  sub_21BE27F9C();

  (*(v18 + 8))(v21, v17);
  if ([v27 memberType])
  {
    v110 = sub_21BDABA04();
    v111 = v37;
    v38 = sub_21BE27DBC();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = sub_21BE27B9C();
    v46 = sub_21BE26E0C();
    LOBYTE(v106) = v42 & 1;
    v120 = 0;
    v110 = v38;
    v111 = v40;
    v112 = v42 & 1;
    v113 = v44;
    v114 = v45;
    v115 = v47;
    v116 = v48;
    v117 = v49;
    v118 = v50;
    v119 = 0;
    MEMORY[0x28223BE20](v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7940, &qword_21BE47630);
    sub_21BC35268();
    v51 = v90;
    sub_21BE2861C();
    v52 = v92;
    v53 = v103;
    v54 = v93;
    (*(v92 + 32))(v103, v51, v93);
    v55 = 0;
    v56 = v54;
    v57 = v52;
  }

  else
  {
    v55 = 1;
    v53 = v103;
    v56 = v93;
    v57 = v92;
  }

  v58 = 1;
  (*(v57 + 56))(v53, v55, 1, v56);
  v59 = [*(a1 + *(v91 + 36)) isGuardian];
  v60 = v104;
  v61 = v100;
  v62 = v99;
  if (v59 && [v27 memberType])
  {
    v63 = [v87 bundleForClass_];
    v64 = sub_21BE2599C();
    v66 = v65;

    v110 = v64;
    v111 = v66;
    v110 = sub_21BE27DBC();
    v111 = v67;
    v112 = v68 & 1;
    v113 = v69;
    v106 = sub_21BDABBB4();
    v107 = v70;
    v106 = sub_21BE27DBC();
    v107 = v71;
    v108 = v72 & 1;
    v109 = v73;
    MEMORY[0x28223BE20](v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC40, &qword_21BE4C098);
    sub_21BDAE270();
    v74 = v89;
    sub_21BE285FC();
    (*(v62 + 32))(v60, v74, v61);
    v58 = 0;
  }

  (*(v62 + 56))(v60, v58, 1, v61);
  v75 = v96;
  v76 = *(v96 + 16);
  v77 = v95;
  v78 = v94;
  v79 = v97;
  v76(v95, v94, v97);
  v80 = v98;
  sub_21BBA3854(v53, v98, &qword_27CDBCC08, &qword_21BE4C068);
  v81 = v60;
  v82 = v101;
  sub_21BBA3854(v81, v101, &qword_27CDBCBF8, &qword_21BE4C058);
  v83 = v102;
  v76(v102, v77, v79);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC38, &qword_21BE4C090);
  sub_21BBA3854(v80, &v83[*(v84 + 48)], &qword_27CDBCC08, &qword_21BE4C068);
  sub_21BBA3854(v82, &v83[*(v84 + 64)], &qword_27CDBCBF8, &qword_21BE4C058);
  sub_21BB3A4CC(v104, &qword_27CDBCBF8, &qword_21BE4C058);
  sub_21BB3A4CC(v103, &qword_27CDBCC08, &qword_21BE4C068);
  v85 = *(v75 + 8);
  v85(v78, v79);
  sub_21BB3A4CC(v82, &qword_27CDBCBF8, &qword_21BE4C058);
  sub_21BB3A4CC(v80, &qword_27CDBCC08, &qword_21BE4C068);
  return (v85)(v77, v79);
}

uint64_t sub_21BDAD234@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v40 - v4;
  MyButton = type metadata accessor for FindMyButton();
  v47 = *(MyButton - 8);
  v48 = MyButton;
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](MyButton);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC60, &qword_21BE4C1D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v49 = sub_21BDAB7FC();
  v50 = v18;
  sub_21BB41FA4();
  v19 = sub_21BE27DBC();
  v21 = v20;
  v23 = v22;
  sub_21BE2832C();
  v24 = sub_21BE27D4C();
  v44 = v25;
  v45 = v24;
  v43 = v26;
  v46 = v27;

  sub_21BBC7C7C(v19, v21, v23 & 1);

  if ((sub_21BDAB608() & 1) == 0)
  {
    v34 = 1;
    v31 = v48;
    goto LABEL_5;
  }

  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v28 = v42;
  sub_21BE25B7C();
  v29 = sub_21BE25B9C();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    v31 = v48;
    (*(v30 + 32))(v9 + *(v48 + 20), v28, v29);
    v32 = *(v31 + 24);
    *(v9 + v32) = [objc_opt_self() defaultWorkspace];
    v33 = v41;
    sub_21BDAE794(v9, v41, type metadata accessor for FindMyButton);
    sub_21BDAE794(v33, v17, type metadata accessor for FindMyButton);
    v34 = 0;
LABEL_5:
    (*(v47 + 56))(v17, v34, 1, v31);
    sub_21BBA3854(v17, v15, &qword_27CDBCC60, &qword_21BE4C1D8);
    v36 = v44;
    v35 = v45;
    *a1 = v45;
    *(a1 + 8) = v36;
    v37 = v43 & 1;
    *(a1 + 16) = v43 & 1;
    *(a1 + 24) = v46;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC68, &qword_21BE4C1E0);
    sub_21BBA3854(v15, a1 + *(v38 + 48), &qword_27CDBCC60, &qword_21BE4C1D8);
    sub_21BBA4A38(v35, v36, v37);

    sub_21BB3A4CC(v17, &qword_27CDBCC60, &qword_21BE4C1D8);
    sub_21BB3A4CC(v15, &qword_27CDBCC60, &qword_21BE4C1D8);
    sub_21BBC7C7C(v35, v36, v37);
  }

  sub_21BB3A4CC(v28, &unk_27CDB57F0, &qword_21BE328A0);
  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BDAD700@<X0>(uint64_t a1@<X8>)
{
  sub_21BDAB908();
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21BDAD75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for MemberDetailsLocationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC58, &qword_21BE4C0A0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - v9;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  v33 = v12;
  v34 = v14;
  sub_21BDAE054(a1, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v15 = sub_21BE28D6C();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_21BDAE794(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MemberDetailsLocationView);
  sub_21BDAE054(a1, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_21BE28D6C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  sub_21BDAE794(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v16, type metadata accessor for MemberDetailsLocationView);
  sub_21BE2857C();
  sub_21BB41FA4();
  v21 = v30;
  sub_21BE284CC();
  v22 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  LOBYTE(v16) = v32;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v16 & 1) == 0;
  v25 = (v21 + *(v7 + 44));
  *v25 = KeyPath;
  v25[1] = sub_21BC0AE98;
  v25[2] = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v32)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.75;
  }

  v27 = v31;
  sub_21BDAE4D0(v21, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC40, &qword_21BE4C098);
  *(v27 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_21BDADB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_21BE28D7C();
  v3[3] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_21BDADBE0, v5, v4);
}

uint64_t sub_21BDADBE0()
{
  v1 = v0[2];
  v0[6] = *(v1 + 8);
  v2 = *(v1 + *(type metadata accessor for MemberDetailsLocationView() + 28));
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_21BDADC90;

  return sub_21BCCF484(v2);
}

uint64_t sub_21BDADC90()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v3;
  v4[1] = sub_21BDADDE8;
  v5 = v1[7];
  v6 = v1[6];

  return sub_21BCD0724(v5);
}

uint64_t sub_21BDADDE8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBB7ECC, v4, v3);
}

uint64_t sub_21BDADF08()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x800000021BE4BF70;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BDAE054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsLocationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDAE0B8()
{
  v2 = *(type metadata accessor for MemberDetailsLocationView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BDADB48(v4, v5, v0 + v3);
}

unint64_t sub_21BDAE19C()
{
  result = qword_27CDBCC30;
  if (!qword_27CDBCC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCC10, &qword_21BE4C070);
    sub_21BB3B038(&qword_27CDBCC28, &qword_27CDBCC20, &unk_21BE4C080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC30);
  }

  return result;
}

unint64_t sub_21BDAE270()
{
  result = qword_27CDBCC48;
  if (!qword_27CDBCC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCC40, &qword_21BE4C098);
    sub_21BDAE2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC48);
  }

  return result;
}

unint64_t sub_21BDAE2FC()
{
  result = qword_27CDBCC50;
  if (!qword_27CDBCC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCC58, &qword_21BE4C0A0);
    sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC50);
  }

  return result;
}

uint64_t sub_21BDAE3E0@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for MemberDetailsLocationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  result = sub_21BDAB608();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_21BDAE45C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for MemberDetailsLocationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21BDAB198(a1, v4, v5, v6);
}

uint64_t sub_21BDAE4D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCC58, &qword_21BE4C0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_34()
{
  v1 = type metadata accessor for MemberDetailsLocationView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE26FEC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BDAE6A4(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberDetailsLocationView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BDAB4B4(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BDAE794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BDAE7FC()
{
  result = qword_27CDBCC70;
  if (!qword_27CDBCC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCBE8, &unk_21BE4C040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCBC8, &unk_21BE4C008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB50A8, &qword_21BE31080);
    sub_21BB3B038(&qword_27CDBCBE0, &qword_27CDB50A8, &qword_21BE31080);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC70);
  }

  return result;
}

unint64_t sub_21BDAE93C()
{
  v1 = *(type metadata accessor for PurchaseSharingItem(0) + 32);
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + v1))
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x736143656C707061;
      break;
    case 0xB:
      result = 0x49746361746E6F63;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21BDAEB78(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21BDAED70()
{
  v1 = *(type metadata accessor for BeneficiaryItemDataItem(0) + 28);
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + v1))
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x736143656C707061;
      break;
    case 0xB:
      result = 0x49746361746E6F63;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_21BDAEFAC()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *v0;
    }

    v2 = sub_21BE2951C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

uint64_t sub_21BDAEFF8()
{
  v1 = *(v0 + 16);
  sub_21BE29ACC();
  sub_21BDB06A4(v1);
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDAF084()
{
  v1 = *(v0 + 16);
  sub_21BDB06A4(v1);
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();
}

uint64_t sub_21BDAF10C()
{
  v1 = *(v0 + 16);
  sub_21BE29ACC();
  sub_21BDB06A4(v1);
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}