uint64_t sub_22BD5AD10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB77D4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SessionCoordinatorCommand(0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = *(*(sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_22BDB9B54();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD5AEFC, v1, 0);
}

void sub_22BD5AEFC()
{
  v2 = (v0 + 104);
  v1 = *(v0 + 104);
  v3 = *(v0 + 96);
  sub_22BB94F54(*(v0 + 16), v3);
  sub_22BB2F164(v3);
  if (v4)
  {
    sub_22BB325EC(*(v0 + 96), &unk_27D8E69E0, &qword_22BDC1660);
LABEL_12:
    v5 = (v0 + 48);
    v32 = *(v0 + 48);
    sub_22BDB63E4();
    v33 = sub_22BDB77C4();
    v34 = sub_22BDBB114();
    if (sub_22BB333C0(v34))
    {
      v35 = sub_22BB37F30();
      sub_22BB360F0(v35);
      sub_22BB2F0A8(&dword_22BB2C000, v36, v37, "Required conditions to post transaction not met. Skipping.");
      sub_22BB35600();
    }

    v6 = (v0 + 40);
    v2 = (v0 + 32);
    goto LABEL_15;
  }

  v5 = (v0 + 120);
  v6 = (v0 + 112);
  (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
  v7 = sub_22BDB99C4();
  v8 = *v5;
  if (v9)
  {
LABEL_11:
    (*(*v6 + 8))(v8, *v2);
    goto LABEL_12;
  }

  v10 = *v5;
  v11 = sub_22BDB9AA4();
  if (!v12)
  {
    v8 = *v5;
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  v53 = v7;
  sub_22BDB8404();
  sub_22BB89B88();
  v51 = v14;
  v52 = v13;
  sub_22BC54704();
  v15 = sub_22BBC03CC();

  if (v15)
  {
    sub_22BD649FC(*(v0 + 24));
    v18 = *(v17 + 144);
    v19 = *(v16 + v18);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
      return;
    }

    *(v16 + v18) = v21;
  }

  v22 = *(v0 + 120);
  v48 = *(v0 + 88);
  v49 = *(v0 + 80);
  v23 = *(v0 + 64);
  v50 = *(v0 + 72);
  v24 = *(v0 + 16);
  v46 = *(v0 + 56);
  sub_22BD649FC(*(v0 + 24));
  v47 = *(v25 + 176);
  v45 = (v23 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
  v26 = (v23 + *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48));
  *v23 = v24;
  v27 = type metadata accessor for SpanMetadata();
  v28 = v27[6];

  sub_22BDB9964();
  v29 = sub_22BDB9A24();
  *v26 = v53;
  v26[1] = v52;
  v26[2] = v51;
  v30 = (v26 + v27[7]);
  *v30 = v29;
  v30[1] = v31;
  *(v26 + v27[8]) = MEMORY[0x277D84F90];
  *(v26 + v27[9]) = 0;
  *(v26 + v27[10]) = 0;
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  swift_storeEnumTagMultiPayload();
  *v45 = sub_22BB70024;
  v45[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BBB797C();
  sub_22BDBAF34();
  (*(v49 + 8))(v48, v50);
LABEL_15:
  v38 = *v6;
  v39 = *(v0 + 120);
  v41 = *(v0 + 88);
  v40 = *(v0 + 96);
  v42 = *(v0 + 64);
  v43 = *(v0 + 48);
  (*(v38 + 8))(*v5, *v2);

  sub_22BB2F09C();

  v44();
}

uint64_t sub_22BD5B268()
{
  v1 = sub_22BDB5F24();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22BDB9904();
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v51 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22BDB9B54();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v50);
  v41 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = sub_22BDB9774();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BDB96E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*v0 + 128);
  swift_beginAccess();
  v23 = v0 + v22;
  v24 = v0;
  (*(v18 + 16))(v21, v23, v17);
  sub_22BDB96A4();
  (*(v18 + 8))(v21, v17);
  v25 = sub_22BDB9744();
  (*(v13 + 8))(v16, v12);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_22BDB47A4();
    v46 = qword_28142AC88;
    v47 = v27;
    v29 = *(v6 + 16);
    v28 = v6 + 16;
    v30 = *(v28 + 64);
    v40[1] = v25;
    v31 = v25 + ((v30 + 32) & ~v30);
    v44 = *(v28 + 56);
    v45 = v29;
    v43 = v24;
    v48 = v28;
    v32 = (v28 - 8);
    v33 = v41;
    v34 = v42;
    v35 = v50;
    do
    {
      v36 = v45;
      v45(v11, v31, v35);
      v36(v33, v11, v35);
      sub_22BDB99B4();
      sub_22BDB98F4();
      sub_22BB335C0(v43 + v46, v34);
      sub_22BDB4374();
      v37 = sub_22BDB43E4();
      (*(*(v37 - 8) + 8))(v34, v37);
      v38 = MEMORY[0x277D1E688];
      sub_22BB3B194(&qword_281428970, MEMORY[0x277D1E688]);
      sub_22BB3B194(&qword_281428978, v38);
      sub_22BDB4784();
      v35 = v50;

      sub_22BB34648();
      (*v32)(v11, v35);
      v31 += v44;
      --v26;
    }

    while (v26);
  }
}

uint64_t sub_22BD5B764()
{
  v1 = sub_22BDB96E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 128);
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  sub_22BDB96C4();
  (*(v2 + 8))(v5, v1);
  sub_22BDB98D4();
}

uint64_t sub_22BD5B890(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = *(*(type metadata accessor for EventPayloadWithPreassignedID(0) - 8) + 80);
  return a1;
}

void sub_22BD5B954()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BB30F68();
  v63 = v5(v4);
  sub_22BB30444(v63);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v62 = &v55 - v11;
  v12 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v13 = *(*v0 + 24);
  }

  v14 = sub_22BB37074();
  sub_22BBE6DE0(v14, v15);
  v60 = v3;
  v16 = sub_22BDBB514();
  if (!*(v12 + 16))
  {
LABEL_32:

LABEL_33:
    *v1 = v16;
    sub_22BB314EC();
    return;
  }

  v17 = 0;
  v19 = (v12 + 64);
  v18 = *(v12 + 64);
  v20 = *(v12 + 32);
  sub_22BD5FC48();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v56 = v1;
  v57 = (v7 + 16);
  v58 = v12;
  v59 = v7;
  v61 = (v7 + 32);
  v26 = v16 + 64;
  if ((v22 & v21) == 0)
  {
LABEL_6:
    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v25)
      {
        break;
      }

      ++v28;
      if (v19[v17])
      {
        sub_22BD61734();
        v23 = v30 & v29;
        goto LABEL_11;
      }
    }

    if ((v60 & 1) == 0)
    {

      v1 = v56;
      goto LABEL_33;
    }

    v49 = *(v12 + 32);
    sub_22BD61774();
    v1 = v56;
    if (v50 != v51)
    {
      sub_22BD638D4();
      *v19 = v52;
    }

    else
    {
      v53 = sub_22BD61724();
      sub_22BBC0B54(v53, v54, v19);
    }

    *(v12 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_11:
    v31 = v27 | (v17 << 6);
    v32 = *(v12 + 56);
    v33 = (*(v12 + 48) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v59 + 72);
    v37 = v32 + v36 * v31;
    if (v60)
    {
      (*v61)(v62, v37, v63);
    }

    else
    {
      (*v57)(v62, v37, v63);
    }

    v38 = *(v16 + 40);
    sub_22BDBB814();
    sub_22BDBAC54();
    sub_22BDBB834();
    v39 = *(v16 + 32);
    sub_22BD60BF0();
    v41 = *(v26 + 8 * v40);
    sub_22BD63668();
    if (v42)
    {
      break;
    }

    sub_22BD64BCC();
LABEL_24:
    sub_22BD638E0(v43);
    v48 = (*(v16 + 48) + 16 * v47);
    *v48 = v35;
    v48[1] = v34;
    (*v61)((*(v16 + 56) + v36 * v47), v62, v63);
    ++*(v16 + 16);
    v12 = v58;
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v42)
    {
      if (v45)
      {
        break;
      }
    }

    if (v44 == v46)
    {
      v44 = 0;
    }

    if (*(v26 + 8 * v44) != -1)
    {
      sub_22BD64BB8();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_22BD5BC2C()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v5 = sub_22BDB7B44();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v13 = v12 - v11;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6648, &qword_22BDCE5D8);
  sub_22BB37494();
  v14 = sub_22BB6FF00();
  if (!*(v2 + 16))
  {
LABEL_30:

LABEL_31:
    *v0 = v14;
    sub_22BB314EC();
    return;
  }

  v44 = v0;
  v15 = 0;
  v17 = (v2 + 64);
  v16 = *(v2 + 64);
  v18 = *(v2 + 32);
  sub_22BD5FC48();
  sub_22BD63058();
  if (!v4)
  {
LABEL_4:
    v19 = v15;
    while (1)
    {
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v13)
      {
        break;
      }

      ++v19;
      if (v17[v15])
      {
        sub_22BD61734();
        v4 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v0 = v44;
      goto LABEL_31;
    }

    v38 = *(v2 + 32);
    sub_22BD61774();
    v0 = v44;
    if (v39 != v40)
    {
      sub_22BD638D4();
      *v17 = v41;
    }

    else
    {
      v42 = sub_22BD61724();
      sub_22BBC0B54(v42, v43, v17);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22BBB63F4();
LABEL_9:
    sub_22BD638B4();
    if (v22)
    {
      v23 = sub_22BD61C30();
      v24(v23);
      v46 = *(*(v2 + 56) + 8 * v1);
    }

    else
    {
      v25 = sub_22BD61C30();
      v26(v25);
      v47 = *(*(v2 + 56) + 8 * v1);
    }

    v27 = *(v14 + 40);
    sub_22BB3B194(&qword_27D8E3070, MEMORY[0x277D1D608]);
    sub_22BB69A84();
    v1 = v3;
    v2 = v5;
    sub_22BDBABA4();
    v28 = *(v14 + 32);
    sub_22BD60BF0();
    v30 = *(v8 + 8 * v29);
    sub_22BD63668();
    if (v31)
    {
      break;
    }

    sub_22BD61144();
LABEL_22:
    sub_22BB72B90();
    v36 = sub_22BD63030(v35);
    v37(v36);
    sub_22BD635FC();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v31)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v8 + 8 * v32) != -1)
    {
      sub_22BB9748C();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22BD5BEA8()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v5 = sub_22BDB4C34();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v13 = v12 - v11;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6688, &qword_22BDCE630);
  sub_22BB37494();
  v14 = sub_22BB6FF00();
  if (!*(v2 + 16))
  {
LABEL_30:

LABEL_31:
    *v0 = v14;
    sub_22BB314EC();
    return;
  }

  v45 = v0;
  v15 = 0;
  v17 = (v2 + 64);
  v16 = *(v2 + 64);
  v18 = *(v2 + 32);
  sub_22BD5FC48();
  sub_22BD63058();
  if (!v4)
  {
LABEL_4:
    v19 = v15;
    while (1)
    {
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v13)
      {
        break;
      }

      ++v19;
      if (v17[v15])
      {
        sub_22BD61734();
        v4 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v46 & 1) == 0)
    {

      v0 = v45;
      goto LABEL_31;
    }

    v39 = *(v2 + 32);
    sub_22BD61774();
    v0 = v45;
    if (v40 != v41)
    {
      sub_22BD638D4();
      *v17 = v42;
    }

    else
    {
      v43 = sub_22BD61724();
      sub_22BBC0B54(v43, v44, v17);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22BBB63F4();
LABEL_9:
    sub_22BD638B4();
    if (v22)
    {
      v23 = sub_22BD61C30();
      v24(v23);
      v47 = *(*(v2 + 56) + 8 * v1);
    }

    else
    {
      v25 = sub_22BD61C30();
      v26(v25);
      v48 = *(*(v2 + 56) + 8 * v1);
    }

    v27 = *(v14 + 40);
    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v28);
    sub_22BB69A84();
    v1 = v3;
    v2 = v5;
    sub_22BDBABA4();
    v29 = *(v14 + 32);
    sub_22BD60BF0();
    v31 = *(v8 + 8 * v30);
    sub_22BD63668();
    if (v32)
    {
      break;
    }

    sub_22BD61144();
LABEL_22:
    sub_22BB72B90();
    v37 = sub_22BD63030(v36);
    v38(v37);
    sub_22BD635FC();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    if (*(v8 + 8 * v33) != -1)
    {
      sub_22BB9748C();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22BD5C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  sub_22BB30F68();
  v98 = sub_22BDB4C34();
  v26 = sub_22BB30444(v98);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB305A8();
  v97 = v31;
  v32 = sub_22BB2F120();
  v33 = type metadata accessor for FeedbackLearning.CandidateParameter(v32);
  v34 = sub_22BB30444(v33);
  v100 = v35;
  v101 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30560();
  v99 = v38;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v39);
  v41 = &v92 - v40;
  v42 = *v20;
  if (*(*v20 + 24) > v20)
  {
    v43 = *(*v20 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E4020, &qword_22BDC1828);
  sub_22BB95B5C();
  v102 = v25;
  v44 = sub_22BDBB514();
  if (!*(v42 + 16))
  {
LABEL_38:

LABEL_39:
    *v23 = v44;
    sub_22BB314EC();
    return;
  }

  v105 = v41;
  v93 = v23;
  v45 = 0;
  v47 = (v42 + 64);
  v46 = *(v42 + 64);
  v48 = *(v42 + 32);
  sub_22BD5FC48();
  v51 = v50 & v49;
  v53 = (v52 + 63) >> 6;
  v94 = (v28 + 8);
  v95 = (v28 + 32);
  v54 = v44 + 64;
  v55 = v99;
  v96 = v42;
  if ((v50 & v49) == 0)
  {
LABEL_6:
    v57 = v45;
    while (1)
    {
      v45 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v45 >= v53)
      {
        break;
      }

      ++v57;
      if (v47[v45])
      {
        sub_22BD61734();
        v51 = v59 & v58;
        goto LABEL_11;
      }
    }

    if ((v102 & 1) == 0)
    {

      v23 = v93;
      goto LABEL_39;
    }

    v86 = *(v42 + 32);
    sub_22BD61774();
    v23 = v93;
    if (v87 != v88)
    {
      sub_22BD638D4();
      *v47 = v89;
    }

    else
    {
      v90 = sub_22BD61724();
      sub_22BBC0B54(v90, v91, v47);
    }

    *(v42 + 16) = 0;
    goto LABEL_38;
  }

  while (1)
  {
    sub_22BD64878();
LABEL_11:
    v60 = v56 | (v45 << 6);
    v61 = *(v42 + 48);
    v104 = *(v100 + 72);
    if (v102)
    {
      sub_22BB6BF2C();
      sub_22BB3A518(v62, v63);
      v103 = *(*(v42 + 56) + 8 * v60);
    }

    else
    {
      sub_22BB6BF2C();
      sub_22BB335C0(v64, v65);
      v103 = *(*(v42 + 56) + 8 * v60);
    }

    v66 = *(v44 + 40);
    sub_22BDBB814();
    v67 = sub_22BB34FB8();
    sub_22BB335C0(v67, v68);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v77 = *v55;
        v78 = v99[1];
        MEMORY[0x2318A57F0](3);
        v42 = v96;
        sub_22BDBAC54();
        v55 = v99;

        break;
      case 2u:
        v76 = 0;
        goto LABEL_18;
      case 3u:
        v76 = 1;
LABEL_18:
        MEMORY[0x2318A57F0](v76);
        break;
      default:
        v69 = *v95;
        v70 = sub_22BB34FB8();
        v71(v70);
        MEMORY[0x2318A57F0](2);
        sub_22BB52EBC();
        sub_22BB3B194(&qword_28142DD18, v72);
        sub_22BDBABB4();
        v73 = *v94;
        v74 = sub_22BB34FB8();
        v55 = v99;
        v75(v74);
        break;
    }

    sub_22BDBB834();
    v79 = *(v44 + 32);
    sub_22BD60BF0();
    v81 = *(v54 + 8 * v80);
    sub_22BD63668();
    if (v82)
    {
      break;
    }

    sub_22BD61144();
LABEL_30:
    *(v54 + ((v106 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (&a19 + 96);
    sub_22BB3A518(v105, *(v44 + 48) + v104 * v106);
    *(*(v44 + 56) + 8 * v106) = v103;
    ++*(v44 + 16);
    if (!v51)
    {
      goto LABEL_6;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v82)
    {
      if (v84)
      {
        break;
      }
    }

    if (v83 == v85)
    {
      v83 = 0;
    }

    if (*(v54 + 8 * v83) != -1)
    {
      sub_22BB9748C();
      goto LABEL_30;
    }
  }

LABEL_41:
  __break(1u);
}

void sub_22BD5C5AC()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = sub_22BB30F68();
  v3 = type metadata accessor for FeedbackLearning.FlowExpressionValue(v2);
  v4 = sub_22BB30434(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v63 = v7;
  sub_22BB2F120();
  v8 = sub_22BDB4C34();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v62 = v14;
  v15 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v16 = *(*v0 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E6148, &qword_22BDCD6A8);
  sub_22BB31F54();
  v17 = sub_22BB6FF00();
  if (!*(v15 + 16))
  {
LABEL_32:

LABEL_33:
    *v1 = v17;
    sub_22BB314EC();
    return;
  }

  v56 = v1;
  v18 = 0;
  v20 = (v15 + 64);
  v19 = *(v15 + 64);
  v21 = *(v15 + 32);
  sub_22BD5FC48();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v57 = v11;
  v60 = (v11 + 32);
  v27 = v17 + 64;
  v58 = v15;
  if ((v23 & v22) == 0)
  {
LABEL_6:
    v29 = v18;
    while (1)
    {
      v18 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v18 >= v26)
      {
        break;
      }

      ++v29;
      if (v20[v18])
      {
        sub_22BD61734();
        v24 = v31 & v30;
        goto LABEL_11;
      }
    }

    if ((v59 & 1) == 0)
    {

      v1 = v56;
      goto LABEL_33;
    }

    v50 = *(v15 + 32);
    sub_22BD61774();
    v1 = v56;
    if (v51 != v52)
    {
      sub_22BD638D4();
      *v20 = v53;
    }

    else
    {
      v54 = sub_22BD61724();
      sub_22BBC0B54(v54, v55, v20);
    }

    *(v15 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    sub_22BBB63F4();
LABEL_11:
    v61 = *(v11 + 72);
    v32 = *(v15 + 48) + v61 * (v28 | (v18 << 6));
    v33 = sub_22BB73F44();
    v34(v33);
    if (v59)
    {
      sub_22BD64BA4();
      sub_22BD627F4();
      sub_22BB3A518(v35, v63);
    }

    else
    {
      v36 = sub_22BD64BA4();
      sub_22BB335C0(v36, v63);
    }

    v37 = *(v17 + 40);
    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v38);
    sub_22BB69A84();
    sub_22BDBABA4();
    v39 = *(v17 + 32);
    sub_22BD60BF0();
    v41 = *(v27 + 8 * v40);
    sub_22BD63668();
    if (v42)
    {
      break;
    }

    sub_22BD61144();
LABEL_24:
    sub_22BB72B90();
    *(v27 + v46) |= v47;
    (*v60)(*(v17 + 48) + v61 * v11, v62, v8);
    v48 = *(v17 + 56);
    sub_22BD627F4();
    sub_22BB3A518(v63, v49);
    ++*(v17 + 16);
    v11 = v57;
    v15 = v58;
    if (!v24)
    {
      goto LABEL_6;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v42)
    {
      if (v44)
      {
        break;
      }
    }

    if (v43 == v45)
    {
      v43 = 0;
    }

    if (*(v27 + 8 * v43) != -1)
    {
      sub_22BB9748C();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_22BD5C910()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v4 = sub_22BDB4C34();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30560();
  v59 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v54 = &v49 - v12;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6118, &qword_22BDCD670);
  sub_22BB37494();
  v55 = v2;
  v60 = sub_22BDBB514();
  if (!*(v1 + 16))
  {
LABEL_27:

LABEL_28:
    *v0 = v60;
    sub_22BB314EC();
    return;
  }

  v50 = v0;
  v13 = 0;
  v15 = (v1 + 64);
  v14 = *(v1 + 64);
  v16 = *(v1 + 32);
  sub_22BD5FC48();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v51 = v7 + 16;
  v52 = v1;
  v53 = v7;
  v56 = (v7 + 32);
  v22 = v60 + 64;
  if (!v19)
  {
LABEL_4:
    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v21)
      {
        break;
      }

      ++v23;
      if (v15[v13])
      {
        sub_22BD61734();
        v58 = v25 & v24;
        goto LABEL_9;
      }
    }

    if ((v55 & 1) == 0)
    {

      v0 = v50;
      goto LABEL_28;
    }

    v43 = *(v1 + 32);
    sub_22BD61774();
    v0 = v50;
    if (v44 != v45)
    {
      sub_22BD638D4();
      *v15 = v46;
    }

    else
    {
      v47 = sub_22BD61724();
      sub_22BBC0B54(v47, v48, v15);
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v58 = (v19 - 1) & v19;
LABEL_9:
    v26 = *(v1 + 48);
    v57 = *(v53 + 72);
    v27 = sub_22BB70078();
    (v2)(v27);
    v28 = sub_22BD648A0();
    (v2)(v28);
    v29 = v60;
    v30 = *(v60 + 40);
    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v31);
    sub_22BB69A84();
    sub_22BDBABA4();
    v32 = *(v29 + 32);
    sub_22BD60BF0();
    v34 = *(v22 + 8 * v33);
    sub_22BD63668();
    if (v35)
    {
      break;
    }

    sub_22BD64BCC();
LABEL_19:
    sub_22BD638E0(v36);
    v2 = v60;
    v41 = v57 * v40;
    v42 = *v56;
    (*v56)(*(v60 + 48) + v57 * v40, v3, v4);
    v42(*(v2 + 56) + v41, v59, v4);
    ++*(v2 + 16);
    v1 = v52;
    v19 = v58;
    if (!v58)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v35)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    if (*(v22 + 8 * v37) != -1)
    {
      sub_22BD64BB8();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22BD5CC44()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v58 = sub_22BDB89F4();
  v3 = sub_22BB30444(v58);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v57 = v8;
  sub_22BB2F120();
  v9 = sub_22BDB4C34();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v59 = v15;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6110, &unk_22BDCE620);
  sub_22BB37494();
  v53 = v2;
  v16 = sub_22BDBB514();
  v17 = v16;
  if (*(v1 + 16))
  {
    v18 = 0;
    v19 = v12;
    v20 = (v1 + 64);
    v21 = 1 << *(v1 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v1 + 64);
    v24 = (v21 + 63) >> 6;
    v51 = (v19 + 16);
    v52 = v1;
    v54 = (v5 + 32);
    v55 = (v19 + 32);
    v25 = v16 + 64;
    while (v23)
    {
      sub_22BD64878();
LABEL_13:
      v56 = *(v27 + 72);
      v31 = *(v1 + 48) + v56 * (v26 | (v18 << 6));
      if (v53)
      {
        (*v55)(v59, v31, v9);
        sub_22BD6488C();
        (*(v32 + 32))(v57);
      }

      else
      {
        (*v51)(v59, v31, v9);
        sub_22BD6488C();
        (*(v33 + 16))(v57);
      }

      v34 = *(v17 + 40);
      sub_22BB52EBC();
      sub_22BB3B194(&qword_28142DD18, v35);
      sub_22BB69A84();
      sub_22BDBABA4();
      v36 = *(v17 + 32);
      sub_22BD60BF0();
      v38 = *(v25 + 8 * v37);
      sub_22BD63668();
      if (v39)
      {
        sub_22BD60BDC();
        while (1)
        {
          sub_22BB97184();
          if (v39)
          {
            if (v41)
            {
              break;
            }
          }

          if (v40 == v42)
          {
            v40 = 0;
          }

          if (*(v25 + 8 * v40) != -1)
          {
            sub_22BB9748C();
            goto LABEL_26;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      sub_22BD61144();
LABEL_26:
      sub_22BB72B90();
      *(v25 + v43) |= v44;
      (*v55)(*(v17 + 48) + v56 * v59, v59, v9);
      (*v54)(*(v17 + 56) + v1 * v59, v57, v58);
      ++*(v17 + 16);
      v1 = v52;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v18 >= v24)
      {
        break;
      }

      ++v28;
      if (v20[v18])
      {
        sub_22BD61734();
        v23 = v30 & v29;
        goto LABEL_13;
      }
    }

    if (v53)
    {
      v45 = *(v1 + 32);
      sub_22BD61774();
      if (v46 != v47)
      {
        sub_22BD638D4();
        *v20 = v48;
      }

      else
      {
        v49 = sub_22BD61724();
        sub_22BBC0B54(v49, v50, v20);
      }

      *(v1 + 16) = 0;
    }
  }

  *v0 = v17;
  sub_22BB314EC();
}

uint64_t sub_22BD5CFEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E65A8, &qword_22BDCE4A8);
  v39 = a2;
  result = sub_22BDBB514();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_22BBC0B54(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = (*(v5 + 48) + 16 * v19);
    v22 = v21[1];
    v23 = (v20 + 16 * v19);
    v24 = v23[1];
    v40 = *v21;
    v41 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_22BB97200();
    result = sub_22BDBABA4();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v40;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v41;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22BD5D2A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E6580, &qword_22BDCE480);
  v38 = a2;
  result = sub_22BDBB514();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_22BBC0B54(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_22BDBB814();
    sub_22BDBAC54();
    result = sub_22BDBB834();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22BD5D600(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = sub_22BD60F04();
  sub_22BB3B194(v3, v4);
  return sub_22BDBABD4() & 1;
}

uint64_t sub_22BD5D684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22BDBB6D4() & 1;
  }
}

uint64_t sub_22BD5D6C8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v30 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v32 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    sub_22BB72B1C();
    v13 = v12;
    v14 = v10[2];
    v15 = (v11 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_17;
    }

    v17 = v11;
    if (v10[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E65B0, &qword_22BDCE4B0);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5CFEC(v16, a2 & 1);
      v18 = *a3;
      sub_22BB72B1C();
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v13 = v19;
    }

    v21 = *a3;
    if (v17)
    {

      v22 = (v21[7] + 16 * v13);
      v23 = v22[1];
      *v22 = v8;
      v22[1] = v9;
    }

    else
    {
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v24 = (v21[6] + 16 * v13);
      *v24 = v7;
      v24[1] = v6;
      v25 = (v21[7] + 16 * v13);
      *v25 = v8;
      v25[1] = v9;
      v26 = v21[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v21[2] = v28;
    }

    v4 = v32 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

void sub_22BD5D89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22BD5E968(a1, a2, a3, v50);
  v41 = v50[0];
  v6 = v50[3];
  v7 = v50[4];
  v40 = v50[5];
  v38 = (v50[2] + 64) >> 6;
  v39 = v50[1];

  for (i = v6; ; v6 = i)
  {
    v9 = v7;
    if (!v7)
    {
      v10 = v6;
      while (1)
      {
        i = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (i >= v38)
        {
          sub_22BBCD888();

          return;
        }

        v9 = *(v39 + 8 * i);
        ++v10;
        if (v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_22BDBB744();
      __break(1u);
      goto LABEL_25;
    }

LABEL_7:
    v11 = (i << 10) | (16 * __clz(__rbit64(v9)));
    v12 = (*(v41 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v41 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];
    v46 = v13;
    v47 = v14;
    v48 = v16;
    v49 = v17;

    v40(&v43, &v46);

    v18 = v43;
    v19 = v44;
    v20 = v45;
    v46 = v43;
    v47 = v44;
    v21 = *a5;
    v23 = sub_22BD8446C();
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_22;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a4)
    {
      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E6588, &qword_22BDCE488);
      sub_22BDBB4B4();
      if (v27)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v31 = *a5;
    *(*a5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v32 = (v31[6] + 16 * v23);
    *v32 = v18;
    v32[1] = v19;
    *(v31[7] + 8 * v23) = v20;
    v33 = v31[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_23;
    }

    v7 = (v9 - 1) & v9;
    v31[2] = v35;
    a4 = 1;
  }

  sub_22BD5D2A4(v26, a4 & 1);
  v28 = *a5;
  v29 = sub_22BD8446C();
  if ((v27 & 1) != (v30 & 1))
  {
    goto LABEL_24;
  }

  v23 = v29;
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v36 = swift_allocError();
  swift_willThrow();

  v51 = v36;
  v37 = v36;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22BBCD888();

    return;
  }

LABEL_25:
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD00000000000001BLL, 0x800000022BDD3D70);
  sub_22BDBB474();
  MEMORY[0x2318A4C40](39, 0xE100000000000000);
  sub_22BDBB4D4();
  __break(1u);
}

uint64_t sub_22BD5DC78(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    sub_22BD5EC9C(result, a2, a3 & 1);
    return v3;
  }

  return result;
}

unint64_t sub_22BD5DCCC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_22BDB9B54();
      sub_22BB2F330(v6);
      return (*(v7 + 16))(a3, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BD5DD64@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
      return sub_22BB335C0(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD5DE58(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = (*v2 + 16);
  v8 = *v7;
  v9 = sub_22BDB89F4();
  v10 = v9;
  if (v8 >= a2)
  {
    v20 = *(v9 - 8);
    v21 = *(v20 + 80);
    sub_22BBE6DE0(&qword_27D8E6680, &unk_22BDCE610);
    v22 = *(v20 + 72);
    v13 = swift_allocObject();
    v23 = *(v6 + 24);
    *(v13 + 16) = v8;
    *(v13 + 24) = v23;
    if (v23 >= 1)
    {
      sub_22BD5E544(v13 + 16, v13 + ((v21 + 40) & ~v21), v7, v6 + ((v21 + 40) & ~v21), MEMORY[0x277D1DF58]);
    }
  }

  else
  {
    sub_22BDB6014();
    v11 = *(*(v10 - 8) + 80);
    if (a1)
    {
      v12 = *(v6 + 24);
      sub_22BBE6DE0(&qword_27D8E6680, &unk_22BDCE610);
      v13 = sub_22BD6433C();
      sub_22BD616B4();
      *(v13 + 16) = sub_22BB89514();
      *(v13 + 24) = v12;
      *(v13 + 32) = 0;
      if (v12 >= 1)
      {
        sub_22BD63F38();
        sub_22BD5E654(v14, v15, v16, v17, v18, v19);
        *(v6 + 24) = 0;
      }
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E6680, &unk_22BDCE610);
      v13 = sub_22BD6433C();
      sub_22BD616B4();
      v24 = sub_22BB89514();
      v25 = *(v6 + 24);
      *(v13 + 16) = v24;
      *(v13 + 24) = v25;
      *(v13 + 32) = 0;
      if (v25 >= 1)
      {
        sub_22BD63F38();
        sub_22BD5E790(v26, v27, v28, v29, v30);
      }
    }
  }

  *v3 = v13;
  return result;
}

uint64_t sub_22BD5E0A4(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = (*v2 + 16);
  v8 = *v7;
  v9 = type metadata accessor for SessionCoordinatorCommand(0);
  v10 = v9;
  if (v8 >= a2)
  {
    v16 = *(v9 - 8);
    v17 = *(v16 + 80);
    sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
    v18 = *(v16 + 72);
    v15 = swift_allocObject();
    v19 = *(v6 + 24);
    *(v15 + 16) = v8;
    *(v15 + 24) = v19;
    if (v19 >= 1)
    {
      sub_22BD5E544(v15 + 16, v15 + ((v17 + 40) & ~v17), v7, v6 + ((v17 + 40) & ~v17), type metadata accessor for SessionCoordinatorCommand);
    }
  }

  else
  {
    sub_22BDB6014();
    v11 = *(v10 - 8);
    v12 = *(v11 + 80);
    if (a1)
    {
      v13 = *(v6 + 24);
      sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
      v14 = *(v11 + 72);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_22BB89514();
      *(v15 + 24) = v13;
      *(v15 + 32) = 0;
      if (v13 >= 1)
      {
        sub_22BD5E654(v15 + 16, v15 + ((v12 + 40) & ~v12), v7, v6 + ((v12 + 40) & ~v12), type metadata accessor for SessionCoordinatorCommand, sub_22BD278A4);
        *(v6 + 24) = 0;
      }
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
      v20 = *(v11 + 72);
      v15 = swift_allocObject();
      v21 = sub_22BB89514();
      v22 = *(v6 + 24);
      *(v15 + 16) = v21;
      *(v15 + 24) = v22;
      *(v15 + 32) = 0;
      if (v22 >= 1)
      {
        sub_22BD5E790(v15 + 16, v15 + ((v12 + 40) & ~v12), v7, v6 + ((v12 + 40) & ~v12), type metadata accessor for SessionCoordinatorCommand);
      }
    }
  }

  *v3 = v15;
  return result;
}

void *sub_22BD5E348(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_22BDB89F4();
        sub_22BB2F330(v10);
        result = (*(v11 + 16))(a2 + *(v11 + 72) * v5, a3);
        v12 = v8[1];
        v9 = __OFADD__(v12, 1);
        v13 = v12 + 1;
        if (!v9)
        {
          v8[1] = v13;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22BD5E440(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = a1(0);
  v8 = *(v6 + 16);
  v9 = *(v7 - 8);
  v10 = *(v9 + 80);
  v11 = sub_22BB3FBBC();
  sub_22BBE6DE0(v11, v12);
  v13 = *(v9 + 72);
  v14 = swift_allocObject();
  v15 = *(v6 + 24);
  *(v14 + 16) = v8;
  *(v14 + 24) = v15;
  if (v15 >= 1)
  {
    sub_22BD63F38();
    sub_22BD5E544(v16, v17, v18, v19, a4);
  }

  *v4 = v14;
  return result;
}

void sub_22BD5E544(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  v9 = *(a5(0) - 8);
  if (v6 < v8)
  {
    v10 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v11 = v6;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v11 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = *(v9 + 72) * v5;
  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v10 >= 1)
  {
    if (v12)
    {
      sub_22BB313A8();
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_22BD5E654(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3[2];
  v7 = *a3 - v6;
  if (__OFSUB__(*a3, v6))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3[1];
  v10 = *(a5(0) - 8);
  if (v7 < v9)
  {
    v11 = v9 - v7;
    if (!__OFSUB__(v9, v7))
    {
      v12 = v7;
      v13 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = 0;
  v11 = 0;
  v12 = v9;
LABEL_6:
  if (v11)
  {
    v14 = v7 < v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 72);
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v12 >= 1)
  {
    if (a4)
    {
      v17 = a4 + v15 * v6;
      v18 = a2;
      v19 = a6;
      a6(v17, v12, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = 0;
  v19 = a6;
  v18 = a2;
LABEL_16:
  if (v7 < v9 && v11 >= 1)
  {
    if (v16)
    {
      v19(v16, v11, v18 + v15 * v12);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

void sub_22BD5E790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  v9 = *(a5(0) - 8);
  if (v6 < v8)
  {
    v10 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v11 = v6;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  v13 = *(v9 + 72);
  if (v11 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v10 >= 1)
  {
    if (v12)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_22BD5E8B8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    result = type metadata accessor for SessionCoordinatorCommand(0);
    if (v6 <= a3)
    {
      v7 = *(*(result - 8) + 80);
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD5E968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_22BD5E9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22BD5DC78(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_22BD5EA68()
{
  result = qword_27D8E6450;
  if (!qword_27D8E6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6450);
  }

  return result;
}

uint64_t sub_22BD5EABC()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v0 = sub_22BBE6DE0(&qword_27D8E6478, &qword_22BDCE328);
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BD63FC8();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3A1C0();

  return sub_22BD490F8(v6, v7, v8, v9, v10);
}

unint64_t sub_22BD5EBE0()
{
  result = qword_27D8E6550;
  if (!qword_27D8E6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6550);
  }

  return result;
}

uint64_t sub_22BD5EC60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22BD72B60();
}

uint64_t sub_22BD5EC9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22BD5ECA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return sub_22BD755E0(v4, a1);
}

uint64_t sub_22BD5ED74(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return a2(v4);
}

void *sub_22BD5EE84@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SpanMetadata();
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return sub_22BD751B4(v4, a1);
}

uint64_t sub_22BD5EEE8()
{
  v1 = type metadata accessor for SpanMetadata();
  sub_22BD61DE0(v1);
  v4 = *(v3 + 64);
  v5 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v6 = *(v5 + 16);

  v7 = v1[6];
  v8 = sub_22BDB43E4();
  sub_22BD623FC();
  if (!sub_22BB3AA28(v9, v10, v11))
  {
    sub_22BB30474(v8);
    (*(v12 + 8))(v5 + v7, v8);
  }

  v13 = *(v5 + v1[7] + 8);

  v14 = *(v5 + v1[8]);

  v15 = *(v5 + v1[9]);

  v16 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22BD5F000@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SpanMetadata();
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return sub_22BD751C0(v4, a1);
}

uint64_t sub_22BD5F0C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BD5F170(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_22BBE6DE0(a1, a2);
  sub_22BB2F0C8(v3);
  v5 = sub_22BD61764(*(v4 + 80));

  return a3(v5);
}

uint64_t sub_22BD5F1E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_22BD5F210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22BD5F238@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void sub_22BD5F26C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1(&v13);
  sub_22BD648F8(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_22BD5F2A8()
{
  v0 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BB2F0C8(v0);
  sub_22BD61764(*(v1 + 80));

  return sub_22BD74940();
}

uint64_t sub_22BD5F32C()
{
  sub_22BB35458();
  v2 = v1;
  v3 = sub_22BDB5B44();
  sub_22BB30434(v3);
  v6 = *(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  sub_22BBC3AC8();
  v7 = *(v0 + 32);
  v9 = (v0 + v8);
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_22BB3C48C;
  sub_22BD62E70();
  sub_22BB33430();

  return sub_22BD46670(v15, v16, v17, v18, v19, v20, v21);
}

_BYTE *storeEnumTagSinglePayload for ClientSessionManager.SessionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD5F5F4()
{
  result = qword_27D8E6690;
  if (!qword_27D8E6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6690);
  }

  return result;
}

uint64_t sub_22BD5F670(uint64_t result)
{
  *(result + 16) = sub_22BD5F1E4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F68C(uint64_t result)
{
  *(result + 16) = sub_22BD5F668;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F6BC(uint64_t result)
{
  *(result + 16) = sub_22BD5EE84;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F6EC(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F704(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F71C(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

void sub_22BD5F8B4()
{
  v2 = *(*(v1 - 144) + 3208);
  v3 = *(*(v1 - 144) + 3200);
  *(v1 - 176) = v0;
  *(v1 - 168) = v3;
  v4 = *(v1 - 144);
}

uint64_t sub_22BD5F900()
{
  v2 = v0[556];
  v3 = v0[444];
  v4 = v0;
  v5 = v0[442];
  *(v1 - 168) = v4[441];
  *(v1 - 160) = v2;
  v6 = v4[438];
  v7 = v4[437];
  *(v1 - 152) = v4[436];
  v8 = v4[344];
  v9 = v4[334];
  v10 = v4[333];
  v11 = v4[332];
  v12 = v4[312];
  v13 = *(v4[345] + 96);
  return v4[346];
}

uint64_t sub_22BD5F9A0(uint64_t result)
{
  v2[220] = 0;
  v2[217] = result;
  *v1 = 514;
  v2[221] = v1 + 1;
  v2[173] = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD5F9D4(uint64_t result)
{
  v2[305] = 0;
  v2[306] = result;
  *v1 = 514;
  v2[304] = v1 + 1;
  v2[179] = sub_22BB89BF0;
  return result;
}

uint64_t sub_22BD5FA08()
{

  return sub_22BB34648();
}

void sub_22BD5FA30()
{
  v2 = v0[432];
  v3 = v0[429];
  *(v1 - 160) = v0[428];
  *(v1 - 152) = v2;
  v4 = v0[417];
  v5 = v0[401];
  v6 = v0[400];
  *(v1 - 176) = v0[402];
  *(v1 - 168) = v6;
  v7 = *(*(v1 - 144) + 3192);
  v8 = *(*(v1 - 144) + 3184);
  v9 = *(*(v1 - 144) + 3176);
  v10 = *(*(v1 - 144) + 3168);
}

uint64_t sub_22BD5FA78(uint64_t result)
{
  v2[261] = 0;
  v2[262] = result;
  *v1 = 514;
  v2[260] = v1 + 1;
  v2[137] = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD5FAA8(uint64_t a1)
{
  *(a1 + 8) = sub_22BD5A0EC;
  v2 = v1[18];
  result = v1[15];
  v4 = v1[16];
  return result;
}

void sub_22BD5FADC()
{
  v2 = v0[432];
  v3 = v0[429];
  v4 = v0[428];
  v5 = v0[393];
  v6 = v0[391];
  v7 = v0[389];
  v8 = *(*(v1 - 144) + 3104);
  *(v1 - 160) = *(*(v1 - 144) + 2768);
  *(v1 - 152) = v2;
  v9 = *(*(v1 - 144) + 2760);
  *(v1 - 176) = *(*(v1 - 144) + 2752);
  *(v1 - 168) = v4;
}

uint64_t sub_22BD5FB20(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C78;
  *(a1 + 24) = v2;
  v4 = *(v3 + 16);
  return v1;
}

uint64_t sub_22BD5FB4C(uint64_t a1)
{
  v3[265] = 0;
  v3[264] = a1;
  *v2 = 258;
  v3[269] = v2 + 1;
  v3[143] = sub_22BB89C08;
  v3[144] = v1;

  return sub_22BB67984((v3 + 143), (v3 + 269), (v3 + 265), (v3 + 264));
}

BOOL sub_22BD5FBA4()
{
  v4 = *(v2 - 136);

  return sub_22BD728EC(sub_22BD5EE20, v0, v1);
}

void sub_22BD5FBE8()
{
  v3 = *(v1 - 136);

  sub_22BD47668(sub_22BD757CC, 0, v0);
}

void sub_22BD5FC18()
{
  v3 = *(v1 - 136);

  sub_22BD47668(sub_22BD757C0, 0, v0);
}

void sub_22BD5FC78(_WORD *a1@<X8>)
{
  *a1 = 514;
  *(v1 + 1680) = a1 + 1;
  *(v1 + 1464) = sub_22BB89C08;
}

uint64_t sub_22BD5FC9C()
{
  v1 = v0[560];
  v2 = v0[533];
  v3 = v0[524];
  result = v0[373];
  v5 = v0[370];
  v6 = v0[369];
  v7 = v0[368];
  v8 = v0[367];
  v9 = v0[366];
  v10 = *(v0[371] + 16);
  v11 = v0[312] + v0[559];
  return result;
}

void sub_22BD5FCEC()
{
  v3 = v0[536];
  v4 = v0[535];
  v5 = v0[534];
  v6 = v0[533];
  v7 = v0[532];
  v8 = v0[531];
  v9 = v0[530];
  v10 = v0[527];
  v11 = v0[526];
  v12 = v0[525];
  v13 = v0[524];
  v14 = v0[523];
  v15 = v0[522];
  v16 = v0[521];
  v17 = v0[518];
  v18 = v0[517];
  v19 = v0[516];
  v20 = v0[512];
  v21 = v0[511];
  v22 = v0[510];
  v23 = v0[509];
  v24 = v0[508];
  v25 = v0[507];
  v26 = v0[506];
  v27 = v0[505];
  v28 = v0[504];
  v29 = v0[503];
  v30 = v0[502];
  v31 = v0[501];
  v32 = v0[500];
  v33 = v0[499];
  v34 = v0[498];
  v35 = v0[497];
  v36 = v0[496];
  v37 = v0[495];
  v38 = v0[494];
  v39 = v0[493];
  v40 = v0[492];
  v41 = v0[491];
  v42 = v0[490];
  v43 = v0[489];
  v44 = v0[488];
  v45 = v0[487];
  v46 = v0[486];
  v47 = v0[485];
  v48 = v0[484];
  v49 = v0[483];
  v50 = v0[482];
  v51 = v0[481];
  v52 = v0[478];
  v53 = v0[477];
  v54 = v0[476];
  v55 = v0[475];
  v56 = v0[474];
  v1 = v0[473];
  v57 = v0[472];
  STACK[0x200] = v0[471];
  STACK[0x208] = v0[470];
  STACK[0x210] = v0[469];
  STACK[0x218] = v0[468];
  STACK[0x220] = v0[467];
  STACK[0x228] = v0[464];
  STACK[0x230] = v0[461];
  STACK[0x238] = v0[460];
  STACK[0x240] = v0[459];
  STACK[0x248] = v0[458];
  STACK[0x250] = v0[457];
  STACK[0x258] = v0[456];
  STACK[0x260] = v0[455];
  STACK[0x268] = v0[454];
  STACK[0x270] = v0[453];
  STACK[0x278] = v0[452];
  STACK[0x280] = v0[448];
  STACK[0x288] = v0[447];
  STACK[0x290] = v0[446];
  STACK[0x298] = v0[445];
  STACK[0x2A0] = v0[444];
  STACK[0x2A8] = v0[443];
  STACK[0x2B0] = v0[440];
  STACK[0x2B8] = v0[439];
  STACK[0x2C0] = v0[438];
  STACK[0x2C8] = v0[435];
  STACK[0x2D0] = v0[434];
  STACK[0x2D8] = v0[432];
  STACK[0x2E0] = v0[431];
  STACK[0x2E8] = v0[427];
  STACK[0x2F0] = v0[426];
  STACK[0x2F8] = v0[425];
  STACK[0x300] = v0[424];
  STACK[0x308] = v0[420];
  STACK[0x310] = v0[419];
  STACK[0x318] = v0[417];
  STACK[0x320] = v0[416];
  STACK[0x328] = v0[413];
  STACK[0x330] = v0[412];
  STACK[0x338] = v0[411];
  STACK[0x340] = v0[410];
  STACK[0x348] = v0[409];
  STACK[0x350] = v0[408];
  STACK[0x358] = v0[407];
  STACK[0x360] = v0[406];
  STACK[0x368] = v0[402];
  STACK[0x370] = v0[399];
  STACK[0x378] = v0[398];
  STACK[0x380] = v0[395];
  STACK[0x390] = v0[394];
  v2 = v0[391];
}

uint64_t sub_22BD5FFD4()
{

  return sub_22BB335C0(v0, v1);
}

uint64_t sub_22BD60000(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C78;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD6002C(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C78;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60058(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60084()
{

  return sub_22BB335C0(v0, v1);
}

uint64_t sub_22BD600B0()
{

  return sub_22BD594AC(sub_22BD76D24, 0, v0);
}

uint64_t sub_22BD600DC()
{
  v3 = v0[587];
  v4 = v0[586];
  v5 = v0[583];
  v6 = v0[581];
  v7 = v0[580];
  *(v1 - 152) = v0[579];
  v8 = v0[572];
  v9 = v0[570];
  v10 = v0[568];
  v11 = v0[544];
  v12 = v0[518];
  v13 = *(*(v1 - 144) + 3808);
  v14 = *(*(v1 - 144) + 2480);
  v15 = *(*(v1 - 144) + 2496);

  return sub_22BB96708(v15, v5, v14, v4, v3);
}

uint64_t sub_22BD6018C(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  v3 = *(v2 - 160);
  return result;
}

uint64_t sub_22BD601AC(uint64_t result)
{
  *(result + 16) = sub_22BB89784;
  *(result + 24) = v1;
  v3 = *(v2 - 152);
  return result;
}

uint64_t sub_22BD601E4(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60264(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD602C4(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD602E0(uint64_t result)
{
  *(result + 16) = sub_22BD5F098;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60310(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6032C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60348(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60364(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60380(uint64_t result)
{
  *(result + 16) = sub_22BD5EBC0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6039C(uint64_t result)
{
  *(result + 16) = sub_22BD5EB94;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD603B8(uint64_t result)
{
  *(result + 16) = sub_22BD5F660;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD603D4(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD603F0(uint64_t result)
{
  *(result + 16) = sub_22BD5F65C;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6040C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60444()
{
  *(v0 + 1352) = sub_22BB89C08;
  *(v0 + 1360) = *(v1 - 200);

  return sub_22BB67984(v0 + 1352, v0 + 1584, v0 + 1744, v0 + 1752);
}

void sub_22BD60480()
{
  v2 = *(*(v1 - 144) + 3200);
  *(v1 - 176) = v0;
  *(v1 - 168) = v2;
  v3 = *(*(v1 - 144) + 3192);
  v4 = *(v1 - 144);
}

uint64_t sub_22BD6049C(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6052C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60544(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD6055C(uint64_t result)
{
  *(result + 16) = sub_22BD5F090;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60574(uint64_t result)
{
  *(result + 16) = sub_22BD5F238;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD605A4(uint64_t result)
{
  *(result + 16) = sub_22BD5F108;
  *(result + 24) = v1;
  return result;
}

void sub_22BD605D4()
{
  v1 = *(*(v0 - 144) + 2632);
  *(v0 - 176) = *(*(v0 - 144) + 2640);
  *(v0 - 168) = v1;
  v2 = *(*(v0 - 144) + 2552);
  v3 = *(*(v0 - 144) + 2496);
  v4 = *(*(v0 - 144) + 2480);
}

uint64_t sub_22BD60634(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60664(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD606DC(uint64_t result)
{
  *(result + 16) = sub_22BB700AC;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6076C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60810()
{
  *(v1 + 1352) = sub_22BB89C08;
  *(v1 + 1360) = v0;

  return sub_22BB67984(v1 + 1352, v1 + 1584, v1 + 1744, v1 + 1752);
}

uint64_t sub_22BD60848()
{
  *(v1 + 1464) = sub_22BB89C7C;
  *(v1 + 1472) = v0;

  return sub_22BB67984(v1 + 1464, v1 + 1680, v1 + 1688, v1 + 1696);
}

void sub_22BD60880()
{
  v4 = v1[587];
  v5 = v1[586];
  v6 = v1[584];
  *(v2 - 160) = v1[585];
  *(v2 - 152) = v6;
  v7 = v1[583];
  v8 = v1[579];
  v9 = *(*(v2 - 144) + 3808);
  v10 = *(*(v2 - 144) + 3784);
  *(v2 - 136) = v0 + 1;
  v11 = *(*(v2 - 144) + 3232);

  sub_22BB93884();
}

uint64_t sub_22BD608D0()
{
  *(v1 + 1496) = sub_22BB89C7C;
  *(v1 + 1504) = v0;

  return sub_22BB67984(v1 + 1496, v1 + 1648, v1 + 1656, v1 + 1664);
}

void sub_22BD60928()
{
  *(v2 - 176) = *(v1 + 4900);
  v3 = *(v1 + 4496);
  v4 = *(*(v2 - 144) + 4480);
  *(v2 - 160) = *(*(v2 - 144) + 4432);
  *(v2 - 152) = v0;
  v5 = *(*(v2 - 144) + 4424);
}

void sub_22BD60954(uint64_t a1@<X8>)
{
  *(v3 - 240) = a1;
  v4 = v2[401];
  *(v3 - 176) = v2[400];
  *(v3 - 168) = v1;
  STACK[0x478] = v2[399];
  v5 = v2[398];
  v6 = v2[397];
  STACK[0x468] = v2[396];
}

uint64_t sub_22BD60980(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C80;
  *(a1 + 24) = v1;
  v4 = *(v2 - 176);

  return swift_allocObject();
}

uint64_t sub_22BD609B4()
{
  v2 = v0[534];
  v3 = v0[528];
  v4 = v0[525];
  v5 = v0[519];
  result = v0[526];
  v7 = *(v1 - 256);
  return result;
}

void sub_22BD609DC()
{
  v2 = v0[446];
  v3 = v0[442];
  v4 = v0[441];
  v5 = v0[440];
  v6 = v0[439];
  *(v1 - 160) = v0[445];
  *(v1 - 152) = v6;
  v7 = v0[437];
  v8 = v0[436];
}

uint64_t sub_22BD60A50(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60A8C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_22BB69FEC(v0, v2);
  v3 = *(v1 + 8);
  return v2;
}

void sub_22BD60AC0()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[320];
  v4 = v0[310];
}

void sub_22BD60AD4()
{
  v3 = v1[401];
  *(v2 - 176) = v1[400];
  *(v2 - 168) = v0;
  v4 = v1[399];
}

uint64_t sub_22BD60AE8()
{
  result = v0[351];
  v2 = v0[349];
  v3 = *(v0[350] + 32);
  v4 = v0[353] + *(v0[374] + 48);
  return result;
}

uint64_t sub_22BD60B0C()
{
  v5 = v3[348];
  v6 = v3[311];
  *(v4 - 176) = v3[310];
  v7 = *(v1 + 36);
  v8 = *(v2 + 16);
  return v0;
}

int *sub_22BD60B44(int *result)
{
  v2 = result[16];
  v3 = (v1 + result[20]);
  v5 = *v3;
  v4 = v3[1];
  STACK[0x340] = v5;
  STACK[0x348] = v4;
  v6 = *(v1 + result[24]);
  return result;
}

uint64_t sub_22BD60BB8()
{
  v1 = v0[344];
  v2 = v0[331];
  v3 = v0[330];
  v4 = v0[329];
  v5 = *(v0[345] + 96);
  return v0[346];
}

void sub_22BD60C04()
{
  *(v1 - 136) = v0[432];
  v2 = v0[429];
  v3 = v0[428];
}

uint64_t sub_22BD60C18()
{
  v1 = *(v0 - 152);
  v2 = *(*(v0 - 160) + 8);
  return *(v0 - 136);
}

uint64_t sub_22BD60C28(uint64_t a1, uint64_t a2)
{
  v3 = v2[477];
  v4 = v2[419];
  v5 = v2[418];
  sub_22BB336D0(v2[468], a2, 1, v2[414]);
  v6 = *(v5 + 48);
  return v3;
}

uint64_t sub_22BD60C68()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_22BD60C78()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_22BD60CC4(void *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  sub_22BB69FEC(a1, v2);
  v3 = *(v1 + 16);
  return v2;
}

uint64_t sub_22BD60CF4()
{
  *(v3 - 176) = *(v2 + 2496);
  v4 = *(v1 + 16);
  return v0;
}

void sub_22BD60D14(_WORD *a1@<X8>)
{
  *a1 = 258;
  *(v1 + 2424) = a1 + 1;
  *(v1 + 1448) = sub_22BB89C08;
}

uint64_t sub_22BD60D38()
{
  v3 = *(v2 + 16);
  sub_22BB938EC(v0, v3);
  v4 = v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;

  return sub_22BDB99D4();
}

void sub_22BD60DAC()
{
  v2 = *(v0 + 3232);
  v3 = *(v1 - 168) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t sub_22BD60DFC()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 168);
  return *(v0 - 160);
}

uint64_t sub_22BD60E1C()
{
  v1 = *(v0 - 144);
  result = v1[356];
  v3 = v1[354];
  v4 = *(v1[355] + 8);
  return result;
}

uint64_t sub_22BD60E34@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1368, a1 + 2352, a1 + 2344, a1 + 2312);
}

uint64_t sub_22BD60E6C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v5 = *(v3 - 224);

  return swift_allocObject();
}

uint64_t sub_22BD60E8C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

void sub_22BD60EAC()
{
  v1 = v0[346];
  v2 = v0[345];
  v3 = v0[344];
}

uint64_t sub_22BD60ED8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60F14()
{

  return sub_22BB67984(v0 + 1416, v0 + 2320, v0 + 2328, v0 + 2336);
}

unint64_t sub_22BD60F34(unint64_t a1)
{
  v4 = *(v2 + 4892);
  v5 = *(v2 + 3224);
  v6 = *(v2 + 3120);
  v7 = *(v2 + 3112);
  v8 = *(v2 + 3104);
  v9 = *(v2 + 3280);

  return sub_22BB929E0(a1, v1, v9);
}

uint64_t sub_22BD60F68()
{
  v3 = v1[11];
  v4 = (v0 + v1[10]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = (v0 + v1[12]);
  v11 = *v9;
  v10 = v9[1];
}

uint64_t sub_22BD60F9C()
{
  v2 = v1[21];
  sub_22BB69FEC(v1 + 17, v1[20]);
  v3 = *(v2 + 24);
  return v0;
}

uint64_t sub_22BD60FD4()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void sub_22BD6109C()
{
  *(v1 - 136) = v0[432];
  v2 = v0[428];
  *(v1 - 160) = v0[429];
  *(v1 - 152) = v2;
  v3 = v0[417];
}

uint64_t sub_22BD610B8()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 256);
  v6 = STACK[0x468];
  return result;
}

uint64_t sub_22BD61130()
{
  result = *(v0 - 168);
  v2 = *(v0 - 152);
  return result;
}

void sub_22BD6116C()
{
  v2 = *(v0 + 2576);
  v3 = *(v0 + 2568);
  v4 = *(*(v1 - 144) + 2560);
  v5 = *(*(v1 - 144) + 2480);
}

uint64_t sub_22BD6119C@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1016, a1 + 1904, a1 + 1912, a1 + 1920);
}

uint64_t sub_22BD611BC@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 984, a1 + 1936, a1 + 1944, a1 + 1952);
}

uint64_t sub_22BD611DC@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1032, a1 + 2000, a1 + 2008, a1 + 2016);
}

uint64_t sub_22BD611FC()
{

  return sub_22BB67984(v0 + 1496, v0 + 1648, v0 + 1656, v0 + 1664);
}

void sub_22BD6121C()
{
  v1 = v0[398];
  v2 = v0[397];
  v3 = v0[396];
}

uint64_t sub_22BD6122C()
{

  return sub_22BB67984(v0 + 952, v0 + 1624, v0 + 1592, v0 + 2456);
}

uint64_t sub_22BD6124C(uint64_t a1, uint64_t a2)
{
  v3 = v2[353];
  v4 = v2[352];
  sub_22BB336D0(v4, a2, 1, v2[374]);
  return v4;
}

uint64_t sub_22BD61280()
{
  v3 = v0[337];
  *(v1 - 232) = v0[336];
  *(v1 - 176) = v0[335];
  *(v1 - 248) = v0[310];

  return sub_22BDB5C24();
}

void sub_22BD612B0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 1);
  v6 = *(v1 - 208) & 0xFF000000 | v2;
}

uint64_t sub_22BD612E8()
{
  v1 = *(v0 - 160);
  v2 = *(v0 - 160);
  return *(v0 - 152);
}

void sub_22BD61308()
{
  v2 = *(v0 + 3192);
  v3 = *(*(v1 - 144) + 3184);
  v4 = *(*(v1 - 144) + 3176);
  v5 = *(*(v1 - 144) + 3168);
  v6 = *(*(v1 - 144) + 2600);
}

uint64_t sub_22BD61330()
{

  return swift_allocObject();
}

uint64_t sub_22BD61364()
{
  v2 = *(v0 - 144);
  *(v0 - 152) = v2[493];
  v3 = v2[426];
  v4 = v2[425];
  v5 = v2[423];
  v6 = v2[422];

  return sub_22BDB63E4();
}

void sub_22BD61390()
{
  v2 = v0[432];
  v3 = v0[429];
  *(v1 - 160) = v0[428];
  *(v1 - 152) = v2;
  v4 = v0[417];
}

uint64_t sub_22BD613D0()
{
  v1 = v0[477];
  v2 = v0[464];
  v3 = v0[463];
  v4 = v0[462];
  return v0[461];
}

uint64_t sub_22BD613E8()
{
  result = v0[477];
  v2 = v0[473];
  v3 = v0[464];
  v4 = v0[308];
  return result;
}

void sub_22BD61424()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
  v4 = *(v0 - 152);
  v5 = *(v0 - 176);
}

void sub_22BD6143C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
}

void sub_22BD61450()
{
  v2 = v0[476];
  v3 = v0[469];
  *(v1 - 136) = v0[458];
  v4 = v0[455];
}

void sub_22BD61468(unsigned __int8 *a1@<X8>)
{
  *(v3 - 160) = v2;
  *(v3 - 152) = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
}

uint64_t sub_22BD6147C(uint64_t a1, uint64_t a2)
{
  sub_22BB50CF4(a1, a2, STACK[0x2D8]);
  v3 = STACK[0x2E0] & 1;
  return v2;
}

void sub_22BD614A0()
{
  v1 = v0[544];
  v2 = v0[428];
  v3 = v0[312];
  v4 = *(v0[429] + 8);
}

uint64_t sub_22BD614B8()
{
  v4 = *(v2 - 144);
  *v1 = v0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;

  return swift_storeEnumTagMultiPayload();
}

void sub_22BD614E4()
{
  v1 = *(v0 - 144);
  v2 = v1[356];
  v3 = v1[355];
  v4 = v1[354];
}

void sub_22BD6153C()
{
  v1 = *(v0 - 144);
  v2 = v1[554];
  v3 = v1[553];
  v4 = v1[552];
  v5 = v1[551];
}

uint64_t sub_22BD61554()
{
  v2 = v1[587];
  v3 = v1[586];
  v4 = v1[312];
  return v0;
}

uint64_t sub_22BD6156C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_22BB899C0(a1, a2, a3);
}

void sub_22BD615A0()
{
  v2 = *(v0 + 4896);
  v3 = *(v0 + 3216);
  v4 = *(v0 + 3208);
  *(v1 - 136) = *(v0 + 3200);
}

uint64_t sub_22BD615B8()
{
  result = v0[390];
  v2 = v0[388];
  v3 = *(v0[389] + 8);
  return result;
}

void sub_22BD615F8()
{
  v1 = *(v0 - 144);
  v2 = v1[562];
  v3 = v1[560];
  v4 = v1[312];
}

uint64_t sub_22BD6160C()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 168);
  return result;
}

uint64_t sub_22BD6161C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_22BD61658(uint64_t result)
{
  v3 = *(v2 + 3224);
  v4 = *(*(v2 + 3232) + 32);
  v5 = result + *(v1 + 48);
  return result;
}

void sub_22BD61670()
{
  v2 = v1[312];
  v3 = *(v0 + 52);
  v1[139] = 0;
  v1[140] = 0xF000000000000000;
}

uint64_t sub_22BD616CC()
{
  v3 = v0[487];
  v4 = v0[432];
  v5 = v0[431];
  *(v1 - 152) = v0[430];
  v6 = v0;
  v7 = v0[429];
  v8 = v6[428];
  v9 = v6[312];

  return sub_22BDB63E4();
}

uint64_t sub_22BD61754()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

uint64_t sub_22BD617D4(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v6 = *(v3 - 168);
  v5 = *(v3 - 160);

  return swift_allocObject();
}

uint64_t sub_22BD617F4(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v5 = *(v3 - 160);

  return swift_allocObject();
}

BOOL sub_22BD61814()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 200);
  v4 = *(v0 - 168);

  return os_log_type_enabled(v4, v3);
}

uint64_t sub_22BD61834()
{
  v3 = *(v0 - 248);
  v2 = *(v0 - 240);

  return sub_22BDBAF34();
}

uint64_t sub_22BD61854()
{
  sub_22BB336D0(v1, 1, 1, v0);

  return sub_22BD80A04();
}

uint64_t sub_22BD61894()
{
}

uint64_t sub_22BD618C4()
{
  v2 = *(v0 + 3664);
  v3 = *(v0 + 2496);

  return swift_beginAccess();
}

uint64_t sub_22BD618EC()
{
  *(v0 + 16) = 1;

  return swift_beginAccess();
}

uint64_t sub_22BD61914@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[508];
  *(v1[312] + v1[563]) = a1;

  return sub_22BDB63E4();
}

void sub_22BD6193C()
{

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BD61958()
{
  v2 = *(v0 - 224);

  return swift_allocObject();
}

void sub_22BD61974()
{
  v0[29] = v1;
  v0[30] = sub_22BB89C08;
  v0[31] = STACK[0x3F8];
  v0[32] = sub_22BB89C7C;
  v0[33] = v2;
  v0[34] = sub_22BB89C08;
}

uint64_t sub_22BD619D4()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD619F0()
{

  return swift_slowAlloc();
}

void sub_22BD61A24()
{
  *(v1 - 216) = v0[1231];
  *(v1 - 200) = v0[1230];
  *(v1 - 208) = v0[1229];
}

void sub_22BD61A40()
{
  v1 = *(*(v0 - 144) + 3128);
  v2 = *(*(v0 - 144) + 3112);
  v3 = *(*(v0 - 144) + 3104);
}

void sub_22BD61A5C()
{
  v3 = *(v1 + 40);
  v2 = v1 + 40;
  v4 = v0 + ((*(v2 + 40) + 32) & ~*(v2 + 40));
  v5 = *(v2 + 32);
}

void sub_22BD61A78()
{
  v0[1231] = *(v1 - 216);
  v0[1230] = *(v1 - 200);
  v0[1229] = *(v1 - 208);
}

void sub_22BD61A94()
{
  v3 = *(v0 + 16);
  v4 = v1[583];
  *(v2 - 160) = v1[566];
  v5 = v1[312];
}

uint64_t sub_22BD61AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v2 - 232) + *(v2 - 176);
  return v1;
}

void sub_22BD61ADC()
{
  v3 = v0[487];
  v4 = v0[480];
  v5 = v0[479];
  v6 = v0[432];
  v7 = v0[429];
  *(v1 - 176) = v0[428];
  *(v1 - 168) = v6;
  v8 = *(v1 - 152);
}

void sub_22BD61B54(void *a1@<X8>)
{
  v1 = a1[425];
  v2 = a1[421];
  v3 = a1[409];
  v4 = a1[404];
}

void sub_22BD61B68(unint64_t a1@<X8>)
{
  STACK[0x3A0] = a1;
  STACK[0x3A8] = v1[390];
  STACK[0x3B0] = v1[387];
  STACK[0x3B8] = v1[384];
  STACK[0x3C0] = v1[383];
  STACK[0x3C8] = v1[382];
  STACK[0x3D0] = v1[379];
  STACK[0x3D8] = v1[378];
  STACK[0x3E0] = v1[377];
  STACK[0x3E8] = v1[373];
  STACK[0x3F0] = v1[372];
  STACK[0x400] = v1[369];
  v2 = v1[368];
}

uint64_t sub_22BD61BCC()
{
  result = v0[351];
  v2 = v0[349];
  v3 = *(v0[350] + 8);
  return result;
}

void sub_22BD61BE0()
{
  v2 = *(v0 + 2744);
  v3 = *(*(v1 - 144) + 2736);
  v4 = *(v1 - 144);
}

void sub_22BD61C8C()
{
  v2 = v0[541];
  v3 = v0[538];
  *(v1 - 160) = v0[544];
  *(v1 - 152) = v3;
}

void sub_22BD61CA0()
{
  v3 = v1[548];
  v4 = v1[531];
  v5 = v1[530];
  *(v2 - 176) = v0;
  *(v2 - 168) = v5;
}

uint64_t sub_22BD61CB4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

void sub_22BD61CF0()
{
  v2 = v0[459];
  *(v1 - 152) = v0[451];
  v3 = v0[450];
}

uint64_t sub_22BD61D04()
{
  result = v0[357];
  v2 = v0[354];
  v3 = *(v0[355] + 8);
  return result;
}

void sub_22BD61D18()
{
  v2 = v0[532];
  *(v1 - 168) = v0[528];
  *(v1 - 160) = v2;
  v3 = v0[523];
}

void sub_22BD61D2C()
{
  v1 = v0[563];
  v2 = v0[516];
  v3 = v0[312];
  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
}

void sub_22BD61D40()
{
  v1 = v0[518];
  v2 = v0[516];
  v3 = v0[513];
  v4 = v0[403];
}

void *sub_22BD61D54()
{
  *v1 = v0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  return v1;
}

uint64_t sub_22BD61D90()
{
  v2 = *(*(v1 - 232) + 8);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_22BD61DA4()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 256);
  return result;
}

void sub_22BD61DB8()
{
  *(v1 - 256) = *(v0 + 4876);
  v2 = *(v0 + 4344);
  v3 = *(v0 + 4304);
}

void sub_22BD61E40()
{
  v0[25] = v1;
  v0[26] = sub_22BB89C7C;
  v0[27] = STACK[0x328];
  v0[28] = sub_22BB89C08;
}

uint64_t sub_22BD61E70()
{

  return sub_22BB67984(v0 + 1256, v0 + 1848, v0 + 1840, v0 + 1808);
}

uint64_t sub_22BD61E90()
{

  return sub_22BDBABD4();
}

uint64_t sub_22BD61EC8()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD61EE4()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD61F18()
{
  *(v2 - 136) = v0;
  v3 = v1[544];
  v4 = v1[543];
  v5 = v1[540];
  v6 = v1[539];
  result = v1[537];
  v8 = v1[535];
  v9 = v1[527];
  v10 = v1[312];
  return result;
}

uint64_t sub_22BD61F60()
{
  *(v2 - 136) = v0;
  v3 = v1[544];
  v4 = v1[543];
  v5 = v1[540];
  v6 = v1[539];
  result = v1[537];
  v8 = v1[535];
  v9 = v1[527];
  v10 = v1[312];
  return result;
}

void *sub_22BD61FCC()
{
  STACK[0x3F0] = ~v0;
  v2 = *(v1 - 144);
  v3 = v2[490];
  STACK[0x448] = v2[478];
  STACK[0x440] = v2[473];
  STACK[0x460] = v2[466];
  STACK[0x458] = v2[465];
  v4 = v2[378];
  v5 = v2[377];
  STACK[0x3E8] = v2[376];
  STACK[0x3F8] = v2[312];
  return v2 + 175;
}

uint64_t sub_22BD62028()
{
  *(v1 - 160) = v0[493];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD6204C()
{
  *(v1 - 168) = v0[503];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD62070()
{
  *(v0 + 16) = 0;

  return swift_beginAccess();
}

uint64_t sub_22BD620AC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v5 = *(v3 - 168);

  return swift_allocObject();
}

uint64_t sub_22BD620D0()
{
  v2 = v0[10];
  v3 = v0[12];
  v4 = v0[14];
}

uint64_t sub_22BD620F4()
{
  v2 = *(v0 - 176);

  return swift_allocObject();
}

uint64_t sub_22BD62110()
{
  v2 = *(v0 - 144) + 808;

  return swift_beginAccess();
}

void sub_22BD62140()
{

  JUMPOUT(0x2318A6080);
}

unint64_t sub_22BD6215C(unint64_t result)
{
  v1[297] = 0;
  STACK[0x358] = result;
  v1[298] = result;
  STACK[0x360] = v2;
  *v2 = 1538;
  v1[296] = v2 + 1;
  v1[189] = sub_22BB89C08;
  return result;
}

void sub_22BD62190()
{
  v4 = v2[464];
  v5 = v2[463];
  v6 = v2[462];
  *(v3 - 160) = v2[448];
  *(v3 - 152) = v1;
  v7 = v2[446];
  v8 = v2[442];
  v9 = v2[441];
  v10 = *(*(v3 - 144) + 3520);
  v11 = *(*(v3 - 144) + 3496);
  v12 = *(*(v3 - 144) + 3488);
  *(v3 - 176) = v0;
  *(v3 - 168) = v12;
  v13 = *(*(v3 - 144) + 2496);
}

uint64_t sub_22BD621D8(uint64_t a1)
{
  *(a1 + 8) = sub_22BD46F08;
  v2 = *(v1 + 216);
  return *(v1 + 208);
}

BOOL sub_22BD62224()
{
  v3 = *(v1 - 152);
  v4 = *(v1 - 152);

  return os_log_type_enabled(v0, v4);
}

void sub_22BD62288()
{
  v3 = v1[334];
  v4 = v1[333];
  *(v2 - 176) = v1[332];
  *(v2 - 168) = v0;
  v5 = v1[310];
}

uint64_t sub_22BD622A0()
{
  LODWORD(STACK[0x448]) = *(v1 + 4884);
  STACK[0x478] = *(v1 + 3216);
  v4 = *(v1 + 3200);
  *(v2 - 256) = *(v1 + 3208);
  *(v2 - 248) = v4;
  STACK[0x450] = *(v1 + 3192);
  v5 = *(v1 + 3184);
  v6 = *(v1 + 3176);
  STACK[0x440] = *(v1 + 3168);
  STACK[0x460] = *(v1 + 2480);
  STACK[0x468] = v0;

  return sub_22BDB8444();
}

void sub_22BD62314()
{
  *(v1 - 224) = *(v0 + 4888);
  v2 = *(v0 + 3336);
  v3 = *(v0 + 3320);
  v4 = *(v0 + 3312);
}

void sub_22BD6234C()
{
  v2 = v0[417];
  *(v1 - 240) = v0[402];
  v3 = v0[401];
  v4 = v0[400];
}

uint64_t sub_22BD62384()
{
  *(v0 - 168) = *(v0 - 104);

  return sub_22BB67968();
}

uint64_t sub_22BD623A0()
{
  v2 = *(v0 - 160);

  return swift_arrayDestroy();
}

uint64_t sub_22BD623D0()
{
  result = *(v0 - 160);
  v2 = *(v0 - 152);
  return result;
}

uint64_t sub_22BD62454()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_22BD62464()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD62480()
{
  v1 = *(*(v0 - 176) + 8);
  v3 = *(v0 - 160);
  return *(v0 - 152);
}

void sub_22BD62490()
{
  v1 = v0[399];
  v2 = v0[398];
  v3 = v0[397];
  STACK[0x460] = v0[396];
}

void sub_22BD624D0(_WORD *a1@<X8>)
{
  *a1 = 1026;
  *(v1 + 2320) = a1 + 1;
  *(v1 + 1416) = sub_22BB89C08;
}

void sub_22BD62524(_WORD *a1@<X8>)
{
  *a1 = 514;
  *(v1 + 2352) = a1 + 1;
  *(v1 + 1368) = sub_22BB89C08;
}

void sub_22BD62548()
{
  *v0 = 1538;
  *(v1 + 2368) = v0 + 1;
  *(v1 + 1512) = sub_22BB89C08;
}

uint64_t sub_22BD62578()
{
  result = *(v0 - 224);
  v2 = *(v0 - 176);
  return result;
}

void sub_22BD6259C()
{
  v2 = v0[55];
  *(v1 - 232) = v0[56];
  *(v1 - 224) = v2;
  v4 = v0[50];
  v3 = v0[51];
  *(v1 - 216) = v0[54];
  *(v1 - 208) = v3;
  v6 = v0[48];
  v5 = v0[49];
  *(v1 - 200) = v4;
  *(v1 - 192) = v5;
  v7 = v0[45];
  *(v1 - 184) = v6;
  *(v1 - 176) = v7;
  v8 = v0[41];
  *(v1 - 168) = v0[42];
  *(v1 - 160) = v8;
  v10 = v0[39];
  v9 = v0[40];
}

uint64_t sub_22BD62608()
{
  v2 = *(v0 - 224);

  return swift_allocObject();
}

void sub_22BD6264C()
{
  STACK[0x440] = v0[424];
  STACK[0x448] = v0[421];
  v1 = v0[364];
  STACK[0x3E8] = v0[363];
  v2 = v0[362];
  STACK[0x3F0] = v0[361];
  v3 = v0[360];
  v4 = v0[359];
}

uint64_t sub_22BD626D0(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD626EC(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD62708(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD62730()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD6274C()
{
  result = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD62774(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_22BD62790()
{
  result = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD627AC()
{
  *(v2 + 16) = v1;
  v4 = (v2 + v0[7]);
  v5 = STACK[0x348];
  *v4 = STACK[0x340];
  v4[1] = v5;
  *(v2 + v0[8]) = STACK[0x2C0];
  *(v2 + v0[9]) = 0;
  *(v2 + v0[10]) = 0;

  return type metadata accessor for SessionCoordinatorResponseCallback();
}

uint64_t sub_22BD62B54(uint64_t result)
{
  *(result + 16) = sub_22BD5F654;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD62BD8()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD62BF4()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD62C40()
{

  return swift_beginAccess();
}

uint64_t sub_22BD62C60()
{
  v5 = v0 + v2;
  v6 = *(v3 - 144);

  return sub_22BB50D0C(v5, v1);
}

void sub_22BD62C80()
{
  v4 = v1[33];
  v3 = v1[34];
  *(v2 - 136) = v0;
  *(v2 - 128) = v3;
  v5 = v1[32];
  *(v2 - 120) = v4;
  *(v2 - 112) = v5;
  *(v2 - 104) = v1[29];
  v6 = v1[26];
  *(v2 - 88) = v1[25];
  v7 = v1[24];
  v8 = v1[19];
}

uint64_t sub_22BD62CC4()
{
  v4 = *(v2 + 3808);
  v5 = *(v2 + 3792);

  return sub_22BB6BEE0(v5, v4, v1, v0);
}

uint64_t sub_22BD62CF0()
{
  v2 = v0[484];
  v3 = v0[480];
  v4 = v0[479];
}

void sub_22BD62D10(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  v4 = v2[417];
  v5 = v2[402];
  v6 = v2[401];
  v7 = v2[400];
  v8 = v2[399];
  v9 = v2[398];
  v10 = v2[397];
  *(v3 - 256) = v2[396];
}

uint64_t sub_22BD62D3C()
{
  v2 = *(v0 - 232);

  return swift_arrayDestroy();
}

uint64_t sub_22BD62D5C()
{
  v1 = STACK[0x290];

  return swift_arrayDestroy();
}

uint64_t sub_22BD62D7C()
{
  v2 = *(v0 - 136);

  return swift_arrayDestroy();
}

uint64_t sub_22BD62D9C()
{
  v2 = *(v0 + 4304);
  v3 = *(v0 + 4296);

  return sub_22BB58C0C(v3);
}

unint64_t sub_22BD62DBC()
{
  v5 = v1[32];
  v4 = v1[33];
  v6 = v1[31];
  *(v0 + 16) = v2;
  v7 = *(v5 + 32);
  return v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
}

unint64_t sub_22BD62E00()
{
  v4 = *(v2 - 168);

  return sub_22BB929E0(v0, v4, v1);
}

uint64_t sub_22BD62E2C(uint64_t result)
{
  *(v1 - 120) = 0;
  *(v1 - 112) = result;
  return result;
}

uint64_t sub_22BD62E38()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_22BD62E50()
{

  return sub_22BB32FA4((v0 + 136));
}

uint64_t sub_22BD62E88(uint64_t a1)
{

  return sub_22BB3A518(v1, a1 + v2);
}

uint64_t sub_22BD62EA8()
{
}

uint64_t sub_22BD62EC8()
{
  v2 = *(v0 + 3336);
  v3 = *(*(v1 - 144) + 3312);
  v4 = *(*(*(v1 - 144) + 3320) + 32);
  return v2;
}

uint64_t sub_22BD62EF4()
{
  v0[37] = v2;
  v0[38] = sub_22BB89C7C;
  v0[39] = v1;
}

void sub_22BD62F40()
{
  v1 = v0[426];
  v2 = v0[422];
  v3 = v0[383];
}

uint64_t sub_22BD62FB4()
{
  v2 = *(v0 + 8);
  result = *(v1 - 152);
  v4 = *(v1 - 168);
  return result;
}

uint64_t sub_22BD62FC4()
{
  v3 = v0[585];
  v4 = v0[583];
  *(v1 - 176) = v0[566];
  v5 = v0[501];
}

uint64_t sub_22BD62FE8()
{
  v3 = *(v0 + 104);
  result = v1;
  v5 = *(v2 - 224);
  return result;
}

uint64_t sub_22BD63008(unint64_t a1, unint64_t a2)
{
  STACK[0x458] = a1;
  STACK[0x450] = a2;
  v4 = v2[6];
  STACK[0x448] = v2[5];
  v5 = v2[8];
  STACK[0x440] = v2[7];
  result = v3;
  v7 = STACK[0x438];
  return result;
}

uint64_t sub_22BD63030@<X0>(uint64_t a1@<X8>)
{
  *(v4 + a1) |= v1;
  v6 = *(v5 - 88);
  result = *(v3 + 48) + *(v5 - 96) * v2;
  v8 = **(v5 - 112);
  return result;
}

void sub_22BD63058()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

uint64_t sub_22BD6308C()
{
  v2 = *(v0 - 160);

  return swift_beginAccess();
}

void sub_22BD630B0()
{
  v1 = v0[417];
  v2 = v0[402];
  v3 = v0[401];
}

void sub_22BD630C0()
{
  v1 = v0[506];
  v2 = v0[480];
  v3 = v0[479];
  v4 = v0[475];
}

uint64_t sub_22BD630D4()
{
  v2 = *(v0 - 200);

  return swift_allocObject();
}

uint64_t sub_22BD630F0()
{
  v1 = v0[467];
  result = v0[419];
  v3 = v0[414];
  return result;
}

void sub_22BD63100()
{
  v1 = v0[544];
  v2 = v0[477];
  v3 = v0[464];
}

void sub_22BD63120(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 160);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t sub_22BD63154()
{
  v2 = *(v0 - 144);
  v3 = v2[502];
  v4 = v2[480];
  v5 = v2[479];
}

uint64_t sub_22BD63178()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD63194()
{
  v2 = *(v0 + 8);
  result = *(v1 - 160);
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_22BD631C0(uint64_t result)
{
  *(v2 + 1792) = result;
  *(v2 + 4744) = *(v1 + 16);
  return result;
}

uint64_t sub_22BD631E4()
{
  *(v1 - 160) = v0[502];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD63228()
{
  v3 = v0[583];
  *(v1 - 168) = v0[566];
  v4 = v0[502];

  return sub_22BDB63E4();
}

uint64_t sub_22BD6324C()
{
  v2 = *(v0 - 144);
  v3 = v2[488];
  v4 = v2[480];
  v5 = v2[479];
}

uint64_t sub_22BD63270()
{
  v2 = *(v0 - 144);
  v3 = v2[488];
  v4 = v2[480];
  v5 = v2[479];
}

void sub_22BD63294()
{
  v1 = v0[43];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
}

void sub_22BD632A8()
{
  v1 = v0[379];
  v2 = v0[375];
  v3 = v0[308];
}

void sub_22BD632D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 168);

  _os_log_impl(a1, v8, v5, a4, v4, 0x16u);
}

uint64_t sub_22BD63350()
{
  v1 = v0[547];
  v2 = v0[545];
  return v0[536];
}

void sub_22BD63360()
{
  v1 = *(v0 - 144);
  v2 = v1[541];
  v3 = v1[518];
  v4 = v1[517];
  *(v0 - 152) = v1[515];
  v5 = v1[514];
  v6 = v1[512];
  v7 = v1[312];
}

uint64_t sub_22BD63394()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t sub_22BD633C4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 168);
  return result;
}

uint64_t sub_22BD633E4()
{
  v1 = v0[483];
  result = v0[319];
  v3 = v0[312];
  return result;
}

uint64_t sub_22BD633F4()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_22BD63400(uint64_t result)
{
  *(result + 16) = v1;
  v3 = *(v2 - 136);
  return result;
}

uint64_t sub_22BD63410()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_22BD6341C(uint64_t a1, uint64_t a2)
{

  return sub_22BB3AA28(a2, 1, v2);
}

uint64_t sub_22BD63440(uint64_t result)
{
  *(v1 + 1688) = 0;
  *(v1 + 1696) = result;
  return result;
}

uint64_t sub_22BD63474()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 240);
  return result;
}

uint64_t sub_22BD63484()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 232);
  return result;
}

uint64_t sub_22BD634A0()
{
  *(v1 + v2) = v0;
  v4 = *(v3 - 144);
  return v1;
}

void sub_22BD634C0()
{
  v0 = STACK[0x440];
  v1 = STACK[0x438];
  v2 = STACK[0x458];
}

uint64_t sub_22BD634EC()
{
  v2 = v0[556];
  v3 = v0[449];
  v4 = v0[447];
  v5 = v0[446];
  v6 = v0[442];
  v7 = v0[441];
  v8 = v0[440];
  v9 = v0[437];
  v10 = v0[436];
  v11 = v0[312];

  return swift_allocBox();
}

uint64_t sub_22BD63524()
{
  v2 = v0[556];
  v3 = v0[449];
  v4 = v0[447];
  v5 = v0[446];
  v6 = v0[442];
  v7 = v0[441];
  v8 = v0[440];
  v9 = v0[437];
  v10 = v0[436];
  v11 = v0[312];

  return swift_allocBox();
}

void sub_22BD6355C()
{
  STACK[0x3F0] = v0[491];
  v2 = v0[480];
  v3 = v0[479];
  STACK[0x440] = v0[407];
  v4 = v0[404];
  STACK[0x3F8] = v0[403];
  v5 = STACK[0x448];
}

void sub_22BD63594()
{
  STACK[0x438] = v1[492];
  v4 = v1[480];
  STACK[0x3F8] = v1[479];
  *(v2 - 176) = v1[407];
  v5 = v1[404];
  STACK[0x448] = v1[403];
}

uint64_t sub_22BD635D8()
{
  *(v2 - 176) = ~v1;
  v3 = v0[408];
  result = v0[407];
  v5 = v0[403];
  *(v2 - 160) = *(v0[404] + 32);
  return result;
}

void sub_22BD635FC()
{
  *(*(v1 + 56) + 8 * v0) = *(v2 - 104);
  ++*(v1 + 16);
  v3 = *(v2 - 136);
}

uint64_t sub_22BD6362C(uint64_t a1)
{
  *(v4 - 240) = *(v2 + *(a1 + 48));
  v5 = *(a1 + 64);
  v6 = *(v1 + 32);
  return v3;
}

void sub_22BD63674()
{
  STACK[0x460] = v1;
  *(v4 - 176) = v0;
  *(v4 - 160) = v2;
  v5 = *(v3 + 4908);
  v6 = *(v3 + 2856);
  v7 = *(v3 + 2840);
  v8 = *(v3 + 2832);
}

uint64_t sub_22BD636A4()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

void sub_22BD636C8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22BD636E0()
{
  v3 = *(v1 - 168);

  return sub_22BB717B8(v0 - 1, v3);
}

uint64_t sub_22BD636FC()
{

  return sub_22BDB6634();
}

uint64_t sub_22BD63718()
{
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[455];
  v5 = v0[404];
  v6 = v0[403];

  return swift_beginAccess();
}

uint64_t sub_22BD6374C()
{
  v2 = *(v0 - 200);

  return swift_allocObject();
}

uint64_t sub_22BD63768()
{
  STACK[0x470] = v0;
  v3 = v1[491];
  v4 = v1[480];
  v5 = v1[479];
  v6 = v1[407];
  v7 = STACK[0x448];
  v8 = v1[404];
  v9 = v1[403];
}

int *sub_22BD6379C()
{
  v7 = STACK[0x428];
  v8 = STACK[0x450];
  v9 = *(v5 - 160);

  return sub_22BBBFDF8(v0, v7, v8, v2, v3, v4, v9, v1);
}

void sub_22BD637D0()
{
  v4 = v1[46];
  v3 = v1[47];
  v6 = v1[44];
  v5 = v1[45];
  v8 = v1[42];
  v7 = v1[43];
  v10 = v1[40];
  v9 = v1[41];
  v12 = v1[37];
  v13 = v1[36];
  v11 = v1[33];
  v14 = v1[30];
}

uint64_t sub_22BD63804()
{
}

uint64_t sub_22BD63820()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD6383C()
{

  return swift_beginAccess();
}

uint64_t sub_22BD63858()
{

  return swift_allocObject();
}

uint64_t sub_22BD63870()
{

  return swift_slowAlloc();
}

void sub_22BD63894()
{
  v1 = v0[556];
  STACK[0x438] = v0[459];
  v2 = v0[446];
  v3 = v0[441];
  v4 = v0[440];
  v5 = v0[436];
}

void sub_22BD638B4()
{
  v2 = *(v0 + 48);
  *(v1 - 96) = *(*(v1 - 128) + 72);
  v3 = *(v1 - 116);
}

void sub_22BD63900()
{
  v2 = v0[541];
  v3 = v0[511];
  v4 = v0[478];
  v5 = v0[312];
  v6 = v2[1];
  *(v1 - 168) = *v2;
  v0[571] = v6;
}

unint64_t sub_22BD63944()
{
  v1 = v0[474];
  v2 = v0[472];
  v3 = v0[403];
  return STACK[0x3F0] + STACK[0x3E8];
}

void sub_22BD63970()
{
  STACK[0x440] = v2;
  v4 = (v1 + 16) & *(v3 - 176);
  STACK[0x3F0] = v0;
}

void sub_22BD63990()
{
  v1 = v0[411];
  v2 = v0[407];
  v3 = v0[405];
  v4 = v0[403];
  v5 = v0[312];
  v6 = v0[404] + 16;
}

uint64_t sub_22BD639EC()
{
  v2 = v0[535];
  v3 = v0[529];
  v4 = v0[528];
  v5 = v0[527];
  v6 = v0[526];
  v7 = v0[520];
  v8 = v0[519];

  return sub_22BDB77A4();
}

uint64_t sub_22BD63A1C()
{
  *(v3 - 136) = v0;
  v5 = v2[408];
  v6 = v2[404];
  v7 = v2[403];
  v8 = *(v3 - 168);

  return sub_22BB954F0(v1, 1, v8);
}

uint64_t sub_22BD63A4C()
{
  STACK[0x470] = v0;
  v3 = v1[492];
  v4 = v1[480];
  v5 = v1[479];
  v6 = v1[407];
  v7 = v1[404];
  v8 = v1[403];
}

uint64_t sub_22BD63A7C()
{
  STACK[0x470] = v0;
  *(v2 - 136) = v1[532];
  STACK[0x450] = v1[528];
  v4 = v1[523];
  v5 = v1[519];
}

uint64_t sub_22BD63AAC(uint64_t a1, uint64_t a2)
{

  return sub_22BB3CD70(a1, a2, v2, v3);
}

uint64_t sub_22BD63AC4()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD63ADC()
{
  v2 = *(*(v0 - 144) + 2480);
  v3 = STACK[0x438];

  return sub_22BDB8444();
}

uint64_t sub_22BD63AFC()
{
  v2 = v0[531];
  v3 = v0[522];
  v4 = v0[312];

  return sub_22BDB6124();
}

BOOL sub_22BD63B1C()
{
  *(v2 - 160) = v1;

  return os_log_type_enabled(v1, v0);
}

void sub_22BD63B3C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

void sub_22BD63B54(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22BD63B6C()
{
  v3 = *(v1 + *(v0 + 32));

  return sub_22BDB9B24();
}

uint64_t sub_22BD63BBC()
{
  v2 = *(v0 + 3912);
  v3 = *(v0 + 2496);
}

void sub_22BD63BD8()
{
  v3 = v1[463];
  v4 = v1[462];
  *(v2 - 160) = v1[448];
  *(v2 - 152) = v0;
  v5 = v1[446];
  v6 = v1[442];
}

uint64_t sub_22BD63BF4()
{
  v2 = *(v0 + 4032);
  v3 = *(v0 + 2496);

  return sub_22BDB63E4();
}

uint64_t sub_22BD63C10()
{
  v2 = *(v0 - 224);

  return swift_allocObject();
}

uint64_t sub_22BD63C38()
{
  v2 = *(v0 + 3872);
  v3 = *(v0 + 2496);
}

uint64_t sub_22BD63C54()
{
  v2 = *(v0 + 4216);
}

void sub_22BD63C7C(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{
  v8 = *(v6 - 136);

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v8, 0x20u);
}

void sub_22BD63C98()
{
  v2 = v0[581];
  v3 = v0[580];
  v4 = v0[579];
  *(v1 - 160) = v0[572];
  *(v1 - 152) = v4;
  v5 = v0[570];
}

uint64_t sub_22BD63CDC(uint64_t a1)
{

  return sub_22BBC08A0(a1, v2, v1, (v3 + 80));
}

void sub_22BD63D1C()
{

  sub_22BB4F9D8(v0, v1);
}

BOOL sub_22BD63D5C()
{
  v3 = *(v1 - 168);

  return os_log_type_enabled(v3, v0);
}

uint64_t sub_22BD63D78(uint64_t a1)
{
  *(v3 + 4544) = a1;
  v5 = *(v1 + 8);
  result = v2;
  *(v4 - 240) = v1 + 8;
  return result;
}

uint64_t sub_22BD63DA0()
{
  v2 = *(v0 + 3528);
  v3 = *(v0 + 2552);
}

void sub_22BD63DC8()
{
  STACK[0x470] = v0[473];
  *(v1 - 256) = v0[466];
  STACK[0x478] = v0[465];
}

uint64_t sub_22BD63DF0()
{
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3832);
}

uint64_t sub_22BD63E0C(uint64_t a1)
{

  return sub_22BD443E4(a1, (v1 + 1880));
}

uint64_t sub_22BD63E28()
{

  return sub_22BDBAE54();
}

uint64_t sub_22BD63E44()
{

  return sub_22BDBAE54();
}

uint64_t sub_22BD63E60()
{
}

uint64_t sub_22BD63E94(uint64_t a1)
{
  *(v3 + 1880) = a1;
  v5 = *(v1 + v2);

  return sub_22BB954F8(v5);
}

uint64_t sub_22BD63EB0(uint64_t a1)
{

  return sub_22BB73F58(a1, (v1 - 104));
}

void sub_22BD63EC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x3Eu);
}

void sub_22BD63EE0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22BD63EF8()
{
  v2 = *(v0 + 8);
}

uint64_t sub_22BD63F10()
{
}

void sub_22BD63F28()
{
  v1 = v0[512];
  v2 = v0[480];
  v3 = v0[479];
}

void sub_22BD63F48()
{
  v1 = v0[346];
  v2 = v0[345];
  v3 = v0[344];
}

void sub_22BD63F58(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void sub_22BD63F80()
{
  *(v1 + 16) = v0;
  v3 = *(v2 + 3664);
  v4 = *(v2 + 3224);
}

uint64_t sub_22BD63F90(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_22BD63FA8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 200);
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_22BD63FB8()
{
  result = v0[14];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  return result;
}

void sub_22BD63FC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_22BD63FE8()
{
  v1 = v0[427];
  v2 = v0[421];
  v3 = v0[312];
}

void sub_22BD64018()
{
  v1 = *(v0 + 4792);
  v2 = *(v0 + 4344);
  v3 = *(v0 + 4304);
}

uint64_t sub_22BD64028(uint64_t result)
{
  *(v2 - 168) = v1;
  *(result + 16) = v1;
  return result;
}

uint64_t sub_22BD64038(uint64_t result)
{
  *(v2 + 1992) = v1;
  *(v2 + 1960) = result;
  return result;
}

void sub_22BD64048(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4)
{
  v8 = *(v6 - 152);
  v9 = STACK[0x458];

  _os_signpost_emit_with_name_impl(a1, v8, a3, a4, v9, v4, v5, 0x16u);
}

uint64_t sub_22BD64070@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  *(v3 + *(v2 + 36)) = 0;
  *(v3 + *(v2 + 40)) = 0;

  return type metadata accessor for SessionCoordinatorResponseCallback();
}

void sub_22BD64098()
{
  *(v1 - 168) = v0[489];
  v3 = v0[480];
  STACK[0x458] = v0[479];
  v4 = STACK[0x470];
}

id sub_22BD640C0()
{
  *(v1 - 160) = v0;

  return v0;
}

uint64_t sub_22BD640D8()
{
}

uint64_t sub_22BD640F0()
{
  v3 = *(v0 + 3832);
  v4 = *(v1 - 152);
}

void sub_22BD64108()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
}

void sub_22BD64120()
{
  v1 = v0[446];
  v2 = v0[441];
  STACK[0x3D0] = v0[440];
  v3 = v0[436];
}

uint64_t sub_22BD64138(uint64_t result)
{
  *(v1 + 1896) = 0;
  *(v1 + 1888) = result;
  return result;
}

void sub_22BD64144()
{
  STACK[0x2E8] = v1;
  LODWORD(STACK[0x2C8]) = 0;
  v2 = *(v0 + 36);
}

void sub_22BD6415C()
{
  STACK[0x468] = v0[401];
  *(v1 - 256) = v0[400];
  v2 = v0[399];
}

void sub_22BD64180()
{
  v1 = v0[458];
  v2 = v0[457];
  v3 = v0[455];
  v4 = v0[404];
  v5 = v0[403];
}

uint64_t sub_22BD641B0()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 160);
  return *(v1 - 152);
}

uint64_t sub_22BD641BC(uint64_t result)
{
  *(v3 - 256) = *(v1 + *(result + 48));
  v4 = *(result + 64);
  v5 = *(v2 + 32);
  return result;
}

unint64_t sub_22BD641D4()
{
  v1 = *(v0 + 2496);
  result = STACK[0x438];
  v3 = STACK[0x3D8];
  return result;
}

uint64_t sub_22BD641EC(uint64_t result)
{
  *(v1 + 1720) = 0;
  *(v1 + 1704) = result;
  return result;
}

void sub_22BD64204()
{
  v1 = v0[100];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[56];
}

void sub_22BD64234()
{
  v1 = v0[472];
  v2 = v0[471];
  v3 = v0[470];
}

void sub_22BD64264()
{
  v1 = v0[399];
  v2 = v0[398];
  v3 = v0[397];
  v4 = v0[396];
  v5 = v0[310];
}

void sub_22BD642DC()
{
  v1 = *(v0 + 4908);
  v2 = *(v0 + 2856);
  v3 = *(v0 + 2840);
  v4 = *(v0 + 2832);
}

uint64_t sub_22BD6433C()
{
  v4 = ((v2 + 40) & ~v2) + *(v0 + 72) * v1;

  return swift_allocObject();
}

uint64_t sub_22BD64360()
{
  v2 = *(v0 - 232);

  return sub_22BDB5E14();
}

uint64_t sub_22BD6437C()
{
  v3 = v0[504];
  v4 = v0[480];
  *(v1 - 160) = v0[479];
}

uint64_t sub_22BD643A0()
{
  STACK[0x400] = v1;
  STACK[0x408] = v0;

  return sub_22BB67968();
}

uint64_t sub_22BD643C4()
{
  *(v2 - 208) = v1;

  return sub_22BD7577C(v1, v0);
}

uint64_t sub_22BD643E0()
{
  v2 = *(v0 + 4192);
}

uint64_t sub_22BD643FC()
{
  STACK[0x470] = v0;
  v3 = v1[503];
  v4 = v1[480];
  v5 = v1[479];
}

uint64_t sub_22BD64420()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD6443C()
{
}

uint64_t sub_22BD64454()
{
  v2 = *(v0 + 824);
  v3 = *(v0 + 864);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
}

void sub_22BD64478(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;

  sub_22BB69CB4();
}

uint64_t sub_22BD6449C()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD644B8()
{
  v3 = *v1;

  return sub_22BD81270(v0, v3);
}

uint64_t sub_22BD644D4(uint64_t a1)
{

  return sub_22BB6BEE0(v1, a1 + v2, v3, v4);
}

uint64_t sub_22BD644F8()
{
  *(v2 - 232) = v0;
  v4 = v1[509];
  v5 = v1[480];
  v6 = v1[479];
}

uint64_t sub_22BD6451C()
{
  v2 = *(v0 + 3824);
  v3 = *(v0 + 2496);
  v4 = STACK[0x348];
}

uint64_t sub_22BD64538()
{
  v2 = v0[454];
  v3 = v0[414];
  v4 = v0[404];
  v5 = v0[403];

  return sub_22BDB8F24();
}

uint64_t sub_22BD6455C()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 240);

  return sub_22BDBAF34();
}

uint64_t sub_22BD64580()
{

  return sub_22BDB7774();
}

uint64_t sub_22BD6459C(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;
}

uint64_t sub_22BD645B8()
{
  v2 = *(v0 - 224);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BD645D4(uint64_t a1)
{
  *(a1 + 16) = v1;
}

int *sub_22BD645F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v7 - 160);

  return sub_22BBBFDF8(a1, a2, a3, v4, v5, v6, v9, a4);
}

uint64_t sub_22BD64614@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB3A518(v1, v2 + a1);
}

uint64_t sub_22BD6462C()
{
}

uint64_t sub_22BD64644()
{
  v2 = *(v0 + 16);
}

void sub_22BD6465C(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0x16u);
}

uint64_t sub_22BD64674(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return sub_22BB89E44(v2, a2);
}

uint64_t sub_22BD6468C()
{
  v2 = *(v0 + 2496);

  return sub_22BDB63E4();
}

uint64_t sub_22BD646A4()
{

  return sub_22BDB5BA4();
}

uint64_t sub_22BD646BC()
{

  return sub_22BDBB244();
}

void sub_22BD646D4()
{

  JUMPOUT(0x23189FC40);
}

void sub_22BD646EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

uint64_t sub_22BD64704()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD6471C(uint64_t a1, uint64_t (*a2)(unint64_t))
{

  return sub_22BB6FA18(a1, a2);
}

uint64_t sub_22BD64734()
{
  v3 = *(v1 - 136);

  return sub_22BD44098(v0);
}

uint64_t sub_22BD6474C()
{
}

uint64_t sub_22BD64764()
{
}

uint64_t sub_22BD64788()
{
  v1 = v0[463];
  v2 = v0[462];
  result = v0[461];
  v4 = v0[312];
  return result;
}

void sub_22BD647C0()
{
  v1 = v0[446];
  STACK[0x328] = v0[441];
  v2 = v0[424];
}

void sub_22BD647EC()
{
  *(v1 - 256) = v0[67];
  v2 = v0[66];
  v3 = v0[65];
}

uint64_t sub_22BD64818()
{
  v1 = v0[105];
  v2 = v0[104];
  result = v0[103];
  v4 = v0[102];
  return result;
}

uint64_t sub_22BD6482C()
{
  *(v3 - 240) = v1;
  v4 = *(v0 + 96);
  return v2;
}

void sub_22BD648E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *v10;
  *v11 = a10;
  *v10 = v11 + 1;
}

void sub_22BD648F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v12 = *v11;
  *v12 = a11;
  *v11 = v12 + 1;
}

uint64_t sub_22BD6490C()
{
  result = *(v0 - 136);
  v2 = *(v0 - 192);
  return result;
}

uint64_t sub_22BD64918()
{
  result = *(v0 - 240);
  v2 = *(v0 - 224);
  return result;
}

uint64_t sub_22BD6493C()
{
  result = *(v0 + 3744);
  v2 = *(v0 + 3312);
  return result;
}

uint64_t sub_22BD649D0()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 160);
  return *(v1 - 152);
}

void sub_22BD64A20()
{
  *(v1 + 184) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22BD64A48()
{
  sub_22BB32FA4((v0 + 136));

  return sub_22BB32FA4((v0 + 96));
}

uint64_t sub_22BD64A74(uint64_t result)
{
  *(v1 + 2256) = 0;
  *(v1 + 2264) = result;
  return result;
}

uint64_t sub_22BD64A8C()
{
  result = *(v0 - 168);
  v2 = *(v0 - 152);
  return result;
}

uint64_t sub_22BD64ADC(uint64_t result)
{
  v1 = STACK[0x3D8];
  *(result + 16) = STACK[0x438];
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD64B48()
{
  result = *(v0 - 176);
  v2 = *(v0 - 200);
  return result;
}

uint64_t sub_22BD64B60(uint64_t result)
{
  *(v1 - 120) = 0;
  *(v1 - 112) = result;
  return result;
}

unint64_t sub_22BD64C88()
{
  STACK[0x3E0] = v0;
  STACK[0x3F0] = v2;
  STACK[0x3E8] = v1;
  return v2 + v1;
}

uint64_t sub_22BD64CB4(uint64_t result)
{
  *(v1 + 1840) = 0;
  *(v1 + 1808) = result;
  return result;
}

uint64_t sub_22BD64CD8()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t sub_22BD64CE4(uint64_t result)
{
  *(v2 + 2240) = v1;
  *(v2 + 2208) = result;
  return result;
}

uint64_t sub_22BD64E04(uint64_t result)
{
  *(v1 + 1656) = 0;
  *(v1 + 1664) = result;
  return result;
}

uint64_t sub_22BD64E10()
{

  return sub_22BB67984(v0 + 1080, v0 + 2104, v0 + 2072, v0 + 2064);
}

uint64_t sub_22BD64E30()
{
  v2 = v0[489];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD64E50()
{

  return sub_22BDBABE4();
}

uint64_t sub_22BD64E70()
{
  v3 = v0[512];
  v4 = v0[480];
  v5 = v0[479];
  v6 = *(v1 - 152);
}

uint64_t sub_22BD64E90()
{
  *(v2 - 200) = v0;
  *(v2 - 176) = v1;

  return sub_22BB67968();
}

uint64_t sub_22BD64EB0()
{
  *(v2 - 200) = v1;
  *(v2 - 176) = v0;

  return sub_22BB67968();
}

uint64_t sub_22BD64ED0()
{
  v2 = v0[509];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD64EF0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = a1;
  v4 = *(v1 + 3840);
  v5 = *(v1 + 3832);
}

uint64_t sub_22BD64F10()
{
  *(v1 + 16) = v0 & 1;
  *(*(v2 - 216) + 16) = v0 & 1;

  return sub_22BDB8404();
}

BOOL sub_22BD64F30()
{
  v1 = LODWORD(STACK[0x308]);
  v2 = LODWORD(STACK[0x308]);
  v3 = STACK[0x300];

  return os_log_type_enabled(v3, v2);
}

uint64_t sub_22BD64F50()
{
  v2 = v0[103];
  v3 = v0[65];
  v4 = v0[58];

  return sub_22BDB6104();
}

uint64_t sub_22BD64F70()
{
  v2 = *(v0 - 144);
  v3 = *(v2 + 3904);
  v4 = *(v2 + 2496);

  return sub_22BDB63E4();
}

uint64_t sub_22BD64F90()
{
  STACK[0x458] = *(v0 - 104);
  v2 = STACK[0x440];
}

uint64_t sub_22BD64FB0()
{
  v1 = STACK[0x360];

  return swift_arrayDestroy();
}

uint64_t sub_22BD64FD0()
{

  return sub_22BB67968();
}

uint64_t sub_22BD64FF0()
{
  v1 = STACK[0x3E8] + STACK[0x458];
  v2 = STACK[0x440];

  return sub_22BB335C0(v1, v2);
}

uint64_t sub_22BD65010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56) + 80 * a2;

  return sub_22BD5F464(v4, v2 + 16);
}

uint64_t sub_22BD65030()
{
  v2 = v0[495];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD65050()
{

  return sub_22BB67984(v0 + 1368, v0 + 2352, v0 + 2344, v0 + 2312);
}

uint64_t sub_22BD65070@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1144, a1 + 2152, a1 + 2120, a1 + 2112);
}

uint64_t sub_22BD65090()
{
  v2 = *(v0 - 144);
  v3 = *(v2 + 4072);
  v4 = *(v2 + 2496);

  return sub_22BDB63E4();
}

uint64_t sub_22BD650B0()
{
  v2 = v0[483];
  v3 = v0[480];
  v4 = v0[479];
}

uint64_t sub_22BD650D0(uint64_t a1)
{
  *(v3 - 168) = a1;

  return sub_22BB3A518(v2, a1 + v1);
}

uint64_t sub_22BD650F0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;
  v4 = *(v1 + 3840);
  v5 = *(v1 + 3832);
}

uint64_t sub_22BD65110(uint64_t a1)
{
  *(v2 - 240) = a1;
  *(v2 - 136) = v1;
}

uint64_t sub_22BD65130(uint64_t a1)
{

  return sub_22BB3A518(v1, a1 + v2);
}

uint64_t sub_22BD65150()
{

  return sub_22BB67984(v0 + 1512, v0 + 2368, v0 + 2376, v0 + 2384);
}

uint64_t sub_22BD65170@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
}

void sub_22BD65188()
{
  v2 = *(v0 + 3880);
  v3 = *(v0 + 2056);
}

uint64_t sub_22BD651A0()
{
  v2 = *(v0 + 3832);
}

uint64_t sub_22BD651B8()
{
  v2 = *(v0 + 3888);

  return sub_22BDB63E4();
}

id sub_22BD651D0()
{
  *(v1 + 2056) = v0;

  return v0;
}

uint64_t sub_22BD651E8()
{

  return sub_22BB382E8(v0, v1 + 176);
}

uint64_t sub_22BD65200()
{
  v2 = *(v0 - 168);

  return sub_22BDB6124();
}

uint64_t sub_22BD65218()
{
  v2 = *(v0 + 3416);
}

uint64_t sub_22BD65230()
{
  v2 = *(v0 - 152);

  return sub_22BDB9A34();
}

uint64_t sub_22BD65248()
{
  v1 = STACK[0x368];
}

uint64_t sub_22BD65260()
{
  v2 = *(v0 - 144) + 808;

  return swift_endAccess();
}

uint64_t sub_22BD65278()
{
  v2 = *(v0 - 160);
}

uint64_t sub_22BD65290(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return sub_22BB89E44(v2, a2);
}

uint64_t sub_22BD652A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return sub_22BB89E44(v2, a2);
}

uint64_t sub_22BD652C0()
{
}

uint64_t sub_22BD652D8(uint64_t a1)
{

  return sub_22BB3A518(v1, a1 + v2);
}

uint64_t sub_22BD652F0()
{
  v2 = *(v0 + 3968);

  return sub_22BDB63E4();
}

uint64_t sub_22BD65308()
{
  v2 = *(v0 + 3992);

  return sub_22BDB63E4();
}

uint64_t sub_22BD65320()
{
  v2 = *(v0 + 3976);

  return sub_22BDB63E4();
}

uint64_t sub_22BD65338()
{
}

uint64_t sub_22BD65350()
{
  *(v1 - 160) = v0;

  return sub_22BB67968();
}

uint64_t sub_22BD65368()
{
  v2 = *(v0 + 4000);

  return sub_22BDB63E4();
}

void sub_22BD65380(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0x16u);
}

void sub_22BD65398()
{

  JUMPOUT(0x23189FBE0);
}

uint64_t sub_22BD653B0()
{

  return sub_22BB67968();
}

void sub_22BD653C8()
{

  JUMPOUT(0x23189FCA0);
}

uint64_t sub_22BD653E0()
{
}

void sub_22BD653F8()
{

  JUMPOUT(0x23189FD90);
}

void sub_22BD65410(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0x16u);
}

uint64_t sub_22BD65428()
{
  v2 = *(v0 - 104);

  return sub_22BB67968();
}

uint64_t sub_22BD65440()
{
  v2 = *(v0 + 52);

  return sub_22BDB5B94();
}

void sub_22BD65458(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x22u);
}

uint64_t sub_22BD65470()
{
}

uint64_t sub_22BD65488()
{
}

uint64_t sub_22BD654A0()
{
  v2 = *(v0 - 160);

  return sub_22BB72E80();
}

void sub_22BD654B8()
{
  v2 = *(v0 + 3848);
  v3 = *(v0 + 2304);
}

uint64_t sub_22BD654D0()
{
  v2 = *(v0 + 3856);

  return sub_22BDB63E4();
}

id sub_22BD654E8()
{
  *(v1 + 2304) = v0;

  return v0;
}

uint64_t sub_22BD65500()
{
}

uint64_t sub_22BD65518()
{
  v2 = *(v0 - 176);

  return sub_22BB72E80();
}

uint64_t sub_22BD65530()
{

  return sub_22BB690EC(v0, v1 + 136);
}

uint64_t sub_22BD65548()
{

  return sub_22BB67968();
}

uint64_t sub_22BD655B4(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22BDBB414();
    v9 = sub_22BDB7BD4();
    sub_22BB30434(v9);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      a1(&v15, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_22BDBB3F4();
      v14 = *(v16 + 16);
      sub_22BDBB424();
      sub_22BDBB434();
      sub_22BDBB404();
      v11 += v13;
      if (!--v6)
      {
        return v16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BD657C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = v7;
  v13 = a4(0);
  sub_22BB30434(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB36FD8();
  v19 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    return v20;
  }

  v34 = MEMORY[0x277D84F90];
  v21 = sub_22BB97C48();
  a5(v21);
  v20 = v34;
  v22 = a6(0);
  sub_22BB30434(v22);
  v24 = a3 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v31 = *(v25 + 72);
  while (1)
  {
    a1(v24);
    if (v11)
    {
      break;
    }

    v11 = 0;
    v27 = *(v34 + 16);
    v26 = *(v34 + 24);
    if (v27 >= v26 >> 1)
    {
      (a5)(v26 > 1, v27 + 1, 1);
    }

    *(v34 + 16) = v27 + 1;
    v28 = *(v15 + 80);
    sub_22BB2F390();
    sub_22BD72308(v8, v34 + v29 + *(v15 + 72) * v27, a7);
    v24 += v31;
    if (!--v19)
    {
      return v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD659A4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v7 = sub_22BB30434(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v25 = MEMORY[0x277D84F90];
  sub_22BD28408();
  v16 = v25;
  v17 = *(v9 + 80);
  sub_22BB2F390();
  v23 = v18;
  v19 = a3 + v18;
  v20 = *(v9 + 72);
  while (1)
  {
    a1(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = *(v25 + 16);
    if (v21 >= *(v25 + 24) >> 1)
    {
      sub_22BD28408();
    }

    *(v25 + 16) = v21 + 1;
    sub_22BD72308(v14, v25 + v23 + v21 * v20, type metadata accessor for FeedbackLearning.FlowExpressionValue);
    v19 += v20;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD65B38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v10 = v6;
  v30 = a4(0);
  sub_22BB30444(v30);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB36FD8();
  v17 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    return v18;
  }

  v32 = MEMORY[0x277D84F90];
  v19 = sub_22BB97C48();
  a5(v19);
  v18 = v32;
  v20 = a6(0);
  sub_22BB30434(v20);
  v22 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v29 = *(v23 + 72);
  while (1)
  {
    a1(v22);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v25 = *(v32 + 16);
    v24 = *(v32 + 24);
    if (v25 >= v24 >> 1)
    {
      (a5)(v24 > 1, v25 + 1, 1);
    }

    *(v32 + 16) = v25 + 1;
    v26 = *(v13 + 80);
    sub_22BB2F390();
    (*(v13 + 32))(v32 + v27 + *(v13 + 72) * v25, v7, v30);
    v22 += v29;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD65D2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *v4;
  v8 = *sub_22BB69FEC(a4, a4[3]);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22BBF90EC;
  v10 = sub_22BB39478();

  return sub_22BD6F274(v10, v11, a3, v8, v7);
}

uint64_t sub_22BD65E0C()
{
  sub_22BB34E84();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BBF90EC;

  return sub_22BD65EE0();
}

uint64_t sub_22BD65EE0()
{
  sub_22BB2F35C();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[12] = v7;
  v1[13] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  sub_22BB30434(AssociatedTypeWitness);
  v1[21] = v10;
  v12 = *(v11 + 64) + 15;
  v1[22] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v1[23] = v13;
  sub_22BB30434(v13);
  v1[24] = v14;
  v16 = *(v15 + 64) + 15;
  v1[25] = swift_task_alloc();
  v17 = sub_22BDB9C14();
  v1[26] = v17;
  sub_22BB30434(v17);
  v1[27] = v18;
  v20 = *(v19 + 64) + 15;
  v1[28] = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_22BD66084()
{
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v35 = v0[20];
  v5 = v0[18];
  v39 = v0[17];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v5[11];
  v9 = sub_22BB39478();
  v10(v9);
  v11 = v5[9];
  sub_22BB7592C();
  v0[5] = swift_getAssociatedTypeWitness();
  sub_22BB2F0E0();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_22BB8B8A0(v0 + 2);
  v12 = sub_22BB39478();
  v11(v12);
  v13 = v5[10];
  v14 = sub_22BB39478();
  v15(v14);
  v16 = v5[8];
  v17 = sub_22BB39478();
  v18(v17);
  v19 = v5[12];
  v20 = sub_22BB39478();
  v21(v20);
  v22 = *(v39 + 24);
  v34 = v22 + *v22;
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[29] = v24;
  sub_22BB2F0E0();
  sub_22BB72E5C();
  swift_getAssociatedConformanceWitness();
  sub_22BB2F0E0();
  swift_getAssociatedConformanceWitness();
  *v24 = v0;
  v24[1] = sub_22BD662FC;
  v25 = v0[28];
  v26 = v0[25];
  v27 = v0[22];
  v28 = v0[23];
  v29 = v0[19];
  v31 = v0[12];
  v30 = v0[13];
  v37 = v0[15];
  v38 = v0[17];
  v36 = v0[20];
  sub_22BB31534();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BD662FC()
{
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = v5[29];
  v31 = v5[28];
  v7 = v5[27];
  v30 = v5[26];
  v29 = v5[25];
  v8 = v5[24];
  v9 = v5[23];
  v10 = v5[22];
  v11 = v5[21];
  v12 = v5[20];
  v13 = *v1;
  sub_22BB3052C();
  *v14 = v13;
  v3[30] = v0;

  sub_22BB32FA4(v3 + 7);
  v15 = *(v11 + 8);
  v16 = sub_22BB2F12C();
  v17(v16);
  (*(v8 + 8))(v29, v9);
  (*(v7 + 8))(v31, v30);
  if (!v0)
  {
    v22 = v3[28];
    v23 = v3[25];
    v24 = v3[22];
    sub_22BB32FA4(v3 + 2);

    v25 = *(v13 + 8);
    sub_22BB31534();

    __asm { BRAA            X1, X16 }
  }

  sub_22BB31B20();
  sub_22BB31534();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22BD66574()
{
  sub_22BB2F35C();
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[22];
  sub_22BB32FA4(v0 + 2);

  sub_22BB2F09C();
  v5 = v0[30];

  return v4();
}

uint64_t sub_22BD665FC(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22BD27AF0();
    v12 = v21;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v18 = *(v13 + 56);
    v19 = v14;
    do
    {
      v19(v6, v15, v2);
      swift_dynamicCast();
      v21 = v12;
      v16 = *(v12 + 16);
      if (v16 >= *(v12 + 24) >> 1)
      {
        sub_22BD27AF0();
        v12 = v21;
      }

      *(v12 + 16) = v16 + 1;
      sub_22BBDB5D0(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27D8E3510, &qword_22BDBEF70);
      v15 += v18;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_22BD66840()
{
  sub_22BB30F94();
  v4 = v3;
  v15 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  sub_22BB30444(v15);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB89D4C();
  v8 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB3B818();
  if (v1)
  {
    sub_22BBDB908();
    sub_22BBDB3C4();
    sub_22BB58B20();
    do
    {
      sub_22BBBEE60(v4, v0, &qword_27D8E60D8, &unk_22BDCD620);
      sub_22BB3B710();
      sub_22BB36A9C();
      if (v12)
      {
        sub_22BB95BB8();
        sub_22BBDB3C4();
      }

      v13 = sub_22BB38E98();
      sub_22BBDB5D0(v13, v14, &qword_27D8E42E0, &unk_22BDD03F0);
      v4 += v2;
      --v1;
    }

    while (v1);
  }

  sub_22BB314EC();
}

uint64_t sub_22BD669F8(uint64_t a1)
{
  result = sub_22BB3A770(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_22BD6F1D8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_22BD66B50(uint64_t a1)
{
  v4 = sub_22BB3A770(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22BD6F1D8(v4, 1, sub_22BB8C414);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BD725C0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_22BD66CB4(uint64_t a1)
{
  result = sub_22BB3A770(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  sub_22BD6F1D8(result, 1, v5);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = sub_22BBE6DE0(v10, v9);
  v13 = *(result - 8);
  if (v12 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return result;
  }

  v16 = *(v11 + 16);
  v8 = __OFADD__(v16, v1);
  v17 = v16 + v1;
  if (!v8)
  {
    *(v11 + 16) = v17;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_22BD66DBC()
{
  sub_22BB30F94();
  v66 = v1;
  v67 = v2;
  sub_22BB35760();
  v63 = sub_22BDB82C4();
  v3 = sub_22BB30444(v63);
  v61 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB43E4();
  v11 = sub_22BB30444(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v62 = v16 - v15;
  v17 = sub_22BDB9B14();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = sub_22BBE6DE0(&qword_27D8E66F0, &qword_22BDCE7B8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v60 - v31;
  v33 = sub_22BDB8F54();
  v34 = sub_22BB30444(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30574();
  sub_22BB36FD8();
  (*(v20 + 16))(v25, v0, v17);
  v39 = (*(v20 + 88))(v25, v17);
  if (v39 == *MEMORY[0x277D1E710])
  {
    v40 = MEMORY[0x277D1E198];
LABEL_11:
    (*(v36 + 104))(v30, *v40, v33);
    v41 = 0;
    goto LABEL_12;
  }

  if (v39 == *MEMORY[0x277D1E728])
  {
    v40 = MEMORY[0x277D1E1A8];
    goto LABEL_11;
  }

  if (v39 == *MEMORY[0x277D1E730])
  {
    v40 = MEMORY[0x277D1E1A0];
    goto LABEL_11;
  }

  if (v39 == *MEMORY[0x277D1E750])
  {
    v40 = MEMORY[0x277D1E188];
    goto LABEL_11;
  }

  if (v39 == *MEMORY[0x277D1E810])
  {
    v40 = MEMORY[0x277D1E190];
    goto LABEL_11;
  }

  v41 = 1;
LABEL_12:
  sub_22BB336D0(v30, v41, 1, v33);
  (*(v20 + 8))(v25, v17);
  sub_22BBDB5D0(v30, v32, &qword_27D8E66F0, &qword_22BDCE7B8);
  sub_22BB31814(v32, 1, v33);
  if (v42)
  {
    sub_22BB325EC(v32, &qword_27D8E66F0, &qword_22BDCE7B8);
    type metadata accessor for ExecutorLogging(0);
    sub_22BB30B28();
  }

  else
  {
    v43 = *(v36 + 32);
    v44 = sub_22BB2F12C();
    (v43)(v44);
    sub_22BDB8E54();
    v45 = *(v36 + 16);
    sub_22BD725D4();
    v46();
    v47 = v61;
    v48 = v63;
    (*(v61 + 104))(v9, *MEMORY[0x277D1DC98], v63);
    v49 = v62;
    v50 = v66;
    sub_22BDB8E44();
    (*(v47 + 8))(v9, v48);
    v51 = v67;
    sub_22BD725D4();
    v43();
    v52 = type metadata accessor for ExecutorLogging(0);
    v53 = *(v52 + 24);
    v54 = sub_22BDB9774();
    sub_22BB30ED8(v54);
    (*(v55 + 16))(v51 + v53, v50);
    (*(v64 + 32))(v51 + *(v52 + 20), v49, v65);
    sub_22BB331C8();
    v59 = v52;
  }

  sub_22BB336D0(v56, v57, v58, v59);
  sub_22BB314EC();
}

uint64_t sub_22BD672A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = *(*(sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v6 = sub_22BDB4C84();
  v4[21] = v6;
  v7 = *(v6 - 8);
  v4[22] = v7;
  v8 = *(v7 + 64) + 15;
  v4[23] = swift_task_alloc();
  v9 = sub_22BDB5404();
  v4[24] = v9;
  v10 = *(v9 - 8);
  v4[25] = v10;
  v11 = *(v10 + 64) + 15;
  v4[26] = swift_task_alloc();
  v12 = sub_22BDB8E14();
  v4[27] = v12;
  v13 = *(v12 - 8);
  v4[28] = v13;
  v14 = *(v13 + 64) + 15;
  v4[29] = swift_task_alloc();
  v15 = *(*(sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v16 = sub_22BDB90B4();
  v4[31] = v16;
  v17 = *(v16 - 8);
  v4[32] = v17;
  v18 = *(v17 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v19 = *(*(sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  ResultPayload = type metadata accessor for QueryResultPayload(0);
  v4[36] = ResultPayload;
  v21 = *(*(ResultPayload - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v22 = sub_22BDB7734();
  v4[38] = v22;
  v23 = *(v22 - 8);
  v4[39] = v23;
  v24 = *(v23 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v25 = sub_22BDB7754();
  v4[43] = v25;
  v26 = *(v25 - 8);
  v4[44] = v26;
  v27 = *(v26 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v28 = sub_22BDB6774();
  v4[47] = v28;
  v29 = *(v28 - 8);
  v4[48] = v29;
  v30 = *(v29 + 64) + 15;
  v4[49] = swift_task_alloc();
  v31 = *(*(sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390) - 8) + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v32 = sub_22BDB77D4();
  v4[52] = v32;
  v33 = *(v32 - 8);
  v4[53] = v33;
  v34 = *(v33 + 64) + 15;
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v35 = sub_22BDB4C34();
  v4[57] = v35;
  v36 = *(v35 - 8);
  v4[58] = v36;
  v37 = *(v36 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v38 = sub_22BDBA5C4();
  v4[63] = v38;
  v39 = *(v38 - 8);
  v4[64] = v39;
  v40 = *(v39 + 64) + 15;
  v4[65] = swift_task_alloc();
  v41 = sub_22BDBA594();
  v4[66] = v41;
  v42 = *(v41 - 8);
  v4[67] = v42;
  v43 = *(v42 + 64) + 15;
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v44 = sub_22BDB9014();
  v4[71] = v44;
  v45 = *(v44 - 8);
  v4[72] = v45;
  v46 = *(v45 + 64) + 15;
  v4[73] = swift_task_alloc();
  v47 = sub_22BDB88E4();
  v4[74] = v47;
  v48 = *(v47 - 8);
  v4[75] = v48;
  v49 = *(v48 + 64) + 15;
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v50 = *(*(sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660) - 8) + 64) + 15;
  v4[78] = swift_task_alloc();
  v51 = sub_22BDB9B54();
  v4[79] = v51;
  v52 = *(v51 - 8);
  v4[80] = v52;
  v53 = *(v52 + 64) + 15;
  v4[81] = swift_task_alloc();
  v54 = *(*(sub_22BBE6DE0(&qword_27D8E66B8, &qword_22BDCE788) - 8) + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v55 = sub_22BDB8C14();
  v4[85] = v55;
  v56 = *(v55 - 8);
  v4[86] = v56;
  v57 = *(v56 + 64) + 15;
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v58 = sub_22BDB43E4();
  v4[89] = v58;
  v59 = *(v58 - 8);
  v4[90] = v59;
  v60 = *(v59 + 64) + 15;
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v61 = sub_22BDB9D04();
  v4[94] = v61;
  v62 = *(v61 - 8);
  v4[95] = v62;
  v63 = *(v62 + 64) + 15;
  v4[96] = swift_task_alloc();
  v64 = sub_22BDB9774();
  v4[97] = v64;
  v65 = *(v64 - 8);
  v4[98] = v65;
  v66 = *(v65 + 64) + 15;
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v67 = sub_22BDB9564();
  v4[101] = v67;
  v68 = *(v67 - 8);
  v4[102] = v68;
  v69 = *(v68 + 64) + 15;
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v70 = sub_22BDB9B14();
  v4[106] = v70;
  v71 = *(v70 - 8);
  v4[107] = v71;
  v72 = *(v71 + 64) + 15;
  v4[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD67CB8, 0, 0);
}

uint64_t sub_22BD67CB8()
{
  v423 = v0;
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[16];
  sub_22BDB9B24();
  v5 = *(v2 + 88);
  v6 = sub_22BB30AE4();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D1E710])
  {
    v9 = v0[108];
    sub_22BD725A0();
    v10 = v0[105];
    v11 = v0[102];
    v12 = v0[101];
    v13 = v0[100];
    v14 = v0[98];
    v15 = v0[97];
    v16 = v0[17];
    (*(v17 + 96))(v9);
    (*(v11 + 32))(v10, v9, v12);
    sub_22BDB96A4();
    v18 = sub_22BDB9744();
    v19 = *(v14 + 8);
    v20 = sub_22BB331D4();
    v21(v20);
    v0[15] = v18;
    v22 = sub_22BB2F0E0();
    sub_22BBE6DE0(v22, v23);
    sub_22BB31DE0();
    sub_22BB7592C();
    sub_22BBB5F9C(v24, v25, v26);
    LOBYTE(v16) = sub_22BDB90E4();

    if (v16)
    {
      v27 = v0[105];
      v28 = v0[104];
      v29 = v0[102];
      v30 = v0[101];
      v31 = v0[56];
      sub_22BDB63F4();
      v32 = sub_22BB34900();
      v33(v32);
      v34 = sub_22BDB77C4();
      v35 = sub_22BDBB134();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[104];
      v38 = v0[102];
      v39 = v0[101];
      v40 = v0[56];
      v42 = v0[52];
      v41 = v0[53];
      if (v36)
      {
        swift_slowAlloc();
        v410 = sub_22BB38198();
        v422 = v410;
        *v42 = 136315138;
        sub_22BD721F4(&qword_27D8E66E0, MEMORY[0x277D1E5C0]);
        sub_22BDBB684();
        v44 = *(v38 + 8);
        v43 = v38 + 8;
        v45 = sub_22BB38BE8();
        v46(v45);
        v47 = sub_22BB5138C();
        v50 = sub_22BB32EE0(v47, v48, v49);

        *(v42 + 4) = v50;
        sub_22BB3E308(&dword_22BB2C000, v51, v52, "Executor: Skipping action execution due to safety mode being enabled: %s");
        sub_22BB32FA4(v410);
        sub_22BB30AF0();
        sub_22BB30AF0();
      }

      else
      {

        v159 = *(v38 + 8);
        v43 = v38 + 8;
        v160 = sub_22BB38BE8();
        v161(v160);
      }

      (*(v41 + 8))(v40, v42);
      v162 = v0[107];
      v163 = v0[106];
      v164 = v0[105];
      v165 = v0[101];
LABEL_23:
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      v166 = *(v162 + 72);
      v167 = *(v162 + 80);
      sub_22BBADC5C();
      v168 = swift_allocObject();
      *(v168 + 16) = xmmword_22BDBCBD0;
      sub_22BDB8CF4();
      (*(v162 + 104))(v168 + v43, *MEMORY[0x277D1E7A8], v163);
      v169 = sub_22BB30AE4();
      v39(v169);
      goto LABEL_35;
    }

    v79 = swift_task_alloc();
    v0[115] = v79;
    *v79 = v0;
    v79[1] = sub_22BD69C3C;
    v80 = v0[105];
    v81 = v0[18];
    v82 = v0[19];
    v83 = v0[16];
    v84 = v0[17];
    sub_22BB36C48();

    return sub_22BD6C648(v85, v86, v87, v88);
  }

  if (v8 == *MEMORY[0x277D1E728])
  {
    v53 = v0[108];
    sub_22BD725A0();
    v54 = v0[100];
    v55 = v0[98];
    v56 = v0[97];
    v57 = v0[88];
    v58 = v0[86];
    v59 = v0[85];
    v60 = v0[84];
    v416 = v0[83];
    v61 = v0[17];
    (*(v62 + 96))(v53);
    (*(v58 + 32))(v57, v53, v59);
    sub_22BDB96A4();
    v63 = sub_22BDB9744();
    v64 = *(v55 + 8);
    v65 = sub_22BB30AE4();
    v66(v65);
    v0[13] = v63;
    *(swift_task_alloc() + 16) = v57;
    v67 = sub_22BB2F3F0();
    sub_22BBE6DE0(v67, v68);
    v69 = sub_22BBE6DE0(&qword_27D8E66D0, &qword_22BDCE798);
    sub_22BB35554();
    sub_22BBB5F9C(v70, v71, &unk_22BDBD950);
    sub_22BD725D4();
    sub_22BDB9074();

    sub_22BBBEE60(v60, v416, &qword_27D8E66B8, &qword_22BDCE788);
    v72 = sub_22BB3A190();
    sub_22BB31814(v72, v73, v69);
    if (v181)
    {
      v74 = v0[79];
      v75 = v0[78];
      sub_22BB325EC(v0[83], &qword_27D8E66B8, &qword_22BDCE788);
      sub_22BB30B28();
      sub_22BB336D0(v76, v77, v78, v74);
    }

    else
    {
      v170 = v0[102];
      v171 = v0[101];
      v172 = v0[83];
      v173 = v0[79];
      v174 = v0[78];
      v175 = *(v69 + 48);
      v176 = *(v0[80] + 32);
      sub_22BB7592C();
      v176();
      sub_22BB331C8();
      sub_22BB336D0(v177, v178, v179, v173);
      v180 = *(v170 + 8);
      v0[121] = v180;
      v0[122] = (v170 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v180(v172 + v175, v171);
      sub_22BB31814(v174, 1, v173);
      if (!v181)
      {
        v283 = v0[84];
        v284 = v0[82];
        (v176)(v0[81], v0[78], v0[79]);
        v285 = sub_22BB2F3F0();
        sub_22BBBEE60(v285, v286, v287, v288);
        v289 = sub_22BB3AA28(v284, 1, v69);
        v290 = v0[80];
        v291 = v0[79];
        v292 = v0[30];
        if (v289 == 1)
        {
          v293 = v0[101];
          v294 = v0[82];
          (*(v290 + 8))(v0[81], v0[79]);
          sub_22BB325EC(v294, &qword_27D8E66B8, &qword_22BDCE788);
          v295 = sub_22BB34170();
          sub_22BB336D0(v295, v296, v297, v293);
        }

        else
        {
          v347 = v0[101];
          v348 = v0[82];
          v349 = *(v69 + 48);
          v350 = *(v0[102] + 32);
          v350(v0[30], v348 + v349, v347);
          sub_22BB331C8();
          sub_22BB336D0(v351, v352, v353, v347);
          v354 = *(v290 + 8);
          v0[123] = v354;
          v0[124] = (v290 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v354(v348, v291);
          v355 = sub_22BB3A190();
          sub_22BB31814(v355, v356, v347);
          if (!v181)
          {
            v350(v0[103], v0[30], v0[101]);
            v362 = swift_task_alloc();
            v0[125] = v362;
            *v362 = v0;
            v362[1] = sub_22BD6A9D4;
            v363 = v0[88];
            v364 = v0[19];
            sub_22BB36C48();

            return sub_22BC5B99C(v365);
          }

          v354(v0[81], v0[79]);
        }

        v182 = v0[30];
        v183 = &qword_27D8E3A80;
        v184 = &qword_22BDC0608;
        goto LABEL_27;
      }
    }

    v182 = v0[78];
    v183 = &unk_27D8E69E0;
    v184 = &qword_22BDC1660;
LABEL_27:
    sub_22BB325EC(v182, v183, v184);
    v185 = v0[88];
    v186 = v0[87];
    v187 = v0[86];
    v188 = v0[85];
    v189 = v0[55];
    sub_22BDB63F4();
    v190 = sub_22BB34900();
    v191(v190);
    v192 = sub_22BDB77C4();
    v193 = sub_22BDBB114();
    v194 = os_log_type_enabled(v192, v193);
    v195 = v0[87];
    v196 = v0[86];
    v197 = v0[85];
    if (v194)
    {
      v198 = v0[62];
      v200 = v0[57];
      v199 = v0[58];
      v419 = v0[55];
      v400 = v0[53];
      v404 = v0[52];
      swift_slowAlloc();
      v396 = sub_22BB38198();
      v422 = v396;
      *v197 = 136315138;
      v392 = v193;
      sub_22BDB8BF4();
      sub_22BD721F4(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v201 = sub_22BDBB684();
      v203 = v202;
      (*(v199 + 8))(v198, v200);
      v413 = *(v196 + 8);
      v413(v195, v197);
      v204 = sub_22BB32EE0(v201, v203, &v422);

      *(v197 + 4) = v204;
      _os_log_impl(&dword_22BB2C000, v192, v392, "Executor: Ignoring cancellation request since there's no actionCreated event for %s", v197, 0xCu);
      sub_22BB32FA4(v396);
      sub_22BB30AF0();
      sub_22BB30AF0();

      (*(v400 + 8))(v419, v404);
    }

    else
    {
      v247 = v0[55];
      v248 = v0[52];
      v249 = v0[53];

      v413 = *(v196 + 8);
      v413(v195, v197);
      v250 = *(v249 + 8);
      v251 = sub_22BB2F3F0();
      v252(v251);
    }

    v253 = v0[107];
    v393 = v0[88];
    v397 = v0[106];
    v401 = v0[84];
    v405 = v0[85];
    v420 = v0[61];
    v254 = v0[51];
    v386 = v0[34];
    v389 = v0[62];
    v256 = v0[25];
    v255 = v0[26];
    v257 = v0[23];
    v377 = v0[89];
    v380 = v0[24];
    v258 = v0[22];
    v375 = v0[21];
    v259 = v0[20];
    v383 = v0[17];
    sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
    sub_22BB3E234();
    v262 = v261 & ~v260;
    v263 = swift_allocObject();
    *(v263 + 16) = xmmword_22BDBCBD0;
    sub_22BB30B28();
    sub_22BB336D0(v264, v265, v266, v377);
    (*(v258 + 104))(v257, *MEMORY[0x277D1C3B0], v375);
    sub_22BDB4CC4();
    (*(v256 + 104))(v255, *MEMORY[0x277D1CBE8], v380);
    sub_22BDB53F4();
    sub_22BB30B28();
    sub_22BB336D0(v267, v268, v269, v270);
    sub_22BB2F324();
    sub_22BDB90A4();
    sub_22BDB96C4();
    sub_22BDB98D4();

    sub_22BDB8BF4();
    sub_22BB31B20();
    sub_22BDB87C4();
    (*(v253 + 104))(v263 + v262, *MEMORY[0x277D1E798], v397);
    sub_22BB325EC(v401, &qword_27D8E66B8, &qword_22BDCE788);
    v413(v393, v405);
    goto LABEL_35;
  }

  if (v8 == *MEMORY[0x277D1E730])
  {
    v91 = v0[108];
    sub_22BD725A0();
    v92 = v0[96];
    v93 = v0[95];
    v94 = v0[94];
    v395 = v0[92];
    v399 = v0[93];
    v403 = v0[91];
    v407 = v0[90];
    v95 = v0[89];
    v411 = v0[50];
    v417 = v0[51];
    v379 = v0[48];
    v382 = v0[47];
    v385 = v0[46];
    v388 = v0[42];
    v391 = v0[49];
    v96 = v0[16];
    (*(v97 + 96))(v91);
    v98 = *(v93 + 32);
    v99 = sub_22BB33728();
    v100(v99);
    sub_22BDB9B34();
    v101 = sub_22BDB9A14();
    v102 = sub_22BDB8434();
    v104 = sub_22BD81020(v102, v103, v101);
    LOBYTE(v93) = v105;

    v106 = v93 & 1;
    if (v93)
    {
      v107 = 0;
    }

    else
    {
      v107 = v104;
    }

    sub_22BDB9964();
    v108 = sub_22BDB9A24();
    v368 = v109;
    v369 = v108;
    v110 = type metadata accessor for ExecutorSELFContext();
    v0[5] = v110;
    sub_22BB32D00();
    v0[6] = sub_22BD721F4(v111, v112);
    v113 = sub_22BB8B8A0(v0 + 2);
    v114 = v110[8];
    v115 = v113 + v110[7];
    sub_22BB30B28();
    v367 = v95;
    sub_22BB336D0(v116, v117, v118, v95);
    v372 = v110[5];
    sub_22BDB43D4();
    v119 = v95;
    v120 = *(v407 + 16);
    v120(v113 + v110[6], v399, v119);
    v374 = v107;
    *v115 = v107;
    v115[8] = v106;
    sub_22BD72114(v417, v113 + v114);
    v121 = (v113 + v110[10]);
    *v121 = v369;
    v121[1] = v368;
    sub_22BDB6764();
    sub_22BDB6744();
    v120(v395, v399, v367);
    sub_22BDB6754();
    v122 = v110[9];
    sub_22BDB6724();
    v123 = type metadata accessor for ExecutorSELFLogEmitter();
    v370 = swift_allocObject();
    v120(v395, v113 + v372, v367);
    v120(v403, v113 + v122, v367);
    sub_22BBBEE60(v417, v411, &qword_27D8E3218, &qword_22BDBE390);
    v124 = type metadata accessor for ExecutorSELFLoggerASync(0);
    v125 = sub_22BB34ED4(v124);
    v120((v125 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_componentId), v403, v367);
    v126 = type metadata accessor for ExecutorSELFLoggerSync(0);
    v127 = sub_22BB34ED4(v126);
    *(v127 + 5) = v123;
    *(v127 + 6) = &off_283F74E60;
    *(v127 + 2) = v370;
    v128 = *(v407 + 32);
    v128(&v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId], v395, v367);
    v128(&v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId], v403, v367);
    v129 = &v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId];
    *v129 = v374;
    v129[8] = v106;
    sub_22BBDB5D0(v411, &v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId], &qword_27D8E3218, &qword_22BDBE390);
    *(v125 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v127;
    v113[3] = v124;
    v113[4] = &off_283F74C80;
    *v113 = v125;
    (*(v379 + 8))(v391, v382);
    sub_22BB325EC(v417, &qword_27D8E3218, &qword_22BDBE390);
    (*(v407 + 8))(v399, v367);
    sub_22BDB6134();
    sub_22BDB7724();
    v130 = sub_22BDB7744();
    v131 = sub_22BDBB1D4();
    if (sub_22BDBB244())
    {
      v132 = v0[42];
      v133 = sub_22BB37F30();
      *v133 = 0;
      v134 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v130, v131, v134, "IF.Executor.runQuery", "", v133, 2u);
      sub_22BB30AF0();
    }

    v135 = v0[80];
    v136 = v0[46];
    v138 = v0[43];
    v137 = v0[44];
    v139 = v0[41];
    v140 = v0[42];
    v142 = v0[38];
    v141 = v0[39];
    v412 = v0[18];
    v418 = v0[79];
    v408 = v0[16];

    (*(v141 + 16))(v139, v140, v142);
    v143 = sub_22BDB77A4();
    sub_22BB34ED4(v143);
    sub_22BB3A190();
    v0[118] = sub_22BDB7794();
    v144 = *(v141 + 8);
    v145 = sub_22BB2F12C();
    v146(v145);
    (*(v137 + 8))(v136, v138);
    updated = type metadata accessor for EventScopedProgressUpdateHandler(0);
    v0[10] = updated;
    sub_22BB72F80();
    v150 = sub_22BD721F4(v148, v149);
    v151 = sub_22BD725E0(v150);
    (*(v135 + 16))(v151, v408, v418);
    sub_22BB69088(v412, v151 + *(updated + 20));
    swift_task_alloc();
    sub_22BB30B34();
    v0[119] = v152;
    *v152 = v153;
    v152[1] = sub_22BD6A174;
    v154 = v0[96];
    v155 = v0[37];
    v156 = v0[19];
    v157 = v0[17];
    sub_22BB36C48();

    return sub_22BC5B09C();
  }

  if (v8 != *MEMORY[0x277D1E750])
  {
    v298 = *MEMORY[0x277D1E810];
    v299 = v0[108];
    sub_22BD725A0();
    if (v301 == v302)
    {
      v303 = v0[73];
      v304 = v0[72];
      v305 = v0[71];
      v306 = v0[69];
      v307 = v0[65];
      (*(v300 + 96))(v299);
      v308 = *(v304 + 32);
      v309 = sub_22BB2F324();
      v310(v309);
      sub_22BDB8FF4();
      sub_22BDB9004();
      swift_task_alloc();
      sub_22BB30B34();
      v0[111] = v311;
      *v311 = v312;
      v311[1] = sub_22BD69520;
      v313 = v0[70];
      v314 = v0[69];
      v315 = v0[65];
      v316 = v0[19];
      sub_22BB36C48();

      return sub_22BC5CF28(v317, v318, v319);
    }

    (*(v300 + 8))(v299);
LABEL_35:
    v271 = v0[108];
    v272 = v0[105];
    v273 = v0[104];
    v274 = v0[103];
    v275 = v0[100];
    v276 = v0[99];
    v277 = v0[96];
    v278 = v0[93];
    v279 = v0[92];
    v280 = v0[91];
    sub_22BB35CD4();
    v371 = v0[46];
    v373 = v0[45];
    v376 = v0[42];
    v378 = v0[41];
    v381 = v0[40];
    v384 = v0[37];
    v387 = v0[35];
    v390 = v0[34];
    v394 = v0[33];
    v398 = v0[30];
    v402 = v0[29];
    v406 = v0[26];
    v409 = v0[23];
    v415 = v0[20];

    sub_22BD725AC();
    sub_22BB36C48();

    __asm { BRAA            X2, X16 }
  }

  v205 = v0[108];
  sub_22BD725A0();
  v206 = v0[100];
  v207 = v0[98];
  v208 = v0[97];
  v209 = v0[77];
  v210 = v0[75];
  v211 = v0[74];
  v212 = v0[17];
  (*(v213 + 96))(v205);
  v214 = *(v210 + 32);
  v215 = sub_22BB39744();
  v216(v215);
  sub_22BDB96A4();
  v217 = sub_22BDB9744();
  v0[109] = *(v207 + 8);
  v0[110] = (v207 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v218 = sub_22BB30AE4();
  v219(v218);
  v0[12] = v217;
  v220 = sub_22BB2F324();
  sub_22BBE6DE0(v220, v221);
  sub_22BB31DE0();
  sub_22BBB5F9C(v222, &qword_27D8E2F48, &unk_22BDBD950);
  LOBYTE(v212) = sub_22BDB90E4();

  if (v212)
  {
    v223 = v0[77];
    v224 = v0[76];
    v225 = v0[75];
    v226 = v0[74];
    v227 = v0[54];
    sub_22BDB63F4();
    v228 = sub_22BB34900();
    v229(v228);
    v230 = sub_22BDB77C4();
    v231 = sub_22BDBB134();
    v232 = os_log_type_enabled(v230, v231);
    v233 = v0[76];
    v234 = v0[75];
    v39 = v0[74];
    v236 = v0[53];
    v235 = v0[54];
    v237 = v0[52];
    if (v232)
    {
      swift_slowAlloc();
      v414 = sub_22BB38198();
      v422 = v414;
      *v237 = 136315138;
      sub_22BD721F4(&qword_27D8E66C8, MEMORY[0x277D1DEC0]);
      sub_22BDBB684();
      v238 = *(v234 + 8);
      v43 = v234 + 8;
      v239 = sub_22BB38BE8();
      v240(v239);
      v241 = sub_22BB5138C();
      v244 = sub_22BB32EE0(v241, v242, v243);

      *(v237 + 4) = v244;
      sub_22BB3E308(&dword_22BB2C000, v245, v246, "Executor: Skipping undo/redo execution due to safety mode being enabled: %s");
      sub_22BB32FA4(v414);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v357 = *(v234 + 8);
      v43 = v234 + 8;
      v358 = sub_22BB38BE8();
      v359(v358);
    }

    (*(v236 + 8))(v235, v237);
    v162 = v0[107];
    v163 = v0[106];
    v360 = v0[77];
    v361 = v0[74];
    goto LABEL_23;
  }

  v321 = v0[45];
  v322 = v0[40];
  sub_22BDB6134();
  sub_22BDB7724();
  v323 = sub_22BDB7744();
  v324 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v325 = v0[40];
    v326 = sub_22BB37F30();
    *v326 = 0;
    v327 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v323, v324, v327, "IF.Executor.undoRedo", "", v326, 2u);
    sub_22BB30AF0();
  }

  v421 = v0[99];
  v329 = v0[44];
  v328 = v0[45];
  v330 = v0[43];
  v332 = v0[40];
  v331 = v0[41];
  v334 = v0[38];
  v333 = v0[39];
  v335 = v0[17];

  (*(v333 + 16))(v331, v332, v334);
  v336 = sub_22BDB77A4();
  sub_22BB34ED4(v336);
  sub_22BB3A190();
  v0[127] = sub_22BDB7794();
  (*(v333 + 8))(v332, v334);
  v337 = *(v329 + 8);
  v338 = sub_22BB331D4();
  v339(v338);
  sub_22BDB96A4();
  swift_task_alloc();
  sub_22BB30B34();
  v0[128] = v340;
  *v340 = v341;
  v340[1] = sub_22BD6B1AC;
  v342 = v0[99];
  v343 = v0[77];
  v344 = v0[33];
  v345 = v0[19];
  sub_22BB36C48();

  return sub_22BC5BC5C();
}

uint64_t sub_22BD69520()
{
  sub_22BB34E84();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[111];
  *v4 = *v1;
  v3[112] = v0;

  v6 = v2[69];
  v7 = v2[67];
  v8 = v2[66];
  (*(v2[64] + 8))(v2[65], v2[63]);
  v11 = *(v7 + 8);
  v10 = v7 + 8;
  v9 = v11;
  if (!v0)
  {
    v3[113] = v9;
    v3[114] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v12 = sub_22BB331D4();
  v13(v12);
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BD696F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v54 = v52[107];
  v87 = v52[106];
  v88 = v52[113];
  v85 = v52[73];
  v86 = v52[72];
  v89 = v52[71];
  v90 = v52[114];
  v55 = v52[70];
  v56 = v52[68];
  v57 = v52[67];
  v58 = v52[66];
  v59 = v52[61];
  v84 = v52[62];
  v60 = v52[17];
  sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
  v61 = *(v54 + 72);
  v62 = *(v54 + 80);
  sub_22BBADC5C();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_22BDBCBD0;
  (*(v57 + 16))(v56, v55, v58);
  sub_22BDB96C4();
  sub_22BDB98D4();

  sub_22BDB8FE4();
  v91 = v63;
  sub_22BDB8EA4();
  (*(v54 + 104))(v63 + v53, *MEMORY[0x277D1E7D8], v87);
  v64 = sub_22BB8DC7C();
  v88(v64);
  (*(v86 + 8))(v85, v89);
  v65 = v52[108];
  v66 = v52[105];
  v67 = v52[104];
  v68 = v52[103];
  v69 = v52[100];
  v70 = v52[99];
  v71 = v52[96];
  v72 = v52[93];
  v73 = v52[92];
  v74 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3583C();
  sub_22BB6BD74();

  return v77(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v84, v85, v86, v87, v88, v89, v90, v91, a49, a50, a51, a52);
}

uint64_t sub_22BD69A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  (*(v52[72] + 8))(v52[73], v52[71]);
  sub_22BB922F4(v52[112]);
  v53 = v52[105];
  v54 = v52[104];
  v55 = v52[103];
  v56 = v52[100];
  v57 = v52[99];
  v58 = v52[96];
  v59 = v52[93];
  v60 = v52[92];
  v61 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3ACAC();
  sub_22BB6BD74();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22BD69C3C()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB3053C();
  *v6 = v5;
  v8 = *(v7 + 920);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;
  *(v5 + 928) = v0;

  if (!v0)
  {
    *(v5 + 936) = v3;
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD69D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = sub_22BB6C728();
  v54(v53);
  sub_22BB922F4(v52[117]);
  v55 = v52[105];
  v56 = v52[104];
  v57 = v52[103];
  v58 = v52[100];
  v59 = v52[99];
  v60 = v52[96];
  v61 = v52[93];
  v62 = v52[92];
  v63 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3583C();
  sub_22BB6BD74();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22BD69F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = sub_22BB6C728();
  v54(v53);
  sub_22BB922F4(v52[116]);
  v55 = v52[105];
  v56 = v52[104];
  v57 = v52[103];
  v58 = v52[100];
  v59 = v52[99];
  v60 = v52[96];
  v61 = v52[93];
  v62 = v52[92];
  v63 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3ACAC();
  sub_22BB6BD74();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22BD6A174()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 952);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 960) = v0;

  if (!v0)
  {
    sub_22BB32FA4((v3 + 56));
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BD6A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = v52[100];
  v54 = v52[98];
  v55 = v52[97];
  v56 = v52[57];
  v57 = v52[35];
  v58 = v52[17];
  sub_22BDB96A4();
  v59 = sub_22BDB9744();
  v60 = *(v54 + 8);
  v61 = sub_22BB30AE4();
  v62(v61);
  v52[14] = v59;
  v63 = sub_22BB30AE4();
  sub_22BBE6DE0(v63, v64);
  sub_22BB31DE0();
  sub_22BBB5F9C(v65, &qword_27D8E2F48, &unk_22BDBD950);
  sub_22BDB9164();

  v66 = sub_22BB3AA28(v57, 1, v56);
  v67 = v52[57];
  v68 = v52[35];
  if (v66 == 1)
  {
    v69 = v52[96];
    v70 = v52[60];
    sub_22BDB8174();
    sub_22BB31814(v68, 1, v67);
    if (!v71)
    {
      sub_22BB325EC(v52[35], &qword_27D8E27C0, &qword_22BDBCDF0);
    }
  }

  else
  {
    (*(v52[58] + 32))(v52[60], v52[35], v52[57]);
  }

  v72 = v52[107];
  v113 = v52[106];
  v114 = v52[118];
  v115 = v52[95];
  v116 = v52[94];
  v117 = v52[96];
  v73 = v52[89];
  v74 = v52[62];
  v107 = v52[61];
  v109 = v52[58];
  v110 = v52[59];
  v111 = v52[57];
  v112 = v52[60];
  v105 = v52[51];
  v75 = v52[36];
  v76 = v52[37];
  v77 = v52[34];
  v102 = v77;
  v78 = v52[31];
  v79 = v52[32];
  v104 = v52[17];
  sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
  v108 = v72;
  sub_22BB3E234();
  v82 = v81 & ~v80;
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_22BDBCBD0;
  v83 = sub_22BB34170();
  sub_22BB336D0(v83, v84, v85, v73);
  v86 = v76;
  v106 = v76;
  v87 = (v76 + *(v75 + 20));
  v88 = v87[1];
  v103 = *v87;
  (*(v79 + 16))(v77, v86, v78);

  sub_22BDB96C4();
  sub_22BDB98D4();

  sub_22BDB8174();
  (*(v109 + 16))(v110, v112, v111);
  sub_22BDB87B4();
  (*(v108 + 104))(v118 + v82, *MEMORY[0x277D1E798], v113);
  (*(v109 + 8))(v112, v111);
  sub_22BD721A4();
  sub_22BD6E704();

  (*(v115 + 8))(v117, v116);
  sub_22BB325EC((v52 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB3E04C();
  v89 = v52[96];
  v90 = v52[93];
  v91 = v52[92];
  v92 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3583C();
  sub_22BB6BD74();

  return v95(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, a49, a50, a51, a52);
}

uint64_t sub_22BD6A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = v52[118];
  v54 = v52[96];
  v55 = v52[95];
  v56 = v52[94];
  sub_22BB32FA4(v52 + 7);
  sub_22BD6E704();

  v57 = *(v55 + 8);
  v58 = sub_22BB30AE4();
  v59(v58);
  sub_22BB325EC((v52 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB922F4(v52[120]);
  v60 = v52[105];
  v61 = v52[104];
  v62 = v52[103];
  v63 = v52[100];
  v64 = v52[99];
  v65 = v52[96];
  v66 = v52[93];
  v67 = v52[92];
  v68 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3ACAC();
  sub_22BB6BD74();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22BD6A9D4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 1000);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 1008) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BD6AAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v111 = v52[123];
  v112 = v52[124];
  v110 = v52[122];
  v108 = v52[121];
  v53 = v52[107];
  v105 = v52[106];
  v93 = v52[103];
  v107 = v52[101];
  v95 = v52[89];
  v113 = v52[86];
  v114 = v52[85];
  v115 = v52[88];
  v109 = v52[84];
  v102 = v52[81];
  v106 = v52[79];
  v103 = v52[62];
  v104 = v52[61];
  v54 = v52[51];
  v101 = v52[34];
  v56 = v52[28];
  v55 = v52[29];
  v57 = v52[26];
  v58 = v52[25];
  v59 = v52[22];
  v90 = v52[27];
  v91 = v52[23];
  v92 = v52[21];
  v97 = v52[24];
  v98 = v52[20];
  v99 = v52[17];
  sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
  sub_22BB3E234();
  v100 = v61 & ~v60;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_22BDBCBD0;
  sub_22BDB8F24();
  sub_22BB331C8();
  sub_22BB336D0(v62, v63, v64, v95);
  sub_22BB3CE30();
  sub_22BDB9544();
  v65 = sub_22BDB8E04();
  v94 = v66;
  v96 = v65;
  (*(v56 + 8))(v55, v90);
  (*(v59 + 104))(v91, *MEMORY[0x277D1C3B0], v92);
  sub_22BDB4CC4();
  (*(v58 + 104))(v57, *MEMORY[0x277D1CBE8], v97);
  sub_22BDB53F4();
  v67 = sub_22BB34170();
  sub_22BB336D0(v67, v68, v69, v70);
  sub_22BB31F54();
  sub_22BDB90A4();
  sub_22BDB96C4();
  sub_22BDB98D4();

  sub_22BDB8174();
  sub_22BDB87C4();
  (*(v53 + 104))(v116 + v100, *MEMORY[0x277D1E798], v105);
  v108(v93, v107);
  v111(v102, v106);
  sub_22BB325EC(v109, &qword_27D8E66B8, &qword_22BDCE788);
  (*(v113 + 8))(v115, v114);
  v71 = v52[108];
  v72 = v52[105];
  v73 = v52[104];
  v74 = v52[103];
  v75 = v52[100];
  v76 = v52[99];
  v77 = v52[96];
  v78 = v52[93];
  v79 = v52[92];
  v80 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3583C();
  sub_22BB6BD74();

  return v83(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v90, v91, v92, v93, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, a49, a50, a51, a52);
}

uint64_t sub_22BD6AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = *(v52 + 992);
  v54 = *(v52 + 984);
  v55 = *(v52 + 976);
  v56 = *(v52 + 704);
  v57 = *(v52 + 688);
  v58 = *(v52 + 680);
  v59 = *(v52 + 672);
  v60 = *(v52 + 648);
  v61 = *(v52 + 632);
  (*(v52 + 968))(*(v52 + 824), *(v52 + 808));
  v62 = sub_22BB331D4();
  v54(v62);
  sub_22BB325EC(v59, &qword_27D8E66B8, &qword_22BDCE788);
  v63 = *(v57 + 8);
  v64 = sub_22BB2F324();
  v65(v64);
  sub_22BB922F4(*(v52 + 1008));
  v66 = *(v52 + 840);
  v67 = *(v52 + 832);
  v68 = *(v52 + 824);
  v69 = *(v52 + 800);
  v70 = *(v52 + 792);
  v71 = *(v52 + 768);
  v72 = *(v52 + 744);
  v73 = *(v52 + 736);
  v74 = *(v52 + 728);
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3ACAC();
  sub_22BB6BD74();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22BD6B1AC()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = *(v2 + 1024);
  *v4 = *v1;
  *(v3 + 1032) = v0;

  v6 = *(v2 + 880);
  (*(v2 + 872))(*(v2 + 792), *(v2 + 776));
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD6B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = v52[107];
  v87 = v52[106];
  v88 = v52[127];
  v89 = v52[75];
  v90 = v52[74];
  v85 = v52[61];
  v86 = v52[77];
  v54 = v52[51];
  v56 = v52[33];
  v55 = v52[34];
  v81 = v56;
  v82 = v52[89];
  v58 = v52[31];
  v57 = v52[32];
  v80 = v58;
  v59 = v52[16];
  v83 = v52[17];
  v84 = v52[62];
  sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
  sub_22BB3E234();
  v62 = v61 & ~v60;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_22BDBCBD0;
  sub_22BDB8F24();
  sub_22BB331C8();
  sub_22BB336D0(v64, v65, v66, v82);
  (*(v57 + 16))(v55, v56, v58);
  sub_22BDB96C4();
  sub_22BDB98D4();

  sub_22BDB88A4();
  sub_22BB31B20();
  sub_22BDB87C4();
  (*(v53 + 104))(v63 + v62, *MEMORY[0x277D1E798], v87);
  (*(v57 + 8))(v56, v58);
  sub_22BD6E704();

  (*(v89 + 8))(v86, v90);
  sub_22BB3E04C();
  v67 = v52[96];
  v68 = v52[93];
  v69 = v52[92];
  v70 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3583C();
  sub_22BB6BD74();

  return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v63, a49, a50, a51, a52);
}

uint64_t sub_22BD6B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_22BB3A9E0();
  sub_22BB3AFB8();
  v53 = v52[127];
  v54 = v52[77];
  v55 = v52[75];
  v56 = v52[74];
  sub_22BD6E704();

  v57 = *(v55 + 8);
  v58 = sub_22BB30AE4();
  v59(v58);
  sub_22BB922F4(v52[129]);
  v60 = v52[105];
  v61 = v52[104];
  v62 = v52[103];
  v63 = v52[100];
  v64 = v52[99];
  v65 = v52[96];
  v66 = v52[93];
  v67 = v52[92];
  v68 = v52[91];
  sub_22BB35CD4();
  sub_22BB30954();

  sub_22BB3ACAC();
  sub_22BB6BD74();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_22BD6B8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a4;
  v118 = a2;
  v119 = a1;
  v117 = a5;
  v6 = sub_22BDB9B54();
  v113 = *(v6 - 8);
  v114 = v6;
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v6);
  v103 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB77D4();
  v108 = *(v9 - 8);
  v109 = v9;
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v9);
  v115 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v102 = &v92 - v14;
  v15 = sub_22BDB87F4();
  v105 = *(v15 - 8);
  v106 = v15;
  v16 = *(v105 + 64);
  MEMORY[0x28223BE20](v15);
  v104 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = &v92 - v20;
  v98 = sub_22BDB5404();
  v97 = *(v98 - 8);
  v21 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22BDB90B4();
  v99 = *(v112 - 1);
  v24 = *(v99 + 64);
  v25 = MEMORY[0x28223BE20](v112);
  v101 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v110 = &v92 - v27;
  v28 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v92 - v30;
  v32 = sub_22BDB9B14();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v92 - v38;
  v40 = sub_22BDB4C34();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v96 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v95 = &v92 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v92 - v47;
  v121 = a3;
  sub_22BDB9B24();
  sub_22BD6E990(v31);
  v120 = v33;
  v49 = *(v33 + 8);
  v50 = v39;
  v51 = v33 + 8;
  v111 = v32;
  v49(v50, v32);
  v52 = sub_22BB3AA28(v31, 1, v40);
  v116 = v49;
  if (v52 == 1)
  {
    v53 = v37;
    v54 = v111;
    sub_22BB325EC(v31, &qword_27D8E27C0, &qword_22BDBCDF0);
    sub_22BDB63F4();
    v55 = v103;
    (*(v113 + 16))(v103, v121, v114);
    v56 = sub_22BDB77C4();
    v57 = sub_22BDBB114();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v122 = v112;
      *v58 = 136315138;
      sub_22BDB9B24();
      sub_22BD721F4(&qword_27D8E6368, MEMORY[0x277D1E870]);
      v59 = v54;
      v60 = sub_22BDBB684();
      v62 = v61;
      v63 = v37;
      v64 = v116;
      v116(v63, v59);
      (*(v113 + 8))(v55, v114);
      v65 = sub_22BB32EE0(v60, v62, &v122);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_22BB2C000, v56, v57, "Unable to find statement ID for event: %s", v58, 0xCu);
      v66 = v112;
      sub_22BB32FA4(v112);
      MEMORY[0x2318A6080](v66, -1, -1);
      MEMORY[0x2318A6080](v58, -1, -1);

      (*(v108 + 8))(v115, v109);
      v67 = v118;
      v68 = v120;
    }

    else
    {

      (*(v113 + 8))(v55, v114);
      (*(v108 + 8))(v115, v109);
      v67 = v118;
      v59 = v54;
      v68 = v120;
      v64 = v116;
    }

    type metadata accessor for RuntimeError();
    sub_22BD721F4(&qword_27D8E2F58, type metadata accessor for RuntimeError);
    swift_allocError();
    *v87 = v119;
    v87[1] = v67;
    swift_storeEnumTagMultiPayload();

    sub_22BDB4BA4();
    v88 = *MEMORY[0x277D1DCE0];
    v89 = sub_22BDB8314();
    (*(*(v89 - 8) + 104))(v53, v88, v89);
    v90 = *MEMORY[0x277D1DC58];
    v91 = sub_22BDB8294();
    (*(*(v91 - 8) + 104))(v53, v90, v91);
    (*(v68 + 104))(v53, *MEMORY[0x277D1E718], v59);
    sub_22BDB9A54();
    return v64(v53, v59);
  }

  else
  {
    v93 = v41;
    v69 = *(v41 + 32);
    v94 = v48;
    v69(v48, v31, v40);

    sub_22BDB5474();
    v70 = *MEMORY[0x277D1CD18];
    v71 = sub_22BDB5484();
    (*(*(v71 - 8) + 104))(v23, v70, v71);
    v72 = *MEMORY[0x277D1CC20];
    v73 = sub_22BDB5414();
    (*(*(v73 - 8) + 104))(v23, v72, v73);
    (*(v97 + 104))(v23, *MEMORY[0x277D1CBA0], v98);
    v74 = sub_22BDB53F4();
    sub_22BB336D0(v100, 1, 1, v74);
    v75 = v110;
    sub_22BDB90A4();
    v76 = v102;
    sub_22BDB8F24();
    v77 = sub_22BDB43E4();
    sub_22BB336D0(v76, 0, 1, v77);
    v78 = v99;
    (*(v99 + 16))(v101, v75, v112);
    sub_22BDB96C4();
    sub_22BDB98D4();

    v79 = v40;
    v80 = v93;
    v81 = v94;
    (*(v93 + 16))(v96, v94, v79);
    v119 = v51;
    v82 = v104;
    sub_22BDB87C4();
    v84 = v105;
    v83 = v106;
    (*(v105 + 16))(v37, v82, v106);
    v85 = v111;
    (*(v120 + 104))(v37, *MEMORY[0x277D1E798], v111);
    sub_22BDB9A54();
    v116(v37, v85);
    (*(v84 + 8))(v82, v83);
    (*(v78 + 8))(v110, v112);
    return (*(v80 + 8))(v81, v79);
  }
}

void sub_22BD6C488()
{
  sub_22BB30F94();
  v1 = sub_22BDB8334();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB8134();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v18 = v17 - v16;
  sub_22BDB8E54();
  sub_22BD72588();
  v19 = sub_22BDB8F54();
  sub_22BB30ED8(v19);
  (*(v20 + 16))(v18, v0);
  (*(v13 + 104))(v18, *MEMORY[0x277D1DB40], v10);
  sub_22BDB4234();
  sub_22BDB8324();
  v21 = type metadata accessor for ExecutorLogging(0);
  v23 = *(v21 + 20);
  v22 = *(v21 + 24);
  sub_22BDB8E34();
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
  sub_22BB314EC();
}

uint64_t sub_22BD6C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_22BDB8634();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = sub_22BDB5AD4();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = sub_22BDB9564();
  v5[25] = v12;
  v13 = *(v12 - 8);
  v5[26] = v13;
  v14 = *(v13 + 64) + 15;
  v5[27] = swift_task_alloc();
  v15 = *(*(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v16 = sub_22BDB8E14();
  v5[29] = v16;
  v17 = *(v16 - 8);
  v5[30] = v17;
  v18 = *(v17 + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = sub_22BDB90B4();
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v22 = *(*(sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0) - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v23 = sub_22BDB4C34();
  v5[38] = v23;
  v24 = *(v23 - 8);
  v5[39] = v24;
  v25 = *(v24 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v26 = sub_22BDB9774();
  v5[44] = v26;
  v27 = *(v26 - 8);
  v5[45] = v27;
  v28 = *(v27 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v29 = type metadata accessor for ActionExecutionResult(0);
  v5[48] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v31 = sub_22BDB7734();
  v5[51] = v31;
  v32 = *(v31 - 8);
  v5[52] = v32;
  v33 = *(v32 + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v34 = sub_22BDB7754();
  v5[55] = v34;
  v35 = *(v34 - 8);
  v5[56] = v35;
  v36 = *(v35 + 64) + 15;
  v5[57] = swift_task_alloc();
  v37 = sub_22BDB6774();
  v5[58] = v37;
  v38 = *(v37 - 8);
  v5[59] = v38;
  v39 = *(v38 + 64) + 15;
  v5[60] = swift_task_alloc();
  v40 = *(*(sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390) - 8) + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v41 = sub_22BDB43E4();
  v5[63] = v41;
  v42 = *(v41 - 8);
  v5[64] = v42;
  v43 = *(v42 + 64) + 15;
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD6CC1C, 0, 0);
}

uint64_t sub_22BD6CC1C()
{
  v75 = v0[69];
  v73 = v0[68];
  v2 = v0[63];
  v1 = v0[64];
  v66 = v1;
  v67 = v0[67];
  v77 = v0[61];
  v79 = v0[62];
  v74 = v0[60];
  v68 = v0[59];
  v69 = v0[58];
  v70 = v0[57];
  v71 = v0[54];
  v3 = v0[15];
  sub_22BDB9B34();
  v4 = sub_22BDB9A14();
  v5 = sub_22BDB8434();
  v7 = sub_22BD81020(v5, v6, v4);
  v9 = v8;

  v72 = v9 & 1;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  sub_22BDB9964();
  v11 = sub_22BDB9A24();
  v62 = v12;
  v63 = v11;
  v13 = type metadata accessor for ExecutorSELFContext();
  v0[5] = v13;
  sub_22BB32D00();
  v0[6] = sub_22BD721F4(v14, v15);
  v16 = sub_22BB8B8A0(v0 + 2);
  v17 = v13[8];
  v18 = v16 + v13[7];
  sub_22BB30B28();
  sub_22BB336D0(v19, v20, v21, v2);
  v65 = v13[5];
  sub_22BDB43D4();
  v22 = v13[6];
  v23 = *(v1 + 16);
  v0[70] = v23;
  v0[71] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v16 + v22, v75, v2);
  *v18 = v10;
  v18[8] = v72;
  sub_22BD72114(v79, v16 + v17);
  v24 = (v16 + v13[10]);
  *v24 = v63;
  v24[1] = v62;
  sub_22BDB6764();
  sub_22BDB6744();
  v25 = v2;
  v23(v73, v75, v2);
  sub_22BDB6754();
  v26 = v13[9];
  sub_22BDB6724();
  type metadata accessor for ExecutorSELFLogEmitter();
  v64 = sub_22BB3E424();
  v23(v73, v16 + v65, v2);
  v23(v67, v16 + v26, v2);
  sub_22BBBEE60(v79, v77, &qword_27D8E3218, &qword_22BDBE390);
  v27 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v28 = sub_22BB34ED4(v27);
  v23((v28 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_componentId), v67, v2);
  v29 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v30 = sub_22BB34ED4(v29);
  *(v30 + 5) = v74;
  *(v30 + 6) = &off_283F74E60;
  *(v30 + 2) = v64;
  v31 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  v32 = *(v66 + 32);
  v0[72] = v32;
  v0[73] = (v66 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(&v30[v31], v73, v25);
  v32(&v30[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId], v67, v25);
  v33 = &v30[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId];
  *v33 = v10;
  v33[8] = v72;
  sub_22BBDB5D0(v77, &v30[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId], &qword_27D8E3218, &qword_22BDBE390);
  *(v28 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v30;
  v16[3] = v27;
  v16[4] = &off_283F74C80;
  *v16 = v28;
  (*(v68 + 8))(v74, v69);
  sub_22BB325EC(v79, &qword_27D8E3218, &qword_22BDBE390);
  v34 = *(v66 + 8);
  v0[74] = v34;
  v0[75] = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v75, v25);
  sub_22BDB6134();
  sub_22BDB7724();
  v35 = sub_22BDB7744();
  v36 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v37 = v0[54];
    v38 = sub_22BB37F30();
    *v38 = 0;
    v39 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v35, v36, v39, "IF.Executor.runAction", "", v38, 2u);
    sub_22BB30AF0();
  }

  v40 = v0[56];
  v42 = v0[54];
  v41 = v0[55];
  v44 = v0[52];
  v43 = v0[53];
  v45 = v0[51];
  v46 = v0[47];
  v47 = v0[16];
  v80 = v0[17];
  v76 = v0[57];
  v78 = v0[15];

  (*(v44 + 16))(v43, v42, v45);
  v48 = sub_22BDB77A4();
  sub_22BB34ED4(v48);
  sub_22BB3A190();
  v0[76] = sub_22BDB7794();
  (*(v44 + 8))(v42, v45);
  (*(v40 + 8))(v76, v41);
  sub_22BDB96A4();
  updated = type metadata accessor for EventScopedProgressUpdateHandler(0);
  v0[10] = updated;
  sub_22BB72F80();
  v52 = sub_22BD721F4(v50, v51);
  sub_22BD725E0(v52);
  sub_22BB35760();
  v53 = sub_22BDB9B54();
  v0[77] = v53;
  sub_22BB314BC(v53);
  v0[78] = v54;
  (*(v54 + 16))(v47, v78);
  sub_22BB69088(v80, v47 + *(updated + 20));
  swift_task_alloc();
  sub_22BB30B34();
  v0[79] = v55;
  *v55 = v56;
  v55[1] = sub_22BD6D220;
  v57 = v0[50];
  v58 = v0[47];
  v59 = v0[18];
  v60 = v0[14];

  return sub_22BC5A618();
}

uint64_t sub_22BD6D220()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[80] = v0;

  if (v0)
  {
    (*(v3[45] + 8))(v3[47], v3[44]);
  }

  else
  {
    v9 = v3[47];
    v10 = v3[44];
    v11 = v3[45];
    v12 = *(v11 + 8);
    v3[81] = v12;
    v3[82] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v10);
    sub_22BB32FA4(v3 + 7);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BD6D364()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[46];
  v4 = v0[44];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[16];
  sub_22BDB96A4();
  v8 = sub_22BDB9744();
  v9 = sub_22BB30AE4();
  (v2)(v9);
  v0[12] = v8;
  v173 = (v0 + 2);
  v10 = sub_22BB345A8();
  v12 = sub_22BBE6DE0(v10, v11);
  sub_22BB31DE0();
  sub_22BBB5F9C(v13, &qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB33728();
  sub_22BDB9164();

  if (sub_22BB3AA28(v6, 1, v5) == 1)
  {
    v15 = v0[37];
    v14 = v0[38];
    v16 = v0[14];
    v17 = v0[43];
    sub_22BDB8174();
    sub_22BB31814(v15, 1, v14);
    if (!v18)
    {
      sub_22BB325EC(v0[37], &qword_27D8E27C0, &qword_22BDBCDF0);
    }
  }

  else
  {
    (*(v0[39] + 32))(v0[43], v0[37], v0[38]);
  }

  v19 = v0[48];
  sub_22BD722A4(v0[50], v0[49]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = v0[49];
      v77 = v0[46];
      v161 = v0[44];
      v163 = v0[81];
      v78 = v0[33];
      v79 = v0[34];
      v80 = v0[32];
      v166 = v0[28];
      v81 = v0[16];
      v159 = *v76;
      v169 = *(v76 + 1);
      v171 = v0[82];
      v82 = sub_22BBE6DE0(&qword_27D8E3320, &unk_22BDBE540);
      (*(v78 + 32))(v79, &v76[*(v82 + 48)], v80);
      sub_22BDB96A4();
      v83 = sub_22BDB9744();
      v163(v77, v161);
      v0[13] = v83;
      sub_22BB33728();
      sub_22BDB90D4();

      v84 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
      sub_22BB31814(v166, 1, v84);
      if (!v18)
      {
        v102 = v0[78];
        v130 = v0[77];
        v143 = v0[74];
        v145 = v0[75];
        v172 = v0[73];
        v167 = v0[72];
        v141 = v0[71];
        v137 = v0[70];
        v134 = v0[68];
        v128 = v0[66];
        v103 = v0[65];
        v104 = v0[63];
        v147 = v0[50];
        v149 = v0[62];
        v153 = v0[43];
        v127 = v0[42];
        v129 = v0[41];
        v132 = v0[40];
        v155 = v0[39];
        v151 = v0[38];
        v126 = v0[36];
        v157 = v0[33];
        v105 = v0[31];
        v162 = v0[32];
        v164 = v0[34];
        v106 = v0[30];
        v107 = v0[28];
        v133 = v0[21];
        v108 = *(v84 + 48);
        v135 = v0[20];
        v139 = v0[19];
        v123 = v0[29];
        v124 = v0[16];
        v120 = v0[15];
        v121 = v0[14];
        sub_22BDB8F24();
        (*(v102 + 8))(v107 + v108, v130);
        v109 = sub_22BB2F12C();
        v110 = v104;
        v122 = v104;
        v167(v109);
        sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
        v125 = sub_22BDB9B14();
        sub_22BB30444(v125);
        v168 = v111;
        v131 = *(v112 + 72);
        v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_22BDBCBC0;
        v115 = v114 + v113;
        sub_22BDB8F24();
        sub_22BB331C8();
        sub_22BB336D0(v116, v117, v118, v110);
        sub_22BDB9544();
        sub_22BDB8E04();
        (*(v106 + 8))(v105, v123);
        (*(v157 + 16))(v126, v164, v162);
        sub_22BDB96C4();
        sub_22BDB98D4();

        sub_22BDB8174();
        (*(v155 + 16))(v132, v153, v151);
        sub_22BDB87B4();
        v119 = *(v168 + 104);
        v119(v115, *MEMORY[0x277D1E798], v125);
        v137(v134, v128, v122);
        sub_22BDB96C4();
        sub_22BDB98D4();

        sub_22BDB8594();
        (*(v135 + 104))(v133, *MEMORY[0x277D1DDD0], v139);
        sub_22BDB8B24();
        v119(v115 + v131, *MEMORY[0x277D1E778], v125);
        v143(v128, v122);
        (*(v157 + 8))(v164, v162);
        (*(v155 + 8))(v153, v151);
        sub_22BB324E4();
        goto LABEL_10;
      }

      v85 = v0[50];
      v86 = v0[43];
      v87 = v0[38];
      v88 = v0[39];
      v90 = v0[33];
      v89 = v0[34];
      v91 = v0[32];
      v92 = v0[28];

      sub_22BB325EC(v92, &qword_27D8E6518, &unk_22BDCE420);
      type metadata accessor for ExecutorError(0);
      sub_22BD721F4(&qword_27D8E2948, type metadata accessor for ExecutorError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v90 + 8))(v89, v91);
      v93 = *(v88 + 8);
      v94 = sub_22BB33728();
      v95(v94);
      sub_22BB324E4();
      sub_22BD721A4();
      v96 = v0[76];
      v97 = v0[69];
      v98 = v0[68];
      v99 = v0[67];
      v100 = v0[66];
      sub_22BB387D0();
      sub_22BD6E704();

      sub_22BB325EC(v173, &dword_27D8E2F50, &unk_22BDBDEA0);

      sub_22BB2F09C();

      return v101();
    case 2u:
      sub_22BB384E0();
      v41 = v0[26];
      v40 = v0[27];
      v42 = v0[25];
      v43 = sub_22BB32E90();
      v44(v43);
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      sub_22BD72588();
      v45 = sub_22BDB9B14();
      sub_22BB30444(v45);
      v47 = v46;
      v49 = *(v48 + 72);
      v50 = *(v46 + 80);
      sub_22BB73BF0();
      v51 = swift_allocObject();
      v52 = sub_22BB3E4F8(v51, xmmword_22BDBCBD0);
      v53(v52);
      v54 = MEMORY[0x277D1E710];
      goto LABEL_9;
    case 3u:
      sub_22BB384E0();
      v41 = v0[23];
      v55 = v0[24];
      v56 = v0[22];
      v57 = sub_22BB32E90();
      v58(v57);
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      sub_22BD72588();
      v45 = sub_22BDB9B14();
      sub_22BB30444(v45);
      v47 = v59;
      v61 = *(v60 + 72);
      v62 = *(v59 + 80);
      sub_22BB73BF0();
      v51 = swift_allocObject();
      v63 = sub_22BB3E4F8(v51, xmmword_22BDBCBD0);
      v64(v63);
      v54 = MEMORY[0x277D1E828];
LABEL_9:
      (*(v47 + 104))(v51 + v12, *v54, v45);
      v65 = *(v41 + 8);
      v66 = sub_22BB331D4();
      v67(v66);
      (*(v2 + 8))(v165, v0 + 12);
      sub_22BB324E4();
LABEL_10:
      sub_22BD721A4();
      goto LABEL_11;
    default:
      v20 = v0[62];
      v136 = v0[63];
      v21 = v0[49];
      v156 = v0[43];
      v158 = v21;
      v148 = v0[42];
      v150 = v0[41];
      v170 = v0[40];
      v152 = v0[39];
      v154 = v0[38];
      v22 = v0[36];
      v142 = v0[35];
      v23 = v0[32];
      v24 = v0[33];
      v26 = v0[30];
      v25 = v0[31];
      v138 = v0[29];
      v27 = v0[15];
      v144 = v0[16];
      v28 = v0[14];
      v160 = *(sub_22BBE6DE0(&qword_27D8E2F98, &qword_22BDBD998) + 48);
      (*(v24 + 32))(v22, v21, v23);
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      sub_22BD72588();
      v146 = sub_22BDB9B14();
      sub_22BB30444(v146);
      v140 = v29;
      v31 = *(v30 + 72);
      v32 = *(v29 + 80);
      sub_22BBADC5C();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_22BDBCBD0;
      sub_22BDB8F24();
      sub_22BB331C8();
      sub_22BB336D0(v34, v35, v36, v136);
      sub_22BDB9544();
      sub_22BDB8E04();
      (*(v26 + 8))(v25, v138);
      (*(v24 + 16))(v142, v22, v23);
      sub_22BDB96C4();
      sub_22BDB98D4();

      sub_22BDB8174();
      (*(v152 + 16))(v170, v156, v154);
      sub_22BDB87B4();
      (*(v140 + 104))(v33 + v22, *MEMORY[0x277D1E798], v146);
      (*(v24 + 8))(v22, v23);
      v37 = *(v152 + 8);
      v38 = sub_22BB2F3F0();
      v39(v38);
      sub_22BB324E4();
      sub_22BD721A4();
      sub_22BB325EC(v158 + v160, &qword_27D8E32A0, &qword_22BDCE7B0);
LABEL_11:
      v68 = v0[76];
      v69 = v0[69];
      v70 = v0[68];
      v71 = v0[67];
      v72 = v0[66];
      sub_22BB387D0();
      sub_22BD6E704();

      sub_22BB325EC(v173, &dword_27D8E2F50, &unk_22BDBDEA0);

      v73 = sub_22BD725AC();

      return v74(v73);
  }
}