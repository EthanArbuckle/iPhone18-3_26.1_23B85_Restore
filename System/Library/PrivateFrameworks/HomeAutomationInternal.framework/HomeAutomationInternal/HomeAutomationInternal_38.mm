uint64_t sub_252BF155C(uint64_t a1, void *a2, void (*a3)(void *a1), void (*a4)(void *a1))
{
  v85 = a4;
  v92 = a3;
  v86 = a2;
  v87 = a1;
  v80 = sub_252E36CB4();
  v79 = *(v80 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36D54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v74 = &v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  v95 = &v71 - v19;
  sub_252E36D14();
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F90];
  v22 = *(v7 + 16);
  v90 = v7 + 16;
  v94 = v22;
  v22(v18, v20, v6);
  v23 = *(v7 + 80);
  v77 = v7;
  v24 = (v23 + 16) & ~v23;
  v84 = v8 + 7;
  v25 = (v8 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v88 = *(v7 + 32);
  v89 = v7 + 32;
  v88(v26 + v24, v18, v6);
  v75 = v26;
  v91 = v21;
  *(v26 + v25) = v21;
  v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v85;
  *v27 = v92;
  v27[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E60, &qword_252E52220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  v30 = v95;
  v94(v18, v95, v6);
  v71 = (v23 + 32) & ~v23;
  v31 = (v84 + v71) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v93;
  *(v32 + 16) = v87;
  *(v32 + 24) = v33;
  v34 = v88;
  v88(v32 + ((v23 + 32) & ~v23), v18, v6);
  v35 = (v32 + v31);
  v92 = sub_252BF6584;
  *v35 = sub_252BF6584;
  v35[1] = v21;
  v81 = inited;
  *(inited + 32) = sub_252BF6628;
  v73 = inited + 32;
  *(inited + 40) = v32;
  v36 = v83;
  v37 = v94;
  v94(v83, v30, v6);
  v38 = swift_allocObject();
  v39 = v93;
  *(v38 + 16) = v86;
  *(v38 + 24) = v39;
  v34(v38 + v71, v36, v6);
  v40 = (v38 + v31);
  v41 = v91;
  *v40 = v92;
  v40[1] = v41;
  v42 = v81;
  v81[6] = sub_252BF6640;
  v42[7] = v38;
  v43 = v72;
  v37(v72, v95, v6);
  v82 = v23;
  v83 = ((v23 + 24) & ~v23);
  v44 = &v83[v84] & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  v46 = v45 + ((v23 + 24) & ~v23);
  v47 = v6;
  v48 = v88;
  v88(v46, v43, v6);
  v49 = (v45 + v44);
  v50 = v91;
  v51 = v92;
  *v49 = v92;
  v49[1] = v50;
  v52 = v81;
  v81[8] = sub_252BF6720;
  v52[9] = v45;
  v53 = v74;
  v54 = v95;
  v94(v74, v95, v47);
  v55 = swift_allocObject();
  v56 = v93;
  *(v55 + 16) = v93;
  v48(&v83[v55], v53, v47);
  v57 = (v55 + v44);
  v58 = v91;
  *v57 = v51;
  v57[1] = v58;
  v52[10] = sub_252BF6738;
  v52[11] = v55;
  v59 = v56;
  v60 = v76;
  v94(v76, v54, v47);
  v61 = swift_allocObject();
  *(v61 + 16) = v59;

  v62 = v47;
  v88(&v83[v61], v60, v47);
  v63 = (v61 + v44);
  *v63 = v92;
  v63[1] = v58;
  v52[12] = sub_252BF682C;
  v52[13] = v61;
  v64 = v79;
  v65 = v78;
  v66 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D851C0], v80);
  v67 = v86;
  v68 = v59;
  swift_retain_n();
  v69 = v68;

  parallelize(qos:tasks:completion:)(v65, v52, sub_252BF658C, v75);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E68, &unk_252E52228);
  swift_arrayDestroy();

  (*(v64 + 8))(v65, v66);
  (*(v77 + 8))(v95, v62);
}

id sub_252BF1D38(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_252B680FC();
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    memcpy(__dst, (v6 + 504 * v7 - 472), sizeof(__dst));
    sub_2529353AC(__dst, v21);

    v8 = __dst[30];
    v9 = __dst[31];

    sub_252935408(__dst);
  }

  else
  {

    v8 = 0;
    v9 = 0;
  }

  sub_252DF24DC(v8, v9);

  v10 = sub_252E36F04();

  [a1 setName:v10 isConfigured:0];

  if (a3)
  {
    v11 = qword_27F53F4E8;
    v12 = a3;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E88DF0, 0xD000000000000071, 0x8000000252E801E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252E3C130;
    *(v14 + 32) = v12;
    sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
    v15 = v12;
    v16 = sub_252E37254();

    [a1 setActionSets_];
  }

  else
  {
    v15 = [a1 triggerOwnedActionSet];

    sub_252C768AC(v17);

    sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    sub_2529E6100();
    v16 = sub_252E37394();

    [v15 setActions_];
  }

  if (!sub_252B8E7A0())
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C70);
    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E88DB0, 0xD000000000000071, 0x8000000252E801E0);
    [a1 setExecuteOnce_];
    v19 = [objc_opt_self() deleteAfterExecutionPolicy];
    [a1 setPolicy_];
  }

  return [a1 setEnabled_];
}

void sub_252BF20DC(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void *, void *))
{
  v42 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_252E36AD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E88D20, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000053, 0x8000000252E88D50, 115);
    swift_beginAccess();
    sub_252BF5F1C(a2, (a4 + 16));
    swift_endAccess();
    v19 = a2;
    v42(0, a2);

    return;
  }

  v41 = a3;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, qword_27F544D60);
  (*(v14 + 16))(v17, v20, v13);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E88CF0);
  if (a1)
  {
    v21 = [a1 events];
    sub_25293F638(0, &qword_27F542120, 0x277CD19E8);
    v22 = sub_252E37264();

    v43 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E50, &qword_252E52208);
    v23 = sub_252E36F94();
    MEMORY[0x2530AD570](v23);

    MEMORY[0x2530AD570](0x657272756365720ALL, 0xEE00203A7365636ELL);
    v24 = [a1 recurrences];
    if (v24)
    {
      v25 = v24;
      sub_252E32BA4();
      v26 = sub_252E37264();

      goto LABEL_12;
    }
  }

  else
  {
    v43 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E50, &qword_252E52208);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    MEMORY[0x2530AD570](0x657272756365720ALL, 0xEE00203A7365636ELL);
  }

  v26 = 0;
LABEL_12:
  v43 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E58, &unk_252E52210);
  v28 = sub_252E36F94();
  MEMORY[0x2530AD570](v28);

  MEMORY[0x2530AD570](0x616369646572700ALL, 0xEC000000203A6574);
  if (a1 && (v29 = [a1 predicate]) != 0)
  {
    v30 = v29;
    v31 = [v29 description];

    v32 = sub_252E36F34();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v43 = v32;
  v44 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v35 = sub_252E36F94();
  MEMORY[0x2530AD570](v35);

  sub_252CC3D90(v45, v46, 0xD000000000000071, 0x8000000252E801E0);

  (*(v14 + 8))(v17, v13);
  swift_beginAccess();
  v36 = *(a4 + 16);
  v37 = v41;
  if (v36)
  {
    v38 = v36;
    v39 = [v37 uniqueIdentifier];
    sub_252E32E64();

    v40 = sub_252E32E84();
    (*(*(v40 - 8) + 56))(v12, 0, 1, v40);
    sub_252C77BA4(v12);

    sub_25293847C(v12, &unk_27F541F20, &qword_252E3C180);
  }

  swift_beginAccess();
  sub_252BF62CC((a4 + 16));
  sub_252BF109C((a4 + 16));
  swift_endAccess();
  v42(a1, 0);
}

void sub_252BF2708(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D60);
    swift_getErrorValue();
    v6 = sub_252E37E54();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x6F72726520746F47, 0xEB00000000203A72, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000023, 0x8000000252E89120, 172);

    swift_beginAccess();
    v7 = *(a2 + 16);
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2529F964C(0, v7[2] + 1, 1, v7);
      *(a2 + 16) = v7;
    }

    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      v7 = sub_2529F964C((v10 > 1), v11 + 1, 1, v7);
    }

    v7[2] = v11 + 1;
    v7[v11 + 4] = a1;
    *(a2 + 16) = v7;
    swift_endAccess();
  }
}

void sub_252BF28DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_252E36D54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36D14();
  v10 = sub_252E36D44();
  (*(v6 + 8))(v9, v5);
  v11 = sub_252E36D44();
  v12 = v10 - v11;
  if (v10 < v11)
  {
    __break(1u);
  }

  else if (qword_27F53F4E8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544D60);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_252E379F4();

  v17 = 0xD000000000000010;
  v18 = 0x8000000252E89100;
  v19 = v12;
  v14 = sub_252E37D94();
  MEMORY[0x2530AD570](v14);

  sub_252CC4A5C(v17, v18, 1, 0xD000000000000071, 0x8000000252E801E0);

  swift_beginAccess();
  if (*(*(a2 + 16) + 16))
  {
    sub_252BF6B30();
    v15 = swift_allocError();
    *v16 = 2;
    a3();
  }

  else
  {
    (a3)(0);
  }
}

void sub_252BF2B30(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v10 = sub_252E36D54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  if (a2 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    (*(v11 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = a3;
    v19 = swift_allocObject();
    (*(v11 + 32))(v19 + v17, v13, v10);
    v20 = (v19 + v18);
    v21 = v31;
    *v20 = v30;
    v20[1] = v21;
    v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_252BF6CA0;
    v22[1] = v16;
    v23 = *MEMORY[0x277CCF1A0];
    v24 = swift_allocObject();
    v24[2] = sub_252BF6A40;
    v24[3] = v19;
    v24[4] = a2;
    aBlock[4] = sub_252BF6B1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252BF09C4;
    aBlock[3] = &block_descriptor_70_0;
    v25 = _Block_copy(aBlock);

    v26 = v23;

    [v29 addActionSetOfType:v26 completionHandler:v25];
    _Block_release(v25);

    return;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544D60);
  sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E88FB0, 0xD000000000000071, 0x8000000252E801E0);
  v14();
}

unint64_t sub_252BF2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v17[1] = a6;
  v18 = a5;
  v17[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD000000000000028;
  v21 = 0x8000000252E890D0;
  sub_252E36D14();
  v13 = sub_252E36D44();
  (*(v8 + 8))(v11, v7);
  result = sub_252E36D44();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = v13 - result;
    v15 = sub_252E37D94();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v20, v21, 0xD000000000000071, 0x8000000252E801E0);

    v16 = (v17[0])(a1);
    return v18(v16);
  }

  return result;
}

void sub_252BF308C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = sub_252E36D54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  if (a2)
  {
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = a3;
    v19 = swift_allocObject();
    (*(v11 + 32))(v19 + v17, v13, v10);
    v20 = (v19 + v18);
    v21 = v29;
    *v20 = v28;
    v20[1] = v21;
    v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_252BF6CA0;
    v22[1] = v16;
    aBlock[4] = sub_252BF6974;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2529E0210;
    aBlock[3] = &block_descriptor_57_0;
    v23 = _Block_copy(aBlock);

    v24 = a2;

    [v27 addActionSet:v24 completionHandler:v23];
    _Block_release(v23);
  }

  else
  {

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544D60);
    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E88F60, 0xD000000000000071, 0x8000000252E801E0);
    v15();
  }
}

unint64_t sub_252BF3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v17[1] = a6;
  v18 = a5;
  v17[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD00000000000001BLL;
  v21 = 0x8000000252E88F90;
  sub_252E36D14();
  v13 = sub_252E36D44();
  (*(v8 + 8))(v11, v7);
  result = sub_252E36D44();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = v13 - result;
    v15 = sub_252E37D94();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v20, v21, 0xD000000000000071, 0x8000000252E801E0);

    v16 = (v17[0])(a1);
    return v18(v16);
  }

  return result;
}

void sub_252BF3574(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v30 = a2;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;

  v14 = sub_252B680FC();
  swift_beginAccess();
  v15 = *(v14 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    memcpy(v32, (v15 + 504 * v16 - 472), sizeof(v32));
    sub_2529353AC(v32, &v31);

    v17 = v32[30];
    v18 = v32[31];

    sub_252935408(v32);
  }

  else
  {

    v17 = 0;
    v18 = 0;
  }

  sub_252DF24DC(v17, v18);

  v19 = sub_252E36F04();

  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v20, v10, v7);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v25 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_252BF6CA0;
  v25[1] = v13;
  v32[4] = sub_252BF695C;
  v32[5] = v22;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = sub_2529E0210;
  v32[3] = &block_descriptor_47_0;
  v26 = _Block_copy(v32);

  [v30 updateName:v19 configuredName:0 completionHandler:v26];
  _Block_release(v26);
}

unint64_t sub_252BF3860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v17[1] = a6;
  v18 = a5;
  v17[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD000000000000019;
  v21 = 0x8000000252E88F40;
  sub_252E36D14();
  v13 = sub_252E36D44();
  (*(v8 + 8))(v11, v7);
  result = sub_252E36D44();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = v13 - result;
    v15 = sub_252E37D94();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v20, v21, 0xD000000000000071, 0x8000000252E801E0);

    v16 = (v17[0])(a1);
    return v18(v16);
  }

  return result;
}

void sub_252BF3A6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = sub_252E36D54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();

  if (v14)
  {
    v25 = a2;
    if (sub_252B8E7A0())
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v15 = sub_252E36AD4();
      __swift_project_value_buffer(v15, qword_27F544D60);
      sub_252CC3D90(0xD000000000000026, 0x8000000252E88E90, 0xD000000000000071, 0x8000000252E801E0);
      v11();
    }

    else
    {
      (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
      v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      (*(v9 + 32))(v19 + v17, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      v20 = (v19 + v18);
      v21 = v27;
      *v20 = v26;
      v20[1] = v21;
      v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v22 = sub_252BF6CA0;
      v22[1] = v13;
      aBlock[4] = sub_252BF6944;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2529E0210;
      aBlock[3] = &block_descriptor_37;
      v23 = _Block_copy(aBlock);

      [v14 updateExecuteOnce:1 completionHandler:v23];

      _Block_release(v23);
    }
  }

  else
  {

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E88EF0, 0xD000000000000071, 0x8000000252E801E0);
    v11();
  }
}

unint64_t sub_252BF3E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v17[1] = a6;
  v18 = a5;
  v17[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD00000000000001DLL;
  v21 = 0x8000000252E88F20;
  sub_252E36D14();
  v13 = sub_252E36D44();
  (*(v8 + 8))(v11, v7);
  result = sub_252E36D44();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = v13 - result;
    v15 = sub_252E37D94();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v20, v21, 0xD000000000000071, 0x8000000252E801E0);

    v16 = (v17[0])(a1);
    return v18(v16);
  }

  return result;
}

void sub_252BF4038(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v9 = sub_252E36D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;

  if (sub_252B8E7A0())
  {

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E88E90, 0xD000000000000071, 0x8000000252E801E0);
    v13();
  }

  else
  {
    v24 = [objc_opt_self() deleteAfterExecutionPolicy];
    (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v10 + 32))(v19 + v17, v12, v9);
    v20 = (v19 + v18);
    *v20 = v25;
    v20[1] = a5;
    v21 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_252BF690C;
    v21[1] = v15;
    aBlock[4] = sub_252BF6914;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2529E0210;
    aBlock[3] = &block_descriptor_18;
    v22 = _Block_copy(aBlock);

    v23 = v24;
    [a2 updatePolicy:v24 completionHandler:v22];
    _Block_release(v22);
  }
}

unint64_t sub_252BF4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v17[1] = a6;
  v18 = a5;
  v17[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD00000000000002DLL;
  v21 = 0x8000000252E88EC0;
  sub_252E36D14();
  v13 = sub_252E36D44();
  (*(v8 + 8))(v11, v7);
  result = sub_252E36D44();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = v13 - result;
    v15 = sub_252E37D94();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v20, v21, 0xD000000000000071, 0x8000000252E801E0);

    v16 = (v17[0])(a1);
    return v18(v16);
  }

  return result;
}

void sub_252BF453C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v6 = qword_2814B09D0;
    v35 = a1;
    if (v6 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v34 = sub_252E36AD4();
      __swift_project_value_buffer(v34, qword_2814B09D8);
      aBlock = 0;
      v37 = 0xE000000000000000;
      sub_252E379F4();

      aBlock = 0xD000000000000019;
      v37 = 0x8000000252E89050;
      v7 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      v8 = MEMORY[0x2530AD730](a5, v7);
      MEMORY[0x2530AD570](v8);

      sub_252CC4A5C(aBlock, v37, 1, 0xD000000000000071, 0x8000000252E801E0);

      v33 = a5 >> 62;
      if (a5 >> 62)
      {
        v9 = sub_252E378C4();
        if (!v9)
        {
LABEL_24:
          a3(0);

          return;
        }
      }

      else
      {
        v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_24;
        }
      }

      v10 = 0;
      v11 = a5 & 0xFFFFFFFFFFFFFF8;
      v32 = a5 & 0xC000000000000001;
      while (1)
      {
        if (v32)
        {
          v21 = MEMORY[0x2530ADF00](v10, a5);
        }

        else
        {
          if (v10 >= *(v11 + 16))
          {
            goto LABEL_21;
          }

          v21 = *(a5 + 8 * v10 + 32);
        }

        v22 = v21;
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v24 = a5;
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27F544D60);
        aBlock = 0;
        v37 = 0xE000000000000000;
        sub_252E379F4();
        v42 = v10 + 1;
        v25 = sub_252E37D94();
        v27 = v26;

        aBlock = v25;
        v37 = v27;
        MEMORY[0x2530AD570](47, 0xE100000000000000);
        if (v33)
        {
          v12 = sub_252E378C4();
        }

        else
        {
          v12 = *(v11 + 16);
        }

        v42 = v12;
        v13 = sub_252E37D94();
        MEMORY[0x2530AD570](v13);

        MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E89070);
        v14 = [v22 description];
        v15 = sub_252E36F34();
        v17 = v16;

        MEMORY[0x2530AD570](v15, v17);

        sub_252CC3D90(aBlock, v37, 0xD000000000000071, 0x8000000252E801E0);

        v18 = swift_allocObject();
        *(v18 + 16) = v22;
        v40 = sub_252BF6B28;
        v41 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_2529E0210;
        v39 = &block_descriptor_76_0;
        v19 = _Block_copy(&aBlock);
        v20 = v22;

        [v35 addAction:v20 completionHandler:v19];
        _Block_release(v19);

        ++v10;
        a5 = v24;
        if (v23 == v9)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D60);
  sub_252CC4050(0xD000000000000026, 0x8000000252E88FF0, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000025, 0x8000000252E89020, 254);
  a3(a2);
}

uint64_t sub_252BF4A40(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544CE8);
    sub_252E379F4();

    v5 = [a2 description];
    v6 = sub_252E36F34();
    v8 = v7;

    MEMORY[0x2530AD570](v6, v8);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E890B0);
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC4050(0xD000000000000015, 0x8000000252E89090, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000025, 0x8000000252E89020, 265);
  }

  return result;
}

uint64_t sub_252BF4BF8(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v5 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v11 = 1;
      if (v4)
      {
        v4 = sub_252E378C4();
        if (!v4)
        {
          return 1;
        }
      }

      else
      {
        v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          return 1;
        }
      }

      for (i = 0; ; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](i, a2);
        }

        else
        {
          if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_252BF4D50(v7, a1, &v11);

        if (v9 == v4)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v5 = sub_252E378C4();
      if (!(a1 >> 62))
      {
        goto LABEL_3;
      }

LABEL_19:
      ;
    }

    while (v5 == sub_252E378C4());
  }

  return 0;
}

void sub_252BF4D50(unint64_t a1, unint64_t a2, _BYTE *a3)
{
  v99 = a3;
  v5 = sub_252E32BA4();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v95 - v11;
  v13 = 0x277CD1000uLL;
  objc_opt_self();
  v101 = swift_dynamicCastObjCClass();
  v102 = a2;
  if (v101)
  {
    v103 = MEMORY[0x277D84F90];
    v12 = a2;
    if (a2 >> 62)
    {
      goto LABEL_173;
    }

    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v13 = 0x277CD1000uLL;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v103 = MEMORY[0x277D84F90];
    v12 = v102;
    if (!(v102 >> 62))
    {
      v24 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

LABEL_177:
    v24 = sub_252E378C4();
LABEL_19:
    v101 = a1;
    if (v24)
    {
      v98 = v23;
      v25 = 0;
      v26 = v12 & 0xC000000000000001;
      v27 = v12 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v26)
        {
          v28 = MEMORY[0x2530ADF00](v25, v12);
        }

        else
        {
          if (v25 >= *(v27 + 16))
          {
            goto LABEL_163;
          }

          v28 = *(v12 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          LOBYTE(v13) = 1;
          goto LABEL_43;
        }

        v31 = *(v13 + 2512);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_252E37A94();
          v32 = v103[2];
          sub_252E37AC4();
          v12 = v102;
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v25;
      }

      while (v30 != v24);
      v39 = v103;
      v23 = v98;
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v46 = sub_252A9E0A0(v39);

    if (!v46)
    {
      LOBYTE(v13) = 0;
      v54 = v101;
LABEL_145:

      goto LABEL_146;
    }

    v47 = v46 & 0xFFFFFFFFFFFFFF8;
    if (!(v46 >> 62))
    {
      a1 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_63:
      v6 = 0;
      v12 = &selRef_setHomeAutomationRequestOutcome_;
      while (1)
      {
        v13 = a1 != v6;
        if (a1 == v6)
        {
LABEL_72:

          v54 = v101;
          goto LABEL_145;
        }

        if ((v46 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x2530ADF00](v6, v46);
        }

        else
        {
          if (v6 >= *(v47 + 16))
          {
            goto LABEL_166;
          }

          v48 = *(v46 + 8 * v6 + 32);
        }

        v49 = v48;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v48 duration];
        v51 = v50;
        [v23 duration];
        v53 = v52;

        ++v6;
        if (v51 == v53)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      v14 = sub_252E378C4();
LABEL_4:
      v98 = a1;
      if (v14)
      {
        v15 = 0;
        v5 = (v12 & 0xC000000000000001);
        v16 = v12 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v5)
          {
            v17 = MEMORY[0x2530ADF00](v15, v12);
          }

          else
          {
            if (v15 >= *(v16 + 16))
            {
              goto LABEL_137;
            }

            v17 = *(v12 + 8 * v15 + 32);
          }

          v6 = v17;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v19 = *(v13 + 3360);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            a1 = &v103;
            sub_252E37A94();
            v20 = v103[2];
            sub_252E37AC4();
            v12 = v102;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v15;
          if (v18 == v14)
          {
            v21 = v103;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        v86 = MEMORY[0x277D84F90];
LABEL_139:
        v87 = sub_252A9E0C4(v86);

        if (v87)
        {
          v88 = v87 & 0xFFFFFFFFFFFFFF8;
          if (!(v87 >> 62))
          {
            v12 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v12)
            {
              goto LABEL_142;
            }

LABEL_192:
            LOBYTE(v13) = 0;
LABEL_43:

LABEL_144:
            v54 = v98;
            goto LABEL_145;
          }

          v12 = sub_252E378C4();
          if (!v12)
          {
            goto LABEL_192;
          }

LABEL_142:
          v89 = 0;
          v102 = v87 & 0xC000000000000001;
          v10 = (v87 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v102)
            {
              v90 = MEMORY[0x2530ADF00](v89, v87);
            }

            else
            {
              if (v89 >= *(v88 + 16))
              {
                goto LABEL_183;
              }

              v90 = *(v87 + 8 * v89 + 32);
            }

            v91 = v90;
            v92 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              v94 = sub_252E378C4();
              v64 = v97;
              v102 = v94;
              goto LABEL_93;
            }

            a1 = &selRef_setHomeAutomationRequestOutcome_;
            v5 = [v90 region];
            v93 = [v101 region];
            v6 = v93;
            if (!v5)
            {
              break;
            }

            if (!v93)
            {

              v6 = v91;
LABEL_148:

              goto LABEL_149;
            }

            sub_25293F638(0, &qword_27F543E90, 0x277CBFC70);
            a1 = sub_252E37694();

            if (a1)
            {
              goto LABEL_164;
            }

LABEL_149:
            ++v89;
            v60 = v92 == v12;
            v88 = v87 & 0xFFFFFFFFFFFFFF8;
            if (v60)
            {
              goto LABEL_192;
            }
          }

          if (!v6)
          {
            goto LABEL_164;
          }

          goto LABEL_148;
        }
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
LABEL_31:
        v33 = sub_252A9E094(v21);

        if (v33)
        {
          if (v33 >> 62)
          {
            v102 = sub_252E378C4();
          }

          else
          {
            v102 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v34 = 0;
          while (1)
          {
            LOBYTE(v13) = v102 != v34;
            if (v102 == v34)
            {
              goto LABEL_43;
            }

            if ((v33 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x2530ADF00](v34, v33);
            }

            else
            {
              if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_161;
              }

              v35 = *(v33 + 8 * v34 + 32);
            }

            v36 = v35;
            if (__OFADD__(v34, 1))
            {
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            v37 = [v35 presenceEventType];
            v38 = [v101 presenceEventType];

            ++v34;
            if (v37 == v38)
            {
              goto LABEL_43;
            }
          }
        }
      }

      LOBYTE(v13) = 0;
      goto LABEL_144;
    }

LABEL_180:
    a1 = sub_252E378C4();
    goto LABEL_63;
  }

  objc_opt_self();
  v101 = swift_dynamicCastObjCClass();
  if (v101)
  {
    v103 = MEMORY[0x277D84F90];
    if (v102 >> 62)
    {
      v40 = sub_252E378C4();
    }

    else
    {
      v40 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v96 = a1;
    if (v40)
    {
      v95 = v6;
      v97 = v10;
      v98 = v5;
      v6 = 0;
      v41 = v102 & 0xC000000000000001;
      v42 = v102 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v41)
        {
          v43 = MEMORY[0x2530ADF00](v6, v102);
        }

        else
        {
          if (v6 >= *(v42 + 16))
          {
            goto LABEL_168;
          }

          v43 = *(v102 + 8 * v6 + 32);
        }

        v44 = v43;
        v45 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_167;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a1 = &v103;
          sub_252E37A94();
          v13 = v103[2];
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v6;
      }

      while (v45 != v40);
      v55 = v103;
      v10 = v97;
      v5 = v98;
      v6 = v95;
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    a1 = sub_252A9E0AC(v55);

    if (a1)
    {
      v64 = a1 & 0xFFFFFFFFFFFFFF8;
      v97 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        goto LABEL_184;
      }

      v102 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_93:
      v65 = 0;
      v98 = (a1 & 0xC000000000000001);
      v66 = (v6 + 8);
      v13 = &selRef_setHomeAutomationRequestOutcome_;
      while (v102 != v65)
      {
        if (v98)
        {
          v67 = MEMORY[0x2530ADF00](v65, a1);
        }

        else
        {
          if (v65 >= *(v64 + 16))
          {
            goto LABEL_170;
          }

          v67 = *(a1 + 8 * v65 + 32);
        }

        v6 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_169;
        }

        v68 = [v67 fireDateComponents];
        sub_252E32B24();

        v69 = [v101 fireDateComponents];
        sub_252E32B24();

        LOBYTE(v69) = MEMORY[0x2530A8FD0](v12, v10);
        v6 = *v66;
        (*v66)(v10, v5);
        (v6)(v12, v5);
        ++v65;
        v64 = v97;
        if (v69)
        {

          v71 = v96;
          goto LABEL_104;
        }
      }
    }

    v70 = v96;
    goto LABEL_189;
  }

  v13 = 0x277CD1000uLL;
  objc_opt_self();
  v101 = swift_dynamicCastObjCClass();
  if (!v101)
  {
    v23 = 0x277CD1000;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    v74 = v102;
    v101 = v73;
    if (!v73)
    {
      LOBYTE(v13) = 0;
      goto LABEL_146;
    }

    v103 = MEMORY[0x277D84F90];
    if (v102 >> 62)
    {
      v75 = sub_252E378C4();
    }

    else
    {
      v75 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v98 = a1;
    if (!v75)
    {
      goto LABEL_138;
    }

    v6 = 0;
    v76 = v74 & 0xC000000000000001;
    v13 = v74 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v76)
      {
        v77 = MEMORY[0x2530ADF00](v6, v74);
      }

      else
      {
        if (v6 >= *(v13 + 16))
        {
          goto LABEL_176;
        }

        v77 = *(v74 + 8 * v6 + 32);
      }

      v12 = v77;
      v78 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        a1 = &v103;
        sub_252E37A94();
        v5 = v103[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v6;
      v60 = v78 == v75;
      v74 = v102;
      if (v60)
      {
        v86 = v103;
        goto LABEL_139;
      }
    }

    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v103 = MEMORY[0x277D84F90];
  v56 = v102;
  if (v102 >> 62)
  {
    v57 = sub_252E378C4();
  }

  else
  {
    v57 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = a1;
  if (v57)
  {
    v6 = 0;
    v58 = v56 & 0xC000000000000001;
    v59 = v56 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v58)
      {
        v61 = MEMORY[0x2530ADF00](v6, v56);
      }

      else
      {
        if (v6 >= *(v59 + 16))
        {
          goto LABEL_172;
        }

        v61 = *(v56 + 8 * v6 + 32);
      }

      v12 = v61;
      v62 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_171;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        a1 = &v103;
        sub_252E37A94();
        v63 = v103[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v6;
      v60 = v62 == v57;
      v56 = v102;
    }

    while (!v60);
    v72 = v103;
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
  }

  v46 = sub_252A9E0B8(v72);

  v79 = v100;
  if (!v46)
  {
LABEL_188:
    v70 = v98;
LABEL_189:

    LOBYTE(v13) = 0;
    goto LABEL_146;
  }

  v23 = (v46 & 0xFFFFFFFFFFFFFF8);
  if (v46 >> 62)
  {
    v80 = sub_252E378C4();
    if (v80)
    {
      goto LABEL_124;
    }

    goto LABEL_187;
  }

  v80 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v80)
  {
LABEL_187:
    v100 = v79;

    goto LABEL_188;
  }

LABEL_124:
  v81 = 0;
  v47 = v46 & 0xC000000000000001;
  while (1)
  {
    if (v47)
    {
      v82 = MEMORY[0x2530ADF00](v81, v46);
    }

    else
    {
      if (v81 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_179;
      }

      v82 = *(v46 + 8 * v81 + 32);
    }

    v83 = v82;
    v84 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v103 = v82;
    v85 = sub_252BF5978(&v103, v101);

    if (v85)
    {
      break;
    }

    ++v81;
    if (v84 == v80)
    {
      goto LABEL_187;
    }
  }

  v100 = v79;

  v71 = v98;
LABEL_104:

  LOBYTE(v13) = 1;
LABEL_146:
  *v99 = v13;
}

uint64_t sub_252BF5978(void **a1, void *a2)
{
  v4 = sub_252E32BA4();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F58, &qword_252E3F7D0);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v47 = &v42 - v17;
  v18 = *a1;
  v19 = [v18 significantEvent];
  v44 = a2;
  v20 = [a2 significantEvent];
  v21 = sub_252E36F34();
  v23 = v22;
  if (v21 == sub_252E36F34() && v23 == v24)
  {

    goto LABEL_5;
  }

  v25 = sub_252E37DB4();

  v26 = 0;
  if (v25)
  {
LABEL_5:
    v27 = [v18 offset];
    if (v27)
    {
      v28 = v47;
      v29 = v27;
      sub_252E32B24();

      v30 = v46;
      v31 = *(v46 + 56);
      v31(v28, 0, 1, v4);
    }

    else
    {
      v30 = v46;
      v31 = *(v46 + 56);
      v28 = v47;
      v31(v47, 1, 1, v4);
    }

    v32 = [v44 offset];
    if (v32)
    {
      v33 = v32;
      sub_252E32B24();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v31(v16, v34, 1, v4);
    v35 = *(v45 + 48);
    sub_252938414(v28, v9, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v16, &v9[v35], &qword_27F540F00, &unk_252E3FEC0);
    v36 = *(v30 + 48);
    if (v36(v9, 1, v4) == 1)
    {
      sub_25293847C(v16, &qword_27F540F00, &unk_252E3FEC0);
      sub_25293847C(v28, &qword_27F540F00, &unk_252E3FEC0);
      if (v36(&v9[v35], 1, v4) == 1)
      {
        sub_25293847C(v9, &qword_27F540F00, &unk_252E3FEC0);
        v26 = 1;
        return v26 & 1;
      }
    }

    else
    {
      v37 = v43;
      sub_252938414(v9, v43, &qword_27F540F00, &unk_252E3FEC0);
      if (v36(&v9[v35], 1, v4) != 1)
      {
        v38 = v42;
        (*(v30 + 32))(v42, &v9[v35], v4);
        sub_252BF6BD8(&qword_27F540F68, MEMORY[0x277CC8990]);
        v39 = v37;
        v26 = sub_252E36EF4();
        v40 = *(v30 + 8);
        v40(v38, v4);
        sub_25293847C(v16, &qword_27F540F00, &unk_252E3FEC0);
        sub_25293847C(v47, &qword_27F540F00, &unk_252E3FEC0);
        v40(v39, v4);
        sub_25293847C(v9, &qword_27F540F00, &unk_252E3FEC0);
        return v26 & 1;
      }

      sub_25293847C(v16, &qword_27F540F00, &unk_252E3FEC0);
      sub_25293847C(v47, &qword_27F540F00, &unk_252E3FEC0);
      (*(v30 + 8))(v37, v4);
    }

    sub_25293847C(v9, &qword_27F540F58, &qword_252E3F7D0);
    v26 = 0;
  }

  return v26 & 1;
}

void sub_252BF5F1C(uint64_t a1, void *a2)
{
  v4 = sub_252B8EAA4();
  v5 = v4;
  if (!v4)
  {
    v22 = sub_252DB7C84()[5];

    sub_252DB5780();

    a2 = *a2;
    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  [v4 setHomeAutomationRequestOutcome_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  swift_getErrorValue();
  v7 = v5;
  *(inited + 32) = sub_252E37E54();
  *(inited + 40) = v8;
  sub_252AD4414(inited);
  swift_setDeallocating();
  sub_252A01B34(inited + 32);
  v9 = sub_252E37254();

  [v7 setHomeAutomationRequestErrorReasons_];

  v10 = sub_252DB7C84()[5];

  sub_252DB5780();

  v11 = v7;
  v2 = sub_252DB7C84();
  v12 = v2[5];

  v13 = v12[3];
  v14 = *(v13 + 16);
  if (!v14 || (v2 = *(v13 + 8 * v14 + 24), v2 <= 0))
  {

    goto LABEL_8;
  }

  v15 = v12[2];

  if (v15 <= 0)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v2 - v15 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = (v2 - v15) & ~((v2 - v15) >> 63);
LABEL_9:
  [v11 setHomeAutomationRequestDuration_];

  v12 = *a2;
  if (*a2)
  {
    v17 = v11;
    v18 = [v12 homeAutomationRequests];
    if (v18)
    {
      v19 = v18;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v20 = sub_252E37264();

      v24 = v20;
      v2 = v17;
      MEMORY[0x2530AD700]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      while (1)
      {
        sub_252E372D4();
        if (v24)
        {
          v21 = sub_252E37254();
        }

        else
        {
          v21 = 0;
        }

        [v12 setHomeAutomationRequests_];

        a2 = *a2;
        if (!a2)
        {
          break;
        }

LABEL_21:
        v12 = sub_252DB7C84()[5];

        v23 = sub_252DB5924();

        if ((v23 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
        }

        else if (!HIDWORD(v23))
        {
          [a2 setCommandDuration_];
          break;
        }

        __break(1u);
LABEL_28:
        sub_252E372A4();
      }
    }

    else
    {
      [v12 setHomeAutomationRequests_];

      a2 = *a2;
      if (a2)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_24:
  sub_252DB7C84();
  sub_252DB7138(a2);
}

void sub_252BF62CC(void *a1)
{
  v2 = sub_252B8EAA4();
  if (!v2)
  {
    v16 = sub_252DB7C84()[5];

    sub_252DB5780();

    return;
  }

  v3 = v2;
  [v2 setHomeAutomationRequestOutcome_];
  v4 = sub_252DB7C84()[5];

  sub_252DB5780();

  v17 = v3;
  v5 = sub_252DB7C84()[5];

  v6 = *(v5 + 24);
  v7 = *(v6 + 16);
  if (v7 && (v8 = *(v6 + 8 * v7 + 24), v8 > 0))
  {
    v9 = *(v5 + 16);

    if (v9 > 0)
    {
      v10 = v17;
      if (v8 - v9 > 0xFFFFFFFFLL)
      {
        __break(1u);
LABEL_25:
        sub_252E372A4();
LABEL_12:
        sub_252E372D4();
        if (v18)
        {
          v15 = sub_252E37254();
        }

        else
        {
          v15 = 0;
        }

        [a1 setHomeAutomationRequests_];

        return;
      }

      v11 = (v8 - v9) & ~((v8 - v9) >> 63);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = 0;
  v10 = v17;
LABEL_9:
  [v10 setHomeAutomationRequestDuration_];

  a1 = *a1;
  if (a1)
  {
    v12 = [a1 homeAutomationRequests];
    if (!v12)
    {
      [a1 setHomeAutomationRequests_];

      return;
    }

    v13 = v12;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v14 = sub_252E37264();

    v18 = v14;
    v8 = v17;
    MEMORY[0x2530AD700]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }
}

void sub_252BF658C()
{
  v1 = *(sub_252E36D54() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_252BF28DC(v0 + v2, v4, v6);
}

uint64_t sub_252BF6658(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_252E36D54() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252BF6844(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_252E36D54() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_252BF6A58(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_252E36D54() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + v7);
  v12 = *(v2 + v7 + 8);

  return a2(a1, v2 + v5, v9, v10, v11, v12);
}

unint64_t sub_252BF6B30()
{
  result = qword_27F543E70;
  if (!qword_27F543E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543E70);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252BF6BD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252BF6C34()
{
  result = qword_27F543E98;
  if (!qword_27F543E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543E98);
  }

  return result;
}

char *sub_252BF6CBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_252E36324();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  if (v9 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v28 = (v31 + 56);
    v33 = (v31 + 48);
    v34 = v9 & 0xFFFFFFFFFFFFFF8;
    v32 = (v31 + 32);
    v13 = MEMORY[0x277D84F90];
    v29 = v9 & 0xC000000000000001;
    v30 = v8;
    while (v12)
    {
      v14 = MEMORY[0x2530ADF00](v11, v9);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v16 = *(v14 + 24);
      if (v16)
      {
        sub_252956C1C(v16 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v4);
      }

      else
      {
        (*v28)(v4, 1, 1, v5);
      }

      if ((*v33)(v4, 1, v5) == 1)
      {
        sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v17 = v5;
        v18 = i;
        v19 = v9;
        v20 = *v32;
        v21 = v17;
        (*v32)(v8, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, v13[2] + 1, 1, v13);
        }

        v23 = v13[2];
        v22 = v13[3];
        if (v23 >= v22 >> 1)
        {
          v13 = sub_2529F7F74(v22 > 1, v23 + 1, 1, v13);
        }

        v13[2] = v23 + 1;
        v24 = v13 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
        v8 = v30;
        (v20)(v24, v30, v21);
        v9 = v19;
        i = v18;
        v5 = v21;
        v12 = v29;
      }

      ++v11;
      if (v15 == i)
      {
        goto LABEL_24;
      }
    }

    if (v11 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    v14 = *(v9 + 8 * v11 + 32);

    v15 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_24:
  v25 = sub_252DF8B58(v13);

  return v25;
}

uint64_t sub_252BF7010@<X0>(uint64_t a1@<X8>)
{
  if ((sub_252BF714C() & 1) == 0)
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_14;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = *(MEMORY[0x2530ADF00](0, v3) + 24);

    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
    v6 = *(v5 + 24);
    if (v6)
    {
      v7 = *(v5 + 24);

LABEL_8:
      sub_252956C1C(v6 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, a1);
    }
  }

LABEL_14:
  v8 = sub_252E36324();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 1, 1, v8);
}

uint64_t sub_252BF714C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-v3];
  v5 = *(v0 + 24);
  if (v5 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v8 = *(MEMORY[0x2530ADF00](0, v5) + 24);

    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = *(v7 + 24);

LABEL_7:
      sub_252956C1C(v8 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, v4);

LABEL_12:
      MEMORY[0x28223BE20](v10);
      *&v13[-16] = v4;
      v12 = sub_25299813C(sub_252BF76A4, &v13[-32], v5);
      sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      return v12 & 1;
    }

LABEL_11:
    v11 = sub_252E36324();
    v10 = (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252BF7318(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = *(*a1 + 24);
  if (v20)
  {
    sub_252956C1C(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, &v26 - v18);
  }

  else
  {
    (*(v5 + 56))(&v26 - v18, 1, 1, v4);
  }

  v21 = *(v9 + 48);
  sub_252956C1C(v19, v12);
  sub_252956C1C(a2, &v12[v21]);
  v22 = *(v5 + 48);
  if (v22(v12, 1, v4) != 1)
  {
    sub_252956C1C(v12, v17);
    if (v22(&v12[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v12[v21], v4);
      sub_252B3DE3C();
      v23 = sub_252E36EF4();
      v24 = *(v5 + 8);
      v24(v8, v4);
      sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
      v24(v17, v4);
      sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
      return v23 & 1;
    }

    sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
    (*(v5 + 8))(v17, v4);
    goto LABEL_9;
  }

  sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
  if (v22(&v12[v21], 1, v4) != 1)
  {
LABEL_9:
    sub_25293847C(v12, &qword_27F540758, &unk_252E4D160);
    v23 = 0;
    return v23 & 1;
  }

  sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
  v23 = 1;
  return v23 & 1;
}

void *sub_252BF76C4()
{
  result = sub_252CC4348(&unk_2864A0C20);
  off_27F543EA0 = result;
  return result;
}

void *sub_252BF76EC()
{
  result = sub_252CC6600(&unk_2864A7F88);
  off_27F543EA8 = result;
  return result;
}

void *sub_252BF7714()
{
  result = sub_252CC6600(&unk_2864A7FC8);
  off_27F543EB0 = result;
  return result;
}

uint64_t sub_252BF773C()
{
  v0 = sub_252CC67A0(&unk_2864A8E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF0, &qword_252E52318);
  result = swift_arrayDestroy();
  off_27F543EB8 = v0;
  return result;
}

uint64_t sub_252BF7798()
{
  v0 = sub_252CC678C(&unk_2864A8E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF0, &qword_252E52318);
  result = swift_arrayDestroy();
  off_27F543EC0 = v0;
  return result;
}

uint64_t sub_252BF77F4()
{
  v0 = sub_252CC6778(&unk_2864A8DE0);
  result = sub_252BFCBC4(&unk_2864A8E00);
  off_27F543EC8 = v0;
  return result;
}

uint64_t sub_252BF7834()
{
  v0 = sub_252CC6778(&unk_2864A8DA8);
  result = sub_252BFCBC4(&unk_2864A8DC8);
  off_27F543ED0 = v0;
  return result;
}

id sub_252BF7874(unint64_t a1, uint64_t a2, unint64_t a3, double (*a4)(void **), uint64_t a5, uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8, double a9, uint64_t (*a10)(void *, uint64_t, unint64_t))
{
  v71 = a4;
  v72 = a5;
  v17 = 0xD000000000000017;
  v74 = sub_252E32E84();
  v18 = *(v74 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v74);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a6(0);
  v76 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (sub_252E36F94() == 0xD000000000000017 && 0x8000000252E892E0 == v22)
  {
    v23 = 1634038369;

    v67 = 0xE400000000000000;
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v25 = sub_252E37DB4();

    if (v25)
    {
      v23 = 1634038369;
    }

    else
    {
      v23 = 7364973;
    }

    v26 = 0xE300000000000000;
    if (v25)
    {
      v26 = 0xE400000000000000;
    }

    v67 = v26;
    if (!a1)
    {
LABEL_4:
      if (qword_27F53F4B8 == -1)
      {
LABEL_5:
        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544CD0);
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0x74276E6163206557, 0xEF20686374616D20);
        MEMORY[0x2530AD570](v23, v67);

        MEMORY[0x2530AD570](v17 + 15, 0x8000000252E89300);
        sub_252CC4050(v76, v77, v17 + 98, 0x8000000252E6E2D0, v17 + 26, 0x8000000252E89330, 170);

        return 0;
      }

LABEL_82:
      swift_once();
      goto LABEL_5;
    }
  }

  v64 = a2;
  type metadata accessor for HomeStore();

  v27 = static HomeStore.shared.getter();
  v28 = sub_2529DA2BC();

  v75 = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v65 = v23;
    if (i)
    {
      v63 = a3;
      v73 = a1;
      a3 = 0;
      v70 = v28 & 0xC000000000000001;
      v68 = qword_27F5427D0;
      v69 = v28 & 0xFFFFFFFFFFFFFF8;
      v23 = v18 + 8;
      while (1)
      {
        if (v70)
        {
          v18 = MEMORY[0x2530ADF00](a3, v28);
          v32 = (a3 + 1);
          if (__OFADD__(a3, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            v38 = v75;
            v17 = 0xD000000000000017;
            a3 = v63;
            v39 = MEMORY[0x277D84F90];
            goto LABEL_34;
          }
        }

        else
        {
          if (a3 >= *(v69 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          v18 = *(v28 + 8 * a3 + 32);

          v32 = (a3 + 1);
          if (__OFADD__(a3, 1))
          {
            goto LABEL_31;
          }
        }

        v17 = v28;
        v33 = i;
        v34 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
        sub_252E32E64();

        a1 = sub_252E32E24();
        v36 = v35;
        (*v23)(v21, v74);
        v37 = *(v73 + v68);

        sub_252E36744();

        if (!v77)
        {
          break;
        }

        if (a1 == v76 && v77 == v36)
        {
        }

        else
        {
          a1 = sub_252E37DB4();

          if ((a1 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        sub_252E37A94();
        v30 = v75[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_18:
        ++a3;
        i = v33;
        v31 = v32 == v33;
        v28 = v17;
        if (v31)
        {
          goto LABEL_32;
        }
      }

LABEL_28:

      goto LABEL_18;
    }

    v38 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
LABEL_34:

    v18 = a10(v38, v64, a3);

    v76 = v39;
    if (v18 >> 62)
    {
      break;
    }

    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_52;
    }

LABEL_36:
    v21 = 0;
    a1 = v18 & 0xC000000000000001;
    v17 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a1)
      {
        v40 = MEMORY[0x2530ADF00](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v40 = *(v18 + 8 * v21 + 32);
      }

      v41 = v40;
      a3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v75 = v40;
      if (v71(&v75) == a9)
      {
        sub_252E37A94();
        v28 = *(v76 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v21;
      if (a3 == v23)
      {
        v23 = v76;
        v17 = 0xD000000000000017;
        goto LABEL_53;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v23 = sub_252E378C4();
  if (v23)
  {
    goto LABEL_36;
  }

LABEL_52:
  v23 = MEMORY[0x277D84F90];
LABEL_53:

  v42 = v67;
  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v43 = sub_252E36AD4();
  __swift_project_value_buffer(v43, qword_27F544CD0);
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_252E379F4();

  v76 = v17 + 13;
  v77 = 0x8000000252E89370;
  MEMORY[0x2530AD570](v65, v42);
  MEMORY[0x2530AD570](2112115, 0xE300000000000000);
  v44 = MEMORY[0x2530AD730](v23, v66);
  MEMORY[0x2530AD570](v44);

  sub_252CC3D90(v76, v77, v17 + 98, 0x8000000252E6E2D0);

  if (v23 < 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = (v23 >> 62) & 1;
  }

  if (v17 == 1)
  {
    if (sub_252E378C4() <= 1)
    {
      v45 = sub_252E378C4();
      goto LABEL_65;
    }

LABEL_60:

    v46 = sub_252E36AC4();
    v47 = sub_252E374D4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76 = v49;
      *v48 = 136315394;
      v50 = sub_252BE2CE0(v65, v42, &v76);

      *(v48 + 4) = v50;
      *(v48 + 12) = 2080;
      v51 = MEMORY[0x2530AD730](v23, v66);
      v53 = v52;

      v54 = sub_252BE2CE0(v51, v53, &v76);

      *(v48 + 14) = v54;
      _os_log_impl(&dword_252917000, v46, v47, "Returning the first target %s due to an ID collision: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v49, -1, -1);
      v55 = v48;
      goto LABEL_74;
    }

LABEL_76:

    if (v17)
    {
      goto LABEL_77;
    }

    goto LABEL_67;
  }

  v45 = *(v23 + 16);
  if (v45 > 1)
  {
    goto LABEL_60;
  }

LABEL_65:
  if (!v45)
  {

    v46 = sub_252E36AC4();
    v59 = sub_252E374D4();

    if (os_log_type_enabled(v46, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v76 = v61;
      *v60 = 136315394;
      v62 = sub_252BE2CE0(v65, v42, &v76);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2048;
      *(v60 + 14) = a9;
      _os_log_impl(&dword_252917000, v46, v59, "No matching target %ss found for %f", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x2530AED00](v61, -1, -1);
      v55 = v60;
LABEL_74:
      MEMORY[0x2530AED00](v55, -1, -1);

      if (v17)
      {
        goto LABEL_77;
      }

LABEL_67:
      if (!*(v23 + 16))
      {
        goto LABEL_78;
      }

LABEL_68:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x2530ADF00](0, v23);
      }

      else
      {
        if (!*(v23 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v56 = *(v23 + 32);
      }

      v57 = v56;

      return v57;
    }

    goto LABEL_76;
  }

  if (!v17)
  {
    goto LABEL_67;
  }

LABEL_77:
  if (sub_252E378C4())
  {
    goto LABEL_68;
  }

LABEL_78:

  return 0;
}

char *sub_252BF8258(uint64_t a1)
{
  v1 = *(a1 + qword_27F5427B0);

  sub_252E36744();

  if ((~v32 & 0xC0C0) == 0)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544CD0);
    sub_252E379F4();

    v3 = sub_252A96AFC();
    MEMORY[0x2530AD570](v3);

    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E898C0, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000016, 0x8000000252E898F0, 220);

    return 0;
  }

  if (!(v32 >> 14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF8, &unk_252E52320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    if (qword_27F53F3B8 != -1)
    {
      v30 = inited;
      swift_once();
      inited = v30;
    }

    v6 = off_27F543EA0;
    if (*(off_27F543EA0 + 2))
    {
      v7 = inited;
      v8 = sub_252A44A88(v32);
      if (v13)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_22:
    *(inited + 32) = 0;
    *(inited + 40) = 1;
    goto LABEL_23;
  }

  if (v32 >> 14 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF8, &unk_252E52320);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_252E3C3C0;
    if (qword_27F53F3B8 != -1)
    {
      swift_once();
    }

    v15 = off_27F543EA0;
    if (*(off_27F543EA0 + 2) && (v16 = sub_252A44A88(v32), (v17 & 1) != 0))
    {
      v18 = 0;
      v19 = *(v15[7] + 8 * v16);
    }

    else
    {
      v19 = 0;
      v18 = 1;
    }

    *(v14 + 32) = v19;
    *(v14 + 40) = v18;
    if (v15[2] && (v20 = sub_252A44A88(HIBYTE(v32) & 0x3F), (v21 & 1) != 0))
    {
      v22 = 0;
      v10 = *(v15[7] + 8 * v20);
    }

    else
    {
      v10 = 0;
      v22 = 1;
    }

    *(v14 + 48) = v10;
    *(v14 + 56) = v22;
    if (*(v14 + 40))
    {
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v24 = *(v14 + 32);
      v25 = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = v26 + 1;
      if (v26 >= v27 >> 1)
      {
        v31 = *(v25 + 2);
        v25 = sub_2529F7B8C((v27 > 1), v28, 1, v25);
        v26 = v31;
      }

      *(v25 + 2) = v28;
      v23 = v25;
      *&v25[8 * v26 + 32] = v24;
    }

    if (v22)
    {
      return v23;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2529F7B8C(0, *(v23 + 2) + 1, 1, v23);
    }

    result = v23;
    v12 = *(v23 + 2);
    v11 = *(v23 + 3);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF8, &unk_252E52320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  if (qword_27F53F3B8 != -1)
  {
    v29 = inited;
    swift_once();
    inited = v29;
  }

  v6 = off_27F543EA0;
  if (!*(off_27F543EA0 + 2))
  {
    goto LABEL_22;
  }

  v7 = inited;
  v8 = sub_252A44A88(HIBYTE(v32) & 0x3F);
  if ((v9 & 1) == 0)
  {
LABEL_16:
    *(v7 + 32) = 0;
    *(v7 + 40) = 1;
LABEL_23:

    return MEMORY[0x277D84F90];
  }

LABEL_11:
  v10 = *(v6[7] + 8 * v8);
  *(v7 + 32) = v10;
  *(v7 + 40) = 0;

  result = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = *(result + 2);
  v11 = *(result + 3);
LABEL_39:
  if (v12 >= v11 >> 1)
  {
    result = sub_2529F7B8C((v11 > 1), v12 + 1, 1, result);
  }

  *(result + 2) = v12 + 1;
  *&result[8 * v12 + 32] = v10;
  return result;
}

unint64_t sub_252BF86D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t (*a2)(unint64_t))
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = v4;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v36)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v5, v32);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_44;
      }

LABEL_9:
      v9 = v3;
      v10 = a2(v7);
      if (v3)
      {
        goto LABEL_43;
      }

      v11 = v10;

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = sub_252E378C4();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v29 = sub_252E378C4();
        v16 = v29 + v13;
        if (__OFADD__(v29, v13))
        {
LABEL_42:
          __break(1u);
LABEL_43:

          return v6;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v14)
        {
          goto LABEL_21;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v14)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v39 = v13;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v12)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v39 > 0)
          {
            goto LABEL_46;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      if (((v20 >> 1) - v19) < v39)
      {
        goto LABEL_47;
      }

      v22 = v17 + 8 * v19 + 32;
      if (v12)
      {
        if (v21 < 1)
        {
          goto LABEL_49;
        }

        sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
          v24 = sub_2529FBD80(v38, i, v11);
          v26 = *v25;
          (v24)(v38, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeTargetArea();
        swift_arrayInitWithCopy();
      }

      v3 = v9;
      if (v39 >= 1)
      {
        v27 = *(v17 + 16);
        v8 = __OFADD__(v27, v39);
        v28 = v27 + v39;
        if (v8)
        {
          goto LABEL_48;
        }

        *(v17 + 16) = v28;
      }

LABEL_5:
      if (v5 == v33)
      {
        return v6;
      }
    }

    if (v5 >= *(v35 + 16))
    {
      goto LABEL_45;
    }

    v7 = *(v34 + 8 * v5);

    v8 = __OFADD__(v5++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252BF8A5C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t (*a2)(unint64_t))
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = v4;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v36)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v5, v32);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_44;
      }

LABEL_9:
      v9 = v3;
      v10 = a2(v7);
      if (v3)
      {
        goto LABEL_43;
      }

      v11 = v10;

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = sub_252E378C4();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v29 = sub_252E378C4();
        v16 = v29 + v13;
        if (__OFADD__(v29, v13))
        {
LABEL_42:
          __break(1u);
LABEL_43:

          return v6;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v14)
        {
          goto LABEL_21;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v14)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v39 = v13;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v12)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v39 > 0)
          {
            goto LABEL_46;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      if (((v20 >> 1) - v19) < v39)
      {
        goto LABEL_47;
      }

      v22 = v17 + 8 * v19 + 32;
      if (v12)
      {
        if (v21 < 1)
        {
          goto LABEL_49;
        }

        sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
          v24 = sub_2529FBD80(v38, i, v11);
          v26 = *v25;
          (v24)(v38, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeTargetMap();
        swift_arrayInitWithCopy();
      }

      v3 = v9;
      if (v39 >= 1)
      {
        v27 = *(v17 + 16);
        v8 = __OFADD__(v27, v39);
        v28 = v27 + v39;
        if (v8)
        {
          goto LABEL_48;
        }

        *(v17 + 16) = v28;
      }

LABEL_5:
      if (v5 == v33)
      {
        return v6;
      }
    }

    if (v5 >= *(v35 + 16))
    {
      goto LABEL_45;
    }

    v7 = *(v34 + 8 * v5);

    v8 = __OFADD__(v5++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252BF8DE0(uint64_t a1)
{
  if (qword_27F53F3C0 != -1)
  {
    swift_once();
  }

  v2 = off_27F543EA8;
  if (*(off_27F543EA8 + 2))
  {
    v3 = sub_252A456C4(a1);
    if (v4)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F3C8 != -1)
  {
    swift_once();
  }

  v2 = off_27F543EB0;
  if (*(off_27F543EB0 + 2))
  {
    v3 = sub_252A456C4(a1);
    if (v5)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E893A0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000018, 0x8000000252E893E0, 241);

  return 0;
}

void *sub_252BF8FB8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_252BF8DE0(a2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *a1;
  v9 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = a1[32];
  switch(v13 >> 2)
  {
    case 1u:
      v68 = (v8 & 1) == 0;
      if (v8)
      {
        v57 = 0x3031657A6973;
      }

      else
      {
        v57 = 0x355F32657A6973;
      }

      if (v68)
      {
        v58 = 0xE700000000000000;
      }

      else
      {
        v58 = 0xE600000000000000;
      }

      goto LABEL_61;
    case 2u:
      v49 = 0xE700000000000000;
      v50 = 0x6E776F6E6B6E75;
      v51 = 0xE400000000000000;
      v52 = 1919508838;
      v53 = 0xE800000000000000;
      v54 = 0x726F697265666E69;
      if (v8 != 4)
      {
        v54 = 1919905648;
        v53 = 0xE400000000000000;
      }

      if (v8 != 3)
      {
        v52 = v54;
        v51 = v53;
      }

      v55 = 0xE900000000000074;
      v56 = 0x6E656C6C65637865;
      if (v8 != 1)
      {
        v56 = 1685024615;
        v55 = 0xE400000000000000;
      }

      if (*a1)
      {
        v50 = v56;
        v49 = v55;
      }

      if (*a1 <= 2u)
      {
        v57 = v50;
      }

      else
      {
        v57 = v52;
      }

      if (*a1 <= 2u)
      {
        v58 = v49;
      }

      else
      {
        v58 = v51;
      }

LABEL_61:
      type metadata accessor for HomeAttributeValue();
      v62 = v57;
      v63 = v58;
      goto LABEL_62;
    case 3u:
    case 4u:
    case 0x13u:
    case 0x32u:
      v24 = v8 | (v9 << 8);
      v25 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v26 = sub_252E36F04();
      v27 = [v25 initWithIdentifier:0 displayString:v26];

      v18 = v27;
      [v18 setIntegerValue_];
      [v18 setUnit_];
      goto LABEL_11;
    case 5u:
    case 8u:
    case 0xBu:
    case 0xDu:
    case 0x17u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:
    case 0x21u:
    case 0x25u:
    case 0x2Bu:
    case 0x2Eu:
      v19 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v20 = sub_252E36F04();
      v21 = [v19 initWithIdentifier:0 displayString:v20];

      v22 = v21;
      [v22 setBoolValue_];
      [v22 setType_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      result = swift_allocObject();
      *(result + 1) = xmmword_252E3C290;
      result[4] = v7;
      result[5] = v22;
      return result;
    case 0xCu:
      v61 = *(a1 + 1);
      type metadata accessor for HomeAttributeValue();
      MEMORY[0x2530AD570](977425224, 0xE400000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](3878956, 0xE300000000000000);
      v63 = 0xE000000000000000;
      v62 = 0;
LABEL_62:
      v18 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v62, v63, 0);
      goto LABEL_13;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_252E3C290;
      v65 = v64;
      *(v64 + 32) = v7;
      type metadata accessor for HomeAttributeValue();
      if (v8)
      {
        if (v8 == 1)
        {
          v66 = 1162626121;
          v67 = 0xE400000000000000;
        }

        else
        {
          v66 = 0x4E49594649525550;
          v67 = 0xED00005249415F47;
        }
      }

      else
      {
        v66 = 0x4556495443414E49;
        v67 = 0xE800000000000000;
      }

      v98 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v66, v67, 0);
      result = v65;
      v65[5] = v98;
      return result;
    case 0xFu:
    case 0x2Fu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_252E3C290;
      *(v32 + 32) = v7;
      v33 = sub_252A7CAA0(v8);
      goto LABEL_18;
    case 0x10u:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544CD0);
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v134 = v121;
      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E891A0);
      v122 = *a1;
      v128 = *(a1 + 1);
      v131 = a1[32];
      sub_252E37AE4();
      v39 = *(&v134 + 1);
      v38 = v134;
      v40 = 636;
      goto LABEL_31;
    case 0x12u:
    case 0x31u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_252E3C290;
      *(v32 + 32) = v7;
      v33 = sub_252A7D058(v8);
      goto LABEL_18;
    case 0x14u:
    case 0x33u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_252E3C290;
      *(v32 + 32) = v7;
      v33 = sub_252A7E300(v8);
LABEL_18:
      v34 = v33;
      result = v32;
      *(v32 + 40) = v34;
      return result;
    case 0x15u:
      *&v69 = v8 | (v9 << 8);
      v70 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v71 = sub_252E36F04();
      v72 = [v70 initWithIdentifier:0 displayString:v71];

      v18 = v72;
      [v18 setDoubleValue_];
      [v18 setUnit_];
      goto LABEL_6;
    case 0x16u:
    case 0x34u:
      return sub_252A7EA18(*a1);
    case 0x18u:
      v45 = 0;
      v46 = 1;
      goto LABEL_65;
    case 0x19u:
      v45 = *(a1 + 1);
      v46 = 0;
LABEL_65:
      v59 = 0;
      v60 = 1;
      return sub_252A7F818(v45, v46, v59, v60, *a1);
    case 0x1Au:
      v45 = *(a1 + 1);
      v46 = 0;
      v59 = *(a1 + 2);
      v60 = 0;
      return sub_252A7F818(v45, v46, v59, v60, *a1);
    case 0x26u:
    case 0x2Cu:
      v28 = v8 | (v9 << 8);
      v29 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v30 = sub_252E36F04();
      v31 = [v29 initWithIdentifier:0 displayString:v30];

      v18 = v31;
      [v18 setIntegerValue_];
      [v18 setUnit_];
LABEL_11:
      [v18 setType_];
      goto LABEL_12;
    case 0x27u:
      type metadata accessor for HomeAttributeValue();
      if (v8)
      {
        v47 = 0xD000000000000010;
        v48 = 0x8000000252E66F40;
      }

      else
      {
        v47 = 0x5349574B434F4C43;
        v48 = 0xE900000000000045;
      }

      v97 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v47, v48, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      result = swift_allocObject();
      *(result + 1) = xmmword_252E3C290;
      result[4] = 12;
      result[5] = v97;
      return result;
    case 0x29u:
      v42 = sub_252D366E0(*a1);
      if (v43)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v44 = sub_252E36AD4();
        __swift_project_value_buffer(v44, qword_27F544CD0);
        *&v123 = 0;
        *(&v123 + 1) = 0xE000000000000000;
        sub_252E379F4();
        v135 = v123;
        MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E892B0);
        v124 = *a1;
        v129 = *(a1 + 1);
        v132 = a1[32];
        sub_252E37AE4();
        v39 = *(&v135 + 1);
        v38 = v135;
        v40 = 586;
        goto LABEL_31;
      }

      v118 = v42;
      v84 = *(v11 + 16);
      v85 = MEMORY[0x277D84F90];
      if (v84)
      {
        v86 = (v11 + 32);
        do
        {
          v87 = *v86++;
          v88 = sub_252D36D20(v87);
          if ((v89 & 1) == 0)
          {
            v90 = v88;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v85 = sub_2529F7F9C(0, *(v85 + 2) + 1, 1, v85);
            }

            v92 = *(v85 + 2);
            v91 = *(v85 + 3);
            if (v92 >= v91 >> 1)
            {
              v85 = sub_2529F7F9C((v91 > 1), v92 + 1, 1, v85);
            }

            *(v85 + 2) = v92 + 1;
            *&v85[8 * v92 + 32] = v90;
          }

          --v84;
        }

        while (v84);
      }

      if (v10)
      {
        v125 = MEMORY[0x277D84F90];
        v93 = *(v10 + 16);
        if (v93)
        {
          v94 = (v10 + 32);
          do
          {
            v95 = *v94++;
            if (sub_252BF7874(a3, sub_252D365D0, 0, sub_252D365E8, 0, type metadata accessor for HomeAttributeTargetArea, &qword_27F543ED8, &qword_252E52300, v95, sub_252BF86D8))
            {
              MEMORY[0x2530AD700]();
              if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v96 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
            }

            --v93;
          }

          while (v93);
        }

        v99 = 0;
      }

      else if (v13)
      {
        v99 = 0;
      }

      else
      {
        v99 = sub_252BF7874(a3, sub_252D365F8, 0, sub_252D366D0, 0, type metadata accessor for HomeAttributeTargetMap, &qword_27F543EE0, &qword_252E52308, v12, sub_252BF8A5C);
      }

      v100 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
      v101 = v99;
      v102 = sub_252E36F04();
      v103 = &off_279711000;
      v104 = [v100 initWithIdentifier:0 displayString:v102];

      v105 = v104;
      [v105 setRunState_];
      v106 = *(v85 + 2);
      if (v106)
      {
        v126 = MEMORY[0x277D84F90];
        sub_2529AA3C0(0, v106, 0);
        v107 = *(v126 + 16);
        v108 = 32;
        do
        {
          v109 = *&v85[v108];
          v110 = *(v126 + 24);
          if (v107 >= v110 >> 1)
          {
            sub_2529AA3C0((v110 > 1), v107 + 1, 1);
          }

          *(v126 + 16) = v107 + 1;
          *(v126 + 8 * v107 + 32) = v109;
          v108 += 8;
          ++v107;
          --v106;
        }

        while (v106);

        v103 = &off_279711000;
      }

      else
      {
      }

      v111 = sub_252E37254();

      [v105 setCleanModes_];

      type metadata accessor for HomeAttributeTargetArea();
      v112 = sub_252E37254();

      [v105 setTargetAreas_];

      [v105 setTargetMap_];
      v113 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v114 = sub_252E36F04();
      v115 = [v113 v103[226]];

      v116 = v115;
      [v116 setType_];
      [v116 setCleaningJob_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_252E3C290;
      *(v117 + 32) = 67;
      *(v117 + 40) = v116;

      result = v117;
      break;
    case 0x2Au:
      v35 = sub_252D37230(*a1);
      if (v36)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v37 = sub_252E36AD4();
        __swift_project_value_buffer(v37, qword_27F544CD0);
        *&v119 = 0;
        *(&v119 + 1) = 0xE000000000000000;
        sub_252E379F4();
        v133 = v119;
        MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E89270);
        v120 = *a1;
        v127 = *(a1 + 1);
        v130 = a1[32];
        sub_252E37AE4();
        v39 = *(&v133 + 1);
        v38 = v133;
        v40 = 607;
LABEL_31:
        sub_252CC4050(v38, v39, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000029, 0x8000000252E89240, v40);

        result = 0;
      }

      else
      {
        v73 = v35;
        v74 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
        v75 = sub_252E36F04();
        v76 = [v74 initWithIdentifier:0 displayString:v75];

        v77 = v76;
        [v77 setRunState_];
        v78 = sub_252E37254();
        [v77 setCleanModes_];

        type metadata accessor for HomeAttributeTargetArea();
        v79 = sub_252E37254();
        [v77 setTargetAreas_];

        [v77 setTargetMap_];
        v80 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v81 = sub_252E36F04();
        v82 = [v80 initWithIdentifier:0 displayString:v81];

        v83 = v82;
        [v83 setType_];
        [v83 setCleaningJob_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
        result = swift_allocObject();
        *(result + 1) = xmmword_252E3C290;
        result[4] = 67;
        result[5] = v83;
      }

      break;
    case 0x35u:
      return sub_252A7EB54(*a1, *(a1 + 1));
    case 0x36u:
      return sub_252A7EDA8(*(a1 + 2), 0, *(a1 + 1), 0, *a1);
    default:
      *&v14 = v8 | (v9 << 8);
      v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v16 = sub_252E36F04();
      v17 = [v15 initWithIdentifier:0 displayString:v16];

      v18 = v17;
      [v18 setDoubleValue_];
      [v18 setUnit_];
LABEL_6:
      [v18 setType_];
LABEL_12:

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      result = swift_allocObject();
      *(result + 1) = xmmword_252E3C290;
      result[4] = v7;
      result[5] = v18;
      return result;
  }

  return result;
}

uint64_t sub_252BFA054(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 type];
    v5 = 0;
    v6 = v4 != 2;
    if (v4 == 2)
    {
      [v3 doubleValue];
      v5 = v7;
    }

    if ([v3 type] == 6)
    {
      v8 = [v3 rangeValue];
      if (v8)
      {
        v9 = v8;
        [v8 lowerValue];
        v11 = v10;
        [v9 upperValue];
        v13 = v12;

        v14 = 0;
        if (!a2)
        {
          goto LABEL_7;
        }

LABEL_15:
        v19 = a2;
        v20 = [v19 stringValue];
        if (v20)
        {
          v21 = v20;
          v22 = sub_252E36F34();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v15 = sub_252A812C0(v22, v24);

        if ((v14 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      }
    }

    v14 = 1;
    v13 = 0;
  }

  else
  {
    v6 = 1;
    v5 = 0;
    v13 = 0;
    v14 = 1;
  }

  v11 = 0;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_7:
  v15 = 6;
  if ((v14 & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C290;
    if (v15 == 6)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    *(result + 32) = v17;
    *(result + 40) = v11;
    *(result + 48) = v13;
    *(result + 56) = 0;
    v18 = -40;
    goto LABEL_27;
  }

LABEL_19:
  if (v6)
  {
    if (v15 == 6)
    {
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C290;
    *(result + 32) = v15;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v18 = -48;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C290;
    if (v15 == 6)
    {
      v25 = 0;
    }

    else
    {
      v25 = v15;
    }

    *(result + 32) = v25;
    *(result + 40) = v5;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v18 = -44;
  }

LABEL_27:
  *(result + 64) = v18;
  return result;
}

char *sub_252BFA2C0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || a2 != 5)
  {
LABEL_18:
    if (qword_27F53F3C8 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_27F53F3C0 != -1)
    {
      v39 = a1;
      swift_once();
      a1 = v39;
    }

    v3 = 0;
    v4 = 1 << *(off_27F543EA8 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(off_27F543EA8 + 8);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = v3;
LABEL_14:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = v9 | (v8 << 6);
      if (*(*(off_27F543EA8 + 7) + 8 * v10) == a1)
      {
        v11 = a1;
        v12 = *(*(off_27F543EA8 + 6) + v10);
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v13 = sub_252E36AD4();
        __swift_project_value_buffer(v13, qword_27F544CD0);
        sub_252E379F4();

        v14 = 0x8000000252E89480;
        v15 = 0xD000000000000025;
LABEL_32:
        v43 = v15;
        v44 = v14;
        v25 = HomeAttributeType.description.getter(v11);
        MEMORY[0x2530AD570](v25);

        sub_252CC3D90(v43, v44, 0xD000000000000075, 0x8000000252E891C0);

        v26 = sub_2529F8764(0, 1, 1, MEMORY[0x277D84F90]);
        v27 = *(v26 + 2);
        v28 = *(v26 + 3);
        v29 = v27 + 1;
        if (v27 >= v28 >> 1)
        {
          v40 = v26;
          v41 = *(v26 + 2);
          v42 = sub_2529F8764((v28 > 1), v27 + 1, 1, v40);
          v27 = v41;
          v26 = v42;
        }

        *(v26 + 2) = v29;
        v30 = v26 + 16;
        v26[v27 + 32] = v12;
LABEL_36:
        if (sub_2529A78E0(13, v26))
        {
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v31 = sub_252E36AD4();
          __swift_project_value_buffer(v31, qword_27F544CB8);
          sub_252CC3D90(0xD000000000000026, 0x8000000252E89420, 0xD000000000000075, 0x8000000252E891C0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2529F8764(0, *v30 + 1, 1, v26);
          }

          v33 = *(v26 + 2);
          v32 = *(v26 + 3);
          if (v33 >= v32 >> 1)
          {
            v26 = sub_2529F8764((v32 > 1), v33 + 1, 1, v26);
          }

          *(v26 + 2) = v33 + 1;
          v26[v33 + 32] = 3;
        }

        return v26;
      }
    }

    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        goto LABEL_18;
      }

      v6 = *(off_27F543EA8 + v8 + 8);
      ++v3;
      if (v6)
      {
        v3 = v8;
        goto LABEL_14;
      }
    }

LABEL_49:
    __break(1u);
  }

  v38 = a1;
  swift_once();
  a1 = v38;
LABEL_19:
  v16 = 0;
  v17 = 1 << *(off_27F543EB0 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(off_27F543EB0 + 8);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = v16;
LABEL_28:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v21 << 6);
    if (*(*(off_27F543EB0 + 7) + 8 * v23) == a1)
    {
      v11 = a1;
      v12 = *(*(off_27F543EB0 + 6) + v23);
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544CD0);
      sub_252E379F4();

      v14 = 0x8000000252E89400;
      v15 = 0xD00000000000001BLL;
      goto LABEL_32;
    }
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(off_27F543EB0 + v21 + 8);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_28;
    }
  }

  v26 = MEMORY[0x277D84F90];
  v30 = (MEMORY[0x277D84F90] + 16);
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_36;
  }

  v34 = a1;

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544CB8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E89450);
  v36 = HomeAttributeType.description.getter(v34);
  MEMORY[0x2530AD570](v36);

  MEMORY[0x2530AD570](0x6E7275746572202CLL, 0xEF6C696E20676E69);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E891C0);

  return 0;
}

void sub_252BFA88C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  switch(a1)
  {
    case 2:
    case 11:
      if ([a2 type] != 2)
      {
        goto LABEL_35;
      }

      if (qword_27F53F3D0 != -1)
      {
        swift_once();
      }

      v38 = off_27F543EB8;
      if (!*(off_27F543EB8 + 2) || (v39 = sub_252A488EC(a1), (v40 & 1) == 0))
      {
LABEL_35:
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v45 = sub_252E36AD4();
        __swift_project_value_buffer(v45, qword_27F544CD0);
        sub_252E379F4();

        *(&v193 + 1) = 0x8000000252E89780;
        v46 = HomeAttributeType.description.getter(a1);
        MEMORY[0x2530AD570](v46);

        v22 = 0xD00000000000002BLL;
        v23 = 0x8000000252E89780;
        v24 = 351;
        goto LABEL_154;
      }

      v41 = v38[7] + 16 * v39;
      v13 = *v41;
      v42 = *(v41 + 8);
      if (a3 != 1)
      {
        goto LABEL_112;
      }

      v43 = *(v41 + 8);

      [a2 doubleValue];
      if (v44 == 0.0)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_252E3C3C0;
        *(v159 + 32) = 1;
        *(v159 + 40) = 0;
        *(v159 + 48) = 0;
        *(v159 + 56) = 0;
        *(v159 + 64) = -108;
        [a2 doubleValue];
        v196 = v160;
        v13(&v193, &v196);

        v161 = v195;
        v162 = v194;
        *(v159 + 72) = v193;
        *(v159 + 88) = v162;
        *(v159 + 104) = v161;
      }

      return;
    case 5:
      if ([a2 type] != 3 || (v96 = objc_msgSend(a2, sel_stringValue)) == 0 || (v97 = v96, v98 = sub_252E36F34(), v100 = v99, v97, v101 = sub_252C5C088(v98, v100), (v103 & 1) != 0))
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v104 = sub_252E36AD4();
        __swift_project_value_buffer(v104, qword_27F544CD0);
        sub_252E379F4();

        *(&v193 + 1) = 0x8000000252E897B0;
        v105 = HomeAttributeType.description.getter(5);
        MEMORY[0x2530AD570](v105);

        v22 = 0xD00000000000002BLL;
        v23 = 0x8000000252E897B0;
        v24 = 358;
        goto LABEL_154;
      }

      v139 = v101;
      v140 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_252E3C3C0;
      *(v141 + 32) = 1;
      *(v141 + 40) = 0;
      *(v141 + 48) = 0;
      *(v141 + 56) = 0;
      *(v141 + 64) = -108;
      *(v141 + 72) = v139;
      *(v141 + 80) = v140;
      *(v141 + 88) = 0;
      *(v141 + 96) = 0;
      *(v141 + 104) = 48;
      return;
    case 8:
      if ([a2 type] != 1)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v122 = sub_252E36AD4();
        __swift_project_value_buffer(v122, qword_27F544CD0);
        sub_252E379F4();

        *(&v193 + 1) = 0x8000000252E89680;
        v123 = HomeAttributeType.description.getter(8);
        MEMORY[0x2530AD570](v123);

        v22 = 0xD00000000000002FLL;
        v23 = 0x8000000252E89680;
        v24 = 425;
        goto LABEL_154;
      }

      v61 = [a2 BOOLValue];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_252E3C290;
      if (a6)
      {
        if (v61)
        {
          *(v62 + 32) = 1;
          *(v62 + 40) = 0;
          *(v62 + 48) = 0;
          *(v62 + 56) = 0;
        }

        else
        {
          *(v62 + 32) = 0u;
          *(v62 + 48) = 0u;
        }

        *(v62 + 64) = 72;
      }

      else
      {
        if (v61)
        {
          *(v62 + 32) = 1;
          *(v62 + 40) = 0;
          *(v62 + 48) = 0;
          *(v62 + 56) = 0;
        }

        else
        {
          *(v62 + 32) = 0u;
          *(v62 + 48) = 0u;
        }

        *(v62 + 64) = -60;
      }

      return;
    case 9:
      if ([a2 type] != 4)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v126 = sub_252E36AD4();
        __swift_project_value_buffer(v126, qword_27F544CD0);
        *(&v193 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E89850);
        v127 = HomeAttributeType.description.getter(9);
        MEMORY[0x2530AD570](v127);

        v22 = 0;
        v23 = 0xE000000000000000;
        v24 = 311;
        goto LABEL_154;
      }

      if (a6)
      {
        if (qword_27F53F3E8 != -1)
        {
          swift_once();
        }

        v73 = off_27F543ED0;
        if (*(off_27F543ED0 + 2))
        {
          v74 = sub_252A488EC(9);
          if (v75)
          {
            goto LABEL_78;
          }
        }
      }

      if (qword_27F53F3E0 != -1)
      {
        goto LABEL_207;
      }

      goto LABEL_76;
    case 10:
      if ([a2 type] == 1)
      {
        v64 = [a2 BOOLValue];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_252E3C290;
        if (a6)
        {
          if (v64)
          {
            *(v65 + 32) = 0u;
            *(v65 + 48) = 0u;
          }

          else
          {
            *(v65 + 32) = 1;
            *(v65 + 40) = 0;
            *(v65 + 48) = 0;
            *(v65 + 56) = 0;
          }

          *(v65 + 64) = 60;
        }

        else
        {
          if (v64)
          {
            *(v65 + 32) = 0u;
            *(v65 + 48) = 0u;
          }

          else
          {
            *(v65 + 32) = 1;
            *(v65 + 40) = 0;
            *(v65 + 48) = 0;
            *(v65 + 56) = 0;
          }

          *(v65 + 64) = -68;
        }

        return;
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v124 = sub_252E36AD4();
      __swift_project_value_buffer(v124, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E895C0);
      v125 = HomeAttributeType.description.getter(10);
      MEMORY[0x2530AD570](v125);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 451;
      goto LABEL_154;
    case 12:
      if ([a2 type] == 3)
      {
        v106 = [a2 stringValue];
        if (v106)
        {
          v107 = v106;
          sub_252E36F34();

          v108 = sub_252E37B74();

          if (v108 <= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v109 = swift_allocObject();
            *(v109 + 16) = xmmword_252E3C3C0;
            *(v109 + 32) = 1;
            *(v109 + 40) = 0;
            *(v109 + 48) = 0;
            *(v109 + 56) = 0;
            *(v109 + 64) = -108;
            *(v109 + 72) = v108;
            *(v109 + 80) = 0;
            *(v109 + 88) = 0;
            *(v109 + 96) = 0;
            *(v109 + 104) = -100;
            return;
          }
        }
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v110 = sub_252E36AD4();
      __swift_project_value_buffer(v110, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E89580);
      v111 = HomeAttributeType.description.getter(12);
      MEMORY[0x2530AD570](v111);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 461;
      goto LABEL_154;
    case 13:
      if ([a2 type] == 3)
      {
        v53 = [a2 stringValue];
        if (v53 && (v54 = v53, v55 = sub_252E36F34(), v57 = v56, v54, v58 = sub_252A81380(v55, v57), , v58 != 5))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
          v137 = swift_allocObject();
          *(v137 + 16) = xmmword_252E3C290;
          *(v137 + 32) = v58;
          *(v137 + 40) = 0;
          *(v137 + 48) = 0;
          *(v137 + 56) = 0;
          if (a6)
          {
            v138 = 80;
          }

          else
          {
            v138 = -52;
          }

          *(v137 + 64) = v138;
        }

        else
        {
          if (qword_27F53F4B8 != -1)
          {
            swift_once();
          }

          v59 = sub_252E36AD4();
          __swift_project_value_buffer(v59, qword_27F544CD0);
          sub_252CC4050(0xD000000000000031, 0x8000000252E89640, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000047, 0x8000000252E894F0, 437);
        }

        return;
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v120 = sub_252E36AD4();
      __swift_project_value_buffer(v120, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E89600);
      v121 = HomeAttributeType.description.getter(13);
      MEMORY[0x2530AD570](v121);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 440;
      goto LABEL_154;
    case 14:
    case 15:
      if ([a2 type] != 3)
      {
        goto LABEL_151;
      }

      v27 = [a2 stringValue];
      if (!v27)
      {
        goto LABEL_151;
      }

      v28 = v27;
      sub_252E36F34();

      if (qword_27F53F308 != -1)
      {
        swift_once();
      }

      v29 = off_27F542288;
      v30 = sub_252E36FA4();
      if (v29[2])
      {
        v32 = sub_252A44A10(v30, v31);
        v34 = v33;

        if (v34)
        {
          v35 = *(v29[7] + v32);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_252E3C290;
          *(v36 + 32) = v35;
          *(v36 + 40) = 0;
          *(v36 + 48) = 0;
          *(v36 + 56) = 0;
          *(v36 + 64) = -48;
          return;
        }
      }

      else
      {
      }

LABEL_151:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v135 = sub_252E36AD4();
      __swift_project_value_buffer(v135, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E89540);
      v136 = HomeAttributeType.description.getter(a1);
      MEMORY[0x2530AD570](v136);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 470;
      goto LABEL_154;
    case 20:
      v66 = [a2 stringValue];
      if (!v66)
      {
        goto LABEL_135;
      }

      v67 = v66;
      sub_252E36F34();

      v68 = sub_252DB4EB4();
      if (v68 <= 1)
      {
        if (v68)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        goto LABEL_134;
      }

      if (v68 == 2)
      {
        v69 = 4;
LABEL_134:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_252E3C290;
        *(v130 + 32) = v69;
        *(v130 + 40) = 0;
        *(v130 + 48) = 0;
        *(v130 + 56) = 0;
        *(v130 + 64) = 96;
        return;
      }

LABEL_135:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v131 = sub_252E36AD4();
      __swift_project_value_buffer(v131, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E89740);
      v132 = HomeAttributeType.description.getter(20);
      MEMORY[0x2530AD570](v132);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 375;
      goto LABEL_154;
    case 22:
    case 46:
    case 66:
      if ([a2 type] == 1)
      {
        if (qword_27F53F3D8 != -1)
        {
          swift_once();
        }

        v8 = off_27F543EC0;
        if (*(off_27F543EC0 + 2))
        {
          v9 = sub_252A488EC(a1);
          if (v10)
          {
            goto LABEL_7;
          }
        }
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E89810);
      v26 = HomeAttributeType.description.getter(a1);
      MEMORY[0x2530AD570](v26);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 320;
      goto LABEL_154;
    case 23:
    case 24:
    case 50:
      if ([a2 type] != 2)
      {
        goto LABEL_14;
      }

      if (qword_27F53F3D0 != -1)
      {
        swift_once();
      }

      v15 = off_27F543EB8;
      if (!*(off_27F543EB8 + 2) || (v16 = sub_252A488EC(a1), (v17 & 1) == 0))
      {
LABEL_14:
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v20 = sub_252E36AD4();
        __swift_project_value_buffer(v20, qword_27F544CD0);
        sub_252E379F4();

        *(&v193 + 1) = 0x8000000252E89780;
        v21 = HomeAttributeType.description.getter(a1);
        MEMORY[0x2530AD570](v21);

        v22 = 0xD00000000000002BLL;
        v23 = 0x8000000252E89780;
        v24 = 367;
        goto LABEL_154;
      }

      v18 = v15[7] + 16 * v16;
      v13 = *v18;
      v19 = *(v18 + 8);
LABEL_112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_252E3C290;

      [a2 doubleValue];
      v196 = v112;
      goto LABEL_113;
    case 27:
      if ([a2 type] == 1)
      {
        if ((a5 & 1) == 0)
        {
          if (a4 == 3 || a4 == 29)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v142 = swift_allocObject();
            *(v142 + 16) = xmmword_252E3C290;
            v143 = [a2 BOOLValue] == 0;
            v144 = 1;
            if (!v143)
            {
              v144 = 2;
            }

            *(v142 + 32) = v144;
            *(v142 + 40) = 0;
            *(v142 + 48) = 0;
            *(v142 + 56) = 0;
            *(v142 + 64) = -48;
            return;
          }

          if (a4 == 30)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v134 = swift_allocObject();
            *(v134 + 16) = xmmword_252E3C290;
            *(v134 + 32) = [a2 BOOLValue];
            *(v134 + 40) = 0;
            *(v134 + 48) = 0;
            *(v134 + 56) = 0;
            *(v134 + 64) = 96;
            return;
          }
        }

        if (qword_27F53F3D8 != -1)
        {
          swift_once();
        }

        v8 = off_27F543EC0;
        if (*(off_27F543EC0 + 2))
        {
          v9 = sub_252A488EC(27);
          if (v49)
          {
LABEL_7:
            v11 = v8[7] + 16 * v9;
            v13 = *v11;
            v12 = *(v11 + 8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_252E3C290;

            LOBYTE(v196) = [a2 BOOLValue];
            goto LABEL_113;
          }
        }

        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v50 = sub_252E36AD4();
        __swift_project_value_buffer(v50, qword_27F544CD0);
        *(&v193 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E89810);
        v51 = HomeAttributeType.description.getter(27);
        MEMORY[0x2530AD570](v51);

        v22 = 0;
        v23 = 0xE000000000000000;
        v24 = 333;
      }

      else
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v115 = sub_252E36AD4();
        __swift_project_value_buffer(v115, qword_27F544CD0);
        sub_252E379F4();

        *(&v193 + 1) = 0x8000000252E897E0;
        v116 = [a2 description];
        v117 = sub_252E36F34();
        v119 = v118;

        MEMORY[0x2530AD570](v117, v119);

        v22 = 0xD000000000000020;
        v23 = 0x8000000252E897E0;
        v24 = 337;
      }

      goto LABEL_154;
    case 67:
      if ([a2 type] != 8)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v128 = sub_252E36AD4();
        __swift_project_value_buffer(v128, qword_27F544CD0);
        *(&v193 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E896B0);
        v129 = HomeAttributeType.description.getter(67);
        MEMORY[0x2530AD570](v129);

        v22 = 0;
        v23 = 0xE000000000000000;
        v24 = 414;
        goto LABEL_154;
      }

      v79 = &off_279711000;
      v80 = [a2 cleaningJob];
      if (!v80)
      {
        goto LABEL_173;
      }

      v81 = v80;
      v82 = [v80 cleanModes];

      v83 = sub_252E37264();
      v84 = *(v83 + 16);
      if (v84)
      {
        v192 = MEMORY[0x277D84F90];
        v85 = 32;
        do
        {
          v87 = sub_252E289F0(*(v83 + v85));
          if (v88)
          {
            v89 = 0;
          }

          else
          {
            v89 = v87;
          }

          if (qword_27F53F6E8 != -1)
          {
            swift_once();
          }

          v90 = off_27F545908;
          if (*(off_27F545908 + 2) && (v91 = sub_252A488EC(v89), (v92 & 1) != 0))
          {
            v93 = *(v90[7] + v91);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v192 = sub_2529F80F0(0, *(v192 + 2) + 1, 1, v192);
            }

            v95 = *(v192 + 2);
            v94 = *(v192 + 3);
            if (v95 >= v94 >> 1)
            {
              v192 = sub_2529F80F0((v94 > 1), v95 + 1, 1, v192);
            }

            *(v192 + 2) = v95 + 1;
            v192[v95 + 32] = v93;
          }

          else
          {
            if (qword_27F53F4B8 != -1)
            {
              swift_once();
            }

            v86 = sub_252E36AD4();
            __swift_project_value_buffer(v86, qword_27F544CD0);
            *&v193 = 0;
            *(&v193 + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E6E290);
            v196 = v89;
            sub_252E37AE4();
            sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000013, 0x8000000252E6E350, 65);
          }

          v85 += 8;
          --v84;
        }

        while (v84);

        v79 = &off_279711000;
      }

      else
      {

LABEL_173:
        v192 = MEMORY[0x277D84F90];
      }

      v145 = [a2 v79[207]];
      if (!v145)
      {

        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v152 = sub_252E36AD4();
        __swift_project_value_buffer(v152, qword_27F544CD0);
        sub_252E379F4();

        *&v193 = 0xD000000000000016;
        *(&v193 + 1) = 0x8000000252E89720;
        v196 = [a2 v79[207]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
        v153 = sub_252E36F94();
        MEMORY[0x2530AD570](v153);

        MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
        v154 = HomeAttributeType.description.getter(67);
        MEMORY[0x2530AD570](v154);

        v22 = 0xD000000000000016;
        v23 = 0x8000000252E89720;
        v24 = 411;
        goto LABEL_154;
      }

      v146 = v145;
      v147 = [v145 runState];

      v148 = sub_252D375A8(v147);
      if (v148 != 3)
      {
        v155 = v148;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v156 = swift_allocObject();
        *(v156 + 16) = xmmword_252E3C290;
        *(v156 + 32) = v155;
        *(v156 + 40) = 0;
        *(v156 + 48) = 0;
        *(v156 + 56) = 0;
        *(v156 + 64) = -88;
        return;
      }

      v149 = sub_252D3772C(v147);
      if (v149 == 16)
      {

        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v150 = sub_252E36AD4();
        __swift_project_value_buffer(v150, qword_27F544CD0);
        sub_252E379F4();

        *&v193 = 0xD00000000000002BLL;
        *(&v193 + 1) = 0x8000000252E896F0;
        v196 = [a2 v79[207]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
        v151 = sub_252E36F94();
        MEMORY[0x2530AD570](v151);

        v22 = 0xD00000000000002BLL;
        v23 = 0x8000000252E896F0;
        v24 = 408;
LABEL_154:
        sub_252CC4050(v22, v23, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000047, 0x8000000252E894F0, v24);

        return;
      }

      v157 = v149;
      if (sub_252A7D814(v149) == 0x676E696E6E7572 && v158 == 0xE700000000000000)
      {
      }

      else
      {
        v163 = sub_252E37DB4();

        if ((v163 & 1) == 0)
        {
          goto LABEL_228;
        }
      }

      v164 = [a2 v79[207]];
      if (!v164)
      {
        goto LABEL_222;
      }

      v165 = v164;
      v166 = [v164 targetAreas];

      if (!v166)
      {
        goto LABEL_222;
      }

      type metadata accessor for HomeAttributeTargetArea();
      v167 = sub_252E37264();

      if (!(v167 >> 62))
      {
        v168 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v191 = v157;
        if (v168)
        {
          goto LABEL_193;
        }

        goto LABEL_209;
      }

      v168 = sub_252E378C4();
      v191 = v157;
      if (!v168)
      {
LABEL_209:
        v170 = MEMORY[0x277D84F90];
LABEL_210:

        v178 = *(v170 + 2);
        if (v178)
        {
          v179 = MEMORY[0x277D84F90];
          v180 = 32;
          while (1)
          {
            v181 = *&v170[v180];
            if ((*&v181 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v181 <= -9.22337204e18)
            {
              goto LABEL_233;
            }

            if (v181 >= 9.22337204e18)
            {
              goto LABEL_234;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v179 = sub_2529F8104(0, *(v179 + 2) + 1, 1, v179);
            }

            v183 = *(v179 + 2);
            v182 = *(v179 + 3);
            if (v183 >= v182 >> 1)
            {
              v179 = sub_2529F8104((v182 > 1), v183 + 1, 1, v179);
            }

            *(v179 + 2) = v183 + 1;
            *&v179[8 * v183 + 32] = v181;
            v180 += 8;
            if (!--v178)
            {

              v184 = 1;
              v157 = v191;
LABEL_231:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
              v190 = swift_allocObject();
              *(v190 + 16) = xmmword_252E3C290;
              *(v190 + 32) = v157;
              *(v190 + 40) = v192;
              *(v190 + 48) = v179;
              *(v190 + 56) = v178;
              *(v190 + 64) = v184 | 0xA4;
              return;
            }
          }

          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        v79 = &off_279711000;
        v157 = v191;
LABEL_222:
        v185 = [a2 v79[207]];
        if (v185)
        {
          v186 = v185;
          v179 = [v185 targetMap];

          if (v179)
          {
            [v179 mapID];
            v188 = v187;
            v189 = v187;

            if ((*&v189 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v188 > -9.22337204e18)
              {
                if (v188 < 9.22337204e18)
                {
                  v184 = 0;
                  v179 = 0;
                  v178 = v188;
                  goto LABEL_231;
                }

                goto LABEL_237;
              }

LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              return;
            }

LABEL_235:
            __break(1u);
            goto LABEL_236;
          }

          v178 = 0;
LABEL_230:
          v184 = 1;
          goto LABEL_231;
        }

LABEL_228:
        v178 = 0;
        v179 = 0;
        goto LABEL_230;
      }

LABEL_193:
      v169 = 0;
      v170 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v167 & 0xC000000000000001) != 0)
        {
          v171 = MEMORY[0x2530ADF00](v169, v167);
        }

        else
        {
          if (v169 >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_206;
          }

          v171 = *(v167 + 8 * v169 + 32);
        }

        v172 = v171;
        v173 = v169 + 1;
        if (__OFADD__(v169, 1))
        {
          break;
        }

        [v171 areaID];
        v175 = v174;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = sub_2529F7D44(0, *(v170 + 2) + 1, 1, v170);
        }

        v177 = *(v170 + 2);
        v176 = *(v170 + 3);
        if (v177 >= v176 >> 1)
        {
          v170 = sub_2529F7D44((v176 > 1), v177 + 1, 1, v170);
        }

        *(v170 + 2) = v177 + 1;
        *&v170[8 * v177 + 32] = v175;
        ++v169;
        if (v173 == v168)
        {
          goto LABEL_210;
        }
      }

      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      swift_once();
LABEL_76:
      v73 = off_27F543EC8;
      if (*(off_27F543EC8 + 2) && (v74 = sub_252A488EC(9), (v76 & 1) != 0))
      {
LABEL_78:
        v77 = v73[7] + 16 * v74;
        v13 = *v77;
        v78 = *(v77 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_252E3C290;

        v196 = [a2 integerValue];
LABEL_113:
        v13(&v193, &v196);

        v113 = v195;
        v114 = v194;
        *(v14 + 32) = v193;
        *(v14 + 48) = v114;
        *(v14 + 64) = v113;
      }

      else
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v133 = sub_252E36AD4();
        __swift_project_value_buffer(v133, qword_27F544CD0);
        sub_252CC4050(0xD000000000000025, 0x8000000252E89890, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000047, 0x8000000252E894F0, 307);
      }

      return;
    default:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v70 = sub_252E36AD4();
      __swift_project_value_buffer(v70, qword_27F544CD0);
      *(&v193 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E894B0);
      v71 = HomeAttributeType.description.getter(a1);
      MEMORY[0x2530AD570](v71);

      v22 = 0;
      v23 = 0xE000000000000000;
      v24 = 474;
      goto LABEL_154;
  }
}

uint64_t sub_252BFCBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF0, &qword_252E52318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BFCC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  if ((a1 != 0x6974616D6F747561 || a2 != 0xEB00000000736E6FLL) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v13 = *(sub_252BF6CBC() + 2);

      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v13;
      return result;
    }

    if (a1 == 0x73656D616ELL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = sub_252BF6CBC();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
      *(a3 + 24) = result;
      *a3 = v14;
      return result;
    }

    if (a1 == 0x656D6F48656D6173 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      sub_252BF7010(v10);
      v15 = sub_252E36324();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v10, 1, v15) != 1)
      {
        *(a3 + 24) = v15;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v16 + 32))(boxed_opaque_existential_0, v10, v15);
      }

      result = sub_252938BBC(v10);
LABEL_20:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (a1 == 0x6D61536E49657261 && a2 == 0xED0000656D6F4865 || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_252BF714C();
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = result & 1;
      return result;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E899C0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v18 = *(sub_252BF6CBC() + 2);

      v19 = MEMORY[0x277D839B0];
      v20 = v18 == 1;
    }

    else
    {
      if (a1 != 0xD000000000000027 || 0x8000000252E899E0 != a2)
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v21 = *(sub_252BF6CBC() + 2);

      v19 = MEMORY[0x277D839B0];
      v20 = (v21 - 2) < 4;
    }

    *(a3 + 24) = v19;
    *a3 = v20;
    return result;
  }

  v11 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F20, &qword_252E52470);
  *a3 = v11;
}

uint64_t sub_252BFD01C()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252BFD098()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252BFD0F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252BFD188@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252BFD1E0(uint64_t a1)
{
  v2 = sub_252BFD780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BFD21C(uint64_t a1)
{
  v2 = sub_252BFD780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BFD27C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F38, &qword_252E52478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BFD780();
  sub_252E37F84();
  v11[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F20, &qword_252E52470);
  sub_252BFD7D4(&qword_27F543F40, &qword_27F543F48);
  sub_252E37D54();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252BFD438(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F10, &qword_252E52468);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BFD780();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAutomations();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F20, &qword_252E52470);
    sub_252BFD7D4(&qword_27F543F28, &qword_27F543F30);
    sub_252E37C64();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252BFD674@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAutomations();
  v5 = swift_allocObject();
  result = sub_252BFD438(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252BFD780()
{
  result = qword_27F543F18;
  if (!qword_27F543F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543F18);
  }

  return result;
}

uint64_t sub_252BFD7D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543F20, &qword_252E52470);
    sub_252BFD874(a2, 255, type metadata accessor for HomeAutomationAutomation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BFD874(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252BFD8D0()
{
  result = qword_27F543F50;
  if (!qword_27F543F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543F50);
  }

  return result;
}

unint64_t sub_252BFD928()
{
  result = qword_27F543F58;
  if (!qword_27F543F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543F58);
  }

  return result;
}

unint64_t sub_252BFD980()
{
  result = qword_27F543F60;
  if (!qword_27F543F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543F60);
  }

  return result;
}

uint64_t sub_252BFD9D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  strcpy((v4 + 32), "intentContext");
  *(v4 + 46) = -4864;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x65736E6F70736572;
  *(v4 + 88) = 0xE900000000000073;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationEntityResponses();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFDB14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  strcpy((v4 + 32), "intentContext");
  *(v4 + 46) = -4864;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x65736E6F70736572;
  *(v4 + 88) = 0xE900000000000073;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationEntityResponses();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFDC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C3C0;
  *(v8 + 32) = 0xD000000000000010;
  *(v8 + 40) = 0x8000000252E89B30;
  sub_252938414(a1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000011;
  *(v8 + 88) = 0x8000000252E764A0;
  *(v8 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v8 + 96) = a2;

  sub_252E362B4();
}

uint64_t sub_252BFDE5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  *(v4 + 32) = 0x6974616D6F747561;
  *(v4 + 40) = 0xEB00000000736E6FLL;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationAutomations();
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "intentContext");
  *(v4 + 94) = -4864;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationIntentContext(0);
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFDFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C3C0;
  *(v11 + 32) = 0x726F7463656C6573;
  *(v11 + 40) = 0xE800000000000000;
  sub_252938414(a1, v10, &qword_27F540298, &unk_252E3C270);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
    (*(v13 + 32))(boxed_opaque_existential_0, v10, v12);
  }

  *(v11 + 80) = 0x6E6F697461636F6CLL;
  *(v11 + 88) = 0xE800000000000000;
  sub_252938414(a2, v8, &qword_27F540298, &unk_252E3C270);
  if (v14(v8, 1, v12) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    v16 = __swift_allocate_boxed_opaque_existential_0((v11 + 96));
    (*(v13 + 32))(v16, v8, v12);
  }

  sub_252E362B4();
}

uint64_t sub_252BFE230(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C3C0;
  *(v8 + 32) = 0x786F567369;
  *(v8 + 40) = 0xE500000000000000;
  v9 = MEMORY[0x277D839B0];
  *(v8 + 48) = a1;
  *(v8 + 72) = v9;
  strcpy((v8 + 80), "remoteHomeName");
  *(v8 + 95) = -18;
  sub_252938414(a2, v7, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 96));
    (*(v11 + 32))(boxed_opaque_existential_0, v7, v10);
  }

  sub_252E362B4();
}

uint64_t sub_252BFE424(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  strcpy((v4 + 32), "intentContext");
  *(v4 + 46) = -4864;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x65736E6F70736572;
  *(v4 + 88) = 0xE900000000000073;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationEntityResponses();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFE564(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  *(v4 + 32) = 0x6552797469746E65;
  *(v4 + 40) = 0xEF7365736E6F7073;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationEntityResponses();
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "intentContext");
  *(v4 + 94) = -4864;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationIntentContext(0);
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t HomeAutomationCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_252938414(a1, v13, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v16;
}

uint64_t HomeAutomationCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E363B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252938414(a1, &v14 - v11, &qword_27F540370, &qword_252E3C450);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_252E362A4();
  (*(v5 + 8))(a2, v4);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v12;
}

uint64_t HomeAutomationCATs.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB4CATsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeAutomationCATs()
{
  result = qword_2814B0DF0;
  if (!qword_2814B0DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_252BFEAD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      v11[0] = *(v6 - 1);
      v11[1] = v7;

      v8 = sub_252D92654(v11, a2);

      if (v2)
      {
        break;
      }

      v9 = v5-- == 0;
      v6 += 2;
    }

    while (!v8 && !v9);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

void sub_252BFEB74(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (*(v3 + 16) || (v3 = a1[21], *(v3 + 16)) || (v3 = a1[20], *(v3 + 16)))
  {
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_37:
    if (*(v3 + 16))
    {
      sub_252BFEAD0(v3, &v26);
    }

    return;
  }

  v6 = (a2 + 32);
  while (1)
  {
    memcpy(__dst, v6, sizeof(__dst));
    memcpy(v24, v6, sizeof(v24));
    sub_2529353AC(__dst, v23);
    sub_252A13A70();
    if (v7)
    {
      break;
    }

    sub_252935408(__dst);
LABEL_8:
    v6 += 504;
    if (!--v5)
    {
      goto LABEL_37;
    }
  }

  v8 = __dst[41];
  v9 = *(__dst[41] + 16);
  v10 = *(v4 + 2);
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= *(v4 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v9)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        v13 = *(v4 + 2);
        if (v9)
        {
          v14 = __OFADD__(v13, v9);
          v13 += v9;
          if (v14)
          {
            goto LABEL_47;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v15 = v10 + v9;
      }

      else
      {
        v15 = v10;
      }

      v4 = sub_2529F7A80(isUniquelyReferenced_nonNull_native, v15, 1, v4);
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    if (v9)
    {
      goto LABEL_42;
    }

    v13 = *(v4 + 2);
LABEL_24:
    v16 = __dst[42];
    v17 = *(__dst[42] + 16);
    v18 = v13 + v17;
    if (__OFADD__(v13, v17))
    {
      goto LABEL_43;
    }

    v19 = *(v4 + 3) >> 1;

    if (v19 < v18)
    {
      if (v13 <= v18)
      {
        v22 = v13 + v17;
      }

      else
      {
        v22 = v13;
      }

      v4 = sub_2529F7A80(1, v22, 1, v4);
      v13 = *(v4 + 2);
      v19 = *(v4 + 3) >> 1;
      if (*(v16 + 16))
      {
        goto LABEL_27;
      }
    }

    else if (v17)
    {
LABEL_27:
      if ((v19 - v13) < v17)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v20 = *(v4 + 2);
        v14 = __OFADD__(v20, v17);
        v21 = v20 + v17;
        if (v14)
        {
          goto LABEL_48;
        }

        *(v4 + 2) = v21;
      }

LABEL_36:
      sub_252935408(__dst);
      v26 = v4;
      goto LABEL_8;
    }

    if (v17)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void *sub_252BFEE34(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = a1[2];
  v4 = a1 + 4;
  v5 = MEMORY[0x277D84F90];
  v6 = (a1 + 4);
  v7 = v3;
  while (1)
  {
    memcpy(v34, v6, sizeof(v34));
    memcpy(v35, v6, 0x1F8uLL);
    sub_2529353AC(v34, v33);
    if (sub_252A13FE0())
    {
      break;
    }

    memcpy(v33, v34, sizeof(v33));
    if (sub_252A13BEC())
    {
      break;
    }

    memcpy(v35, v34, 0x1F8uLL);
    v8 = sub_252A143D4();
    sub_252935408(v34);
    if (v8)
    {
      goto LABEL_9;
    }

    v6 += 504;
    if (!--v7)
    {
      return v5;
    }
  }

  sub_252935408(v34);
  while (1)
  {
LABEL_9:
    if (!v3)
    {
      __break(1u);
      goto LABEL_45;
    }

    memcpy(v35, v4, 0x1F8uLL);
    sub_252A13A70();
    if (v9)
    {
      break;
    }

    v4 += 63;
    if (!--v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v10 = 0;
  v4 = MEMORY[0x277D84F90];
LABEL_14:
  v11 = &v2[63 * v10 + 4];
  v12 = v10;
  while (v12 < v1)
  {
    memcpy(v35, v11, 0x1F8uLL);
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_46;
    }

    memcpy(v33, v11, sizeof(v33));
    sub_2529353AC(v35, v31);
    if (sub_252A13FE0() & 1) != 0 || (memcpy(v31, v35, sizeof(v31)), (sub_252A13BEC()) || (memcpy(v33, v35, sizeof(v33)), (sub_252A143D4()) || (memcpy(v33, v35, sizeof(v33)), sub_252A13A70(), (v13))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, v4[2] + 1, 1);
        v4 = v32;
      }

      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        sub_2529AA480((v15 > 1), v16 + 1, 1);
        v4 = v32;
      }

      v4[2] = v16 + 1;
      memcpy(&v4[63 * v16 + 4], v35, 0x1F8uLL);
      if (v10 != v1)
      {
        goto LABEL_14;
      }

LABEL_28:
      if (qword_27F53F520 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_29;
    }

    sub_252935408(v35);
    ++v12;
    v11 += 504;
    if (v10 == v1)
    {
      goto LABEL_28;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_29:
  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544E08);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E89BF0);
  v18 = MEMORY[0x2530AD730](v4, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v18);

  sub_252CC3D90(v35[0], v35[1], 0xD0000000000000A4, 0x8000000252E89C40);

  v19 = 0;
  v20 = v2 + 4;
  v5 = MEMORY[0x277D84F90];
  v30 = v2 + 4;
  do
  {
    v21 = &v20[63 * v19];
    v22 = v19;
    while (1)
    {
      if (v22 >= v1)
      {
        goto LABEL_47;
      }

      memcpy(v35, v21, 0x1F8uLL);
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_48;
      }

      v23 = memcpy(v33, v21, sizeof(v33));
      MEMORY[0x28223BE20](v23);
      v2 = v29;
      v29[2] = v33;
      sub_2529353AC(v35, v31);
      if ((sub_2529EDA1C(sub_25295AD78, v29, v4) & 1) == 0)
      {
        break;
      }

      sub_252BFEB74(v35, v4);
      if ((v24 & 1) == 0)
      {
        break;
      }

      sub_252935408(v35);
      ++v22;
      v21 += 504;
      if (v19 == v1)
      {
        goto LABEL_42;
      }
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v5;
    if ((v25 & 1) == 0)
    {
      sub_2529AA480(0, v5[2] + 1, 1);
      v5 = v32;
    }

    v27 = v5[2];
    v26 = v5[3];
    v2 = (v27 + 1);
    if (v27 >= v26 >> 1)
    {
      sub_2529AA480((v26 > 1), v27 + 1, 1);
      v5 = v32;
    }

    v5[2] = v2;
    memcpy(&v5[63 * v27 + 4], v35, 0x1F8uLL);
    v20 = v30;
  }

  while (v19 != v1);
LABEL_42:

  return v5;
}

uint64_t sub_252BFF350(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = v2 + 1;
  v4 = 360;
  while (--v3)
  {
    v5 = *(a1 + v4);
    v4 += 504;
    if (*(v5 + 16))
    {
      v6 = qword_27F53F520;

      if (v6 != -1)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_27F544E08);
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        sub_252E379F4();

        __src[0] = 0xD000000000000024;
        __src[1] = 0x8000000252E89CF0;
        v8 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v8);

        sub_252CC3D90(__src[0], __src[1], 0xD0000000000000A0, 0x8000000252E89D20);

        if (!v2)
        {
LABEL_9:
          v12 = *(v1 + 2);
          goto LABEL_10;
        }

        v10 = 0;
        v11 = 536;
        while (*(*&v1[v11 - 176] + 16) <= 1uLL)
        {
          ++v10;
          v11 += 504;
          if (v2 == v10)
          {
            goto LABEL_9;
          }
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }

        v15 = *(v1 + 2);
        if (v12 == v15)
        {
          break;
        }

        v2 = v10;
        while (v12 < v15)
        {
          if (*(*&v1[v11 + 328] + 16) <= 1uLL)
          {
            if (v12 != v2)
            {
              if (v2 >= v15)
              {
                goto LABEL_38;
              }

              memcpy(__dst, &v1[504 * v2 + 32], sizeof(__dst));
              memcpy(__src, &v1[v11], sizeof(__src));
              sub_2529353AC(__dst, v18);
              sub_2529353AC(__src, v18);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_252D57AC0(v1);
              }

              if (v2 >= *(v1 + 2))
              {
                goto LABEL_39;
              }

              v16 = &v1[504 * v2];
              memcpy(v17, v16 + 32, sizeof(v17));
              memcpy(v16 + 32, __src, 0x1F8uLL);
              sub_252935408(v17);
              if (v12 >= *(v1 + 2))
              {
                goto LABEL_40;
              }

              memcpy(v18, &v1[v11], sizeof(v18));
              memcpy(&v1[v11], __dst, 0x1F8uLL);
              result = sub_252935408(v18);
            }

            ++v2;
          }

          ++v12;
          v15 = *(v1 + 2);
          v11 += 504;
          if (v12 == v15)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
      }

      v2 = v10;
LABEL_10:
      if (v2 > v12)
      {
        __break(1u);
      }

      else if ((v2 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v12, v2 - v12))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __src[0] = v1;
          if (!isUniquelyReferenced_nonNull_native || v2 > *(v1 + 3) >> 1)
          {
            if (v12 <= v2)
            {
              v14 = v2;
            }

            else
            {
              v14 = v12;
            }

            v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v14, 1, v1);
            __src[0] = v1;
          }

          sub_252B7B280(v2, v12, 0);
          return v1;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  return v1;
}

uint64_t sub_252BFF6BC()
{
  type metadata accessor for TurnOnAirPurifierHandleDelegate();

  return swift_allocObject();
}

void sub_252BFF6EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_252E36AD4();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 filters];
  if (!v11)
  {
    if (qword_27F53F498 != -1)
    {
      goto LABEL_115;
    }

    goto LABEL_8;
  }

  v12 = v11;
  v134 = v10;
  v138 = a1;
  v140 = a3;
  v141 = a2;
  type metadata accessor for HomeFilter();
  v13 = sub_252E37264();

  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  v133 = xmmword_252E3C130;
  *(inited + 16) = xmmword_252E3C130;
  v132 = type metadata accessor for HomeUserTask();
  v15 = objc_allocWithZone(v132);
  v16 = sub_252E36F04();
  v17 = [v15 initWithIdentifier:0 displayString:v16];

  v18 = v17;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  *(inited + 32) = v18;
  v19 = sub_252B4CA9C(v13, inited, 0, 1);
  LOBYTE(v18) = v20;

  swift_setDeallocating();
  v21 = *(inited + 16);
  swift_arrayDestroy();
  if (v18)
  {
    v22 = v19;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F544C70);
    v149 = 0;
    v150 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
    v147 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E89EA0);
    sub_252CC4050(v149, v150, 0xD000000000000085, 0x8000000252E89E10, 0xD000000000000021, 0x8000000252E68B10, 97);

    v23 = v138;
    v24 = sub_252B4CD30(v138, 0, 1);
    if (v25)
    {
      v149 = 0;
      v150 = 0xE000000000000000;
      v26 = v24;
      v27 = v24;
      sub_252E379F4();
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      v147 = v26;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E89EC0);
      sub_252CC4050(v149, v150, 0xD000000000000085, 0x8000000252E89E10, 0xD000000000000021, 0x8000000252E68B10, 106);

      v28 = parse(error:with:)(v26, v23);
      v141();

      sub_252927D3C(v26);
      v29 = v26;
    }

    else
    {
      v77 = v24;
      v141();
      v29 = v77;
    }

    sub_252927D3C(v29);
    sub_252927D3C(v19);
    v78 = v19;
    goto LABEL_120;
  }

  v33 = v19;
  v34 = [v33 entityResponses];
  if (!v34)
  {
    goto LABEL_119;
  }

  v35 = v34;
  v128 = type metadata accessor for HomeEntityResponse();
  v36 = sub_252E37264();

  v147 = MEMORY[0x277D84F90];
  if (v36 >> 62)
  {
    v37 = sub_252E378C4();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v130 = v36;
  v129 = v33;
  v139 = v19;
  if (!v37)
  {
    a2 = 0;
    v79 = MEMORY[0x277D84F90];
    goto LABEL_67;
  }

  v126 = v7;
  v127 = v6;
  v38 = 0;
  a2 = 0;
  v6 = (v130 & 0xC000000000000001);
  v39 = v130 & 0xFFFFFFFFFFFFFF8;
  v40 = v130 + 32;
  v142 = v37;
  v137 = v130 & 0xC000000000000001;
  v136 = v130 & 0xFFFFFFFFFFFFFF8;
  v135 = v130 + 32;
  while (1)
  {
    if (v6)
    {
      v41 = MEMORY[0x2530ADF00](v38, v130);
    }

    else
    {
      if (v38 >= *(v39 + 16))
      {
        goto LABEL_112;
      }

      v41 = *(v40 + 8 * v38);
    }

    v42 = v41;
    v43 = __OFADD__(v38++, 1);
    if (v43)
    {
      goto LABEL_111;
    }

    v44 = [v41 taskResponses];
    if (!v44)
    {
      goto LABEL_15;
    }

    v45 = v44;
    v143 = type metadata accessor for HomeUserTaskResponse();
    v46 = sub_252E37264();

    v47 = [v42 entity];
    if (v47)
    {
      break;
    }

LABEL_15:

LABEL_16:
    if (v38 == v37)
    {
      v79 = v147;
      v6 = v127;
      v7 = v126;
LABEL_67:

      v80 = v79 < 0 || (v79 & 0x4000000000000000) != 0;
      if (v80)
      {
        if (sub_252E378C4())
        {
LABEL_72:
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v81 = __swift_project_value_buffer(v6, qword_27F544C70);
          v82 = *(v7 + 16);
          v145 = v81;
          v82(v134);
          v149 = 0;
          v150 = 0xE000000000000000;
          sub_252E379F4();
          if (v80)
          {
            v83 = sub_252E378C4();
          }

          else
          {
            v83 = *(v79 + 16);
          }

          v147 = v83;
          v148 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
          v84 = sub_252E36F94();
          MEMORY[0x2530AD570](v84);

          MEMORY[0x2530AD570](0xA65687420666F20, 0xE800000000000000);
          v85 = [v129 entityResponses];
          if (v85)
          {
            v86 = sub_252E37264();

            if (v86 >> 62)
            {
              v87 = sub_252E378C4();
            }

            else
            {
              v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v87 = 0;
          }

          v147 = v87;
          v148 = v85 == 0;
          v88 = sub_252E36F94();
          MEMORY[0x2530AD570](v88);

          MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E89EF0);
          v144 = "rnOnAirPurifierHandleDelegate";
          v89 = v134;
          sub_252CC3D90(v149, v150, 0xD000000000000085, 0x8000000252E89E10);

          (*(v7 + 8))(v89, v6);
          if (v80)
          {
            v90 = sub_252E378C4();
            if (v90)
            {
LABEL_84:
              v143 = a2;
              a2 = 0;
              v146 = MEMORY[0x277D84F90];
LABEL_85:
              v91 = a2;
              while (1)
              {
                if ((v79 & 0xC000000000000001) != 0)
                {
                  v92 = MEMORY[0x2530ADF00](v91, v79);
                }

                else
                {
                  if (v91 >= *(v79 + 16))
                  {
                    goto LABEL_114;
                  }

                  v92 = *(v79 + 8 * v91 + 32);
                }

                v93 = v92;
                a2 = (v91 + 1);
                if (__OFADD__(v91, 1))
                {
                  goto LABEL_113;
                }

                v94 = [v92 entity];
                if (v94)
                {
                  v6 = v94;
                  v95 = [v94 entityIdentifier];

                  if (v95)
                  {
                    v96 = sub_252E36F34();
                    v6 = v97;

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v146 = sub_2529F7A80(0, *(v146 + 2) + 1, 1, v146);
                    }

                    v100 = *(v146 + 2);
                    v99 = *(v146 + 3);
                    if (v100 >= v99 >> 1)
                    {
                      v146 = sub_2529F7A80((v99 > 1), v100 + 1, 1, v146);
                    }

                    v101 = v146;
                    *(v146 + 2) = v100 + 1;
                    v102 = &v101[16 * v100];
                    *(v102 + 4) = v96;
                    *(v102 + 5) = v6;
                    if (a2 != v90)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_103;
                  }
                }

                v91 = (v91 + 1);
                if (a2 == v90)
                {
                  goto LABEL_103;
                }
              }
            }
          }

          else
          {
            v90 = *(v79 + 16);
            if (v90)
            {
              goto LABEL_84;
            }
          }

          v146 = MEMORY[0x277D84F90];
LABEL_103:

          v103 = swift_allocObject();
          *(v103 + 16) = v133;
          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          v104.n128_f64[0] = HomeFilter.Builder.init()();
          v106 = (*(*v105 + 568))(v146, v104);

          v108 = (*(*v106 + 760))(v107);

          *(v103 + 32) = v108;
          v109 = swift_initStackObject();
          *(v109 + 16) = v133;
          v110 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v111 = sub_252E36F04();
          v112 = [v110 initWithIdentifier:0 displayString:v111];

          v113 = v112;
          [v113 setBoolValue_];
          [v113 setType_];

          v114 = objc_allocWithZone(v132);
          v115 = sub_252E36F04();
          v116 = [v114 initWithIdentifier:0 displayString:v115];

          v117 = v116;
          [v117 setTaskType_];
          [v117 setAttribute_];
          [v117 setValue_];

          *(v109 + 32) = v117;
          v118 = sub_252B4CA9C(v103, v109, 0, 1);
          LOBYTE(v117) = v119;

          swift_setDeallocating();
          v120 = *(v109 + 16);
          swift_arrayDestroy();
          if (v117)
          {
            v149 = 0;
            v150 = 0xE000000000000000;
            v121 = v118;
            sub_252E379F4();
            MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
            v147 = v118;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
            sub_252E37AE4();
            MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E89F20);
            sub_252CC4050(v149, v150, 0xD000000000000085, v144 | 0x8000000000000000, 0xD000000000000021, 0x8000000252E68B10, 89);

            v122 = parse(error:with:)(v118, v138);
            v141();
          }

          else
          {
            v123 = v118;
            (v141)(v123);
          }

          sub_252927D3C(v118);
          sub_252927D3C(v118);
          v124 = v139;
          sub_252927D3C(v139);
          v78 = v124;
          goto LABEL_120;
        }
      }

      else if (*(v79 + 16))
      {
        goto LABEL_72;
      }

      v33 = v129;
LABEL_119:
      (v141)(v33);
      sub_252927D3C(v19);
      v78 = v19;
LABEL_120:
      sub_252927D3C(v78);
      return;
    }
  }

  if (!(v46 >> 62))
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  v48 = sub_252E378C4();
  if (!v48)
  {
LABEL_59:

    v37 = v142;
    goto LABEL_16;
  }

LABEL_25:
  v49 = 0;
  v146 = (v46 & 0xC000000000000001);
  v144 = v46 & 0xFFFFFFFFFFFFFF8;
  v145 = v42;
  while (2)
  {
    if (v146)
    {
      v50 = MEMORY[0x2530ADF00](v49, v46);
    }

    else
    {
      if (v49 >= *(v144 + 16))
      {
        goto LABEL_110;
      }

      v50 = *(v46 + 32 + 8 * v49);
    }

    v51 = v50;
    v43 = __OFADD__(v49++, 1);
    if (v43)
    {
      goto LABEL_109;
    }

    v6 = a2;
    if (qword_27F53F728 != -1)
    {
      swift_once();
    }

    v52 = qword_27F575C38;
    v53 = [v51 taskOutcome];
    if (!*(v52 + 16))
    {
      a2 = v6;
      goto LABEL_27;
    }

    v54 = v53;
    v55 = *(v52 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v54);
    v56 = sub_252E37F14();
    v57 = v52 + 56;
    v58 = -1 << *(v52 + 32);
    v59 = v56 & ~v58;
    if (((*(v52 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
      a2 = v6;
      v42 = v145;
LABEL_27:

      if (v49 == v48)
      {

LABEL_56:
        v19 = v139;
        v37 = v142;
        v6 = v137;
        v39 = v136;
        v40 = v135;
        goto LABEL_16;
      }

      continue;
    }

    break;
  }

  v60 = ~v58;
  v61 = *(v52 + 48);
  a2 = v6;
  v42 = v145;
  while (*(v61 + 8 * v59) != v54)
  {
    v59 = (v59 + 1) & v60;
    if (((*(v57 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v62 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v63 = sub_252E36F04();
  v64 = [v62 initWithIdentifier:0 displayString:v63];

  v65 = v64;
  v66 = sub_252E36F04();
  [v65 setStringValue_];

  [v65 setUnit_];
  [v65 setType_];
  v146 = v65;

  v67 = [v145 taskResponses];
  if (!v67)
  {
    goto LABEL_62;
  }

  v68 = v67;
  v69 = sub_252E37264();

  if (!(v69 >> 62))
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_45;
    }

LABEL_61:

LABEL_62:
    v19 = v139;
    v37 = v142;
    v6 = v137;
    v39 = v136;
    v40 = v135;

    sub_252E37A94();
    v76 = v147[2];
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
    goto LABEL_16;
  }

  v70 = sub_252E378C4();
  if (!v70)
  {
    goto LABEL_61;
  }

LABEL_45:
  v71 = 0;
  v6 = (v69 & 0xC000000000000001);
  while (1)
  {
    if (v6)
    {
      v72 = MEMORY[0x2530ADF00](v71, v69);
    }

    else
    {
      if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_108;
      }

      v72 = *(v69 + 8 * v71 + 32);
    }

    v73 = v72;
    v74 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    v149 = v72;
    v75 = sub_252DA5D40(&v149, 47, v146, 0, 1);

    if (v75)
    {

      goto LABEL_56;
    }

    ++v71;
    if (v74 == v70)
    {
      goto LABEL_61;
    }
  }

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
  swift_once();
LABEL_8:
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000085, 0x8000000252E89E10, 0xD000000000000021, 0x8000000252E68B10, 51);
  v30 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v31 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v30[v31] = 5;
  [v30 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v32 = sub_252E37254();
  [v30 setEntityResponses_];

  (a2)(v30);
}

uint64_t sub_252C00ABC(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_24:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 != 27)
  {
    return 0;
  }

  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [result value];

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 BOOLValue];

  if (!v11)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v12 = result;
  type metadata accessor for HomeFilter();
  v13 = sub_252E37264();

  KeyPath = swift_getKeyPath();
  v15 = sub_2529304DC(KeyPath, v13);

  if ((v15 & 1) != 0 || (v16 = swift_getKeyPath(), v17 = sub_252BAF91C(v16, v13), , v17))
  {
    type metadata accessor for HomeStore();
    v18 = static HomeStore.shared.getter();
    v19 = HomeStore.accessories(matching:supporting:)(v13, 0);
    LOBYTE(v21) = v20;

    if ((v21 & 1) == 0)
    {
      if (v19 >> 62)
      {
LABEL_54:
        v22 = sub_252E378C4();
        if (v22)
        {
LABEL_14:
          v23 = 0;
          while (v22 != v23)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x2530ADF00](v23, v19);
              if (__OFADD__(v23, 1))
              {
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            else
            {
              if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_54;
              }

              v21 = *(v19 + 8 * v23 + 32);

              if (__OFADD__(v23, 1))
              {
                goto LABEL_23;
              }
            }

            v24 = (*(*v21 + 256))();

            ++v23;
            if (v24 != 39)
            {
              goto LABEL_51;
            }
          }

LABEL_49:
          sub_252929F10(v19, 0);
          return 1;
        }
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_14;
        }
      }
    }

    sub_252929F10(v19, v21 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544E08);
    v47 = sub_252E36AC4();
    v48 = sub_252E374C4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_252917000, v47, v48, "Couldn't get targetedAccessories. Invalidating candidate", v49, 2u);
      MEMORY[0x2530AED00](v49, -1, -1);
    }

    return 0;
  }

  type metadata accessor for HomeStore();
  v25 = static HomeStore.shared.getter();
  v26 = v25[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v26 == 2 || (v26 & 1) != 0)
  {
    v27 = [a1 filters];
    if (v27)
    {
      v28 = v27;
      v29 = sub_252E37264();

      v30 = [a1 userTask];
      v19 = HomeStore.services(matching:supporting:)(v29, v30);
      v32 = v31;

      if (v32)
      {
        v33 = v19;
        v34 = 1;
LABEL_52:
        sub_252929F10(v33, v34);
        return 0;
      }

      if (v19 >> 62)
      {
LABEL_62:
        v35 = sub_252E378C4();
        if (v35)
        {
LABEL_35:
          v36 = 0;
          while (v35 != v36)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x2530ADF00](v36, v19);
              if (__OFADD__(v36, 1))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v36 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v37 = *(v19 + 8 * v36 + 32);

              if (__OFADD__(v36, 1))
              {
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }
            }

            v38 = [*(v37 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v39 = sub_252E36F34();
            v41 = v40;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v42 = off_27F546230;
            if (!*(off_27F546230 + 2) || (v43 = sub_252A44A10(v39, v41), (v44 & 1) == 0))
            {

              goto LABEL_51;
            }

            v45 = *(v42[7] + 8 * v43);

            ++v36;
            if (v45 != 39)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v35 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          goto LABEL_35;
        }
      }

LABEL_51:
      v33 = v19;
      v34 = 0;
      goto LABEL_52;
    }
  }

  return 0;
}

uint64_t sub_252C0104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v4[27] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v7 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = sub_252E34014();
  v4[30] = v8;
  v9 = *(v8 - 8);
  v4[31] = v9;
  v10 = *(v9 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C01184, 0, 0);
}

uint64_t sub_252C01184()
{
  v1 = *(v0 + 192);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v0 + 280) = v2;
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = [v1 userTask];
  if (v5)
  {
    v6 = v5;
    if (*(v0 + 200))
    {
      v7 = sub_252C2B064(v5);
      v8 = v7;
      v59 = v3;
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_34:
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0;
      v56 = MEMORY[0x277D84F90];
      while (v10 != v11)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2530ADF00](v11, v8);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_33;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v15 = sub_252DA124C(0);

        ++v11;
        if (v15)
        {
          MEMORY[0x2530AD700]();
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v16 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v56 = v59;
          v11 = v14;
        }
      }

      v4 = (v2 + 16);
      v17 = v56;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v18 = *v4;
    *v4 = v17;
  }

  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v19 + 288), v0 + 16);

  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
  v22 = (*(v21 + 120))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v22)
  {
    v23 = *(v0 + 272);
    v24 = *(v0 + 232);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v28 = swift_task_alloc();
    *(v0 + 288) = v28;
    v28[2] = v27;
    v28[3] = v4;
    v28[4] = v25;
    *(v0 + 512) = sub_252DC6D48(v27, v26);
    sub_252E33924();
    sub_252E33F54();
    v29 = swift_task_alloc();
    *(v0 + 296) = v29;
    *v29 = v0;
    v29[1] = sub_252C017F0;
    v30 = *(v0 + 208);

    return sub_252C034C0(v30, v2);
  }

  else
  {
    v33 = *(v0 + 200);
    v32 = *(v0 + 208);
    v34 = *(v0 + 192);
    v35 = swift_allocObject();
    *(v0 + 408) = v35;
    v35[2] = v32;
    v35[3] = v2;
    v35[4] = v34;
    swift_retain_n();
    v36 = v34;

    *(v0 + 514) = sub_252DC6D48(v36, v33);
    if (v33)
    {
      v37 = *(v0 + 216);
      v38 = *(v0 + 224);
      v39 = *(v0 + 208);
      v40 = *(v0 + 192);
      v41 = *(v39 + 48);
      v42 = *(v0 + 200);
      v43 = *__swift_project_boxed_opaque_existential_1((v39 + 24), v41);
      v44 = sub_252E36324();
      v45 = *(*(v44 - 8) + 56);
      v46 = v40;

      v45(v38, 1, 1, v44);
      v45(v38 + v37[10], 1, 1, v44);
      *(v38 + v37[5]) = 0;
      *(v38 + v37[6]) = 0;
      *(v38 + v37[7]) = 0;
      *(v38 + v37[8]) = 0;
      *(v38 + v37[9]) = 0;
      sub_252C040D8(v38, v4, v46, v39);
      v47 = sub_252C0A244();
      *(v0 + 416) = v47;
      v48 = *(MEMORY[0x277D55BE8] + 4);
      v57 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v49 = swift_task_alloc();
      *(v0 + 424) = v49;
      *v49 = v0;
      v49[1] = sub_252C02784;

      return v57(0xD00000000000001BLL, 0x8000000252E66680, v47);
    }

    else
    {

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 264);
      v51 = *(v0 + 208);
      v52 = sub_252E36AD4();
      __swift_project_value_buffer(v52, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v53 = *(v51 + 96);
      __swift_project_boxed_opaque_existential_1((v51 + 72), v53);
      sub_252AD7CC4();
      v54 = swift_task_alloc();
      *(v0 + 472) = v54;
      *v54 = v0;
      v54[1] = sub_252C02B6C;
      v55 = *(v0 + 264);

      return sub_252BDB88C(v0 + 56, &unk_252E52778, v35, v55, 0, 0, 0, v53);
    }
  }
}

uint64_t sub_252C017F0(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 296);
  v8 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v9 = sub_252C01BC0;
  }

  else
  {
    *(v6 + 312) = a1;
    *(v6 + 513) = a2;
    v9 = sub_252C01928;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252C01928()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 200);
  if (*(v0 + 513))
  {
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      *(v0 + 344) = v4;
      *v4 = v0;
      v4[1] = sub_252C01D98;
      v5 = *(v0 + 208);

      return sub_252DC8A98(v3);
    }

    goto LABEL_11;
  }

  if (!v2)
  {
    v10 = sub_252BE8FD4();

    v1 = v10;
LABEL_11:
    *(v0 + 368) = v1;
    v11 = *(v0 + 288);
    v12 = *(v0 + 208);
    v13 = v12[13];
    __swift_project_boxed_opaque_existential_1(v12 + 9, v12[12]);
    v14 = swift_task_alloc();
    *(v0 + 376) = v14;
    *(v14 + 16) = v1;
    v15 = swift_task_alloc();
    *(v0 + 384) = v15;
    *(v15 + 16) = &unk_252E52798;
    *(v15 + 24) = v11;
    v16 = v1;
    v17 = swift_task_alloc();
    *(v0 + 392) = v17;
    *v17 = v0;
    v17[1] = sub_252C0213C;
    v18 = *(v0 + 272);
    v20 = *(v0 + 512);

    return sub_252A199A8(v0 + 136, &unk_252E400A0, v14, &unk_252E3D1A0, v15, v18, 0, 0);
  }

  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_252C01C84;
  v9 = *(v0 + 208);

  return sub_252E174F4(v7);
}

uint64_t sub_252C01BC0()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1 = v0[38];
  v2 = v0[36];

  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[28];
  v7 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252C01C84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_252C02060;
  }

  else
  {
    v5 = sub_252C01EAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C01D98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_252C026A8;
  }

  else
  {
    v5 = sub_252C0250C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C01EAC()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 200);
    v4 = sub_252BE8A5C(*(v0 + 328));
    v5 = sub_252BE8FD4();
  }

  else
  {

    v4 = *(v0 + 312);
    v5 = sub_252BE8FD4();
  }

  *(v0 + 368) = v5;
  v6 = *(v0 + 288);
  v7 = *(v0 + 208);
  v8 = v7[13];
  __swift_project_boxed_opaque_existential_1(v7 + 9, v7[12]);
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  *(v9 + 16) = v5;
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *(v10 + 16) = &unk_252E52798;
  *(v10 + 24) = v6;
  v11 = v5;
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_252C0213C;
  v13 = *(v0 + 272);
  v16 = *(v0 + 512);

  return sub_252A199A8(v0 + 136, &unk_252E400A0, v9, &unk_252E3D1A0, v10, v13, 0, 0);
}

uint64_t sub_252C02060()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 336);
  v6 = *(v0 + 288);

  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252C0213C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(v2 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 376);
  if (v0)
  {

    v7 = sub_252C02434;
  }

  else
  {

    v7 = sub_252C022B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C022B0()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[46];
  v9 = v0[36];
  v10 = v0[34];
  v11 = v0[30];
  v12 = v0[31];
  v13 = v0[23];
  (*(v4 + 112))(v7, v0 + 17, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  (*(v12 + 8))(v10, v11);

  v15 = v0[34];
  v14 = v0[35];
  v17 = v0[32];
  v16 = v0[33];
  v19 = v0[28];
  v18 = v0[29];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252C02434()
{
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  v5 = v0[50];
  v6 = v0[36];

  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[28];
  v11 = v0[29];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252C0250C()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 200);
    v4 = sub_252BE92A0(*(v0 + 352));
  }

  else
  {

    v4 = *(v0 + 312);
  }

  *(v0 + 368) = v4;
  v5 = *(v0 + 288);
  v6 = *(v0 + 208);
  v7 = v6[13];
  __swift_project_boxed_opaque_existential_1(v6 + 9, v6[12]);
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  *(v0 + 384) = v9;
  *(v9 + 16) = &unk_252E52798;
  *(v9 + 24) = v5;
  v10 = v4;
  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = sub_252C0213C;
  v12 = *(v0 + 272);
  v15 = *(v0 + 512);

  return sub_252A199A8(v0 + 136, &unk_252E400A0, v8, &unk_252E3D1A0, v9, v12, 0, 0);
}

uint64_t sub_252C026A8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 360);
  v6 = *(v0 + 288);

  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252C02784(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v5 = *(*v2 + 416);
  v8 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v6 = sub_252C02A90;
  }

  else
  {
    v6 = sub_252C028B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252C028B8()
{
  v1 = v0[35];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  sub_252C04788(v0[28]);

  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_252C0297C;
  v6 = v0[26];

  return sub_252E174F4(v3);
}

uint64_t sub_252C0297C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v7 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v5 = sub_252C02E38;
  }

  else
  {
    v5 = sub_252C02CDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C02A90()
{
  v1 = v0[51];
  v2 = v0[35];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  sub_252C04788(v0[28]);

  v6 = v0[55];
  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[28];
  v11 = v0[29];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252C02B6C()
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v8 = *v1;
  *(*v1 + 480) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252C03414;
  }

  else
  {
    v6 = sub_252C032C8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252C02CDC()
{
  v1 = *(v0 + 432);
  *(v0 + 176) = v1;
  v2 = (v0 + 176);
  v3 = *(v0 + 456);
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 208);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 496) = v12;
  *v12 = v0;
  v12[1] = sub_252C02EF8;
  v13 = *(v0 + 514);
  v14 = *(v0 + 256);

  return sub_252BDB88C(v0 + 96, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_252C02E38()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 200);

  v3 = *(v0 + 464);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252C02EF8()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 248);
  v6 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 504) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252C031EC;
  }

  else
  {
    v8 = *(v2 + 488);

    v7 = sub_252C03078;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C03078()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 432);
  v10 = *(v0 + 408);
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  (*(v4 + 112))(v7, v0 + 96, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252C031EC()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = *(v0 + 408);
  v4 = *(v0 + 200);

  v5 = *(v0 + 504);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252C032C8()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[51];
  v9 = v0[23];
  (*(v4 + 112))(v7, v0 + 7, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[32];
  v12 = v0[33];
  v15 = v0[28];
  v14 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252C03414()
{
  v1 = v0[51];

  v2 = v0[60];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[28];
  v7 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252C034C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_252C034E0, 0, 0);
}

uint64_t sub_252C034E0()
{
  v1 = v0[6];
  v0[7] = *(v0[5] + 64);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = type metadata accessor for HomeAutomationBooleanResponses();
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x8000000252E89F80;
  *(v5 + 72) = v3;
  v6 = *(MEMORY[0x277D55C70] + 4);
  v9 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v0[9] = v5;
  *(v5 + 16) = xmmword_252E3C290;
  *(v5 + 48) = v4;

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_252C0366C;

  return v9(0xD00000000000001BLL, 0x8000000252E66680, v5);
}

uint64_t sub_252C0366C(uint64_t a1)
{
  v4 = *(*v2 + 80);
  v5 = *v2;
  v5[11] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C037D8, 0, 0);
  }

  else
  {
    v7 = v5[8];
    v6 = v5[9];
    v8 = v5[7];

    v9 = v5[1];

    return v9(a1, 1);
  }
}

uint64_t sub_252C037D8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_252C03850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[134] = a4;
  v4[133] = a3;
  v4[132] = a2;
  v4[131] = a1;
  return MEMORY[0x2822009F8](sub_252C0387C, 0, 0);
}

uint64_t sub_252C0387C()
{
  v13 = v0;
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *v2;
  type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  v0[135] = v5;
  *(v5 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v5 + 24) = v4;
  memcpy(v0 + 2, (v1 + 112), 0x1F8uLL);
  memcpy(__dst, (v1 + 112), sizeof(__dst));

  sub_2529D291C((v0 + 2), (v0 + 65));
  v6 = v3;
  v7 = sub_252953488(v3, __dst, 0);
  v0[136] = v7;

  v8 = swift_task_alloc();
  v0[137] = v8;
  *v8 = v0;
  v8[1] = sub_252C03A10;
  v9 = v0[132];
  v10 = v0[131];

  return sub_252A2D160(v10, v9, v5, v7);
}

uint64_t sub_252C03A10()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v8 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v4 = sub_252C03BB0;
  }

  else
  {
    v5 = *(v2 + 1088);
    v6 = *(v2 + 1080);

    v4 = sub_252C03B38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C03B38()
{
  v1 = *(v0 + 1048);
  type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C03BB0()
{
  v1 = v0[136];
  v2 = v0[135];

  v3 = v0[1];
  v4 = v0[138];

  return v3();
}

uint64_t sub_252C03C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C03CB8, 0, 0);
}

uint64_t sub_252C03CB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *__swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);
  v9 = v3;

  v8(v1, 1, 1, v7);
  v8(v1 + v2[10], 1, 1, v7);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  *(v1 + v2[9]) = 0;
  sub_252C040D8(v1, (v4 + 16), v9, v5);
  v10 = sub_252C0A244();
  v0[7] = v10;
  v11 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_252C03E70;

  return v14(0xD00000000000001BLL, 0x8000000252E66680, v10);
}

uint64_t sub_252C03E70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C0404C;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C03FBC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C03FBC()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_252C04788(v0[6]);

  v3 = v0[1];
  v4 = v0[10];

  return v3(v4);
}

uint64_t sub_252C0404C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_252C04788(v0[6]);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_252C040D8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v47 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - v11;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v14 = *a2;
  type metadata accessor for HomeAutomationEntityResponses();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v15 + 24) = v14;
  v16 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v17 = v16[9];
  v18 = *(a1 + v17);
  *(a1 + v17) = v15;
  *(swift_allocObject() + 16) = v13;
  v19 = *a2;

  type metadata accessor for HomeAutomationBooleanResponses();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v20 + 24) = v19;
  v21 = v16[5];
  v22 = *(a1 + v21);

  *(a1 + v21) = v20;
  memcpy(v52, (a4 + 112), sizeof(v52));
  memcpy(v51, (a4 + 112), 0x1F8uLL);
  v23 = v47;
  v24 = v47;
  sub_2529D291C(v52, &v50);
  v25 = sub_252953488(v23, v51, 0);

  v26 = v16[7];
  v27 = *(a1 + v26);

  *(a1 + v26) = v25;
  v28 = 1;
  v29 = sub_25294833C(1u, 0, 0);
  if (v29)
  {
    v30 = v29;
    v31 = [v29 dictionary];
    if (v31)
    {
      v32 = v31;
      v33 = objc_opt_self();
      v51[0] = 0;
      v34 = [v33 dataWithPropertyList:v32 format:200 options:0 error:v51];
      v35 = v51[0];
      v36 = v48;
      if (v34)
      {
        v37 = sub_252E32D34();
        v39 = v38;

        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v37, v39);
        v28 = 0;
      }

      else
      {
        v40 = v35;
        v41 = sub_252E32C54();

        swift_willThrow();
        v28 = 1;
      }
    }

    else
    {

      v36 = v48;
    }
  }

  else
  {
    v36 = v48;
  }

  v42 = sub_252E36324();
  v43 = *(*(v42 - 8) + 56);
  v43(v36, v28, 1, v42);
  sub_252956C98(v36, a1 + v16[10]);
  v44 = v49;
  sub_252E37024();
  v43(v44, 0, 1, v42);
  result = sub_252956C98(v44, a1);
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252C04524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C0104C(a1, a2, a3);
}

void *sub_252C045D8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetSwingModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252C0463C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_5:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 22;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_252C046E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C03C20(v2, v3, v4);
}

uint64_t sub_252C04788(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C047E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252C03850(a1, v4, v5, v6);
}

uint64_t sub_252C04898(__int16 a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = a1 & 1;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x616572636E497369;
  *(v4 + 88) = 0xEA00000000006573;
  *(v4 + 96) = HIBYTE(a1) & 1;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0xD000000000000011;
  *(v4 + 136) = 0x8000000252E8A0C0;
  if (a2)
  {
    v6 = sub_252E360E4();
    v7 = a2;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v7;
  *(v4 + 168) = v6;

  return v4;
}