uint64_t sub_22BBCC134()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22BBCC16C()
{
}

uint64_t sub_22BBCC184()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[35] = v0;

  if (v0)
  {
    v9 = v3[30];
    v10 = v3[31];
    v11 = sub_22BD79EFC;
  }

  else
  {
    v12 = v3[32];
    v13 = v3[33];

    v9 = v3[30];
    v10 = v3[31];
    v11 = sub_22BBCC290;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_22BBCC290()
{
  sub_22BB2F35C();
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  sub_22BBCC320((v0 + 2));

  sub_22BB33EB8();
  sub_22BB34698();

  sub_22BB2F09C();

  return v4();
}

uint64_t sub_22BBCCA6C()
{
  v2 = *(v0 - 224);

  return swift_allocObject();
}

uint64_t sub_22BBCCA88(uint64_t a1, uint64_t (*a2)(char *, uint64_t *), uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_22BBC20A8(a1);
  v13 = 0;
  v41 = a1 & 0xC000000000000001;
  v42 = v12;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v40 = a1;
  v43 = (v5 + 16);
  v14 = MEMORY[0x277D84F98];
  v35 = v5;
  v36 = (v5 + 8);
  while (1)
  {
    if (v42 == v13)
    {
      return v14;
    }

    if (v41)
    {
      v16 = MEMORY[0x2318A5340](v13, v40);
    }

    else
    {
      if (v13 >= *(v39 + 16))
      {
        goto LABEL_19;
      }

      v15 = *(v40 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v44 = v16;
    v45 = v13;
    v47 = v16;
    v17 = v37(v11, &v47);
    v18 = *v43;
    v19 = v11;
    (*v43)(v9, v11, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v46 = v14;
    v20 = v9;
    sub_22BBDAE68();
    if (__OFADD__(v14[2], (v22 & 1) == 0))
    {
      goto LABEL_20;
    }

    v23 = v21;
    v24 = v22;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_22;
      }

      v23 = v25;
    }

    v14 = v46;
    if (v24)
    {
      v27 = v46[7];
      v28 = *(v27 + 8 * v23);
      *(v27 + 8 * v23) = v17;

      v9 = v20;
    }

    else
    {
      v46[(v23 >> 6) + 8] |= 1 << v23;
      v9 = v20;
      v18((v14[6] + *(v35 + 72) * v23), v20, v4);
      *(v14[7] + 8 * v23) = v17;
      v29 = v14[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_21;
      }

      v14[2] = v31;
    }

    v32 = *v36;
    (*v36)(v9, v4);
    v11 = v19;
    v32(v19, v4);

    v13 = v45 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCCDB4(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = sub_22BDB8F04();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v47 = a1;
  v18 = *(a1 + 16);
  v45 = v19 + 16;
  v50 = v18;
  v51 = (v5 + 16);
  v40 = v5;
  v42 = (v5 + 8);
  v20 = MEMORY[0x277D84F98];
  v46 = v19;
  v41 = (v19 + 8);
  v43 = v16;
  v44 = v14;
  while (1)
  {
    if (v50 == v17)
    {
      return v20;
    }

    v21 = v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v22 = *(v46 + 72);
    v52 = v17;
    (*(v46 + 16))(v16, v21 + v22 * v17, v12);
    v23 = v48(v11, v16);
    v24 = *v51;
    v25 = v11;
    (*v51)(v9, v11, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v20;
    v26 = v9;
    sub_22BBDAE68();
    if (__OFADD__(v20[2], (v28 & 1) == 0))
    {
      break;
    }

    v29 = v27;
    v30 = v28;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_15;
      }

      v29 = v31;
    }

    v20 = v53;
    if (v30)
    {
      v33 = v53[7];
      v34 = *(v33 + 8 * v29);
      *(v33 + 8 * v29) = v23;

      v9 = v26;
    }

    else
    {
      v53[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v24((v20[6] + *(v40 + 72) * v29), v26, v4);
      *(v20[7] + 8 * v29) = v23;
      v35 = v20[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_14;
      }

      v20[2] = v37;
    }

    v38 = *v42;
    (*v42)(v9, v4);
    v11 = v25;
    v38(v25, v4);
    v16 = v43;
    v12 = v44;
    (*v41)(v43, v44);
    v17 = v52 + 1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCD168()
{
  sub_22BB6B66C();
  v1 = sub_22BB342D4();
  sub_22BBCD1B4(v1, v2, v3, v4, v5);
  if (v0)
  {
  }

  return v7;
}

uint64_t sub_22BBCD1B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  sub_22BB2F474();
  v51 = sub_22BDB4C34();
  v9 = sub_22BB30444(v51);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = (v15 - v14);
  v17 = sub_22BBE6DE0(&qword_27D8E3FF0, &qword_22BDC17F8);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  sub_22BBCD4D4(v56, v6, v5, a3);
  v52 = v56[0];
  v53 = v56[1];
  v54 = v56[2];
  v55 = v57;
  v23 = (v11 + 32);
  v49 = (v11 + 8);
  v50 = v11;
  v48 = v6;

  v47 = a3;

  while (1)
  {
    sub_22BBCD4D8(v22);
    v24 = sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8);
    if (sub_22BB3AA28(v22, 1, v24) == 1)
    {
      sub_22BBCD888();
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v16, v22, v51);
    v27 = *&v22[v25];
    v28 = *v58;
    sub_22BBDAE68();
    v30 = v29;
    sub_22BB35700();
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v34 = v31;
    if (*(v28 + 24) >= v32 + v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
        sub_22BDBB4B4();
      }
    }

    else
    {
      v35 = v58;
      sub_22BD5BEA8();
      v36 = *v35;
      sub_22BBDAE68();
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_16;
      }

      v30 = v37;
    }

    v39 = *v58;
    if (v34)
    {
      v40 = *(v39[7] + 8 * v30);

      (*v49)(v16, v51);
      v41 = v39[7];
      v42 = *(v41 + 8 * v30);
      *(v41 + 8 * v30) = v40;

      a4 = 1;
    }

    else
    {
      sub_22BB37698(&v39[v30 >> 6]);
      v26(v39[6] + *(v50 + 72) * v30, v16, v51);
      *(v39[7] + 8 * v30) = v27;
      v43 = v39[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_15;
      }

      v39[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCD4D8@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_22BBE6DE0(&qword_27D8E3FC8, &qword_22BDC17D0);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v36 - v4;
  v41 = sub_22BDB4C34();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E4000, &qword_22BDC1808);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v37 = v5;
  v43 = v20;
  if (v22)
  {
    v39 = v14;
    v40 = a1;
    v23 = v21;
LABEL_7:
    v38 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = v41;
    (*(v6 + 16))(v9, *(v18 + 48) + *(v6 + 72) * v24, v41);
    v26 = *(*(v18 + 56) + 8 * v24);
    v27 = *(v42 + 48);
    v28 = v9;
    v29 = v42;
    (*(v6 + 32))(v17, v28, v25);
    *&v17[v27] = v26;
    sub_22BB336D0(v17, 0, 1, v29);

    v30 = v38;
    v14 = v39;
    a1 = v40;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v1[2] = v43;
    v1[3] = v21;
    v1[4] = v30;
    v31 = v1[5];
    v32 = v1[6];
    sub_22BB6BEE0(v17, v14, &qword_27D8E4000, &qword_22BDC1808);
    v33 = 1;
    if (sub_22BB3AA28(v14, 1, v29) != 1)
    {
      v34 = v37;
      sub_22BB6BEE0(v14, v37, &qword_27D8E3FC8, &qword_22BDC17D0);
      v31(v34);
      sub_22BB58728(v34, &qword_27D8E3FC8, &qword_22BDC17D0);
      v33 = 0;
    }

    v35 = sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8);
    return sub_22BB336D0(a1, v33, 1, v35);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v29 = v42;
        sub_22BB336D0(&v36 - v16, 1, 1, v42);
        v30 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v39 = v14;
        v40 = a1;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BBCD82C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BBE6DE0(a3, a4);
  sub_22BB2F330(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BBCD890(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v8 = MEMORY[0x277D84F98];
  v5 = *(a1 + 16);
  while (v5 != v4)
  {
    v6 = *(sub_22BDB9954() - 8);
    sub_22BCC14D4(&v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4++, a2);
  }

  return v8;
}

uint64_t sub_22BBCD974(uint64_t a1)
{
  v53 = sub_22BDB81A4();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22BDB9564();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB4C34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v63 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = sub_22BBC20A8(a1);
  v19 = 0;
  v59 = a1 & 0xC000000000000001;
  v60 = v18;
  v57 = a1 & 0xFFFFFFFFFFFFFF8;
  v58 = a1;
  v48 = (v5 + 8);
  v49 = (v5 + 32);
  v46 = (v2 + 8);
  v47 = (v2 + 32);
  v61 = (v12 + 16);
  v20 = MEMORY[0x277D84F98];
  v45 = v12;
  v54 = (v12 + 8);
  for (i = v10; ; v10 = i)
  {
    if (v60 == v19)
    {
      return v20;
    }

    if (v59)
    {
      MEMORY[0x2318A5340](v19, v58);
    }

    else
    {
      if (v19 >= *(v57 + 16))
      {
        goto LABEL_22;
      }

      v21 = *(v58 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    sub_22BCC74B0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v62 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v52;
      v24 = v53;
      (*v47)(v52, v10, v53);
      sub_22BDB8174();
      v25 = v46;
    }

    else
    {
      v23 = v50;
      v24 = v51;
      (*v49)(v50, v10, v51);
      sub_22BDB8174();
      v25 = v48;
    }

    (*v25)(v23, v24);
    v26 = sub_22BCC20E8();
    v27 = *v61;
    v28 = v17;
    v29 = v17;
    v30 = v11;
    (*v61)(v63, v29, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v64 = v20;
    sub_22BBDAE68();
    if (__OFADD__(v20[2], (v32 & 1) == 0))
    {
      goto LABEL_23;
    }

    v33 = v31;
    v34 = v32;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_25;
      }

      v33 = v35;
    }

    v20 = v64;
    if (v34)
    {
      v37 = v64[7];
      v38 = *(v37 + 8 * v33);
      *(v37 + 8 * v33) = v26;

      v11 = v30;
    }

    else
    {
      v64[(v33 >> 6) + 8] |= 1 << v33;
      v11 = v30;
      v27((v20[6] + *(v45 + 72) * v33), v63, v30);
      *(v20[7] + 8 * v33) = v26;
      v39 = v20[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_24;
      }

      v20[2] = v41;
    }

    v42 = *v54;
    (*v54)(v63, v11);
    v17 = v28;
    v42(v28, v11);

    v19 = v62 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCDEA4()
{
  sub_22BB6B66C();
  v1 = sub_22BB342D4();
  sub_22BBCDEF0(v1, v2, v3, v4, v5);
  if (v0)
  {
  }

  return v7;
}

uint64_t sub_22BBCDEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v141 = a2;
  v9 = sub_22BBE6DE0(&qword_27D8E3FD8, &qword_22BDC17E0);
  sub_22BB2F330(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = sub_22BB30B8C(&v117 - v13);
  v118 = type metadata accessor for FeedbackLearning.CandidateParameter(v14);
  v15 = sub_22BB30444(v118);
  v138 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  sub_22BB2F14C(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E3FE0, &qword_22BDC17E8);
  v22 = sub_22BB2F0C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v25);
  sub_22BB2F39C();
  sub_22BB2F14C(v26);
  v27 = sub_22BBE6DE0(&qword_27D8E3FE8, &qword_22BDC17F0);
  sub_22BB2F0C8(v27);
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  v32 = &v117 - v31;
  v33 = sub_22BDB4C34();
  v34 = sub_22BB30444(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30574();
  v41 = v40 - v39;
  v42 = sub_22BBE6DE0(&qword_27D8E3FF0, &qword_22BDC17F8);
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F14C(&v117 - v46);
  sub_22BBCD4D4(v147, a1, v141, a3);
  v143 = v147[0];
  v144 = v147[1];
  v145 = v147[2];
  v146 = v148;
  v130 = (v36 + 32);
  v126 = v36;
  v122 = v36 + 8;
  v47 = v41;
  v120 = a1;

  v119 = a3;

  v125 = a5;
  v139 = v32;
  v124 = v33;
  v123 = v41;
LABEL_2:
  while (2)
  {
    sub_22BB3A950(&v150);
    sub_22BBCD4D8(v48);
    v49 = sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8);
    if (sub_22BB3AA28(a3, 1, v49) != 1)
    {
      v50 = *(v49 + 48);
      v51 = *v130;
      (*v130)(v47, a3, v33);
      v131 = *(a3 + v50);
      v52 = *a5;
      sub_22BBDAE68();
      sub_22BB35700();
      if (__OFADD__(v54, v55))
      {
        goto LABEL_40;
      }

      a3 = v53;
      if (*(v52 + 24) >= v54 + v55)
      {
        if ((a4 & 1) == 0)
        {
          v115 = v56;
          sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
          sub_22BDBB4B4();
          v56 = v115;
        }
      }

      else
      {
        sub_22BD5BEA8();
        v57 = *a5;
        sub_22BBDAE68();
        sub_22BB3A228();
        if (!v59)
        {
          goto LABEL_42;
        }

        v56 = v58;
      }

      v60 = *a5;
      if ((a3 & 1) == 0)
      {
        v109 = v56;
        sub_22BB37698(&v60[v56 >> 6]);
        v51(v60[6] + *(v126 + 72) * v109, v47, v33);
        *(v60[7] + 8 * v109) = v131;
        v110 = v60[2];
        v107 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (!v107)
        {
          v60[2] = v111;
          a4 = 1;
          continue;
        }

        goto LABEL_41;
      }

      v128 = *a5;
      v61 = v60[7];
      v129 = v56;
      a3 = *(v61 + 8 * v56);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = a3;
      v63 = v131;
      sub_22BBCD4D4(&v149, v131, sub_22BCC6CE0, 0);
      v133 = v153[2];
      v64 = v150;
      v134 = v149;
      v65 = v152;
      v66 = v153[0];
      v132 = v153[1];
      v127 = v151;
      v67 = (v151 + 64) >> 6;

LABEL_12:
      v68 = v66;
      v69 = v65;
      LODWORD(v141) = isUniquelyReferenced_nonNull_native;
      v136 = v65;
      v135 = v66;
      if (v66)
      {
LABEL_17:
        v140 = (v68 - 1) & v68;
        v71 = __clz(__rbit64(v68)) | (v69 << 6);
        v72 = v134;
        v73 = *(v134 + 48) + *(v138 + 72) * v71;
        sub_22BB37008(v154);
        sub_22BCC74B0();
        v74 = *(*(v72 + 56) + 8 * v71);
        v75 = *(v9 + 48);
        sub_22BB31CEC();
        sub_22BB37008(&v156);
        sub_22BCC7414();
        *(v63 + v75) = v74;
        sub_22BB336D0(v63, 0, 1, v9);

        v70 = v69;
        goto LABEL_18;
      }

      v70 = v65;
      v63 = v137;
      while (1)
      {
        v69 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v69 >= v67)
        {
          sub_22BB336D0(v137, 1, 1, v9);
          v140 = 0;
LABEL_18:
          sub_22BB37008(&v157);
          sub_22BB6BEE0(v76, v77, &qword_27D8E3FE0, &qword_22BDC17E8);
          v78 = 1;
          if (sub_22BB3AA28(v63, 1, v9) != 1)
          {
            sub_22BB37008(v153);
            sub_22BB6BEE0(v79, v80, &qword_27D8E3FD8, &qword_22BDC17E0);
            v132(v63);
            sub_22BB58728(v63, &qword_27D8E3FD8, &qword_22BDC17E0);
            v78 = 0;
          }

          v81 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
          v82 = v139;
          sub_22BB336D0(v139, v78, 1, v81);
          v83 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
          if (sub_22BB3AA28(v82, 1, v83) == 1)
          {
            sub_22BBCD888();

            sub_22BB30F88(v147);
            v47 = v123;
            v33 = v124;
            v112(v123, v124);
            v113 = *(v128 + 56);
            v114 = *(v113 + 8 * v129);
            *(v113 + 8 * v129) = a3;

            a4 = 1;
            a5 = v125;
            goto LABEL_2;
          }

          v84 = *(v83 + 48);
          sub_22BB31CEC();
          v85 = v142;
          sub_22BCC7414();
          v63 = *(v82 + v84);
          v86 = sub_22BD84634(v85);
          v87 = *(a3 + 16);
          sub_22BB38090();
          v97 = v95 + v96;
          if (__OFADD__(v95, v96))
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v98 = v88;
          if (*(a3 + 24) < v97)
          {
            sub_22BD5C114(v97, v141 & 1, v89, v90, v91, v92, v93, v94, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
            v99 = sub_22BD84634(v142);
            if ((v98 & 1) == (v100 & 1))
            {
              v86 = v99;
              goto LABEL_27;
            }

            while (1)
            {
LABEL_42:
              sub_22BDBB744();
              __break(1u);
            }
          }

          if ((v141 & 1) == 0)
          {
            sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
            sub_22BDBB4B4();
          }

LABEL_27:
          a3 = v155;
          if (v98)
          {
            v101 = *(*(v155 + 56) + 8 * v86);

            sub_22BCC73B8(v142);
            v102 = *(a3 + 56);
            v103 = *(v102 + 8 * v86);
            *(v102 + 8 * v86) = v101;

            goto LABEL_31;
          }

          sub_22BB37698(v155 + 8 * (v86 >> 6));
          v104 = *(a3 + 48);
          v105 = *(v138 + 72);
          sub_22BB31CEC();
          sub_22BCC7414();
          *(*(a3 + 56) + 8 * v86) = v63;
          v106 = *(a3 + 16);
          v107 = __OFADD__(v106, 1);
          v108 = v106 + 1;
          if (v107)
          {
            goto LABEL_39;
          }

          *(a3 + 16) = v108;
LABEL_31:
          isUniquelyReferenced_nonNull_native = 1;
          v65 = v70;
          v66 = v140;
          goto LABEL_12;
        }

        v68 = *(v64 + 8 * v69);
        ++v70;
        if (v68)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    break;
  }

  sub_22BBCD888();
}

uint64_t sub_22BBCE8A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v6 = v5(v4);
  sub_22BB2F330(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22BBCE8FC()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB30ED8(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BBCE950(uint64_t a1, uint64_t a2, uint8_t *a3)
{
  v171 = a1;
  v158 = sub_22BDB8F04();
  v4 = sub_22BB30444(v158);
  v174 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v173 = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E4368, &qword_22BDC2FC8);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = sub_22BB30B8C(&v157 - v13);
  v176 = _s18ToolStepEvaluationVMa(v14);
  v15 = sub_22BB30444(v176);
  v161 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  v160 = v20;
  v21 = sub_22BBE6DE0(&qword_27D8E4370, &qword_22BDC2FD0);
  sub_22BB2F0C8(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  v26 = (&v157 - v25);
  v177 = _s23ParameterStepEvaluationVMa(0);
  v27 = sub_22BB30444(v177);
  v162 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v31);
  sub_22BB2F39C();
  sub_22BB30B8C(v32);
  v165 = _s22ToolCandidateEvaluatorVMa();
  v33 = sub_22BB2F330(v165);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  v172 = v36;
  v37 = sub_22BBE6DE0(&qword_27D8E4378, &qword_22BDC2FD8);
  sub_22BB2F0C8(v37);
  v39 = *(v38 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  v42 = &v157 - v41;
  v178 = _s19ValueStepEvaluationVMa(0);
  v43 = sub_22BB30444(v178);
  v164 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v47);
  sub_22BB2F39C();
  v49 = sub_22BB30B8C(v48);
  v163 = _s23StatementStepEvaluationOMa(v49);
  v50 = sub_22BB30444(v163);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BB30C74();
  v55 = v53 - v54;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v157 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = (&v157 - v60);
  v170 = sub_22BDB77D4();
  v62 = sub_22BB30444(v170);
  v169 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v66);
  v68 = &v157 - v67;
  v185 = _s19TranscriptRetrieverVMa();
  v186 = &off_283F7A608;
  sub_22BB8B8A0(&v184);
  sub_22BBCE8FC();
  v179 = a3;
  v175 = sub_22BB69FEC(&a3[OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator], *&a3[OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator + 24]);
  v70 = v185;
  v69 = v186;
  v71 = sub_22BB69FEC(&v184, v185);
  v182 = v70;
  v72 = v69[1];
  v73 = v68;
  v183 = v72;
  v74 = sub_22BB8B8A0(v181);
  (*(*(v70 - 8) + 16))(v74, v71, v70);
  v75 = *v175;
  v76 = sub_22BB69FEC(v181, v182);
  v77 = sub_22BBCF898(v171, v76, v75);
  sub_22BB32FA4(v181);
  sub_22BDB6404();

  v175 = v73;
  v78 = sub_22BDB77C4();
  LODWORD(v75) = sub_22BDBB0F4();

  LODWORD(v159) = v75;
  v79 = os_log_type_enabled(v78, v75);
  v80 = &loc_22BDBC000;
  if (v79)
  {
    sub_22BB354D0();
    v81 = swift_slowAlloc();
    sub_22BB2F440();
    v157 = swift_slowAlloc();
    v181[0] = v157;
    *v81 = 136315138;
    v82 = MEMORY[0x2318A4D50](v77, v163);
    v163 = v78;
    v84 = sub_22BB32EE0(v82, v83, v181);

    v85 = v81;
    *(v81 + 4) = v84;
    v86 = v163;
    v80 = v85;
    _os_log_impl(&dword_22BB2C000, v163, v159, "Generated parameter step evaluations: %s", v85, 0xCu);
    sub_22BB32FA4(v157);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {
  }

  v163 = *(v169 + 8);
  (v163)(v175, v170);
  v87 = *(v77 + 16);

  v88 = 0;
  v175 = MEMORY[0x277D84F90];
  while (v87 != v88)
  {
    if (v88 >= *(v77 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_22BB365FC();
    sub_22BBCE8FC();
    v80 = v179;
    sub_22BCD2384();
    sub_22BB372A8();
    sub_22BB344AC(v61, v89);
    if (sub_22BB3AA28(v42, 1, v178) == 1)
    {
      sub_22BB58728(v42, &qword_27D8E4378, &qword_22BDC2FD8);
      ++v88;
    }

    else
    {
      sub_22BB37D34();
      v159 = v90;
      sub_22BCE17CC();
      sub_22BCE17CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = v175[2];
        sub_22BB305BC();
        sub_22BD90A70();
        v175 = v97;
      }

      v80 = v175[2];
      v91 = v175[3];
      v92 = (v80 + 1);
      if (v80 >= v91 >> 1)
      {
        sub_22BB2F158(v91);
        v159 = v98;
        sub_22BD90A70();
        v92 = v159;
        v175 = v99;
      }

      ++v88;
      v175[2] = v92;
      v93 = *(v164 + 80);
      sub_22BB2F390();
      v95 = *(v94 + 72);
      sub_22BB37D34();
      sub_22BCE17CC();
    }
  }

  v80 = v179;

  v100 = 0;
  v178 = MEMORY[0x277D84F90];
  v61 = &qword_22BDC2FD0;
  while (v87 != v100)
  {
    if (v100 >= *(v77 + 16))
    {
      goto LABEL_48;
    }

    sub_22BB365FC();
    sub_22BBCE8FC();
    v80 = v179;
    sub_22BCD244C();
    sub_22BB372A8();
    sub_22BB344AC(v59, v101);
    if (sub_22BB3AA28(v26, 1, v177) == 1)
    {
      sub_22BB58728(v26, &qword_27D8E4370, &qword_22BDC2FD0);
      ++v100;
    }

    else
    {
      sub_22BB2F518();
      v168 = v102;
      sub_22BCE17CC();
      sub_22BCE17CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = *(v178 + 16);
        sub_22BB305BC();
        sub_22BD909A8();
        v178 = v109;
      }

      v80 = *(v178 + 16);
      v103 = *(v178 + 24);
      v104 = (v80 + 1);
      if (v80 >= v103 >> 1)
      {
        sub_22BB2F158(v103);
        v168 = v110;
        sub_22BD909A8();
        v104 = v168;
        v178 = v111;
      }

      ++v100;
      *(v178 + 16) = v104;
      v105 = *(v162 + 80);
      sub_22BB2F390();
      v107 = *(v106 + 72);
      sub_22BB2F518();
      sub_22BCE17CC();
    }
  }

  v112 = v179;

  v80 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_toolbox;
  v113 = sub_22BDB9C14();
  sub_22BB30ED8(v113);
  (*(v114 + 16))(v172, &v80[v112]);

  v115 = 0;
  v116 = MEMORY[0x277D84F90];
  v26 = &qword_22BDC2FC8;
LABEL_25:
  v61 = v167;
  while (v87 != v115)
  {
    if (v115 >= *(v77 + 16))
    {
      goto LABEL_49;
    }

    sub_22BB365FC();
    sub_22BBCE8FC();
    v80 = v179;
    sub_22BCD22C0();
    sub_22BB372A8();
    sub_22BB344AC(v55, v117);
    if (sub_22BB3AA28(v61, 1, v176) != 1)
    {
      sub_22BCE17CC();
      sub_22BCE17CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = *(v116 + 16);
        sub_22BB305BC();
        sub_22BD908E0();
        v116 = v124;
      }

      v119 = *(v116 + 16);
      v118 = *(v116 + 24);
      v80 = (v119 + 1);
      if (v119 >= v118 >> 1)
      {
        sub_22BB2F158(v118);
        sub_22BD908E0();
        v116 = v125;
      }

      ++v115;
      *(v116 + 16) = v80;
      v120 = *(v161 + 80);
      sub_22BB2F390();
      v122 = *(v121 + 72);
      sub_22BCE17CC();
      goto LABEL_25;
    }

    sub_22BB58728(v61, &qword_27D8E4368, &qword_22BDC2FC8);
    ++v115;
  }

  *(v172 + *(v165 + 20)) = v116;
  v126 = sub_22BBD05C4();
  v127 = *(v126 + 16);
  if (v127)
  {
    v181[0] = MEMORY[0x277D84F90];
    sub_22BD28118();
    v128 = 0;
    v129 = v181[0];
    v130 = *(v174 + 80);
    sub_22BB2F390();
    v177 = v126 + v131;
    v176 = v132 + 16;
    v61 = (v132 + 8);
    v80 = v158;
    while (v128 < *(v126 + 16))
    {
      v133 = v173;
      (*(v174 + 16))(v173, v177 + *(v174 + 72) * v128, v80);
      sub_22BCD1744(v133, v175, v178, &v180);
      (*v61)(v133, v80);
      v26 = v180;
      v181[0] = v129;
      v135 = *(v129 + 16);
      v134 = *(v129 + 24);
      v136 = v129;
      if (v135 >= v134 >> 1)
      {
        sub_22BB2F158(v134);
        sub_22BD28118();
        v80 = v158;
        v136 = v181[0];
      }

      ++v128;
      *(v136 + 16) = v135 + 1;
      *(v136 + 8 * v135 + 32) = v26;
      v129 = v136;
      if (v127 == v128)
      {

        goto LABEL_43;
      }
    }

LABEL_50:
    __break(1u);
    (*v61)(v26, v80);

    __break(1u);
    return result;
  }

  v129 = MEMORY[0x277D84F90];
LABEL_43:
  v137 = sub_22BBD4D00(v171);
  MEMORY[0x28223BE20](v137);
  sub_22BB36D34();
  *(v138 - 16) = v172;
  v140 = sub_22BBD544C(sub_22BCE1740, v139, v137);

  v141 = v166;
  sub_22BDB6404();

  v142 = sub_22BDB77C4();
  v143 = sub_22BDBB0F4();

  v144 = os_log_type_enabled(v142, v143);
  v145 = v170;
  if (v144)
  {
    sub_22BB354D0();
    v146 = swift_slowAlloc();
    sub_22BB2F440();
    v147 = swift_slowAlloc();
    v181[0] = v147;
    *v146 = 136315138;
    v148 = sub_22BBE6DE0(&qword_27D8E4380, &unk_22BDC2FE0);
    v149 = MEMORY[0x2318A4D50](v129, v148);
    v151 = sub_22BB32EE0(v149, v150, v181);

    *(v146 + 4) = v151;
    _os_log_impl(&dword_22BB2C000, v142, v143, "Generated candidate outcomes: %s", v146, 0xCu);
    sub_22BB32FA4(v147);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v152 = v166;
  }

  else
  {

    v152 = v141;
  }

  (v163)(v152, v145);
  v153 = sub_22BBD55A0(v129);

  v154 = sub_22BBD55A0(v140);

  v181[0] = v153;
  sub_22BBD5D38(v154);
  v155 = v181[0];
  sub_22BB344AC(v172, _s22ToolCandidateEvaluatorVMa);
  sub_22BB32FA4(&v184);
  return v155;
}

uint64_t _s22ToolCandidateEvaluatorVMa()
{
  result = qword_28142B9F0;
  if (!qword_28142B9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBCF898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v59 = sub_22BDB43E4();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22BDB87F4();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22BDB9B14();
  v10 = *(v69 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v69);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49 - v16;
  v18 = _s20StatementResultEventVMa(0);
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x28223BE20](v18);
  v66 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22BDB9B54();
  v21 = *(v67 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v67);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = _s19TranscriptRetrieverVMa();
  v70[4] = &off_283F7A5F8;
  sub_22BB8B8A0(v70);
  v25 = sub_22BBCE8FC();
  v26 = *(a1 + 16);
  if (v26)
  {
    v28 = *(v21 + 16);
    v27 = v21 + 16;
    v29 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v63 = *(v27 + 56);
    v64 = v28;
    v62 = (v10 + 88);
    v61 = *MEMORY[0x277D1E798];
    v60 = (v27 - 8);
    v54 = (v10 + 8);
    v53 = (v10 + 96);
    v52 = (v7 + 32);
    v50 = (v4 + 32);
    v68 = MEMORY[0x277D84F90];
    v30 = v67;
    v65 = v27;
    v51 = v13;
    do
    {
      v64(v24, v29, v30);
      sub_22BDB9B24();
      v31 = (*v62)(v13, v69);
      if (v31 == v61)
      {
        (*v53)(v13, v69);
        v32 = *v52;
        v33 = v56;
        v34 = v13;
        v35 = v57;
        (*v52)(v56, v34, v57);
        v36 = v58;
        sub_22BDB8F24();
        (*v60)(v24, v67);
        (*v50)(v17, v36, v59);
        v37 = v33;
        v38 = v35;
        v13 = v51;
        v30 = v67;
        v32(&v17[*(v18 + 20)], v37, v38);
        sub_22BB336D0(v17, 0, 1, v18);
      }

      else
      {
        (*v60)(v24, v30);
        sub_22BB336D0(v17, 1, 1, v18);
        (*v54)(v13, v69);
      }

      if (sub_22BB3AA28(v17, 1, v18) == 1)
      {
        v25 = sub_22BB58728(v17, &qword_27D8E3DE8, &unk_22BDC1220);
      }

      else
      {
        sub_22BCE17CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = *(v68 + 16);
          sub_22BD90298();
          v68 = v44;
        }

        v39 = *(v68 + 16);
        if (v39 >= *(v68 + 24) >> 1)
        {
          sub_22BD90298();
          v68 = v45;
        }

        v40 = v68;
        *(v68 + 16) = v39 + 1;
        v41 = v40 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v42 = *(v55 + 72);
        v25 = sub_22BCE17CC();
      }

      v29 += v63;
      --v26;
    }

    while (v26);
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v25);
  *(&v49 - 2) = v49;
  *(&v49 - 1) = v70;
  sub_22BBD03D4();
  v47 = v46;

  sub_22BB32FA4(v70);
  return v47;
}

uint64_t sub_22BBCFFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = sub_22BB30F68();
  v13 = v12(v11);
  v14 = sub_22BB314BC(v13);
  if (*(v15 + 84) == a3)
  {
    v16 = v14;
    v17 = v6;
  }

  else
  {
    v16 = a6(0);
    v17 = v6 + *(a4 + 20);
  }

  return sub_22BB336D0(v17, a2, a2, v16);
}

uint64_t sub_22BBD0068(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_22BDB43E4();
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = a1;
  }

  else
  {
    v11 = a5(0);
    v12 = a1 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBD011C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_22BB30F68();
  v11 = _s28StatementResolutionReferenceOMa(v10);
  v12 = sub_22BB314BC(v11);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = v5;
  }

  else
  {
    v14 = a5(0);
    v15 = v5 + *(a4 + 20);
  }

  return sub_22BB336D0(v15, a2, a2, v14);
}

uint64_t sub_22BBD01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = sub_22BB30F68();
  v11 = v10(v9);
  v12 = sub_22BB314BC(v11);
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = v5;
  }

  else
  {
    v14 = a5(0);
    v15 = v5 + *(a3 + 20);
  }

  return sub_22BB3AA28(v15, a2, v14);
}

uint64_t sub_22BBD0294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_22BDB43E4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = a4(0);
    v10 = a1 + *(a3 + 20);
  }

  return sub_22BB3AA28(v10, a2, v9);
}

uint64_t sub_22BBD0338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_22BB30F68();
  v9 = _s28StatementResolutionReferenceOMa(v8);
  v10 = sub_22BB314BC(v9);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = v4;
  }

  else
  {
    v12 = a4(0);
    v13 = v4 + *(a3 + 20);
  }

  return sub_22BB3AA28(v13, a2, v12);
}

void sub_22BBD03D4()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = _s23StatementStepEvaluationOMa(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = _s20StatementResultEventVMa(0);
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &qword_22BDC1258);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, _s23StatementStepEvaluationOMa);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90360();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BD90360();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BB52E3C(v39, v40);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

uint64_t sub_22BBD05C4()
{
  sub_22BB30F68();
  v81 = sub_22BDB4C34();
  v1 = sub_22BB30444(v81);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB305A8();
  v91 = v6;
  sub_22BB2F120();
  v7 = sub_22BDB9B14();
  v8 = sub_22BB30444(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v15 = v14 - v13;
  v90 = sub_22BDB8F04();
  v16 = sub_22BB30444(v90);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v69 - v24;
  v82 = sub_22BDB9B54();
  v26 = sub_22BB30444(v82);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB305A8();
  v83 = v30;
  v31 = *(v0 + 16);
  if (!v31)
  {
    v36 = MEMORY[0x277D84F98];
LABEL_18:
    v92 = sub_22BBD0BE0(v36);

    sub_22BBD0CFC(&v92);

    return v92;
  }

  v89 = *(v29 + 16);
  v32 = *(v29 + 80);
  sub_22BB2F390();
  v34 = v0 + v33;
  v85 = *(v35 + 56);
  v88 = v10 + 88;
  v87 = *MEMORY[0x277D1E830];
  v86 = (v35 - 8);
  v79 = v10 + 96;
  v80 = v10 + 8;
  v84 = (v18 + 32);
  v78 = (v18 + 16);
  v69[2] = v3 + 16;
  v70 = v3;
  v74 = v18 + 8;
  v75 = (v3 + 8);
  v36 = MEMORY[0x277D84F98];
  v77 = v18;
  v69[1] = v18 + 40;
  v38 = v82;
  v37 = v83;
  v73 = v7;
  v72 = v15;
  v76 = v25;
  v71 = v35;
  while (1)
  {
    v89(v37, v34, v38);
    sub_22BDB9B24();
    v39 = sub_22BB6BAE8();
    v41 = v40(v39);
    if (v41 != v87)
    {
      (*v86)(v37, v38);
      v55 = sub_22BB6BAE8();
      v56(v55);
      goto LABEL_15;
    }

    v42 = sub_22BB6BAE8();
    v43(v42);
    v44 = *v84;
    v45 = v15;
    v46 = v90;
    (*v84)(v25, v45, v90);
    sub_22BDB8174();
    (*v78)(v23, v25, v46);
    swift_isUniquelyReferenced_nonNull_native();
    v92 = v36;
    sub_22BBDAE68();
    if (__OFADD__(v36[2], (v48 & 1) == 0))
    {
      break;
    }

    v49 = v47;
    v50 = v48;
    sub_22BBE6DE0(&qword_27D8E3FB8, &qword_22BDC17C0);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      sub_22BB3A228();
      if (!v52)
      {
        goto LABEL_21;
      }

      v49 = v51;
    }

    v36 = v92;
    if (v50)
    {
      v53 = v77;
      v54 = v90;
      (*(v77 + 40))(v92[7] + *(v77 + 72) * v49, v23, v90);
      (*v75)(v91, v81);
      v25 = v76;
      (*(v53 + 8))(v76, v54);
      v37 = v83;
      (*v86)(v83, v38);
    }

    else
    {
      sub_22BB37698(&v92[v49 >> 6]);
      v57 = v70;
      v58 = v91;
      v59 = v81;
      (*(v70 + 16))(v36[6] + *(v70 + 72) * v49, v91, v81);
      v60 = v23;
      v61 = v77;
      v38 = v60;
      v44(v36[7] + *(v77 + 72) * v49);
      (*(v57 + 8))(v58, v59);
      v62 = *(v61 + 8);
      v25 = v76;
      v63 = sub_22BB362AC();
      v64(v63);
      v37 = v83;
      (*v86)(v83, v82);
      v65 = v36[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_20;
      }

      v36[2] = v67;
      v23 = v38;
      v38 = v82;
    }

    v15 = v72;
LABEL_15:
    v34 += v85;
    if (!--v31)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_22BDBB744();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22BBD0C20(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  v6 = sub_22BB35760();
  v7 = a3(v6);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 80);
  sub_22BB2F390();
  sub_22BDB13EC();
  v11 = v10;
  sub_22BBCD888();
  if (v11 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22BBD0CFC(uint64_t *a1)
{
  v2 = *(sub_22BDB8F04() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BBD0DA4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BBD4BD0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22BBD0DBC()
{
  sub_22BB30F68();
  v2 = sub_22BDB52D4();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB31580();
  v8 = sub_22BDB5304();
  v9 = sub_22BDB52E4();
  sub_22BBE6DE0(&qword_27D8E6780, &qword_22BDCEDC8);
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = v9 & 1;
  MEMORY[0x23189F300]();
  v11 = sub_22BDB5364();
  sub_22BB31F70(v11);
  (*(v12 + 8))(v0);
  v13 = (*(v5 + 88))(v1, v2);
  if (v13 == *MEMORY[0x277D1CB58])
  {
    goto LABEL_2;
  }

  if (v13 == *MEMORY[0x277D1CB48])
  {
    v14 = 0;
    v15 = 1;
  }

  else
  {
    if (v13 != *MEMORY[0x277D1CB50])
    {
      (*(v5 + 8))(v1, v2);
LABEL_2:
      v14 = 0;
      v15 = 0;
      goto LABEL_7;
    }

    v15 = 1;
    v14 = 256;
  }

LABEL_7:
  if (v8)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  return v14 | v15 | v16;
}

uint64_t sub_22BBD0F74()
{
  v17 = v0[66];
  v18 = v0[67];
  v1 = v0[57];
  sub_22BB6FAF4();
  v2 = v0[43];
  v3 = v0[41];
  v19 = v0[42];
  v20 = v0[44];
  v25 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v26 = v0[36];
  v21 = v0[33];
  v6 = v0[31];
  v7 = v0[28];
  v28 = v0[30];
  v29 = v0[27];
  v30 = v0[26];
  v27 = v0[23];
  v8 = v0[21];
  v9 = v0[18];
  v31 = v0[20];
  v32 = v0[19];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[17];
  v10 = v0[9];
  (*(v0[22] + 8))();
  v17(v6, v7);
  v11 = *(v4 + 8);
  v12 = sub_22BB31B54();
  v13(v12);
  (*(v2 + 8))(v20, v19);
  sub_22BD62A64();
  sub_22BB34648();
  sub_22BBD1194(v1, v10);

  (*(v9 + 8))(v23, v24);
  sub_22BB3093C();
  sub_22BB34648();

  sub_22BB39738();
  v15 = v0[16];

  return v14(v15);
}

uint64_t sub_22BBD1194(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BDB7764();
  v6 = sub_22BB30444(v5);
  v52 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v10 = sub_22BDB7734();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB3ABC8();
  v16 = sub_22BDB5664();
  v17 = sub_22BB2F0C8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v22 = v21 - v20;
  v23 = sub_22BDB7754();
  v24 = sub_22BB30444(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  sub_22BB31580();
  sub_22BDB6124();
  sub_22BB35D70();
  sub_22BB388FC(a2, v22);
  v29 = sub_22BDB7744();
  sub_22BDB7774();
  v51 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v49 = v29;
    v50 = v13;

    sub_22BDB77B4();

    v30 = *(v52 + 88);
    v31 = sub_22BB37074();
    if (v32(v31) == *MEMORY[0x277D85B00])
    {
      v33 = 0;
      v34 = 0;
      v53 = "[Error] Interval already ended";
    }

    else
    {
      v39 = *(v52 + 8);
      v40 = sub_22BB37074();
      v41(v40);
      v53 = "[SessionCoordinator %{public}s] | End bringup.";
      v34 = 2;
      v33 = 1;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54 = v43;
    *v42 = v34;
    *(v42 + 1) = v33;
    *(v42 + 2) = 2082;
    v44 = sub_22BDB5624();
    v46 = v45;
    sub_22BB309AC();
    sub_22BB698E8();
    v47 = sub_22BB32EE0(v44, v46, &v54);

    *(v42 + 4) = v47;
    v48 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v49, v51, v48, "SessionBringup", v53, v42, 0xCu);
    sub_22BB32FA4(v43);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v50 + 8))(v3, v10);
    return (*(v26 + 8))(v2, v23);
  }

  else
  {

    (*(v13 + 8))(v3, v10);
    sub_22BB309AC();
    sub_22BB698E8();
    v35 = *(v26 + 8);
    v36 = sub_22BB3AAD8();
    return v37(v36);
  }
}

uint64_t sub_22BBD1550()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v2[123];
  v6 = *v1;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 992) = v8;
  *(v9 + 1000) = v0;

  v10 = v2[116];
  v11 = v2[115];
  if (v0)
  {
    v12 = sub_22BD479C0;
  }

  else
  {
    v12 = sub_22BB75E38;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_22BBD1688(uint64_t a1)
{
  v21 = a1;
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SessionCoordinatorCommand(0);
  v7 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v22 = *(v24 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = v20 - v11;
  v20[1] = *(*v1 + 176);
  v13 = (v9 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
  sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
  v14 = (type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
  v15 = *(*v14 + 72);
  v16 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22BDBCBD0;
  v18 = sub_22BDB82B4();
  (*(*(v18 - 8) + 16))(v6, v21, v18);
  (*(v3 + 104))(v6, *MEMORY[0x277D1E700], v2);
  sub_22BDB43D4();
  (*(v3 + 32))(v17 + v16 + v14[7], v6, v2);
  *v9 = v17;
  v9[1] = 0;
  v9[2] = 0xE000000000000000;
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  swift_storeEnumTagMultiPayload();
  *v13 = sub_22BB70024;
  v13[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v22 + 8))(v12, v24);
}

void sub_22BBD1A10()
{
  v1 = v0[526];
  v2 = v0[524];
  v3 = v0[519];
  v4 = v0[478];
  v5 = v0[453];
}

uint64_t sub_22BBD1A5C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t sub_22BBD1A6C()
{
  sub_22BB34E84();
  sub_22BB35760();
  v1 = sub_22BDB5664();
  sub_22BB30434(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  sub_22BBC3AC8();
  v5 = *(v0 + 32);
  v7 = *(v0 + v6);
  v8 = swift_task_alloc();
  v9 = sub_22BB31BAC(v8);
  *v9 = v10;
  v9[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB37AC0();

  return sub_22BBD1B68(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22BBD1B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(sub_22BDB52C4() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = *(*(sub_22BDB5664() - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  if (qword_28142A928 != -1)
  {
    swift_once();
  }

  v6[13] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB3B194(&unk_28142A918, type metadata accessor for SessionControlActor);

  v13 = sub_22BDBAE44();
  v6[14] = v13;
  v6[15] = v12;

  return MEMORY[0x2822009F8](sub_22BBD1D28, v13, v12);
}

uint64_t sub_22BBD1D28()
{
  sub_22BB2F35C();
  v1 = v0[5];
  sub_22BB31B88();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
    return sub_22BDBB4D4();
  }

  sub_22BB32A48(dword_22BDCE300);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_22BBADFBC;

  return v6();
}

uint64_t sub_22BBD1E5C()
{
  v45 = v0;
  v1 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[27];
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB3B4D4();
  v5 = v4;
  v6 = sub_22BDB77C4();
  v7 = sub_22BDBB134();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[48];
  if (v8)
  {
    v11 = v0[46];
    v10 = v0[47];
    v12 = v0[37];
    v40 = v0[36];
    v42 = v0[39];
    v13 = v0[34];
    v14 = v0[48];
    v15 = sub_22BB3B778();
    v44 = sub_22BB3E490();
    *v15 = 136315394;
    v16 = sub_22BDB5524();
    v18 = sub_22BB32EE0(v16, v17, &v44);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = sub_22BDB5624();
    v21 = v20;
    sub_22BB35E54();
    sub_22BB346EC();
    v22 = sub_22BB32EE0(v19, v21, &v44);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_22BB2C000, v6, v7, "SessionCoordinator (client: %s) created with ID %s", v15, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB2F194();

    v14(v42, v40);
  }

  else
  {
    v23 = v0[39];
    v24 = v0[36];
    v25 = v0[37];
    v14 = v0[34];

    sub_22BB35E54();
    sub_22BB346EC();
    v9(v23, v24);
  }

  v27 = v0[52];
  v26 = v0[53];
  v29 = v0[44];
  v28 = v0[45];
  v30 = v0[43];
  v31 = v0[41];
  v38 = v0[40];
  v39 = v0[39];
  v32 = v0[35];
  v41 = v0[38];
  v43 = v0[34];
  v33 = v0[33];
  sub_22BB36EF4();
  sub_22BB35E54();
  sub_22BB346EC();
  v34 = sub_22BDB43E4();
  sub_22BB2F330(v34);
  (*(v35 + 32))(v14, v33);
  v27(v28, v31);

  sub_22BB360FC();

  return v36();
}

void sub_22BBD2110(uint64_t a1, void *a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_22BB956CC(a1, &v14 - v8);
  v10 = sub_22BDB43E4();
  v11 = 0;
  if (sub_22BB3AA28(v9, 1, v10) != 1)
  {
    v11 = sub_22BDB43A4();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (a2)
  {
    a2 = sub_22BDB4234();
  }

  v12 = sub_22BB32908();
  v13(v12);
}

uint64_t sub_22BBD2230()
{
  *(v0 + 1864) = v1;

  return swift_getErrorValue();
}

uint64_t sub_22BBD2268(uint64_t a1)
{

  return sub_22BB3AA28(v1, 1, a1);
}

void sub_22BBD2294()
{
  v1 = v0[542];
  v2 = v0[541];
  v3 = v0;
  v4 = v0[537];
  v5 = v3[536];
  v6 = v3[535];
}

uint64_t sub_22BBD22B0(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    v3 = a2(0);
    sub_22BB2F330(v3);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = a1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *(v4 + 56);
    v8 = sub_22BBBE718();
    v9(v8);
    v10 = sub_22BB72084();
    v13 = v3;
  }

  else
  {
    a2(0);
    sub_22BB384BC();
    sub_22BB30B28();
  }

  return sub_22BB336D0(v10, v11, v12, v13);
}

uint64_t sub_22BBD2364()
{
  sub_22BB2F0D4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_22BDB77D4();
  v1[14] = v3;
  sub_22BB30434(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = sub_22BB3307C();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = sub_22BDB4B94();
  v1[19] = v7;
  sub_22BB30434(v7);
  v1[20] = v8;
  v10 = *(v9 + 64);
  v1[21] = sub_22BB30ACC();
  v11 = sub_22BDB97A4();
  v1[22] = v11;
  sub_22BB30434(v11);
  v1[23] = v12;
  v14 = *(v13 + 64);
  v1[24] = sub_22BB30ACC();
  v15 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  v1[25] = sub_22BB30ACC();
  v18 = sub_22BDB9B14();
  v1[26] = v18;
  sub_22BB30434(v18);
  v1[27] = v19;
  v21 = *(v20 + 64);
  v1[28] = sub_22BB30ACC();
  v22 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  sub_22BB2F0C8(v22);
  v24 = *(v23 + 64);
  v1[29] = sub_22BB3307C();
  v1[30] = swift_task_alloc();
  v25 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  v1[31] = sub_22BB30ACC();
  v28 = sub_22BDB9774();
  v1[32] = v28;
  sub_22BB30434(v28);
  v1[33] = v29;
  v31 = *(v30 + 64);
  v1[34] = sub_22BB30ACC();
  v32 = sub_22BDB9B54();
  v1[35] = v32;
  sub_22BB30434(v32);
  v1[36] = v33;
  v35 = *(v34 + 64);
  v1[37] = sub_22BB3307C();
  v1[38] = swift_task_alloc();
  v36 = sub_22BDB7734();
  v1[39] = v36;
  sub_22BB30434(v36);
  v1[40] = v37;
  v39 = *(v38 + 64);
  v1[41] = sub_22BB3307C();
  v1[42] = swift_task_alloc();
  v40 = sub_22BDB7754();
  v1[43] = v40;
  sub_22BB30434(v40);
  v1[44] = v41;
  v43 = *(v42 + 64);
  v1[45] = sub_22BB3307C();
  v1[46] = swift_task_alloc();
  v44 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_22BBD26FC()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v7 = *(v4 + 8);
  v6 = v4 + 8;
  v8 = sub_22BB2F3F0();
  v156 = v9;
  v9(v8);
  v10 = sub_22BDB7744();
  v11 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v12 = v0[42];
    v13 = sub_22BB37F30();
    sub_22BB360F0(v13);
    v14 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v10, v11, v14, "StandardPlanner.run", "", v3, 2u);
    sub_22BB35600();
  }

  v15 = v0[42];
  *v150 = v0[43];
  v151 = v0[46];
  v17 = v0[40];
  v16 = v0[41];
  v18 = v0[39];
  v19 = v0[34];
  v20 = v0[33];
  v152 = v0[32];
  v154 = v0[35];
  v21 = v0[31];
  v148 = v0[12];

  v22 = sub_22BB3459C(v17);
  v23(v22, v15, v18);
  v24 = sub_22BDB77A4();
  sub_22BB34ED4(v24);
  sub_22BB3A190();
  v0[47] = sub_22BDB7794();
  v26 = *(v17 + 8);
  v25 = v17 + 8;
  v26(v15, v18);
  v156(v151, *v150);
  sub_22BDB96A4();
  v27 = sub_22BDB9744();
  v29 = *(v20 + 8);
  v28 = v20 + 8;
  v29(v19, v152);
  sub_22BB3090C();
  sub_22BBD22B0(v27, v30);

  sub_22BB31814(v21, 1, v154);
  if (v31)
  {
    v32 = v0[16];
    sub_22BB58728(v0[31], &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BDB63D4();
    v33 = sub_22BDB77C4();
    v34 = sub_22BDBB114();
    if (sub_22BB333C0(v34))
    {
      v35 = sub_22BB37F30();
      sub_22BB360F0(v35);
      sub_22BB2F0A8(&dword_22BB2C000, v36, v37, "no events in the transcript");
      sub_22BB35600();
    }

    v38 = v0[19];
    v40 = v0[15];
    v39 = v0[16];
    v41 = v0[14];

    v42 = *(v40 + 8);
    v43 = sub_22BB2F0E0();
    v44(v43);
    sub_22BBC788C();
    sub_22BB33E40();
    sub_22BB8C540(v45, 255, v46);
    sub_22BB37F10();
    sub_22BB336D0(v47, 1, 6, v38);
    swift_willThrow();
    goto LABEL_21;
  }

  v48 = v0[13];
  (*(v0[36] + 32))(v0[38], v0[31], v0[35]);
  if (*(v48 + 112))
  {
    sub_22BB72224();
    sub_22BB72FA8(v21, v18);
    v49 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
    sub_22BB31814(v18, 1, v49);
    if (!v31)
    {
      v81 = v0[29];
      v80 = v0[30];
      sub_22BC5E5C4();
      sub_22BB31F54();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v115 = v0[35];
          v116 = v0[36];
          v153 = v0[38];
          v155 = v0[30];
          v117 = v0[23];
          v118 = v0[21];
          v120 = v0[19];
          v119 = v0[20];
          (*(v117 + 32))(v0[24], v0[29], v0[22]);
          sub_22BDB9784();
          sub_22BDB9794();
          sub_22BDB4B84();
          (*(v119 + 8))(v118, v120);
          swift_willThrow();
          v121 = *(v117 + 8);
          v122 = sub_22BB35464();
          v123(v122);
          (*(v116 + 8))(v153, v115);
          v103 = v155;
          goto LABEL_20;
        case 2:
          v111 = sub_22BB6BE80();
          v81 = v0[30];
          (*(v112 + 8))(v111);
          goto LABEL_32;
        case 3:
        case 5:
          v83 = v0[13];
          sub_22BB58728(v0[30], &qword_27D8E6320, &qword_22BDCDD00);
          swift_task_alloc();
          sub_22BB30B34();
          v0[50] = v84;
          *v84 = v85;
          sub_22BB2F26C(v84);
          goto LABEL_39;
        case 4:
          v137 = swift_task_alloc();
          v0[53] = v137;
          *v137 = v0;
          sub_22BB692F8(v137);
          sub_22BB374A0();

          return sub_22BD3B850();
        case 6:
          v139 = v0[13];
          swift_task_alloc();
          sub_22BB30B34();
          v0[59] = v140;
          *v140 = v141;
          sub_22BB34128(v140);
LABEL_39:
          sub_22BB374A0();

          result = sub_22BD3DE98();
          break;
        case 7:
          v124 = v0[18];
          sub_22BDB63D4();
          sub_22BDB77C4();
          v125 = sub_22BDBB0F4();
          if (sub_22BB333C0(v125))
          {
            v126 = sub_22BB37F30();
            sub_22BB360F0(v126);
            sub_22BB2F0A8(&dword_22BB2C000, v127, v128, "Received STOP request. Not doing work");
            sub_22BB35600();
          }

          sub_22BD42530();
          v129 = *(v28 + 8);
          v130 = sub_22BB32E04();
          v131(v130);
          v132 = *(v6 + 8);
          v133 = sub_22BB2F0E0();
          v134(v133);
LABEL_32:
          sub_22BB58728(v81, &qword_27D8E6320, &qword_22BDCDD00);
          sub_22BB391D4();
          sub_22BBBD410();

          sub_22BB39738();
          sub_22BB374A0();

          __asm { BRAA            X2, X16 }

          return result;
        default:
          sub_22BB898C8();
          v113 = swift_task_alloc();
          v0[56] = v113;
          *v113 = v0;
          sub_22BB3B3E0(v113);
          sub_22BB374A0();

          result = sub_22BD3BC4C();
          break;
      }

      return result;
    }

    sub_22BB3A8A8();
    v50 = *(v19 + 16);
    v51 = sub_22BB31F54();
    v52(v51);
    v53 = sub_22BDB77C4();
    v54 = sub_22BDBB114();
    v55 = sub_22BB3805C(v54);
    v57 = v0[36];
    v56 = v0[37];
    v58 = v0[35];
    if (v55)
    {
      v149 = sub_22BB315E4();
      v157 = sub_22BB314C8();
      sub_22BB70C1C(4.8149e-34);
      sub_22BB3AFA0();
      sub_22BB8C540(v59, 255, v60);
      v61 = sub_22BDBB684();
      v62 = *(v25 + 8);
      v63 = sub_22BB2F0E0();
      v64(v63);
      v65 = sub_22BB37364();
      v66(v65, v58);
      v67 = sub_22BB3CB04();
      sub_22BB32EE0(v67, v68, v69);
      sub_22BB3935C();

      *(v149 + 4) = v61;
      sub_22BB3FE04(&dword_22BB2C000, v70, v71, "unhandled event payload: %s", v72, v73, v74, v75, v143, v144, v145, v146, v147, v149, v150[0]);
      sub_22BB32FA4(v157);
      sub_22BB30AF0();
      sub_22BB35600();

      (*(v152 + 8))(v156, v154);
    }

    else
    {
      v86 = v0[17];
      v87 = v0[14];
      v88 = v0[15];

      v89 = sub_22BB37364();
      v90(v89, v58);
      v91 = *(v88 + 8);
      v92 = sub_22BB2F3F0();
      v93(v92);
    }

    v94 = v0[38];
    v95 = v0[35];
    v96 = v0[30];
    v97 = v0[19];
    sub_22BBC788C();
    sub_22BB33E40();
    sub_22BB8C540(v98, 255, v99);
    v100 = sub_22BB37F10();
    sub_22BB3961C(v100, v101);
    v102 = sub_22BB33728();
    v56(v102);
    v103 = v96;
LABEL_20:
    sub_22BB58728(v103, &qword_27D8E6320, &qword_22BDCDD00);
LABEL_21:
    v105 = v0[46];
    v104 = v0[47];
    v106 = v0[45];
    v108 = v0[41];
    v107 = v0[42];
    sub_22BB35C30();
    sub_22BBBD410();

    sub_22BB31044();
    sub_22BB374A0();

    __asm { BRAA            X1, X16 }
  }

  v76 = swift_task_alloc();
  v0[48] = v76;
  *v76 = v0;
  v76[1] = sub_22BBBD69C;
  v77 = v0[13];
  sub_22BB3487C(v0[12]);
  sub_22BB374A0();

  return sub_22BBD30EC();
}

uint64_t sub_22BBD30EC()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB77D4();
  v1[4] = v3;
  sub_22BB30434(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_22BB30ACC();
  v7 = sub_22BDB7734();
  v1[7] = v7;
  sub_22BB30434(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_22BB3307C();
  v1[10] = swift_task_alloc();
  v11 = sub_22BDB7754();
  v1[11] = v11;
  sub_22BB30434(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_22BB3307C();
  v1[14] = swift_task_alloc();
  v15 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22BBD3240()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v6 = *(v4 + 8);
  v7 = sub_22BB2F3F0();
  v37 = v8;
  v8(v7);
  v9 = sub_22BDB7744();
  v10 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v11 = v0[10];
    v12 = sub_22BB37F30();
    *v12 = 0;
    v13 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v9, v10, v13, "StandardPlanner.setup", "", v12, 2u);
    sub_22BB30AF0();
  }

  v14 = v0[14];
  v16 = v0[10];
  v15 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[7];
  v20 = v0[3];
  v35 = v0[2];

  v21 = sub_22BB3459C(v18);
  v22(v21, v16, v19);
  v23 = sub_22BDB77A4();
  sub_22BB34ED4(v23);
  sub_22BB3A190();
  v0[15] = sub_22BDB7794();
  v24 = *(v18 + 8);
  v25 = sub_22BB35464();
  v26(v25);
  v27 = sub_22BB331D4();
  v37(v27);
  sub_22BB72F44();
  sub_22BB8C540(v28, v29, v30);
  v31 = swift_task_alloc();
  v0[16] = v31;
  *(v31 + 16) = v20;
  *(v31 + 24) = v35;
  v32 = *(MEMORY[0x277D859B8] + 4);
  v33 = swift_task_alloc();
  v0[17] = v33;
  *v33 = v0;
  v33[1] = sub_22BBBE180;

  return MEMORY[0x282200740]();
}

uint64_t sub_22BBD3498()
{
  sub_22BB2F35C();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_22BBF90EC;

  return sub_22BBD3544(v5, v3, v7, v6);
}

uint64_t sub_22BBD3544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  v6 = sub_22BDB96E4();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBD3658, a3, 0);
}

uint64_t sub_22BBD3658()
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v1 = *(v0 + 120);
  v2 = sub_22BBD3A7C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v39 = **(v0 + 112);
    v40 = *(v0 + 144);
    v5 = sub_22BDBAEF4();
    do
    {
      v43 = v3;
      v6 = *(v0 + 176);
      v41 = *(v0 + 168);
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 128);
      v10 = *(v0 + 136);
      sub_22BB30B28();
      sub_22BB336D0(v11, v12, v13, v5);
      v42 = v4;
      sub_22BB690EC(v4, v0 + 16);
      (*(v40 + 16))(v7, v9, v10);
      v14 = v5;
      v15 = (*(v40 + 80) + 72) & ~*(v40 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = (v16 + 16);
      *(v16 + 24) = 0;
      sub_22BB382E8((v0 + 16), v16 + 32);
      v18 = v16 + v15;
      v5 = v14;
      (*(v40 + 32))(v18, v7, v10);
      sub_22BC5E5C4();
      v19 = sub_22BB3A190();
      v21 = sub_22BB3AA28(v19, v20, v14);
      v22 = *(v0 + 168);
      if (v21 == 1)
      {
        sub_22BB58728(*(v0 + 168), &qword_27D8E2978, &qword_22BDBD020);
      }

      else
      {
        sub_22BDBAEE4();
        (*(*(v14 - 8) + 8))(v22, v14);
      }

      if (*v17)
      {
        v23 = *(v16 + 24);
        v24 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_22BDBAE44();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      if (v27 | v25)
      {
        v28 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v25;
        *(v0 + 80) = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v0 + 176);
      *(v0 + 88) = 1;
      *(v0 + 96) = v28;
      *(v0 + 104) = v39;
      swift_task_create();

      sub_22BB58728(v29, &qword_27D8E2978, &qword_22BDBD020);
      v4 = v42 + 40;
      v3 = v43 - 1;
    }

    while (v43 != 1);
  }

  sub_22BB72F44();
  *(v0 + 184) = sub_22BB8C540(v30, v31, v32);
  v33 = *(v0 + 120);
  v34 = *(MEMORY[0x277D85818] + 4);
  v35 = swift_task_alloc();
  *(v0 + 192) = v35;
  sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
  *v35 = v0;
  sub_22BB3A2C4();
  sub_22BB38C7C();

  return MEMORY[0x2822004D0](v36);
}

uint64_t sub_22BBD39BC()
{
  v1 = sub_22BDB96E4();
  sub_22BB30444(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v0 + 32));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22BBD3A7C()
{
  sub_22BBE6DE0(&qword_27D8E6360, &unk_22BDCDD70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22BDBD160;
  sub_22BB690EC(v0 + 280, v1 + 32);
  sub_22BB690EC(v0 + 320, v1 + 72);
  sub_22BB690EC(v0 + 360, v1 + 112);
  sub_22BB690EC(v0 + 400, v1 + 152);
  return v1;
}

uint64_t sub_22BBD3AFC()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = sub_22BDB96E4();
  sub_22BB2F0C8(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22BB3C48C;

  return sub_22BBD3BE4(v3, v7, v8, v0 + 32, v0 + v6);
}

uint64_t sub_22BBD3BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StandardPlanner();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22BBF90EC;

  return sub_22BBD3C94(a4, a5);
}

uint64_t sub_22BBD3C94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22BDB8334();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22BDB8134();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v12 = sub_22BDB80E4();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = sub_22BDB9774();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v18 = sub_22BDB82C4();
  v2[20] = v18;
  v19 = *(v18 - 8);
  v2[21] = v19;
  v20 = *(v19 + 64) + 15;
  v2[22] = swift_task_alloc();
  v21 = sub_22BDB43E4();
  v2[23] = v21;
  v22 = *(v21 - 8);
  v2[24] = v22;
  v23 = *(v22 + 64) + 15;
  v2[25] = swift_task_alloc();
  v24 = sub_22BDB7734();
  v2[26] = v24;
  v25 = *(v24 - 8);
  v2[27] = v25;
  v26 = *(v25 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v27 = sub_22BDB7754();
  v2[30] = v27;
  v28 = *(v27 - 8);
  v2[31] = v28;
  v29 = *(v28 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8A630, 0, 0);
}

void sub_22BBD40D4()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v67 = sub_22BDB6574();
  v6 = sub_22BB30444(v67);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v64 = v12 - v11;
  v63 = sub_22BDB77D4();
  v13 = sub_22BB30444(v63);
  v62 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v66 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = sub_22BDBAA04();
  v20 = sub_22BB30444(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v27 = (v26 - v25);
  v28 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_encoder;
  v29 = sub_22BDB4164();
  sub_22BB34ED4(v29);
  *&v0[v28] = sub_22BDB4154();
  v30 = OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_decoder;
  v31 = sub_22BDB4134();
  sub_22BB34ED4(v31);
  *&v0[v30] = sub_22BDB4124();
  *v27 = 10;
  (*(v22 + 104))(v27, *MEMORY[0x277D85188], v19);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v32 = sub_22BDB6614();
  sub_22BB34ED4(v32);
  v33 = v3;
  v34 = sub_22BDB65F4();
  v35 = sub_22BDB64C4();
  sub_22BB34ED4(v35);
  *&v0[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_transaction] = sub_22BDB64D4();
  v36 = sub_22BDB6564();
  v37 = &v0[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientApplicationIdentifier];
  *v37 = v36;
  v37[1] = v38;
  sub_22BDB7A44();

  sub_22BDB7A14();
  v39 = sub_22BDB7A24();
  MEMORY[0x2318A1A00](&v69, v39);
  *&v0[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_queryDecorationCollector] = sub_22BDB7A04();
  v40 = sub_22BDBABE4();
  v41 = [v3 valueForEntitlement_];

  if (v41)
  {
    sub_22BDBB274();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  v72[0] = v70;
  v72[1] = v71;
  v42 = v66;
  v43 = v67;
  v44 = v64;
  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v45 = sub_22BDB4E54();
      v46 = &v1[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
      *v46 = v45;
      v46[1] = v47;
      goto LABEL_19;
    }

    v61 = v34;
  }

  else
  {
    v61 = v34;
    sub_22BB58780(v72, &qword_27D8E6D10, &unk_22BDBD9A0);
  }

  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v48 = v5;
  (*(v8 + 16))(v44, v5, v43);
  v49 = sub_22BDB77C4();
  v50 = sub_22BDBB134();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = sub_22BB31AD8();
    v52 = sub_22BB314C8();
    *&v72[0] = v52;
    *v51 = 136315138;
    v53 = sub_22BDB6564();
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0x6E776F6E6B6E75;
    }

    v56 = v44;
    v57 = v33;
    if (v54)
    {
      v58 = v54;
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    (*(v8 + 8))(v56, v67);
    v59 = sub_22BB32EE0(v55, v58, v72);
    v33 = v57;

    *(v51 + 4) = v59;
    _os_log_impl(&dword_22BB2C000, v49, v50, "QueryDecorationXPCServiceServer: client %s is missing group-identifier entitlement, setting clientGroupIdentifier to nil.", v51, 0xCu);
    sub_22BB32FA4(v52);
    sub_22BB30AF0();
    v43 = v67;
    sub_22BB30AF0();

    (*(v62 + 8))(v66, v63);
  }

  else
  {

    (*(v8 + 8))(v44, v43);
    (*(v62 + 8))(v42, v63);
  }

  v60 = &v1[OBJC_IVAR____TtCC23IntelligenceFlowRuntime31QueryDecorationXPCServiceServer6Server_clientGroupIdentifier];
  *v60 = 0;
  *(v60 + 1) = 0;
  v5 = v48;
LABEL_19:
  sub_22BDB6604();

  v68.receiver = v1;
  v68.super_class = ObjectType;
  objc_msgSendSuper2(&v68, sel_init);

  (*(v8 + 8))(v5, v43);
  sub_22BB314EC();
}

uint64_t sub_22BBD46EC()
{
  v0 = sub_22BDB77D4();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  sub_22BDB6384();
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB104();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_22BBE6DE0(&qword_27D8E3C38, &unk_22BDC0C20);
    v13 = sub_22BDBAC14();
    v15 = sub_22BB32EE0(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22BB2C000, v9, v10, "TaskStepLoggingSubscriber received completion: %s", v11, 0xCu);
    sub_22BB32FA4(v12);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_22BBD488C()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime25TaskStepLoggingSubscriber_id);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBD4900()
{
  sub_22BB6ECF4(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriber);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBD4974()
{
  v0 = sub_22BDB77D4();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  sub_22BDB6384();
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB104();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_22BBE6DE0(&qword_27D8E3C38, &unk_22BDC0C20);
    v13 = sub_22BDBAC14();
    v15 = sub_22BB32EE0(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22BB2C000, v9, v10, "CurareFSServiceSubscriber received completion: %s", v11, 0xCu);
    sub_22BB32FA4(v12);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_22BBD4B30()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime25CurareFSServiceSubscriber_id);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBD4BD0(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BDB8F04();
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BDB8F04() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BCD294C(v8, v9, a1, v4);
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
    return sub_22BCD25B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BBD4D00(uint64_t a1)
{
  v98 = sub_22BDB43E4();
  v2 = sub_22BB30444(v98);
  v114 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB305A8();
  sub_22BB30B8C(v6);
  v122 = sub_22BDB5404();
  v7 = sub_22BB30444(v122);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v121 = v10;
  sub_22BB2F120();
  v113 = sub_22BDB90B4();
  v11 = sub_22BB30444(v113);
  v103 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v112 = v15;
  sub_22BB2F120();
  v123 = sub_22BDB9B14();
  v16 = sub_22BB30444(v123);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  v24 = sub_22BDB87F4();
  v25 = sub_22BB30444(v24);
  v100 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  v120 = v29;
  v30 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = v93 - v32;
  v119 = _s20StatementResultEventVMa(0);
  v34 = sub_22BB30444(v119);
  v96 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB305A8();
  v111 = v38;
  sub_22BB2F120();
  v39 = sub_22BDB9B54();
  v40 = sub_22BB30444(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB30574();
  v47 = v46 - v45;
  v48 = *(a1 + 16);
  if (v48)
  {
    v51 = *(v42 + 16);
    v50 = v42 + 16;
    v49 = v51;
    v52 = *(v50 + 64);
    sub_22BB2F390();
    v54 = a1 + v53;
    v55 = *(v50 + 56);
    v117 = v18 + 88;
    v118 = v55;
    v116 = *MEMORY[0x277D1E798];
    v115 = (v50 - 8);
    v106 = v18 + 96;
    v107 = v18 + 8;
    v56 = (v100 + 32);
    ++v103;
    v102 = v57 + 88;
    v101 = *MEMORY[0x277D1CBB0];
    v93[2] = v100 + 8;
    v93[1] = v114 + 32;
    v100 = v57 + 8;
    v114 = MEMORY[0x277D84F90];
    v94 = v24;
    v95 = v23;
    v109 = v50;
    v110 = v33;
    v108 = v51;
    v104 = v39;
    v105 = v56;
    v99 = v47;
    while (1)
    {
      v49(v47, v54, v39);
      sub_22BDB9B24();
      v58 = sub_22BB3919C();
      v60 = v59(v58);
      if (v60 == v116)
      {
        v61 = sub_22BB3919C();
        v62(v61);
        v63 = *v105;
        v64 = sub_22BB53C48();
        v63(v64);
        v65 = v112;
        sub_22BDB87E4();
        v66 = v121;
        sub_22BDB9094();
        (*v103)(v65, v113);
        sub_22BB30F88(&v128);
        v67(v66, v122);
        sub_22BB33FE8(&v127 + 4);
        if (v68)
        {
          v69 = v97;
          v47 = v99;
          sub_22BDB8F24();
          v39 = v104;
          (*v115)(v47, v104);
          v80 = v119;
          v70 = v110;
          (v63)(&v110[*(v119 + 20)], v120, v24);
          v33 = v70;
          v71 = sub_22BB355C8(v124);
          v72(v71, v69, v98);
          v79 = 0;
        }

        else
        {
          sub_22BB30F88(&v125);
          v78(v120, v24);
          v47 = v99;
          v39 = v104;
          (*v115)(v99, v104);
          v79 = 1;
          v33 = v110;
          v80 = v119;
        }

        sub_22BB336D0(v33, v79, 1, v80);
        sub_22BB30F88(&v126);
        v81(v121, v122);
        v82 = sub_22BB3AA28(v33, 1, v80);
        v49 = v108;
        if (v82 != 1)
        {
          sub_22BB3A6B4();
          sub_22BCD404C(v33, v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = *(v114 + 16);
            sub_22BD90298();
            v114 = v90;
          }

          v84 = *(v114 + 16);
          v83 = *(v114 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_22BB2F158(v83);
            sub_22BD90298();
            v114 = v91;
          }

          *(v114 + 16) = v84 + 1;
          v85 = *(v96 + 80);
          sub_22BB2F390();
          v87 = *(v86 + 72);
          sub_22BB3A6B4();
          sub_22BCD404C(v111, v88);
          v24 = v94;
          goto LABEL_15;
        }
      }

      else
      {
        v73 = *v115;
        v74 = sub_22BB35470();
        v75(v74);
        v76 = sub_22BB3919C();
        v77(v76);
        sub_22BB336D0(v33, 1, 1, v119);
      }

      sub_22BB58728(v33, &qword_27D8E3DE8, &unk_22BDC1220);
LABEL_15:
      v54 += v118;
      if (!--v48)
      {
        return v114;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22BBD544C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_22BD28118();
  v6 = v18;
  v8 = _s20StatementResultEventVMa(0);
  sub_22BB30434(v8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v12 = *(v11 + 72);
  while (1)
  {
    a1(&v17, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v17;
    v18 = v6;
    v14 = *(v6 + 16);
    if (v14 >= *(v6 + 24) >> 1)
    {
      sub_22BD28118();
      v6 = v18;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v13;
    v10 += v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBD55A0(uint64_t a1)
{
  v2 = &qword_27D8E3E00;
  v3 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v47 - v8;
  v9 = _s16CandidateSummaryVMa(0);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0;
  v55 = 0;
  v15 = 0;
  v48 = *(v16 + 80);
  v49 = v16;
  v56 = MEMORY[0x277D84F90];
  v51 = (v48 + 32) & ~v48;
  v53 = (MEMORY[0x277D84F90] + v51);
  while (1)
  {
    while (1)
    {
      if (!v14)
      {
        goto LABEL_5;
      }

      v17 = *(v14 + 16);
      if (v13 == v17)
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_41;
      }

      v50 = *(v49 + 72);
      sub_22BBCE8FC();
      sub_22BB336D0(v7, 0, 1, v9);
      v21 = v54;
      sub_22BCE1778();
      if (sub_22BB3AA28(v21, 1, v9) == 1)
      {
        goto LABEL_36;
      }

      result = sub_22BCE17CC();
      v22 = v55;
      if (v55)
      {
        v23 = v56;
        goto LABEL_33;
      }

      v24 = *(v56 + 3);
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_44;
      }

      v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      sub_22BBE6DE0(&qword_27D8E3E48, &unk_22BDC2FF0);
      v27 = v51;
      v55 = swift_allocObject();
      result = j__malloc_size(v55);
      v28 = v50;
      if (!v50)
      {
        goto LABEL_45;
      }

      v29 = result - v27;
      if (result - v27 == 0x8000000000000000 && v50 == -1)
      {
        goto LABEL_46;
      }

      v31 = v27;
      v32 = v29 / v50;
      v34 = v55;
      v33 = v56;
      *(v55 + 2) = v26;
      *(v34 + 3) = 2 * (v29 / v28);
      v35 = &v34[v31];
      v36 = *(v33 + 3);
      v37 = (v36 >> 1) * v28;
      if (*(v33 + 2))
      {
        if (v34 >= v33 && v35 < &v33[v31 + v37])
        {
          if (v34 != v33)
          {
            v53 = &v34[v31];
            v47 = v37;
            swift_arrayInitWithTakeBackToFront();
LABEL_30:
            v37 = v47;
            v35 = v53;
          }

          *(v56 + 2) = 0;
          goto LABEL_32;
        }

        v53 = &v34[v31];
        v47 = v37;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_30;
      }

LABEL_32:
      v53 = &v35[v37];

      v22 = ((v32 & 0x7FFFFFFFFFFFFFFFLL) - (v36 >> 1));
      v23 = v55;
LABEL_33:
      v39 = __OFSUB__(v22, 1);
      v40 = v22 - 1;
      if (v39)
      {
        goto LABEL_42;
      }

      v55 = v40;
      ++v13;
      v41 = v53;
      v42 = v2;
      v43 = v23;
      result = sub_22BCE17CC();
      v53 = &v41[v50];
      v56 = v43;
      v2 = v42;
    }

    sub_22BB336D0(v7, 1, 1, v9);
    result = sub_22BB58728(v7, v2, &qword_22BDC1248);
LABEL_5:
    v18 = *(a1 + 16);
    if (v15 == v18)
    {
      break;
    }

    if (v15 >= v18)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v19 = v15 + 1;
    v20 = *(a1 + 32 + 8 * v15);

    v13 = 0;
    v14 = v20;
    v15 = v19;
  }

  v21 = v54;
  sub_22BB336D0(v54, 1, 1, v9);
LABEL_36:

  sub_22BB58728(v21, &qword_27D8E3E00, &qword_22BDC1248);
  result = v56;
  v44 = *(v56 + 3);
  if (v44 < 2)
  {
    return result;
  }

  v45 = v44 >> 1;
  v39 = __OFSUB__(v45, v55);
  v46 = v45 - v55;
  if (!v39)
  {
    *(v56 + 2) = v46;
    return result;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_22BBD5A40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB4C34();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      v18 = sub_22BB314BC(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_22BDB7B44();
        result = sub_22BB314BC(v20);
        if (*(v22 + 84) != a3)
        {
          *(v4 + a4[8]) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
          return result;
        }

        v11 = result;
        v16 = a4[7];
      }
    }

    v12 = v4 + v16;
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBD5BC4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  v6 = sub_22BDB4C34();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
    v12 = sub_22BB314BC(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      v16 = sub_22BB314BC(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_22BDB7B44();
        v19 = sub_22BB314BC(v18);
        if (*(v20 + 84) != a2)
        {
          v22 = *(v3 + a3[8]);
          v23 = v22 & 0x3C | (v22 >> 6);
          v24 = v23 ^ 0x3F;
          v25 = 64 - v23;
          if (v24 >= 0x3D)
          {
            return 0;
          }

          else
          {
            return v25;
          }
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = v3 + v14;
  }

  return sub_22BB3AA28(v10, a2, v9);
}

void sub_22BBD5D64()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E3E48, &unk_22BDC2FF0);
  v9 = sub_22BB38F5C();
  v10 = _s16CandidateSummaryVMa(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD275AC(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BBD5E2C()
{
  sub_22BB30F94();
  v2 = v1;
  v80 = v3;
  v91 = *MEMORY[0x277D85DE8];
  v86 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v4 = sub_22BB30444(v86);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v9 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BB319F8();
  v14 = type metadata accessor for FeedbackLearning.FlowExpression(v13);
  v15 = sub_22BB30444(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30560();
  v87 = v20;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v21);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v22);
  sub_22BB3FBEC();
  MEMORY[0x28223BE20](v23);
  sub_22BB2F39C();
  v81 = v24;
  sub_22BBD6508(v2);
  v26 = v25;
  v89 = sub_22BBD9554(v2);
  v88 = sub_22BBDAFE4(v2);
  v27 = *(v26 + 16);
  if (v27)
  {
    v83 = v14;
    *&v84 = v0;
    v90 = MEMORY[0x277D84F90];
    sub_22BD28358();
    v28 = v90;
    v29 = *(v6 + 80);
    sub_22BB2F390();
    v82 = v26;
    v30 = v6;
    v32 = v26 + v31;
    v33 = *(v30 + 72);
    do
    {
      sub_22BB2F254();
      sub_22BD1FA4C();
      sub_22BD44B04();
      sub_22BD66840();
      v35 = v34;
      v36 = sub_22BB3A86C();
      sub_22BD215F8(v36, v37, v35, v38);

      sub_22BD2EAAC();
      v90 = v28;
      v40 = *(v28 + 16);
      v39 = *(v28 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22BB2F158(v39);
        sub_22BD28358();
        v28 = v90;
      }

      *(v28 + 16) = v40 + 1;
      v41 = *(v17 + 80);
      sub_22BB2F390();
      v42 = *(v17 + 72);
      sub_22BB529F8();
      sub_22BD2EB00();
      v32 += v33;
      --v27;
    }

    while (v27);

    v14 = v83;
    v0 = v84;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  sub_22BBDB6C8(v28, v0);
  if (sub_22BB3AA28(v0, 1, v14) == 1)
  {

    sub_22BB58728(v0, &qword_27D8E4348, &qword_22BDC2FA8);
  }

  else
  {
    sub_22BB529F8();
    sub_22BD2EB00();
    v79 = sub_22BCAE850(1, v28);
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_22BBE6DE0(&qword_27D8E60B8, &qword_22BDCD600);
    inited = swift_initStackObject();
    v84 = xmmword_22BDBCBD0;
    *(inited + 16) = xmmword_22BDBCBD0;
    v50 = sub_22BBE6DE0(&qword_27D8E60C0, &qword_22BDCD608);
    v51 = *(v17 + 72);
    v82 = *(v17 + 80);
    v83 = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = v84;
    sub_22BB323D0();
    sub_22BD1FA4C();
    *(inited + 32) = v52;
    v53 = (v48 >> 1) - v46;
    if (v48 >> 1 != v46)
    {
      if ((v48 >> 1) <= v46)
      {
        goto LABEL_29;
      }

      v63 = v44 + v46 * v51;
      do
      {
        sub_22BB323D0();
        sub_22BD1FA4C();
        v64 = *(inited + 16);
        if (v64 && (v65 = *(inited + 32 + 8 * v64 - 8), *(v65 + 16)))
        {
          sub_22BB323D0();
          sub_22BD1FA4C();
          v66 = *(v86 + 20);

          if (sub_22BDB4C04())
          {
            v67 = *(inited + 16);
            if (!v67)
            {
              __break(1u);
LABEL_29:
              __break(1u);
            }

            v68 = v67 - 1;
            v69 = *(inited + 32 + 8 * v68);
            *(inited + 16) = v68;

            v70 = swift_allocObject();
            *(v70 + 16) = v84;
            sub_22BB323D0();
            sub_22BD1FA4C();
            v90 = v65;
            sub_22BD66C34(v70);
            v72 = *(inited + 16);
            v71 = *(inited + 24);
            if (v72 >= v71 >> 1)
            {
              sub_22BB2F158(v71);
              sub_22BD90D94();
              inited = v77;
            }

            sub_22BD2EAAC();
            sub_22BD2EAAC();
            *(inited + 16) = v72 + 1;
            *(inited + 8 * v72 + 32) = v65;
          }

          else
          {

            v73 = swift_allocObject();
            *(v73 + 16) = v84;
            sub_22BB323D0();
            sub_22BD1FA4C();
            v75 = *(inited + 16);
            v74 = *(inited + 24);
            if (v75 >= v74 >> 1)
            {
              sub_22BB2F158(v74);
              sub_22BD90D94();
              inited = v76;
            }

            sub_22BD2EAAC();
            sub_22BB3ADA8();
            sub_22BD2EAAC();
            *(inited + 16) = v75 + 1;
            *(inited + 8 * v75 + 32) = v73;
          }
        }

        else
        {
          sub_22BB38E5C();
          sub_22BD2EAAC();
        }

        v63 += v51;
        --v53;
      }

      while (v53);
    }

    v54 = swift_unknownObjectRelease();
    MEMORY[0x28223BE20](v54);
    v56 = v88;
    v55 = v89;
    *(&v78 - 4) = v80;
    *(&v78 - 3) = v55;
    *(&v78 - 2) = v56;
    sub_22BCA8B0C(sub_22BD2F67C, (&v78 - 6), inited, v57, v58, v59, v60, v61, v78, v79, v80, v81, v82, v83, v84, *(&v84 + 1), v85, v86, v87, v88);

    sub_22BB38E5C();
    sub_22BD2EAAC();
  }

  v62 = *MEMORY[0x277D85DE8];
  sub_22BB314EC();
}

void sub_22BBD6508(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BBE6DE0(&qword_27D8E60E8, &qword_22BDCD640);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v79 - v9;
  v110 = sub_22BDB4C34();
  v10 = *(v110 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v110);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22BDB8F04();
  v84 = *(v91 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22BDB9954();
  v83 = *(v89 - 8);
  v16 = v83[8];
  MEMORY[0x28223BE20](v89);
  v88 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22BDB9B14();
  *&v81 = *(v96 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v96);
  v106 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v20 = *(v105 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v105);
  v104 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v100 = (&v79 - v25);
  MEMORY[0x28223BE20](v24);
  v103 = (&v79 - v26);
  v27 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  v101 = *(v27 - 8);
  v102 = v27;
  v28 = v101[8];
  MEMORY[0x28223BE20](v27);
  v30 = &v79 - v29;
  v31 = sub_22BDB9B54();
  v107 = *(v31 - 8);
  v32 = *(v107 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22BBD7224(a1);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  v92 = v13;
  v108 = v31;
  v109 = v34;
  v93 = v35;
  v85 = v10;
  if (v36)
  {
    v38 = v35;
    v80 = a1;
    v113 = MEMORY[0x277D84F90];
    sub_22BD28318();
    v37 = v113;
    v39 = v38 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v98 = (v10 + 8);
    v99 = v10 + 16;
    v97 = *(v20 + 72);
    do
    {
      v112 = v36;
      sub_22BC5E5C4();
      v111 = *(v102 + 48);
      v40 = v100;
      sub_22BC5E5C4();
      v41 = v105;
      v42 = v110;
      (*v99)(v30, v40 + *(v105 + 48), v110);
      sub_22BD2EAAC();
      v43 = v104;
      sub_22BC8D26C();
      v44 = &v43[*(v41 + 48)];
      sub_22BD2EB00();
      v45 = *v98;
      (*v98)(v43, v42);
      v45(v40, v42);
      v113 = v37;
      v46 = *(v37 + 16);
      if (v46 >= *(v37 + 24) >> 1)
      {
        sub_22BD28318();
        v37 = v113;
      }

      *(v37 + 16) = v46 + 1;
      v47 = v37 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v48 = v101[9];
      sub_22BC8D26C();
      v39 += v97;
      v36 = v112 - 1;
    }

    while (v112 != 1);
    v31 = v108;
    v34 = v109;
    a1 = v80;
  }

  v99 = sub_22BBD93F4(v37);
  v49 = *(a1 + 16);
  v50 = v106;
  if (v49)
  {
    v112 = *(v107 + 16);
    v51 = a1 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v104 = *(v107 + 72);
    v52 = (v81 + 88);
    LODWORD(v111) = *MEMORY[0x277D1E6F8];
    LODWORD(v102) = *MEMORY[0x277D1E830];
    v107 += 16;
    v105 = v107 - 8;
    v98 = (v81 + 8);
    v103 = (v81 + 96);
    v97 = (v84 + 32);
    ++v85;
    v84 += 8;
    v101 = (v83 + 4);
    v53 = MEMORY[0x277D84F90];
    v100 = (v83 + 1);
    v81 = xmmword_22BDBCBD0;
    v83 = v52;
    while (1)
    {
      (v112)(v34, v51, v31);
      sub_22BDB9B24();
      v54 = v96;
      v55 = (*v52)(v50, v96);
      if (v55 == v111)
      {
        (*v103)(v50, v54);
        v56 = v31;
        v57 = v88;
        v58 = v89;
        (*v101)(v88, v50, v89);
        v59 = sub_22BD2329C(v57, v93);
        (*v100)(v57, v58);
        v60 = v56;
        v34 = v109;
        (*v105)(v109, v60);
      }

      else if (v55 == v102)
      {
        (*v103)(v50, v54);
        (*v97)(v90, v50, v91);
        sub_22BDB8174();
        v61 = v99;
        if (*(v99 + 16))
        {
          sub_22BBDAE68();
          if (v63)
          {
            v64 = *(v61 + 56) + *(v94 + 72) * v62;
            sub_22BD1FA4C();
            v65 = 0;
          }

          else
          {
            v65 = 1;
          }

          v66 = v86;
        }

        else
        {
          v65 = 1;
          v66 = v86;
        }

        v67 = v87;
        v68 = v95;
        sub_22BB336D0(v87, v65, 1, v95);
        sub_22BC5E5C4();
        if (sub_22BB3AA28(v66, 1, v68) == 1)
        {
          sub_22BB58728(v67, &qword_27D8E60E8, &qword_22BDCD640);
          (*v85)(v92, v110);
          (*v84)(v90, v91);
          v34 = v109;
          (*v105)(v109, v31);
          v59 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_22BD2EB00();
          sub_22BBE6DE0(&qword_27D8E60A0, &unk_22BDD0410);
          v69 = *(v94 + 72);
          v70 = (*(v94 + 80) + 32) & ~*(v94 + 80);
          v59 = swift_allocObject();
          *(v59 + 16) = v81;
          sub_22BD2EB00();
          sub_22BB58728(v67, &qword_27D8E60E8, &qword_22BDCD640);
          (*v85)(v92, v110);
          (*v84)(v90, v91);
          v34 = v109;
          (*v105)(v109, v108);
        }

        v52 = v83;
      }

      else
      {
        (*v105)(v34, v31);
        (*v98)(v50, v54);
        v59 = MEMORY[0x277D84F90];
      }

      v71 = *(v59 + 16);
      v72 = *(v53 + 16);
      if (__OFADD__(v72, v71))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v72 + v71 > *(v53 + 24) >> 1)
      {
        sub_22BBD948C();
        v53 = v73;
      }

      v50 = v106;
      v31 = v108;
      if (*(v59 + 16))
      {
        if ((*(v53 + 24) >> 1) - *(v53 + 16) < v71)
        {
          goto LABEL_37;
        }

        v74 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v75 = *(v94 + 72);
        swift_arrayInitWithCopy();

        if (v71)
        {
          v76 = *(v53 + 16);
          v77 = __OFADD__(v76, v71);
          v78 = v76 + v71;
          if (v77)
          {
            goto LABEL_38;
          }

          *(v53 + 16) = v78;
        }
      }

      else
      {

        if (v71)
        {
          goto LABEL_36;
        }
      }

      v51 += v104;
      if (!--v49)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_34:
  }
}

uint64_t sub_22BBD7224(uint64_t a1)
{
  v153 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v2 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v152 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_22BDB43E4();
  v151 = *(v192 - 8);
  v4 = *(v151 + 64);
  v5 = MEMORY[0x28223BE20](v192);
  v159 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v158 = &v150 - v7;
  v8 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v157 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v156 = &v150 - v12;
  v175 = sub_22BDB8F04();
  v150 = *(v175 - 8);
  v13 = *(v150 + 64);
  MEMORY[0x28223BE20](v175);
  v174 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BBE6DE0(&qword_27D8E6160, &qword_22BDCD6C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v166 = &v150 - v17;
  v167 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  v164 = *(v167 - 8);
  v18 = *(v164 + 64);
  MEMORY[0x28223BE20](v167);
  v173 = &v150 - v19;
  v201 = sub_22BDB80F4();
  v203 = *(v201 - 8);
  v20 = v203[8];
  MEMORY[0x28223BE20](v201);
  v22 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22BDB4C34();
  v23 = *(v205 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v205);
  v155 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v191 = &v150 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v150 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v150 - v32;
  v163 = sub_22BDB89F4();
  v34 = *(v163 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v163);
  v161 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_22BDB9954();
  v37 = *(v182 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v182);
  v181 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22BDB9B14();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v165 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v180 = &v150 - v45;
  v46 = sub_22BDB9B54();
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v184 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v189 = &v150 - v51;
  v207 = MEMORY[0x277D84FA0];
  v208 = MEMORY[0x277D84FA0];
  v52 = *(a1 + 16);
  v186 = v53 + 16;
  v185 = (v41 + 88);
  LODWORD(v179) = *MEMORY[0x277D1E6F8];
  v177 = (v41 + 8);
  v176 = (v41 + 96);
  v54 = v50;
  *&v170 = v37 + 32;
  v190 = v23;
  v55 = (v23 + 8);
  v56 = v53;
  v204 = v55;
  v198 = (v203 + 11);
  v199 = v34 + 16;
  LODWORD(v197) = *MEMORY[0x277D1DAD0];
  LODWORD(v196) = *MEMORY[0x277D1DA48];
  v162 = v34;
  v195 = (v34 + 8);
  v194 = *MEMORY[0x277D1DAE8];
  v193 = (v203 + 1);
  v169 = (v37 + 8);
  v187 = (v53 + 8);
  v154 = 0;
  v57 = 0;
  v58 = v52;
  v168 = a1;
  v206 = v33;
  v171 = v40;
  v178 = v50;
  v183 = v52;
  v200 = v22;
  v160 = v53;
  while (v57 != v58)
  {
    v59 = a1 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v60 = *(v56 + 72);
    v188 = v57;
    (*(v56 + 16))(v189, v59 + v60 * v57, v54);
    v61 = v180;
    sub_22BDB9B24();
    v62 = (*v185)(v61, v40);
    if (v62 == v179)
    {
      (*v176)(v61, v40);
      (*v170)(v181, v61, v182);
      v63 = sub_22BDB9914();
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v172 = v63;
        v66 = v63 + v65;
        v67 = *(v162 + 72);
        v202 = *(v162 + 16);
        v203 = v67;
        v68 = v163;
        v69 = v161;
        do
        {
          (v202)(v69, v66, v68);
          sub_22BDB8174();
          sub_22BBB97EC();
          v70 = *v204;
          v71 = v33;
          v72 = v205;
          (*v204)(v71, v205);
          v73 = v31;
          v74 = v200;
          sub_22BDB89D4();
          v75 = v201;
          v76 = (*v198)(v74, v201);
          if (v76 == v197 || v76 == v196 || v76 == v194)
          {
            (*v193)(v74, v75);
            sub_22BDB8174();
            v79 = v206;
            sub_22BBB97EC();
            v70(v79, v72);
            (*v195)(v69, v68);
          }

          else
          {
            (*v195)(v69, v68);
            (*v193)(v74, v75);
          }

          v31 = v73;
          v66 += v203;
          --v64;
          v33 = v206;
        }

        while (v64);

        a1 = v168;
        v40 = v171;
        v54 = v178;
        v58 = v183;
        v56 = v160;
      }

      else
      {
      }

      (*v169)(v181, v182);
    }

    else
    {
      (*v177)(v61, v40);
    }

    v57 = v188 + 1;
    (*v187)(v189, v54);
  }

  v193 = v207;
  v80 = v58;
  v81 = v167;
  v203 = v208;
  if (v80)
  {
    v82 = 0;
    v83 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v197 = a1 + v83;
    v189 = (v150 + 32);
    v84 = *(v56 + 72);
    v200 = (v208 + 7);
    v201 = v190 + 16;
    v195 = *(v56 + 16);
    v188 = (v150 + 8);
    v85 = (v151 + 8);
    v194 = *MEMORY[0x277D1E830];
    v180 = (v190 + 32);
    v182 = a1 + v83 + v84 * (v80 - 1);
    v196 = v84;
    v202 = -v84;
    v199 = MEMORY[0x277D84F90];
    v181 = ((v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v170 = xmmword_22BDBCBD0;
    v86 = v159;
    v87 = v158;
    v88 = v166;
    v89 = v165;
    v90 = v184;
    do
    {
      (v195)(v90, v197 + v196 * v82, v54);
      sub_22BDB9B24();
      v91 = (*v185)(v89, v40);
      if (v91 == v194)
      {
        (*v176)(v89, v40);
        (*v189)(v174, v89, v175);
        v92 = v191;
        sub_22BDB8174();
        v93 = v203;
        v94 = v203[2];
        v198 = v82;
        if (v94)
        {
          v95 = v203[5];
          sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338]);
          v96 = sub_22BDBABA4();
          v97 = ~(-1 << *(v93 + 32));
          while (1)
          {
            v98 = v96 & v97;
            if (((*&v200[((v96 & v97) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v96 & v97)) & 1) == 0)
            {
              break;
            }

            v99 = v190;
            v101 = v205;
            v100 = v206;
            (*(v190 + 16))(v206, v203[6] + *(v190 + 72) * v98, v205);
            sub_22BBB9968(&qword_28142DD10, MEMORY[0x277D1C338]);
            v102 = sub_22BDBABD4();
            v103 = *(v99 + 8);
            v103(v100, v101);
            v96 = v98 + 1;
            if (v102)
            {
              v103(v191, v205);
              (*v188)(v174, v175);
              v54 = v178;
              (*v187)(v184, v178);
              v88 = v166;
              v81 = v167;
              sub_22BB336D0(v166, 1, 1, v167);
              v40 = v171;
              v89 = v165;
              v82 = v198;
              goto LABEL_41;
            }
          }

          v104 = v205;
          v92 = v191;
          v40 = v171;
          v89 = v165;
          v82 = v198;
        }

        else
        {
          v104 = v205;
        }

        (*v204)(v92, v104);
        sub_22BDB8F24();

        v105 = v182;
        v106 = v183;
        while (v106)
        {
          --v106;
          sub_22BDB8F24();
          v107 = sub_22BDB43B4();
          v108 = *v85;
          (*v85)(v86, v192);
          v105 += v202;
          if (v107)
          {
            sub_22BB8EC88(0, v106, v168);
            v110 = v109;
            v112 = v111;
            v114 = v113;
            v116 = v115;
            v117 = v193;

            v118 = v114;
            v87 = v158;
            v119 = v154;
            v120 = sub_22BD1CBF4(v110, v112, v118, v116, v117);
            v154 = v119;
            v86 = v159;
            swift_unknownObjectRelease();
            sub_22BC7420C(v120, v157);
            v82 = v198;

            v121 = v205;
            goto LABEL_37;
          }
        }

        v121 = v205;
        sub_22BB336D0(v157, 1, 1, v205);
        v108 = *v85;
LABEL_37:
        v108(v87, v192);
        v122 = v156;
        sub_22BC8D26C();
        if (sub_22BB3AA28(v122, 1, v121) == 1)
        {
          (*v188)(v174, v175);
          v123 = v178;
          (*v187)(v184, v178);
          v124 = v122;
          v54 = v123;
          sub_22BB58728(v124, &qword_27D8E27C0, &qword_22BDBCDF0);
          v88 = v166;
          v125 = v166;
          v126 = 1;
          v81 = v167;
        }

        else
        {
          v127 = v190;
          v179 = *(v190 + 32);
          v128 = v155;
          v179(v155, v122, v121);
          v129 = v153;
          v172 = *(v153 + 20);
          v130 = v152;
          v131 = v174;
          sub_22BDB8174();
          v132 = *(v129 + 24);
          sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
          v133 = *(v127 + 72);
          v134 = v121;
          v135 = (*(v127 + 80) + 32) & ~*(v127 + 80);
          v136 = swift_allocObject();
          *(v136 + 16) = v170;
          v137 = *(v127 + 16);
          v137(v136 + v135, v128, v134);
          (*v188)(v131, v175);
          v138 = v178;
          (*v187)(v184, v178);
          *&v130[v132] = v136;
          type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
          swift_storeEnumTagMultiPayload();
          v137(v130, &v130[v172], v134);
          v87 = v158;
          v81 = v167;
          v139 = *(v167 + 48);
          v88 = v166;
          v140 = v134;
          v82 = v198;
          v179(v166, v155, v140);
          v86 = v159;
          v54 = v138;
          v89 = v165;
          sub_22BD2EB00();
          v125 = v88;
          v126 = 0;
        }

        sub_22BB336D0(v125, v126, 1, v81);
      }

      else
      {
        (*v187)(v90, v54);
        sub_22BB336D0(v88, 1, 1, v81);
        (*v177)(v89, v40);
      }

LABEL_41:
      if (sub_22BB3AA28(v88, 1, v81) == 1)
      {
        sub_22BB58728(v88, &qword_27D8E6160, &qword_22BDCD6C0);
      }

      else
      {
        sub_22BC8D26C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = *(v199 + 16);
          sub_22BD90C00();
          v199 = v145;
        }

        v141 = *(v199 + 16);
        if (v141 >= *(v199 + 24) >> 1)
        {
          sub_22BD90C00();
          v199 = v146;
        }

        v142 = v199;
        *(v199 + 16) = v141 + 1;
        v143 = v142 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v141;
        sub_22BC8D26C();
        v54 = v178;
      }

      v82 = (v82 + 1);
      v90 = v184;
    }

    while (v82 != v183);
  }

  else
  {
    v199 = MEMORY[0x277D84F90];
  }

  sub_22BBD8DCC();
  v148 = v147;

  return v148;
}

uint64_t sub_22BBD86E8()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[23];
  v3 = v1[22];
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];
  v7 = *v0;
  sub_22BB3052C();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = sub_22BB30AE4();
  v11(v10);

  return MEMORY[0x2822009F8](sub_22BBD8848, 0, 0);
}

uint64_t sub_22BBD8848()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[7];
  sub_22BBD8928(v0[21], v0[3], v0[4]);

  sub_22BB2F09C();

  return v9();
}

uint64_t sub_22BBD8928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v4 = sub_22BDB7764();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB7734();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB5664();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB7754();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6124();
  sub_22BB388FC(a2, v15);
  v21 = sub_22BDB7744();
  sub_22BDB7774();
  v48 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v42 = v20;
    v43 = v21;
    v44 = v17;
    v45 = v8;

    v22 = v47;
    sub_22BDB77B4();

    v24 = v49;
    v23 = v50;
    v25 = (*(v49 + 88))(v22, v50);
    v26 = *MEMORY[0x277D85B00];
    v46 = v7;
    if (v25 == v26)
    {
      v27 = 0;
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v24 + 8))(v22, v23);
      v28 = "[SessionCoordinator %s] | [TX %s] Finished notifying FeatureStore about session end.";
      v27 = 2;
    }

    v30 = v16;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = v27;
    *(v31 + 1) = v27;
    *(v31 + 2) = 2080;
    v33 = sub_22BDB5624();
    v35 = v34;
    sub_22BB698E8();
    v36 = sub_22BB32EE0(v33, v35, &v53);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v52 = v51;
    sub_22BB70194();
    v37 = sub_22BDBB684();
    v39 = sub_22BB32EE0(v37, v38, &v53);

    *(v31 + 14) = v39;
    v40 = sub_22BDB7714();
    v41 = v43;
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v43, v48, v40, "FSWait", v28, v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v32, -1, -1);
    MEMORY[0x2318A6080](v31, -1, -1);

    (*(v45 + 8))(v11, v46);
    return (*(v44 + 8))(v42, v30);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    sub_22BB698E8();
    return (*(v17 + 8))(v20, v16);
  }
}

void sub_22BBD8DCC()
{
  sub_22BB30F94();
  v4 = v3;
  v15 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  sub_22BB30444(v15);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB89D4C();
  v8 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB3B818();
  if (v1)
  {
    sub_22BBDB908();
    sub_22BD282D8();
    sub_22BB58B20();
    do
    {
      sub_22BBBEE60(v4, v0, &qword_27D8E60F8, &qword_22BDCD650);
      sub_22BB3B710();
      sub_22BB36A9C();
      if (v12)
      {
        sub_22BB95BB8();
        sub_22BD282D8();
      }

      v13 = sub_22BB38E98();
      sub_22BBDB5D0(v13, v14, &qword_27D8E60F0, &qword_22BDCD648);
      v4 += v2;
      --v1;
    }

    while (v1);
  }

  sub_22BB314EC();
}

uint64_t sub_22BBD8F58(uint64_t a1, char a2, uint64_t *a3)
{
  v61 = a3;
  v5 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = sub_22BDB4C34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BBE6DE0(&qword_27D8E60F8, &qword_22BDCD650);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v48 - v19;
  v56 = *(a1 + 16);
  if (!v56)
  {
  }

  v20 = 0;
  v55 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v21 = *(v17 + 48);
  v53 = v18;
  v54 = v21;
  v59 = (v12 + 32);
  v50 = v12;
  v49 = (v12 + 8);
  v52 = a1;
  while (v20 < *(a1 + 16))
  {
    v22 = *(v18 + 72);
    v23 = v58;
    sub_22BC5E5C4();
    v24 = *v59;
    v25 = v11;
    (*v59)(v60, v23, v11);
    v26 = v10;
    sub_22BD2EB00();
    v27 = *v61;
    sub_22BBDAE68();
    v30 = v29;
    v31 = *(v27 + 16);
    v32 = (v28 & 1) == 0;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_18;
    }

    v33 = v28;
    if (*(v27 + 24) >= v31 + v32)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E6150, &unk_22BDCD6B0);
        sub_22BDBB4B4();
      }
    }

    else
    {
      v34 = v61;
      sub_22BD5C5AC();
      v35 = *v34;
      sub_22BBDAE68();
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_20;
      }

      v30 = v36;
    }

    v38 = *v61;
    if (v33)
    {
      v39 = v38[7];
      v40 = *(v57 + 72) * v30;
      v41 = v51;
      sub_22BD1FA4C();
      v10 = v26;
      sub_22BD2EAAC();
      v11 = v25;
      (*v49)(v60, v25);
      sub_22BD2F6BC(v41, v38[7] + v40);
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v11 = v25;
      v24((v38[6] + *(v50 + 72) * v30), v60, v25);
      v42 = v38[7];
      v43 = *(v57 + 72);
      v10 = v26;
      sub_22BD2EB00();
      v44 = v38[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_19;
      }

      v38[2] = v46;
    }

    ++v20;
    a2 = 1;
    a1 = v52;
    v18 = v53;
    if (v56 == v20)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBD93F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6148, &qword_22BDCD6A8);
    v3 = sub_22BDBB524();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22BBD8F58(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_22BBD948C()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E60A0, &unk_22BDD0410);
  v9 = sub_22BB38F5C();
  v10 = type metadata accessor for FeedbackLearning.FlowExpressionValue(v9);
  sub_22BB314BC(v10);
  v12 = *(v11 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v14 = sub_22BB32D98(v13);
    sub_22BD277A4(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BBD9554(uint64_t a1)
{
  v60 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  v57 = *(v60 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v61 = v52 - v3;
  v4 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v52 - v6;
  v63 = sub_22BDB4C34();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v52 - v15;
  v17 = 0;
  v18 = a1;
  v19 = *(a1 + 16);
  v58 = (v8 + 32);
  v52[1] = v8 + 16;
  v53 = v8;
  v56 = (v8 + 8);
  for (i = MEMORY[0x277D84F98]; ; i = v34)
  {
    while (1)
    {
      if (v19 == v17)
      {
        return i;
      }

      v21 = sub_22BDB9B54();
      v22 = *(v21 - 8);
      v23 = v22;
      v24 = v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v22 + 72) * v17;
      v25 = *(v11 + 48);
      *v16 = v17;
      (*(v22 + 16))(&v16[v25], v24, v21);
      sub_22BBD9B04(v7);
      if (sub_22BB3AA28(v7, 1, v63) != 1)
      {
        break;
      }

      sub_22BB58728(v16, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v7, &qword_27D8E27C0, &qword_22BDBCDF0);
      ++v17;
    }

    (*v58)(v62, v7, v63);
    v26 = v59;
    sub_22BC5E5C4();
    v27 = *(v11 + 48);
    v28 = v61;
    v29 = *(v60 + 48);
    *v61 = *v26;
    (*(v23 + 32))(&v28[v29], &v26[v27], v21);
    swift_isUniquelyReferenced_nonNull_native();
    v64 = i;
    sub_22BBDAE68();
    if (__OFADD__(i[2], (v31 & 1) == 0))
    {
      break;
    }

    v32 = v30;
    LODWORD(v55) = v31;
    sub_22BBE6DE0(&qword_27D8E60E0, &unk_22BDCD630);
    v33 = sub_22BDBB4A4();
    v34 = v64;
    if (v33)
    {
      sub_22BBDAE68();
      if ((v55 & 1) != (v36 & 1))
      {
        goto LABEL_21;
      }

      v37 = v35;
      if (v55)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v37 = v32;
      if (v55)
      {
        goto LABEL_13;
      }
    }

    v34[(v37 >> 6) + 8] |= 1 << v37;
    (*(v53 + 16))(v34[6] + *(v53 + 72) * v37, v62, v63);
    *(v34[7] + 8 * v37) = MEMORY[0x277D84F90];
    v38 = v34[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_20;
    }

    v34[2] = v40;
LABEL_13:
    v41 = v34[7];
    v42 = *(v41 + 8 * v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + 8 * v37) = v42;
    v55 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = *(v42 + 16);
      sub_22BBDAF18();
      v42 = v49;
      *(v41 + 8 * v37) = v49;
    }

    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    v54 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      sub_22BBDAF18();
      *(v41 + 8 * v55) = v50;
    }

    ++v17;
    (*v56)(v62, v63);
    sub_22BB58728(v16, &qword_27D8E42E0, &unk_22BDD03F0);
    *(*(v41 + 8 * v55) + 16) = v54;
    v46 = *(v57 + 80);
    v47 = *(v57 + 72);
    sub_22BC8D26C();
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBD9B04@<X0>(uint64_t a1@<X8>)
{
  v143 = a1;
  v96 = sub_22BDB8494();
  v95 = *(v96 - 8);
  v1 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22BDB8EB4();
  v98 = *(v99 - 8);
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22BDB9014();
  v101 = *(v102 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22BDB8F44();
  v104 = *(v105 - 8);
  v7 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22BDB88E4();
  v107 = *(v108 - 8);
  v9 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_22BDB8674();
  v110 = *(v111 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22BDB8D84();
  v114 = *(v115 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22BDB8DB4();
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22BDB87F4();
  v122 = *(v123 - 8);
  v17 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BDB5264();
  v125 = *(v19 - 8);
  v126 = v19;
  v20 = *(v125 + 64);
  MEMORY[0x28223BE20](v19);
  v124 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22BDB8F04();
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = *(v128 + 64);
  MEMORY[0x28223BE20](v22);
  v127 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BDB81A4();
  v131 = *(v25 - 8);
  v132 = v25;
  v26 = *(v131 + 64);
  MEMORY[0x28223BE20](v25);
  v130 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BDB8C14();
  v134 = *(v28 - 8);
  v135 = v28;
  v29 = *(v134 + 64);
  MEMORY[0x28223BE20](v28);
  v133 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22BDB9564();
  v138 = *(v31 - 8);
  v139 = v31;
  v32 = *(v138 + 64);
  MEMORY[0x28223BE20](v31);
  v137 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22BDB8634();
  v142 = *(v34 - 8);
  v35 = *(v142 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v117 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v93 - v38;
  v40 = sub_22BDB8624();
  v140 = *(v40 - 8);
  v141 = v40;
  v41 = *(v140 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v112 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v136 = &v93 - v44;
  v45 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v116 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v93 - v49;
  v51 = sub_22BDB9624();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v93 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22BDB9B14();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v93 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v61 = (*(v57 + 88))(v60, v56);
  if (v61 == *MEMORY[0x277D1E858])
  {
    (*(v57 + 96))(v60, v56);
    (*(v52 + 32))(v55, v60, v51);
    sub_22BDB8DA4();
    v62 = v142;
    if ((*(v142 + 88))(v39, v34) == *MEMORY[0x277D1DD78])
    {
      (*(v62 + 96))(v39, v34);
      v64 = v140;
      v63 = v141;
      v65 = v136;
      (*(v140 + 32))(v136, v39, v141);
      sub_22BDB8604();
      (*(v64 + 8))(v65, v63);
      (*(v52 + 8))(v55, v51);
      v66 = 0;
    }

    else
    {
      (*(v52 + 8))(v55, v51);
      (*(v62 + 8))(v39, v34);
      v66 = 1;
    }

    v74 = sub_22BDB4C34();
    sub_22BB336D0(v50, v66, 1, v74);
    return sub_22BC8D26C();
  }

  v67 = v142;
  if (v61 == *MEMORY[0x277D1E710])
  {
    (*(v57 + 96))(v60, v56);
    v68 = v137;
    v69 = v138;
    v70 = v139;
    (*(v138 + 32))(v137, v60, v139);
    v71 = v143;
    sub_22BDB8174();
LABEL_6:
    (*(v69 + 8))(v68, v70);
    v72 = sub_22BDB4C34();
    return sub_22BB336D0(v71, 0, 1, v72);
  }

  if (v61 == *MEMORY[0x277D1E728])
  {
    (*(v57 + 96))(v60, v56);
    v75 = v133;
    v76 = v134;
    v77 = v60;
    v78 = v135;
    (*(v134 + 32))(v133, v77, v135);
    sub_22BDB8C04();
    return (*(v76 + 8))(v75, v78);
  }

  if (v61 == *MEMORY[0x277D1E7A0])
  {
    (*(v57 + 96))(v60, v56);
    v68 = v130;
    v69 = v131;
    v70 = v132;
    (*(v131 + 32))(v130, v60, v132);
    v71 = v143;
    sub_22BDB8174();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E830])
  {
    (*(v57 + 96))(v60, v56);
    v68 = v127;
    v69 = v128;
    v70 = v129;
    (*(v128 + 32))(v127, v60, v129);
    v71 = v143;
    sub_22BDB8174();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E820])
  {
    (*(v57 + 96))(v60, v56);
    v75 = v124;
    v76 = v125;
    v79 = v60;
    v78 = v126;
    (*(v125 + 32))(v124, v79, v126);
    sub_22BD271CC(v143);
    return (*(v76 + 8))(v75, v78);
  }

  if (v61 == *MEMORY[0x277D1E798])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v122;
    v68 = v121;
    v70 = v123;
    (*(v122 + 32))(v121, v60, v123);
    v71 = v143;
    sub_22BDB8794();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E7C8])
  {
    v80 = v34;
    (*(v57 + 96))(v60, v56);
    v81 = v119;
    v82 = v118;
    v83 = v60;
    v84 = v120;
    (*(v119 + 32))(v118, v83, v120);
    v85 = v117;
    sub_22BDB8DA4();
    if ((*(v67 + 88))(v85, v80) == *MEMORY[0x277D1DD78])
    {
      (*(v67 + 96))(v85, v80);
      v87 = v140;
      v86 = v141;
      v88 = v112;
      (*(v140 + 32))(v112, v85, v141);
      v89 = v116;
      sub_22BDB8604();
      (*(v87 + 8))(v88, v86);
      (*(v81 + 8))(v82, v84);
      v90 = 0;
    }

    else
    {
      (*(v81 + 8))(v82, v84);
      (*(v67 + 8))(v85, v80);
      v90 = 1;
      v89 = v116;
    }

    v91 = sub_22BDB4C34();
    sub_22BB336D0(v89, v90, 1, v91);
    return sub_22BC8D26C();
  }

  if (v61 == *MEMORY[0x277D1E7C0])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v114;
    v68 = v113;
    v70 = v115;
    (*(v114 + 32))(v113, v60, v115);
    v71 = v143;
    sub_22BDB8174();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E738])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v110;
    v68 = v109;
    v70 = v111;
    (*(v110 + 32))(v109, v60, v111);
    v71 = v143;
    sub_22BDB8654();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E750])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v107;
    v68 = v106;
    v70 = v108;
    (*(v107 + 32))(v106, v60, v108);
    v71 = v143;
    sub_22BDB88A4();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E800])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v104;
    v68 = v103;
    v70 = v105;
    (*(v104 + 32))(v103, v60, v105);
    v71 = v143;
    sub_22BDB8F14();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E810])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v101;
    v68 = v100;
    v70 = v102;
    (*(v101 + 32))(v100, v60, v102);
    v71 = v143;
    sub_22BDB8FE4();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E7D8])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v98;
    v68 = v97;
    v70 = v99;
    (*(v98 + 32))(v97, v60, v99);
    v71 = v143;
    sub_22BDB8E94();
    goto LABEL_6;
  }

  if (v61 == *MEMORY[0x277D1E720])
  {
    (*(v57 + 96))(v60, v56);
    v69 = v95;
    v68 = v94;
    v70 = v96;
    (*(v95 + 32))(v94, v60, v96);
    v71 = v143;
    sub_22BDB8174();
    goto LABEL_6;
  }

  v92 = sub_22BDB4C34();
  sub_22BB336D0(v143, 1, 1, v92);
  return (*(v57 + 8))(v60, v56);
}

void sub_22BBDAE68()
{
  sub_22BB32888();
  sub_22BDB4C34();
  sub_22BB3CC18(&qword_28142DD18, MEMORY[0x277D1C338]);
  sub_22BB69BE0();
  sub_22BB38850();
}

void sub_22BBDAF18()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB382B4(v2, v5, &qword_27D8E60D0, &qword_22BDCD618);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD277BC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BBDAFE4(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v47 = a1;
  v48 = v17;
  v18 = (v3 + 88);
  v46 = *MEMORY[0x277D1E6F8];
  v45 = *MEMORY[0x277D1E718];
  v44 = *MEMORY[0x277D1E860];
  v43 = *MEMORY[0x277D1E868];
  v19 = (v3 + 8);
  v20 = MEMORY[0x277D84F90];
  while (v48 != v16)
  {
    v21 = v20;
    v22 = sub_22BDB9B54();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v25 = v47 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
    v26 = *(v7 + 48);
    *v13 = v16;
    v24(&v13[v26], v25, v22);
    sub_22BC8D26C();
    v27 = &v15[*(v7 + 48)];
    sub_22BDB9B24();
    v28 = (*v18)(v6, v2);
    if (v28 == v46 || v28 == v45)
    {
      (*v19)(v6, v2);
      v20 = v21;
      goto LABEL_13;
    }

    v30 = v28 == v44 || v28 == v43;
    v20 = v21;
    if (v30)
    {
LABEL_13:
      sub_22BC8D26C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = *(v20 + 16);
        sub_22BBDB3C4();
        v20 = v49;
      }

      v33 = *(v20 + 16);
      v34 = v33 + 1;
      if (v33 >= *(v20 + 24) >> 1)
      {
        v40 = v33 + 1;
        sub_22BBDB3C4();
        v34 = v40;
        v20 = v49;
      }

      ++v16;
      *(v20 + 16) = v34;
      v35 = v20 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v36 = *(v41 + 72);
      sub_22BC8D26C();
    }

    else
    {
      (*v19)(v6, v2);
      sub_22BB58728(v15, &qword_27D8E42E0, &unk_22BDD03F0);
      ++v16;
    }
  }

  sub_22BBDB404();
  v38 = v37;

  return v38;
}

void sub_22BBDB3C4()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BBDB404()
{
  sub_22BB30F94();
  v4 = v3;
  v15 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB30444(v15);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB89D4C();
  v8 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB3B818();
  if (v1)
  {
    sub_22BBDB908();
    sub_22BBDB590();
    sub_22BB58B20();
    do
    {
      sub_22BBBEE60(v4, v0, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB3B710();
      sub_22BB36A9C();
      if (v12)
      {
        sub_22BB95BB8();
        sub_22BBDB590();
      }

      v13 = sub_22BB38E98();
      sub_22BBDB5D0(v13, v14, &qword_27D8E60D8, &unk_22BDCD620);
      v4 += v2;
      --v1;
    }

    while (v1);
  }

  sub_22BB314EC();
}

void sub_22BBDB590()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

uint64_t sub_22BBDB5D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return v4;
}

uint64_t sub_22BBDB618@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_22BC7E324(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = sub_22BB36830();

  return sub_22BB336D0(v9, v10, v11, v12);
}

uint64_t sub_22BBDB708()
{
  v4 = sub_22BB31C98();
  v5 = type metadata accessor for FeedbackLearning.FlowExpressionValue(v4);
  result = sub_22BB314BC(v5);
  if (*(v7 + 84) == v3)
  {
    sub_22BB33224();
    sub_22BB313F4();

    return sub_22BB336D0(v8, v9, v10, v11);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22BBDB7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB35760();
  v7 = type metadata accessor for FeedbackLearning.FlowExpressionValue(v6);
  v8 = sub_22BB314BC(v7);
  if (*(v9 + 84) != a2)
  {
    return sub_22BB32714(*(v3 + *(a3 + 20)));
  }

  return sub_22BB3AA28(v3, a2, v8);
}

void sub_22BBDB874()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[153];
}

void *sub_22BBDB920()
{
  v2 = *(v0 + 40);

  return sub_22BB69FEC((v0 + 16), v2);
}

void sub_22BBDB944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  sub_22BB32FA4(a20);

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BBDB97C()
{

  return sub_22BDB77D4();
}

uint64_t sub_22BBDB99C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22BBDB9F4()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3DF0, &qword_22BDC1230);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = type metadata accessor for FeedbackLearning.TaskEvaluation(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = type metadata accessor for FeedbackLearning.FlowTask(0);
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &qword_22BDC1230);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, type metadata accessor for FeedbackLearning.TaskEvaluation);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90FE8();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BD90FE8();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BCAD538(v39, v40, type metadata accessor for FeedbackLearning.TaskEvaluation);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

uint64_t *sub_22BBDBBF8()
{
  sub_22BB32FA4(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_22BBDBC28()
{
  sub_22BBDBBF8();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22BBDBC5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BBDBC94()
{
  v31 = sub_22BDB7764();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BDB7734();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB7754();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6144();
  v13 = sub_22BDB7744();
  sub_22BDB7774();
  v30 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22BDB77B4();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22BDB60E4();
    v21 = sub_22BDBB354();
    v23 = sub_22BB32EE0(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v13, v30, v24, "FeedbackLearning.evaluate", v31, v19, 0xCu);
    sub_22BB32FA4(v20);
    MEMORY[0x2318A6080](v20, -1, -1);
    MEMORY[0x2318A6080](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

unint64_t sub_22BBDC038()
{
  result = qword_281428868;
  if (!qword_281428868)
  {
    sub_22BBEB2E0(&qword_27D8E5ED8, &unk_22BDCCD10);
    sub_22BBB8FCC(qword_28142C890, _s18TaskDefinitionThinO18TaskEvaluationThinVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428868);
  }

  return result;
}

uint64_t sub_22BBDC0EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v111 = a2;
  v120 = sub_22BDB77D4();
  v118 = *(v120 - 8);
  v4 = v118[8];
  MEMORY[0x28223BE20](v120);
  v117 = (&v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = sub_22BDB5714();
  v94 = *(v110 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22BDB6BF4();
  v91 = *(v108 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v108);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22BDB4354();
  v90 = *(v107 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FeedbackLearningInteractionRecord();
  v12 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v121 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22BDB6C34();
  v95 = *(v105 - 8);
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v105);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22BDB6C24();
  v93 = *(v104 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22BDB43E4();
  v89 = *(v103 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v103);
  v119 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v98 = *(v102 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v102);
  v122 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22BDB7734();
  v22 = *(v116 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v116);
  v115 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v86 - v26;
  v28 = sub_22BDB7754();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v86 - v34;
  v36 = sub_22BDB60B4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *a1;
  v114 = *(a1 + 1);
  (*(v37 + 104))(v40, *MEMORY[0x277D1EBC0], v36);
  LOBYTE(a1) = sub_22BDB60A4();
  (*(v37 + 8))(v40, v36);
  if (a1)
  {
    sub_22BDB6144();
    sub_22BDB6144();
    sub_22BDB7744();
    sub_22BDB7704();
    v41 = *(v29 + 8);
    v41(v33, v28);
    v120 = v35;
    v42 = sub_22BDB7744();
    v43 = sub_22BDBB1D4();
    v44 = v28;
    if (sub_22BDBB244())
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v42, v43, v46, "FeedbackLearning.donate", "", v45, 2u);
      v47 = v45;
      v44 = v28;
      MEMORY[0x2318A6080](v47, -1, -1);
    }

    v48 = v116;
    (*(v22 + 16))(v115, v27, v116);
    v49 = sub_22BDB77A4();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v87 = sub_22BDB7794();
    (*(v22 + 8))(v27, v48);
    v41(v120, v44);
    v52 = v113;
    v53 = *(v114 + 16);
    v54 = v88;
    v55 = v112;
    v57 = v121;
    v56 = v122;
    if (v53)
    {
      v58 = v114 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v98 = *(v98 + 72);
      v97 = (v93 + 16);
      v96 = *MEMORY[0x277D1F898];
      v117 = (v95 + 8);
      v118 = (v95 + 104);
      v95 = v93 + 8;
      v94 += 8;
      v93 = v91 + 16;
      v92 = *MEMORY[0x277D1F890];
      v91 += 8;
      v90 += 8;
      v89 += 8;
      do
      {
        v120 = v58;
        v116 = v53;
        sub_22BD1CA68(v58, v56);
        sub_22BDB43D4();
        v59 = v100;
        sub_22BDB6A04();
        sub_22BDB69F4();
        v60 = v99;
        v61 = v104;
        (*v97)(v99, v59, v104);
        v114 = *v118;
        v62 = v105;
        (v114)(v60, v96, v105);
        v63 = v54;
        v64 = v111;
        sub_22BD1C03C(v60, v111, v119, v52);
        v115 = *v117;
        (v115)(v60, v62);
        (*v95)(v59, v61);
        v65 = *(v55 + 20);
        sub_22BD18CBC(v122, v57 + v65);
        v66 = sub_22BD19F48(v122);
        v67 = v102;
        v68 = *(v102 + 24);
        v69 = sub_22BDB7A84();
        (*(*(v69 - 8) + 16))(v121, v122 + v68, v69);
        *&v121[*(v55 + 24)] = v66;
        v70 = v106;
        sub_22BDB7A64();
        v71 = *(v67 + 20);
        v123 = v101;
        v72 = &v121[v65];
        v52 = v113;
        v73 = FeedbackLearningBiomeDonator.donateInteractionTuples(tuple:candidates:sessionId:absoluteTimestamp:statementId:trigger:)(v72, v66, v122, v70, v122 + v71, &v123);
        sub_22BDB9994();
        v74 = v109;
        sub_22BDB5704();
        v75 = v119;

        sub_22BCA4138();
        v76 = v74;
        v77 = v108;
        (*v94)(v76, v110);
        (*v93)(v60, v63, v77);
        (v114)(v60, v92, v62);
        v56 = v122;
        v78 = v64;
        v54 = v63;
        v79 = v107;
        sub_22BD1C03C(v60, v78, v75, v52);

        v57 = v121;
        (v115)(v60, v62);
        (*v91)(v54, v77);
        v80 = v70;
        v55 = v112;
        (*v90)(v80, v79);
        (*v89)(v75, v103);
        sub_22BD1CB30(v56, type metadata accessor for FeedbackLearning.TaskEvaluation);
        sub_22BD1CB30(v57, type metadata accessor for FeedbackLearningInteractionRecord);
        v58 = v120 + v98;
        v53 = v116 - 1;
      }

      while (v116 != 1);
    }

    sub_22BBDCE44(v87, "FeedbackLearning.donate");
  }

  else
  {
    v82 = v117;
    sub_22BDB6404();
    v83 = sub_22BDB77C4();
    v84 = sub_22BDBB0F4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_22BB2C000, v83, v84, "Feedback Learning is not enabled, skipping evaluation donation.", v85, 2u);
      MEMORY[0x2318A6080](v85, -1, -1);
    }

    return (v118[1])(v82, v120);
  }
}

uint64_t type metadata accessor for FeedbackLearningInteractionRecord()
{
  result = qword_281428F40;
  if (!qword_281428F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBDCE44(uint64_t a1, const char *a2)
{
  v2 = sub_22BDB7764();
  v3 = sub_22BB30444(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB7734();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = sub_22BDB7754();
  v20 = sub_22BB30444(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v27 = v26 - v25;
  sub_22BDB6144();
  v28 = sub_22BDB7744();
  sub_22BDB7774();
  v40 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v39 = v13;

    sub_22BDB77B4();

    if ((*(v41 + 88))(v9, v42) == *MEMORY[0x277D85B00])
    {
      v29 = 0;
      v30 = 0;
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v41 + 8))(v9, v42);
      v43 = "%s";
      v30 = 2;
      v29 = 1;
    }

    v32 = v22;
    v33 = swift_slowAlloc();
    v34 = sub_22BB314C8();
    v45 = v34;
    *v33 = v30;
    *(v33 + 1) = v29;
    *(v33 + 2) = 2080;
    sub_22BDB60E4();
    v35 = sub_22BDBB354();
    v37 = sub_22BB32EE0(v35, v36, &v45);

    *(v33 + 4) = v37;
    v38 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v28, v40, v38, a2, v43, v33, 0xCu);
    sub_22BB32FA4(v34);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v39 + 8))(v18, v10);
    return (*(v32 + 8))(v27, v19);
  }

  else
  {

    (*(v13 + 8))(v18, v10);
    return (*(v22 + 8))(v27, v19);
  }
}

uint64_t sub_22BBDD188()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB6B138;

  return sub_22BBDD218();
}

uint64_t sub_22BBDD234()
{
  v1 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_toolbox;
  v2 = sub_22BDB9C14();
  sub_22BB2F330(v2);
  (*(v3 + 8))(v0 + v1);
  sub_22BB32FA4((v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_22BBDD3E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v10 = *(a3 + 56);
    }

    return sub_22BB3AA28(a1 + v10, a2, v9);
  }
}

void *sub_22BBDD4C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v10 = *(a4 + 56);
    }

    return sub_22BB336D0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBDD5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBDD5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBDD674(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBDD6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB8254();

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBDD788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB4E24();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_22BB3AA28(v10, a2, v9);
  }

  v11 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v12 = sub_22BB314BC(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_22BBDD88C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BDB4E24();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    result = sub_22BB314BC(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBDD980()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBDD9C0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = (type metadata accessor for QueryExecutor() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*v3 + 64);
  v7 = (type metadata accessor for QueryExecutor.ToolKitEntityQuery() - 8);
  v8 = *(*v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = v4 | v8;
  v11 = (*(*v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = &v0[v5];
  v14 = sub_22BDBA764();
  sub_22BB2F330(v14);
  (*(v15 + 8))(&v0[v5]);
  v16 = v3[11];
  v17 = sub_22BDBA014();
  sub_22BB2F330(v17);
  (*(v18 + 8))(&v13[v16]);
  (*(*(v1 - 8) + 8))(&v13[v3[12]], v1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB2F330(AssociatedTypeWitness);
  (*(v20 + 8))(&v0[v9]);
  v21 = *&v0[v9 + v7[11]];

  sub_22BB32FA4(&v0[v11]);

  return MEMORY[0x2821FE8E8](v0, v11 + 40, v10 | 7);
}

uint64_t sub_22BBDDC38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BBDDCE4()
{
  v23 = *(v0 + 32);
  v1 = *(v23 - 8);
  v2 = *(v1 + 80);
  v22 = (v2 + 48) & ~v2;
  v3 = *(v1 + 64);
  v4 = sub_22BDBA594();
  sub_22BB30444(v4);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v22 + v3 + v7) & ~v7;
  v10 = *(v9 + 64);
  v11 = sub_22BDB89A4();
  sub_22BB30444(v11);
  v13 = v12;
  v15 = v14;
  v16 = *(v13 + 80);
  v17 = (v8 + v10 + v16) & ~v16;
  v18 = v2 | v7 | v16;
  v19 = (*(v15 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v22, v23);
  (*(v6 + 8))(v0 + v8, v4);
  (*(v13 + 8))(v0 + v17, v11);

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v18 | 7);
}

uint64_t sub_22BBDDEA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBDDEE8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  v6 = sub_22BDBA594();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    v12 = sub_22BB314BC(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[9];
    }

    else
    {
      v15 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v16 = sub_22BB314BC(v15);
      if (*(v17 + 84) != a2)
      {
        return sub_22BB392FC(*(v3 + a3[11]));
      }

      v9 = v16;
      v14 = a3[10];
    }

    v10 = v3 + v14;
  }

  return sub_22BB3AA28(v10, a2, v9);
}

uint64_t sub_22BBDE01C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  v8 = sub_22BDBA594();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[9];
    }

    else
    {
      v17 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      result = sub_22BB314BC(v17);
      if (*(v19 + 84) != a3)
      {
        *(v4 + a4[11]) = a2;
        return result;
      }

      v11 = result;
      v16 = a4[10];
    }

    v12 = v4 + v16;
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBDE158(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  v6 = sub_22BDBA594();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_22BB392FC(*(v3 + a3[10] + 8));
    }

    v12 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    v13 = sub_22BB314BC(v12);
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[11];
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v15 = a3[12];
    }

    v10 = v3 + v15;
  }

  return sub_22BB3AA28(v10, a2, v9);
}

uint64_t sub_22BBDE270(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  v8 = sub_22BDBA594();
  result = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[10] + 8) = a2;
      return result;
    }

    v13 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[11];
    }

    else
    {
      v11 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
      v16 = a4[12];
    }

    v12 = v4 + v16;
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBDE3D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22BBDE418()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBDE580()
{
  v2 = *(v0 + 40);
  sub_22BB30418();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = *(v7 + 64) + v6;
  sub_22BB52D84();
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v6, v2);
  v10 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_22BBDE644()
{
  v2 = *(v0 + 5);
  sub_22BB30418();
  v4 = v3;
  v31 = *(v3 + 80);
  v5 = (v31 + 64) & ~v31;
  v7 = *(v6 + 64);
  v8 = sub_22BDBA014();
  sub_22BB30444(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  v30 = *(v9 + 80);
  v13 = (v5 + v7 + v30) & ~v30;
  sub_22BB52D84();
  v14 = type metadata accessor for InvocationOptions(0);
  v29 = *(*(v14 - 1) + 80);
  v15 = (v1 + v29 + 8) & ~v29;
  v28 = *(*(v14 - 1) + 64);
  v16 = *(v0 + 2);
  swift_unknownObjectRelease();
  v17 = *(v0 + 7);

  (*(v4 + 8))(&v0[v5], v2);
  (*(v10 + 8))(&v0[v13], v8);
  v18 = *&v0[v1];

  v19 = &v0[v15];
  v20 = sub_22BDB8274();
  if (!sub_22BB3AA28(&v0[v15], 1, v20))
  {
    (*(*(v20 - 8) + 8))(&v0[v15], v20);
  }

  v21 = *&v19[v14[5] + 8];

  v22 = *&v19[v14[6] + 8];

  v23 = v14[7];
  v24 = sub_22BDBA234();
  if (!sub_22BB3AA28(&v19[v23], 1, v24))
  {
    (*(*(v24 - 8) + 8))(&v19[v23], v24);
  }

  v25 = (v28 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *&v0[v25 + 8];

  return MEMORY[0x2821FE8E8](v0, v25 + 16, v31 | v30 | v29 | 7);
}

uint64_t sub_22BBDE980()
{
  sub_22BB30F68();
  sub_22BDB89A4();
  v0 = sub_22BB2F324();
  v3 = sub_22BB3AA28(v0, v1, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBDE9C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  sub_22BDB89A4();
  v5 = sub_22BB33224();

  return sub_22BB336D0(v5, v4, a3, v6);
}

uint64_t sub_22BBDEA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB90B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22BBDEAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  result = sub_22BDB90B4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_22BB33224();

    return sub_22BB336D0(v9, a2, a2, v10);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22BBDEC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDBA594();
  v5 = sub_22BB314BC(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    sub_22BDB9CA4();
    v8 = sub_22BB35180();
  }

  return sub_22BB3AA28(v8, a2, v7);
}

uint64_t sub_22BBDECE4()
{
  sub_22BB348AC();
  v3 = sub_22BDBA594();
  v4 = sub_22BB314BC(v3);
  if (*(v5 + 84) == v2)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_22BDB9CA4();
    v7 = sub_22BB35180();
  }

  return sub_22BB336D0(v7, v0, v0, v6);
}

uint64_t sub_22BBDED74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3010, &qword_22BDBDED0);
  v5 = sub_22BB314BC(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
    v8 = sub_22BB35180();
  }

  return sub_22BB3AA28(v8, a2, v7);
}

uint64_t sub_22BBDEE20()
{
  sub_22BB348AC();
  v3 = sub_22BBE6DE0(&qword_27D8E3010, &qword_22BDBDED0);
  v4 = sub_22BB314BC(v3);
  if (*(v5 + 84) == v2)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
    v7 = sub_22BB35180();
  }

  return sub_22BB336D0(v7, v0, v0, v6);
}

uint64_t sub_22BBDEF10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBDEF50()
{
  if (*(v0 + 40))
  {
    sub_22BB32FA4((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BBDF038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
      v10 = *(a3 + 32);
    }

    return sub_22BB3AA28(a1 + v10, a2, v9);
  }
}

uint64_t sub_22BBDF110(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_22BDB43E4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
      v10 = *(a4 + 32);
    }

    return sub_22BB336D0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBDF1F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22BC5FD04();
  *a2 = result;
  return result;
}

uint64_t sub_22BBDF298()
{
  v1 = *(v0 + 24);

  v2 = sub_22BB36CEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBDF2E0()
{
  sub_22BB30F94();
  v1 = sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70);
  sub_22BB30434(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22BDB7614();
  sub_22BB30444(v6);
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  v14 = sub_22BDB9B14();
  if (!sub_22BB3AA28(v0 + v3, 1, v14))
  {
    sub_22BB30474(v14);
    (*(v15 + 8))(v0 + v3, v14);
  }

  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), v6);
  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22BBDF450()
{
  sub_22BB30F94();
  v1 = sub_22BDB43E4();
  sub_22BB30444(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_22BDB7614();
  sub_22BB30444(v5);
  v7 = v6;
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  v13 = sub_22BB58A60();
  v14(v13);

  (*(v7 + 8))(v0 + v8, v5);
  sub_22BB3B31C();
  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_22BBDF5A0()
{
  sub_22BB30F94();
  v1 = sub_22BDB43E4();
  sub_22BB30444(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22BDB7614();
  sub_22BB30444(v6);
  v8 = v7;
  v9 = (v5 + *(v8 + 80) + ((v3 + 40) & ~v3) + 1) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  v14 = sub_22BB58A60();
  v15(v14);
  (*(v8 + 8))(v0 + v9, v6);
  sub_22BB3B31C();
  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_22BBDF6E0()
{
  v1 = sub_22BDB7614();
  sub_22BB30444(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22BB541E8();
  v9(v8);

  return MEMORY[0x2821FE8E8](v0, ((v3 + 56) & ~v3) + v5, v3 | 7);
}

uint64_t sub_22BBDF7A0()
{
  v1 = sub_22BDB7614();
  sub_22BB30444(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22BB541E8();
  v9(v8);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_22BBDFA20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BDBA634();
    v9 = a1 + *(a3 + 20);

    return sub_22BB3AA28(v9, a2, v8);
  }
}

void *sub_22BBDFAA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22BDBA634();
    v8 = v5 + *(a4 + 20);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BBDFB50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBDFBA4(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BB32714(*(a1 + 8));
  }

  sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0);
  v3 = sub_22BB394B8();

  return sub_22BB3AA28(v3, v4, v5);
}

void sub_22BBDFC24()
{
  sub_22BB35F54();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0);
    v3 = sub_22BB394B8();

    sub_22BB336D0(v3, v4, v0, v5);
  }
}

uint64_t sub_22BBDFCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB43E4();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22BB32714(*(a1 + *(a3 + 24) + 8));
  }

  return sub_22BB3AA28(a1, a2, v7);
}

void sub_22BBDFD84()
{
  sub_22BB348AC();
  v2 = sub_22BDB43E4();
  sub_22BB314BC(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_22BB33224();

    sub_22BB336D0(v4, v0, v0, v5);
  }

  else
  {
    sub_22BC8DAC8();
  }
}

uint64_t sub_22BBDFE10(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB35F54();
  v6 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_22BB32714(*(v4 + a3[6] + 8));
    }

    v9 = sub_22BBE6DE0(&qword_27D8E3028, &unk_22BDBF700);
    v10 = a3[8];
  }

  return sub_22BB3AA28(v4 + v10, v3, v9);
}

void sub_22BBDFEE8()
{
  sub_22BB348AC();
  v4 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  v5 = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = *(v2 + 20);
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      sub_22BC8DAC8();
      return;
    }

    v7 = sub_22BBE6DE0(&qword_27D8E3028, &unk_22BDBF700);
    v8 = *(v2 + 32);
  }

  sub_22BB336D0(v1 + v8, v0, v0, v7);
}

uint64_t sub_22BBDFFB4(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BB32714(*(a1 + 8));
  }

  sub_22BDBA594();
  v3 = sub_22BB394B8();

  return sub_22BB3AA28(v3, v4, v5);
}

void sub_22BBE0028()
{
  sub_22BB35F54();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_22BDBA594();
    v3 = sub_22BB394B8();

    sub_22BB336D0(v3, v4, v0, v5);
  }
}

uint64_t sub_22BBE009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB35F54();
  v6 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_10:

    return sub_22BB3AA28(v10, v3, v9);
  }

  if (v3 != 2147483646)
  {
    v9 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
    v10 = v4 + *(a3 + 28);
    goto LABEL_10;
  }

  v11 = *(v4 + *(a3 + 20) + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_22BBE018C()
{
  sub_22BB348AC();
  v4 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB33224();
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return result;
    }

    v8 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
    v7 = v1 + *(v2 + 28);
  }

  return sub_22BB336D0(v7, v0, v0, v8);
}

uint64_t sub_22BBE0290()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BBE02F0()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBE057C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
    v10 = a1 + *(a3 + 20);

    return sub_22BB3AA28(v10, a2, v9);
  }
}

uint64_t sub_22BBE061C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
    v8 = v5 + *(a4 + 20);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BBE074C()
{
  sub_22BB2F474();
  v2 = sub_22BDBA044();

  return sub_22BB3AA28(v1, v0, v2);
}

uint64_t sub_22BBE078C()
{
  sub_22BB2F474();
  sub_22BDBA044();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE07C4()
{
  sub_22BB2F474();
  v2 = sub_22BDB5014();

  return sub_22BB3AA28(v1, v0, v2);
}

uint64_t sub_22BBE0804()
{
  sub_22BB2F474();
  sub_22BDB5014();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE0868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22BBE08A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BBE08F0()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BBE0A68()
{
  sub_22BB30CF8();
  v3 = sub_22BDB4C34();
  sub_22BB314BC(v3);
  if (*(v4 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 24)));
  }

  v5 = sub_22BB313E4();

  return sub_22BB3AA28(v5, v6, v7);
}

uint64_t sub_22BBE0AF0()
{
  sub_22BB31C98();
  v4 = sub_22BDB4C34();
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB34284();

    return sub_22BB336D0(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22BBE0BD0()
{
  sub_22BB30CF8();
  v3 = sub_22BDB4C34();
  sub_22BB314BC(v3);
  if (*(v4 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20) + 24));
  }

  v5 = sub_22BB313E4();

  return sub_22BB3AA28(v5, v6, v7);
}

uint64_t sub_22BBE0C5C()
{
  sub_22BB31C98();
  v4 = sub_22BDB4C34();
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB34284();

    return sub_22BB336D0(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 24) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22BBE0CE8()
{
  sub_22BB30CF8();
  v3 = sub_22BDB9C14();
  sub_22BB314BC(v3);
  if (*(v4 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20)));
  }

  v5 = sub_22BB313E4();

  return sub_22BB3AA28(v5, v6, v7);
}

uint64_t sub_22BBE0D70()
{
  sub_22BB31C98();
  v4 = sub_22BDB9C14();
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB34284();

    return sub_22BB336D0(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22BBE0E70(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 61)
  {
    v4 = *a1 & 0x3C | (*a1 >> 6);
    v5 = v4 ^ 0x3F;
    v6 = 64 - v4;
    if (v5 >= 0x3D)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = sub_22BDB7B44();
      v12 = *(a3 + 24);
    }

    return sub_22BB3AA28(&a1[v12], a2, v11);
  }
}

_BYTE *sub_22BBE0F44(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 61)
  {
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
  }

  else
  {
    v8 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_22BDB7B44();
      v10 = *(a4 + 24);
    }

    return sub_22BB336D0(&v5[v10], a2, a2, v9);
  }

  return result;
}

uint64_t sub_22BBE1088(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB30F68();
  v6 = sub_22BDB4C34();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_22BDB43E4();
    v12 = sub_22BB314BC(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[6];
    }

    else
    {
      v15 = sub_22BDB5404();
      v16 = sub_22BB314BC(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[7];
      }

      else
      {
        v9 = _s26PromptStatementStepBuilderV10ResolutionOMa(0);
        v14 = a3[8];
      }
    }

    v10 = v3 + v14;
  }

  return sub_22BB3AA28(v10, a2, v9);
}

uint64_t sub_22BBE119C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB4C34();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_22BDB43E4();
    v14 = sub_22BB314BC(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = sub_22BDB5404();
      v18 = sub_22BB314BC(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = _s26PromptStatementStepBuilderV10ResolutionOMa(0);
        v16 = a4[8];
      }
    }

    v12 = v4 + v16;
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBE12B8()
{
  sub_22BB2F474();
  v1 = sub_22BDB4C34();
  sub_22BB314BC(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = sub_22BB69A84();
  }

  else
  {
    _s25ValueDisambiguationResultVMa(0);
    v3 = sub_22BB39610();
  }

  return sub_22BB3AA28(v3, v0, v4);
}

uint64_t sub_22BBE1340()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  v1 = sub_22BDB4C34();
  sub_22BB314BC(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    _s25ValueDisambiguationResultVMa(0);
    sub_22BB39610();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BBE1440(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BDB43E4();
    v5 = sub_22BB35180();

    return sub_22BB3AA28(v5, a2, v6);
  }
}

_BYTE *sub_22BBE14BC(_BYTE *result, char a2, int a3)
{
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_22BDB43E4();
    sub_22BB35180();
    sub_22BB313F4();

    return sub_22BB336D0(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_22BBE1530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  v6 = sub_22BDB4C34();
  sub_22BB314BC(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB69A84();
  }

  else
  {
    v10 = sub_22BDB8384();
    v11 = sub_22BB314BC(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 24);
    }

    else
    {
      v9 = _s19ParameterStepResultOMa(0);
      v13 = *(a3 + 28);
    }

    v8 = v4 + v13;
  }

  return sub_22BB3AA28(v8, v3, v9);
}

uint64_t sub_22BBE15FC()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  v2 = sub_22BDB4C34();
  sub_22BB314BC(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BB33224();
  }

  else
  {
    v4 = sub_22BDB8384();
    sub_22BB314BC(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 24);
    }

    else
    {
      _s19ParameterStepResultOMa(0);
      v7 = *(v0 + 28);
    }
  }

  sub_22BB313F4();

  return sub_22BB336D0(v8, v9, v10, v11);
}

uint64_t sub_22BBE16C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  v6 = sub_22BDBA594();
  sub_22BB314BC(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB69A84();
  }

  else
  {
    if (v3 == 253)
    {
      v10 = *(v4 + *(a3 + 20));
      if (v10 >= 3)
      {
        return v10 - 2;
      }

      else
      {
        return 0;
      }
    }

    sub_22BDB43E4();
    v8 = sub_22BB39610();
  }

  return sub_22BB3AA28(v8, v3, v9);
}

uint64_t sub_22BBE177C()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  v4 = sub_22BDBA594();
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return result;
    }

    sub_22BDB43E4();
    sub_22BB39610();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v7, v8, v9, v10);
}

uint64_t sub_22BBE1904(uint64_t a1, uint64_t a2)
{
  sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  v3 = sub_22BB69A84();
  v5 = sub_22BB3AA28(v3, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE1954(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  v5 = sub_22BB33224();

  return sub_22BB336D0(v5, v4, a3, v6);
}

uint64_t sub_22BBE19B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  v6 = sub_22BDB4C34();
  sub_22BB314BC(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB69A84();
  }

  else
  {
    _s14ToolStepResultOMa(0);
    v10 = *(a3 + 20);
    v9 = _s24ToolDisambiguationResultVMa(0);
    v8 = v4 + v10;
  }

  return sub_22BB3AA28(v8, v3, v9);
}

uint64_t sub_22BBE1A4C()
{
  sub_22BB6BE74();
  sub_22BB2F474();
  v2 = sub_22BDB4C34();
  sub_22BB314BC(v2);
  if (*(v3 + 84) == v1)
  {
    sub_22BB33224();
  }

  else
  {
    _s14ToolStepResultOMa(0);
    v4 = *(v0 + 20);
    _s24ToolDisambiguationResultVMa(0);
  }

  sub_22BB313F4();

  return sub_22BB336D0(v5, v6, v7, v8);
}

uint64_t sub_22BBE1B50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BBE1B30();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BBE1C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB9C14();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE1D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB9C14();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE1E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  v6 = sub_22BDB9C14();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_22BB3AA28(v10, a2, v9);
  }

  v11 = type metadata accessor for FeedbackLearning.TaskEvaluator();
  v12 = sub_22BB314BC(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24) + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22BBE1F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB9C14();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for FeedbackLearning.TaskEvaluator();
    result = sub_22BB314BC(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BBE203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB9C14();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE20EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB9C14();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE23BC(char a1)
{
  if (a1)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22BBE240C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF3A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BBE2448(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      goto LABEL_4;
    case 2:
      sub_22BD00D44();
LABEL_4:
      result = 0x6465727265666E69;
      break;
    case 3:
      result = sub_22BD00D14();
      break;
    case 4:
      result = 0x6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BBE2508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF4478();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE259C(char a1)
{
  if (a1)
  {
    return 0x745374706D6F7270;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_22BBE25E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF5300();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE2630(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22BBE2660(char a1)
{
  if (a1)
  {
    return 0x656C706D6F636E69;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_22BBE26E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF281C();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE2718@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCF315C();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE27A0()
{
  sub_22BB2F474();
  sub_22BDB9D04();
  v0 = sub_22BB347EC();

  return sub_22BB3AA28(v0, v1, v2);
}

uint64_t sub_22BBE27D8()
{
  sub_22BB2F474();
  sub_22BDB9D04();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE2810(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BB2F474();
  v6 = sub_22BDB4C34();
  sub_22BB314BC(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB69A84();
  }

  else
  {
    v10 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC(v10);
    if (*(v11 + 84) == v3)
    {
      sub_22BD00CCC();
    }

    else
    {
      v13 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      v14 = sub_22BB314BC(v13);
      if (*(v15 + 84) == v3)
      {
        v9 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = sub_22BDB7B44();
        v17 = sub_22BB314BC(v16);
        if (*(v18 + 84) != v3)
        {
          return sub_22BD00E04(a3[8]);
        }

        v9 = v17;
        v12 = a3[7];
      }
    }

    v8 = v4 + v12;
  }

  return sub_22BB3AA28(v8, v3, v9);
}

uint64_t sub_22BBE295C()
{
  sub_22BB31C98();
  v4 = sub_22BDB4C34();
  sub_22BB314BC(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    v6 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC(v6);
    if (*(v7 + 84) == v3)
    {
      sub_22BD00CF0();
    }

    else
    {
      v8 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      sub_22BB314BC(v8);
      if (*(v9 + 84) == v3)
      {
        v10 = v2[6];
      }

      else
      {
        v11 = sub_22BDB7B44();
        result = sub_22BB314BC(v11);
        if (*(v13 + 84) != v3)
        {
          *(v1 + v2[8]) = v0 + 3;
          return result;
        }

        v14 = v2[7];
      }
    }
  }

  sub_22BB313F4();

  return sub_22BB336D0(v15, v16, v17, v18);
}

uint64_t sub_22BBE2AA8()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  if (v3 >= 5)
  {
    return v3 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE2AF0()
{
  sub_22BB97610();
  sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE2BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB2F474();
  v7 = type metadata accessor for FeedbackLearning.FlowActionEvent(v6);
  sub_22BB314BC(v7);
  if (*(v8 + 84) == v3)
  {
    v9 = sub_22BB69A84();
  }

  else
  {
    v11 = sub_22BDBA014();
    sub_22BB314BC(v11);
    if (*(v12 + 84) != v3)
    {
      v15 = *(v4 + *(a3 + 24));
      if (v15 >= 2)
      {
        return sub_22BD00DD8(v15);
      }

      else
      {
        return 0;
      }
    }

    sub_22BD00CCC();
    v9 = v4 + v13;
  }

  return sub_22BB3AA28(v9, v3, v10);
}

uint64_t sub_22BBE2C8C()
{
  v4 = sub_22BB31C98();
  v5 = type metadata accessor for FeedbackLearning.FlowActionEvent(v4);
  sub_22BB314BC(v5);
  if (*(v6 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    v7 = sub_22BDBA014();
    result = sub_22BB314BC(v7);
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = v0 + 1;
      return result;
    }

    sub_22BD00CF0();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v10, v11, v12, v13);
}

uint64_t sub_22BBE2D58()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  return sub_22BD00B3C(v3);
}

uint64_t sub_22BBE2D98()
{
  sub_22BD00924();
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE2E68()
{
  v2 = sub_22BB2F474();
  v3 = type metadata accessor for FeedbackLearning.CandidateDefinition(v2);
  sub_22BB314BC(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_22BB69A84();
  }

  else
  {
    sub_22BDB7B94();
    sub_22BD00CCC();
    v5 = v1 + v7;
  }

  return sub_22BB3AA28(v5, v0, v6);
}

uint64_t sub_22BBE2EF0()
{
  v1 = sub_22BB31C98();
  v2 = type metadata accessor for FeedbackLearning.CandidateDefinition(v1);
  sub_22BB314BC(v2);
  if (*(v3 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    sub_22BDB7B94();
    sub_22BD00CF0();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v4, v5, v6, v7);
}

uint64_t sub_22BBE2FF4()
{
  sub_22BB30CF8();
  v3 = sub_22BDB43E4();
  sub_22BB314BC(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = sub_22BD00E84();

    return sub_22BB3AA28(v5, v1, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return sub_22BD00DD8(v8);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22BBE3090()
{
  sub_22BB31C98();
  v4 = sub_22BDB43E4();
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB34284();

    return sub_22BB336D0(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }

  return result;
}

uint64_t sub_22BBE3118()
{
  sub_22BB2F474();
  sub_22BDB4C84();
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  return sub_22BD00B3C(v3);
}

uint64_t sub_22BBE3148()
{
  sub_22BD00924();
  sub_22BDB4C84();
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE318C()
{
  sub_22BB2F474();
  sub_22BDB4354();
  v0 = sub_22BB347EC();

  return sub_22BB3AA28(v0, v1, v2);
}

uint64_t sub_22BBE31C4()
{
  sub_22BB2F474();
  sub_22BDB4354();
  v0 = sub_22BB34284();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE31FC()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  return sub_22BD00B3C(v3);
}

uint64_t sub_22BBE323C()
{
  sub_22BD00924();
  sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE32BC()
{
  sub_22BB35F54();
  sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  v0 = sub_22BB347EC();
  v3 = sub_22BB3AA28(v0, v1, v2);
  if (v3 >= 5)
  {
    return v3 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE3304()
{
  sub_22BB97610();
  sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  v0 = sub_22BB33254();

  return sub_22BB336D0(v0, v1, v2, v3);
}

uint64_t sub_22BBE3354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  v6 = sub_22BDB4C34();
  sub_22BB314BC(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB69A84();
  }

  else
  {
    v10 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC(v10);
    if (*(v11 + 84) == v3)
    {
      sub_22BD00CCC();
    }

    else
    {
      v13 = sub_22BDB7B44();
      v14 = sub_22BB314BC(v13);
      if (*(v15 + 84) != v3)
      {
        return sub_22BD00E04(*(a3 + 28));
      }

      v9 = v14;
      v12 = *(a3 + 24);
    }

    v8 = v4 + v12;
  }

  return sub_22BB3AA28(v8, v3, v9);
}

uint64_t sub_22BBE3460()
{
  sub_22BB31C98();
  v4 = sub_22BDB4C34();
  sub_22BB314BC(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    v6 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BB314BC(v6);
    if (*(v7 + 84) == v3)
    {
      sub_22BD00CF0();
    }

    else
    {
      v8 = sub_22BDB7B44();
      result = sub_22BB314BC(v8);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0 + 3;
        return result;
      }

      v11 = *(v2 + 24);
    }
  }

  sub_22BB313F4();

  return sub_22BB336D0(v12, v13, v14, v15);
}

uint64_t sub_22BBE36BC(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_22BBE3780()
{
  result = sub_22BD00D14();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = sub_22BD10FF0();
      break;
    case 3:
      result = sub_22BB8B738();
      break;
    case 4:
      result = 0x64656C65636E6163;
      break;
    case 5:
      result = 0x64657070696B73;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_22BBE3880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF3B3C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BBE38B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BD06D00();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE38E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BD07238();
  *a1 = result;
  return result;
}

uint64_t sub_22BBE3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD09590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BBE396C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5 = _s28StatementResolutionReferenceOMa(v4);

  return sub_22BB3AA28(v2, a2, v5);
}

uint64_t sub_22BBE39B0()
{
  v0 = sub_22BB30F68();
  _s28StatementResolutionReferenceOMa(v0);
  v1 = sub_22BB34284();

  return sub_22BB336D0(v1, v2, v3, v4);
}

uint64_t sub_22BBE3A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD07F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BBE3A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s28StatementResolutionReferenceOMa(0);
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22BBE3B18(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = sub_22BB30F68();
  v9 = _s28StatementResolutionReferenceOMa(v8);
  result = sub_22BB314BC(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = sub_22BB34284();

    return sub_22BB336D0(v12, v13, v14, v15);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_22BBE3C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB9774();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BB3AA28(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BBE3D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BDB9774();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BB336D0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BBE3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB30F68();
  v6 = sub_22BDB7A84();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_22BB3AA28(v10, a2, v9);
  }

  v11 = sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
  v12 = sub_22BB314BC(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22BBE401C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BB30F68();
  v8 = sub_22BDB7A84();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
    result = sub_22BB314BC(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

char *sub_22BBE410C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

uint64_t sub_22BBE4134()
{
  sub_22BB2F474();
  v2 = sub_22BDB43E4();
  v3 = sub_22BB314BC(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    type metadata accessor for FeedbackLearning.ActionValue(0);
    v6 = sub_22BB35180();
  }

  return sub_22BB3AA28(v6, v0, v5);
}

uint64_t sub_22BBE41C0()
{
  sub_22BB31C98();
  v1 = sub_22BDB43E4();
  sub_22BB314BC(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    type metadata accessor for FeedbackLearning.ActionValue(0);
    sub_22BB35180();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BBE4244()
{
  sub_22BB2F474();
  v2 = sub_22BDB4C34();
  v3 = sub_22BB314BC(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
    v6 = sub_22BB39610();
  }

  return sub_22BB3AA28(v6, v0, v5);
}

uint64_t sub_22BBE42D0()
{
  sub_22BB31C98();
  v1 = sub_22BDB4C34();
  sub_22BB314BC(v1);
  if (*(v2 + 84) == v0)
  {
    sub_22BB33224();
  }

  else
  {
    type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
    sub_22BB39610();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v3, v4, v5, v6);
}

uint64_t sub_22BBE4354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BB2F474();
  v6 = sub_22BDB5F24();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_22BDB4C34();
    sub_22BB314BC(v11);
    if (*(v12 + 84) != v3)
    {
      return sub_22BB32714(*(v4 + *(a3 + 24)));
    }

    v10 = sub_22BB35180();
  }

  return sub_22BB3AA28(v10, v3, v9);
}

uint64_t sub_22BBE4428()
{
  sub_22BB31C98();
  v4 = sub_22BDB5F24();
  sub_22BB314BC(v4);
  if (*(v5 + 84) == v3)
  {
    sub_22BB33224();
  }

  else
  {
    v6 = sub_22BDB4C34();
    result = sub_22BB314BC(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return result;
    }

    sub_22BB35180();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v9, v10, v11, v12);
}

uint64_t sub_22BBE458C()
{
  v1 = sub_22BDB96E4();
  sub_22BB30444(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v0 + 32));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_22BBE4680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BDB4B64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BBE4710(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB4B94();
  v5 = sub_22BB3AA28(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BBE4758(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22BDB4B94();

  return sub_22BB336D0(a1, v5, a3, v6);
}

uint64_t sub_22BBE47C8()
{
  sub_22BB30CF8();
  v3 = sub_22BDBA594();
  v4 = sub_22BB314BC(v3);
  if (*(v5 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20) + 8));
  }

  return sub_22BB3AA28(v0, v1, v4);
}

uint64_t sub_22BBE485C()
{
  sub_22BB31C98();
  v4 = sub_22BDBA594();
  result = sub_22BB314BC(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BB34284();

    return sub_22BB336D0(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22BBE48FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB9C14();

  return sub_22BB3AA28(a1, a2, v4);
}

uint64_t sub_22BBE4944(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB9C14();

  return sub_22BB336D0(a1, a2, a2, v4);
}

uint64_t sub_22BBE49F0()
{
  v1 = sub_22BDB5B44();
  sub_22BB30444(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22BB541E8();
  v9(v8);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v5 + 24);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}