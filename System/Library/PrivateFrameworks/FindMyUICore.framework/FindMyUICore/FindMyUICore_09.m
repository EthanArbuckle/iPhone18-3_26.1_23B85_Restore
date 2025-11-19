uint64_t sub_24B0D07B4()
{
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v2 = *(v0 + 64);
  if (v2)
  {

    v2(1, 0, 0, 0, 1);
    return sub_24AFD5890(v2);
  }

  return result;
}

uint64_t sub_24B0D090C()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v1 >= 3)
  {
    result = sub_24B2D6024();
    __break(1u);
  }

  else
  {
    v2 = 3u >> (v1 & 7);
    swift_getKeyPath();
    sub_24B0C456C();
    sub_24B2D2584();

    v3 = *(v0 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state);
    if ((v3 - 2) < 2)
    {
      goto LABEL_5;
    }

    if (v3 == 4)
    {
      return v2 & 1;
    }

    if (v3 == 5)
    {
LABEL_5:
      if (v2)
      {
        return 16641;
      }

      else
      {
        return 16385;
      }
    }

    else
    {
      if (v2)
      {
        v5 = 16641;
      }

      else
      {
        v5 = 16385;
      }

      if (v2)
      {
        v6 = 16640;
      }

      else
      {
        v6 = 0x4000;
      }

      if (v3)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t sub_24B0D0A2C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_24AFD5890(*(v0 + 64));
  v1 = OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel___observationRegistrar;
  v4 = sub_24B2D25C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryUnpairedViewModel()
{
  result = qword_27EFCA9E0;
  if (!qword_27EFCA9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0D0B88()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24B0D0C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24AFF8258(v2, &qword_27EFC8A68);

  return v6;
}

uint64_t sub_24B0D0E60()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *v0;
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v2 = *(v1 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle);

  return v2;
}

uint64_t sub_24B0D0F70()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0x6E6F6349707041;
}

uint64_t sub_24B0D1024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);

  return v6;
}

uint64_t sub_24B0D10DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24AFF8258(v2, &qword_27EFC8A68);

  return v6;
}

BOOL sub_24B0D12B4()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *v0;
  swift_getKeyPath();
  sub_24B0C456C();
  sub_24B2D2584();

  v2 = *(v1 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__state);

  return v2 == 3;
}

uint64_t sub_24B0D139C()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24B0C456C();
  sub_24B2D2574();
}

uint64_t sub_24B0D1508(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a4(isCurrentExecutor);
}

uint64_t sub_24B0D15D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B0CFDA8(a1, v4, v5, v6);
}

uint64_t sub_24B0D16E0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 64);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  sub_24AFD5880(v1);
  return sub_24AFD5890(v4);
}

uint64_t sub_24B0D172C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__subtitle);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_24B0D17C0()
{
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24B0D1840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24B0D18BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_24B2D6004() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B0D26E0();
    sub_24B2D2574();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24B0D19FC()
{
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v1 = *(v0 + 88);
  sub_24AFD5880(v1);
  return v1;
}

uint64_t sub_24B0D1A80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B0CC8A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B0D1B3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B0CC898;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B0D26E0();
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

uint64_t sub_24B0D1C68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = *(*(v0 + 80) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v13[1] = *(*(v0 + 80) + OBJC_IVAR___FMUIDiscoveredAccessory_productType);
      result = sub_24B2D6024();
      __break(1u);
      return result;
    }

    if (qword_27EFC7620 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D1454();
    v9 = __swift_project_value_buffer(v8, qword_27EFE4500);
    v10 = *(v8 - 8);
    (*(v10 + 16))(v3, v9, v8);
    (*(v10 + 56))(v3, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC7618 != -1)
    {
      swift_once();
    }

    v5 = sub_24B2D1454();
    v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
    v7 = *(v5 - 8);
    (*(v7 + 16))(v3, v6, v5);
    (*(v7 + 56))(v3, 0, 1, v5);
  }

  v11 = sub_24B2D52D4();
  sub_24B0C6490(v3);
  return v11;
}

uint64_t sub_24B0D1EE8()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 48))(v1, v2);
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v4 = v0[11];
  if (v4)
  {

    v4(2, 2, 0, 0, 1);
    return sub_24AFD5890(v4);
  }

  return result;
}

uint64_t sub_24B0D1FC0()
{
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v2 = *(v0 + 88);
  if (v2)
  {

    v2(2, 2, 0, 0, 1);
    return sub_24AFD5890(v2);
  }

  return result;
}

uint64_t sub_24B0D2068()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  sub_24AFD5890(*(v0 + 88));
  v1 = OBJC_IVAR____TtC12FindMyUICore24AccountNotReadyViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountNotReadyViewModel()
{
  result = qword_27EFCA9F8;
  if (!qword_27EFCA9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0D2178()
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B0D2240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24B0C6490(v2);
  return v6;
}

uint64_t sub_24B0D23A8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2584();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24B0D2494()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFE44E8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  sub_24B0C6490(v2);
  return v6;
}

uint64_t sub_24B0D25F4()
{
  swift_getKeyPath();
  sub_24B0D26E0();
  sub_24B2D2574();
}

unint64_t sub_24B0D26E0()
{
  result = qword_27EFCAA08;
  if (!qword_27EFCAA08)
  {
    type metadata accessor for AccountNotReadyViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAA08);
  }

  return result;
}

uint64_t sub_24B0D2738@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA18);
  v6 = MEMORY[0x28223BE20](v53);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA20);
  MEMORY[0x28223BE20](v52);
  v12 = &v51 - v11;
  *(&v87 + 1) = &type metadata for SolariumFeatureFlag;
  v13 = sub_24B0096D0();
  *&v88 = v13;
  v14 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(&v86);
  if (v14)
  {
    *(&v87 + 1) = &type metadata for SolariumFeatureFlag;
    *&v88 = v13;
    v15 = sub_24B2D2634();
    __swift_destroy_boxed_opaque_existential_0(&v86);
    if (v15)
    {
      v16 = sub_24B2D3CB4();
    }

    else
    {
      v16 = sub_24B2D3CD4();
    }

    v19 = v16;
    v102 = 0;
    sub_24B0D2DB4(&v56);
    v83 = v68;
    v84 = v69;
    v79 = v64;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v75 = v60;
    v76 = v61;
    v77 = v62;
    v78 = v63;
    v71 = v56;
    v72 = v57;
    v73 = v58;
    v74 = v59;
    v98 = v68;
    v99 = v69;
    v94 = v64;
    v95 = v65;
    v96 = v66;
    v97 = v67;
    v90 = v60;
    v91 = v61;
    v92 = v62;
    v93 = v63;
    v86 = v56;
    v87 = v57;
    v85 = v70;
    v100 = v70;
    v88 = v58;
    v89 = v59;
    sub_24B008890(&v71, &v55, &qword_27EFCAA60);
    sub_24AFF8258(&v86, &qword_27EFCAA60);
    *&v101[183] = v82;
    *&v101[199] = v83;
    *&v101[215] = v84;
    *&v101[119] = v78;
    *&v101[135] = v79;
    *&v101[151] = v80;
    *&v101[167] = v81;
    *&v101[55] = v74;
    *&v101[71] = v75;
    *&v101[87] = v76;
    *&v101[103] = v77;
    *&v101[7] = v71;
    *&v101[23] = v72;
    v101[231] = v85;
    *&v101[39] = v73;
    v20 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA218);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24B2DEAD0;
    v22 = sub_24B2D4324();
    *(v21 + 32) = v22;
    v23 = sub_24B2D4344();
    *(v21 + 33) = v23;
    v24 = sub_24B2D4334();
    sub_24B2D4334();
    if (sub_24B2D4334() != v22)
    {
      v24 = sub_24B2D4334();
    }

    sub_24B2D4334();
    if (sub_24B2D4334() != v23)
    {
      v24 = sub_24B2D4334();
    }

    sub_24B2D32F4();
    v25 = *&v101[160];
    *(v12 + 193) = *&v101[176];
    v26 = *&v101[208];
    *(v12 + 209) = *&v101[192];
    *(v12 + 225) = v26;
    v27 = *&v101[96];
    *(v12 + 129) = *&v101[112];
    v28 = *&v101[144];
    *(v12 + 145) = *&v101[128];
    *(v12 + 161) = v28;
    *(v12 + 177) = v25;
    v29 = *&v101[32];
    *(v12 + 65) = *&v101[48];
    v30 = *&v101[80];
    *(v12 + 81) = *&v101[64];
    *(v12 + 97) = v30;
    *(v12 + 113) = v27;
    v31 = *&v101[16];
    *(v12 + 17) = *v101;
    *(v12 + 33) = v31;
    LOBYTE(v56) = 0;
    *v12 = v19;
    *(v12 + 1) = 0;
    v12[16] = v20;
    *(v12 + 241) = *&v101[224];
    *(v12 + 49) = v29;
    v12[256] = v24;
    *(v12 + 33) = v32;
    *(v12 + 34) = v33;
    *(v12 + 35) = v34;
    *(v12 + 36) = v35;
    v12[296] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA30);
    sub_24B0D4214();
    sub_24B0D42B8();
    return sub_24B2D3ED4();
  }

  else
  {
    *(&v87 + 1) = &type metadata for SolariumFeatureFlag;
    *&v88 = v13;
    v17 = sub_24B2D2634();
    __swift_destroy_boxed_opaque_existential_0(&v86);
    if (v17)
    {
      v18 = sub_24B2D3CB4();
    }

    else
    {
      v18 = sub_24B2D3CD4();
    }

    *v5 = v18;
    *(v5 + 1) = 0;
    v5[16] = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA28);
    sub_24B0D3600(v2, &v5[*(v37 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA218);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_24B2DEAD0;
    v39 = sub_24B2D4324();
    *(v38 + 32) = v39;
    v40 = sub_24B2D4344();
    *(v38 + 33) = v40;
    v41 = sub_24B2D4334();
    sub_24B2D4334();
    if (sub_24B2D4334() != v39)
    {
      v41 = sub_24B2D4334();
    }

    sub_24B2D4334();
    if (sub_24B2D4334() != v40)
    {
      v41 = sub_24B2D4334();
    }

    sub_24B2D32F4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_24B0391CC(v5, v8, &qword_27EFCAA10);
    v50 = &v8[*(v53 + 36)];
    *v50 = v41;
    *(v50 + 1) = v43;
    *(v50 + 2) = v45;
    *(v50 + 3) = v47;
    *(v50 + 4) = v49;
    v50[40] = 0;
    sub_24B0391CC(v8, v10, &qword_27EFCAA18);
    sub_24B008890(v10, v12, &qword_27EFCAA18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA30);
    sub_24B0D4214();
    sub_24B0D42B8();
    sub_24B2D3ED4();
    return sub_24AFF8258(v10, &qword_27EFCAA18);
  }
}

uint64_t sub_24B0D2DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  sub_24B2D5694();
  v42 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = sub_24B2D4BE4();
  v45 = sub_24B2D4A44();
  sub_24B2D5064();
  sub_24B2D3494();
  v5 = v105;
  v40 = v105;
  v43 = v107;
  v44 = v109;
  v37 = v110;
  v65 = v106;
  v64 = v108;
  v6 = sub_24B2D4344();
  v7 = v6;
  v41 = v6;
  sub_24B2D32F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v65;
  v17 = v64;
  v38 = v65;
  v39 = v64;
  LOBYTE(v87[0]) = 0;
  sub_24B2D43E4();
  v18 = sub_24B2D43B4();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = sub_24B2D4404();
  sub_24AFF8258(v4, &qword_27EFCAA68);
  KeyPath = swift_getKeyPath();
  v36 = sub_24B2D3E04();
  LOBYTE(v87[0]) = 1;
  sub_24B0D32C0(v69);
  *&v62[7] = v69[0];
  *&v62[23] = v69[1];
  *&v62[39] = v69[2];
  *&v62[55] = v70;
  v21 = v87[0];
  *&v71 = v46;
  *(&v71 + 1) = v45;
  *&v72 = v5;
  BYTE8(v72) = v16;
  *(&v72 + 9) = *v68;
  HIDWORD(v72) = *&v68[3];
  *&v73 = v43;
  BYTE8(v73) = v17;
  HIDWORD(v73) = *&v67[3];
  *(&v73 + 9) = *v67;
  *&v74 = v44;
  v22 = v37;
  *(&v74 + 1) = v37;
  LOBYTE(v75) = v7;
  DWORD1(v75) = *&v66[3];
  *(&v75 + 1) = *v66;
  *(&v75 + 1) = v9;
  *&v76 = v11;
  *(&v76 + 1) = v13;
  *&v77 = v15;
  BYTE8(v77) = 0;
  HIDWORD(v77) = *&v63[3];
  *(&v77 + 9) = *v63;
  *&v78 = KeyPath;
  *(&v78 + 1) = v19;
  v50 = v73;
  v51 = v74;
  v48 = v71;
  v49 = v72;
  v54 = v77;
  v55 = v78;
  v52 = v75;
  v53 = v76;
  v23 = v36;
  v79[0] = v36;
  v79[1] = 0;
  v80[0] = v87[0];
  v24 = *&v62[16];
  *&v80[1] = *v62;
  *&v80[64] = *(&v70 + 1);
  v25 = *&v62[32];
  *&v80[49] = *&v62[48];
  *&v80[33] = *&v62[32];
  v26 = *v62;
  *&v80[17] = *&v62[16];
  v56 = v36;
  v57 = *v80;
  v59 = *&v80[32];
  v60 = *&v80[48];
  v61 = *&v80[64];
  v58 = *&v80[16];
  v47 = 0;
  v27 = v72;
  *a1 = v71;
  *(a1 + 16) = v27;
  v28 = v53;
  *(a1 + 64) = v52;
  *(a1 + 80) = v28;
  v29 = v51;
  *(a1 + 32) = v50;
  *(a1 + 48) = v29;
  v30 = v57;
  *(a1 + 128) = v56;
  *(a1 + 144) = v30;
  v31 = v55;
  *(a1 + 96) = v54;
  *(a1 + 112) = v31;
  v32 = v60;
  *(a1 + 176) = v59;
  *(a1 + 192) = v32;
  v33 = v61;
  *(a1 + 160) = v58;
  *(a1 + 208) = v33;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v81[0] = v23;
  v81[1] = 0;
  v82 = v21;
  v84 = v24;
  v85 = v25;
  *v86 = *&v62[48];
  *&v86[15] = *&v62[63];
  v83 = v26;
  sub_24B008890(&v71, v87, &qword_27EFCAA70);
  sub_24B008890(v79, v87, &qword_27EFCAA78);
  sub_24AFF8258(v81, &qword_27EFCAA78);
  v87[0] = v46;
  v87[1] = v45;
  v87[2] = v40;
  v88 = v38;
  *v89 = *v68;
  *&v89[3] = *&v68[3];
  v90 = v43;
  v91 = v39;
  *v92 = *v67;
  *&v92[3] = *&v67[3];
  v93 = v44;
  v94 = v22;
  v95 = v41;
  *&v96[3] = *&v66[3];
  *v96 = *v66;
  v97 = v9;
  v98 = v11;
  v99 = v13;
  v100 = v15;
  v101 = 0;
  *v102 = *v63;
  *&v102[3] = *&v63[3];
  v103 = KeyPath;
  v104 = v19;
  sub_24AFF8258(v87, &qword_27EFCAA70);
}

uint64_t sub_24B0D32C0@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4();

  v1 = sub_24B2D4604();
  v3 = v2;
  v5 = v4;
  v6 = sub_24B2D45C4();
  v8 = v7;
  v10 = v9;
  sub_24B083C34(v1, v3, v5 & 1);

  v11 = sub_24B2D4564();
  v13 = v12;
  LOBYTE(v3) = v14;
  sub_24B083C34(v6, v8, v10 & 1);

  sub_24B2D4B54();
  v15 = sub_24B2D4594();
  v37 = v16;
  v38 = v15;
  v18 = v17;
  v36 = v19;
  sub_24B083C34(v11, v13, v3 & 1);

  v20 = sub_24B2D4604();
  v22 = v21;
  LOBYTE(v3) = v23;
  v24 = sub_24B2D45C4();
  v26 = v25;
  LOBYTE(v6) = v27;
  sub_24B083C34(v20, v22, v3 & 1);

  sub_24B2D4B64();
  v28 = sub_24B2D4594();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_24B083C34(v24, v26, v6 & 1);

  *a1 = v38;
  *(a1 + 8) = v18;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v37;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v32 & 1;
  *(a1 + 56) = v34;
  sub_24B083C44(v38, v18, v36 & 1);

  sub_24B083C44(v28, v30, v32 & 1);

  sub_24B083C34(v28, v30, v32 & 1);

  sub_24B083C34(v38, v18, v36 & 1);
}

uint64_t sub_24B0D3600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_24B2D4BD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA80);
  v8 = MEMORY[0x28223BE20](v7);
  v40 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (v39 - v10);
  sub_24B2D5694();
  v39[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4BE4();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v12 = sub_24B2D4C14();

  (*(v4 + 8))(v6, v3);
  v13 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA88) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA90) + 28);
  v15 = *MEMORY[0x277CE1050];
  v16 = sub_24B2D4BF4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v11 = v12;
  v17 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA98) + 36);
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = sub_24B2D4A44();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAAA0) + 36)) = v18;
  sub_24B2D5064();
  sub_24B2D3494();
  v19 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAAA8) + 36));
  v20 = v53;
  *v19 = v52;
  v19[1] = v20;
  v19[2] = v54;
  LOBYTE(v18) = sub_24B2D4344();
  sub_24B2D32F4();
  v21 = v11 + *(v7 + 36);
  *v21 = v18;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v26 = sub_24B2D3E04();
  LOBYTE(v46[0]) = 0;
  sub_24B0D3AFC(a1, v43);
  *&v42[7] = v43[0];
  *&v42[23] = v43[1];
  *&v42[39] = v43[2];
  *&v42[55] = v43[3];
  v27 = v46[0];
  v28 = v40;
  sub_24B008890(v11, v40, &qword_27EFCAA80);
  v29 = v41;
  sub_24B008890(v28, v41, &qword_27EFCAA80);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAAB0);
  v31 = v29 + *(v30 + 48);
  v44[0] = v26;
  v44[1] = 0;
  v45[0] = v27;
  *&v45[1] = *v42;
  *&v45[17] = *&v42[16];
  *&v45[33] = *&v42[32];
  *&v45[49] = *&v42[48];
  v32 = *&v42[63];
  *&v45[64] = *&v42[63];
  v33 = *v45;
  *v31 = v26;
  *(v31 + 16) = v33;
  v34 = *&v45[16];
  v35 = *&v45[32];
  v36 = *&v45[48];
  *(v31 + 80) = v32;
  *(v31 + 48) = v35;
  *(v31 + 64) = v36;
  *(v31 + 32) = v34;
  v37 = v29 + *(v30 + 64);
  *v37 = 0;
  *(v37 + 8) = 0;
  sub_24B008890(v44, v46, &qword_27EFCAA78);
  sub_24AFF8258(v11, &qword_27EFCAA80);
  v46[0] = v26;
  v46[1] = 0;
  v47 = v27;
  v49 = *&v42[16];
  v50 = *&v42[32];
  *v51 = *&v42[48];
  *&v51[15] = *&v42[63];
  v48 = *v42;
  sub_24AFF8258(v46, &qword_27EFCAA78);
  sub_24AFF8258(v28, &qword_27EFCAA80);
}

uint64_t sub_24B0D3AFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v47 = sub_24B2D4A54();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  v49 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  v51 = *a1;
  v52 = v4;
  v41[1] = sub_24AFFE0A4();

  v5 = sub_24B2D4604();
  v7 = v6;
  v9 = v8;
  v41[0] = a1[10];
  v10 = sub_24B2D45C4();
  v12 = v11;
  LOBYTE(v4) = v13;
  sub_24B083C34(v5, v7, v9 & 1);

  v14 = sub_24B2D4564();
  v43 = v15;
  v44 = v14;
  v17 = v16;
  v42 = v18;
  sub_24B083C34(v10, v12, v4 & 1);

  v19 = a1[3];
  v51 = a1[2];
  v52 = v19;

  v20 = sub_24B2D4604();
  v22 = v21;
  v24 = v23;
  v25 = sub_24B2D45C4();
  v27 = v26;
  LOBYTE(v12) = v28;
  sub_24B083C34(v20, v22, v24 & 1);

  (*(v45 + 104))(v46, *MEMORY[0x277CE0EE0], v47);
  v51 = sub_24B2D4B74();
  v29 = sub_24B2D4594();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24B083C34(v25, v27, v12 & 1);

  v36 = v42 & 1;
  v50 = v42 & 1;
  LOBYTE(v51) = v42 & 1;
  v53 = v33 & 1;
  v37 = v48;
  v38 = v43;
  v39 = v44;
  *v48 = v44;
  v37[1] = v17;
  *(v37 + 16) = v36;
  v37[3] = v38;
  v37[4] = v29;
  v37[5] = v31;
  *(v37 + 48) = v33 & 1;
  v37[7] = v35;
  sub_24B083C44(v39, v17, v36);

  sub_24B083C44(v29, v31, v33 & 1);

  sub_24B083C34(v29, v31, v33 & 1);

  sub_24B083C34(v39, v17, v50);
}

uint64_t sub_24B0D3EDC(uint64_t a1)
{
  v2 = sub_24B2D4BF4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B2D39C4();
}

uint64_t sub_24B0D3FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = &type metadata for SolariumFeatureFlag;
  v26 = sub_24B0096D0();
  v14 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v24);
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v14)
  {
    if (v16 > 5)
    {
      v23 = 10.0;
      v17 = 16.0;
    }

    else
    {
      v17 = dbl_24B2E5E78[v16];
      v23 = dbl_24B2E5EA8[v16];
    }

    v18 = sub_24B2D43A4();
    result = sub_24B2D43F4();
    v21 = 0x4043000000000000;
  }

  else
  {
    if (v16 > 5)
    {
      v23 = 10.0;
      v17 = 12.0;
    }

    else
    {
      v17 = dbl_24B2E5ED8[v16];
      v23 = dbl_24B2E5F08[v16];
    }

    v18 = sub_24B2D4394();
    result = sub_24B2D43C4();
    v21 = 0x4041000000000000;
  }

  v22 = vdupq_lane_s64(v21, 0);
  *v22.i64 = v23;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v22;
  *(a7 + 64) = 0x4041000000000000;
  *(a7 + 72) = v17;
  *(a7 + 80) = v18;
  *(a7 + 88) = v20;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24B0D4148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24B0D4190(uint64_t result, int a2, int a3)
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

unint64_t sub_24B0D4214()
{
  result = qword_27EFCAA38;
  if (!qword_27EFCAA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAA30);
    sub_24B0D435C(&qword_27EFCAA40, &qword_27EFCAA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAA38);
  }

  return result;
}

unint64_t sub_24B0D42B8()
{
  result = qword_27EFCAA50;
  if (!qword_27EFCAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAA18);
    sub_24B0D435C(&qword_27EFCAA58, &qword_27EFCAA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAA50);
  }

  return result;
}

uint64_t sub_24B0D435C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_24B0D43B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B0D43F8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_24B0D4454()
{
  result = qword_27EFCAAB8;
  if (!qword_27EFCAAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAAC0);
    sub_24B0D4214();
    sub_24B0D42B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAAB8);
  }

  return result;
}

void __swiftcall OnboardingBulletedListItem.init(title:detailText:symbolName:)(FindMyUICore::OnboardingBulletedListItem *__return_ptr retstr, Swift::String title, Swift::String detailText, Swift::String symbolName)
{
  retstr->title = title;
  retstr->detailText = detailText;
  retstr->symbolName = symbolName;
}

uint64_t sub_24B0D44F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B0D4538(uint64_t result, int a2, int a3)
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

double sub_24B0D45C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0D3FA4(v3, v4, v5, v6, v7, v8, v13);

  v9 = v13[3];
  a2[2] = v13[2];
  a2[3] = v9;
  v10 = v13[5];
  a2[4] = v13[4];
  a2[5] = v10;
  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  a2[1] = v12;
  return result;
}

uint64_t sub_24B0D46C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *a1 = sub_24B2D3DF4();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAAC8);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAAD0);
  sub_24B039184(&qword_27EFCAAD8, &qword_27EFCAAD0);
  sub_24B0D489C();
  sub_24B2D4ED4();

  v4 = sub_24B2D4304();
  sub_24B2D32F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAAE8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_24B0D489C()
{
  result = qword_27EFCAAE0;
  if (!qword_27EFCAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAAE0);
  }

  return result;
}

uint64_t sub_24B0D48F0(uint64_t a1)
{
  v5 = &type metadata for SolariumFeatureFlag;
  v6 = sub_24B0096D0();
  sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v4);
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];

  return a1;
}

unint64_t sub_24B0D49D0()
{
  result = qword_27EFCAAF0;
  if (!qword_27EFCAAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAAE8);
    sub_24B039184(&qword_27EFCAAF8, &qword_27EFCAB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAAF0);
  }

  return result;
}

uint64_t OnboardingTrayAction.State.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t OnboardingTrayAction.Style.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t OnboardingTrayAction.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnboardingTrayAction.init(title:state:style:actionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 17) = v8;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

unint64_t sub_24B0D4BEC()
{
  result = qword_27EFCAB08;
  if (!qword_27EFCAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB08);
  }

  return result;
}

unint64_t sub_24B0D4C44()
{
  result = qword_27EFCAB10;
  if (!qword_27EFCAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB10);
  }

  return result;
}

uint64_t sub_24B0D4CA4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void OnboardingWelcomeView.init(title:detailText:headerColor:bulletedListItems:primaryContent:secondaryContent:captionText:trayActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, void *a8@<X8>, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = 0;
  a8[5] = a5;
  a8[10] = a6;
  v15 = a5;
  a8[6] = a7();
  v16 = a9();

  a8[7] = v16;
  a8[8] = a11;
  a8[9] = a12;
  a8[11] = a13;
}

void OnboardingWelcomeView.init(title:detailText:icon:headerColor:bulletedListItems:primaryContent:secondaryContent:captionText:trayActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void)@<X7>, void *a9@<X8>, uint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[10] = a7;
  v18 = a6;
  v19 = a5;
  a9[6] = a8();
  v20 = a11();

  a9[7] = v20;
  a9[8] = a13;
  a9[9] = a14;
  a9[11] = a15;
}

uint64_t OnboardingWelcomeView.body.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v21 = v0[2];
  v22 = *v0;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v20 = v0[8];
  v8 = v0[10];
  v9 = v0[11];
  if (!*(v8 + 16))
  {

    v15 = v3;
    v16 = v4;

LABEL_6:

    goto LABEL_7;
  }

  if (!v5)
  {

    v17 = v3;
    v18 = v4;
    goto LABEL_6;
  }

  swift_bridgeObjectRetain_n();

  v10 = v3;
  v11 = v4;

  *&v29 = sub_24B0D48F0(v8);
  *(&v29 + 1) = v12;
  *&v30 = v13;
  sub_24B0D55C0();
  v14 = sub_24B2D4E24();

  v6 = v14;
LABEL_7:
  *&v23 = v22;
  *(&v23 + 1) = v1;
  *&v24 = v21;
  *(&v24 + 1) = v2;
  *&v25 = v3;
  *(&v25 + 1) = v5;
  *&v26 = v6;
  *(&v26 + 1) = v20;
  *&v27 = v7;
  *(&v27 + 1) = v8;
  *v28 = v9;
  *&v28[8] = v4;
  *&v28[16] = sub_24B2D3814();
  v28[24] = sub_24B2D42F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB18);
  sub_24B0D501C();
  sub_24B2D4854();
  v33 = v27;
  v34[0] = *v28;
  *(v34 + 9) = *&v28[9];
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  return sub_24B0D50FC(&v29);
}

unint64_t sub_24B0D501C()
{
  result = qword_27EFCAB20;
  if (!qword_27EFCAB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAB18);
    sub_24B0D50A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB20);
  }

  return result;
}

unint64_t sub_24B0D50A8()
{
  result = qword_27EFCAB28;
  if (!qword_27EFCAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB28);
  }

  return result;
}

uint64_t sub_24B0D50FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OnboardingWelcomeView.init<A, B>(title:detailText:headerColor:bulletedListItems:primaryContent:secondaryContent:captionText:trayActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, void *a8@<X8>, void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v19);
  v20 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v20);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = 0;
  a8[5] = a5;
  a8[10] = a6;
  v21 = a5;
  a7();
  swift_getWitnessTable();
  a8[6] = sub_24B2D4E24();
  a9();
  swift_getWitnessTable();
  v22 = sub_24B2D4E24();

  a8[7] = v22;
  a8[8] = a11;
  a8[9] = a12;
  a8[11] = a13;
}

void OnboardingWelcomeView.init<A>(title:detailText:headerColor:bulletedListItems:primaryContent:secondaryContent:captionText:trayActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void (*a7)(id)@<X6>, void *a8@<X8>, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v20);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = 0;
  a8[5] = a5;
  a8[10] = a6;
  v21 = a5;
  a7(v21);
  swift_getWitnessTable();
  a8[6] = sub_24B2D4E24();
  v22 = a9();

  a8[7] = v22;
  a8[8] = a11;
  a8[9] = a12;
  a8[11] = a13;
}

void OnboardingWelcomeView.init<A>(title:detailText:headerColor:bulletedListItems:primaryContent:secondaryContent:captionText:trayActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(id, uint64_t)@<X6>, void *a8@<X8>, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v20);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = 0;
  a8[5] = a5;
  a8[10] = a6;
  v21 = a5;
  v23 = a7(v21, v22);
  a8[6] = v23;
  a9(v23, v24);
  swift_getWitnessTable();
  v25 = sub_24B2D4E24();

  a8[7] = v25;
  a8[8] = a11;
  a8[9] = a12;
  a8[11] = a13;
}

unint64_t sub_24B0D55C0()
{
  result = qword_27EFCAB30;
  if (!qword_27EFCAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB30);
  }

  return result;
}

unint64_t sub_24B0D5640()
{
  result = qword_27EFCAB38;
  if (!qword_27EFCAB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAB40);
    sub_24B0D501C();
    sub_24B0D56CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB38);
  }

  return result;
}

unint64_t sub_24B0D56CC()
{
  result = qword_27EFCAB48;
  if (!qword_27EFCAB48)
  {
    sub_24B2D4214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB48);
  }

  return result;
}

uint64_t sub_24B0D5724(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24B2D5CF4();
    for (i = (a3 + 64); ; i += 5)
    {
      v10 = *(i - 3);
      v11 = *(i - 16);
      v12 = *(i - 15);
      v13 = *(i - 1);
      v14 = *i;
      v15[0] = *(i - 4);
      v15[1] = v10;
      v16 = v11;
      v17 = v12;
      v18 = v13;
      v19 = v14;

      a1(&v20, v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_24B2D5CC4();
      sub_24B2D5D04();
      sub_24B2D5D14();
      sub_24B2D5CD4();
      if (!--v6)
      {
        return v21;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B0D5860(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x277D84F90];
  sub_24B007BD0(0, v5, 0);
  v6 = v28;
  v8 = (a3 + 48);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v22[0] = *(v8 - 2);
    v22[1] = v9;
    v23 = v10;

    a1(&v24, v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v24;
    v11 = v25;
    v13 = v26;
    v14 = v27;
    v28 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = v27;
      v18 = v25;
      sub_24B007BD0((v15 > 1), v16 + 1, 1);
      v11 = v18;
      v14 = v20;
      v6 = v28;
    }

    v8 += 24;
    *(v6 + 16) = v16 + 1;
    v17 = v6 + 40 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v11;
    *(v17 + 48) = v13;
    *(v17 + 56) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_24B0D59B4(uint64_t a1)
{
  v157 = a1;
  v156 = sub_24B2D4234();
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v153 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = v1[9];
  v4 = *(v3 + 16);
  v5 = v1[5];
  v6 = v5 == 0;
  v158 = v1;
  if (v4)
  {
    if (v5)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v14 = v1[6];
    if (v5)
    {
      if (v14)
      {
        v8 = 0;
        v9 = v1[4];
        if (v9)
        {
          v7 = 4;
          goto LABEL_9;
        }

        goto LABEL_33;
      }

      v29 = v1[3];
      if (v29)
      {
        v6 = 0;
        v8 = 0;
        if ((v29 & 0x2000000000000000) != 0)
        {
          v30 = HIBYTE(v29) & 0xF;
        }

        else
        {
          v30 = v1[2] & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v7 = 4;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v6 = 0;
        v8 = 0;
        v7 = 2;
      }
    }

    else if (v14 && (v24 = v1[3]) != 0)
    {
      v8 = 0;
      if ((v24 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v24) & 0xF;
      }

      else
      {
        v25 = v1[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v7 = 4;
      }

      else
      {
        v7 = 2;
      }

      v6 = 1;
    }

    else
    {
      v8 = 0;
      v6 = 1;
      v7 = 2;
    }
  }

  v9 = v1[4];
  if (!v9)
  {
    if (v7 != 4)
    {
LABEL_22:
      v21 = v1[3];
      v22 = sub_24B2D5374();
      if (v21)
      {
        v23 = sub_24B2D5374();
      }

      else
      {
        v23 = 0;
      }

      v31 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v22 detailText:v23 icon:0 contentLayout:v7];
LABEL_47:
      v20 = v31;

      goto LABEL_48;
    }

    if (v6)
    {
      if (v1[6])
      {
        v15 = v1[3];
        v16 = type metadata accessor for FixedHeaderOBWelcomeController();
        v17 = objc_allocWithZone(v16);
        *&v17[OBJC_IVAR____TtC12FindMyUICoreP33_210EB6590FBA41861C38BF4CEF2C7BA130FixedHeaderOBWelcomeController_maximumCompactAspectRatio] = 0x3FEB333333333333;
        v17[OBJC_IVAR____TtC12FindMyUICoreP33_210EB6590FBA41861C38BF4CEF2C7BA130FixedHeaderOBWelcomeController_hasOnlySecondaryContent] = 1;
        v18 = sub_24B2D5374();
        if (v15)
        {
          v19 = sub_24B2D5374();
        }

        else
        {
          v19 = 0;
        }

        v160.receiver = v17;
        v160.super_class = v16;
        v20 = objc_msgSendSuper2(&v160, sel_initWithTitle_detailText_icon_contentLayout_, v18, v19, 0, 4);

        LODWORD(v153) = 1;
        if (!v4)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      goto LABEL_22;
    }

LABEL_33:
    v26 = v1[3];
    v27 = type metadata accessor for FixedHeaderOBWelcomeController();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC12FindMyUICoreP33_210EB6590FBA41861C38BF4CEF2C7BA130FixedHeaderOBWelcomeController_maximumCompactAspectRatio] = 0x3FEB333333333333;
    v28[OBJC_IVAR____TtC12FindMyUICoreP33_210EB6590FBA41861C38BF4CEF2C7BA130FixedHeaderOBWelcomeController_hasOnlySecondaryContent] = 0;
    v22 = sub_24B2D5374();
    if (v26)
    {
      v23 = sub_24B2D5374();
    }

    else
    {
      v23 = 0;
    }

    v159.receiver = v28;
    v159.super_class = v27;
    v31 = objc_msgSendSuper2(&v159, sel_initWithTitle_detailText_icon_contentLayout_, v22, v23, 0, 4);
    goto LABEL_47;
  }

LABEL_9:
  v10 = v1[3];
  v11 = v9;
  v12 = sub_24B2D5374();
  if (v10)
  {
    v13 = sub_24B2D5374();
  }

  else
  {
    v13 = 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v12 detailText:v13 icon:v11 contentLayout:v7];

LABEL_48:
  LODWORD(v153) = 0;
  if (!v4)
  {
    goto LABEL_52;
  }

LABEL_49:
  if (v8 == 1)
  {
    v32 = v3 + 72;
    do
    {

      v33 = sub_24B2D5374();

      v34 = sub_24B2D5374();

      v35 = sub_24B2D5374();

      [v20 addBulletedListItemWithTitle:v33 description:v34 symbolName:v35];

      v32 += 48;
      --v4;
    }

    while (v4);
  }

LABEL_52:
  v162 = MEMORY[0x277D84F90];
  v36 = v158;
  v37 = v158[5];
  v38 = 0x1FBB28000;
  if (v37)
  {
    v161 = v158[5];
    v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8120));
    swift_retain_n();
    v40 = sub_24B2D3EA4();
    v41 = [v40 view];
    if (v41)
    {
      v42 = v41;
      v153 = v37;
      v43 = v36[11];
      if (v43)
      {
        v44 = v43;
        v45 = v43;
      }

      else
      {
        v45 = [objc_opt_self() systemBackgroundColor];
        v44 = 0;
      }

      v54 = v44;
      [v42 setBackgroundColor_];

      v55 = [v40 &selRef_stringValue];
      if (v55)
      {
        v56 = v55;
        [v55 setTranslatesAutoresizingMaskIntoConstraints_];

        v57 = [v20 contentView];
        if (!v43)
        {
          v54 = [objc_opt_self() systemBackgroundColor];
        }

        [v57 setBackgroundColor_];

        v58 = [v20 contentView];
        v59 = [v40 &selRef_stringValue];
        if (v59)
        {
          v60 = v59;
          [v58 addSubview_];

          [v20 addChildViewController_];
          [v40 didMoveToParentViewController_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB70);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_24B2DE430;
          sub_24B2D4224();
          v161 = v61;
          sub_24B0D7DCC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB80);
          sub_24B0D7E24();
          sub_24B2D5B44();
          sub_24B2D3E84();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB68);
          sub_24B2D4294();
          v62 = *(v161 + 32);
          *(v161 + 32) = v40;
          v63 = v40;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24B2DF8F0;
          v65 = [v63 &selRef_stringValue];
          v36 = v158;
          if (v65)
          {
            v66 = v65;
            v67 = [v65 leadingAnchor];

            v68 = [v20 &selRef_stringValue];
            v69 = [v68 leadingAnchor];

            v38 = &unk_279003000;
            v70 = [v67 constraintEqualToAnchor_];

            *(inited + 32) = v70;
            v71 = [v63 &selRef_stringValue];
            if (v71)
            {
              v72 = v71;
              v73 = [v71 trailingAnchor];

              v74 = [v20 contentView];
              v75 = [v74 trailingAnchor];

              v76 = [v73 constraintEqualToAnchor_];
              *(inited + 40) = v76;
              v77 = [v63 &selRef_stringValue];
              if (v77)
              {
                v78 = v77;
                v79 = [v77 topAnchor];

                v80 = [v20 contentView];
                v81 = [v80 topAnchor];

                v82 = [v79 constraintEqualToAnchor_];
                *(inited + 48) = v82;
                v83 = [v63 &selRef_stringValue];

                if (v83)
                {
                  goto LABEL_79;
                }

LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_102;
  }

  if (!v153)
  {
    goto LABEL_80;
  }

  v46 = sub_24B2D4E24();
  v161 = v46;
  v47 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8120));

  v48 = sub_24B2D3EA4();
  v49 = [v48 view];
  if (!v49)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v50 = v49;
  v51 = v36[11];
  if (v51)
  {
    v52 = v51;
    v53 = v51;
  }

  else
  {
    v53 = [objc_opt_self() systemBackgroundColor];
    v52 = 0;
  }

  v84 = v52;
  [v50 setBackgroundColor_];

  v85 = [v48 &selRef_stringValue];
  if (!v85)
  {
    goto LABEL_114;
  }

  v86 = v85;
  [v85 setTranslatesAutoresizingMaskIntoConstraints_];

  v87 = [v20 contentView];
  if (!v51)
  {
    v84 = [objc_opt_self() systemBackgroundColor];
  }

  [v87 setBackgroundColor_];

  v88 = [v20 contentView];
  v89 = [v48 &selRef_stringValue];
  if (!v89)
  {
    goto LABEL_115;
  }

  v90 = v89;
  [v88 addSubview_];

  [v20 addChildViewController_];
  [v48 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB70);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_24B2DE430;
  sub_24B2D4224();
  v161 = v91;
  sub_24B0D7DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB80);
  sub_24B0D7E24();
  sub_24B2D5B44();
  sub_24B2D3E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB68);
  sub_24B2D4294();
  v92 = *(v161 + 32);
  *(v161 + 32) = v48;
  v63 = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DF8F0;
  v93 = [v63 &selRef_stringValue];
  v36 = v158;
  if (!v93)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v94 = v93;
  v95 = [v93 leadingAnchor];

  v96 = [v20 &selRef_stringValue];
  v97 = [v96 leadingAnchor];

  v38 = &unk_279003000;
  v98 = [v95 constraintEqualToAnchor_];

  *(inited + 32) = v98;
  v99 = [v63 &selRef_stringValue];
  if (!v99)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v100 = v99;
  v101 = [v99 trailingAnchor];

  v102 = [v20 contentView];
  v103 = [v102 trailingAnchor];

  v104 = [v101 constraintEqualToAnchor_];
  *(inited + 40) = v104;
  v105 = [v63 &selRef_stringValue];
  if (!v105)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v106 = v105;
  v107 = [v105 topAnchor];

  v108 = [v20 contentView];
  v109 = [v108 topAnchor];

  v110 = [v107 constraintEqualToAnchor_];
  *(inited + 48) = v110;
  v83 = [v63 &selRef_stringValue];

  if (!v83)
  {
LABEL_119:
    __break(1u);
    return;
  }

LABEL_79:
  v111 = [v83 bottomAnchor];

  v112 = [v20 contentView];
  v113 = [v112 bottomAnchor];

  v114 = [v111 constraintEqualToAnchor_];
  *(inited + 56) = v114;
  sub_24B03164C(inited);

LABEL_80:
  v115 = v36[6];
  if (!v115)
  {
    goto LABEL_90;
  }

  v116 = [v20 secondaryContentView];
  if (v116)
  {
    v117 = v116;
    v161 = v115;
    v118 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8120));

    v119 = sub_24B2D3EA4();
    v120 = [v119 view];
    if (v120)
    {
      v121 = v120;
      [v120 setTranslatesAutoresizingMaskIntoConstraints_];

      v122 = [v119 view];
      if (v122)
      {
        v123 = v122;
        [v117 addSubview_];

        [v20 addChildViewController_];
        [v119 didMoveToParentViewController_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB70);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_24B2DE430;
        sub_24B2D4224();
        v161 = v124;
        sub_24B0D7DCC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB80);
        sub_24B0D7E24();
        sub_24B2D5B44();
        sub_24B2D3E84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
        v125 = swift_initStackObject();
        *(v125 + 16) = xmmword_24B2DF8F0;
        v126 = [v119 view];
        if (v126)
        {
          v127 = v126;
          v128 = [v126 leadingAnchor];

          v129 = [v117 leadingAnchor];
          v130 = [v128 (v38 + 3941)];

          *(v125 + 32) = v130;
          v131 = [v119 view];
          if (v131)
          {
            v132 = v131;
            v133 = [v131 trailingAnchor];

            v134 = [v117 trailingAnchor];
            v135 = [v133 (v38 + 3941)];

            *(v125 + 40) = v135;
            v136 = [v119 view];
            if (v136)
            {
              v137 = v136;
              v138 = [v136 topAnchor];

              v139 = [v117 topAnchor];
              v140 = [v138 (v38 + 3941)];

              *(v125 + 48) = v140;
              v141 = [v119 view];

              if (v141)
              {
                v142 = [v141 bottomAnchor];

                v143 = [v117 bottomAnchor];
                v144 = [v142 (v38 + 3941)];

                *(v125 + 56) = v144;
                sub_24B03164C(v125);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB68);
                sub_24B2D4294();

                v145 = *(v161 + 24);
                *(v161 + 24) = v119;

                v36 = v158;
                goto LABEL_90;
              }

              goto LABEL_112;
            }

LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_90:
  v146 = objc_opt_self();
  sub_24B038248(0, &qword_27EFC84B8);
  v147 = sub_24B2D5524();
  [v146 activateConstraints_];

  if (v36[10])
  {
    MEMORY[0x28223BE20](v148);
    v149 = v157;
    *(&v153 - 4) = v36;
    *(&v153 - 3) = v149;
    *(&v153 - 2) = v20;
    sub_24B0D5724(sub_24B0D7DA8, (&v153 - 6), v150);

    if (!v36[8])
    {
      return;
    }

    goto LABEL_92;
  }

  if (v36[8])
  {
LABEL_92:
    v151 = [v20 buttonTray];
    v152 = sub_24B2D5374();
    [v151 setCaptionText_];
  }
}

void sub_24B0D6F10(__int128 *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v26 = *(a1 + 4);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (BYTE1(v25))
  {
    v5 = &selRef_linkButton;
  }

  else
  {
    v5 = &selRef_boldButton;
  }

  v6 = v24;
  v7 = [objc_opt_self() *v5];

  v8 = sub_24B2D5374();
  [v7 setTitle:v8 forState:0];

  sub_24B038248(0, &qword_27EFCAB90);
  v9 = swift_allocObject();
  v10 = v25;
  *(v9 + 16) = v24;
  *(v9 + 32) = v10;
  *(v9 + 48) = v26;
  v11 = v7;
  sub_24B0D7E90(&v24, v23);
  v12 = sub_24B2D5A54();
  [v11 addAction:v12 forControlEvents:{64, 0, 0, 0, sub_24B0D7E88, v9}];

  v13 = sub_24B2D5374();
  [v11 setAccessibilityIdentifier_];

  v14 = &selRef_hidesBusyIndicator;
  if (v25 != 1)
  {
    v14 = &selRef_showsBusyIndicator;
  }

  if (v25)
  {
    v15 = v25 != 1;
  }

  else
  {
    v15 = 1;
  }

  if (v25)
  {
    v16 = v14;
  }

  else
  {
    v16 = &selRef_hidesBusyIndicator;
  }

  [v11 setEnabled_];
  [v11 *v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB68);
  sub_24B2D4294();
  v17 = v27;
  swift_beginAccess();
  v18 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v17 + 16);
  *(v17 + 16) = 0x8000000000000000;
  sub_24B1C9CE0(v18, v6, *(&v6 + 1), isUniquelyReferenced_nonNull_native);

  *(v17 + 16) = v22;
  swift_endAccess();

  v20 = [a2 buttonTray];
  [v20 addButton_];

  *a3 = v18;
}

uint64_t sub_24B0D7288(uint64_t a1, uint64_t a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v7 = *(a2 + 32);
  v3(v6);
}

uint64_t sub_24B0D7348()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24B0D7448@<X0>(void *a1@<X8>)
{
  type metadata accessor for OnboardingWelcomeViewControllerRepresentable.Coordinator();
  v2 = swift_allocObject();
  result = sub_24B1940F0(MEMORY[0x277D84F90]);
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_24B0D74D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0D793C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B0D7534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0D793C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B0D7598()
{
  sub_24B0D793C();
  sub_24B2D41E4();
  __break(1u);
}

void sub_24B0D75C0()
{
  v27 = &type metadata for SolariumFeatureFlag;
  v28 = sub_24B0096D0();
  v1 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v26);
  if ((v1 & 1) == 0)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v29.origin.x = v5;
      v29.origin.y = v7;
      v29.size.width = v9;
      v29.size.height = v11;
      Width = CGRectGetWidth(v29);
      v13 = [v0 view];
      if (v13)
      {
        v14 = v13;
        [v13 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v30.origin.x = v16;
        v30.origin.y = v18;
        v30.size.width = v20;
        v30.size.height = v22;
        Height = CGRectGetHeight(v30);
        v24 = [v0 view];
        if (v24)
        {
          v25 = v24;
          [v24 frame];

          return;
        }

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }
}

uint64_t sub_24B0D782C()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_24B0D78C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FixedHeaderOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24B0D793C()
{
  result = qword_27EFCAB60;
  if (!qword_27EFCAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB60);
  }

  return result;
}

void sub_24B0D7990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB68);
  sub_24B2D4294();
  v2 = *(v36 + 32);
  v3 = v2;

  if (v2)
  {
    if (v1[5])
    {
      v36 = v1[5];
      swift_retain_n();
      sub_24B2D3EB4();
    }
  }

  sub_24B2D4294();
  v4 = *(v36 + 24);
  v5 = v4;

  if (v4)
  {
    if (v1[6])
    {
      swift_retain_n();
      sub_24B2D3EB4();
    }
  }

  v6 = v1[10];
  if (!v6)
  {
    return;
  }

  sub_24B2D4294();
  swift_beginAccess();
  v7 = *(v37 + 16);

  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v28 = v6 + 64;
  v29 = v12;
  v30 = v7 + 64;
  v31 = v7;
  v32 = v6;
  if (v11)
  {
LABEL_17:
    while (1)
    {
      v33 = (v11 - 1) & v11;
      v15 = (*(v7 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
      v16 = *v15;
      v17 = *(v6 + 16);
      v35 = v15[1];

      if (v17)
      {
        break;
      }

LABEL_25:

      v7 = v31;
      v6 = v32;
LABEL_35:
      v8 = v30;
LABEL_36:
      v12 = v29;
      v11 = v33;
      if (!v33)
      {
        goto LABEL_13;
      }
    }

    sub_24B2D5694();
    v18 = v28;
    while (1)
    {
      v19 = v16;
      v21 = *(v18 - 32);
      v20 = *(v18 - 24);
      v34 = *(v18 - 16);

      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v21 == v16 && v20 == v35)
      {
        break;
      }

      v22 = sub_24B2D6004();

      if (v22)
      {
        goto LABEL_27;
      }

      v18 += 40;
      if (!--v17)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v7 = v31;
    if (*(v31 + 16))
    {
      v23 = sub_24B054238(v19, v35);
      v25 = v24;

      if (v25)
      {
        v26 = *(*(v31 + 56) + 8 * v23);
        v27 = v26;
        if (v34)
        {
          v8 = v30;
          if (v34 == 1)
          {
            [v26 setEnabled_];
            [v27 hidesBusyIndicator];
          }

          else
          {
            [v26 setEnabled_];
            [v27 showsBusyIndicator];
          }

          v6 = v32;
          goto LABEL_36;
        }

        [v26 setEnabled_];
        [v27 hidesBusyIndicator];

        goto LABEL_34;
      }
    }

    else
    {
    }

LABEL_34:
    v6 = v32;
    goto LABEL_35;
  }

LABEL_13:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t sub_24B0D7DCC()
{
  result = qword_27EFCAB78;
  if (!qword_27EFCAB78)
  {
    sub_24B2D4234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB78);
  }

  return result;
}

unint64_t sub_24B0D7E24()
{
  result = qword_27EFCAB88;
  if (!qword_27EFCAB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4View_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B0D7F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B0D7F4C(uint64_t result, int a2, int a3)
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

unint64_t sub_24B0D7FB4()
{
  result = qword_27EFCAB98;
  if (!qword_27EFCAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAB98);
  }

  return result;
}

id sub_24B0D8008()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 16))(v2, v3);
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_24B0096D0();
  v4 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v4)
  {
    v5 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v5);
    (*(v6 + 32))(v5, v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_24B2D5374();

  if (v8)
  {
    v10 = sub_24B2D5374();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v9 detailText:v10 icon:0 contentLayout:3];

  sub_24B0D8170(v11);
  sub_24B0D87B4(v11);
  return v11;
}

void sub_24B0D8170(void *a1)
{
  v3 = sub_24B2D4234();
  MEMORY[0x28223BE20](v3);
  sub_24B0D8F9C(v1 + 40, &v38);
  if (v39)
  {
    sub_24B07F7D0(&v38, v40);
    v4 = __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    MEMORY[0x28223BE20](v4);
    (*(v6 + 16))(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    *&v38 = sub_24B2D4E24();
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8120));
    v8 = sub_24B2D3EA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24B2DE430;
    sub_24B2D4224();
    *&v38 = v9;
    sub_24B0D7DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAB80);
    sub_24B0D7E24();
    sub_24B2D5B44();
    sub_24B2D3E84();
    v10 = v8;
    [a1 addChildViewController_];
    v11 = [a1 contentView];
    v12 = [v10 view];
    if (v12)
    {
      v13 = v12;
      [v11 addSubview_];

      v14 = [v10 view];
      if (v14)
      {
        [v14 setTranslatesAutoresizingMaskIntoConstraints_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_24B2DF8F0;
        v16 = [v10 view];

        if (v16)
        {
          v17 = [v16 topAnchor];

          v18 = [a1 contentView];
          v19 = [v18 topAnchor];

          v20 = [v17 constraintEqualToAnchor_];
          *(v15 + 32) = v20;
          v21 = [v10 view];

          if (v21)
          {
            v22 = [v21 bottomAnchor];

            v23 = [a1 contentView];
            v24 = [v23 bottomAnchor];

            v25 = [v22 constraintEqualToAnchor_];
            *(v15 + 40) = v25;
            v26 = [v10 view];

            if (v26)
            {
              v27 = [v26 leadingAnchor];

              v28 = [a1 contentView];
              v29 = [v28 leadingAnchor];

              v30 = [v27 constraintEqualToAnchor_];
              *(v15 + 48) = v30;
              v31 = [v10 view];

              if (v31)
              {
                v32 = objc_opt_self();
                v33 = [v31 trailingAnchor];

                v34 = [a1 contentView];
                v35 = [v34 trailingAnchor];

                v36 = [v33 constraintEqualToAnchor_];
                *(v15 + 56) = v36;
                sub_24B038248(0, &qword_27EFC84B8);
                v37 = sub_24B2D5524();

                [v32 activateConstraints_];

                [v10 didMoveToParentViewController_];
                __swift_destroy_boxed_opaque_existential_0(v40);
                return;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_24B0D900C(&v38);
}

void sub_24B0D87B4(void *a1)
{
  v2 = v1;
  v4 = [a1 buttonTray];
  [v4 removeAllButtons];

  v5 = objc_opt_self();
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 48))(v6, v7);
  if (v8)
  {
    v9 = [v5 boldButton];
    sub_24B038248(0, &qword_27EFCAB90);
    sub_24B0D8F0C(v2, &v28);
    v10 = swift_allocObject();
    v11 = v31;
    v10[3] = v30;
    v10[4] = v11;
    v10[5] = v32;
    v12 = v29;
    v10[1] = v28;
    v10[2] = v12;
    v26 = v10;
    v13 = sub_24B2D5A54();
    [v9 addAction:v13 forControlEvents:{64, 0, 0, 0, sub_24B0D8F94, v26}];

    v14 = sub_24B2D5374();

    [v9 setTitle:v14 forState:0];

    v15 = [a1 buttonTray];
    [v15 addButton_];
  }

  v16 = v2[3];
  v17 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v16);
  (*(v17 + 56))(v16, v17);
  if (v18)
  {
    v19 = [objc_opt_self() linkButton];
    sub_24B038248(0, &qword_27EFCAB90);
    sub_24B0D8F0C(v2, &v28);
    v20 = swift_allocObject();
    v21 = v31;
    v20[3] = v30;
    v20[4] = v21;
    v20[5] = v32;
    v22 = v29;
    v20[1] = v28;
    v20[2] = v22;
    v27 = v20;
    v23 = sub_24B2D5A54();
    [v19 addAction:v23 forControlEvents:{64, 0, 0, 0, sub_24B0D8F44, v27}];

    v24 = sub_24B2D5374();

    [v19 setTitle:v24 forState:0];

    v25 = [a1 buttonTray];
    [v25 addButton_];
  }
}

uint64_t sub_24B0D8B30(uint64_t a1, void *a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 96))(v3, v4);
}

uint64_t sub_24B0D8C00(uint64_t a1, void *a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 104))(v3, v4);
}

void sub_24B0D8CD4(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 72))(v3, v4);
  v6 = [a1 buttonTray];
  v7 = v6;
  if (v5)
  {
    [v6 showButtonsBusy];
  }

  else
  {
    [v6 showButtonsAvailable];

    sub_24B0D87B4(a1);
  }
}

uint64_t sub_24B0D8DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0D8EB8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B0D8E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0D8EB8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B0D8E90()
{
  sub_24B0D8EB8();
  sub_24B2D41E4();
  __break(1u);
}

unint64_t sub_24B0D8EB8()
{
  result = qword_27EFCABA0;
  if (!qword_27EFCABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCABA0);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24B0D8F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0D900C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B0D9074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B0D90BC(uint64_t result, int a2, int a3)
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

void sub_24B0D9134(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v77 = sub_24B2D4BD4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABC8);
  v6 = MEMORY[0x28223BE20](v5);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v71 - v9;
  MEMORY[0x28223BE20](v8);
  v80 = &v71 - v11;
  sub_24B2D5694();
  v78 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 24))(v12, v13);
  if (v15)
  {
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      *&v86 = v14;
      *(&v86 + 1) = v15;
      sub_24AFFE0A4();
      v17 = sub_24B2D4604();
      v19 = v18;
      v21 = v20;
      sub_24B2D4444();
      v72 = v4;
      v22 = sub_24B2D45C4();
      v73 = v5;
      v23 = v22;
      v75 = v24;
      v26 = v25;

      sub_24B083C34(v17, v19, v21 & 1);

      LODWORD(v86) = sub_24B2D3FD4();
      v27 = v75;
      v28 = sub_24B2D4594();
      v30 = v29;
      LOBYTE(v17) = v31;
      v33 = v32;
      v34 = v23;
      v5 = v73;
      sub_24B083C34(v34, v27, v26 & 1);

      v35 = v28;
      v36 = v30;
      v74 = v17 & 1;
      sub_24B083C44(v28, v30, v17 & 1);
      v75 = v33;
      v4 = v72;

      goto LABEL_10;
    }
  }

  v35 = 0;
  v36 = 0;
  v74 = 0;
  v75 = 0;
LABEL_10:
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  (*(v38 + 40))(v37, v38);
  type metadata accessor for AccessoryOnboardingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  v41 = sub_24B2D5374();

  v42 = [objc_opt_self() imageNamed:v41 inBundle:v40];

  if (v42)
  {
    sub_24B2D4BB4();
    v43 = v76;
    v44 = v77;
    (*(v76 + 104))(v4, *MEMORY[0x277CE0FE0], v77);
    v45 = sub_24B2D4C14();

    (*(v43 + 8))(v4, v44);
    sub_24B2D5064();
    sub_24B2D3494();
    v85 = 1;
    *&v84[6] = v86;
    *&v84[22] = v87;
    *&v84[38] = v88;
    v46 = &v10[*(v5 + 36)];
    v47 = *(sub_24B2D38B4() + 20);
    v48 = *MEMORY[0x277CE0118];
    v49 = sub_24B2D3DC4();
    (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
    __asm { FMOV            V0.2D, #8.0 }

    *v46 = _Q0;
    *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABD0) + 36)] = 256;
    v55 = *&v84[16];
    *(v10 + 18) = *v84;
    *v10 = v45;
    *(v10 + 1) = 0;
    *(v10 + 8) = 257;
    *(v10 + 34) = v55;
    *(v10 + 50) = *&v84[32];
    *(v10 + 8) = *&v84[46];
    v56 = v80;
    sub_24B0D9930(v10, v80);
    v57 = a1[3];
    v58 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v57);
    v82 = (*(v58 + 32))(v57, v58);
    v83 = v59;
    sub_24AFFE0A4();
    v60 = sub_24B2D4604();
    v62 = v61;
    LODWORD(v77) = v63;
    v65 = v64;
    v66 = v81;
    sub_24B0D99A0(v56, v81);
    v67 = v79;
    *v79 = v35;
    v67[1] = v36;
    LOBYTE(v47) = v74;
    v68 = v75;
    v67[2] = v74;
    v67[3] = v68;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABD8);
    sub_24B0D99A0(v66, v67 + *(v69 + 48));
    v70 = v67 + *(v69 + 64);
    sub_24B09AD84(v35, v36, v47, v68);
    LOBYTE(v66) = v77 & 1;
    sub_24B083C44(v60, v62, v77 & 1);

    sub_24B09ADC8(v35, v36, v47, v68);
    *v70 = v60;
    *(v70 + 1) = v62;
    v70[16] = v66;
    *(v70 + 3) = v65;
    sub_24B0D9A10(v80);
    sub_24B083C34(v60, v62, v66);

    sub_24B0D9A10(v81);
    sub_24B09ADC8(v35, v36, v47, v68);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24B0D9840@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24B2D3DF4();
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABB0);
  sub_24B0D9134(v1, (a1 + *(v3 + 44)));
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABB8) + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 1;
  LOBYTE(KeyPath) = sub_24B2D42E4();
  sub_24B2D32F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABC0);
  v15 = a1 + *(result + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_24B0D9930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0D99A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0D9A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B0D9A88()
{
  result = qword_27EFCABE0;
  if (!qword_27EFCABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCABC0);
    sub_24B0D9B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCABE0);
  }

  return result;
}

unint64_t sub_24B0D9B14()
{
  result = qword_27EFCABE8;
  if (!qword_27EFCABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCABB8);
    sub_24B039184(&qword_27EFCABF0, &qword_27EFCABF8);
    sub_24B039184(&qword_27EFC8B38, &qword_27EFC8B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCABE8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B0D9C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B0D9C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B0D9CD0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC00);
  MEMORY[0x28223BE20](v36);
  v3 = &v32 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC08);
  MEMORY[0x28223BE20](v33);
  v35 = &v32 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC10);
  MEMORY[0x28223BE20](v34);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC18);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  *(&v42 + 1) = &type metadata for SolariumFeatureFlag;
  v43 = sub_24B0096D0();
  v14 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(&v41);
  if (v14)
  {
    v15 = *(v1 + 56);
    v16 = *(v1 + 48);
    v17 = v15;
    sub_24B2D3094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC20);
    sub_24B2D4CD4();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    sub_24B0DA264(&v41, v39);
    v18 = sub_24B2D42E4();
    sub_24B2D32F4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_24B0D8F0C(v38, &v41);
    v44 = v18;
    v45 = v20;
    v46 = v22;
    v47 = v24;
    v48 = v26;
    v49 = 0;
    sub_24B0DA41C(v38);
    v27 = *(v8 + 16);
    v27(v11, v13, v7);
    sub_24B008890(&v41, v38, &qword_27EFCAC40);
    v27(v6, v11, v7);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC48);
    sub_24B008890(v38, &v6[*(v28 + 48)], &qword_27EFCAC40);
    sub_24AFF8258(v38, &qword_27EFCAC40);
    v29 = *(v8 + 8);
    v29(v11, v7);
    sub_24B008890(v6, v35, &qword_27EFCAC10);
    swift_storeEnumTagMultiPayload();
    sub_24B0DA2D4();
    sub_24B0DA338();
    sub_24B2D3ED4();
    sub_24AFF8258(v6, &qword_27EFCAC10);
    sub_24AFF8258(&v41, &qword_27EFCAC40);
    return (v29)(v13, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC20);
    sub_24B2D4CD4();
    *(&v42 + 1) = &type metadata for AccessoryOnboardingContentView;
    v43 = sub_24B0DA210();
    v31 = swift_allocObject();
    *&v41 = v31;
    sub_24B2D4CD4();
    *(v31 + 56) = 0x4058000000000000;
    *(v3 + 56) = 0u;
    *(v3 + 9) = 0;
    *(v3 + 40) = 0u;
    sub_24B0DA264(&v41, (v3 + 40));
    sub_24B2D42E4();
    v41 = 0u;
    v42 = 0u;
    LOBYTE(v43) = 1;
    sub_24B2D4084();
    sub_24B008890(v3, v35, &qword_27EFCAC00);
    swift_storeEnumTagMultiPayload();
    sub_24B0DA2D4();
    sub_24B0DA338();
    sub_24B2D3ED4();
    return sub_24AFF8258(v3, &qword_27EFCAC00);
  }
}

unint64_t sub_24B0DA210()
{
  result = qword_27EFCAC28;
  if (!qword_27EFCAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAC28);
  }

  return result;
}

uint64_t sub_24B0DA264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B0DA2D4()
{
  result = qword_27EFCAC30;
  if (!qword_27EFCAC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAC30);
  }

  return result;
}

unint64_t sub_24B0DA338()
{
  result = qword_27EFCAC38;
  if (!qword_27EFCAC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAC00);
    sub_24B0D7FB4();
    sub_24B0DA3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAC38);
  }

  return result;
}

unint64_t sub_24B0DA3C4()
{
  result = qword_27EFCA320;
  if (!qword_27EFCA320)
  {
    sub_24B2D4094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA320);
  }

  return result;
}

unint64_t sub_24B0DA470()
{
  result = qword_27EFCAC50;
  if (!qword_27EFCAC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAC58);
    sub_24B0DA2D4();
    sub_24B0DA338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAC50);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24B0DA528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B0DA570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B0DA5F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC68);
  MEMORY[0x28223BE20](v45);
  v48 = &v44 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC70);
  v7 = MEMORY[0x28223BE20](v47);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC78);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  sub_24B0DABEC(v1, &v44 - v16);
  v18 = *v1;
  v19 = *(v2 + 8);
  v21 = *(v2 + 24);
  v20 = *(v2 + 32);
  v22 = sub_24B2D42F4();
  v23 = *(v13 + 44);
  v49 = v17;
  v24 = &v17[v23];
  *v24 = v22;
  *(v24 + 1) = v18;
  *(v24 + 2) = v21;
  *(v24 + 3) = v19;
  *(v24 + 4) = v21;
  v24[40] = 0;
  *v5 = sub_24B2D3E04();
  *(v5 + 1) = v20;
  v5[16] = 0;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC80) + 44);
  v54 = sub_24B0CD39C();
  v25 = swift_allocObject();
  v26 = *(v2 + 80);
  *(v25 + 80) = *(v2 + 64);
  *(v25 + 96) = v26;
  *(v25 + 112) = *(v2 + 96);
  v27 = *(v2 + 16);
  *(v25 + 16) = *v2;
  *(v25 + 32) = v27;
  v28 = *(v2 + 48);
  *(v25 + 48) = *(v2 + 32);
  *(v25 + 64) = v28;
  sub_24B0DC61C(v2, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC90);
  sub_24B039184(&qword_27EFCAC98, &qword_27EFCAC88);
  sub_24B039184(&qword_27EFCACA0, &qword_27EFCAC90);
  sub_24B0DC654();
  sub_24B2D4EE4();

  sub_24B2D5074();
  sub_24B2D3904();
  v29 = v48;
  sub_24B0391CC(v5, v48, &qword_27EFCAC60);
  v30 = (v29 + *(v45 + 36));
  v31 = v55[5];
  v30[4] = v55[4];
  v30[5] = v31;
  v30[6] = v55[6];
  v32 = v55[1];
  *v30 = v55[0];
  v30[1] = v32;
  v33 = v55[3];
  v30[2] = v55[2];
  v30[3] = v33;
  v34 = sub_24B2D42F4();
  v35 = v46;
  sub_24B0391CC(v29, v46, &qword_27EFCAC68);
  v36 = v35 + *(v47 + 36);
  *v36 = v34;
  *(v36 + 8) = 0;
  *(v36 + 16) = v21;
  *(v36 + 24) = 0;
  *(v36 + 32) = v21;
  *(v36 + 40) = 0;
  v37 = v51;
  sub_24B0391CC(v35, v51, &qword_27EFCAC70);
  v39 = v49;
  v38 = v50;
  sub_24B008890(v49, v50, &qword_27EFCAC78);
  v40 = v52;
  sub_24B008890(v37, v52, &qword_27EFCAC70);
  v41 = v53;
  sub_24B008890(v38, v53, &qword_27EFCAC78);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACB0);
  sub_24B008890(v40, v41 + *(v42 + 48), &qword_27EFCAC70);
  sub_24AFF8258(v37, &qword_27EFCAC70);
  sub_24AFF8258(v39, &qword_27EFCAC78);
  sub_24AFF8258(v40, &qword_27EFCAC70);
  return sub_24AFF8258(v38, &qword_27EFCAC78);
}

uint64_t sub_24B0DABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v58 = a2;
  v43 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v43);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_24B2D2F54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D2DE4();
  MEMORY[0x28223BE20](v10 - 8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACD8);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACE0);
  MEMORY[0x28223BE20](v44);
  v49 = &v42 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACE8);
  MEMORY[0x28223BE20](v56);
  v14 = &v42 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACF0);
  v51 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v50 = &v42 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACF8);
  MEMORY[0x28223BE20](v52);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD00);
  MEMORY[0x28223BE20](v18 - 8);
  v53 = &v42 - v19;
  sub_24B2D5694();
  v55 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v54;
  if (*(*(v54 + 80) + 128))
  {
    swift_storeEnumTagMultiPayload();
    v21 = sub_24B0DC718();
    *&v61 = v56;
    *(&v61 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    v22 = v53;
    sub_24B2D3ED4();
  }

  else
  {
    sub_24B2D2F44();
    sub_24B2D2DB4();
    (*(v7 + 8))(v9, v6);
    sub_24B2D2D34();
    v23 = sub_24B2D2D44();
    (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    *&v61 = MEMORY[0x277D84F90];
    sub_24B0AABFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
    sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
    v24 = sub_24B2D5B44();
    MEMORY[0x28223BE20](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD28);
    sub_24B0DC890();
    v25 = v45;
    sub_24B2D2C84();
    v26 = *(v20 + 56);
    sub_24B2D5064();
    sub_24B2D3904();
    v27 = v49;
    (*(v47 + 32))(v49, v25, v48);
    v28 = (v27 + *(v44 + 36));
    v29 = v66;
    v28[4] = v65;
    v28[5] = v29;
    v28[6] = v67;
    v30 = v62;
    *v28 = v61;
    v28[1] = v30;
    v31 = v64;
    v28[2] = v63;
    v28[3] = v31;
    v32 = v56;
    v33 = &v14[*(v56 + 36)];
    v34 = *(sub_24B2D38B4() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_24B2D3DC4();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    *v33 = v26;
    *(v33 + 1) = v26;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCABD0) + 36)] = 256;
    sub_24B0391CC(v27, v14, &qword_27EFCACE0);
    v37 = sub_24B0DC718();
    v38 = v50;
    sub_24B2D4634();
    sub_24AFF8258(v14, &qword_27EFCACE8);
    v39 = v51;
    v40 = v57;
    (*(v51 + 16))(v17, v38, v57);
    swift_storeEnumTagMultiPayload();
    v59 = v32;
    v60 = v37;
    swift_getOpaqueTypeConformance2();
    v22 = v53;
    sub_24B2D3ED4();
    (*(v39 + 8))(v38, v40);
  }

  sub_24B0391CC(v22, v58, &qword_27EFCAD00);
}

uint64_t sub_24B0DB584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD40);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD38);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  sub_24B2D5694();
  v24 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*(*(a1 + 80) + 128))
  {
    (*(v10 + 56))(v15, 1, 1, v9);
  }

  else
  {
    v20 = &v20;
    v26 = 0x697461746F6E6E61;
    v27 = 0xEF6567616D496E6FLL;
    MEMORY[0x28223BE20](isCurrentExecutor);
    *(&v20 - 2) = a1;
    sub_24B2D5184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD58);
    sub_24B0DC9D0();
    sub_24AFFE0A4();
    sub_24B2D3024();
    v17 = sub_24B039184(&qword_27EFCAD48, &qword_27EFCAD40);
    sub_24B2D2FD4();
    (*(v21 + 8))(v5, v3);
    v26 = v3;
    v27 = v17;
    swift_getOpaqueTypeConformance2();
    v18 = v23;
    sub_24B2D2FE4();
    (*(v22 + 8))(v8, v18);
    (*(v10 + 32))(v15, v12, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
  }

  sub_24B0391CC(v15, v25, &qword_27EFCAD28);
}

__n128 sub_24B0DBA1C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_24B2D5064();
  v6 = v5;
  sub_24B0DBAEC(a1, v10);

  v8 = v10[0];
  result = v10[1];
  v9 = -*(a1 + 64);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_24B0DBAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryOnboardingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_24B2D4C24();
  v7 = *(*(*(a1 + 80) + 104) + OBJC_IVAR___FMUIDiscoveredAccessory_productImage);
  v8 = sub_24B2D4BB4();
  v9 = -*(a1 + 72);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
}

uint64_t sub_24B0DBC20@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a2 + 16);
  *a3 = sub_24B2D3CD4();
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACB8);
  sub_24B0DBCFC(v5, a2, a3 + *(v7 + 44));
}

uint64_t sub_24B0DBCFC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v49 = a1;
  v48 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v38 - v4;
  v41 = sub_24B2D3694();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B70);
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v38 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACC0);
  MEMORY[0x28223BE20](v39);
  v12 = &v38 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACC8);
  v13 = MEMORY[0x28223BE20](v42);
  v47 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v45 = &v38 - v18;
  sub_24B2D5694();
  v46 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v54[0] = sub_24B2D4BC4();
  sub_24B2D3684();
  sub_24B2D4714();
  (*(v5 + 8))(v7, v41);

  v19 = sub_24B2D4A84();
  KeyPath = swift_getKeyPath();
  (*(v8 + 32))(v12, v10, v40);
  v21 = &v12[*(v39 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = sub_24B2D43B4();
  v23 = v44;
  (*(*(v22 - 8) + 56))(v44, 1, 1, v22);
  v24 = sub_24B2D4404();
  sub_24AFF8258(v23, &qword_27EFCAA68);
  v25 = swift_getKeyPath();
  sub_24B0391CC(v12, v17, &qword_27EFCACC0);
  v26 = &v17[*(v42 + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = v45;
  sub_24B0391CC(v17, v45, &qword_27EFCACC8);
  v28 = sub_24B2D3E04();
  LOBYTE(v54[0]) = 1;
  sub_24B0DC308(v49, v51);
  *&v50[7] = v51[0];
  *&v50[23] = v51[1];
  *&v50[39] = v51[2];
  *&v50[55] = v51[3];
  LOBYTE(KeyPath) = v54[0];
  v29 = v47;
  sub_24B008890(v27, v47, &qword_27EFCACC8);
  v30 = v48;
  sub_24B008890(v29, v48, &qword_27EFCACC8);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCACD0) + 48);
  v52 = v28;
  v53[0] = KeyPath;
  *&v53[1] = *v50;
  *&v53[17] = *&v50[16];
  *&v53[33] = *&v50[32];
  *&v53[49] = *&v50[48];
  v32 = *&v50[63];
  *&v53[64] = *&v50[63];
  v33 = *v53;
  *v31 = v28;
  *(v31 + 16) = v33;
  v34 = *&v53[16];
  v35 = *&v53[32];
  v36 = *&v53[48];
  *(v31 + 80) = v32;
  *(v31 + 48) = v35;
  *(v31 + 64) = v36;
  *(v31 + 32) = v34;
  sub_24B0DC6A8(&v52, v54);
  sub_24AFF8258(v27, &qword_27EFCACC8);
  v54[0] = v28;
  v54[1] = 0;
  v55 = KeyPath;
  v57 = *&v50[16];
  v58 = *&v50[32];
  *v59 = *&v50[48];
  *&v59[15] = *&v50[63];
  v56 = *v50;
  sub_24AFF8258(v54, &qword_27EFCAA78);
  sub_24AFF8258(v29, &qword_27EFCACC8);
}

uint64_t sub_24B0DC308@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0C5A2C(a1);
  sub_24AFFE0A4();
  v4 = sub_24B2D4604();
  v6 = v5;
  v35 = a1;
  v8 = v7;
  v9 = sub_24B2D45B4();
  v11 = v10;
  v13 = v12;
  sub_24B083C34(v4, v6, v8 & 1);

  sub_24B2D4394();
  v14 = sub_24B2D45C4();
  v37 = v15;
  v38 = v14;
  v36 = v16;
  v39 = v17;

  sub_24B083C34(v9, v11, v13 & 1);

  sub_24B0C5E18(v35);
  v18 = sub_24B2D4604();
  v20 = v19;
  v22 = v21;
  sub_24B2D4394();
  v23 = sub_24B2D45C4();
  v25 = v24;
  LOBYTE(v6) = v26;

  sub_24B083C34(v18, v20, v22 & 1);

  sub_24B2D4B64();
  v27 = sub_24B2D4584();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_24B083C34(v23, v25, v6 & 1);

  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_24B083C44(v38, v37, v36 & 1);

  sub_24B083C44(v27, v29, v31 & 1);

  sub_24B083C34(v27, v29, v31 & 1);

  sub_24B083C34(v38, v37, v36 & 1);
}

unint64_t sub_24B0DC654()
{
  result = qword_27EFCACA8;
  if (!qword_27EFCACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCACA8);
  }

  return result;
}

uint64_t sub_24B0DC6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B0DC718()
{
  result = qword_27EFCAD08;
  if (!qword_27EFCAD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCACE8);
    sub_24B0DC7D0();
    sub_24B039184(&qword_27EFCAD20, &qword_27EFCABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAD08);
  }

  return result;
}

unint64_t sub_24B0DC7D0()
{
  result = qword_27EFCAD10;
  if (!qword_27EFCAD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCACE0);
    sub_24B039184(&qword_27EFCAD18, &qword_27EFCACD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAD10);
  }

  return result;
}

unint64_t sub_24B0DC890()
{
  result = qword_27EFCAD30;
  if (!qword_27EFCAD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAD28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAD40);
    sub_24B039184(&qword_27EFCAD48, &qword_27EFCAD40);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAD30);
  }

  return result;
}

unint64_t sub_24B0DC9D0()
{
  result = qword_27EFCAD60;
  if (!qword_27EFCAD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAD58);
    sub_24B039184(&qword_27EFCAD68, &qword_27EFCAD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAD60);
  }

  return result;
}

uint64_t sub_24B0DCAC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a2;
  v70 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC00);
  MEMORY[0x28223BE20](v68);
  v7 = &v55 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD88);
  v63 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v9 = &v55 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD90);
  MEMORY[0x28223BE20](v65);
  v67 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD98);
  MEMORY[0x28223BE20](v66);
  v64 = &v55 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCADA0);
  v60 = *(v62 - 8);
  v12 = MEMORY[0x28223BE20](v62);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC18);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  *(&v75 + 1) = &type metadata for SolariumFeatureFlag;
  v76 = sub_24B0096D0();
  v23 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  if (v23)
  {
    v24 = v59;
    v25 = a3;
    v58 = v22;
    sub_24B2D3094();
    v26 = type metadata accessor for AccessoryPairedViewModel();
    v71[4] = &off_285E4D760;
    v71[3] = v26;
    v71[0] = a1;
    *(&v75 + 1) = &type metadata for AccessoryPairedContentView;
    v76 = sub_24B0DD380();
    v27 = swift_allocObject();
    *&v74 = v27;
    *(v27 + 16) = xmmword_24B2E6AD0;
    *(v27 + 32) = xmmword_24B2E6AE0;
    *(v27 + 48) = xmmword_24B2E6AF0;
    *(v27 + 64) = xmmword_24B2E6B00;
    *(v27 + 80) = xmmword_24B2E6B10;
    *(v27 + 104) = 0;
    *(v27 + 112) = 0;
    *(v27 + 96) = a1;
    memset(v72, 0, sizeof(v72));
    v73 = 0;
    swift_retain_n();
    sub_24B0DA264(&v74, v72);
    v28 = sub_24B2D42E4();
    sub_24B2D32F4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_24B0D8F0C(v71, &v74);
    v77 = v28;
    v78 = v30;
    v79 = v32;
    v80 = v34;
    v81 = v36;
    v82 = 0;
    sub_24B0DA41C(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC40);
    sub_24B0DD438();
    v37 = v15;
    v57 = v15;
    sub_24B2D4894();
    sub_24AFF8258(&v74, &qword_27EFCAC40);
    v56 = v17;
    v38 = *(v17 + 16);
    v39 = v16;
    v38(v20, v22, v16);
    v40 = v60;
    v41 = *(v60 + 16);
    v42 = v61;
    v43 = v62;
    v41(v61, v37, v62);
    v44 = v64;
    v38(v64, v20, v39);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCADC0);
    v41((v44 + *(v45 + 48)), v42, v43);
    v46 = *(v40 + 8);
    v46(v42, v43);
    v47 = *(v56 + 8);
    v47(v20, v39);
    sub_24AFDD924(v44, v67);
    swift_storeEnumTagMultiPayload();
    sub_24B0DD3D4();
    v48 = sub_24B0DA338();
    *&v74 = v68;
    *(&v74 + 1) = v48;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    sub_24AFDD994(v44);
    v46(v57, v43);
    return (v47)(v58, v39);
  }

  else
  {
    *(v7 + 3) = type metadata accessor for AccessoryPairedViewModel();
    *(v7 + 4) = &off_285E4D760;
    *v7 = a1;
    *(&v75 + 1) = &type metadata for AccessoryPairedContentView;
    v76 = sub_24B0DD380();
    v50 = swift_allocObject();
    *&v74 = v50;
    *(v50 + 16) = xmmword_24B2E6AD0;
    *(v50 + 32) = xmmword_24B2E6AE0;
    *(v50 + 48) = xmmword_24B2E6AF0;
    *(v50 + 64) = xmmword_24B2E6B00;
    *(v50 + 80) = xmmword_24B2E6B10;
    *(v50 + 104) = 0;
    *(v50 + 112) = 0;
    *(v50 + 96) = a1;
    *(v7 + 56) = 0u;
    *(v7 + 9) = 0;
    *(v7 + 40) = 0u;
    swift_retain_n();
    sub_24B0DA264(&v74, (v7 + 40));
    sub_24B2D42E4();
    v74 = 0u;
    v75 = 0u;
    LOBYTE(v76) = 1;
    v51 = v68;
    sub_24B2D4084();
    v52 = sub_24B0DA338();
    sub_24B2D4894();
    sub_24AFF8258(v7, &qword_27EFCAC00);
    v53 = v63;
    v54 = v69;
    (*(v63 + 16))(v67, v9, v69);
    swift_storeEnumTagMultiPayload();
    sub_24B0DD3D4();
    v71[0] = v51;
    v71[1] = v52;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    return (*(v53 + 8))(v9, v54);
  }
}

unint64_t sub_24B0DD380()
{
  result = qword_27EFCADA8;
  if (!qword_27EFCADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCADA8);
  }

  return result;
}

unint64_t sub_24B0DD3D4()
{
  result = qword_27EFCADB0;
  if (!qword_27EFCADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCADB0);
  }

  return result;
}

unint64_t sub_24B0DD438()
{
  result = qword_27EFCADB8;
  if (!qword_27EFCADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAC40);
    sub_24B0D7FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCADB8);
  }

  return result;
}

unint64_t sub_24B0DD4C4()
{
  result = qword_27EFCADC8;
  if (!qword_27EFCADC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFCADD0);
    sub_24B0DD3D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAC00);
    sub_24B0DA338();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCADC8);
  }

  return result;
}

uint64_t sub_24B0DD594()
{
  result = sub_24B2D4F84();
  if (v1 <= 0x3F)
  {
    result = sub_24B038248(319, &qword_27EFCAE58);
    if (v2 <= 0x3F)
    {
      result = sub_24B038248(319, &qword_27EFCAE60);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B0DD6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAE68);
  MEMORY[0x28223BE20](v85);
  v6 = v70 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAE70);
  MEMORY[0x28223BE20](v82);
  v84 = v70 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAE78);
  MEMORY[0x28223BE20](v83);
  v79 = v70 - v8;
  v9 = *(a1 + 16);
  v10 = sub_24B2D4F84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v70 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAE80);
  v14 = MEMORY[0x28223BE20](v76);
  v78 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v70 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAC18);
  v80 = *(v81 - 8);
  v18 = MEMORY[0x28223BE20](v81);
  v77 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v70 - v20;
  *(&v91 + 1) = &type metadata for SolariumFeatureFlag;
  v92 = sub_24B0096D0();
  v22 = sub_24B2D2634();
  __swift_destroy_boxed_opaque_existential_0(&v90);
  if (v22)
  {
    v23 = *(v3 + *(a1 + 28));
    v24 = *(v3 + *(a1 + 32));
    v25 = v23;
    v26 = v24;
    v75 = v21;
    sub_24B2D3094();
    sub_24B2D4F44();
    *(&v91 + 1) = v9;
    v92 = &off_285E4D8B8;
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0;
    sub_24B0DA264(&v87, &v93);
    sub_24B2D4F44();
    v27 = sub_24B0D090C();

    *&v87 = sub_24B0C698C(v27);
    *(&v87 + 1) = v28;
    sub_24AFFE0A4();
    v74 = sub_24B2D4604();
    v73 = v29;
    v71 = v30;
    v72 = v31;
    v32 = sub_24B2D4F54();
    MEMORY[0x28223BE20](v32);
    swift_getKeyPath();
    sub_24B2D4F74();

    v33 = (*(v11 + 8))(v13, v10);
    v70[1] = v70;
    v34 = MEMORY[0x28223BE20](v33);
    MEMORY[0x28223BE20](v34);
    v35 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAE88);
    sub_24B0D7FB4();
    sub_24B0DF2C4(&qword_27EFCAE90, &qword_27EFCAE88);
    v36 = v71;
    v37 = v74;
    v38 = v73;
    sub_24B2D48F4();

    sub_24B083C34(v37, v38, v36 & 1);

    sub_24B0DA41C(&v90);
    LOBYTE(v24) = sub_24B2D42E4();
    sub_24B2D32F4();
    v39 = v35 + *(v76 + 36);
    v40 = v35;
    v70[0] = v35;
    *v39 = v24;
    *(v39 + 8) = v41;
    *(v39 + 16) = v42;
    *(v39 + 24) = v43;
    *(v39 + 32) = v44;
    *(v39 + 40) = 0;
    v45 = v80;
    v46 = *(v80 + 16);
    v47 = v77;
    v48 = v75;
    v49 = v81;
    v46(v77, v75, v81);
    v50 = v40;
    v51 = v78;
    sub_24B008890(v50, v78, &qword_27EFCAE80);
    v52 = v79;
    v46(v79, v47, v49);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAEA8);
    sub_24B008890(v51, v52 + *(v53 + 48), &qword_27EFCAE80);
    sub_24AFF8258(v51, &qword_27EFCAE80);
    v54 = *(v45 + 8);
    v54(v47, v49);
    sub_24B008890(v52, v84, &qword_27EFCAE78);
    swift_storeEnumTagMultiPayload();
    sub_24B0DF2C4(&qword_27EFCAE98, &qword_27EFCAE78);
    sub_24B0DF318();
    sub_24B2D3ED4();
    sub_24AFF8258(v52, &qword_27EFCAE78);
    sub_24AFF8258(v70[0], &qword_27EFCAE80);
    return (v54)(v48, v49);
  }

  else
  {
    sub_24B2D4F44();
    v81 = v6;
    *(&v91 + 1) = v9;
    v92 = &off_285E4D8B8;
    sub_24B2D4F44();
    v56 = v87;
    *(&v88 + 1) = &type metadata for AccessoryOnboardingContentView;
    v89 = sub_24B0DA210();
    v57 = swift_allocObject();
    *&v87 = v57;
    v57[5] = v9;
    v57[6] = &off_285E4D8B8;
    v57[2] = v56;
    v57[7] = 0x4058000000000000;
    v93 = 0u;
    v94 = 0u;
    v95 = 0;
    sub_24B0DA264(&v87, &v93);
    sub_24B2D4F44();
    v58 = sub_24B0D090C();

    *&v87 = sub_24B0C698C(v58);
    *(&v87 + 1) = v59;
    sub_24AFFE0A4();
    v80 = sub_24B2D4604();
    v79 = v60;
    LODWORD(v77) = v61;
    v78 = v62;
    v63 = sub_24B2D4F54();
    MEMORY[0x28223BE20](v63);
    swift_getKeyPath();
    sub_24B2D4F74();

    v64 = (*(v11 + 8))(v13, v10);
    v65 = MEMORY[0x28223BE20](v64);
    MEMORY[0x28223BE20](v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAE88);
    sub_24B0D7FB4();
    sub_24B0DF2C4(&qword_27EFCAE90, &qword_27EFCAE88);
    v66 = v77;
    v67 = v81;
    v68 = v80;
    v69 = v79;
    sub_24B2D48F4();

    sub_24B083C34(v68, v69, v66 & 1);

    sub_24B0DA41C(&v90);
    sub_24B2D42E4();
    v90 = 0u;
    v91 = 0u;
    LOBYTE(v92) = 1;
    sub_24B2D4084();
    sub_24B008890(v67, v84, &qword_27EFCAE68);
    swift_storeEnumTagMultiPayload();
    sub_24B0DF2C4(&qword_27EFCAE98, &qword_27EFCAE78);
    sub_24B0DF318();
    sub_24B2D3ED4();
    return sub_24AFF8258(v67, &qword_27EFCAE68);
  }
}

uint64_t sub_24B0DE264@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B0DF490(&qword_27EFCA898, type metadata accessor for AccessoryUnpairedViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore26AccessoryUnpairedViewModel__shouldShowAlert);
  return result;
}

uint64_t sub_24B0DE314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a3;
  v36 = a2;
  v4 = type metadata accessor for AccessoryUnpairedOverview();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318);
  v34 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v39 = &v34 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v38 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v35 = &v34 - v18;
  sub_24B2D5694();
  v37 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_24B2D32E4();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  (*(v5 + 16))(v7, a1, v4);
  v21 = v4;
  v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v36;
  (*(v5 + 32))(v23 + v22, v7, v21);
  v24 = v35;
  sub_24B2D4D24();
  sub_24B2D32D4();
  v20(v10, 0, 1, v19);
  v25 = v38;
  sub_24B2D4D24();
  v26 = v34;
  v27 = *(v34 + 16);
  v28 = v39;
  v27(v39, v24, v11);
  v29 = v40;
  v27(v40, v25, v11);
  v30 = v41;
  v27(v41, v28, v11);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAEB0);
  v27(&v30[*(v31 + 48)], v29, v11);
  v32 = *(v26 + 8);
  v32(v25, v11);
  v32(v24, v11);
  v32(v29, v11);
  v32(v28, v11);
}

uint64_t sub_24B0DE82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a3;
  v36 = a2;
  v4 = type metadata accessor for AccessoryUnpairedOverview();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318);
  v34 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v39 = &v34 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v38 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v35 = &v34 - v18;
  sub_24B2D5694();
  v37 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_24B2D32E4();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  (*(v5 + 16))(v7, a1, v4);
  v21 = v4;
  v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v36;
  (*(v5 + 32))(v23 + v22, v7, v21);
  v24 = v35;
  sub_24B2D4D24();
  sub_24B2D32D4();
  v20(v10, 0, 1, v19);
  v25 = v38;
  sub_24B2D4D24();
  v26 = v34;
  v27 = *(v34 + 16);
  v28 = v39;
  v27(v39, v24, v11);
  v29 = v40;
  v27(v40, v25, v11);
  v30 = v41;
  v27(v41, v28, v11);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAEB0);
  v27(&v30[*(v31 + 48)], v29, v11);
  v32 = *(v26 + 8);
  v32(v25, v11);
  v32(v24, v11);
  v32(v29, v11);
  v32(v28, v11);
}

uint64_t sub_24B0DECF4()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryUnpairedOverview();
  sub_24B2D4F84();
  sub_24B2D4F44();
  swift_getKeyPath();
  sub_24B0DF490(&qword_27EFCA898, type metadata accessor for AccessoryUnpairedViewModel);
  sub_24B2D2584();

  v0 = *(v2 + 64);
  if (v0)
  {

    v0(2, 2, 0, 0, 1);

    sub_24AFD5890(v0);
  }

  else
  {
  }
}

uint64_t sub_24B0DEEA8()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_24B0DEF64@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7618 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D1454();
  v6 = __swift_project_value_buffer(v5, qword_27EFE44E8);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_24B2D52D4();
  v10 = v9;
  sub_24B0C6490(v4);
  v19[0] = v8;
  v19[1] = v10;
  sub_24AFFE0A4();
  v11 = sub_24B2D4604();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_24B0DF16C@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryUnpairedOverview();
  sub_24B2D4F84();
  sub_24B2D4F44();
  v2 = sub_24B0D090C();

  sub_24B0C6D88(v2);
  sub_24AFFE0A4();
  v3 = sub_24B2D4604();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_24B0DF2C4(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_24B0DF318()
{
  result = qword_27EFCAEA0;
  if (!qword_27EFCAEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAE68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAE88);
    sub_24B0D7FB4();
    sub_24B0DF2C4(&qword_27EFCAE90, &qword_27EFCAE88);
    swift_getOpaqueTypeConformance2();
    sub_24B0DF490(&qword_27EFCA320, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAEA0);
  }

  return result;
}

uint64_t sub_24B0DF490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_3Tm()
{
  v1 = (type metadata accessor for AccessoryUnpairedOverview() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24B2D4F84();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B0DF660()
{
  result = qword_27EFCAEB8;
  if (!qword_27EFCAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFCAEC0);
    sub_24B0DF2C4(&qword_27EFCAE98, &qword_27EFCAE78);
    sub_24B0DF318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAEB8);
  }

  return result;
}

uint64_t static Destination.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a1;
  v61 = a2;
  v54 = *(a5 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v50 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v49 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v8);
  v48[0] = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[1] = v12;
  v58 = v13;
  v62 = v13;
  v63 = v14;
  v55 = v14;
  v56 = v15;
  v64 = v15;
  v65 = v12;
  v51 = v16;
  v52 = v17;
  v66 = v16;
  v67 = v17;
  v18 = type metadata accessor for Destination();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v48 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v48 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = *(TupleTypeMetadata2 - 8);
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = v48 - v30;
  v32 = *(v29 + 48);
  v33 = *(v19 + 16);
  v33(v48 - v30, v60, v18);
  v33(&v31[v32], v61, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v57;
    v41 = v58;
    v33(v27, v31, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = v48[0];
      (*(v42 + 32))(v48[0], &v31[v32], v41);
      v38 = sub_24B2D52A4();
      v47 = *(v42 + 8);
      v47(v46, v41);
      v47(v27, v41);
      goto LABEL_13;
    }

    (*(v42 + 8))(v27, v41);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v33(v22, v31, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v43 = v54;
      v44 = v50;
      v37 = v56;
      (*(v54 + 32))(v50, &v31[v32], v56);
      v38 = sub_24B2D52A4();
      v39 = *(v43 + 8);
      v39(v44, v37);
      v40 = v22;
      goto LABEL_9;
    }

    (*(v54 + 8))(v22, v56);
LABEL_12:
    v38 = 0;
    v19 = v59;
    v18 = TupleTypeMetadata2;
    goto LABEL_13;
  }

  v33(v25, v31, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v53 + 8))(v25, v55);
    goto LABEL_12;
  }

  v35 = v53;
  v36 = v49;
  v37 = v55;
  (*(v53 + 32))(v49, &v31[v32], v55);
  v38 = sub_24B2D52A4();
  v39 = *(v35 + 8);
  v39(v36, v37);
  v40 = v25;
LABEL_9:
  v39(v40, v37);
LABEL_13:
  (*(v19 + 8))(v31, v18);
  return v38 & 1;
}

uint64_t Destination.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v27 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v26 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v9);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v26;
      (*(v26 + 32))(v11, v19, v8);
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5254();
      return (*(v23 + 8))(v11, v8);
    }

    else
    {
      v25 = v27;
      (*(v27 + 32))(v6, v19, v3);
      MEMORY[0x24C23C8D0](2);
      sub_24B2D5254();
      return (*(v25 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v19, v13);
    MEMORY[0x24C23C8D0](0);
    sub_24B2D5254();
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t Destination.hashValue.getter(uint64_t a1)
{
  sub_24B2D60E4();
  Destination.hash(into:)(v3, a1);
  return sub_24B2D6124();
}

uint64_t sub_24B0E0068(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  Destination.hash(into:)(v4, a2);
  return sub_24B2D6124();
}

uint64_t sub_24B0E00C0@<X0>(uint64_t *a1@<X8>)
{
  swift_getWitnessTable();
  result = DestinationPath.id.getter();
  *a1 = result;
  return result;
}

uint64_t Destination.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_24B0E0294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v16 = *(a3 + a4 - 48);
  v6 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v10 = *(v9 + 16);
  v11 = *(v5 - 32);
  v14 = *(v5 - 16);
  v15 = v11;
  v10(v8, a1);
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v12 = type metadata accessor for Destination();
  return Destination.stack.setter(v8, v12);
}

uint64_t Destination.stack.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.stack.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_24B2D5A84();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Destination.stack.getter(a2, v11);
  return sub_24B0E05C0;
}

uint64_t Destination.sheet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_24B0E0758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 48);
  v7 = *(a3 + a4 - 8);
  v16 = *(a3 + a4 - 40);
  v8 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v12 = *(v11 + 16);
  v15 = *(v5 - 24);
  v12(v10, a1);
  v17 = v6;
  v18 = v16;
  v19 = v15;
  v20 = v7;
  v13 = type metadata accessor for Destination();
  return Destination.sheet.setter(v10, v13);
}

uint64_t Destination.sheet.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.sheet.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_24B2D5A84();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Destination.sheet.getter(a2, v11);
  return sub_24B0E0A98;
}

uint64_t Destination.alert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 32);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 2)
  {
    v11 = *(a1 + 32);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_24B0E0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v16 = *(a3 + a4 - 32);
  v6 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v10 = *(v9 + 16);
  v11 = *(v5 - 16);
  v14 = *(v5 - 48);
  v15 = v11;
  v10(v8, a1);
  v17 = v14;
  v18 = v16;
  v19 = v15;
  v12 = type metadata accessor for Destination();
  return Destination.alert.setter(v8, v12);
}

uint64_t Destination.alert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(a1, 1, v5);
  if (result != 1)
  {
    (*(*(a2 - 8) + 8))(v2, a2);
    (*(v6 + 32))(v2, a1, v5);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*Destination.alert.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_24B2D5A84();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Destination.alert.getter(a2, v11);
  return sub_24B0E0FC4;
}

void sub_24B0E0FDC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3((*a1)[5], *v4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*sub_24B0E10B0(void *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.stack.modify(v4, a2);
  return sub_24B0E2CE8;
}

uint64_t (*sub_24B0E1130(void *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.sheet.modify(v4, a2);
  return sub_24B0E2CE8;
}

uint64_t (*sub_24B0E11B0(void *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Destination.alert.modify(v4, a2);
  return sub_24B0E1228;
}

void sub_24B0E122C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t Optional<A>.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 32))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t Optional<A>.stack.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_24B2D5A84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v11 + 16))(&v19 - v15, a1, v10);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(a1, v10);
    v17 = v20;
    (*(*(a2 - 8) + 8))(v20, a2);
    return (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v9, v16, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v20, 1, v5))
    {
      (*(v7 + 16))(v14, v9, AssociatedTypeWitness);
      (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
      (*(v19 + 40))(v14, v5);
    }

    (*(v11 + 8))(a1, v10);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void (*Optional<A>.stack.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
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
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = sub_24B2D5A84();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  Optional<A>.stack.getter(a2, a3, v13);
  return sub_24B0E18C8;
}

uint64_t Optional<A>.sheet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 56))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t Optional<A>.sheet.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_24B2D5A84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v11 + 16))(&v19 - v15, a1, v10);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(a1, v10);
    v17 = v20;
    (*(*(a2 - 8) + 8))(v20, a2);
    return (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v9, v16, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v20, 1, v5))
    {
      (*(v7 + 16))(v14, v9, AssociatedTypeWitness);
      (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
      (*(v19 + 64))(v14, v5);
    }

    (*(v11 + 8))(a1, v10);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void (*Optional<A>.sheet.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
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
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = sub_24B2D5A84();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  Optional<A>.sheet.getter(a2, a3, v13);
  return sub_24B0E1F34;
}

uint64_t Optional<A>.alert.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 80))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t sub_24B0E2120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_24B2D5A84();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = sub_24B2D5A84();
  return a6(v11, v13, v8);
}

uint64_t Optional<A>.alert.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_24B2D5A84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v11 + 16))(&v19 - v15, a1, v10);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(a1, v10);
    v17 = v20;
    (*(*(a2 - 8) + 8))(v20, a2);
    return (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
  }

  else
  {
    (*(v7 + 32))(v9, v16, AssociatedTypeWitness);
    if (!(*(*(v5 - 8) + 48))(v20, 1, v5))
    {
      (*(v7 + 16))(v14, v9, AssociatedTypeWitness);
      (*(v7 + 56))(v14, 0, 1, AssociatedTypeWitness);
      (*(v19 + 88))(v14, v5);
    }

    (*(v11 + 8))(a1, v10);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

void (*Optional<A>.alert.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
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
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  v10 = sub_24B2D5A84();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  Optional<A>.alert.getter(a2, a3, v13);
  return sub_24B0E26AC;
}

void sub_24B0E26C4(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v4[3];
    v8 = v4[4];
    v9 = v4[1];
    v10 = *v4;
    (*(v8 + 16))((*a1)[5], v6, v7);
    a3(v5, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3((*a1)[6], *v4, v4[1]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_24B0E27A4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = sub_24B2D5A84();
  return a4(v6, v5);
}

uint64_t sub_24B0E2870()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24B0E2904(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_24B0E2A4C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v5 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_41:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_26;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

Swift::Bool __swiftcall CLLocation.isNearby(_:distanceInMeters:)(CLLocation _, Swift::Double distanceInMeters)
{
  isa = _.super.isa;
  [v2 distanceFromLocation_];
  v6 = v5;
  [v2 horizontalAccuracy];
  v8 = v7;
  [(objc_class *)isa horizontalAccuracy];
  return v6 / sqrt(distanceInMeters * distanceInMeters + v8 * v8 + v9 * v9) < 1.5;
}

uint64_t sub_24B0E2E28@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v87) = a2;
  v86 = a1;
  v92 = a3;
  v84 = sub_24B2D3DE4();
  v70 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF48);
  v72 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v60 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF50);
  MEMORY[0x28223BE20](v79);
  v83 = &v60 - v5;
  v80 = sub_24B2D3844();
  v66 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF58);
  v68 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v67 = &v60 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF60);
  MEMORY[0x28223BE20](v91);
  v82 = &v60 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF68);
  MEMORY[0x28223BE20](v89);
  v90 = &v60 - v9;
  v77 = sub_24B2D4174();
  v62 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF70);
  v64 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v63 = &v60 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF78);
  MEMORY[0x28223BE20](v73);
  v76 = &v60 - v13;
  v74 = sub_24B2D4104();
  v60 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B2D4284();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF80);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF88);
  v61 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v25 = &v60 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAF90);
  MEMORY[0x28223BE20](v88);
  v27 = &v60 - v26;
  (*(v17 + 16))(v19, v86, v16);
  sub_24B2D4D54();
  v28 = (v21 + 8);
  if (v87)
  {
    if ((v87 & 0x100) != 0)
    {
      sub_24B2D40F4();
      v87 = sub_24B0E3D2C();
      v43 = sub_24B0E3F08(&qword_27EFCAFB8, MEMORY[0x277CDE340]);
      v44 = v74;
      sub_24B2D46D4();
      (*(v60 + 8))(v15, v44);
      (*v28)(v23, v20);
      v45 = v61;
      v46 = v75;
      (*(v61 + 16))(v76, v25, v75);
      swift_storeEnumTagMultiPayload();
      v93 = v20;
      v94 = v44;
      v47 = v87;
      v95 = v87;
      v96 = v43;
      swift_getOpaqueTypeConformance2();
      v48 = sub_24B0E3F08(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
      v93 = v20;
      v94 = v77;
      v95 = v47;
      v96 = v48;
      swift_getOpaqueTypeConformance2();
      sub_24B2D3ED4();
      (*(v45 + 8))(v25, v46);
    }

    else
    {
      sub_24B2D4164();
      v29 = sub_24B0E3D2C();
      v87 = sub_24B0E3F08(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
      v30 = v63;
      v31 = v77;
      sub_24B2D46D4();
      (*(v62 + 8))(v11, v31);
      (*v28)(v23, v20);
      v32 = v64;
      v33 = v78;
      (*(v64 + 16))(v76, v30, v78);
      swift_storeEnumTagMultiPayload();
      v34 = sub_24B0E3F08(&qword_27EFCAFB8, MEMORY[0x277CDE340]);
      v93 = v20;
      v94 = v74;
      v95 = v29;
      v96 = v34;
      swift_getOpaqueTypeConformance2();
      v93 = v20;
      v94 = v31;
      v95 = v29;
      v96 = v87;
      swift_getOpaqueTypeConformance2();
      sub_24B2D3ED4();
      (*(v32 + 8))(v30, v33);
    }

    v49 = &qword_27EFCAF90;
    sub_24B008890(v27, v90, &qword_27EFCAF90);
    swift_storeEnumTagMultiPayload();
    sub_24B0E3D90();
    sub_24B0E3F50();
    sub_24B2D3ED4();
    v50 = v27;
  }

  else
  {
    if ((v87 & 0x100) != 0)
    {
      v51 = v65;
      sub_24B2D3834();
      v52 = sub_24B0E3D2C();
      v53 = sub_24B0E3F08(&qword_27EFCAFA8, MEMORY[0x277CDDA98]);
      v54 = v67;
      v55 = v80;
      sub_24B2D46D4();
      (*(v66 + 8))(v51, v55);
      (*v28)(v23, v20);
      v56 = v68;
      v57 = v81;
      (*(v68 + 16))(v83, v54, v81);
      swift_storeEnumTagMultiPayload();
      v93 = v20;
      v94 = v55;
      v95 = v52;
      v96 = v53;
      swift_getOpaqueTypeConformance2();
      v58 = sub_24B0E3F08(&qword_27EFCAFA0, MEMORY[0x277CDDEE0]);
      v93 = v20;
      v94 = v84;
      v95 = v52;
      v96 = v58;
      swift_getOpaqueTypeConformance2();
      v42 = v82;
      sub_24B2D3ED4();
      (*(v56 + 8))(v54, v57);
    }

    else
    {
      v35 = v69;
      sub_24B2D3DD4();
      v36 = sub_24B0E3D2C();
      v87 = sub_24B0E3F08(&qword_27EFCAFA0, MEMORY[0x277CDDEE0]);
      v37 = v71;
      v38 = v84;
      sub_24B2D46D4();
      (*(v70 + 8))(v35, v38);
      (*v28)(v23, v20);
      v39 = v72;
      v40 = v85;
      (*(v72 + 16))(v83, v37, v85);
      swift_storeEnumTagMultiPayload();
      v41 = sub_24B0E3F08(&qword_27EFCAFA8, MEMORY[0x277CDDA98]);
      v93 = v20;
      v94 = v80;
      v95 = v36;
      v96 = v41;
      swift_getOpaqueTypeConformance2();
      v93 = v20;
      v94 = v38;
      v95 = v36;
      v96 = v87;
      swift_getOpaqueTypeConformance2();
      v42 = v82;
      sub_24B2D3ED4();
      (*(v39 + 8))(v37, v40);
    }

    v49 = &qword_27EFCAF60;
    sub_24B008890(v42, v90, &qword_27EFCAF60);
    swift_storeEnumTagMultiPayload();
    sub_24B0E3D90();
    sub_24B0E3F50();
    sub_24B2D3ED4();
    v50 = v42;
  }

  return sub_24AFF8258(v50, v49);
}

uint64_t sub_24B0E3D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24B0E2E28(a1, v3 | *v2, a2);
}

unint64_t sub_24B0E3D2C()
{
  result = qword_27EFCAF98;
  if (!qword_27EFCAF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAF98);
  }

  return result;
}

unint64_t sub_24B0E3D90()
{
  result = qword_27EFCAFB0;
  if (!qword_27EFCAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAF80);
    sub_24B2D4104();
    sub_24B0E3D2C();
    sub_24B0E3F08(&qword_27EFCAFB8, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    sub_24B2D4174();
    sub_24B0E3F08(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAFB0);
  }

  return result;
}

uint64_t sub_24B0E3F08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B0E3F50()
{
  result = qword_27EFCAFC0;
  if (!qword_27EFCAFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAF80);
    sub_24B2D3844();
    sub_24B0E3D2C();
    sub_24B0E3F08(&qword_27EFCAFA8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_24B2D3DE4();
    sub_24B0E3F08(&qword_27EFCAFA0, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAFC0);
  }

  return result;
}

unint64_t sub_24B0E40C8()
{
  result = qword_27EFCAFC8;
  if (!qword_27EFCAFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCAFD0);
    sub_24B0E3D90();
    sub_24B0E3F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAFC8);
  }

  return result;
}

id static ContactImageGenerator.generateImage(forContact:layoutDirectionIsRTL:size:scale:)(void *a1, char a2, double a3, double a4, double a5)
{
  v6 = [objc_opt_self() scopeWithPointSize:a2 & 1 scale:0 rightToLeft:0 style:a3 backgroundStyle:{a4, a5}];
  v7 = [objc_opt_self() defaultSettings];
  v8 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B2DF8E0;
  *(v9 + 32) = a1;
  sub_24AFFF54C();
  v10 = a1;
  v11 = sub_24B2D5524();

  v12 = [v8 avatarImageForContacts:v11 scope:v6];
  swift_unknownObjectRelease();

  return v12;
}

unint64_t DemoLocationStreamPlistLoader.Resource.title.getter()
{
  v1 = 0x6E75522079746943;
  v2 = 0x2079617765657246;
  if (*v0 != 2)
  {
    v2 = 0x656C707041;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t DemoLocationStreamPlistLoader.Resource.motionActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24B2D1844();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279002BB8 + v3);

  return v5(a1, v6, v4);
}

uint64_t DemoLocationStreamPlistLoader.Resource.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

char *DemoLocationStreamPlistLoader.load(resource:)(unsigned __int8 *a1)
{
  v2 = sub_24B2D2244();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D2284();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_24B2D22D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = *a1;
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_24B2D5C34();
  MEMORY[0x24C23BC10](0xD00000000000004ELL, 0x800000024B2DB330);
  v18 = 0xE800000000000000;
  v19 = 0x6E75522079746943;
  v20 = 0xED00006576697244;
  v21 = 0x2079617765657246;
  if (v17 != 2)
  {
    v21 = 0x656C707041;
    v20 = 0xE500000000000000;
  }

  if (v17)
  {
    v19 = 0xD000000000000011;
    v18 = 0x800000024B2DB310;
  }

  if (v17 <= 1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  if (v17 <= 1)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  MEMORY[0x24C23BC10](v22, v23);

  MEMORY[0x24C23BC10](0x7473696C702ELL, 0xE600000000000000);
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v46 + 13))(v6, *MEMORY[0x277CC91D8], v47);
  sub_24B2D22C4();
  (*(v11 + 16))(v14, v16, v10);
  v24 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v25 = v49;
  v26 = sub_24B0E4C8C(v14);
  if (v25)
  {
    goto LABEL_31;
  }

  v27 = v26;
  v46 = v16;
  *&v52 = 0x6E6F697461636F4CLL;
  *(&v52 + 1) = 0xE900000000000073;
  v28 = [v26 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_24B2D5B14();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    sub_24B0E4DD8(&v54);
    goto LABEL_30;
  }

  sub_24B038248(0, &qword_27EFCAFE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAFD8);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_24B2DE430;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 32) = 0xD000000000000012;
    *(v37 + 40) = 0x800000024B2DB380;
    sub_24B2D60D4();

    sub_24B0E4E40();
    swift_allocError();
    swift_willThrow();

    v16 = v46;
LABEL_31:
    (*(v11 + 8))(v16, v10);
    return v14;
  }

  v41 = v27;
  v42 = v11;
  v43 = v10;
  v14 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v29 = v48;
  v40 = v50;
  sub_24B2D5A14();
  sub_24B2D2234();
  if (*(&v55 + 1))
  {
    v47 = 0x800000024B2DB3A0;
    v49 = xmmword_24B2DE430;
    do
    {
      sub_24B0E4E94(&v54, &v52);
      if (swift_dynamicCast())
      {
        v30 = v50;
        v31 = v51;
        sub_24B038248(0, &qword_27EFCAFF0);
        sub_24B038248(0, &qword_27EFC7B88);
        v32 = sub_24B2D5974();
        if (v32)
        {
          v36 = v32;
          MEMORY[0x24C23BCF0]();
          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24B2D5574();
          }

          sub_24B2D55B4();
          sub_24AFF7AE8(v30, v31);

          v14 = v56;
          v29 = v48;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAFD8);
          v35 = swift_allocObject();
          *(v35 + 16) = v49;
          *(v35 + 56) = MEMORY[0x277D837D0];
          *(v35 + 32) = 0x7461636F4C206F4ELL;
          *(v35 + 40) = 0xEF6A624F206E6F69;
          sub_24B2D60D4();

          sub_24AFF7AE8(v30, v31);
          v29 = v48;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAFD8);
        v33 = swift_allocObject();
        *(v33 + 16) = v49;
        *(v33 + 56) = MEMORY[0x277D837D0];
        v34 = v47;
        *(v33 + 32) = 0xD000000000000010;
        *(v33 + 40) = v34;
        sub_24B2D60D4();
      }

      sub_24B2D2234();
    }

    while (*(&v55 + 1));
  }

  (*(v44 + 8))(v29, v45);
  (*(v42 + 8))(v46, v43);
  return v14;
}

id sub_24B0E4C8C(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24B2D2294();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_24B2D22D4();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_24B2D21E4();

    swift_willThrow();
    v11 = sub_24B2D22D4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_24B0E4DD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B0E4E40()
{
  result = qword_27EFCAFE0;
  if (!qword_27EFCAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAFE0);
  }

  return result;
}

_OWORD *sub_24B0E4E94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24B0E4EA8()
{
  result = qword_27EFCAFF8;
  if (!qword_27EFCAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCAFF8);
  }

  return result;
}

unint64_t sub_24B0E4F00()
{
  result = qword_27EFCB000;
  if (!qword_27EFCB000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB000);
  }

  return result;
}

unint64_t sub_24B0E4FD8()
{
  result = qword_27EFCB010;
  if (!qword_27EFCB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB010);
  }

  return result;
}

uint64_t DirectionsAction.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DirectionsAction.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24B0E5074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AA0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v5 = sub_24B2D1704();
  v3[40] = v5;
  v3[41] = *(v5 - 8);
  v3[42] = swift_task_alloc();
  v6 = sub_24B2D15F4();
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  v3[46] = swift_task_alloc();
  v3[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB020);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v7 = sub_24B2D1C44();
  v3[50] = v7;
  v3[51] = *(v7 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0E52E4, 0, 0);
}

uint64_t sub_24B0E52E4()
{
  v68 = v0;
  v1 = v0[49];
  v2 = v0[35];
  v3 = *(v0[51] + 16);
  v3(v0[53], v0[34], v0[50]);
  sub_24B0E5CDC(v2, v1);
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[53];
  v66 = v0;
  if (v6)
  {
    v8 = v0[51];
    v9 = v0[52];
    v10 = v0[50];
    v60 = v0[48];
    v62 = v0[49];
    v11 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v11 = 136315394;
    v3(v9, v7, v10);
    v12 = sub_24B2D53C4();
    v14 = v13;
    (*(v8 + 8))(v7, v10);
    v15 = sub_24AFF321C(v12, v14, v67);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_24B0E5CDC(v62, v60);
    v16 = sub_24B2D53C4();
    v18 = v17;
    sub_24AFF8258(v62, &qword_27EFCB020);
    v19 = sub_24AFF321C(v16, v18, v67);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Directions: Will run action for %s - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v65, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  else
  {
    v20 = v0[50];
    v21 = v0[51];
    v22 = v0[49];

    sub_24AFF8258(v22, &qword_27EFCB020);
    (*(v21 + 8))(v7, v20);
  }

  v23 = v0[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DEAD0;
  *(inited + 32) = sub_24B2D5394();
  *(inited + 40) = v25;
  v26 = sub_24B2D5394();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  *(inited + 80) = sub_24B2D5394();
  *(inited + 88) = v28;
  sub_24B2D1A44();
  v29 = sub_24B2D1794();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v23, 1, v29);
  v32 = v0[46];
  if (v31 == 1)
  {
    sub_24AFF8258(v0[46], &qword_27EFCB018);
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v61 = inited;
    v34 = v0[44];
    v35 = v0[45];
    v36 = v0[43];
    sub_24B2D1724();
    (*(v30 + 8))(v32, v29);
    v37 = sub_24B2D1594();
    (*(v34 + 8))(v35, v36);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = v0[41];
      v67[0] = MEMORY[0x277D84F90];
      sub_24B0078D0(0, v38, 0);
      v33 = v67[0];
      v40 = *(v39 + 16);
      v39 += 16;
      v41 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
      v63 = *(v39 + 56);
      v64 = v40;
      v42 = (v39 - 8);
      do
      {
        v43 = v0[42];
        v44 = v0[40];
        v64(v43, v41, v44);
        v45 = sub_24B2D16F4();
        v47 = v46;
        (*v42)(v43, v44);
        v67[0] = v33;
        v49 = *(v33 + 16);
        v48 = *(v33 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_24B0078D0((v48 > 1), v49 + 1, 1);
          v33 = v67[0];
        }

        *(v33 + 16) = v49 + 1;
        v50 = v33 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v41 += v63;
        --v38;
        v0 = v66;
      }

      while (v38);

      inited = v61;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
      inited = v61;
    }
  }

  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  *(inited + 96) = v33;
  sub_24B193FC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A58);
  swift_arrayDestroy();
  v51 = sub_24B2D1BD4();
  v52 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithCLLocation_];
  v0[54] = v52;

  if (v52)
  {
    v54 = v0[38];
    v53 = v0[39];
    v55 = v0[37];
    v56 = sub_24B2D51D4();
    v0[55] = v56;

    v0[2] = v0;
    v0[7] = v0 + 56;
    v0[3] = sub_24B0E5AC4;
    swift_continuation_init();
    v0[33] = v55;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 30);
    sub_24B2D5614();
    (*(v54 + 32))(boxed_opaque_existential_0, v53, v55);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_24B0E5C80;
    v0[29] = &block_descriptor_4;
    [v52 openInMapsWithLaunchOptions:v56 completionHandler:v0 + 26];
    (*(v54 + 8))(boxed_opaque_existential_0, v55);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    sub_24B0E5D4C();
    swift_allocError();
    swift_willThrow();

    v58 = v0[1];

    return v58();
  }
}

uint64_t sub_24B0E5AC4()
{

  return MEMORY[0x2822009F8](sub_24B0E5BA4, 0, 0);
}

uint64_t sub_24B0E5BA4()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B0E5C80(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AA0);
  return sub_24B2D5634();
}

uint64_t sub_24B0E5CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B0E5D4C()
{
  result = qword_27EFCB028;
  if (!qword_27EFCB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB028);
  }

  return result;
}

unint64_t sub_24B0E5DCC()
{
  result = qword_27EFCB030;
  if (!qword_27EFCB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB030);
  }

  return result;
}

uint64_t EnvironmentValues.emojiImageCache.getter()
{
  sub_24B0E5E60();
  sub_24B2D3C74();
  return v1;
}

unint64_t sub_24B0E5E60()
{
  result = qword_27EFCB038;
  if (!qword_27EFCB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB038);
  }

  return result;
}

uint64_t sub_24B0E5EB4@<X0>(void *a1@<X8>)
{
  sub_24B0E5E60();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24B0E5F04()
{
  sub_24B0E5E60();

  return sub_24B2D3C84();
}

uint64_t (*EnvironmentValues.emojiImageCache.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24B0E5E60();
  sub_24B2D3C74();
  return sub_24B0E6000;
}

uint64_t sub_24B0E6000(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_24B2D3C84();
  }

  sub_24B2D3C84();
}

uint64_t EmojiImageCacheRequest.init(info:detailedImage:displayScale:layoutDirectionIsRTL:osVersion:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for EmojiImageCacheRequest();
  *(a6 + v14[9]) = 0;
  *(a6 + v14[10]) = 1;
  v15 = sub_24B2D1D74();
  result = (*(*(v15 - 8) + 32))(a6, a1, v15);
  v17 = 34.0;
  if (a2)
  {
    v17 = 100.0;
  }

  *(a6 + v14[5]) = v17;
  *(a6 + v14[6]) = a7;
  *(a6 + v14[7]) = a3;
  v18 = (a6 + v14[8]);
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t type metadata accessor for EmojiImageCacheRequest()
{
  result = qword_27EFCB068;
  if (!qword_27EFCB068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmojiImageCacheRequest.identifier.getter()
{
  sub_24B2D5C34();
  v1 = *(v0 + *(type metadata accessor for EmojiImageCacheRequest() + 32));

  MEMORY[0x24C23BC10](0xD000000000000012, 0x800000024B2DB430);
  sub_24B2D60E4();
  EmojiImageCacheRequest.hash(into:)();
  sub_24B2D6124();
  v2 = sub_24B2D5FA4();
  MEMORY[0x24C23BC10](v2);

  MEMORY[0x24C23BC10](1735290926, 0xE400000000000000);
  return v1;
}

uint64_t EmojiImageCacheRequest.hashValue.getter()
{
  sub_24B2D60E4();
  EmojiImageCacheRequest.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B0E6334()
{
  v1 = *(v0 + 88);
  sub_24B2D1D64();
  v2 = type metadata accessor for EmojiImageCacheRequest();
  v3 = *(v1 + *(v2 + 24));
  v4 = *(v1 + *(v2 + 20)) * v3;
  *v17 = 0x3FF0000000000000;
  *&v17[8] = 0u;
  *&v17[24] = 0x3FF0000000000000;
  v5 = 0.0;
  v6 = sub_24B2D2C34();
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v6)
  {
    v7 = *v17;
    v8 = *&v17[16];
    v5 = v4;
    v9 = 0u;
  }

  *(v0 + 24) = v7;
  *(v0 + 16) = v6;
  *(v0 + 40) = v8;
  *(v0 + 56) = v9;
  *(v0 + 72) = v5;
  *(v0 + 80) = v5;
  if (!v6)
  {
    sub_24B0E6884();
    swift_allocError();
    swift_willThrow();
    goto LABEL_7;
  }

  v10 = ImageAndTransform.generateData(displayScale:platterColor:)(0, v3);
  if (v11 >> 60 == 15)
  {
    sub_24B0E6884();
    swift_allocError();
    swift_willThrow();
    sub_24B0E68D8(v0 + 16);
LABEL_7:

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = v10;
  v15 = v11;
  sub_24B0E68D8(v0 + 16);

  v16 = *(v0 + 8);

  return v16(v14, v15);
}

uint64_t EmojiImageCacheRequest.hash(into:)()
{
  sub_24B2D1D74();
  sub_24B0E6AB8(&qword_27EFCB050, MEMORY[0x277D08E08]);
  sub_24B2D5254();
  v1 = type metadata accessor for EmojiImageCacheRequest();
  v2 = *(v0 + v1[5]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v2);
  v3 = *(v0 + v1[6]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v3);
  sub_24B2D6104();
  sub_24B2D5404();
  v4 = *(v0 + v1[9]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v4);
  return MEMORY[0x24C23C8D0](*(v0 + v1[10]));
}

uint64_t sub_24B0E6668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B0E66F4;

  return EmojiImageCacheRequest.produceData()();
}

uint64_t sub_24B0E66F4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_24B0E6804()
{
  sub_24B2D60E4();
  EmojiImageCacheRequest.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B0E6848()
{
  sub_24B2D60E4();
  EmojiImageCacheRequest.hash(into:)();
  return sub_24B2D6124();
}

unint64_t sub_24B0E6884()
{
  result = qword_27EFCB040;
  if (!qword_27EFCB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB040);
  }

  return result;
}

uint64_t sub_24B0E68D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s12FindMyUICore22EmojiImageCacheRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_24B2D1D44() & 1) != 0 && (v4 = type metadata accessor for EmojiImageCacheRequest(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && ((v5 = v4[8], v7 = *(a1 + v5), v6 = *(a1 + v5 + 8), v8 = (a2 + v5), v7 == *v8) ? (v9 = v6 == v8[1]) : (v9 = 0), (v9 || (v10 = v4, v11 = sub_24B2D6004(), v4 = v10, (v11)) && *(a1 + v4[9]) == *(a2 + v4[9])))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B0E6AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0E6B28()
{
  result = sub_24B2D1D74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B0E6BDC()
{
  result = qword_27EFCB078;
  if (!qword_27EFCB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB078);
  }

  return result;
}

uint64_t _s12FindMyUICore21EmojiImageCacheResultV4dataAC10Foundation4DataV_t0aB4Core0jfG19InitializationErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24B0E6D60(a1, a2);
  v9 = sub_24B2D22E4();
  v10 = [v8 initWithData_];

  sub_24AFF7AE8(a1, a2);
  if (v10)
  {
    result = sub_24AFF7AE8(a1, a2);
    *a4 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277D08D40];
    v13 = sub_24B2D1A34();
    (*(*(v13 - 8) + 104))(a3, v12, v13);
    sub_24B0E6DB4();
    swift_willThrowTypedImpl();
    return sub_24AFF7AE8(a1, a2);
  }

  return result;
}

uint64_t sub_24B0E6D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24B0E6DB4()
{
  result = qword_27EFCB080;
  if (!qword_27EFCB080)
  {
    sub_24B2D1A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB080);
  }

  return result;
}

uint64_t _s12FindMyUICore21EmojiImageCacheResultV3urlAC10Foundation3URLV_t0aB4Core04DatafG19InitializationErrorOYKcfC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D08D40];
  v5 = sub_24B2D1A34();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  sub_24B0E6DB4();
  swift_willThrowTypedImpl();
  v6 = sub_24B2D22D4();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t EmojiImageCacheResult.data.getter()
{
  v1 = UIImagePNGRepresentation(*v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24B2D2304();

  return v3;
}

uint64_t sub_24B0E6F34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a3;
  v7 = sub_24B2D1A34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24B0E6D60(a1, a2);
  v12 = sub_24B2D22E4();
  v13 = [v11 initWithData_];

  sub_24AFF7AE8(a1, a2);
  if (v13)
  {
    result = sub_24AFF7AE8(a1, a2);
    *a4 = v13;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D08D40], v7);
    sub_24B0E6DB4();
    swift_willThrowTypedImpl();
    sub_24AFF7AE8(a1, a2);
    return (*(v8 + 32))(v16, v10, v7);
  }

  return result;
}

uint64_t sub_24B0E70D8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D08D40];
  v5 = sub_24B2D1A34();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  sub_24B0E6DB4();
  swift_willThrowTypedImpl();
  v6 = sub_24B2D22D4();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_24B0E71A0()
{
  v1 = UIImagePNGRepresentation(*v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24B2D2304();

  return v3;
}

uint64_t static EmojiImageGenerator.generateImage(forEmoji:size:inset:displayScale:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *&v10 = 0;
  *(&v10 + 1) = 0x3FF0000000000000;
  v6 = 0.0;
  result = sub_24B2D2C34();
  if (result)
  {
    v8 = 0x3FF0000000000000uLL;
    v9 = v10;
    v6 = a2;
  }

  else
  {
    v8 = 0uLL;
    a3 = 0.0;
    v9 = 0uLL;
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = 0uLL;
  *(a1 + 56) = v6;
  *(a1 + 64) = a3;
  return result;
}

uint64_t FindMyRelativeDateFormatStyle.init(anchor:displayStyle:capitalizationContext:recencyKey:locale:calendar:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v56 = a5;
  v57 = a4;
  v58 = a3;
  v59 = sub_24B2D2274();
  v10 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v50 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24B2D2554();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24B2D2534();
  v45 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v43 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B2D2384();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v37 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v38 = v36 - v17;
  v18 = sub_24B2D23A4();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B2D24A4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v44 = v22;
  v25 = *(v22 + 16);
  v25(a7, a1, v21);
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  *(a7 + MyRelativeDateFormatStyle[5]) = a2;
  v27 = MyRelativeDateFormatStyle[6];
  v53 = v10;
  v36[0] = *(v10 + 16);
  (v36[0])(a7 + v27, v58, v59);
  v36[1] = MyRelativeDateFormatStyle;
  v28 = MyRelativeDateFormatStyle[7];
  v51 = a7;
  sub_24B0E7860(v57, a7 + v28);
  v39 = v24;
  v54 = a1;
  v46 = v21;
  v25(v24, a1, v21);
  v40 = v20;
  sub_24B2D2394();
  if (a2)
  {
    v29 = v37;
    sub_24B2D2374();
  }

  else
  {
    v29 = v37;
    sub_24B2D2364();
  }

  (*(v41 + 32))(v38, v29, v42);
  v30 = v45;
  (*(v45 + 16))(v43, v56, v55);
  v31 = v47;
  v32 = v52;
  v33 = v49;
  (*(v47 + 16))(v48, v52, v49);
  v34 = v58;
  (v36[0])(v50, v58, v59);
  sub_24B2D2444();
  (*(v31 + 8))(v32, v33);
  (*(v30 + 8))(v56, v55);
  sub_24AFF8258(v57, &qword_27EFCB088);
  (*(v53 + 8))(v34, v59);
  return (*(v44 + 8))(v54, v46);
}

uint64_t type metadata accessor for FindMyRelativeDateFormatStyle()
{
  result = qword_27EFCB180;
  if (!qword_27EFCB180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0E7860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FindMyRelativeDateFormatStyle.format(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_24B2D1344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D2344();
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  sub_24B0E7860(v0 + *(MyRelativeDateFormatStyle + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24AFF8258(v3, &qword_27EFCB088);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_24B2D62A4();
    if (sub_24B2D1304())
    {
      v9 = sub_24B2D1314();
      (*(v5 + 8))(v7, v4);
      return v9;
    }

    (*(v5 + 8))(v7, v4);
  }

  return sub_24B2D2454();
}

uint64_t sub_24B0E7B78()
{
  if (*v0)
  {
    return 0x64656C6961746564;
  }

  else
  {
    return 0x657369636E6F63;
  }
}

uint64_t sub_24B0E7BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657369636E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C6961746564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B2D6004();

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

uint64_t sub_24B0E7C90(uint64_t a1)
{
  v2 = sub_24B0E80A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B0E7CCC(uint64_t a1)
{
  v2 = sub_24B0E80A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B0E7D08(uint64_t a1)
{
  v2 = sub_24B0E8150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B0E7D44(uint64_t a1)
{
  v2 = sub_24B0E8150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B0E7D80(uint64_t a1)
{
  v2 = sub_24B0E80FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B0E7DBC(uint64_t a1)
{
  v2 = sub_24B0E80FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyRelativeDateFormatStyle.DisplayStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB090);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB098);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB0A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B0E80A8();
  sub_24B2D6144();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B0E80FC();
    v14 = v18;
    sub_24B2D5EC4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B0E8150();
    sub_24B2D5EC4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_24B0E80A8()
{
  result = qword_27EFCB0A8;
  if (!qword_27EFCB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB0A8);
  }

  return result;
}

unint64_t sub_24B0E80FC()
{
  result = qword_27EFCB0B0;
  if (!qword_27EFCB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB0B0);
  }

  return result;
}

unint64_t sub_24B0E8150()
{
  result = qword_27EFCB0B8;
  if (!qword_27EFCB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB0B8);
  }

  return result;
}

uint64_t FindMyRelativeDateFormatStyle.DisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t FindMyRelativeDateFormatStyle.DisplayStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB0C0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB0C8);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB0D0);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B0E80A8();
  v13 = v31;
  sub_24B2D6134();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_24B2D5EB4();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_24B2D5CA4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7C90);
    *v21 = &type metadata for FindMyRelativeDateFormatStyle.DisplayStyle;
    sub_24B2D5E44();
    sub_24B2D5C94();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_24B0E80FC();
    sub_24B2D5E34();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_24B0E8150();
    sub_24B2D5E34();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_24B0E866C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B0E86A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24B0E8708()
{
  v1 = *v0;
  v2 = 0x726F68636E61;
  v3 = 0xD000000000000015;
  v4 = 0x4B79636E65636572;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5379616C70736964;
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

uint64_t sub_24B0E87B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B0EA9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B0E87D8(uint64_t a1)
{
  v2 = sub_24B0EA0BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B0E8814(uint64_t a1)
{
  v2 = sub_24B0EA0BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyRelativeDateFormatStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B0EA0BC();
  sub_24B2D6144();
  v10[15] = 0;
  sub_24B2D24A4();
  sub_24B0EAB68(&qword_27EFC7C48, MEMORY[0x277CC9578]);
  sub_24B2D5F24();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for FindMyRelativeDateFormatStyle() + 20));
    v10[13] = 1;
    sub_24B0EA110();
    sub_24B2D5F24();
    v10[12] = 2;
    sub_24B2D2274();
    sub_24B0EAB68(&qword_27EFCB0F0, MEMORY[0x277CC9188]);
    sub_24B2D5F24();
    v10[11] = 3;
    sub_24B2D1344();
    sub_24B0EAB68(&qword_27EFCB0F8, MEMORY[0x277D08AF8]);
    sub_24B2D5EE4();
    v10[10] = 4;
    sub_24B2D2464();
    sub_24B0EAB68(&qword_27EFCB100, MEMORY[0x277CC9530]);
    sub_24B2D5F24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FindMyRelativeDateFormatStyle.hash(into:)()
{
  v1 = sub_24B2D1344();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_24B2D24A4();
  sub_24B0EAB68(&qword_27EFCB108, MEMORY[0x277CC9578]);
  sub_24B2D5254();
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  MEMORY[0x24C23C8D0](*(v0 + *(MyRelativeDateFormatStyle + 20)));
  sub_24B2D2274();
  sub_24B0EAB68(&qword_27EFCB110, MEMORY[0x277CC9188]);
  sub_24B2D5254();
  sub_24B0E7860(v0 + *(MyRelativeDateFormatStyle + 28), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_24B2D6104();
    sub_24B0EAB68(&qword_27EFCB118, MEMORY[0x277D08AF8]);
    sub_24B2D5254();
    (*(v2 + 8))(v4, v1);
  }

  sub_24B2D2464();
  sub_24B0EAB68(&qword_27EFCB120, MEMORY[0x277CC9530]);
  return sub_24B2D5254();
}

uint64_t FindMyRelativeDateFormatStyle.hashValue.getter()
{
  sub_24B2D60E4();
  FindMyRelativeDateFormatStyle.hash(into:)();
  return sub_24B2D6124();
}

uint64_t FindMyRelativeDateFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_24B2D2464();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v25 - v5;
  v6 = sub_24B2D2274();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B2D24A4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB128);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v25 - v10;
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  MEMORY[0x28223BE20](MyRelativeDateFormatStyle);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B0EA0BC();
  v36 = v11;
  v15 = v38;
  sub_24B2D6134();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v8;
  v38 = MyRelativeDateFormatStyle;
  v17 = v14;
  v18 = v32;
  v44 = 0;
  sub_24B0EAB68(&qword_27EFC7C28, MEMORY[0x277CC9578]);
  v20 = v33;
  v19 = v34;
  sub_24B2D5EA4();
  (*(v18 + 32))(v17, v20, v19);
  v42 = 1;
  sub_24B0EA164();
  sub_24B2D5EA4();
  *(v17 + v38[5]) = v43;
  v41 = 2;
  sub_24B0EAB68(&qword_27EFCB138, MEMORY[0x277CC9188]);
  sub_24B2D5EA4();
  (*(v31 + 32))(v17 + v38[6], v16, v6);
  sub_24B2D1344();
  v40 = 3;
  sub_24B0EAB68(&qword_27EFCB140, MEMORY[0x277D08AF8]);
  v21 = v30;
  sub_24B2D5E64();
  v33 = a1;
  sub_24B0EA1B8(v21, v17 + v38[7]);
  v39 = 4;
  sub_24B0EAB68(&qword_27EFCB148, MEMORY[0x277CC9530]);
  v23 = v28;
  v22 = v29;
  sub_24B2D5EA4();
  (*(v35 + 8))(v36, v37);
  (*(v26 + 32))(v17 + v38[8], v22, v23);
  sub_24B0EA228(v17, v27);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_24B0EA28C(v17);
}

uint64_t sub_24B0E964C()
{
  sub_24B2D60E4();
  FindMyRelativeDateFormatStyle.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B0E9690()
{
  sub_24B2D60E4();
  FindMyRelativeDateFormatStyle.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B0E96CC@<X0>(uint64_t *a1@<X8>)
{
  result = FindMyRelativeDateFormatStyle.format(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static FormatStyle<>.findMyRelative(anchor:displayStyle:capitalizationContext:recencyKey:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a1;
  v53 = a4;
  v63 = a3;
  v68 = a5;
  v6 = sub_24B2D2384();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v46 - v9;
  v10 = sub_24B2D23A4();
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24B2D2554();
  v56 = *(v58 - 8);
  v12 = MEMORY[0x28223BE20](v58);
  v55 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v46 - v14;
  v66 = sub_24B2D2534();
  v51 = *(v66 - 8);
  v15 = MEMORY[0x28223BE20](v66);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  MEMORY[0x28223BE20](v19 - 8);
  v64 = &v46 - v20;
  v21 = sub_24B2D2274();
  v70 = v21;
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v49 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  v69 = &v46 - v25;
  v27 = sub_24B2D24A4();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v62 = &v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v46 - v31;
  v33 = *a2;
  v50 = v28;
  v34 = *(v28 + 16);
  v34(&v46 - v31, v52, v27);
  v52 = v22;
  v35 = *(v22 + 16);
  v35(v26, v63, v21);
  v36 = v64;
  sub_24B0E7860(v53, v64);
  v63 = v18;
  sub_24B2D2514();
  sub_24B2D2544();
  v37 = v68;
  v34(v68, v32, v27);
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  v37[MyRelativeDateFormatStyle[5]] = v33;
  v39 = &v37[MyRelativeDateFormatStyle[6]];
  v47 = v35;
  v35(v39, v69, v70);
  sub_24B0E7860(v36, &v37[MyRelativeDateFormatStyle[7]]);
  v48 = v32;
  v53 = v27;
  v34(v62, v32, v27);
  sub_24B2D2394();
  v40 = v57;
  if (v33)
  {
    sub_24B2D2374();
  }

  else
  {
    sub_24B2D2364();
  }

  (*(v59 + 32))(v61, v40, v60);
  v41 = v51;
  (*(v51 + 16))(v54, v63, v66);
  v42 = v56;
  v43 = v65;
  v44 = v58;
  (*(v56 + 16))(v55, v65, v58);
  v47(v49, v69, v70);
  sub_24B2D2444();
  (*(v42 + 8))(v43, v44);
  (*(v41 + 8))(v63, v66);
  sub_24AFF8258(v64, &qword_27EFCB088);
  (*(v52 + 8))(v69, v70);
  return (*(v50 + 8))(v48, v53);
}

uint64_t _s12FindMyUICore0aB23RelativeDateFormatStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB1E8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    goto LABEL_10;
  }

  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  if (*(a1 + *(MyRelativeDateFormatStyle + 20)) != *(a2 + *(MyRelativeDateFormatStyle + 20)))
  {
    goto LABEL_10;
  }

  v15 = MyRelativeDateFormatStyle;
  if ((sub_24B2D2264() & 1) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(v15 + 28);
  v17 = *(v11 + 48);
  sub_24B0E7860(a1 + v16, v13);
  v24 = v17;
  sub_24B0E7860(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v24], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB088);
LABEL_13:
      v19 = MEMORY[0x24C238C10](a1 + *(v15 + 32), a2 + *(v15 + 32));
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_24B0E7860(v13, v10);
  if (v18(&v13[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_24AFF8258(v13, &qword_27EFCB1E8);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v13[v24], v4);
  sub_24B0EAB68(&qword_27EFCB1F0, MEMORY[0x277D08AF8]);
  v21 = sub_24B2D52A4();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB088);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_24B0EA0BC()
{
  result = qword_27EFCB0E0;
  if (!qword_27EFCB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB0E0);
  }

  return result;
}

unint64_t sub_24B0EA110()
{
  result = qword_27EFCB0E8;
  if (!qword_27EFCB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB0E8);
  }

  return result;
}

unint64_t sub_24B0EA164()
{
  result = qword_27EFCB130;
  if (!qword_27EFCB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB130);
  }

  return result;
}

uint64_t sub_24B0EA1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0EA228(uint64_t a1, uint64_t a2)
{
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  (*(*(MyRelativeDateFormatStyle - 8) + 16))(a2, a1, MyRelativeDateFormatStyle);
  return a2;
}

uint64_t sub_24B0EA28C(uint64_t a1)
{
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  (*(*(MyRelativeDateFormatStyle - 8) + 8))(a1, MyRelativeDateFormatStyle);
  return a1;
}

unint64_t sub_24B0EA2EC()
{
  result = qword_27EFCB150;
  if (!qword_27EFCB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB150);
  }

  return result;
}

void sub_24B0EA4D0()
{
  sub_24B2D24A4();
  if (v0 <= 0x3F)
  {
    sub_24B2D2274();
    if (v1 <= 0x3F)
    {
      sub_24B0EA58C();
      if (v2 <= 0x3F)
      {
        sub_24B2D2464();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B0EA58C()
{
  if (!qword_27EFCB190)
  {
    sub_24B2D1344();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCB190);
    }
  }
}

unint64_t sub_24B0EA638()
{
  result = qword_27EFCB198;
  if (!qword_27EFCB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB198);
  }

  return result;
}

unint64_t sub_24B0EA690()
{
  result = qword_27EFCB1A0;
  if (!qword_27EFCB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1A0);
  }

  return result;
}

unint64_t sub_24B0EA6E8()
{
  result = qword_27EFCB1A8;
  if (!qword_27EFCB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1A8);
  }

  return result;
}

unint64_t sub_24B0EA740()
{
  result = qword_27EFCB1B0;
  if (!qword_27EFCB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1B0);
  }

  return result;
}

unint64_t sub_24B0EA798()
{
  result = qword_27EFCB1B8;
  if (!qword_27EFCB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1B8);
  }

  return result;
}

unint64_t sub_24B0EA7F0()
{
  result = qword_27EFCB1C0;
  if (!qword_27EFCB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1C0);
  }

  return result;
}

unint64_t sub_24B0EA848()
{
  result = qword_27EFCB1C8;
  if (!qword_27EFCB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1C8);
  }

  return result;
}

unint64_t sub_24B0EA8A0()
{
  result = qword_27EFCB1D0;
  if (!qword_27EFCB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1D0);
  }

  return result;
}

unint64_t sub_24B0EA8F8()
{
  result = qword_27EFCB1D8;
  if (!qword_27EFCB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1D8);
  }

  return result;
}

unint64_t sub_24B0EA950()
{
  result = qword_27EFCB1E0;
  if (!qword_27EFCB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB1E0);
  }

  return result;
}

uint64_t sub_24B0EA9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (sub_24B2D6004() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B2D6004() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B2DB450 == a2 || (sub_24B2D6004() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B79636E65636572 && a2 == 0xEA00000000007965 || (sub_24B2D6004() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B2DB470 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B2D6004();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B0EAB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0EABB0()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFE4518);
  __swift_project_value_buffer(v0, qword_27EFE4518);
  return sub_24B2D3174();
}

uint64_t ImageAndTransform.generateData(displayScale:platterColor:)(void *a1, double a2)
{
  v5 = *(v2 + 3);
  v22[2] = *(v2 + 2);
  v22[3] = v5;
  v23 = v2[8];
  v6 = *v2;
  v22[1] = *(v2 + 1);
  v22[0] = v6;
  v7 = *(&v5 + 1);
  v8 = v23;
  v9 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v9 setScale_];
  v10 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v9 format:{v7, v23}];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  v12 = *v2;
  *(v11 + 56) = *(v2 + 1);
  v13 = *(v2 + 3);
  *(v11 + 72) = *(v2 + 2);
  *(v11 + 88) = v13;
  *(v11 + 104) = v2[8];
  *(v11 + 40) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24B0EBC48;
  *(v14 + 24) = v11;
  aBlock[4] = sub_24B0EB3BC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B0EB0EC;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  sub_24B0EB3FC(v22, v20);

  v17 = [v10 PNGDataWithActions_];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_24B2D2304();

    return v19;
  }

  return result;
}

uint64_t ImageAndTransform.init(image:transform:targetSize:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  v5 = a2[1];
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = a2[2];
  *(a3 + 56) = a4;
  *(a3 + 64) = a5;
  return result;
}

__n128 ImageAndTransform.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

UIImage_optional __swiftcall ImageAndTransform.generateImage(displayScale:platterColor:)(Swift::Double displayScale, CGColorRef_optional platterColor)
{
  v5 = *(v2 + 3);
  v22[2] = *(v2 + 2);
  v22[3] = v5;
  v23 = v2[8];
  v6 = *v2;
  v22[1] = *(v2 + 1);
  v22[0] = v6;
  v7 = *(&v5 + 1);
  v8 = v23;
  v9 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v9 setScale_];
  v10 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v9 format:{v7, v23}];
  v11 = swift_allocObject();
  *(v11 + 16) = platterColor;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  v12 = *v2;
  *(v11 + 56) = *(v2 + 1);
  v13 = *(v2 + 3);
  *(v11 + 72) = *(v2 + 2);
  *(v11 + 88) = v13;
  *(v11 + 104) = v2[8];
  *(v11 + 40) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24B0EB434;
  *(v14 + 24) = v11;
  aBlock[4] = sub_24B0EBC50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B0EB0EC;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);
  v16 = platterColor.value;
  sub_24B0EB3FC(v22, v20);

  v17 = [v10 imageWithActions_];

  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v18 = v17;
  }

  result.value.super.isa = v18;
  result.is_nil = v19;
  return result;
}

void sub_24B0EB0EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_24B0EB138(void *a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_24B2D25D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &transform - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    v15 = [a1 CGContext];
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = a4;
    v26.size.height = a5;
    CGContextAddEllipseInRect(v15, v26);

    v16 = [a1 CGContext];
    CGContextSetFillColorWithColor(v16, v14);

    v17 = [a1 CGContext];
    (*(v11 + 104))(v13, *MEMORY[0x277CBF258], v10);
    sub_24B2D58D4();

    (*(v11 + 8))(v13, v10);
  }

  v18 = [a1 CGContext];
  v19 = *(a3 + 24);
  *&transform.a = *(a3 + 8);
  *&transform.c = v19;
  *&transform.tx = *(a3 + 40);
  CGContextConcatCTM(v18, &transform);

  v20 = [a1 CGContext];
  CGContextScaleCTM(v20, 1.0, -1.0);

  v21 = [a1 CGContext];
  v22 = *a3;
  Height = CGImageGetHeight(v22);
  CGContextTranslateCTM(v21, 0.0, -Height);

  v24 = [a1 CGContext];
  CGImageGetWidth(v22);
  CGImageGetHeight(v22);
  sub_24B2D58C4();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ImageAndTransformView.imageAndTransform.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24B0EB4A4(v8, v7);
}

uint64_t sub_24B0EB4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ImageAndTransformView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double ImageAndTransformView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D3CF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB1F8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(v1 + 48);
  v22[2] = *(v1 + 32);
  v22[3] = v11;
  v23 = *(v1 + 64);
  v12 = *(v1 + 16);
  v22[0] = *v1;
  v22[1] = v12;
  v13 = swift_allocObject();
  v14 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 64);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277CE00F0], v3);
  sub_24B0EB930(v22, v20);
  sub_24B2D4D84();
  sub_24B2D5064();
  sub_24B2D3494();
  (*(v8 + 32))(a1, v10, v7);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB200) + 36));
  v17 = v20[1];
  *v16 = v20[0];
  v16[1] = v17;
  result = v21[0];
  v16[2] = *v21;
  return result;
}

uint64_t sub_24B0EB79C(uint64_t a1, uint64_t a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 24);
    v7 = *(a2 + 8);
    v8 = v4;
    v9 = *(a2 + 40);
    sub_24B0EB930(a2, v6);
    sub_24B2D3784();
    [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
    sub_24B2D4BB4();
    CGImageGetWidth(v3);
    CGImageGetHeight(v3);
    sub_24B2D5184();
    sub_24B2D3774();

    sub_24B0EBC14(a2);
  }

  else
  {
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B0EB9AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B0EB9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}