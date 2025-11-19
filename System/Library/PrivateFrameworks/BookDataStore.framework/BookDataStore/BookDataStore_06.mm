uint64_t sub_1E46AD78C(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1E46AD7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1E46AD874()
{
  sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return sub_1E470A85C();
}

void sub_1E46AD8F8()
{
  sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  JUMPOUT(0x1E6915580);
}

uint64_t sub_1E46ADA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1E46ADC00(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4630](a1, v2);
}

Swift::Int __swiftcall ReadingHistoryModel.readingTimeToday()()
{
  v0 = sub_1E470ADBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v20 - v15;
  sub_1E4709CBC();
  ReadingHistoryModel.readingHistoryDay(for:)(v16);
  (*(v7 + 8))(v11, v6);
  v17 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    sub_1E465E050(v16, &qword_1ECF74200, &qword_1E471AF80);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v5, v16, v0);
    sub_1E46AE460(v16, type metadata accessor for ReadingHistoryDay);
    v19 = sub_1E470AD8C();
    (*(v1 + 8))(v5, v0);
    return v19;
  }
}

void ReadingHistoryModel.readingHistoryMonth(year:month:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v18 - v9;
  v11 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = __OFADD__(v11, a2);
  v13 = v11 + a2;
  if (v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18[1] = v13;
  sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  sub_1E470AB0C();
  v14 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_1E465E050(v10, &unk_1ECF74D30, &unk_1E471DB90);
    v16 = 1;
  }

  else
  {
    MEMORY[0x1E69159F0](v14);
    (*(v15 + 8))(v10, v14);
    v16 = 0;
  }

  v17 = type metadata accessor for ReadingHistoryMonth(0);
  (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
}

uint64_t sub_1E46AE0B0(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470ADAC();
  v13 = *(v8 + 20);
  v16 = 0;
  sub_1E470A65C();
  *&v12[*(v8 + 24)] = MEMORY[0x1E69E7CC8];
  v16 = a1;
  sub_1E470A65C();
  (*(v3 + 40))(&v12[v13], v7, v2);
  sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay);
  return sub_1E470AD0C();
}

uint64_t sub_1E46AE288()
{
  v0 = type metadata accessor for ReadingHistoryDay(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470ADAC();
  v5 = *(v0 + 20);
  v7[1] = 0;
  sub_1E470A65C();
  *&v4[*(v0 + 24)] = MEMORY[0x1E69E7CC8];
  sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay);
  return sub_1E470AD0C();
}

uint64_t sub_1E46AE390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46AE3F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E46AE460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E46AE4C0()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  v1 = *(*(v0 - 1) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E470AABC();
  v5 = v0[5];
  v9 = 0;
  sub_1E470A65C();
  v6 = v0[6];
  v9 = -1;
  sub_1E470A65C();
  *&v4[v0[7]] = MEMORY[0x1E69E7CC8];
  sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);
  return sub_1E470AD0C();
}

void sub_1E46AE688(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  v11 = *a1;
  if (*a1 < *a2)
  {
    v12 = *(v6 + 48);
    v13 = sub_1E4709CCC();
    sub_1E46AE3F8(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
    if ((sub_1E470AEEC() & 1) == 0)
    {
      sub_1E465E0B0(a2, v10, &qword_1ECF74BD8, &qword_1E471D530);
      v11 = *v10;
      (*(*(v13 - 8) + 8))(&v10[*(v6 + 48)], v13);
    }
  }

  *a3 = v11;
}

uint64_t sub_1E46AE7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v96 = sub_1E4709CCC();
  v94 = *(v96 - 8);
  v3 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96, v4);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v77 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v82 = &v74 - v15;
  v16 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v87 = &v74 - v19;
  v20 = sub_1E4709D5C();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E4709D7C();
  v27 = *(v26 - 8);
  v97 = v26;
  v98 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v90 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v74 - v33;
  v35 = sub_1E4650534(&qword_1ECF74FA8, &unk_1E471E6D8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v92 = (&v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v74 - v41;
  sub_1E4709CDC();
  v43 = v21[13];
  v76 = *MEMORY[0x1E6969A68];
  v43(v25);
  v91 = sub_1E4709D6C();
  v44 = v21[1];
  v44(v25, v20);
  v75 = *MEMORY[0x1E6969A78];
  v83 = v43;
  v84 = v21 + 13;
  v43(v25);
  v45 = a1;
  v46 = v92;
  v78 = v45;
  v47 = sub_1E4709D6C();
  v85 = v25;
  v86 = v44;
  v79 = v20;
  v80 = v21 + 1;
  v44(v25, v20);
  ReadingHistoryModel.readingHistoryMonth(year:month:)(v91, v47, v42);
  v48 = *(v98 + 8);
  v49 = v34;
  v98 += 8;
  v48(v34, v97);
  sub_1E465E0B0(v42, v46, &qword_1ECF74FA8, &unk_1E471E6D8);
  v50 = type metadata accessor for ReadingHistoryMonth(0);
  if ((*(*(v50 - 8) + 48))(v46, 1, v50) == 1)
  {
    sub_1E465E050(v46, &qword_1ECF74FA8, &unk_1E471E6D8);
LABEL_6:
    sub_1E465E050(v42, &qword_1ECF74FA8, &unk_1E471E6D8);
    return (*(v94 + 56))(v95, 1, 1, v96);
  }

  v51 = *(v50 + 24);
  v52 = v87;
  v53 = v88;
  v54 = v89;
  (*(v88 + 16))(v87, v46 + v51, v89);
  sub_1E46AE460(v46, type metadata accessor for ReadingHistoryMonth);
  sub_1E470A62C();
  (*(v53 + 8))(v52, v54);
  if (v99 < 0)
  {
    goto LABEL_6;
  }

  v91 = v99;
  v93 = v42;
  sub_1E4709CDC();
  v55 = v49;
  sub_1E4709CDC();
  v56 = v85;
  v57 = v79;
  v58 = v83;
  (v83)(v85, v75, v79);
  v59 = sub_1E4709D6C();
  v60 = v86;
  v86(v56, v57);
  (v58)(v56, v76, v57);
  v61 = sub_1E4709D6C();
  v60(v56, v57);
  v62 = v77;
  sub_1E46B12B8(v61, v59, v77);
  v92 = v48;
  v48(v55, v97);
  v63 = v94;
  v64 = *(v94 + 48);
  v65 = v96;
  if (v64(v62, 1, v96) == 1)
  {
    sub_1E465E050(v62, &unk_1ECF74CD0, &qword_1E471B620);
    v66 = 1;
    v67 = v82;
  }

  else
  {
    v67 = v82;
    sub_1E4709BFC();
    (*(v63 + 8))(v62, v65);
    v66 = 0;
  }

  v69 = *(v63 + 56);
  v69(v67, v66, 1, v65);
  v70 = v81;
  sub_1E465E0B0(v67, v81, &unk_1ECF74CD0, &qword_1E471B620);
  if (v64(v70, 1, v65) == 1)
  {
    sub_1E465E050(v67, &unk_1ECF74CD0, &qword_1E471B620);
    v92(v90, v97);
    sub_1E465E050(v93, &qword_1ECF74FA8, &unk_1E471E6D8);
    sub_1E465E050(v70, &unk_1ECF74CD0, &qword_1E471B620);
    return (v69)(v95, 1, 1, v65);
  }

  else
  {
    v71 = v74;
    (*(v63 + 32))(v74, v70, v65);
    v72 = v85;
    (v83)(v85, *MEMORY[0x1E6969A48], v57);
    v73 = v90;
    sub_1E4709D3C();
    v86(v72, v57);
    (*(v63 + 8))(v71, v65);
    sub_1E465E050(v67, &unk_1ECF74CD0, &qword_1E471B620);
    v92(v73, v97);
    return sub_1E465E050(v93, &qword_1ECF74FA8, &unk_1E471E6D8);
  }
}

uint64_t sub_1E46AF0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v33 = &v33 - v11;
  v12 = sub_1E4709D7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v33 - v25;
  sub_1E4709CDC();
  sub_1E46B12B8(a1, a2, v26);
  v27 = *(v13 + 8);
  v35 = v12;
  v27(v17, v12);
  sub_1E465E0B0(v26, v22, &unk_1ECF74CD0, &qword_1E471B620);
  if ((*(v5 + 48))(v22, 1, v4) == 1)
  {
    sub_1E465E050(v26, &unk_1ECF74CD0, &qword_1E471B620);
    v28 = 0;
    v26 = v22;
  }

  else
  {
    v29 = v33;
    (*(v5 + 32))(v33, v22, v4);
    sub_1E4709CDC();
    v30 = v34;
    sub_1E4709BFC();
    v28 = sub_1E46A4088(v30, 1);
    v31 = *(v5 + 8);
    v31(v30, v4);
    v27(v17, v35);
    v31(v29, v4);
  }

  sub_1E465E050(v26, &unk_1ECF74CD0, &qword_1E471B620);
  return v28;
}

uint64_t sub_1E46AF3F8(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for ReadingHistoryDay(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v46 - v11;
  v13 = sub_1E4650534(&qword_1ECF75008, &qword_1E471E750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - v20;
  v53 = sub_1E4650534(&qword_1ECF75010, &qword_1E471E758);
  v47 = *(v53 - 8);
  v22 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v53, v23);
  v25 = &v46 - v24;
  v50 = type metadata accessor for ReadingHistoryMonth(0);
  v26 = *(v50 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v50, v28);
  v49 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E4650534(&qword_1ECF74FA8, &unk_1E471E6D8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v46 - v37;
  ReadingHistoryModel.readingHistoryMonth(year:month:)(a1, v51, &v46 - v37);
  sub_1E465E0B0(v38, v34, &qword_1ECF74FA8, &unk_1E471E6D8);
  if ((*(v26 + 48))(v34, 1, v50) == 1)
  {
    sub_1E465E050(v38, &qword_1ECF74FA8, &unk_1E471E6D8);
    v39 = 0;
  }

  else
  {
    v52 = v38;
    sub_1E46B4060(v34, v49, type metadata accessor for ReadingHistoryMonth);
    sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
    sub_1E470AAAC();
    v39 = 0;
    v40 = (v48 + 32);
    v41 = (v48 + 8);
    while (1)
    {
      sub_1E470AA6C();
      sub_1E46574C0(v17, v21, &qword_1ECF75008, &qword_1E471E750);
      v42 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
      if ((*(*(v42 - 8) + 48))(v21, 1, v42) == 1)
      {
        break;
      }

      (*v40)(v12, &v21[*(v42 + 48)], v8);
      MEMORY[0x1E69159F0](v8);
      v43 = sub_1E470AD8C();
      sub_1E46AE460(v7, type metadata accessor for ReadingHistoryDay);
      (*v41)(v12, v8);
      v44 = __OFADD__(v39, v43);
      v39 += v43;
      if (v44)
      {
        __break(1u);
        break;
      }
    }

    (*(v47 + 8))(v25, v53);
    sub_1E46AE460(v49, type metadata accessor for ReadingHistoryMonth);
    v34 = v52;
  }

  sub_1E465E050(v34, &qword_1ECF74FA8, &unk_1E471E6D8);
  return v39;
}

uint64_t sub_1E46AF8FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E46B404C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E470B80C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E470B0EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E46B2918(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1E46AFA34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(sub_1E4650534(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v11[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v11[1] = v10;
  sub_1E46B2578(v11, a2, a3);
  *a1 = v9;
}

Swift::Bool __swiftcall ReadingHistoryModel.DayKey.isTheDayBefore(_:)(BookDataStore::ReadingHistoryModel::DayKey a1)
{
  yearMonth = a1.yearMonth;
  v87 = sub_1E4709D5C();
  v92 = *(v87 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v87, v4);
  v86 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4709D7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v89 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v94 = &v77 - v17;
  v95 = sub_1E4709CCC();
  v18 = *(v95 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v95, v20);
  v85 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v84 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v90 = &v77 - v27;
  v28 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = &v77 - v31;
  v33 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v37 = &v77 - v36;
  v38 = sub_1E4709A3C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v44 = &v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *yearMonth;
  v82 = yearMonth[1];
  v83 = v45;
  v47 = *v1;
  v46 = v1[1];
  v93 = v7;
  v48 = *(v7 + 56);
  v91 = v6;
  v48(v37, 1, 1, v6, v42);
  v49 = sub_1E4709D8C();
  (*(*(v49 - 8) + 56))(v32, 1, 1, v49);
  sub_1E4709A2C();
  v96 = v47;
  v97 = v46;
  v50 = v94;
  sub_1E46A34A8(v94);
  v51 = v50;
  v52 = *(v18 + 48);
  v53 = v95;
  if (v52(v50, 1) == 1)
  {
    (*(v39 + 8))(v44, v38);
    v54 = v50;
LABEL_5:
    sub_1E465E050(v54, &unk_1ECF74CD0, &qword_1E471B620);
    return 0;
  }

  v80 = v39;
  v81 = v38;
  v55 = v90;
  v94 = *(v18 + 32);
  (v94)(v90, v51, v53);
  v56 = v88;
  sub_1E4709CDC();
  v57 = v89;
  sub_1E4709D2C();
  v58 = v93 + 8;
  v79 = *(v93 + 8);
  v79(v56, v91);
  if ((v52)(v57, 1, v53) == 1)
  {
    (*(v18 + 8))(v55, v53);
    (*(v80 + 8))(v44, v81);
    v54 = v57;
    goto LABEL_5;
  }

  v78 = v44;
  v93 = v58;
  v60 = v84;
  (v94)(v84, v57, v53);
  v94 = v18;
  (*(v18 + 16))(v85, v60, v53);
  sub_1E4709CDC();
  v61 = v92;
  v62 = *(v92 + 104);
  v63 = v86;
  v64 = v87;
  v62(v86, *MEMORY[0x1E6969A68], v87);
  v65 = sub_1E4709D6C();
  v66 = *(v61 + 8);
  v66(v63, v64);
  v62(v63, *MEMORY[0x1E6969A78], v64);
  v67 = sub_1E4709D6C();
  v92 = v61 + 8;
  result = (v66)(v63, v64);
  v68 = 100 * v65;
  if ((v65 * 100) >> 64 != (100 * v65) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v69 = v68 + v67;
  if (__OFADD__(v68, v67))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v70 = v86;
  v71 = v87;
  v62(v86, *MEMORY[0x1E6969A48], v87);
  v72 = v85;
  v73 = sub_1E4709D6C();
  v66(v70, v71);
  v79(v56, v91);
  v74 = v95;
  v75 = *(v94 + 8);
  v75(v72, v95);
  v75(v84, v74);
  v75(v90, v74);
  (*(v80 + 8))(v78, v81);
  return v83 == v69 && v82 == v73;
}

uint64_t ReadingHistoryModel.DayKey.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E6916620](*v0);
  return MEMORY[0x1E6916620](v1);
}

uint64_t ReadingHistoryModel.DayKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  MEMORY[0x1E6916620](v2);
  return sub_1E470B91C();
}

uint64_t *sub_1E46B03A8(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1E46B040C(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1E46B0470(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1E46B04D4(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E46B0538()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  MEMORY[0x1E6916620](v2);
  return sub_1E470B91C();
}

uint64_t sub_1E46B0594()
{
  v1 = v0[1];
  MEMORY[0x1E6916620](*v0);
  return MEMORY[0x1E6916620](v1);
}

uint64_t sub_1E46B05D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  MEMORY[0x1E6916620](v2);
  return sub_1E470B91C();
}

uint64_t ReadingHistoryModel.debugDescription.getter()
{
  v114 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v119 = *(v114 - 8);
  v1 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v114, v2);
  v113 = v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v112 = (v98 - v6);
  v7 = type metadata accessor for ReadingHistoryMonth(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v118 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
  v120 = *(v117 - 8);
  v11 = v120[8];
  MEMORY[0x1EEE9AC00](v117, v12);
  v116 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v115 = (v98 - v16);
  v110 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v108 = *(v110 - 8);
  v17 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v110, v18);
  v109 = v98 - v19;
  v20 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v98 - v24;
  v26 = sub_1E4650534(&qword_1ECF74F18, &unk_1E471DBE0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v98 - v34;
  v36 = sub_1E45E2F14(&qword_1ECF74F20, &unk_1ECF74D00, &unk_1E471DBA0);
  sub_1E470B19C();
  v37 = v0;
  v103 = v36;
  sub_1E470B1CC();
  sub_1E45E2F14(&qword_1ECF74F28, &qword_1ECF74F18, &unk_1E471DBE0);
  v38 = sub_1E470AEFC();
  v39 = *(v27 + 8);
  v105 = v31;
  v39(v31, v26);
  v104 = v35;
  v106 = v27 + 8;
  v107 = v26;
  v102 = v39;
  v39(v35, v26);
  if (v38)
  {
    return 0xD00000000000001BLL;
  }

  (*(v21 + 16))(v25, v37, v20);
  sub_1E45E2F14(&qword_1EE2ACD90, &unk_1ECF74D00, &unk_1E471DBA0);
  v122 = sub_1E470B07C();
  v41 = 0;
  sub_1E46AFA34(&v122, &qword_1ECF74BE8, &unk_1E471D540, sub_1E46B8688);
  v42 = v37;
  v100 = v20;
  v43 = v122;
  v44 = *(v122 + 16);
  v101 = v37;
  if (v44)
  {
    v99 = 0;
    v124 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v44, 0);
    v45 = v124;
    v46 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v98[1] = v43;
    v47 = v43 + v46;
    v111 = v120[9];
    do
    {
      v120 = v45;
      v48 = v115;
      sub_1E465E0B0(v47, v115, &qword_1ECF74BE8, &unk_1E471D540);
      v122 = 0x2068746E6F4DLL;
      v123 = 0xE600000000000000;
      v121 = *v48;
      v49 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v49);

      MEMORY[0x1E6915D10](8250, 0xE200000000000000);
      v50 = v116;
      sub_1E465E0B0(v48, v116, &qword_1ECF74BE8, &unk_1E471D540);
      v51 = *(v117 + 48);
      v52 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      v53 = v118;
      MEMORY[0x1E69159F0]();
      (*(*(v52 - 8) + 8))(v50 + v51, v52);
      v54 = sub_1E46AC1A8(0, 1);
      v56 = v55;
      sub_1E46AE460(v53, type metadata accessor for ReadingHistoryMonth);
      MEMORY[0x1E6915D10](v54, v56);

      MEMORY[0x1E6915D10](10, 0xE100000000000000);
      v58 = v122;
      v57 = v123;
      v59 = v48;
      v45 = v120;
      sub_1E465E050(v59, &qword_1ECF74BE8, &unk_1E471D540);
      v124 = v45;
      v61 = *(v45 + 16);
      v60 = *(v45 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1E467F200((v60 > 1), v61 + 1, 1);
        v45 = v124;
      }

      *(v45 + 16) = v61 + 1;
      v62 = v45 + 16 * v61;
      *(v62 + 32) = v58;
      *(v62 + 40) = v57;
      v47 += v111;
      --v44;
    }

    while (v44);

    v42 = v101;
    v41 = v99;
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
  }

  v122 = v45;
  v63 = sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  v64 = sub_1E45E2F14(&qword_1EE2ACD00, &qword_1ECF74AA0, &qword_1E471C990);
  v65 = sub_1E470AEDC();
  v67 = v66;

  v68 = type metadata accessor for ReadingHistoryModel(0);
  (*(v108 + 16))(v109, v42 + *(v68 + 20), v110);
  sub_1E45E2F14(&qword_1ECF74D20, &unk_1ECF74CF0, &qword_1E471D828);
  v122 = sub_1E470B07C();
  sub_1E46AFA34(&v122, &qword_1ECF74BD8, &qword_1E471D530, sub_1E46B8674);
  if (v41)
  {
    goto LABEL_21;
  }

  v110 = v64;
  v111 = v63;
  v115 = v65;
  v116 = v67;
  v41 = v122;
  v69 = *(v122 + 16);
  if (v69)
  {
    v124 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v69, 0);
    v70 = 0;
    v71 = v124;
    v72 = *(v119 + 80);
    v117 = v69;
    v118 = v41 + ((v72 + 32) & ~v72);
    v120 = v41;
    while (v70 < v41[2])
    {
      v73 = v112;
      sub_1E465E0B0(&v118[*(v119 + 72) * v70], v112, &qword_1ECF74BD8, &qword_1E471D530);
      v74 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v74 setFormatOptions_];
      v121 = *v73;
      v122 = sub_1E470B81C();
      v123 = v75;
      MEMORY[0x1E6915D10](0x203A7961642DLL, 0xE600000000000000);
      v76 = v113;
      sub_1E465E0B0(v73, v113, &qword_1ECF74BD8, &qword_1E471D530);
      v77 = *(v114 + 48);
      v78 = sub_1E4709C5C();
      v79 = sub_1E4709CCC();
      (*(*(v79 - 8) + 8))(v76 + v77, v79);
      v80 = [v74 stringFromDate_];

      v81 = sub_1E470AF1C();
      v83 = v82;

      MEMORY[0x1E6915D10](v81, v83);

      v84 = v122;
      v85 = v123;
      sub_1E465E050(v73, &qword_1ECF74BD8, &qword_1E471D530);
      v124 = v71;
      v87 = *(v71 + 16);
      v86 = *(v71 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1E467F200((v86 > 1), v87 + 1, 1);
        v71 = v124;
      }

      ++v70;
      *(v71 + 16) = v87 + 1;
      v88 = v71 + 16 * v87;
      *(v88 + 32) = v84;
      *(v88 + 40) = v85;
      v41 = v120;
      if (v117 == v70)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:

    __break(1u);
    return result;
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v122 = v71;
  v89 = sub_1E470AEDC();
  v91 = v90;

  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1E470B5CC();
  MEMORY[0x1E6915D10](0xD00000000000001DLL, 0x80000001E4719340);
  v92 = v104;
  sub_1E470B19C();
  v93 = v105;
  sub_1E470B1CC();
  v94 = sub_1E470B1BC();
  v95 = v107;
  v96 = v102;
  v102(v93, v107);
  v96(v92, v95);
  v124 = v94;
  v97 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v97);

  MEMORY[0x1E6915D10](10, 0xE100000000000000);
  MEMORY[0x1E6915D10](v115, v116);

  MEMORY[0x1E6915D10](0xD000000000000011, 0x80000001E4719360);
  MEMORY[0x1E6915D10](v89, v91);

  MEMORY[0x1E6915D10](4065885, 0xE300000000000000);
  return v122;
}

uint64_t sub_1E46B12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v3 = sub_1E4709D5C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4709CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v44 - v15;
  v17 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v44 - v20;
  v22 = sub_1E4709A3C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v44 - v35;
  v37 = sub_1E4709D7C();
  (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
  v38 = sub_1E4709D8C();
  (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
  sub_1E4709A2C();
  sub_1E4709A0C();
  sub_1E4709A1C();
  sub_1E4709D1C();
  (*(v23 + 8))(v27, v22);
  sub_1E465E0B0(v36, v32, &unk_1ECF74CD0, &qword_1E471B620);
  if ((*(v8 + 48))(v32, 1, v7) == 1)
  {
    sub_1E465E050(v36, &unk_1ECF74CD0, &qword_1E471B620);
    sub_1E465E050(v32, &unk_1ECF74CD0, &qword_1E471B620);
    return (*(v8 + 56))(v50, 1, 1, v7);
  }

  else
  {
    v40 = v44;
    (*(v8 + 32))(v44, v32, v7);
    v42 = v45;
    v41 = v46;
    v43 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x1E6969A78], v47);
    sub_1E4709D3C();
    (*(v41 + 8))(v42, v43);
    (*(v8 + 8))(v40, v7);
    return sub_1E465E050(v36, &unk_1ECF74CD0, &qword_1E471B620);
  }
}

unint64_t sub_1E46B1FE4()
{
  result = qword_1ECF74F98;
  if (!qword_1ECF74F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74F98);
  }

  return result;
}

void sub_1E46B208C()
{
  if (!qword_1EE2ACDD8)
  {
    v0 = sub_1E470A64C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACDD8);
    }
  }
}

void sub_1E46B210C()
{
  sub_1E46B21A8();
  if (v0 <= 0x3F)
  {
    sub_1E46B208C();
    if (v1 <= 0x3F)
    {
      sub_1E4671EC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E46B21A8()
{
  if (!qword_1EE2ACDA0)
  {
    sub_1E46506D0(&unk_1ECF74D80, &unk_1E471DBB0);
    sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0);
    sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0);
    v0 = sub_1E470AACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACDA0);
    }
  }
}

void sub_1E46B22FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  a4(319);
  if (v6 <= 0x3F)
  {
    a5(319);
    if (v7 <= 0x3F)
    {
      sub_1E4671EC0();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E46B23A4()
{
  if (!qword_1EE2ACD88)
  {
    sub_1E46506D0(&unk_1ECF74D50, &qword_1E471D848);
    sub_1E45E2F14(&qword_1EE2ACD70, &unk_1ECF74D50, &qword_1E471D848);
    sub_1E45E2F14(&qword_1EE2ACD68, &unk_1ECF74D50, &qword_1E471D848);
    v0 = sub_1E470AACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACD88);
    }
  }
}

void sub_1E46B24A4()
{
  if (!qword_1EE2ACDA8)
  {
    sub_1E4709CCC();
    sub_1E46AE3F8(&unk_1EE2AEBD0, MEMORY[0x1E6969530]);
    v0 = sub_1E470AACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACDA8);
    }
  }
}

void sub_1E46B2578(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  v7 = sub_1E470B80C();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E4650534(a2, a3);
        v10 = sub_1E470B0EC();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_1E4650534(a2, a3) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_1E46B2E64(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1E46B26D4(0, v6, 1, a1, a2, a3);
  }
}

void sub_1E46B26D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = sub_1E4650534(a5, a6);
  v12 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44, v13);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v34 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = (&v34 - v22);
  v36 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v21 + 72);
    v26 = *a4 + v25 * (a3 - 1);
    v41 = -v25;
    v42 = v24;
    v27 = a1 - a3;
    v35 = v25;
    v28 = v24 + v25 * a3;
LABEL_5:
    v39 = v26;
    v40 = a3;
    v37 = v28;
    v38 = v27;
    v29 = v27;
    while (1)
    {
      sub_1E465E0B0(v28, v23, a5, a6);
      sub_1E465E0B0(v26, v18, a5, a6);
      v30 = *v23;
      v31 = *v18;
      sub_1E465E050(v18, a5, a6);
      sub_1E465E050(v23, a5, a6);
      if (v30 >= v31)
      {
LABEL_4:
        a3 = v40 + 1;
        v26 = v39 + v35;
        v27 = v38 - 1;
        v28 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      sub_1E46574C0(v28, v43, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      sub_1E46574C0(v32, v26, a5, a6);
      v26 += v41;
      v28 += v41;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E46B2918(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E46B8624(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1E46B3780((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4693950(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1E4693950((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1E46B3780((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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
  return result;
}

void sub_1E46B2E64(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a6;
  v9 = a5;
  v10 = v7;
  v116 = a1;
  v130 = sub_1E4650534(a5, a6);
  v125 = *(v130 - 8);
  v13 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v130, v14);
  v120 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v129 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v132 = (&v114 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v131 = (&v114 - v24);
  v25 = *(a3 + 8);
  v117 = a3;
  v134 = v8;
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_98:
    a4 = *v116;
    if (!*v116)
    {
      goto LABEL_137;
    }

    v6 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v6;
LABEL_101:
      v135 = v109;
      v6 = *(v109 + 2);
      if (v6 >= 2)
      {
        do
        {
          v110 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          a3 = *&v109[16 * v6];
          v111 = v109;
          v112 = *&v109[16 * v6 + 24];
          sub_1E46B3974(v110 + *(v125 + 72) * a3, v110 + *(v125 + 72) * *&v109[16 * v6 + 16], v110 + *(v125 + 72) * v112, a4, v9, v134);
          if (v10)
          {
            break;
          }

          if (v112 < a3)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1E46B8624(v111);
          }

          if (v6 - 2 >= *(v111 + 2))
          {
            goto LABEL_125;
          }

          v113 = &v111[16 * v6];
          *v113 = a3;
          *(v113 + 1) = v112;
          v135 = v111;
          sub_1E46B8598(v6 - 1);
          v109 = v135;
          v6 = *(v135 + 2);
          a3 = v117;
        }

        while (v6 > 1);
      }

LABEL_109:

      return;
    }

LABEL_131:
    v109 = sub_1E46B8624(v6);
    goto LABEL_101;
  }

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v133 = v9;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v121 = v27;
    v118 = v28;
    if (v29 >= v25)
    {
      v38 = v29;
    }

    else
    {
      v127 = v25;
      v114 = v10;
      v30 = v28;
      v31 = *a3;
      v32 = *(v125 + 72);
      v33 = *a3 + v32 * v29;
      v34 = v131;
      sub_1E465E0B0(v33, v131, v9, v8);
      v6 = v132;
      sub_1E465E0B0(v31 + v32 * v30, v132, v9, v8);
      v35 = *v34;
      v124 = *v6;
      sub_1E465E050(v6, v9, v8);
      sub_1E465E050(v34, v9, v8);
      v36 = v30 + 2;
      v126 = v32;
      v37 = v31 + v32 * (v30 + 2);
      while (1)
      {
        v38 = v127;
        if (v127 == v36)
        {
          break;
        }

        LODWORD(v128) = v35 < v124;
        v39 = v131;
        v40 = v134;
        sub_1E465E0B0(v37, v131, v133, v134);
        v41 = v132;
        sub_1E465E0B0(v33, v132, v133, v40);
        v42 = *v39;
        v6 = *v41;
        sub_1E465E050(v41, v133, v40);
        v43 = v39;
        v9 = v133;
        sub_1E465E050(v43, v133, v40);
        ++v36;
        v37 += v126;
        v33 += v126;
        if (((v128 ^ (v42 >= v6)) & 1) == 0)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v10 = v114;
      a4 = v115;
      v8 = v134;
      a3 = v117;
      v28 = v118;
      if (v35 < v124)
      {
        if (v38 < v118)
        {
          goto LABEL_128;
        }

        if (v118 < v38)
        {
          v6 = v126 * (v38 - 1);
          v44 = v38 * v126;
          v127 = v38;
          v45 = v38;
          v46 = v118;
          v47 = v118 * v126;
          do
          {
            if (v46 != --v45)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              sub_1E46574C0(v48 + v47, v120, v9, v134);
              if (v47 < v6 || v48 + v47 >= (v48 + v44))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1E46574C0(v120, v48 + v6, v9, v134);
            }

            ++v46;
            v6 -= v126;
            v44 -= v126;
            v47 += v126;
          }

          while (v46 < v45);
          v10 = v114;
          a4 = v115;
          v8 = v134;
          v28 = v118;
          v38 = v127;
        }
      }
    }

    v49 = *(a3 + 8);
    if (v38 >= v49)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v38, v28))
    {
      goto LABEL_127;
    }

    if (v38 - v28 >= a4)
    {
LABEL_32:
      v51 = v38;
      goto LABEL_33;
    }

    if (__OFADD__(v28, a4))
    {
      goto LABEL_129;
    }

    if ((v28 + a4) >= v49)
    {
      v50 = *(a3 + 8);
    }

    else
    {
      v50 = v28 + a4;
    }

    if (v50 < v28)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v38 == v50)
    {
      goto LABEL_32;
    }

    v114 = v10;
    v97 = *a3;
    v98 = *(v125 + 72);
    v99 = *a3 + v98 * (v38 - 1);
    v100 = -v98;
    v6 = v118 - v38;
    v119 = v98;
    v128 = v97;
    a4 = v97 + v38 * v98;
    v122 = v50;
LABEL_89:
    v126 = v99;
    v127 = v38;
    v123 = a4;
    v124 = v6;
    v101 = v99;
LABEL_90:
    v102 = v131;
    sub_1E465E0B0(a4, v131, v9, v8);
    v103 = v132;
    sub_1E465E0B0(v101, v132, v9, v134);
    v104 = *v102;
    v105 = *v103;
    v106 = v103;
    v8 = v134;
    sub_1E465E050(v106, v9, v134);
    sub_1E465E050(v102, v9, v8);
    if (v104 < v105)
    {
      break;
    }

    v9 = v133;
LABEL_88:
    v38 = v127 + 1;
    v99 = v126 + v119;
    v6 = v124 - 1;
    a4 = v123 + v119;
    v51 = v122;
    if (v127 + 1 != v122)
    {
      goto LABEL_89;
    }

    v10 = v114;
    a3 = v117;
LABEL_33:
    if (v51 < v118)
    {
      goto LABEL_126;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v121;
    }

    else
    {
      v27 = sub_1E4693950(0, *(v121 + 2) + 1, 1, v121);
    }

    v6 = *(v27 + 2);
    v52 = *(v27 + 3);
    a4 = v6 + 1;
    if (v6 >= v52 >> 1)
    {
      v27 = sub_1E4693950((v52 > 1), v6 + 1, 1, v27);
    }

    *(v27 + 2) = a4;
    v53 = &v27[16 * v6];
    *(v53 + 4) = v118;
    *(v53 + 5) = v51;
    v54 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    v122 = v51;
    if (v6)
    {
      v9 = v54;
      while (1)
      {
        v55 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v56 = *(v27 + 4);
          v57 = *(v27 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_54:
          if (v59)
          {
            goto LABEL_115;
          }

          v72 = &v27[16 * a4];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_118;
          }

          v78 = &v27[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_122;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = a4 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v82 = &v27[16 * a4];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_68:
        if (v77)
        {
          goto LABEL_117;
        }

        v85 = &v27[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_75:
        v6 = v55 - 1;
        if (v55 - 1 >= a4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v93 = v27;
        a4 = *&v27[16 * v6 + 32];
        v94 = *&v27[16 * v55 + 40];
        sub_1E46B3974(*a3 + *(v125 + 72) * a4, *a3 + *(v125 + 72) * *&v27[16 * v55 + 32], *a3 + *(v125 + 72) * v94, v9, v133, v134);
        if (v10)
        {
          goto LABEL_109;
        }

        if (v94 < a4)
        {
          goto LABEL_111;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v95 = v93;
        }

        else
        {
          v95 = sub_1E46B8624(v93);
        }

        v8 = v134;
        if (v6 >= *(v95 + 2))
        {
          goto LABEL_112;
        }

        v96 = &v95[16 * v6];
        *(v96 + 4) = a4;
        *(v96 + 5) = v94;
        v135 = v95;
        v6 = &v135;
        sub_1E46B8598(v55);
        v27 = v135;
        a4 = *(v135 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v27[16 * a4 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_113;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_114;
      }

      v67 = &v27[16 * a4];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_116;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_119;
      }

      if (v71 >= v63)
      {
        v89 = &v27[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_123;
        }

        if (v58 < v92)
        {
          v55 = a4 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v25 = *(a3 + 8);
    v26 = v122;
    a4 = v115;
    v9 = v133;
    if (v122 >= v25)
    {
      goto LABEL_98;
    }
  }

  if (v128)
  {
    v107 = v129;
    v9 = v133;
    sub_1E46574C0(a4, v129, v133, v8);
    swift_arrayInitWithTakeFrontToBack();
    sub_1E46574C0(v107, v101, v9, v8);
    v101 += v100;
    a4 += v100;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

uint64_t sub_1E46B3780(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1E46B3974(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v60 = a5;
  v56 = sub_1E4650534(a5, a6);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56, v12);
  v58 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v57 = (&v48 - v16);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_59;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v20 = (a2 - a1) / v18;
  v63 = a1;
  v62 = a4;
  v59 = a6;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v22;
    if (v22 >= 1)
    {
      v34 = -v18;
      v35 = a4 + v22;
      v36 = a6;
      v51 = a4;
      v52 = a1;
      v50 = -v18;
      do
      {
        v48 = v33;
        v37 = a2 + v34;
        v38 = v60;
        v53 = a2;
        v54 = a2 + v34;
        while (1)
        {
          if (a2 <= a1)
          {
            v63 = a2;
            v61 = v48;
            goto LABEL_57;
          }

          v39 = a3;
          v49 = v33;
          a3 += v34;
          v40 = v35 + v34;
          v41 = v57;
          v42 = v36;
          v43 = v35;
          sub_1E465E0B0(v35 + v34, v57, v38, v36);
          v44 = v37;
          v45 = v58;
          sub_1E465E0B0(v44, v58, v38, v42);
          v55 = *v41;
          v46 = *v45;
          sub_1E465E050(v45, v38, v42);
          sub_1E465E050(v41, v38, v42);
          if (v55 < v46)
          {
            break;
          }

          v33 = v40;
          if (v39 < v43 || a3 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v54;
            v34 = v50;
          }

          else
          {
            v37 = v54;
            v34 = v50;
            if (v39 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v40;
          a1 = v52;
          v36 = v59;
          v38 = v60;
          a2 = v53;
          if (v40 <= v51)
          {
            goto LABEL_55;
          }
        }

        v47 = v43;
        if (v39 < v53 || a3 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v49;
          v34 = v50;
        }

        else
        {
          a2 = v54;
          v33 = v49;
          v34 = v50;
          if (v39 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v52;
        v35 = v47;
        v36 = v59;
      }

      while (v47 > v51);
    }

LABEL_55:
    v63 = a2;
    v61 = v33;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a4 + v21;
    v61 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v53 = v18;
      v54 = a3;
      do
      {
        v24 = v57;
        v26 = v59;
        v25 = v60;
        sub_1E465E0B0(a2, v57, v60, v59);
        v27 = v58;
        sub_1E465E0B0(a4, v58, v25, v26);
        v28 = *v24;
        v29 = *v27;
        sub_1E465E050(v27, v25, v26);
        sub_1E465E050(v24, v25, v26);
        if (v28 >= v29)
        {
          v30 = v53;
          v32 = a4 + v53;
          if (a1 < a4 || a1 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v54;
          }

          else
          {
            v31 = v54;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v62 = v32;
          a4 += v30;
        }

        else
        {
          v30 = v53;
          if (a1 < a2 || a1 >= a2 + v53)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v54;
          }

          else
          {
            v31 = v54;
            if (a1 == a2)
            {
              a2 += v53;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v30;
            }
          }
        }

        a1 += v30;
        v63 = a1;
      }

      while (a4 < v55 && a2 < v31);
    }
  }

LABEL_57:
  sub_1E46B3F64(&v63, &v62, &v61, v60, v59);
}

uint64_t sub_1E46B3E80(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E4709CCC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E46B3F64(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_1E4650534(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E46B4060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46B412C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E46B869C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E46B7BCC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E46B4198()
{
  v0 = sub_1E470A0DC();
  sub_1E4665F64(v0, qword_1ECF75048);
  sub_1E4665EC4(v0, qword_1ECF75048);
  return sub_1E470A0CC();
}

uint64_t static SecureEngagementDataHelper.mergedTimeSliceData(local:remote:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v44 = a1;
  v45 = a2;
  v6 = sub_1E4650534(&qword_1ECF75060, &unk_1E471E780);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v41 - v9;
  v11 = sub_1E4709ECC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = type metadata accessor for PBPropertyTimeSlice(0);
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v41 - v23);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v41 - v27);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1E46552AC(a3, a4);
  sub_1E4709EBC();
  sub_1E46B8C7C(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice);
  sub_1E4709FBC();
  v41 = v20;
  v29 = v43;
  if (!*(*v28 + 16))
  {
    if (qword_1ECF740E0 != -1)
    {
      swift_once();
    }

    v31 = sub_1E470A0DC();
    sub_1E4665EC4(v31, qword_1ECF75048);
    v32 = sub_1E470A0BC();
    v33 = sub_1E470B29C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1E45E0000, v32, v33, "Not merging empty secure engagement data", v34, 2u);
      MEMORY[0x1E6917530](v34, -1, -1);
    }

    sub_1E46B9438(v28, type metadata accessor for PBPropertyTimeSlice);
    return 0;
  }

  v42 = v28;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1E46552AC(v44, v45);
  sub_1E4709EBC();
  v30 = v24;
  sub_1E4709FBC();
  v35 = v24;
  v36 = v42;
  static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)(v35, v42, v10);
  v37 = (*(v29 + 48))(v10, 1, v16);
  if (v37 == 1)
  {
    sub_1E46B9438(v30, type metadata accessor for PBPropertyTimeSlice);
    sub_1E46B9438(v36, type metadata accessor for PBPropertyTimeSlice);
    sub_1E465E050(v10, &qword_1ECF75060, &unk_1E471E780);
    return 0;
  }

  v39 = v41;
  sub_1E46B8C14(v10, v41, type metadata accessor for PBPropertyTimeSlice);
  v40 = sub_1E4709FCC();
  sub_1E46B9438(v39, type metadata accessor for PBPropertyTimeSlice);
  sub_1E46B9438(v30, type metadata accessor for PBPropertyTimeSlice);
  sub_1E46B9438(v42, type metadata accessor for PBPropertyTimeSlice);
  return v40;
}

uint64_t static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v360 = a1;
  v338 = a3;
  v4 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v344 = &v327 - v7;
  v343 = type metadata accessor for PBPropertyConfiguration(0);
  v368 = *(v343 - 8);
  v8 = *(v368 + 8);
  MEMORY[0x1EEE9AC00](v343, v9);
  v342 = (&v327 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PBPropertyValue(0);
  v367 = *(v11 - 8);
  v12 = *(v367 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v333 = &v327 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v353 = &v327 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v330 = &v327 - v20;
  v341 = type metadata accessor for PBPropertyBundle(0);
  v363 = *(v341 - 8);
  v21 = *(v363 + 64);
  MEMORY[0x1EEE9AC00](v341, v22);
  v352 = &v327 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v357 = &v327 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v364 = &v327 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v351 = &v327 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v356 = &v327 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v359 = &v327 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v349 = &v327 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v340 = &v327 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v331 = &v327 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v369 = &v327 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v329 = &v327 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v354 = (&v327 - v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  v373 = (&v327 - v59);
  v60 = sub_1E4709E7C();
  v61 = *(v60 - 8);
  v62 = v61[8];
  MEMORY[0x1EEE9AC00](v60, v63);
  v361 = &v327 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v371 = &v327 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v362 = &v327 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  *&v365 = &v327 - v73;
  v74 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8, v76);
  v350 = &v327 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v327 - v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v370 = &v327 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v358 = &v327 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v348 = &v327 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v94 = &v327 - v93;
  MEMORY[0x1EEE9AC00](v95, v96);
  v98 = &v327 - v97;
  v99 = type metadata accessor for PBPropertyTimeSlice(0);
  v336 = *(v99 - 8);
  v100 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v99, v101);
  v103 = (&v327 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v103 = MEMORY[0x1E69E7CC0];
  v105 = v103 + *(v104 + 20);
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v106 = *(v99 + 24);
  v107 = v61[7];
  v366 = v103;
  v374 = v106;
  v375 = v107;
  v376 = v61 + 7;
  (v107)(v106 + v103, 1, 1, v60);
  v108 = *(v99 + 24);
  v355 = a2;
  v372 = v108;
  sub_1E465E0B0(a2 + v108, v98, &qword_1ECF74A38, &unk_1E471EB00);
  v377 = v61;
  v109 = v61[6];
  LODWORD(a2) = v109(v98, 1, v60);
  sub_1E465E050(v98, &qword_1ECF74A38, &unk_1E471EB00);
  v337 = v99;
  v110 = *(v99 + 24);
  if (a2 == 1)
  {
    v111 = v360;
    sub_1E465E0B0(v360 + v110, v81, &qword_1ECF74A38, &unk_1E471EB00);
    v112 = v109(v81, 1, v60);
    sub_1E465E050(v81, &qword_1ECF74A38, &unk_1E471EB00);
    if (v112 == 1)
    {
      LODWORD(v358) = 0;
      v113 = v353;
      v114 = v359;
      v115 = v369;
      goto LABEL_26;
    }

    v120 = v350;
    sub_1E465E0B0(v111 + v110, v350, &qword_1ECF74A38, &unk_1E471EB00);
    if (v109(v120, 1, v60) == 1)
    {
      v121 = v361;
      sub_1E4709E6C();
      v122 = v109(v120, 1, v60);
      v123 = v377;
      if (v122 != 1)
      {
        sub_1E465E050(v120, &qword_1ECF74A38, &unk_1E471EB00);
      }
    }

    else
    {
      v123 = v377;
      v121 = v361;
      (v377[4])(v361, v120, v60);
    }

    LODWORD(v358) = 0;
    v113 = v353;
    v114 = v359;
    v115 = v369;
  }

  else
  {
    v116 = v360;
    sub_1E465E0B0(v360 + v110, v94, &qword_1ECF74A38, &unk_1E471EB00);
    v117 = v109(v94, 1, v60);
    sub_1E465E050(v94, &qword_1ECF74A38, &unk_1E471EB00);
    if (v117 == 1)
    {
      v118 = 0;
      v114 = v359;
      v115 = v369;
      v119 = v370;
    }

    else
    {
      v124 = v116;
      v125 = v348;
      sub_1E465E0B0(v355 + v372, v348, &qword_1ECF74A38, &unk_1E471EB00);
      v126 = v109(v125, 1, v60);
      v114 = v359;
      v115 = v369;
      v119 = v370;
      if (v126 == 1)
      {
        sub_1E4709E6C();
        v127 = v109(v125, 1, v60);
        v128 = v377;
        if (v127 != 1)
        {
          sub_1E465E050(v125, &qword_1ECF74A38, &unk_1E471EB00);
        }
      }

      else
      {
        v128 = v377;
        (v377[4])(v365, v125, v60);
      }

      v129 = v124 + v110;
      v130 = v358;
      sub_1E465E0B0(v129, v358, &qword_1ECF74A38, &unk_1E471EB00);
      if (v109(v130, 1, v60) == 1)
      {
        v131 = v362;
        sub_1E4709E6C();
        if (v109(v130, 1, v60) != 1)
        {
          sub_1E465E050(v130, &qword_1ECF74A38, &unk_1E471EB00);
        }
      }

      else
      {
        v131 = v362;
        (v128[4])(v362, v130, v60);
      }

      sub_1E46B8C7C(&qword_1ECF75070, MEMORY[0x1E69AA900]);
      v132 = v365;
      v133 = sub_1E470AEFC();
      v134 = v131;
      v135 = v133;
      v136 = v128[1];
      v136(v134, v60);
      v136(v132, v60);
      v118 = v135 ^ 1;
    }

    sub_1E465E0B0(v355 + v372, v119, &qword_1ECF74A38, &unk_1E471EB00);
    v137 = v109(v119, 1, v60);
    v121 = v371;
    LODWORD(v358) = v118;
    if (v137 == 1)
    {
      sub_1E4709E6C();
      v138 = v109(v119, 1, v60);
      v123 = v377;
      if (v138 != 1)
      {
        sub_1E465E050(v119, &qword_1ECF74A38, &unk_1E471EB00);
      }
    }

    else
    {
      v123 = v377;
      (v377[4])(v371, v119, v60);
    }

    v113 = v353;
  }

  v139 = v366;
  v140 = v374;
  sub_1E465E050(v374 + v366, &qword_1ECF74A38, &unk_1E471EB00);
  (v123[4])(v140 + v139, v121, v60);
  (v375)(v140 + v139, 0, 1, v60);
LABEL_26:
  v141 = sub_1E46B6E28(v360);
  v143 = v142;
  v372 = sub_1E46B6E28(v355);
  v145 = v144;

  v335 = v145;
  v334 = v143;
  v147 = sub_1E46B71BC(v146, v143);
  v148 = v147;
  v149 = *(v147 + 16);
  if (!v149)
  {
LABEL_29:

    v150 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v150 = sub_1E46B7AC8(*(v147 + 16), 0, &unk_1ECF74CE0, &qword_1E471D520);
  v151 = sub_1E46B8A54(&v379, v150 + 4, v149, v148);
  sub_1E45E781C();
  if (v151 != v149)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  v379 = v150;

  sub_1E46B412C(&v379);
  v350 = 0;

  v153 = v379;
  v371 = *(v379 + 2);
  v154 = v360;
  if (!v371)
  {
LABEL_144:

    v323 = v358;

    v324 = v338;
    if (v323)
    {
LABEL_147:
      sub_1E46B8C14(v366, v324, type metadata accessor for PBPropertyTimeSlice);
      v325 = 0;
    }

    else
    {
      sub_1E46B9438(v366, type metadata accessor for PBPropertyTimeSlice);
      v325 = 1;
    }

    return (*(v336 + 56))(v324, v325, 1, v337);
  }

  v155 = 0;
  v370 = v379 + 32;
  v347 = (v368 + 56);
  v339 = (v368 + 48);
  *&v152 = 136315138;
  v365 = v152;
  v374 = MEMORY[0x1E69E7CC0];
  v361 = v141;
  v362 = v379;
  do
  {
    v157 = &v370[16 * v155];
    v159 = *v157;
    v158 = v157[1];
    v376 = (v155 + 1);
    v160 = *(v141 + 16);

    if (v160)
    {
      v161 = sub_1E46553DC(v159, v158);
      if (v162)
      {
        v163 = *(*(v141 + 56) + 8 * v161);
        if (*(v372 + 16))
        {
          v164 = sub_1E46553DC(v159, v158);
          if (v165)
          {
            if ((v163 & 0x8000000000000000) != 0)
            {
              goto LABEL_157;
            }

            v156 = *v154;
            if (v163 >= *(*v154 + 16))
            {
              goto LABEL_158;
            }

            v166 = *(*(v372 + 56) + 8 * v164);
            v167 = (*(v363 + 80) + 32) & ~*(v363 + 80);
            v168 = *(v363 + 72);
            sub_1E46B8BAC(v156 + v167 + v168 * v163, v373, type metadata accessor for PBPropertyBundle);
            if ((v166 & 0x8000000000000000) != 0)
            {
              goto LABEL_159;
            }

            v156 = *v355;
            if (v166 >= *(*v355 + 16))
            {
              goto LABEL_160;
            }

            v346 = v167;
            v345 = v168;
            v169 = v156 + v167 + v168 * v166;
            v170 = v354;
            sub_1E46B8BAC(v169, v354, type metadata accessor for PBPropertyBundle);
            v171 = sub_1E46B72C0(v373);
            v173 = v172;
            v174 = sub_1E46B72C0(v170);

            v176 = sub_1E46B71BC(v175, v173);
            v177 = v176;
            v178 = *(v176 + 16);
            if (v178)
            {
              v179 = sub_1E46B7AC8(*(v176 + 16), 0, &unk_1ECF74CE0, &qword_1E471D520);
              v180 = sub_1E46B8A54(&v379, v179 + 4, v178, v177);
              sub_1E45E781C();
              if (v180 != v178)
              {
                goto LABEL_161;
              }
            }

            else
            {

              v179 = MEMORY[0x1E69E7CC0];
            }

            v379 = v179;

            v229 = v350;
            sub_1E46B412C(&v379);
            v156 = &v378;
            v350 = v229;
            if (v229)
            {
              goto LABEL_166;
            }

            v230 = v379;
            v231 = *(v379 + 2);
            if (v231)
            {
              v232 = 0;
              v233 = 0;
              v375 = -v231;
              v234 = v379 + 40;
              v377 = MEMORY[0x1E69E7CC0];
              v368 = v379;
              v332 = v379 + 40;
LABEL_78:
              LODWORD(v348) = v232;
              v235 = &v234[16 * v233++];
              while (1)
              {
                v156 = v233 - 1;
                if ((v233 - 1) >= *(v230 + 2))
                {
                  __break(1u);
                  goto LABEL_150;
                }

                v237 = *(v235 - 1);
                v236 = *v235;
                v238 = *(v171 + 16);

                if (v238 && (v239 = sub_1E46553DC(v237, v236), (v240 & 1) != 0))
                {
                  v241 = *(*(v171 + 56) + 8 * v239);
                  if (*(v174 + 16))
                  {
                    v242 = sub_1E46553DC(v237, v236);
                    v244 = v243;

                    if (v244)
                    {
                      v156 = *(*(v174 + 56) + 8 * v242);
                      if ((v156 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_164;
                      }

                      if (v156 < *(*v354 + 16))
                      {
                        v280 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                        v281 = *(v367 + 72);
                        sub_1E46B8BAC(*v354 + v280 + v281 * v156, v330, type metadata accessor for PBPropertyValue);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v377 = sub_1E4693CC0(0, v377[2] + 1, 1, v377);
                        }

                        v283 = v377[2];
                        v282 = v377[3];
                        if (v283 >= v282 >> 1)
                        {
                          v377 = sub_1E4693CC0(v282 > 1, v283 + 1, 1, v377);
                        }

                        v284 = v377;
                        v377[2] = v283 + 1;
                        sub_1E46B8C14(v330, v284 + v280 + v283 * v281, type metadata accessor for PBPropertyValue);
                        if (qword_1ECF740E0 != -1)
                        {
                          swift_once();
                        }

                        v285 = sub_1E470A0DC();
                        sub_1E4665EC4(v285, qword_1ECF75048);
                        v269 = v329;
                        sub_1E46B8BAC(v354, v329, type metadata accessor for PBPropertyBundle);
                        v270 = sub_1E470A0BC();
                        v286 = sub_1E470B29C();
                        if (!os_log_type_enabled(v270, v286))
                        {
                          goto LABEL_124;
                        }

                        v287 = swift_slowAlloc();
                        v328 = v287;
                        v348 = swift_slowAlloc();
                        v379 = v348;
                        *v287 = v365;
                        v288 = sub_1E467ADA8();
                        v290 = v289;
                        sub_1E46B9438(v269, type metadata accessor for PBPropertyBundle);
                        v291 = sub_1E4654D04(v288, v290, &v379);

                        v292 = v328;
                        *(v328 + 1) = v291;
                        _os_log_impl(&dword_1E45E0000, v270, v286, "Taking on cloud property value %s instead of the local version", v292, 0xCu);
                        v293 = v348;
                        sub_1E4658A0C(v348);
                        MEMORY[0x1E6917530](v293, -1, -1);
                        v279 = v292;
LABEL_123:
                        MEMORY[0x1E6917530](v279, -1, -1);

                        goto LABEL_125;
                      }

                      goto LABEL_165;
                    }

                    if ((v241 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {

                    if ((v241 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_151;
                    }
                  }

                  v156 = *v373;
                  if (v241 >= *(*v373 + 16))
                  {
                    goto LABEL_152;
                  }

                  v248 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v249 = *(v367 + 72);
                  sub_1E46B8BAC(v156 + v248 + v249 * v241, v113, type metadata accessor for PBPropertyValue);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v377 = sub_1E4693CC0(0, v377[2] + 1, 1, v377);
                  }

                  v251 = v377[2];
                  v250 = v377[3];
                  if (v251 >= v250 >> 1)
                  {
                    v377 = sub_1E4693CC0(v250 > 1, v251 + 1, 1, v377);
                  }

                  v252 = v377;
                  v377[2] = v251 + 1;
                  sub_1E46B8C14(v113, v252 + v248 + v251 * v249, type metadata accessor for PBPropertyValue);
                  if (qword_1ECF740E0 != -1)
                  {
                    swift_once();
                  }

                  v253 = sub_1E470A0DC();
                  sub_1E4665EC4(v253, qword_1ECF75048);
                  sub_1E46B8BAC(v373, v115, type metadata accessor for PBPropertyBundle);
                  v254 = sub_1E470A0BC();
                  v255 = sub_1E470B29C();
                  if (os_log_type_enabled(v254, v255))
                  {
                    v256 = swift_slowAlloc();
                    v257 = swift_slowAlloc();
                    v379 = v257;
                    *v256 = v365;
                    v258 = sub_1E467ADA8();
                    v260 = v259;
                    sub_1E46B9438(v369, type metadata accessor for PBPropertyBundle);
                    v261 = sub_1E4654D04(v258, v260, &v379);
                    v115 = v369;

                    *(v256 + 4) = v261;
                    _os_log_impl(&dword_1E45E0000, v254, v255, "Keeping property bundle %s unchanged", v256, 0xCu);
                    sub_1E4658A0C(v257);
                    v262 = v257;
                    v113 = v353;
                    MEMORY[0x1E6917530](v262, -1, -1);
                    MEMORY[0x1E6917530](v256, -1, -1);
                  }

                  else
                  {

                    sub_1E46B9438(v115, type metadata accessor for PBPropertyBundle);
                  }

                  v230 = v368;
                }

                else if (*(v174 + 16))
                {
                  v245 = sub_1E46553DC(v237, v236);
                  v247 = v246;

                  if (v247)
                  {
                    v156 = *(*(v174 + 56) + 8 * v245);
                    if ((v156 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_162;
                    }

                    if (v156 < *(*v354 + 16))
                    {
                      v263 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                      v264 = *(v367 + 72);
                      sub_1E46B8BAC(*v354 + v263 + v264 * v156, v333, type metadata accessor for PBPropertyValue);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v377 = sub_1E4693CC0(0, v377[2] + 1, 1, v377);
                      }

                      v266 = v377[2];
                      v265 = v377[3];
                      if (v266 >= v265 >> 1)
                      {
                        v377 = sub_1E4693CC0(v265 > 1, v266 + 1, 1, v377);
                      }

                      v267 = v377;
                      v377[2] = v266 + 1;
                      sub_1E46B8C14(v333, v267 + v263 + v266 * v264, type metadata accessor for PBPropertyValue);
                      if (qword_1ECF740E0 != -1)
                      {
                        swift_once();
                      }

                      v268 = sub_1E470A0DC();
                      sub_1E4665EC4(v268, qword_1ECF75048);
                      v269 = v331;
                      sub_1E46B8BAC(v354, v331, type metadata accessor for PBPropertyBundle);
                      v270 = sub_1E470A0BC();
                      v271 = sub_1E470B29C();
                      if (os_log_type_enabled(v270, v271))
                      {
                        v272 = swift_slowAlloc();
                        v273 = swift_slowAlloc();
                        v379 = v273;
                        *v272 = v365;
                        v274 = sub_1E467ADA8();
                        v276 = v275;
                        sub_1E46B9438(v269, type metadata accessor for PBPropertyBundle);
                        v277 = sub_1E4654D04(v274, v276, &v379);
                        v113 = v353;

                        *(v272 + 4) = v277;
                        _os_log_impl(&dword_1E45E0000, v270, v271, "Taking on cloud property value %s", v272, 0xCu);
                        sub_1E4658A0C(v273);
                        v278 = v273;
                        v115 = v369;
                        MEMORY[0x1E6917530](v278, -1, -1);
                        v279 = v272;
                        goto LABEL_123;
                      }

LABEL_124:

                      sub_1E46B9438(v269, type metadata accessor for PBPropertyBundle);
LABEL_125:
                      v230 = v368;
                      v232 = 1;
                      v234 = v332;
                      if (v375 + v233)
                      {
                        goto LABEL_78;
                      }

                      LODWORD(v348) = 1;
LABEL_128:
                      v294 = MEMORY[0x1E69E7CC0];
                      goto LABEL_130;
                    }

                    goto LABEL_163;
                  }
                }

                else
                {
                }

                ++v233;
                v235 += 2;
                if (v375 + v233 == 1)
                {

                  goto LABEL_128;
                }
              }
            }

            LODWORD(v348) = 0;
            v294 = MEMORY[0x1E69E7CC0];
            v377 = MEMORY[0x1E69E7CC0];
LABEL_130:

            v295 = v340;
            *v340 = v294;
            *(v295 + 1) = v294;
            v296 = v341;
            v297 = &v295[*(v341 + 24)];
            _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
            v298 = *v347;
            v299 = v343;
            (*v347)(&v295[*(v296 + 28)], 1, 1, v343);
            v300 = v344;
            sub_1E465E0B0(v354 + *(v296 + 28), v344, &qword_1ECF74A28, &unk_1E471E790);
            v301 = *v339;
            v302 = (*v339)(v300, 1, v299);
            v303 = v342;
            if (v302 == 1)
            {
              *v342 = 0;
              v303[1] = 0;
              v303[2] = 0;
              v303[3] = 0xE000000000000000;
              v303[4] = 0;
              v304 = v303 + *(v299 + 32);
              _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
              v305 = v301(v300, 1, v299);
              v153 = v362;
              if (v305 != 1)
              {
                sub_1E465E050(v300, &qword_1ECF74A28, &unk_1E471E790);
              }
            }

            else
            {
              sub_1E46B8C14(v300, v342, type metadata accessor for PBPropertyConfiguration);
              v153 = v362;
            }

            swift_beginAccess();
            v306 = *(v296 + 28);
            sub_1E465E050(&v295[v306], &qword_1ECF74A28, &unk_1E471E790);
            sub_1E46B8C14(v303, &v295[v306], type metadata accessor for PBPropertyConfiguration);
            v298(&v295[v306], 0, 1, v299);
            *v295 = v377;

            sub_1E46B8BAC(v295, v349, type metadata accessor for PBPropertyBundle);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v374 = sub_1E4693C98(0, v374[2] + 1, 1, v374);
            }

            v307 = v346;
            v308 = v345;
            v310 = v374[2];
            v309 = v374[3];
            if (v310 >= v309 >> 1)
            {
              v374 = sub_1E4693C98(v309 > 1, v310 + 1, 1, v374);
            }

            v311 = v374;
            v374[2] = v310 + 1;
            sub_1E46B8C14(v349, v311 + v307 + v310 * v308, type metadata accessor for PBPropertyBundle);
            *v366 = v311;
            if (qword_1ECF740E0 != -1)
            {
              swift_once();
            }

            v312 = sub_1E470A0DC();
            sub_1E4665EC4(v312, qword_1ECF75048);
            v313 = sub_1E470A0BC();
            v314 = sub_1E470B29C();
            v315 = os_log_type_enabled(v313, v314);
            v316 = v358;
            if (v315)
            {
              v317 = swift_slowAlloc();
              v318 = swift_slowAlloc();
              v379 = v318;
              *v317 = v365;
              v319 = sub_1E467ADA8();
              v321 = v295;
              v322 = sub_1E4654D04(v319, v320, &v379);

              *(v317 + 4) = v322;

              _os_log_impl(&dword_1E45E0000, v313, v314, "Merged property bundle %s", v317, 0xCu);
              sub_1E4658A0C(v318);
              MEMORY[0x1E6917530](v318, -1, -1);
              MEMORY[0x1E6917530](v317, -1, -1);

              v154 = v360;
            }

            else
            {

              v154 = v360;
              v321 = v295;
            }

            v114 = v359;
            v141 = v361;
            v155 = v376;
            LODWORD(v358) = v316 | v348;
            sub_1E46B9438(v354, type metadata accessor for PBPropertyBundle);
            sub_1E46B9438(v373, type metadata accessor for PBPropertyBundle);
            sub_1E46B9438(v321, type metadata accessor for PBPropertyBundle);
            v115 = v369;
            goto LABEL_34;
          }
        }

        if ((v163 & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        v156 = *v154;
        if (v163 >= *(*v154 + 16))
        {
          goto LABEL_156;
        }

        v208 = (*(v363 + 80) + 32) & ~*(v363 + 80);
        v209 = *(v363 + 72);
        sub_1E46B8BAC(v156 + v208 + v209 * v163, v114, type metadata accessor for PBPropertyBundle);
        v210 = v114;
        sub_1E46B8BAC(v114, v356, type metadata accessor for PBPropertyBundle);
        v211 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v374 = sub_1E4693C98(0, v374[2] + 1, 1, v374);
        }

        v212 = v154;
        v214 = v374[2];
        v213 = v374[3];
        v215 = v113;
        if (v214 >= v213 >> 1)
        {
          v374 = sub_1E4693C98(v213 > 1, v214 + 1, 1, v374);
        }

        v216 = v374;
        v374[2] = v214 + 1;
        sub_1E46B8C14(v356, v216 + v208 + v214 * v209, type metadata accessor for PBPropertyBundle);
        *v366 = v216;
        if (qword_1ECF740E0 != -1)
        {
          swift_once();
        }

        v217 = sub_1E470A0DC();
        sub_1E4665EC4(v217, qword_1ECF75048);
        v218 = v351;
        sub_1E46B8BAC(v210, v351, type metadata accessor for PBPropertyBundle);
        v219 = sub_1E470A0BC();
        v220 = sub_1E470B29C();
        v113 = v215;
        if (!os_log_type_enabled(v219, v220))
        {

          sub_1E46B9438(v218, type metadata accessor for PBPropertyBundle);
          sub_1E46B9438(v210, type metadata accessor for PBPropertyBundle);
          v141 = v361;
          v155 = v376;
          v154 = v212;
          v115 = v211;
          v114 = v210;
LABEL_34:
          if (v155 == v371)
          {
            goto LABEL_144;
          }

          goto LABEL_35;
        }

        v221 = v218;
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v379 = v223;
        *v222 = v365;
        v224 = sub_1E467ADA8();
        v226 = v225;
        v227 = v221;
        v115 = v369;
        sub_1E46B9438(v227, type metadata accessor for PBPropertyBundle);
        v228 = sub_1E4654D04(v224, v226, &v379);

        *(v222 + 4) = v228;
        _os_log_impl(&dword_1E45E0000, v219, v220, "Keeping local property bundle %s unchanged", v222, 0xCu);
        sub_1E4658A0C(v223);
        MEMORY[0x1E6917530](v223, -1, -1);
        MEMORY[0x1E6917530](v222, -1, -1);

        v114 = v359;
        v154 = v360;
        sub_1E46B9438(v359, type metadata accessor for PBPropertyBundle);
        v141 = v361;
LABEL_33:
        v155 = v376;
        goto LABEL_34;
      }
    }

    v181 = v372;
    if (!*(v372 + 16))
    {

      goto LABEL_33;
    }

    v182 = sub_1E46553DC(v159, v158);
    v184 = v183;

    if ((v184 & 1) == 0)
    {
      v153 = v362;
      goto LABEL_33;
    }

    v156 = *(*(v181 + 56) + 8 * v182);
    if ((v156 & 0x8000000000000000) != 0)
    {
      goto LABEL_153;
    }

    if (v156 >= *(*v355 + 16))
    {
      goto LABEL_155;
    }

    v185 = (*(v363 + 80) + 32) & ~*(v363 + 80);
    v186 = *(v363 + 72);
    v187 = v364;
    sub_1E46B8BAC(*v355 + v185 + v186 * v156, v364, type metadata accessor for PBPropertyBundle);
    sub_1E46B8BAC(v187, v357, type metadata accessor for PBPropertyBundle);
    v188 = v115;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v374 = sub_1E4693C98(0, v374[2] + 1, 1, v374);
    }

    v189 = v154;
    v191 = v374[2];
    v190 = v374[3];
    v192 = v113;
    if (v191 >= v190 >> 1)
    {
      v374 = sub_1E4693C98(v190 > 1, v191 + 1, 1, v374);
    }

    v193 = v374;
    v374[2] = v191 + 1;
    sub_1E46B8C14(v357, v193 + v185 + v191 * v186, type metadata accessor for PBPropertyBundle);
    *v366 = v193;
    if (qword_1ECF740E0 != -1)
    {
      swift_once();
    }

    v194 = sub_1E470A0DC();
    sub_1E4665EC4(v194, qword_1ECF75048);
    v195 = v364;
    v196 = v352;
    sub_1E46B8BAC(v364, v352, type metadata accessor for PBPropertyBundle);
    v197 = sub_1E470A0BC();
    v198 = sub_1E470B29C();
    v199 = v192;
    if (os_log_type_enabled(v197, v198))
    {
      v200 = v196;
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v379 = v202;
      *v201 = v365;
      v203 = sub_1E467ADA8();
      v205 = v204;
      sub_1E46B9438(v200, type metadata accessor for PBPropertyBundle);
      v206 = v203;
      v115 = v369;
      v207 = sub_1E4654D04(v206, v205, &v379);

      *(v201 + 4) = v207;
      _os_log_impl(&dword_1E45E0000, v197, v198, "Taking on cloud property bundle %s", v201, 0xCu);
      sub_1E4658A0C(v202);
      MEMORY[0x1E6917530](v202, -1, -1);
      MEMORY[0x1E6917530](v201, -1, -1);

      v114 = v359;
      v154 = v360;
      sub_1E46B9438(v364, type metadata accessor for PBPropertyBundle);
      v141 = v361;
      v155 = v376;
    }

    else
    {

      sub_1E46B9438(v196, type metadata accessor for PBPropertyBundle);
      sub_1E46B9438(v195, type metadata accessor for PBPropertyBundle);
      v141 = v361;
      v155 = v376;
      v154 = v189;
      v115 = v188;
    }

    if (v155 == v371)
    {

      v324 = v338;
      goto LABEL_147;
    }

    v113 = v199;
    LODWORD(v358) = 1;
    v153 = v362;
LABEL_35:
    v156 = *(v153 + 2);
  }

  while (v155 < v156);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:

  __break(1u);
  return result;
}

uint64_t sub_1E46B6E28(uint64_t *a1)
{
  v2 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for PBPropertyConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for PBPropertyBundle(0);
  v13 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[2] = MEMORY[0x1E69E7CD0];
  v18 = *a1;
  v34 = *(*a1 + 16);
  if (!v34)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v19 = 0;
  v20 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v32 = *(v15 + 72);
  v21 = MEMORY[0x1E69E7CC8];
  v22 = (v8 + 48);
  v33 = v7;
  v31 = (v8 + 48);
  do
  {
    sub_1E46B8BAC(v20, v17, type metadata accessor for PBPropertyBundle);
    sub_1E465E0B0(&v17[*(v35 + 28)], v6, &qword_1ECF74A28, &unk_1E471E790);
    v28 = *v22;
    if ((*v22)(v6, 1, v7) == 1)
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0xE000000000000000;
      v12[4] = 0;
      v29 = v12 + *(v7 + 32);
      _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
      sub_1E46B9438(v17, type metadata accessor for PBPropertyBundle);
      if (v28(v6, 1, v7) != 1)
      {
        sub_1E465E050(v6, &qword_1ECF74A28, &unk_1E471E790);
      }
    }

    else
    {
      sub_1E46B9438(v17, type metadata accessor for PBPropertyBundle);
      sub_1E46B8C14(v6, v12, type metadata accessor for PBPropertyConfiguration);
    }

    v23 = v6;
    v25 = v12[2];
    v24 = v12[3];

    sub_1E46B9438(v12, type metadata accessor for PBPropertyConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v21;
    sub_1E46C7500(v19, v25, v24, isUniquelyReferenced_nonNull_native);
    v21 = v36[0];
    v27 = v24;
    v6 = v23;
    sub_1E46C8108(v36, v25, v27);

    v7 = v33;
    v20 += v32;
    ++v19;
    v22 = v31;
  }

  while (v34 != v19);
  return v21;
}

uint64_t sub_1E46B71BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1E46C8108(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46B72C0(uint64_t *a1)
{
  v58 = sub_1E4709C4C();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v58, v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E4709CCC();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56, v8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v47 - v13;
  v15 = sub_1E4709E7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PBPropertyValue(0);
  v21 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59, v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1E69E7CD0];
  v26 = *a1;
  v54 = *(*a1 + 16);
  if (!v54)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v27 = 0;
  v28 = v6;
  v29 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v52 = *(v23 + 72);
  v30 = (v16 + 48);
  v49 = (v2 + 8);
  v50 = (v16 + 8);
  v47 = (v16 + 32);
  v48 = (v28 + 8);
  v31 = MEMORY[0x1E69E7CC8];
  v51 = v30;
  v53 = v14;
  do
  {
    sub_1E46B8BAC(v29, v25, type metadata accessor for PBPropertyValue);
    sub_1E465E0B0(&v25[*(v59 + 28)], v14, &qword_1ECF74A38, &unk_1E471EB00);
    v35 = *v30;
    if ((*v30)(v14, 1, v15) == 1)
    {
      sub_1E4709E6C();
      if (v35(v14, 1, v15) != 1)
      {
        sub_1E465E050(v14, &qword_1ECF74A38, &unk_1E471EB00);
      }
    }

    else
    {
      (*v47)(v20, v14, v15);
    }

    v36 = v55;
    sub_1E4709E5C();
    v37 = v20;
    v38 = v15;
    v39 = (*v50)(v20, v15);
    v40 = v57;
    MEMORY[0x1E6914630](v39);
    sub_1E46B8C7C(&unk_1ECF75080, MEMORY[0x1E69693A0]);
    v41 = v58;
    sub_1E4709CAC();
    (*v49)(v40, v41);
    (*v48)(v36, v56);
    v43 = v60;
    v42 = v61;
    v44 = &v25[*(v59 + 32)];
    v45 = v44[1];
    if (v45)
    {
      v60 = *v44;
      v61 = v45;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1E6915D10](124, 0xE100000000000000);

      MEMORY[0x1E6915D10](v43, v42);
    }

    else
    {
      v60 = 124;
      v61 = 0xE100000000000000;
      MEMORY[0x1E6915D10](v43, v42);
    }

    v32 = v60;
    v33 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v31;
    sub_1E46C7500(v27, v32, v33, isUniquelyReferenced_nonNull_native);
    v31 = v60;
    sub_1E46C8108(&v60, v32, v33);

    sub_1E46B9438(v25, type metadata accessor for PBPropertyValue);
    v29 += v52;
    ++v27;
    v15 = v38;
    v20 = v37;
    v14 = v53;
    v30 = v51;
  }

  while (v54 != v27);
  return v31;
}

id SecureEngagementDataHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureEngagementDataHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SecureEngagementDataHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_1E46B79B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(&qword_1ECF74C00, &unk_1E471D880);
  v4 = *(sub_1E4709CCC() - 8);
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

void *sub_1E46B7AC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1E46B7B44(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1E46B7BCC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E470B80C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E470B0EC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E46B7D94(v7, v8, a1, v4);
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
    return sub_1E46B7CC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E46B7CC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1E470B84C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E46B7D94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E46B8624(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1E46B8370((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1E470B84C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E470B84C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4693950(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1E4693950((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1E46B8370((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E46B8624(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1E46B8598(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1E470B84C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E46B8370(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1E470B84C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1E470B84C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1E46B8598(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E46B8624(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1E46B86B0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1E46B87B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_1E4709CCC();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43, v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  v42 = &v36 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 64;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43, v13);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1E46B8A54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E46B8BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46B8C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46B8C7C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E46B8CC4(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1E470B4FC();
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  sub_1E46B93D0();
  result = sub_1E470B18C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1E470B52C())
      {
        goto LABEL_30;
      }

      sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1E46B8EE0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_22:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v14 = 0;
    a3 = 0;
    goto LABEL_33;
  }

  result = sub_1E470B67C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!a3)
  {
    v14 = 0;
    goto LABEL_33;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1E470B6AC())
      {
        goto LABEL_32;
      }

      swift_unknownObjectRelease();
      sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
      swift_dynamicCast();
      result = v24;
      v14 = v11;
      if (!v24)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (!v10)
    {
      break;
    }

    v14 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v14 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_33;
    }

LABEL_18:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_32:
      v14 = v11;
      goto LABEL_33;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v14);
    ++v15;
    if (v10)
    {
      v11 = v14;
      goto LABEL_17;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v14 = v21 - 1;
LABEL_33:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v14;
  v7[4] = v10;
  return a3;
}

BOOL _s13BookDataStore016SecureEngagementB6HelperC7isEmpty9timeSliceSb10Foundation0B0V_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E4709ECC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = type metadata accessor for PBPropertyTimeSlice(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 0;
  memset(&v15[16], 0, 32);
  sub_1E46552AC(a1, a2);
  sub_1E4709EBC();
  sub_1E46B8C7C(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice);
  sub_1E4709FBC();
  v12 = *v11;

  sub_1E46B9438(v11, type metadata accessor for PBPropertyTimeSlice);
  v13 = *(v12 + 16);

  return v13 == 0;
}

unint64_t sub_1E46B93D0()
{
  result = qword_1ECF75310;
  if (!qword_1ECF75310)
  {
    sub_1E45E2DE8(255, &unk_1ECF75C30, 0x1E695BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75310);
  }

  return result;
}

uint64_t sub_1E46B9438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E46B94C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1E4650534(&qword_1ECF74368, &qword_1E471B1E0);
    v2 = sub_1E470B70C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);

        v21 = v20;
        result = sub_1E46553DC(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v21;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1E46B96A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1E4650534(&qword_1ECF75240, &qword_1E471E878);
    v2 = sub_1E470B70C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_1E46588B4(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        swift_dynamicCast();
        sub_1E46BAC64(&v24, v26);
        sub_1E46BAC64(v26, v27);
        sub_1E46BAC64(v27, &v25);
        result = sub_1E46553DC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1E4658A0C(v12);
          result = sub_1E46BAC64(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1E46BAC64(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E46B9910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1E4650534(&unk_1ECF75250, qword_1E471E888);
    v2 = sub_1E470B70C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E4658ABC(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1E46BAC64(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1E46BAC64(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1E46BAC64(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1E470B54C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1E46BAC64(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E46B9BD8()
{
  v0 = sub_1E470A0DC();
  sub_1E4665F64(v0, qword_1ECF7B610);
  sub_1E4665EC4(v0, qword_1ECF7B610);
  type metadata accessor for CloudSecureManagerProxy();
  sub_1E4650534(&qword_1ECF75248, &qword_1E471E880);
  sub_1E470AF6C();
  return sub_1E470A0CC();
}

void sub_1E46B9CB0(uint64_t a1)
{
  sub_1E46B9910(a1);
  v1 = sub_1E470AE2C();

  oslog = [objc_opt_self() notificationFromRemoteNotificationDictionary_];

  if (oslog)
  {
    sub_1E46B9F18(oslog);
  }

  else
  {
    if (qword_1ECF740E8 != -1)
    {
      swift_once();
    }

    v2 = sub_1E470A0DC();
    sub_1E4665EC4(v2, qword_1ECF7B610);

    oslog = sub_1E470A0BC();
    v3 = sub_1E470B2AC();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      v6 = sub_1E470AE4C();
      v8 = sub_1E4654D04(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1E45E0000, oslog, v3, "CloudSecureManagerService cannot handle notification with userInfo %s", v4, 0xCu);
      sub_1E4658A0C(v5);
      MEMORY[0x1E6917530](v5, -1, -1);
      MEMORY[0x1E6917530](v4, -1, -1);
    }
  }
}

void sub_1E46B9F18(void *a1)
{
  v2 = v1;
  sub_1E470B2DC();
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy);
    oslog = sub_1E470AF0C();

    [v5 signalFetchChangesTransaction_];
  }

  else
  {
    if (qword_1ECF740E8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E470A0DC();
    sub_1E4665EC4(v6, qword_1ECF7B610);
    v7 = a1;
    oslog = sub_1E470A0BC();
    v8 = sub_1E470B2AC();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      _os_log_impl(&dword_1E45E0000, oslog, v8, "CloudSecureManagerService cannot handle notification %@ with no subscriptionID", v9, 0xCu);
      sub_1E46BA998(v10);
      MEMORY[0x1E6917530](v10, -1, -1);
      MEMORY[0x1E6917530](v9, -1, -1);
    }
  }
}

uint64_t sub_1E46BA1A0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1E46BA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E46BA260(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E46BA2B4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t static CloudSecureManagerProxy.shared.getter()
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static CloudSecureManagerProxy.shared.setter(uint64_t a1)
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2AD5A0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*static CloudSecureManagerProxy.shared.modify())()
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E46BA580@<X0>(void *a1@<X8>)
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EE2AD5A0;
  return swift_unknownObjectRetain();
}

uint64_t sub_1E46BA600(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EE2AD590;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2AD5A0 = v1;
  return swift_unknownObjectRelease();
}

id CloudSecureManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSecureManagerProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CloudSecureManagerProxy.dissociateCloudDataFromSync(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy);
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1E46BA7E4;
    v5[3] = &unk_1F5E65B28;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 dissociateCloudDataFromSyncWithCompletion_];
  _Block_release(v4);
}

void sub_1E46BA7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1E46BA998(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E46BAA00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E46BAA18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

_OWORD *sub_1E46BAC64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E46BAC7C()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4665F64(v4, qword_1ECF75260);
  sub_1E4665EC4(v0, qword_1ECF75260);
  v7 = [objc_opt_self() books];
  v8 = [v7 containerURL];

  sub_1E4709B7C();
  sub_1E4709B5C();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1E46BADD8()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4665F64(v4, qword_1ECF75278);
  sub_1E4665EC4(v0, qword_1ECF75278);
  if (qword_1ECF740F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1E4665EC4(v0, qword_1ECF75260);
  (*(v1 + 16))(v6, v7, v0);
  sub_1E4709B6C();
  return (*(v1 + 8))(v6, v0);
}

uint64_t CRDTModelSyncMapper.__allocating_init()()
{
  v0 = swift_allocObject();
  CRDTModelSyncMapper.init()();
  return v0;
}

uint64_t CRDTModelSyncMapper.init()()
{
  v1 = v0;
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  if (qword_1ECF74100 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4709B9C();
  sub_1E4665EC4(v3, qword_1ECF75278);
  v4 = sub_1E4709B4C();
  v19[0] = 0;
  v5 = [v2 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:v19];

  if (v5)
  {
    v6 = v19[0];
  }

  else
  {
    v7 = v19[0];
    v8 = sub_1E4709B0C();

    swift_willThrow();
    sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E471B800;
    v10 = sub_1E4709B1C();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1E4663DE4();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    swift_getErrorValue();
    v15 = sub_1E470B89C();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    sub_1E470A0AC();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1E46BB1A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E470AF5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a1 + 8))(ObjectType, a1);
  sub_1E470AF4C();
  v11 = sub_1E470AF2C();
  v13 = v12;

  (*(v5 + 8))(v9, v4);
  if (v13 >> 60 == 15)
  {
LABEL_13:
    sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    sub_1E470A0AC();
    v19 = sub_1E4709B9C();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
    if (v11 == v11 >> 32)
    {
LABEL_12:
      sub_1E465DDA0(v11, v13);
      goto LABEL_13;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_1E4709BCC();
  v16 = [v15 bu_md5];

  sub_1E470AF1C();
  if (qword_1ECF74100 != -1)
  {
    swift_once();
  }

  v17 = sub_1E4709B9C();
  sub_1E4665EC4(v17, qword_1ECF75278);
  sub_1E4709B6C();
  sub_1E465DDA0(v11, v13);

  return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
}

id sub_1E46BB4F0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v5 = a3;

  v6 = a4(v5);

  return v6;
}

char *_s13BookDataStore19CRDTModelSyncMapperC05cloudB04fromSo014BCMutableCloudB0CSgSo8CKRecordC_tF_0(void *a1)
{
  v2 = sub_1E4709CCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4709B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v38 - v17;
  v19 = MEMORY[0x1E6916100](0x7079546C65646F6DLL, 0xE900000000000065, v16);
  if (!v19)
  {
    goto LABEL_10;
  }

  v44 = v19;
  sub_1E4650534(&unk_1ECF75298, &qword_1E471E8D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = v43;
  v41 = v42;
  if (!MEMORY[0x1E6916100](0x7461446F746F7270, 0xE900000000000061))
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = [v21 fileURL];
    if (v22)
    {
      v40 = v20;
      v23 = v22;
      sub_1E4709B7C();

      (*(v9 + 32))(v18, v13, v8);
      v25 = sub_1E4709BAC();
      v39 = v26;
      v27 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) init];
      [v27 setSystemFields_];
      v28 = [a1 modificationDate];
      if (v28)
      {
        v29 = v28;
        sub_1E4709C9C();

        v30 = sub_1E4709C5C();
        (*(v3 + 8))(v7, v2);
      }

      else
      {
        v30 = 0;
      }

      [v27 setModificationDate_];

      swift_unknownObjectRelease();
      (*(v9 + 8))(v18, v8);
      v31 = &v27[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
      v32 = *&v27[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8];
      v33 = v40;
      *v31 = v41;
      *(v31 + 1) = v33;

      v34 = &v27[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v35 = *&v27[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v36 = *&v27[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
      v37 = v39;
      *v34 = v25;
      v34[1] = v37;
      sub_1E465DDA0(v35, v36);

      return v27;
    }

    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_10:
  sub_1E470B2AC();
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  sub_1E470A0AC();
  return 0;
}

id _s13BookDataStore19CRDTModelSyncMapperC6record4fromSo8CKRecordCSgSo014BCMutableCloudB0C_tF_0(void *a1)
{
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v32 - v5;
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 systemFields];
  if (v14)
  {
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15 && a1)
    {
      v16 = v15;
      ObjectType = swift_getObjectType();
      v18 = a1;
      v19 = [v18 identifier];
      if (v19)
      {
        v20 = v19;
        [objc_msgSend(v14 encryptedValuesByKey)];

        swift_unknownObjectRelease();
      }

      v21 = (*(v16 + 8))(ObjectType, v16);
      v32[12] = MEMORY[0x1E69E6158];
      v32[13] = MEMORY[0x1E695B6F0];
      v32[9] = v21;
      v32[10] = v22;
      sub_1E46BBED4();
      sub_1E470B3BC();
      type metadata accessor for CRDTModelSyncMapper();
      sub_1E46BB1A8(v16, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1E46BBF20(v6);
      }

      else
      {
        (*(v8 + 32))(v13, v6, v7);
        v24 = (*(v16 + 16))(ObjectType, v16);
        if (v25 >> 60 == 15)
        {
          (*(v8 + 8))(v13, v7);
        }

        else
        {
          v26 = v24;
          v27 = v25;
          sub_1E4709BEC();
          v28 = objc_allocWithZone(MEMORY[0x1E695B878]);
          v29 = sub_1E4709B4C();
          v30 = [v28 initWithFileURL_];

          v31 = v30;
          sub_1E470B3FC();
          sub_1E465DDA0(v26, v27);

          (*(v8 + 8))(v13, v7);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v14;
}

unint64_t sub_1E46BBED4()
{
  result = qword_1ECF75290;
  if (!qword_1ECF75290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF75290);
  }

  return result;
}

uint64_t sub_1E46BBF20(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E46BBF88(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1E46585B4(a1, v15);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v6 = v16;
    v7 = sub_1E4679A94(v15, v16);
    v8 = *(*(v6 - 8) + 64);
    v9 = MEMORY[0x1EEE9AC00](v7, v7);
    v11 = (&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    sub_1E46C9F54(*v11, a2, isUniquelyReferenced_nonNull_native, &v14);

    result = sub_1E4658A0C(v15);
    *v2 = v14;
  }

  else
  {
    sub_1E465E050(a1, &unk_1ECF75468, &qword_1E471EA78);
    sub_1E46FF81C(a2, v15);

    return sub_1E465E050(v15, &unk_1ECF75468, &qword_1E471EA78);
  }

  return result;
}

void sub_1E46BC0EC()
{
  v0 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v43 - v3;
  v5 = sub_1E4709B9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1E4672BE8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E465E050(v4, &qword_1ECF754C0, &unk_1E471BA10);
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E470A0DC();
    sub_1E4665EC4(v19, qword_1ECF74960);
    v20 = sub_1E470A0BC();
    v21 = sub_1E470B2AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E45E0000, v20, v21, "Could not save metadata. No BaseURL", v22, 2u);
      MEMORY[0x1E6917530](v22, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v18, v4, v5);
    sub_1E4709B6C();
    v23 = sub_1E470997C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_1E470996C();
    type metadata accessor for BDSSyncEngineStateMetadata();
    sub_1E46D01D4(&qword_1ECF754C8, type metadata accessor for BDSSyncEngineStateMetadata);
    v26 = sub_1E470995C();
    v28 = v27;

    sub_1E4709BEC();
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v29 = sub_1E470A0DC();
    sub_1E4665EC4(v29, qword_1ECF74960);
    (*(v6 + 16))(v10, v14, v5);
    v30 = sub_1E470A0BC();
    v31 = sub_1E470B2CC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = v32;
      v45 = swift_slowAlloc();
      v47 = v45;
      *v32 = 136315138;
      sub_1E46D01D4(&qword_1ECF754D0, MEMORY[0x1E6968FB0]);
      v43 = v30;
      v33 = sub_1E470B81C();
      v35 = v34;
      v46 = v28;
      v36 = *(v6 + 8);
      v36(v10, v5);
      v37 = sub_1E4654D04(v33, v35, &v47);

      v39 = v43;
      v38 = v44;
      *(v44 + 1) = v37;
      v40 = v38;
      _os_log_impl(&dword_1E45E0000, v39, v31, "Saved sync engine metadata at: %s", v38, 0xCu);
      v41 = v45;
      sub_1E4658A0C(v45);
      MEMORY[0x1E6917530](v41, -1, -1);
      MEMORY[0x1E6917530](v40, -1, -1);
      sub_1E465746C(v26, v46);

      v36(v14, v5);
      v36(v18, v5);
    }

    else
    {
      sub_1E465746C(v26, v28);

      v42 = *(v6 + 8);
      v42(v10, v5);
      v42(v14, v5);
      v42(v18, v5);
    }
  }
}

uint64_t sub_1E46BC85C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v54 - v4;
  v6 = sub_1E4709B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - v20;
  v58 = type metadata accessor for BDSSyncEngineStateMetadata();
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1E4672BE8(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E465E050(v5, &qword_1ECF754C0, &unk_1E471BA10);
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E470A0DC();
    sub_1E4665EC4(v22, qword_1ECF74960);
    v23 = sub_1E470A0BC();
    v24 = sub_1E470B2AC();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v58;
    v26 = v59;
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E45E0000, v23, v24, "Could not get metadata. No BaseURL", v28, 2u);
      MEMORY[0x1E6917530](v28, -1, -1);
    }

    v29 = 1;
  }

  else
  {
    v57 = v7;
    (*(v7 + 32))(v21, v5, v6);
    sub_1E4709B6C();
    v30 = [objc_opt_self() defaultManager];
    sub_1E4709B8C();
    v31 = sub_1E470AF0C();

    v32 = [v30 fileExistsAtPath_];

    if (v32)
    {
      v56 = v21;
      v33 = sub_1E4709BAC();
      v26 = v59;
      v46 = v33;
      v48 = v47;
      v49 = sub_1E470994C();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      sub_1E470993C();
      sub_1E46D01D4(&qword_1ECF754E0, type metadata accessor for BDSSyncEngineStateMetadata);
      v27 = v58;
      sub_1E470992C();

      sub_1E465746C(v46, v48);
      v53 = *(v57 + 8);
      v53(v17, v6);
      v53(v56, v6);
      v29 = 0;
    }

    else
    {
      v26 = v59;
      if (qword_1ECF740B8 != -1)
      {
        swift_once();
      }

      v34 = sub_1E470A0DC();
      sub_1E4665EC4(v34, qword_1ECF74960);
      v35 = v57;
      (*(v57 + 16))(v13, v17, v6);
      v36 = sub_1E470A0BC();
      v37 = sub_1E470B2AC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v60 = v55;
        *v38 = 136315138;
        sub_1E46D01D4(&qword_1ECF754D0, MEMORY[0x1E6968FB0]);
        v39 = sub_1E470B81C();
        v41 = v40;
        v56 = v21;
        v42 = *(v35 + 8);
        v42(v13, v6);
        v43 = sub_1E4654D04(v39, v41, &v60);
        v26 = v59;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1E45E0000, v36, v37, "Could not locate metadata file at %s", v38, 0xCu);
        v44 = v55;
        sub_1E4658A0C(v55);
        MEMORY[0x1E6917530](v44, -1, -1);
        MEMORY[0x1E6917530](v38, -1, -1);

        v42(v17, v6);
        v42(v56, v6);
      }

      else
      {

        v45 = *(v35 + 8);
        v45(v13, v6);
        v45(v17, v6);
        v45(v21, v6);
      }

      v29 = 1;
      v27 = v58;
    }
  }

  return (*(*(v27 - 8) + 56))(v26, v29, 1, v27);
}

id sub_1E46BD24C()
{
  result = [objc_allocWithZone(type metadata accessor for BDSSyncEngine()) init];
  qword_1EE2AE3F0 = result;
  return result;
}

id BDSSyncEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BDSSyncEngine.shared.getter()
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2AE3F0;

  return v1;
}

Swift::Void __swiftcall BDSSyncEngine.setDatabase(_:config:)(CKDatabase _, BCCloudKitConfiguration *config)
{
  v3 = v2;
  v62 = config;
  v63 = sub_1E470A1DC();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v63, v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v61 - v12;
  v14 = sub_1E4650534(&qword_1ECF752A8, &qword_1E471E900);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v61 - v17;
  v19 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61 - v26;
  v28 = sub_1E470A0BC();
  v29 = sub_1E470B2CC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v61 = v23;
    v31 = v13;
    v32 = v9;
    v33 = v27;
    v34 = v3;
    v35 = v5;
    isa = _.super.isa;
    v37 = v30;
    *v30 = 0;
    _os_log_impl(&dword_1E45E0000, v28, v29, "Setting up CKSyncEngine...", v30, 2u);
    v38 = v37;
    _.super.isa = isa;
    v5 = v35;
    v3 = v34;
    v27 = v33;
    v9 = v32;
    v13 = v31;
    v23 = v61;
    MEMORY[0x1E6917530](v38, -1, -1);
  }

  sub_1E46BC85C(v18);
  v39 = type metadata accessor for BDSSyncEngineStateMetadata();
  if ((*(*(v39 - 8) + 48))(v18, 1, v39) == 1)
  {
    sub_1E465E050(v18, &qword_1ECF752A8, &qword_1E471E900);
    v40 = sub_1E470A53C();
    (*(*(v40 - 8) + 56))(v27, 1, 1, v40);
  }

  else
  {
    sub_1E465E0B0(&v18[*(v39 + 20)], v27, &unk_1ECF752B0, &unk_1E471C280);
    sub_1E4673708(v18);
  }

  sub_1E465E0B0(v27, v23, &unk_1ECF752B0, &unk_1E471C280);
  sub_1E46D01D4(&qword_1ECF752C0, type metadata accessor for BDSSyncEngine);
  v41 = _.super.isa;
  v42 = v3;
  sub_1E470A1CC();
  v43 = *&v42[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_BDSAPSDelegatePort];
  v44 = *&v42[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_BDSAPSDelegatePort + 8];

  sub_1E470A1BC();
  v45 = [(BCCloudKitConfiguration *)v62 dbSubscriptionID];
  if (v45)
  {
    v46 = v45;
    sub_1E470AF1C();
  }

  sub_1E470A1AC();
  v47 = v63;
  (*(v5 + 16))(v9, v13, v63);
  v48 = sub_1E470A58C();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_1E470A59C();
  v52 = *&v42[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine];
  *&v42[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine] = v51;

  sub_1E46BD9E4();
  v53 = [objc_allocWithZone(BDSSyncEngineSaltManager) initWithDatabase:v41 observer:v42];
  v54 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v55 = *&v42[v54];
  *&v42[v54] = v53;

  swift_beginAccess();
  v56 = *&v42[v54];
  if (v56)
  {
    swift_endAccess();
    v57 = swift_allocObject();
    *(v57 + 16) = v42;
    aBlock[4] = sub_1E46BDBC4;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46BDBE0;
    aBlock[3] = &unk_1F5E65BC8;
    v58 = _Block_copy(aBlock);
    v59 = v42;
    v60 = v56;

    [v60 refreshSalt_];
    _Block_release(v58);

    (*(v5 + 8))(v13, v47);
    sub_1E465E050(v27, &unk_1ECF752B0, &unk_1E471C280);
  }

  else
  {
    (*(v5 + 8))(v13, v47);
    sub_1E465E050(v27, &unk_1ECF752B0, &unk_1E471C280);
    swift_endAccess();
  }
}

uint64_t type metadata accessor for BDSSyncEngine()
{
  result = qword_1EE2AE3C8;
  if (!qword_1EE2AE3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E46BD9E4()
{
  if (*(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine))
  {
    v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);

    v2 = sub_1E470A0BC();
    v3 = sub_1E470B2CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - setting hasPendingUntrackedChanges=false", v4, 2u);
      MEMORY[0x1E6917530](v4, -1, -1);
    }

    sub_1E470A57C();
    sub_1E470A55C();
  }

  else
  {
    oslog = sub_1E470A0BC();
    v5 = sub_1E470B2AC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1E4654D04(0xD00000000000001FLL, 0x80000001E4719F30, &v9);
      _os_log_impl(&dword_1E45E0000, oslog, v5, "BDSSyncEngine - %s: syncEngine not initialized", v6, 0xCu);
      sub_1E4658A0C(v7);
      MEMORY[0x1E6917530](v7, -1, -1);
      MEMORY[0x1E6917530](v6, -1, -1);
    }
  }
}

void sub_1E46BDBE0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1E46BDC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BDSSyncEngine.addSaltChangeObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1E46CA1E8(a1, v1);
}

void sub_1E46BDD1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltObservers) addObject_];
    v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 && [v6 establishedSalt] && (v7 = *&v4[v5]) != 0 && (v8 = objc_msgSend(v7, sel_establishedSaltVersionIdentifier)) != 0)
    {
      v9 = v8;
      v10 = sub_1E470A0BC();
      v11 = sub_1E470B2CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1E45E0000, v10, v11, "BDSSyncEngine: Added salt change observer with a valid salt. Calling -saltUpdated with current salt", v12, 2u);
        MEMORY[0x1E6917530](v12, -1, -1);
      }

      [a2 saltUpdatedWithSaltVersionIdentifier_];
    }

    else
    {
      v13 = sub_1E470A0BC();
      v14 = sub_1E470B2CC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEngine: Added salt change observer but no valid salt yet", v15, 2u);
        MEMORY[0x1E6917530](v15, -1, -1);
      }

      v9 = v4;
      v4 = v13;
    }
  }
}

Swift::Bool __swiftcall BDSSyncEngine.establishedSalt()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    LOBYTE(v2) = [v2 establishedSalt];
  }

  return v2;
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSalt()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1E46D133C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46BDBE0;
    aBlock[3] = &unk_1F5E65C18;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSalt:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1E470A0BC();
    v7 = sub_1E470B2AC();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E45E0000, v5, v7, "BDSSyncEngine - reestablishSalt: saltManager not initialized", v8, 2u);
      MEMORY[0x1E6917530](v8, -1, -1);
    }
  }
}

void sub_1E46BE150(void *a1)
{
  v2 = a1;
  oslog = sub_1E470A0BC();
  v3 = sub_1E470B2AC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_1E45E0000, oslog, v3, "BDSSyncEngine: Error encountered while trying to refresh salt: %{public}@", v4, 0xCu);
    sub_1E465E050(v5, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSaltIfNeeded()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1E46D133C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46BDBE0;
    aBlock[3] = &unk_1F5E65C68;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSaltIfNeeded:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1E470A0BC();
    v7 = sub_1E470B2AC();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E45E0000, v5, v7, "BDSSyncEngine - reestablishSaltIfNeeded: saltManager not initialized", v8, 2u);
      MEMORY[0x1E6917530](v8, -1, -1);
    }
  }
}

void sub_1E46BE47C()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 invalidateSalt];
  }

  else
  {
    v3 = sub_1E470A0BC();
    v4 = sub_1E470B2AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEngine - invalidateSalt: saltManager not initialized", v5, 2u);
      MEMORY[0x1E6917530](v5, -1, -1);
    }
  }
}

uint64_t sub_1E46BE554(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E4658550(a3, v5);
  swift_beginAccess();
  sub_1E46BBF88(v5, a2);
  return swift_endAccess();
}

uint64_t sub_1E46BE5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_1E4655498(a2), (v9 & 1) != 0))
  {
    sub_1E4658550(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZonesToSave:)(Swift::OpaquePointer recordZonesToSave)
{
  v2 = v1;
  v4 = sub_1E470A2BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v32 - v12);
  v14 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);

    rawValue = recordZonesToSave._rawValue;
    v16 = sub_1E470A57C();
    if (rawValue >> 62)
    {
      v17 = sub_1E470B50C();
    }

    else
    {
      v17 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v17)
    {
LABEL_21:
      sub_1E470A56C();

      sub_1E46BEAC8();

      return;
    }

    v36 = MEMORY[0x1E69E7CC0];
    sub_1E467F240(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v32[0] = v16;
      v32[1] = v14;
      v32[2] = v2;
      v18 = v36;
      v19 = rawValue;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v20 = 0;
        LODWORD(v35) = *MEMORY[0x1E695B5E0];
        v34 = v5 + 32;
        do
        {
          *v13 = MEMORY[0x1E6916300](v20, v19);
          (*(v5 + 104))(v13, v35, v4);
          v36 = v18;
          v22 = *(v18 + 16);
          v21 = *(v18 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1E467F240(v21 > 1, v22 + 1, 1);
            v19 = rawValue;
            v18 = v36;
          }

          ++v20;
          *(v18 + 16) = v22 + 1;
          (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v13, v4);
        }

        while (v17 != v20);
      }

      else
      {
        v27 = (rawValue + 32);
        LODWORD(v35) = *MEMORY[0x1E695B5E0];
        rawValue = *(v5 + 104);
        v34 = v5 + 104;
        v32[3] = v5 + 32;
        do
        {
          v28 = *v27;
          *v9 = *v27;
          (rawValue)(v9, v35, v4);
          v36 = v18;
          v30 = *(v18 + 16);
          v29 = *(v18 + 24);
          v31 = v28;
          if (v30 >= v29 >> 1)
          {
            sub_1E467F240(v29 > 1, v30 + 1, 1);
            v18 = v36;
          }

          *(v18 + 16) = v30 + 1;
          (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v9, v4);
          ++v27;
          --v17;
        }

        while (v17);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v35 = sub_1E470A0BC();
    v23 = sub_1E470B2BC();
    if (os_log_type_enabled(v35, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1E4654D04(0xD000000000000017, 0x80000001E47198B0, &v36);
      _os_log_impl(&dword_1E45E0000, v35, v23, "BDSSyncEngine - %s: syncEngine not initialized", v24, 0xCu);
      sub_1E4658A0C(v25);
      MEMORY[0x1E6917530](v25, -1, -1);
      MEMORY[0x1E6917530](v24, -1, -1);
    }

    else
    {
      v26 = v35;
    }
  }
}

void sub_1E46BEAC8()
{
  if (*(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine))
  {
    v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);

    v2 = sub_1E470A0BC();
    v3 = sub_1E470B2CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - setting hasPendingUntrackedChanges=true", v4, 2u);
      MEMORY[0x1E6917530](v4, -1, -1);
    }

    sub_1E470A57C();
    sub_1E470A55C();
  }

  else
  {
    oslog = sub_1E470A0BC();
    v5 = sub_1E470B2AC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1E4654D04(0x6C7564656863735FLL, 0xEF2928636E795365, &v9);
      _os_log_impl(&dword_1E45E0000, oslog, v5, "BDSSyncEngine - %s: syncEngine not initialized", v6, 0xCu);
      sub_1E4658A0C(v7);
      MEMORY[0x1E6917530](v7, -1, -1);
      MEMORY[0x1E6917530](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZoneIDsToDelete:)(Swift::OpaquePointer recordZoneIDsToDelete)
{
  v2 = v1;
  v4 = sub_1E470A2BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v32 - v12);
  v14 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);

    rawValue = recordZoneIDsToDelete._rawValue;
    v16 = sub_1E470A57C();
    if (rawValue >> 62)
    {
      v17 = sub_1E470B50C();
    }

    else
    {
      v17 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v17)
    {
LABEL_21:
      sub_1E470A56C();

      sub_1E46BEAC8();

      return;
    }

    v36 = MEMORY[0x1E69E7CC0];
    sub_1E467F240(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v32[0] = v16;
      v32[1] = v14;
      v32[2] = v2;
      v18 = v36;
      v19 = rawValue;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v20 = 0;
        LODWORD(v35) = *MEMORY[0x1E695B5D8];
        v34 = v5 + 32;
        do
        {
          *v13 = MEMORY[0x1E6916300](v20, v19);
          (*(v5 + 104))(v13, v35, v4);
          v36 = v18;
          v22 = *(v18 + 16);
          v21 = *(v18 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1E467F240(v21 > 1, v22 + 1, 1);
            v19 = rawValue;
            v18 = v36;
          }

          ++v20;
          *(v18 + 16) = v22 + 1;
          (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v13, v4);
        }

        while (v17 != v20);
      }

      else
      {
        v27 = (rawValue + 32);
        LODWORD(v35) = *MEMORY[0x1E695B5D8];
        rawValue = *(v5 + 104);
        v34 = v5 + 104;
        v32[3] = v5 + 32;
        do
        {
          v28 = *v27;
          *v9 = *v27;
          (rawValue)(v9, v35, v4);
          v36 = v18;
          v30 = *(v18 + 16);
          v29 = *(v18 + 24);
          v31 = v28;
          if (v30 >= v29 >> 1)
          {
            sub_1E467F240(v29 > 1, v30 + 1, 1);
            v18 = v36;
          }

          *(v18 + 16) = v30 + 1;
          (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v9, v4);
          ++v27;
          --v17;
        }

        while (v17);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v35 = sub_1E470A0BC();
    v23 = sub_1E470B2BC();
    if (os_log_type_enabled(v35, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1E4654D04(0xD00000000000001BLL, 0x80000001E47198D0, &v36);
      _os_log_impl(&dword_1E45E0000, v35, v23, "BDSSyncEngine - %s: syncEngine not initialized", v24, 0xCu);
      sub_1E4658A0C(v25);
      MEMORY[0x1E6917530](v25, -1, -1);
      MEMORY[0x1E6917530](v24, -1, -1);
    }

    else
    {
      v26 = v35;
    }
  }
}

void sub_1E46BF104(void *a1)
{
  v2 = v1;
  v4 = [a1 zoneID];
  v5 = [v4 zoneName];

  v6 = sub_1E470AF1C();
  v8 = v7;

  v9 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneResetsInProgress;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v11 = sub_1E46F4538(v6, v8, v10);

  if (v11)
  {
    v12 = a1;
    v13 = sub_1E470A0BC();
    v14 = sub_1E470B2CC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1E4654D04(0xD000000000000017, 0x80000001E4719DA0, &v19);
      *(v15 + 12) = 2114;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEngine - %s. Zone reset in progress while a new zone was added - %{public}@. Re-establishing salt", v15, 0x16u);
      sub_1E465E050(v16, &qword_1ECF75100, qword_1E471E820);
      MEMORY[0x1E6917530](v16, -1, -1);
      sub_1E4658A0C(v17);
      MEMORY[0x1E6917530](v17, -1, -1);
      MEMORY[0x1E6917530](v15, -1, -1);
    }

    swift_beginAccess();
    sub_1E46C9604(v6, v8);
    swift_endAccess();

    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
  }
}

Swift::Void __swiftcall BDSSyncEngine.scheduleSync()()
{
  v0 = sub_1E470A0BC();
  v1 = sub_1E470B2CC();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1E4654D04(0x656C756465686373, 0xEE002928636E7953, &v4);
    _os_log_impl(&dword_1E45E0000, v0, v1, "BDSSyncEngine - %s", v2, 0xCu);
    sub_1E4658A0C(v3);
    MEMORY[0x1E6917530](v3, -1, -1);
    MEMORY[0x1E6917530](v2, -1, -1);
  }

  sub_1E46BF480(1);
}

uint64_t sub_1E46BF480(char a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E470A61C();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1E46D1290;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65FB0;
  v16 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v8, v16);
  _Block_release(v16);
  (*(v20 + 8))(v8, v4);
  (*(v9 + 8))(v13, v19);
}

uint64_t BDSSyncEngine.sendChangesIfReady()()
{
  v1[2] = v0;
  v2 = sub_1E470A1FC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E470A22C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46BF8B0, 0, 0);
}

uint64_t sub_1E46BF8B0()
{
  v17 = v0;
  v1 = v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1E4654D04(0xD000000000000014, 0x80000001E47198F0, &v16);
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s", v4, 0xCu);
    sub_1E4658A0C(v5);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v6 = v0[2];
  if ((sub_1E46BFD3C() & 1) != 0 && (v7 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine), (v0[9] = v7) != 0))
  {
    v8 = v0[8];
    (*(v0[4] + 104))(v0[5], *MEMORY[0x1E695B5A8], v0[3]);

    sub_1E470A20C();
    v9 = *(MEMORY[0x1E695B598] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1E46BFAE4;
    v11 = v0[8];

    return MEMORY[0x1EEDB5460](v11);
  }

  else
  {
    v12 = v0[8];
    v13 = v0[5];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1E46BFAE4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46BFCCC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 40);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_1E46BFCCC()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

id sub_1E46BFD3C()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = [result establishedSalt];
    if (result)
    {
      v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
      [*(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
      v4 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v5 = *(v0 + v4);
      v6 = *(v0 + v3);

      [v6 unlock];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = sub_1E470B50C();
      }

      else
      {
        v7 = *(v5 + 16);
      }

      return (v7 != 0);
    }
  }

  return result;
}

Swift::Void __swiftcall BDSSyncEngine.setCloudKitZone(_:enabled:)(CKRecordZoneID _, Swift::Bool enabled)
{
  v3 = v2;
  v6 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v29 - v9;
  v11 = _.super.isa;
  v12 = sub_1E470A0BC();
  v13 = sub_1E470B2CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_1E4654D04(0xD00000000000001BLL, 0x80000001E4719910, &v30);
    *(v14 + 12) = 2114;
    *(v14 + 14) = v11;
    *v15 = v11;
    *(v14 + 22) = 1024;
    *(v14 + 24) = enabled;
    v17 = v11;
    _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEngine - %s. Zone: %{public}@. Enabled: %{BOOL}d", v14, 0x1Cu);
    sub_1E465E050(v15, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v15, -1, -1);
    sub_1E4658A0C(v16);
    MEMORY[0x1E6917530](v16, -1, -1);
    MEMORY[0x1E6917530](v14, -1, -1);
  }

  v18 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  [*&v3[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock] lock];
  swift_beginAccess();
  if (enabled)
  {
    sub_1E46C8258(&v29, v11);
    swift_endAccess();
  }

  else
  {
    v19 = sub_1E46C9740(v11);
    swift_endAccess();
  }

  v20 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v21 = *&v3[v20];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = sub_1E470B50C();
  }

  else
  {
    v22 = *(v21 + 16);
  }

  [*&v3[v18] unlock];
  if (v22)
  {
    v23 = sub_1E470A0BC();
    v24 = sub_1E470B2CC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1E45E0000, v23, v24, "BDSSyncEngine - Valid zones found", v25, 2u);
      MEMORY[0x1E6917530](v25, -1, -1);
    }

    v26 = sub_1E470B14C();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v3;
    v28 = v3;
    sub_1E46C1EA0(0, 0, v10, &unk_1E471E918, v27);
  }
}

Swift::Void __swiftcall BDSSyncEngine.fetchRemoteChanges()()
{
  v1 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = sub_1E470B14C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  sub_1E46C1EA0(0, 0, v5, &unk_1E471E920, v7);
}

uint64_t BDSSyncEngine.enabledCloudKitZones()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  [*(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
  v2 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);

  [v4 unlock];
  return v3;
}

Swift::Void __swiftcall BDSSyncEngine.resetCloudKitZone(_:)(CKRecordZone a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v31 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);

    v11 = a1.super.isa;
    v12 = sub_1E470A0BC();
    v13 = sub_1E470B2CC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v32);
      *(v14 + 12) = 2114;
      *(v14 + 14) = v11;
      *v15 = v11;
      v17 = v11;
      _os_log_impl(&dword_1E45E0000, v12, v13, "BDSSyncEngine - %s. Removing zone - %{public}@", v14, 0x16u);
      sub_1E465E050(v15, &qword_1ECF75100, qword_1E471E820);
      MEMORY[0x1E6917530](v15, -1, -1);
      sub_1E4658A0C(v16);
      MEMORY[0x1E6917530](v16, -1, -1);
      MEMORY[0x1E6917530](v14, -1, -1);
    }

    sub_1E46BE47C();
    sub_1E470A57C();
    sub_1E4650534(&unk_1ECF752F0, &qword_1E471D518);
    v18 = sub_1E470A2BC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E471BA00;
    *(v22 + v21) = [(objc_class *)v11 zoneID];
    (*(v19 + 104))(v22 + v21, *MEMORY[0x1E695B5D8], v18);
    sub_1E470A56C();

    v23 = sub_1E470B14C();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v24;
    v25[5] = v9;
    v25[6] = v11;
    v26 = v11;
    sub_1E46C1EA0(0, 0, v8, &unk_1E471E930, v25);
  }

  else
  {
    v31 = sub_1E470A0BC();
    v27 = sub_1E470B2BC();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v32);
      _os_log_impl(&dword_1E45E0000, v31, v27, "BDSSyncEngine - %s: syncEngine not initialized", v28, 0xCu);
      sub_1E4658A0C(v29);
      MEMORY[0x1E6917530](v29, -1, -1);
      MEMORY[0x1E6917530](v28, -1, -1);
    }

    else
    {
      v30 = v31;
    }
  }
}

uint64_t sub_1E46C096C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_1E470A5DC();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = sub_1E470A61C();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = sub_1E470A1FC();
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();
  v16 = sub_1E470A22C();
  v6[24] = v16;
  v17 = *(v16 - 8);
  v6[25] = v17;
  v18 = *(v17 + 64) + 15;
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C0B44, 0, 0);
}

uint64_t sub_1E46C0B44()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  v3 = v0[26];
  v4 = v0[23];
  if (Strong)
  {
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[14];
    sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E471E8F0;
    *(v8 + 32) = [v7 zoneID];
    *v4 = v8;
    (*(v6 + 104))(v4, *MEMORY[0x1E695B5B0], v5);
    sub_1E470A20C();
    v9 = *(MEMORY[0x1E695B598] + 4);
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1E46C0D0C;
    v11 = v0[26];
    v12 = v0[13];

    return MEMORY[0x1EEDB5460](v11);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[26];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1E46C0D0C()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1E46C10F0;
  }

  else
  {
    v6 = sub_1E46C0E7C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E46C0E7C()
{
  v1 = v0[27];
  v16 = v0[20];
  v2 = v0[17];
  v19 = v0[19];
  v20 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v18 = *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_1E46D1058;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E46C4624;
  v0[5] = &unk_1F5E65EE8;
  v7 = _Block_copy(v0 + 2);
  v17 = v1;
  v8 = v5;
  sub_1E470A5FC();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v16, v2, v7);
  _Block_release(v7);
  (*(v3 + 8))(v2, v4);
  (*(v19 + 8))(v16, v20);

  v9 = v0[7];

  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E46C10F0()
{
  v20 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  if (v5)
  {
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v19);
    *(v9 + 12) = 2114;
    *(v9 + 14) = v8;
    *v10 = v8;
    v12 = v8;
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEngine - %s: Could not delete %{public}@", v9, 0x16u);
    sub_1E465E050(v10, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v10, -1, -1);
    sub_1E4658A0C(v11);
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);
  v16 = *(v0 + 136);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1E46C12DC(char *a1, void *a2)
{
  v4 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v30 - v7;
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v31);
    _os_log_impl(&dword_1E45E0000, v9, v10, "BDSSyncEngine - %s. Zone removed. Saving it again...", v11, 0xCu);
    sub_1E4658A0C(v12);
    MEMORY[0x1E6917530](v12, -1, -1);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  v13 = [a2 zoneID];
  v14 = [v13 zoneName];

  v15 = sub_1E470AF1C();
  v17 = v16;

  swift_beginAccess();
  sub_1E46C8108(&v32, v15, v17);
  swift_endAccess();

  if (*&a1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine])
  {
    v18 = *&a1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine];

    sub_1E470A57C();

    sub_1E4650534(&unk_1ECF752F0, &qword_1E471D518);
    v19 = sub_1E470A2BC();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E471BA00;
    *(v23 + v22) = a2;
    (*(v20 + 104))(v23 + v22, *MEMORY[0x1E695B5E0], v19);
    v24 = a2;
    sub_1E470A56C();
  }

  v25 = sub_1E470B14C();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a1;
  v26[5] = a2;
  v27 = a2;
  v28 = a1;
  sub_1E46C1EA0(0, 0, v8, &unk_1E471EA98, v26);
}

uint64_t sub_1E46C1660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E470A1FC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_1E470A22C();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C177C, 0, 0);
}

uint64_t sub_1E46C177C()
{
  v20 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  v0[10] = v1;
  if (v1)
  {
    v2 = v0[9];
    v4 = v0[5];
    v3 = v0[6];
    v6 = v0[3];
    v5 = v0[4];
    sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E471E8F0;

    *(v7 + 32) = [v6 zoneID];
    *v3 = v7;
    (*(v4 + 104))(v3, *MEMORY[0x1E695B5B0], v5);
    sub_1E470A20C();
    v8 = *(MEMORY[0x1E695B598] + 4);
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E46C19FC;
    v10 = v0[9];

    return MEMORY[0x1EEDB5460](v10);
  }

  else
  {
    v11 = sub_1E470A0BC();
    v12 = sub_1E470B2CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v19);
      _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEngine - %s  Zone should have been created again!", v13, 0xCu);
      sub_1E4658A0C(v14);
      MEMORY[0x1E6917530](v14, -1, -1);
      MEMORY[0x1E6917530](v13, -1, -1);
    }

    v15 = v0[9];
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1E46C19FC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1E46C1CE0;
  }

  else
  {
    v7 = sub_1E46C1B90;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E46C1B90()
{
  v11 = v0;
  v1 = v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v10);
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s  Zone should have been created again!", v4, 0xCu);
    sub_1E4658A0C(v5);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E46C1CE0()
{
  v17 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v16);
    *(v8 + 12) = 2114;
    *(v8 + 14) = v7;
    *v9 = v7;
    v11 = v7;
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEngine - %s: Could not add %{public}@", v8, 0x16u);
    sub_1E465E050(v9, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v9, -1, -1);
    sub_1E4658A0C(v10);
    MEMORY[0x1E6917530](v10, -1, -1);
    MEMORY[0x1E6917530](v8, -1, -1);
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E46C1EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1E465E0B0(a3, v28 - v12, &unk_1ECF752E0, &qword_1E471B9A8);
  v14 = sub_1E470B14C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1E465E050(v13, &unk_1ECF752E0, &qword_1E471B9A8);
  }

  else
  {
    sub_1E470B13C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1E470B11C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1E470AF9C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

void sub_1E46C2208(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);

    v4 = a1;
    v5 = sub_1E470A0BC();
    v6 = sub_1E470B2CC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136446210;
      v9 = [v4 zoneName];
      v10 = sub_1E470AF1C();
      v12 = v11;

      v13 = sub_1E4654D04(v10, v12, &v17);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1E45E0000, v5, v6, "BDSSyncEngine - resetChangeToken: resetting change token for %{public}s", v7, 0xCu);
      sub_1E4658A0C(v8);
      MEMORY[0x1E6917530](v8, -1, -1);
      MEMORY[0x1E6917530](v7, -1, -1);
    }

    sub_1E470A57C();
    sub_1E470A54C();
  }

  else
  {
    oslog = sub_1E470A0BC();
    v14 = sub_1E470B2BC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E45E0000, oslog, v14, "BDSSyncEngine - resetChangeToken: syncEngine not initialized", v15, 2u);
      MEMORY[0x1E6917530](v15, -1, -1);
    }
  }
}

uint64_t BDSSyncEngine.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665DD0;

  return (sub_1E46CD72C)(a1);
}

uint64_t BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1E470A31C();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = *(*(sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = sub_1E470A30C();
  v3[28] = v8;
  v9 = *(v8 - 8);
  v3[29] = v9;
  v10 = *(v9 + 64) + 15;
  v3[30] = swift_task_alloc();
  v11 = sub_1E470A22C();
  v3[31] = v11;
  v12 = *(v11 - 8);
  v3[32] = v12;
  v13 = *(v12 + 64) + 15;
  v3[33] = swift_task_alloc();
  v14 = sub_1E470A1FC();
  v3[34] = v14;
  v15 = *(v14 - 8);
  v3[35] = v15;
  v16 = *(v15 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C27BC, 0, 0);
}

uint64_t sub_1E46C27BC()
{
  v107 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 152);
  v9 = sub_1E470A1EC();
  MEMORY[0x1E6914F30](v9);
  (*(v6 + 8))(v5, v7);
  v10 = *(v4 + 16);
  v10(v2, v1, v3);
  v11 = (*(v4 + 88))(v2, v3);
  v12 = &qword_1EE2ADFD0[6];
  if (v11 == *MEMORY[0x1E695B5B0])
  {
    v13 = *(v0 + 296);
    v14 = *(v0 + 160);
    (*(*(v0 + 280) + 96))(v13, *(v0 + 272));
    v15 = *v13;
    v16 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
    [*(v14 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
    v17 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v18 = *(v14 + v17);

    v20 = sub_1E46D0684(v19, v15);

    [*(v14 + v16) unlock];
  }

  else if (v11 == *MEMORY[0x1E695B5A8])
  {
    v21 = *(v0 + 160);
    v22 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
    [*(v21 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
    v23 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v20 = *(v21 + v23);
    v24 = *(v21 + v22);

    [v24 unlock];
  }

  else
  {
    v25 = *(v0 + 160);
    v10(*(v0 + 288), *(v0 + 304), *(v0 + 272));
    v26 = sub_1E470A0BC();
    v27 = sub_1E470B2BC();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 272);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v106[0] = v104;
      *v32 = 136315138;
      sub_1E46D01D4(&qword_1ECF75318, MEMORY[0x1E695B5B8]);
      v33 = sub_1E470B81C();
      v35 = v34;
      v36 = *(v30 + 8);
      v36(v29, v31);
      v37 = v33;
      v12 = qword_1EE2ADFD0 + 48;
      v38 = sub_1E4654D04(v37, v35, v106);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1E45E0000, v26, v27, "BDSSyncEngine - Ignoring scope %s. This is unexpected", v32, 0xCu);
      sub_1E4658A0C(v104);
      MEMORY[0x1E6917530](v104, -1, -1);
      MEMORY[0x1E6917530](v32, -1, -1);
    }

    else
    {

      v36 = *(v30 + 8);
      v36(v29, v31);
    }

    v36(*(v0 + 296), *(v0 + 272));
    v20 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 312) = v20;
  v39 = *(v0 + 160);
  v40 = v12[127];
  v41 = sub_1E470A0BC();
  v42 = sub_1E470B2CC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v106[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v106);
    *(v43 + 12) = 2082;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    sub_1E46B93D0();

    v45 = sub_1E470B16C();
    v47 = v46;

    v48 = sub_1E4654D04(v45, v47, v106);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_1E45E0000, v41, v42, "BDSSyncEngine - %s, enabledZoneIDs: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v44, -1, -1);
    MEMORY[0x1E6917530](v43, -1, -1);
  }

  v49 = *(v0 + 160);
  v50 = *(v49 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  *(swift_task_alloc() + 16) = v49;
  sub_1E4650534(&qword_1ECF75308, &qword_1E471E958);
  sub_1E470B37C();

  v51 = *(v0 + 128);
  *(v0 + 320) = v51;
  if (!*(v51 + 16))
  {
    v66 = sub_1E470A0BC();
    v67 = sub_1E470B2CC();
    v75 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 304);
    v70 = *(v0 + 272);
    v71 = *(v0 + 280);
    if (!v75)
    {
      goto LABEL_28;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v106[0] = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v106);
    v74 = "BDSSyncEngine - %s, record sources not found";
    goto LABEL_24;
  }

  v52 = *(v0 + 160);
  v53 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v54 = *(v52 + v53);
  if (!v54 || ![v54 establishedSalt])
  {
    v66 = sub_1E470A0BC();
    v67 = sub_1E470B2CC();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 304);
    v70 = *(v0 + 272);
    v71 = *(v0 + 280);
    if (!v68)
    {
      goto LABEL_28;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v106[0] = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v106);
    v74 = "BDSSyncEngine - %s, salt not ready";
LABEL_24:
    _os_log_impl(&dword_1E45E0000, v66, v67, v74, v72, 0xCu);
    sub_1E4658A0C(v73);
    MEMORY[0x1E6917530](v73, -1, -1);
    MEMORY[0x1E6917530](v72, -1, -1);

LABEL_29:
    (*(v71 + 8))(v69, v70);
    (*(*(v0 + 232) + 56))(*(v0 + 144), 1, 1, *(v0 + 224));
LABEL_30:
    v78 = *(v0 + 304);
    v77 = *(v0 + 312);
    v80 = *(v0 + 288);
    v79 = *(v0 + 296);
    v81 = *(v0 + 264);
    v82 = *(v0 + 240);
    v84 = *(v0 + 208);
    v83 = *(v0 + 216);
    v86 = *(v0 + 192);
    v85 = *(v0 + 200);
    v105 = *(v0 + 184);

    v87 = *(v0 + 8);

    return v87();
  }

  if ((v20 & 0xC000000000000001) != 0)
  {

    v55 = sub_1E470B50C();

    if (v55)
    {
      goto LABEL_16;
    }

LABEL_26:
    v66 = sub_1E470A0BC();
    v67 = sub_1E470B2CC();
    v76 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 304);
    v70 = *(v0 + 272);
    v71 = *(v0 + 280);
    if (v76)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v106[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v106);
      v74 = "BDSSyncEngine - %s, enabledZoneIDs is empty";
      goto LABEL_24;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!*(v20 + 16))
  {
    goto LABEL_26;
  }

LABEL_16:
  v56 = *(v0 + 232);
  v57 = *(v51 + 32);
  *(v0 + 392) = v57;
  v58 = -1;
  v59 = -1 << v57;
  if (-(-1 << v57) < 64)
  {
    v58 = ~(-1 << -(-1 << v57));
  }

  v60 = v58 & *(v51 + 64);
  v61 = MEMORY[0x1E695B5F8];
  *(v0 + 384) = *MEMORY[0x1E695B5F0];
  v62 = MEMORY[0x1E69E7CC8];
  v63 = MEMORY[0x1E69E7CC0];
  *(v0 + 388) = *v61;
  *(v0 + 344) = v63;
  *(v0 + 352) = v62;
  *(v0 + 328) = v62;
  *(v0 + 336) = 250;

  if (!v60)
  {
    v89 = 0;
    v65 = *(v0 + 320);
    while (((63 - v59) >> 6) - 1 != v89)
    {
      v64 = v89 + 1;
      v60 = *(v65 + 8 * v89++ + 72);
      if (v60)
      {
        goto LABEL_36;
      }
    }

    v95 = *(v0 + 224);
    v96 = *(v0 + 208);

    (*(v56 + 56))(v96, 1, 1, v95);
    v97 = *(v0 + 320);
    v98 = *(v0 + 304);
    v99 = *(v0 + 272);
    v100 = *(v0 + 280);
    if (*(v63 + 16))
    {
      v102 = *(v0 + 200);
      v101 = *(v0 + 208);
      *(swift_task_alloc() + 16) = v62;
      sub_1E470A2EC();

      sub_1E465E050(v101, &qword_1ECF75A30, &qword_1E471E950);
      (*(v100 + 8))(v98, v99);
      sub_1E46D0164(v102, v101);
    }

    else
    {
      v103 = *(v0 + 160);

      sub_1E46BD9E4();

      (*(v100 + 8))(v98, v99);
    }

    sub_1E46D0164(*(v0 + 208), *(v0 + 144));
    goto LABEL_30;
  }

  v64 = 0;
  v65 = *(v0 + 320);
LABEL_36:
  *(v0 + 360) = v60;
  *(v0 + 368) = v64;
  v90 = *(v0 + 312);
  sub_1E4658550(*(v65 + 56) + 40 * (__clz(__rbit64(v60)) | (v64 << 6)), v0 + 16);
  v91 = *sub_1E465057C((v0 + 16), *(v0 + 40));

  v92 = swift_task_alloc();
  *(v0 + 376) = v92;
  *v92 = v0;
  v92[1] = sub_1E46C3308;
  v93 = *(v0 + 312);
  v94 = *(v0 + 216);

  return sub_1E46F8778(v94, v93, 250);
}

uint64_t sub_1E46C3308()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 312);
  v5 = *v0;

  sub_1E4658A0C((v1 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1E46C3428, 0, 0);
}

uint64_t sub_1E46C3428()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 240), v3, v1);
    v8 = sub_1E470A2DC();
    isUniquelyReferenced_nonNull_native = v8;
    if (v8 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E470B50C())
    {
      v11 = 0;
      v107 = isUniquelyReferenced_nonNull_native;
      v108 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v104 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v106 = i;
      v5 = *(v0 + 344);
      v12 = *(v0 + 352);
      v6 = *(v0 + 328);
      while (1)
      {
        if (v108)
        {
          v16 = MEMORY[0x1E6916300](v11, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v11 >= *(v104 + 16))
          {
            goto LABEL_42;
          }

          v16 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
        }

        v17 = v16;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v111 = v11 + 1;
        v18 = *(v0 + 384);
        v19 = *(v0 + 192);
        v20 = *(v0 + 168);
        v21 = *(v0 + 176);
        *v19 = [v16 recordID];
        (*(v21 + 104))(v19, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1E4693DF4(0, v5[2] + 1, 1, v5);
        }

        isUniquelyReferenced_nonNull_native = v5[2];
        v22 = v5[3];
        if (isUniquelyReferenced_nonNull_native >= v22 >> 1)
        {
          v5 = sub_1E4693DF4(v22 > 1, isUniquelyReferenced_nonNull_native + 1, 1, v5);
        }

        v23 = *(v0 + 192);
        v24 = *(v0 + 168);
        v25 = *(v0 + 176);
        v5[2] = isUniquelyReferenced_nonNull_native + 1;
        (*(v25 + 32))(v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * isUniquelyReferenced_nonNull_native, v23, v24);
        v26 = [v17 recordID];
        if ((v12 & 0xC000000000000001) != 0)
        {
          if (v12 < 0)
          {
            v27 = v12;
          }

          else
          {
            v27 = v12 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v17;
          v29 = sub_1E470B50C();
          if (__OFADD__(v29, 1))
          {
            goto LABEL_40;
          }

          v6 = sub_1E46C6E94(v27, v29 + 1);
        }

        else
        {
          v30 = v17;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 136) = v6;
        v32 = sub_1E46554E8(v26);
        v33 = v6[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_39;
        }

        v36 = v31;
        if (v6[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v6 = *(v0 + 136);
            if (v31)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_1E4658268();
            v6 = *(v0 + 136);
            if (v36)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_1E465682C(v35, isUniquelyReferenced_nonNull_native);
          v37 = *(v0 + 136);
          v38 = sub_1E46554E8(v26);
          if ((v36 & 1) != (v39 & 1))
          {
            sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);

            return sub_1E470B86C();
          }

          v32 = v38;
          v6 = *(v0 + 136);
          if (v36)
          {
LABEL_6:
            v13 = v6[7];
            v14 = *(v13 + 8 * v32);
            *(v13 + 8 * v32) = v17;

            goto LABEL_7;
          }
        }

        v6[(v32 >> 6) + 8] |= 1 << v32;
        *(v6[6] + 8 * v32) = v26;
        *(v6[7] + 8 * v32) = v17;

        v40 = v6[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_41;
        }

        v6[2] = v42;
LABEL_7:
        ++v11;
        v12 = v6;
        v15 = v6;
        isUniquelyReferenced_nonNull_native = v107;
        if (v111 == v106)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v5 = *(v0 + 344);
    v15 = *(v0 + 352);
    v6 = *(v0 + 328);
LABEL_45:
    v105 = v15;
    v44 = *(v0 + 240);

    v45 = sub_1E470A2FC();
    v46 = v45;
    if (v45 >> 62)
    {
      v60 = v45;
      result = sub_1E470B50C();
      v46 = v60;
      if (!result)
      {
        goto LABEL_59;
      }
    }

    else
    {
      result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_59;
      }
    }

    if (result < 1)
    {
LABEL_88:
      __break(1u);
      return result;
    }

    v47 = 0;
    v109 = v46 & 0xC000000000000001;
    v110 = result;
    v112 = v46;
    do
    {
      if (v109)
      {
        v48 = MEMORY[0x1E6916300](v47);
      }

      else
      {
        v48 = *(v46 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = *(v0 + 388);
      v51 = *(v0 + 176);
      v52 = *(v0 + 168);
      **(v0 + 184) = v48;
      (*(v51 + 104))();
      v53 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E4693DF4(0, v5[2] + 1, 1, v5);
      }

      v55 = v5[2];
      v54 = v5[3];
      v56 = v5;
      if (v55 >= v54 >> 1)
      {
        v56 = sub_1E4693DF4(v54 > 1, v55 + 1, 1, v5);
      }

      ++v47;
      v57 = *(v0 + 176);
      v58 = *(v0 + 184);
      v59 = *(v0 + 168);

      *(v56 + 16) = v55 + 1;
      v5 = v56;
      (*(v57 + 32))(v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v55, v58, v59);
      v46 = v112;
    }

    while (v110 != v47);
LABEL_59:
    v61 = *(v0 + 240);

    v62 = sub_1E470A2DC();
    if (v62 >> 62)
    {
      goto LABEL_84;
    }

    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_61;
  }

  sub_1E465E050(v3, &qword_1ECF75A30, &qword_1E471E950);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  while (1)
  {
    v73 = *(v0 + 360);
    v72 = *(v0 + 368);
    *(v0 + 344) = v5;
    *(v0 + 352) = v4;
    *(v0 + 328) = v6;
    *(v0 + 336) = v7;
    v74 = (v73 - 1) & v73;
    if (v74)
    {
      break;
    }

    while (1)
    {
      v76 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v76 >= (((1 << *(v0 + 392)) + 63) >> 6))
      {
        v105 = v4;
        goto LABEL_77;
      }

      v75 = *(v0 + 320);
      v74 = *(v75 + 8 * v76 + 64);
      ++v72;
      if (v74)
      {
        v72 = v76;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_84:
    v63 = sub_1E470B50C();
LABEL_61:
    v64 = *(v0 + 336);

    v65 = v64 - v63;
    if (__OFSUB__(v64, v63))
    {
      __break(1u);
    }

    else
    {
      v66 = *(v0 + 240);
      v67 = sub_1E470A2FC();
      if (!(v67 >> 62))
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_64;
      }
    }

    v68 = sub_1E470B50C();
LABEL_64:
    v70 = *(v0 + 232);
    v69 = *(v0 + 240);
    v71 = *(v0 + 224);

    result = (*(v70 + 8))(v69, v71);
    v7 = v65 - v68;
    if (__OFSUB__(v65, v68))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v7 < 1)
    {
LABEL_77:
      v82 = *(v0 + 320);
      v83 = *(v0 + 224);
      v84 = *(v0 + 232);
      v85 = *(v0 + 208);

      (*(v84 + 56))(v85, 1, 1, v83);
      v86 = *(v0 + 320);
      v87 = *(v0 + 304);
      v88 = *(v0 + 272);
      v89 = *(v0 + 280);
      if (v5[2])
      {
        v91 = *(v0 + 200);
        v90 = *(v0 + 208);
        *(swift_task_alloc() + 16) = v105;
        sub_1E470A2EC();

        sub_1E465E050(v90, &qword_1ECF75A30, &qword_1E471E950);
        (*(v89 + 8))(v87, v88);
        sub_1E46D0164(v91, v90);
      }

      else
      {
        v92 = *(v0 + 160);

        sub_1E46BD9E4();

        (*(v89 + 8))(v87, v88);
      }

      sub_1E46D0164(*(v0 + 208), *(v0 + 144));
      v94 = *(v0 + 304);
      v93 = *(v0 + 312);
      v96 = *(v0 + 288);
      v95 = *(v0 + 296);
      v97 = *(v0 + 264);
      v98 = *(v0 + 240);
      v100 = *(v0 + 208);
      v99 = *(v0 + 216);
      v102 = *(v0 + 192);
      v101 = *(v0 + 200);
      v113 = *(v0 + 184);

      v103 = *(v0 + 8);

      return v103();
    }

    v4 = v105;
  }

  v75 = *(v0 + 320);
LABEL_73:
  *(v0 + 360) = v74;
  *(v0 + 368) = v72;
  v77 = *(v0 + 312);
  sub_1E4658550(*(v75 + 56) + 40 * (__clz(__rbit64(v74)) | (v72 << 6)), v0 + 16);
  v78 = *sub_1E465057C((v0 + 16), *(v0 + 40));

  v79 = swift_task_alloc();
  *(v0 + 376) = v79;
  *v79 = v0;
  v79[1] = sub_1E46C3308;
  v80 = *(v0 + 312);
  v81 = *(v0 + 216);

  return sub_1E46F8778(v81, v80, v7);
}