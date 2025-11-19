uint64_t PreviewTool.generatePlan(utterance:)()
{
  sub_254E590B4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_254E5DDF8();
  v0[4] = v3;
  sub_254E59014(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_254E59084();
  v7 = type metadata accessor for PreviewToolError();
  v0[7] = v7;
  sub_254E5903C(v7);
  v9 = *(v8 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v10 = sub_254E57458(&qword_27F754D50, &qword_254E5E528);
  v0[10] = v10;
  sub_254E5903C(v10);
  v12 = *(v11 + 64);
  v0[11] = sub_254E59084();
  v13 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  sub_254E5903C(v13);
  v15 = *(v14 + 64);
  v0[12] = sub_254E59084();
  v16 = sub_254E57458(&qword_27F754D60, &qword_254E5E538);
  sub_254E5903C(v16);
  v18 = *(v17 + 64);
  v0[13] = sub_254E59084();
  v19 = sub_254E57458(&qword_27F754D68, &qword_254E5E540);
  sub_254E5903C(v19);
  v21 = *(v20 + 64);
  v0[14] = sub_254E59084();
  v22 = sub_254E57458(&qword_27F754D70, &qword_254E5E548);
  sub_254E5903C(v22);
  v24 = *(v23 + 64);
  v0[15] = sub_254E59084();
  v25 = sub_254E57458(&qword_27F754D78, &qword_254E5E550);
  sub_254E5903C(v25);
  v27 = *(v26 + 64);
  v0[16] = sub_254E59084();
  v28 = sub_254E5DB18();
  v0[17] = v28;
  sub_254E59014(v28);
  v0[18] = v29;
  v0[19] = *(v30 + 64);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v31 = sub_254E5DDA8();
  v0[23] = v31;
  sub_254E59014(v31);
  v0[24] = v32;
  v34 = *(v33 + 64) + 15;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v35 = sub_254E5DB98();
  v0[27] = v35;
  sub_254E59014(v35);
  v0[28] = v36;
  v38 = *(v37 + 64);
  v0[29] = sub_254E59084();
  sub_254E5909C();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_254E567DC()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  sub_254E5DB78();
  sub_254E5DB88();
  sub_254E5DD98();
  sub_254E5DC18();
  (*(v5 + 16))(v3, v2, v4);
  v6 = sub_254E5DBE8();
  v0[30] = v6;
  v7 = v6;
  v8 = sub_254E5DC08();
  v0[31] = v8;
  v9 = v0[21];
  v53 = v0[22];
  v55 = v8;
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  sub_254E5DB08();
  sub_254E5DAE8();
  v16 = *(v10 + 8);
  v0[32] = v16;
  v0[33] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v9, v11);
  v17 = *MEMORY[0x277D1CE88];
  v18 = sub_254E5DD18();
  (*(*(v18 - 8) + 104))(v13, v17, v18);
  sub_254E590A8();
  sub_254E574A0(v19, v20, v21, v18);
  sub_254E5DC38();
  sub_254E5DC48();
  sub_254E590A8();
  sub_254E574A0(v22, v23, v24, v25);
  sub_254E5DD38();
  sub_254E5DD48();
  sub_254E590A8();
  sub_254E574A0(v26, v27, v28, v29);
  sub_254E5DD28();
  sub_254E5DD58();
  sub_254E590A8();
  sub_254E574A0(v30, v31, v32, v33);
  sub_254E5DBD8();
  v34 = v0[22];
  v36 = v0[19];
  v35 = v0[20];
  v37 = v0[17];
  v38 = v0[18];
  v39 = v0[12];
  v56 = v0[3];
  v54 = v0[2];
  sub_254E58F24(v0[16], &qword_27F754D78, &qword_254E5E550);

  v40 = sub_254E5E1C8();
  sub_254E574A0(v39, 1, 1, v40);
  (*(v38 + 16))(v35, v34, v37);
  v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v42 = (v36 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v7;
  (*(v38 + 32))(&v43[v41], v35, v37);
  v44 = &v43[v42];
  *v44 = v54;
  *(v44 + 1) = v56;
  *&v43[(v42 + 23) & 0xFFFFFFFFFFFFFFF8] = v55;

  v45 = sub_254E587B4(0, 0, v39, &unk_254E5E560, v43);
  v0[34] = v45;
  v46 = *(MEMORY[0x277D857C8] + 4);
  v47 = swift_task_alloc();
  v0[35] = v47;
  v48 = sub_254E57458(&qword_27F754D80, &qword_254E5E568);
  *v47 = v0;
  v47[1] = sub_254E56CF8;
  v50 = v0[10];
  v49 = v0[11];
  v51 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v49, v45, v50, v48, v51);
}

uint64_t sub_254E56CF8()
{
  sub_254E590B4();
  v2 = *(*v1 + 280);
  v3 = *v1;
  sub_254E59074();
  *v4 = v3;
  *(v5 + 288) = v0;

  sub_254E5909C();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_254E56DFC()
{
  v1 = v0[10];
  v2 = v0[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    sub_254E58A44(v2, v3);
    sub_254E5DDD8();
    sub_254E58AA8(v3, v4);
    v6 = sub_254E5DDE8();
    v7 = sub_254E5E1E8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = v0[7];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      sub_254E58FCC();
      sub_254E58F84(v13, v14);
      swift_allocError();
      sub_254E58AA8(v9, v15);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      sub_254E58B0C(v9);
      *(v11 + 4) = v16;
      *v12 = v16;
      _os_log_impl(&dword_254E55000, v6, v7, "Error: %@", v11, 0xCu);
      sub_254E58F24(v12, &qword_27F754D90, qword_254E5E570);
      MEMORY[0x259C2AE50](v12, -1, -1);
      MEMORY[0x259C2AE50](v11, -1, -1);
    }

    else
    {

      sub_254E58B0C(v9);
    }

    v29 = v0[34];
    v72 = v0[33];
    v30 = v0[31];
    v31 = v0[32];
    v32 = v0[30];
    v33 = v0[22];
    v34 = v0[17];
    v35 = v0[9];
    v36 = v0[7];
    (*(v0[5] + 8))(v0[6], v0[4]);
    sub_254E58FCC();
    sub_254E58F84(v37, v38);
    swift_allocError();
    sub_254E58AA8(v35, v39);
    swift_willThrow();

    sub_254E58B0C(v35);
    v31(v33, v34);
    v40 = v0[28];
    v41 = v0[29];
    v42 = v0[27];
    v43 = v0[25];
    v44 = v0[22];
    v46 = v0[20];
    v45 = v0[21];
    v47 = v0[16];
    v58 = v0[15];
    v60 = v0[14];
    v62 = v0[13];
    v64 = v0[12];
    v66 = v0[11];
    v68 = v0[9];
    v70 = v0[8];
    v73 = v0[6];
    (*(v0[24] + 8))(v0[26], v0[23]);
    v48 = sub_254E59054();
    v49(v48);

    sub_254E59048();

    return v50();
  }

  else
  {
    v17 = v0[34];
    v18 = v0[31];
    v52 = v0[32];
    v53 = v0[33];
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[28];
    v22 = v0[26];
    v54 = v0[27];
    v55 = v0[25];
    v23 = v0[24];
    v51 = v0[23];
    v24 = v0[22];
    v56 = v0[21];
    v57 = v0[20];
    v25 = v0[17];
    v59 = v0[16];
    v61 = v0[15];
    v63 = v0[14];
    v65 = v0[13];
    v67 = v0[12];
    v69 = v0[9];
    v71 = v0[8];
    v74 = v0[6];

    v52(v24, v25);
    (*(v23 + 8))(v22, v51);
    (*(v21 + 8))(v20, v54);
    v26 = *v2;

    v27 = v0[1];

    return v27(v26);
  }
}

uint64_t sub_254E572CC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[22];
  v7 = v0[17];

  v4(v6, v7);
  v28 = v0[36];
  v8 = v0[28];
  v9 = v0[29];
  v10 = v0[27];
  v11 = v0[25];
  v12 = v0[22];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[16];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[11];
  v25 = v0[9];
  v26 = v0[8];
  v27 = v0[6];
  (*(v0[24] + 8))(v0[26], v0[23]);
  v16 = sub_254E59054();
  v17(v16);

  sub_254E59048();

  return v18();
}

uint64_t sub_254E57458(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254E574C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a1;
  v8[4] = a4;
  v9 = sub_254E5DC88();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = sub_254E5DC68();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v15 = sub_254E5DD88();
  v8[15] = v15;
  v16 = *(v15 - 8);
  v8[16] = v16;
  v17 = *(v16 + 64) + 15;
  v8[17] = swift_task_alloc();
  v18 = *(*(sub_254E57458(&qword_27F754DA0, qword_254E5E5E8) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v19 = sub_254E5DCE8();
  v8[19] = v19;
  v20 = *(v19 - 8);
  v8[20] = v20;
  v21 = *(v20 + 64) + 15;
  v8[21] = swift_task_alloc();
  v22 = sub_254E5DCB8();
  v8[22] = v22;
  v23 = *(v22 - 8);
  v8[23] = v23;
  v24 = *(v23 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v25 = sub_254E5DB18();
  v8[26] = v25;
  v26 = *(v25 - 8);
  v8[27] = v26;
  v27 = *(v26 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v28 = sub_254E5DD08();
  v8[30] = v28;
  v29 = *(v28 - 8);
  v8[31] = v29;
  v30 = *(v29 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254E57814, 0, 0);
}

uint64_t sub_254E57814()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 56);
  v22 = *(v0 + 48);
  v8 = *(v0 + 40);
  v23 = *(v0 + 32);
  v24 = *(v0 + 248);
  v9 = *(v5 + 16);
  *(v0 + 272) = v9;
  *(v0 + 280) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v8, v4);
  sub_254E5DB08();
  sub_254E5DAE8();
  v10 = *(v5 + 8);
  *(v0 + 288) = v10;
  *(v0 + 296) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);

  sub_254E5DC98();
  sub_254E5DCF8();
  sub_254E5DBF8();
  v11 = *(v0 + 264);
  v12 = *(v0 + 240);
  v13 = *(v0 + 168);
  v14 = *(v0 + 64);

  v15 = *(v24 + 8);
  *(v0 + 304) = v15;
  *(v0 + 312) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  sub_254E5DCD8();
  *(v0 + 336) = *MEMORY[0x277D1C8B8];
  *(v0 + 340) = *MEMORY[0x277D1C888];
  *(v0 + 344) = *MEMORY[0x277D1C860];
  sub_254E59024();
  sub_254E58F84(v16, v17);
  v18 = *(MEMORY[0x277D856D0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  v20 = sub_254E58FE4(v19);

  return MEMORY[0x282200308](v20);
}

uint64_t sub_254E57AE0()
{
  sub_254E590B4();
  v2 = *(*v1 + 320);
  v3 = *v1;
  sub_254E59074();
  *v4 = v3;
  *(v5 + 328) = v0;

  sub_254E5909C();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_254E57BE4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  if (sub_254E58EFC(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 24);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v4 = sub_254E5DB48();
    sub_254E574A0(v3, 1, 1, v4);
    sub_254E57458(&qword_27F754D50, &qword_254E5E528);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 168);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 112);
    v106 = *(v0 + 88);

    sub_254E59048();
LABEL_23:

    return v15();
  }

  v17 = *(v0 + 288);
  v16 = *(v0 + 296);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 40);
  (*(*(v0 + 128) + 32))(*(v0 + 136), v1, v2);
  sub_254E5DD78();
  v21 = sub_254E5DAF8();
  v17(v18, v19);
  if (v21)
  {
    v22 = *(v0 + 336);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 176);
    v26 = *(v0 + 136);
    sub_254E5DD68();
    v27 = (*(v24 + 88))(v23, v25);
    if (v27 == v22)
    {
      v28 = *(v0 + 328);
      v29 = *(v0 + 128);
      v31 = *(v0 + 32);
      v30 = *(v0 + 40);
      sub_254E5DBC8();
      v32 = *(v29 + 8);
      v33 = *(v0 + 128);
      if (v28)
      {
        v34 = *(v0 + 184);
        v35 = *(v0 + 192);
        v37 = *(v0 + 168);
        v36 = *(v0 + 176);
        v38 = *(v0 + 152);
        v39 = *(v0 + 160);
        v32(*(v0 + 136), *(v0 + 120));
        (*(v39 + 8))(v37, v38);
        (*(v34 + 8))(v35, v36);
        goto LABEL_22;
      }
    }

    else
    {
      if (v27 == *(v0 + 340))
      {
        v96 = *(v0 + 272);
        v98 = *(v0 + 280);
        v102 = *(v0 + 256);
        v107 = *(v0 + 328);
        v40 = *(v0 + 232);
        v41 = *(v0 + 200);
        v94 = *(v0 + 208);
        v42 = *(v0 + 184);
        v43 = *(v0 + 192);
        v44 = *(v0 + 176);
        v45 = *(v0 + 104);
        v46 = *(v0 + 112);
        v47 = *(v0 + 96);
        v48 = *(v0 + 40);
        v100 = *(v0 + 32);
        (*(v42 + 96))(v43, v44);
        (*(v45 + 32))(v46, v43, v47);
        v96(v40, v48, v94);
        sub_254E5DCA8();
        (*(v42 + 104))(v41, *MEMORY[0x277D1C8C0], v44);
        sub_254E5909C();
        sub_254E5DCF8();
        sub_254E5DBF8();
        v50 = *(v0 + 304);
        v49 = *(v0 + 312);
        v51 = *(v0 + 256);
        v52 = *(v0 + 240);
        v53 = *(v0 + 160);
        v101 = *(v0 + 152);
        v103 = *(v0 + 168);
        v54 = *(v0 + 128);
        v55 = *(v0 + 112);
        v97 = *(v0 + 120);
        v99 = *(v0 + 136);
        v56 = *(v0 + 104);
        v95 = *(v0 + 96);
        if (v107)
        {
          v50(v51, v52);
        }

        else
        {

          v50(v51, v52);
          type metadata accessor for PreviewToolError();
          sub_254E58FCC();
          sub_254E58F84(v81, v82);
          swift_allocError();
          sub_254E5DC58();
          sub_254E5DB48();
          sub_254E590A8();
          sub_254E574A0(v83, v84, v85, v86);
          swift_willThrow();
        }

        (*(v56 + 8))(v55, v95);
        (*(v54 + 8))(v99, v97);
        (*(v53 + 8))(v103, v101);
        goto LABEL_22;
      }

      if (v27 == *(v0 + 344))
      {
        v57 = *(v0 + 328);
        v58 = *(v0 + 192);
        v59 = *(v0 + 160);
        v61 = *(v0 + 80);
        v60 = *(v0 + 88);
        v62 = *(v0 + 72);
        v63 = *(v0 + 32);
        v64 = *(v0 + 40);
        (*(*(v0 + 184) + 96))(v58, *(v0 + 176));
        (*(v61 + 32))(v60, v58, v62);
        sub_254E5DBC8();
        v65 = (v61 + 8);
        v66 = (v59 + 8);
        v104 = *(v0 + 168);
        v67 = *(v0 + 152);
        v69 = *(v0 + 128);
        v68 = *(v0 + 136);
        v70 = *(v0 + 120);
        v71 = *(v0 + 88);
        v72 = *(v0 + 72);
        if (!v57)
        {
          v92 = *(v0 + 24);
          v108 = sub_254E5DC78();
          (*v65)(v71, v72);
          (*(v69 + 8))(v68, v70);
          (*v66)(v104, v67);
          *v92 = v108;
          sub_254E57458(&qword_27F754D50, &qword_254E5E528);
          goto LABEL_3;
        }

        (*v65)(v71, v72);
        (*(v69 + 8))(v68, v70);
        (*v66)(v104, v67);
LABEL_22:
        v88 = *(v0 + 256);
        v87 = *(v0 + 264);
        v90 = *(v0 + 224);
        v89 = *(v0 + 232);
        sub_254E59064();
        v91 = *(v0 + 112);
        v105 = *(v0 + 88);

        sub_254E59048();
        goto LABEL_23;
      }

      v32 = *(*(v0 + 128) + 8);
    }

    v74 = *(v0 + 184);
    v73 = *(v0 + 192);
    v75 = *(v0 + 176);
    v32(*(v0 + 136), *(v0 + 120));
    (*(v74 + 8))(v73, v75);
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  sub_254E59024();
  sub_254E58F84(v76, v77);
  v78 = *(MEMORY[0x277D856D0] + 4);
  v79 = swift_task_alloc();
  *(v0 + 320) = v79;
  *v79 = v0;
  v80 = sub_254E58FE4();

  return MEMORY[0x282200308](v80);
}

uint64_t sub_254E582FC()
{
  sub_254E590B4();
  *(v0 + 16) = *(v0 + 328);
  sub_254E57458(&qword_27F754D80, &qword_254E5E568);
  swift_willThrowTypedImpl();
  sub_254E5909C();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_254E58388()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[41];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  sub_254E59064();
  v6 = v0[14];
  v9 = v0[11];

  sub_254E59048();

  return v7();
}

uint64_t sub_254E58488()
{
  v1 = sub_254E5DB18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_254E58584(uint64_t a1)
{
  v3 = v2;
  v5 = sub_254E5DB18();
  sub_254E59014(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = (v1 + v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_254E586D0;

  return sub_254E574C8(a1, v11, v12, v13, v1 + v7, v15, v16, v17);
}

uint64_t sub_254E586D0()
{
  sub_254E590B4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_254E59074();
  *v3 = v2;

  sub_254E59048();

  return v4();
}

uint64_t sub_254E587B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_254E57458(&qword_27F754D58, &qword_254E5E530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_254E58E8C(a3, v22 - v9);
  v11 = sub_254E5E1C8();
  v12 = sub_254E58EFC(v10, 1, v11);

  if (v12 == 1)
  {
    sub_254E58F24(v10, &qword_27F754D58, &qword_254E5E530);
  }

  else
  {
    sub_254E5E1B8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254E5E198();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_254E5E178() + 32;

      sub_254E57458(&qword_27F754D50, &qword_254E5E528);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);
  sub_254E57458(&qword_27F754D50, &qword_254E5E528);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_254E58A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewToolError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E58AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewToolError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E58B0C(uint64_t a1)
{
  v2 = type metadata accessor for PreviewToolError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254E58B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  v9 = sub_254E5903C(v8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  sub_254E58E8C(a3, v25 - v12);
  v14 = sub_254E5E1C8();
  v15 = sub_254E58EFC(v13, 1, v14);

  if (v15 == 1)
  {
    sub_254E58F24(v13, &qword_27F754D58, &qword_254E5E530);
  }

  else
  {
    sub_254E5E1B8();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_254E5E198();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_254E5E178() + 32;

      sub_254E57458(&qword_27F754D98, &qword_254E5E5E0);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254E58F24(a3, &qword_27F754D58, &qword_254E5E530);
  sub_254E57458(&qword_27F754D98, &qword_254E5E5E0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

__n128 sub_254E58DF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254E58E00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_254E58E40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_254E58E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E58F24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254E57458(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_254E58F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254E58FE4(uint64_t a1)
{
  *(a1 + 8) = sub_254E57AE0;
  v2 = v1[21];
  result = v1[18];
  v4 = v1[19];
  return result;
}

uint64_t sub_254E59048()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_254E59064()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
}

uint64_t sub_254E59084()
{

  return swift_task_alloc();
}

uint64_t static ResponseGenerationPreviewTool.preview(responseManifest:toolDefinition:toolId:)()
{
  sub_254E590B4();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v5;
  v6 = sub_254E57458(&qword_27F754DB0, &qword_254E5E628);
  sub_254E5903C(v6);
  v8 = *(v7 + 64);
  v0[22] = sub_254E5D91C();
  v0[23] = swift_task_alloc();
  v9 = sub_254E5DB18();
  v0[24] = v9;
  sub_254E5903C(v9);
  v11 = *(v10 + 64);
  v0[25] = sub_254E59084();
  v12 = sub_254E5DE18();
  v0[26] = v12;
  sub_254E59014(v12);
  v0[27] = v13;
  v15 = *(v14 + 64);
  v0[28] = sub_254E59084();
  v16 = sub_254E57458(&qword_27F754DB8, &qword_254E5E630);
  sub_254E5903C(v16);
  v18 = *(v17 + 64);
  v0[29] = sub_254E59084();
  v19 = sub_254E5DED8();
  sub_254E5903C(v19);
  v21 = *(v20 + 64);
  v0[30] = sub_254E59084();
  v22 = sub_254E5DB68();
  v0[31] = v22;
  sub_254E59014(v22);
  v0[32] = v23;
  v25 = *(v24 + 64);
  v0[33] = sub_254E5D91C();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v26 = sub_254E5DF78();
  v0[36] = v26;
  sub_254E59014(v26);
  v0[37] = v27;
  v29 = *(v28 + 64);
  v0[38] = sub_254E59084();
  v30 = sub_254E57458(&qword_27F754DC0, &qword_254E5E638);
  sub_254E5903C(v30);
  v32 = *(v31 + 64);
  v0[39] = sub_254E59084();
  v33 = sub_254E5E118();
  sub_254E5903C(v33);
  v35 = *(v34 + 64);
  v0[40] = sub_254E59084();
  v36 = sub_254E5DCC8();
  v0[41] = v36;
  sub_254E59014(v36);
  v0[42] = v37;
  v39 = *(v38 + 64);
  v0[43] = sub_254E5D91C();
  v0[44] = swift_task_alloc();
  v40 = sub_254E5DC28();
  v0[45] = v40;
  sub_254E59014(v40);
  v0[46] = v41;
  v43 = *(v42 + 64);
  v0[47] = sub_254E59084();
  v44 = sub_254E57458(&qword_27F754DC8, &qword_254E5E640);
  sub_254E5903C(v44);
  v46 = *(v45 + 64);
  v0[48] = sub_254E5D91C();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v47 = sub_254E57458(&qword_27F754DD0, &unk_254E5E648);
  sub_254E5903C(v47);
  v49 = *(v48 + 64);
  v0[51] = sub_254E59084();
  v50 = sub_254E5DB38();
  v0[52] = v50;
  sub_254E59014(v50);
  v0[53] = v51;
  v53 = *(v52 + 64);
  v0[54] = sub_254E59084();
  v54 = sub_254E5DDC8();
  sub_254E5903C(v54);
  v56 = *(v55 + 64);
  v0[55] = sub_254E59084();
  v57 = sub_254E57458(&qword_27F754D58, &qword_254E5E530);
  sub_254E5903C(v57);
  v59 = *(v58 + 64);
  v0[56] = sub_254E59084();
  v60 = sub_254E5E068();
  v0[57] = v60;
  sub_254E59014(v60);
  v0[58] = v61;
  v63 = *(v62 + 64);
  v0[59] = sub_254E5D91C();
  v0[60] = swift_task_alloc();
  sub_254E5909C();

  return MEMORY[0x2822009F8](v64, v65, v66);
}

void sub_254E59534()
{
  v1 = sub_254E5E0C8();
  v2 = sub_254E5E0B8();
  v4 = v0[59];
  v3 = v0[60];
  v44 = v4;
  v45 = v0[47];
  v5 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  v39 = v0[57];
  v40 = v0[54];
  v41 = v0[51];
  v42 = v0[50];
  v43 = v0[24];
  v8 = v0[19];
  v9 = MEMORY[0x277D1E9C8];
  v0[10] = v1;
  v0[11] = v9;
  v0[7] = v2;
  v10 = v3;
  sub_254E5ABAC((v0 + 7), (v0 + 12));
  sub_254E5E138();
  sub_254E5E098();
  sub_254E5BAA4();
  sub_254E5E158();
  sub_254E5E148();
  sub_254E5E158();
  sub_254E5BAFC();
  sub_254E57458(&qword_27F754DE8, &qword_254E5E658);
  v11 = sub_254E5E0A8();
  sub_254E5D854(v11);
  v13 = v12;
  v15 = *(v14 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_254E5E600;
  (*(v13 + 16))(v17 + v16, v8, v11);
  sub_254E5E058();
  sub_254E5DF38();
  sub_254E5DF18();
  sub_254E5E1C8();
  sub_254E5D8F8();
  sub_254E574A0(v18, v19, v20, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_254E58B68(0, 0, v6, &unk_254E5E668, v22);
  sub_254E5DF08();
  sub_254E5DB08();
  v0[61] = sub_254E5DF28();
  sub_254E5DE38();
  (*(v5 + 16))(v44, v10, v39);
  v0[62] = sub_254E5DE28();
  sub_254E5DE78();

  sub_254E5DE58();
  v0[63] = sub_254E5DE48();
  sub_254E5DB28();
  sub_254E5DF48();
  sub_254E5D8F8();
  sub_254E574A0(v23, v24, v25, v26);
  sub_254E5D8F8();
  sub_254E574A0(v27, v28, v29, v30);
  sub_254E5DE68();
  v31 = *(MEMORY[0x277D1D6B8] + 4);
  v46 = *MEMORY[0x277D1D6B8] + MEMORY[0x277D1D6B8];
  v32 = swift_task_alloc();
  v0[64] = v32;
  *v32 = v0;
  v32[1] = sub_254E59A54;
  v33 = v0[54];
  v35 = v0[50];
  v34 = v0[51];
  v36 = v0[47];
  sub_254E5D948();

  __asm { BR              X6 }
}

uint64_t sub_254E59A54()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = v2[54];
  v6 = v2[53];
  v7 = v2[52];
  v8 = v2[51];
  v9 = v2[50];
  (*(v2[46] + 8))(v2[47], v2[45]);
  sub_254E5D7A4(v9, &qword_27F754DC8, &qword_254E5E640);
  sub_254E5D7A4(v8, &qword_27F754DD0, &unk_254E5E648);
  (*(v6 + 8))(v5, v7);
  sub_254E5909C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254E59C74()
{
  v1 = v0[48];
  v75 = v0[65];
  v76 = v0[49];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v51 = v0[35];
  v63 = v0[34];
  v65 = v0[32];
  v67 = v0[33];
  v69 = v0[31];
  v61 = v0[30];
  v8 = v0[29];
  v59 = v0[21];
  v71 = v0[20];
  v73 = v0[38];
  v55 = v0[24];
  v57 = v0[18];
  sub_254E5E108();
  sub_254E5DBA8();
  sub_254E5D8F8();
  sub_254E574A0(v9, v10, v11, v12);
  MEMORY[0x259C2A5C0](v7, 0, v6);
  (*(v5 + 104))(v3, *MEMORY[0x277D1CBF0], v4);
  sub_254E57458(&qword_27F754DF0, &qword_254E5E670);
  v13 = sub_254E5DEA8();
  sub_254E59014(v13);
  v15 = *(v14 + 72);
  v53 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_254E5E600;
  sub_254E5D8F8();
  sub_254E574A0(v18, v19, v20, v55);
  sub_254E5909C();
  sub_254E5DB58();
  sub_254E5D744(v76, v1, &qword_27F754DC8, &qword_254E5E640);
  (*(v5 + 16))(v2, v3, v4);
  sub_254E5D744(v57, v8, &qword_27F754DB8, &qword_254E5E630);

  sub_254E5DEC8();
  sub_254E5909C();
  sub_254E5DB58();
  (*(v65 + 16))(v67, v51, v69);
  sub_254E5DE98();
  (*(v65 + 8))(v51, v69);
  sub_254E5D7A4(v76, &qword_27F754DC8, &qword_254E5E640);
  sub_254E5AFD8(v17, v73);
  if (v75)
  {
    v21 = v0[62];
    v22 = v0[63];
    v23 = v0[61];
    v77 = v0[60];
    v24 = v0[57];
    v25 = v0[58];
    v26 = v0[44];
    v28 = v0[41];
    v27 = v0[42];

    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v77, v24);
    sub_254E5BC34(v0 + 7);
    v30 = v0[59];
    v29 = v0[60];
    v32 = v0[55];
    v31 = v0[56];
    v33 = v0[54];
    v35 = v0[50];
    v34 = v0[51];
    v36 = v0[48];
    v37 = v0[49];
    v38 = v0[47];
    v50 = v0[44];
    v52 = v0[43];
    v54 = v0[40];
    v56 = v0[39];
    v58 = v0[38];
    v60 = v0[35];
    v62 = v0[34];
    v64 = v0[33];
    v66 = v0[30];
    v68 = v0[29];
    v70 = v0[28];
    v72 = v0[25];
    v74 = v0[23];
    v78 = v0[22];

    sub_254E59048();

    return v39();
  }

  else
  {
    v41 = v0[49];
    v42 = v0[28];
    v44 = v0[24];
    v43 = v0[25];

    sub_254E5DB08();
    sub_254E5DB08();
    sub_254E574A0(v41, 0, 1, v44);
    sub_254E5DE08();
    v45 = *(MEMORY[0x277D1D6C0] + 4);
    v79 = (*MEMORY[0x277D1D6C0] + MEMORY[0x277D1D6C0]);
    v46 = swift_task_alloc();
    v0[66] = v46;
    *v46 = v0;
    v46[1] = sub_254E5A1DC;
    v47 = v0[63];
    v48 = v0[38];
    v49 = v0[28];

    return v79(v48, v49);
  }
}

uint64_t sub_254E5A1DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_254E59074();
  *v6 = v5;
  v7 = v4[66];
  v8 = v4[27];
  *v6 = *v2;
  v5[67] = v1;

  v9 = v4[28];
  v10 = v4[26];
  if (!v1)
  {
    v5[68] = a1;
  }

  (*(v8 + 8))(v9, v10);
  sub_254E5909C();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_254E5A35C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  sub_254E5B3FC(*(v0 + 544), v1);

  sub_254E5D744(v1, v2, &qword_27F754DB0, &qword_254E5E628);
  v3 = sub_254E5E048();
  v4 = sub_254E58EFC(v2, 1, v3);
  v6 = *(v0 + 496);
  v5 = *(v0 + 504);
  v7 = *(v0 + 480);
  v8 = *(v0 + 488);
  if (v4 == 1)
  {
    v9 = *(v0 + 464);
    v71 = *(v0 + 352);
    v74 = *(v0 + 456);
    v10 = *(v0 + 336);
    v11 = *(v0 + 296);
    v65 = *(v0 + 304);
    v68 = *(v0 + 328);
    v62 = *(v0 + 288);
    v59 = *(v0 + 184);
    sub_254E5D7A4(*(v0 + 176), &qword_27F754DB0, &qword_254E5E628);
    sub_254E5DEB8();
    sub_254E5BC80();
    swift_allocError();
    v12 = *(v0 + 48);
    v13 = *(v0 + 32);
    *v14 = *(v0 + 16);
    *(v14 + 16) = v13;
    *(v14 + 32) = v12;
    swift_willThrow();

    sub_254E5D7A4(v59, &qword_27F754DB0, &qword_254E5E628);
    (*(v11 + 8))(v65, v62);
    (*(v10 + 8))(v71, v68);
    (*(v9 + 8))(v7, v74);
    sub_254E5BC34((v0 + 56));
    v16 = *(v0 + 472);
    v15 = *(v0 + 480);
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v19 = *(v0 + 432);
    v21 = *(v0 + 400);
    v20 = *(v0 + 408);
    v23 = *(v0 + 384);
    v22 = *(v0 + 392);
    v24 = *(v0 + 376);
    v43 = *(v0 + 352);
    v45 = *(v0 + 344);
    v47 = *(v0 + 320);
    v49 = *(v0 + 312);
    v51 = *(v0 + 304);
    v53 = *(v0 + 280);
    v55 = *(v0 + 272);
    v57 = *(v0 + 264);
    v60 = *(v0 + 240);
    v63 = *(v0 + 232);
    v66 = *(v0 + 224);
    v69 = *(v0 + 200);
    v72 = *(v0 + 184);
    v75 = *(v0 + 176);
  }

  else
  {
    v25 = *(v0 + 464);
    v38 = *(v0 + 456);
    v39 = *(v0 + 472);
    v40 = *(v0 + 448);
    v41 = *(v0 + 440);
    v42 = *(v0 + 432);
    v44 = *(v0 + 408);
    v46 = *(v0 + 400);
    v48 = *(v0 + 392);
    v50 = *(v0 + 384);
    v52 = *(v0 + 376);
    v54 = *(v0 + 344);
    v26 = *(v0 + 336);
    v33 = *(v0 + 328);
    v34 = *(v0 + 352);
    v56 = *(v0 + 320);
    v58 = *(v0 + 312);
    v35 = *(v0 + 480);
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = *(v0 + 288);
    v61 = *(v0 + 280);
    v64 = *(v0 + 272);
    v67 = *(v0 + 264);
    v70 = *(v0 + 240);
    v73 = *(v0 + 232);
    v76 = *(v0 + 224);
    v77 = *(v0 + 200);
    v30 = *(v0 + 184);
    v36 = *(v0 + 136);
    v37 = *(v0 + 176);

    sub_254E5D7A4(v30, &qword_27F754DB0, &qword_254E5E628);
    (*(v27 + 8))(v28, v29);
    (*(v26 + 8))(v34, v33);
    (*(v25 + 8))(v35, v38);
    (*(*(v3 - 8) + 32))(v36, v37, v3);
    sub_254E5BC34((v0 + 56));
  }

  sub_254E59048();
  sub_254E5D948();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_254E5A87C()
{
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[57];
  v6 = v0[58];

  (*(v6 + 8))(v4, v5);
  sub_254E5BC34(v0 + 7);
  sub_254E5D868(v0[65]);

  sub_254E59048();

  return v7();
}

uint64_t sub_254E5A9F4()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v4 = v0[58];
  v13 = v0[57];
  v14 = v0[60];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[37];
  v9 = v0[38];
  v10 = v0[36];

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v14, v13);
  sub_254E5BC34(v0 + 7);
  sub_254E5D868(v0[67]);

  sub_254E59048();

  return v11();
}

uint64_t sub_254E5ABAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254E5AC10(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_254E5E0E8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254E5ACD0, 0, 0);
}

uint64_t sub_254E5ACD0()
{
  sub_254E590B4();
  v1 = *(v0 + 40);
  sub_254E5E0D8();
  v2 = *(MEMORY[0x277D727A0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_254E5AD6C;
  v4 = *(v0 + 40);

  return MEMORY[0x2821DADB0](v4);
}

uint64_t sub_254E5AD6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_254E59074();
  *v6 = v5;
  v7 = v4[6];
  *v6 = *v2;
  v5[7] = v1;

  v8 = v4[5];
  v9 = v4[4];
  v10 = v4[3];
  if (!v1)
  {
    v5[8] = a1;
  }

  (*(v9 + 8))(v8, v10);
  sub_254E5909C();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_254E5AEE8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v3 = v1;
  v3[1] = OpaqueTypeConformance2;

  sub_254E59048();

  return v5();
}

uint64_t sub_254E5AF7C()
{
  sub_254E590B4();
  v1 = *(v0 + 40);

  sub_254E59048();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_254E5AFD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_254E5DEF8();
  v5 = sub_254E5D854(v4);
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254E5D8D8();
  v46 = v10 - v9;
  v11 = sub_254E5E038();
  v12 = sub_254E5D854(v11);
  v50 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_254E5D8D8();
  v18 = v17 - v16;
  v56 = sub_254E5DB18();
  v19 = sub_254E5D854(v56);
  v49 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_254E5D8D8();
  v25 = v24 - v23;
  v26 = sub_254E5DFF8();
  v27 = sub_254E5903C(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_254E5D8D8();
  sub_254E5DB08();
  v55 = v25;
  sub_254E5DFD8();
  v58 = a2;
  sub_254E5DF68();
  v30 = *(a1 + 16);
  if (v30)
  {
    v54 = sub_254E5DEA8();
    sub_254E5D8E8(v54);
    v32 = *(v31 + 16);
    v31 += 16;
    v53 = v32;
    v33 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v52 = *(v31 + 56);
    v51 = *MEMORY[0x277D1E798];
    do
    {
      v53(v18, v33, v54);
      (*(v50 + 104))(v18, v51, v11);
      v34 = sub_254E5DF58();
      sub_254E5909C();
      sub_254E5B4A4(v35, v36, v37, v38);
      (*(v50 + 8))(v18, v11);
      (*(v49 + 8))(v55, v56);
      v34(v57, 0);
      v33 += v52;
      --v30;
    }

    while (v30);
  }

  sub_254E5DEE8();
  (*(v47 + 16))(v18, v46, v48);
  (*(v50 + 104))(v18, *MEMORY[0x277D1E838], v11);
  v39 = v11;
  v40 = sub_254E5DF58();
  sub_254E5909C();
  sub_254E5B4A4(v41, v42, v43, v44);
  (*(v50 + 8))(v18, v39);
  (*(v49 + 8))(v55, v56);
  v40(v57, 0);
  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_254E5B3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254E5E048();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254E574A0(a2, v7, 1, v6);
}

uint64_t sub_254E5B4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v55 = a4;
  v6 = sub_254E5E088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = sub_254E5E038();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254E57458(&qword_27F754DC8, &qword_254E5E640);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v47 - v14;
  v15 = sub_254E5DB18();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v47 - v20;
  v21 = sub_254E57458(&qword_27F754DB0, &qword_254E5E628);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v47 - v23;
  v25 = sub_254E5E048();
  v57 = *(v25 - 8);
  v26 = *(v57 + 64);
  v27 = MEMORY[0x28223BE20](a3);
  v51 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v47 - v30;
  v54 = v25;
  v56 = v19;
  if (v29)
  {
    v48 = a2;
    v49 = v29;
  }

  else
  {
    v47 = 0;
    v32 = sub_254E5DFC8();
    sub_254E5B9DC(v32, v24);

    if (sub_254E58EFC(v24, 1, v25) == 1)
    {
      sub_254E5D7A4(v24, &qword_27F754DB0, &qword_254E5E628);
      v48 = 49;
      v49 = 0xE100000000000000;
    }

    else
    {
      v33 = v57;
      (*(v57 + 32))(v31, v24, v25);
      v48 = sub_254E5E008();
      v49 = v34;
      (*(v33 + 8))(v31, v25);
    }
  }

  sub_254E5DB08();
  sub_254E5DFE8();
  v35 = v52;
  sub_254E5DB08();
  sub_254E574A0(v35, 0, 1, v15);
  (*(v8 + 16))(v11, v53, v50);
  v53 = sub_254E5DF88();
  v50 = v36;
  sub_254E5DFA8();
  sub_254E5DF98();
  sub_254E5E078();
  sub_254E5DE88();
  sub_254E5D7FC();
  sub_254E5E158();
  v37 = v51;
  sub_254E5E028();
  v38 = sub_254E5DFB8();
  v40 = v39;
  sub_254E5C0B8();
  v41 = *(*v40 + 16);
  sub_254E5C104(v41);
  v42 = *v40;
  *(v42 + 16) = v41 + 1;
  v43 = v57;
  v44 = v42 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v41;
  v45 = v54;
  (*(v57 + 16))(v44, v37, v54);
  v38(v59, 0);
  sub_254E5DFE8();
  return (*(v43 + 8))(v37, v45);
}

uint64_t sub_254E5B9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_254E5E048();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_254E5E048();
    v7 = a2;
    v8 = 1;
  }

  return sub_254E574A0(v7, v8, 1, v9);
}

unint64_t sub_254E5BAA4()
{
  result = qword_27F754DD8;
  if (!qword_27F754DD8)
  {
    sub_254E5E138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754DD8);
  }

  return result;
}

unint64_t sub_254E5BAFC()
{
  result = qword_27F754DE0;
  if (!qword_27F754DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754DE0);
  }

  return result;
}

uint64_t sub_254E5BB50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254E5BB88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_254E586D0;

  return sub_254E5AC10(a1);
}

uint64_t sub_254E5BC34(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_254E5BC80()
{
  result = qword_27F754DF8;
  if (!qword_27F754DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationPreviewTool(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ResponseGenerationPreviewTool(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254E5BDC8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_254E5BE00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254E5BE14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_254E5BE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_254E5BF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_254E5E258();
  sub_254E5E188();
  v7 = sub_254E5E268();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_254E5E208();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_254E5C088()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_254E5BEA4();
}

uint64_t sub_254E5C094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = v3[2];
  return sub_254E5BEAC(a1, a2, a3, *v3);
}

size_t sub_254E5C0B8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_254E5C144(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_254E5C104(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_254E5C144(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_254E5C144(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_254E5C230(v8, v7);
  v10 = *(sub_254E5E048() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254E5C32C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_254E5C230(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254E57458(&qword_27F754E28, &unk_254E5E760);
  v4 = *(sub_254E5E048() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254E5C32C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_254E5E048(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_254E5E048();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_254E5C400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = swift_bridgeObjectRetain_n();
  if (v10 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](v12);
    sub_254E5C5D8(0, v11, v23 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0));

    sub_254E5D904();
    v13 = a4();
    if (v5)
    {
      swift_willThrow();
    }

    else
    {
      a2 = v13;
    }

    goto LABEL_5;
  }

  v16 = swift_slowAlloc();

  sub_254E5D904();
  v22 = sub_254E5D24C(v17, v18, v19, v20, v21, a5);
  if (!v5)
  {
    a2 = v22;
  }

  MEMORY[0x259C2AE50](v16, -1, -1);
LABEL_5:
  swift_bridgeObjectRelease_n();

  v14 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_254E5C5D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254E5E610;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254E5C63C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v74 = a4;
  v69 = a2;
  v70 = a1;
  v91 = sub_254E57458(&qword_27F754E10, &qword_254E5E750);
  v6 = *(*(v91 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v91);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  v90 = sub_254E5E098();
  v12 = *(v90 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v90 - 8);
  v89 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254E5E138();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = 0;
  v83 = a3;
  v21 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 64);
  v73 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v71 = 0;
  v72 = (v23 + 63) >> 6;
  v79 = v12 + 16;
  v80 = v18 + 2;
  v87 = v11;
  v88 = v18;
  v84 = v18 + 1;
  v81 = v9;
  v82 = v12;
  v26 = (v12 + 8);
  v27 = v21;
  v77 = v26;
  v78 = v21;
  v28 = result;
  v75 = result;
  while (v25)
  {
    v86 = (v25 - 1) & v25;
    v29 = __clz(__rbit64(v25)) | (v20 << 6);
    v30 = v87;
LABEL_11:
    v33 = v83;
    v34 = v83[6] + v88[9] * v29;
    v85 = v88[2];
    v85(v27, v34, v28);
    v35 = v33[7];
    v36 = *(v82 + 72);
    v76 = v29;
    v37 = v35 + v36 * v29;
    v38 = *(v82 + 16);
    v39 = v27;
    v40 = v89;
    v41 = v90;
    v42 = v28;
    v43 = v39;
    v38(v89, v37, v90);
    v85(v30, v43, v42);
    v38((v30 + *(v91 + 48)), v40, v41);
    v44 = v81;
    sub_254E5D744(v30, v81, &qword_27F754E10, &qword_254E5E750);
    v45 = v30;
    v46 = sub_254E5E128();
    v48 = v47;
    v49 = v88[1];
    v49(v44, v42);
    if (v92)
    {
      v85 = v49;
      v50 = v78;
      if (v46 == v74 && v48 == v92)
      {

        v61 = *(v91 + 48);
        sub_254E5D7A4(v87, &qword_27F754E10, &qword_254E5E750);
        v62 = *v77;
        v63 = v44 + v61;
        v64 = v90;
        (*v77)(v63, v90);
        v62(v89, v64);
        v27 = v50;
        v65 = v50;
        v28 = v75;
        result = (v85)(v65, v75);
        v25 = v86;
LABEL_20:
        *(v70 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
        if (__OFADD__(v71++, 1))
        {
          __break(1u);
LABEL_23:
          v67 = sub_254E5D304(v70, v69, v71, v83, MEMORY[0x277D721E0], &qword_27F754E18, &qword_254E5E758);

          return v67;
        }
      }

      else
      {
        v52 = sub_254E5E208();

        v53 = *(v91 + 48);
        sub_254E5D7A4(v87, &qword_27F754E10, &qword_254E5E750);
        v54 = *v77;
        v55 = v90;
        (*v77)(v44 + v53, v90);
        v54(v89, v55);
        v27 = v50;
        v56 = v50;
        v28 = v75;
        result = (v85)(v56, v75);
        v25 = v86;
        if (v52)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      v57 = *(v91 + 48);
      sub_254E5D7A4(v45, &qword_27F754E10, &qword_254E5E750);
      v58 = *v77;
      v59 = v44 + v57;
      v60 = v90;
      (*v77)(v59, v90);
      v58(v89, v60);
      v28 = v42;
      v27 = v78;
      result = (v49)(v78, v42);
      v25 = v86;
    }
  }

  v31 = v20;
  v30 = v87;
  while (1)
  {
    v20 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v20 >= v72)
    {
      goto LABEL_23;
    }

    v32 = *(v73 + 8 * v20);
    ++v31;
    if (v32)
    {
      v86 = (v32 - 1) & v32;
      v29 = __clz(__rbit64(v32)) | (v20 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_254E5CC44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v74 = a4;
  v69 = a2;
  v70 = a1;
  v91 = sub_254E57458(&qword_27F754E00, &qword_254E5E740);
  v6 = *(*(v91 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v91);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  v90 = sub_254E5E148();
  v12 = *(v90 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v90 - 8);
  v89 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254E5E138();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = 0;
  v83 = a3;
  v21 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 64);
  v73 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v71 = 0;
  v72 = (v23 + 63) >> 6;
  v79 = v12 + 16;
  v80 = v18 + 2;
  v87 = v11;
  v88 = v18;
  v84 = v18 + 1;
  v81 = v9;
  v82 = v12;
  v26 = (v12 + 8);
  v27 = v21;
  v77 = v26;
  v78 = v21;
  v28 = result;
  v75 = result;
  while (v25)
  {
    v86 = (v25 - 1) & v25;
    v29 = __clz(__rbit64(v25)) | (v20 << 6);
    v30 = v87;
LABEL_11:
    v33 = v83;
    v34 = v83[6] + v88[9] * v29;
    v85 = v88[2];
    v85(v27, v34, v28);
    v35 = v33[7];
    v36 = *(v82 + 72);
    v76 = v29;
    v37 = v35 + v36 * v29;
    v38 = *(v82 + 16);
    v39 = v27;
    v40 = v89;
    v41 = v90;
    v42 = v28;
    v43 = v39;
    v38(v89, v37, v90);
    v85(v30, v43, v42);
    v38((v30 + *(v91 + 48)), v40, v41);
    v44 = v81;
    sub_254E5D744(v30, v81, &qword_27F754E00, &qword_254E5E740);
    v45 = v30;
    v46 = sub_254E5E128();
    v48 = v47;
    v49 = v88[1];
    v49(v44, v42);
    if (v92)
    {
      v85 = v49;
      v50 = v78;
      if (v46 == v74 && v48 == v92)
      {

        v61 = *(v91 + 48);
        sub_254E5D7A4(v87, &qword_27F754E00, &qword_254E5E740);
        v62 = *v77;
        v63 = v44 + v61;
        v64 = v90;
        (*v77)(v63, v90);
        v62(v89, v64);
        v27 = v50;
        v65 = v50;
        v28 = v75;
        result = (v85)(v65, v75);
        v25 = v86;
LABEL_20:
        *(v70 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
        if (__OFADD__(v71++, 1))
        {
          __break(1u);
LABEL_23:
          v67 = sub_254E5D304(v70, v69, v71, v83, MEMORY[0x277D733D8], &qword_27F754E08, &qword_254E5E748);

          return v67;
        }
      }

      else
      {
        v52 = sub_254E5E208();

        v53 = *(v91 + 48);
        sub_254E5D7A4(v87, &qword_27F754E00, &qword_254E5E740);
        v54 = *v77;
        v55 = v90;
        (*v77)(v44 + v53, v90);
        v54(v89, v55);
        v27 = v50;
        v56 = v50;
        v28 = v75;
        result = (v85)(v56, v75);
        v25 = v86;
        if (v52)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      v57 = *(v91 + 48);
      sub_254E5D7A4(v45, &qword_27F754E00, &qword_254E5E740);
      v58 = *v77;
      v59 = v44 + v57;
      v60 = v90;
      (*v77)(v59, v90);
      v58(v89, v60);
      v28 = v42;
      v27 = v78;
      result = (v49)(v78, v42);
      v25 = v86;
    }
  }

  v31 = v20;
  v30 = v87;
  while (1)
  {
    v20 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v20 >= v72)
    {
      goto LABEL_23;
    }

    v32 = *(v73 + 8 * v20);
    ++v31;
    if (v32)
    {
      v86 = (v32 - 1) & v32;
      v29 = __clz(__rbit64(v32)) | (v20 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_254E5D24C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_254E5D304(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v72 = a5(0);
  v13 = sub_254E5D854(v72);
  v68 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_254E5D934();
  v71 = v17;
  MEMORY[0x28223BE20](v18);
  v62 = v58 - v19;
  v20 = sub_254E5E138();
  v21 = sub_254E5D854(v20);
  v67 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_254E5D934();
  v70 = v25;
  MEMORY[0x28223BE20](v26);
  v61 = v58 - v27;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_254E57458(a6, a7);
  result = sub_254E5E1F8();
  v29 = result;
  if (a2 < 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = *a1;
  }

  v31 = 0;
  v58[3] = v67 + 16;
  v59 = a2;
  v69 = v67 + 32;
  v32 = result + 64;
  v60 = a1;
  v58[0] = a4;
  v58[1] = v68 + 32;
  v58[2] = v68 + 16;
  while (v30)
  {
    v33 = __clz(__rbit64(v30));
    v63 = (v30 - 1) & v30;
LABEL_16:
    v36 = v33 | (v31 << 6);
    v37 = a4[6];
    v38 = v67;
    v66 = *(v67 + 72);
    v39 = v61;
    (*(v67 + 16))(v61, v37 + v66 * v36, v20);
    v40 = a4[7];
    v41 = v68;
    v65 = *(v68 + 72);
    v42 = v40 + v65 * v36;
    v43 = v20;
    v44 = v62;
    v45 = v72;
    (*(v68 + 16))(v62, v42, v72);
    v64 = *(v38 + 32);
    v64(v70, v39, v43);
    v46 = *(v41 + 32);
    v47 = v44;
    v20 = v43;
    v46(v71, v47, v45);
    v48 = *(v29 + 40);
    sub_254E5BAA4();
    result = sub_254E5E168();
    v49 = -1 << *(v29 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v32 + 8 * (v50 >> 6))) == 0)
    {
      v53 = 0;
      v54 = (63 - v49) >> 6;
      a2 = v59;
      a1 = v60;
      while (++v51 != v54 || (v53 & 1) == 0)
      {
        v55 = v51 == v54;
        if (v51 == v54)
        {
          v51 = 0;
        }

        v53 |= v55;
        v56 = *(v32 + 8 * v51);
        if (v56 != -1)
        {
          v52 = __clz(__rbit64(~v56)) + (v51 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v52 = __clz(__rbit64((-1 << v50) & ~*(v32 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
    a2 = v59;
    a1 = v60;
LABEL_25:
    *(v32 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v64(*(v29 + 48) + v52 * v66, v70, v43);
    result = (v46)(*(v29 + 56) + v52 * v65, v71, v72);
    ++*(v29 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v58[0];
    v30 = v63;
    if (!a3)
    {
      return v29;
    }
  }

  v34 = v31;
  while (1)
  {
    v31 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v31 >= a2)
    {
      return v29;
    }

    v35 = a1[v31];
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v63 = (v35 - 1) & v35;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254E5D744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254E57458(a3, a4);
  sub_254E5D8E8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_254E5D7A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254E57458(a2, a3);
  sub_254E5D8E8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_254E5D7FC()
{
  result = qword_27F754E20;
  if (!qword_27F754E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754E20);
  }

  return result;
}

uint64_t sub_254E5D868@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v5 = v1[59];
  v4 = v1[60];
  v7 = v1[55];
  v6 = v1[56];
  v8 = v1[54];
  v9 = v1[50];
  v10 = v1[51];
  v12 = v1[48];
  v11 = v1[49];
  v13 = v1[47];
  v15 = v1[44];
  v16 = v1[43];
  v17 = v1[40];
  v18 = v1[39];
  v19 = v1[38];
  v20 = v1[35];
  v21 = v1[34];
  v22 = v1[33];
  v23 = v1[30];
  v24 = v1[29];
  v25 = v1[28];
  v26 = v1[25];
  v27 = v1[23];
  *(v2 - 88) = v1[22];
}

uint64_t sub_254E5D91C()
{

  return swift_task_alloc();
}

uint64_t sub_254E5D988(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E5DB48();
  v5 = sub_254E58EFC(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254E5D9E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_254E5DB48();

  return sub_254E574A0(a1, v5, a3, v6);
}

uint64_t type metadata accessor for PreviewToolError()
{
  result = qword_27F754E30;
  if (!qword_27F754E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254E5DA90()
{
  v0 = sub_254E5DB48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}