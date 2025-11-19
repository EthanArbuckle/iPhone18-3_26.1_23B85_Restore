uint64_t sub_2282A65F0(char *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v57 = a4;
  v59 = a1;
  v58 = type metadata accessor for WeekdaysAndDosages(0);
  v5 = *(v58 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v58);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_228391130();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v56 = &v48 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v48 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v60 = &v48 - v25;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v52 = qword_27D826E20;
    v28 = *(result + qword_27D826E20);
    sub_228391870();
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = v62[0];
      if (*(v62[0] + 16) > a3)
      {
        v50 = (v5[80] + 32) & ~v5[80];
        v51 = a3;
        v49 = *(v5 + 9) * a3;
        sub_2282AB724(v62[0] + v50 + v49, v8, type metadata accessor for WeekdaysAndDosages);

        v29 = *(v61 + 16);
        v30 = v8 + *(v58 + 20);
        v53 = v18;
        v31 = v27;
        v32 = v24;
        v33 = v60;
        v29(v60, v30, v9);
        sub_2282AB78C(v8, type metadata accessor for WeekdaysAndDosages);
        v55 = v21;
        v34 = v59;
        v29(v21, v59, v9);
        v29(v56, v34, v9);
        v54 = v32;
        v35 = v31;
        v29(v13, v33, v9);
        v36 = MEMORY[0x277D11768];
        sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768]);
        v37 = v53;
        sub_228392FD0();
        v38 = v37;
        sub_228392FB0();
        v39 = *(v61 + 8);
        v39(v37, v9);
        sub_22828F718();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_228397F40;
        v62[0] = 0;
        v62[1] = 0xE000000000000000;

        sub_2283931D0();

        strcpy(v62, "DayPickerItem-");
        HIBYTE(v62[1]) = -18;
        MEMORY[0x22AAB5C80](*v57, v57[1]);
        v41 = v62[1];
        *(v40 + 32) = v62[0];
        *(v40 + 40) = v41;
        v42 = sub_22838FF90();
        sub_228241B70();
        sub_2283915C0();

        v42(v62, 0);
        v18 = v39;
        v24 = v54;

        sub_2282A39F0(v38);
        sub_2282ABCB0(&qword_27D824818, v36);
        sub_228392170();
        sub_2282ABCB0(&qword_280DDBD00, v36);
        v43 = v55;
        sub_2283935F0();
        sub_228392FC0();
        (v18)(v38, v9);
        sub_228393020();
        sub_2282ABCB0(&qword_280DDBD08, v36);
        v44 = sub_228391FB0();
        (v18)(v38, v9);
        (v18)(v43, v9);
        if (v44 & 1) == 0 || (sub_228393020(), v45 = sub_228391FB0(), (v18)(v43, v9), (v45))
        {
          type metadata accessor for ListOfWeekdaysAndDosagesPickerDataSource(0);
          sub_22838FD00();

          (v18)(v24, v9);
          return (v18)(v60, v9);
        }

        v5 = v59;
        v46 = *(v35 + v52);
        v28 = sub_228391860();
        v8 = v47;
        v21 = *v47;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v21;
        if (result)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    result = sub_2281D9300(v21);
    v21 = result;
    *v8 = result;
LABEL_8:
    if (v21[2] <= v51)
    {
      __break(1u);
    }

    else
    {
      (*(v61 + 24))(v21 + v50 + v49 + *(v58 + 20), v5, v9);
      v28(v62, 0);
      (v18)(v24, v9);
      (v18)(v60, v9);
    }
  }

  return result;
}

uint64_t sub_2282A6D68(uint64_t a1, unint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for WeekdaysAndDosages(0);
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Dosage();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  sub_2282AA2F8(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - v16;
  v18 = sub_22838F440();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v27 = &unk_27D826000;
  if (!Strong)
  {
    goto LABEL_7;
  }

  v41 = v25;
  v25 = v3;
  v28 = *(Strong + qword_27D826E20);
  v3 = Strong;

  sub_228391870();

  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v47[0] + 16) <= v46)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_2282AB724(v47[0] + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v46, v6, type metadata accessor for WeekdaysAndDosages);

  v3 = v25;
  v29 = *(v6 + *(v25 + 6));

  sub_2282AB78C(v6, type metadata accessor for WeekdaysAndDosages);
  v30 = *(v29 + 16);
  if (v30)
  {
    sub_2282AB724(v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * (v30 - 1), v13, type metadata accessor for Dosage);

    v6 = v43;
    (*(v19 + 16))(v23, &v13[*(v43 + 5)], v18);
    sub_2282AB78C(v13, type metadata accessor for Dosage);
    sub_22838F350();
    (*(v19 + 8))(v23, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v25 = v41;
    (*(v19 + 32))(v41, v17, v18);
    v27 = &unk_27D826000;
    goto LABEL_9;
  }

  v25 = v41;
  v27 = &unk_27D826000;
LABEL_7:
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_22838F430();
  v31 = (*(v19 + 48))(v17, 1, v18);
  v6 = v43;
  if (v31 != 1)
  {
    sub_2282ABCF8(v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  }

LABEL_9:
  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (!v32)
  {
    return (*(v19 + 8))(v25, v18);
  }

  v33 = *(v32 + v27[452]);

  a1 = v42;
  (*(v19 + 16))(&v42[*(v6 + 20)], v25, v18);
  sub_22838F490();
  *(a1 + *(v6 + 24)) = 0x3FF0000000000000;
  v17 = sub_228391860();
  v13 = v34;
  v23 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v23;
  if (isUniquelyReferenced_nonNull_native)
  {
    v36 = v46;
    if ((v46 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_20:
  v23 = sub_2281D9300(v23);
  *v13 = v23;
  v36 = v46;
  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v23[2] <= v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v17;
  v13 = v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36;
  v6 = *(v3 + 24);
  v23 = *&v13[v6];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v6] = v23;
  v17 = v25;
  if ((v37 & 1) == 0)
  {
LABEL_23:
    v23 = sub_2281984E8(0, v23[2] + 1, 1, v23);
    *&v13[v6] = v23;
  }

  v39 = v23[2];
  v38 = v23[3];
  if (v39 >= v38 >> 1)
  {
    v23 = sub_2281984E8(v38 > 1, v39 + 1, 1, v23);
    *&v13[v6] = v23;
  }

  v23[2] = v39 + 1;
  sub_2282ABD68(a1, v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, type metadata accessor for Dosage);
  (v43)(v47, 0);

  v25 = v17;
  return (*(v19 + 8))(v25, v18);
}

uint64_t sub_2282A7440(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_228391DC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391DF0();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for WeekdaysAndDosages(0);
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v44);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a3;
  v19 = *(a3 + qword_27D826E20);
  sub_228391870();
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = a2;
  if (aBlock[0][2] <= a4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v37 = v12;
  v38 = v9;
  v39 = v8;
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = *(v15 + 72) * a4;
  sub_2282AB724(aBlock[0] + v21 + v22, v18, type metadata accessor for WeekdaysAndDosages);

  v23 = *&v18[*(v44 + 24)];

  v24 = sub_2282AB78C(v18, type metadata accessor for WeekdaysAndDosages);
  MEMORY[0x28223BE20](v24);
  *(&v36 - 2) = a1;
  *(&v36 - 1) = v20;
  a1 = 0;
  v25 = sub_2282A2F90(sub_2282ABB50, (&v36 - 4), v23);

  aBlock[0] = v25;

  sub_2282A363C(aBlock);

  v26 = aBlock[0];
  sub_228391870();
  if (aBlock[0][2] <= a4)
  {
LABEL_10:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2282AB724(aBlock[0] + v21 + v22, v18, type metadata accessor for WeekdaysAndDosages);

  v27 = *&v18[*(v44 + 24)];

  sub_2282AB78C(v18, type metadata accessor for WeekdaysAndDosages);
  v28 = sub_2282109A4(v26, v27);

  if (v28)
  {
  }

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v30 = sub_228392790();
  v31 = swift_allocObject();
  v31[2] = v40;
  v31[3] = a4;
  v31[4] = v26;
  aBlock[4] = sub_2282ABB6C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_19;
  v32 = _Block_copy(aBlock);

  v33 = v41;
  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2282ABCB0(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_2282AA2F8(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  v34 = v43;
  v35 = v39;
  sub_228393030();
  MEMORY[0x22AAB6340](0, v33, v34, v32);
  _Block_release(v32);

  (*(v38 + 8))(v34, v35);
  return (*(v42 + 8))(v33, v37);
}

uint64_t sub_2282A79B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for DosageItem(0) + 28);
  if (sub_22838F470())
  {
    return sub_2282ABB90(a2, a3, &qword_27D826200, type metadata accessor for Dosage);
  }

  sub_2282AB724(a1, a3, type metadata accessor for Dosage);
  v8 = type metadata accessor for Dosage();
  return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
}

uint64_t sub_2282A7AA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + qword_27D826E20);

  v6 = sub_228391860();
  v8 = v7;
  v9 = *v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2281D9300(v9);
  v9 = result;
  *v8 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9[2] > a2)
  {
    v11 = type metadata accessor for WeekdaysAndDosages(0);
    v12 = v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * a2;
    v13 = *(v11 + 24);
    v14 = *(v12 + v13);
    *(v12 + v13) = a3;

    return v6(&v15, 0);
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_2282A7BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + qword_27D826E20);

    MEMORY[0x28223BE20](v8);
    v17[2] = a2;
    v9 = sub_228391860();
    v11 = v10;
    v12 = *v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if (result)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = sub_2281D9300(v12);
      v12 = result;
      *v11 = result;
      if ((a4 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v12[2] > a4)
        {
          v13 = type metadata accessor for WeekdaysAndDosages(0);
          v14 = v12 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * a4;
          v15 = *(v13 + 24);
          result = sub_2282AB820(sub_2282AB7EC, v17);
          v16 = *(*(v14 + v15) + 16);
          if (v16 >= result)
          {
            sub_2282C5A68(result, v16);
            v9(v18, 0);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2282A7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v62 = a6;
  v64 = a2;
  v50 = a1;
  v6 = sub_22838F6A0();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22838F6C0();
  v51 = *(v59 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v59);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Dosage();
  v60 = *(v58 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WeekdaysAndDosages(0);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282AA2F8(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v46 - v22;
  v24 = sub_22838F440();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v61 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = result;
    v49 = *(type metadata accessor for DosageItem(0) + 28);
    sub_2282ABB90(v64, v23, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {

      sub_2282ABCF8(v23, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      return 1;
    }

    (*(v25 + 32))(v61, v23, v24);
    v30 = *(v29 + qword_27D826E20);
    result = sub_228391870();
    if ((v62 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (*(v65 + 16) <= v62)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v46 = v29;
    v47 = v25;
    v48 = v24;
    v56 = v6;
    sub_2282AB724(v65 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v62, v19, type metadata accessor for WeekdaysAndDosages);

    v31 = *&v19[*(v16 + 24)];

    result = sub_2282AB78C(v19, type metadata accessor for WeekdaysAndDosages);
    v57 = v31;
    v55 = *(v31 + 16);
    if (!v55)
    {
LABEL_16:

      (*(v47 + 8))(v61, v48);
      return 1;
    }

    v32 = 0;
    v54 = v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v53 = *MEMORY[0x277CC9980];
    v33 = (v52 + 104);
    v34 = (v52 + 8);
    v52 = v51 + 8;
    LODWORD(v51) = *MEMORY[0x277CC99A0];
    v63 = v15;
    while (1)
    {
      if (v32 >= *(v57 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v35 = *(v60 + 72);
      v64 = v32;
      sub_2282AB724(v54 + v35 * v32, v15, type metadata accessor for Dosage);
      v36 = *(v58 + 20);
      sub_22838F680();
      v37 = *v33;
      v38 = v53;
      v39 = v56;
      (*v33)(v9, v53, v56);
      v62 = v36;
      v40 = sub_22838F6B0();
      v41 = *v34;
      (*v34)(v9, v39);
      v37(v9, v38, v39);
      v42 = sub_22838F6B0();
      v41(v9, v39);
      if (v40 != v42)
      {
        break;
      }

      v43 = v51;
      v37(v9, v51, v39);
      v62 = sub_22838F6B0();
      v41(v9, v39);
      v37(v9, v43, v39);
      v44 = sub_22838F6B0();
      v41(v9, v39);
      (*v52)(v12, v59);
      if (v62 != v44)
      {
        goto LABEL_9;
      }

      sub_22838F4A0();
      sub_2282ABCB0(&qword_27D826208, MEMORY[0x277CC95F0]);
      v15 = v63;
      v45 = sub_228391FB0();
      result = sub_2282AB78C(v15, type metadata accessor for Dosage);
      if ((v45 & 1) == 0)
      {

        (*(v47 + 8))(v61, v48);
        return 0;
      }

LABEL_10:
      v32 = v64 + 1;
      if (v55 == v64 + 1)
      {
        goto LABEL_16;
      }
    }

    (*v52)(v12, v59);
LABEL_9:
    v15 = v63;
    result = sub_2282AB78C(v63, type metadata accessor for Dosage);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2282A8584()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeekdaysAndDosages(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v42 - v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v45 = v10;
    v18 = v16 + *(v9 + 20);
    v43 = v9;
    v19 = result;
    sub_2282A8A20(v18);
    sub_2282AA2F8(0, &qword_27D823E30, type metadata accessor for Dosage, MEMORY[0x277D84560]);
    v20 = (type metadata accessor for Dosage() - 8);
    v21 = *(*v20 + 72);
    v22 = *(*v20 + 80);
    v42 = v5;
    v23 = v0;
    v24 = (v22 + 32) & ~v22;
    v25 = swift_allocObject();
    v44 = v14;
    v26 = v25;
    *(v25 + 16) = xmmword_228397F40;
    v27 = v25 + v24;
    v28 = v19;
    v29 = v46;
    sub_22838F430();
    sub_22838F490();
    (*(v1 + 32))(v27, v4, v23);
    (*(v6 + 32))(v27 + v20[7], v29, v42);
    *(v27 + v20[8]) = 0x3FF0000000000000;
    sub_22838F490();
    v30 = sub_22838F450();
    v32 = v31;
    (*(v1 + 8))(v4, v23);
    *v16 = v30;
    v16[1] = v32;
    *(v16 + *(v43 + 24)) = v26;
    v33 = v44;
    v34 = *(v28 + qword_27D826E20);
    sub_2282AB724(v16, v44, type metadata accessor for WeekdaysAndDosages);
    v35 = sub_228391860();
    v37 = v36;
    v38 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v37 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_2281984B4(0, v38[2] + 1, 1, v38);
      *v37 = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_2281984B4(v40 > 1, v41 + 1, 1, v38);
      *v37 = v38;
    }

    v38[2] = v41 + 1;
    sub_2282ABD68(v33, v38 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v41, type metadata accessor for WeekdaysAndDosages);
    v35(v47, 0);
    sub_2282AB78C(v16, type metadata accessor for WeekdaysAndDosages);
  }

  return result;
}

uint64_t sub_2282A8A20@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_22838F6C0();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228391060();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391130();
  v50 = *(v7 - 8);
  v8 = v50;
  v9 = *(v50 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v41 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v41 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v41 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v41 - v30;
  sub_2283910C0();
  sub_2282A39F0(v26);
  v32 = *(v8 + 16);
  v32(v23, v29, v7);
  v32(v17, v29, v7);
  v32(v14, v26, v7);
  sub_2282ABCB0(&qword_27D824820, MEMORY[0x277D11768]);
  sub_228392FD0();
  sub_228392FB0();
  v33 = *(v50 + 8);
  v33(v20, v7);
  v33(v26, v7);
  v33(v29, v7);
  v34 = v46;
  sub_22838F680();
  v35 = sub_228391030();
  (*(v47 + 8))(v34, v48);
  if (*(v35 + 16))
  {
    v36 = v43;
    v37 = v44;
    v38 = v45;
    (*(v44 + 16))(v43, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v45);

    v39 = v42;
    sub_228391040();
    v33(v31, v7);
    (*(v37 + 8))(v36, v38);
    v31 = v39;
  }

  else
  {
  }

  return (*(v50 + 32))(v49, v31, v7);
}

uint64_t sub_2282A8ED0()
{
  v1 = *(v0 + qword_27D826E18 + 16);
  v2 = *(v0 + qword_27D826E18 + 24);
  sub_228267618(*(v0 + qword_27D826E18), *(v0 + qword_27D826E18 + 8));
  v3 = *(v0 + qword_27D826E20);

  v4 = *(v0 + qword_27D826E28);

  v5 = *(v0 + qword_27D826E30 + 8);
}

uint64_t sub_2282A8F4C()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D826E10);

  v2 = *(v0 + qword_27D826E18 + 16);
  v3 = *(v0 + qword_27D826E18 + 24);
  sub_228267618(*(v0 + qword_27D826E18), *(v0 + qword_27D826E18 + 8));
  v4 = *(v0 + qword_27D826E20);

  v5 = *(v0 + qword_27D826E28);

  v6 = *(v0 + qword_27D826E30 + 8);

  return swift_deallocClassInstance();
}

id sub_2282A9064()
{
  sub_2282AA2F8(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v37 = &v34 - v2;
  v36 = sub_228392D00();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_228392CC0();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228392D80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_228392DE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228392DD0();
  (*(v12 + 104))(v15, *MEMORY[0x277D75028], v11);
  sub_228392CB0();
  v21 = v20;
  (*(v7 + 104))(v10, *MEMORY[0x277D74FD8], v35);
  sub_228392CD0();
  (*(v3 + 104))(v6, *MEMORY[0x277D74FF0], v36);
  sub_228392D20();
  v22 = [objc_opt_self() buttonWithType_];
  v23 = v37;
  (*(v17 + 16))(v37, v21, v16);
  (*(v17 + 56))(v23, 0, 1, v16);
  sub_228392E10();
  [v22 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v24 = [objc_opt_self() systemBlueColor];
  [v22 setTintColor_];

  v25 = [v22 titleLabel];
  [v25 setAdjustsFontForContentSizeCategory_];

  v26 = [v22 titleLabel];
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() preferredFontForTextStyle_];
    [v27 setFont_];
  }

  v29 = [v22 titleLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setTextAlignment_];
  }

  v31 = [v22 titleLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setNumberOfLines_];
  }

  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v17 + 8))(v21, v16);
  return v22;
}

id sub_2282A957C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ButtonBackgroundColorCell(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2282A95F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonBackgroundColorCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282A9680()
{
  sub_228391130();
  if (v0 <= 0x3F)
  {
    sub_2282AA2F8(319, &qword_27D826E68, type metadata accessor for Dosage, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2282A9744()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_2282ABCB0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  sub_2283926D0();
  type metadata accessor for DayPickerCollectionViewCell();
  sub_2282ABCB0(&qword_27D826E70, type metadata accessor for DayPickerCollectionViewCell);
  sub_2283926B0();
  type metadata accessor for DosageCollectionViewCell(0);
  sub_2282ABCB0(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ButtonBackgroundColorCell(0);
  return sub_2283926B0();
}

uint64_t sub_2282A9884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v28 = *v5;
  v10 = sub_22838F760();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_228393460();

    if ((v16 & 1) == 0)
    {
      a4[3] = sub_22838FC00();
      a4[4] = sub_2282ABCB0(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a4);
      return sub_22838FBF0();
    }
  }

  sub_22838F750();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v27 = sub_22838F0C0();
  v19 = v18;

  v20 = sub_22838F750() != 0;
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v11 + 32))(v23 + v22, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  type metadata accessor for ScheduleHeaderCell();
  sub_2282ABCB0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);

  v24 = sub_22838FBB0();
  v26 = v25;
  sub_22838FBB0();

  a4[3] = &type metadata for ScheduleHeaderItem;
  a4[4] = sub_228194464();
  result = swift_allocObject();
  *a4 = result;
  *(result + 16) = v27;
  *(result + 24) = v19;
  *(result + 32) = v20;
  *(result + 40) = sub_2282AA268;
  *(result + 48) = v23;
  *(result + 56) = v24;
  *(result + 64) = v26;
  return result;
}

uint64_t sub_2282A9C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[1] = a3;
  v4 = sub_22838F760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2283911B0();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282AA2F8(0, &qword_27D826E78, type metadata accessor for WeekdaysAndDosages, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v36 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v18 = *(Strong + qword_27D826E20);

  sub_228391870();

  v19 = *(v39[0] + 16);

  v20 = sub_22838F750();
  if (v20 < 0 || v20 >= v19)
  {
LABEL_6:
    sub_228391150();
    (*(v5 + 16))(v8, a2, v4);
    v26 = sub_2283911A0();
    v27 = sub_2283925C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136446466;
      v30 = sub_228393600();
      v32 = sub_2281C96FC(v30, v31, v39);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2050;
      v33 = sub_22838F750();
      (*(v5 + 8))(v8, v4);
      *(v28 + 14) = v33;
      _os_log_impl(&dword_22816B000, v26, v27, "%{public}s Attempting to remove out of bounds section: %{public}ld ", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAB7B80](v29, -1, -1);
      MEMORY[0x22AAB7B80](v28, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    return (*(v37 + 8))(v12, v38);
  }

  else
  {
    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v22 = *(v21 + qword_27D826E20);

      v23 = sub_22838F750();
      v24 = sub_228391860();
      sub_2282A3484(v23, v16);
      v24(v39, 0);

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v35 = type metadata accessor for WeekdaysAndDosages(0);
    (*(*(v35 - 8) + 56))(v16, v25, 1, v35);
    return sub_2282ABCF8(v16, &qword_27D826E78, type metadata accessor for WeekdaysAndDosages);
  }
}

uint64_t sub_2282AA0D8()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2283901D0();
  type metadata accessor for ListOfWeekdaysAndDosagesPickerDataSource(0);
  result = sub_22838FD30();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 == result - 1)
    {
      sub_228390040();
    }

    else
    {
      sub_228390010();
    }

    sub_2283901C0();
    v7 = sub_2283900C0();
    swift_unknownObjectRelease();
    [v7 contentInsets];
    [v7 setContentInsets_];
    (*(v1 + 8))(v4, v0);
    return v7;
  }

  return result;
}

uint64_t sub_2282AA268()
{
  v1 = *(sub_22838F760() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2282A9C44(v3, v0 + v2, v4);
}

void sub_2282AA2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2282AA35C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
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
        type metadata accessor for Dosage();
        v6 = sub_228392220();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Dosage() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2282AA6EC(v8, v9, a1, v4);
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
    return sub_2282AA488(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2282AA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Dosage();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_2282AB724(v24, v18, type metadata accessor for Dosage);
      sub_2282AB724(v21, v14, type metadata accessor for Dosage);
      v25 = *(v8 + 20);
      v26 = sub_22838F3A0();
      sub_2282AB78C(v14, type metadata accessor for Dosage);
      result = sub_2282AB78C(v18, type metadata accessor for Dosage);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_2282ABD68(v24, v37, type metadata accessor for Dosage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2282ABD68(v27, v21, type metadata accessor for Dosage);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282AA6EC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for Dosage();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_2282AB050(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_2283406C0(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_228340634(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_2283406C0(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_2282AB724(v114 + v25 * v24, v19, type metadata accessor for Dosage);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_2282AB724(v27, v120, type metadata accessor for Dosage);
      v30 = *(v9 + 20);
      LODWORD(v115) = sub_22838F3A0();
      sub_2282AB78C(v29, type metadata accessor for Dosage);
      result = sub_2282AB78C(v19, type metadata accessor for Dosage);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_2282AB724(v32, v19, type metadata accessor for Dosage);
        v33 = v120;
        sub_2282AB724(v5, v120, type metadata accessor for Dosage);
        v34 = *(v121 + 20);
        v35 = sub_22838F3A0() & 1;
        sub_2282AB78C(v33, type metadata accessor for Dosage);
        result = sub_2282AB78C(v19, type metadata accessor for Dosage);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_2282ABD68(v42 + v41, v111, type metadata accessor for Dosage);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2282ABD68(v111, v42 + v36, type metadata accessor for Dosage);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_2282AB724(v5, v19, type metadata accessor for Dosage);
    v96 = v120;
    sub_2282AB724(v93, v120, type metadata accessor for Dosage);
    v97 = *(v9 + 20);
    a4 = sub_22838F3A0();
    sub_2282AB78C(v96, type metadata accessor for Dosage);
    result = sub_2282AB78C(v19, type metadata accessor for Dosage);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_228198978(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_228198978((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_2282AB050(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_2283406C0(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_228340634(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for Dosage;
    v98 = v119;
    sub_2282ABD68(v5, v119, type metadata accessor for Dosage);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_2282ABD68(v98, v93, type metadata accessor for Dosage);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_2282AB050(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for Dosage();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_2282AB724(v33, v47, type metadata accessor for Dosage);
          v35 = v48;
          sub_2282AB724(v29, v48, type metadata accessor for Dosage);
          v36 = *(v31 + 20);
          v37 = sub_22838F3A0();
          sub_2282AB78C(v35, type metadata accessor for Dosage);
          sub_2282AB78C(v34, type metadata accessor for Dosage);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_2282AB724(a2, v47, type metadata accessor for Dosage);
        v22 = v48;
        sub_2282AB724(a4, v48, type metadata accessor for Dosage);
        v23 = *(v49 + 20);
        v24 = sub_22838F3A0();
        sub_2282AB78C(v22, type metadata accessor for Dosage);
        sub_2282AB78C(v21, type metadata accessor for Dosage);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_2283333D8(&v52, &v51, &v50);
  return 1;
}

void sub_2282AB580()
{
  if (!qword_27D826E88)
  {
    type metadata accessor for WeekdaysAndDosages(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D826E88);
    }
  }
}

uint64_t sub_2282AB5EC(uint64_t a1, uint64_t a2)
{
  sub_2282AA2F8(0, &qword_27D826E80, sub_2282AB580, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282AB688(char *a1)
{
  v3 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_2282A65F0(a1, v4, v5, v6);
}

uint64_t sub_2282AB724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282AB78C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282AB820(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Dosage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_2282A2B2C(a1, a2, *v2);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v14;
    v38 = v11;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        sub_2282AB724(v24 + v25 * v20, v40, type metadata accessor for Dosage);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = sub_2282AB78C(v26, type metadata accessor for Dosage);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = sub_2282AB724(v24 + v25 * v44, v37, type metadata accessor for Dosage);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_2282AB724(v24 + v43, v38, type metadata accessor for Dosage);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_2281D9378(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = sub_2282675B4(v38, v17 + v42 + v32);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_2282675B4(v37, v34 + v33);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282ABB90(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282AA2F8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2282ABC18()
{
  if (!qword_27D826EA0)
  {
    sub_2282AA2F8(255, &qword_27D826EA8, type metadata accessor for WeekdaysAndDosages, MEMORY[0x277D83940]);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826EA0);
    }
  }
}

uint64_t sub_2282ABCB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2282ABCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282AA2F8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282ABD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282ABDD0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_228392500();
  if (!v26)
  {
    return sub_2283921F0();
  }

  v48 = v26;
  v52 = sub_228393280();
  v39 = sub_228393290();
  sub_228393230();
  result = sub_2283924F0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_228392530();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_228393270();
      result = sub_228392520();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2282AC1F0()
{
  v0 = sub_2282ADBC4();

  return v0;
}

void sub_2282AC218(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t DynamicDataSource.identifier.getter()
{
  v0 = sub_2282ADBBC();

  return v0;
}

uint64_t sub_2282AC2E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2282AC388(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_2282AC430(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_2282AC4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(*v3 + 152));
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return swift_unknownObjectRelease();
}

char *DynamicDataSource.__allocating_init(dataSources:determinerPublisher:defaultDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  v13 = sub_2282ADCA8(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v13;
}

char *DynamicDataSource.init(dataSources:determinerPublisher:defaultDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2282ADCA8(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_2282AC5F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[2];
  swift_getObjectType();
  result = sub_22838FCE0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2282AC640()
{
  v1 = v0;
  v2 = *v0;
  v9 = v1[9];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  sub_228391880();

  swift_getWitnessTable();
  v5 = sub_228391AC0();

  v6 = *(*v1 + 144);
  v7 = *(v1 + v6);
  *(v1 + v6) = v5;
}

uint64_t sub_2282AC79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v7 = *(a3 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](a1);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228392F00();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v48 - v14;
  v57 = v10;
  v59 = *(v10 - 8);
  v16 = v59[8];
  v17 = MEMORY[0x28223BE20](v13);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v58 = &v48 - v22;
  v24 = v7[2];
  v51 = a1;
  v24(&v48 - v22, a1, a3);
  v60 = v7;
  v25 = v7[7];
  v26 = 1;
  v25(v23, 0, 1, a3);
  swift_beginAccess();
  v55 = a2;
  if (swift_weakLoadStrong())
  {
    sub_2282AC2E8(v21);

    v26 = 0;
  }

  v25(v21, v26, 1, a3);
  v54 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v58;
  v29 = v59;
  v30 = v21;
  v31 = v59[2];
  v32 = v57;
  v31(v15, v58, v57);
  v56 = v27;
  v31(&v15[v27], v30, v32);
  v33 = v60[6];
  if (v33(v15, 1, a3) == 1)
  {
    v34 = v29[1];
    v34(v30, v32);
    v34(v28, v32);
    v35 = v15;
    if (v33(&v15[v56], 1, a3) == 1)
    {
      return (v34)(v15, v32);
    }
  }

  else
  {
    v48 = v30;
    v37 = v52;
    v31(v52, v15, v32);
    v38 = v56;
    v35 = v15;
    v39 = v32;
    if (v33(&v15[v56], 1, a3) != 1)
    {
      v41 = v60;
      v42 = &v15[v38];
      v43 = v49;
      (v60[4])(v49, v42, a3);
      v44 = *(v50 + 8);
      v45 = sub_228391FB0();
      v46 = v41[1];
      v46(v43, a3);
      v47 = v59[1];
      v47(v48, v39);
      v47(v58, v39);
      v46(v37, a3);
      result = (v47)(v35, v39);
      if (v45)
      {
        return result;
      }

      goto LABEL_9;
    }

    v40 = v59[1];
    v40(v48, v39);
    v40(v58, v39);
    (v60[1])(v37, a3);
  }

  (*(v53 + 8))(v35, v54);
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282AD158(v51);
  }

  return result;
}

void sub_2282ACCE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v25[-v7];
  v9 = (v1 + *(v3 + 152));
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[2];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v12 unregisterObserver_];

  v13 = v2[8];
  sub_2282AC2E8(v8);
  sub_2281A92A4();
  v14 = *(v3 + 88);
  sub_228391F50();
  (*(v5 + 8))(v8, v4);
  v15 = v26;
  if (v26)
  {
    v16 = v27;
    v17 = v28;
  }

  else
  {
    v18 = v2[5];
    v19 = v2[6];
    v20 = v2[7];
    v15 = swift_unknownObjectRetain();
    v16 = v19;
    v17 = v20;
  }

  sub_2282AC4B4(v15, v16, v17);
  v21 = (v2 + *(*v2 + 152));
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[2];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v24 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v24 registerObserver_];
}

uint64_t sub_2282ACF28()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  swift_getObjectType();
  return sub_228390430() & 1;
}

uint64_t sub_2282ACFAC()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  swift_getObjectType();
  return sub_228390440();
}

uint64_t sub_2282AD048()
{
  sub_228241B70();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283915D0();

  sub_2282AE16C();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2282AD158(uint64_t a1)
{
  v2 = *(*(*(*v1 + 80) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - v3;
  (*(v5 + 16))(&v8 - v3);
  v6 = sub_2282AC388(v4);
  return sub_2282AD218(v6);
}

uint64_t sub_2282AD218(uint64_t a1)
{
  v2 = *v1;
  sub_2282ACCE0(a1);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for DynamicDataSource();
  swift_getWitnessTable();

  return sub_22838FD00();
}

uint64_t *DynamicDataSource.deinit()
{
  v1 = *v0;

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[8];

  v5 = v0[9];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  v6 = *(v0 + *(*v0 + 144));

  v7 = *(v0 + *(*v0 + 152));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DynamicDataSource.__deallocating_deinit()
{
  DynamicDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2282AD424()
{
  v0 = sub_2282ADBBC();

  return v0;
}

uint64_t sub_2282AD45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169918](a1, WitnessTable);
}

uint64_t sub_2282AD4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169910](a1, a2, a3, WitnessTable);
}

uint64_t DynamicDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = *v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(v26 + 152);
  swift_beginAccess();
  v10 = *(v9 + 2);
  v27 = *v9;
  v31 = v27;
  v32 = v10;
  sub_2281A92A4();
  sub_2281810DC(0, &qword_27D826EC0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_22816DFFC(&v28, v33);
    __swift_project_boxed_opaque_existential_0(v33, v33[3]);
    sub_228390270();
    return __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    *&v27 = a1;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_228181138(&v28, qword_27D826EC8, &qword_27D826EC0);
    sub_228391150();

    v12 = sub_2283911A0();
    v13 = sub_2283925C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v31 = v25;
      *v14 = 136315394;
      v15 = sub_228393600();
      v17 = sub_2281C96FC(v15, v16, &v31);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = v2 + *(*v2 + 152);
      swift_beginAccess();
      v19 = *(v18 + 2);
      v28 = *v18;
      *&v29 = v19;
      swift_unknownObjectRetain();
      v20 = sub_228392020();
      v22 = sub_2281C96FC(v20, v21, &v31);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_22816B000, v12, v13, "[%s]: Cannot fetch supplementary item because child data source is not SupplementaryItemDataSource: %s", v14, 0x16u);
      v23 = v25;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v23, -1, -1);
      MEMORY[0x22AAB7B80](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v24 = v27;
    v24[3] = sub_22838FCC0();
    v24[4] = sub_2282AE4F8(&qword_27D825EF8, MEMORY[0x277D10F20]);
    __swift_allocate_boxed_opaque_existential_1(v24);
    return sub_22838FCB0();
  }
}

Swift::Void __swiftcall DynamicDataSource.registerCells(for:)(UICollectionView *a1)
{
  v2 = *(v1 + 56);
  v13 = *(v1 + 40);
  *&v14 = v2;
  sub_2281A92A4();
  sub_2281810DC(0, &qword_27D8243D0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v18, *(&v19 + 1));
    sub_2283902B0();
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_228181138(&v18, &qword_27D8243D8, &qword_27D8243D0);
  }

  v3 = *(v1 + 64);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + 64);

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v11 = *(v3 + 56) + 24 * (__clz(__rbit64(v6)) | (v10 << 6));
        v12 = *(v11 + 16);
        v6 &= v6 - 1;
        v16 = *v11;
        v17 = v12;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_22816DFFC(&v13, &v18);
          __swift_project_boxed_opaque_existential_0(&v18, *(&v19 + 1));
          sub_2283902B0();
          __swift_destroy_boxed_opaque_existential_0(&v18);
          v9 = v10;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v15 = 0;
          v13 = 0u;
          v14 = 0u;
          sub_228181138(&v13, &qword_27D8243D8, &qword_27D8243D0);
          v9 = v10;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v9;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2282ADBBC()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_2282ADBF8()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return result;
}

uint64_t sub_2282ADC50()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  result = *v1;
  v3 = v1[2];
  return result;
}

char *sub_2282ADCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = a4;
  v44 = a5;
  v45 = a2;
  v46 = a3;
  v8 = *v5;
  v9 = sub_22838FDE0();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v39 - v16;
  sub_2282AE4AC();
  v18 = sub_228392ED0();
  v19 = objc_allocWithZone(MEMORY[0x277CCDA88]);
  v20 = sub_228391FC0();
  v21 = [v19 initWithName:v20 loggingCategory:v18];

  *(v6 + 2) = v21;
  *&v6[*(*v6 + 144)] = 0;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_2283931D0();

  v48 = 0xD000000000000012;
  v49 = 0x80000002283B12C0;
  sub_2281A92A4();
  v22 = *(v8 + 88);
  v47 = a1;
  v23 = sub_228391F30();

  WitnessTable = swift_getWitnessTable();
  v26 = sub_2282ABDD0(sub_2282AC5F4, 0, v23, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);

  v47 = v26;
  sub_228231DFC();
  sub_2282AE4F8(&qword_27D825080, sub_228231DFC);
  v27 = sub_228391F90();
  v29 = v28;

  MEMORY[0x22AAB5C80](v27, v29);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v30 = v49;
  *(v6 + 3) = v48;
  *(v6 + 4) = v30;
  v31 = v45;
  *(v6 + 8) = a1;
  *(v6 + 9) = v31;

  sub_228391870();
  (*(v14 + 32))(&v6[*(*v6 + 136)], v17, v13);
  if (v46)
  {
    v32 = v46;
    v34 = v43;
    v33 = v44;
  }

  else
  {
    sub_2283903A0();
    v35 = v40;
    sub_22838FDD0();
    sub_22838FD80();
    (*(v41 + 8))(v35, v42);
    v32 = sub_228390370();
    v33 = MEMORY[0x277D10F80];
    v34 = MEMORY[0x277D110F0];
  }

  *(v6 + 5) = v32;
  *(v6 + 6) = v34;
  *(v6 + 7) = v33;
  v36 = &v6[*(*v6 + 152)];
  *v36 = v32;
  v36[1] = v34;
  v36[2] = v33;
  swift_unknownObjectRetain();
  v37 = swift_unknownObjectRetain();
  sub_2282AD218(v37);
  sub_2282AC640();
  return v6;
}

uint64_t sub_2282AE16C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for DynamicDataSource();
  swift_getWitnessTable();

  return sub_22838FD00();
}

uint64_t sub_2282AE220(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2282AE4AC()
{
  result = qword_27D826F50;
  if (!qword_27D826F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D826F50);
  }

  return result;
}

uint64_t sub_2282AE4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2282AE540(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  sub_22838F540();
  v12 = sub_22838F520();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v11, v4);
  v32[6] = v12;
  v32[7] = v14;
  v32[8] = a1;
  v32[9] = a2;

  sub_22838F540();
  v16 = sub_22838F510();
  v18 = v17;
  result = (v15)(v9, v4);
  v20 = 0;
  v32[10] = v16;
  v32[11] = v18;
  v21 = MEMORY[0x277D84F90];
LABEL_2:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_22824FE6C(0, &qword_27D825070, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      v32[1] = v21;
      sub_22824FE6C(0, &qword_27D827E10, MEMORY[0x277D83940]);
      sub_2281BF13C();
      v31 = sub_228391F90();

      return v31;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *(&v32[2] + v24);
    v24 += 16;
    if (v26)
    {
      v27 = *(&v32[-1] + v25);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228198748(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_228198748((v28 > 1), v29 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v29 + 1;
      v30 = v21 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DDIStepViewController()
{
  result = qword_27D826F58;
  if (!qword_27D826F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2282AE914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDIStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FrequencyIntervalPickerItem.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FrequencyIntervalPickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t FrequencyIntervalPickerItem.uniqueIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for FrequencyIntervalPickerItem() + 20);
  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0xD00000000000001CLL;
}

uint64_t type metadata accessor for FrequencyIntervalPickerItem()
{
  result = qword_27D826FA8;
  if (!qword_27D826FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FrequencyIntervalPickerItem.title.getter()
{
  v1 = (v0 + *(type metadata accessor for FrequencyIntervalPickerItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FrequencyIntervalPickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FrequencyIntervalPickerItem.placeholderText.getter()
{
  v1 = (v0 + *(type metadata accessor for FrequencyIntervalPickerItem() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FrequencyIntervalPickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FrequencyIntervalPickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for FrequencyIntervalPickerItem();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_2282AECD0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for FrequencyIntervalPickerItem() + 36));
  v6 = *v5;
  v7 = v5[1];
  sub_228176FA8(v2);
  result = sub_228176EC8(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t FrequencyIntervalPickerItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for FrequencyIntervalPickerItem() + 36));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t FrequencyIntervalPickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem() + 36));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2282AEE10@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FrequencyIntervalPickerItem() + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F0D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_2282AEEA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FrequencyIntervalPickerItem() + 40));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3);
  result = sub_228176EC8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FrequencyIntervalPickerItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for FrequencyIntervalPickerItem() + 40));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t FrequencyIntervalPickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FrequencyIntervalPickerItem() + 40));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FrequencyIntervalPickerItem.init(title:dataProvider:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for FrequencyIntervalCollectionViewCell();
  sub_2282B152C(&qword_27D826F78, v14, type metadata accessor for FrequencyIntervalCollectionViewCell);
  *a7 = sub_22838FBB0();
  a7[1] = v15;
  v16 = type metadata accessor for FrequencyIntervalPickerItem();
  v17 = a7 + v16[5];
  result = sub_22838F490();
  v19 = (a7 + v16[7]);
  v20 = (a7 + v16[9]);
  v21 = (a7 + v16[10]);
  v22 = (a7 + v16[6]);
  *v22 = a1;
  v22[1] = a2;
  *v19 = 0;
  v19[1] = 0;
  *(a7 + v16[8]) = 1;
  *v20 = a3;
  v20[1] = a4;
  *v21 = a5;
  v21[1] = a6;
  return result;
}

uint64_t sub_2282AF13C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = v2[1];
  }

  sub_228176FA8(*v2);
  return v4;
}

uint64_t sub_2282AF17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 36));
  v7 = v6[1];
  result = sub_228176EC8(*v6);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_2282AF1C0(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 36);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822C53C;
}

uint64_t (*sub_2282AF204(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822F0FC;
}

unint64_t sub_2282AF248(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = sub_22838F450();
  MEMORY[0x22AAB5C80](v3);

  return 0xD00000000000001CLL;
}

uint64_t sub_2282AF2AC(uint64_t a1)
{
  v2 = sub_2282B152C(&qword_27D826F90, 255, type metadata accessor for FrequencyIntervalPickerItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282AF32C(uint64_t a1, void **a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v3) + 0xF0))(v5);
  return sub_2282B0F40(v7, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2282AF3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282AF440(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v4);
  return sub_2282B0F40(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2282AF4F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282AF55C;
}

uint64_t sub_2282AF55C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xF0))(result);
  }

  return result;
}

id sub_2282AF5E0()
{
  sub_22817A958(0, &qword_27D8270B8, 0x277D756B8);
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() labelColor];
  v2 = sub_228392C00();
  v3 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v6 = v5;
  sub_2282B152C(&qword_27D826F78, v5, type metadata accessor for FrequencyIntervalCollectionViewCell);
  v7 = v2;
  v8 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v8);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v9 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  return v7;
}

id sub_2282AF7F8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_2282AF864()
{
  sub_22817A958(0, &qword_27D8270B8, 0x277D756B8);
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() systemBlueColor];
  v2 = sub_228392C00();
  v3 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v6 = v5;
  sub_2282B152C(&qword_27D826F78, v5, type metadata accessor for FrequencyIntervalCollectionViewCell);
  v7 = v2;
  v8 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v8);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C65756C61562ELL, 0xEB000000006C6562);

  v9 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setTextAlignment_];
  return v7;
}

id sub_2282AFA70()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView);
  }

  else
  {
    v4 = sub_2282AFAD0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282AFAD0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75840]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor_];

  v2 = *MEMORY[0x277D12788];
  v6 = sub_228392000();
  v7 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000027, 0x80000002283B1470);

  v4 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

char *sub_2282AFBEC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = objc_opt_self();
  v13 = [v12 separatorColor];
  [v11 setBackgroundColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView] = 0;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for FrequencyIntervalCollectionViewCell();
  v14 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  v16 = [v12 systemBackgroundColor];
  [v15 setBackgroundColor_];

  v17 = [v14 contentView];
  v18 = sub_2282AF5C0();
  [v17 addSubview_];

  v19 = [v14 contentView];
  v20 = sub_2282AF7D8();
  [v19 addSubview_];

  v21 = v14;
  v22 = [v21 contentView];
  [v22 addSubview_];

  v23 = sub_2282AFA70();
  [v23 setDelegate_];

  v24 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView;
  v25 = *&v21[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView];
  [v25 setDataSource_];

  v26 = [v21 contentView];
  [v26 addSubview_];

  sub_2282B024C();
  return v21;
}

id FrequencyIntervalCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2282AFF3C()
{
  sub_2282B168C(0, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23[-v3];
  v5 = type metadata accessor for FrequencyIntervalPickerItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v10, &v24);
  if (!v26)
  {
    sub_2282B0F40(&v24, &qword_280DDCD50, sub_22817A700);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_9;
  }

  sub_22817A700();
  v11 = swift_dynamicCast();
  (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_9:
    sub_2282B0F40(v4, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
    return;
  }

  sub_2282B0F9C(v4, v9);
  v12 = sub_2282AF5C0();
  v13 = &v9[*(v5 + 24)];
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_228391FC0();
  [v12 setText_];

  v17 = &v9[*(v5 + 36)];
  if (!*v17)
  {
    goto LABEL_7;
  }

  v18 = v17[1];
  (*v17)(&v24, v9);
  if (v25)
  {
    goto LABEL_7;
  }

  v19 = v24;
  v20 = sub_2282AF7D8();
  v24 = v19;
  sub_22830F6D4(0);
  v21 = sub_228391FC0();

  [v20 setText_];

  if (!__OFSUB__(v19, 1))
  {
    v22 = sub_2282AFA70();
    [v22 selectRow:v19 - 1 inComponent:0 animated:1];

LABEL_7:
    sub_2282B1000(v9);
    return;
  }

  __break(1u);
}

void sub_2282B024C()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v6 = v5;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  *(inited + 32) = sub_2282AF5C0();
  *(inited + 40) = sub_2282AF7D8();
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView;
  v9 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView];
  *(inited + 48) = v9;
  v10 = v9;
  *(inited + 56) = sub_2282AFA70();
  v11 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAB6D80](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v12 = *(inited + 32);
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v11)
  {
    v14 = MEMORY[0x22AAB6D80](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    v14 = *(inited + 40);
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  if (!v11)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v16 = *(inited + 48);
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = MEMORY[0x22AAB6D80](2, inited);
LABEL_12:
  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v11)
  {
    v18 = MEMORY[0x22AAB6D80](3, inited);
    goto LABEL_16;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v18 = *(inited + 56);
LABEL_16:
    v19 = v18;

    [v19 setTranslatesAutoresizingMaskIntoConstraints_];

    v70 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22839BA70;
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel;
    v20 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel] topAnchor];
    v21 = [v0 contentView];
    v22 = [v21 topAnchor];

    v4 = &off_2785F4000;
    v23 = [v20 constraintEqualToAnchor:v22 constant:12.0];

    *(v6 + 32) = v23;
    inited = &off_2785F4000;
    v1 = [*&v0[v3] leadingAnchor];
    v24 = [v0 contentView];
    v2 = [v24 leadingAnchor];

    if (qword_27D823318 == -1)
    {
LABEL_17:
      v25 = *&qword_27D826F70;
      v26 = [v1 v4[118]];

      *(v6 + 40) = v26;
      v27 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel;
      v28 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel] topAnchor];
      v29 = [*&v0[v3] topAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      *(v6 + 48) = v30;
      v31 = [*&v0[v27] *(inited + 704)];
      v32 = [*&v0[v3] trailingAnchor];
      v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:v25];

      *(v6 + 56) = v33;
      v34 = [*&v0[v27] trailingAnchor];
      v35 = [v0 contentView];
      v36 = [v35 trailingAnchor];

      v37 = [v34 constraintEqualToAnchor:v36 constant:-v25];
      *(v6 + 64) = v37;
      v38 = [*&v0[v8] topAnchor];
      v39 = [*&v0[v3] bottomAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:12.0];

      *(v6 + 72) = v40;
      v41 = [*&v0[v8] topAnchor];
      v42 = [*&v0[v27] bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:12.0];

      *(v6 + 80) = v43;
      v44 = [*&v0[v8] leadingAnchor];
      v45 = [*&v0[v3] leadingAnchor];
      v46 = [v44 constraintEqualToAnchor_];

      *(v6 + 88) = v46;
      v47 = [*&v0[v8] trailingAnchor];
      v48 = [v0 contentView];
      v49 = [v48 trailingAnchor];

      v50 = [v47 constraintEqualToAnchor_];
      *(v6 + 96) = v50;
      v51 = [*&v0[v8] heightAnchor];
      v52 = [v51 constraintEqualToConstant_];

      *(v6 + 104) = v52;
      v53 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView;
      v54 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView] topAnchor];
      v55 = [*&v0[v8] bottomAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:12.0];

      *(v6 + 112) = v56;
      v57 = [*&v0[v53] leadingAnchor];
      v58 = [v0 contentView];
      v59 = [v58 leadingAnchor];

      v60 = [v57 constraintEqualToAnchor_];
      *(v6 + 120) = v60;
      v61 = [*&v0[v53] trailingAnchor];
      v62 = [v0 &selRef_didTapDay_];
      v63 = [v62 trailingAnchor];

      v64 = [v61 constraintEqualToAnchor_];
      *(v6 + 128) = v64;
      v65 = [*&v0[v53] bottomAnchor];
      v66 = [v0 &selRef_didTapDay_];
      v67 = [v66 bottomAnchor];

      v68 = [v65 constraintEqualToAnchor:v67 constant:-12.0];
      *(v6 + 136) = v68;
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
      v69 = sub_228392190();

      [v70 activateConstraints_];

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
}

id FrequencyIntervalCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrequencyIntervalCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int __swiftcall FrequencyIntervalCollectionViewCell.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  v2 = *(sub_22830F9DC() + 16);

  return v2;
}

Swift::String_optional __swiftcall FrequencyIntervalCollectionViewCell.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v4 = sub_22830F9DC();
  if (titleForRow < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v4 + 16) <= titleForRow)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(v4 + 8 * titleForRow + 32);

  v4 = sub_22830F6D4(0);
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t FrequencyIntervalCollectionViewCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2282B0DF4()
{
  sub_228390360();
  result = sub_228390350();
  qword_27D826F70 = v1;
  return result;
}

void _s19HealthMedicationsUI35FrequencyIntervalCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel) = 0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_separatorView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() separatorColor];
  [v3 setBackgroundColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___pickerView) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282B0F40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2282B168C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282B0F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrequencyIntervalPickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282B1000(uint64_t a1)
{
  v2 = type metadata accessor for FrequencyIntervalPickerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2282B105C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2282B168C(0, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30[-v11];
  v13 = type metadata accessor for FrequencyIntervalPickerItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v2[v18], &v31);
  if (!v33)
  {
    sub_2282B0F40(&v31, &qword_280DDCD50, sub_22817A700);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_8;
  }

  sub_22817A700();
  v19 = swift_dynamicCast();
  (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_8:
    sub_2282B0F40(v12, &qword_27D826F88, type metadata accessor for FrequencyIntervalPickerItem);
LABEL_9:
    sub_228391150();
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22816B000, v27, v28, "Item is not a FrequencyIntervalPickerItem. Unable to update.", v29, 2u);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  sub_2282B0F9C(v12, v17);
  v20 = &v17[*(v13 + 40)];
  v21 = *v20;
  if (!*v20)
  {
    sub_2282B1000(v17);
    goto LABEL_9;
  }

  v22 = *(v20 + 1);

  result = sub_22830F9DC();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v24 = *(result + 8 * a1 + 32);

    v25 = sub_2282AF7D8();
    v31 = v24;
    sub_22830F6D4(0);
    v26 = sub_228391FC0();

    [v25 setText_];

    [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell____lazy_storage___valueLabel] sizeToFit];
    [v2 invalidateIntrinsicContentSize];
    [v2 setNeedsLayout];
    v31 = v24;
    v32 = 0;
    v21(v17, &v31);
    sub_228176EC8(v21);
    return sub_2282B1000(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_2282B152C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2282B159C()
{
  v0 = MEMORY[0x277D837D0];
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_22821B3F8(319, &qword_27D825070, v0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2282B168C(319, &unk_27D826FC0, sub_2281C35D8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2282B168C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t MedicationDoseEventDataSource.__allocating_init(healthStore:forMedication:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  return v4;
}

uint64_t MedicationDoseEventDataSource.init(healthStore:forMedication:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_2282B1850(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_2283911B0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_2282B27D8(0, &qword_27D8270C0, MEMORY[0x277CCB610]);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2282B19B0, v1, 0);
}

uint64_t sub_2282B19B0()
{
  v1 = v0[2];
  v2 = *(v0[3] + 120);
  if (v2)
  {
    sub_228180ED0();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_228397F20;
    v4 = objc_opt_self();
    v5 = v2;
    v6 = sub_22838EF00();
    v7 = [v4 predicateForSamplesWithinDateInterval:v6 options:0];

    *(v3 + 32) = v7;
    v8 = [v5 semanticIdentifier];
    v9 = [v8 stringValue];

    if (!v9)
    {
      sub_228392000();
      v9 = sub_228391FC0();
    }

    v10 = [v4 predicateForMedicationDoseEventWithMedicationIdentifier_];

    *(v3 + 40) = v10;
    sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
    v11 = sub_228392190();

    v12 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v13 = objc_opt_self();
    v11 = sub_22838EF00();
    v12 = [v13 predicateForSamplesWithinDateInterval:v11 options:0];
  }

  v0[11] = v12;
  v14 = v0[10];
  v15 = v0[3];

  v16 = MEMORY[0x277CCB570];
  sub_2282B2780(0, &qword_27D8270C8, &qword_27D8270D0, MEMORY[0x277CCB570]);
  sub_2282B27D8(0, &qword_27D8270D0, v16);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v20 = [objc_opt_self() medicationDoseEventType];
  sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
  v21 = v12;
  sub_228391E60();

  v22 = MEMORY[0x277CC89F0];
  sub_2282B2780(0, &qword_27D8270D8, &qword_27D8270E0, MEMORY[0x277CC89F0]);
  sub_2282B27D8(0, &qword_27D8270E0, v22);
  v24 = *(*(v23 - 8) + 72);
  v25 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  KeyPath = swift_getKeyPath();
  MEMORY[0x22AAB2C30](KeyPath, 0);
  sub_228391E80();
  v27 = *(v15 + 112);
  v28 = *(MEMORY[0x277CCB608] + 4);
  v29 = swift_task_alloc();
  v0[12] = v29;
  *v29 = v0;
  v29[1] = sub_2282B1E18;
  v30 = v0[10];
  v31 = v0[8];

  return MEMORY[0x282120380](v27, v31);
}

uint64_t sub_2282B1E18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_2282B218C;
  }

  else
  {
    v4[14] = a1;
    v8 = sub_2282B1F54;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2282B1F54()
{
  v29 = v0;
  v1 = sub_2281BFDA8(v0[14]);

  if (v1)
  {
    v2 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    v3 = v0[7];
    sub_228391190();
    v4 = sub_2283911A0();
    v5 = sub_2283925C0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    v13 = v0[5];
    if (v6)
    {
      v26 = v0[7];
      v14 = v0[4];
      v27 = v0[8];
      v15 = swift_slowAlloc();
      v25 = v8;
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      v17 = sub_228393600();
      v24 = v7;
      v19 = sub_2281C96FC(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_22816B000, v4, v5, "[%s] Error fetching medication dose event samples", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AAB7B80](v16, -1, -1);
      MEMORY[0x22AAB7B80](v15, -1, -1);

      (*(v11 + 8))(v26, v13);
      (*(v9 + 8))(v24, v27);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
      (*(v9 + 8))(v7, v10);
    }

    v1 = MEMORY[0x277D84F90];
  }

  v20 = v0[10];
  v21 = v0[7];

  v22 = v0[1];

  return v22(v1);
}

uint64_t sub_2282B218C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);
  v6 = *(v0 + 104);

  return v5();
}

void sub_2282B2228(id *a1)
{
  v1 = [*a1 startDate];
  sub_22838F3E0();
}

uint64_t sub_2282B2288(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2282B27D8(0, &qword_27D8270E8, MEMORY[0x277CCB650]);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2282B2368, v2, 0);
}

uint64_t sub_2282B2368()
{
  v1 = v0[3];
  v2 = *(v0[4] + 120);
  if (v2)
  {
    sub_228180ED0();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_228397F20;
    v4 = objc_opt_self();
    v5 = v2;
    v6 = sub_22838EF00();
    v7 = [v4 predicateForSamplesWithinDateInterval:v6 options:0];

    *(v3 + 32) = v7;
    v8 = [v5 semanticIdentifier];
    v9 = [v8 stringValue];

    if (!v9)
    {
      sub_228392000();
      v9 = sub_228391FC0();
    }

    v10 = [v4 predicateForMedicationDoseEventWithMedicationIdentifier_];

    *(v3 + 40) = v10;
    sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
    v11 = sub_228392190();

    v12 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v13 = objc_opt_self();
    v11 = sub_22838EF00();
    v12 = [v13 predicateForSamplesWithinDateInterval:v11 options:0];
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  v26 = v0[4];
  v27 = v0[2];

  v17 = MEMORY[0x277CCB570];
  sub_2282B2780(0, &qword_27D8270C8, &qword_27D8270D0, MEMORY[0x277CCB570]);
  sub_2282B27D8(0, &qword_27D8270D0, v17);
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v21 = [objc_opt_self() medicationDoseEventType];
  sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
  v22 = v12;
  sub_228391E60();

  sub_228391ED0();
  v23 = *(v26 + 112);
  sub_228391EF0();

  (*(v15 + 8))(v14, v16);

  v24 = v0[1];

  return v24();
}

uint64_t MedicationDoseEventDataSource.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_2282B2780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2282B27D8(255, a3, a4);
    v5 = sub_228393430();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2282B27D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22817A958(255, &unk_280DDB968, 0x277CCD8A8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of MedicationDoseEventDataSource.fetchDoseEvents(in:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2282B29C4;

  return v8(a1);
}

uint64_t sub_2282B29C4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MedicationDoseEventDataSource.observeDoseEvents(in:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22819D87C;

  return v10(a1, a2);
}

id sub_2282B2BEC(double a1, double a2, double a3, double a4)
{
  sub_2282B41F4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___boltIconImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___labelView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___secondaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton] = 0;
  v14 = type metadata accessor for ConnectivityIssueCell();
  v19.receiver = v4;
  v19.super_class = v14;
  v15 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v15 setSelectedBackgroundView_];
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v15 setBackgroundColor_];

  sub_228391380();
  v17 = sub_2283913A0();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  MEMORY[0x22AAB6420](v12);

  sub_2282B39E0();
  return v15;
}

id sub_2282B2EB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithPointSize_];
  v3 = sub_228391FC0();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() secondarySystemFillColor];
    v6 = [v1 configurationWithHierarchicalColor_];

    v7 = [v4 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v7 = 0;
  }

  [v0 setImage_];

  return v0;
}

id sub_2282B3044()
{
  v0 = sub_228391430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228391590();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setNumberOfLines_];
  v11 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v12 = sub_228391FC0();

  [v10 setText_];

  sub_228391500();
  sub_228391460();
  (*(v6 + 8))(v9, v5);
  v13 = sub_228391400();
  (*(v1 + 8))(v4, v0);
  [v10 setFont_];

  return v10;
}

id sub_2282B3304(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2282B3364()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    MobileGestalt_get_wapiCapability();

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v4 = sub_228391FC0();

    [v0 setText_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2282B34F4()
{
  v1 = v0;
  v2 = sub_228392DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton;
  v11 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton);
  }

  else
  {
    sub_228392DA0();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228392DB0();
    v13 = [objc_opt_self() tintColor];
    sub_228392D60();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    (*(v3 + 16))(v7, v9, v2);
    v14 = sub_228392DF0();
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v15 = sub_228392C90();
    [v14 addAction:v15 forControlEvents:64];

    (*(v3 + 8))(v9, v2);
    v16 = *(v1 + v10);
    *(v1 + v10) = v14;
    v12 = v14;

    v11 = 0;
  }

  v17 = v11;
  return v12;
}

id sub_2282B378C()
{
  sub_2282B41F4(0, &qword_27D824530, MEMORY[0x277CC9260]);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = [objc_opt_self() internalSettingsURLString];
  sub_228392000();

  sub_22838F1E0();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    sub_2282B4188(v6, v4, &qword_27D824530, MEMORY[0x277CC9260]);
    v10 = sub_22838F1F0();
    v11 = *(v10 - 8);
    v12 = 0;
    if ((*(v11 + 48))(v4, 1, v10) != 1)
    {
      v12 = sub_22838F1C0();
      (*(v11 + 8))(v4, v10);
    }

    sub_2281A8644(MEMORY[0x277D84F90]);
    v13 = sub_228391F10();

    [v9 openSensitiveURL:v12 withOptions:v13];

    return sub_2282B4248(v6, &qword_27D824530, MEMORY[0x277CC9260]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2282B39E0()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F00;
  *(v1 + 32) = sub_2282B2E90();
  *(v1 + 40) = sub_2282B3024();
  *(v1 + 48) = sub_2282B32E4();
  *(v1 + 56) = sub_2282B34F4();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAlignment_];
  [v4 setAxis_];
  [v4 setSpacing_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v26 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v5 centerXAnchor];
  v9 = [v0 contentView];
  v10 = [v9 centerXAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v11;
  v12 = [v5 centerYAnchor];
  v13 = [v0 contentView];
  v14 = [v13 centerYAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v7 + 40) = v15;
  v16 = [v5 leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v7 + 48) = v20;
  v21 = [v5 trailingAnchor];

  v22 = [v0 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v7 + 56) = v25;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v27 = sub_228392190();

  [v26 activateConstraints_];
}

id sub_2282B3DEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectivityIssueCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282B3EDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell_item;
  swift_beginAccess();
  return sub_2282B4188(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2282B3F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2282B4034()
{
  type metadata accessor for ConnectivityIssueCell();
  sub_2282B4144(&qword_27D8239E0, type metadata accessor for ConnectivityIssueCell);
  return sub_22838FBB0();
}

uint64_t sub_2282B4098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_2282B4144(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282B4188(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2282B41F4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2282B41F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2282B4248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2282B41F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for MedicationSourceListDataSource()
{
  result = qword_27D827148;
  if (!qword_27D827148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282B4368(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  sub_2281810DC(0, &qword_280DDB860);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

void sub_2282B4424(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2283930D0();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
  v5 = sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
  v18[1] = MEMORY[0x22AAB6030](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_2283932B0() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_2283932F0() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_228176F04();
      return;
    }

LABEL_11:
    sub_2282D6998(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:
    v16 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_2282B4618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2283922A0();
  v4[4] = sub_228392290();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2282B46C8;

  return sub_2282B5388();
}

uint64_t sub_2282B46C8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282B480C, v6, v5);
}

uint64_t sub_2282B480C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + qword_27D827120);
  sub_2282B9240(v1, sub_2281DB0C4, sub_2282668A8);

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v5 = sub_228392790();
  v6 = objc_allocWithZone(MEMORY[0x277D12AD0]);
  sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
  v7 = sub_228392190();

  v8 = [v6 initWithHealthStore:v4 sources:v7 queue:v5];

  [v8 registerObserver_];
  [v8 setShouldFetchAppIcons_];
  [v8 setShouldFetchAppInstallationStatus_];
  [v8 fetchSources];
  v9 = *(v3 + qword_27D827128);
  *(v3 + qword_27D827128) = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2282B49B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282B90F4(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v50 - v14;
  v16 = sub_22838F750();
  if (v16 == 2)
  {
    v33 = *MEMORY[0x277D767D8];
    if (sub_228392000() == a1 && v34 == a2)
    {
    }

    else
    {
      v36 = sub_228393460();

      if ((v36 & 1) == 0)
      {
        v37 = *MEMORY[0x277D767D0];
        if (sub_228392000() == a1 && v38 == a2)
        {
        }

        else
        {
          v40 = sub_228393460();

          if ((v40 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        if (qword_27D823308 == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    if (qword_27D823308 != -1)
    {
      goto LABEL_55;
    }

LABEL_45:
    sub_22838F0C0();
    v42 = sub_228390130();
    (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
    a3[3] = sub_228390150();
    a3[4] = sub_2282B9560(&qword_27D824EC8, MEMORY[0x277D10FE8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_228390140();
  }

  if (v16 == 1)
  {
    v25 = *MEMORY[0x277D767D8];
    if (sub_228392000() == a1 && v26 == a2)
    {
    }

    else
    {
      v28 = sub_228393460();

      if ((v28 & 1) == 0)
      {
        v29 = *MEMORY[0x277D767D0];
        if (sub_228392000() == a1 && v30 == a2)
        {
        }

        else
        {
          v32 = sub_228393460();

          if ((v32 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        if (qword_27D823308 == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    if (qword_27D823308 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  if (v16)
  {
    goto LABEL_36;
  }

  v17 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v18 == a2)
  {

LABEL_44:
    if (qword_27D823308 == -1)
    {
      goto LABEL_45;
    }

LABEL_55:
    swift_once();
    goto LABEL_45;
  }

  v20 = sub_228393460();

  if (v20)
  {
    goto LABEL_44;
  }

  v21 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v22 == a2)
  {

    goto LABEL_53;
  }

  v24 = sub_228393460();

  if ((v24 & 1) == 0)
  {
LABEL_36:
    a3[3] = sub_22838FC00();
    a3[4] = sub_2282B9560(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_22838FBF0();
  }

LABEL_53:
  if (qword_27D823308 != -1)
  {
LABEL_56:
    swift_once();
  }

LABEL_54:
  sub_22838F0C0();
  sub_228241A58(0, &qword_280DDB870, &qword_280DDB830);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_228397F40;
  v50[0] = *(v3 + qword_27D827118);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v44 = sub_228390F20();
  v46 = v45;
  *(v43 + 56) = MEMORY[0x277D837D0];
  *(v43 + 64) = sub_22818E210();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  sub_228392010();

  v50[0] = 0x74497265746F6F46;
  v50[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v47 = sub_22838F450();
  v49 = v48;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AAB5C80](v47, v49);

  a3[3] = sub_228390330();
  a3[4] = sub_2282B9560(&qword_27D8244F8, MEMORY[0x277D110D8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

uint64_t sub_2282B5388()
{
  v1[175] = v0;
  sub_2283922A0();
  v1[176] = sub_228392290();
  v3 = sub_228392250();
  v1[177] = v3;
  v1[178] = v2;

  return MEMORY[0x2822009F8](sub_2282B5424, v3, v2);
}

uint64_t sub_2282B5424()
{
  v1 = *(v0 + 1400);
  sub_2282B9CF8();
  *(v0 + 1432) = v2;
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 16, v0 + 1384, sub_2282B54F4, v0 + 1296);
}

uint64_t sub_2282B5510()
{
  *(v0 + 1368) = *(v0 + 1384);

  return MEMORY[0x282200928](v0 + 656, v0 + 1392, sub_2282B5580, v0 + 1296);
}

uint64_t sub_2282B559C()
{
  v1 = v0[179];
  v0[172] = v0[174];
  v6 = MEMORY[0x277D84FA0];

  v2 = v0[171];

  sub_2282B5A68(v3);

  sub_2282B5A68(v4);
  swift_arrayDestroy();
  v0[180] = v6;

  return MEMORY[0x282200920](v0 + 82, v0 + 174, sub_2282B5660, v0 + 162);
}

uint64_t sub_2282B56B8()
{
  v1 = v0[176];

  v2 = v0[1];
  v3 = v0[180];

  return v2(v3);
}

uint64_t sub_2282B571C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2282B57B0;

  return sub_2282B5C60();
}

uint64_t sub_2282B57B0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2282B9E38, 0, 0);
}

uint64_t sub_2282B58B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2282B5944;

  return sub_2282B6490();
}

uint64_t sub_2282B5944(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2282B5A44, 0, 0);
}

void sub_2282B5A68(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_228393080();
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    sub_2283924C0();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_228176F04();
      return;
    }

    while (1)
    {
      sub_2282D6998(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_228393100())
      {
        sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2282B5C60()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_2283911B0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  sub_2282B9B8C();
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_2282B9BF4();
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_2283922A0();
  v1[12] = sub_228392290();
  v11 = sub_228392250();
  v1[13] = v11;
  v1[14] = v10;

  return MEMORY[0x2822009F8](sub_2282B5E04, v11, v10);
}

uint64_t sub_2282B5E04()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[3];
  v4 = [*(v3 + qword_27D827118) semanticIdentifier];
  v5 = [v4 healthConceptIdentifier];
  v0[15] = v5;

  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  v6 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v7 = [objc_opt_self() predicateForMedicationDoseEventWithMedicationConceptIdentifier_];
  sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
  sub_228391E60();

  sub_228391EB0();
  v8 = *(v3 + qword_27D827120);
  v9 = *(MEMORY[0x277CCB618] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_2282B5FB0;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x282120390](v8, v12);
}

uint64_t sub_2282B5FB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_2282B61D0;
  }

  else
  {
    v4[18] = a1;
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_2282B60D8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2282B60D8()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  v7 = sub_2282B97D0(v1, &qword_27D824240, 0x277CCDA00, &qword_27D827840, sub_2282D6998);

  (*(v6 + 8))(v4, v5);
  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];

  v11 = v0[1];

  return v11(v7);
}

uint64_t sub_2282B61D0()
{
  v39 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];

  (*(v6 + 8))(v4, v5);
  sub_228391190();
  v8 = v1;
  v9 = sub_2283911A0();
  v10 = sub_2283925C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[17];
    v12 = v0[6];
    v37 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315394;
    v17 = sub_228393600();
    v19 = sub_2281C96FC(v17, v18, &v38);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v0[2] = v11;
    v20 = v11;
    sub_2281810DC(0, &qword_280DDB860);
    v21 = sub_228392020();
    v23 = sub_2281C96FC(v21, v22, &v38);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_22816B000, v9, v10, "[%s] %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v15, -1, -1);

    (*(v12 + 8))(v37, v13);
  }

  else
  {
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[5];

    (*(v25 + 8))(v24, v26);
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v27 = v0[17];
LABEL_6:
    v28 = MEMORY[0x277D84FA0];
    goto LABEL_7;
  }

  v34 = sub_2283930D0();
  v27 = v0[17];
  if (!v34)
  {
    goto LABEL_6;
  }

  v35 = v0[17];
  sub_2281F0334(MEMORY[0x277D84F90]);
  v28 = v36;
  v27 = v35;
LABEL_7:

  v29 = v0[11];
  v31 = v0[7];
  v30 = v0[8];

  v32 = v0[1];

  return v32(v28);
}

uint64_t sub_2282B6490()
{
  v1[20] = v0;
  v1[21] = *v0;
  v2 = sub_2283911B0();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_2283922A0();
  v1[25] = sub_228392290();
  v6 = sub_228392250();
  v1[26] = v6;
  v1[27] = v5;

  return MEMORY[0x2822009F8](sub_2282B65AC, v6, v5);
}

uint64_t sub_2282B65AC()
{
  v1 = v0[20];
  v2 = [*(v1 + qword_27D827118) semanticIdentifier];
  v3 = [v2 healthConceptIdentifier];
  v0[28] = v3;

  v4 = *(v1 + qword_27D827130);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2282B6718;
  v5 = swift_continuation_init();
  sub_2282B95A8();
  v0[17] = v6;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2282B6CC4;
  v0[13] = &block_descriptor_5_1;
  v0[14] = v5;
  [v4 fetchAuthorizationStatusesForHealthConceptIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2282B6718()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_2282B6A38;
  }

  else
  {
    v6 = sub_2282B6848;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void *sub_2282B6848()
{
  v1 = v0[25];

  v2 = v0[18];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[18];
    }

    v4 = sub_2282B9928();
LABEL_5:
    v5 = v0[28];
    v6 = v0[20];
    v7 = *(v6 + qword_27D827138);
    *(v6 + qword_27D827138) = v4;

    sub_2282B4424(v2);
    v9 = v8;

    v10 = v0[24];

    v11 = v0[1];

    return v11(v9);
  }

  else
  {
    sub_22829BC4C();
    result = sub_228393330();
    v4 = result;
    v13 = 0;
    v14 = 1 << *(v2 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v2 + 64);
    v17 = (v14 + 63) >> 6;
    v27 = (result + 8);
    if (v16)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v13 << 6);
        v22 = *(*(v2 + 56) + 8 * v21);
        v23 = *(*(v2 + 48) + 8 * v21);
        result = [v22 integerValue];
        *&v27[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        *(v4[6] + 8 * v21) = v23;
        *(v4[7] + 8 * v21) = result;
        v24 = v4[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v4[2] = v26;
        if (!v16)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v19 = v13;
      while (1)
      {
        v13 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v13 >= v17)
        {
          goto LABEL_5;
        }

        v20 = *(v2 + 64 + 8 * v13);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v16 = (v20 - 1) & v20;
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282B6A38()
{
  v34 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[24];
  v3 = v0[25];

  swift_willThrow();

  sub_228391190();
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[29];
    v9 = v0[23];
    v32 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136315394;
    v14 = sub_228393600();
    v16 = sub_2281C96FC(v14, v15, v33);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[19] = v8;
    v17 = v8;
    sub_2281810DC(0, &qword_280DDB860);
    v18 = sub_228392020();
    v20 = sub_2281C96FC(v18, v19, v33);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_22816B000, v6, v7, "[%s] %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v32, v10);
  }

  else
  {
    v22 = v0[23];
    v21 = v0[24];
    v23 = v0[22];

    (*(v22 + 8))(v21, v23);
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v24 = v0[29];
LABEL_6:
    v25 = MEMORY[0x277D84FA0];
    goto LABEL_7;
  }

  v29 = sub_2283930D0();
  v24 = v0[29];
  if (!v29)
  {
    goto LABEL_6;
  }

  v30 = v0[29];
  sub_2281F0334(MEMORY[0x277D84F90]);
  v25 = v31;
  v24 = v30;
LABEL_7:

  v26 = v0[24];

  v27 = v0[1];

  return v27(v25);
}

uint64_t sub_2282B6CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2281810DC(0, &qword_280DDB860);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    **(*(v4 + 64) + 40) = sub_228391F20();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2282B6E38()
{
  v1 = *(v0 + qword_27D827138);

  v2 = *(v0 + qword_27D827140);
  v3 = *(v0 + qword_27D827140 + 8);

  return sub_228176EC8(v2);
}

uint64_t sub_2282B6EBC()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D827118);

  v2 = *(v0 + qword_27D827138);

  v3 = *(v0 + qword_27D827140 + 8);
  sub_228176EC8(*(v0 + qword_27D827140));

  return swift_deallocClassInstance();
}

uint64_t sub_2282B6F74()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_228390010();
  sub_228390000();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_228390060();
  v9 = sub_2283900C0();
  v8(v7, v0);
  return v9;
}

uint64_t sub_2282B7098()
{
  type metadata accessor for MedicationSourceListCell();
  sub_2283926B0();
  type metadata accessor for MedicationSourceListNoneCell();
  sub_2283926B0();
  sub_228390120();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  sub_2283903E0();
  sub_2283926D0();
  sub_2283926C0();
  sub_228390190();
  return sub_2283926B0();
}

uint64_t sub_2282B71E8(uint64_t a1, char a2)
{
  *(v3 + 201) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  *(v3 + 224) = *v2;
  v4 = sub_2283911B0();
  *(v3 + 232) = v4;
  v5 = *(v4 - 8);
  *(v3 + 240) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  sub_2282B90F4(0, &qword_27D827160, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  sub_2283922A0();
  *(v3 + 264) = sub_228392290();
  v10 = sub_228392250();
  *(v3 + 272) = v10;
  *(v3 + 280) = v9;

  return MEMORY[0x2822009F8](sub_2282B7364, v10, v9);
}

uint64_t sub_2282B7364()
{
  if (*(v0 + 201))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = [*(v0 + 208) bundleIdentifier];
  if (!v2)
  {
    sub_228392000();
    v2 = sub_228391FC0();
  }

  *(v0 + 288) = v2;
  v3 = *(v0 + 256);
  v4 = [*(*(v0 + 216) + qword_27D827118) semanticIdentifier];
  v5 = [v4 healthConceptIdentifier];
  *(v0 + 296) = v5;

  sub_2282B90F4(0, &qword_27D827168, sub_2282B9158, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F40;
  *(inited + 32) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = v5;
  *(inited + 40) = [v7 initWithInteger_];
  sub_2281A88DC(inited);
  swift_setDeallocating();
  sub_2282B9318(inited + 32, sub_2282B9158);
  v9 = sub_22838F4A0();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  sub_22817A958(0, &qword_27D824258, 0x277CCD4B0);
  sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
  sub_2281A89C4(&qword_27D824260, &qword_27D824258, 0x277CCD4B0);
  v11 = sub_228391F10();

  v12 = 0;
  if ((*(v10 + 48))(v3, 1, v9) != 1)
  {
    v13 = *(v0 + 256);
    v12 = sub_22838F460();
    (*(v10 + 8))(v13, v9);
  }

  v14 = *(v0 + 216);
  v15 = [objc_allocWithZone(MEMORY[0x277CCD718]) initWithObjectAuthorizationStatuses:v11 sessionIdentifier:v12];
  *(v0 + 304) = v15;

  v16 = *(v14 + qword_27D827130);
  v17 = [objc_opt_self() userAnnotatedMedicationType];
  *(v0 + 312) = v17;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2282B7758;
  v18 = swift_continuation_init();
  sub_2281E0600();
  *(v0 + 136) = v19;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2282B4368;
  *(v0 + 104) = &block_descriptor_20;
  *(v0 + 112) = v18;
  [v16 setObjectAuthorizationStatusContext:v15 forObjectType:v17 bundleIdentifier:v2 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2282B7758()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = sub_2282B7950;
  }

  else
  {
    v6 = sub_2282B7888;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2282B7888()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 264);

  sub_2281810DC(0, &qword_280DDB860);
  sub_228393590();

  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);

  v10 = *(v0 + 8);

  return v10(v6, v7);
}

uint64_t sub_2282B7950()
{
  v33 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);

  swift_willThrow();

  sub_228391190();
  v7 = v1;
  v8 = sub_2283911A0();
  v9 = sub_2283925C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 320);
    v11 = *(v0 + 240);
    v31 = *(v0 + 248);
    v12 = *(v0 + 224);
    v29 = *(v0 + 296);
    v30 = *(v0 + 232);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v13 = 136315394;
    v16 = sub_228393600();
    v18 = sub_2281C96FC(v16, v17, &v32);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_22816B000, v8, v9, "[%s] %@", v13, 0x16u);
    sub_2282B9318(v14, sub_2281933B0);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v11 + 8))(v31, v30);
  }

  else
  {
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 232);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 320);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);

  v27 = *(v0 + 8);

  return v27(v24, 1);
}

uint64_t sub_2282B7BB0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2282B7C54;

  return sub_2282B71E8(a1, a2);
}

uint64_t sub_2282B7C54(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_2282B7D58(void *a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 sources];
  v149 = v1;
  if (!v9)
  {
    sub_2282B90F4(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v71 = *(sub_22838FEF0() - 8);
    v72 = *(v71 + 72);
    v148 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v73 = swift_allocObject();
    v147 = xmmword_228397F40;
    *(v73 + 16) = xmmword_228397F40;
    sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
    v74 = v5;
    v75 = swift_allocObject();
    *(v75 + 16) = v147;
    v76 = type metadata accessor for MedicationSourceListNoneItem();
    v77 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell();
    v77[2] = sub_22838FBB0();
    v77[3] = v78;
    sub_22838F490();
    v79 = sub_22838F450();
    v81 = v80;
    v82 = *(v74 + 8);
    v82(v8, v4);
    v77[4] = v79;
    v77[5] = v81;
    *(v75 + 56) = v76;
    *(v75 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem);
    *(v75 + 32) = v77;
    sub_22838F490();
    sub_22838F450();
    v82(v8, v4);
    v83 = v149;
    sub_22838FED0();
    sub_22838FF50();
    goto LABEL_60;
  }

  v148 = v8;
  *&v147 = v4;
  v10 = v9;
  v11 = [v9 orderedAppSources];
  sub_22817A958(0, &qword_27D824A00, 0x277D12AC0);
  v12 = sub_2283921A0();

  v13 = [v10 orderedUninstalledAppSources];
  v14 = sub_2283921A0();

  v150 = v12;
  sub_2281D5E8C(v14);
  v15 = v150;
  v16 = [v10 orderedResearchStudySources];
  v17 = sub_2283921A0();

  v139 = v10;
  v18 = [v10 orderedDeviceSources];
  v19 = sub_2283921A0();

  v20 = v15;
  if (v15 >> 62)
  {
    v103 = v15;
    v21 = sub_2283930D0();
    v20 = v103;
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  v140 = v5;
  v145 = v17;
  v146 = v19;
  if (v21)
  {
    v23 = v20;
    v150 = MEMORY[0x277D84F90];
    result = sub_228393240();
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    v25 = objc_opt_self();
    v26 = 0;
    v27 = v23;
    v141 = v23 & 0xC000000000000001;
    v142 = v25;
    v143 = v21;
    v144 = v23;
    do
    {
      if (v141)
      {
        v34 = MEMORY[0x22AAB6D80](v26, v27);
      }

      else
      {
        v34 = v27[v26 + 4];
      }

      v35 = v34;
      v36 = [v34 source];
      v37 = sub_2282B8DCC(v36);

      v38 = [v142 tertiarySystemBackgroundColor];
      v39 = type metadata accessor for MedicationSourceListToggleItem();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      v42 = swift_allocObject();
      *(v42 + qword_27D8251F8 + 8) = 0;
      v43 = swift_unknownObjectWeakInit();
      *(v42 + qword_27D825200) = 0;
      *(v42 + qword_27D825208) = v35;
      *(v42 + qword_27D8251F0) = v37 == 2;
      *(v43 + 8) = &off_283B6BAB8;
      swift_unknownObjectWeakAssign();
      v44 = v35;
      v45 = [v44 icon];
      v28 = v45;
      if (!v45)
      {
        sub_22838FAC0();
        v46 = sub_22838FAB0();
        if (!v46)
        {
          v46 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        }

        v28 = v46;
      }

      ++v26;
      v29 = v45;
      v30 = v28;
      v31 = [v44 source];
      v32 = [v31 name];

      sub_228392000();
      sub_2283901A0();

      sub_228393210();
      v33 = *(v150 + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v27 = v144;
    }

    while (v143 != v26);

    v2 = v149;
    v141 = v150;
    v5 = v140;
    v17 = v145;
    v19 = v146;
    v22 = MEMORY[0x277D84F90];
    if (!(v145 >> 62))
    {
LABEL_16:
      v47 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_17;
      }

LABEL_31:

      v70 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }
  }

  else
  {

    v141 = MEMORY[0x277D84F90];
    if (!(v17 >> 62))
    {
      goto LABEL_16;
    }
  }

  v47 = sub_2283930D0();
  if (!v47)
  {
    goto LABEL_31;
  }

LABEL_17:
  v150 = v22;
  result = sub_228393240();
  if (v47 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v48 = objc_opt_self();
  v49 = 0;
  v50 = v17;
  v142 = (v17 & 0xC000000000000001);
  v143 = v48;
  v144 = v47;
  do
  {
    if (v142)
    {
      v57 = MEMORY[0x22AAB6D80](v49, v50);
    }

    else
    {
      v57 = *(v50 + 8 * v49 + 32);
    }

    v58 = v57;
    v59 = [v57 source];
    v60 = sub_2282B8DCC(v59);

    v61 = [v143 tertiarySystemBackgroundColor];
    v62 = type metadata accessor for MedicationSourceListToggleItem();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    v65 = swift_allocObject();
    *(v65 + qword_27D8251F8 + 8) = 0;
    v66 = swift_unknownObjectWeakInit();
    *(v65 + qword_27D825200) = 0;
    *(v65 + qword_27D825208) = v58;
    *(v65 + qword_27D8251F0) = v60 == 2;
    *(v66 + 8) = &off_283B6BAB8;
    swift_unknownObjectWeakAssign();
    v67 = v58;
    v68 = [v67 icon];
    v51 = v68;
    if (!v68)
    {
      sub_22838FAC0();
      v69 = sub_22838FAB0();
      if (!v69)
      {
        v69 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      v51 = v69;
    }

    v49 = (v49 + 1);
    v52 = v68;
    v53 = v51;
    v54 = [v67 source];
    v55 = [v54 name];

    sub_228392000();
    sub_2283901A0();

    sub_228393210();
    v56 = *(v150 + 16);
    sub_228393250();
    sub_228393260();
    sub_228393220();
    v50 = v145;
  }

  while (v144 != v49);

  v2 = v149;
  v70 = v150;
  v5 = v140;
  v19 = v146;
  v22 = MEMORY[0x277D84F90];
LABEL_32:
  v138 = v70;
  if (!(v19 >> 62))
  {
    v84 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
      goto LABEL_34;
    }

LABEL_43:

    v102 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v84 = sub_2283930D0();
  if (!v84)
  {
    goto LABEL_43;
  }

LABEL_34:
  v150 = v22;
  result = sub_228393240();
  if (v84 < 0)
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v85 = type metadata accessor for MedicationSourceListCell();
  v86 = 0;
  v144 = *(v2 + qword_27D827118);
  v145 = v85;
  v87 = *(v2 + qword_27D827120);
  v88 = v19;
  v142 = (v19 & 0xC000000000000001);
  v143 = v87;
  v89 = (v5 + 8);
  do
  {
    v101 = v84;
    if (v142)
    {
      v90 = MEMORY[0x22AAB6D80](v86);
    }

    else
    {
      v90 = *(v88 + 8 * v86 + 32);
    }

    v91 = v90;
    ++v86;
    type metadata accessor for MedicationSourceListItem();
    v92 = swift_allocObject();
    v93 = v144;
    v94 = v143;
    v92[5] = sub_22838FBB0();
    v92[6] = v95;
    v96 = v148;
    sub_22838F490();
    v97 = sub_22838F450();
    v99 = v98;
    (*v89)(v96, v147);
    v92[7] = v97;
    v92[8] = v99;
    v92[2] = v93;
    v92[3] = v91;
    v92[4] = v94;
    sub_228393210();
    v100 = *(v150 + 16);
    sub_228393250();
    sub_228393260();
    sub_228393220();
    v84 = v101;
    v88 = v146;
  }

  while (v101 != v86);

  v102 = v150;
  v5 = v140;
LABEL_44:
  sub_2282B90F4(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v104 = *(sub_22838FEF0() - 8);
  v105 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v146 = *(v104 + 72);
  *(swift_allocObject() + 16) = xmmword_228398270;
  v106 = v141;
  if (v141 >> 62)
  {
    if (sub_2283930D0())
    {
      goto LABEL_46;
    }
  }

  else if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_46:
    sub_22819665C(v106);

    v107 = v147;
    v108 = v148;
    goto LABEL_49;
  }

  sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_228397F40;
  v110 = type metadata accessor for MedicationSourceListNoneItem();
  v111 = swift_allocObject();
  type metadata accessor for MedicationSourceListNoneCell();
  v111[2] = sub_22838FBB0();
  v111[3] = v112;
  v108 = v148;
  sub_22838F490();
  v113 = sub_22838F450();
  v115 = v114;
  v107 = v147;
  (*(v140 + 8))(v108, v147);
  v111[4] = v113;
  v111[5] = v115;
  v5 = v140;
  *(v109 + 56) = v110;
  *(v109 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem);
  *(v109 + 32) = v111;
LABEL_49:
  sub_22838F490();
  sub_22838F450();
  v116 = *(v5 + 8);
  v116(v108, v107);
  sub_22838FED0();
  v117 = v138;
  v118 = v108;
  if (v138 >> 62)
  {
    if (sub_2283930D0())
    {
      goto LABEL_51;
    }
  }

  else if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_51:
    sub_22819665C(v117);

    goto LABEL_54;
  }

  sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_228397F40;
  v120 = type metadata accessor for MedicationSourceListNoneItem();
  v121 = swift_allocObject();
  type metadata accessor for MedicationSourceListNoneCell();
  v121[2] = sub_22838FBB0();
  v121[3] = v122;
  sub_22838F490();
  v123 = sub_22838F450();
  v125 = v124;
  v116(v148, v147);
  v121[4] = v123;
  v121[5] = v125;
  *(v119 + 56) = v120;
  *(v119 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem);
  *(v119 + 32) = v121;
  v118 = v148;
  v107 = v147;
LABEL_54:
  sub_22838F490();
  sub_22838F450();
  v116(v118, v107);
  sub_22838FED0();
  if (v102 >> 62)
  {
    if (sub_2283930D0())
    {
      goto LABEL_56;
    }

LABEL_58:

    sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_228397F40;
    v128 = type metadata accessor for MedicationSourceListNoneItem();
    v129 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell();
    v129[2] = sub_22838FBB0();
    v129[3] = v130;
    sub_22838F490();
    v131 = sub_22838F450();
    v133 = v132;
    v126 = v147;
    v116(v148, v147);
    v129[4] = v131;
    v129[5] = v133;
    *(v127 + 56) = v128;
    *(v127 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem);
    *(v127 + 32) = v129;
    v118 = v148;
    goto LABEL_59;
  }

  if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_58;
  }

LABEL_56:
  sub_2281966A4(v102);

  v126 = v147;
LABEL_59:
  sub_22838F490();
  sub_22838F450();
  v116(v118, v126);
  sub_22838FED0();
  v83 = v149;
  sub_22838FF50();

LABEL_60:

  v134 = *(v83 + qword_27D827140);
  if (v134)
  {
    v135 = *(v83 + qword_27D827140 + 8);

    v134(v136);
    return sub_228176EC8(v134);
  }

  return result;
}

uint64_t sub_2282B8DCC(void *a1)
{
  v3 = *v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_27D827138);
  if (*(v9 + 16))
  {

    v10 = sub_2281A7870(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      return v12;
    }
  }

  sub_228391190();
  v14 = a1;
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v4;
    v26 = v19;
    v20 = v19;
    *v17 = 136315394;
    v21 = sub_228393600();
    v23 = sub_2281C96FC(v21, v22, &v26);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v14;
    v24 = v14;
    _os_log_impl(&dword_22816B000, v15, v16, "[%s] Concept authorization status for %@ not found in cache", v17, 0x16u);
    sub_2282B9318(v18, sub_2281933B0);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAB7B80](v20, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);

    (*(v5 + 8))(v8, v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_2282B905C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2282B7D58(v3);
}

void sub_2282B90F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2282B9158()
{
  if (!qword_27D827170)
  {
    sub_22817A958(255, &qword_27D824258, 0x277CCD4B0);
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827170);
    }
  }
}

char *sub_2282B9240(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_2283930D0();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_228176F04();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_2282B9318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282B9378(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D827128) = 0;
  *(v3 + qword_27D827138) = MEMORY[0x277D84F98];
  v11 = (v3 + qword_27D827140);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + qword_27D827118) = a1;
  *(v3 + qword_27D827120) = a2;
  v12 = objc_allocWithZone(MEMORY[0x277CCD060]);
  v13 = a1;
  v14 = [v12 initWithHealthStore_];
  *(v3 + qword_27D827130) = v14;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_22838F490();
  v15 = sub_22838F450();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AAB5C80](v15, v17);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  return sub_22838FF30();
}

uint64_t sub_2282B9560(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2282B95A8()
{
  if (!qword_27D827178)
  {
    sub_2282B9628();
    sub_2281810DC(255, &qword_280DDB860);
    v0 = sub_228392350();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827178);
    }
  }
}

void sub_2282B9628()
{
  if (!qword_27D827180)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v0 = sub_228391F40();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827180);
    }
  }
}

uint64_t sub_2282B9714(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22827C388();
  result = MEMORY[0x22AAB6030](v2, &type metadata for ScheduledDoseIdentifier, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_2282D6520(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2282B97D0(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v12 = sub_22817A958(0, a2, a3);
    v13 = sub_2281A89C4(a4, a2, a3);
    result = MEMORY[0x22AAB6030](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AAB6D80](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_2283930D0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2282B9928()
{
  if (sub_2283930D0())
  {
    sub_22829BC4C();
    v0 = sub_228393360();
  }

  else
  {
    v0 = MEMORY[0x277D84F98];
  }

  v19 = v0;
  sub_2283932B0();
  swift_unknownObjectRetain();
  v1 = sub_2283932E0();
  if (v1)
  {
    v2 = v1;
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    v3 = v2;
    do
    {
      v17 = v3;
      swift_dynamicCast();
      sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
      swift_dynamicCast();
      v11 = [v17 integerValue];

      v12 = *(v0 + 16);
      if (*(v0 + 24) <= v12)
      {
        sub_22829A680(v12 + 1, 1);
      }

      v0 = v19;
      v4 = *(v19 + 40);
      result = sub_228392C50();
      v6 = v19 + 64;
      v7 = -1 << *(v19 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = 0;
        v14 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v14 && (v13 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v15 = v9 == v14;
          if (v9 == v14)
          {
            v9 = 0;
          }

          v13 |= v15;
          v16 = *(v6 + 8 * v9);
        }

        while (v16 == -1);
        v10 = __clz(__rbit64(~v16)) + (v9 << 6);
      }

      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v19 + 48) + 8 * v10) = v18;
      *(*(v19 + 56) + 8 * v10) = v11;
      ++*(v19 + 16);
      v3 = sub_2283932E0();
    }

    while (v3);
  }

  return v0;
}

void sub_2282B9B8C()
{
  if (!qword_27D8270D0)
  {
    sub_22817A958(255, &unk_280DDB968, 0x277CCD8A8);
    v0 = sub_228391E70();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8270D0);
    }
  }
}

void sub_2282B9BF4()
{
  if (!qword_27D827188)
  {
    sub_22817A958(255, &unk_280DDB968, 0x277CCD8A8);
    v0 = sub_228391EC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827188);
    }
  }
}

uint64_t sub_2282B9C5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22819DA1C;

  return sub_2282B571C(a1);
}

void sub_2282B9CF8()
{
  if (!qword_27D827190)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v0 = sub_2283924D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827190);
    }
  }
}

uint64_t sub_2282B9D8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22819D87C;

  return sub_2282B58B0(a1);
}

char *sub_2282B9E3C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView);
  }

  else
  {
    v4 = sub_2281E99A4(*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_severityLevel));
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1144750080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v5];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282B9EDC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = *MEMORY[0x277D12788];
    v15 = sub_228392000();
    v16 = v9;
    v10 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001FLL, 0x80000002283B1AE0);

    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B1B00);

    v11 = sub_228391FC0();

    [v10 setAccessibilityIdentifier_];

    [v10 setNumberOfLines_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

char *sub_2282BA0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_severityLevel] = a1;
  v4 = &v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_interactionContent];
  *v4 = a2;
  *(v4 + 1) = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for InteractionDetailEducationView();
  v5 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_2282B9E3C();
  [v5 addSubview_];

  v7 = sub_2282B9EDC();
  [v5 addSubview_];

  v8 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_interactionContent];
  v9 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_interactionContent + 8];
  v10 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel];
  v11 = sub_228391FC0();
  [v10 setText_];

  sub_2282BA308();
  return v5;
}

id InteractionDetailEducationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InteractionDetailEducationView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2282BA308()
{
  v27 = objc_opt_self();
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399E10;
  v2 = sub_2282B9E3C();
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView] leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = sub_2282B9EDC();
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-8.0];
  *(v1 + 56) = v16;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel;
  v18 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel] leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 64) = v20;
  v21 = [*&v0[v17] trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v1 + 72) = v23;
  v24 = [*&v0[v17] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v1 + 80) = v26;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v28 = sub_228392190();

  [v27 activateConstraints_];
}

id InteractionDetailEducationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionDetailEducationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionDetailEducationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationStrengthsDataSource()
{
  result = qword_27D8271C0;
  if (!qword_27D8271C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282BA860()
{
  result = sub_228390C30();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2282BA900(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    sub_228390040();
    v10 = sub_2283900C0();
    (*(v5 + 8))(v8, v4);
    [v10 contentInsets];
    [v10 setContentInsets_];
    [v10 contentInsets];
    [v10 setContentInsets_];
    return v10;
  }

  if (a1)
  {
    sub_228390040();
    v10 = sub_2283900C0();
    (*(v5 + 8))(v8, v4);
    return v10;
  }

  return sub_22833C758(0, a2);
}

uint64_t sub_2282BAA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2282BC7D4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = (v3 + qword_27D828E28);
  v13 = *MEMORY[0x277D12788];
  v29 = sub_228392000();
  v30 = v14;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B1C30);

  v15 = v30;
  *v12 = v29;
  v12[1] = v15;
  v16 = qword_27D8271B8;
  v17 = sub_228390C30();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4 + v16, a3, v17);
  sub_2282BC8D4(a1, v11, type metadata accessor for MedicationSearchItem);
  v19 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);

  v20 = sub_228340F30(v11, a2);

  v21 = sub_2282BAE24();
  v22 = v21;
  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x22AAB6D80](0, v22);
    goto LABEL_6;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);
LABEL_6:
    v25 = v24;

    v26 = sub_2282BAE24();
    if (v26 >> 62)
    {
      v27 = sub_2283930D0();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27 == 1)
    {
      v30 = 0;
      v31 = 0;
      v29 = v25;
      v32 = 0;
      v28 = v25;
      sub_228391850();

      (*(v18 + 8))(a3, v17);
      sub_2282BC93C(a1, type metadata accessor for MedicationSearchItem);

      return v20;
    }

LABEL_13:

    (*(v18 + 8))(a3, v17);
    sub_2282BC93C(a1, type metadata accessor for MedicationSearchItem);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_2282BAE24()
{
  v1 = sub_228390FB0();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228390B70();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  sub_2282BC7D4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for MedicationSearchItem.Source(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v32 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - v24;
  sub_228181FB4(v0 + qword_27D828B70, v15);
  v26 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
  {
    sub_228287628(v15);
  }

  else
  {
    v32 = v1;
    sub_2282BC8D4(v15, v23, type metadata accessor for MedicationSearchItem.Source);
    sub_2282BC93C(v15, type metadata accessor for MedicationSearchItem);
    sub_2282BC99C(v23, v25);
    sub_2282BC8D4(v25, v20, type metadata accessor for MedicationSearchItem.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v33;
      v28 = v20;
      v29 = v34;
      (*(v33 + 32))(v11, v28, v34);
      (*(v27 + 16))(v9, v11, v29);
      sub_228390FC0();
      sub_228390F90();
      swift_getKeyPath();
      v30 = sub_228392200();

      (*(v35 + 8))(v4, v32);
      (*(v27 + 8))(v11, v29);
      sub_2282BC93C(v25, type metadata accessor for MedicationSearchItem.Source);
      return v30;
    }

    sub_2282BC93C(v20, type metadata accessor for MedicationSearchItem.Source);
    sub_2282BC93C(v25, type metadata accessor for MedicationSearchItem.Source);
  }

  return MEMORY[0x277D84F90];
}

void *sub_2282BB27C(unint64_t a1, uint64_t a2)
{
  result = sub_22833C758(a1, a2);
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      if (!result)
      {
        return result;
      }

      v8 = result;
      v7 = result;
      [v7 contentInsets];
      [v7 setContentInsets_];
    }

    else
    {
      v5 = result;
      v6 = sub_2282BA900(a1, a2);
      v7 = v5;
      v8 = v6;
    }

    return v8;
  }

  return result;
}

void *sub_2282BB30C()
{
  v21 = *v0;
  v22 = v0;
  v1 = sub_2282BAE24();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v27 = MEMORY[0x277D84F90];
      result = sub_2281C9DB4(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v27;
      v19 = v2 & 0xFFFFFFFFFFFFFF8;
      v20 = v2 & 0xC000000000000001;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v20)
        {
          v8 = MEMORY[0x22AAB6D80](v5, v2);
        }

        else
        {
          if (v5 >= *(v19 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v23 = v8;
        sub_2282BB56C(&v23, v22, v24);

        v27 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2281C9DB4((v10 > 1), v11 + 1, 1);
        }

        v12 = v25;
        v13 = v26;
        v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        v15 = *(*(v12 - 8) + 64);
        MEMORY[0x28223BE20](v14);
        v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v17);
        sub_2282E841C(v11, v17, &v27, v12, v13);
        __swift_destroy_boxed_opaque_existential_0(v24);
        v6 = v27;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v3 = sub_2283930D0();
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2282BB56C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a3;
  v5 = sub_228390460();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2282BC7D4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v66 - v11;
  v12 = sub_22838FFC0();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v81 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_228391220();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282BC7D4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v66 - v20;
  v74 = sub_228391250();
  v73 = *(v74 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_228391590();
  v67 = *(v23 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_228391520();
  sub_228392E80();
  sub_228391540();
  v72 = objc_opt_self();
  v28 = [v72 labelColor];
  v93 = v26;
  v29 = sub_228391450();
  sub_228391420();
  v29(&v88, 0);
  v80 = a2;
  v30 = *(a2 + qword_27D8252A8);
  sub_228391870();
  v31 = v91;
  if (v91 == 255)
  {
    goto LABEL_4;
  }

  v32 = v89;
  v33 = v90;
  if (v91)
  {
    sub_2281CCAC8(v88, v89, v90, v91);
LABEL_4:
    v34 = 0;
    goto LABEL_6;
  }

  v35 = v88;
  v34 = [v88 identifier];
  sub_2281CCAC8(v35, v32, v33, v31);
LABEL_6:
  v36 = [v27 identifier];
  v37 = v36;
  if (v34)
  {
    if (v36)
    {
      sub_2282BC888();
      sub_228392C60();
    }
  }

  else if (v36)
  {
  }

  v88 = sub_228393600();
  v89 = v38;
  MEMORY[0x22AAB5C80](0x74676E657274735FLL, 0xE900000000000068);
  v39 = sub_228392E40();
  MEMORY[0x22AAB5C80](v39);

  v69 = v88;
  v68 = v89;
  v91 = v23;
  v92 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v41 = v67;
  (*(v67 + 16))(boxed_opaque_existential_1, v93, v23);
  sub_2282BC7D4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v42 = *(sub_2283912F0() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v45 = sub_228391230();
  (*(*(v45 - 8) + 56))(v70, 1, 1, v45);
  v46 = v71;
  sub_228391240();
  v47 = v75;
  v48 = v76;
  v49 = v77;
  (*(v76 + 104))(v75, *MEMORY[0x277D74A98], v77);
  sub_2283912E0();
  (*(v48 + 8))(v47, v49);
  (*(v73 + 8))(v46, v74);
  v50 = swift_allocObject();
  v51 = v80;
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v27;
  v77 = v23;
  v53 = v81;
  *v81 = 1;
  (*(v78 + 104))(v53, *MEMORY[0x277D10F90], v79);

  v54 = v27;
  v55 = v86;
  sub_228391390();
  v56 = [v72 secondarySystemBackgroundColor];
  sub_228391370();
  v57 = sub_2283913A0();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  v59 = *(v51 + qword_27D828E28);
  v58 = *(v51 + qword_27D828E28 + 8);
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v87, ".StrengthCell.");
  HIBYTE(v87[1]) = -18;
  v60 = sub_228392E80();
  MEMORY[0x22AAB5C80](v60);

  v61 = v87[0];
  v62 = v87[1];
  v87[0] = v59;
  v87[1] = v58;

  MEMORY[0x22AAB5C80](v61, v62);

  (*(v82 + 104))(v84, *MEMORY[0x277D11140], v83);
  v63 = sub_228390170();
  v64 = v85;
  v85[3] = v63;
  v64[4] = sub_2282BC840(&qword_27D824520, MEMORY[0x277D11000]);
  __swift_allocate_boxed_opaque_existential_1(v64);
  sub_228390160();
  (*(v41 + 8))(v93, v77);
}

uint64_t sub_2282BBF08(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + qword_27D8252A8);

    v6 = a3;
    sub_228391850();
  }

  return result;
}

uint64_t sub_2282BBFA8()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_27D8252A8);
  sub_228391870();
  v7 = v23;
  if (v23 == 255)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = v20;
  v9 = v21;
  v10 = v22;
  if ((v23 & 1) != 0 || (v11 = sub_228392E60()) == 0)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = v11;
    sub_228392E90();
    v19 = v9;

    sub_2282BC7D4(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_228397F40;
    v18 = sub_2283408CC();

    v20 = 0x74497265746F6F46;
    v21 = 0xEB000000005F6D65;
    sub_22838F490();
    v14 = sub_22838F450();
    v16 = v15;
    (*(v2 + 8))(v5, v1);
    MEMORY[0x22AAB5C80](v14, v16);
    v9 = v19;

    *(v13 + 56) = sub_228390330();
    *(v13 + 64) = sub_2282BC840(&qword_27D8258C8, MEMORY[0x277D110D8]);
    __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    sub_228390310();
  }

  sub_2281CCAC8(v8, v9, v10, v7);
  return v13;
}

uint64_t sub_2282BC22C()
{
  sub_228390120();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for CustomStrengthOptionCell();
  sub_2282BC840(&qword_27D8271D8, type metadata accessor for CustomStrengthOptionCell);
  return sub_2283926B0();
}

uint64_t sub_2282BC304()
{
  sub_2282BC7D4(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F40;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = sub_22838F0C0();
  v3 = v2;
  v4 = sub_22838F0C0();
  v6 = v5;
  v7 = swift_allocObject();
  swift_weakInit();
  *(v0 + 56) = &type metadata for CustomStrengthOptionItem;
  *(v0 + 64) = sub_2282BC780();
  v8 = swift_allocObject();
  *(v0 + 32) = v8;
  type metadata accessor for CustomStrengthOptionCell();
  sub_2282BC840(&qword_27D8271D8, type metadata accessor for CustomStrengthOptionCell);
  v8[8] = sub_22838FBB0();
  v8[9] = v9;
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v6;
  v8[6] = sub_2282BC778;
  v8[7] = v7;
  return v0;
}

uint64_t sub_2282BC520()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_27D8252A8);

    sub_228391850();
  }

  return result;
}

uint64_t sub_2282BC5DC()
{
  v1 = qword_27D8271B8;
  v2 = sub_228390C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27D828E28 + 8);
}

uint64_t sub_2282BC658()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8252A8);

  sub_228287628(v0 + qword_27D828B70);
  v2 = *(v0 + qword_27D8252B0);

  v3 = qword_27D8271B8;
  v4 = sub_228390C30();
  v5 = *(*(v4 - 8) + 8);

  v5(v0 + v3, v4);
  v6 = *(v0 + qword_27D828E28 + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2282BC780()
{
  result = qword_27D8271D0;
  if (!qword_27D8271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8271D0);
  }

  return result;
}

void sub_2282BC7D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2282BC840(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2282BC888()
{
  result = qword_27D823BE0;
  if (!qword_27D823BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823BE0);
  }

  return result;
}

uint64_t sub_2282BC8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282BC93C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282BC99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2282BCA40(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_2282BCAA0()
{
  v1 = sub_2282BCA00();
  [v0 addSubview_];

  v2 = sub_2282BCA20();
  [v0 addSubview_];

  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [*&v0[v3] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:30.0];

  [v7 setActive_];
  v8 = [*&v0[v3] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 &selRef_resignFirstResponder + 6];

  [v10 setActive_];
  v11 = [*&v0[v3] trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [*&v0[v4] topAnchor];
  v15 = [*&v0[v3] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:4.0];

  [v16 setActive_];
  v17 = [*&v0[v4] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:4.0];

  [v19 setActive_];
  v20 = [*&v0[v4] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  [v22 setActive_];
  v23 = [*&v0[v4] bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-20.0];

  [v25 setActive_];
}

uint64_t sub_2282BCFBC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282BDAA8(0, &qword_27D827218, type metadata accessor for MedicationLogDetailsHeaderItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for MedicationLogDetailsHeaderItem();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v16, v39);
  if (v40)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2282BDB58(v10, v15);
      v18 = sub_2282BCA00();
      v19 = &v15[*(v11 + 24)];
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = sub_228391FC0();
      [v18 setText_];

      v23 = sub_2282BCA20();
      v24 = &v15[*(v11 + 28)];
      v25 = *v24;
      v26 = *(v24 + 1);
      v27 = sub_228391FC0();
      [v23 setText_];

      return sub_2282BDBBC(v15);
    }
  }

  else
  {
    sub_2282BDAFC(v39, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_2282BDAFC(v10, &qword_27D827218, type metadata accessor for MedicationLogDetailsHeaderItem);
  sub_228391150();
  v29 = v1;
  v30 = sub_2283911A0();
  v31 = sub_2283925C0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v32 = 136315138;
    sub_22817E6C8(v1 + v16, v39);
    sub_2282BDAA8(0, &qword_280DDCD50, sub_22817A700);
    v34 = sub_228392040();
    v36 = sub_2281C96FC(v34, v35, &v38);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_22816B000, v30, v31, "Incorrect view model for MedicationLogDetailsHeaderItem: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAB7B80](v33, -1, -1);
    MEMORY[0x22AAB7B80](v32, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_2282BD400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationLogDetailsHeader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationLogDetailsHeaderItem()
{
  result = qword_27D8271F8;
  if (!qword_27D8271F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282BD538()
{
  result = sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2282BD5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2282BD60C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2282BCFBC();
  return sub_2282BDAFC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2282BD698(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2282BD700;
}

uint64_t sub_2282BD700(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282BCFBC();
  }

  return result;
}

uint64_t sub_2282BD750(int *a1)
{
  sub_228393520();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_2283920B0();
  v6 = (v1 + a1[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_2283920B0();
  v9 = (v1 + a1[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2282BD7C8(uint64_t a1, int *a2)
{
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_2283920B0();
  v10 = (v2 + a2[7]);
  v11 = *v10;
  v12 = v10[1];

  return sub_2283920B0();
}

uint64_t sub_2282BD838(uint64_t a1, int *a2)
{
  sub_228393520();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_2283920B0();
  v10 = (v2 + a2[7]);
  v11 = *v10;
  v12 = v10[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2282BD8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (v10 || (v11 = sub_228393460(), result = 0, (v11 & 1) != 0))
  {
    v13 = *(a3 + 28);
    v14 = *(a1 + v13);
    v15 = *(a1 + v13 + 8);
    v16 = (a2 + v13);
    if (v14 == *v16 && v15 == v16[1])
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

unint64_t sub_2282BD958()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000015;
}

uint64_t sub_2282BD9D8(uint64_t a1)
{
  v2 = sub_2282BDC18(&qword_27D827220);

  return MEMORY[0x282169440](a1, v2);
}

void sub_2282BDAA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2282BDAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2282BDAA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282BDB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsHeaderItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282BDBBC(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsHeaderItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2282BDC18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationLogDetailsHeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2282BDC5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  v2 = *MEMORY[0x277D12788];
  v12 = sub_228392000();
  v13 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B1CB0);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  [v4 setTextAlignment_];
  [v4 setAdjustsFontForContentSizeCategory_];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];

  if (v9)
  {
    v10 = v9;
    [v7 pointSize];
    v11 = [v6 fontWithDescriptor:v10 size:?];

    [v4 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2282BDEC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v1 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B1CB0);

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283B1CD0);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  return v3;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2282BE0D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = [v3 medication];
  v5 = [v4 semanticIdentifier];

  v6 = [v5 description];
  v7 = sub_228392000();
  v9 = v8;

  MEMORY[0x22AAB5C80](v7, v9);

  [v3 interactionType];
  type metadata accessor for HKDismissedPregnancyLactationInteractionType(0);
  v10 = sub_228392020();
  v12 = v11;

  MEMORY[0x22AAB5C80](v10, v12);

  return v2;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.showMoreAction.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.dismissAction.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void *PregnancyLactationInteractionCriticalAlertItem.__allocating_init(interaction:showMoreAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_2282BE910(&qword_27D827228, 255, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell);
  v11 = sub_22838FBB0();
  v10[2] = a1;
  v10[3] = v11;
  v10[4] = v12;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  v10[8] = a5;
  return v10;
}

void *PregnancyLactationInteractionCriticalAlertItem.init(interaction:showMoreAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_2282BE910(&qword_27D827228, 255, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell);
  v11 = sub_22838FBB0();
  v5[2] = a1;
  v5[3] = v11;
  v5[4] = v12;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  v5[8] = a5;
  return v5;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2282BE488()
{
  sub_228393520();
  v1 = *(v0 + 16);
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2282BE544()
{
  sub_228393520();
  v1 = *(*v0 + 16);
  sub_228392C70();

  return sub_228393570();
}

uint64_t sub_2282BE5B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

Swift::Void __swiftcall PregnancyLactationInteractionCriticalAlertItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v3(_, in);
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.deselectionBehavior(in:)()
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
  sub_2282BE910(&qword_27D827230, v0, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem);
  return sub_22838FE80();
}

uint64_t sub_2282BE6D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  return v1();
}

uint64_t sub_2282BE6FC()
{
  v2 = *v0;
  type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
  return sub_22838FE80();
}

BOOL _s19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2281A2270();
  v4 = *(a1 + 16);
  v5 = [v4 medication];
  v6 = [v5 semanticIdentifier];

  v7 = *(a2 + 16);
  v8 = [v7 medication];
  v9 = [v8 semanticIdentifier];

  v10 = sub_228392C60();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = [v4 interactionType];
  return v11 == [v7 interactionType];
}

uint64_t sub_2282BE910(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *InteractionFactorsItem.__allocating_init(factors:analyticsManager:roomType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for InteractionFactorsCell();
  sub_2282BF08C(&qword_27D825F60, 255, type metadata accessor for InteractionFactorsCell);
  v7 = sub_22838FBB0();
  v6[2] = a1;
  v6[3] = v7;
  v6[4] = v8;
  v6[5] = a2;
  v6[6] = a3;
  return v6;
}

uint64_t InteractionFactorsItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *InteractionFactorsItem.init(factors:analyticsManager:roomType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for InteractionFactorsCell();
  sub_2282BF08C(&qword_27D825F60, 255, type metadata accessor for InteractionFactorsCell);
  v7 = sub_22838FBB0();
  v3[2] = a1;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = a2;
  v3[6] = a3;
  return v3;
}

uint64_t static InteractionFactorsItem.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282BEBDC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2283920B0();
  v3 = v0[2];
  result = MEMORY[0x22AAB70D0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      result = MEMORY[0x22AAB70D0](v7);
      --v5;
    }

    while (v5);
  }

  return result;
}

void *InteractionFactorsItem.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t InteractionFactorsItem.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_2282BECB8()
{
  sub_228393520();
  v1 = v0[3];
  v2 = v0[4];
  sub_2283920B0();
  v3 = v0[2];
  MEMORY[0x22AAB70D0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x22AAB70D0](v6);
      --v4;
    }

    while (v4);
  }

  return sub_228393570();
}

uint64_t sub_2282BEDB0()
{
  sub_228393520();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 32);
  sub_2283920B0();
  v4 = *(v1 + 16);
  MEMORY[0x22AAB70D0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x22AAB70D0](v7);
      --v5;
    }

    while (v5);
  }

  return sub_228393570();
}

uint64_t sub_2282BEE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

void sub_2282BEE90(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InteractionFactorsViewController();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[qword_27D826060];
  v7 = *MEMORY[0x277D12788];
  v15 = sub_228392000();
  v16 = v8;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  v9 = v16;
  *v6 = v15;
  v6[1] = v9;
  v14.receiver = v5;
  v14.super_class = v4;
  v10 = objc_msgSendSuper2(&v14, sel_initWithCollectionViewLayout_, 0);
  v11 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v11 setModalPresentationStyle_];
  [v11 setModalInPresentation_];
  [a1 presentViewController:v11 animated:1 completion:0];

  v13 = *(v2 + 40);
  v12 = *(v2 + 48);
  sub_228390FE0();
}

uint64_t sub_2282BF08C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_2282BF198()
{
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_logDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MedicationsRecordAllButton();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2282BF41C();
  [v1 addTarget:v1 action:sel_didTapRecord_ forControlEvents:64];
  sub_2282C16E0(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F40;
  v3 = sub_228391640();
  v4 = MEMORY[0x277D74DB8];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v1;
}

void sub_2282BF31C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2282BF878();
  }
}

uint64_t sub_2282BF41C()
{
  sub_2282C16E0(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v29 - v2;
  v4 = sub_228392D80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228392CC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228392DE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228392DC0();
  (*(v10 + 104))(v13, *MEMORY[0x277D74FD8], v9);
  sub_228392CD0();
  (*(v5 + 104))(v8, *MEMORY[0x277D75030], v4);
  sub_228392CB0();
  v19 = objc_opt_self();
  v20 = [v19 systemBlueColor];
  sub_228392D60();
  v21 = [v19 secondarySystemGroupedBackgroundColor];
  sub_228392D50();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392DB0();
  (*(v15 + 16))(v3, v18, v14);
  (*(v15 + 56))(v3, 0, 1, v14);
  v22 = v29[1];
  sub_228392E10();
  [v22 setRole_];
  v23 = [v22 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setTextAlignment_];
  }

  v25 = [v22 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setAdjustsFontForContentSizeCategory_];
  }

  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v27) = 1144750080;
  [v22 setContentHuggingPriority:0 forAxis:v27];
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2282BF878()
{
  v1 = v0;
  sub_2282C16E0(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_228392E00();
  v9 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel];
  if (v9)
  {
    v10 = sub_228392DE0();
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {
      v11 = objc_opt_self();

      v12 = [v11 systemBlueColor];
      v13 = v12;
      v14 = 0.5;
      if (*(v9 + 16))
      {
        v14 = 1.0;
      }

      v15 = [v12 colorWithAlphaComponent_];

      sub_228392D60();
    }
  }

  sub_2282C1744(v8, v6);
  sub_228392E10();
  [v1 setNeedsUpdateConfiguration];
  return sub_2282C17D8(v8, &qword_280DDB950, MEMORY[0x277D75058]);
}

void sub_2282BFA5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel);
  if (v1 && *(v1 + 16) == 1 && swift_unknownObjectWeakLoadStrong())
  {

    sub_2282D2B6C();

    swift_unknownObjectRelease();
  }
}

id sub_2282BFBF8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for MedicationsRecordAllButton()) init];
    v6 = *MEMORY[0x277CDA138];
    v7 = v5;
    sub_228392B00();
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_2282BFCAC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282C16E0(0, &unk_27D827288, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for MedicationDoseRecordAllItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item;
  swift_beginAccess();
  sub_2282C1618(&v1[v16], v34, sub_228181D50);
  if (v35)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2282C156C(v10, v15);
      v18 = sub_2282BFBF8();
      v19 = &v15[*(v11 + 28)];
      swift_unknownObjectWeakLoadStrong();
      *&v18[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_logDelegate + 8] = *(v19 + 1);
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v20 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton];
      v21 = *&v20[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel];
      *&v20[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel] = *&v15[*(v11 + 24)];
      swift_retain_n();
      v22 = v20;

      sub_2282BF878();

      return sub_2282C1680(v15, type metadata accessor for MedicationDoseRecordAllItem);
    }
  }

  else
  {
    sub_2282C1680(v34, sub_228181D50);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_2282C17D8(v10, &unk_27D827288, type metadata accessor for MedicationDoseRecordAllItem);
  sub_228391150();
  v24 = v1;
  v25 = sub_2283911A0();
  v26 = sub_2283925C0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;
    sub_2282C1618(&v1[v16], v34, sub_228181D50);
    sub_228181D50();
    v29 = sub_228392040();
    v31 = sub_2281C96FC(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22816B000, v25, v26, "Incorrect view model for MedicationDoseRecordAllItem: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAB7B80](v28, -1, -1);
    MEMORY[0x22AAB7B80](v27, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

char *sub_2282C0154(double a1, double a2, double a3, double a4)
{
  sub_2282C16E0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_2283913A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton] = 0;
  v18 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item];
  v19 = type metadata accessor for MedicationDoseRecordAllCell();
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v55.receiver = v4;
  v55.super_class = v19;
  v20 = objc_msgSendSuper2(&v55, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391390();
  v21 = [objc_opt_self() clearColor];
  v22 = [v21 colorWithAlphaComponent_];

  sub_228391370();
  v23 = *(v14 + 16);
  v54 = v13;
  v23(v12, v17, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  MEMORY[0x22AAB6420](v12);
  v24 = [v20 contentView];
  v25 = sub_2282BFBF8();
  [v24 addSubview_];

  v26 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton;
  v27 = [*&v20[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton] topAnchor];
  v28 = [v20 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:30.0];
  [v30 setActive_];

  v31 = [*&v20[v26] heightAnchor];
  v32 = [v31 constraintGreaterThanOrEqualToConstant_];

  [v32 setActive_];
  v33 = [*&v20[v26] widthAnchor];
  v34 = [v33 constraintGreaterThanOrEqualToConstant_];

  [v34 setActive_];
  v35 = [*&v20[v26] leadingAnchor];
  v36 = [v20 contentView];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintGreaterThanOrEqualToAnchor_];
  [v38 setActive_];

  v39 = [*&v20[v26] trailingAnchor];
  v40 = [v20 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintLessThanOrEqualToAnchor_];
  [v42 setActive_];

  v43 = [*&v20[v26] bottomAnchor];
  v44 = [v20 contentView];
  v45 = [v44 bottomAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  [v46 setActive_];

  v47 = [*&v20[v26] centerXAnchor];
  v48 = [v20 contentView];

  v49 = [v48 safeAreaLayoutGuide];
  v50 = [v49 centerXAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  [v51 setActive_];

  (*(v14 + 8))(v17, v54);
  return v20;
}

id sub_2282C0848(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2282C0918()
{
  result = type metadata accessor for MedicationsDoseLogHeaderItem(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2282C09C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item;
  swift_beginAccess();
  return sub_2282C1618(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_2282C0A34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282BFCAC();
  return sub_2282C1680(a1, sub_228181D50);
}

uint64_t (*sub_2282C0AB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282C0B18;
}

uint64_t sub_2282C0B18(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282BFCAC();
  }

  return result;
}

uint64_t sub_2282C0B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *(a1 + *(a3 + 24));
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
  swift_beginAccess();
  v15 = v6[2];
  v15(v12, v13 + v14, v5);
  v16 = *(v21 + *(a3 + 24));
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
  swift_beginAccess();
  v15(v10, v16 + v17, v5);
  LOBYTE(v16) = sub_22838F3D0();
  v18 = v6[1];
  v18(v10, v5);
  v18(v12, v5);
  return v16 & 1;
}

unint64_t sub_2282C0CF8()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000012;
}

uint64_t sub_2282C0D78(uint64_t a1)
{
  v2 = sub_2282C15D0(&qword_280DDC1F8, 255, type metadata accessor for MedicationDoseRecordAllItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282C0DF8()
{
  v1 = sub_22838F4A0();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D84560];
  sub_2282C16E0(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
  v6 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  v22 = xmmword_228397F40;
  *(v9 + 16) = xmmword_228397F40;
  v10 = v9 + v8;
  v23 = v0;
  v11 = *(v0 + qword_280DDF3D8);
  v12 = v0 + qword_280DDF3C8;
  swift_unknownObjectWeakLoadStrong();
  v13 = *(v12 + 8);

  sub_22838F490();
  v14 = (v10 + v6[7]);
  type metadata accessor for MedicationDoseRecordAllCell();
  sub_2282C15D0(&qword_280DDC200, v15, type metadata accessor for MedicationDoseRecordAllCell);
  *v14 = sub_22838FBB0();
  v14[1] = v16;
  *(v10 + v6[9] + 8) = 0;
  v17 = swift_unknownObjectWeakInit();
  *(v10 + v6[8]) = v11;
  *(v17 + 8) = v13;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_2282C16E0(0, &qword_27D823910, MEMORY[0x277D10F78], v5);
  v18 = *(sub_22838FEF0() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = v22;
  sub_2281958B0(v9);
  swift_setDeallocating();
  sub_2282C1680(v10, type metadata accessor for MedicationDoseRecordAllItem);
  swift_deallocClassInstance();
  sub_22838F490();
  sub_22838F450();
  (*(v24 + 8))(v4, v25);
  sub_22838FED0();
  sub_22838FF50();
}

uint64_t sub_2282C11A0()
{
  sub_2282C1680(v0 + qword_280DDF3D0, type metadata accessor for MedicationsDoseLogHeaderItem);
  v1 = *(v0 + qword_280DDF3D8);

  v2 = v0 + qword_280DDF3C8;

  return sub_22818B730(v2);
}

uint64_t sub_2282C1204()
{
  v0 = sub_22838FFB0();
  v1 = qword_280DDF3D0;

  sub_2282C1680(v2 + v1, type metadata accessor for MedicationsDoseLogHeaderItem);
  v3 = *(v0 + qword_280DDF3D8);

  sub_22818B730(v0 + qword_280DDF3C8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2282C12C0()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2282C1394()
{
  type metadata accessor for MedicationDoseRecordAllCell();
  sub_2282C15D0(&qword_280DDC200, v0, type metadata accessor for MedicationDoseRecordAllCell);
  return sub_2283926B0();
}

uint64_t sub_2282C1400@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_280DDF3D0;
  a1[3] = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  a1[4] = sub_2282C15D0(&qword_27D824498, 255, type metadata accessor for MedicationsDoseLogHeaderItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2282C1618(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MedicationsDoseLogHeaderItem);
}

uint64_t sub_2282C156C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationDoseRecordAllItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282C15D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2282C1618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282C1680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2282C16E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}