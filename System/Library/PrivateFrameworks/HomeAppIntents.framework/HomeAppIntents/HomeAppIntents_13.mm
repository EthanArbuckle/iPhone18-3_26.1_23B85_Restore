uint64_t sub_252844068(uint64_t *a1, uint64_t a2)
{
  v62 = a2;
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9C0, &qword_2528D4338);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - v6;
  v57 = sub_2528BF290();
  v59 = *(v57 - 8);
  v7 = *(v59 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v12 = sub_2528C0260();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v24 = sub_2528BFB20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(v62, v23, &qword_27F4FD6A0, &qword_2528D4290);
  v62 = *&v23[*(v20 + 56)];
  v54 = v25;
  v55 = v24;
  (*(v25 + 32))(v28, v23, v24);
  sub_2528BFAB0();
  v29 = sub_2528BF0E0();
  v30 = *(v59 + 8);
  v59 += 8;
  v30(v11, v57);
  v31 = *v58;
  v32 = *(*v58 + 16);
  v50 = v30;
  if (v32 && (v33 = sub_252791C7C(v29), (v34 & 1) != 0))
  {
    v35 = v56;
    v36 = *(v31 + 56) + *(v56 + 72) * v33;
    v37 = v53;
    (*(v56 + 16))(v53, v36, v12);
    v49 = *(v35 + 56);
    v49(v37, 0, 1, v12);
    (*(v35 + 32))(v18, v37, v12);
  }

  else
  {
    v35 = v56;
    v38 = *(v56 + 56);
    v39 = v53;
    v38(v53, 1, 1, v12);
    sub_2528C0250();
    v40 = (*(v35 + 48))(v39, 1, v12);
    v49 = v38;
    if (v40 != 1)
    {
      sub_2527213D8(v39, &qword_27F4FF9C0, &qword_2528D4338);
    }
  }

  v41 = *(v62 + 16);
  if (v41)
  {
    v42 = (v62 + 64);
    do
    {
      v43 = *v42;
      v44 = *(v42 - 1);
      v60[0] = *(v42 - 2);
      v60[1] = v44;
      v61 = v43;
      sub_2527274C8(v60, v16);
      sub_2528C0230();
      (*(v35 + 8))(v16, v12);
      v42 += 40;
      --v41;
    }

    while (v41);
  }

  if ((sub_2528C0240() & 1) == 0)
  {
    v45 = v51;
    sub_2528BFAB0();
    v46 = sub_2528BF0E0();
    v50(v45, v57);
    v47 = v52;
    (*(v35 + 16))(v52, v18, v12);
    v49(v47, 0, 1, v12);
    sub_252840F70(v47, v46);
  }

  (*(v35 + 8))(v18, v12);
  return (*(v54 + 8))(v28, v55);
}

uint64_t sub_252844618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = sub_2528BECF0();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = sub_2528BF290();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_2528BFB20();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v4[15] = *(v13 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF978, &unk_2528D4280) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25284483C, 0, 0);
}

uint64_t sub_25284483C()
{
  v109 = v0;
  v1 = v0[14];
  v2 = v0[3];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[3] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = 63 - v7;
  v10 = v0[7];
  v87 = v9 >> 6;
  v105 = (v1 + 16);
  v107 = (v1 + 32);
  v100 = (v0[11] + 8);
  v104 = (v10 + 8);
  v101 = v0[14];
  v99 = (v1 + 8);
  v93 = v0[15] + 7;
  v94 = (v10 + 16);
  v95 = v0[3];

  v12 = 0;
  v96 = v4;
  while (v8)
  {
    v24 = v12;
LABEL_16:
    v27 = v0[18];
    v28 = v0[19];
    v29 = v0[13];
    v106 = (v8 - 1) & v8;
    v30 = __clz(__rbit64(v8)) | (v24 << 6);
    (*(v101 + 16))(v27, *(v95 + 48) + *(v101 + 72) * v30, v29);
    v31 = *(*(v95 + 56) + 8 * v30);
    v32 = v0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
    v34 = *(v33 + 48);
    (*(v101 + 32))(v28, v27, v29);
    *(v28 + v34) = v31;
    (*(*(v33 - 8) + 56))(v28, 0, 1, v33);

LABEL_17:
    v35 = v32[20];
    sub_25274AA0C(v32[19], v35, &qword_27F4FF978, &unk_2528D4280);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v32[20];
    v0 = v32;
    if (v37 == 1)
    {
      v77 = v32[18];
      v78 = v32[19];
      v80 = v32[16];
      v79 = v32[17];
      v81 = v0[12];
      v83 = v0[8];
      v82 = v0[9];
      v84 = v0[5];
      v85 = v0[3];

      v86 = v0[1];

      return v86();
    }

    v39 = v32[17];
    v41 = v32[12];
    v40 = v0[13];
    v43 = v0[9];
    v42 = v0[10];
    v44 = v0[6];
    v45 = v0[4];
    v46 = *(v38 + *(v36 + 48));
    v102 = *v107;
    (*v107)(v0[17]);
    v47 = sub_2528BFAB0();
    MEMORY[0x2530A68D0](v47);
    v98 = *v100;
    (*v100)(v41, v42);
    v48 = sub_2528BECC0();
    v49 = *v104;
    (*v104)(v43, v44);
    if (v48)
    {
      v14 = v0[17];
      v13 = v0[18];
      v15 = v0[13];
      v16 = v0[5];
      v17 = v46;
      v18 = v0[2];
      v19 = swift_task_alloc();
      *(v19 + 16) = v14;
      v97 = sub_25285403C(sub_25284AC6C, v19, v17);

      v20 = sub_2528C0C40();
      (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
      (*(v101 + 16))(v13, v14, v15);
      v21 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v102(v22 + v21, v13, v15);
      *(v22 + ((v93 + v21) & 0xFFFFFFFFFFFFFFF8)) = v97;
      sub_2528456B8(v16, &unk_2528D4318, v22);
      sub_2527213D8(v16, &qword_27F4FCDA0, &unk_2528C6AC0);
      v23 = *(v101 + 8);
    }

    else
    {
      v103 = v49;

      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v50 = v0[16];
      v51 = v0[17];
      v52 = v0[13];
      v53 = v0[8];
      v54 = v0[6];
      v55 = v0[4];
      v56 = sub_2528C08B0();
      __swift_project_value_buffer(v56, qword_27F5025C8);
      (*v105)(v50, v51, v52);
      (*v94)(v53, v55, v54);
      v57 = sub_2528C0890();
      v58 = sub_2528C0CF0();
      v59 = os_log_type_enabled(v57, v58);
      v60 = v0[16];
      v61 = v0[13];
      if (v59)
      {
        v62 = v0[12];
        v63 = v0[10];
        v89 = v0[8];
        v90 = v0[6];
        v64 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v108[0] = v92;
        *v64 = 136446466;
        v91 = v58;
        sub_2528BFAB0();
        sub_25284C230(&qword_27F4FF990, MEMORY[0x277D15980]);
        v65 = sub_2528C1040();
        log = v57;
        v67 = v66;
        v98(v62, v63);
        v23 = *v99;
        (*v99)(v60, v61);
        v68 = sub_2527389AC(v65, v67, v108);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2082;
        sub_25284C230(&qword_27F4FD070, MEMORY[0x277CC95F0]);
        v69 = sub_2528C1040();
        v71 = v70;
        v103(v89, v90);
        v72 = sub_2527389AC(v69, v71, v108);

        *(v64 + 14) = v72;
        _os_log_impl(&dword_252711000, log, v91, "Got request to set attributes for endpoint %{public}s outside of home %{public}s. Ignoring...", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v92, -1, -1);
        MEMORY[0x2530A8D80](v64, -1, -1);
      }

      else
      {
        v73 = v0[8];
        v74 = v0[6];

        v103(v73, v74);
        v23 = *v99;
        (*v99)(v60, v61);
      }
    }

    v8 = v106;
    result = (v23)(v0[17], v0[13]);
    v4 = v96;
  }

  if (v87 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = v87;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v24 >= v87)
    {
      v75 = v0[19];
      v32 = v0;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
      (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
      v106 = 0;
      v12 = v26;
      goto LABEL_17;
    }

    v8 = *(v4 + 8 * v24);
    ++v12;
    if (v8)
    {
      v12 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252845104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v5 = sub_2528BF290();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(MEMORY[0x277D15C08] + 4);
  v9 = swift_task_alloc();
  v4[10] = v9;
  *v9 = v4;
  v9[1] = sub_2528451F8;

  return MEMORY[0x28216F800]();
}

uint64_t sub_2528451F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[10];
  v7 = *v2;
  v4[11] = a1;

  return MEMORY[0x2822009F8](sub_252845300, 0, 0);
}

uint64_t sub_252845300()
{
  if (v0[11])
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[7];
    v4 = v0[4];
    v0[12] = sub_25284B534(v0[6], v0[5]);
    ObjectType = swift_getObjectType();
    sub_2528BFAB0();
    v6 = sub_2528BF250();
    (*(v2 + 8))(v1, v3);
    v7 = *(MEMORY[0x277D159B0] + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_252845460;
    v9 = v0[6];

    return MEMORY[0x28216EF60](v9, v6, ObjectType, v4);
  }

  else
  {
    v10 = v0[9];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_252845460(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_252845644;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_252845588;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252845588()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[5];
  sub_25284BB28(v1);
  sub_25284BEF4(v1);

  swift_unknownObjectRelease();
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252845644()
{
  v2 = v0[11];
  v1 = v0[12];

  swift_unknownObjectRelease();
  v3 = v0[14];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2528456B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2528458A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BFB20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF978, &unk_2528D4280);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = a2;
  v71 = &v63 - v15;
  v72 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v65 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v67 = v5 + 16;
  v68 = v5;
  v77 = (v5 + 32);
  v69 = (v5 + 8);
  v66 = v22;
  v73 = a1;
  v64 = v4;
  v63 = v9;
  while (v21)
  {
    v23 = v9;
    v76 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_17:
    v29 = v68;
    v30 = v75;
    (*(v68 + 16))(v75, *(a1 + 48) + *(v68 + 72) * v24, v4);
    v31 = *(*(a1 + 56) + 8 * v24);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
    v33 = *(v32 + 48);
    v34 = v72;
    (*(v29 + 32))(v72, v30, v4);
    *(v34 + v33) = v31;
    (*(*(v32 - 8) + 56))(v34, 0, 1, v32);

    v9 = v23;
LABEL_18:
    v35 = v34;
    v36 = v71;
    sub_25274AA0C(v35, v71, &qword_27F4FF978, &unk_2528D4280);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
    v38 = 1;
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      return v38;
    }

    v39 = *(v37 + 48);
    (*v77)(v9, v36, v4);
    v40 = *(v36 + v39);
    v41 = v70;
    v42 = sub_252785DE8(v9);
    v44 = v43;
    (*v69)(v9, v4);
    if ((v44 & 1) == 0 || (v74 = v17, v45 = *(*(v41 + 56) + 8 * v42), v46 = *(v45 + 16), v46 != *(v40 + 16)))
    {
LABEL_34:

      return 0;
    }

    if (v46)
    {
      v47 = v45 == v40;
    }

    else
    {
      v47 = 1;
    }

    a1 = v73;
    if (!v47)
    {
      v48 = *(*(v41 + 56) + 8 * v42);

      v49 = 0;
      v50 = 0;
      while (v50 < *(v45 + 16))
      {
        result = *(v45 + v49 + 32);
        v51 = *(v45 + v49 + 40);
        v52 = *(v45 + v49 + 48);
        v53 = *(v45 + v49 + 56);
        v54 = *(v45 + v49 + 64);
        v83 = result;
        v84 = v51;
        v85 = v52;
        v86 = v53;
        v87 = v54;
        if (v50 >= *(v40 + 16))
        {
          goto LABEL_39;
        }

        v55 = v40;
        v56 = v40 + v49;
        v58 = *(v40 + v49 + 32);
        v57 = *(v40 + v49 + 40);
        v59 = *(v56 + 48);
        v60 = *(v56 + 56);
        v78 = v58;
        v79 = v57;
        v80 = v59;
        v81 = v60;
        v82 = *(v56 + 64);
        v61 = v82;
        sub_252760C18(result, v51, v52, v53, v54);
        sub_252760C18(v58, v57, v59, v60, v61);
        LOBYTE(v57) = sub_252895DC8(&v83, &v78);
        sub_25272C15C(v78, v79, v80, v81, v82);
        result = sub_25272C15C(v83, v84, v85, v86, v87);
        if ((v57 & 1) == 0)
        {

          goto LABEL_34;
        }

        ++v50;
        v49 += 40;
        v40 = v55;
        if (v46 == v50)
        {

          a1 = v73;
          v4 = v64;
          v9 = v63;
          goto LABEL_6;
        }
      }

      goto LABEL_38;
    }

LABEL_6:

    v22 = v66;
    v21 = v76;
    v17 = v74;
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
      v34 = v72;
      (*(*(v62 - 8) + 56))(v72, 1, 1, v62);
      v76 = 0;
      v17 = v26;
      goto LABEL_18;
    }

    v28 = *(v65 + 8 * v27);
    ++v17;
    if (v28)
    {
      v23 = v9;
      v76 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_252845E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_252785DE8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2527E1BE4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2528BFB20();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
    v22 = *(v15 - 8);
    sub_25274AA0C(v14 + *(v22 + 72) * v8, a2, &qword_27F4FD1F8, &unk_2528CDFF0);
    sub_2528464F8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25284602C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2528C0E10() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_2528C1130();
      AttributeKind.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2528461D8(int64_t a1, uint64_t a2)
{
  v43 = sub_2528BF9D0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2528C0E10();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25284C230(&qword_27F4FD230, MEMORY[0x277D15AC0]);
      v26 = sub_2528C0900();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_2528464F8(int64_t a1, uint64_t a2)
{
  v4 = sub_2528BFB20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2528C0E10();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_25284C230(&qword_27F4FD1E8, MEMORY[0x277D15C30]);
      v24 = sub_2528C0900();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_252846848(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2528C0E10() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_2528C1120();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_2528C0260() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t *sub_2528469F4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_252847244(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_252846A90(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_2528BFB20();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {
    sub_2528BEA50();
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4A0, &unk_2528D4340);
  result = sub_2528C0F20();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_25284C230(&qword_27F4FD1E8, MEMORY[0x277D15C30]);
    v44 = v24;

    result = sub_2528C0900();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252846E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_252846E3C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_252846F30;

  return v6(v2 + 16);
}

uint64_t sub_252846F30()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_252847064(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v3 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - v4;
  v19 = sub_25278D540(MEMORY[0x277D84F90]);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(a1 + 48);
    v16 = sub_2528BFB20();
    (*(*(v16 - 8) + 16))(v5, v15 + *(*(v16 - 8) + 72) * v14, v16);
    *&v5[*(v18 + 48)] = *(*(a1 + 56) + 8 * v14);

    sub_252843A3C(&v19, v5);
    result = sub_2527213D8(v5, &qword_27F4FD6A0, &qword_2528D4290);
    if (v1)
    {
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v19;
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252847244(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a2;
  v61 = a4;
  v48 = a1;
  v60 = sub_2528BF290();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v8 = *(*(v58 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v46 - v11;
  v12 = sub_2528BFB20();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v62 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v50 = (v23 + 63) >> 6;
  v51 = v21;
  v66 = v15;
  v53 = v17;
  v54 = (v5 + 8);
  v55 = v15 + 1;
  v56 = v15 + 2;
  while (2)
  {
    v49 = v18;
    while (1)
    {
      if (!v25)
      {
        v29 = v19;
        v28 = v63;
        while (1)
        {
          v19 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v19 >= v50)
          {
            return sub_252846A90(v48, v47, v49, v62);
          }

          v30 = v51[v19];
          ++v29;
          if (v30)
          {
            v26 = result;
            v65 = (v30 - 1) & v30;
            v27 = __clz(__rbit64(v30)) | (v19 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v26 = result;
      v65 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v19 << 6);
      v28 = v63;
LABEL_12:
      v31 = v62;
      v32 = v66[2];
      v32(v17, v62[6] + v66[9] * v27, v26);
      v33 = v31[7];
      v52 = v27;
      v34 = *(v33 + 8 * v27);
      v32(v28, v17, v26);
      v36 = v57;
      v35 = v58;
      *(v28 + *(v58 + 48)) = v34;
      sub_25272006C(v28, v36, &qword_27F4FD6A0, &qword_2528D4290);
      v37 = *(v36 + *(v35 + 48));
      v64 = v34;
      swift_bridgeObjectRetain_n();

      v38 = v28;
      v39 = v59;
      sub_2528BFAB0();
      v40 = v66[1];
      v40(v36, v26);
      v41 = sub_2528BF0E0();
      (*v54)(v39, v60);
      if (!*(v61 + 16))
      {
        break;
      }

      sub_252791C7C(v41);
      v43 = v42;
      sub_2527213D8(v38, &qword_27F4FD6A0, &qword_2528D4290);

      v17 = v53;
      v40(v53, v26);
      result = v26;
      v25 = v65;
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_2527213D8(v38, &qword_27F4FD6A0, &qword_2528D4290);

    v17 = v53;
    v40(v53, v26);
    result = v26;
    v25 = v65;
LABEL_16:
    v44 = v49;
    *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v45 = __OFADD__(v44, 1);
    v18 = v44 + 1;
    if (!v45)
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_252846A90(v48, v47, v49, v62);
}

uint64_t sub_2528476AC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {
    sub_2528BEA50();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2528469F4(v13, v7, a1, a2);
      MEMORY[0x2530A8D80](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_252847244((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_25284786C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v17 = sub_25278D648(MEMORY[0x277D84F90]);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8)) | (v11 << 6);
    v13 = *(a1 + 48);
    v14 = sub_2528BFB20();
    (*(*(v14 - 8) + 16))(v5, v13 + *(*(v14 - 8) + 72) * v12, v14);
    *&v5[*(v2 + 48)] = *(*(a1 + 56) + 8 * v12);

    sub_252844068(&v17, v5);
    v8 &= v8 - 1;
    sub_2527213D8(v5, &qword_27F4FD6A0, &qword_2528D4290);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v17;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_2527213D8(v5, &qword_27F4FD6A0, &qword_2528D4290);

  __break(1u);
  return result;
}

uint64_t sub_252847A64(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_2528BECF0();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252847B28, 0, 0);
}

uint64_t sub_252847B28()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = [v3 uniqueIdentifier];
  sub_2528BECD0();

  v6 = sub_25284786C(v4);
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF998, &qword_2528D42A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9A0, &qword_2528D42A8);
  v9 = swift_task_alloc();
  v0[10] = v9;
  v9[2] = v4;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v3;
  v9[6] = v2;
  v10 = *(MEMORY[0x277D858E8] + 4);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_252847C9C;

  return MEMORY[0x282200600](v0 + 2, v7, v8, 0, 0, &unk_2528D42B8, v9, v7);
}

uint64_t sub_252847C9C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_252847DD0, 0, 0);
}

uint64_t sub_252847DD0()
{
  v1 = v0[2];
  if (!v1)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v11 = sub_2528C08B0();
    __swift_project_value_buffer(v11, qword_27F5025C8);
    v5 = sub_2528C0890();
    v12 = sub_2528C0D10();
    if (os_log_type_enabled(v5, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_252711000, v5, v12, "Successfully executed the commands and the expected values were reached", v13, 2u);
      MEMORY[0x2530A8D80](v13, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = v1;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = sub_2528C08B0();
  __swift_project_value_buffer(v3, qword_27F5025C8);
  v4 = v1;
  v5 = sub_2528C0890();
  v6 = sub_2528C0CF0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_252711000, v5, v6, "Received error %@ when executing commands", v7, 0xCu);
    sub_2527213D8(v8, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  (*(v0[7] + 8))(v0[8], v0[6]);

  v14 = v0[1];

  return v14(v1);
}

uint64_t sub_252848058(unint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v308 = a3;
  v320 = a2;
  v312 = sub_2528BF0F0();
  v314 = *(v312 - 1);
  v4 = *(v314 + 64);
  v5 = MEMORY[0x28223BE20](v312);
  v306 = &v288 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v300 = (&v288 - v7);
  v328 = sub_2528BFE50();
  v305 = *(v328 - 1);
  v8 = *(v305 + 8);
  v9 = MEMORY[0x28223BE20](v328);
  v324 = (&v288 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v288 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v301 = (&v288 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = &v288 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v304 = (&v288 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v310 = &v288 - v23;
  *&v327 = sub_2528BF290();
  v325 = *(v327 - 8);
  v24 = *(v325 + 64);
  v25 = MEMORY[0x28223BE20](v327);
  v323 = &v288 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v302 = &v288 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v307 = &v288 - v30;
  MEMORY[0x28223BE20](v29);
  v316 = &v288 - v31;
  v32 = sub_2528BFB20();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v326 = (&v288 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v311 = &v288 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v288 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v303 = &v288 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v288 - v45;
  MEMORY[0x28223BE20](v44);
  v317 = &v288 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF978, &unk_2528D4280);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v313 = &v288 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v315 = &v288 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  *&v299 = &v288 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v309 = &v288 - v57;
  MEMORY[0x28223BE20](v56);
  v322 = &v288 - v58;
  v59 = sub_2528BFEB0();
  v291 = *(v59 - 8);
  v60 = *(v291 + 64);
  v61 = MEMORY[0x28223BE20](v59);
  v318 = &v288 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v64 = &v288 - v63;
  v65 = sub_25278D540(MEMORY[0x277D84F90]);
  if (!isUniquelyReferenced_nonNull_native)
  {
    return v65;
  }

  *&v329 = v46;
  v321 = v33;
  v66 = &v341;
  v344 = isUniquelyReferenced_nonNull_native;
  v67 = isUniquelyReferenced_nonNull_native;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  v68 = swift_dynamicCast();
  v319 = v32;
  if (!v68)
  {

    v344 = isUniquelyReferenced_nonNull_native;
    v176 = isUniquelyReferenced_nonNull_native;
    v76 = v328;
    if (swift_dynamicCast())
    {
      v177 = v305;
      v178 = v324;
      (*(v305 + 4))(v324, v12, v76);
      v179 = v301;
      sub_25272006C(v308, v301, &qword_27F4FCDB8, &unk_2528C5CC0);
      v180 = sub_2528C00D0();
      v181 = *(v180 - 8);
      if ((*(v181 + 48))(v179, 1, v180) == 1)
      {
        (*(v177 + 1))(v178, v76);
        sub_2527213D8(v179, &qword_27F4FCDB8, &unk_2528C5CC0);
        v182 = v304;
        (*(v321 + 56))(v304, 1, 1, v319);
      }

      else
      {
        v249 = v300;
        sub_2528BFE30();
        v250 = v307;
        sub_2528BF0C0();
        v251 = *(v314 + 8);
        v314 += 8;
        v322 = v251;
        (v251)(v249, v312);
        v182 = v304;
        sub_2528C0090();
        (*(v325 + 8))(v250, v327);
        (*(v181 + 8))(v179, v180);
        v66 = v321;
        v84 = v319;
        if ((*(v321 + 48))(v182, 1, v319) != 1)
        {
          v252 = v311;
          v253 = (*(v66 + 32))(v311, v182, v84);
          MEMORY[0x28223BE20](v253);
          *(&v288 - 2) = v252;
          v32 = v299;
          sub_2527A68F0(sub_25284A82C, (&v288 - 4), v320, v299);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
          if ((*(*(v83 - 8) + 48))(v32, 1, v83) == 1)
          {
            sub_2527213D8(v32, &qword_27F4FF978, &unk_2528D4280);
            v254 = MEMORY[0x277D84F90];
LABEL_123:
            v255 = *(v254 + 2);
            v316 = v254;
            if (v255)
            {
              v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
              v318 = sub_25284C230(&qword_27F4FF980, MEMORY[0x277D163B0]);
              v317 = v305 + 16;
              v256 = v254 + 64;
              while (1)
              {
                v326 = v255;
                v325 = v65;
                v259 = *(v256 - 4);
                v260 = *(v256 - 3);
                v261 = *(v256 - 2);
                v262 = *(v256 - 1);
                v323 = v256;
                v263 = *v256;
                v336 = v259;
                v337 = v260;
                v338 = v261;
                v339 = v262;
                v340 = v263;
                v264 = swift_allocError();
                (*v317)(v265, v324, v76);
                sub_252760C18(v259, v260, v261, v262, v263);
                sub_252726504(&v336, v264, &v341);

                LOWORD(v264) = v343;
                v329 = v341;
                v327 = v342;
                v266 = v306;
                sub_2528BFE30();
                v32 = sub_2528BF0E0();
                (v322)(v266, v312);
                *&v341 = v259;
                *(&v341 + 1) = v260;
                *&v342 = v261;
                *(&v342 + 1) = v262;
                LOBYTE(v343) = v263;
                sub_252870158(v332);
                sub_25272C15C(v259, v260, v261, v262, v263);
                v333 = v329;
                v334 = v327;
                v335 = v264;
                v267 = sub_2528C0F20();
                sub_2528BEA50();
                v268 = v332[0];
                isUniquelyReferenced_nonNull_native = *(&v333 + 1);
                v269 = v333;
                v270 = v334;
                v271 = v335;
                v65 = HIBYTE(v335);
                sub_25277B0C4(v333, *(&v333 + 1), v334, *(&v334 + 1), v335, SHIBYTE(v335));
                v272 = sub_252785BA8(v268);
                if (v273)
                {
                  goto LABEL_148;
                }

                v267[(v272 >> 6) + 8] |= 1 << v272;
                *(v267[6] + v272) = v268;
                v274 = v267[7] + 40 * v272;
                *v274 = v269;
                *(v274 + 8) = isUniquelyReferenced_nonNull_native;
                *(v274 + 16) = v270;
                *(v274 + 32) = v271;
                *(v274 + 33) = v65;
                v275 = v267[2];
                v154 = __OFADD__(v275, 1);
                v276 = v275 + 1;
                if (v154)
                {
                  goto LABEL_149;
                }

                v267[2] = v276;

                sub_2527213D8(v332, &qword_27F4FF988, &qword_2528D4298);
                v277 = v325;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v341 = v277;
                v278 = sub_252791C7C(v32);
                v280 = *(v277 + 16);
                v281 = (v279 & 1) == 0;
                v154 = __OFADD__(v280, v281);
                v282 = v280 + v281;
                if (v154)
                {
                  goto LABEL_150;
                }

                v283 = v279;
                if (*(v277 + 24) < v282)
                {
                  break;
                }

                v66 = v321;
                v76 = v328;
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_134;
                }

                isUniquelyReferenced_nonNull_native = v278;
                sub_2527E0D98();
                v278 = isUniquelyReferenced_nonNull_native;
                v65 = v341;
                if (v283)
                {
LABEL_125:
                  v257 = *(v65 + 56);
                  v258 = *(v257 + 8 * v278);
                  *(v257 + 8 * v278) = v267;

                  goto LABEL_126;
                }

LABEL_135:
                *(v65 + 8 * (v278 >> 6) + 64) |= 1 << v278;
                *(*(v65 + 48) + 8 * v278) = v32;
                *(*(v65 + 56) + 8 * v278) = v267;
                v285 = *(v65 + 16);
                v154 = __OFADD__(v285, 1);
                v286 = v285 + 1;
                if (v154)
                {
                  goto LABEL_153;
                }

                *(v65 + 16) = v286;
LABEL_126:
                v256 = v323 + 40;
                v255 = (v326 - 1);
                if (v326 == 1)
                {
                  goto LABEL_139;
                }
              }

              sub_2527DD750(v282, isUniquelyReferenced_nonNull_native);
              v278 = sub_252791C7C(v32);
              v66 = v321;
              v76 = v328;
              if ((v283 & 1) != (v284 & 1))
              {
                goto LABEL_155;
              }

LABEL_134:
              v65 = v341;
              if (v283)
              {
                goto LABEL_125;
              }

              goto LABEL_135;
            }

LABEL_139:

            (*(v305 + 1))(v324, v76);
            (*(v66 + 8))(v311, v319);
            goto LABEL_140;
          }

LABEL_122:
          v254 = *(v32 + *(v83 + 48));
          (*(v66 + 8))(v32, v84);
          goto LABEL_123;
        }

        (*(v305 + 1))(v178, v76);
      }

      sub_2527213D8(v182, &qword_27F4FCEF0, &unk_2528C6AB0);
LABEL_140:

      return v65;
    }

    if (qword_27F4FBB40 == -1)
    {
      goto LABEL_67;
    }

    goto LABEL_154;
  }

  v305 = v41;
  v306 = v18;
  v69 = *(v291 + 32);
  v289 = v59;
  v69(v318, v64, v59);
  v70 = *(v320 + 64);
  v315 = (v320 + 64);
  v71 = 1 << *(v320 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & v70;
  v314 = (v71 + 63) >> 6;
  v323 = (v321 + 16);
  v326 = (v321 + 32);
  v324 = (v325 + 8);
  v301 = (v321 + 48);
  v300 = (v321 + 56);
  v313 = (v321 + 8);

  v304 = 0;
  v74 = 0;
  *&v75 = 136315138;
  v299 = v75;
  v76 = v309;
  while (2)
  {
    v77 = v315;
    v78 = v314;
    v325 = v65;
    if (!v73)
    {
LABEL_10:
      if (v78 <= v74 + 1)
      {
        v82 = v74 + 1;
      }

      else
      {
        v82 = v78;
      }

      v83 = v82 - 1;
      v84 = v322;
      while (1)
      {
        v81 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v81 >= v78)
        {
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
          (*(*(v107 - 8) + 56))(v76, 1, 1, v107);
          v73 = 0;
          v74 = v83;
          goto LABEL_19;
        }

        v73 = *&v77[8 * v81];
        ++v74;
        if (v73)
        {
          v79 = v76;
          v80 = v32;
          v74 = v81;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    while (1)
    {
      while (1)
      {
        v79 = v76;
        v80 = v32;
        v81 = v74;
LABEL_18:
        v85 = __clz(__rbit64(v73));
        v73 &= v73 - 1;
        v86 = v85 | (v81 << 6);
        v87 = v320;
        v88 = v321;
        v89 = v317;
        (*(v321 + 16))(v317, *(v320 + 48) + *(v321 + 72) * v86, v80);
        v90 = *(*(v87 + 56) + 8 * v86);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
        v92 = *(v91 + 48);
        v93 = *(v88 + 32);
        v32 = v80;
        v76 = v79;
        v93(v79, v89, v32);
        *&v79[v92] = v90;
        (*(*(v91 - 8) + 56))(v79, 0, 1, v91);

        v84 = v322;
        v65 = v325;
LABEL_19:
        sub_25274AA0C(v76, v84, &qword_27F4FF978, &unk_2528D4280);
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
        if ((*(*(v94 - 8) + 48))(v84, 1, v94) == 1)
        {
          (*(v291 + 8))(v318, v289);

          v183 = &v331;
          goto LABEL_65;
        }

        v66 = v76;
        v328 = *(v84 + *(v94 + 48));
        isUniquelyReferenced_nonNull_native = *v326;
        v95 = v32;
        (*v326)(v329, v84, v32);
        v96 = sub_2528BFEA0();
        v97 = v316;
        sub_2528BFAB0();
        v98 = sub_2528BF0E0();
        v99 = *v324;
        (*v324)(v97, v327);
        if (*(v96 + 16))
        {
          v100 = sub_252791C7C(v98);
          if (v101)
          {
            break;
          }
        }

        v32 = v95;
        (*v313)(v329, v95);
        v77 = v315;
        v78 = v314;
        v76 = v66;
        if (!v73)
        {
          goto LABEL_10;
        }
      }

      v311 = v99;
      v312 = *(*(v96 + 56) + 8 * v100);
      v102 = v312;

      v103 = v306;
      sub_25272006C(v308, v306, &qword_27F4FCDB8, &unk_2528C5CC0);
      v104 = sub_2528C00D0();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1, v104) != 1)
      {
        break;
      }

      sub_2527213D8(v103, &qword_27F4FCDB8, &unk_2528C5CC0);
      v106 = v310;
      v32 = v319;
      (*v300)(v310, 1, 1, v319);
LABEL_27:
      sub_2527213D8(v106, &qword_27F4FCEF0, &unk_2528C6AB0);
      v109 = v329;
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v110 = sub_2528C08B0();
      __swift_project_value_buffer(v110, qword_27F5025C8);
      v111 = v305;
      (*v323)(v305, v109, v32);
      v112 = sub_2528C0890();
      v113 = sub_2528C0CF0();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v328 = swift_slowAlloc();
        *&v341 = v328;
        *v114 = v299;
        v115 = v307;
        sub_2528BFAB0();
        sub_25284C230(&qword_27F4FF990, MEMORY[0x277D15980]);
        v116 = v327;
        v117 = sub_2528C1040();
        v66 = v118;
        (v311)(v115, v116);
        v119 = *v313;
        (*v313)(v111, v319);
        v120 = sub_2527389AC(v117, v66, &v341);

        *(v114 + 4) = v120;
        _os_log_impl(&dword_252711000, v112, v113, "Exiting allErrorOutcomes(forError: attributes: refreshedSnapshot:) early due to missing endpoint for %s", v114, 0xCu);
        v121 = v328;
        __swift_destroy_boxed_opaque_existential_0Tm(v328);
        MEMORY[0x2530A8D80](v121, -1, -1);
        MEMORY[0x2530A8D80](v114, -1, -1);

        v119(v329, v319);
        v32 = v319;
      }

      else
      {

        v122 = *v313;
        (*v313)(v111, v32);
        v122(v109, v32);
      }

      v65 = v325;
      v76 = v309;
      v77 = v315;
      v78 = v314;
      if (!v73)
      {
        goto LABEL_10;
      }
    }

    v66 = v307;
    sub_2528BFAB0();
    v108 = v310;
    sub_2528C0090();
    (v311)(v66, v327);
    (*(v105 + 8))(v103, v104);
    v32 = v319;
    if ((*v301)(v108, 1, v319) == 1)
    {

      v106 = v310;
      goto LABEL_27;
    }

    (isUniquelyReferenced_nonNull_native)(v303, v310, v32);
    v123 = v328;
    v290 = v328[2];
    if (!v290)
    {
      v76 = v309;
LABEL_60:

      v175 = *v313;
      (*v313)(v303, v32);
      v175(v329, v32);
      continue;
    }

    break;
  }

  v124 = 0;
  v125 = v328 + 8;
  while (2)
  {
    if (v124 >= v123[2])
    {
      goto LABEL_145;
    }

    v293 = v124;
    v137 = *(v125 - 2);
    v136 = *(v125 - 1);
    v138 = *(v125 - 4);
    v139 = *(v125 - 3);
    v325 = v65;
    v292 = v125;
    v65 = *v125;
    v336 = v138;
    v337 = v139;
    v338 = v137;
    v339 = v136;
    v340 = v65;
    sub_252760C18(v138, v139, v137, v136, v65);
    sub_252726504(&v336, v312, &v341);
    v294 = v341;
    v295 = v342;
    v296 = v343;
    v297 = HIBYTE(v343);
    v140 = v302;
    sub_2528BFAB0();
    v298 = sub_2528BF0E0();
    (v311)(v140, v327);
    *&v341 = v138;
    *(&v341 + 1) = v139;
    *&v342 = v137;
    *(&v342 + 1) = v136;
    LOBYTE(v343) = v65;
    sub_252870158(&v330);
    v141 = v138;
    v142 = v298;
    v143 = v325;
    sub_25272C15C(v141, v139, v137, v136, v65);
    sub_25284A81C(v304);
    v32 = v330;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v336 = v143;
    isUniquelyReferenced_nonNull_native = sub_252791C7C(v142);
    v146 = v143[2];
    v147 = (v145 & 1) == 0;
    v148 = v146 + v147;
    if (__OFADD__(v146, v147))
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      swift_once();
LABEL_67:
      v184 = sub_2528C08B0();
      __swift_project_value_buffer(v184, qword_27F5025C8);
      v185 = isUniquelyReferenced_nonNull_native;
      v186 = sub_2528C0890();
      v84 = sub_2528C0CF0();

      v187 = os_log_type_enabled(v186, v84);
      v188 = v313;
      v66 = v315;
      if (v187)
      {
        v189 = v315;
        v190 = swift_slowAlloc();
        v191 = v188;
        v192 = swift_slowAlloc();
        *v190 = 138412290;
        v193 = isUniquelyReferenced_nonNull_native;
        v194 = _swift_stdlib_bridgeErrorToNSError();
        *(v190 + 4) = v194;
        *v192 = v194;
        _os_log_impl(&dword_252711000, v186, v84, "Unexpected error thrown during attribute apply execution: %@", v190, 0xCu);
        sub_2527213D8(v192, &qword_27F4FC230, &qword_2528C3928);
        v195 = v192;
        v188 = v191;
        MEMORY[0x2530A8D80](v195, -1, -1);
        v196 = v190;
        v66 = v189;
        MEMORY[0x2530A8D80](v196, -1, -1);
      }

      v197 = *(v320 + 64);
      v312 = (v320 + 64);
      v198 = 1 << *(v320 + 32);
      v199 = -1;
      if (v198 < 64)
      {
        v199 = ~(-1 << v198);
      }

      v318 = (v199 & v197);
      v309 = ((v198 + 63) >> 6);
      v310 = (v321 + 16);
      v314 = v321 + 32;
      v322 = (v325 + 8);
      v311 = (v321 + 8);

      *&v329 = 0;
      for (i = 0; ; i = v316)
      {
        v201 = v318;
        if (v318)
        {
          v202 = v188;
          v316 = i;
          v203 = i;
LABEL_83:
          v318 = ((v201 - 1) & v201);
          v206 = __clz(__rbit64(v201)) | (v203 << 6);
          v207 = v320;
          v208 = v321;
          v209 = v317;
          (*(v321 + 16))(v317, *(v320 + 48) + *(v321 + 72) * v206, v32);
          v210 = *(*(v207 + 56) + 8 * v206);
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
          isUniquelyReferenced_nonNull_native = *(v84 + 48);
          v211 = v209;
          v188 = v202;
          (*(v208 + 32))(v202, v211, v32);
          *(v202 + isUniquelyReferenced_nonNull_native) = v210;
          (*(*(v84 - 8) + 56))(v202, 0, 1, v84);

          v66 = v315;
        }

        else
        {
          if (v309 <= (i + 1))
          {
            v204 = i + 1;
          }

          else
          {
            v204 = v309;
          }

          v205 = v204 - 1;
          while (1)
          {
            v203 = (i + 1);
            if (__OFADD__(i, 1))
            {
              goto LABEL_144;
            }

            if (v203 >= v309)
            {
              break;
            }

            v201 = v312[v203];
            ++i;
            if (v201)
            {
              v202 = v188;
              v316 = v203;
              goto LABEL_83;
            }
          }

          v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
          (*(*(v248 - 8) + 56))(v188, 1, 1, v248);
          v318 = 0;
          v316 = v205;
        }

        sub_25274AA0C(v188, v66, &qword_27F4FF978, &unk_2528D4280);
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
        if ((*(*(v212 - 8) + 48))(v66, 1, v212) == 1)
        {

          v183 = &v345;
LABEL_65:
          sub_25284A81C(*(v183 - 32));
          return v65;
        }

        v83 = *(v66 + *(v212 + 48));
        (*v314)(v326, v66, v32);
        v325 = *(v83 + 16);
        if (v325)
        {
          break;
        }

LABEL_72:

        v32 = v319;
        (*v311)(v326, v319);
        v188 = v313;
        v66 = v315;
      }

      v32 = 0;
      v76 = (v83 + 64);
      v324 = v83;
      while (1)
      {
        if (v32 >= *(v83 + 16))
        {
          goto LABEL_119;
        }

        v328 = v32;
        v221 = *(v76 - 2);
        v83 = *(v76 - 1);
        v222 = v65;
        v65 = *(v76 - 4);
        v223 = *(v76 - 3);
        isUniquelyReferenced_nonNull_native = *v76;
        sub_252760C18(v65, v223, v221, v83, *v76);
        v32 = v323;
        sub_2528BFAB0();
        v224 = sub_2528BF0E0();
        (*v322)(v32, v327);
        *&v341 = v65;
        *(&v341 + 1) = v223;
        *&v342 = v221;
        *(&v342 + 1) = v83;
        LOBYTE(v343) = isUniquelyReferenced_nonNull_native;
        sub_252870158(&v344);
        v84 = v222;
        sub_25272C15C(v65, v223, v221, v83, isUniquelyReferenced_nonNull_native);
        sub_25284A81C(v329);
        v225 = v344;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v336 = v222;
        v227 = sub_252791C7C(v224);
        v228 = *(v84 + 16);
        v229 = (v226 & 1) == 0;
        v230 = v228 + v229;
        if (__OFADD__(v228, v229))
        {
          goto LABEL_120;
        }

        v83 = v226;
        if (*(v84 + 24) >= v230)
        {
          if (v66)
          {
            v65 = v336;
            if (v226)
            {
              goto LABEL_99;
            }
          }

          else
          {
            sub_2527E0D98();
            v65 = v336;
            if (v83)
            {
              goto LABEL_99;
            }
          }
        }

        else
        {
          sub_2527DD750(v230, v66);
          v231 = sub_252791C7C(v224);
          if ((v83 & 1) != (v232 & 1))
          {
            goto LABEL_155;
          }

          v227 = v231;
          v65 = v336;
          if (v83)
          {
            goto LABEL_99;
          }
        }

        v233 = sub_25278D824(MEMORY[0x277D84F90]);
        *(v65 + 8 * (v227 >> 6) + 64) |= 1 << v227;
        *(*(v65 + 48) + 8 * v227) = v224;
        *(*(v65 + 56) + 8 * v227) = v233;
        v234 = *(v65 + 16);
        v154 = __OFADD__(v234, 1);
        v235 = v234 + 1;
        if (v154)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        *(v65 + 16) = v235;
LABEL_99:
        isUniquelyReferenced_nonNull_native = *(v65 + 56);
        v236 = *(isUniquelyReferenced_nonNull_native + 8 * v227);
        v237 = swift_isUniquelyReferenced_nonNull_native();
        v336 = *(isUniquelyReferenced_nonNull_native + 8 * v227);
        v84 = v336;
        *(isUniquelyReferenced_nonNull_native + 8 * v227) = 0x8000000000000000;
        v238 = sub_252785BA8(v225);
        v240 = *(v84 + 16);
        v241 = (v239 & 1) == 0;
        v154 = __OFADD__(v240, v241);
        v242 = v240 + v241;
        if (v154)
        {
          goto LABEL_121;
        }

        v243 = v239;
        if (*(v84 + 24) < v242)
        {
          sub_2527DD9C0(v242, v237);
          v238 = sub_252785BA8(v225);
          if ((v243 & 1) != (v244 & 1))
          {
            goto LABEL_156;
          }

LABEL_104:
          v84 = v336;
          if (v243)
          {
            goto LABEL_87;
          }

          goto LABEL_105;
        }

        if (v237)
        {
          goto LABEL_104;
        }

        v66 = v238;
        sub_2527E0EF4();
        v238 = v66;
        v84 = v336;
        if (v243)
        {
LABEL_87:
          v213 = *(v84 + 56) + 40 * v238;
          v214 = *v213;
          v215 = *(v213 + 8);
          v216 = *(v213 + 16);
          v217 = *(v213 + 24);
          *v213 = 2;
          *(v213 + 8) = 0;
          *(v213 + 16) = 0;
          *(v213 + 24) = 0;
          v218 = *(v213 + 32);
          *(v213 + 32) = 0;
          v219 = *(v213 + 33);
          *(v213 + 33) = 1;
          sub_25276925C(v214, v215, v216, v217, v218, v219);
          goto LABEL_88;
        }

LABEL_105:
        *(v84 + 8 * (v238 >> 6) + 64) |= 1 << v238;
        *(*(v84 + 48) + v238) = v225;
        v245 = *(v84 + 56) + 40 * v238;
        *v245 = 2;
        *(v245 + 8) = 0;
        *(v245 + 16) = 0;
        *(v245 + 24) = 0;
        *(v245 + 32) = 256;
        v246 = *(v84 + 16);
        v154 = __OFADD__(v246, 1);
        v247 = v246 + 1;
        if (v154)
        {
          goto LABEL_143;
        }

        *(v84 + 16) = v247;
LABEL_88:
        v32 = v328 + 1;
        v220 = *(isUniquelyReferenced_nonNull_native + 8 * v227);
        *(isUniquelyReferenced_nonNull_native + 8 * v227) = v84;

        v76 += 40;
        *&v329 = sub_25284C2E0;
        v83 = v324;
        if (v325 == v32)
        {
          goto LABEL_72;
        }
      }
    }

    v149 = v145;
    if (v143[3] >= v148)
    {
      v76 = v309;
      if (v144)
      {
        v65 = v336;
        if (v145)
        {
LABEL_48:
          v66 = *(v65 + 56);
          v156 = *(v66 + 8 * isUniquelyReferenced_nonNull_native);
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v336 = *(v66 + 8 * isUniquelyReferenced_nonNull_native);
          v158 = v336;
          *(v66 + 8 * isUniquelyReferenced_nonNull_native) = 0x8000000000000000;
          v159 = sub_252785BA8(v32);
          v161 = v158[2];
          v162 = (v160 & 1) == 0;
          v154 = __OFADD__(v161, v162);
          v163 = v161 + v162;
          if (v154)
          {
            goto LABEL_147;
          }

          v164 = v160;
          if (v158[3] >= v163)
          {
            if ((v157 & 1) == 0)
            {
              v172 = v32;
              v173 = v65;
              v174 = v159;
              sub_2527E0EF4();
              v159 = v174;
              v65 = v173;
              v32 = v172;
            }
          }

          else
          {
            sub_2527DD9C0(v163, v157);
            v159 = sub_252785BA8(v32);
            if ((v164 & 1) != (v165 & 1))
            {
              goto LABEL_156;
            }
          }

          v166 = v336;
          if (v164)
          {
            v126 = v336[7] + 40 * v159;
            v127 = *v126;
            v128 = *(v126 + 8);
            v129 = *(v126 + 16);
            v130 = *(v126 + 24);
            v131 = *(&v294 + 1);
            *v126 = v294;
            *(v126 + 8) = v131;
            v132 = *(&v295 + 1);
            *(v126 + 16) = v295;
            *(v126 + 24) = v132;
            v133 = *(v126 + 32);
            *(v126 + 32) = v296;
            v134 = *(v126 + 33);
            *(v126 + 33) = v297;
            sub_25276925C(v127, v128, v129, v130, v133, v134);
          }

          else
          {
            v336[(v159 >> 6) + 8] |= 1 << v159;
            *(v166[6] + v159) = v32;
            v167 = v166[7] + 40 * v159;
            v168 = *(&v294 + 1);
            *v167 = v294;
            *(v167 + 8) = v168;
            v169 = *(&v295 + 1);
            *(v167 + 16) = v295;
            *(v167 + 24) = v169;
            *(v167 + 32) = v296;
            *(v167 + 33) = v297;
            v170 = v166[2];
            v154 = __OFADD__(v170, 1);
            v171 = v170 + 1;
            if (v154)
            {
              goto LABEL_152;
            }

            v166[2] = v171;
          }

          v124 = v293 + 1;
          v135 = *(v66 + 8 * isUniquelyReferenced_nonNull_native);
          *(v66 + 8 * isUniquelyReferenced_nonNull_native) = v166;

          v125 = v292 + 5;
          v304 = sub_25284C2E0;
          v32 = v319;
          isUniquelyReferenced_nonNull_native = &qword_2528D4290;
          v123 = v328;
          if (v290 == v124)
          {
            goto LABEL_60;
          }

          continue;
        }
      }

      else
      {
        sub_2527E0D98();
        v65 = v336;
        if (v149)
        {
          goto LABEL_48;
        }
      }

LABEL_46:
      v152 = sub_25278D824(MEMORY[0x277D84F90]);
      *(v65 + 8 * (isUniquelyReferenced_nonNull_native >> 6) + 64) |= 1 << isUniquelyReferenced_nonNull_native;
      *(*(v65 + 48) + 8 * isUniquelyReferenced_nonNull_native) = v142;
      *(*(v65 + 56) + 8 * isUniquelyReferenced_nonNull_native) = v152;
      v153 = *(v65 + 16);
      v154 = __OFADD__(v153, 1);
      v155 = v153 + 1;
      if (v154)
      {
        goto LABEL_151;
      }

      *(v65 + 16) = v155;
      goto LABEL_48;
    }

    break;
  }

  sub_2527DD750(v148, v144);
  v150 = sub_252791C7C(v142);
  v76 = v309;
  if ((v149 & 1) == (v151 & 1))
  {
    isUniquelyReferenced_nonNull_native = v150;
    v65 = v336;
    if (v149)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

LABEL_155:
  sub_2528C10A0();
  __break(1u);
LABEL_156:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25284A5C4(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v42 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  sub_2528BEA50();
  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v41[0] = *(*(a1 + 48) + v16);
    v41[1] = v17;

    a2(v40, v41);

    v19 = v40[0];
    v18 = v40[1];
    v20 = *v42;
    v22 = sub_252791C7C(v40[0]);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_2527E0D98();
      }
    }

    else
    {
      v27 = v42;
      sub_2527DD750(v25, v39 & 1);
      v28 = *v27;
      v29 = sub_252791C7C(v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v42;
    if (v26)
    {
      v12 = v31[7];
      v13 = *(v12 + 8 * v22);
      *(v12 + 8 * v22) = v18;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      *(v31[6] + 8 * v22) = v19;
      *(v31[7] + 8 * v22) = v18;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_25271A648();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25284A81C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25284A84C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2527228B0;

  return sub_2528427A0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25284A924(uint64_t a1)
{
  v4 = *(sub_2528BECF0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2527228B0;

  return sub_252843168(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25284AA1C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25271F3AC;

  return sub_252843638(a1, v8, v4, v5, v6, v7);
}

void sub_25284AAEC(int a1, id a2)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_25284AB00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return sub_252846E3C(a1, v5);
}

uint64_t sub_25284ABB8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25271F3AC;

  return sub_252844618(a1, a2, v7, v6);
}

void *sub_25284AC6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;
  result = sub_25284ADD0(v8, v4);
  *a2 = result;
  return result;
}

uint64_t sub_25284ACBC()
{
  v2 = *(sub_2528BFB20() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2527228B0;

  return sub_252845104(v4, v5, v0 + v3, v6);
}

void *sub_25284ADD0(char **a1, unint64_t a2)
{
  v4 = sub_2528BF290();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2528BFB20();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v85);
  v84 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  LODWORD(v16) = *(a1 + 32);
  v83 = *a1;
  v87 = v83;
  v88 = v13;
  v89 = v15;
  v90 = v14;
  v91 = v16;
  v17 = a2;
  v18 = sub_252727CD8(&v87);
  if (qword_27F4FBB40 != -1)
  {
LABEL_20:
    swift_once();
  }

  v19 = sub_2528C08B0();
  v20 = __swift_project_value_buffer(v19, qword_27F5025C8);
  v80 = v12;
  v81 = v7;
  v21 = *(v7 + 16);
  v22 = v12;
  v23 = v85;
  v21(v22, v17, v85);
  v21(v84, v17, v23);
  v24 = v83;
  sub_252760C18(v83, v13, v15, v14, v16);

  v74 = v20;
  v25 = sub_2528C0890();
  v26 = sub_2528C0D10();
  sub_25272C15C(v24, v13, v15, v14, v16);

  v82 = v25;
  v27 = os_log_type_enabled(v25, v26);
  v7 = v13;
  v75 = v14;
  v79 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v72 = v26;
    v29 = v28;
    v73 = swift_slowAlloc();
    v86 = v73;
    *v29 = 136446978;
    v30 = v76;
    v31 = v80;
    sub_2528BFAB0();
    sub_25284C230(&qword_27F4FF990, MEMORY[0x277D15980]);
    v32 = v78;
    v33 = sub_2528C1040();
    v70 = v7;
    v71 = v15;
    v35 = v34;
    (*(v77 + 8))(v30, v32);
    v36 = *(v81 + 8);
    v37 = v85;
    v36(v31, v85);
    v38 = sub_2527389AC(v33, v35, &v86);

    *(v29 + 4) = v38;
    *(v29 + 12) = 2080;
    v7 = v84;
    v39 = sub_2528BFAE0();
    v41 = v40;
    v36(v7, v37);
    v42 = sub_2527389AC(v39, v41, &v86);

    *(v29 + 14) = v42;
    *(v29 + 22) = 2082;
    v12 = v83;
    v15 = v70;
    v87 = v83;
    v88 = v70;
    v89 = v71;
    v90 = v14;
    v91 = v79;
    v43 = v71;
    sub_252760C18(v83, v70, v71, v14, v79);
    v44 = sub_252873604();
    v46 = v45;
    sub_25272C15C(v87, v88, v89, v90, v91);
    v47 = sub_2527389AC(v44, v46, &v86);

    *(v29 + 24) = v47;
    *(v29 + 32) = 2082;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC740, &qword_2528D4330);
    v49 = MEMORY[0x2530A81A0](v18, v48);
    v51 = sub_2527389AC(v49, v50, &v86);

    *(v29 + 34) = v51;
    v52 = v82;
    _os_log_impl(&dword_252711000, v82, v72, "%{public}s-%s: For performing attribute %{public}s, planning to invoke commands: %{public}s", v29, 0x2Au);
    v53 = v73;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v53, -1, -1);
    MEMORY[0x2530A8D80](v29, -1, -1);

    v13 = v43;
  }

  else
  {

    v54 = *(v81 + 8);
    v55 = v85;
    v54(v84, v85);
    v54(v80, v55);
    v12 = v24;
    v13 = v15;
    v15 = v7;
  }

  v17 = 0;
  v14 = v18[2];
  v16 = MEMORY[0x277D84F90];
  while (v14 != v17)
  {
    if (v17 >= v18[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    v56 = v18[v17++ + 4];
    if (*(v56 + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_252737A38(0, v16[2] + 1, 1, v16);
      }

      v7 = v16[2];
      v57 = v16[3];
      if (v7 >= v57 >> 1)
      {
        v16 = sub_252737A38((v57 > 1), v7 + 1, 1, v16);
      }

      v16[2] = v7 + 1;
      v16[v7 + 4] = v56;
    }
  }

  if (!v16[2])
  {

    v58 = v75;
    v59 = v79;
    sub_252760C18(v12, v15, v13, v75, v79);
    v60 = sub_2528C0890();
    v61 = sub_2528C0CF0();
    sub_25272C15C(v12, v15, v13, v58, v59);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v86 = v63;
      v87 = v12;
      *v62 = 136446210;
      v88 = v15;
      v89 = v13;
      v90 = v58;
      v91 = v59;
      sub_252760C18(v12, v15, v13, v58, v59);
      v64 = sub_252873604();
      v66 = v65;
      sub_25272C15C(v87, v88, v89, v90, v91);
      v67 = sub_2527389AC(v64, v66, &v86);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_252711000, v60, v61, "Produced 0 commands for attribute %{public}s, skipping", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x2530A8D80](v63, -1, -1);
      MEMORY[0x2530A8D80](v62, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v16;
}

uint64_t sub_25284B534(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C07F0();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v8;
  v9 = sub_2528BF290();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528BFB20();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v21 = sub_2528C08B0();
  __swift_project_value_buffer(v21, qword_27F5025C8);
  v22 = v14[2];
  v22(v20, a2, v13);
  v22(v18, a2, v13);

  v23 = sub_2528C0890();
  v24 = sub_2528C0D10();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v56 = a1;
    v57 = v24;
    v26 = v25;
    v58 = swift_slowAlloc();
    v65 = v58;
    *v26 = 136446722;
    sub_2528BFAB0();
    sub_25284C230(&qword_27F4FF990, MEMORY[0x277D15980]);
    v27 = v60;
    v28 = sub_2528C1040();
    v30 = v29;
    (*(v59 + 8))(v12, v27);
    v31 = v14[1];
    v31(v20, v13);
    v32 = sub_2527389AC(v28, v30, &v65);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v33 = sub_2528BFAE0();
    v35 = v34;
    v31(v18, v13);
    v36 = sub_2527389AC(v33, v35, &v65);

    *(v26 + 14) = v36;
    *(v26 + 22) = 2082;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC740, &qword_2528D4330);
    v38 = MEMORY[0x2530A81A0](v56, v37);
    v40 = sub_2527389AC(v38, v39, &v65);

    *(v26 + 24) = v40;
    _os_log_impl(&dword_252711000, v23, v57, "%{public}s-%s: Invoking commands %{public}s", v26, 0x20u);
    v41 = v58;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v41, -1, -1);
    MEMORY[0x2530A8D80](v26, -1, -1);
  }

  else
  {

    v42 = v14[1];
    v42(v18, v13);
    v42(v20, v13);
  }

  v43 = v62;
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v44 = sub_2528C0820();
  __swift_project_value_buffer(v44, qword_27F5025E0);
  sub_2528C07E0();
  v45 = sub_2528C0810();
  v46 = sub_2528C0D40();
  if (sub_2528C0D90())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v45, v46, v48, "MTRDeviceCommandGroupInvocation", "", v47, 2u);
    MEMORY[0x2530A8D80](v47, -1, -1);
  }

  v50 = v63;
  v49 = v64;
  (*(v63 + 16))(v61, v43, v64);
  v51 = sub_2528C0860();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_2528C0850();
  (*(v50 + 8))(v43, v49);
  return v54;
}

void sub_25284BB28(uint64_t a1)
{
  v27 = a1;
  v1 = sub_2528C0830();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528C07F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v11 = sub_2528C0820();
  __swift_project_value_buffer(v11, qword_27F5025E0);
  v12 = sub_2528C0810();
  sub_2528C0840();
  v13 = sub_2528C0D30();
  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v2 + 88))(v5, v1) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v5, v1);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v12, v13, v16, "MTRDeviceCommandGroupInvocation", v14, v15, 2u);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v17 = sub_2528C08B0();
  __swift_project_value_buffer(v17, qword_27F5025C8);
  v18 = v27;

  v19 = sub_2528C0890();
  v20 = sub_2528C0D10();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9B8, &qword_2528D4328);
    v24 = MEMORY[0x2530A81A0](v18, v23);
    v26 = sub_2527389AC(v24, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_252711000, v19, v20, "Finished performing commands on device with results: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x2530A8D80](v22, -1, -1);
    MEMORY[0x2530A8D80](v21, -1, -1);
  }
}

void sub_25284BEF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *MEMORY[0x277CD50C8];
    v3 = (a1 + 32);
    v4 = v1 - 1;
    v5 = 0x27F4FB000uLL;
    while (1)
    {
      v15 = *v3;
      v16 = sub_2528C09F0();
      v18 = v17;
      if (!*(v15 + 16))
      {
        break;
      }

      v19 = v16;

      v20 = sub_252785B30(v19, v18);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_25272BF98(*(v15 + 56) + 32 * v20, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
      sub_25284C1E4();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v23 = v30;
      sub_25272A4F8(v15, v30);

      if (v27 || !v4)
      {
        return;
      }

LABEL_16:
      --v4;
      ++v3;
    }

LABEL_12:
    if (*(v5 + 2880) != -1)
    {
      swift_once();
    }

    v24 = sub_2528C08B0();
    __swift_project_value_buffer(v24, qword_27F5025C8);

    v25 = sub_2528C0890();
    v26 = sub_2528C0CF0();

    if (os_log_type_enabled(v25, v26))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
      v8 = sub_2528C08E0();
      v28 = v4;
      v9 = v3;
      v10 = v2;
      v12 = v11;

      v13 = sub_2527389AC(v8, v12, v29);
      v2 = v10;
      v3 = v9;
      v4 = v28;

      *(v6 + 4) = v13;
      _os_log_impl(&dword_252711000, v25, v26, "Received badly formed result from invoking commands (ignoring): %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      v14 = v7;
      v5 = 0x27F4FB000;
      MEMORY[0x2530A8D80](v14, -1, -1);
      MEMORY[0x2530A8D80](v6, -1, -1);

      if (!v28)
      {
        return;
      }
    }

    else
    {

      if (!v4)
      {
        return;
      }
    }

    goto LABEL_16;
  }
}

unint64_t sub_25284C1E4()
{
  result = qword_27F4FF9B0;
  if (!qword_27F4FF9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4FF9B0);
  }

  return result;
}

uint64_t sub_25284C230(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25284C28C()
{
  result = qword_27F4FF9C8;
  if (!qword_27F4FF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF9C8);
  }

  return result;
}

uint64_t sub_25284C2E4(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9E8, &unk_2528D5520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - v6;
  v8 = sub_2528BF1D0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528BF130();
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v65 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  v74 = v19;
  v69 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    if (a1 && (v35 = *(a1 + 16)) != 0)
    {
      v75 = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v35, 0);
      v36 = v75;
      v37 = (a1 + 32);
      v38 = *(v75 + 16);
      do
      {
        v40 = *v37++;
        v39 = v40;
        v75 = v36;
        v41 = *(v36 + 24);
        if (v38 >= v41 >> 1)
        {
          sub_25282EEDC((v41 > 1), v38 + 1, 1);
          v36 = v75;
        }

        *(v36 + 16) = v38 + 1;
        *(v36 + 4 * v38++ + 32) = v39;
        --v35;
      }

      while (v35);
    }

    else
    {
      sub_2528BF150();
      if ((v9[6])(v7, 1, v8) == 1)
      {
        sub_2527213D8(v7, &qword_27F4FF9E8, &unk_2528D5520);
        return 0;
      }

      else
      {
        v9[4](v12, v7, v8);
        v51 = sub_2528BF140();
        MEMORY[0x28223BE20](v51);
        *(&v65 - 2) = v12;
        v53 = sub_25284D044(sub_2528511E0, (&v65 - 4), v52);
        v54 = *(v53 + 16);
        if (v54)
        {
          v69 = v12;
          v70 = v9;
          v71 = v8;
          v75 = MEMORY[0x277D84F90];
          sub_25282EEDC(0, v54, 0);
          v36 = v75;
          v55 = v72 + 16;
          v72 = *(v72 + 16);
          v56 = *(v55 + 64);
          v68 = v53;
          v57 = v53 + ((v56 + 32) & ~v56);
          v58 = *(v55 + 56);
          v59 = (v55 - 8);
          do
          {
            v61 = v73;
            v60 = v74;
            (v72)(v73, v57, v74);
            v62 = sub_2528BF110();
            (*v59)(v61, v60);
            v75 = v36;
            v64 = *(v36 + 16);
            v63 = *(v36 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_25282EEDC((v63 > 1), v64 + 1, 1);
              v36 = v75;
            }

            *(v36 + 16) = v64 + 1;
            *(v36 + 4 * v64 + 32) = v62;
            v57 += v58;
            --v54;
          }

          while (v54);

          v9 = v70;
          v8 = v71;
          v12 = v69;
        }

        else
        {

          v36 = MEMORY[0x277D84F90];
        }

        (v9[1])(v12, v8);
      }
    }

    return v36;
  }

  result = sub_2528BF140();
  v23 = result;
  v24 = *(result + 16);
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
LABEL_21:

    v42 = *(v25 + 16);
    if (v42)
    {
      v75 = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v42, 0);
      v36 = v75;
      v43 = v72 + 16;
      v44 = *(v72 + 16);
      v45 = v25 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v71 = *(v72 + 72);
      v72 = v44;
      v46 = (v43 - 8);
      do
      {
        v47 = v73;
        (v72)(v73, v45, v13);
        v48 = sub_2528BF110();
        (*v46)(v47, v13);
        v75 = v36;
        v50 = *(v36 + 16);
        v49 = *(v36 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_25282EEDC((v49 > 1), v50 + 1, 1);
          v36 = v75;
        }

        *(v36 + 16) = v50 + 1;
        *(v36 + 4 * v50 + 32) = v48;
        v45 += v71;
        --v42;
        v13 = v74;
      }

      while (v42);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v36;
  }

  v26 = 0;
  v70 = (v72 + 32);
  v66 = (v72 + 8);
  v67 = v72 + 16;
  v68 = v24;
  while (v26 < *(v23 + 16))
  {
    v27 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v28 = *(v72 + 72);
    (*(v72 + 16))(v21, v23 + v27 + v28 * v26, v13);
    v29 = sub_2528BF120();
    if ((v29 & 0x100000000) != 0 || v29 != v69)
    {
      result = (*v66)(v21, v13);
    }

    else
    {
      v30 = *v70;
      (*v70)(v71, v21, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25282EEFC(0, *(v25 + 16) + 1, 1);
        v25 = v75;
      }

      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_25282EEFC(v32 > 1, v33 + 1, 1);
        v25 = v75;
      }

      *(v25 + 16) = v33 + 1;
      v34 = v25 + v27 + v33 * v28;
      v13 = v74;
      result = (v30)(v34, v71, v74);
      v24 = v68;
    }

    if (v24 == ++v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25284C9B4()
{
  v68 = sub_2528BFCF0();
  v1 = *(v68 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v68);
  v65 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v42 - v5;
  v6 = sub_2528BFF00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9F0, &qword_2528D4478);
  v11 = *(*(v59 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v59);
  v58 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = *v0;
  v57 = v0[1];
  v56 = v14;
  v55 = *(v0 + 32);
  v16 = (&v42 - v15);
  v17 = sub_2528C0070();
  v74 = MEMORY[0x277D84FA0];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v61 = (v19 + 63) >> 6;
  v53 = v7 + 16;
  v52 = v7 + 32;
  v45 = *MEMORY[0x277D15EE0];
  v44 = (v1 + 104);
  v64 = v1 + 16;
  v43 = v1;
  v66 = (v1 + 8);
  v51 = (v7 + 8);
  v60 = v17;

  v23 = 0;
  v54 = v18;
  v49 = v6;
  v48 = v7;
  v47 = v10;
  v46 = v16;
  for (i = v61; v21; i = v61)
  {
LABEL_9:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v59;
    v29 = *(*(v60 + 48) + 8 * v27);
    (*(v7 + 16))(v16 + *(v59 + 48), *(v60 + 56) + *(v7 + 72) * v27, v6);
    *v16 = v29;
    v30 = v58;
    sub_25272006C(v16, v58, &qword_27F4FF9F0, &qword_2528D4478);
    v50 = *v30;
    (*(v7 + 32))(v10, v30 + *(v28 + 48), v6);
    v72 = v57;
    v71 = v56;
    v73 = v55;
    sub_252870158(&v70);
    if (v70 == 45)
    {
      v31 = sub_2528BFE90();
      (*v44)(v67, v45, v68);
      if (*(v31 + 16))
      {
        v32 = *(v31 + 40);
        sub_252851264(&qword_27F4FC638, MEMORY[0x277D15F48]);
        v33 = sub_2528C0900();
        v34 = -1 << *(v31 + 32);
        v35 = v33 & ~v34;
        v63 = v31 + 56;
        if ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v62 = ~v34;
          v36 = *(v43 + 72);
          v37 = *(v43 + 16);
          while (1)
          {
            v38 = v65;
            v39 = v68;
            v37(v65, *(v31 + 48) + v36 * v35, v68);
            sub_252851264(&qword_27F4FC640, MEMORY[0x277D15F48]);
            v40 = sub_2528C0930();
            v41 = *v66;
            (*v66)(v38, v39);
            if (v40)
            {
              break;
            }

            v35 = (v35 + 1) & v62;
            if (((*(v63 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v41(v67, v68);
          sub_252739514(&v69, v50);
          v10 = v47;
          v6 = v49;
          (*v51)(v47, v49);
          v16 = v46;
          result = sub_2527213D8(v46, &qword_27F4FF9F0, &qword_2528D4478);
          v7 = v48;
          goto LABEL_17;
        }
      }

LABEL_15:

      (*v66)(v67, v68);
      v6 = v49;
      v7 = v48;
      v10 = v47;
      v16 = v46;
    }

    (*v51)(v10, v6);
    result = sub_2527213D8(v16, &qword_27F4FF9F0, &qword_2528D4478);
LABEL_17:
    v18 = v54;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= i)
    {

      return v74;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25284D044(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_2528BF130();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25282EEFC(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_25282EEFC(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

void *sub_25284D314(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v151 = &v135[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F8, &unk_2528D5510);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = &v135[-v8];
  v156 = sub_2528C04E0();
  v159 = *(v156 - 8);
  v9 = *(v159 + 64);
  MEMORY[0x28223BE20](v156);
  v157 = &v135[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2528BF290();
  v154 = *(v11 - 8);
  v12 = *(v154 + 64);
  MEMORY[0x28223BE20](v11);
  v153 = &v135[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2528BFB20();
  v163 = *(v14 - 8);
  v15 = v163[8];
  v16 = MEMORY[0x28223BE20](v14);
  v150 = &v135[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v152 = &v135[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v135[-v22];
  v24 = sub_2528C03F0();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v162 = &v135[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v161 = &v135[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v135[-v32];
  v34 = sub_2528C04F0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  result = 0;
  v165 = *(v1 + 32);
  if ((v165 & 0xFE) != 0x62)
  {
    return result;
  }

  v148 = v25;
  v146 = v24;
  v164 = &v135[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = *v1;
  v147 = *(v1 + 8);
  v40 = a1;
  v41 = *(v1 + 16);
  v149 = *(v1 + 24);
  v42 = v40;
  sub_2528BFA40();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_2527213D8(v33, &qword_27F4FC208, &qword_2528C6B40);
    return 0;
  }

  v139 = v11;
  v145 = v35;
  (*(v35 + 32))(v164, v33, v34);
  v143 = v42;
  v142 = v14;
  v144 = v39;
  v141 = v41;
  if (v41)
  {
    v43 = *(v41 + 16);
    v44 = MEMORY[0x277D84F90];
    if (v43)
    {
      v140 = v34;
      v166 = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v43, 0);
      v44 = v166;
      v45 = (v41 + 32);
      *&v46 = 134217984;
      v160 = v46;
      v39 = v23;
      v47 = v149;
      do
      {
        v49 = *v45++;
        v48 = v49;
        if (v49 < 0x100000000)
        {
          if (v48 < 0)
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v54 = sub_2528C08B0();
            __swift_project_value_buffer(v54, qword_27F5025C8);
            v55 = sub_2528C0890();
            v56 = sub_2528C0D00();
            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              *v57 = v160;
              *(v57 + 4) = v48;
              _os_log_impl(&dword_252711000, v55, v56, "Tried to convert a Int lower than 0 to UInt32: %ld", v57, 0xCu);
              MEMORY[0x2530A8D80](v57, -1, -1);
            }

            LODWORD(v48) = 0;
          }
        }

        else
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v50 = sub_2528C08B0();
          __swift_project_value_buffer(v50, qword_27F5025C8);
          v51 = sub_2528C0890();
          v52 = sub_2528C0D00();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = v160;
            *(v53 + 4) = v48;
            _os_log_impl(&dword_252711000, v51, v52, "Tried to convert a Int larger than max to UInt32: %ld", v53, 0xCu);
            MEMORY[0x2530A8D80](v53, -1, -1);
          }

          LODWORD(v48) = -1;
        }

        v166 = v44;
        v59 = *(v44 + 16);
        v58 = *(v44 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_25282EEDC((v58 > 1), v59 + 1, 1);
          v44 = v166;
        }

        *(v44 + 16) = v59 + 1;
        *(v44 + 4 * v59 + 32) = v48;
        --v43;
      }

      while (v43);
      v23 = v39;
      v34 = v140;
      LOBYTE(v39) = v144;
      if ((v165 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_26:
      v60 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v44 = 0;
  }

  v47 = v149;
  if (v165)
  {
    goto LABEL_26;
  }

LABEL_23:
  v60 = Int.uint32.getter(v47);
LABEL_27:
  v61 = v148;
  LOBYTE(v166) = v39;
  if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v62 == 0xE700000000000000)
  {
  }

  else
  {
    v63 = sub_2528C1060();

    if ((v63 & 1) == 0)
    {
      (*(v145 + 8))(v164, v34);
      goto LABEL_38;
    }
  }

  *&v160 = v60;
  v64 = v161;
  v65 = v164;
  sub_2528C0410();
  v66 = v162;
  v67 = v146;
  (v61[13])(v162, *MEMORY[0x277D16878], v146);
  v68 = sub_2528C03E0();
  v69 = v61[1];
  v69(v66, v67);
  v69(v64, v67);
  if ((v68 & 1) == 0)
  {
    (*(v145 + 8))(v65, v34);
LABEL_38:

    return 0;
  }

  v70 = v144;
  v140 = v34;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v71 = sub_2528C08B0();
  v72 = __swift_project_value_buffer(v71, qword_27F5025C8);
  v73 = v163 + 2;
  v74 = v163[2];
  v75 = v143;
  v76 = v142;
  v74(v23, v143, v142);
  v77 = v158;
  v148 = v73;
  v146 = v74;
  v74(v158, v75, v76);
  v78 = v70;
  v79 = v147;
  v80 = v141;
  v81 = v149;
  LOBYTE(v76) = v165;
  sub_252760C18(v70, v147, v141, v149, v165);
  v162 = v72;
  v82 = sub_2528C0890();
  v83 = sub_2528C0D10();
  v84 = v78;
  v85 = v76;
  sub_25272C15C(v84, v79, v80, v81, v76);
  if (os_log_type_enabled(v82, v83))
  {
    v86 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v171 = v138;
    *v86 = 134349570;
    v137 = v82;
    v87 = v23;
    v88 = v153;
    v136 = v83;
    sub_2528BFAB0();
    v89 = sub_2528BF0E0();
    (*(v154 + 8))(v88, v139);
    v90 = v81;
    v91 = v163[1];
    v92 = v87;
    v93 = v142;
    v91(v92);
    *(v86 + 4) = v89;
    *(v86 + 12) = 2080;
    v94 = v158;
    v95 = sub_2528BFAE0();
    v97 = v96;
    v161 = v91;
    (v91)(v94, v93);
    v98 = v143;
    v99 = sub_2527389AC(v95, v97, &v171);

    *(v86 + 14) = v99;
    *(v86 + 22) = 2082;
    v166 = v144;
    v167 = v147;
    v168 = v141;
    v169 = v90;
    v170 = v85;
    sub_252760C18(v144, v147, v141, v90, v85);
    v100 = sub_252873604();
    v102 = v101;
    sub_25272C15C(v166, v167, v168, v169, v170);
    v103 = sub_2527389AC(v100, v102, &v171);

    *(v86 + 24) = v103;
    v104 = v137;
    _os_log_impl(&dword_252711000, v137, v136, "overrideAttributesWriting: Requested to start rvc %{public}llu (%s) with attribute %{public}s but rvc is paused", v86, 0x20u);
    v105 = v138;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v105, -1, -1);
    MEMORY[0x2530A8D80](v86, -1, -1);

    v106 = v93;
  }

  else
  {
    v107 = v163[1];
    v106 = v142;
    (v107)(v23, v142);

    v161 = v107;
    (v107)(v77, v106);
    v98 = v143;
  }

  v108 = v155;
  sub_2528C02C0();
  v109 = v159;
  v110 = v156;
  if ((*(v159 + 48))(v108, 1, v156) == 1)
  {
    sub_2527213D8(v108, &qword_27F4FC1F8, &unk_2528D5510);

LABEL_49:
    (*(v145 + 8))(v164, v140);
    return 0;
  }

  (*(v109 + 32))(v157, v108, v110);
  v111 = v147;

  v113 = sub_252744320(v112);

  v114 = sub_25284EEDC(v113);

  v115 = v151;
  sub_2528C02A0();
  LOBYTE(v166) = v165 & 1;
  v116 = sub_25284F99C(v44, v160 | ((v165 & 1) << 32));
  sub_2527213D8(v115, &qword_27F4FC2A8, &qword_2528C3958);
  if ((v114 & 1) == 0)
  {
    sub_25284FFC0(v157, v111);
  }

  v117 = v152;
  if ((v116 & 1) == 0)
  {
    LOBYTE(v166) = v165 & 1;
    sub_25285055C(v44, v160 | ((v165 & 1) << 32));
  }

  (*(v159 + 8))(v157, v110);

  if ((v114 & v116 & 1) == 0)
  {
    goto LABEL_49;
  }

  v118 = v146;
  v146(v117, v98, v106);
  v119 = v150;
  v118(v150, v98, v106);
  v120 = sub_2528C0890();
  v121 = v106;
  v122 = sub_2528C0D10();
  if (os_log_type_enabled(v120, v122))
  {
    v123 = v119;
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v166 = v125;
    *v124 = 134349314;
    v126 = v153;
    sub_2528BFAB0();
    v127 = sub_2528BF0E0();
    (*(v154 + 8))(v126, v139);
    v128 = v117;
    v129 = v161;
    (v161)(v128, v121);
    *(v124 + 4) = v127;
    *(v124 + 12) = 2080;
    v130 = sub_2528BFAE0();
    v132 = v131;
    v129(v123, v121);
    v133 = sub_2527389AC(v130, v132, &v166);

    *(v124 + 14) = v133;
    _os_log_impl(&dword_252711000, v120, v122, "overrideAttributesWriting: Choosing to resume rvc %{public}llu (%s) because clean modes and service area match", v124, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v125);
    MEMORY[0x2530A8D80](v125, -1, -1);
    MEMORY[0x2530A8D80](v124, -1, -1);
  }

  else
  {
    v134 = v161;
    (v161)(v117, v121);

    v134(v119, v121);
  }

  (*(v145 + 8))(v164, v140);
  return &unk_2864957E0;
}

uint64_t sub_25284E318(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_2528C1130();

    sub_2528C0A40();
    v17 = sub_2528C1180();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2528C1060() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25284E4D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_2528C1120();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25284E624(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v24 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v25 = v8;
  v26 = result;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
    goto LABEL_13;
  }

LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v24 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
LABEL_13:
      v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
      v14 = *(a2 + 40);
      sub_2528C1130();
      RobotVacuumCleanerCleanMode.rawValue.getter();
      sub_2528C0A40();

      v15 = sub_2528C1180();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }

      v18 = ~v16;
      while (2)
      {
        v19 = 0xE600000000000000;
        v20 = 0x6D7575636176;
        switch(*(*(a2 + 48) + v17))
        {
          case 1:
            v19 = 0xE300000000000000;
            v20 = 7368557;
            break;
          case 2:
            v20 = 0x68546D7575636176;
            v19 = 0xED0000706F4D6E65;
            break;
          case 3:
            v20 = 0x61656C4370656564;
            v19 = 0xE90000000000006ELL;
            break;
          case 4:
            v19 = 0xE400000000000000;
            v20 = 1869903201;
            break;
          case 5:
            v19 = 0xE500000000000000;
            v20 = 0x7465697571;
            break;
          case 6:
            v19 = 0xE500000000000000;
            v20 = 0x6B63697571;
            break;
          case 7:
            v19 = 0xE800000000000000;
            v20 = 0x6573696F4E776F6CLL;
            break;
          case 8:
            v19 = 0xE900000000000079;
            v20 = 0x6772656E45776F6CLL;
            break;
          case 9:
            v19 = 0xE800000000000000;
            v20 = 0x6E6F697461636176;
            break;
          case 0xA:
            v19 = 0xE500000000000000;
            v20 = 0x746867696ELL;
            break;
          case 0xB:
            v19 = 0xE300000000000000;
            v20 = 7954788;
            break;
          case 0xC:
            v19 = 0xE300000000000000;
            v20 = 7235949;
            break;
          case 0xD:
            v19 = 0xE300000000000000;
            v20 = 7889261;
            break;
          default:
            break;
        }

        v21 = 0xE600000000000000;
        v22 = 0x6D7575636176;
        switch(v13)
        {
          case 1:
            v21 = 0xE300000000000000;
            if (v20 == 7368557)
            {
              goto LABEL_54;
            }

            goto LABEL_55;
          case 2:
            v21 = 0xED0000706F4D6E65;
            if (v20 != 0x68546D7575636176)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 3:
            v21 = 0xE90000000000006ELL;
            if (v20 != 0x61656C4370656564)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 4:
            v21 = 0xE400000000000000;
            if (v20 != 1869903201)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 5:
            v21 = 0xE500000000000000;
            if (v20 != 0x7465697571)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 6:
            v21 = 0xE500000000000000;
            if (v20 != 0x6B63697571)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 7:
            v21 = 0xE800000000000000;
            if (v20 != 0x6573696F4E776F6CLL)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 8:
            v21 = 0xE900000000000079;
            if (v20 != 0x6772656E45776F6CLL)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 9:
            v21 = 0xE800000000000000;
            if (v20 != 0x6E6F697461636176)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 10:
            v21 = 0xE500000000000000;
            v22 = 0x746867696ELL;
            goto LABEL_53;
          case 11:
            v21 = 0xE300000000000000;
            if (v20 != 7954788)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 12:
            v21 = 0xE300000000000000;
            if (v20 != 7235949)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 13:
            v21 = 0xE300000000000000;
            if (v20 != 7889261)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          default:
LABEL_53:
            if (v20 != v22)
            {
              goto LABEL_55;
            }

LABEL_54:
            if (v19 != v21)
            {
LABEL_55:
              v23 = sub_2528C1060();

              if (v23)
              {
                goto LABEL_61;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_61:
            v8 = v25;
            v3 = v26;
            v7 = v27;
            if (!v27)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25284EB10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_2528C1130();
    sub_2528C0A40();

    v17 = sub_2528C1180();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v31 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 2)
      {
        break;
      }

      v23 = 0xE400000000000000;
      if (v21 == 3)
      {
        v22 = 1701670760;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

      else if (v21 == 4)
      {
        v22 = 1836019570;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v22 = 1701736314;
        if (v15 <= 2)
        {
          goto LABEL_24;
        }
      }

LABEL_38:
      v26 = 1836019570;
      if (v15 != 4)
      {
        v26 = 1701736314;
      }

      if (v15 == 3)
      {
        v27 = 1701670760;
      }

      else
      {
        v27 = v26;
      }

      v25 = 0xE400000000000000;
      if (v22 == v27)
      {
        goto LABEL_46;
      }

LABEL_47:
      v28 = sub_2528C1060();

      if (v28)
      {
        goto LABEL_55;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v19))
    {
      v22 = 0x614E656369766564;
      v23 = 0xEA0000000000656DLL;
      if (v15 <= 2)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

    if (v21 == 1)
    {
      v22 = 0x7954656369766564;
    }

    else
    {
      v22 = 0x70756F7267;
    }

    if (v21 == 1)
    {
      v23 = 0xEA00000000006570;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    if (v15 > 2)
    {
      goto LABEL_38;
    }

LABEL_24:
    if (v15)
    {
      if (v15 == 1)
      {
        v24 = 0x7954656369766564;
      }

      else
      {
        v24 = 0x70756F7267;
      }

      if (v15 == 1)
      {
        v25 = 0xEA00000000006570;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v22 == v24)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v25 = 0xEA0000000000656DLL;
    if (v22 != 0x614E656369766564)
    {
      goto LABEL_47;
    }

LABEL_46:
    if (v23 != v25)
    {
      goto LABEL_47;
    }

LABEL_55:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25284EEDC(uint64_t a1)
{
  v89 = a1;
  v88 = sub_2528C0540();
  v1 = *(v88 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v88);
  v84 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v60 - v5;
  v78 = sub_2528C0550();
  v6 = *(v78 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v78);
  v77 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v60 - v10;
  v11 = sub_2528C0570();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v99 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v60 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  v20 = sub_2528C04A0();
  v22 = v20 + 56;
  v21 = *(v20 + 56);
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  v96 = *MEMORY[0x277D16A60];
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v91 = *MEMORY[0x277D16AA8];
  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v76 = *MEMORY[0x277D16A98];
  v95 = v12 + 16;
  v92 = (v12 + 8);
  v93 = v12 + 88;
  v70 = *MEMORY[0x277D16A88];
  v75 = (v6 + 32);
  v74 = (v6 + 16);
  v73 = (v6 + 88);
  v68 = *MEMORY[0x277D16A78];
  v66 = *MEMORY[0x277D16A70];
  v72 = (v6 + 8);
  v82 = (v1 + 16);
  v83 = (v1 + 32);
  v81 = (v1 + 88);
  v80 = *MEMORY[0x277D16A28];
  v71 = *MEMORY[0x277D16A38];
  v69 = *MEMORY[0x277D16A40];
  v67 = *MEMORY[0x277D16A48];
  v65 = *MEMORY[0x277D16A58];
  v64 = *MEMORY[0x277D16A50];
  v63 = *MEMORY[0x277D16A20];
  v62 = *MEMORY[0x277D16A18];
  v61 = *MEMORY[0x277D16A30];
  v79 = (v1 + 8);
  v60 = *MEMORY[0x277D16A10];
  v97 = v12;
  v98 = v20;
  v86 = (v12 + 96);

  v27 = 0;
  v90 = MEMORY[0x277D84F90];
  v94 = v22;
LABEL_4:
  v28 = v27;
  if (!v25)
  {
    goto LABEL_6;
  }

  do
  {
    v27 = v28;
LABEL_9:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v97;
    v31 = *(v97 + 16);
    v31(v19, *(v98 + 48) + *(v97 + 72) * (v29 | (v27 << 6)), v11);
    v32 = v100;
    v33 = v19;
    v31(v100, v19, v11);
    v34 = v99;
    v31(v99, v32, v11);
    v35 = (*(v30 + 88))(v34, v11);
    if (v35 == v96)
    {
      v37 = v99;
      (*v86)(v99, v11);
      v38 = v87;
      v39 = v37;
      v40 = v88;
      (*v83)(v87, v39, v88);
      v41 = v84;
      (*v82)(v84, v38, v40);
      v42 = (*v81)(v41, v40);
      if (v42 == v80)
      {
        v43 = 4;
        v19 = v33;
      }

      else
      {
        v19 = v33;
        if (v42 == v71)
        {
          v43 = 6;
        }

        else if (v42 == v69)
        {
          v43 = 5;
        }

        else
        {
          if (v42 != v67)
          {
            if (v42 == v65)
            {
              (*v79)(v87, v88);
              v43 = 8;
            }

            else if (v42 == v64)
            {
              (*v79)(v87, v88);
              v43 = 9;
            }

            else if (v42 == v63)
            {
              (*v79)(v87, v88);
              v43 = 12;
            }

            else if (v42 == v62)
            {
              (*v79)(v87, v88);
              v43 = 13;
            }

            else if (v42 == v61)
            {
              (*v79)(v87, v88);
              v43 = 10;
            }

            else
            {
              if (v42 != v60)
              {
                goto LABEL_52;
              }

              (*v79)(v87, v88);
              v43 = 11;
            }

            goto LABEL_28;
          }

          v43 = 7;
        }
      }

      (*v79)(v87, v88);
LABEL_28:
      v49 = *v92;
      (*v92)(v100, v11);
      v49(v19, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_2527381A4(0, *(v90 + 2) + 1, 1, v90);
      }

      v22 = v94;
      v51 = *(v90 + 2);
      v50 = *(v90 + 3);
      if (v51 >= v50 >> 1)
      {
        v90 = sub_2527381A4((v50 > 1), v51 + 1, 1, v90);
      }

      v52 = v90;
      *(v90 + 2) = v51 + 1;
      v52[v51 + 32] = v43;
      goto LABEL_4;
    }

    if (v35 == v91)
    {
      v44 = v99;
      (*v86)(v99, v11);
      v45 = v85;
      v46 = v78;
      (*v75)(v85, v44, v78);
      v47 = v77;
      (*v74)(v77, v45, v46);
      v48 = (*v73)(v47, v46);
      v19 = v33;
      if (v48 == v76)
      {
        (*v72)(v45, v46);
        v43 = 3;
      }

      else if (v48 == v70)
      {
        (*v72)(v85, v46);
        v43 = 0;
      }

      else if (v48 == v68)
      {
        (*v72)(v85, v46);
        v43 = 1;
      }

      else
      {
        if (v48 != v66)
        {
LABEL_51:
          sub_2528C1050();
          __break(1u);
LABEL_52:
          result = sub_2528C1050();
          __break(1u);
          return result;
        }

        (*v72)(v85, v46);
        v43 = 2;
      }

      goto LABEL_28;
    }

    v36 = *v92;
    (*v92)(v100, v11);
    v19 = v33;
    v36(v33, v11);
    v36(v99, v11);
    v28 = v27;
    v22 = v94;
  }

  while (v25);
  while (1)
  {
LABEL_6:
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v27 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    ++v28;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  v53 = sub_252744320(v90);

  v54 = v89;
  sub_2528BEA50();
  v55 = sub_252850A88(&unk_286495790, v54);

  v56 = sub_252850A88(&unk_2864957B8, v53);
  v57 = sub_25284E624(v55, v56);

  if (v57)
  {
    v58 = *(sub_252830C1C(v54, v53) + 2);

    return v58 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25284F99C(uint64_t a1, unint64_t a2)
{
  v5 = sub_2528BF130();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v52 - v11;
  v13 = sub_2528BF1E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(v2, v12, &qword_27F4FC2A8, &qword_2528C3958);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2527213D8(v12, &qword_27F4FC2A8, &qword_2528C3958);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v18 = sub_2528C08B0();
    __swift_project_value_buffer(v18, qword_27F5025C8);
    v19 = sub_2528C0890();
    v20 = sub_2528C0D10();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252711000, v19, v20, "overrideAttributesWriting: doesn't support service area", v21, 2u);
      MEMORY[0x2530A8D80](v21, -1, -1);
    }

    v22 = HIDWORD(a2) & 1;

    if (a1)
    {
      LOBYTE(v22) = 0;
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v23 = HIDWORD(a2) & 1;
    v24 = sub_25284C2E4(a1, (a2 | (v23 << 32)));
    if (v24)
    {
      v25 = v24;
      v26 = sub_2528BF1A0();
      if (v26)
      {
        v27 = *(v26 + 16);
        if (v27)
        {
          v53 = v25;
          v54 = v14;
          v55 = v13;
          v56 = v17;
          v61[0] = MEMORY[0x277D84F90];
          v28 = v26;
          sub_25282EEDC(0, v27, 0);
          v29 = v61[0];
          v30 = v58 + 16;
          v31 = *(v58 + 16);
          v32 = *(v58 + 80);
          v52[1] = v28;
          v33 = v28 + ((v32 + 32) & ~v32);
          v57 = *(v58 + 72);
          v58 = v31;
          v34 = (v30 - 8);
          do
          {
            v35 = v59;
            (v58)(v8, v33, v59);
            v36 = sub_2528BF110();
            (*v34)(v8, v35);
            v61[0] = v29;
            v38 = *(v29 + 16);
            v37 = *(v29 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_25282EEDC((v37 > 1), v38 + 1, 1);
              v29 = v61[0];
            }

            *(v29 + 16) = v38 + 1;
            *(v29 + 4 * v38 + 32) = v36;
            v33 += v57;
            --v27;
          }

          while (v27);

          v14 = v54;
          v13 = v55;
          v17 = v56;
          v25 = v53;
        }

        else
        {

          v29 = MEMORY[0x277D84F90];
        }

        LOBYTE(v22) = sub_2528042E8(v25, v29);
      }

      else
      {
        LOBYTE(v22) = 0;
      }

      (*(v14 + 8))(v17, v13);
    }

    else
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v39 = sub_2528C08B0();
      __swift_project_value_buffer(v39, qword_27F5025C8);

      v40 = sub_2528C0890();
      v41 = sub_2528C0D10();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v56 = v17;
        v43 = v42;
        v44 = swift_slowAlloc();
        v60 = a1;
        v61[0] = v44;
        *v43 = 136446466;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9D0, &qword_2528D4460);
        v45 = sub_2528C0A20();
        v47 = sub_2527389AC(v45, v46, v61);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        LODWORD(v60) = a2;
        BYTE4(v60) = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9D8, &qword_2528D4468);
        v48 = sub_2528C0A20();
        v50 = sub_2527389AC(v48, v49, v61);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_252711000, v40, v41, "overrideAttributesWriting: requested { areaIDs: %{public}s, mapID: %{public}s } which mapped to nil areas to select. Allowing resuming the RVC", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v44, -1, -1);
        MEMORY[0x2530A8D80](v43, -1, -1);

        (*(v14 + 8))(v56, v13);
      }

      else
      {

        (*(v14 + 8))(v17, v13);
      }

      LOBYTE(v22) = 1;
    }
  }

  return v22 & 1;
}

void sub_25284FFC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v5 = sub_2528BF290();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2528C04E0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v55 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v47[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v47[-v15];
  v17 = sub_2528C04F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v22 = sub_2528C08B0();
  __swift_project_value_buffer(v22, qword_27F5025C8);
  (*(v18 + 16))(v21, v3, v17);
  v23 = v9[2];
  v23(v16, a1, v8);
  v23(v54, a1, v8);
  v23(v55, a1, v8);

  v24 = sub_2528C0890();
  v25 = sub_2528C0D10();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v56 = v49;
    *v26 = 134350082;
    v27 = v50;
    v48 = v25;
    sub_2528C02D0();
    v28 = sub_2528BF0E0();
    (*(v51 + 8))(v27, v52);
    (*(v18 + 8))(v21, v17);
    *(v26 + 4) = v28;
    *(v26 + 12) = 2050;
    v29 = sub_2528C04B0();
    v30 = v9[1];
    v30(v16, v8);
    *(v26 + 14) = v29;
    *(v26 + 22) = 2080;
    v31 = v54;
    v32 = sub_2528C04D0();
    v34 = v33;
    v30(v31, v8);
    v35 = sub_2527389AC(v32, v34, &v56);

    *(v26 + 24) = v35;
    *(v26 + 32) = 2082;
    v36 = v55;
    sub_2528C04A0();
    sub_2528C0570();
    sub_252851264(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
    v37 = sub_2528C0C80();
    v38 = v24;
    v40 = v39;

    v30(v36, v8);
    v41 = sub_2527389AC(v37, v40, &v56);

    *(v26 + 34) = v41;
    *(v26 + 42) = 2082;
    v42 = MEMORY[0x2530A81A0](v53, &type metadata for RobotVacuumCleanerCleanMode);
    v44 = sub_2527389AC(v42, v43, &v56);

    *(v26 + 44) = v44;
    _os_log_impl(&dword_252711000, v38, v48, "overrideAttributesWriting: Can't choose to resume rvc %{public}llu because current clean mode { id: %{public}lu, label: %s, primaryTags: %{public}s } doesn't match requested tags %{public}s", v26, 0x34u);
    v45 = v49;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v45, -1, -1);
    MEMORY[0x2530A8D80](v26, -1, -1);
  }

  else
  {
    v46 = v9[1];
    v46(v16, v8);
    (*(v18 + 8))(v21, v17);

    v46(v55, v8);
    v46(v54, v8);
  }
}

void sub_25285055C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v42 - v6;
  v7 = sub_2528BF290();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C04F0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v19 = sub_2528C08B0();
  __swift_project_value_buffer(v19, qword_27F5025C8);
  v20 = v12[2];
  v20(v18, v2, v11);
  v20(v16, v2, v11);

  v21 = sub_2528C0890();
  v22 = sub_2528C0D10();

  if (os_log_type_enabled(v21, v22))
  {
    v43 = v22;
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v23 = 134349826;
    sub_2528C02D0();
    v24 = sub_2528BF0E0();
    (*(v44 + 8))(v10, v45);
    v25 = v12[1];
    v25(v18, v11);
    *(v23 + 4) = v24;
    *(v23 + 12) = 2080;
    v48 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9D0, &qword_2528D4460);
    v26 = sub_2528C0A20();
    v28 = sub_2527389AC(v26, v27, &v49);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    LODWORD(v48) = v46;
    BYTE4(v48) = BYTE4(v46) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9D8, &qword_2528D4468);
    v29 = sub_2528C0A20();
    v31 = sub_2527389AC(v29, v30, &v49);

    *(v23 + 24) = v31;
    *(v23 + 32) = 2080;
    v32 = v47;
    sub_2528C02A0();
    v33 = sub_2528BF1E0();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_2527213D8(v32, &qword_27F4FC2A8, &qword_2528C3958);
      v35 = 0;
    }

    else
    {
      v35 = sub_2528BF160();
      (*(v34 + 8))(v32, v33);
    }

    v48 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9E0, &qword_2528D4470);
    v37 = sub_2528C0A20();
    v39 = v38;
    v25(v16, v11);
    v40 = sub_2527389AC(v37, v39, &v49);

    *(v23 + 34) = v40;
    _os_log_impl(&dword_252711000, v21, v43, "overrideAttributesWriting: Can't choose to resume rvc %{public}llu because requested areas { areaIDs:%s, mapID:%s } don't match current areas %s", v23, 0x2Au);
    v41 = v42;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v41, -1, -1);
    MEMORY[0x2530A8D80](v23, -1, -1);
  }

  else
  {
    v36 = v12[1];
    v36(v18, v11);

    v36(v16, v11);
  }
}

uint64_t sub_252850A88(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252850C28(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_252851230(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_252850C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v29 = *(a3 + 16);
  if (!v29)
  {
    v26 = 0;
    goto LABEL_46;
  }

  v26 = 0;
  v5 = 0;
  v6 = 0x6D7575636176;
  v32 = a4 + 56;
  v28 = a3 + 32;
  while (2)
  {
    v7 = *(v28 + v5++);
    v8 = *(v4 + 40);
    sub_2528C1130();
    sub_2528C0A40();

    v9 = sub_2528C1180();
    v10 = -1 << *(v4 + 32);
    v11 = v9 & ~v10;
    v12 = v11 >> 6;
    v13 = 1 << v11;
    if (((1 << v11) & *(v32 + 8 * (v11 >> 6))) == 0)
    {
      goto LABEL_5;
    }

    v30 = v5;
    v31 = ~v10;
    do
    {
      v14 = 0xE600000000000000;
      v15 = v6;
      switch(*(*(v4 + 48) + v11))
      {
        case 1:
          v14 = 0xE300000000000000;
          v15 = 7368557;
          break;
        case 2:
          v15 = 0x68546D7575636176;
          v14 = 0xED0000706F4D6E65;
          break;
        case 3:
          v15 = 0x61656C4370656564;
          v14 = 0xE90000000000006ELL;
          break;
        case 4:
          v14 = 0xE400000000000000;
          v15 = 1869903201;
          break;
        case 5:
          v14 = 0xE500000000000000;
          v15 = 0x7465697571;
          break;
        case 6:
          v14 = 0xE500000000000000;
          v15 = 0x6B63697571;
          break;
        case 7:
          v14 = 0xE800000000000000;
          v15 = 0x6573696F4E776F6CLL;
          break;
        case 8:
          v14 = 0xE900000000000079;
          v15 = 0x6772656E45776F6CLL;
          break;
        case 9:
          v14 = 0xE800000000000000;
          v15 = 0x6E6F697461636176;
          break;
        case 0xA:
          v14 = 0xE500000000000000;
          v15 = 0x746867696ELL;
          break;
        case 0xB:
          v14 = 0xE300000000000000;
          v15 = 7954788;
          break;
        case 0xC:
          v14 = 0xE300000000000000;
          v15 = 7235949;
          break;
        case 0xD:
          v14 = 0xE300000000000000;
          v15 = 7889261;
          break;
        default:
          break;
      }

      v16 = 0xE600000000000000;
      v17 = v7;
      v18 = v7;
      v19 = v4;
      v20 = v6;
      switch(v17)
      {
        case 1:
          v16 = 0xE300000000000000;
          v20 = 7368557;
          break;
        case 2:
          v20 = 0x68546D7575636176;
          v16 = 0xED0000706F4D6E65;
          break;
        case 3:
          v20 = 0x61656C4370656564;
          v16 = 0xE90000000000006ELL;
          break;
        case 4:
          v16 = 0xE400000000000000;
          v20 = 1869903201;
          break;
        case 5:
          v16 = 0xE500000000000000;
          v20 = 0x7465697571;
          break;
        case 6:
          v16 = 0xE500000000000000;
          v20 = 0x6B63697571;
          break;
        case 7:
          v16 = 0xE800000000000000;
          v20 = 0x6573696F4E776F6CLL;
          break;
        case 8:
          v16 = 0xE900000000000079;
          v20 = 0x6772656E45776F6CLL;
          break;
        case 9:
          v16 = 0xE800000000000000;
          v20 = 0x6E6F697461636176;
          break;
        case 10:
          v16 = 0xE500000000000000;
          v20 = 0x746867696ELL;
          break;
        case 11:
          v16 = 0xE300000000000000;
          v20 = 7954788;
          break;
        case 12:
          v16 = 0xE300000000000000;
          v20 = 7235949;
          break;
        case 13:
          v16 = 0xE300000000000000;
          v20 = 7889261;
          break;
        default:
          break;
      }

      v21 = v6;
      if (v15 == v20 && v14 == v16)
      {

LABEL_42:
        v24 = a1[v12];
        a1[v12] = v24 | v13;
        v5 = v30;
        if ((v24 & v13) != 0)
        {
          v6 = v21;
        }

        else
        {
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            return result;
          }

          v6 = v21;
          ++v26;
        }

        v4 = v19;
        goto LABEL_5;
      }

      v22 = sub_2528C1060();

      if (v22)
      {
        goto LABEL_42;
      }

      v11 = (v11 + 1) & v31;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      v6 = v21;
      v4 = v19;
      v7 = v18;
    }

    while ((*(v32 + 8 * (v11 >> 6)) & (1 << v11)) != 0);
    v5 = v30;
LABEL_5:
    if (v5 != v29)
    {
      continue;
    }

    break;
  }

LABEL_46:
  sub_2528BEA50();
  return sub_252830374(a1, a2, v26, v4);
}

BOOL sub_2528511E0()
{
  v1 = *(v0 + 16);
  v2 = sub_2528BF120();
  v3 = sub_2528BF1B0();
  return (v2 & 0x100000000) == 0 && v3 == v2;
}

uint64_t sub_252851230@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_252850C28(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_252851264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EntityPropertyQuery.apply<A>(comparators:mode:data:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 88) = a2;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2528512D8, 0, 0);
}

uint64_t sub_2528512D8()
{
  v1 = *(v0 + 88);
  if (sub_2528BE980())
  {
    v2 = *(v0 + 64);
    *(v0 + 24) = *(v0 + 48);
    v3 = swift_task_alloc();
    v4 = *(v0 + 72);
    *(v3 + 16) = v2;
    *(v3 + 24) = v4;
    *(v0 + 40) = v4;
    sub_2528BED70();
    sub_2528C0BB0();
    sub_2528C0BB0();
    swift_getWitnessTable();
    sub_2528C0AA0();
LABEL_5:
    v8 = *(v0 + 16);

    v9 = v8;
    goto LABEL_7;
  }

  if (sub_2528BE980())
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    *(v0 + 24) = *(v0 + 48);
    v13 = *(v0 + 72);
    *(v0 + 32) = sub_2528C0B70();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v13;
    *(v7 + 40) = v6;
    *(v0 + 40) = v13;
    sub_2528BED70();
    sub_2528C0BB0();
    sub_2528C0BB0();
    swift_getWitnessTable();
    sub_2528C0A90();
    goto LABEL_5;
  }

  v10 = *(v0 + 72);
  v9 = sub_2528C0B70();
LABEL_7:
  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t sub_252851550@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_2528C0BB0();
  swift_getWitnessTable();
  result = sub_2528C0A70();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2528515DC()
{
  sub_2528C0BB0();
  swift_getWitnessTable();
  result = sub_2528C0A70();
  if (!v0)
  {
    return sub_2528C0BA0();
  }

  return result;
}

uint64_t sub_252851690()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_2528515DC();
}

uint64_t sub_2528516B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_252851550(a1, a2);
}

uint64_t sub_2528516D0()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528517E4()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528518D4()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528519A8()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252851A90()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252851B80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006C6176;
  v3 = 0x69727241656D6F68;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C73;
  v7 = 0x6966654472657375;
  v8 = 0xEB0000000064656ELL;
  if (a1 != 4)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x61706544656D6F68;
  v10 = 0xED00006572757472;
  if (a1 != 1)
  {
    v9 = 0x7055656B6177;
    v10 = 0xE600000000000000;
  }

  if (!a1)
  {
    v9 = 0x69727241656D6F68;
    v10 = 0xEB000000006C6176;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x7065656C73)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEB0000000064656ELL;
      if (v11 != 0x6966654472657375)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v11 != 1701736302)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED00006572757472;
        if (v11 != 0x61706544656D6F68)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x7055656B6177;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_2528C1060();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_252851D64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656B636F6C6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656D6D616ALL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656B636F6CLL;
    }

    else
    {
      v4 = 0x64656B636F6C6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x64656D6D616ALL;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x64656B636F6CLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_252851E98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919508838;
  v6 = 0xE800000000000000;
  v7 = 0x726F697265666E69;
  if (a1 != 4)
  {
    v7 = 1919905648;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6E656C6C65637865;
  v9 = 0xE900000000000074;
  if (a1 != 1)
  {
    v8 = 1685024615;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
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
      v12 = 0xE400000000000000;
      if (v10 != 1919508838)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x726F697265666E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1919905648)
      {
LABEL_34:
        v13 = sub_2528C1060();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656C6C65637865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1685024615)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
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

uint64_t sub_252852054(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x6572676F72506E69;
    }

    else
    {
      v3 = 0x6772616843746F6ELL;
    }

    if (v2 == 1)
    {
      v4 = 0xEA00000000007373;
    }

    else
    {
      v4 = 0xED0000656C626165;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 0x6572676F72506E69;
      }

      else
      {
        v6 = 0x6772616843746F6ELL;
      }

      if (v5 == 1)
      {
        v7 = 0xEA00000000007373;
      }

      else
      {
        v7 = 0xED0000656C626165;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701736302;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE400000000000000;
  if (v3 != 1701736302)
  {
LABEL_21:
    v8 = sub_2528C1060();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

uint64_t sub_25285217C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 1701602409;
    }

    else
    {
      v3 = 0x657669746361;
    }

    if (v2 == 1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 1701602409;
      }

      else
      {
        v6 = 0x657669746361;
      }

      if (v5 == 1)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x6576697463616E69;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE800000000000000;
  if (v3 != 0x6576697463616E69)
  {
LABEL_21:
    v8 = sub_2528C1060();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

uint64_t sub_252852270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465736F6C63;
    }

    else
    {
      v5 = 1852141679;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 2)
    {
      v4 = 1852141679;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v4 = 1936682083;
LABEL_12:
      v5 = v4 | 0x676E6900000000;
      goto LABEL_14;
    }

    v5 = 0x646570706F7473;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465736F6C63;
    }

    else
    {
      v9 = 1852141679;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0x676E69736F6C63;
    if (a2 != 3)
    {
      v6 = 0x646570706F7473;
    }

    if (a2 == 2)
    {
      v7 = 0x676E696E65706FLL;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xE700000000000000;
    if (v5 != v7)
    {
      goto LABEL_31;
    }
  }

  if (v3 != v8)
  {
LABEL_31:
    v10 = sub_2528C1060();
    goto LABEL_32;
  }

  v10 = 1;
LABEL_32:

  return v10 & 1;
}

uint64_t sub_2528523DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6964696D75686564;
  v5 = 0xEA00000000007966;
  v6 = 1869903201;
  if (a1 != 4)
  {
    v6 = 1701736302;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28271;
  if (a1 != 1)
  {
    v8 = 0x79666964696D7568;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 6710895;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA00000000007966;
      if (v9 != 0x6964696D75686564)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v9 != 1869903201)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 1701736302)
      {
LABEL_34:
        v12 = sub_2528C1060();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE200000000000000;
      if (v9 != 28271)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x79666964696D7568)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 6710895)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_252852588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670760;
    }

    else
    {
      v4 = 6710895;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 2036430689;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x746867696ELL;
  }

  else
  {
    v4 = 0x6572656767697274;
    v3 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670760;
    }

    else
    {
      v9 = 6710895;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x746867696ELL;
    if (a2 != 3)
    {
      v6 = 0x6572656767697274;
      v5 = 0xE900000000000064;
    }

    if (a2 == 2)
    {
      v7 = 2036430689;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2528C1060();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2528526EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1952540008;
  v5 = 1819242339;
  if (a1 != 4)
  {
    v5 = 1869903201;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 6710895;
  if (a1 != 1)
  {
    v7 = 28271;
    v6 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v10 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v8 != 1952540008)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v8 != 1819242339)
      {
        goto LABEL_34;
      }
    }

    else if (v8 != 1869903201)
    {
LABEL_34:
      v11 = sub_2528C1060();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE300000000000000;
      if (v8 != 6710895)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (v8 != 28271)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (v8 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_25285286C(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x656D75736572;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    v3 = 0xE600000000000000;
    v4 = a2;
    if (a2)
    {
LABEL_6:
      if (v4 == 1)
      {
        v5 = 0x656D75736572;
      }

      else
      {
        v5 = 0x6C65636E6163;
      }

      v6 = 0xE600000000000000;
      if (v2 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x6573756170;
    v4 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v6 = 0xE500000000000000;
  if (v2 != 0x6573756170)
  {
LABEL_15:
    v7 = sub_2528C1060();
    goto LABEL_16;
  }

LABEL_13:
  if (v3 != v6)
  {
    goto LABEL_15;
  }

  v7 = 1;
LABEL_16:

  return v7 & 1;
}

uint64_t sub_252852964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726577736E61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656369746F6ELL;
    }

    else
    {
      v4 = 0x686372616573;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6B6E694C70656564;
    }

    else
    {
      v4 = 0x726577736E61;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x656369746F6ELL;
  if (a2 != 2)
  {
    v7 = 0x686372616573;
  }

  if (a2)
  {
    v2 = 0x6B6E694C70656564;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2528C1060();
  }

  return v10 & 1;
}

uint64_t sub_252852A94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x614E656369766564;
  v4 = a1;
  v5 = 1701670760;
  v6 = 1836019570;
  if (a1 != 4)
  {
    v6 = 1701736314;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0x7954656369766564;
  v8 = 0xEA00000000006570;
  if (a1 != 1)
  {
    v7 = 0x70756F7267;
    v8 = 0xE500000000000000;
  }

  if (!a1)
  {
    v7 = 0x614E656369766564;
    v8 = 0xEA0000000000656DLL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v2 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v9 != 1701670760)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 1836019570)
      {
        goto LABEL_31;
      }
    }

    else if (v9 != 1701736314)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000006570;
        if (v9 != 0x7954656369766564)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x70756F7267;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_2528C1060();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_252852C2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746C7573;
  v3 = 0x6552656369766564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x697461676976616ELL;
    }

    else
    {
      v5 = 0x726F727265;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736552656E656373;
    }

    else
    {
      v5 = 0x6552656369766564;
    }

    if (v4)
    {
      v6 = 0xEB00000000746C75;
    }

    else
    {
      v6 = 0xEC000000746C7573;
    }
  }

  v7 = 0x697461676976616ELL;
  v8 = 0xEA00000000006E6FLL;
  if (a2 != 2)
  {
    v7 = 0x726F727265;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x736552656E656373;
    v2 = 0xEB00000000746C75;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_252852D84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ult";
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v6 = "17-A590-755E1AAC02AE";
      v7 = "73-8FBD-0E8978A33403";
      v8 = a1 == 6;
    }

    else
    {
      v6 = "60-AD68-D91053B75F44";
      v7 = "7E-BE63-1D00B1500545";
      v8 = a1 == 4;
    }

    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v3 = "73-A058-C5E64BC487B2";
    if (a1 != 2)
    {
      v3 = "CE-986D-63B28F62C9E3";
    }

    v4 = "13-AA62-01754F256DD5";
    if (!a1)
    {
      v4 = "ult";
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
      }

      else
      {
        v9 = "7FADD792-61A4-4340-A849-215882E2F008";
      }
    }

    else if (a2 == 4)
    {
      v9 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
    }

    else
    {
      v9 = "63489665-5E39-4C17-A590-755E1AAC02AE";
    }

    goto LABEL_30;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
    }

    else
    {
      v9 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
    }

LABEL_30:
    v2 = (v9 - 32);
    goto LABEL_31;
  }

  if (a2)
  {
    v2 = "13-AA62-01754F256DD5";
  }

LABEL_31:
  if ((v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2528C1060();
  }

  return v10 & 1;
}

uint64_t sub_252852F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  sub_25282EFBC(0, v1, 0);
  v2 = v31;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_2528C0E00();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(v7 + 36);
    v30 = *(*(v7 + 48) + v6);
    v12 = v7;
    result = AttributeKind.rawValue.getter();
    v14 = v2;
    v32 = v2;
    v15 = *(v2 + 16);
    v16 = *(v14 + 24);
    if (v15 >= v16 >> 1)
    {
      v25 = v13;
      v26 = result;
      sub_25282EFBC((v16 > 1), v15 + 1, 1);
      v13 = v25;
      result = v26;
      v14 = v32;
    }

    *(v14 + 16) = v15 + 1;
    v17 = v14 + 16 * v15;
    *(v17 + 32) = result;
    *(v17 + 40) = v13;
    v9 = 1 << *(v12 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    v7 = v12;
    v2 = v14;
    if (v29 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v28;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 64 + 8 * v11);
      v10 = v28;
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_25271A63C(v6, v29, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_25271A63C(v6, v29, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
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

char *sub_252853180(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = *v5;
    sub_2528BEA50();
    sub_2528BEA50();
    a1(&v18, &v17);
    if (v3)
    {

      return v6;
    }

    v8 = v18;
    v9 = *(v18 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_252737BC0(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v9)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v6 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *sub_252853334(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 64);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *(v5 - 3);
    v11 = *v5;
    v21 = *(v5 - 4);
    v22 = v10;
    v23 = v8;
    v24 = v9;
    v25 = v11;
    sub_252760C18(v21, v10, v8, v9, v11);
    a1(&v26, &v21);
    if (v3)
    {
      sub_25272C15C(v21, v22, v23, v24, v25);

      return v6;
    }

    result = sub_25272C15C(v21, v22, v23, v24, v25);
    v12 = v26;
    v13 = *(v26 + 16);
    v14 = *(v6 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v6 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_252737E74(result, v16, 1, v6);
      v6 = result;
      if (*(v12 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v13)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v6 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_252853528(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = sub_2528BFF00();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = v8;
  v35 = v8 + 16;
  v36 = (v8 + 8);
  v40 = a3;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v33 = v6;
  for (i = v10; ; v10 = i)
  {
    v42 = v18;
    if (!v14)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v19);
        ++v17;
        if (v14)
        {
          v17 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v37 + 16))(v10, *(v40 + 56) + *(v37 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v6);
    v38(&v43, v10);
    if (v4)
    {
      break;
    }

    v41 = 0;
    result = (*v36)(v10, v6);
    v20 = v43;
    v21 = *(v43 + 16);
    v18 = v42;
    v22 = v42[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_252738010(isUniquelyReferenced_nonNull_native, v25, 1, v18);
      if (!*(v20 + 16))
      {
LABEL_4:

        if (v21)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v26 = (v18[3] >> 1) - v18[2];
    result = type metadata accessor for DeviceEntity();
    v27 = *(result - 8);
    if (v26 < v21)
    {
      goto LABEL_30;
    }

    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = *(v27 + 72);
    swift_arrayInitWithCopy();

    if (v21)
    {
      v30 = v18[2];
      v31 = __OFADD__(v30, v21);
      v32 = v30 + v21;
      if (v31)
      {
        goto LABEL_31;
      }

      v18[2] = v32;
    }

LABEL_5:
    v14 &= v14 - 1;
    v4 = v41;
    v6 = v33;
  }

  (*v36)(v10, v6);

LABEL_26:

  return v42;
}

uint64_t sub_25285383C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v10 = v8;
      a1(&v9, &v10);
      if (v3)
      {
        break;
      }

      sub_2527360E0(v9);
      if (!--v6)
      {
        return v11;
      }
    }
  }

  return result;
}

uint64_t sub_252853924(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = (a3 + 64);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *(v7 - 2);
    v11 = *(v7 - 1);
    v12 = *(v7 - 3);
    v13 = *v7;
    v27 = *(v7 - 4);
    v28 = v12;
    v29 = v10;
    v30 = v11;
    v31 = v13;
    sub_252760C18(v27, v12, v10, v11, v13);
    a1(&v32, &v27);
    if (v5)
    {
      sub_25272C15C(v27, v28, v29, v30, v31);

      return v8;
    }

    result = sub_25272C15C(v27, v28, v29, v30, v31);
    v14 = v32;
    v15 = *(v32 + 16);
    v16 = *(v8 + 16);
    if (__OFADD__(v16, v15))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v16 + v15 <= *(v8 + 24) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = a4();
      if (*(v14 + 16))
      {
LABEL_12:
        v17 = (*(v8 + 24) >> 1) - *(v8 + 16);
        result = a5(0);
        v18 = *(result - 8);
        if (v17 < v15)
        {
          goto LABEL_21;
        }

        v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v20 = *(v18 + 72);
        swift_arrayInitWithCopy();

        if (v15)
        {
          v21 = *(v8 + 16);
          v22 = __OFADD__(v21, v15);
          v23 = v21 + v15;
          if (v22)
          {
            goto LABEL_22;
          }

          *(v8 + 16) = v23;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_20;
    }

LABEL_4:
    v7 += 40;
    if (!--v6)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_252853B20(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = sub_2528BECF0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  v37 = v8;
  v35 = v8 + 16;
  v36 = (v8 + 8);
  v40 = a3;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v33 = v6;
  for (i = v10; ; v10 = i)
  {
    v42 = v18;
    if (!v14)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v19);
        ++v17;
        if (v14)
        {
          v17 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v37 + 16))(v10, *(v40 + 48) + *(v37 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v6);
    v38(&v43, v10);
    if (v4)
    {
      break;
    }

    v41 = 0;
    result = (*v36)(v10, v6);
    v20 = v43;
    v21 = *(v43 + 16);
    v18 = v42;
    v22 = v42[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_252738010(isUniquelyReferenced_nonNull_native, v25, 1, v18);
      if (!*(v20 + 16))
      {
LABEL_4:

        if (v21)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v26 = (v18[3] >> 1) - v18[2];
    result = type metadata accessor for DeviceEntity();
    v27 = *(result - 8);
    if (v26 < v21)
    {
      goto LABEL_30;
    }

    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = *(v27 + 72);
    swift_arrayInitWithCopy();

    if (v21)
    {
      v30 = v18[2];
      v31 = __OFADD__(v30, v21);
      v32 = v30 + v21;
      if (v31)
      {
        goto LABEL_31;
      }

      v18[2] = v32;
    }

LABEL_5:
    v14 &= v14 - 1;
    v4 = v41;
    v6 = v33;
  }

  (*v36)(v10, v6);

LABEL_26:

  return v42;
}

void *sub_252853E34(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(type metadata accessor for ZoneEntity() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v23 = *(v6 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = a1(&v25, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v25;
    v11 = *(v25 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_252737E4C(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = sub_2528BECF0();
        v17 = *(result - 1);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v20 = v8[2];
          v21 = __OFADD__(v20, v11);
          v22 = v20 + v11;
          if (v21)
          {
            goto LABEL_25;
          }

          v8[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v23;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_25285403C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 64);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *(v5 - 3);
    v11 = *v5;
    v21 = *(v5 - 4);
    v22 = v10;
    v23 = v8;
    v24 = v9;
    v25 = v11;
    sub_252760C18(v21, v10, v8, v9, v11);
    a1(&v26, &v21);
    if (v3)
    {
      sub_25272C15C(v21, v22, v23, v24, v25);

      return v6;
    }

    result = sub_25272C15C(v21, v22, v23, v24, v25);
    v12 = v26;
    v13 = *(v26 + 16);
    v14 = v6[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= v6[3] >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_252737A38(result, v16, 1, v6);
      v6 = result;
      if (*(v12 + 16))
      {
LABEL_15:
        if ((v6[3] >> 1) - v6[2] < v13)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC740, &qword_2528D4330);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = v6[2];
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_25;
          }

          v6[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t static ShowDeviceResultIntent.createShowDeviceResultIntent(deviceResults:snapshot:matterSnapshot:attributes:attributeKind:devices:sourceIntentType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t *a8@<X8>)
{
  v14 = *a5;
  v15 = *a7;
  ShowDeviceResultIntent.init()(a8);
  if ((v15 & 1) == 0)
  {
    sub_252859458(a1, a2, &v47);
    v21 = a8[1];
    sub_2528BE7A0();
    if (v14 == 63)
    {
      goto LABEL_8;
    }

    v22 = a8[5];
    LOBYTE(v47) = v14;
    goto LABEL_7;
  }

  sub_252859C3C(a1, a2, a3, &v47);
  v16 = a8[1];
  sub_2528BE7A0();
  sub_2528BE790();
  if (v47 != 4)
  {
    v17 = sub_252852964(v47, 1u);
    if (v17)
    {
      MEMORY[0x28223BE20](v17);
      v46[2] = a2;
      v46[3] = a6;
      v18 = sub_252853180(sub_252760634, v46, a1);
      v19 = a8[6];
      v47 = v18;
      sub_2528BE7A0();
      v20 = a8[7];
      v47 = a1;

LABEL_7:
      sub_2528BE7A0();
    }
  }

LABEL_8:
  sub_25285A33C(a4, &v47);
  v23 = v47;
  if (v47 != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v24 = sub_2528C08B0();
    __swift_project_value_buffer(v24, qword_27F5025C8);
    v25 = sub_2528C0890();
    v26 = sub_2528C0D10();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315138;
      if (v23)
      {
        v29 = 0xD000000000000010;
      }

      else
      {
        v29 = 6449010;
      }

      if (v23)
      {
        v30 = 0x80000002528E51C0;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = sub_2527389AC(v29, v30, &v47);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_252711000, v25, v26, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x2530A8D80](v28, -1, -1);
      MEMORY[0x2530A8D80](v27, -1, -1);
    }

    v32 = a8[8];
    LOBYTE(v47) = v23 & 1;
    sub_2528BE7A0();
  }

  v33 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(a1);
  v34 = v33;
  v36 = v35;
  v37 = *(v33 + 16);
  if (v37)
  {
    v38 = sub_252865988(*(v33 + 16), 0);
    v39 = sub_252868828(&v47, v38 + 4, v37, v34);
    sub_25271A648();
    if (v39 == v37)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v38 = MEMORY[0x277D84F90];
LABEL_24:
  v40 = a8[2];
  v47 = v38;
  sub_2528BE7A0();
  v41 = *(v36 + 16);
  if (!v41)
  {
LABEL_27:

    v42 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v42 = sub_252865988(*(v36 + 16), 0);
  v43 = sub_252868828(&v47, v42 + 4, v41, v36);
  sub_25271A648();
  if (v43 != v41)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v44 = a8[3];
  v47 = v42;
  return sub_2528BE7A0();
}

uint64_t static ShowDeviceResultIntent.mergedDeviceIdsToDisplay(devicesToDisplay:snapshot:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252854664;

  return sub_25286A4D0(a1, a2);
}

uint64_t sub_252854664(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t SecondaryAccessoryControlDestination.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 6449010;
  }

  *v0;
  return result;
}

uint64_t sub_252854798()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FF9F8);
  __swift_project_value_buffer(v0, qword_27F4FF9F8);
  return sub_2528BEC20();
}

uint64_t ShowDeviceResultIntent.userSpecificity.getter()
{
  v1 = *v0;
  sub_2528BE790();
  return v3;
}

void (*ShowDeviceResultIntent.userSpecificity.modify(uint64_t *a1))(void *)
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
  v4 = *v1;
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.destination.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_2528BE7A0();
}

void (*ShowDeviceResultIntent.destination.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.successDeviceIDs.getter()
{
  v1 = *(v0 + 16);
  sub_2528BE790();
  return v3;
}

void (*ShowDeviceResultIntent.successDeviceIDs.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.failedDeviceIDs.getter()
{
  v1 = *(v0 + 24);
  sub_2528BE790();
  return v3;
}

void (*ShowDeviceResultIntent.failedDeviceIDs.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.failedDeviceIDsToIgnore.getter()
{
  v1 = *(v0 + 32);
  sub_2528BE790();
  return v3;
}

void (*ShowDeviceResultIntent.failedDeviceIDsToIgnore.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.attributeType.setter(char *a1)
{
  v2 = *(v1 + 40);
  v4 = *a1;
  return sub_2528BE7A0();
}

void (*ShowDeviceResultIntent.attributeType.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.oldDeviceResults.getter()
{
  v1 = *(v0 + 48);
  sub_2528BE790();
  return v3;
}

void (*ShowDeviceResultIntent.oldDeviceResults.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.newDeviceResults.getter()
{
  v1 = *(v0 + 56);
  sub_2528BE790();
  return v3;
}

uint64_t (*ShowDeviceResultIntent.newDeviceResults.modify(uint64_t *a1))()
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
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t ShowDeviceResultIntent.successDeviceUUIDs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_2528BECF0();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  result = sub_2528BE790();
  v10 = v26;
  if (!v26)
  {
    return 0;
  }

  v24 = *(v26 + 16);
  if (!v24)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  v11 = 0;
  v12 = (v23 + 48);
  v13 = (v23 + 32);
  v14 = (v26 + 40);
  v15 = MEMORY[0x277D84F90];
  v22 = v26;
  while (v11 < *(v10 + 16))
  {
    v17 = *(v14 - 1);
    v16 = *v14;

    sub_2528BECA0();

    if ((*v12)(v4, 1, v5) == 1)
    {
      result = sub_2527213D8(v4, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v18 = *v13;
      (*v13)(v25, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_252737E4C(0, v15[2] + 1, 1, v15);
      }

      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        v15 = sub_252737E4C(v19 > 1, v20 + 1, 1, v15);
      }

      v15[2] = v20 + 1;
      result = (v18)(v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, v25, v5);
      v10 = v22;
    }

    ++v11;
    v14 += 2;
    if (v24 == v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShowDeviceResultIntent.failedDeviceUUIDs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_2528BECF0();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 24);
  result = sub_2528BE790();
  v10 = v26;
  if (!v26)
  {
    return 0;
  }

  v24 = *(v26 + 16);
  if (!v24)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  v11 = 0;
  v12 = (v23 + 48);
  v13 = (v23 + 32);
  v14 = (v26 + 40);
  v15 = MEMORY[0x277D84F90];
  v22 = v26;
  while (v11 < *(v10 + 16))
  {
    v17 = *(v14 - 1);
    v16 = *v14;

    sub_2528BECA0();

    if ((*v12)(v4, 1, v5) == 1)
    {
      result = sub_2527213D8(v4, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v18 = *v13;
      (*v13)(v25, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_252737E4C(0, v15[2] + 1, 1, v15);
      }

      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        v15 = sub_252737E4C(v19 > 1, v20 + 1, 1, v15);
      }

      v15[2] = v20 + 1;
      result = (v18)(v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, v25, v5);
      v10 = v22;
    }

    ++v11;
    v14 += 2;
    if (v24 == v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShowDeviceResultIntent.failedDeviceUUIDsToIgnore.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_2528BECF0();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 32);
  result = sub_2528BE790();
  v10 = v26;
  if (!v26)
  {
    return 0;
  }

  v24 = *(v26 + 16);
  if (!v24)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  v11 = 0;
  v12 = (v23 + 48);
  v13 = (v23 + 32);
  v14 = (v26 + 40);
  v15 = MEMORY[0x277D84F90];
  v22 = v26;
  while (v11 < *(v10 + 16))
  {
    v17 = *(v14 - 1);
    v16 = *v14;

    sub_2528BECA0();

    if ((*v12)(v4, 1, v5) == 1)
    {
      result = sub_2527213D8(v4, &qword_27F4FC628, &qword_2528C4750);
    }

    else
    {
      v18 = *v13;
      (*v13)(v25, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_252737E4C(0, v15[2] + 1, 1, v15);
      }

      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        v15 = sub_252737E4C(v19 > 1, v20 + 1, 1, v15);
      }

      v15[2] = v20 + 1;
      result = (v18)(v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, v25, v5);
      v10 = v22;
    }

    ++v11;
    v14 += 2;
    if (v24 == v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShowDeviceResultIntent.secondaryAccessoryControlDestination.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_2528BE7A0();
}

void (*ShowDeviceResultIntent.secondaryAccessoryControlDestination.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowDeviceResultIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v89 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v78 = &v70 - v3;
  v91 = sub_2528BE950();
  v4 = *(v91 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v91);
  v86 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v70 - v16;
  v18 = sub_2528BEC40();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA50, &unk_2528D44A0);
  sub_2528BEC20();
  v82 = *(v19 + 56);
  v83 = v18;
  v84 = v19 + 56;
  v82(v17, 1, 1, v18);
  v92 = 0;
  v23 = sub_2528BE630();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v85 = v25;
  v26 = v24 + 56;
  v25(v13, 1, 1, v23);
  v25(v11, 1, 1, v23);
  v88 = *MEMORY[0x277CBA308];
  v27 = *(v4 + 104);
  v90 = v4 + 104;
  v87 = v27;
  v28 = v86;
  v27(v86);
  sub_25286BB08();
  *v89 = sub_2528BE7D0();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE780, &qword_2528CD970);
  sub_2528BEC20();
  v29 = v82;
  v82(v17, 1, 1, v18);
  LOBYTE(v92) = 4;
  v79 = v23;
  v30 = v85;
  v81 = v26;
  v85(v13, 1, 1, v23);
  v72 = v11;
  v30(v11, 1, 1, v23);
  v31 = v91;
  v87(v28, v88, v91);
  sub_2527233F0();
  v80 = v22;
  v89[1] = sub_2528BE7D0();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA60, &qword_2528D44B0);
  sub_2528BEC20();
  v29(v17, 1, 1, v83);
  v92 = 0;
  v75 = sub_2528C0940();
  v32 = *(v75 - 8);
  v74 = *(v32 + 56);
  v77 = v32 + 56;
  v33 = v78;
  v74(v78, 1, 1, v75);
  v71 = v13;
  v34 = v79;
  v85(v13, 1, 1, v79);
  v35 = v87;
  v87(v28, v88, v31);
  v36 = sub_2528BE800();
  v37 = v89;
  v89[2] = v36;
  sub_2528BEC20();
  v73 = v17;
  v39 = v82;
  v38 = v83;
  v82(v17, 1, 1, v83);
  v92 = 0;
  v74(v33, 1, 1, v75);
  v40 = v71;
  v41 = v85;
  v85(v71, 1, 1, v34);
  v42 = v88;
  v35(v86, v88, v91);
  v43 = v78;
  v37[3] = sub_2528BE800();
  sub_2528BEC20();
  v39(v17, 1, 1, v38);
  v92 = 0;
  v74(v43, 1, 1, v75);
  v44 = v79;
  v41(v40, 1, 1, v79);
  v45 = v91;
  v87(v86, v42, v91);
  v46 = v73;
  v47 = sub_2528BE800();
  v48 = v89;
  v89[4] = v47;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA68, &qword_2528D44B8);
  sub_2528BEC20();
  v82(v46, 1, 1, v83);
  LOBYTE(v92) = 63;
  v49 = v40;
  v50 = v85;
  v85(v40, 1, 1, v44);
  v51 = v72;
  v50(v72, 1, 1, v44);
  v52 = v45;
  v53 = v87;
  v87(v86, v88, v52);
  sub_25272E944();
  v54 = v73;
  v48[5] = sub_2528BE7D0();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFA70, &qword_2528D44C0);
  sub_2528BEC20();
  v55 = v54;
  v56 = v54;
  v58 = v82;
  v57 = v83;
  v82(v55, 1, 1, v83);
  v92 = 0;
  v59 = v85;
  v85(v49, 1, 1, v44);
  v59(v51, 1, 1, v44);
  v60 = v88;
  v53(v86, v88, v91);
  v77 = sub_25280D0D0();
  v89[6] = sub_2528BE7F0();
  sub_2528BEC20();
  v58(v56, 1, 1, v57);
  v92 = 0;
  v61 = v79;
  v62 = v85;
  v85(v49, 1, 1, v79);
  v63 = v51;
  v62(v51, 1, 1, v61);
  v64 = v86;
  v87(v86, v60, v91);
  v65 = sub_2528BE7F0();
  v66 = v89;
  v89[7] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF358, &unk_2528D2D60);
  sub_2528BEC20();
  v82(v56, 1, 1, v83);
  LOBYTE(v92) = 2;
  v62(v49, 1, 1, v61);
  v62(v63, 1, 1, v61);
  v87(v64, v88, v91);
  sub_252816A44();
  v66[8] = sub_2528BE7D0();
  v67 = *(type metadata accessor for ShowDeviceResultIntent() + 52);
  v68 = sub_2528BF400();
  return (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
}