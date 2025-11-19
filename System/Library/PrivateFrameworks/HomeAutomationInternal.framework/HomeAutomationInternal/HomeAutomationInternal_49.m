unint64_t sub_252CC6E5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = sub_252A456F0(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
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

unint64_t sub_252CC6F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_252CC703C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451B8, &qword_252E5A538);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_252A44A10(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_252CC7140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545300, &qword_252E5A688);
    v3 = sub_252E37B54();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_252A488EC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_252CC7250(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451F8, &qword_252E5A578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545200, &qword_252E5A580);
    v10 = sub_252E37B54();
    v11 = *(v4 + 48);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);

    while (1)
    {
      sub_252938414(v12, v8, &qword_27F5451F8, &qword_252E5A578);
      result = a2(v8);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v10[6];
      v18 = sub_252E35CB4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v8, v18);
      *(v10[7] + 8 * v16) = *&v8[v11];
      v19 = v10[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v10[2] = v21;
      v12 += v13;
      if (!--v9)
      {

        return v10;
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

void *sub_252CC7464(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = a1 + 7;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + 8 * v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 1);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC7598(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
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

unint64_t sub_252CC7688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void sub_252CC77C4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t (*a7)(void *), uint64_t (*a8)(void))
{
  v43 = a8;
  v12 = 0x65725F7261646172;
  v46 = 46;
  v47 = 0xE100000000000000;
  if (a3)
  {
    v13 = 0xEF202D2074726F70;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v45 = &v46;
  if ((a3 & 1) == 0)
  {
    v12 = 0;
  }

  v40 = a1;
  v41 = v12;
  v14 = sub_252BE9D0C(a6, v44, a4, a5);
  if (v15)
  {
    v14 = sub_252E37084();
  }

  v42 = v14;
  v46 = 47;
  v47 = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  v39[2] = &v46;
  sub_252BE9D0C(a7, v39, a4, a5);
  v17 = v16;

  v18 = a2;

  v19 = sub_252E36AC4();
  v20 = v43();

  v21 = os_log_type_enabled(v19, v20);
  if (v17)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v22 = 136315650;
      v24 = sub_252BE2CE0(v41, v13, &v46);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      v25 = sub_252E37194();
      v26 = MEMORY[0x2530AD4C0](v25);
      v28 = v27;

      v29 = sub_252BE2CE0(v26, v28, &v46);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_252BE2CE0(v40, v18, &v46);
      _os_log_impl(&dword_252917000, v19, v20, "%s%{public}s: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v23, -1, -1);
      v30 = v22;
LABEL_14:
      MEMORY[0x2530AED00](v30, -1, -1);
LABEL_16:

      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v46 = v32;
  *v31 = 136315650;
  v33 = sub_252BE2CE0(v41, v13, &v46);

  *(v31 + 4) = v33;
  *(v31 + 12) = 2082;
  if (v42 >> 14 >= sub_252E37084() >> 14)
  {
    v34 = sub_252E37194();
    v35 = MEMORY[0x2530AD4C0](v34);
    v37 = v36;

    v38 = sub_252BE2CE0(v35, v37, &v46);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_252BE2CE0(v40, v18, &v46);
    _os_log_impl(&dword_252917000, v19, v20, "%s%{public}s: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v32, -1, -1);
    v30 = v31;
    goto LABEL_14;
  }

  __break(1u);
}

void _s22HomeAutomationInternal3LogO16gradingAnalytics7commandyyp_tFZ_0(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v68 = sub_252CC630C(MEMORY[0x277D84F90]);
  sub_252974E7C(a1, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545330, &qword_252E5A6C0);
  if (swift_dynamicCast())
  {
    v10 = *&v69[0];
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v2, qword_27F544D60);
      (*(v3 + 16))(v9, v11, v2);
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E91E70);
      v12 = [v10 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = sub_252E36F34();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      *&v69[0] = v14;
      *(&v69[0] + 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v17 = sub_252E36F94();
      MEMORY[0x2530AD570](v17);

      sub_252CC3D90(v70, *(&v70 + 1), 0xD000000000000065, 0x8000000252E91DD0);

      (*(v3 + 8))(v9, v2);
      v18 = [v10 dictionary];
      if (v18)
      {
        v19 = v18;
        v71 = sub_25293F638(0, &qword_27F545360, 0x277CBEB38);
        *&v70 = v19;
        sub_252A00AF4(&v70, v69);
        v20 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v20;
        sub_2529FAE1C(v69, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
        v68 = v67;
      }

      else
      {
        sub_252E16B84(0x6C46746E65696C43, 0xEE0077656956776FLL, &v70);
        sub_25293847C(&v70, &qword_27F541E80, &qword_252E3DFA0);
      }

      v22 = [objc_opt_self() sharedAnalytics];
      if (v22)
      {
        v23 = v22;

        sub_252CC1408(v24);

        v25 = sub_252E36E24();

        [v23 logEventWithType:3700 context:v25];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v2, qword_27F544D60);
      (*(v3 + 16))(v7, v26, v2);
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v70 = 0xD00000000000002ELL;
      *(&v70 + 1) = 0x8000000252E91E40;
      v27 = [v10 encodedClassName];
      if (v27)
      {
        v28 = v27;
        v29 = sub_252E36F34();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      *&v69[0] = v29;
      *(&v69[0] + 1) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v32 = sub_252E36F94();
      MEMORY[0x2530AD570](v32);

      sub_252CC3D90(v70, *(&v70 + 1), 0xD000000000000065, 0x8000000252E91DD0);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v7, v2);
    }
  }

  sub_252974E7C(a1, &v70);
  sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
  if (swift_dynamicCast())
  {
    v33 = *&v69[0];
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F544D60);
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v70 = 0xD000000000000010;
    *(&v70 + 1) = 0x8000000252E91D90;
    swift_getObjectType();
    v34 = sub_252E37FB4();
    MEMORY[0x2530AD570](v34);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E91DB0);
    sub_252CC3D90(v70, *(&v70 + 1), 0xD000000000000065, 0x8000000252E91DD0);

    v35 = sub_252E329C4();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_252E329B4();
    *&v70 = v33;
    sub_252A67638(&qword_27F545350, &unk_27F541E90, 0x277CD1860);
    v44 = sub_252E329A4();
    v46 = v45;

    v47 = objc_opt_self();
    v48 = sub_252E32D14();
    sub_25296464C(v44, v46);
    *&v70 = 0;
    v49 = [v47 JSONObjectWithData:v48 options:0 error:&v70];

    if (v49)
    {
      v50 = v70;
      sub_252E377F4();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
      if (swift_dynamicCast())
      {
        v51 = *&v69[0];
      }

      else
      {
        v51 = sub_252CC630C(MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v64 = v70;
      v65 = sub_252E32C54();

      swift_willThrow();
      v51 = sub_252CC630C(MEMORY[0x277D84F90]);
    }

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
    *&v70 = v51;
    sub_252A00AF4(&v70, v69);
    v38 = v68;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v38;
    sub_2529FAE1C(v69, 0x6C46746E65696C43, 0xEE0077656956776FLL, v39);
    v68 = v67;
    v40 = [objc_opt_self() sharedAnalytics];
    if (v40)
    {
      v41 = v40;

      sub_252CC1408(v42);

      v43 = sub_252E36E24();

      [v41 logEventWithType:3700 context:v43];
    }

    else
    {
    }
  }

  sub_252974E7C(a1, &v70);
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  if (swift_dynamicCast())
  {
    v52 = *&v69[0];
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F544D60);
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v70 = 0xD000000000000010;
    *(&v70 + 1) = 0x8000000252E91D90;
    swift_getObjectType();
    v53 = sub_252E37FB4();
    MEMORY[0x2530AD570](v53);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E91DB0);
    sub_252CC3D90(v70, *(&v70 + 1), 0xD000000000000065, 0x8000000252E91DD0);

    v54 = swift_allocObject();
    *(v54 + 16) = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_252CC8B34;
    *(v55 + 24) = v54;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545348, &qword_252E5A6C8);
    *&v70 = sub_252CC8B3C;
    *(&v70 + 1) = v55;
    sub_252A00AF4(&v70, v69);
    v56 = v52;
    v57 = v68;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v57;
    sub_2529FAE1C(v69, 0x6C46746E65696C43, 0xEE0077656956776FLL, v58);
    v59 = [objc_opt_self() sharedAnalytics];
    if (v59)
    {
      v60 = v59;

      sub_252CC1408(v61);

      v62 = sub_252E36E24();

      [v60 logEventWithType:3700 context:v62];
    }

    else
    {
    }
  }

  else
  {
  }

  v63 = *MEMORY[0x277D85DE8];
}

unint64_t sub_252CC882C()
{
  result = qword_27F545000;
  if (!qword_27F545000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545000);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Log.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Log.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252CC8A24()
{
  result = qword_27F545008;
  if (!qword_27F545008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545008);
  }

  return result;
}

unint64_t sub_252CC8A7C()
{
  result = qword_27F545010;
  if (!qword_27F545010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545010);
  }

  return result;
}

uint64_t sub_252CC8AD0()
{
  v0 = sub_252E37B74();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

_OWORD *sub_252CC8B1C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_252CC8B3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_252CC8BA0()
{
  type metadata accessor for CriticalSensorHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252CC8BD0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_20:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v4 isExcludeFilter];
    sub_252956D08();
    v8 = sub_252E37674();
    v9 = v8;
    if (!v7)
    {
      break;
    }

    v10 = sub_252E37694();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

LABEL_14:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v11 = HomeFilter.Builder.init()();
  v13 = (*(*v12 + 592))([v5 entityType]);

  v14 = (*(*v13 + 624))([v5 deviceType]);

  v15 = (*(*v14 + 600))([v5 outerDeviceType]);

  v16 = [v5 homeName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (*(*v15 + 632))(v18, v20);

  v23 = (*(*v21 + 760))(v22);

  return v23;
}

void sub_252CC8EF4(void *a1, void (*a2)(void))
{
  v4 = [a1 filters];
  if (!v4)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000082, 0x8000000252E91EF0, 0xD000000000000021, 0x8000000252E68B10, 26);
    goto LABEL_11;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = sub_252CC8BD0(v6);

  if (!v7)
  {
LABEL_11:
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v25 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v17[v25] = 5;
    [v17 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v26 = sub_252E37254();
    [v17 setEntityResponses_];

    (a2)(v17);
    goto LABEL_18;
  }

  v8 = [a1 userTask];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 attribute];

    v11 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v12 = sub_252E36F04();
    v13 = [v11 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setTaskType_];
    [v14 setAttribute_];
    [v14 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C130;
    *(v15 + 32) = v7;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v14;
    v17 = v14;
    v7 = v7;
    v18 = sub_252B4CA9C(v15, inited, 0, 1);
    LOBYTE(v14) = v19;

    swift_setDeallocating();
    v20 = *(inited + 16);
    swift_arrayDestroy();
    if (v14)
    {
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544C70);
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000082, 0x8000000252E91EF0, 0xD000000000000021, 0x8000000252E68B10, 46);

      v22 = parse(error:with:)(v18, a1);
      a2();

      v23 = v18;
    }

    else
    {
      (a2)(v18);
      v23 = v18;
    }

    sub_252927D3C(v23);
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000082, 0x8000000252E91EF0, 0xD000000000000021, 0x8000000252E68B10, 36);
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v28 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v17[v28] = 5;
    [v17 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v29 = sub_252E37254();
    [v17 setEntityResponses_];

    (a2)(v17);
  }

LABEL_18:
}

BOOL sub_252CC94B8(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 31)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 32)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v8 = [a1 userTask];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 attribute];

    if (v10 != 35)
    {
      goto LABEL_13;
    }

    return 1;
  }

  sub_252C515AC();
LABEL_13:
  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 attribute];

    if (v13 == 33)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v15 = [a1 userTask];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 attribute];

  if (v17 != 36)
  {
    return 0;
  }

  v18 = [a1 userTask];
  if (!v18)
  {
LABEL_22:
    sub_252C515AC();
    return 0;
  }

  v19 = v18;
  if ([v18 taskType] == 4)
  {

    return 1;
  }

  else
  {
    v20 = [v19 taskType];

    return v20 == 5;
  }
}

uint64_t sub_252CC9678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[136] = v3;
  v4[135] = a3;
  v4[134] = a2;
  v4[133] = a1;
  v5 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  v4[137] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[138] = swift_task_alloc();
  v7 = sub_252E34014();
  v4[139] = v7;
  v8 = *(v7 - 8);
  v4[140] = v8;
  v9 = *(v8 + 64) + 15;
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CC9780, 0, 0);
}

uint64_t sub_252CC9780()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  *(v0 + 1288) = sub_252C4D664(5) & 1;
  if (v1)
  {
    v3 = *(v0 + 1080);
    v54 = sub_252C308A4();

    v4 = [v3 entityResponses];
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = v4;
      type metadata accessor for HomeEntityResponse();
      v7 = sub_252E37264();

      v55 = v5;
      if (v7 >> 62)
      {
        goto LABEL_70;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
      {
        v9 = MEMORY[0x277D84F90];
        if (!i)
        {
          break;
        }

        v10 = 0;
        v11 = v7 & 0xC000000000000001;
        v12 = v7 & 0xFFFFFFFFFFFFFF8;
        v48 = v7;
        v49 = v7 & 0xFFFFFFFFFFFFFF8;
        v13 = (v7 + 32);
        v14 = &off_279711000;
        v52 = i;
        v53 = v0;
        v50 = v7 & 0xC000000000000001;
        v51 = (v7 + 32);
        while (1)
        {
          if (v11)
          {
            v15 = MEMORY[0x2530ADF00](v10, v48);
          }

          else
          {
            if (v10 >= *(v12 + 16))
            {
              goto LABEL_67;
            }

            v15 = *&v13[8 * v10];
          }

          v16 = v15;
          v17 = __OFADD__(v10++, 1);
          if (v17)
          {
            break;
          }

          v18 = [v15 v14[221]];
          if (v18 && (v19 = v18, v7 = [v18 type], v19, v7 == 7) && (v20 = objc_msgSend(v16, sel_taskResponses)) != 0)
          {
            v21 = v20;
            type metadata accessor for HomeUserTaskResponse();
            v7 = v14;
            v22 = sub_252E37264();

            v23 = [v16 (v7 + 1198)];
            if (v23)
            {

              if (v22 >> 62)
              {
                v24 = sub_252E378C4();
                if (v24)
                {
LABEL_19:
                  v25 = 0;
                  v0 = v22 + 32;
                  while (1)
                  {
                    if ((v22 & 0xC000000000000001) != 0)
                    {
                      v26 = MEMORY[0x2530ADF00](v25, v22);
                    }

                    else
                    {
                      if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_69;
                      }

                      v26 = *(v0 + 8 * v25);
                    }

                    v7 = v26;
                    v17 = __OFADD__(v25++, 1);
                    if (v17)
                    {
                      goto LABEL_68;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v27 = qword_27F575C40;
                    v28 = [v7 taskOutcome];
                    if (*(v27 + 16))
                    {
                      v29 = v28;
                      v30 = *(v27 + 40);
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v29);
                      v31 = sub_252E37F14();
                      v32 = -1 << *(v27 + 32);
                      v33 = v31 & ~v32;
                      if ((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
                      {
                        break;
                      }
                    }

LABEL_20:

                    if (v25 == v24)
                    {

LABEL_36:
                      i = v52;
                      v0 = v53;
                      v12 = v49;
                      v11 = v50;
                      goto LABEL_41;
                    }
                  }

                  v34 = ~v32;
                  while (*(*(v27 + 48) + 8 * v33) != v29)
                  {
                    v33 = (v33 + 1) & v34;
                    if (((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                    {
                      goto LABEL_20;
                    }
                  }

                  sub_252E37A94();
                  v7 = *(v55 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_36;
                }
              }

              else
              {
                v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v24)
                {
                  goto LABEL_19;
                }
              }

              i = v52;
              v0 = v53;
LABEL_41:
              v13 = v51;
              v14 = &off_279711000;
            }

            else
            {

              v14 = &off_279711000;
            }
          }

          else
          {
          }

          if (v10 == i)
          {
            v36 = v55;
            v9 = MEMORY[0x277D84F90];
            goto LABEL_45;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }

      v36 = MEMORY[0x277D84F90];
LABEL_45:

      v56 = v9;
      if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
      {
        v37 = sub_252E378C4();
      }

      else
      {
        v37 = *(v36 + 16);
      }

      v7 = 0;
      v5 = MEMORY[0x277D84F90];
      while (v37 != v7)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x2530ADF00](v7, v36);
        }

        else
        {
          if (v7 >= *(v36 + 16))
          {
            goto LABEL_65;
          }

          v38 = *(v36 + 8 * v7 + 32);
        }

        v39 = v38;
        v40 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v41 = sub_252DA124C(0);

        ++v7;
        if (v41)
        {
          MEMORY[0x2530AD700]();
          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v42 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v5 = v56;
          v7 = v40;
        }
      }
    }

    v35 = v54;
  }

  else
  {
    v35 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 1289) = v35;
  *(v0 + 1144) = v5;
  v43 = swift_task_alloc();
  *(v0 + 1152) = v43;
  *v43 = v0;
  v43[1] = sub_252CC9D10;
  v44 = *(v0 + 1088);
  v45 = *(v0 + 1080);
  v46 = *(v0 + 1072);

  return sub_252CCB530(v46, v45);
}

uint64_t sub_252CC9D10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1152);
  v7 = *v2;
  *(v3 + 1160) = a1;
  *(v3 + 1168) = v1;

  if (v1)
  {
    v5 = sub_252CCAF04;
  }

  else
  {
    v5 = sub_252CC9E28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CC9E28()
{
  v95 = v0;
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 288), v0 + 1024);

  v2 = *(v0 + 1048);
  v3 = *(v0 + 1056);
  __swift_project_boxed_opaque_existential_1((v0 + 1024), v2);
  LOBYTE(v2) = (*(v3 + 120))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1024));
  v4 = *(v0 + 1144);
  if ((v2 & 1) == 0)
  {
    v47 = *(v0 + 1289);
    v48 = *(v0 + 1288);
    v49 = *(v0 + 1104);
    v50 = *(v0 + 1096);
    v51 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1088) + 24), *(*(v0 + 1088) + 48));
    v52 = sub_252E36324();
    v53 = *(*(v52 - 8) + 56);
    v53(v49, 1, 1, v52);
    v53(v49 + v50[10], 1, 1, v52);
    *(v49 + v50[5]) = 0;
    *(v49 + v50[6]) = 0;
    *(v49 + v50[7]) = 0;
    *(v49 + v50[8]) = v47;
    *(v49 + v50[9]) = v48;
    sub_252CCB1E4(v49, v4);

    v54 = sub_252C0AEE4();
    *(v0 + 1232) = v54;
    v55 = *(MEMORY[0x277D55BE8] + 4);
    v92 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v56 = swift_task_alloc();
    *(v0 + 1240) = v56;
    *v56 = v0;
    v56[1] = sub_252CCAA04;

    return v92(0xD000000000000022, 0x8000000252E916A0, v54);
  }

  v5 = *(v0 + 1088);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);
  memcpy((v0 + 16), (v5 + 112), 0x1F8uLL);
  memcpy(__dst, (v5 + 112), sizeof(__dst));
  v8 = v7;
  sub_2529D291C(v0 + 16, v0 + 520);
  v9 = sub_252953488(v7, __dst, 0);
  *(v0 + 1176) = v9;

  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v12 = swift_allocObject();
  *(v0 + 1184) = v12;
  *(v12 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v90 = v12;
  v91 = v9;
  *(v12 + 24) = v4;
  if (!v6)
  {
    goto LABEL_73;
  }

  v13 = [*(v0 + 1080) entityResponses];
  if (!v13)
  {
    goto LABEL_73;
  }

  v14 = v13;
  type metadata accessor for HomeEntityResponse();
  v15 = sub_252E37264();

  v94 = v11;
  v85 = v15;
  if (v15 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v17 = MEMORY[0x277D84F90];
    v18 = &off_279711000;
    if (i)
    {
      v19 = 0;
      v20 = v85 & 0xC000000000000001;
      v21 = v85 & 0xFFFFFFFFFFFFFF8;
      v22 = v85 + 32;
      v88 = v85 & 0xC000000000000001;
      v89 = i;
      v86 = v85 + 32;
      v87 = v85 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v20)
        {
          v23 = MEMORY[0x2530ADF00](v19, v85);
        }

        else
        {
          if (v19 >= *(v21 + 16))
          {
            goto LABEL_64;
          }

          v23 = *(v22 + 8 * v19);
        }

        v24 = v23;
        v25 = __OFADD__(v19++, 1);
        if (v25)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v26 = [v23 v18[221]];
        if (v26 && (v27 = v26, v28 = [v26 type], v27, v28 == 7) && (v29 = objc_msgSend(v24, sel_taskResponses)) != 0)
        {
          v30 = v29;
          type metadata accessor for HomeUserTaskResponse();
          v31 = v18;
          v32 = sub_252E37264();

          v33 = [v24 v31 + 1198];
          if (v33)
          {

            if (v32 >> 62)
            {
              v34 = sub_252E378C4();
              if (v34)
              {
LABEL_20:
                v35 = 0;
                do
                {
                  if ((v32 & 0xC000000000000001) != 0)
                  {
                    v36 = MEMORY[0x2530ADF00](v35, v32);
                  }

                  else
                  {
                    if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_68;
                    }

                    v36 = *(v32 + 32 + 8 * v35);
                  }

                  v37 = v36;
                  v25 = __OFADD__(v35++, 1);
                  if (v25)
                  {
                    goto LABEL_67;
                  }

                  if (qword_27F53F730 != -1)
                  {
                    swift_once();
                  }

                  v38 = qword_27F575C40;
                  v39 = [v37 taskOutcome];
                  if (*(v38 + 16))
                  {
                    v40 = v39;
                    v41 = *(v38 + 40);
                    sub_252E37EC4();
                    MEMORY[0x2530AE390](v40);
                    v42 = sub_252E37F14();
                    v43 = -1 << *(v38 + 32);
                    v44 = v42 & ~v43;
                    if ((*(v38 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
                    {
                      v45 = ~v43;
                      while (*(*(v38 + 48) + 8 * v44) != v40)
                      {
                        v44 = (v44 + 1) & v45;
                        if (((*(v38 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                        {
                          goto LABEL_21;
                        }
                      }

                      sub_252E37A94();
                      v46 = *(v94 + 16);
                      sub_252E37AC4();
                      sub_252E37AD4();
                      sub_252E37AA4();
                      goto LABEL_40;
                    }
                  }

LABEL_21:
                }

                while (v35 != v34);
              }
            }

            else
            {
              v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v34)
              {
                goto LABEL_20;
              }
            }

LABEL_40:
            v18 = &off_279711000;
            v20 = v88;
            i = v89;
            v22 = v86;
            v21 = v87;
          }

          else
          {

            v18 = &off_279711000;
          }
        }

        else
        {
        }

        if (v19 == i)
        {
          v58 = v94;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_46;
        }
      }
    }

    v58 = MEMORY[0x277D84F90];
LABEL_46:

    __dst[0] = v17;

    v59 = *(v58 + 16);
    if (!v59)
    {
      goto LABEL_71;
    }

LABEL_49:
    v60 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_50:
    v61 = v60;
    while (1)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x2530ADF00](v61, v58);
      }

      else
      {
        if (v61 >= *(v58 + 16))
        {
          goto LABEL_66;
        }

        v62 = *(v58 + 8 * v61 + 32);
      }

      v63 = v62;
      v60 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v64 = [v62 v18[221]];
      if (v64)
      {
        v65 = v64;
        sub_252AF04C0();

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v66 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v11 = __dst[0];
        if (v60 != v59)
        {
          goto LABEL_50;
        }

        goto LABEL_72;
      }

      ++v61;
      if (v60 == v59)
      {
        goto LABEL_72;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v59 = sub_252E378C4();
  if (v59)
  {
    goto LABEL_49;
  }

LABEL_71:
  v11 = MEMORY[0x277D84F90];
LABEL_72:

LABEL_73:
  v67 = *(v0 + 1160);
  v68 = *(v0 + 1136);
  v69 = *(v0 + 1088);
  v70 = *(v0 + 1072);
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v71 = ControlHomeIntent.Builder.init()();
  v72 = sub_252B4EEFC(v11);

  v73 = (*(*v71 + 208))(v72);

  v74 = [v70 userTask];
  v75 = (*(*v73 + 184))();

  v77 = (*(*v75 + 224))(v76);
  *(v0 + 1192) = v77;

  v78 = v69[12];
  v79 = v69[13];
  __swift_project_boxed_opaque_existential_1(v69 + 9, v78);
  v80 = swift_task_alloc();
  *(v0 + 1200) = v80;
  *(v80 + 16) = v67;
  v81 = swift_task_alloc();
  *(v0 + 1208) = v81;
  v81[2] = v77;
  v81[3] = v90;
  v81[4] = v91;
  sub_252B03B94();
  v82 = swift_task_alloc();
  *(v0 + 1216) = v82;
  *v82 = v0;
  v82[1] = sub_252CCA7CC;
  v83 = *(v0 + 1136);
  v84 = *(v0 + 1064);
  v99 = v78;
  v100 = v79;
  v98 = 512;
  v97 = 0;

  return sub_252A199A8(v84, &unk_252E5A808, v80, &unk_252E5A818, v81, v83, 0, 0);
}

uint64_t sub_252CCA7CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v4 = *(*v1 + 1136);
  v5 = *(*v1 + 1120);
  v6 = *(*v1 + 1112);
  v11 = *v1;
  *(*v1 + 1224) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252CCAF90;
  }

  else
  {
    v8 = *(v2 + 1208);
    v9 = *(v2 + 1200);

    v7 = sub_252CCA958;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252CCA958()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);

  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252CCAA04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1240);
  v5 = *(*v2 + 1232);
  v8 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = v1;

  if (v1)
  {
    v6 = sub_252CCADE4;
  }

  else
  {
    v6 = sub_252CCAB3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252CCAB3C()
{
  v1 = v0[156];
  v2 = v0[141];
  v3 = v0[136];
  sub_252CCBF58(v0[138]);
  v4 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1((v3 + 72), v4);
  v5 = swift_task_alloc();
  v0[158] = v5;
  *(v5 + 16) = v1;
  sub_252AD7CC4();
  v6 = swift_task_alloc();
  v0[159] = v6;
  *v6 = v0;
  v6[1] = sub_252CCAC64;
  v7 = v0[141];
  v8 = v0[133];

  return sub_252BDB88C(v8, &unk_252E5A7F0, v5, v7, 0, 0, 0, v4);
}

uint64_t sub_252CCAC64()
{
  v2 = *v1;
  v3 = *(*v1 + 1272);
  v4 = *(*v1 + 1128);
  v5 = *(*v1 + 1120);
  v6 = *(*v1 + 1112);
  v10 = *v1;
  *(*v1 + 1280) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252CCB05C;
  }

  else
  {
    v8 = *(v2 + 1264);

    v7 = sub_252CCAE78;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252CCADE4()
{
  v1 = v0[145];
  sub_252CCBF58(v0[138]);

  v2 = v0[157];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[138];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252CCAE78()
{
  v1 = *(v0 + 1248);

  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1104);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252CCAF04()
{
  v1 = v0[143];

  v2 = v0[146];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[138];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252CCAF90()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);

  v6 = *(v0 + 1224);
  v7 = *(v0 + 1136);
  v8 = *(v0 + 1128);
  v9 = *(v0 + 1104);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252CCB05C()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1248);

  v3 = *(v0 + 1280);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252CCB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_252C236AC;

  return sub_252A24460(v9, a2, a3, a4);
}

uint64_t sub_252CCB1E4(uint64_t a1, uint64_t a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-v9];
  type metadata accessor for HomeAutomationEntityResponses();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = a2;
  v12 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  v13 = v12[6];
  v14 = *(a1 + v13);

  *(a1 + v13) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = a2;
  v16 = v12[7];
  v17 = *(a1 + v16);

  *(a1 + v16) = v15;
  v18 = sub_25294833C(1u, 0, 0);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [v18 dictionary];
  if (!v20)
  {

LABEL_7:
    v28 = sub_252E36324();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    goto LABEL_8;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v34[0] = 0;
  v23 = [v22 dataWithPropertyList:v21 format:200 options:0 error:v34];
  v24 = v34[0];
  if (!v23)
  {
    v29 = v24;
    v30 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v25 = sub_252E32D34();
  v27 = v26;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v25, v27);
  v28 = sub_252E36324();
  (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
LABEL_8:
  sub_252956C98(v10, a1 + v12[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
  result = sub_252956C98(v8, a1);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252CCB530(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252CCB554, 0, 0);
}

uint64_t sub_252CCB554()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v55 = sub_252C4D664(5);
  v54 = v0;
  if (v1)
  {
    v3 = *(v0 + 24);
    LODWORD(v4) = sub_252C308A4();

    v5 = [v3 entityResponses];
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v7 = v5;
      type metadata accessor for HomeEntityResponse();
      v8 = sub_252E37264();

      v56 = v6;
      if (v8 >> 62)
      {
        goto LABEL_69;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
      {
        v10 = MEMORY[0x277D84F90];
        if (!i)
        {
          break;
        }

        v11 = 0;
        v12 = v8 & 0xC000000000000001;
        v13 = v8 & 0xFFFFFFFFFFFFFF8;
        v14 = v8 + 32;
        v53 = v4;
        v48 = v8;
        v49 = v8 + 32;
        v51 = v8 & 0xC000000000000001;
        v52 = i;
        v50 = v8 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v12)
          {
            v15 = MEMORY[0x2530ADF00](v11, v8);
          }

          else
          {
            if (v11 >= *(v13 + 16))
            {
              goto LABEL_66;
            }

            v15 = *(v14 + 8 * v11);
          }

          v16 = v15;
          v17 = __OFADD__(v11++, 1);
          if (v17)
          {
            break;
          }

          v18 = [v15 entity];
          if (v18 && (v19 = v18, v20 = [v18 type], v19, v20 == 7) && (v21 = objc_msgSend(v16, sel_taskResponses)) != 0)
          {
            v22 = v21;
            type metadata accessor for HomeUserTaskResponse();
            v4 = sub_252E37264();

            v23 = [v16 entity];
            if (v23)
            {

              if (v4 >> 62)
              {
                v24 = sub_252E378C4();
                if (v24)
                {
LABEL_19:
                  v25 = 0;
                  v8 = v4 + 32;
                  while (1)
                  {
                    if ((v4 & 0xC000000000000001) != 0)
                    {
                      v26 = MEMORY[0x2530ADF00](v25, v4);
                    }

                    else
                    {
                      if (v25 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_68;
                      }

                      v26 = *(v8 + 8 * v25);
                    }

                    v27 = v26;
                    v17 = __OFADD__(v25++, 1);
                    if (v17)
                    {
                      goto LABEL_67;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v28 = qword_27F575C40;
                    v29 = [v27 taskOutcome];
                    if (*(v28 + 16))
                    {
                      v30 = v29;
                      v31 = *(v28 + 40);
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v30);
                      v32 = sub_252E37F14();
                      v33 = -1 << *(v28 + 32);
                      v34 = v32 & ~v33;
                      if ((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
                      {
                        break;
                      }
                    }

LABEL_20:

                    if (v25 == v24)
                    {

LABEL_36:
                      LODWORD(v4) = v53;
                      v8 = v48;
                      goto LABEL_41;
                    }
                  }

                  v35 = ~v33;
                  while (*(*(v28 + 48) + 8 * v34) != v30)
                  {
                    v34 = (v34 + 1) & v35;
                    if (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                    {
                      goto LABEL_20;
                    }
                  }

                  sub_252E37A94();
                  v36 = *(v56 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_36;
                }
              }

              else
              {
                v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v24)
                {
                  goto LABEL_19;
                }
              }

              LODWORD(v4) = v53;
LABEL_41:
              v12 = v51;
              i = v52;
              v14 = v49;
              v13 = v50;
            }

            else
            {

              LODWORD(v4) = v53;
            }
          }

          else
          {
          }

          if (v11 == i)
          {
            v37 = v56;
            v10 = MEMORY[0x277D84F90];
            goto LABEL_45;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        ;
      }

      v37 = MEMORY[0x277D84F90];
LABEL_45:

      v57 = v10;
      if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
      {
        v38 = sub_252E378C4();
      }

      else
      {
        v38 = *(v37 + 16);
      }

      v39 = 0;
      v8 = v37 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F90];
      while (v38 != v39)
      {
        if (v8)
        {
          v40 = MEMORY[0x2530ADF00](v39, v37);
        }

        else
        {
          if (v39 >= *(v37 + 16))
          {
            goto LABEL_64;
          }

          v40 = *(v37 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v43 = sub_252DA124C(0);

        ++v39;
        if (v43)
        {
          MEMORY[0x2530AD700]();
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v44 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v6 = v57;
          v39 = v42;
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    v6 = MEMORY[0x277D84F90];
  }

  v54[5] = v6;
  v54[6] = *(v54[4] + 64);
  type metadata accessor for HomeAutomationEntityResponses();
  v45 = swift_allocObject();
  v54[7] = v45;
  *(v45 + 16) = 0;
  *(v45 + 24) = v6;

  v46 = swift_task_alloc();
  v54[8] = v46;
  *v46 = v54;
  v46[1] = sub_252CCBB18;

  return sub_252D2BB60(v45, v55 & 1, v4 & 1);
}

uint64_t sub_252CCBB18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_252CCBCB8;
  }

  else
  {
    v9 = v4[6];
    v8 = v4[7];

    v4[10] = a1;
    v7 = sub_252CCBC50;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252CCBC50()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_252CCBCB8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

BOOL sub_252CCBD54(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = sub_252C285CC();
  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      v4 = sub_252E378C4();
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_9:

    return 0;
  }

LABEL_4:

  v5 = sub_252C2895C();
  if (v5 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 == v6;
}

uint64_t sub_252CCBE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252CC9678(a1, a2, a3);
}

void *sub_252CCBEF4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for UnreachableResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252CCBF58(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252CCBFB4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252CCC048()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252927C20(v2);
}

uint64_t sub_252CCC0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252CCB0FC(a1, v4, v5, v6);
}

uint64_t sub_252CCC1D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TurnOffWhenBlackHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252CCC208(void *a1, const void *a2)
{
  if (!sub_252C4B5D4())
  {
    return 0;
  }

  v4 = [a1 userTask];
  if (!v4)
  {
    sub_252C515AC();
    return 0;
  }

  v5 = v4;
  v6 = [v4 attribute];

  if (v6 != 5)
  {
    return 0;
  }

  memcpy(__dst, a2, sizeof(__dst));
  result = sub_252A17D08();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = [result stringValue];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_252E36F34();
  v12 = v11;

  if (v10 == 0x2C302E303A425348 && v12 == 0xED00003B2C302E30)
  {

    return 1;
  }

  else
  {
    v13 = sub_252E37DB4();

    return v13 & 1;
  }
}

id sub_252CCC350(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v8 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v9 = sub_252E36F04();
    v10 = [v8 initWithIdentifier:0 displayString:v9];

    v11 = v10;
    [v11 setBoolValue_];
    [v11 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v12 = sub_252D6CC80(v11);
    swift_beginAccess();
    v13 = v7[4];
    v7[4] = v12;

    v7[3] = 27;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v14, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E92000);
  if (v7)
  {
    v15 = v7[3];
  }

  else
  {
    v15 = 0;
  }

  v25[1] = v15;
  v26 = v7 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(v27, v28, 0xD000000000000090, 0x8000000252E92040);

  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v17 = sub_252D6CB58();
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 filters];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for HomeFilter();
    v20 = sub_252E37264();
  }

  else
  {
    v20 = 0;
  }

  v21 = [a1 time];
  v22 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v22 setUserTask_];
  if (v20)
  {
    type metadata accessor for HomeFilter();
    v23 = sub_252E37254();
  }

  else
  {
    v23 = 0;
  }

  [v22 setFilters_];

  [v22 setTime_];

  return v22;
}

uint64_t sub_252CCC780()
{
  v1 = 0x6574636172616863;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252CCF3AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252CCC804(uint64_t a1)
{
  v2 = sub_252CCDF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCC840(uint64_t a1)
{
  v2 = sub_252CCDF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCC87C()
{
  if (*v0)
  {
    result = 0x6574636172616863;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_252CCC8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEE00636974736972)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCC9A0(uint64_t a1)
{
  v2 = sub_252CCDEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCC9DC(uint64_t a1)
{
  v2 = sub_252CCDEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCCA18()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCCA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252CCF4C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252CCCA94(uint64_t a1)
{
  v2 = sub_252CCDE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCCAD0(uint64_t a1)
{
  v2 = sub_252CCDE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCCB0C()
{
  if (*v0)
  {
    result = 0x7475626972747461;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_252CCCB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCCC28(uint64_t a1)
{
  v2 = sub_252CCDDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCCC64(uint64_t a1)
{
  v2 = sub_252CCDDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCCCA0()
{
  if (*v0)
  {
    result = 0x65536E6F69746361;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_252CCCCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCCDBC(uint64_t a1)
{
  v2 = sub_252CCDD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCCDF8(uint64_t a1)
{
  v2 = sub_252CCDD78();

  return MEMORY[0x2821FE720](a1, v2);
}

void HMRequestBase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545390, &qword_252E5A850);
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545398, &qword_252E5A858);
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453A0, &qword_252E5A860);
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v83 = &v74 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453A8, &qword_252E5A868);
  v14 = *(v86 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453B0, qword_252E5A870);
  v88 = *(v17 - 8);
  v18 = v88[8];
  MEMORY[0x28223BE20](v17);
  v20 = &v74 - v19;
  objc_opt_self();
  v21 = v2;
  v22 = swift_dynamicCastObjCClass();
  v78 = v4;
  v76 = v7;
  if (v22)
  {
    v23 = v22;
    v75 = v14;
    v84 = v11;
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_252CCDF0C();
    v87 = v21;
    sub_252E37F84();
    v25 = [v23 characteristic];
    v90 = v25;
    LOBYTE(v91) = 1;
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    sub_252A67638(&qword_27F5453E8, &qword_27F5412E0, 0x277CD1970);
    v26 = v89;
    sub_252E37D54();
    if (v26)
    {

      (v88[1])(v20, v17);
      return;
    }

    v89 = v20;
    v74 = v17;
    v27 = v21;

    v38 = &off_279711000;
    v90 = [v23 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF0, &qword_252E59930);
    v39 = v23;
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      sub_252E37D04();
      v40 = v84;
      v28 = a1;
      v38 = &off_279711000;
    }

    else
    {
      v28 = a1;
      v40 = v84;
    }

    v90 = [v39 v38[206]];
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      sub_252E37D34();
    }

    v90 = [v39 v38[206]];
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      sub_252E37D24();
    }

    v91 = [v39 v38[206]];
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      v50 = v74;
      v51 = v89;
      sub_252E37CF4();
      v11 = v40;

      v52 = v87;
    }

    else
    {
      v50 = v74;
      v51 = v89;
      v52 = v87;
      v11 = v40;
    }

    LOBYTE(v90) = 0;
    sub_252E37CF4();
    v89 = 0;
    (v88[1])(v51, v50);

    v14 = v75;
  }

  else
  {
    v27 = v2;
    v28 = a1;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = v14;
    v84 = v11;
    v32 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_252CCDEB8();
    v33 = v27;
    v34 = v85;
    sub_252E37F84();
    v35 = [v30 characteristic];
    v90 = v35;
    LOBYTE(v91) = 1;
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    sub_252A67638(&qword_27F5453E8, &qword_27F5412E0, 0x277CD1970);
    v36 = v86;
    v37 = v89;
    sub_252E37D54();
    if (v37)
    {

      (*(v31 + 8))(v34, v36);
      return;
    }

    LOBYTE(v90) = 0;
    sub_252E37CF4();
    v41 = v34;
    v11 = v84;
    v89 = 0;
    (*(v31 + 8))(v41, v36);
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42)
  {
    v43 = v42;
    v44 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_252CCDE64();
    v88 = v28;
    v45 = v27;
    v46 = v27;
    v47 = v83;
    sub_252E37F84();
    v48 = [v43 attribute];
    v90 = v48;
    LOBYTE(v91) = 1;
    type metadata accessor for HMAttributeName(0);
    sub_252CCDE20(&qword_27F5453D0);
    v49 = v89;
    sub_252E37D54();
    if (v49)
    {

      (*(v82 + 8))(v47, v11);
      return;
    }

    v87 = v45;
    v27 = v46;
    v28 = v88;

    v90 = [v43 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF0, &qword_252E59930);
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      sub_252E37D04();
    }

    v90 = [v43 value];
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      sub_252E37D34();
    }

    v90 = [v43 value];
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      sub_252E37D24();
    }

    v91 = [v43 value];
    if (swift_dynamicCast())
    {
      LOBYTE(v90) = 2;
      v53 = v83;
      sub_252E37CF4();
    }

    else
    {
      v53 = v83;
    }

    LOBYTE(v90) = 0;
    sub_252E37CF4();
    v54 = v87;
    v89 = 0;
    (*(v82 + 8))(v53, v11);
  }

  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (v55)
  {
    v56 = v55;
    v57 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_252CCDDCC();
    v58 = v28;
    v59 = v27;
    v60 = v27;
    v61 = v79;
    sub_252E37F84();
    v62 = [v56 attribute];
    v90 = v62;
    LOBYTE(v91) = 1;
    type metadata accessor for HMAttributeName(0);
    sub_252CCDE20(&qword_27F5453D0);
    v63 = v81;
    v64 = v89;
    sub_252E37D54();
    if (v64)
    {

      (*(v80 + 8))(v61, v63);
      return;
    }

    LOBYTE(v90) = 0;
    sub_252E37CF4();
    (*(v80 + 8))(v61, v63);

    v89 = 0;
    v28 = v58;
    v27 = v59;
  }

  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (v65)
  {
    v66 = v65;
    v67 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_252CCDD78();
    v68 = v27;
    v69 = v76;
    sub_252E37F84();
    v70 = [v66 actionSet];
    v90 = v70;
    LOBYTE(v91) = 1;
    sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
    v71 = v69;
    sub_252A67638(&qword_27F5453C0, &unk_2814B0260, 0x277CD1800);
    v72 = v78;
    v73 = v89;
    sub_252E37D54();

    if (v73)
    {

      (*(v77 + 8))(v71, v72);
    }

    else
    {
      LOBYTE(v90) = 0;
      sub_252E37CF4();
      (*(v77 + 8))(v71, v72);
    }
  }
}

unint64_t sub_252CCDD78()
{
  result = qword_27F5453B8;
  if (!qword_27F5453B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5453B8);
  }

  return result;
}

unint64_t sub_252CCDDCC()
{
  result = qword_27F5453C8;
  if (!qword_27F5453C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5453C8);
  }

  return result;
}

uint64_t sub_252CCDE20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HMAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252CCDE64()
{
  result = qword_27F5453D8;
  if (!qword_27F5453D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5453D8);
  }

  return result;
}

unint64_t sub_252CCDEB8()
{
  result = qword_27F5453E0;
  if (!qword_27F5453E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5453E0);
  }

  return result;
}

unint64_t sub_252CCDF0C()
{
  result = qword_27F5453F0;
  if (!qword_27F5453F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5453F0);
  }

  return result;
}

uint64_t sub_252CCDFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000252E92120 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_252E37DB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_252CCE034(uint64_t a1)
{
  v2 = sub_252CCE214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCE070(uint64_t a1)
{
  v2 = sub_252CCE214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMCharacteristic.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453F8, &qword_252E5A890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CCE214();
  sub_252E37F84();
  v10 = [v2 characteristicType];
  sub_252E36F34();

  sub_252E37CF4();
  (*(v5 + 8))(v8, v4);
}

unint64_t sub_252CCE214()
{
  result = qword_27F545400;
  if (!qword_27F545400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545400);
  }

  return result;
}

uint64_t sub_252CCE28C()
{
  if (*v0)
  {
    result = 0x65536E6F69746361;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_252CCE2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xED00006570795474)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCE3B0(uint64_t a1)
{
  v2 = sub_252CCE61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCE3EC(uint64_t a1)
{
  v2 = sub_252CCE61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMActionSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545408, &qword_252E5A898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CCE61C();
  sub_252E37F84();
  v11 = [v3 name];
  sub_252E36F34();

  v14[15] = 0;
  sub_252E37CF4();
  if (!v2)
  {

    v12 = [v3 actionSetType];
    sub_252E36F34();

    v14[14] = 1;
    sub_252E37CF4();
  }

  (*(v6 + 8))(v9, v5);
}

unint64_t sub_252CCE61C()
{
  result = qword_27F545410;
  if (!qword_27F545410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545410);
  }

  return result;
}

uint64_t sub_252CCE718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252CCE7A0(uint64_t a1)
{
  v2 = sub_252CCE9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCE7DC(uint64_t a1)
{
  v2 = sub_252CCE9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMBatchRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545418, &qword_252E5A8A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CCE9C4();
  sub_252E37F84();
  v10 = [v2 requests];
  sub_25293F638(0, &qword_27F542118, 0x277CD1D58);
  v11 = sub_252E37264();

  v13[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545428, qword_252E5A8A8);
  sub_252CCEA18();
  sub_252E37D54();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_252CCE9C4()
{
  result = qword_27F545420;
  if (!qword_27F545420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545420);
  }

  return result;
}

unint64_t sub_252CCEA18()
{
  result = qword_27F545430;
  if (!qword_27F545430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545428, qword_252E5A8A8);
    sub_252A67638(&qword_27F545438, &qword_27F542118, 0x277CD1D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545430);
  }

  return result;
}

unint64_t sub_252CCEB70()
{
  result = qword_27F545440;
  if (!qword_27F545440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545440);
  }

  return result;
}

unint64_t sub_252CCEBC8()
{
  result = qword_27F545448;
  if (!qword_27F545448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545448);
  }

  return result;
}

unint64_t sub_252CCEC20()
{
  result = qword_27F545450;
  if (!qword_27F545450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545450);
  }

  return result;
}

unint64_t sub_252CCEC78()
{
  result = qword_27F545458;
  if (!qword_27F545458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545458);
  }

  return result;
}

unint64_t sub_252CCECD0()
{
  result = qword_27F545460;
  if (!qword_27F545460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545460);
  }

  return result;
}

unint64_t sub_252CCED28()
{
  result = qword_27F545468;
  if (!qword_27F545468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545468);
  }

  return result;
}

unint64_t sub_252CCED80()
{
  result = qword_27F545470;
  if (!qword_27F545470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545470);
  }

  return result;
}

unint64_t sub_252CCEDD8()
{
  result = qword_27F545478;
  if (!qword_27F545478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545478);
  }

  return result;
}

unint64_t sub_252CCEE30()
{
  result = qword_27F545480;
  if (!qword_27F545480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545480);
  }

  return result;
}

unint64_t sub_252CCEE88()
{
  result = qword_27F545488;
  if (!qword_27F545488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545488);
  }

  return result;
}

unint64_t sub_252CCEEE0()
{
  result = qword_27F545490;
  if (!qword_27F545490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545490);
  }

  return result;
}

unint64_t sub_252CCEF38()
{
  result = qword_27F545498;
  if (!qword_27F545498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545498);
  }

  return result;
}

unint64_t sub_252CCEF90()
{
  result = qword_27F5454A0;
  if (!qword_27F5454A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454A0);
  }

  return result;
}

unint64_t sub_252CCEFE8()
{
  result = qword_27F5454A8;
  if (!qword_27F5454A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454A8);
  }

  return result;
}

unint64_t sub_252CCF040()
{
  result = qword_27F5454B0;
  if (!qword_27F5454B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454B0);
  }

  return result;
}

unint64_t sub_252CCF098()
{
  result = qword_27F5454B8;
  if (!qword_27F5454B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454B8);
  }

  return result;
}

unint64_t sub_252CCF0F0()
{
  result = qword_27F5454C0;
  if (!qword_27F5454C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454C0);
  }

  return result;
}

unint64_t sub_252CCF148()
{
  result = qword_27F5454C8;
  if (!qword_27F5454C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454C8);
  }

  return result;
}

unint64_t sub_252CCF1A0()
{
  result = qword_27F5454D0;
  if (!qword_27F5454D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454D0);
  }

  return result;
}

unint64_t sub_252CCF1F8()
{
  result = qword_27F5454D8;
  if (!qword_27F5454D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454D8);
  }

  return result;
}

unint64_t sub_252CCF250()
{
  result = qword_27F5454E0;
  if (!qword_27F5454E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454E0);
  }

  return result;
}

unint64_t sub_252CCF2A8()
{
  result = qword_27F5454E8;
  if (!qword_27F5454E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454E8);
  }

  return result;
}

unint64_t sub_252CCF300()
{
  result = qword_27F5454F0;
  if (!qword_27F5454F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454F0);
  }

  return result;
}

unint64_t sub_252CCF358()
{
  result = qword_27F5454F8;
  if (!qword_27F5454F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5454F8);
  }

  return result;
}

uint64_t sub_252CCF3AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEE00636974736972 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252CCF4C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252CCF61C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_252CCFB28)(a2);
}

void *sub_252CCF6CC@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockGetATVStatusHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252CCF708(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 == 2 || (v3) && (v4 = [a1 filters]) != 0)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();

    v7 = [a1 userTask];
    v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = v8;
      v12 = 1;
LABEL_44:
      sub_252929F10(v11, v12);
      return 0;
    }

    v13 = [a1 userTask];
    if (v13)
    {
      v14 = v13;
      if ([v13 taskType] == 4)
      {
      }

      else
      {
        v15 = [v14 taskType];

        if (v15 != 5)
        {
          goto LABEL_43;
        }
      }

      if (v8 >> 62)
      {
        goto LABEL_42;
      }

      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
LABEL_43:
        v11 = v8;
        v12 = 0;
        goto LABEL_44;
      }

LABEL_14:
      v17 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2530ADF00](v17, v8);
          v19 = __OFADD__(v17++, 1);
          if (v19)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            sub_252929F10(v8, 0);

            return 1;
          }
        }

        else
        {
          if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_42:
            v16 = sub_252E378C4();
            if (!v16)
            {
              goto LABEL_43;
            }

            goto LABEL_14;
          }

          v18 = *(v8 + 32 + 8 * v17);

          v19 = __OFADD__(v17++, 1);
          if (v19)
          {
            goto LABEL_38;
          }
        }

        v20 = (*v18 + 256);
        v21 = *v20;
        if ((*v20)() == 41)
        {
          sub_252929F10(v8, 0);

          return 1;
        }

        v22 = (*(*v18 + 272))();
        v23 = v22;
        if (*(v22 + 16))
        {
          v24 = *(v22 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v25 = sub_252E37F14();
          v26 = -1 << *(v23 + 32);
          v27 = v25 & ~v26;
          if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            v28 = ~v26;
            while (*(*(v23 + 48) + 8 * v27) != 41)
            {
              v27 = (v27 + 1) & v28;
              if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            goto LABEL_39;
          }
        }

LABEL_25:

        v30 = (v21)(v29);
        if (v30 == 38)
        {
          break;
        }

        v31 = MEMORY[0x277D84FA0];
        if (v30 == 41)
        {
          v32 = &unk_2864AEF28;
LABEL_29:
          v31 = sub_2529FC004(v32);
        }

        if (*(v31 + 16))
        {
          v33 = *(v31 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v34 = sub_252E37F14();
          v35 = -1 << *(v31 + 32);
          v36 = v34 & ~v35;
          if ((*(v31 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            v37 = ~v35;
            while (*(*(v31 + 48) + 8 * v36) != 41)
            {
              v36 = (v36 + 1) & v37;
              if (((*(v31 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            goto LABEL_39;
          }
        }

LABEL_15:

        if (v17 == v16)
        {
          goto LABEL_43;
        }
      }

      v32 = &unk_2864AEF00;
      goto LABEL_29;
    }

    sub_252929F10(v8, 0);
    sub_252C515AC();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_252CCFB28()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CCFBC4, 0, 0);
}

uint64_t sub_252CCFBC4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);

  sub_252E362B4();

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25295A234;
  v5 = v0[2];
  v4 = v0[3];

  return sub_2529592E8(v4);
}

uint64_t sub_252CCFCB8()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 type];

      if (!v4)
      {
        return 0;
      }
    }
  }

  v5 = [v0 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 value];

    if (v7)
    {
      v8 = [v7 type];

      if (v8 == 1)
      {
        return 1;
      }
    }
  }

  if (sub_252C24B5C() & 1) != 0 || (sub_252AAB844())
  {
    return 1;
  }

  result = [v0 userTask];
  if (result)
  {
    v10 = result;
    v11 = [result value];

    if (v11)
    {
      v12 = [v11 type];

      return v12 == 8;
    }

    return 0;
  }

  return result;
}

uint64_t sub_252CCFE10()
{
  v1 = [v0 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 value];
      if (v5)
      {
        v6 = [v5 type];

        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
    }
  }

  v7 = [v0 automatableTask];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  type metadata accessor for ControlAutomateHomeIntent();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

    v11 = [v10 value];
    if (v11)
    {
      v12 = [v11 type];

      if (v12 == 1)
      {
        return 1;
      }
    }

LABEL_11:
    if (sub_252C24C90())
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (sub_252C24C90())
  {
    return 1;
  }

LABEL_14:
  if (sub_252AAB938())
  {
    return 1;
  }

  result = [v0 automatableTask];
  if (result)
  {
    v14 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v17 = [v16 value];
      if (v17)
      {
        v18 = [v17 type];

        return v18 == 8;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id ControlHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_252CD0060(void *a1, void (*a2)(id), uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  if (qword_27F53F570 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544EF8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v7 + 16))(v11, v13, v6);
  v15 = [a1 userTask];
  if (v15)
  {
    v16 = v15;
    v36[0] = v14;
    v36[1] = a3;
    v37 = a2;
    v38 = v11;
    v39 = v6;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544C40);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();

    v41 = 0xD00000000000001FLL;
    v42 = 0x8000000252E921C0;
    v40 = [a1 userTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v18 = sub_252E36F94();
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(v41, v42, 0xD00000000000007ELL, 0x8000000252E921E0);

    if (![v16 attribute])
    {
      sub_252CC3D90(0xD000000000000026, 0x8000000252E922C0, 0xD00000000000007ELL, 0x8000000252E921E0);
      type metadata accessor for ControlHomeUserTaskResolutionResult();
      v32 = [swift_getObjCClassFromMetadata() needsValue];
      sub_252E375C4();
LABEL_17:
      v11 = v38;
      sub_252E36A74();
      v37(v32);
      goto LABEL_18;
    }

    v19 = [a1 userTask];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 taskType];

      if (v21 == 1 && (sub_252CCFCB8() & 1) == 0)
      {
        if ([v16 attribute] == 8)
        {
          v22 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v23 = sub_252E36F04();
          v24 = [v22 initWithIdentifier:0 displayString:v23];

          v25 = v24;
          [v25 setBoolValue_];
          [v25 setType_];

          v26 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v27 = v25;
          v28 = sub_252E36F04();
          v29 = [v26 initWithIdentifier:0 displayString:v28];

          v30 = v29;
          [v30 setTaskType_];
          [v30 setAttribute_];
          [v30 setValue_];

          type metadata accessor for ControlHomeUserTaskResolutionResult();
          v31 = v30;
          v32 = sub_252E2C928(v30);

          sub_252E375C4();
          v11 = v38;
          sub_252E36A74();
          v37(v32);

LABEL_18:
          v6 = v39;
          goto LABEL_19;
        }

        sub_252CC3D90(0xD000000000000028, 0x8000000252E92290, 0xD00000000000007ELL, 0x8000000252E921E0);
        type metadata accessor for ControlHomeUserTaskResolutionResult();
        v33 = [swift_getObjCClassFromMetadata() needsValue];
        goto LABEL_16;
      }
    }

    else
    {
      sub_252C515AC();
    }

    sub_252CC3D90(0xD000000000000022, 0x8000000252E92260, 0xD00000000000007ELL, 0x8000000252E921E0);
    type metadata accessor for ControlHomeUserTaskResolutionResult();
    v33 = sub_252E2C7CC(v16);
LABEL_16:
    v32 = v33;
    sub_252E375C4();
    goto LABEL_17;
  }

  type metadata accessor for ControlHomeUserTaskResolutionResult();
  v16 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  sub_252E375C4();
  sub_252E36A74();
  a2(v16);
LABEL_19:

  v34 = *(v7 + 8);
  v34(v11, v6);
  return (v34)(v13, v6);
}

uint64_t sub_252CD0790(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v148 = a3;
  v149 = a2;
  v151 = sub_252E36AD4();
  v4 = *(v151 - 1);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v151);
  v141 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v136 - v8;
  v10 = sub_252E36AB4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v136 - v16);
  if (qword_27F53F570 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v18 = qword_27F544EF8;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v19 = v11[2];
    v150 = v17;
    v19(v15, v17, v10);
    v20 = [a1 filters];
    if (!v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_252E3C130;
      type metadata accessor for ControlHomeFiltersResolutionResult();
      *(v26 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      sub_252E375C4();
      sub_252E36A74();
      v149(v26);

      goto LABEL_100;
    }

    v21 = v20;
    v144 = v10;
    v145 = v18;
    v152 = a1;
    v142 = type metadata accessor for HomeFilter();
    v10 = sub_252E37264();

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v151, qword_27F544C40);
    a1 = v4[2];
    v146 = v22;
    (a1)(v9);
    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();

    v155[0] = 0xD00000000000001ELL;
    v155[1] = 0x8000000252E922F0;
    v23 = [v152 filters];
    if (v23)
    {
      v24 = v23;
      v25 = sub_252E37264();
    }

    else
    {
      v25 = 0;
    }

    v154 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    v147 = "Starting to resolve userTask: \n";
    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007ELL, 0x8000000252E921E0);

    v28 = v4[1];
    v140 = v4 + 1;
    v28(v9, v151);
    sub_252B680FC();
    v29 = sub_252B63488();

    v143 = v15;
    v153 = v10;
    if (v29)
    {
      goto LABEL_47;
    }

    v137 = v28;
    v30 = [v152 userTask];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    v32 = [v30 taskType];
    v33 = v147;
    if (v32 == 4)
    {
    }

    else
    {
      v34 = [v31 taskType];

      if (v34 != 5)
      {
        goto LABEL_29;
      }
    }

    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E924F0, 0xD00000000000007ELL, v33 | 0x8000000000000000);
    v155[0] = MEMORY[0x277D84F90];
    v139 = v11;
    if (!(v10 >> 62))
    {
      v4 = v144;
      v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_81:
    v4 = v144;
    v9 = sub_252E378C4();
LABEL_17:
    v17 = MEMORY[0x277D84F90];
    if (!v9)
    {
      v52 = MEMORY[0x277D84F90];
LABEL_40:

      sub_252E375C4();
LABEL_41:
      sub_252E36A74();
      v149(v52);

      v10 = v4;
      v11 = v139;
      goto LABEL_100;
    }

    v35 = 0;
    v15 = (v10 & 0xC000000000000001);
    v11 = (v10 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v15)
      {
        v36 = MEMORY[0x2530ADF00](v35, v10);
      }

      else
      {
        if (v35 >= v11[2])
        {
          goto LABEL_77;
        }

        v36 = *(v10 + 8 * v35 + 32);
      }

      a1 = v36;
      v10 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v17 = v155;
      sub_252E372D4();
      ++v35;
      v37 = v10 == v9;
      v10 = v153;
      if (v37)
      {
        v52 = v155[0];
        v15 = v143;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  sub_252C515AC();
LABEL_29:
  if (sub_252C4DD64())
  {
    v38 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(v10);
    if (!v38)
    {
      goto LABEL_104;
    }

    v138 = v38;
    if (v38 >> 62)
    {
      v39 = sub_252E378C4();
      if (v39 < 2)
      {
LABEL_103:

LABEL_104:
        v155[0] = 0;
        v155[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E923C0);
        ControlHomeIntent.getTargetDeviceTypes()();
        sub_25292A344();
        v121 = sub_252E373B4();
        v123 = v122;

        MEMORY[0x2530AD570](v121, v123);

        v124 = v147;
        sub_252CC3D90(v155[0], v155[1], 0xD00000000000007ELL, v147 | 0x8000000000000000);

        v125 = sub_252A7564C(v10);
        if (v126)
        {
          sub_252CC3D90(0xD000000000000019, 0x8000000252E92420, 0xD00000000000007ELL, v124 | 0x8000000000000000);
          v155[0] = MEMORY[0x277D84F90];
          v139 = v11;
          if (v10 >> 62)
          {
            goto LABEL_124;
          }

          v4 = v144;
          for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
          {
            v128 = 0;
            v129 = v10 & 0xC000000000000001;
            v130 = v10 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v129)
              {
                v131 = MEMORY[0x2530ADF00](v128, v10);
              }

              else
              {
                if (v128 >= *(v130 + 16))
                {
                  goto LABEL_123;
                }

                v131 = *(v10 + 8 * v128 + 32);
              }

              v132 = v131;
              v10 = v128 + 1;
              if (__OFADD__(v128, 1))
              {
                break;
              }

              type metadata accessor for ControlHomeFiltersResolutionResult();
              sub_252E2B004(v132);

              MEMORY[0x2530AD700]();
              if (*((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v133 = *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              ++v128;
              v37 = v10 == i;
              v10 = v153;
              if (v37)
              {
                v52 = v155[0];
                goto LABEL_121;
              }
            }

            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v4 = v144;
          }

          v52 = MEMORY[0x277D84F90];
LABEL_121:

          sub_252E375C4();
          v15 = v143;
          goto LABEL_41;
        }

        v134 = v125;

        v155[0] = 0;
        v155[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E92440);
        v154 = v134;
        sub_252E37AE4();
        sub_252CC3D90(v155[0], v155[1], 0xD00000000000007ELL, v124 | 0x8000000000000000);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_252E3C130;
        type metadata accessor for ControlHomeFiltersResolutionResult();
        *(v135 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        sub_252E375C4();
        sub_252E36A74();
        v149(v135);

        goto LABEL_99;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39 < 2)
      {
        goto LABEL_103;
      }
    }

    (a1)(v141, v146, v151);
    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E92480);
    ControlHomeIntent.getTargetDeviceTypes()();
    sub_25292A344();
    v40 = sub_252E373B4();
    v42 = v41;

    MEMORY[0x2530AD570](v40, v42);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E924D0);
    v154 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v39, 0);
    v43 = v154;
    v44 = v138;
    if ((v138 & 0xC000000000000001) != 0)
    {
      v45 = 0;
      do
      {
        v46 = MEMORY[0x2530ADF00](v45, v44);
        v47 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v48 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v154 = v43;
        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_2529AA3A0((v49 > 1), v50 + 1, 1);
          v43 = v154;
        }

        ++v45;
        v43[2] = v50 + 1;
        v51 = &v43[2 * v50];
        v51[4] = v47;
        v51[5] = v48;
      }

      while (v39 != v45);
    }

    else
    {
      v53 = (v138 + 32);
      do
      {
        v54 = v11;
        v55 = (*v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v56 = *v55;
        v57 = v55[1];
        v154 = v43;
        v58 = v43[2];
        v59 = v43[3];

        if (v58 >= v59 >> 1)
        {
          sub_2529AA3A0((v59 > 1), v58 + 1, 1);
          v43 = v154;
        }

        v43[2] = v58 + 1;
        v60 = &v43[2 * v58];
        v60[4] = v56;
        v60[5] = v57;
        ++v53;
        --v39;
        v11 = v54;
      }

      while (v39);
    }

    v61 = MEMORY[0x2530AD730](v43, MEMORY[0x277D837D0]);
    v63 = v62;

    MEMORY[0x2530AD570](v61, v63);

    v64 = v141;
    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007ELL, v147 | 0x8000000000000000);

    v137(v64, v151);
    v10 = v153;
  }

LABEL_47:
  v65 = sub_252935818();
  a1 = v66;
  v151 = v67;
  v69 = v68;
  sub_252B680FC();
  v70 = sub_252B63488();

  v141 = v69;
  if (v70)
  {
    goto LABEL_83;
  }

  v71 = sub_252B680FC();
  swift_beginAccess();
  v72 = *(v71 + 16);
  v73 = *(v72 + 16);
  if (v73)
  {
    memcpy(v155, (v72 + 504 * v73 - 472), sizeof(v155));
    sub_2529353AC(v155, &v154);

    v74 = v155[61];

    sub_252935408(v155);
    v75 = *(v74 + 16);

    if (v75 > 1)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  if (a1 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_83;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_83;
  }

  if ((sub_252C51814(3u) & 1) == 0 && (sub_252C51814(1u) & 1) == 0 && (sub_252C51814(2u) & 1) == 0 || (sub_252C513DC() & 1) == 0)
  {
LABEL_83:
    v155[0] = 0;
    v155[1] = 0xE000000000000000;
    sub_252E379F4();

    v155[0] = 0xD000000000000012;
    v155[1] = 0x8000000252E92310;
    v87 = [v152 description];
    v88 = sub_252E36F34();
    v90 = v89;

    MEMORY[0x2530AD570](v88, v90);

    sub_252CC3D90(v155[0], v155[1], 0xD00000000000007ELL, v147 | 0x8000000000000000);

    LOBYTE(v88) = sub_252C4D664(5);
    type metadata accessor for HomeStore();
    v91 = static HomeStore.shared.getter();
    v92 = v91;
    if (v88)
    {
      v93 = HomeStore.scenes(matching:)(v10);
      v95 = v94;

      if (v95)
      {

        v155[0] = 0;
        v155[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
        v154 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC4050(v155[0], v155[1], 0xD00000000000007ELL, v147 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 133);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_252E3C130;
        type metadata accessor for ControlHomeFiltersResolutionResult();
        *(v96 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        sub_252E375C4();
        v15 = v143;
        sub_252E36A74();
        v149(v96);

        v97 = v93;
        v98 = 1;
      }

      else
      {
        v109 = sub_252B1BB50(v10, MEMORY[0x277D84F90], 0, v93, 0, 0, 0, 0);

        sub_252E375C4();
        v15 = v143;
        sub_252E36A74();
        v149(v109);

        v97 = v93;
        v98 = 0;
      }

      sub_252929F10(v97, v98);

LABEL_97:

LABEL_98:

      goto LABEL_99;
    }

    v99 = v91[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    v140 = a1;
    if (v99 == 2 || (v99 & 1) != 0)
    {
      v100 = v152;
      v101 = [v152 filters];
      if (v101)
      {
        v139 = v11;
        v102 = v101;
        v103 = sub_252E37264();

        v104 = [v100 userTask];
        v105 = v100;
        v106 = HomeStore.accessories(matching:supporting:)(v103, v104);
        v108 = v107;

        if (v108)
        {

          v11 = v139;
LABEL_96:
          v155[0] = 0;
          v155[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v154 = v106;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v155[0], v155[1], 0xD00000000000007ELL, v147 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 142);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_252E3C130;
          type metadata accessor for ControlHomeFiltersResolutionResult();
          *(v112 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          sub_252E375C4();
          v15 = v143;
          sub_252E36A74();
          v149(v112);

          sub_252929F10(v106, 1);

          goto LABEL_97;
        }

        v115 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO29removeInaccessibleAccessories4fromSayAA9AccessoryCGAH_tFZ_0(v106);
        v116 = [v105 userTask];
        v117 = v141;

        v118 = v140;

        v119 = v151;

        v120 = sub_252B1BB50(v153, v115, v116, MEMORY[0x277D84F90], v65 & 1, v118, v119, v117);

        sub_252E375C4();
        v15 = v143;
        sub_252E36A74();
        v149(v120);

        sub_252929F10(v106, 0);

        v11 = v139;
LABEL_99:
        v10 = v144;
        goto LABEL_100;
      }

      sub_2529318DC();
      v106 = swift_allocError();
      v111 = 1;
    }

    else
    {
      sub_2529318DC();
      v106 = swift_allocError();
      v111 = 12;
    }

    *v110 = v111;

    goto LABEL_96;
  }

  sub_252CC3D90(0xD000000000000040, 0x8000000252E92370, 0xD00000000000007ELL, v147 | 0x8000000000000000);
  v76 = sub_252A7564C(v10);
  if ((v77 & 1) == 0)
  {
    v84 = v76;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_252E3C130;
    type metadata accessor for ControlHomeFiltersResolutionResult();
    *(v85 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    sub_252E375C4();
    v15 = v143;
    sub_252E36A74();
    v149(v85);

    goto LABEL_98;
  }

  v155[0] = MEMORY[0x277D84F90];
  v15 = v143;
  v139 = v11;
  if (v10 >> 62)
  {
    v78 = sub_252E378C4();
  }

  else
  {
    v78 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v78)
  {
    v79 = 0;
    v15 = (v10 & 0xC000000000000001);
    v80 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v15)
      {
        v81 = a1;
        v82 = MEMORY[0x2530ADF00](v79, v10);
      }

      else
      {
        if (v79 >= *(v80 + 16))
        {
          goto LABEL_80;
        }

        v81 = a1;
        v82 = *(v10 + 8 * v79 + 32);
      }

      a1 = v82;
      v10 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v83 = *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v79;
      v37 = v10 == v78;
      v10 = v153;
      a1 = v81;
      if (v37)
      {
        v86 = v155[0];
        v15 = v143;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_75:

  sub_252E375C4();
  sub_252E36A74();
  v149(v86);

  v10 = v144;
  v11 = v139;
LABEL_100:
  v113 = v11[1];
  v113(v15, v10);
  return (v113)(v150, v10);
}

void sub_252CD211C(void *a1, void (*a2)(void))
{
  v3 = [a1 time];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() successWithResolvedDateComponentsRange_];
    a2();
  }

  else
  {
    sub_25293F638(0, &qword_27F545500, 0x277CD3B70);
    v5 = [swift_getObjCClassFromMetadata() notRequired];
    a2();
  }
}

uint64_t sub_252CD2304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25296BC70;

  return sub_252CD6978();
}

uint64_t sub_252CD252C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_252A91798;

  return sub_252CD6978();
}

uint64_t sub_252CD25D8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v99 = a3;
  v98 = a2;
  v96 = sub_252E36CA4();
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_252E36D04();
  v92 = *(v94 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_252E36CB4();
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36AB4();
  v11 = *(v10 - 8);
  v100 = v10;
  v101 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v102 = &v85 - v17;
  v18 = sub_252E36AD4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v18, qword_2814B09D8);
  (*(v19 + 16))(v22, v23, v18);
  aBlock = 0;
  v104 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E92530);
  v109 = [a1 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  MEMORY[0x2530AD570](0x737265746C69460ALL, 0xEA00000000000A3ALL);
  v25 = [a1 filters];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for HomeFilter();
    v27 = sub_252E37264();
  }

  else
  {
    v27 = 0;
  }

  v109 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v28 = sub_252E36F94();
  MEMORY[0x2530AD570](v28);

  MEMORY[0x2530AD570](0xA3A656D69540ALL, 0xE700000000000000);
  v109 = [a1 time];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
  v29 = sub_252E36F94();
  MEMORY[0x2530AD570](v29);

  v86 = "Starting to resolve userTask: \n";
  sub_252CC4A5C(aBlock, v104, 1, 0xD00000000000007ELL, 0x8000000252E921E0);

  v30 = *(v19 + 8);
  v87 = v18;
  v30(v22, v18);
  v31 = sub_252B680FC();
  swift_beginAccess();
  v32 = a1;
  MEMORY[0x2530AD700]();
  if (*((*(v31 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v84 = *((*(v31 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  sub_252B680FC();
  sub_252B66DE8(v32);

  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v33 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v34 = sub_252E36804();
  v36 = v35;

  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v38 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v34;
    *(inited + 56) = v36;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v38, &unk_27F541F10, &unk_252E42870);
  }

  v39 = [objc_opt_self() sharedAnalytics];
  v97 = v32;
  if (v39)
  {
    v40 = v39;

    sub_252CC1408(v41);

    v42 = sub_252E36E24();

    [v40 logEventWithType:6505 context:v42];
  }

  else
  {
  }

  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  v44 = v102;
  v45 = *(v101 + 16);
  v46 = v16;
  v47 = v16;
  v48 = v100;
  v49 = v101;
  v45(v47, v102, v100);
  v50 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45(v50, v46, v48);
  v51 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v52 = (v12 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v43;
  (*(v49 + 32))(v53 + v51, v46, v48);
  v54 = (v53 + v52);
  v55 = v98;
  v56 = v99;
  *v54 = v98;
  v54[1] = v56;

  v57 = v97;
  if (sub_252C4F88C())
  {
    v99 = v43;
    v58 = *(v49 + 8);
    v101 = v49 + 8;
    v98 = v58;
    (v58)(v50, v48);
    type metadata accessor for AccessoriesWarmupManager();
    swift_allocObject();
    v59 = v57;
    v97 = sub_252A75FBC(v59);
    sub_252A760A0();
    v60 = sub_252CD6D5C(v59);
    v62 = v61;
    aBlock = swift_getObjectType();
    v104 = v62;
    v85 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545508, &qword_252E5B3D8);
    v63 = sub_252E36F94();
    v65 = v64;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v87, qword_27F544C70);
    aBlock = 0;
    v104 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD000000000000011;
    v104 = 0x8000000252E73E80;
    MEMORY[0x2530AD570](v63, v65);
    sub_252CC4A5C(aBlock, v104, 1, 0xD00000000000007ELL, v86 | 0x8000000000000000);

    sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
    v66 = v89;
    v67 = v88;
    v68 = v90;
    (*(v89 + 104))(v88, *MEMORY[0x277D851C0], v90);
    v69 = sub_252E375A4();
    (*(v66 + 8))(v67, v68);
    v70 = swift_allocObject();
    v71 = v85;
    v70[2] = v60;
    v70[3] = v71;
    v70[4] = v59;
    v70[5] = sub_252CD6AD0;
    v70[6] = v53;
    v70[7] = v63;
    v70[8] = v65;
    v107 = sub_252CD7020;
    v108 = v70;
    aBlock = MEMORY[0x277D85DD0];
    v104 = 1107296256;
    v105 = sub_252AD686C;
    v106 = &block_descriptor_20;
    v72 = _Block_copy(&aBlock);
    v73 = v59;
    swift_unknownObjectRetain();

    v74 = v91;
    sub_252E36CD4();
    v109 = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v75 = v93;
    v76 = v96;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v74, v75, v72);
    _Block_release(v72);
    swift_unknownObjectRelease();

    (*(v95 + 8))(v75, v76);
    (*(v92 + 8))(v74, v94);
    (v98)(v102, v100);
  }

  else
  {
    v77 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v78 = v49;
    v79 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v77[v79] = 5;
    [v77 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v80 = v55;
    v81 = sub_252E37254();
    [v77 setEntityResponses_];

    sub_252CD3374(0x4964696C61766E49, 0xED0000746E65746ELL, v77, v43, v50, v80);

    v82 = *(v78 + 8);
    v82(v50, v48);
    v82(v44, v48);
  }
}

void sub_252CD3374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  if (*(a4 + 16))
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E92600, 0xD00000000000007ELL, 0x8000000252E921E0);
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    if (qword_27F53F580 != -1)
    {
      swift_once();
    }

    v13 = qword_27F544F08;
    *&v50[0] = type metadata accessor for ControlHomeIntentHandler();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545510, &qword_252E5B418);
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    *&v39 = 0;
    BYTE8(v39) = 1;
    v40 = 0uLL;
    *&v41 = 0;
    *(&v41 + 1) = a1;
    *&v42 = a2;
    *(&v42 + 1) = sub_252E36F94();
    v43 = v14;
    v44 = 0uLL;
    LOBYTE(v45) = 1;
    *(&v45 + 1) = 0;
    v46 = 0uLL;
    LOWORD(v47) = 513;
    *(&v47 + 1) = 0;
    v48 = 0uLL;
    v49 = 1;
    GEOLocationCoordinate2DMake(&v39);
    v32 = v47;
    v33 = v48;
    v34 = v49;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;

    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v13, a5, "HandleIntent", 12, 2, &v24);
    v50[8] = v32;
    v50[9] = v33;
    v51 = v34;
    v50[4] = v28;
    v50[5] = v29;
    v50[6] = v30;
    v50[7] = v31;
    v50[0] = v24;
    v50[1] = v25;
    v50[2] = v26;
    v50[3] = v27;
    sub_25293847C(v50, &qword_27F5407B0, &unk_252E42860);
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v15 = sub_252E36804();
    v17 = v16;

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = 25705;
      v19 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = v15;
      *(inited + 56) = v17;
      sub_252CC630C(inited);
      swift_setDeallocating();
      sub_25293847C(v19, &unk_27F541F10, &unk_252E42870);
    }

    v20 = [objc_opt_self() sharedAnalytics];
    if (v20)
    {
      v21 = v20;

      sub_252CC1408(v22);

      v23 = sub_252E36E24();

      [v21 logEventWithType:6506 context:v23];
    }

    else
    {
    }

    a6(a3);
  }
}

uint64_t sub_252CD3760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a7;
  swift_unknownObjectRetain();

  sub_252DC52D0(a3, sub_252CD8874, v15, ObjectType, a2);
}

void sub_252CD383C(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_27F53F498 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E769D0);
    v9 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    v10 = *&a1[v9];
    v11 = sub_252B9AAC4();
    MEMORY[0x2530AD570](v11);

    MEMORY[0x2530AD570](0x20646E610ALL, 0xE500000000000000);
    v12 = [a1 entityResponses];
    v72 = a1;
    if (v12)
    {
      v13 = v12;
      type metadata accessor for HomeEntityResponse();
      v14 = sub_252E37264();
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      sub_252E379F4();

      v15 = a1;
      v16 = [v15 description];
      v17 = sub_252E36F34();
      v19 = v18;

      MEMORY[0x2530AD570](v17, v19);
      a1 = v72;

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v14 = MEMORY[0x277D84F90];
    }

    if (v14 >> 62)
    {
      sub_252E378C4();
    }

    else
    {
      v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = sub_252E37D94();
    MEMORY[0x2530AD570](v21);

    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E92620);
    v22 = [a1 description];
    v23 = sub_252E36F34();
    v25 = v24;

    MEMORY[0x2530AD570](v23, v25);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E921E0);

    v26 = [a1 entityResponses];
    if (v26)
    {
      v27 = v26;
      type metadata accessor for HomeEntityResponse();
      v28 = sub_252E37264();

      if (v28 >> 62)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      sub_252E379F4();

      v43 = a1;
      v44 = [v43 description];
      v45 = sub_252E36F34();
      v47 = v46;

      MEMORY[0x2530AD570](v45, v47);
      a1 = v72;

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v28 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_35:
        v29 = sub_252E378C4();
        goto LABEL_12;
      }
    }

    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

    if (!v29)
    {
      if (qword_27F53F3F8 != -1)
      {
        swift_once();
      }

      if ((sub_252DB4F4C(*&a1[v9], qword_27F575A30) & 1) == 0)
      {
        swift_getObjectType();
        if (!sub_252DC534C())
        {
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E769D0);
          v63 = *&a1[v9];
          v64 = sub_252B9AAC4();
          MEMORY[0x2530AD570](v64);

          MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E92640);
          sub_252E37AE4();
          MEMORY[0x2530AD570](0x64616574736E6920, 0xE800000000000000);
          sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E921E0, 0xD00000000000001ALL, 0x8000000252E80020, 256);

          v65 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
          v66 = OBJC_IVAR___ControlHomeIntentResponse_code;
          swift_beginAccess();
          *&v65[v66] = 102;
          [v65 setUserActivity_];
          type metadata accessor for HomeEntityResponse();
          v67 = sub_252E37254();
          [v65 setEntityResponses_];

          a4(a6, a7, v65);
          return;
        }
      }
    }

    v30 = [a1 entityResponses];
    v31 = MEMORY[0x277D84F90];
    if (v30)
    {
      v32 = v30;
      type metadata accessor for HomeEntityResponse();
      v33 = sub_252E37264();

      v73 = v31;
      if (v33 >> 62)
      {
        v34 = sub_252E378C4();
        if (v34)
        {
LABEL_20:
          v35 = 0;
          a1 = (v33 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v33 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x2530ADF00](v35, v33);
            }

            else
            {
              if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v36 = *(v33 + 8 * v35 + 32);
            }

            v37 = v36;
            v38 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            v39 = [v36 entity];
            if (v39 && (v40 = v39, v41 = [v39 type], v40, v41 == 7) && (sub_252DA5218() & 1) == 0)
            {
              sub_252E37A94();
              v42 = *(v73 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }

            ++v35;
            if (v38 == v34)
            {
              a1 = v72;
              v31 = v73;
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_20;
        }
      }

LABEL_37:
    }

    sub_252ADEC58(v31);

    v48 = [a1 entityResponses];
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      goto LABEL_54;
    }

    v50 = v48;
    type metadata accessor for HomeEntityResponse();
    v51 = sub_252E37264();

    v74 = v49;
    if (!(v51 >> 62))
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        break;
      }

      goto LABEL_41;
    }

    v52 = sub_252E378C4();
    if (!v52)
    {
      break;
    }

LABEL_41:
    v53 = 0;
    a1 = (v51 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x2530ADF00](v53, v51);
      }

      else
      {
        if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v54 = *(v51 + 8 * v53 + 32);
      }

      v55 = v54;
      v56 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v57 = [v54 entity];
      if (v57 && (v58 = v57, v59 = [v57 type], v58, v59 == 7))
      {
        sub_252E37A94();
        v60 = *(v74 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v53;
      if (v56 == v52)
      {
        a1 = v72;
        v49 = v74;
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

LABEL_53:

LABEL_54:
  sub_252CAF868(v49);

  sub_252C322CC();
  v61 = sub_252B680FC();
  swift_beginAccess();
  v62 = a1;
  MEMORY[0x2530AD700]();
  if (*((*(v61 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v61 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v68 = *((*(v61 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  a4(a6, a7, v62);
}

void sub_252CD4298(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id ControlHomeIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ControlHomeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252CD43D0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25294B954;

  return v7();
}

uint64_t sub_252CD44B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25293B808;

  return v8();
}

uint64_t sub_252CD45A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2529E6204(a3, v25 - v11);
  v13 = sub_252E37344();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25293847C(v12, &qword_27F540CB8, &qword_252E3F8D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_252E37334();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_252E37324();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_252E36FD4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_25293847C(a3, &qword_27F540CB8, &qword_252E3F8D0);

    return v23;
  }

LABEL_8:
  sub_25293847C(a3, &qword_27F540CB8, &qword_252E3F8D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_252CD488C(void *a1, uint64_t a2)
{
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  if (qword_27F53F570 != -1)
  {
    swift_once();
  }

  v12 = qword_27F544EF8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v5 + 16))(v9, v11, v4);
  v13 = [a1 userTask];
  if (v13)
  {
    v14 = v13;
    v35[1] = v12;
    v36 = a2;
    v37 = v9;
    v38 = v4;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C40);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_252E379F4();

    v40 = 0xD00000000000001FLL;
    v41 = 0x8000000252E921C0;
    v39 = [a1 userTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v16 = sub_252E36F94();
    MEMORY[0x2530AD570](v16);

    sub_252CC3D90(v40, v41, 0xD00000000000007ELL, 0x8000000252E921E0);

    if ([v14 attribute])
    {
      v17 = [a1 userTask];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 taskType];

        if (v19 == 1 && (sub_252CCFCB8() & 1) == 0)
        {
          if ([v14 attribute] == 8)
          {
            v20 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v21 = sub_252E36F04();
            v22 = [v20 initWithIdentifier:0 displayString:v21];

            v23 = v22;
            [v23 setBoolValue_];
            [v23 setType_];

            v24 = objc_allocWithZone(type metadata accessor for HomeUserTask());
            v25 = v23;
            v26 = sub_252E36F04();
            v27 = [v24 initWithIdentifier:0 displayString:v26];

            v28 = v27;
            [v28 setTaskType_];
            [v28 setAttribute_];
            [v28 setValue_];

            type metadata accessor for ControlHomeUserTaskResolutionResult();
            v29 = v28;
            v30 = sub_252E2C928(v28);

            sub_252E375C4();
            v9 = v37;
            sub_252E36A74();
            (*(v36 + 16))(v36, v30);

LABEL_18:
            v4 = v38;
            goto LABEL_19;
          }

          sub_252CC3D90(0xD000000000000028, 0x8000000252E92290, 0xD00000000000007ELL, 0x8000000252E921E0);
          type metadata accessor for ControlHomeUserTaskResolutionResult();
          v31 = [swift_getObjCClassFromMetadata() needsValue];
          goto LABEL_14;
        }
      }

      else
      {
        sub_252C515AC();
      }

      sub_252CC3D90(0xD000000000000022, 0x8000000252E92260, 0xD00000000000007ELL, 0x8000000252E921E0);
      type metadata accessor for ControlHomeUserTaskResolutionResult();
      v32 = sub_252E2C7CC(v14);
      goto LABEL_17;
    }

    sub_252CC3D90(0xD000000000000026, 0x8000000252E922C0, 0xD00000000000007ELL, 0x8000000252E921E0);
    type metadata accessor for ControlHomeUserTaskResolutionResult();
    v31 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_14:
    v32 = v31;
LABEL_17:
    v30 = v32;
    sub_252E375C4();
    v9 = v37;
    sub_252E36A74();
    (*(v36 + 16))(v36, v30);
    goto LABEL_18;
  }

  type metadata accessor for ControlHomeUserTaskResolutionResult();
  v14 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  sub_252E375C4();
  sub_252E36A74();
  (*(a2 + 16))(a2, v14);
LABEL_19:

  v33 = *(v5 + 8);
  v33(v9, v4);
  return (v33)(v11, v4);
}

uint64_t sub_252CD4F54(unint64_t a1, uint64_t a2)
{
  v152 = a2;
  v154 = sub_252E36AD4();
  v3 = *(v154 - 1);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v154);
  v145 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v141 - v7;
  v9 = sub_252E36AB4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v141 - v15);
  if (qword_27F53F570 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v17 = qword_27F544EF8;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v18 = v10[2];
    v153 = v16;
    v18(v14, v16, v9);
    v19 = [a1 filters];
    if (!v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_252E3C130;
      type metadata accessor for ControlHomeFiltersResolutionResult();
      *(v25 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      sub_252E375C4();
      sub_252E36A74();
      v26 = sub_252E37254();
      (*(v152 + 16))(v152, v26);

      goto LABEL_116;
    }

    v20 = v19;
    v148 = v9;
    v155 = a1;
    v151 = v17;
    v146 = type metadata accessor for HomeFilter();
    v9 = sub_252E37264();

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v154, qword_27F544C40);
    a1 = v3[2];
    v149 = v21;
    (a1)(v8);
    v158[0] = 0;
    v158[1] = 0xE000000000000000;
    sub_252E379F4();

    v158[0] = 0xD00000000000001ELL;
    v158[1] = 0x8000000252E922F0;
    v22 = [v155 filters];
    if (v22)
    {
      v23 = v22;
      v24 = sub_252E37264();
    }

    else
    {
      v24 = 0;
    }

    v157 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    v150 = "Starting to resolve userTask: \n";
    sub_252CC3D90(v158[0], v158[1], 0xD00000000000007ELL, 0x8000000252E921E0);

    v143 = v3[1];
    v144 = v3 + 1;
    v143(v8, v154);
    sub_252B680FC();
    v28 = sub_252B63488();

    v147 = v14;
    v156 = v9;
    if (v28)
    {
      goto LABEL_44;
    }

    v29 = [v155 userTask];
    if (!v29)
    {
      break;
    }

    v30 = v29;
    if ([v29 taskType] == 4)
    {
    }

    else
    {
      v31 = [v30 taskType];

      if (v31 != 5)
      {
        goto LABEL_29;
      }
    }

    v16 = v149;
    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E924F0, 0xD00000000000007ELL, v150 | 0x8000000000000000);
    v158[0] = MEMORY[0x277D84F90];
    v141 = v10;
    if (!(v9 >> 62))
    {
      v14 = v148;
      v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_77:
    v14 = v148;
    v8 = sub_252E378C4();
LABEL_17:
    if (!v8)
    {
      goto LABEL_114;
    }

    v32 = 0;
    v10 = (v9 & 0xC000000000000001);
    v3 = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v10)
      {
        v33 = MEMORY[0x2530ADF00](v32, v9);
      }

      else
      {
        if (v32 >= v3[2])
        {
          goto LABEL_73;
        }

        v33 = *(v9 + 8 * v32 + 32);
      }

      a1 = v33;
      v9 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v16 = v158;
      sub_252E372D4();
      ++v32;
      v34 = v9 == v8;
      v9 = v156;
      if (v34)
      {
        goto LABEL_114;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  sub_252C515AC();
LABEL_29:
  if ((sub_252C4DD64() & 1) == 0)
  {
LABEL_44:
    v62 = sub_252935818();
    a1 = v63;
    v154 = v64;
    v66 = v65;
    sub_252B680FC();
    v67 = sub_252B63488();

    if (v67)
    {
      goto LABEL_79;
    }

    v68 = sub_252B680FC();
    swift_beginAccess();
    v69 = *(v68 + 16);
    v70 = *(v69 + 16);
    if (v70)
    {
      memcpy(v158, (v69 + 504 * v70 - 472), sizeof(v158));
      sub_2529353AC(v158, &v157);

      v71 = v158[61];

      sub_252935408(v158);
      v72 = *(v71 + 16);

      if (v72 > 1)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    if (a1 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_79;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_79;
    }

    if ((sub_252C51814(3u) & 1) == 0 && (sub_252C51814(1u) & 1) == 0 && (sub_252C51814(2u) & 1) == 0 || (sub_252C513DC() & 1) == 0)
    {
LABEL_79:
      v158[0] = 0;
      v158[1] = 0xE000000000000000;
      sub_252E379F4();

      v158[0] = 0xD000000000000012;
      v158[1] = 0x8000000252E92310;
      v85 = [v155 description];
      v86 = sub_252E36F34();
      v88 = v87;

      MEMORY[0x2530AD570](v86, v88);

      sub_252CC3D90(v158[0], v158[1], 0xD00000000000007ELL, v150 | 0x8000000000000000);

      LOBYTE(v86) = sub_252C4D664(5);
      type metadata accessor for HomeStore();
      v89 = static HomeStore.shared.getter();
      v90 = v89;
      if (v86)
      {
        v91 = HomeStore.scenes(matching:)(v9);
        v93 = v92;

        if (v93)
        {

          v158[0] = 0;
          v158[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v157 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v158[0], v158[1], 0xD00000000000007ELL, v150 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 133);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_252E3C130;
          type metadata accessor for ControlHomeFiltersResolutionResult();
          *(v94 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          sub_252E375C4();
          v14 = v147;
          sub_252E36A74();
          v95 = sub_252E37254();
          (*(v152 + 16))(v152, v95);

          v96 = v91;
          v97 = 1;
        }

        else
        {
          sub_252B1BB50(v9, MEMORY[0x277D84F90], 0, v91, 0, 0, 0, 0);

          sub_252E375C4();
          v14 = v147;
          sub_252E36A74();
          type metadata accessor for ControlHomeFiltersResolutionResult();
          v109 = sub_252E37254();
          (*(v152 + 16))(v152, v109);

          v96 = v91;
          v97 = 0;
        }

        sub_252929F10(v96, v97);

LABEL_93:

LABEL_94:

LABEL_95:
        v9 = v148;
        goto LABEL_116;
      }

      v98 = v89[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      v145 = a1;
      if (v98 == 2 || (v98 & 1) != 0)
      {
        v99 = v155;
        v100 = [v155 filters];
        if (v100)
        {
          v101 = v62;
          v102 = v66;
          v141 = v10;
          v103 = v100;
          v104 = sub_252E37264();

          v105 = [v99 userTask];
          v106 = HomeStore.accessories(matching:supporting:)(v104, v105);
          v108 = v107;

          if ((v108 & 1) == 0)
          {
            v114 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO29removeInaccessibleAccessories4fromSayAA9AccessoryCGAH_tFZ_0(v106);
            v115 = [v99 userTask];
            v116 = v102;

            v117 = v145;

            v118 = v154;

            sub_252B1BB50(v156, v114, v115, MEMORY[0x277D84F90], v101 & 1, v117, v118, v116);

            sub_252E375C4();
            v14 = v147;
            sub_252E36A74();
            type metadata accessor for ControlHomeFiltersResolutionResult();
            v119 = sub_252E37254();
            (*(v152 + 16))(v152, v119);

            sub_252929F10(v106, 0);

            v10 = v141;
            goto LABEL_95;
          }

          v10 = v141;
LABEL_92:
          v158[0] = 0;
          v158[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v157 = v106;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v158[0], v158[1], 0xD00000000000007ELL, v150 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 142);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_252E3C130;
          type metadata accessor for ControlHomeFiltersResolutionResult();
          *(v112 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          sub_252E375C4();
          v14 = v147;
          sub_252E36A74();
          v113 = sub_252E37254();
          (*(v152 + 16))(v152, v113);

          sub_252929F10(v106, 1);

          goto LABEL_93;
        }

        sub_2529318DC();
        v106 = swift_allocError();
        v111 = 1;
      }

      else
      {
        sub_2529318DC();
        v106 = swift_allocError();
        v111 = 12;
      }

      *v110 = v111;

      goto LABEL_92;
    }

    v16 = v149;
    sub_252CC3D90(0xD000000000000040, 0x8000000252E92370, 0xD00000000000007ELL, v150 | 0x8000000000000000);
    v73 = sub_252A7564C(v9);
    if ((v74 & 1) == 0)
    {
      v81 = v73;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_252E3C130;
      type metadata accessor for ControlHomeFiltersResolutionResult();
      *(v82 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      sub_252E375C4();
      v14 = v147;
      sub_252E36A74();
      v83 = sub_252E37254();
      (*(v152 + 16))(v152, v83);

      goto LABEL_94;
    }

    v158[0] = MEMORY[0x277D84F90];
    v141 = v10;
    if (v9 >> 62)
    {
      v75 = sub_252E378C4();
    }

    else
    {
      v75 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v75)
    {
LABEL_71:

      sub_252E375C4();
      v14 = v147;
      sub_252E36A74();
      type metadata accessor for ControlHomeFiltersResolutionResult();
      v84 = sub_252E37254();
      (*(v152 + 16))(v152, v84);

      v9 = v148;
      goto LABEL_115;
    }

    v76 = 0;
    v155 = (v9 & 0xC000000000000001);
    v77 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v155)
      {
        v78 = a1;
        v79 = MEMORY[0x2530ADF00](v76, v9);
      }

      else
      {
        if (v76 >= *(v77 + 16))
        {
          goto LABEL_76;
        }

        v78 = a1;
        v79 = *(v9 + 8 * v76 + 32);
      }

      a1 = v79;
      v9 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v80 = *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v16 = v158;
      sub_252E372D4();
      ++v76;
      v34 = v9 == v75;
      v9 = v156;
      a1 = v78;
      if (v34)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v35 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(v9);
  if (!v35)
  {
    goto LABEL_99;
  }

  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36 < 2)
    {
      goto LABEL_98;
    }

    goto LABEL_33;
  }

  v120 = v35;
  v36 = sub_252E378C4();
  v35 = v120;
  if (v36 >= 2)
  {
LABEL_33:
    v37 = v35;
    (a1)(v145, v149, v154);
    v158[0] = 0;
    v158[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E92480);
    ControlHomeIntent.getTargetDeviceTypes()();
    sub_25292A344();
    v38 = sub_252E373B4();
    v40 = v39;

    MEMORY[0x2530AD570](v38, v40);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E924D0);
    v157 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v36, 0);
    v41 = v157;
    v142 = v37;
    if ((v37 & 0xC000000000000001) != 0)
    {
      v42 = 0;
      v43 = v150;
      do
      {
        v44 = MEMORY[0x2530ADF00](v42, v142);
        v45 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v46 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v157 = v41;
        v48 = v41[2];
        v47 = v41[3];
        if (v48 >= v47 >> 1)
        {
          sub_2529AA3A0((v47 > 1), v48 + 1, 1);
          v41 = v157;
        }

        ++v42;
        v41[2] = v48 + 1;
        v49 = &v41[2 * v48];
        v49[4] = v45;
        v49[5] = v46;
      }

      while (v36 != v42);
    }

    else
    {
      v50 = (v37 + 32);
      do
      {
        v51 = v10;
        v52 = (*v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v53 = *v52;
        v54 = v52[1];
        v157 = v41;
        v56 = v41[2];
        v55 = v41[3];

        if (v56 >= v55 >> 1)
        {
          sub_2529AA3A0((v55 > 1), v56 + 1, 1);
          v41 = v157;
        }

        v41[2] = v56 + 1;
        v57 = &v41[2 * v56];
        v57[4] = v53;
        v57[5] = v54;
        ++v50;
        --v36;
        v10 = v51;
        v43 = v150;
      }

      while (v36);
    }

    v58 = MEMORY[0x2530AD730](v41, MEMORY[0x277D837D0]);
    v60 = v59;

    MEMORY[0x2530AD570](v58, v60);

    v61 = v145;
    sub_252CC3D90(v158[0], v158[1], 0xD00000000000007ELL, v43 | 0x8000000000000000);

    v143(v61, v154);
    v9 = v156;
    goto LABEL_44;
  }

LABEL_98:

LABEL_99:
  v158[0] = 0;
  v158[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E923C0);
  ControlHomeIntent.getTargetDeviceTypes()();
  sub_25292A344();
  v121 = sub_252E373B4();
  v123 = v122;

  MEMORY[0x2530AD570](v121, v123);

  v124 = v150;
  sub_252CC3D90(v158[0], v158[1], 0xD00000000000007ELL, v150 | 0x8000000000000000);

  v125 = sub_252A7564C(v9);
  if ((v126 & 1) == 0)
  {
    v138 = v125;

    v158[0] = 0;
    v158[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E92440);
    v157 = v138;
    sub_252E37AE4();
    sub_252CC3D90(v158[0], v158[1], 0xD00000000000007ELL, v124 | 0x8000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_252E3C130;
    type metadata accessor for ControlHomeFiltersResolutionResult();
    *(v139 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    sub_252E375C4();
    sub_252E36A74();
    v140 = sub_252E37254();
    (*(v152 + 16))(v152, v140);

    goto LABEL_95;
  }

  sub_252CC3D90(0xD000000000000019, 0x8000000252E92420, 0xD00000000000007ELL, v124 | 0x8000000000000000);
  v158[0] = MEMORY[0x277D84F90];
  v141 = v10;
  if (v9 >> 62)
  {
    goto LABEL_120;
  }

  v14 = v148;
  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v128 = 0;
    v129 = v9 & 0xC000000000000001;
    v130 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v129)
      {
        v131 = MEMORY[0x2530ADF00](v128, v9);
      }

      else
      {
        if (v128 >= *(v130 + 16))
        {
          goto LABEL_119;
        }

        v131 = *(v9 + 8 * v128 + 32);
      }

      v132 = v131;
      v9 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(v132);

      MEMORY[0x2530AD700]();
      if (*((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v133 = *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v128;
      v34 = v9 == i;
      v9 = v156;
      if (v34)
      {
        goto LABEL_114;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v14 = v148;
  }

LABEL_114:

  sub_252E375C4();
  v134 = v147;
  sub_252E36A74();
  type metadata accessor for ControlHomeFiltersResolutionResult();
  v135 = sub_252E37254();
  (*(v152 + 16))(v152, v135);

  v9 = v14;
  v14 = v134;
LABEL_115:
  v10 = v141;
LABEL_116:
  v136 = v10[1];
  v136(v14, v9);
  return (v136)(v153, v9);
}

uint64_t sub_252CD6994()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C70);
  sub_252CC3D90(0xD000000000000033, 0x8000000252E926C0, 0xD00000000000007ELL, 0x8000000252E921E0);
  v2 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 1;
  [v2 setUserActivity_];
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_252CD6AD4()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544C70);
  sub_252CC3D90(0xD000000000000023, 0x8000000252E92690, 0xD00000000000007ELL, 0x8000000252E921E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543158, &qword_252E4A748);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E5B3B0;
  *(v1 + 32) = type metadata accessor for RVCAppIntentHandleDelegate();
  *(v1 + 40) = &off_2864B1C50;
  *(v1 + 48) = type metadata accessor for PowerOffDeltaDecreaseHandleDelegate();
  *(v1 + 56) = &off_2864C0D48;
  *(v1 + 64) = type metadata accessor for BrigthnessZeroAsPowerOffHandleDelegate();
  *(v1 + 72) = &off_2864B7F50;
  *(v1 + 80) = type metadata accessor for TurnOnAirPurifierHandleDelegate();
  *(v1 + 88) = &off_2864BA618;
  *(v1 + 96) = type metadata accessor for SetModeHandleDelegate();
  *(v1 + 104) = &off_2864B93A8;
  *(v1 + 112) = type metadata accessor for GetBrightnessHandleDelegate();
  *(v1 + 120) = &off_2864BF7B8;
  *(v1 + 128) = type metadata accessor for SetFullBrightnessHandleDelegate();
  *(v1 + 136) = &off_2864B8B30;
  *(v1 + 144) = type metadata accessor for BatteryHandleDelegate();
  *(v1 + 152) = &off_2864BE778;
  *(v1 + 160) = type metadata accessor for GetThermostatModeHandleDelegate();
  *(v1 + 168) = &off_2864B9E88;
  *(v1 + 176) = type metadata accessor for SetRangeTemperatureValueHandleDelegate();
  *(v1 + 184) = &off_2864BC6D8;
  *(v1 + 192) = type metadata accessor for SetSingleTemperatureValueHandleDelegate();
  *(v1 + 200) = &off_2864BFA88;
  *(v1 + 208) = type metadata accessor for SetDeltaTemperatureHandleDelegate();
  *(v1 + 216) = &off_2864BEA00;
  *(v1 + 224) = type metadata accessor for TelevisionHandleDelegate();
  *(v1 + 232) = &off_2864B4670;
  *(v1 + 240) = type metadata accessor for TurnOnSwingModeHandleDelegate();
  *(v1 + 248) = &off_2864BBC80;
  *(v1 + 256) = type metadata accessor for CriticalSensorHandleDelegate();
  *(v1 + 264) = &off_2864BCF78;
  *(v1 + 272) = type metadata accessor for AsyncScenesHandleDelegate();
  *(v1 + 280) = &off_2864AFF40;
  *(v1 + 288) = type metadata accessor for AsyncPollingHandleDelegate();
  *(v1 + 296) = &off_2864B03F8;
  *(v1 + 304) = type metadata accessor for AsyncDefaultHandleDelegate();
  *(v1 + 312) = &off_2864B38E0;
  *(v1 + 320) = type metadata accessor for PollingHandleDelegate();
  *(v1 + 328) = &off_2864B7F78;
  *(v1 + 336) = type metadata accessor for SprinklerHandleDelegate();
  *(v1 + 344) = &off_2864B12E8;
  *(v1 + 352) = type metadata accessor for WaterSystemHandleDelegate();
  *(v1 + 360) = &off_2864BBCA8;
  *(v1 + 368) = type metadata accessor for PowerOnMatterThermostatHandleDelegate();
  *(v1 + 376) = &off_2864BEA48;
  return v1;
}

uint64_t sub_252CD6D5C(uint64_t a1)
{
  v2 = sub_252CD6AD4();
  v3 = (v2 + 40);
  v4 = -*(v2 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = v3 + 2;
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = (*(*v3 + 24))(a1, v8, *v3);
    v3 = v6;
    if (v9)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544C70);
      v11 = sub_252E36AC4();
      v12 = sub_252E374C4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315138;
        v15 = sub_252E37FB4();
        v17 = sub_252BE2CE0(v15, v16, &v23);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_252917000, v11, v12, "Selected handle delegate to execute %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2530AED00](v14, -1, -1);
        MEMORY[0x2530AED00](v13, -1, -1);
      }

      return (*(v7 + 32))(v8, v7);
    }
  }

  if (qword_27F53F498 == -1)
  {
    goto LABEL_11;
  }

LABEL_15:
  swift_once();
LABEL_11:
  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  v20 = sub_252E36AC4();
  v21 = sub_252E374C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_252917000, v20, v21, "Using to default handle delegate since no match found.", v22, 2u);
    MEMORY[0x2530AED00](v22, -1, -1);
  }

  type metadata accessor for DefaultHandleDelegate();
  return swift_allocObject();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of ControlHomeIntentHandler.confirm(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25296BC70;

  return v8(a1);
}

void sub_252CD7278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E92600, 0xD00000000000007ELL, 0x8000000252E921E0);
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    if (qword_27F53F580 != -1)
    {
      swift_once();
    }

    v13 = qword_27F544F08;
    *&v50[0] = type metadata accessor for ControlHomeIntentHandler();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545510, &qword_252E5B418);
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    *&v39 = 0;
    BYTE8(v39) = 1;
    v40 = 0uLL;
    *&v41 = 0;
    *(&v41 + 1) = a1;
    *&v42 = a2;
    *(&v42 + 1) = sub_252E36F94();
    v43 = v14;
    v44 = 0uLL;
    LOBYTE(v45) = 1;
    *(&v45 + 1) = 0;
    v46 = 0uLL;
    LOWORD(v47) = 513;
    *(&v47 + 1) = 0;
    v48 = 0uLL;
    v49 = 1;
    GEOLocationCoordinate2DMake(&v39);
    v32 = v47;
    v33 = v48;
    v34 = v49;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;

    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v13, a5, "HandleIntent", 12, 2, &v24);
    v50[8] = v32;
    v50[9] = v33;
    v51 = v34;
    v50[4] = v28;
    v50[5] = v29;
    v50[6] = v30;
    v50[7] = v31;
    v50[0] = v24;
    v50[1] = v25;
    v50[2] = v26;
    v50[3] = v27;
    sub_25293847C(v50, &qword_27F5407B0, &unk_252E42860);
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v15 = sub_252E36804();
    v17 = v16;

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = 25705;
      v19 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = v15;
      *(inited + 56) = v17;
      sub_252CC630C(inited);
      swift_setDeallocating();
      sub_25293847C(v19, &unk_27F541F10, &unk_252E42870);
    }

    v20 = [objc_opt_self() sharedAnalytics];
    if (v20)
    {
      v21 = v20;

      sub_252CC1408(v22);

      v23 = sub_252E36E24();

      [v21 logEventWithType:6506 context:v23];
    }

    else
    {
    }

    (*(a6 + 16))(a6, a3);
  }
}

uint64_t sub_252CD7668(void *a1, void (*a2)(char *, uint64_t))
{
  v94 = sub_252E36CA4();
  v93 = *(v94 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_252E36D04();
  v90 = *(v92 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_252E36CB4();
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_252E36AB4();
  v10 = *(v96 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v96);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v97 = &v78 - v16;
  v17 = sub_252E36AD4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = swift_allocObject();
  *(v95 + 16) = a2;
  v85 = a2;
  _Block_copy(a2);
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_2814B09D8);
  (*(v18 + 16))(v21, v22, v17);
  aBlock = 0;
  v99 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E92530);
  v104 = [a1 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v23 = sub_252E36F94();
  MEMORY[0x2530AD570](v23);

  MEMORY[0x2530AD570](0x737265746C69460ALL, 0xEA00000000000A3ALL);
  v24 = [a1 filters];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for HomeFilter();
    v26 = sub_252E37264();
  }

  else
  {
    v26 = 0;
  }

  v104 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v27 = sub_252E36F94();
  MEMORY[0x2530AD570](v27);

  MEMORY[0x2530AD570](0xA3A656D69540ALL, 0xE700000000000000);
  v104 = [a1 time];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
  v28 = sub_252E36F94();
  MEMORY[0x2530AD570](v28);

  v83 = "Starting to resolve userTask: \n";
  sub_252CC4A5C(aBlock, v99, 1, 0xD00000000000007ELL, 0x8000000252E921E0);

  (*(v18 + 8))(v21, v17);
  v29 = sub_252B680FC();
  swift_beginAccess();
  v30 = a1;
  MEMORY[0x2530AD700]();
  if (*((*(v29 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v77 = *((*(v29 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  sub_252B680FC();
  sub_252B66DE8(v30);

  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v31 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v32 = sub_252E36804();
  v34 = v33;

  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v36 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v32;
    *(inited + 56) = v34;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v36, &unk_27F541F10, &unk_252E42870);
  }

  v84 = v17;
  v37 = [objc_opt_self() sharedAnalytics];
  if (v37)
  {
    v38 = v37;
    v39 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_252CC1408(v40);

    v41 = sub_252E36E24();

    [v38 logEventWithType:6505 context:v41];
  }

  else
  {
    v39 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = *(v10 + 16);
  v45 = v96;
  v44 = v97;
  v43(v15, v97, v96);
  v43(v39, v15, v45);
  v46 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v42;
  (*(v10 + 32))(v48 + v46, v15, v45);
  v49 = (v48 + v47);
  v50 = v95;
  *v49 = sub_252CD8440;
  v49[1] = v50;

  if (sub_252C4F88C())
  {
    v51 = *(v10 + 8);
    v81 = v10 + 8;
    v85 = v51;
    v51(v39, v45);
    type metadata accessor for AccessoriesWarmupManager();
    swift_allocObject();
    v52 = v30;
    v82 = sub_252A75FBC(v52);
    sub_252A760A0();
    v53 = sub_252CD6D5C(v52);
    v55 = v54;
    v80 = v53;
    aBlock = swift_getObjectType();
    v99 = v55;
    v79 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545508, &qword_252E5B3D8);
    v56 = sub_252E36F94();
    v58 = v57;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v84, qword_27F544C70);
    aBlock = 0;
    v99 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD000000000000011;
    v99 = 0x8000000252E73E80;
    MEMORY[0x2530AD570](v56, v58);
    sub_252CC4A5C(aBlock, v99, 1, 0xD00000000000007ELL, v83 | 0x8000000000000000);

    sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
    v59 = v87;
    v60 = v86;
    v61 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x277D851C0], v88);
    v62 = sub_252E375A4();
    (*(v59 + 8))(v60, v61);
    v63 = swift_allocObject();
    v64 = v79;
    v63[2] = v80;
    v63[3] = v64;
    v63[4] = v52;
    v63[5] = sub_252CD8888;
    v63[6] = v48;
    v63[7] = v56;
    v63[8] = v58;
    v102 = sub_252CD888C;
    v103 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v99 = 1107296256;
    v100 = sub_252AD686C;
    v101 = &block_descriptor_27;
    v65 = _Block_copy(&aBlock);
    v66 = v52;
    swift_unknownObjectRetain();

    v67 = v89;
    sub_252E36CD4();
    v104 = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v68 = v91;
    v69 = v94;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v67, v68, v65);
    _Block_release(v65);
    swift_unknownObjectRelease();

    (*(v93 + 8))(v68, v69);
    (*(v90 + 8))(v67, v92);
    v85(v97, v96);
  }

  else
  {
    v70 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v71 = v10;
    v72 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v70[v72] = 5;
    [v70 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v73 = sub_252E37254();
    [v70 setEntityResponses_];

    v74 = v85;
    _Block_copy(v85);
    sub_252CD7278(0x4964696C61766E49, 0xED0000746E65746ELL, v70, v42, v39, v74);
    _Block_release(v74);

    v75 = *(v71 + 8);
    v75(v39, v45);
    v75(v44, v45);
  }
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_252CD8530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_252E36AB4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_252CD3374(a1, a2, a3, v9, v3 + v8, v11);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_252CD8650()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25293B808;

  return sub_252CD252C(v2, v3);
}

uint64_t sub_252CD8704(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25294B954;

  return sub_2529E2E20(a1, v5);
}

uint64_t sub_252CD87BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return sub_2529E2E20(a1, v5);
}

uint64_t sub_252CD8894(void *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = a1;
  v8 = a1;
  v9 = [v8 uniqueIdentifier];
  sub_252E32E64();

  v10 = [v8 name];
  v11 = sub_252E36F34();
  v13 = v12;

  v14 = [v8 assistantIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v7, v3);
  v19 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v19 = v11;
  v19[1] = v13;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
  v20 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v20 = v16;
  v20[1] = v18;
  return v1;
}

void *sub_252CD8A60(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252CD8AAC(a1);
}

void *sub_252CD8AAC(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v57 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v57;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Service();
    v17 = *(*v61 + 48);
    v18 = *(*v61 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v58[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v59) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v57;
  v22 = v6;
  v23 = v58[0];
  LOBYTE(v58[0]) = 2;
  v53 = sub_252E37C04();
  v54 = v23;
  v55 = v24;
  LOBYTE(v58[0]) = 3;
  v25 = sub_252E37BA4();
  v48 = v15;
  v50 = v11;
  v51 = v26;
  v52 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529D9D50();
  v30 = sub_2529D70E4(v29);
  v49 = 0;

  MEMORY[0x28223BE20](v31);
  v33 = v53;
  v32 = v54;
  *(&v45 - 6) = v22;
  *(&v45 - 5) = v33;
  *(&v45 - 4) = v55;
  *(&v45 - 3) = v27;
  v47 = v27;
  *(&v45 - 2) = v51;
  *(&v45 - 1) = v32;
  v34 = v49;
  v35 = sub_2529A3DE8(sub_252CDD62C, (&v45 - 8), v30);
  v49 = v34;

  if (!v35)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    v40 = __swift_project_value_buffer(v39, qword_27F544CB8);
    sub_252CC4050(0xD000000000000024, 0x8000000252E92960, 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);
    strcpy(v58, "identifier: ");
    BYTE5(v58[1]) = 0;
    HIWORD(v58[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v46 = v22;
    v41 = sub_252E37D94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v58[0], v58[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v58[0] = 0x203A656D616ELL;
    v58[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v53, v55);

    sub_252CC4050(v58[0], v58[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_252E379F4();

    v58[0] = 0xD000000000000015;
    v58[1] = 0x8000000252E6AA20;
    v59 = v47;
    v60 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    sub_252CC4050(v58[0], v58[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    strcpy(v58, "entityType: ");
    BYTE5(v58[1]) = 0;
    HIWORD(v58[1]) = -5120;
    v59 = v54;
    v43 = sub_252E36F94();
    MEMORY[0x2530AD570](v43);

    v14 = v40;
    sub_252CC4050(v58[0], v58[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v48 + 8))(v50, v7);
    (*(v56 + 8))(v46, v52);
    v16 = v21;
    goto LABEL_4;
  }

  v36 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

  v14 = v61;
  *(v61 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v36;
  sub_252929E74(v21, v58);
  v37 = v49;
  v38 = Entity.init(from:)(v58);
  if (v37)
  {
    (*(v15 + 8))(v50, v7);

    (*(v56 + 8))(v22, v52);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v38;
    (*(v15 + 8))(v50, v7);

    v44 = *(v56 + 8);

    v44(v22, v52);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

BOOL sub_252CD9320(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 7;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 7;
      }
    }
  }

  return 0;
}

uint64_t sub_252CD941C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
  v2 = sub_252E36F34();
  v4 = v3;

  if (qword_27F53F8B8 != -1)
  {
    swift_once();
  }

  v5 = off_27F546230;
  if (*(off_27F546230 + 2) && (v6 = sub_252A44A10(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_252CD94E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
  v2 = [v1 serviceSubtype];
  if (!v2)
  {
    v2 = [v1 associatedServiceType];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = sub_252E36F34();
  v6 = v5;

  if (qword_27F53F8B8 != -1)
  {
    swift_once();
  }

  v7 = off_27F546230;
  if (*(off_27F546230 + 2) && (v8 = sub_252A44A10(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(v7[7] + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_252CD95D8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v13 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v14 = sub_252A44A10(v10, v12);
        if (v15)
        {
          goto LABEL_20;
        }
      }

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v13 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v14 = sub_252A44A10(v10, v12);
        if (v16)
        {
          goto LABEL_20;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546240;
      if (*(off_27F546240 + 2) && (v14 = sub_252A44A10(v10, v12), (v17 & 1) != 0))
      {
LABEL_20:
        v18 = *(v13[7] + 8 * v14);
      }

      else
      {
        v18 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7A6C(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = *(v5 + 2);
      v19 = *(v5 + 3);
      if (v20 >= v19 >> 1)
      {
        v5 = sub_2529F7A6C((v19 > 1), v20 + 1, 1, v5);
      }

      *(v5 + 2) = v20 + 1;
      *&v5[8 * v20 + 32] = v18;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_33:

  v21 = *(v5 + 2);
  if (v21)
  {
    v22 = (v5 + 32);
    v23 = MEMORY[0x277D84F90];
    do
    {
      v27 = *v22++;
      v26 = v27;
      if (v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v23 + 16) + 1, 1);
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2529AA360((v24 > 1), v25 + 1, 1);
        }

        *(v23 + 16) = v25 + 1;
        *(v23 + 8 * v25 + 32) = v26;
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t sub_252CD995C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v13 = off_27F546258;
      if (!*(off_27F546258 + 2))
      {

LABEL_14:
        v17 = 0;
        goto LABEL_15;
      }

      v14 = sub_252A44A10(v10, v12);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      v17 = *(v13[7] + 8 * v14);
LABEL_15:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7A6C(0, *(v5 + 2) + 1, 1, v5);
      }

      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      if (v19 >= v18 >> 1)
      {
        v5 = sub_2529F7A6C((v18 > 1), v19 + 1, 1, v5);
      }

      *(v5 + 2) = v19 + 1;
      *&v5[8 * v19 + 32] = v17;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_26:

  v20 = *(v5 + 2);
  if (v20)
  {
    v21 = (v5 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v26 = *v21++;
      v25 = v26;
      if (v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v22 + 16) + 1, 1);
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2529AA360((v23 > 1), v24 + 1, 1);
        }

        *(v22 + 16) = v24 + 1;
        *(v22 + 8 * v24 + 32) = v25;
      }

      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t sub_252CD9C58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v32 = v2 & 0xFFFFFFFFFFFFFF8;
    v33 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_33;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8E0 != -1)
      {
        v13 = swift_once();
      }

      v14 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v13 = sub_252A44A10(v10, v12);
        if (v15)
        {
          goto LABEL_23;
        }
      }

      if (qword_27F53F8A8 != -1)
      {
        v13 = swift_once();
      }

      v34[0] = v10;
      v34[1] = v12;
      MEMORY[0x28223BE20](v13);
      v31[2] = v34;
      if (sub_2529ED970(sub_25296A69C, v31, v16))
      {
        goto LABEL_24;
      }

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v14 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v13 = sub_252A44A10(v10, v12);
        if (v17)
        {
          goto LABEL_23;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v14 = off_27F546240;
      if (*(off_27F546240 + 2) && (v13 = sub_252A44A10(v10, v12), (v18 & 1) != 0))
      {
LABEL_23:
        v19 = *(v14[7] + 8 * v13);
      }

      else
      {
LABEL_24:
        v19 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7A6C(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      if (v21 >= v20 >> 1)
      {
        v5 = sub_2529F7A6C((v20 > 1), v21 + 1, 1, v5);
      }

      *(v5 + 2) = v21 + 1;
      *&v5[8 * v21 + 32] = v19;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_36:

  v22 = *(v5 + 2);
  if (v22)
  {
    v23 = (v5 + 32);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v28 = *v23++;
      v27 = v28;
      if (v28)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34[0] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA360(0, *(v24 + 16) + 1, 1);
          v24 = v34[0];
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2529AA360((v25 > 1), v26 + 1, 1);
          v24 = v34[0];
        }

        *(v24 + 16) = v26 + 1;
        *(v24 + 8 * v26 + 32) = v27;
      }

      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  return v24;
}

uint64_t sub_252CDA06C(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 groupName];
  if (v6)
  {

    type metadata accessor for HomeStore();
    v7 = static HomeStore.shared.getter();
    v8 = sub_2529F1D14(a1);

    if (v8 >> 62)
    {
LABEL_19:
      v9 = sub_252E378C4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v10, v8);
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      v12 = sub_25294FCB4(v2);

      ++v10;
      if (v12)
      {

        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v14 = type metadata accessor for Accessory();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v5;
  sub_252D4CE7C(v17);
  v18 = sub_252D50978(a1);

  return v18 & 1;
}

uint64_t sub_252CDA218(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - v10;
  if ([a1 deviceType])
  {
    v12 = sub_252CD941C();
    if (v12 != [a1 deviceType])
    {
      v13 = sub_252CD94E0();
      v15 = v14;
      v16 = [a1 deviceType];
      if ((v15 & 1) != 0 || v13 != v16)
      {
        if (sub_252CD941C() != 34)
        {
          goto LABEL_32;
        }

        v56 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v56)
        {
          v57 = v56;
          v58 = [v56 category];

          v59 = [v58 categoryType];
          v60 = sub_252E36F34();
          v62 = v61;
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        v64 = sub_252DE8B3C(v60, v62);

        if (v64 != [a1 deviceType])
        {
LABEL_32:
          if (qword_27F53F4C8 != -1)
          {
            swift_once();
          }

          v65 = __swift_project_value_buffer(v4, qword_27F544D00);
          (*(v5 + 16))(v11, v65, v4);
          v88 = 0;
          v89 = 0xE000000000000000;
          sub_252E379F4();
          v67 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v66 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v88 = v67;
          v89 = v66;
          MEMORY[0x2530AD570](0x2065707974207327, 0xE900000000000028);
          v68 = sub_252CD941C();
          v69 = HomeDeviceType.description.getter(v68);
          MEMORY[0x2530AD570](v69);

          MEMORY[0x2530AD570](44, 0xE100000000000000);
          v70 = sub_252CD94E0();
          v72 = v71;
          v73 = 0;
          v74 = 0;
          if ((v72 & 1) == 0)
          {
            v73 = HomeDeviceType.description.getter(v70);
          }

          v86 = v73;
          v87 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
          v75 = sub_252E36F94();
          MEMORY[0x2530AD570](v75);

          MEMORY[0x2530AD570](0x746F6E2073692029, 0xE900000000000020);
          v76 = HomeDeviceType.description.getter([a1 deviceType]);
          MEMORY[0x2530AD570](v76);

          sub_252CC3D90(v88, v89, 0xD00000000000006DLL, 0x8000000252E928D0);

          (*(v5 + 8))(v11, v4);
          return 0;
        }
      }
    }
  }

  v17 = [a1 outerDeviceName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_252E36F34();
    v21 = v20;

    v22 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
    v23 = [v22 accessory];
    if (!v23)
    {
LABEL_12:
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v4, qword_27F544CE8);
      (*(v5 + 16))(v9, v33, v4);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_252E379F4();
      v34 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      v36 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v35 = *(v34 + 8);

      v88 = v36;
      v89 = v35;
      MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E92940);
      v37 = [v22 accessory];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 name];

        v40 = sub_252E36F34();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      v86 = v40;
      v87 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v63 = sub_252E36F94();
      MEMORY[0x2530AD570](v63);

      MEMORY[0x2530AD570](0x746F6E2073692029, 0xE900000000000020);
      MEMORY[0x2530AD570](v19, v21);

      sub_252CC3D90(v88, v89, 0xD00000000000006DLL, 0x8000000252E928D0);

      (*(v5 + 8))(v9, v4);
      return 0;
    }

    v85 = v9;
    v24 = v5;
    v25 = v4;
    v26 = v23;
    v27 = [v23 name];

    v28 = sub_252E36F34();
    v30 = v29;

    if (v28 == v19 && v30 == v21)
    {

      v4 = v25;
    }

    else
    {
      v32 = sub_252E37DB4();

      v4 = v25;
      v5 = v24;
      v9 = v85;
      if ((v32 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v43 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (v43)
  {
    v44 = v43;
    v85 = v4;
    if (![a1 outerDeviceType])
    {
LABEL_43:

      goto LABEL_44;
    }

    v45 = type metadata accessor for Accessory();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v84 = v44;
    v48 = sub_252D4CE7C(v84);
    v49 = [a1 outerDeviceType];
    v50 = *(*v48 + 256);
    if (v50() == v49 || (v51 = (*(*v48 + 272))(), v52 = sub_252DB4F4C(v49, v51), v53 = , (v52 & 1) != 0))
    {
LABEL_42:

      goto LABEL_43;
    }

    v54 = (v50)(v53);
    if (v54 == 38)
    {
      v55 = &unk_2864A0E78;
    }

    else
    {
      if (v54 != 41)
      {
        v78 = MEMORY[0x277D84FA0];
LABEL_41:
        v79 = sub_252DB4F4C(v49, v78);

        if ((v79 & 1) == 0)
        {
          v80 = sub_252D4FE78(v49);

          if (!v80)
          {
            if (qword_27F53F4C8 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v85, qword_27F544D00);
            v88 = 0;
            v89 = 0xE000000000000000;
            sub_252E379F4();
            v82 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v81 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            v88 = v82;
            v89 = v81;
            MEMORY[0x2530AD570](0x2065707974207327, 0xEF20746F6E207369);
            v83 = HomeDeviceType.description.getter([a1 outerDeviceType]);
            MEMORY[0x2530AD570](v83);

            sub_252CC3D90(v88, v89, 0xD00000000000006DLL, 0x8000000252E928D0);

            return 0;
          }

          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v55 = &unk_2864A0EA0;
    }

    v78 = sub_2529FC004(v55);
    goto LABEL_41;
  }

LABEL_44:

  return sub_252967EAC(a1);
}

uint64_t sub_252CDAB7C(void *a1)
{
  if ([a1 attribute] == 5)
  {
    v45 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
    v3 = [v45 characteristics];
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    v4 = sub_252E37264();

    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_61:
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = *MEMORY[0x277CCF8D8];
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_56;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v11 = [v9 characteristicType];
      v12 = sub_252E36F34();
      v14 = v13;

      if (v12 == sub_252E36F34() && v14 == v15)
      {

LABEL_20:

        v20 = [v45 characteristics];
        v4 = sub_252E37264();

        v5 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          v21 = sub_252E378C4();
        }

        else
        {
          v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = 0;
        v23 = *MEMORY[0x277CCFA30];
        while (v21 != v22)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x2530ADF00](v22, v4);
          }

          else
          {
            if (v22 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v24 = *(v4 + 8 * v22 + 32);
          }

          v25 = v24;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_57;
          }

          v26 = [v24 characteristicType];
          v27 = sub_252E36F34();
          v29 = v28;

          if (v27 == sub_252E36F34() && v29 == v30)
          {

LABEL_37:

            v33 = [v45 characteristics];
            v5 = sub_252E37264();

            if (v5 >> 62)
            {
              v34 = sub_252E378C4();
            }

            else
            {
              v34 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v4 = 0;
            v35 = *MEMORY[0x277CCF788];
            while (v34 != v4)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v36 = MEMORY[0x2530ADF00](v4, v5);
              }

              else
              {
                if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_60;
                }

                v36 = *(v5 + 8 * v4 + 32);
              }

              v37 = v36;
              if (__OFADD__(v4, 1))
              {
                goto LABEL_59;
              }

              v38 = [v36 characteristicType];
              v39 = sub_252E36F34();
              v41 = v40;

              if (v39 == sub_252E36F34() && v41 == v42)
              {

                goto LABEL_18;
              }

              v44 = sub_252E37DB4();

              ++v4;
              if (v44)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_52;
          }

          v32 = sub_252E37DB4();

          ++v22;
          if (v32)
          {
            goto LABEL_37;
          }
        }

        break;
      }

      v17 = sub_252E37DB4();

      ++v7;
      if (v17)
      {
        goto LABEL_20;
      }
    }

LABEL_52:
  }

  else
  {
    sub_252DE8C4C(a1, v1);
    if (v18)
    {
LABEL_18:

      return 1;
    }
  }

  return 0;
}

uint64_t sub_252CDB028()
{
  v1 = v0;
  v2 = sub_252CD94E0();
  if (v3)
  {
    v2 = sub_252CD941C();
  }

  v4 = v2;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v5.n128_f64[0] = HomeEntity.Builder.init()();
  v7 = (*(*v6 + 376))(*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v5);

  v8 = (*(*v7 + 384))(7);

  v9 = sub_252E32E24();
  v10 = (*(*v8 + 392))(v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C290;
  *(v11 + 32) = v4;
  v12 = (*(*v10 + 400))();

  v13 = (*(*v12 + 408))(0);

  v14 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
  v15 = [v14 accessory];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 room];

    if (v17)
    {
      v18 = [v17 name];

      v19 = sub_252E36F34();
      v21 = v20;

      v15 = v19;
      goto LABEL_8;
    }

    v15 = 0;
  }

  v21 = 0;
LABEL_8:
  v22 = (*(*v13 + 416))(v15, v21);

  v23 = [v14 accessory];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 home];

    if (v25)
    {
      v26 = [v25 name];

      v27 = sub_252E36F34();
      v25 = v28;

      v23 = v27;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = (*(*v22 + 424))(v23, v25);

  v31 = (*(*v29 + 448))(v30);

  return v31;
}

uint64_t *sub_252CDB44C()
{
  result = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for Accessory();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return sub_252D4CE7C(v2);
  }

  return result;
}

void sub_252CDB4B0()
{
  v1 = v0;
  v67 = sub_252E32E84();
  v2 = *(v67 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v6 = static HomeStore.shared.getter();
  v7 = sub_2529D8DC0();

  if (v7 >> 62)
  {
    goto LABEL_64;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_65:

    return;
  }

LABEL_3:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = v7 + 32;
  v66 = (v2 + 8);
  while (v10)
  {
    v13 = MEMORY[0x2530ADF00](v9, v7);
    v14 = __OFADD__(v9++, 1);
    if (v14)
    {
      goto LABEL_66;
    }

LABEL_7:
    v15 = sub_2529E7424();
    if (v15 >> 62)
    {
      v47 = v15;
      v16 = sub_252E378C4();
      v15 = v47;
      if (v16)
      {
LABEL_9:
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v19 = v15 & 0xFFFFFFFFFFFFFF8;
        v20 = v15 + 32;
        v60 = v15;
        v61 = v7;
        v51 = v15 & 0xC000000000000001;
        v52 = v16;
        v49 = v15 + 32;
        v50 = v15 & 0xFFFFFFFFFFFFFF8;
        v57 = v8;
        v58 = v1;
        v62 = v13;
        v55 = v10;
        v56 = v9;
        v53 = v12;
        v54 = v11;
        do
        {
          if (v18)
          {
            v46 = v17;
            v65 = MEMORY[0x2530ADF00](v17, v15);
            v14 = __OFADD__(v46, 1);
            v22 = v46 + 1;
            if (v14)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v17 >= *(v19 + 16))
            {
              goto LABEL_68;
            }

            v65 = *(v20 + 8 * v17);
            v21 = v17;

            v14 = __OFADD__(v21, 1);
            v22 = v21 + 1;
            if (v14)
            {
              goto LABEL_69;
            }
          }

          v59 = v22;
          v23 = sub_252E32E24();
          v68 = v24;
          v64 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
          v25 = [*(v65 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
          v63 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
          v7 = sub_252E37264();

          v1 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v7 >> 62)
          {
            v26 = sub_252E378C4();
          }

          else
          {
            v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = 0;
          v2 = v7 & 0xC000000000000001;
          while (v26 != v27)
          {
            if (v2)
            {
              v29 = MEMORY[0x2530ADF00](v27, v7);
            }

            else
            {
              if (v27 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v29 = *(v7 + 8 * v27 + 32);
            }

            v30 = v29;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v8 = sub_252E378C4();
              if (!v8)
              {
                goto LABEL_65;
              }

              goto LABEL_3;
            }

            v31 = [v29 uniqueIdentifier];
            sub_252E32E64();

            v32 = sub_252E32E24();
            v34 = v33;
            (*v66)(v5, v67);
            if (v32 == v23 && v34 == v68)
            {

LABEL_57:

              return;
            }

            v28 = sub_252E37DB4();

            ++v27;
            if (v28)
            {

              goto LABEL_57;
            }
          }

          v35 = [*(v65 + v64) services];
          v36 = sub_252E37264();

          if (v36 >> 62)
          {
            v7 = sub_252E378C4();
            if (v7)
            {
LABEL_28:
              v37 = 0;
              v63 = v36 & 0xFFFFFFFFFFFFFF8;
              v64 = v36 & 0xC000000000000001;
              do
              {
                if (v64)
                {
                  v38 = MEMORY[0x2530ADF00](v37, v36);
                }

                else
                {
                  if (v37 >= *(v63 + 16))
                  {
                    goto LABEL_63;
                  }

                  v38 = *(v36 + 8 * v37 + 32);
                }

                v39 = v38;
                v2 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_62;
                }

                v40 = [v38 assistantIdentifier];
                if (v40)
                {
                  v41 = v40;
                  v42 = sub_252E36F34();
                  v44 = v43;

                  if (v42 == v23 && v44 == v68)
                  {

                    goto LABEL_59;
                  }

                  v1 = sub_252E37DB4();

                  if (v1)
                  {

LABEL_59:

                    return;
                  }
                }

                else
                {
                }

                ++v37;
              }

              while (v2 != v7);
            }
          }

          else
          {
            v7 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
              goto LABEL_28;
            }
          }

          v12 = v53;
          v1 = v58;
          v17 = v59;
          v7 = v61;
          v9 = v56;
          v8 = v57;
          v11 = v54;
          v10 = v55;
          v15 = v60;
          v19 = v50;
          v18 = v51;
          v20 = v49;
        }

        while (v59 != v52);
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_9;
      }
    }

    if (v9 == v8)
    {
      goto LABEL_65;
    }
  }

  if (v9 >= *(v11 + 16))
  {
    goto LABEL_67;
  }

  v13 = *(v12 + 8 * v9);

  v14 = __OFADD__(v9++, 1);
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}