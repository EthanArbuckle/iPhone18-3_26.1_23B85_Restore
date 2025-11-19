uint64_t sub_2527547B8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_252754864;

  return sub_25274E700(a1);
}

uint64_t sub_252754864()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_252754958@<D0>(_OWORD *a1@<X8>)
{
  sub_2527553B8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_252754998(uint64_t a1)
{
  v2 = sub_25274E544();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2527549E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_252754A30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_252754A8C()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x69746E45656D6F68, 0xEC000000203A7974);
  v5 = *v0;
  sub_2528BE790();
  v6 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v6);

  MEMORY[0x2530A80B0](0x203A73656E6F7A20, 0xE800000000000000);
  v7 = v1[1];
  sub_2528BE790();
  if (v28)
  {
    v8 = type metadata accessor for ZoneEntity();
    v9 = MEMORY[0x2530A81C0](v28, v8);
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x2530A80B0](v9, v11);

  MEMORY[0x2530A80B0](0x203A736D6F6F7220, 0xE800000000000000);
  v12 = v1[2];
  sub_2528BE790();
  if (v28)
  {
    v13 = type metadata accessor for RoomEntity();
    v2 = MEMORY[0x2530A81C0](v28, v13);
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v2, v15);

  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  v16 = v1[3];
  sub_2528BE790();
  v17 = type metadata accessor for DeviceEntity();
  v18 = MEMORY[0x2530A81A0](v28, v17);
  v20 = v19;

  MEMORY[0x2530A80B0](v18, v20);

  MEMORY[0x2530A80B0](0xD000000000000011, 0x80000002528E56F0);
  v21 = v1[4];
  sub_2528BE790();
  v22 = MEMORY[0x2530A81A0](v28, &type metadata for AttributeKind);
  v24 = v23;

  MEMORY[0x2530A80B0](v22, v24);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  v25 = v1[5];
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v26 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v26);

  return 0;
}

uint64_t sub_252754DAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_252754E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

uint64_t sub_252755084@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - v5;
  sub_2527FECD0(&v48, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v8 = sub_252755F54();
  MEMORY[0x2530A60E0](&v34, &v48, v7, &type metadata for DeviceEntityFromAccessoryTypeResolver, v8);
  v41[4] = v52;
  v41[5] = v53;
  v41[6] = v54;
  v41[0] = v48;
  v41[1] = v49;
  v41[2] = v50;
  v41[3] = v51;
  v9 = sub_252755FA8(v41);
  sub_2527FECD0(&v48, v9);
  v10 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v27, &v48, v7, &type metadata for DeviceEntityFromInputTypeResolver, v10);
  v42[4] = v52;
  v42[5] = v53;
  v42[6] = v54;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  v42[3] = v51;
  sub_252756050(v42);
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_2527560A4(v43, &v48);
  sub_252756100();
  sub_2528BEAA0();
  v44[4] = v24;
  v44[5] = v25;
  v44[6] = v26;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  sub_252755FA8(v44);
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  sub_2527561B4(v45, &v48);
  v12[2] = v8;
  v12[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v46[4] = v17;
  v46[5] = v18;
  v46[6] = v19;
  v46[0] = v13;
  v46[1] = v14;
  v46[3] = v16;
  v46[2] = v15;
  sub_252756050(v46);
  (*(v2 + 8))(v6, v1);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[3] = v30;
  v47[2] = v29;
  sub_252756050(v47);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  return sub_252755FA8(&v48);
}

uint64_t sub_2527553B8@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v75 = *(v76 - 8);
  v1 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v69 - v2;
  v92 = sub_2528BE950();
  v3 = *(v92 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v92);
  v80 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v69 - v15;
  v73 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v69 - v19;
  v21 = sub_2528BEC40();
  v86 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  v26 = v25;
  sub_2528BEC20();
  v85 = *(v22 + 56);
  v87 = v22 + 56;
  v85(v20, 1, 1, v21);
  v27 = type metadata accessor for HomeEntity(0);
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = sub_2528BE630();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v91 = v30;
  v31 = v29 + 56;
  v30(v12, 1, 1, v28);
  v32 = v10;
  v30(v10, 1, 1, v28);
  v90 = *MEMORY[0x277CBA308];
  v33 = *(v3 + 104);
  v34 = v80;
  v33(v80);
  v84 = v3 + 104;
  sub_252756778(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v79 = v26;
  v88 = v20;
  v78 = v12;
  v35 = v32;
  v69 = v32;
  v73 = sub_2528BE7F0();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v36 = v20;
  v37 = v85;
  v38 = v86;
  v85(v36, 1, 1, v86);
  v97 = 0;
  v89 = v28;
  v39 = v91;
  v91(v12, 1, 1, v28);
  v39(v35, 1, 1, v28);
  v40 = v34;
  v82 = v33;
  (v33)(v34, v90, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  v81 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50);
  sub_252756778(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  v41 = v78;
  v42 = v88;
  v43 = v69;
  v72 = sub_2528BE7E0();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v37(v42, 1, 1, v38);
  v96 = 0;
  v44 = v89;
  v45 = v91;
  v83 = v31;
  v91(v41, 1, 1, v89);
  v45(v43, 1, 1, v44);
  v46 = v90;
  (v33)(v40, v90, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60);
  sub_252756778(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  v47 = v78;
  v48 = v88;
  v49 = v43;
  v71 = sub_2528BE7E0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v85(v48, 1, 1, v86);
  v95 = 0;
  v50 = v47;
  v51 = v47;
  v52 = v89;
  v53 = v91;
  v91(v50, 1, 1, v89);
  v53(v43, 1, 1, v52);
  v82(v40, v46, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70);
  sub_252756778(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v54 = v88;
  v55 = v51;
  v81 = sub_2528BE7E0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF0, &unk_2528C6600);
  sub_2528BEC20();
  v56 = v86;
  v57 = v85;
  v85(v54, 1, 1, v86);
  v93 = 0;
  v58 = v89;
  v59 = v91;
  v91(v55, 1, 1, v89);
  v59(v49, 1, 1, v58);
  v60 = v80;
  v61 = v82;
  v82(v80, v90, v92);
  sub_25272E944();
  v62 = v88;
  v63 = v60;
  v64 = sub_2528BE7D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v57(v62, 1, 1, v56);
  v93 = 0;
  v94 = 1;
  v91(v55, 1, 1, v89);
  (*(v75 + 104))(v74, *MEMORY[0x277CB9ED0], v76);
  v61(v63, v90, v92);
  result = sub_2528BE820();
  v66 = v77;
  v67 = v72;
  *v77 = v73;
  v66[1] = v67;
  v68 = v81;
  v66[2] = v71;
  v66[3] = v68;
  v66[4] = v64;
  v66[5] = result;
  return result;
}

unint64_t sub_252755F54()
{
  result = qword_27F4FCD10;
  if (!qword_27F4FCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD10);
  }

  return result;
}

unint64_t sub_252755FFC()
{
  result = qword_27F4FCD18;
  if (!qword_27F4FCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD18);
  }

  return result;
}

unint64_t sub_252756100()
{
  result = qword_27F4FCD20;
  if (!qword_27F4FCD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD08, &unk_2528C5B90);
    sub_252756778(&qword_27F4FCD28, type metadata accessor for DeviceEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD20);
  }

  return result;
}

unint64_t sub_252756210()
{
  result = qword_27F4FCD60;
  if (!qword_27F4FCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD60);
  }

  return result;
}

unint64_t sub_252756264()
{
  result = qword_27F4FCD68;
  if (!qword_27F4FCD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD58, &qword_2528C5C88);
    sub_252756778(&qword_27F4FCD70, type metadata accessor for RoomEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD68);
  }

  return result;
}

unint64_t sub_252756318()
{
  result = qword_27F4FCD80;
  if (!qword_27F4FCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD80);
  }

  return result;
}

unint64_t sub_25275636C()
{
  result = qword_27F4FCD88;
  if (!qword_27F4FCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD78, &qword_2528C5C90);
    sub_252756778(&qword_27F4FCD90, type metadata accessor for ZoneEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCD88);
  }

  return result;
}

uint64_t sub_252756420()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2527C4B6C(v2);
}

uint64_t sub_25275648C(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_2527536B0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_252756580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25275663C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowDeviceResultIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2527566A0()
{
  result = qword_27F4FCDE0;
  if (!qword_27F4FCDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCDD8, &qword_2528C5D00);
    sub_252756724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCDE0);
  }

  return result;
}

unint64_t sub_252756724()
{
  result = qword_27F4FCDE8;
  if (!qword_27F4FCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCDE8);
  }

  return result;
}

uint64_t sub_252756778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2527567C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252756878(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2528BF400() - 8);
  v6 = (*(v5 + 80) + 35) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 34);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2527228B0;

  return sub_252753BF0(a1, v8, v9, v11, v10, v1 + v6, v1 + v7);
}

unint64_t sub_2527569B0()
{
  result = qword_27F4FCE08;
  if (!qword_27F4FCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE08);
  }

  return result;
}

void sub_252756A58()
{
  v0 = sub_2528C09D0();
  v1 = MGGetSInt32Answer();

  dword_27F5028A0 = v1;
}

unint64_t sub_252756AB0()
{
  result = qword_27F4FCE18;
  if (!qword_27F4FCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE18);
  }

  return result;
}

unint64_t sub_252756B08()
{
  result = qword_27F4FCE20;
  if (!qword_27F4FCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE20);
  }

  return result;
}

unint64_t sub_252756BE0()
{
  result = qword_27F4FCE28;
  if (!qword_27F4FCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE28);
  }

  return result;
}

uint64_t sub_252756C34()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028A8);
  __swift_project_value_buffer(v0, qword_27F5028A8);
  return sub_2528BEC20();
}

uint64_t sub_252756CC8()
{
  v1 = *(v0 + 24);
  sub_2528BE790();
  return v3;
}

uint64_t sub_252756D20()
{
  v1 = *(v0 + 32);
  sub_2528BE790();
  return v3;
}

uint64_t sub_252756D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252756E4C, 0, 0);
}

uint64_t sub_252756E4C()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v3 = __swift_project_value_buffer(v2, qword_27F5025C8);
  v0[8] = v3;
  sub_2527BBAC8(v1, v3);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = sub_2528C0820();
  v6 = __swift_project_value_buffer(v5, qword_27F5025E0);
  v0[9] = v6;
  v0[10] = sub_2528B7B10(v4, v6);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_252756F94;
  v8 = v0[2];
  v9 = v0[3];

  return sub_252757290(v8);
}

uint64_t sub_252756F94()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2527571E0;
  }

  else
  {
    v3 = sub_2527570A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2527570A8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  (*(v5 + 16))(v3, v0[2], v6);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v3, v6);
  sub_2527BC844(v7, v1, sub_252756420, v9, v2);

  sub_2527BDFD0(v7, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2527571E0()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  sub_2527BE9EC(v4, *(v0 + 80), v1, *(v0 + 72));
  sub_2527C01D8(v4, v1, v2);
  swift_willThrow();

  v5 = *(v0 + 8);
  v6 = *(v0 + 96);

  return v5();
}

uint64_t sub_252757290(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = type metadata accessor for ShowDeviceResultIntent();
  v2[38] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v8 = sub_2528BE8B0();
  v2[42] = v8;
  v9 = *(v8 - 8);
  v2[43] = v9;
  v10 = *(v9 + 64) + 15;
  v2[44] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v12 = sub_2528BECF0();
  v2[46] = v12;
  v13 = *(v12 - 8);
  v2[47] = v13;
  v14 = *(v13 + 64) + 15;
  v2[48] = swift_task_alloc();
  v15 = type metadata accessor for DeviceEntity();
  v2[49] = v15;
  v16 = *(v15 - 8);
  v2[50] = v16;
  v17 = *(v16 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE40, &qword_2528C61C0) - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v23 = sub_2528BF400();
  v2[63] = v23;
  v24 = *(v23 - 8);
  v2[64] = v24;
  v2[65] = *(v24 + 64);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252757760, 0, 0);
}

uint64_t sub_252757760()
{
  v0[75] = *(v0[34] + 8);
  sub_2528BE790();
  v1 = *(v0[32] + 16);

  if (v1)
  {
    v2 = v0[74];
    v3 = v0[70];
    v0[76] = *(v0[34] + 16);
    sub_2528BE790();
    sub_2528BE790();
    v4 = v0[31];
    v0[77] = v4;
    v5 = sub_2528C05D0();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_task_alloc();
    v0[78] = v6;
    *v6 = v0;
    v6[1] = sub_252757AD0;
    v7 = v0[74];
    v8 = v0[70];

    return sub_25277ECE4(v7, v4, 0, v8);
  }

  else
  {
    type metadata accessor for HomeAppIntentError();
    sub_2527605EC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v10 = v0[74];
    v11 = v0[73];
    v12 = v0[72];
    v13 = v0[71];
    v14 = v0[70];
    v15 = v0[69];
    v16 = v0[68];
    v17 = v0[67];
    v18 = v0[66];
    v19 = v0[62];
    v21 = v0[61];
    v22 = v0[60];
    v23 = v0[59];
    v24 = v0[58];
    v25 = v0[57];
    v26 = v0[56];
    v27 = v0[55];
    v28 = v0[54];
    v29 = v0[53];
    v30 = v0[52];
    v31 = v0[51];
    v32 = v0[48];
    v33 = v0[45];
    v34 = v0[44];
    v35 = v0[41];
    v36 = v0[40];
    v37 = v0[39];
    v38 = v0[37];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_252757AD0(uint64_t a1)
{
  v2 = *(*v1 + 624);
  v3 = *(*v1 + 616);
  v4 = *(*v1 + 592);
  v5 = *(*v1 + 560);
  v7 = *v1;
  *(*v1 + 632) = a1;

  sub_2527213D8(v5, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252757C50, 0, 0);
}

uint64_t sub_252757C50()
{
  v1 = v0[58];
  sub_2527D38F8(v0[79], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[59];
    sub_2527213D8(v0[58], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = v0[76];
    v18 = v0[72];
    v19 = v0[35];
    v20 = v0[36];
    sub_2527213D8(v0[59], &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError();
    sub_2527605EC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v22 = v21;
    sub_2528BE790();
    v23 = *(v20 + 48);
    v24 = 1;
    if (!v23(v18, 1, v19))
    {
      (*(v0[47] + 16))(v22, v0[72], v0[46]);
      v24 = 0;
    }

    v25 = v0[76];
    v26 = v0[71];
    v28 = v0[46];
    v27 = v0[47];
    v29 = v0[35];
    sub_2527213D8(v0[72], &qword_27F4FC488, &unk_2528C3F80);
    (*(v27 + 56))(v22, v24, 1, v28);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48);
    sub_2528BE790();
    v31 = v23(v26, 1, v29);
    v32 = v0[71];
    if (v31)
    {
      sub_2527213D8(v32, &qword_27F4FC488, &unk_2528C3F80);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v35 = v0[37];
      v36 = v0[35];
      v37 = v0[71];
      sub_2527606B0(v32, v35, type metadata accessor for HomeEntity);
      sub_2527213D8(v37, &qword_27F4FC488, &unk_2528C3F80);
      v38 = *(v35 + *(v36 + 20));
      sub_2528BE6B0();
      v33 = v0[10];
      v34 = v0[11];
      sub_252760650(v35, type metadata accessor for HomeEntity);
    }

    v39 = (v22 + v30);
    *v39 = v33;
    v39[1] = v34;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v40 = v0[74];
    v41 = v0[73];
    v42 = v0[72];
    v43 = v0[71];
    v44 = v0[70];
    v45 = v0[69];
    v46 = v0[68];
    v47 = v0[67];
    v48 = v0[66];
    v49 = v0[62];
    v71 = v0[61];
    v72 = v0[60];
    v73 = v0[59];
    v74 = v0[58];
    v75 = v0[57];
    v76 = v0[56];
    v77 = v0[55];
    v78 = v0[54];
    v79 = v0[53];
    v80 = v0[52];
    v81 = v0[51];
    v82 = v0[48];
    v84 = v0[45];
    v86 = v0[44];
    v88 = v0[41];
    v89 = v0[40];
    v91 = v0[39];
    v93 = v0[37];

    v50 = v0[1];

    return v50();
  }

  v5 = v0[63];
  v6 = v0[64];
  v7 = v0[58];
  v8 = v0[59];
  v9 = v0[46];
  v10 = v0[47];
  v11 = v7 + *(v2 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v13 = *(v12 + 48);
  v14 = *(v6 + 16);
  v0[80] = v14;
  v0[81] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v95 = v14;
  v14(v8, v11, v5);
  v15 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v11 + *(v15 + 20), v8 + v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_252760650(v11, type metadata accessor for HomeEntity.SnapshotPair);
  v16 = *(v12 - 8);
  (*(v16 + 56))(v8, 0, 1, v12);
  (*(v10 + 8))(v7, v9);
  if ((*(v16 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v90 = v0[75];
  v92 = v0[76];
  v52 = v0[69];
  v53 = v0[68];
  v54 = v0[67];
  v85 = v54;
  v87 = v0[65];
  v56 = v0[63];
  v55 = v0[64];
  v57 = v0[62];
  v83 = v0[61];
  v58 = v0[59];
  v94 = v0[57];
  v59 = v0[34];
  v60 = *(v12 + 48);
  v61 = *(v55 + 32);
  v61(v52, v58, v56);
  sub_25274AA0C(v58 + v60, v57, &qword_27F4FCDB8, &unk_2528C5CC0);
  v95(v53, v52, v56);
  sub_25272006C(v57, v83, &qword_27F4FCDB8, &unk_2528C5CC0);
  v62 = sub_2528C0C40();
  (*(*(v62 - 8) + 56))(v94, 1, 1, v62);
  v0[82] = *v59;
  v0[83] = *(v59 + 3);
  v0[84] = *(v59 + 4);
  v0[85] = *(v59 + 5);
  v95(v85, v53, v56);
  v63 = (*(v55 + 80) + 80) & ~*(v55 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v65 = *v59;
  v66 = v59[2];
  *(v64 + 48) = v59[1];
  *(v64 + 64) = v66;
  *(v64 + 32) = v65;
  v61(v64 + v63, v85, v56);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3B74(0, 0, v94, &unk_2528C61D0, v64);

  v67 = swift_task_alloc();
  v0[86] = v67;
  *v67 = v0;
  v67[1] = sub_2527584A4;
  v68 = v0[68];
  v69 = v0[61];
  v70 = v0[34];

  return sub_25275A520(v68, v69);
}

uint64_t sub_2527584A4()
{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_25275A0A0;
  }

  else
  {
    v3 = sub_2527585B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2527585B8()
{
  v122 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 600);
  v3 = *(v0 + 544);
  v4 = *(v0 + 488);
  sub_2528BE790();
  v5 = *(v0 + 240);
  sub_2528BE790();
  v6 = sub_2527E50C0(v5, *(v0 + 176), v3, v4);
  *(v0 + 704) = v6;

  v110 = v6;
  if (sub_2528C0880())
  {
    v107 = v6 + 64;
    v111 = *(v0 + 400);
    v7 = -1;
    v8 = -1 << *(v6 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v6 + 64);
    v105 = (63 - v8) >> 6;

    v10 = 0;
    if (v9)
    {
      while (1)
      {
        v11 = v10;
LABEL_13:
        v14 = *(v0 + 432);
        v15 = *(v0 + 440);
        v16 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v17 = v16 | (v11 << 6);
        sub_2527606B0(*(v6 + 48) + *(v111 + 72) * v17, v14, type metadata accessor for DeviceEntity);
        v18 = *(*(v6 + 56) + 8 * v17);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
        v20 = *(v19 + 48);
        sub_252760718(v14, v15, type metadata accessor for DeviceEntity);
        *(v15 + v20) = v18;
        (*(*(v19 - 8) + 56))(v15, 0, 1, v19);

LABEL_14:
        v21 = *(v0 + 448);
        sub_25274AA0C(*(v0 + 440), v21, &qword_27F4FCE40, &qword_2528C61C0);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
        if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
        {
          break;
        }

        v23 = *(v0 + 448);
        v24 = *(v23 + *(v22 + 48));
        sub_252760718(v23, *(v0 + 424), type metadata accessor for DeviceEntity);
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v25 = *(v0 + 416);
        v26 = *(v0 + 424);
        v27 = sub_2528C08B0();
        __swift_project_value_buffer(v27, qword_27F5025C8);
        sub_2527606B0(v26, v25, type metadata accessor for DeviceEntity);

        v28 = sub_2528C0890();
        v29 = sub_2528C0D10();

        v30 = os_log_type_enabled(v28, v29);
        v31 = *(v0 + 416);
        v116 = *(v0 + 424);
        if (v30)
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v120 = v33;
          *v32 = 136315394;
          v114 = v11;
          v34 = DeviceEntity.debugDescription.getter();
          v36 = v35;
          sub_252760650(v31, type metadata accessor for DeviceEntity);
          v37 = sub_2527389AC(v34, v36, &v120);
          v6 = v110;

          *(v32 + 4) = v37;
          *(v32 + 12) = 2080;
          v38 = MEMORY[0x2530A81A0](v24, &type metadata for Attribute);
          v40 = v39;

          v41 = sub_2527389AC(v38, v40, &v120);

          *(v32 + 14) = v41;
          _os_log_impl(&dword_252711000, v28, v29, "SetAttributeValueIntent: %s will be set attributes %s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v33, -1, -1);
          MEMORY[0x2530A8D80](v32, -1, -1);

          sub_252760650(v116, type metadata accessor for DeviceEntity);
          v10 = v114;
        }

        else
        {

          sub_252760650(v31, type metadata accessor for DeviceEntity);
          sub_252760650(v116, type metadata accessor for DeviceEntity);
          v10 = v11;
        }

        if (!v9)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_37;
    }

LABEL_6:
    if (v105 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v105;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v105)
      {
        v42 = *(v0 + 440);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v9 = 0;
        v11 = v13;
        goto LABEL_14;
      }

      v9 = *(v107 + 8 * v11);
      ++v10;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else if (qword_27F4FBB40 == -1)
  {
    goto LABEL_24;
  }

  swift_once();
LABEL_24:
  v44 = *(v0 + 680);
  v45 = *(v0 + 672);
  v46 = *(v0 + 664);
  v47 = *(v0 + 656);
  v48 = *(v0 + 608);
  v49 = *(v0 + 600);
  v50 = sub_2528C08B0();
  __swift_project_value_buffer(v50, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v51 = sub_2528C0890();
  v52 = sub_2528C0D10();

  if (!os_log_type_enabled(v51, v52))
  {
LABEL_36:

    v6 = v110;
LABEL_37:
    v91 = *(v0 + 680);
    v92 = *(v0 + 608);
    v93 = *(v0 + 584);
    v94 = *(v0 + 352);
    v95 = *(v0 + 272);
    sub_2528BE790();
    sub_2528BE790();
    v96 = *(v0 + 128);
    v97 = *(v0 + 136);
    v99 = v95[1];
    v98 = v95[2];
    *(v0 + 16) = *v95;
    *(v0 + 32) = v99;
    *(v0 + 48) = v98;
    sub_252756BE0();
    sub_2528BE5B0();
    v100 = swift_task_alloc();
    *(v0 + 712) = v100;
    *v100 = v0;
    v100[1] = sub_2527590D4;
    v101 = *(v0 + 584);
    v102 = *(v0 + 544);
    v103 = *(v0 + 488);
    v104 = *(v0 + 352);

    return sub_252791C80(v6, v101, v96, v97, v102, v103);
  }

  v112 = v52;
  v53 = *(v0 + 656);
  v54 = *(v0 + 600);
  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v118 = v56;
  *v55 = 136446466;
  sub_2528BE790();
  v57 = MEMORY[0x2530A81A0](*(v0 + 224), &type metadata for Attribute);
  v59 = v58;

  v60 = sub_2527389AC(v57, v59, &v118);

  *(v55 + 4) = v60;
  *(v55 + 12) = 2082;
  sub_2528BE790();
  v61 = *(v0 + 232);
  v62 = *(v61 + 16);
  if (!v62)
  {
    v80 = *(v0 + 232);

    v65 = MEMORY[0x277D84F90];
LABEL_35:
    v87 = MEMORY[0x2530A81A0](v65, *(v0 + 368));
    v89 = v88;

    v90 = sub_2527389AC(v87, v89, &v118);

    *(v55 + 14) = v90;
    _os_log_impl(&dword_252711000, v51, v112, "SetAttributeValueIntent: will be set attributes %{public}s on devices %{public}s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v56, -1, -1);
    MEMORY[0x2530A8D80](v55, -1, -1);
    goto LABEL_36;
  }

  v106 = v56;
  v108 = v55;
  v109 = v51;
  v63 = *(v0 + 400);
  v117 = *(v0 + 408);
  v64 = *(v0 + 376);
  v119 = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v62, 0);
  v65 = v119;
  v66 = v61 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
  v113 = *(v63 + 72);
  v115 = v64;
  v67 = (v64 + 48);
  v68 = (v64 + 32);
  while (1)
  {
    v70 = *(v0 + 360);
    v69 = *(v0 + 368);
    sub_2527606B0(v66, *(v0 + 408), type metadata accessor for DeviceEntity);
    v71 = *(v117 + 8);
    sub_2528BE6B0();
    v72 = *(v0 + 96);
    v73 = *(v0 + 104);
    sub_2528BECA0();

    if ((*v67)(v70, 1, v69) == 1)
    {
      break;
    }

    v74 = *(v0 + 408);
    v75 = *v68;
    (*v68)(*(v0 + 384), *(v0 + 360), *(v0 + 368));
    sub_252760650(v74, type metadata accessor for DeviceEntity);
    v119 = v65;
    v77 = *(v65 + 16);
    v76 = *(v65 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_25282EFDC(v76 > 1, v77 + 1, 1);
      v65 = v119;
    }

    v78 = *(v0 + 384);
    v79 = *(v0 + 368);
    *(v65 + 16) = v77 + 1;
    v75(v65 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v77, v78, v79);
    v66 += v113;
    if (!--v62)
    {

      v55 = v108;
      v51 = v109;
      v56 = v106;
      goto LABEL_35;
    }
  }

  v81 = *(v0 + 408);
  v82 = *(v0 + 392);
  sub_2527213D8(*(v0 + 360), &qword_27F4FC628, &qword_2528C4750);
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_2528C0E70();
  v83 = v121;
  *(v0 + 64) = v120;
  *(v0 + 72) = v83;
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](*(v0 + 112), *(v0 + 120));

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  v84 = *(v0 + 64);
  v85 = *(v0 + 72);
  return sub_2528C0EE0();
}

uint64_t sub_2527590D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 712);
  v16 = *v2;
  v3[90] = a1;
  v3[91] = v1;

  v5 = v3[88];
  if (v1)
  {
    v6 = v3[73];
    v8 = v3[43];
    v7 = v3[44];
    v9 = v3[42];

    (*(v8 + 8))(v7, v9);
    sub_2527213D8(v6, &qword_27F4FC488, &unk_2528C3F80);
    v10 = sub_25275A2E0;
  }

  else
  {
    v11 = v3[73];
    v13 = v3[43];
    v12 = v3[44];
    v14 = v3[42];

    (*(v13 + 8))(v12, v14);
    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v10 = sub_25275927C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25275927C()
{
  v157 = v0;
  v152 = v0;
  if (sub_2528C0880())
  {
    v1 = *(v0 + 720);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 40);
      do
      {
        v15 = *(v3 - 1);
        v14 = *v3;
        v16 = qword_27F4FBB40;
        sub_2528BEA50();
        sub_2528BEA50();
        if (v16 != -1)
        {
          swift_once();
        }

        v17 = sub_2528C08B0();
        __swift_project_value_buffer(v17, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v18 = sub_2528C0890();
        v19 = sub_2528C0D10();

        if (os_log_type_enabled(v18, v19))
        {
          v4 = *(v152 + 432);
          v5 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *&v154[0] = v150;
          *v5 = 136315394;
          v148 = v19;
          sub_2528BE6B0();
          v6 = DeviceEntity.debugDescription.getter();
          v8 = v7;
          sub_252760650(v4, type metadata accessor for DeviceEntity);
          v9 = sub_2527389AC(v6, v8, v154);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          sub_2528BE6B0();
          v10 = MEMORY[0x2530A81C0](*(v152 + 216), &type metadata for AttributeResult);
          v12 = v11;

          v13 = sub_2527389AC(v10, v12, v154);

          *(v5 + 14) = v13;
          _os_log_impl(&dword_252711000, v18, v148, "SetAttributeValueIntent: %s resulted in %s", v5, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v150, -1, -1);
          MEMORY[0x2530A8D80](v5, -1, -1);
        }

        else
        {
        }

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 720);
    v21 = sub_2528C08B0();
    __swift_project_value_buffer(v21, qword_27F5025C8);

    v22 = sub_2528C0890();
    v23 = sub_2528C0D10();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 720);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      v156[0] = v26;
      *v25 = 136446210;
      v28 = *(v24 + 16);
      v29 = MEMORY[0x277D84F90];
      if (v28)
      {
        v151 = v26;
        v30 = *(v0 + 720);
        *&v154[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v28, 0);
        v29 = *&v154[0];
        v31 = (v30 + 40);
        do
        {
          v33 = *(v31 - 1);
          v32 = *v31;
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v34 = *(v152 + 208);
          *&v154[0] = v29;
          v36 = *(v29 + 16);
          v35 = *(v29 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_25282F0CC((v35 > 1), v36 + 1, 1);
            v29 = *&v154[0];
          }

          *(v29 + 16) = v36 + 1;
          *(v29 + 8 * v36 + 32) = v34;
          v31 += 2;
          --v28;
        }

        while (v28);
        v27 = v151;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v38 = MEMORY[0x2530A81C0](v29, v37);
      v40 = v39;

      v41 = sub_2527389AC(v38, v40, v156);

      *(v25 + 4) = v41;
      _os_log_impl(&dword_252711000, v22, v23, "SetAttributeValueIntent completed with results: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2530A8D80](v27, -1, -1);
      MEMORY[0x2530A8D80](v25, -1, -1);
    }
  }

  v42 = *(v152 + 656);
  v43 = *(v152 + 648);
  v45 = *(v152 + 480);
  v44 = *(v152 + 488);
  (*(v152 + 640))(*(v152 + 528), *(v152 + 544), *(v152 + 504));
  sub_25272006C(v44, v45, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2528BE790();
  v46 = *(v152 + 152);
  v47 = *(v46 + 16);
  if (v47)
  {
    v156[0] = MEMORY[0x277D84F90];
    sub_25282F064(0, v47, 0);
    v48 = v156[0];
    v49 = (v46 + 64);
    do
    {
      v50 = *v49;
      v51 = *(v49 - 1);
      v154[0] = *(v49 - 2);
      v154[1] = v51;
      v155 = v50;
      sub_252870158(&v153);
      v52 = v153;
      v156[0] = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_25282F064((v53 > 1), v54 + 1, 1);
        v48 = v156[0];
      }

      *(v48 + 16) = v54 + 1;
      *(v48 + v54 + 32) = v52;
      v49 += 40;
      --v47;
    }

    while (v47);
  }

  else
  {
    v55 = *(v152 + 152);

    v48 = MEMORY[0x277D84F90];
  }

  v56 = *(v152 + 720);
  v57 = *(v152 + 600);
  v58 = *(v152 + 528);
  v59 = *(v152 + 480);
  v60 = *(v152 + 320);
  sub_2528BE790();
  v61 = *(v152 + 160);
  ShowDeviceResultIntent.init()(v60);
  sub_252859C3C(v56, v58, v59, v154);
  v62 = v60[1];
  *(v152 + 137) = v154[0];
  sub_2528BE7A0();
  sub_2528BE790();
  v63 = *(v152 + 138);
  if (v63 == 4 || (sub_252852964(v63, 1u) & 1) == 0)
  {
  }

  else
  {
    v64 = *(v152 + 728);
    v65 = *(v152 + 720);
    v66 = *(v152 + 528);
    v67 = *(v152 + 320);
    v68 = swift_task_alloc();
    *(v68 + 16) = v66;
    *(v68 + 24) = v61;
    v69 = sub_252853180(sub_252760634, v68, v65);

    v70 = *(v67 + 48);
    *(v152 + 192) = v69;
    sub_2528BE7A0();
    v71 = *(v67 + 56);
    *(v152 + 200) = v65;

    sub_2528BE7A0();
  }

  sub_25285A33C(v48, v154);

  v72 = v154[0];
  if (LOBYTE(v154[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v73 = sub_2528C08B0();
    __swift_project_value_buffer(v73, qword_27F5025C8);
    v74 = sub_2528C0890();
    v75 = sub_2528C0D10();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v154[0] = v77;
      *v76 = 136315138;
      if (v72)
      {
        v78 = 0xD000000000000010;
      }

      else
      {
        v78 = 6449010;
      }

      if (v72)
      {
        v79 = 0x80000002528E51C0;
      }

      else
      {
        v79 = 0xE300000000000000;
      }

      v80 = sub_2527389AC(v78, v79, v154);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_252711000, v74, v75, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x2530A8D80](v77, -1, -1);
      MEMORY[0x2530A8D80](v76, -1, -1);
    }

    v81 = *(*(v152 + 320) + 64);
    *(v152 + 140) = v72 & 1;
    sub_2528BE7A0();
  }

  v82 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v152 + 720));
  v83 = v82;
  v85 = v84;
  v86 = *(v82 + 16);
  if (v86)
  {
    v87 = sub_252865988(*(v82 + 16), 0);
    v88 = sub_252868828(v154, v87 + 4, v86, v83);
    sub_25271A648();
    if (v88 == v86)
    {
      goto LABEL_48;
    }

    __break(1u);
  }

  v87 = MEMORY[0x277D84F90];
LABEL_48:
  v89 = *(*(v152 + 320) + 16);
  *(v152 + 168) = v87;
  sub_2528BE7A0();
  v90 = *(v85 + 16);
  if (v90)
  {
    v91 = sub_252865988(*(v85 + 16), 0);
    v92 = sub_252868828(v154, v91 + 4, v90, v85);
    sub_25271A648();
    if (v92 == v90)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  v91 = MEMORY[0x277D84F90];
LABEL_52:
  v93 = *(v152 + 528);
  v94 = *(v152 + 504);
  v95 = *(v152 + 512);
  v96 = *(v152 + 480);
  v98 = *(v152 + 320);
  v97 = *(v152 + 328);
  v99 = *(v98 + 24);
  *(v152 + 144) = v91;
  sub_2528BE7A0();
  sub_2527213D8(v96, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_252760718(v98, v97, type metadata accessor for ShowDeviceResultIntent);
  v100 = *(v95 + 8);
  v100(v93, v94);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v101 = *(v152 + 328);
  v102 = *(v152 + 312);
  v103 = sub_2528C08B0();
  __swift_project_value_buffer(v103, qword_27F5025C8);
  sub_2527606B0(v101, v102, type metadata accessor for ShowDeviceResultIntent);
  v104 = sub_2528C0890();
  v105 = sub_2528C0D10();
  v106 = os_log_type_enabled(v104, v105);
  v107 = *(v152 + 312);
  v149 = v100;
  if (v106)
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *&v154[0] = v109;
    *v108 = 136315138;
    v110 = *(v107 + 8);
    result = sub_2528BE790();
    v112 = *(v152 + 139);
    if (v112 <= 1)
    {
      if (*(v152 + 139))
      {
        v114 = 0x6B6E694C70656564;
      }

      else
      {
        v114 = 0x726577736E61;
      }

      if (*(v152 + 139))
      {
        v113 = 0xE800000000000000;
      }

      else
      {
        v113 = 0xE600000000000000;
      }
    }

    else if (v112 == 2)
    {
      v113 = 0xE600000000000000;
      v114 = 0x656369746F6ELL;
    }

    else
    {
      if (v112 != 3)
      {
        __break(1u);
        return result;
      }

      v113 = 0xE600000000000000;
      v114 = 0x686372616573;
    }

    sub_252760650(*(v152 + 312), type metadata accessor for ShowDeviceResultIntent);
    v115 = sub_2527389AC(v114, v113, v154);

    *(v108 + 4) = v115;
    _os_log_impl(&dword_252711000, v104, v105, "SetAttributeValueIntent returning ShowDeviceResultIntent for %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
    MEMORY[0x2530A8D80](v109, -1, -1);
    MEMORY[0x2530A8D80](v108, -1, -1);
  }

  else
  {

    sub_252760650(v107, type metadata accessor for ShowDeviceResultIntent);
  }

  v125 = *(v152 + 592);
  v126 = *(v152 + 584);
  v127 = *(v152 + 576);
  v128 = *(v152 + 568);
  v129 = *(v152 + 560);
  v116 = *(v152 + 552);
  v130 = *(v152 + 536);
  v131 = *(v152 + 528);
  v117 = *(v152 + 504);
  v123 = *(v152 + 544);
  v124 = *(v152 + 496);
  v118 = *(v152 + 488);
  v132 = *(v152 + 480);
  v133 = *(v152 + 472);
  v134 = *(v152 + 464);
  v135 = *(v152 + 456);
  v136 = *(v152 + 448);
  v137 = *(v152 + 440);
  v138 = *(v152 + 432);
  v139 = *(v152 + 424);
  v140 = *(v152 + 416);
  v141 = *(v152 + 408);
  v142 = *(v152 + 384);
  v143 = *(v152 + 360);
  v144 = *(v152 + 352);
  v119 = *(v152 + 328);
  v146 = *(v152 + 320);
  v120 = *(v152 + 304);
  v147 = *(v152 + 312);
  *(v152 + 184) = *(v152 + 720);
  v145 = *(v152 + 296);
  v121 = *(v152 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_2527605EC(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_252760650(v119, type metadata accessor for ShowDeviceResultIntent);
  sub_2527213D8(v118, &qword_27F4FCDB8, &unk_2528C5CC0);
  v149(v123, v117);
  sub_2527213D8(v124, &qword_27F4FCDB8, &unk_2528C5CC0);
  v149(v116, v117);

  v122 = *(v152 + 8);

  return v122();
}

uint64_t sub_25275A0A0()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_2527213D8(v0[61], &qword_27F4FCDB8, &unk_2528C5CC0);
  v6 = *(v4 + 8);
  v6(v2, v3);
  sub_2527213D8(v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  v6(v1, v3);
  v37 = v0[87];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v10 = v0[71];
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[62];
  v19 = v0[61];
  v20 = v0[60];
  v21 = v0[59];
  v22 = v0[58];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[54];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[51];
  v30 = v0[48];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[37];

  v17 = v0[1];

  return v17();
}

uint64_t sub_25275A2E0()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_2527213D8(v0[61], &qword_27F4FCDB8, &unk_2528C5CC0);
  v6 = *(v4 + 8);
  v6(v2, v3);
  sub_2527213D8(v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  v6(v1, v3);
  v37 = v0[91];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v10 = v0[71];
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[62];
  v19 = v0[61];
  v20 = v0[60];
  v21 = v0[59];
  v22 = v0[58];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[55];
  v26 = v0[54];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[51];
  v30 = v0[48];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[37];

  v17 = v0[1];

  return v17();
}

uint64_t sub_25275A520(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2528BF400();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275A61C, 0, 0);
}

uint64_t sub_25275A61C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  (*(v0[7] + 16))(v1, v5, v0[6]);
  sub_25272006C(v3, v2, &qword_27F4FCDB8, &unk_2528C5CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v5;
  v6[6] = v3;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_25275A778;

  return MEMORY[0x282200740]();
}

uint64_t sub_25275A778()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_25275A940;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_25275A894;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25275A894()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_2527213D8(v0[5], &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25275A940()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  sub_2527213D8(v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];
  v7 = v0[11];

  return v6();
}

uint64_t sub_25275A9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v8 = sub_2528C00D0();
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE50, &qword_2528C6208);
  v7[29] = v12;
  v13 = *(v12 - 8);
  v7[30] = v13;
  v14 = *(v13 + 64) + 15;
  v7[31] = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8);
  v7[32] = v15;
  v7[33] = *(v15 + 64);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v16 = sub_2528BF400();
  v7[36] = v16;
  v17 = *(v16 - 8);
  v7[37] = v17;
  v7[38] = *(v17 + 64);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v7[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275AC7C, 0, 0);
}

uint64_t sub_25275AC7C()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[37];
  v23 = v0[38];
  v21 = v1;
  v22 = v0[36];
  v33 = v0[35];
  v34 = v0[32];
  v35 = v0[33];
  v36 = v0[31];
  v4 = v0[21];
  v5 = v0[20];
  v31 = v0[19];
  v32 = v0[22];
  v30 = sub_2528C0C40();
  v29 = *(*(v30 - 8) + 56);
  v29(v2, 1, 1, v30);
  v25 = *v5;
  v26 = v5[1];
  v27 = v5[2];
  v28 = v5[3];
  v37 = v5[4];
  v24 = v5[5];
  (*(v3 + 16))(v1, v4, v22);
  v6 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = *v5;
  v9 = *(v5 + 2);
  *(v7 + 48) = *(v5 + 1);
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = *(v3 + 32);
  v0[42] = v10;
  v0[43] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v7 + v6, v21, v22);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_25275BDD4(v2, &unk_2528C6218, v7);
  sub_2527213D8(v2, &qword_27F4FCDA0, &unk_2528C6AC0);
  v29(v2, 1, 1, v30);
  sub_25272006C(v32, v33, &qword_27F4FCDB8, &unk_2528C5CC0);
  v11 = (*(v34 + 80) + 80) & ~*(v34 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = *v5;
  v14 = *(v5 + 2);
  *(v12 + 48) = *(v5 + 1);
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  sub_25274AA0C(v33, v12 + v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_25275BDD4(v2, &unk_2528C6228, v12);
  sub_2527213D8(v2, &qword_27F4FCDA0, &unk_2528C6AC0);
  v15 = *v31;
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  sub_2528C0C50();
  v16 = *(MEMORY[0x277D85828] + 4);
  v17 = swift_task_alloc();
  v0[45] = v17;
  *v17 = v0;
  v17[1] = sub_25275B034;
  v18 = v0[31];
  v19 = v0[29];

  return MEMORY[0x2822004E8](v0 + 2, 0, 0, v19, v0 + 18);
}

uint64_t sub_25275B034()
{
  v2 = *(*v1 + 360);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25275B498;
  }

  else
  {
    v3 = sub_25275B144;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25275B144()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 288);
    v3 = *(v0 + 296);
    v4 = *(v0 + 224);
    sub_25272C298((v0 + 16), (v0 + 48));
    sub_25272BF98(v0 + 48, v0 + 80);
    v5 = swift_dynamicCast();
    v6 = *(v3 + 56);
    if (v5)
    {
      v8 = *(v0 + 336);
      v7 = *(v0 + 344);
      v9 = *(v0 + 312);
      v10 = *(v0 + 288);
      v11 = *(v0 + 296);
      v12 = *(v0 + 224);
      v13 = *(v0 + 184);
      v6(v12, 0, 1, v10);
      v8(v9, v12, v10);
      (*(v11 + 40))(v13, v9, v10);
    }

    else
    {
      v23 = *(v0 + 224);
      v6(v23, 1, 1, *(v0 + 288));
      sub_2527213D8(v23, &qword_27F4FCD98, &qword_2528C6200);
    }

    v24 = *(v0 + 352);
    v25 = *(v0 + 272);
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    sub_25272C298((v0 + 48), (v0 + 112));
    v28 = swift_dynamicCast();
    v29 = *(v27 + 56);
    v30 = *(v0 + 272);
    if (v28)
    {
      v32 = *(v0 + 208);
      v31 = *(v0 + 216);
      v34 = *(v0 + 192);
      v33 = *(v0 + 200);
      v29(*(v0 + 272), 0, 1, v33);
      v35 = *(v32 + 32);
      v35(v31, v30, v33);
      sub_2527213D8(v34, &qword_27F4FCDB8, &unk_2528C5CC0);
      v35(v34, v31, v33);
      v29(v34, 0, 1, v33);
    }

    else
    {
      v29(*(v0 + 272), 1, 1, *(v0 + 200));
      sub_2527213D8(v30, &qword_27F4FCDB8, &unk_2528C5CC0);
    }

    v36 = *(MEMORY[0x277D85828] + 4);
    v37 = swift_task_alloc();
    *(v0 + 360) = v37;
    *v37 = v0;
    v37[1] = sub_25275B034;
    v38 = *(v0 + 248);
    v39 = *(v0 + 232);

    return MEMORY[0x2822004E8](v0 + 16, 0, 0, v39, v0 + 144);
  }

  else
  {
    v14 = *(v0 + 320);
    v15 = *(v0 + 328);
    v16 = *(v0 + 312);
    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_25275B498()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[28];
  v7 = v0[27];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25275B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25275B5A4, 0, 0);
}

uint64_t sub_25275B5A4()
{
  v1 = v0[2];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25275B664;
  v5 = v0[3];
  v4 = v0[4];

  return sub_25275B798(boxed_opaque_existential_0Tm, v4);
}

uint64_t sub_25275B664()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252760E64, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25275B798(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2528BEE30();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275B85C, 0, 0);
}

uint64_t sub_25275B85C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 8);
  sub_2528BE790();
  v4 = v0[2];
  v5 = sub_25278D334(MEMORY[0x277D84F90]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = sub_2527F2ADC(v5, sub_252760C64, v6, v4);
  v0[9] = v7;

  if (*(v7 + 16))
  {
    v8 = v0[8];
    v9 = v0[4];
    sub_2528BF2F0();
    sub_2528BEFC0();
    v10 = *(MEMORY[0x277D15430] + 4);
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_25275BA20;

    return MEMORY[0x28216EA40]();
  }

  else
  {
    v12 = v0[3];
    v13 = sub_2528BF400();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[8];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25275BA20(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  v3[11] = a1;

  v6 = *(MEMORY[0x277D15420] + 4);
  v7 = swift_task_alloc();
  v3[12] = v7;
  *v7 = v5;
  v7[1] = sub_25275BBA4;
  v8 = v3[9];
  v9 = v3[8];
  v10 = v3[3];

  return MEMORY[0x28216EA10](v10, v9, v8, 0, 1, 0);
}

uint64_t sub_25275BBA4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  v6 = v2[9];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25275BD54, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v7 = v2[8];

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_25275BD54()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_25275BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_25272006C(a1, v20 - v9, &qword_27F4FCDA0, &unk_2528C6AC0);
  v11 = sub_2528C0C40();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2527213D8(v10, &qword_27F4FCDA0, &unk_2528C6AC0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_2528C0BD0();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2528C0C30();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_25275BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25275BFF4, 0, 0);
}

uint64_t sub_25275BFF4()
{
  v1 = v0[2];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25275C0B4;
  v5 = v0[3];
  v4 = v0[4];

  return sub_25275C24C(boxed_opaque_existential_0Tm, v4);
}

uint64_t sub_25275C0B4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25275C1E8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25275C1E8()
{
  __swift_deallocate_boxed_opaque_existential_0(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_25275C24C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for DeviceEntity();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v8 = sub_2528BECF0();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v12 = sub_2528C0060();
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v16 = sub_2528C00D0();
  v3[25] = v16;
  v17 = *(v16 - 8);
  v3[26] = v17;
  v18 = *(v17 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275C4CC, 0, 0);
}

uint64_t sub_25275C4CC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  sub_25272006C(v0[11], v3, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[10];
    sub_2527213D8(v0[24], &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v5 + 56))(v6, 1, 1, v4);
    v7 = v0[27];
    v8 = v0[23];
    v9 = v0[24];
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[16];
    v13 = v0[13];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v0[28] = sub_2528BEFC0();
    v16 = *(MEMORY[0x277D15430] + 4);
    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    v17[1] = sub_25275C6A0;

    return MEMORY[0x28216EA40]();
  }
}

uint64_t sub_25275C6A0(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_25275C7A0, 0, 0);
}

uint64_t sub_25275C7A0()
{
  *(v0 + 248) = sub_2528C0C20();
  *(v0 + 256) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25275C838, v2, v1);
}

uint64_t sub_25275C838()
{
  v1 = v0[32];
  v2 = v0[30];

  v0[33] = [v2 sortedHomes];

  return MEMORY[0x2822009F8](sub_25275C8C4, 0, 0);
}

uint64_t sub_25275C8C4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  sub_252760B90();
  v3 = sub_2528C0B30();

  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_2527AAE00(sub_252760BDC, v4, v3);
  *(v0 + 272) = v5;

  if (v5)
  {
    v6 = *(v0 + 216);
    v7 = **(v0 + 96);
    sub_2528BE790();
    v8 = *(v0 + 64);
    v9 = swift_task_alloc();
    *(v9 + 16) = v6;
    v10 = sub_25275D4B4(MEMORY[0x277D84FA0], sub_252760BFC, v9, v8);
    *(v0 + 280) = v10;

    if (*(v10 + 16))
    {
      v11 = *(v0 + 248);
      *(v0 + 288) = sub_2528C0C10();
      v13 = sub_2528C0BD0();

      return MEMORY[0x2822009F8](sub_25275CB6C, v13, v12);
    }

    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 200);
    (*(v18 + 56))(*(v0 + 80), 1, 1, v19);

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    (*(v15 + 56))(*(v0 + 80), 1, 1, v16);
    (*(v15 + 8))(v14, v16);
  }

  v20 = *(v0 + 216);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v25 = *(v0 + 128);
  v26 = *(v0 + 104);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_25275CB6C()
{
  v1 = v0[36];
  v2 = v0[28];

  v0[37] = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_25275CBE0, 0, 0);
}

uint64_t sub_25275CBE0()
{
  v1 = v0[34];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[12];
  *v2 = v0[35];
  v2[1] = v1;
  v6 = *MEMORY[0x277D16508];
  (*(v3 + 104))();
  v7 = *(v5 + 8);
  v8 = v1;
  sub_2528BE790();
  v9 = v0[9];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v0[18];
    v12 = v0[15];
    v48 = v0[16];
    v49 = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v10, 0);
    v13 = v49;
    v14 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v46 = *(v12 + 72);
    v47 = v11;
    v15 = (v11 + 48);
    v16 = (v11 + 32);
    while (1)
    {
      v17 = v0[17];
      v18 = v0[13];
      sub_2527606B0(v14, v0[16], type metadata accessor for DeviceEntity);
      v19 = *(v48 + 8);
      sub_2528BE6B0();
      v20 = v0[2];
      v21 = v0[3];
      sub_2528BECA0();

      v22 = (*v15)(v18, 1, v17);
      v23 = v0[16];
      if (v22 == 1)
      {
        break;
      }

      v24 = *v16;
      (*v16)(v0[19], v0[13], v0[17]);
      sub_252760650(v23, type metadata accessor for DeviceEntity);
      v26 = *(v49 + 16);
      v25 = *(v49 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_25282EFDC(v25 > 1, v26 + 1, 1);
      }

      v27 = v0[19];
      v28 = v0[17];
      *(v49 + 16) = v26 + 1;
      v24(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26, v27, v28);
      v14 += v46;
      if (!--v10)
      {

        goto LABEL_10;
      }
    }

    v30 = v0[14];
    sub_2527213D8(v0[13], &qword_27F4FC628, &qword_2528C4750);
    sub_2528C0E70();
    v0[4] = 0;
    v0[5] = 0xE000000000000000;
    MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
    sub_2528C0ED0();
    MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
    sub_2528BE6B0();
    MEMORY[0x2530A80B0](v0[6], v0[7]);

    MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
    v31 = v0[4];
    v32 = v0[5];
    return sub_2528C0EE0();
  }

  else
  {
    v29 = v0[9];

    v13 = MEMORY[0x277D84F90];
LABEL_10:
    v34 = v0[34];
    v35 = v0[20];
    v36 = sub_252743D54(v13);

    *v35 = v36;
    v37 = *MEMORY[0x277D16518];
    v38 = sub_2528C00B0();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
    v40 = *(MEMORY[0x277D16AE8] + 4);
    v41 = swift_task_alloc();
    v0[38] = v41;
    *v41 = v0;
    v41[1] = sub_25275D048;
    v42 = v0[37];
    v43 = v0[23];
    v44 = v0[20];
    v45 = v0[10];

    return MEMORY[0x282170970](v45, v43, v34, v44);
  }
}

uint64_t sub_25275D048()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 160);
  v8 = *v0;

  sub_2527213D8(v6, &qword_27F4FC478, &unk_2528C3F70);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_25275D1F0, 0, 0);
}

uint64_t sub_25275D1F0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 80);

  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v11 = *(v0 + 104);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25275D2F4(id *a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = [*a1 uniqueIdentifier];
  sub_2528BECD0();

  sub_2528C00C0();
  v11 = sub_2528BECC0();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  return v11 & 1;
}

uint64_t sub_25275D444@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 32);

  v5 = sub_25284C9B4();
  result = sub_25281A1D8(v5, v4);
  *a3 = result;
  return result;
}

uint64_t sub_25275D4B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v22 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 64);
    while (1)
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *(v10 - 3);
      v14 = *v10;
      v17 = *(v10 - 4);
      v18 = v13;
      v19 = v11;
      v20 = v12;
      v21 = v14;
      sub_252760C18(v17, v13, v11, v12, v14);
      a2(&v16, &v22, &v17);
      if (v5)
      {
        break;
      }

      v10 += 40;
      sub_25272C15C(v17, v18, v19, v20, v21);

      v8 = v16;
      v22 = v16;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_25272C15C(v17, v18, v19, v20, v21);
  }

  return v8;
}

uint64_t sub_25275D59C(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v40 = a4;
  v43 = a1;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BF9D0();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v39 - v16);
  v42 = a3;
  v18 = sub_2528BF370();
  v41 = a2;
  sub_252819FA8(v10);
  if (*(v18 + 16) && (v19 = sub_252785C40(v10), (v20 & 1) != 0))
  {
    v21 = v44;
    v22 = v11;
    (*(v44 + 16))(v15, *(v18 + 56) + *(v44 + 72) * v19, v11);
    (*(v7 + 8))(v10, v6);

    (*(v21 + 32))(v17, v15, v11);
    v23 = *v40;
    v24 = sub_2528BE790();
    v25 = v47;
    MEMORY[0x28223BE20](v24);
    v26 = v41;
    *(&v39 - 2) = v41;
    v27 = v45;
    v28 = sub_2528534E8(sub_252760C80, (&v39 - 4), v25);

    v29 = sub_252744064(v28);

    if (*(v29 + 16))
    {
      v30 = v43;
      v31 = *v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v30;
      sub_25278BA60(v29, v17, isUniquelyReferenced_nonNull_native);
      v33 = v47;
      *v30 = v47;
    }

    else
    {

      v30 = v43;
      v33 = *v43;
    }

    v35 = *(v26 + 16);
    sub_2528BE6B0();
    v46 = v47;
    v36 = sub_2527E6564(&v46, v17, v42);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v33;
    sub_25275F614(v36, sub_25275F560, 0, v37, &v47);
    if (v27)
    {

      __break(1u);
    }

    else
    {

      v38 = v47;
      result = (*(v44 + 8))(v17, v22);
      *v30 = v38;
    }
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void *sub_25275D958@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 32);
  v4 = *(a2 + 16);
  sub_2528BE6B0();
  v9[0] = v9[1];
  result = sub_2527E5624(v9);
  *a3 = result;
  return result;
}

uint64_t sub_25275D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_25275D9E4, 0, 0);
}

uint64_t sub_25275D9E4()
{
  v6 = *(v0 + 24);
  v1 = *v6;
  sub_2528BE790();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v6;
  sub_2527E5018(sub_252760C9C, v3, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25275DAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v11;
  v24 = *(a1 + 32);
  v12 = *(a2 + 8);
  sub_2528BE790();
  v13 = v25;
  v25 = MEMORY[0x277D84FA0];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    do
    {
      sub_2527606B0(v15, v10, type metadata accessor for DeviceEntity);
      v17 = *(v10 + 2);
      sub_2528BE6B0();
      sub_25273A214(&v22, v21[6]);
      sub_252760650(v10, type metadata accessor for DeviceEntity);
      v15 += v16;
      --v14;
    }

    while (v14);

    v19 = v25;
  }

  else
  {

    v19 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v18);
  *&v21[-16] = v23;
  *&v21[-12] = a3;
  *&v21[-8] = a2;
  sub_2527E4D64(sub_252760CB8, &v21[-24], v19);
}

uint64_t sub_25275DC9C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2528BF400();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27[-v14];
  v28 = *a1;
  v16 = sub_2528C0C40();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, a3, v8);
  v17 = a4[1];
  v29 = *a4;
  v30 = v17;
  v18 = a4[3];
  v31 = a4[2];
  v32 = v18;
  v19 = a4[5];
  v33 = a4[4];
  v34 = v19;
  v20 = (*(v9 + 80) + 73) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v28;
  v23 = *(a2 + 16);
  *(v22 + 40) = *a2;
  *(v22 + 56) = v23;
  *(v22 + 72) = *(a2 + 32);
  (*(v9 + 32))(v22 + v20, v11, v8);
  v24 = (v22 + v21);
  v25 = *(a4 + 1);
  *v24 = *a4;
  v24[1] = v25;
  v24[2] = *(a4 + 2);
  sub_252760E08(a2, v35);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v15, &unk_2528C6270, v22);
}

uint64_t sub_25275DF24(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 296) = a6;
  *(v7 + 304) = a7;
  *(v7 + 90) = a4;
  *(v7 + 280) = a1;
  *(v7 + 288) = a5;
  v8 = sub_2528BEC90();
  *(v7 + 312) = v8;
  v9 = *(v8 - 8);
  *(v7 + 320) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  v11 = sub_2528BEEC0();
  *(v7 + 336) = v11;
  v12 = *(v11 - 8);
  *(v7 + 344) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v14 = sub_2528BF400();
  *(v7 + 360) = v14;
  v15 = *(v14 - 8);
  *(v7 + 368) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v18 = sub_2528BE8B0();
  *(v7 + 408) = v18;
  v19 = *(v18 - 8);
  *(v7 + 416) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  v21 = sub_2528BECF0();
  *(v7 + 432) = v21;
  v22 = *(v21 - 8);
  *(v7 + 440) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 448) = swift_task_alloc();
  v24 = sub_2528BEE30();
  *(v7 + 456) = v24;
  v25 = *(v24 - 8);
  *(v7 + 464) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275E214, 0, 0);
}

uint64_t sub_25275E214()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 448);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v19 = *(v0 + 400);
  v20 = *(v0 + 408);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 288);
  v10 = *(v9 + 32);
  v11 = *(v9 + 16);
  *(v0 + 224) = *v9;
  *(v0 + 240) = v11;
  *(v0 + 256) = v10;
  sub_252870158((v0 + 89));
  *(v0 + 92) = *(v0 + 89);
  sub_2528BF2F0();
  sub_2528BEE00();
  v12 = *(v2 + 8);
  *(v0 + 488) = v12;
  *(v0 + 496) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v3);
  v13 = *v7;
  v14 = v7[2];
  *(v0 + 192) = v7[1];
  *(v0 + 208) = v14;
  *(v0 + 176) = v13;
  sub_252756BE0();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v20);
  v15 = *(v7 + 5);
  sub_2528BE790();
  *(v0 + 504) = *(v0 + 264);
  *(v0 + 93) = *(v0 + 272);
  sub_2528BEFC0();
  v16 = *(MEMORY[0x277D15430] + 4);
  v17 = swift_task_alloc();
  *(v0 + 512) = v17;
  *v17 = v0;
  v17[1] = sub_25275E3BC;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25275E3BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v7 = *v1;
  *(v3 + 520) = a1;

  v5 = swift_task_alloc();
  *(v3 + 528) = v5;
  *v5 = v7;
  v5[1] = sub_25275E508;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_25275E508(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_25275E608, 0, 0);
}

uint64_t sub_25275E608()
{
  v1 = *(v0 + 536);

  if (*(v1 + 16) && (v2 = *(v0 + 536), v3 = sub_252785C40(*(v0 + 448)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 392);
    v63 = *(v0 + 400);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    (*(v10 + 16))(v11, *(*(v0 + 536) + 56) + *(v10 + 72) * v3, v12);

    sub_2528BEE70();
    (*(v10 + 8))(v11, v12);
    (*(v9 + 32))(v6, v7, v8);
    sub_25272006C(v63, v5, &qword_27F4FCE00, &qword_2528C5D20);
    v13 = sub_2528BE890();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v5, 1, v13);
    v16 = *(v0 + 392);
    if (v15 == 1)
    {
      sub_2527213D8(*(v0 + 392), &qword_27F4FCE00, &qword_2528C5D20);
      v64 = 0;
    }

    else
    {
      v64 = sub_2528BE880();
      (*(v14 + 8))(v16, v13);
    }

    v23 = v15 == 1;
    v57 = *(v0 + 488);
    v58 = *(v0 + 496);
    v24 = *(v0 + 472);
    v56 = *(v0 + 456);
    v61 = *(v0 + 448);
    v62 = *(v0 + 92);
    v25 = *(v0 + 440);
    v59 = *(v0 + 400);
    v60 = *(v0 + 432);
    v26 = *(v0 + 384);
    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v30 = *(v0 + 320);
    v29 = *(v0 + 328);
    v31 = *(v0 + 312);
    v32 = *(v0 + 90);
    *(v0 + 544) = v23;
    sub_2528BEC80();
    sub_2528BEC60();
    v34 = v33;
    (*(v30 + 8))(v29, v31);
    sub_2528BF2F0();
    v35 = sub_2528BEDD0();
    v57(v24, v56);
    (*(v27 + 8))(v26, v28);
    sub_2527213D8(v59, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v25 + 8))(v61, v60);
    v36 = qword_2528C6290[v62];
    v37 = *(v0 + 504);
    if ((v32 & 0xC000) == 0x4000)
    {
      v38 = HIBYTE(v32) & 0x3F;
    }

    else
    {
      v38 = v32;
    }

    v39 = *(v0 + 280);
    *(v0 + 552) = *(v0 + 93);
    v40 = *(v0 + 544);
    v41 = *(v0 + 552);
    *(v0 + 96) = 0xD000000000000026;
    *(v0 + 104) = 0x80000002528E5780;
    *(v0 + 112) = v64;
    *(v0 + 120) = v40;
    *(v0 + 128) = v34;
    *(v0 + 136) = v35 & 1;
    *(v0 + 144) = v38 + 1;
    *(v0 + 152) = v36;
    *(v0 + 160) = v37;
    *(v0 + 168) = v41;
    sub_2527569B0();
    sub_2528BFA10();
    v42 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v42;
    *(v0 + 73) = *(v0 + 153);
    v43 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v43;
    sub_252756A04(v0 + 16);
    *v39 = 0;
  }

  else
  {
    v17 = *(v0 + 536);
    v19 = *(v0 + 440);
    v18 = *(v0 + 448);
    v20 = *(v0 + 432);
    v21 = *(v0 + 400);
    v22 = *(v0 + 280);

    sub_2527213D8(v21, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v19 + 8))(v18, v20);
    *v22 = 1;
  }

  v45 = *(v0 + 472);
  v44 = *(v0 + 480);
  v46 = *(v0 + 448);
  v47 = *(v0 + 424);
  v49 = *(v0 + 392);
  v48 = *(v0 + 400);
  v51 = *(v0 + 376);
  v50 = *(v0 + 384);
  v52 = *(v0 + 352);
  v53 = *(v0 + 328);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_25275EA4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB658 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25275EAF4(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_252754864;

  return sub_252756D78(a1);
}

double sub_25275EBA0@<D0>(_OWORD *a1@<X8>)
{
  sub_25275F958(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_25275EBE0(uint64_t a1)
{
  v2 = sub_252756BE0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_25275EC2C()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x69746E45656D6F68, 0xEC000000203A7974);
  v5 = v0[2];
  sub_2528BE790();
  v6 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v6);

  MEMORY[0x2530A80B0](0x203A73656E6F7A20, 0xE800000000000000);
  v7 = v1[3];
  sub_2528BE790();
  if (v28)
  {
    v8 = type metadata accessor for ZoneEntity();
    v9 = MEMORY[0x2530A81C0](v28, v8);
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x2530A80B0](v9, v11);

  MEMORY[0x2530A80B0](0x203A736D6F6F7220, 0xE800000000000000);
  v12 = v1[4];
  sub_2528BE790();
  if (v28)
  {
    v13 = type metadata accessor for RoomEntity();
    v2 = MEMORY[0x2530A81C0](v28, v13);
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v2, v15);

  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  v16 = v1[1];
  sub_2528BE790();
  v17 = type metadata accessor for DeviceEntity();
  v18 = MEMORY[0x2530A81A0](v28, v17);
  v20 = v19;

  MEMORY[0x2530A80B0](v18, v20);

  MEMORY[0x2530A80B0](0x7562697274746120, 0xED0000203A736574);
  v21 = *v1;
  sub_2528BE790();
  v22 = MEMORY[0x2530A81A0](v28, &type metadata for Attribute);
  v24 = v23;

  MEMORY[0x2530A80B0](v22, v24);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  v25 = v1[5];
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v26 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v26);

  return 0;
}

uint64_t sub_25275EF54@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - v5;
  sub_2527FECD0(&v48, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v8 = sub_252755F54();
  MEMORY[0x2530A60E0](&v34, &v48, v7, &type metadata for DeviceEntityFromAccessoryTypeResolver, v8);
  v41[4] = v52;
  v41[5] = v53;
  v41[6] = v54;
  v41[0] = v48;
  v41[1] = v49;
  v41[2] = v50;
  v41[3] = v51;
  v9 = sub_252755FA8(v41);
  sub_2527FECD0(&v48, v9);
  v10 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v27, &v48, v7, &type metadata for DeviceEntityFromInputTypeResolver, v10);
  v42[4] = v52;
  v42[5] = v53;
  v42[6] = v54;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  v42[3] = v51;
  sub_252756050(v42);
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_2527560A4(v43, &v48);
  sub_252756100();
  sub_2528BEAA0();
  v44[4] = v24;
  v44[5] = v25;
  v44[6] = v26;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  sub_252755FA8(v44);
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  sub_2527561B4(v45, &v48);
  v12[2] = v8;
  v12[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v46[4] = v17;
  v46[5] = v18;
  v46[6] = v19;
  v46[0] = v13;
  v46[1] = v14;
  v46[3] = v16;
  v46[2] = v15;
  sub_252756050(v46);
  (*(v2 + 8))(v6, v1);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[3] = v30;
  v47[2] = v29;
  sub_252756050(v47);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  return sub_252755FA8(&v48);
}

uint64_t sub_25275F288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_25275F368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

uint64_t sub_25275F560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE70, &qword_2528C6260) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030) + 48);
  v6 = *(a1 + v4);
  v7 = sub_2528BF9D0();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_25275F614(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v48 = sub_2528BF9D0();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE60, &unk_2528C6250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;
  v22 = (v9 + 32);
  v46 = (v9 + 8);
  v47 = v9;

  v45 = a3;
  sub_2528BEA50();
  while (1)
  {
    sub_2527E2E0C(v16);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030);
    if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
    {
      sub_25271A648();
    }

    v26 = *(v25 + 48);
    v27 = *v22;
    (*v22)(v12, v16, v48);
    v28 = *&v16[v26];
    v29 = *v56;
    v31 = sub_252785D14(v12);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_2527E1078();
      }
    }

    else
    {
      v36 = v56;
      sub_2527DDCC4(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_252785D14(v12);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v31 = v38;
    }

    v40 = *v56;
    if (v35)
    {
      (*v46)(v12, v48);
      v23 = v40[7];
      v24 = *(v23 + 8 * v31);
      *(v23 + 8 * v31) = v28;

      a4 = 1;
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v27((v40[6] + *(v47 + 72) * v31), v12, v48);
      *(v40[7] + 8 * v31) = v28;
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25275F958@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v1);
  v69 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v59 - v6;
  v81 = sub_2528BE950();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v81);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v59 - v19;
  v21 = sub_2528BEC40();
  v83 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE30, &unk_2528C6090);
  sub_2528BEC20();
  v26 = *(v22 + 56);
  v82 = v22 + 56;
  v84 = v26;
  v26(v20, 1, 1, v21);
  v27 = sub_2528BE630();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v29(v16, 1, 1, v27);
  v80 = *MEMORY[0x277CBA308];
  v77 = *(v7 + 104);
  v77(v10);
  v78 = v7 + 104;
  sub_2527604A4();
  v74 = v20;
  v61 = v16;
  v68 = sub_2528BE7C0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v84(v20, 1, 1, v83);
  v89 = 0;
  v79 = v30;
  v29(v16, 1, 1, v27);
  v31 = v64;
  v29(v64, 1, 1, v27);
  (v77)(v10, v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v73 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70);
  sub_2527605EC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v32 = v25;
  v33 = v74;
  v34 = v61;
  v35 = v31;
  v67 = sub_2528BE7E0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v36 = v83;
  v84(v33, 1, 1, v83);
  v37 = type metadata accessor for HomeEntity(0);
  (*(*(v37 - 8) + 56))(v66, 1, 1, v37);
  v38 = v34;
  v75 = v27;
  v76 = v29;
  v29(v34, 1, 1, v27);
  v29(v31, 1, 1, v27);
  v60 = v10;
  v39 = v81;
  v40 = v77;
  (v77)(v10, v80, v81);
  sub_2527605EC(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v62 = v32;
  v41 = v74;
  v66 = sub_2528BE7F0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v84(v41, 1, 1, v36);
  v88 = 0;
  v42 = v38;
  v43 = v38;
  v44 = v75;
  v45 = v76;
  v76(v42, 1, 1, v75);
  v45(v35, 1, 1, v44);
  v46 = v60;
  v47 = v80;
  (v40)(v60, v80, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50);
  sub_2527605EC(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  v48 = v74;
  v65 = sub_2528BE7E0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v84(v48, 1, 1, v83);
  v87 = 0;
  v49 = v75;
  v50 = v76;
  v76(v43, 1, 1, v75);
  v50(v35, 1, 1, v49);
  v51 = v47;
  v52 = v81;
  v53 = v77;
  (v77)(v46, v51, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60);
  sub_2527605EC(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  v54 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v84(v48, 1, 1, v83);
  v85 = 0;
  v86 = 1;
  v76(v43, 1, 1, v75);
  (*(v70 + 104))(v69, *MEMORY[0x277CB9ED0], v71);
  (v53)(v46, v80, v52);
  result = sub_2528BE820();
  v56 = v72;
  v57 = v67;
  *v72 = v68;
  v56[1] = v57;
  v58 = v65;
  v56[2] = v66;
  v56[3] = v58;
  v56[4] = v54;
  v56[5] = result;
  return result;
}

unint64_t sub_2527604A4()
{
  result = qword_27F4FCE38;
  if (!qword_27F4FCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE38);
  }

  return result;
}

uint64_t sub_2527604F8(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_25275D9C4(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2527605EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252760650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2527606B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252760718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252760780(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25271F3AC;

  return sub_25275A9F4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  v11 = *(v0 + 8);

  v12 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25276094C(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2527228B0;

  return sub_25275B580(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_252760A40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2527228B0;

  return sub_25275BFD0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2530A8D80);
  }

  return result;
}

unint64_t sub_252760B90()
{
  result = qword_27F4FCE58;
  if (!qword_27F4FCE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4FCE58);
  }

  return result;
}

uint64_t sub_252760C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xFE) == 0x62)
  {
  }

  return result;
}

uint64_t sub_252760CD8(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 73) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2527228B0;

  return sub_25275DF24(a1, v7, v8, v9, v1 + 40, v1 + v5, v1 + v6);
}

unint64_t sub_252760E6C()
{
  result = qword_27F4FCE78;
  if (!qword_27F4FCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE78);
  }

  return result;
}

unint64_t sub_252760EC4()
{
  result = qword_27F4FCE80;
  if (!qword_27F4FCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE80);
  }

  return result;
}

unint64_t sub_252760F9C()
{
  result = qword_27F4FCE88;
  if (!qword_27F4FCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE88);
  }

  return result;
}

uint64_t sub_252760FF0()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028C0);
  __swift_project_value_buffer(v0, qword_27F5028C0);
  return sub_2528BEC20();
}

uint64_t sub_252761054(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252761128, 0, 0);
}

uint64_t sub_252761128()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v2, qword_27F5025C8);
  sub_2527BBD58(v1);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v4, qword_27F5025E0);
  v0[10] = sub_2528B7F30(v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_252761270;
  v6 = v0[2];
  v7 = v0[3];

  return sub_25276156C(v6);
}

uint64_t sub_252761270()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2527614BC;
  }

  else
  {
    v3 = sub_252761384;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252761384()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  (*(v4 + 16))(v3, v0[2], v5);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v3, v5);
  sub_2527BCC8C(v6, v1, sub_252756420);

  sub_2527BE1B4(v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2527614BC()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[3];
  sub_2527BEE38(v5, v0[10], v1);
  sub_2527C0430(v5, v1);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_25276156C(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = type metadata accessor for ShowDeviceResultIntent();
  v2[47] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v8 = sub_2528BECF0();
  v2[51] = v8;
  v9 = *(v8 - 8);
  v2[52] = v9;
  v10 = *(v9 + 64) + 15;
  v2[53] = swift_task_alloc();
  v11 = sub_2528BEEC0();
  v2[54] = v11;
  v12 = *(v11 - 8);
  v2[55] = v12;
  v13 = *(v12 + 64) + 15;
  v2[56] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v15 = *(type metadata accessor for DeviceEntity() - 8);
  v2[60] = v15;
  v16 = *(v15 + 64) + 15;
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v18 = sub_2528C0060();
  v2[64] = v18;
  v19 = *(v18 - 8);
  v2[65] = v19;
  v20 = *(v19 + 64) + 15;
  v2[66] = swift_task_alloc();
  v21 = sub_2528BEE30();
  v2[67] = v21;
  v22 = *(v21 - 8);
  v2[68] = v22;
  v23 = *(v22 + 64) + 15;
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v24 = sub_2528C00D0();
  v2[72] = v24;
  v25 = *(v24 - 8);
  v2[73] = v25;
  v26 = *(v25 + 64) + 15;
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v27 = sub_2528BE8B0();
  v2[76] = v27;
  v28 = *(v27 - 8);
  v2[77] = v28;
  v29 = *(v28 + 64) + 15;
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0) - 8) + 64) + 15;
  v2[82] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v34 = sub_2528BF400();
  v2[87] = v34;
  v35 = *(v34 - 8);
  v2[88] = v35;
  v2[89] = *(v35 + 64);
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[92] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252761BCC, 0, 0);
}

uint64_t sub_252761BCC()
{
  v0[98] = *(v0[43] + 8);
  sub_2528BE790();
  v1 = *(v0[29] + 16);

  if (v1)
  {
    v2 = v0[43];
    v0[99] = *v2;
    result = sub_2528BE790();
    v4 = 0;
    v5 = v0[30];
    v6 = *(v5 + 16);
    while (v6 != v4)
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      result = sub_25277B234(*(v5 + v4 + 32), v2[6]);
      v4 = v7;
      if ((result & 1) == 0)
      {

        goto LABEL_7;
      }
    }

    v19 = v0[97];
    v20 = v0[92];
    v21 = v0[43];

    v0[100] = *(v21 + 16);
    sub_2528BE790();
    sub_2528BE790();
    v22 = v0[31];
    v0[101] = v22;
    v23 = sub_2528C05D0();
    v0[102] = v23;
    v24 = *(v23 - 8);
    v25 = *(v24 + 56);
    v0[103] = v25;
    v0[104] = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v25(v20, 1, 1, v23);
    v26 = swift_task_alloc();
    v0[105] = v26;
    *v26 = v0;
    v26[1] = sub_252762034;
    v27 = v0[97];
    v28 = v0[92];

    return sub_25277ECE4(v27, v22, 0, v28);
  }

  else
  {
LABEL_7:
    type metadata accessor for HomeAppIntentError();
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[97];
    v9 = v0[96];
    v10 = v0[95];
    v11 = v0[94];
    v12 = v0[93];
    v13 = v0[92];
    v14 = v0[91];
    v15 = v0[90];
    v16 = v0[86];
    v17 = v0[85];
    v29 = v0[84];
    v30 = v0[83];
    v31 = v0[82];
    v32 = v0[81];
    v33 = v0[80];
    v34 = v0[79];
    v35 = v0[78];
    v36 = v0[75];
    v37 = v0[74];
    v38 = v0[71];
    v39 = v0[70];
    v40 = v0[69];
    v41 = v0[66];
    v42 = v0[63];
    v43 = v0[62];
    v44 = v0[61];
    v45 = v0[59];
    v46 = v0[58];
    v47 = v0[57];
    v48 = v0[56];
    v49 = v0[53];
    v50 = v0[50];
    v51 = v0[49];
    v52 = v0[48];
    v53 = v0[46];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_252762034(uint64_t a1)
{
  v2 = *(*v1 + 840);
  v3 = *(*v1 + 808);
  v4 = *(*v1 + 776);
  v5 = *(*v1 + 736);
  v7 = *v1;
  *(*v1 + 848) = a1;

  sub_2527213D8(v5, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527621B4, 0, 0);
}

uint64_t sub_2527621B4()
{
  v1 = *(v0 + 648);
  sub_2527D38F8(*(v0 + 848), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 656);
    sub_2527213D8(*(v0 + 648), &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = *(v0 + 800);
    v18 = *(v0 + 752);
    v19 = *(v0 + 352);
    v20 = *(v0 + 360);
    sub_2527213D8(*(v0 + 656), &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError();
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v22 = v21;
    sub_2528BE790();
    v23 = *(v20 + 48);
    v24 = 1;
    if (!v23(v18, 1, v19))
    {
      (*(*(v0 + 416) + 16))(v22, *(v0 + 752), *(v0 + 408));
      v24 = 0;
    }

    v25 = *(v0 + 800);
    v26 = *(v0 + 744);
    v28 = *(v0 + 408);
    v27 = *(v0 + 416);
    v29 = *(v0 + 352);
    sub_2527213D8(*(v0 + 752), &qword_27F4FC488, &unk_2528C3F80);
    (*(v27 + 56))(v22, v24, 1, v28);
    v30 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v31 = v23(v26, 1, v29);
    v32 = *(v0 + 744);
    if (v31)
    {
      sub_2527213D8(v32, &qword_27F4FC488, &unk_2528C3F80);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v35 = *(v0 + 368);
      v36 = *(v0 + 352);
      v37 = *(v0 + 744);
      sub_2527691F4(v32, v35, type metadata accessor for HomeEntity);
      sub_2527213D8(v37, &qword_27F4FC488, &unk_2528C3F80);
      v38 = *(v35 + *(v36 + 20));
      sub_2528BE6B0();
      v33 = *(v0 + 184);
      v34 = *(v0 + 192);
      sub_2527567C0(v35, type metadata accessor for HomeEntity);
    }

    *v30 = v33;
    v30[1] = v34;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 408);
  v10 = *(v0 + 416);
  v11 = v8 + *(v2 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v13 = *(v12 + 48);
  v145 = *(v5 + 16);
  v145(v7, v11, v6);
  v14 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v11 + *(v14 + 20), v7 + v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527567C0(v11, type metadata accessor for HomeEntity.SnapshotPair);
  v15 = *(v12 - 8);
  (*(v15 + 56))(v7, 0, 1, v12);
  v16 = *(v10 + 8);
  *(v0 + 856) = v16;
  *(v0 + 864) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v9);
  if ((*(v15 + 48))(v7, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v134 = *(v0 + 784);
  v136 = *(v0 + 792);
  v138 = *(v0 + 768);
  v140 = *(v0 + 800);
  v51 = *(v0 + 728);
  v52 = *(v0 + 720);
  v130 = v52;
  v132 = *(v0 + 712);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v56 = *(v0 + 656);
  v128 = *(v0 + 640);
  v143 = *(v0 + 632);
  v57 = *(v0 + 344);
  v58 = *(v12 + 48);
  v59 = *(v53 + 32);
  v59(v51, v56, v54);
  sub_25274AA0C(v56 + v58, v55, &qword_27F4FCDB8, &unk_2528C5CC0);
  v60 = sub_2528C0C40();
  (*(*(v60 - 8) + 56))(v128, 1, 1, v60);
  v145(v130, v51, v54);
  v61 = (*(v53 + 80) + 88) & ~*(v53 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v63 = *v57;
  v64 = *(v57 + 16);
  v65 = *(v57 + 32);
  *(v62 + 80) = *(v57 + 48);
  *(v62 + 48) = v64;
  *(v62 + 64) = v65;
  *(v62 + 32) = v63;
  v59(v62 + v61, v130, v54);
  sub_2527691BC(v57, v0 + 16);
  sub_2527D3B74(0, 0, v128, &unk_2528C6710, v62);

  sub_2528BE790();
  v66 = *(v0 + 256);
  *(v0 + 872) = v66;
  sub_2528BE790();
  *(v0 + 880) = *(v0 + 264);
  sub_2528BE790();
  *(v0 + 888) = *(v57 + 40);
  sub_2528BE790();
  *(v0 + 896) = *(v0 + 200);
  *(v0 + 213) = *(v0 + 208);
  v67 = *(v57 + 48);
  v69 = *(v57 + 16);
  v68 = *(v57 + 32);
  *(v0 + 72) = *v57;
  *(v0 + 88) = v69;
  *(v0 + 104) = v68;
  *(v0 + 120) = v67;
  *(v0 + 904) = sub_252760F9C();
  sub_2528BE5B0();
  v70 = *(v66 + 16);
  *(v0 + 912) = v70;
  if (!v70)
  {
    v94 = *(v0 + 768);
    v95 = *(v0 + 704);
    v141 = *(v0 + 696);
    v144 = *(v0 + 728);
    v96 = *(v0 + 688);
    v97 = *(v0 + 632);
    v98 = *(v0 + 616);
    v99 = *(v0 + 608);

    type metadata accessor for HomeAppIntentError();
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v98 + 8))(v97, v99);
    sub_2527213D8(v94, &qword_27F4FC488, &unk_2528C3F80);
    sub_2527213D8(v96, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v95 + 8))(v144, v141);
LABEL_10:
    v39 = *(v0 + 776);
    v40 = *(v0 + 768);
    v41 = *(v0 + 760);
    v42 = *(v0 + 752);
    v43 = *(v0 + 744);
    v44 = *(v0 + 736);
    v45 = *(v0 + 728);
    v46 = *(v0 + 720);
    v47 = *(v0 + 688);
    v48 = *(v0 + 680);
    v110 = *(v0 + 672);
    v111 = *(v0 + 664);
    v112 = *(v0 + 656);
    v113 = *(v0 + 648);
    v114 = *(v0 + 640);
    v115 = *(v0 + 632);
    v116 = *(v0 + 624);
    v117 = *(v0 + 600);
    v118 = *(v0 + 592);
    v119 = *(v0 + 568);
    v120 = *(v0 + 560);
    v121 = *(v0 + 552);
    v122 = *(v0 + 528);
    v123 = *(v0 + 504);
    v124 = *(v0 + 496);
    v125 = *(v0 + 488);
    v126 = *(v0 + 472);
    v127 = *(v0 + 464);
    v129 = *(v0 + 456);
    v131 = *(v0 + 448);
    v133 = *(v0 + 424);
    v135 = *(v0 + 400);
    v137 = *(v0 + 392);
    v139 = *(v0 + 384);
    v142 = *(v0 + 368);

    v49 = *(v0 + 8);

    return v49();
  }

  v71 = *(v0 + 680);
  v72 = *(v0 + 584);
  v73 = *(v0 + 576);
  sub_25272006C(*(v0 + 688), v71, &qword_27F4FCDB8, &unk_2528C5CC0);
  v74 = *(v72 + 48);
  *(v0 + 920) = v74;
  *(v0 + 928) = (v72 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v74(v71, 1, v73) == 1)
  {
    sub_2527213D8(*(v0 + 680), &qword_27F4FCDB8, &unk_2528C5CC0);
    v75 = 0;
    v76 = MEMORY[0x277D84F90];
    *(v0 + 1016) = MEMORY[0x277D84F90];
    v77 = *(v0 + 480);
    v146 = v76;
    v78 = *(v0 + 872) + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v79 = *(v77 + 72);
    do
    {
      v80 = *(v0 + 912);
      v81 = *(v0 + 880);
      v82 = *(v0 + 496);
      sub_2527691F4(v78, v82, type metadata accessor for DeviceEntity);
      ++v75;
      v83 = swift_task_alloc();
      *(v83 + 16) = v82;
      v84 = sub_2527A3118(sub_2527565E8, v83, v81);
      *(v0 + 1192) = 0;

      sub_2527567C0(v82, type metadata accessor for DeviceEntity);
      sub_252735C48(v84);
      v78 += v79;
    }

    while (v75 != v80);
    v85 = *(v0 + 213);
    v86 = *(v0 + 896);
    v87 = *(v0 + 872);
    v88 = *(v0 + 728);
    *(v0 + 1024) = v146;
    v89 = swift_task_alloc();
    *(v0 + 1032) = v89;
    *(v89 + 16) = v88;
    *(v89 + 24) = v87;
    *(v89 + 32) = v86;
    *(v89 + 40) = v85;
    v90 = swift_task_alloc();
    *(v0 + 1040) = v90;
    *v90 = v0;
    v90[1] = sub_252763960;
    v91 = *(v0 + 880);
    v92 = *(v0 + 872);
    v93 = *(v0 + 728);

    return sub_2527764BC(v146, v93, v91, v92, &unk_2528C6DF0, v89);
  }

  else
  {
    v100 = *(v0 + 728);
    v101 = *(v0 + 680);
    v102 = *(v0 + 600);
    v103 = *(v0 + 584);
    v104 = *(v0 + 576);
    v105 = *(v0 + 568);
    v106 = *(v103 + 32);
    *(v0 + 936) = v106;
    *(v0 + 944) = (v103 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v106(v102, v101, v104);
    sub_2528BF2F0();
    v107 = *(MEMORY[0x277D151F0] + 4);
    v108 = swift_task_alloc();
    *(v0 + 952) = v108;
    *v108 = v0;
    v108[1] = sub_252762E18;
    v109 = *(v0 + 568);

    return MEMORY[0x28216E680]();
  }
}

uint64_t sub_252762E18(uint64_t a1)
{
  v2 = *(*v1 + 952);
  v3 = *(*v1 + 568);
  v4 = *(*v1 + 544);
  v5 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 960) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252762F78, 0, 0);
}

uint64_t sub_252762F78()
{
  if (*(v0 + 960))
  {
    v1 = *(v0 + 872);
    v2 = *(v0 + 600);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 968) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 976) = 0;

    *(v0 + 984) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 992) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_252763264, v5, v4);
  }

  else
  {
    (*(*(v0 + 584) + 8))(*(v0 + 600), *(v0 + 576));
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 1016) = MEMORY[0x277D84F90];
    v8 = *(v0 + 480);
    v26 = v7;
    v9 = *(v0 + 872) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = *(v0 + 912);
      v12 = *(v0 + 880);
      v13 = *(v0 + 496);
      sub_2527691F4(v9, v13, type metadata accessor for DeviceEntity);
      ++v6;
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      v15 = sub_2527A3118(sub_2527565E8, v14, v12);
      *(v0 + 1192) = 0;

      sub_2527567C0(v13, type metadata accessor for DeviceEntity);
      sub_252735C48(v15);
      v9 += v10;
    }

    while (v6 != v11);
    v16 = *(v0 + 213);
    v17 = *(v0 + 896);
    v18 = *(v0 + 872);
    v19 = *(v0 + 728);
    *(v0 + 1024) = v26;
    v20 = swift_task_alloc();
    *(v0 + 1032) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v21 = swift_task_alloc();
    *(v0 + 1040) = v21;
    *v21 = v0;
    v21[1] = sub_252763960;
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);
    v24 = *(v0 + 728);

    return sub_2527764BC(v26, v24, v22, v23, &unk_2528C6DF0, v20);
  }
}

uint64_t sub_252763264()
{
  v1 = v0[124];
  v2 = v0[123];

  v0[125] = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_2527632D8, 0, 0);
}

uint64_t sub_2527632D8()
{
  v1 = v0[120];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v6 = sub_252743EF0(v0[121]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(MEMORY[0x277D16AE8] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[126] = v10;
  *v10 = v0;
  v10[1] = sub_252763434;
  v11 = v0[125];
  v12 = v0[84];
  v13 = v0[66];
  v14 = v0[63];

  return MEMORY[0x282170970](v12, v13, v9, v14);
}

uint64_t sub_252763434()
{
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 1000);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 520);
  v5 = *(*v0 + 512);
  v6 = *(*v0 + 504);
  v8 = *v0;

  sub_2527213D8(v6, &qword_27F4FC478, &unk_2528C3F70);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2527635DC, 0, 0);
}

uint64_t sub_2527635DC()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 576);
  (*(*(v0 + 584) + 56))(v3, 0, 1, v5);
  sub_25272006C(v3, v4, &qword_27F4FCDB8, &unk_2528C5CC0);
  v6 = v2(v4, 1, v5);
  v7 = MEMORY[0x277D84F90];
  if (v6 == 1)
  {
    v8 = *(v0 + 960);
    v9 = *(v0 + 672);
    v10 = *(v0 + 584);
    sub_2527213D8(*(v0 + 664), &qword_27F4FCDB8, &unk_2528C5CC0);

    sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
    v11 = *(v0 + 976);
    v12 = MEMORY[0x277D84F90];
    (*(v10 + 8))(*(v0 + 600), *(v0 + 576));
  }

  else
  {
    v11 = *(v0 + 976);
    v13 = *(v0 + 960);
    v14 = *(v0 + 944);
    v15 = *(v0 + 880);
    v16 = *(v0 + 872);
    v17 = *(v0 + 672);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);
    v20 = *(v0 + 576);
    (*(v0 + 936))(v18, *(v0 + 664), v20);
    v21 = swift_task_alloc();
    *(v21 + 16) = v15;
    v7 = MEMORY[0x277D84F90];
    *(v21 + 24) = v18;
    v12 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25275683C, v21, v16);

    sub_2527213D8(v17, &qword_27F4FCDB8, &unk_2528C5CC0);
    v22 = *(v19 + 8);
    v22(v18, v20);
    v22(*(v0 + 600), *(v0 + 576));
  }

  v23 = 0;
  *(v0 + 1016) = v12;
  v24 = *(v0 + 480);
  v42 = v7;
  v25 = *(v0 + 872) + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = *(v24 + 72);
  do
  {
    v27 = *(v0 + 912);
    v28 = *(v0 + 880);
    v29 = *(v0 + 496);
    sub_2527691F4(v25, v29, type metadata accessor for DeviceEntity);
    ++v23;
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    v31 = sub_2527A3118(sub_2527565E8, v30, v28);
    *(v0 + 1192) = v11;

    sub_2527567C0(v29, type metadata accessor for DeviceEntity);
    sub_252735C48(v31);
    v25 += v26;
  }

  while (v23 != v27);
  v32 = *(v0 + 213);
  v33 = *(v0 + 896);
  v34 = *(v0 + 872);
  v35 = *(v0 + 728);
  *(v0 + 1024) = v42;
  v36 = swift_task_alloc();
  *(v0 + 1032) = v36;
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  *(v36 + 32) = v33;
  *(v36 + 40) = v32;
  v37 = swift_task_alloc();
  *(v0 + 1040) = v37;
  *v37 = v0;
  v37[1] = sub_252763960;
  v38 = *(v0 + 880);
  v39 = *(v0 + 872);
  v40 = *(v0 + 728);

  return sub_2527764BC(v42, v40, v38, v39, &unk_2528C6DF0, v36);
}

uint64_t sub_252763960(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v3 = *(*v1 + 1032);
  v4 = *(*v1 + 1024);
  v6 = *v1;
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_252763A9C, 0, 0);
}

uint64_t sub_252763A9C()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 728);
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25278D334(MEMORY[0x277D84F90]);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  v8 = sub_2527F2ADC(v6, sub_252756604, v7, v3);
  *(v0 + 1056) = v8;

  if (*(v8 + 16))
  {
    v9 = *(v0 + 728);
    v10 = *(v0 + 704);
    v11 = *(v0 + 696);
    v12 = *(v0 + 560);
    v13 = *(v0 + 472);
    v14 = *(v10 + 56);
    *(v0 + 1064) = v14;
    *(v0 + 1072) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v13, 1, 1, v11);
    sub_2528BF2F0();
    *(v0 + 1080) = sub_2528BEFC0();
    v15 = *(MEMORY[0x277D15430] + 4);
    v16 = swift_task_alloc();
    *(v0 + 1088) = v16;
    *v16 = v0;
    v16[1] = sub_252763F3C;

    return MEMORY[0x28216EA40]();
  }

  else
  {
    v17 = *(v0 + 1056);
    v18 = *(v0 + 1048);
    v19 = *(v0 + 1016);
    v20 = *(v0 + 880);
    v21 = *(v0 + 872);
    v22 = *(v0 + 768);
    v23 = *(v0 + 632);
    v24 = *(v0 + 616);
    v25 = *(v0 + 608);

    sub_252735C2C(v18);
    sub_252735C2C(v19);
    v26 = sub_25280D9C4(v5);

    v27 = *(v24 + 8);
    *(v0 + 1168) = v27;
    *(v0 + 1176) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v23, v25);
    sub_2527213D8(v22, &qword_27F4FC488, &unk_2528C3F80);
    v28 = sub_252767DF0(v26);
    *(v0 + 1184) = v28;

    v29 = v28 + 64;
    v30 = -1;
    v31 = -1 << *(v28 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v28 + 64);
    v33 = (63 - v31) >> 6;
    v64 = v28;
    swift_bridgeObjectRetain_n();
    v34 = 0;
    while (1)
    {
      *(v0 + 1200) = v5;
      if (!v32)
      {
        break;
      }

LABEL_14:
      v36 = (v34 << 9) | (8 * __clz(__rbit64(v32)));
      v37 = *(*(v64 + 56) + v36);
      v38 = *(v37 + 16);
      v39 = *(v5 + 2);
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return MEMORY[0x28216EA40]();
      }

      v41 = *(*(v64 + 56) + v36);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v40 > *(v5 + 3) >> 1)
      {
        if (v39 <= v40)
        {
          v43 = v39 + v38;
        }

        else
        {
          v43 = v39;
        }

        v5 = sub_252737E74(isUniquelyReferenced_nonNull_native, v43, 1, v5);
      }

      v32 &= v32 - 1;
      if (*(v37 + 16))
      {
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v38)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v44 = *(v5 + 2);
          v45 = __OFADD__(v44, v38);
          v46 = v44 + v38;
          if (v45)
          {
            goto LABEL_33;
          }

          *(v5 + 2) = v46;
        }
      }

      else
      {

        if (v38)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_14;
      }
    }

    v47 = *(v0 + 904);
    v48 = *(v0 + 888);
    v49 = *(v0 + 800);
    v50 = *(v0 + 760);
    v51 = *(v0 + 624);
    v52 = *(v0 + 344);

    sub_2528BE790();
    sub_2528BE790();
    v53 = *(v0 + 216);
    v54 = *(v0 + 224);
    v56 = v52[1];
    v55 = v52[2];
    v57 = *v52;
    *(v0 + 176) = *(v52 + 6);
    *(v0 + 144) = v56;
    *(v0 + 160) = v55;
    *(v0 + 128) = v57;
    sub_2528BE5B0();
    v58 = swift_task_alloc();
    *(v0 + 1208) = v58;
    *v58 = v0;
    v58[1] = sub_252764EF4;
    v59 = *(v0 + 760);
    v60 = *(v0 + 728);
    v61 = *(v0 + 688);
    v62 = *(v0 + 624);

    return sub_252791C80(v64, v59, v53, v54, v60, v61);
  }
}

uint64_t sub_252763F3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 1088);
  v6 = *(*v1 + 213);
  v7 = *v1;
  v4[137] = a1;

  v8 = *(MEMORY[0x277D15420] + 4);
  v9 = swift_task_alloc();
  v4[138] = v9;
  *v9 = v7;
  v9[1] = sub_2527640DC;
  v10 = v3[132];
  v11 = v3[112];
  v12 = v3[70];
  v13 = v3[58];

  return MEMORY[0x28216EA10](v13, v12, v10, v11, v6, 0);
}

uint64_t sub_2527640DC()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v4 = *v1;
  v2[139] = v0;

  v5 = v2[137];
  if (v0)
  {

    v6 = sub_252764630;
  }

  else
  {
    (*(v2[68] + 8))(v2[70], v2[67]);

    v6 = sub_252764230;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

char *sub_252764230()
{
  sub_2527213D8(*(v0 + 472), &qword_27F4FCD98, &qword_2528C6200);
  v1 = *(v0 + 1112);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 472);
  sub_25274AA0C(*(v0 + 464), v4, &qword_27F4FCD98, &qword_2528C6200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v5, v3);

  sub_2527213D8(v4, &qword_27F4FCD98, &qword_2528C6200);
  v8 = *(v0 + 1056);
  v9 = *(v0 + 1048);
  v10 = *(v0 + 1016);
  v11 = *(v0 + 880);
  v12 = *(v0 + 872);
  v53 = *(v0 + 768);
  v13 = *(v0 + 632);
  v14 = *(v0 + 616);
  v15 = *(v0 + 608);

  sub_252735C2C(v9);
  sub_252735C2C(v10);
  v16 = sub_25280D9C4(v7);

  v17 = *(v14 + 8);
  *(v0 + 1168) = v17;
  *(v0 + 1176) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v15);
  sub_2527213D8(v53, &qword_27F4FC488, &unk_2528C3F80);
  v18 = sub_252767DF0(v16);
  *(v0 + 1184) = v18;

  v19 = v18 + 64;
  v20 = -1;
  v21 = -1 << *(v18 + 32);
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & *(v18 + 64);
  v23 = (63 - v21) >> 6;
  v54 = v18;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  while (1)
  {
    *(v0 + 1200) = v6;
    if (!v22)
    {
      break;
    }

LABEL_10:
    v27 = (v25 << 9) | (8 * __clz(__rbit64(v22)));
    v28 = *(*(v54 + 56) + v27);
    v29 = *(v28 + 16);
    v30 = *(v6 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v32 = *(*(v54 + 56) + v27);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > *(v6 + 3) >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      result = sub_252737E74(result, v33, 1, v6);
      v6 = result;
    }

    v22 &= v22 - 1;
    if (*(v28 + 16))
    {
      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v29)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = *(v6 + 2);
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_29;
        }

        *(v6 + 2) = v36;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_10;
    }
  }

  v37 = *(v0 + 904);
  v38 = *(v0 + 888);
  v39 = *(v0 + 800);
  v40 = *(v0 + 760);
  v41 = *(v0 + 624);
  v42 = *(v0 + 344);

  sub_2528BE790();
  sub_2528BE790();
  v43 = *(v0 + 216);
  v44 = *(v0 + 224);
  v46 = v42[1];
  v45 = v42[2];
  v47 = *v42;
  *(v0 + 176) = *(v42 + 6);
  *(v0 + 144) = v46;
  *(v0 + 160) = v45;
  *(v0 + 128) = v47;
  sub_2528BE5B0();
  v48 = swift_task_alloc();
  *(v0 + 1208) = v48;
  *v48 = v0;
  v48[1] = sub_252764EF4;
  v49 = *(v0 + 760);
  v50 = *(v0 + 728);
  v51 = *(v0 + 688);
  v52 = *(v0 + 624);

  return sub_252791C80(v54, v49, v43, v44, v50, v51);
}

uint64_t sub_252764630()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[92];
  v5 = v0[70];
  v6 = v0[68];
  v7 = v0[67];
  v8 = *(v6 + 8);
  v0[140] = v8;
  v0[141] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v2(v4, 1, 1, v3);
  v9 = *(MEMORY[0x277D153E8] + 4);
  v10 = swift_task_alloc();
  v0[142] = v10;
  *v10 = v0;
  v10[1] = sub_252764724;
  v11 = v0[135];
  v12 = v0[92];

  return MEMORY[0x28216E990](v12);
}

uint64_t sub_252764724(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1136);
  v7 = *v1;
  *(v3 + 1144) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1152) = v5;
  *v5 = v7;
  v5[1] = sub_252764870;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252764870(uint64_t a1)
{
  v2 = *(*v1 + 1152);
  v4 = *v1;
  *(*v1 + 1160) = a1;

  return MEMORY[0x2822009F8](sub_252764970, 0, 0);
}

char *sub_252764970()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 552);
  v7 = *(v0 + 536);
  v8 = *(v0 + 424);

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  v3(v6, v7);
  if (*(v1 + 16) && (v9 = *(v0 + 1160), v10 = sub_252785C40(*(v0 + 424)), (v11 & 1) != 0))
  {
    v12 = *(v0 + 864);
    v13 = *(v0 + 856);
    v78 = *(v0 + 1112);
    v79 = *(v0 + 472);
    v14 = *(v0 + 448);
    v16 = *(v0 + 432);
    v15 = *(v0 + 440);
    v17 = *(v0 + 424);
    v18 = *(v0 + 408);
    (*(v15 + 16))(v14, *(*(v0 + 1160) + 56) + *(v15 + 72) * v10, v16);
    v13(v17, v18);

    sub_2528BEE70();

    sub_2527213D8(v79, &qword_27F4FCD98, &qword_2528C6200);
    (*(v15 + 8))(v14, v16);
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 1160);
    v21 = *(v0 + 864);
    v22 = *(v0 + 856);
    v23 = *(v0 + 472);
    v24 = *(v0 + 424);
    v25 = *(v0 + 408);

    v22(v24, v25);
    sub_2527213D8(v23, &qword_27F4FCD98, &qword_2528C6200);
    v19 = 1;
  }

  v26 = *(v0 + 1072);
  (*(v0 + 1064))(*(v0 + 456), v19, 1, *(v0 + 696));
  v27 = *(v0 + 880);
  v28 = *(v0 + 872);
  v29 = *(v0 + 472);
  sub_25274AA0C(*(v0 + 456), v29, &qword_27F4FCD98, &qword_2528C6200);
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;
  *(v30 + 24) = v29;
  v31 = MEMORY[0x277D84F90];
  v32 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v30, v28);

  sub_2527213D8(v29, &qword_27F4FCD98, &qword_2528C6200);
  v33 = *(v0 + 1056);
  v34 = *(v0 + 1048);
  v35 = *(v0 + 1016);
  v36 = *(v0 + 880);
  v37 = *(v0 + 872);
  v80 = *(v0 + 768);
  v38 = *(v0 + 632);
  v39 = *(v0 + 616);
  v40 = *(v0 + 608);

  sub_252735C2C(v34);
  sub_252735C2C(v35);
  v41 = sub_25280D9C4(v32);

  v42 = *(v39 + 8);
  *(v0 + 1168) = v42;
  *(v0 + 1176) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v38, v40);
  sub_2527213D8(v80, &qword_27F4FC488, &unk_2528C3F80);
  v43 = sub_252767DF0(v41);
  *(v0 + 1184) = v43;

  v44 = v43 + 64;
  v45 = -1;
  v46 = -1 << *(v43 + 32);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  v47 = v45 & *(v43 + 64);
  v48 = (63 - v46) >> 6;
  v81 = v43;
  result = swift_bridgeObjectRetain_n();
  v50 = 0;
  while (1)
  {
    *(v0 + 1200) = v31;
    if (!v47)
    {
      break;
    }

LABEL_14:
    v52 = (v50 << 9) | (8 * __clz(__rbit64(v47)));
    v53 = *(*(v81 + 56) + v52);
    v54 = *(v53 + 16);
    v55 = *(v31 + 2);
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v57 = *(*(v81 + 56) + v52);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v56 > *(v31 + 3) >> 1)
    {
      if (v55 <= v56)
      {
        v58 = v55 + v54;
      }

      else
      {
        v58 = v55;
      }

      result = sub_252737E74(result, v58, 1, v31);
      v31 = result;
    }

    v47 &= v47 - 1;
    if (*(v53 + 16))
    {
      if ((*(v31 + 3) >> 1) - *(v31 + 2) < v54)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v54)
      {
        v59 = *(v31 + 2);
        v60 = __OFADD__(v59, v54);
        v61 = v59 + v54;
        if (v60)
        {
          goto LABEL_33;
        }

        *(v31 + 2) = v61;
      }
    }

    else
    {

      if (v54)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v51);
    ++v50;
    if (v47)
    {
      v50 = v51;
      goto LABEL_14;
    }
  }

  v62 = *(v0 + 904);
  v63 = *(v0 + 888);
  v64 = *(v0 + 800);
  v65 = *(v0 + 760);
  v66 = *(v0 + 624);
  v67 = *(v0 + 344);

  sub_2528BE790();
  sub_2528BE790();
  v68 = *(v0 + 216);
  v69 = *(v0 + 224);
  v71 = v67[1];
  v70 = v67[2];
  v72 = *v67;
  *(v0 + 176) = *(v67 + 6);
  *(v0 + 144) = v71;
  *(v0 + 160) = v70;
  *(v0 + 128) = v72;
  sub_2528BE5B0();
  v73 = swift_task_alloc();
  *(v0 + 1208) = v73;
  *v73 = v0;
  v73[1] = sub_252764EF4;
  v74 = *(v0 + 760);
  v75 = *(v0 + 728);
  v76 = *(v0 + 688);
  v77 = *(v0 + 624);

  return sub_252791C80(v81, v74, v68, v69, v75, v76);
}

uint64_t sub_252764EF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1208);
  v20 = *v2;
  v3[152] = a1;
  v3[153] = v1;

  if (v1)
  {
    v5 = v3[150];
    v6 = v3[148];
    v7 = v3[147];
    v8 = v3[146];
    v9 = v3[95];
    v10 = v3[78];
    v11 = v3[76];

    v8(v10, v11);
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v12 = sub_252765E7C;
  }

  else
  {
    v13 = v3[148];
    v14 = v3[147];
    v15 = v3[146];
    v16 = v3[95];
    v17 = v3[78];
    v18 = v3[76];

    v15(v17, v18);
    sub_2527213D8(v16, &qword_27F4FC488, &unk_2528C3F80);
    v12 = sub_2527650A8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2527650A8()
{
  v156 = v0;
  v151 = v0;
  if (sub_2528C0880())
  {
    v1 = *(v0 + 1216);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 40);
      do
      {
        v15 = *(v3 - 1);
        v14 = *v3;
        v16 = qword_27F4FBB40;
        sub_2528BEA50();
        sub_2528BEA50();
        if (v16 != -1)
        {
          swift_once();
        }

        v17 = sub_2528C08B0();
        __swift_project_value_buffer(v17, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v18 = sub_2528C0890();
        v19 = sub_2528C0D10();

        if (os_log_type_enabled(v18, v19))
        {
          v4 = *(v151 + 488);
          v5 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *&v153[0] = v148;
          *v5 = 136315394;
          v146 = v19;
          sub_2528BE6B0();
          v6 = DeviceEntity.debugDescription.getter();
          v8 = v7;
          sub_2527567C0(v4, type metadata accessor for DeviceEntity);
          v9 = sub_2527389AC(v6, v8, v153);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          sub_2528BE6B0();
          v10 = MEMORY[0x2530A81A0](*(v151 + 328), &type metadata for AttributeResult);
          v12 = v11;

          v13 = sub_2527389AC(v10, v12, v153);

          *(v5 + 14) = v13;
          _os_log_impl(&dword_252711000, v18, v146, "ToggleAttributeIntent: %s resulted in %s", v5, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v148, -1, -1);
          MEMORY[0x2530A8D80](v5, -1, -1);
        }

        else
        {
        }

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1216);
    v21 = sub_2528C08B0();
    __swift_project_value_buffer(v21, qword_27F5025C8);

    v22 = sub_2528C0890();
    v23 = sub_2528C0D10();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 1216);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      v155[0] = v26;
      *v25 = 136446210;
      v28 = *(v24 + 16);
      v29 = MEMORY[0x277D84F90];
      if (v28)
      {
        v149 = v26;
        v30 = *(v0 + 1216);
        *&v153[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v28, 0);
        v29 = *&v153[0];
        v31 = (v30 + 40);
        do
        {
          v33 = *(v31 - 1);
          v32 = *v31;
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v34 = *(v151 + 320);
          *&v153[0] = v29;
          v36 = *(v29 + 16);
          v35 = *(v29 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_25282F0CC((v35 > 1), v36 + 1, 1);
            v29 = *&v153[0];
          }

          *(v29 + 16) = v36 + 1;
          *(v29 + 8 * v36 + 32) = v34;
          v31 += 2;
          --v28;
        }

        while (v28);
        v27 = v149;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v38 = MEMORY[0x2530A81A0](v29, v37);
      v40 = v39;

      v41 = sub_2527389AC(v38, v40, v155);

      *(v25 + 4) = v41;
      _os_log_impl(&dword_252711000, v22, v23, "ToggleAttributeIntent completed with results: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x2530A8D80](v27, -1, -1);
      MEMORY[0x2530A8D80](v25, -1, -1);
    }
  }

  v42 = *(v151 + 1200);
  v43 = *(v42 + 16);
  if (v43)
  {
    v155[0] = MEMORY[0x277D84F90];
    sub_25282F064(0, v43, 0);
    v44 = v155[0];
    v45 = (v42 + 64);
    do
    {
      v46 = *v45;
      v47 = *(v45 - 1);
      v153[0] = *(v45 - 2);
      v153[1] = v47;
      v154 = v46;
      sub_252870158(&v152);
      v48 = v152;
      v155[0] = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_25282F064((v49 > 1), v50 + 1, 1);
        v44 = v155[0];
      }

      *(v44 + 16) = v50 + 1;
      *(v44 + v50 + 32) = v48;
      v45 += 40;
      --v43;
    }

    while (v43);
    v51 = *(v151 + 1200);
  }

  else
  {
    v52 = *(v151 + 1200);

    v44 = MEMORY[0x277D84F90];
  }

  v53 = *(v151 + 1216);
  v54 = *(v151 + 784);
  v55 = *(v151 + 728);
  v56 = *(v151 + 688);
  v57 = *(v151 + 392);
  sub_2528BE790();
  v58 = *(v151 + 272);
  ShowDeviceResultIntent.init()(v57);
  sub_252859C3C(v53, v55, v56, v153);
  v59 = v57[1];
  *(v151 + 209) = v153[0];
  sub_2528BE7A0();
  sub_2528BE790();
  v60 = *(v151 + 210);
  if (v60 == 4 || (sub_252852964(v60, 1u) & 1) == 0)
  {
  }

  else
  {
    v61 = *(v151 + 1224);
    v62 = *(v151 + 1216);
    v63 = *(v151 + 728);
    v64 = *(v151 + 392);
    v65 = swift_task_alloc();
    *(v65 + 16) = v63;
    *(v65 + 24) = v58;
    v66 = sub_252853180(sub_252760634, v65, v62);

    v67 = *(v64 + 48);
    *(v151 + 304) = v66;
    sub_2528BE7A0();
    v68 = *(v64 + 56);
    *(v151 + 312) = v62;

    sub_2528BE7A0();
  }

  sub_25285A33C(v44, v153);

  v69 = v153[0];
  if (LOBYTE(v153[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v70 = sub_2528C08B0();
    __swift_project_value_buffer(v70, qword_27F5025C8);
    v71 = sub_2528C0890();
    v72 = sub_2528C0D10();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v153[0] = v74;
      *v73 = 136315138;
      if (v69)
      {
        v75 = 0xD000000000000010;
      }

      else
      {
        v75 = 6449010;
      }

      if (v69)
      {
        v76 = 0x80000002528E51C0;
      }

      else
      {
        v76 = 0xE300000000000000;
      }

      v77 = sub_2527389AC(v75, v76, v153);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_252711000, v71, v72, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x2530A8D80](v74, -1, -1);
      MEMORY[0x2530A8D80](v73, -1, -1);
    }

    v78 = *(*(v151 + 392) + 64);
    *(v151 + 212) = v69 & 1;
    sub_2528BE7A0();
  }

  v79 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v151 + 1216));
  v80 = v79;
  v82 = v81;
  v83 = *(v79 + 16);
  if (v83)
  {
    v84 = sub_252865988(*(v79 + 16), 0);
    v85 = sub_252868828(v153, v84 + 4, v83, v80);
    sub_25271A648();
    if (v85 == v83)
    {
      goto LABEL_48;
    }

    __break(1u);
  }

  v84 = MEMORY[0x277D84F90];
LABEL_48:
  v86 = *(*(v151 + 392) + 16);
  *(v151 + 280) = v84;
  sub_2528BE7A0();
  v87 = *(v82 + 16);
  if (v87)
  {
    v88 = sub_252865988(*(v82 + 16), 0);
    v89 = sub_252868828(v153, v88 + 4, v87, v82);
    sub_25271A648();
    if (v89 == v87)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  v88 = MEMORY[0x277D84F90];
LABEL_52:
  v91 = *(v151 + 392);
  v90 = *(v151 + 400);
  v92 = *(v91 + 24);
  *(v151 + 288) = v88;
  sub_2528BE7A0();
  sub_25275663C(v91, v90);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v93 = *(v151 + 400);
  v94 = *(v151 + 384);
  v95 = sub_2528C08B0();
  __swift_project_value_buffer(v95, qword_27F5025C8);
  sub_2527691F4(v93, v94, type metadata accessor for ShowDeviceResultIntent);
  v96 = sub_2528C0890();
  v97 = sub_2528C0D10();
  v98 = os_log_type_enabled(v96, v97);
  v99 = *(v151 + 384);
  if (v98)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v153[0] = v101;
    *v100 = 136315138;
    v102 = *(v99 + 8);
    result = sub_2528BE790();
    v104 = *(v151 + 211);
    if (v104 <= 1)
    {
      if (*(v151 + 211))
      {
        v106 = 0x6B6E694C70656564;
      }

      else
      {
        v106 = 0x726577736E61;
      }

      if (*(v151 + 211))
      {
        v105 = 0xE800000000000000;
      }

      else
      {
        v105 = 0xE600000000000000;
      }
    }

    else if (v104 == 2)
    {
      v105 = 0xE600000000000000;
      v106 = 0x656369746F6ELL;
    }

    else
    {
      if (v104 != 3)
      {
        __break(1u);
        return result;
      }

      v105 = 0xE600000000000000;
      v106 = 0x686372616573;
    }

    sub_2527567C0(*(v151 + 384), type metadata accessor for ShowDeviceResultIntent);
    v107 = sub_2527389AC(v106, v105, v153);

    *(v100 + 4) = v107;
    _os_log_impl(&dword_252711000, v96, v97, "ToggleAttributeValueIntent returning ShowDeviceResultIntent for %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    MEMORY[0x2530A8D80](v101, -1, -1);
    MEMORY[0x2530A8D80](v100, -1, -1);
  }

  else
  {

    sub_2527567C0(v99, type metadata accessor for ShowDeviceResultIntent);
  }

  v116 = *(v151 + 776);
  v117 = *(v151 + 768);
  v118 = *(v151 + 760);
  v119 = *(v151 + 752);
  v120 = *(v151 + 744);
  v121 = *(v151 + 736);
  v108 = *(v151 + 728);
  v109 = *(v151 + 704);
  v115 = *(v151 + 696);
  v110 = *(v151 + 688);
  v122 = *(v151 + 720);
  v123 = *(v151 + 680);
  v124 = *(v151 + 672);
  v125 = *(v151 + 664);
  v126 = *(v151 + 656);
  v127 = *(v151 + 648);
  v128 = *(v151 + 640);
  v129 = *(v151 + 632);
  v130 = *(v151 + 624);
  v131 = *(v151 + 600);
  v132 = *(v151 + 592);
  v133 = *(v151 + 568);
  v134 = *(v151 + 560);
  v135 = *(v151 + 552);
  v136 = *(v151 + 528);
  v137 = *(v151 + 504);
  v138 = *(v151 + 496);
  v140 = *(v151 + 488);
  v142 = *(v151 + 472);
  v144 = *(v151 + 464);
  *(v151 + 296) = *(v151 + 1216);
  v139 = *(v151 + 456);
  v141 = *(v151 + 448);
  v143 = *(v151 + 424);
  v111 = *(v151 + 400);
  v145 = *(v151 + 392);
  v112 = *(v151 + 376);
  v147 = *(v151 + 384);
  v150 = *(v151 + 368);
  v113 = *(v151 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_25276926C(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_2527567C0(v111, type metadata accessor for ShowDeviceResultIntent);
  sub_2527213D8(v110, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v109 + 8))(v108, v115);

  v114 = *(v151 + 8);

  return v114();
}

uint64_t sub_252765E7C()
{
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[87];
  sub_2527213D8(v0[86], &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v2 + 8))(v1, v3);
  v41 = v0[153];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[91];
  v11 = v0[90];
  v12 = v0[86];
  v13 = v0[85];
  v16 = v0[84];
  v17 = v0[83];
  v18 = v0[82];
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[79];
  v22 = v0[78];
  v23 = v0[75];
  v24 = v0[74];
  v25 = v0[71];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[66];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[61];
  v32 = v0[59];
  v33 = v0[58];
  v34 = v0[57];
  v35 = v0[56];
  v36 = v0[53];
  v37 = v0[50];
  v38 = v0[49];
  v39 = v0[48];
  v40 = v0[46];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252766100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *(type metadata accessor for DeviceEntity() - 8);
  v5[6] = v6;
  v7 = *(v6 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527661BC, 0, 0);
}

uint64_t sub_2527661BC()
{
  v27 = v0;
  v1 = **(v0 + 32);
  result = sub_2528BE790();
  v3 = *(v0 + 16);
  v23 = *(v3 + 16);
  if (v23)
  {
    v4 = 0;
    v5 = *(v0 + 56);
    v19 = *(v0 + 48);
    v21 = v3 + 32;
    v22 = *(*(v0 + 32) + 8);
    v6 = MEMORY[0x277D84FA0];
    v20 = *(v0 + 16);
    while (v4 < *(v3 + 16))
    {
      v10 = *(v21 + v4);
      sub_2528BE790();
      v11 = *(v0 + 24);
      v25 = v6;
      v12 = *(v11 + 16);
      if (v12)
      {
        v24 = v10;
        v13 = v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v14 = *(v19 + 72);
        do
        {
          v15 = *(v0 + 56);
          sub_2527691F4(v13, v15, type metadata accessor for DeviceEntity);
          v16 = *(v5 + 16);
          sub_2528BE6B0();
          sub_25273A214(v26, *(v0 + 64));
          sub_2527567C0(v15, type metadata accessor for DeviceEntity);
          v13 += v14;
          --v12;
        }

        while (v12);

        v7 = v25;
        v3 = v20;
        v6 = MEMORY[0x277D84FA0];
        v10 = v24;
      }

      else
      {

        v7 = v6;
      }

      ++v4;
      v8 = swift_task_alloc();
      v9 = *(v0 + 32);
      *(v8 + 16) = v10;
      *(v8 + 24) = vextq_s8(v9, v9, 8uLL);
      sub_2527E4D64(sub_2527692B4, v8, v7);

      if (v4 == v23)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v17 = *(v0 + 56);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_2527663D0(_WORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = sub_2528BF400();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20[-v12];
  LOWORD(a1) = *a1;
  v14 = sub_2528C0C40();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v7);
  v15 = (*(v8 + 80) + 35) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 34) = v21;
  (*(v8 + 32))(v16 + v15, &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
  v17 = v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *(a4 + 16);
  *v17 = *a4;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a4 + 32);
  *(v17 + 48) = *(a4 + 48);
  sub_2527691BC(a4, v22);
  sub_2527D3E74(0, 0, v13, &unk_2528C6730, v16);
}

uint64_t sub_252766604(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 256) = a6;
  *(v7 + 264) = a7;
  *(v7 + 89) = a5;
  *(v7 + 90) = a4;
  *(v7 + 248) = a1;
  v8 = sub_2528BEC90();
  *(v7 + 272) = v8;
  v9 = *(v8 - 8);
  *(v7 + 280) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  v11 = sub_2528BEEC0();
  *(v7 + 296) = v11;
  v12 = *(v11 - 8);
  *(v7 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  v14 = sub_2528BF400();
  *(v7 + 320) = v14;
  v15 = *(v14 - 8);
  *(v7 + 328) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  v18 = sub_2528BE8B0();
  *(v7 + 368) = v18;
  v19 = *(v18 - 8);
  *(v7 + 376) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  v21 = sub_2528BECF0();
  *(v7 + 392) = v21;
  v22 = *(v21 - 8);
  *(v7 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v24 = sub_2528BEE30();
  *(v7 + 416) = v24;
  v25 = *(v24 - 8);
  *(v7 + 424) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527668F8, 0, 0);
}

uint64_t sub_2527668F8()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 360);
  v18 = *(v0 + 368);
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  sub_2528BF2F0();
  sub_2528BEE00();
  v10 = *(v2 + 8);
  *(v0 + 448) = v10;
  *(v0 + 456) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  *(v0 + 224) = *(v9 + 6);
  *(v0 + 192) = v12;
  *(v0 + 208) = v13;
  *(v0 + 176) = v11;
  sub_252760F9C();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v18);
  v14 = *(v9 + 5);
  sub_2528BE790();
  *(v0 + 464) = *(v0 + 232);
  *(v0 + 92) = *(v0 + 240);
  sub_2528BEFC0();
  v15 = *(MEMORY[0x277D15430] + 4);
  v16 = swift_task_alloc();
  *(v0 + 472) = v16;
  *v16 = v0;
  v16[1] = sub_252766A7C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252766A7C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v7 = *v1;
  *(v3 + 480) = a1;

  v5 = swift_task_alloc();
  *(v3 + 488) = v5;
  *v5 = v7;
  v5[1] = sub_252766BC8;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252766BC8(uint64_t a1)
{
  v2 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_252766CC8, 0, 0);
}

uint64_t sub_252766CC8()
{
  v1 = *(v0 + 496);

  if (*(v1 + 16) && (v2 = *(v0 + 496), v3 = sub_252785C40(*(v0 + 408)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 352);
    v63 = *(v0 + 360);
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 320);
    v9 = *(v0 + 328);
    v10 = *(v0 + 304);
    v11 = *(v0 + 312);
    v12 = *(v0 + 296);
    (*(v10 + 16))(v11, *(*(v0 + 496) + 56) + *(v10 + 72) * v3, v12);

    sub_2528BEE70();
    (*(v10 + 8))(v11, v12);
    (*(v9 + 32))(v6, v7, v8);
    sub_25272006C(v63, v5, &qword_27F4FCE00, &qword_2528C5D20);
    v13 = sub_2528BE890();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v5, 1, v13);
    v16 = *(v0 + 352);
    if (v15 == 1)
    {
      sub_2527213D8(*(v0 + 352), &qword_27F4FCE00, &qword_2528C5D20);
      v64 = 0;
    }

    else
    {
      v64 = sub_2528BE880();
      (*(v14 + 8))(v16, v13);
    }

    v23 = v15 == 1;
    v57 = *(v0 + 448);
    v58 = *(v0 + 456);
    v24 = *(v0 + 432);
    v56 = *(v0 + 416);
    v25 = *(v0 + 400);
    v60 = *(v0 + 392);
    v61 = *(v0 + 408);
    v59 = *(v0 + 360);
    v26 = *(v0 + 344);
    v28 = *(v0 + 320);
    v27 = *(v0 + 328);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 272);
    v62 = *(v0 + 89);
    v32 = *(v0 + 90);
    *(v0 + 504) = v23;
    sub_2528BEC80();
    sub_2528BEC60();
    v34 = v33;
    (*(v30 + 8))(v29, v31);
    sub_2528BF2F0();
    v35 = sub_2528BEDD0();
    v57(v24, v56);
    (*(v27 + 8))(v26, v28);
    sub_2527213D8(v59, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v25 + 8))(v61, v60);
    v36 = qword_2528C6740[v62];
    v37 = *(v0 + 464);
    if ((v32 & 0xC000) == 0x4000)
    {
      v38 = HIBYTE(v32) & 0x3F;
    }

    else
    {
      v38 = v32;
    }

    v39 = *(v0 + 248);
    *(v0 + 512) = *(v0 + 92);
    v40 = *(v0 + 504);
    v41 = *(v0 + 512);
    *(v0 + 96) = 0xD000000000000024;
    *(v0 + 104) = 0x80000002528E57B0;
    *(v0 + 112) = v64;
    *(v0 + 120) = v40;
    *(v0 + 128) = v34;
    *(v0 + 136) = v35 & 1;
    *(v0 + 144) = v38 + 1;
    *(v0 + 152) = v36;
    *(v0 + 160) = v37;
    *(v0 + 168) = v41;
    sub_25276940C();
    sub_2528BFA10();
    v42 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v42;
    *(v0 + 73) = *(v0 + 153);
    v43 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v43;
    sub_252769460(v0 + 16);
    *v39 = 0;
  }

  else
  {
    v17 = *(v0 + 496);
    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v20 = *(v0 + 392);
    v21 = *(v0 + 360);
    v22 = *(v0 + 248);

    sub_2527213D8(v21, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v19 + 8))(v18, v20);
    *v22 = 1;
  }

  v45 = *(v0 + 432);
  v44 = *(v0 + 440);
  v46 = *(v0 + 408);
  v47 = *(v0 + 384);
  v49 = *(v0 + 352);
  v48 = *(v0 + 360);
  v51 = *(v0 + 336);
  v50 = *(v0 + 344);
  v52 = *(v0 + 312);
  v53 = *(v0 + 288);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_252767110@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB660 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527671B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_25276726C;

  return sub_252761054(a1);
}

uint64_t sub_25276726C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_252767360@<D0>(uint64_t a1@<X8>)
{
  sub_252768530(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2527673AC(uint64_t a1)
{
  v2 = sub_252760F9C();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_252767404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25276744C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2527674A8()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0xD000000000000010, 0x80000002528E57E0);
  v5 = *v0;
  sub_2528BE790();
  v6 = MEMORY[0x2530A81A0](v28, &type metadata for AttributeKind);
  v8 = v7;

  MEMORY[0x2530A80B0](v6, v8);

  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  v9 = v1[1];
  sub_2528BE790();
  v10 = type metadata accessor for DeviceEntity();
  v11 = MEMORY[0x2530A81A0](v28, v10);
  v13 = v12;

  MEMORY[0x2530A80B0](v11, v13);

  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  v14 = v1[2];
  sub_2528BE790();
  v15 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v15);

  MEMORY[0x2530A80B0](0x746E45656E6F7A20, 0xEF203A7365697469);
  v16 = v1[3];
  sub_2528BE790();
  if (v28)
  {
    v17 = type metadata accessor for ZoneEntity();
    v18 = MEMORY[0x2530A81C0](v28, v17);
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x2530A80B0](v18, v20);

  MEMORY[0x2530A80B0](0x746E456D6F6F7220, 0xEF203A7365697469);
  v21 = v1[4];
  sub_2528BE790();
  if (v28)
  {
    v22 = type metadata accessor for RoomEntity();
    v2 = MEMORY[0x2530A81C0](v28, v22);
    v24 = v23;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v2, v24);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  v25 = v1[5];
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v26 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v26);

  return 0;
}

uint64_t sub_2527677E4@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - v5;
  sub_2527FECD0(&v48, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v8 = sub_252755F54();
  MEMORY[0x2530A60E0](&v34, &v48, v7, &type metadata for DeviceEntityFromAccessoryTypeResolver, v8);
  v41[4] = v52;
  v41[5] = v53;
  v41[6] = v54;
  v41[0] = v48;
  v41[1] = v49;
  v41[2] = v50;
  v41[3] = v51;
  v9 = sub_252755FA8(v41);
  sub_2527FECD0(&v48, v9);
  v10 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v27, &v48, v7, &type metadata for DeviceEntityFromInputTypeResolver, v10);
  v42[4] = v52;
  v42[5] = v53;
  v42[6] = v54;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  v42[3] = v51;
  sub_252756050(v42);
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_2527560A4(v43, &v48);
  sub_252756100();
  sub_2528BEAA0();
  v44[4] = v24;
  v44[5] = v25;
  v44[6] = v26;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  sub_252755FA8(v44);
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  sub_2527561B4(v45, &v48);
  v12[2] = v8;
  v12[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v46[4] = v17;
  v46[5] = v18;
  v46[6] = v19;
  v46[0] = v13;
  v46[1] = v14;
  v46[3] = v16;
  v46[2] = v15;
  sub_252756050(v46);
  (*(v2 + 8))(v6, v1);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[3] = v30;
  v47[2] = v29;
  sub_252756050(v47);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  return sub_252755FA8(&v48);
}

uint64_t sub_252767B18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_252767BF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

uint64_t sub_252767DF0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity();
  v3 = *(v2 - 8);
  v65 = v2;
  v66 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_25278D51C(MEMORY[0x277D84F90]);
  v69 = *(a1 + 16);
  if (!v69)
  {
LABEL_48:
    if (qword_27F4FBB40 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  v7 = 0;
  v67 = 0x80000002528E4FB0;
  v68 = a1 + 32;
  while (1)
  {
    v74 = v7;
    v8 = (v68 + 16 * v7);
    v9 = v8[1];
    v76 = *v8;
    v77 = v6;
    sub_2528BEA50();
    sub_2528BEA50();
    v73 = v9;
    sub_2528BE6B0();
    v10 = *(v79 + 16);
    v75 = v79;
    if (v10)
    {
      v11 = (v79 + 40);
      v78 = MEMORY[0x277D84F90];
      while (1)
      {
        v18 = *(v11 - 1);
        v19 = *v11;
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();
        v12 = v79;
        v13 = v80;
        v14 = v81;
        v15 = v82;
        v16 = v83;
        v17 = v84;
        if (!v84)
        {
          sub_25276925C(v79, v80, v81, v82, v83, 0);
          sub_2528BE6B0();
          v20 = v79;
          v21 = v80;
          v6 = v81;
          v22 = v82;
          v23 = v83;
          v24 = v84;
          if (v84)
          {

            sub_25276925C(v20, v21, v6, v22, v23, v24);
            goto LABEL_9;
          }

          if (v83 >> 1 == 46)
          {
            if (v79)
            {
              v29 = v67;
            }

            else
            {
              v29 = 0xE900000000000065;
            }

            if (v29 == 0xE900000000000065 && (v79 & 1) == 0)
            {

              goto LABEL_27;
            }

            LODWORD(v71) = sub_2528C1060();

            if (v71)
            {
LABEL_27:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v31 = 1;
              if (isUniquelyReferenced_nonNull_native)
              {
                v31 = 1;
                goto LABEL_30;
              }

LABEL_34:
              v71 = v31;
              v78 = sub_252737E74(0, *(v78 + 2) + 1, 1, v78);
            }

            else
            {
              v32 = swift_isUniquelyReferenced_nonNull_native();
              v31 = 0;
              if ((v32 & 1) == 0)
              {
                goto LABEL_34;
              }

LABEL_30:
              v71 = v31;
            }

            v34 = *(v78 + 2);
            v33 = *(v78 + 3);
            v70 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              v78 = sub_252737E74((v33 > 1), v34 + 1, 1, v78);
            }

            sub_25276925C(v20, v21, v6, v22, v23, 0);

            v35 = v78;
            *(v78 + 2) = v70;
            v36 = &v35[40 * v34];
            *(v36 + 4) = v71;
            *(v36 + 5) = 0;
            *(v36 + 6) = 0;
            *(v36 + 7) = 0;
            v36[64] = 92;
            goto LABEL_9;
          }

          if (v83 >> 1 == 44)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_252737E74(0, *(v78 + 2) + 1, 1, v78);
            }

            v26 = *(v78 + 2);
            v25 = *(v78 + 3);
            if (v26 >= v25 >> 1)
            {
              v78 = sub_252737E74((v25 > 1), v26 + 1, 1, v78);
            }

            v27 = v78;
            *(v78 + 2) = v26 + 1;
            v28 = &v27[40 * v26];
            *(v28 + 4) = (v20 & 1) == 0;
            *(v28 + 5) = 0;
            *(v28 + 6) = 0;
            *(v28 + 7) = 0;
            v28[64] = 88;
            goto LABEL_9;
          }

          v12 = v79;
          v13 = v80;
          v14 = v81;
          v15 = v82;
          v16 = v83;
          v17 = 0;
        }

        sub_25276925C(v12, v13, v14, v15, v16, v17);

LABEL_9:
        v11 += 2;
        if (!--v10)
        {
          goto LABEL_36;
        }
      }
    }

    v78 = MEMORY[0x277D84F90];
LABEL_36:

    v37 = v78;
    if (*(v78 + 2))
    {
      break;
    }

    v6 = v77;
LABEL_4:
    v7 = v74 + 1;
    if (v74 + 1 == v69)
    {
      goto LABEL_48;
    }
  }

  v38 = v72;
  sub_2528BE6B0();
  v39 = v77;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v39;
  v41 = sub_252785BD4(v38);
  v43 = *(v39 + 16);
  v44 = (v42 & 1) == 0;
  v45 = __OFADD__(v43, v44);
  v46 = v43 + v44;
  if (!v45)
  {
    v47 = v42;
    if (*(v39 + 24) >= v46)
    {
      if ((v40 & 1) == 0)
      {
        v51 = v41;
        sub_2527E12F8();
        v41 = v51;
        v6 = v79;
        if (v47)
        {
          goto LABEL_43;
        }

        goto LABEL_45;
      }
    }

    else
    {
      sub_2527DE0A0(v46, v40);
      v41 = sub_252785BD4(v72);
      if ((v47 & 1) != (v48 & 1))
      {
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }
    }

    v6 = v79;
    if (v47)
    {
LABEL_43:
      v49 = v6[7];
      v50 = *(v49 + 8 * v41);
      *(v49 + 8 * v41) = v37;

LABEL_47:
      sub_2527567C0(v72, type metadata accessor for DeviceEntity);

      goto LABEL_4;
    }

LABEL_45:
    v6[(v41 >> 6) + 8] |= 1 << v41;
    v52 = v41;
    sub_2527691F4(v72, v6[6] + *(v66 + 72) * v41, type metadata accessor for DeviceEntity);
    *(v6[7] + 8 * v52) = v37;
    v53 = v6[2];
    v45 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v45)
    {
      goto LABEL_53;
    }

    v6[2] = v54;
    goto LABEL_47;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_49:
  v55 = sub_2528C08B0();
  __swift_project_value_buffer(v55, qword_27F5025C8);
  v56 = sub_2528C0890();
  v57 = sub_2528C0D10();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79 = v59;
    *v58 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE90, &qword_2528C6720);
    sub_25276926C(&qword_27F4FCE98, type metadata accessor for DeviceEntity);
    v60 = sub_2528C08E0();
    v62 = v61;

    v63 = sub_2527389AC(v60, v62, &v79);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_252711000, v56, v57, "Created toggle dictionary %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x2530A8D80](v59, -1, -1);
    MEMORY[0x2530A8D80](v58, -1, -1);
  }

  return v6;
}

uint64_t sub_252768530@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v68 = *(v1 - 8);
  v69 = v1;
  v2 = *(v68 + 64);
  MEMORY[0x28223BE20](v1);
  v67 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v60 - v6;
  v83 = sub_2528BE950();
  v7 = *(v83 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v83);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v60 - v20;
  v22 = sub_2528BEC40();
  v82 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF0, &unk_2528C6600);
  sub_2528BEC20();
  v27 = *(v23 + 56);
  v81 = v23 + 56;
  v77 = v27;
  v27(v21, 1, 1, v22);
  v84 = 0;
  v28 = sub_2528BE630();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v30(v17, 1, 1, v28);
  v30(v15, 1, 1, v28);
  v80 = *MEMORY[0x277CBA308];
  v74 = *(v7 + 104);
  v74(v10);
  v76 = v7 + 104;
  sub_25272E944();
  v72 = v26;
  v66 = sub_2528BE7D0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v77(v21, 1, 1, v82);
  v88 = 0;
  v78 = v30;
  v79 = v31;
  v30(v17, 1, 1, v28);
  v32 = v28;
  v30(v15, 1, 1, v28);
  (v74)(v10, v80, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v75 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70);
  sub_25276926C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v71 = v21;
  v60 = v17;
  v33 = v15;
  v65 = sub_2528BE7E0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v34 = v82;
  v77(v21, 1, 1, v82);
  v35 = type metadata accessor for HomeEntity(0);
  (*(*(v35 - 8) + 56))(v64, 1, 1, v35);
  v73 = v32;
  v36 = v78;
  v78(v17, 1, 1, v32);
  v36(v33, 1, 1, v32);
  v61 = v10;
  v37 = v83;
  v38 = v74;
  (v74)(v10, v80, v83);
  sub_25276926C(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v39 = v71;
  v40 = v60;
  v64 = sub_2528BE7F0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v41 = v77;
  v77(v39, 1, 1, v34);
  v42 = v41;
  v87 = 0;
  v43 = v40;
  v44 = v73;
  v45 = v78;
  v78(v40, 1, 1, v73);
  v45(v33, 1, 1, v44);
  v46 = v61;
  (v38)(v61, v80, v37);
  v47 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50);
  sub_25276926C(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  v48 = v71;
  v49 = v43;
  v50 = v33;
  v63 = sub_2528BE7E0();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v42(v48, 1, 1, v82);
  v86 = 0;
  v51 = v43;
  v52 = v73;
  v53 = v78;
  v78(v51, 1, 1, v73);
  v53(v50, 1, 1, v52);
  v54 = v80;
  (v47)(v46, v80, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60);
  sub_25276926C(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  v55 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v77(v48, 1, 1, v82);
  v84 = 0;
  v85 = 1;
  v78(v49, 1, 1, v52);
  (*(v68 + 104))(v67, *MEMORY[0x277CB9ED0], v69);
  (v47)(v46, v54, v83);
  result = sub_2528BE820();
  v57 = v70;
  v58 = v65;
  *v70 = v66;
  v57[1] = v58;
  v59 = v63;
  v57[2] = v64;
  v57[3] = v59;
  v57[4] = v55;
  v57[5] = result;
  v57[6] = &unk_286493B98;
  return result;
}

uint64_t sub_2527690C8(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_252766100(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2527691F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25276925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (!a6)
  {
    return sub_25272C15C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_25276926C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2527692D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2528BF400() - 8);
  v6 = (*(v5 + 80) + 35) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 34);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2527228B0;

  return sub_252766604(a1, v8, v9, v11, v10, v1 + v6, v1 + v7);
}

unint64_t sub_25276940C()
{
  result = qword_27F4FCEA0;
  if (!qword_27F4FCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCEA0);
  }

  return result;
}

unint64_t sub_2527694B8()
{
  result = qword_27F4FCEC0;
  if (!qword_27F4FCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCEC0);
  }

  return result;
}

unint64_t sub_252769510()
{
  result = qword_27F4FCEC8;
  if (!qword_27F4FCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCEC8);
  }

  return result;
}

unint64_t sub_2527695E8()
{
  result = qword_27F4FCED0;
  if (!qword_27F4FCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCED0);
  }

  return result;
}

uint64_t sub_25276963C()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028D8);
  __swift_project_value_buffer(v0, qword_27F5028D8);
  return sub_2528BEC20();
}

uint64_t sub_2527696F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527697CC, 0, 0);
}

uint64_t sub_2527697CC()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_2528C08B0();
  v0[9] = __swift_project_value_buffer(v3, qword_27F5025C8);
  sub_2527BBF9C(v1, v2);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_2528C0820();
  v0[10] = __swift_project_value_buffer(v6, qword_27F5025E0);
  v0[11] = sub_2528B82F8(v4, v5);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_252769920;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_252769C38(v10, v8, v9);
}

uint64_t sub_252769920()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_252769B78;
  }

  else
  {
    v3 = sub_252769A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252769A34()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  (*(v4 + 16))(v3, v0[2], v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v3, v5);
  sub_2527BD068(v7, v6, v1, sub_25276E7BC);

  sub_2527BE360(v7, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_252769B78()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  sub_2527BF228(v6, v5, v0[11], v1);
  sub_2527C0650(v6, v5, v1);
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t sub_252769C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v6 = type metadata accessor for HomeEntity(0);
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v10 = sub_2528BFB20();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v13 = sub_2528C00D0();
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v17 = sub_2528BECF0();
  v3[31] = v17;
  v18 = *(v17 - 8);
  v3[32] = v18;
  v19 = *(v18 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v20 = type metadata accessor for DeviceEntity();
  v3[35] = v20;
  v21 = *(v20 - 8);
  v3[36] = v21;
  v22 = *(v21 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v26 = swift_task_alloc();
  v3[45] = v26;
  *v26 = v3;
  v26[1] = sub_25276A010;

  return sub_25276B430(a2, a3);
}

uint64_t sub_25276A010(uint64_t a1)
{
  v3 = *(*v2 + 360);
  v4 = *v2;
  v4[46] = a1;

  if (v1)
  {
    v6 = v4[43];
    v5 = v4[44];
    v8 = v4[41];
    v7 = v4[42];
    v10 = v4[39];
    v9 = v4[40];
    v11 = v4[37];
    v12 = v4[38];
    v13 = v4[34];
    v17 = v4[33];
    v18 = v4[30];
    v19 = v4[29];
    v20 = v4[28];
    v14 = v4[21];
    v21 = v4[25];
    v22 = v4[22];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25276A228, 0, 0);
  }
}

uint64_t sub_25276A228()
{
  v1 = *(v0[46] + 16);
  v0[47] = v1;
  if (v1)
  {
    v2 = v0[44];
    v3 = v0[41];
    v4 = v0[18];
    sub_2528BE790();
    v5 = sub_2528C00B0();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_task_alloc();
    v0[48] = v6;
    *v6 = v0;
    v6[1] = sub_25276A48C;
    v7 = v0[44];
    v8 = v0[41];

    return sub_2527817B8(v7, v8);
  }

  else
  {
    v10 = v0[16];

    v0[15] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF08, &unk_2528C6B30);
    sub_25276E9C8();
    sub_2528BE660();
    v12 = v0[43];
    v11 = v0[44];
    v14 = v0[41];
    v13 = v0[42];
    v16 = v0[39];
    v15 = v0[40];
    v18 = v0[37];
    v17 = v0[38];
    v19 = v0[33];
    v20 = v0[34];
    v22 = v0[30];
    v23 = v0[29];
    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[22];
    v27 = v0[21];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_25276A48C(uint64_t a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 328);
  v6 = *v1;
  *(*v1 + 392) = a1;

  sub_2527213D8(v4, &qword_27F4FC478, &unk_2528C3F70);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25276A5E8, 0, 0);
}

uint64_t sub_25276A5E8()
{
  v160 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v144 = *(v0 + 288);
  v4 = *(v0 + 256);
  v138 = *(v0 + 216);
  v5 = *(v0 + 192);
  v156 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF8, &qword_2528C6AD8);
  v8 = sub_25272275C(&qword_27F4FCF00, &qword_27F4FCEF8, &qword_2528C6AD8);
  *(v0 + 16) = v1;
  *(v0 + 48) = v8;
  v9 = sub_2528C0C40();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_25276E828(v0 + 16, v0 + 56);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  sub_25271A650((v0 + 56), (v10 + 5));
  v10[10] = v7;
  v10[11] = v6;
  v153 = v1;

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v3, &unk_2528C6B20, v10);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v137 = sub_25278DDE0(MEMORY[0x277D84F90]);
  v11 = 0;
  v136 = v2 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
  v139 = (v156 + 48);
  v141 = (v4 + 56);
  v12 = (v4 + 48);
  v128 = (v4 + 16);
  v147 = (v4 + 32);
  v13 = (v4 + 8);
  v134 = (v5 + 48);
  v129 = (v5 + 8);
  v130 = (v5 + 32);
  v133 = (v138 + 8);
  v135 = v13;
  v157 = v12;
  do
  {
    if (v11 >= *(*(v0 + 368) + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v0 + 344);
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);
    v150 = v11;
    sub_25276E960(v136 + *(v144 + 72) * v11, *(v0 + 312), type metadata accessor for DeviceEntity);
    sub_2528BE790();
    v27 = *v139;
    if ((*v139)(v24, 1, v26))
    {
      v28 = *(v0 + 392);
      v29 = *(v0 + 312);
      v31 = *(v0 + 240);
      v30 = *(v0 + 248);
      v32 = *(v0 + 232);
      sub_2527213D8(*(v0 + 344), &qword_27F4FC488, &unk_2528C3F80);
      v33 = *v141;
      (*v141)(v32, 1, 1, v30);
      sub_25281A8C0(v28, v31);
      v34 = *v157;
      if ((*v157)(v32, 1, v30) != 1)
      {
        sub_2527213D8(*(v0 + 232), &qword_27F4FC628, &qword_2528C4750);
      }
    }

    else
    {
      v35 = *(v0 + 344);
      v37 = *(v0 + 240);
      v36 = *(v0 + 248);
      v38 = *(v0 + 232);
      (*v128)(v38, v35, v36);
      sub_2527213D8(v35, &qword_27F4FC488, &unk_2528C3F80);
      v33 = *v141;
      (*v141)(v38, 0, 1, v36);
      (*v147)(v37, v38, v36);
      v33(v37, 0, 1, v36);
      v34 = *v12;
    }

    v39 = *(v0 + 240);
    v40 = *(v0 + 248);
    if (v34(v39, 1, v40) == 1)
    {
      v68 = *(v0 + 392);
      v69 = *(v0 + 368);
      v70 = *(v0 + 312);

      sub_2527213D8(v39, &qword_27F4FC628, &qword_2528C4750);
      type metadata accessor for HomeAppIntentError();
      sub_25276EA4C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_29;
    }

    (*v147)(*(v0 + 272), v39, v40);
    v41 = *(v0 + 392);
    if (!*(v153 + 16))
    {
      goto LABEL_21;
    }

    v42 = sub_252785C40(*(v0 + 272));
    if ((v43 & 1) == 0)
    {
      v71 = *(v0 + 392);
LABEL_21:
      v72 = *(v0 + 368);

      v73 = *(v0 + 336);
      v74 = *(v0 + 272);
      v75 = *(v0 + 248);
      v76 = *(v0 + 144);
      v77 = *(v0 + 152);

      type metadata accessor for HomeAppIntentError();
      sub_25276EA4C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v79 = v78;
      v80 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
      (*v128)(v79, v74, v75);
      v33(v79, 0, 1, v75);
      sub_2528BE790();
      v81 = v27(v73, 1, v77);
      v82 = *(v0 + 336);
      if (v81)
      {
        sub_2527213D8(v82, &qword_27F4FC488, &unk_2528C3F80);
        v83 = 0;
        v84 = 0;
      }

      else
      {
        v107 = *(v0 + 168);
        v108 = *(v0 + 152);
        v109 = *(v0 + 336);
        sub_25276E960(v82, v107, type metadata accessor for HomeEntity);
        sub_2527213D8(v109, &qword_27F4FC488, &unk_2528C3F80);
        v110 = *(v107 + *(v108 + 20));
        sub_2528BE6B0();
        v83 = *(v0 + 96);
        v84 = *(v0 + 104);
        sub_25276EA94(v107, type metadata accessor for HomeEntity);
      }

      v70 = *(v0 + 312);
      v111 = *(v0 + 272);
      v112 = *(v0 + 248);
      *v80 = v83;
      v80[1] = v84;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*v135)(v111, v112);
LABEL_29:
      sub_25276EA94(v70, type metadata accessor for DeviceEntity);
      v114 = *(v0 + 344);
      v113 = *(v0 + 352);
      v116 = *(v0 + 328);
      v115 = *(v0 + 336);
      v118 = *(v0 + 312);
      v117 = *(v0 + 320);
      v119 = *(v0 + 296);
      v120 = *(v0 + 304);
      v121 = *(v0 + 264);
      v122 = *(v0 + 272);
      v140 = *(v0 + 240);
      v143 = *(v0 + 232);
      v146 = *(v0 + 224);
      v149 = *(v0 + 200);
      v152 = *(v0 + 176);
      v155 = *(v0 + 168);

      v106 = *(v0 + 8);
      goto LABEL_30;
    }

    v44 = *(v0 + 312);
    v45 = *(v0 + 264);
    v46 = *(v0 + 248);
    v48 = *(v0 + 176);
    v47 = *(v0 + 184);
    (*(v138 + 16))(*(v0 + 224), *(v153 + 56) + *(v138 + 72) * v42, *(v0 + 208));
    sub_252819FA8(v45);
    sub_2528C0080();
    v49 = *v13;
    (*v13)(v45, v46);
    if ((*v134)(v48, 1, v47) == 1)
    {
      sub_2527213D8(*(v0 + 176), &qword_27F4FCEF0, &unk_2528C6AB0);
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 304);
      v51 = *(v0 + 312);
      v52 = sub_2528C08B0();
      __swift_project_value_buffer(v52, qword_27F5025C8);
      sub_25276E960(v51, v50, type metadata accessor for DeviceEntity);
      v53 = sub_2528C0890();
      v10 = sub_2528C0D10();
      v54 = os_log_type_enabled(v53, v10);
      v56 = *(v0 + 304);
      v55 = *(v0 + 312);
      if (v54)
      {
        v57 = *(v0 + 296);
        v132 = v49;
        v58 = *(v0 + 280);
        v126 = *(v0 + 248);
        v127 = *(v0 + 272);
        v124 = *(v0 + 208);
        v125 = *(v0 + 224);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v159[0] = v60;
        *v59 = 136315138;
        sub_25276E960(v56, v57, type metadata accessor for DeviceEntity);
        v61 = sub_2528C0A10();
        v63 = v62;
        sub_25276EA94(v56, type metadata accessor for DeviceEntity);
        v64 = sub_2527389AC(v61, v63, v159);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_252711000, v53, v10, "No endpoint found for %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x2530A8D80](v60, -1, -1);
        MEMORY[0x2530A8D80](v59, -1, -1);

        (*v133)(v125, v124);
        v13 = v135;
        v132(v127, v126);
      }

      else
      {
        v10 = *(v0 + 272);
        v65 = *(v0 + 248);
        v66 = *(v0 + 224);
        v67 = *(v0 + 208);

        sub_25276EA94(v56, type metadata accessor for DeviceEntity);
        (*v133)(v66, v67);
        v13 = v135;
        v49(v10, v65);
      }

      v23 = v55;
    }

    else
    {
      v10 = *(v0 + 312);
      v131 = *(v0 + 272);
      v14 = *(v0 + 248);
      v15 = *(v0 + 224);
      v17 = *(v0 + 200);
      v16 = *(v0 + 208);
      v18 = *(v0 + 184);
      (*v130)(v17, *(v0 + 176), v18);
      v19 = v49;
      v20 = sub_25276E0C8(v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v137;
      sub_25278BC58(v20, v10, isUniquelyReferenced_nonNull_native);
      v137 = v159[0];
      v22 = v18;
      v13 = v135;
      (*v129)(v17, v22);
      (*v133)(v15, v16);
      v19(v131, v14);
      v23 = v10;
    }

    sub_25276EA94(v23, type metadata accessor for DeviceEntity);
    v11 = v150 + 1;
    v12 = v157;
  }

  while (v150 + 1 != *(v0 + 376));
  v85 = *(v0 + 392);
  v86 = *(v0 + 368);

  v10 = sub_25272E628(v137);

  if (qword_27F4FBB40 == -1)
  {
    goto LABEL_24;
  }

LABEL_34:
  swift_once();
LABEL_24:
  v87 = sub_2528C08B0();
  __swift_project_value_buffer(v87, qword_27F5025C8);

  v88 = sub_2528C0890();
  v89 = sub_2528C0D10();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v159[0] = v91;
    *v90 = 136315138;
    v92 = MEMORY[0x2530A81A0](v10, &type metadata for DeviceInfoResult);
    v94 = sub_2527389AC(v92, v93, v159);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_252711000, v88, v89, "GetDeviceInfoIntent finished with results %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    MEMORY[0x2530A8D80](v91, -1, -1);
    MEMORY[0x2530A8D80](v90, -1, -1);
  }

  v95 = *(v0 + 128);
  *(v0 + 112) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF08, &unk_2528C6B30);
  sub_25276E9C8();
  sub_2528BE660();

  v97 = *(v0 + 344);
  v96 = *(v0 + 352);
  v99 = *(v0 + 328);
  v98 = *(v0 + 336);
  v101 = *(v0 + 312);
  v100 = *(v0 + 320);
  v103 = *(v0 + 296);
  v102 = *(v0 + 304);
  v104 = *(v0 + 264);
  v105 = *(v0 + 272);
  v142 = *(v0 + 240);
  v145 = *(v0 + 232);
  v148 = *(v0 + 224);
  v151 = *(v0 + 200);
  v154 = *(v0 + 176);
  v158 = *(v0 + 168);

  v106 = *(v0 + 8);
LABEL_30:

  return v106();
}

uint64_t sub_25276B430(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276B510, 0, 0);
}

uint64_t sub_25276B510()
{
  v1 = v0[3];
  sub_2528BE790();
  v2 = v0[2];
  if (v2)
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    v6 = v0[1];
    v7 = v2;
  }

  else
  {
    if (qword_27F4FB650 != -1)
    {
      swift_once();
    }

    if (dword_27F5028A0 == 7)
    {
      if (qword_27F4FB670 != -1)
      {
        swift_once();
      }

      v9 = v0[6];
      v10 = sub_2528C00B0();
      v11 = __swift_project_value_buffer(v10, qword_27F4FCEA8);
      v12 = *(v10 - 8);
      (*(v12 + 16))(v9, v11, v10);
      (*(v12 + 56))(v9, 0, 1, v10);
    }

    else
    {
      v13 = v0[6];
      v14 = sub_2528C00B0();
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    }

    v16 = v0[4];
    v15 = v0[5];
    sub_25276EAF4(v0[6], v0[7]);
    sub_2528BE790();
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_25276B780;
    v18 = v0[7];
    v7 = v0[5];
    v6 = sub_2528354DC;
  }

  return v6(v7);
}

uint64_t sub_25276B780(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[5];
  if (v1)
  {
    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
    v8 = sub_25276B988;
  }

  else
  {
    v4[10] = a1;
    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
    v8 = sub_25276B8E8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25276B8E8()
{
  sub_2527213D8(v0[7], &qword_27F4FC478, &unk_2528C3F70);
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_25276B988()
{
  v1 = v0[6];
  v2 = v0[5];
  sub_2527213D8(v0[7], &qword_27F4FC478, &unk_2528C3F70);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_25276BA24()
{
  v0 = sub_2528C00B0();
  __swift_allocate_value_buffer(v0, qword_27F4FCEA8);
  v1 = __swift_project_value_buffer(v0, qword_27F4FCEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
  v2 = sub_2528BFCF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528C3910;
  (*(v3 + 104))(v6 + v5, *MEMORY[0x277D15EE0], v2);
  v7 = sub_252749AA8(v6);
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  *v1 = v7;
  v8 = *MEMORY[0x277D16510];
  v9 = *(*(v0 - 8) + 104);

  return v9(v1, v8, v0);
}

uint64_t sub_25276BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v9 = sub_2528BE8B0();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v11 = *(v10 + 64) + 15;
  v7[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF18, &unk_2528C6B48) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276BD00, 0, 0);
}

uint64_t sub_25276BD00()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v11 = *(v0 + 96);
  sub_25276E828(*(v0 + 88), v0 + 16);
  *(v0 + 56) = v11;
  sub_2527695E8();

  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_25276BE28;
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 80);

  return sub_2527F6070(v7, v9, v0 + 16, v8);
}

uint64_t sub_25276BE28()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25276BF24, 0, 0);
}

uint64_t sub_25276BF24()
{
  v1 = *(v0 + 144);
  DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent();
  v3 = (*(*(DeviceInfoEvent - 8) + 48))(v1, 1, DeviceInfoEvent);
  if (v3 == 1)
  {
    sub_2527213D8(v1, &qword_27F4FCF18, &unk_2528C6B48);
  }

  else
  {
    sub_25276EA4C(&qword_27F4FCF20, type metadata accessor for GetDeviceInfoEvent);
    sub_2528BFA10();
    sub_25276EA94(v1, type metadata accessor for GetDeviceInfoEvent);
  }

  v4 = v3 == 1;
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  **(v0 + 72) = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25276C078@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB668 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25276C120(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25271F3AC;

  return sub_2527696F4(a1, v5, v4);
}

uint64_t sub_25276C1CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25276E268();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25276C1F4(uint64_t a1)
{
  v2 = sub_2527695E8();

  return MEMORY[0x28210B538](a1, v2);
}

void sub_25276C240(unint64_t a1@<X0>, void *a2@<X8>)
{
  v127 = a2;
  v131 = sub_2528C04E0();
  v129 = *(v131 - 8);
  v3 = *(v129 + 64);
  v4 = MEMORY[0x28223BE20](v131);
  v132 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v128 = &v96 - v7;
  MEMORY[0x28223BE20](v6);
  v125 = (&v96 - v8);
  v9 = sub_2528C0550();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v120 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = &v96 - v14;
  v124 = sub_2528C0540();
  v130 = *(v124 - 8);
  v15 = *(v130 + 64);
  v16 = MEMORY[0x28223BE20](v124);
  v121 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v96 - v18;
  v19 = sub_2528C0570();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v139 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v96 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v96 - v26;
  v28 = sub_2528C04C0();
  v29 = *MEMORY[0x277D16A78];
  v135 = v10;
  v30 = *(v10 + 104);
  v117 = v29;
  v126 = v9;
  v134 = v30;
  v30(v27);
  v31 = *MEMORY[0x277D16AA8];
  v133 = v20[13];
  v133(v27, v31, v19);
  v32 = sub_2528191A4(v27, v28);

  v137 = v20;
  v34 = v20[1];
  v33 = (v20 + 1);
  v136 = v34;
  v34(v27, v19);
  v119 = v31;
  v140 = v19;
  if (v32)
  {
    v118 = *MEMORY[0x277D16A88];
  }

  else
  {
    v35 = MEMORY[0x277D16A88];
    v36 = sub_2528C04C0();
    v118 = *v35;
    v134(v27);
    v133(v27, v31, v19);
    LOBYTE(v35) = sub_2528191A4(v27, v36);

    v136(v27, v19);
    if ((v35 & 1) == 0)
    {
      if (qword_27F4FBB40 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_54;
    }
  }

  v134 = v33;
  v37 = sub_2528C04C0();
  v39 = v37 + 56;
  v38 = *(v37 + 56);
  v40 = 1 << *(v37 + 32);
  v41 = -1;
  LODWORD(v133) = *MEMORY[0x277D16A60];
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  a1 = v41 & v38;
  LODWORD(v129) = *MEMORY[0x277D16A68];
  v42 = (v40 + 63) >> 6;
  v132 = (v137 + 2);
  v111 = *MEMORY[0x277D16A98];
  v131 = (v137 + 11);
  v125 = (v137 + 12);
  v110 = (v135 + 32);
  v103 = *MEMORY[0x277D16A70];
  v109 = (v135 + 16);
  v108 = (v135 + 88);
  v116 = *MEMORY[0x277D16A28];
  v107 = (v135 + 8);
  v115 = (v130 + 32);
  v114 = (v130 + 16);
  v113 = (v130 + 88);
  v106 = *MEMORY[0x277D16A38];
  v105 = *MEMORY[0x277D16A40];
  v104 = *MEMORY[0x277D16A48];
  v102 = *MEMORY[0x277D16A58];
  v101 = *MEMORY[0x277D16A50];
  v100 = *MEMORY[0x277D16A20];
  v99 = *MEMORY[0x277D16A18];
  v98 = *MEMORY[0x277D16A30];
  v112 = (v130 + 8);
  v97 = *MEMORY[0x277D16A10];
  v135 = v37;

  v43 = 0;
  v128 = MEMORY[0x277D84F90];
  v130 = v39;
LABEL_7:
  v44 = v43;
  if (!a1)
  {
    goto LABEL_9;
  }

  do
  {
    v43 = v44;
LABEL_12:
    v45 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v46 = v137;
    v47 = v138;
    v48 = v137[2];
    v49 = v140;
    v48(v138, *(v135 + 48) + v137[9] * (v45 | (v43 << 6)), v140);
    v50 = v139;
    v48(v139, v47, v49);
    v51 = (v46[11])(v50, v49);
    if (v51 == v133)
    {
      v54 = v139;
      (*v125)(v139, v140);
      v55 = v123;
      v56 = v54;
      v57 = v124;
      (*v115)(v123, v56, v124);
      v58 = v121;
      (*v114)(v121, v55, v57);
      v59 = (*v113)(v58, v57);
      if (v59 == v116)
      {
        v60 = 4;
      }

      else if (v59 == v106)
      {
        v60 = 6;
      }

      else if (v59 == v105)
      {
        v60 = 5;
      }

      else if (v59 == v104)
      {
        v60 = 7;
      }

      else if (v59 == v102)
      {
        v60 = 8;
      }

      else if (v59 == v101)
      {
        v60 = 9;
      }

      else if (v59 == v100)
      {
        v60 = 12;
      }

      else if (v59 == v99)
      {
        v60 = 13;
      }

      else if (v59 == v98)
      {
        v60 = 10;
      }

      else
      {
        if (v59 != v97)
        {
          goto LABEL_63;
        }

        v60 = 11;
      }

      (*v112)(v123, v124);
LABEL_47:
      v136(v138, v140);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_2527381A4(0, *(v128 + 2) + 1, 1, v128);
      }

      v69 = *(v128 + 2);
      v68 = *(v128 + 3);
      if (v69 >= v68 >> 1)
      {
        v128 = sub_2527381A4((v68 > 1), v69 + 1, 1, v128);
      }

      v70 = v128;
      *(v128 + 2) = v69 + 1;
      v70[v69 + 32] = v60;
      v39 = v130;
      goto LABEL_7;
    }

    if (v51 != v129)
    {
      if (v51 != v119)
      {
        goto LABEL_63;
      }

      v61 = v139;
      (*v125)(v139, v140);
      v62 = v122;
      v63 = v61;
      v64 = v126;
      (*v110)(v122, v63, v126);
      v65 = v120;
      (*v109)(v120, v62, v64);
      v66 = (*v108)(v65, v64);
      if (v66 == v111)
      {
        v60 = 3;
        v67 = v126;
      }

      else
      {
        v67 = v126;
        if (v66 == v118)
        {
          v60 = 0;
        }

        else if (v66 == v117)
        {
          v60 = 1;
        }

        else
        {
          if (v66 != v103)
          {
            sub_2528C1050();
            __break(1u);
LABEL_63:
            sub_2528C1050();
            __break(1u);
            return;
          }

          v60 = 2;
        }
      }

      (*v107)(v122, v67);
      goto LABEL_47;
    }

    v52 = v140;
    v53 = v136;
    v136(v139, v140);
    v53(v138, v52);
    v44 = v43;
    v39 = v130;
  }

  while (a1);
LABEL_9:
  while (1)
  {
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      goto LABEL_58;
    }

    a1 = *(v39 + 8 * v43);
    ++v44;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_54:
  v71 = sub_2528C08B0();
  __swift_project_value_buffer(v71, qword_27F5025C8);
  v72 = v129;
  v73 = *(v129 + 16);
  v74 = v125;
  v75 = v131;
  v73(v125, a1, v131);
  v76 = v128;
  v73(v128, a1, v75);
  v77 = v132;
  v73(v132, a1, v75);
  v78 = sub_2528C0890();
  v79 = sub_2528C0CF0();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v141 = v139;
    *v80 = 134218498;
    v81 = sub_2528C04B0();
    LODWORD(v138) = v79;
    v82 = v81;
    v83 = *(v72 + 8);
    v83(v74, v75);
    *(v80 + 4) = v82;
    *(v80 + 12) = 2080;
    v84 = sub_2528C04D0();
    v86 = v85;
    v83(v76, v75);
    v87 = sub_2527389AC(v84, v86, &v141);

    *(v80 + 14) = v87;
    *(v80 + 22) = 2080;
    v88 = v132;
    sub_2528C04C0();
    sub_25276EA4C(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
    v89 = sub_2528C0C80();
    v90 = v75;
    v92 = v91;

    v83(v88, v90);
    v93 = sub_2527389AC(v89, v92, &v141);

    *(v80 + 24) = v93;
    _os_log_impl(&dword_252711000, v78, v138, "Unexpectedly found clean mode (id: %lu, label: %s) without mop or vacuum tags: %s", v80, 0x20u);
    v94 = v139;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v94, -1, -1);
    MEMORY[0x2530A8D80](v80, -1, -1);
  }

  else
  {
    v95 = *(v72 + 8);
    v95(v74, v75);

    v95(v77, v75);
    v95(v76, v75);
  }

  v128 = 0;
LABEL_58:
  *v127 = v128;
}

uint64_t sub_25276CFF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2528C0E70();

  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF28, &qword_2528D2DA0);
  v2 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v2);

  MEMORY[0x2530A80B0](0x6E45656D6F68202CLL, 0xEE00203A79746974);
  sub_2528BE790();
  v3 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v3);

  return 0x3A73656369766564;
}

uint64_t sub_25276D150@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - v5;
  sub_2527FECD0(&v48, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v8 = sub_252755F54();
  MEMORY[0x2530A60E0](&v34, &v48, v7, &type metadata for DeviceEntityFromAccessoryTypeResolver, v8);
  v41[4] = v52;
  v41[5] = v53;
  v41[6] = v54;
  v41[0] = v48;
  v41[1] = v49;
  v41[2] = v50;
  v41[3] = v51;
  v9 = sub_252755FA8(v41);
  sub_2527FECD0(&v48, v9);
  v10 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v27, &v48, v7, &type metadata for DeviceEntityFromInputTypeResolver, v10);
  v42[4] = v52;
  v42[5] = v53;
  v42[6] = v54;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  v42[3] = v51;
  sub_252756050(v42);
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_2527560A4(v43, &v48);
  sub_252756100();
  sub_2528BEAA0();
  v44[4] = v24;
  v44[5] = v25;
  v44[6] = v26;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  sub_252755FA8(v44);
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  sub_2527561B4(v45, &v48);
  v12[2] = v8;
  v12[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v46[4] = v17;
  v46[5] = v18;
  v46[6] = v19;
  v46[0] = v13;
  v46[1] = v14;
  v46[3] = v16;
  v46[2] = v15;
  sub_252756050(v46);
  (*(v2 + 8))(v6, v1);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[3] = v30;
  v47[2] = v29;
  sub_252756050(v47);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  return sub_252755FA8(&v48);
}

unint64_t sub_25276D484()
{
  v127[6] = *MEMORY[0x277D85DE8];
  v0 = sub_2528BF1D0();
  v1 = *(v0 - 8);
  v117 = v0;
  v118 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v116 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2528BF130();
  v5 = *(v4 - 8);
  v122 = v4;
  v123 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v121 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = v105 - v13;
  v14 = sub_2528C04E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v105 - v21;
  v23 = sub_2528C04F0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2528BFB20();
  sub_2528BFA40();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_2527213D8(v22, &qword_27F4FC208, &qword_2528C6B40);
    result = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7C8, &qword_2528C4880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2528C17D0;
    *(inited + 32) = 258;
    *(inited + 34) = 0;
    if (sub_2528C0290())
    {
      v30 = sub_252738190(1, 4, 1, inited);
      *(v30 + 2) = 4;
      v114 = v30;
      v30[35] = 6;
    }

    else
    {
      v114 = inited;
    }

    v31 = sub_2528C0320();
    v112 = v24;
    v113 = v27;
    v115 = v12;
    v111 = v23;
    if (v31)
    {
      v32 = v31;
      v33 = *(v31 + 16);
      if (v33)
      {
        v34 = 0;
        v119 = (v33 - 1);
        v124 = MEMORY[0x277D84F90];
        do
        {
          v35 = v34;
          while (1)
          {
            if (v35 >= *(v32 + 16))
            {
              __break(1u);
            }

            (*(v15 + 16))(v18, v32 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v35, v14);
            sub_25276C240(v18, v127);
            (*(v15 + 8))(v18, v14);
            v36 = v127[0];
            if (v127[0])
            {
              break;
            }

            if (v33 == ++v35)
            {
              goto LABEL_22;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = sub_252738038(0, v124[2] + 1, 1, v124);
          }

          v38 = v124[2];
          v37 = v124[3];
          v39 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            v110 = v38 + 1;
            v109 = v38;
            v41 = sub_252738038((v37 > 1), v38 + 1, 1, v124);
            v39 = v110;
            v38 = v109;
            v124 = v41;
          }

          v34 = (v35 + 1);
          v40 = v124;
          v124[2] = v39;
          v40[v38 + 4] = v36;
        }

        while (v119 != v35);
      }

      else
      {
        v124 = MEMORY[0x277D84F90];
      }

LABEL_22:

      v24 = v112;
      v27 = v113;
      v12 = v115;
    }

    else
    {
      v124 = MEMORY[0x277D84F90];
    }

    v42 = v114;
    v43 = *(v114 + 16);
    v44 = MEMORY[0x277D84F90];
    if (v43)
    {
      v127[0] = MEMORY[0x277D84F90];
      sub_25282F154(0, v43, 0);
      v45 = v127[0];
      v46 = (v42 + 32);
      v47 = *(v127[0] + 16);
      v48 = 40 * v47;
      do
      {
        v50 = *v46++;
        v49 = v50;
        v127[0] = v45;
        v51 = *(v45 + 24);
        v52 = v47 + 1;
        if (v47 >= v51 >> 1)
        {
          sub_25282F154((v51 > 1), v47 + 1, 1);
          v45 = v127[0];
        }

        *(v45 + 16) = v52;
        v53 = v45 + v48;
        *(v53 + 32) = v49;
        *(v53 + 40) = v44;
        *(v53 + 48) = 0;
        *(v53 + 56) = 0;
        v48 += 40;
        v47 = v52;
        *(v53 + 64) = 0;
        --v43;
      }

      while (v43);
      v12 = v115;
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    v110 = v45;
    v54 = v124;
    v55 = v124[2];
    v56 = v120;
    if (v55)
    {
      v127[0] = v44;
      sub_25282F154(0, v55, 0);
      v57 = 4;
      v58 = v127[0];
      do
      {
        v59 = v54[v57];
        v127[0] = v58;
        v61 = *(v58 + 16);
        v60 = *(v58 + 24);

        if (v61 >= v60 >> 1)
        {
          sub_25282F154((v60 > 1), v61 + 1, 1);
          v58 = v127[0];
        }

        *(v58 + 16) = v61 + 1;
        v62 = v58 + 40 * v61;
        *(v62 + 32) = 1;
        *(v62 + 40) = v59;
        *(v62 + 48) = 0;
        *(v62 + 56) = 0;
        *(v62 + 64) = 0;
        ++v57;
        --v55;
        v54 = v124;
      }

      while (v55);
      v109 = v58;

      v24 = v112;
      v27 = v113;
      v12 = v115;
      v56 = v120;
    }

    else
    {

      v109 = MEMORY[0x277D84F90];
    }

    sub_2528C02A0();
    v63 = sub_2528BF1E0();
    v64 = *(v63 - 8);
    v65 = *(v64 + 48);
    v66 = v65(v56, 1, v63);
    v108 = v65;
    if (v66 == 1)
    {
      sub_2527213D8(v56, &qword_27F4FC2A8, &qword_2528C3958);
      v67 = 0;
    }

    else
    {
      v68 = sub_2528BF190();
      (*(v64 + 8))(v56, v63);
      v69 = *(v68 + 16);
      if (v69)
      {
        v105[1] = v64 + 48;
        v106 = v64;
        v107 = v63;
        v124 = *(v123 + 16);
        v70 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v105[0] = v68;
        v71 = v68 + v70;
        v72 = *(v123 + 72);
        v123 += 16;
        v119 = (v123 - 8);
        v120 = v72;
        v67 = MEMORY[0x277D84F90];
        do
        {
          v73 = v121;
          v74 = v122;
          (v124)(v121, v71, v122);
          v75 = sub_2528BF110();
          v76 = sub_2528BF120();
          v77 = BYTE4(v76) & 1;
          if ((v76 & 0x100000000) != 0)
          {
            v78 = 0;
          }

          else
          {
            v78 = v76;
          }

          v79 = sub_2528BF100();
          v81 = v80;
          (*v119)(v73, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_252737A78(0, *(v67 + 2) + 1, 1, v67);
          }

          v83 = *(v67 + 2);
          v82 = *(v67 + 3);
          v84 = v67;
          if (v83 >= v82 >> 1)
          {
            v84 = sub_252737A78((v82 > 1), v83 + 1, 1, v67);
          }

          *(v84 + 2) = v83 + 1;
          v67 = v84;
          v85 = &v84[40 * v83];
          *(v85 + 4) = v75;
          *(v85 + 5) = v79;
          *(v85 + 6) = v81;
          *(v85 + 7) = v78;
          v85[64] = v77 | 0x40;
          v71 += v120;
          --v69;
        }

        while (v69);

        v24 = v112;
        v27 = v113;
        v12 = v115;
        v44 = MEMORY[0x277D84F90];
        v63 = v107;
        v64 = v106;
      }

      else
      {

        v67 = MEMORY[0x277D84F90];
        v27 = v113;
      }
    }

    sub_2528C02A0();
    if (v108(v12, 1, v63) == 1)
    {

      sub_2527213D8(v12, &qword_27F4FC2A8, &qword_2528C3958);
      v86 = 0;
    }

    else
    {
      v87 = sub_2528BF170();
      (*(v64 + 8))(v12, v63);
      if (v87)
      {
        v122 = v67;
        v88 = *(v87 + 16);
        if (v88)
        {
          v127[0] = v44;
          sub_25282F154(0, v88, 0);
          v86 = v127[0];
          v89 = *(v118 + 16);
          v90 = *(v118 + 80);
          v121 = v87;
          v91 = v87 + ((v90 + 32) & ~v90);
          v123 = *(v118 + 72);
          v124 = v89;
          v118 += 16;
          v92 = (v118 - 8);
          do
          {
            v93 = v116;
            v94 = v117;
            (v124)(v116, v91, v117);
            v95 = sub_2528BF1B0();
            v96 = sub_2528BF1C0();
            v98 = v97;
            (*v92)(v93, v94);
            v127[0] = v86;
            v100 = *(v86 + 16);
            v99 = *(v86 + 24);
            if (v100 >= v99 >> 1)
            {
              sub_25282F154((v99 > 1), v100 + 1, 1);
              v86 = v127[0];
            }

            *(v86 + 16) = v100 + 1;
            v101 = v86 + 40 * v100;
            *(v101 + 32) = v95;
            *(v101 + 40) = v96;
            *(v101 + 48) = v98;
            *(v101 + 56) = 0;
            *(v101 + 64) = 0x80;
            v91 += v123;
            --v88;
          }

          while (v88);

          v24 = v112;
          v27 = v113;
          v44 = MEMORY[0x277D84F90];
        }

        else
        {

          v86 = MEMORY[0x277D84F90];
        }

        v67 = v122;
      }

      else
      {

        v86 = 0;
      }
    }

    v126 = v110;
    sub_252735FA8(v109);
    if (v67)
    {
      v102 = v67;
    }

    else
    {
      v102 = v44;
    }

    sub_252735FA8(v102);
    if (v86)
    {
      v103 = v86;
    }

    else
    {
      v103 = v44;
    }

    v125 = v126;
    sub_252735FA8(v103);
    sub_252735FA8(&unk_286493BC0);
    (*(v24 + 8))(v27, v111);
    result = v125;
  }

  v104 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_25276E0C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2528BE6B0();
  v2 = v15 >> 14;
  v3 = HIBYTE(v15) & 0x3F;
  if (v2 != 1)
  {
    v3 = v15;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v15;
  }

  if (v4 == 21)
  {
    return sub_25276D484();
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v6 = sub_2528C08B0();
  __swift_project_value_buffer(v6, qword_27F5025C8);
  v7 = sub_2528C0890();
  v8 = sub_2528C0D10();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_2528C0A10();
    v13 = sub_2527389AC(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_252711000, v7, v8, "DeviceType %s is not yet supported for PossibleValuesForAttribute", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25276E268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v40 = &v28 - v2;
  v37 = sub_2528BE950();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v10;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v30 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_2528BEC40();
  v34 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE8, &qword_2528D2D50);
  sub_2528BEC20();
  v33 = *(v18 + 56);
  v33(v16, 1, 1, v17);
  v41 = 0;
  v20 = sub_2528BE630();
  v21 = *(*(v20 - 8) + 56);
  v21(v12, 1, 1, v20);
  v21(v10, 1, 1, v20);
  v35 = *MEMORY[0x277CBA308];
  v22 = *(v3 + 104);
  v36 = v3 + 104;
  v38 = v22;
  v23 = v39;
  v22(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70);
  sub_25276EA4C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v24 = v29;
  v25 = v30;
  v32 = sub_2528BE7E0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v33(v16, 1, 1, v34);
  v26 = type metadata accessor for HomeEntity(0);
  (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  v21(v25, 1, 1, v20);
  v21(v24, 1, 1, v20);
  v38(v23, v35, v37);
  sub_25276EA4C(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  sub_2528BE7F0();
  return v32;
}

uint64_t sub_25276E7BC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78) - 8) + 80);

  return sub_2527BB4C0();
}

uint64_t sub_25276E828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25276E88C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25271F3AC;

  return sub_25276BBC8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_25276E960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25276E9C8()
{
  result = qword_27F4FCF10;
  if (!qword_27F4FCF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCF08, &unk_2528C6B30);
    sub_25272CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF10);
  }

  return result;
}

uint64_t sub_25276EA4C(unint64_t *a1, void (*a2)(uint64_t))
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