uint64_t sub_216993614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21699367C()
{
  result = qword_280E46038;
  if (!qword_280E46038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46038);
  }

  return result;
}

uint64_t sub_2169936D0()
{
  sub_216993748();
  sub_217009104();
  return v1;
}

unint64_t sub_216993748()
{
  result = qword_27CABE938;
  if (!qword_27CABE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE938);
  }

  return result;
}

uint64_t sub_21699379C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v65[-v7];
  v9 = type metadata accessor for ReplayPageBackgroundView();
  OUTLINED_FUNCTION_1();
  v67 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE960);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v65[-v16];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE968);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v75 = &v65[-v19];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE970);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v76 = &v65[-v21];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE978);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v72 = &v65[-v23];
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v79 = v25;
  v80 = v24;
  MEMORY[0x28223BE20](v24);
  v78 = &v65[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v1 + 32);

  v68 = v27;
  if ((v27 & 1) == 0)
  {
    sub_21700ED94();
    v28 = sub_217009C34();
    sub_217007BC4();

    v29 = v78;
    sub_2170090E4();
    OUTLINED_FUNCTION_3_71();

    (*(v79 + 8))(v29, v80);
  }

  v30 = sub_216C2F030();

  v31 = v2 + *(v9 + 36);
  v66 = *(v2 + 16);
  sub_216993ED8(v31, v66, v30);
  v33 = v32;
  v34 = *(v2 + 33);
  v35 = *(v2 + 34);
  sub_2169982E0(v2, &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v36 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v37 = swift_allocObject();
  sub_216998344(v14, v37 + v36);
  v81 = v34;
  sub_21700AEA4();
  v38 = *(&v82 + 1);
  *v17 = v82;
  *(v17 + 1) = v38;
  v17[16] = v35;
  *(v17 + 3) = sub_2169983A8;
  *(v17 + 4) = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE980);
  v40 = sub_2170061E4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v40);
  sub_2166A6E54(v8, v5, &qword_27CAB74E8);
  sub_21700AEA4();
  sub_216697664(v8, &qword_27CAB74E8);
  v41 = &v17[*(v39 + 48)];
  v81 = 0;
  sub_21700AEA4();
  v42 = *(&v82 + 1);
  *v41 = v82;
  *(v41 + 1) = v42;
  v44 = *v2;
  v43 = *(v2 + 8);
  v45 = &v17[*(v69 + 52)];
  *v45 = v44;
  v45[1] = v43;

  sub_21700DF14();
  sub_21700DF14();
  v46 = v68;
  if ((v68 & 1) == 0)
  {
    sub_21700ED94();
    v47 = sub_217009C34();
    OUTLINED_FUNCTION_11_39();

    v48 = v78;
    sub_2170090E4();
    OUTLINED_FUNCTION_3_71();

    (*(v79 + 8))(v48, v80);
  }

  v49 = sub_216C2F030();

  v50 = v33;
  if ((v66 & 1) == 0)
  {

    if ((v46 & 1) == 0)
    {
      sub_21700ED94();
      v51 = sub_217009C34();
      OUTLINED_FUNCTION_11_39();

      v52 = v78;
      sub_2170090E4();
      OUTLINED_FUNCTION_3_71();

      (*(v79 + 8))(v52, v80);
    }

    v53 = sub_216C2F0B0();

    v50 = -v53;
  }

  v54 = v75;
  sub_21678818C(v17, v75, &qword_27CABE960);
  v55 = &v54[*(v71 + 36)];
  *v55 = v49 * 0.5;
  v55[1] = v50;
  sub_21700B3B4();
  sub_2170083C4();
  v56 = v54;
  v57 = v76;
  sub_21678818C(v56, v76, &qword_27CABE968);
  v58 = &v57[*(v73 + 36)];
  v59 = v83;
  *v58 = v82;
  v58[1] = v59;
  v58[2] = v84;
  v60 = sub_21700B414();
  v61 = v57;
  v62 = v72;
  sub_21678818C(v61, v72, &qword_27CABE970);
  v63 = &v62[*(v74 + 36)];
  *v63 = v60;
  v63[1] = v44;
  v63[2] = v43;
  sub_21678818C(v62, v77, &qword_27CABE978);
  sub_21700DF14();
  return sub_21700DF14();
}

double (*sub_216993ED8(uint64_t a1, char a2, double a3))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = sub_216995320(a1, a2 & 1);
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = 0.0;
    while (1)
    {
      (v7)(&v16, v8, a3);
      if (v17)
      {
        break;
      }

      width = v16.size.width;
      height = v16.size.height;
      x = v16.origin.x;
      y = v16.origin.y;
      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = 0.0;
      v19.size.height = 0.0;
      if (CGRectEqualToRect(v16, v19))
      {
        break;
      }

      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      MaxY = CGRectGetMaxY(v18);
      if (MaxY > v9)
      {
        v9 = MaxY;
      }

      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        break;
      }
    }

    sub_21699456C(a1, a2 & 1);
    return sub_21667E91C(v7);
  }

  return result;
}

uint64_t sub_216993FF4(uint64_t a1, double a2)
{
  v4 = sub_2170091B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplayPageBackgroundView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2169982E0(a1, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_216998344(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  (*(v5 + 104))(v7, *MEMORY[0x277CE00F0], v4);
  return sub_21700AF64();
}

uint64_t sub_2169941C4(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2170088A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(type metadata accessor for ReplayPageBackgroundView() + 36);
  v14 = *(a5 + 16);
  sub_216994328(a5 + v13, v14);
  sub_217008894();
  sub_2170088F4();
  (*(v10 + 8))(v12, v9);
  v15 = sub_21699456C(a5 + v13, v14);
  v19 = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = v15;
  v24 = v16;
  return sub_217008904();
}

double sub_216994328(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE9B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v11 = *(v10 + 56);
  sub_2166A6E54(a1, &v18 - v8, &qword_27CAB8600);
  v9[v11] = a2 & 1;
  if (a2)
  {
    sub_216697664(v9, &qword_27CAB8600);
    return 70.0;
  }

  v13 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
  {
    sub_2166A6E54(v9, v6, &qword_27CAB8600);
    v16 = *(v13 - 8);
    v17 = (*(v16 + 88))(v6, v13);
    if (v17 == *MEMORY[0x277CE0558])
    {
      sub_216697664(v9, &qword_27CAB8600);
      return 50.0;
    }

    if (v17 == *MEMORY[0x277CE0560])
    {
      v14 = &qword_27CAB8600;
      goto LABEL_5;
    }

    (*(v16 + 8))(v6, v13);
  }

  v14 = &qword_27CABE9B8;
LABEL_5:
  sub_216697664(v9, v14);
  return 60.0;
}

double sub_21699456C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE9B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v11 = *(v10 + 56);
  sub_2166A6E54(a1, &v18 - v8, &qword_27CAB8600);
  v9[v11] = a2 & 1;
  if (a2)
  {
    sub_216697664(v9, &qword_27CAB8600);
    return 140.0;
  }

  v13 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
  {
    sub_2166A6E54(v9, v6, &qword_27CAB8600);
    v16 = *(v13 - 8);
    v17 = (*(v16 + 88))(v6, v13);
    if (v17 == *MEMORY[0x277CE0558])
    {
      sub_216697664(v9, &qword_27CAB8600);
      return 100.0;
    }

    if (v17 == *MEMORY[0x277CE0560])
    {
      v14 = &qword_27CAB8600;
      goto LABEL_5;
    }

    (*(v16 + 8))(v6, v13);
  }

  v14 = &qword_27CABE9B8;
LABEL_5:
  sub_216697664(v9, v14);
  return 120.0;
}

uint64_t sub_2169947B4(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  v57 = a1;
  v56 = sub_2170088C4();
  v12 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = sub_2170098A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v78 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2170090F4();
  v73 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  MEMORY[0x28223BE20](v77);
  v22 = &v54 - v21;
  v23 = sub_2170080D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v76 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v27 = *(sub_216995038() + 16);

  v75 = v27;
  if (v27)
  {
    v29 = type metadata accessor for ReplayPageBackgroundView();
    v30 = v18;
    v31 = 0;
    v32 = *(v29 + 36);
    v74 = *(v29 + 40);
    v71 = v32;
    v65 = (v73 + 1);
    v64 = (v24 + 32);
    v73 = (v24 + 88);
    v59 = (v24 + 8);
    v62 = (v30 + 32);
    v33 = *(v26 + 16);
    v72 = *MEMORY[0x277CDF3D0];
    v63 = *MEMORY[0x277CDF3C0];
    v61 = *MEMORY[0x277CE0558];
    v60 = (v30 + 104);
    v70 = (v30 + 8);
    v58 = v33;
    if (!v33)
    {
      a7 = a6;
    }

    v54 = (v12 + 8);
    v69 = v23;
    v66 = v17;
    while (1)
    {
      sub_2166A6E54(v26 + v74, v22, &qword_27CAB9128);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v76;
        (*v64)(v76, v22, v23);
      }

      else
      {
        sub_21700ED94();
        v35 = sub_217009C34();
        sub_217007BC4();

        v23 = v69;
        v36 = v67;
        sub_2170090E4();
        v34 = v76;
        swift_getAtKeyPath();
        v17 = v66;

        (*v65)(v36, v68);
      }

      v37 = (*v73)(v34, v23);
      if (v37 == v72)
      {
        break;
      }

      if (v37 == v63)
      {
        v38 = *v26;
        goto LABEL_12;
      }

      v38 = v26[1];
      v39 = *v59;
      sub_21700DF14();
      result = v39(v34, v23);
LABEL_14:
      if (v31 >= *(v38 + 16))
      {
        __break(1u);
        return result;
      }

      if (qword_27CAB5B50 != -1)
      {
        swift_once();
      }

      v40 = off_27CABE918;
      sub_2166A6E54(v26 + v71, v16, &qword_27CAB8600);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        (*v60)(v78, v61, v17);
        if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
        {
          sub_216697664(v16, &qword_27CAB8600);
        }
      }

      else
      {
        (*v62)(v78, v16, v17);
      }

      if (v40[2] && (v41 = sub_216E68488(), (v42 & 1) != 0))
      {
        v43 = *(v40[7] + 8 * v41);
        v44 = *v70;
        sub_21700DF14();
        v44(v78, v17);
        if (*(v43 + 16) && (v45 = sub_216E68424(v58), (v46 & 1) != 0))
        {
          v47 = *(*(v43 + 56) + 16 * v45);

          v83 = a3;
          v81 = v31;
          v47(v79, &v83, &v81);

          if (v80)
          {
          }

          else
          {
            v48 = v79[0];
            v49 = v79[1];
            v50 = v79[2];
            v51 = v79[3];
            if (v31 == 1)
            {
              v52 = a5;
            }

            else
            {
              v52 = 0.0;
            }

            CGRectOffset(*&v48, v52, a7);
            sub_217009F74();
            v53 = v55;
            sub_2170088B4();
            sub_217008884();

            sub_216998500(v82);
            result = (*v54)(v53, v56);
          }

          v23 = v69;
        }

        else
        {
        }
      }

      else
      {

        result = (*v70)(v78, v17);
      }

      if (v75 == ++v31)
      {
        return result;
      }
    }

    v38 = v26[1];
LABEL_12:
    result = sub_21700DF14();
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_216995038()
{
  v1 = sub_2170090F4();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = sub_2170080D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayPageBackgroundView();
  sub_2166A6E54(v0 + *(v11 + 40), v6, &qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_21700ED94();
    v12 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v17 + 8))(v3, v18);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 == *MEMORY[0x277CDF3D0])
  {
    v14 = v0[1];
  }

  else
  {
    if (v13 != *MEMORY[0x277CDF3C0])
    {
      v14 = v0[1];
      v15 = *(v8 + 8);
      sub_21700DF14();
      v15(v10, v7);
      return v14;
    }

    v14 = *v0;
  }

  sub_21700DF14();
  return v14;
}

double (*sub_216995320(uint64_t a1, char a2))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2170098A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CAB5B50 != -1)
  {
    swift_once();
  }

  v11 = off_27CABE918;
  sub_2166A6E54(a1, v6, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE0558], v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_216697664(v6, &qword_27CAB8600);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = sub_2169353F0(v10, v11);
  (*(v8 + 8))(v10, v7);
  if (!v12)
  {
    return 0;
  }

  v13 = sub_21693543C(a2 & 1, v12);
  v15 = v14;

  if (!v13)
  {
    return 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  return sub_2169985A8;
}

uint64_t sub_216995594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  return v1;
}

uint64_t sub_216995648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = *(a1 - 8);
  v56 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v55 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009994();
  v6 = *(a1 + 16);
  v7 = a1;
  v60 = a1;
  sub_216998AB4(&qword_27CABEA80, MEMORY[0x277CDE300]);
  sub_217008334();
  sub_217009564();
  v8 = sub_21700AD94();
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v9;
  v48 = v8;
  v10 = sub_2170089F4();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v40 - v11;
  v12 = *(v7 + 24);
  v74 = v12;
  WitnessTable = swift_getWitnessTable();
  v73 = v12;
  v71 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v69 = v46;
  v70 = MEMORY[0x277CE0790];
  v50 = v10;
  v49 = swift_getWitnessTable();
  v65 = v10;
  v66 = MEMORY[0x277D839B0];
  v67 = v49;
  v68 = MEMORY[0x277D839C8];
  v52 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v40 - v15;
  v44 = v6;
  v62 = v6;
  v63 = v12;
  v43 = v12;
  v42 = v2;
  v64 = v2;
  sub_21700AD84();
  v16 = v4;
  v45 = *(v4 + 16);
  v17 = v55;
  v18 = v2;
  v19 = v60;
  v45(v55, v18, v60);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v12;
  v22 = *(v16 + 32);
  v22(v21 + v20, v17, v19);
  v23 = v48;
  v24 = v41;
  sub_21700AAF4();

  (*(v57 + 8))(v24, v23);
  LOBYTE(v65) = *(v42 + 16);
  v25 = v60;
  (v45)(v17);
  v26 = swift_allocObject();
  v27 = v43;
  *(v26 + 16) = v44;
  *(v26 + 24) = v27;
  v22(v26 + v20, v17, v25);
  v28 = v50;
  v29 = MEMORY[0x277D839B0];
  v30 = v49;
  v31 = MEMORY[0x277D839C8];
  OUTLINED_FUNCTION_10_4();
  v32 = v47;
  v33 = v30;
  v34 = v61;
  sub_21700AB04();

  (*(v58 + 8))(v34, v28);
  v65 = v28;
  v66 = v29;
  v67 = v33;
  v68 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v51;
  v37 = OpaqueTypeMetadata2;
  sub_2166C24DC(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v38 = *(v54 + 8);
  v38(v32, v37);
  sub_2166C24DC(v36, v37, OpaqueTypeConformance2);
  return (v38)(v36, v37);
}

uint64_t sub_216995D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v56 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v46 - v10;
  v11 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  v53 = *(v11 - 8);
  v49 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - v12;
  v13 = sub_217009994();
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_216998AB4(&qword_27CABEA80, MEMORY[0x277CDE300]);
  v52 = v13;
  v47 = v16;
  v17 = sub_217008334();
  v54 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v48 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v51 = &v46 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v46 - v22;
  v24 = sub_217009564();
  v58 = *(v24 - 8);
  v59 = v24;
  MEMORY[0x28223BE20](v24);
  v57 = &v46 - v25;
  v26 = a1;
  if ((sub_216995594() & 1) != 0 && ((__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0), sub_21700AEB4(), v27 = sub_2170061E4(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v27), sub_216697664(v23, &qword_27CAB74E8), EnumTagSinglePayload != 1) || (v29 = (a1 + *(v11 + 48)), v30 = *v29, v31 = *(v29 + 1), v63 = v30, v64 = v31, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78), sub_21700AEB4(), v62 == 1)))
  {
    sub_217009984();
    v32 = v53;
    v33 = v50;
    (*(v53 + 16))(v50, v26, v11);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = a3;
    (*(v32 + 32))(v35 + v34, v33, v11);
    v36 = v48;
    sub_216996784(v15, sub_216998AFC, v35, v52, a2, v47, a3);
    v61 = a3;
    WitnessTable = swift_getWitnessTable();
    v38 = v51;
    sub_2166C24DC(v36, v17, WitnessTable);
    v39 = *(v54 + 8);
    v39(v36, v17);
    sub_2166C24DC(v38, v17, WitnessTable);
    v40 = v57;
    sub_2166C2718();
    v39(v36, v17);
    v39(v38, v17);
  }

  else
  {
    (*(a1 + 24))(0.0);
    v41 = v55;
    sub_2166C24DC(v8, a2, a3);
    v42 = *(v56 + 8);
    v42(v8, a2);
    sub_2166C24DC(v41, a2, a3);
    v68 = a3;
    swift_getWitnessTable();
    v40 = v57;
    sub_2166C2CB0();
    v42(v8, a2);
    v42(v41, a2);
  }

  v67 = a3;
  v65 = swift_getWitnessTable();
  v66 = a3;
  v43 = v59;
  v44 = swift_getWitnessTable();
  sub_2166C24DC(v40, v43, v44);
  return (*(v58 + 8))(v40, v43);
}

uint64_t sub_2169963E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = sub_21699655C();
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = cos(v13 * 3.14159265);
  (*(a2 + 24))((v14 * 0.5 + 0.5) * 250.0);
  sub_2166C24DC(v9, a3, a4);
  v15 = *(v7 + 8);
  v15(v9, a3);
  sub_2166C24DC(v12, a3, a4);
  return (v15)(v12, a3);
}

double sub_21699655C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_2170061E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);
  sub_21700AEB4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(v2, &qword_27CAB74E8);
    return 0.0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEA88);
    sub_217008304();
    sub_217006114();
    v10 = v11;
    v12 = *(v4 + 8);
    v12(v6, v3);
    v12(v9, v3);
  }

  return v10;
}

uint64_t sub_216996784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_217008324();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_2169968DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);
  sub_21700AEB4();
  v6 = sub_2170061E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  result = sub_216697664(v4, &qword_27CAB74E8);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_216995594();
    if ((result & 1) != 0 && (*(a1 + 16) & 1) == 0)
    {
      v9 = (a1 + *(v5 + 48));
      v10 = *v9;
      v11 = *(v9 + 1);
      v12[16] = v10;
      v13 = v11;
      v12[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
      return sub_21700AEC4();
    }
  }

  return result;
}

void sub_216996A38(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21700B5A4();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21700B5E4();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a4;
  v50 = a5;
  v13 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v59 = sub_21700B604();
  v52 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = v45 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v45 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v45 - v27;
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      if (sub_216995594())
      {
        v29 = (a3 + *(v13 + 48));
        v30 = *v29;
        v31 = *(v29 + 1);
        v46 = v30;
        LOBYTE(aBlock) = v30;
        v47 = v31;
        v61 = v31;
        v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
        sub_21700AEB4();
        if (v66 == 1)
        {
          v32 = *(v13 + 44);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);
          v45[2] = v32;
          v45[1] = v33;
          sub_21700AEB4();
          v34 = sub_2170061E4();
          LODWORD(v32) = __swift_getEnumTagSinglePayload(v28, 1, v34);
          sub_216697664(v28, &qword_27CAB74E8);
          if (v32 == 1 && (sub_216995594() & 1) != 0)
          {
            sub_2170061A4();
            __swift_storeEnumTagSinglePayload(v25, 0, 1, v34);
            sub_2166A6E54(v25, v22, &qword_27CAB74E8);
            sub_21700AEC4();
            sub_216697664(v25, &qword_27CAB74E8);
            LOBYTE(aBlock) = v46;
            v61 = v47;
            v66 = 0;
            sub_21700AEC4();
            sub_2166AF2EC();
            v47 = sub_21700EE84();
            sub_21700B5F4();
            v35 = v51;
            sub_21700B634();
            v52 = *(v52 + 8);
            (v52)(v17, v59);
            v36 = v48;
            (*(v48 + 16))(v15, a3, v13);
            v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
            v38 = swift_allocObject();
            v39 = v50;
            *(v38 + 16) = v49;
            *(v38 + 24) = v39;
            (*(v36 + 32))(v38 + v37, v15, v13);
            v64 = sub_216998A08;
            v65 = v38;
            aBlock = MEMORY[0x277D85DD0];
            v61 = 1107296256;
            v62 = sub_2169F0990;
            v63 = &block_descriptor_10;
            v40 = _Block_copy(&aBlock);

            v41 = v53;
            sub_21700B5C4();
            aBlock = MEMORY[0x277D84F90];
            sub_216998AB4(&qword_280E2A480, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
            sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
            v42 = v55;
            v43 = v58;
            sub_21700F214();
            v44 = v47;
            MEMORY[0x21CE9FC70](v35, v41, v42, v40);
            _Block_release(v40);

            (*(v57 + 8))(v42, v43);
            (*(v54 + 8))(v41, v56);
            (v52)(v35, v59);
          }
        }
      }
    }
  }
}

uint64_t sub_21699711C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = sub_2170061E4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  sub_2166A6E54(v5, v2, &qword_27CAB74E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);
  sub_21700AEC4();
  sub_216697664(v5, &qword_27CAB74E8);
  return sub_2169955EC();
}

double sub_216997268@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, double *, uint64_t *)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v11 = a4;
  v10 = a1;
  a2(v8, &v11, &v10);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  return result;
}

void *sub_2169972C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE988);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE990) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217013D90;
  v4 = v3 + v2;
  v11 = v0[14];
  v5 = *MEMORY[0x277CE0558];
  v6 = sub_2170098A4();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE998);
  sub_216998554();
  *(v4 + v11) = sub_21700E384();
  v8 = v4 + v1;
  v9 = v0[14];
  v7(v8, *MEMORY[0x277CE0560], v6);
  *(v8 + v9) = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE9A8);
  sub_216998AB4(&qword_27CABE9B0, MEMORY[0x277CE0570]);
  result = sub_21700E384();
  off_27CABE918 = result;
  return result;
}

double sub_2169974F0()
{
  OUTLINED_FUNCTION_5_53();
  sub_216997520(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

void sub_216997520(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1 == 2)
  {
    v5 = 0;
    v9 = a3 * 0.75;
    v6 = a3 * 0.4 + a3 * 0.75 * -0.35;
    v8 = vmulq_n_f64(xmmword_217030870, a3 * 0.75);
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v5 = 0;
    v9 = a3 * 0.85;
    v6 = a3 * 0.7 + a3 * 0.85 * -0.4;
    v8.f64[0] = a3 * 0.85 * 0.32;
    v8.f64[1] = v9;
LABEL_7:
    v7 = v9;
    goto LABEL_13;
  }

  if (a1)
  {
    if (qword_27CAB5B58 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CABE920);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_216679000, v11, v12, "Unexpected index passed in for gradient background: '%ld'", v13, 0xCu);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v7 = 0.0;
    v8 = 0uLL;
    v5 = 1;
    v6 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = a3 * 0.8 + a3 * 0.7 * -0.1;
    v7 = a3 * 0.7;
    v8 = vdupq_n_s64(COERCE_UNSIGNED_INT64(a3 * 0.7));
  }

LABEL_13:
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v5;
}

double sub_2169976FC()
{
  OUTLINED_FUNCTION_5_53();
  sub_21699772C(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

void sub_21699772C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1 == 2)
  {
    v5 = 0;
    v11 = a3 * 0.6;
    v6 = a3 * 0.6 * -1.1;
    *&v8 = a3 * 0.6 * 1.5;
    *(&v8 + 1) = v11;
    v9 = 5.0;
  }

  else if (a1 == 1)
  {
    v5 = 0;
    v9 = a3 * 0.5 * 0.6;
    v10 = a3 * 0.6;
    *&v8 = a3 * 0.6 * 1.4;
    *(&v8 + 1) = v10;
    v6 = 0.0;
  }

  else
  {
    if (a1)
    {
      if (qword_27CAB5B58 != -1)
      {
        swift_once();
      }

      v12 = sub_217007CA4();
      __swift_project_value_buffer(v12, qword_27CABE920);
      v13 = sub_217007C84();
      v14 = sub_21700ED84();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = a1;
        _os_log_impl(&dword_216679000, v13, v14, "Unexpected index passed in for gradient background: '%ld'", v15, 0xCu);
        MEMORY[0x21CEA1440](v15, -1, -1);
      }

      v8 = 0uLL;
      v5 = 1;
      v6 = 0.0;
    }

    else
    {
      v5 = 0;
      v6 = a3 * 0.7;
      v7 = a3 * 0.9;
      *&v8 = v7 + v7;
      *(&v8 + 1) = v7;
    }

    v9 = 0.0;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
}

double sub_2169978DC()
{
  OUTLINED_FUNCTION_5_53();
  sub_21699790C(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

void sub_21699790C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  switch(a1)
  {
    case 2:
      v5 = 0;
      v7 = vmulq_n_f64(xmmword_217030880, a3);
      v6 = a3 * 0.9;
      *&v8 = v6 * 3.0;
      goto LABEL_7;
    case 1:
      v5 = 0;
      v9.f64[0] = a3 * 0.6;
      *&v8 = a3 * 0.6 * 1.3;
      *(&v8 + 1) = a3 * 0.6;
      v9.f64[1] = a3;
      v7 = vmulq_f64(v9, xmmword_217030890);
      break;
    case 0:
      v5 = 0;
      v6 = a3 * 0.6;
      v7 = vmulq_n_f64(xmmword_2170308A0, v6);
      *&v8 = v6 + v6;
LABEL_7:
      *(&v8 + 1) = v6;
      break;
    default:
      if (qword_27CAB5B58 != -1)
      {
        swift_once();
      }

      v10 = sub_217007CA4();
      __swift_project_value_buffer(v10, qword_27CABE920);
      v11 = sub_217007C84();
      v12 = sub_21700ED84();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = a1;
        _os_log_impl(&dword_216679000, v11, v12, "Unexpected index passed in for gradient background: '%ld'", v13, 0xCu);
        MEMORY[0x21CEA1440](v13, -1, -1);
      }

      v7 = 0uLL;
      v5 = 1;
      v8 = 0uLL;
      break;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
}

double sub_216997AAC()
{
  OUTLINED_FUNCTION_5_53();
  sub_216997ADC(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

void sub_216997ADC(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  if (a1 == 2)
  {
    v5 = 0;
    v10 = a3.f64[0] * 0.9;
    a3.f64[1] = a3.f64[0] * 0.9;
    __asm { FMOV            V2.2D, #0.5 }

    v7 = vmulq_f64(a3, _Q2);
    v8 = vmulq_n_f64(xmmword_2170308B0, v10);
  }

  else if (a1 == 1)
  {
    v5 = 0;
    v9 = a3.f64[0] * 0.5 * 1.05;
    v8 = vmulq_n_f64(xmmword_2170308C0, a3.f64[0] * 0.6);
    v7.f64[0] = 0.0;
    v7.f64[1] = v9;
  }

  else if (a1)
  {
    if (qword_27CAB5B58 != -1)
    {
      swift_once();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_27CABE920);
    v17 = sub_217007C84();
    v18 = sub_21700ED84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&dword_216679000, v17, v18, "Unexpected index passed in for gradient background: '%ld'", v19, 0xCu);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    v7 = 0uLL;
    v5 = 1;
    v8 = 0uLL;
  }

  else
  {
    v5 = 0;
    v6 = a3.f64[0] * 0.6;
    v7 = vmulq_n_f64(xmmword_2170308D0, a3.f64[0] * 0.6);
    v8 = vdupq_lane_s64(COERCE__INT64(v6 * 1.5), 0);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
}

uint64_t sub_216997C8C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE920);
  __swift_project_value_buffer(v0, qword_27CABE920);
  return sub_217007C94();
}

uint64_t sub_216997D10@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a6;
  v29 = a5;
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEA88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v19 = sub_217008314();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v9)
  {
    (*(v8 + 16))(v11, v25, v7);
    v27(v11);
    (*(v8 + 8))(v11, v7);
    v22 = v29;
    sub_2166C24DC(v15, a4, v29);
    v23 = *(v12 + 8);
    v23(v15, a4);
    sub_2166C24DC(v18, a4, v22);
    return (v23)(v18, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ReplayPageBackgroundView()
{
  result = qword_27CABE940;
  if (!qword_27CABE940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216997FD8()
{
  sub_21699812C(319, &qword_27CABE950, type metadata accessor for ReplayPageGeometry, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21699812C(319, &qword_280E2A850, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21699812C(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21699812C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ReplayPageBackgroundView.Position(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216998270()
{
  result = qword_27CABE958;
  if (!qword_27CABE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE958);
  }

  return result;
}

uint64_t sub_2169982E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPageBackgroundView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216998344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPageBackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169983A8(double a1)
{
  v3 = type metadata accessor for ReplayPageBackgroundView();
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216993FF4(v5, a1);
}

uint64_t sub_216998424(uint64_t a1, double a2, double a3)
{
  v7 = *(type metadata accessor for ReplayPageBackgroundView() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2169941C4(a2, a3, v9, a1, v3 + v8);
}

unint64_t sub_216998554()
{
  result = qword_27CABE9A0;
  if (!qword_27CABE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE9A0);
  }

  return result;
}

unint64_t sub_2169985B0()
{
  sub_216854FAC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_2166B0B84();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2169986A8();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_2169986A8()
{
  if (!qword_27CABEA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74E8);
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CABEA48);
    }
  }
}

unint64_t sub_21699870C()
{
  result = qword_27CABEA50;
  if (!qword_27CABEA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE978);
    sub_2169987C4();
    sub_2166D9530(&qword_27CABEA70, &qword_27CABEA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEA50);
  }

  return result;
}

unint64_t sub_2169987C4()
{
  result = qword_27CABEA58;
  if (!qword_27CABEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE970);
    sub_216998850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEA58);
  }

  return result;
}

unint64_t sub_216998850()
{
  result = qword_27CABEA60;
  if (!qword_27CABEA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE968);
    sub_2166D9530(&qword_27CABEA68, &qword_27CABE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEA60);
  }

  return result;
}

void sub_216998970(_BYTE *a1, _BYTE *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  OUTLINED_FUNCTION_36(v7);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_216996A38(a1, a2, v9, v5, v6);
}

uint64_t sub_216998A20(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  OUTLINED_FUNCTION_36(v4);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v2, v3);
}

uint64_t sub_216998AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216998AFC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  OUTLINED_FUNCTION_36(v5);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_2169963E4(a1, v7, v3, v4);
}

uint64_t sub_216998BA4(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v24 = type metadata accessor for SocialContactsCoordinator.Contact();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = (a1 + 32);
  v16 = MEMORY[0x277D84F90];
  v23 = a3;
  if (v14)
  {
    while (1)
    {
      v26 = *v15;
      sub_21700DF14();
      sub_21699B370(&v26, v25, a3, v8);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v24) == 1)
      {
        sub_216697664(v8, &qword_27CABEAE0);
      }

      else
      {
        sub_21699C1AC(v8, v13, type metadata accessor for SocialContactsCoordinator.Contact);
        sub_21699C1AC(v13, v10, type metadata accessor for SocialContactsCoordinator.Contact);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938A88(0, *(v16 + 16) + 1, 1, v16);
          v16 = v19;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_216938A88(v17 > 1, v18 + 1, 1, v16);
          v16 = v20;
        }

        *(v16 + 16) = v18 + 1;
        sub_21699C1AC(v10, v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, type metadata accessor for SocialContactsCoordinator.Contact);
        a3 = v23;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
  }

  return v16;
}

uint64_t sub_216998E64(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v27 = a4;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v26 = type metadata accessor for SocialContactsCoordinator.Contact();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  v16 = (a1 + 32);
  v17 = MEMORY[0x277D84F90];
  v25 = a2;
  if (v15)
  {
    while (1)
    {
      v29 = *v16;
      sub_21700DF14();
      sub_21699B7B8(a2, v28, v27, v9);
      if (v4)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v26) == 1)
      {
        sub_216697664(v9, &qword_27CABEAE0);
      }

      else
      {
        sub_21699C1AC(v9, v14, type metadata accessor for SocialContactsCoordinator.Contact);
        sub_21699C1AC(v14, v11, type metadata accessor for SocialContactsCoordinator.Contact);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938A88(0, *(v17 + 16) + 1, 1, v17);
          v17 = v20;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_216938A88(v18 > 1, v19 + 1, 1, v17);
          v17 = v21;
        }

        *(v17 + 16) = v19 + 1;
        sub_21699C1AC(v11, v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, type metadata accessor for SocialContactsCoordinator.Contact);
        a2 = v25;
      }

      ++v16;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
  }

  return v17;
}

id sub_216999134(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v14 = sub_21700EE74();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_21700EE44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = sub_21700B5E4();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7();
  v13 = OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue;
  sub_216685F4C(0, &qword_280E29CD0);
  sub_21700B5C4();
  v19 = MEMORY[0x277D84F90];
  sub_2166AF330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810);
  sub_2166AF388();
  sub_21700F214();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v14);
  *&v2[v13] = sub_21700EEA4();
  *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_matchedContacts] = 0;
  v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends] = 0;
  v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends] = 0;
  v11 = &v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_contactStore] = a1;
  *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_objectGraph] = a2;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_2169993F8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21699C140;
  *(v7 + 24) = v6;
  v13[4] = sub_2168E4C64;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  OUTLINED_FUNCTION_1_89();
  v13[2] = v8;
  v13[3] = &block_descriptor_30;
  v9 = _Block_copy(v13);
  v10 = v2;
  sub_2167759F4(a1);

  dispatch_sync(v5, v9);
  sub_21667E91C(a1);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21699956C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v4 = *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  *v3 = a2;
  v3[1] = a3;
  sub_2167759F4(a2);

  return sub_21667E91C(v4);
}

uint64_t sub_2169995C0()
{
  v0 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  type metadata accessor for SocialContactsCoordinator();

  sub_21700E294();
  sub_21700E284();
  sub_216890548();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2169F3E74();

  (*(v2 + 8))(v6, v0);
}

uint64_t sub_216999760()
{
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  return v1;
}

void sub_2169997C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (([Strong isCancelled] & 1) == 0)
    {
      sub_216999858(a1, a2, a3, a4);
    }
  }
}

void sub_216999858(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_216999C70(a4);
    return;
  }

  if (a1 != 1)
  {
    v6 = sub_216999E9C(a1, a2);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v28 = MEMORY[0x277D84FA0];
        v29 = MEMORY[0x277D84FA0];
        sub_216935484();
        if (*(&v27 + 1) == 1)
        {
          v8 = &qword_27CABEAD0;
          v9 = &v26;
        }

        else
        {
          aBlock = v26;
          v23 = v27;
          if (*(&v27 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8);
            if (swift_dynamicCast())
            {
              v11 = sub_21699A4D8(v21);

              v29 = sub_216E64414(v11);
            }

LABEL_19:
            sub_216935484();
            if (*(&v27 + 1) == 1)
            {
              v12 = &qword_27CABEAD0;
              p_aBlock = &v26;
            }

            else
            {
              aBlock = v26;
              v23 = v27;
              if (*(&v27 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8);
                if (swift_dynamicCast())
                {
                  v14 = sub_21699A53C(v21, a3);

                  v28 = sub_216E64414(v14);
                }

                goto LABEL_26;
              }

              v12 = &unk_27CABF7A0;
              p_aBlock = &aBlock;
            }

            sub_216697664(p_aBlock, v12);
LABEL_26:
            v15 = *&v4[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
            v16 = swift_allocObject();
            v16[2] = v4;
            v16[3] = &v29;
            v16[4] = &v28;
            v16[5] = v7;
            v17 = swift_allocObject();
            *(v17 + 16) = sub_21699BF40;
            *(v17 + 24) = v16;
            v24 = sub_2168E4C64;
            v25 = v17;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v23 = sub_2169993D0;
            *(&v23 + 1) = &block_descriptor_16;
            v18 = _Block_copy(&aBlock);
            v19 = v4;

            dispatch_sync(v15, v18);
            _Block_release(v18);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              __break(1u);
            }

            else
            {
            }

            return;
          }

          v8 = &unk_27CABF7A0;
          v9 = &aBlock;
        }

        sub_216697664(v9, v8);
        goto LABEL_19;
      }
    }
  }

  sub_21699BEEC();
  v10 = swift_allocError();
  sub_216999C70(v10);
}

uint64_t sub_216999C70(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v21 = 0;
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v4 = *&v1[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
  v5 = swift_allocObject();
  v5[2] = &v21;
  v5[3] = v1;
  v5[4] = &v20 + 1;
  v5[5] = &v20;
  v5[6] = v19;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21699BED4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2166EFCD4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1_89();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_11;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v19[0];
    if (v19[0])
    {
      v13 = HIBYTE(v20);
      v14 = v20;
      sub_2167759F4(v19[0]);
      v15 = sub_21700DF14();
      v12(v15, v13, v14, a1);
      sub_21667E91C(v12);
    }

    if (a1)
    {
      v16 = sub_217005D24();
    }

    else
    {
      v16 = 0;
    }

    v17.receiver = v9;
    v17.super_class = ObjectType;
    objc_msgSendSuper2(&v17, sel_finishWithError_, v16);

    sub_21667E91C(v19[0]);
  }

  return result;
}

uint64_t sub_216999E9C(unint64_t a1, uint64_t a2)
{
  if (a1 < 2 || !a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF7A0);
  v2 = sub_21700E384();
  sub_216934F28();
  if (!*&v26[24])
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF9E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_216935484();
  if (*&v26[24] == 1)
  {
    sub_216697664(v26, &qword_27CABEAD0);
    v3 = sub_2166AF66C(0xD00000000000001ALL, 0x8000000217085860);
    if (v4)
    {
      v5 = v3;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD210);
      sub_21700F554();

      v6 = (*(v2 + 56) + 32 * v5);
      v7 = v6[1];
      v24 = *v6;
      v25 = v7;
      sub_21700F574();
    }

    else
    {
      v24 = 0uLL;
      *&v25 = 0;
      *(&v25 + 1) = 1;
    }

    sub_216697664(&v24, &qword_27CABEAD0);
  }

  else
  {
    v24 = *v26;
    v25 = *&v26[16];
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

  sub_216935484();

  if (*(&v25 + 1) == 1)
  {
    v8 = &qword_27CABEAD0;
    v9 = &v24;
LABEL_18:
    sub_216697664(v9, v8);
    goto LABEL_19;
  }

  *v26 = v24;
  *&v26[16] = v25;
  if (!*(&v25 + 1))
  {
LABEL_17:
    v8 = &unk_27CABF7A0;
    v9 = v26;
    goto LABEL_18;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8);
  if (swift_dynamicCast())
  {
    type metadata accessor for SocialContactsCoordinator();
    sub_2169F4138();
    v12 = v11;

    *v26 = v12;
    *&v26[8] = v24;
    *&v26[24] = v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

LABEL_19:
  sub_216934F28();
  if (!*&v26[24])
  {
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF9E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v2;
  }

  sub_216935484();
  if (*&v26[24] == 1)
  {
    sub_216697664(v26, &qword_27CABEAD0);
    v13 = sub_2166AF66C(0xD00000000000001DLL, 0x8000000217085880);
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD210);
      sub_21700F554();

      v16 = (*(v2 + 56) + 32 * v15);
      v17 = v16[1];
      v24 = *v16;
      v25 = v17;
      sub_21700F574();
    }

    else
    {
      v24 = 0uLL;
      *&v25 = 0;
      *(&v25 + 1) = 1;
    }

    sub_216697664(&v24, &qword_27CABEAD0);
  }

  else
  {
    v24 = *v26;
    v25 = *&v26[16];
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

  sub_216935484();

  if (*(&v25 + 1) == 1)
  {
    v18 = &qword_27CABEAD0;
    v19 = &v24;
LABEL_33:
    sub_216697664(v19, v18);
    return v2;
  }

  *v26 = v24;
  *&v26[16] = v25;
  if (!*(&v25 + 1))
  {
LABEL_32:
    v18 = &unk_27CABF7A0;
    v19 = v26;
    goto LABEL_33;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8);
  if (swift_dynamicCast())
  {
    type metadata accessor for SocialContactsCoordinator();
    sub_2169F4138();
    v22 = v21;

    *v26 = v22;
    *&v26[8] = v24;
    *&v26[24] = v20;
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

  return v2;
}

uint64_t sub_21699A4D8(uint64_t a1)
{
  v4 = MEMORY[0x277D84FA0];
  v2 = sub_216998BA4(a1, &v4, v1);

  return v2;
}

uint64_t sub_21699A53C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = type metadata accessor for SocialContactsCoordinator.Contact();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x277D84FA0];
  v22 = MEMORY[0x277D84F98];
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  result = sub_21700DF14();
  for (i = 0; v8; result = sub_21699C20C(v5, type metadata accessor for SocialContactsCoordinator.Contact))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = sub_21699C14C(*(a2 + 48) + *(v21 + 72) * (v13 | (v12 << 6)), v5, type metadata accessor for SocialContactsCoordinator.Contact);
    MEMORY[0x28223BE20](v14);
    *(&v19 - 2) = &v22;
    *(&v19 - 1) = v5;
    sub_216CE18D4(sub_21699C020, (&v19 - 4), v15);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v16 = v22;
      v17 = v19;
      sub_21700DF14();
      v18 = sub_216998E64(v20, v17, v16, &v23);

      return v18;
    }

    v8 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21699A77C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_21700DF14();
  v4 = sub_21700DF14();
  *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_matchedContacts) = sub_21699AA10(v4, v3, type metadata accessor for SocialContactsCoordinator.Contact, type metadata accessor for SocialContactsCoordinator.Contact, sub_2168A15E0);

  sub_216935484();
  if (*(&v18 + 1) == 1)
  {
    v5 = &qword_27CABEAD0;
    v6 = &v17;
LABEL_7:
    sub_216697664(v6, v5);
    goto LABEL_8;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    v5 = &unk_27CABF7A0;
    v6 = &v19;
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v7 = v16;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends;
  *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends) = v7;
  sub_216935484();
  if (*(&v18 + 1) == 1)
  {
    v9 = &qword_27CABEAD0;
    v10 = &v17;
LABEL_15:
    result = sub_216697664(v10, v9);
    goto LABEL_16;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    v9 = &unk_27CABF7A0;
    v10 = &v19;
    goto LABEL_15;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v12 = v16;
    goto LABEL_17;
  }

LABEL_16:
  v12 = 0;
LABEL_17:
  *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends) = v12;
  v13 = *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  if (v13)
  {
    v14 = *(a1 + v8);
    sub_2167759F4(v13);
    v15 = sub_21700DF14();
    v13(v15, v14, v12, 0);
    sub_21667E91C(v13);
  }

  return result;
}

uint64_t sub_21699AA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *, char *))
{
  v27 = a5;
  v8 = a3(0);
  v26 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = 0;
  v28 = a2;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  for (i = (v19 + 63) >> 6; v21; result = sub_21699C20C(v14, a4))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_21699C14C(*(a1 + 48) + *(v26 + 72) * (v24 | (v23 << 6)), v17, a4);
    sub_21699C1AC(v17, v11, a4);
    v27(v14, v11);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return v28;
    }

    v21 = *(a1 + 56 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21699ABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  sub_21699C14C(a1, a2, type metadata accessor for SocialContactsCoordinator.Contact);
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v7 = &qword_27CABEAD0;
    v8 = &v42;
LABEL_7:
    sub_216697664(v8, v7);
    goto LABEL_8;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v7 = &unk_27CABF7A0;
    v8 = &v44;
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v9 = v40;
    v10 = v41;
    v11 = (a2 + *(type metadata accessor for SocialContactsCoordinator.Contact() + 48));

    *v11 = v9;
    v11[1] = v10;
  }

LABEL_8:
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v12 = &qword_27CABEAD0;
    v13 = &v42;
LABEL_14:
    sub_216697664(v13, v12);
    goto LABEL_15;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v12 = &unk_27CABF7A0;
    v13 = &v44;
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    *(a2 + 16) = v40;
  }

LABEL_15:
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v14 = &qword_27CABEAD0;
    v15 = &v42;
LABEL_21:
    sub_216697664(v15, v14);
    goto LABEL_22;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v14 = &unk_27CABF7A0;
    v15 = &v44;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    *(a2 + 17) = v40;
  }

LABEL_22:
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v16 = &qword_27CABEAD0;
    v17 = &v42;
LABEL_28:
    sub_216697664(v17, v16);
    goto LABEL_29;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v16 = &unk_27CABF7A0;
    v17 = &v44;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v18 = v40;
    v19 = v41;

    *(a2 + 40) = v18;
    *(a2 + 48) = v19;
  }

LABEL_29:
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v20 = &qword_27CABEAD0;
    v21 = &v42;
LABEL_35:
    sub_216697664(v21, v20);
    goto LABEL_36;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v20 = &unk_27CABF7A0;
    v21 = &v44;
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    *(a2 + 56) = v40;
  }

LABEL_36:
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v22 = &qword_27CABEAD0;
    v23 = &v42;
LABEL_45:
    sub_216697664(v23, v22);
    goto LABEL_46;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v22 = &unk_27CABF7A0;
    v23 = &v44;
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  if (swift_dynamicCast())
  {
    v24 = v40;
    sub_216685F4C(0, &qword_27CABEAE8);
    sub_2169FD23C(v24);

    v25 = sub_21699B2E8();
    if (v25)
    {
      v26 = v25;
      v27 = [objc_opt_self() tokenWithImageArtworkInfo_];
      v28 = sub_21700E514();
      sub_21699BF4C(v28, v29, v27);
      v30 = qword_27CAB5D90;
      v31 = v27;
      if (v30 != -1)
      {
        swift_once();
      }

      [objc_allocWithZone(MEMORY[0x277CD5D50]) initWithToken:v31 dataSource:qword_27CB229B0];

      sub_21700C3C4();
      v32 = sub_21700C4B4();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v32);
      v33 = type metadata accessor for SocialContactsCoordinator.Contact();
      sub_21699BFB0(v6, a2 + *(v33 + 44));
    }
  }

LABEL_46:
  sub_216935484();
  if (*(&v43 + 1) == 1)
  {
    v34 = &qword_27CABEAD0;
    v35 = &v42;
    return sub_216697664(v35, v34);
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    v34 = &unk_27CABF7A0;
    v35 = &v44;
    return sub_216697664(v35, v34);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  result = swift_dynamicCast();
  if (result)
  {
    sub_216934F28();

    if (*(&v45 + 1))
    {
      v37 = swift_dynamicCast();
      if (v37)
      {
        v38 = v42;
      }

      else
      {
        v38 = 0;
      }

      if (v37)
      {
        v39 = *(&v42 + 1);
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      sub_216697664(&v44, &unk_27CABF7A0);
      v38 = 0;
      v39 = 0;
    }

    *(a2 + 24) = v38;
    *(a2 + 32) = v39;
  }

  return result;
}

id sub_21699B2E8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21700E344();

  v2 = [v0 initWithArtworkResponseDictionary_];

  return v2;
}

uint64_t sub_21699B370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v8 = sub_217006224();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SocialContactsCoordinator.Contact();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_8;
  }

  v15 = sub_2166AF66C(0x72506C6169636F73, 0xEF6449656C69666FLL);
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_216697C8C(*(v14 + 56) + 32 * v15, &v43);
  v45[0] = v43;
  v45[1] = v44;
  if (!*(&v44 + 1))
  {
    sub_216697664(v45, &unk_27CABF7A0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(a4, v25, 1, v11);
  }

  v38 = v4;
  v17 = v41;
  v18 = v42;
  v19 = *a2;
  sub_21700DF14();
  v37 = v17;
  v39 = v18;
  LOBYTE(v17) = sub_216CE11AC(v17, v18, v19);

  if (v17)
  {

    v25 = 1;
  }

  else
  {
    sub_2168A140C(v45, v37, v39, v20, v21, v22, v23, v24, v35, v36);

    *(v13 + 40) = 0u;
    *(v13 + 24) = 0u;
    v27 = v11[11];
    v37 = v27;
    v39 = sub_21700C4B4();
    __swift_storeEnumTagSinglePayload(&v13[v27], 1, 1, v39);
    v36 = &v13[v11[12]];
    *&v13[v11[16]] = MEMORY[0x277D84F90];
    *v13 = 0;
    *(v13 + 1) = 0;
    sub_217006214();
    v28 = sub_2170061F4();
    v30 = v29;
    (*(v40 + 8))(v10, v8);
    v31 = &v13[v11[13]];
    *v31 = v28;
    v31[1] = v30;
    v32 = MEMORY[0x277D84FA0];
    *&v13[v11[14]] = MEMORY[0x277D84FA0];
    *&v13[v11[15]] = v32;
    v33 = v36;
    v34 = v37;
    *v36 = 0;
    *(v33 + 1) = 0;
    *(v13 + 8) = 0;
    v13[18] = 0;
    *(v13 + 7) = 0;
    sub_216697664(&v13[v34], &qword_27CABF770);
    __swift_storeEnumTagSinglePayload(&v13[v34], 1, 1, v39);
    sub_21699ABF8(v13, a4);
    sub_21699C20C(v13, type metadata accessor for SocialContactsCoordinator.Contact);
    v25 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v25, 1, v11);
}

void sub_21699B6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_21699C14C(a3, &v8 - v5, type metadata accessor for SocialContactsCoordinator.Contact);
  v7 = type metadata accessor for SocialContactsCoordinator.Contact();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_21700DF14();
  sub_216A8BF9C();
}

uint64_t sub_21699B7B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v41 = a3;
  v42 = a2;
  v44 = a1;
  v45 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_217006224();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SocialContactsCoordinator.Contact();
  MEMORY[0x28223BE20](v10);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  sub_216935484();
  v16 = *(&v51 + 1);
  sub_216697664(&v50, &qword_27CABEAD0);
  if (v16 == 1)
  {
    sub_216935484();
    v17 = *(&v51 + 1);
    sub_216697664(&v50, &qword_27CABEAD0);
    if (v17 != 1)
    {
      *(v15 + 40) = 0u;
      *(v15 + 24) = 0u;
      v22 = v10[11];
      v42 = sub_21700C4B4();
      __swift_storeEnumTagSinglePayload(&v15[v22], 1, 1, v42);
      v23 = &v15[v10[12]];
      *&v15[v10[16]] = MEMORY[0x277D84F90];
      *v15 = 0;
      *(v15 + 1) = 0;
      sub_217006214();
      v24 = sub_2170061F4();
      v26 = v25;
      (*(v43 + 8))(v9, v7);
      v27 = &v15[v10[13]];
      *v27 = v24;
      v27[1] = v26;
      v28 = MEMORY[0x277D84FA0];
      *&v15[v10[14]] = MEMORY[0x277D84FA0];
      *&v15[v10[15]] = v28;
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v15 + 8) = 0;
      v15[18] = 0;
      *(v15 + 7) = 0;
      sub_216697664(&v15[v22], &qword_27CABF770);
      __swift_storeEnumTagSinglePayload(&v15[v22], 1, 1, v42);
      v19 = v45;
      sub_21699ABF8(v15, v45);
      v29 = v15;
      goto LABEL_10;
    }
  }

  sub_216935484();
  if (*(&v49 + 1) != 1)
  {
    v50 = v48;
    v51 = v49;
    v19 = v45;
    if (!*(&v49 + 1))
    {
      v20 = &unk_27CABF7A0;
      v21 = &v50;
      goto LABEL_12;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_13:
      v18 = 1;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v10);
    }

    sub_2169354E0(v46, v47, v42);

    if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
    {
      v20 = &qword_27CABEAE0;
      v21 = v6;
LABEL_12:
      sub_216697664(v21, v20);
      goto LABEL_13;
    }

    sub_21699C1AC(v6, v12, type metadata accessor for SocialContactsCoordinator.Contact);
    v31 = v12[1];
    if (!v31)
    {
      sub_21699C20C(v12, type metadata accessor for SocialContactsCoordinator.Contact);
      goto LABEL_13;
    }

    v32 = *v12;
    v33 = *v41;
    sub_21700DF14();
    sub_21700DF14();
    v34 = sub_216CE11AC(v32, v31, v33);

    if (v34)
    {
      sub_21699C20C(v12, type metadata accessor for SocialContactsCoordinator.Contact);

      goto LABEL_13;
    }

    sub_2168A140C(&v50, v32, v31, v35, v36, v37, v38, v39, v40, v41);

    sub_21699ABF8(v12, v19);
    v29 = v12;
LABEL_10:
    sub_21699C20C(v29, type metadata accessor for SocialContactsCoordinator.Contact);
    v18 = 0;
    return __swift_storeEnumTagSinglePayload(v19, v18, 1, v10);
  }

  sub_216697664(&v48, &qword_27CABEAD0);
  v18 = 1;
  v19 = v45;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v10);
}

uint64_t sub_21699BCE4(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  *a1 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_matchedContacts);
  sub_21700DF14();

  *a3 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends);
  *a4 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends);
  v9 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v10 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
  v11 = *a5;
  *a5 = v9;
  a5[1] = v10;
  sub_2167759F4(v9);

  return sub_21667E91C(v11);
}

unint64_t sub_21699BEEC()
{
  result = qword_27CABEAC8;
  if (!qword_27CABEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEAC8);
  }

  return result;
}

void sub_21699BF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setCropStyle_];
}

uint64_t sub_21699BFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SocialOnboardingContactsMatchingRequestOperation.FindFriendsError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_21699C0EC()
{
  result = qword_27CABEAF0;
  if (!qword_27CABEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEAF0);
  }

  return result;
}

uint64_t sub_21699C14C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21699C1AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21699C20C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for TVEpisodeContextMenu()
{
  result = qword_280E3AFB8;
  if (!qword_280E3AFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21699C2E8()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167B84AC();
    if (v1 <= 0x3F)
    {
      sub_2167EE974();
      if (v2 <= 0x3F)
      {
        sub_2170073D4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MenuConfiguration(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21699C3D0()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for TVEpisodeContextMenu();
    v6 = *(v5 + 28);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F08(v0 + v6, v4, v0 + *(v5 + 32));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_216942CA4(qword_280E45220, type metadata accessor for MenuBuilder);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ArtistContextMenu()
{
  result = qword_280E40420;
  if (!qword_280E40420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21699C5EC()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      sub_21700C384();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21699C6BC()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for ArtistContextMenu();
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F20(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21699C834(char a1)
{
  if (sub_21700B304())
  {
    if (a1)
    {

      return sub_21700AD34();
    }

    else
    {
      v3 = [objc_opt_self() tertiaryLabelColor];

      return sub_21700AC44();
    }
  }

  else
  {
    if (a1)
    {
      sub_21700ACC4();
    }

    else
    {
      sub_21700AD34();
    }

    v4 = sub_21700AD04();

    return v4;
  }
}

id sub_21699C8F0()
{
  result = [objc_allocWithZone(MEMORY[0x277CE6640]) init];
  qword_27CABEAF8 = result;
  return result;
}

id sub_21699C924()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  result = [v0 setUnitsStyle_];
  qword_27CABEB00 = v0;
  return result;
}

id sub_21699C974()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider__mliDidCompleteTransfer;
  *&v0[v2] = swift_getKeyPath();
  v3 = OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider__mliReview;
  *&v0[v3] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider__mliSessionID;
  *&v0[v4] = swift_getKeyPath();
  sub_2166AF2A8();
  sub_21700D4D4();
  sub_21700E094();
  *&v0[OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider_userDefaults] = v8;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id sub_21699CAC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider_userDefaults);
  v2 = sub_21700E4D4();
  v3 = [v1 safeBoolForKey_];

  return v3;
}

uint64_t sub_21699CC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = a3(v3, KeyPath, v6);

  return v7;
}

uint64_t sub_21699CCC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider_userDefaults);
  v2 = sub_21700E4D4();
  v3 = [v1 safeStringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21700E514();

  return v4;
}

void sub_21699CE4C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v27[0] = v3;
  v4 = type metadata accessor for SectionContent();
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v27[1] = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_16();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700CE04();
  sub_21700CD74();
  v19 = *(v14 + 8);
  v19(v18, v12);
  v20 = sub_21700E2C4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v20);
  sub_216697664(v11, &qword_27CAB78D0);
  v22 = OUTLINED_FUNCTION_91();
  if (EnumTagSinglePayload == 1)
  {
    sub_2169A25CC(v22, v23, v24);
  }

  else
  {
    sub_21699D0D8(v22, v23, v24);
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v25 + 8))(v2);
  v26 = OUTLINED_FUNCTION_39();
  (v19)(v26);
  if (!v0)
  {
    sub_2169BBB94();
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_21699D0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v683 = a2;
  v681 = a3;
  v4 = type metadata accessor for VerticalArtworkListItem();
  MEMORY[0x28223BE20](v4 - 8);
  v677 = &v514 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVMovieDetailHeaderLockup();
  MEMORY[0x28223BE20](v6 - 8);
  v676 = &v514 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVMovieDescription();
  MEMORY[0x28223BE20](v8 - 8);
  v675 = &v514 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v10 - 8);
  v674 = &v514 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SongDetailList();
  MEMORY[0x28223BE20](v12 - 8);
  v673 = &v514 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Spacer();
  MEMORY[0x28223BE20](v14 - 8);
  v672 = &v514 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  MEMORY[0x28223BE20](v16 - 8);
  v671 = &v514 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  MEMORY[0x28223BE20](FriendsButtonComponentModel - 8);
  v670 = &v514 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v669 = &v514 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SocialProfileDetailHeaderLockup();
  MEMORY[0x28223BE20](v22 - 8);
  v668 = &v514 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SocialOnboardingWelcomePageLockup();
  MEMORY[0x28223BE20](v24 - 8);
  v667 = &v514 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  MEMORY[0x28223BE20](v26 - 8);
  v666 = (&v514 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for SocialProfileHorizontalLockupSection();
  MEMORY[0x28223BE20](v28 - 8);
  v665 = &v514 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  MEMORY[0x28223BE20](v30 - 8);
  v664 = &v514 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  MEMORY[0x28223BE20](v32 - 8);
  v663 = &v514 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
  MEMORY[0x28223BE20](FriendsPageSectionLockup - 8);
  v662 = &v514 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  MEMORY[0x28223BE20](v36 - 8);
  v661 = &v514 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  MEMORY[0x28223BE20](v38 - 8);
  v660 = &v514 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  MEMORY[0x28223BE20](v40 - 8);
  v659 = &v514 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ListSection();
  MEMORY[0x28223BE20](v42 - 8);
  v658 = &v514 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContextLockup = type metadata accessor for SearchQueryContextLockup();
  MEMORY[0x28223BE20](ContextLockup - 8);
  v657 = &v514 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PopoverSelector();
  MEMORY[0x28223BE20](v46 - 8);
  v656 = &v514 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for PlaylistDetailHeaderLockup();
  MEMORY[0x28223BE20](v48 - 8);
  v655 = &v514 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ParagraphComponentModel();
  MEMORY[0x28223BE20](v50 - 8);
  v654 = &v514 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for LandingUpsell();
  MEMORY[0x28223BE20](v52 - 8);
  v653 = &v514 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InlineUpsell();
  MEMORY[0x28223BE20](v54 - 8);
  v652 = &v514 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for HeaderComponentModel();
  MEMORY[0x28223BE20](v56 - 8);
  v651 = &v514 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for GroupedTextListLockup();
  MEMORY[0x28223BE20](v58 - 8);
  v650 = &v514 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for GradientListRowModel();
  MEMORY[0x28223BE20](v60 - 8);
  v649 = (&v514 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for EmptyStateLockup();
  MEMORY[0x28223BE20](v62 - 8);
  v648 = &v514 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for CuratorDetailHeaderComponentModel();
  MEMORY[0x28223BE20](v64 - 8);
  v647 = &v514 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  MEMORY[0x28223BE20](v66 - 8);
  v646 = &v514 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  MEMORY[0x28223BE20](v68 - 8);
  v645 = &v514 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ArtistLatestReleaseLockup();
  MEMORY[0x28223BE20](v70 - 8);
  v644 = &v514 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ArtistDetailHeaderLockup();
  MEMORY[0x28223BE20](v72 - 8);
  v643 = &v514 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AnimatedTextListItem();
  MEMORY[0x28223BE20](v74 - 8);
  v642 = &v514 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ContentDescriptor();
  v77 = MEMORY[0x28223BE20](v76 - 8);
  v520 = &v514 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v519 = &v514 - v79;
  v684 = sub_21700CF34();
  v682 = *(v684 - 8);
  v80 = MEMORY[0x28223BE20](v684);
  v641 = &v514 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v640 = &v514 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v638 = &v514 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v636 = &v514 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v639 = &v514 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v637 = &v514 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v635 = &v514 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v632 = &v514 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v634 = &v514 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v633 = &v514 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v631 = &v514 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v630 = &v514 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v629 = &v514 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v628 = &v514 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v627 = &v514 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v626 = &v514 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v625 = &v514 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v624 = &v514 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v622 = &v514 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v621 = &v514 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v623 = &v514 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v620 = &v514 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v619 = &v514 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v617 = &v514 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v616 = &v514 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v618 = &v514 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v614 = &v514 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v612 = &v514 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v615 = &v514 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v613 = &v514 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v611 = &v514 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v610 = &v514 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v608 = &v514 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v679 = &v514 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v609 = &v514 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v607 = &v514 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v605 = &v514 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v518 = &v514 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v606 = &v514 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v603 = &v514 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v601 = &v514 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v604 = &v514 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v602 = &v514 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v599 = &v514 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v597 = &v514 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v600 = &v514 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v598 = &v514 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v596 = &v514 - v175;
  v176 = MEMORY[0x28223BE20](v174);
  v594 = &v514 - v177;
  v178 = MEMORY[0x28223BE20](v176);
  v593 = &v514 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v595 = &v514 - v181;
  v182 = MEMORY[0x28223BE20](v180);
  v592 = &v514 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v590 = &v514 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v589 = &v514 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v591 = &v514 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v588 = &v514 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v586 = &v514 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v585 = &v514 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v587 = &v514 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v583 = &v514 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v517 = &v514 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v584 = &v514 - v203;
  MEMORY[0x28223BE20](v202);
  v581 = &v514 - v204;
  v205 = type metadata accessor for AlbumDetailHeaderLockup();
  MEMORY[0x28223BE20](v205 - 8);
  v582 = &v514 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v207 - 8);
  v209 = &v514 - v208;
  v210 = sub_21700CDF4();
  v211 = *(v210 - 8);
  v212 = MEMORY[0x28223BE20](v210);
  v580 = &v514 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = MEMORY[0x28223BE20](v212);
  v579 = &v514 - v215;
  v216 = MEMORY[0x28223BE20](v214);
  v578 = &v514 - v217;
  v218 = MEMORY[0x28223BE20](v216);
  v577 = &v514 - v219;
  v220 = MEMORY[0x28223BE20](v218);
  v576 = &v514 - v221;
  v222 = MEMORY[0x28223BE20](v220);
  v575 = &v514 - v223;
  v224 = MEMORY[0x28223BE20](v222);
  v574 = &v514 - v225;
  v226 = MEMORY[0x28223BE20](v224);
  v573 = &v514 - v227;
  v228 = MEMORY[0x28223BE20](v226);
  v572 = &v514 - v229;
  v230 = MEMORY[0x28223BE20](v228);
  v571 = &v514 - v231;
  v232 = MEMORY[0x28223BE20](v230);
  v570 = &v514 - v233;
  v234 = MEMORY[0x28223BE20](v232);
  v569 = &v514 - v235;
  v236 = MEMORY[0x28223BE20](v234);
  v568 = &v514 - v237;
  v238 = MEMORY[0x28223BE20](v236);
  v567 = &v514 - v239;
  v240 = MEMORY[0x28223BE20](v238);
  v566 = &v514 - v241;
  v242 = MEMORY[0x28223BE20](v240);
  v565 = &v514 - v243;
  v244 = MEMORY[0x28223BE20](v242);
  v564 = &v514 - v245;
  v246 = MEMORY[0x28223BE20](v244);
  v563 = &v514 - v247;
  v248 = MEMORY[0x28223BE20](v246);
  v562 = &v514 - v249;
  v250 = MEMORY[0x28223BE20](v248);
  v561 = &v514 - v251;
  v252 = MEMORY[0x28223BE20](v250);
  v560 = &v514 - v253;
  v254 = MEMORY[0x28223BE20](v252);
  v559 = &v514 - v255;
  v256 = MEMORY[0x28223BE20](v254);
  v516 = &v514 - v257;
  v258 = MEMORY[0x28223BE20](v256);
  v558 = &v514 - v259;
  v260 = MEMORY[0x28223BE20](v258);
  v557 = &v514 - v261;
  v262 = MEMORY[0x28223BE20](v260);
  v556 = &v514 - v263;
  v264 = MEMORY[0x28223BE20](v262);
  v555 = &v514 - v265;
  v266 = MEMORY[0x28223BE20](v264);
  v554 = &v514 - v267;
  v268 = MEMORY[0x28223BE20](v266);
  v553 = &v514 - v269;
  v270 = MEMORY[0x28223BE20](v268);
  v552 = &v514 - v271;
  v272 = MEMORY[0x28223BE20](v270);
  v551 = &v514 - v273;
  v274 = MEMORY[0x28223BE20](v272);
  v550 = &v514 - v275;
  v276 = MEMORY[0x28223BE20](v274);
  v549 = &v514 - v277;
  v278 = MEMORY[0x28223BE20](v276);
  v548 = &v514 - v279;
  v280 = MEMORY[0x28223BE20](v278);
  v547 = &v514 - v281;
  v282 = MEMORY[0x28223BE20](v280);
  v546 = &v514 - v283;
  v284 = MEMORY[0x28223BE20](v282);
  v545 = &v514 - v285;
  v286 = MEMORY[0x28223BE20](v284);
  v515 = &v514 - v287;
  v288 = MEMORY[0x28223BE20](v286);
  v544 = &v514 - v289;
  v290 = MEMORY[0x28223BE20](v288);
  v688 = &v514 - v291;
  MEMORY[0x28223BE20](v290);
  v293 = &v514 - v292;
  v294 = sub_21700E2C4();
  v686 = *(v294 - 8);
  v295 = MEMORY[0x28223BE20](v294);
  v543 = &v514 - ((v296 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = MEMORY[0x28223BE20](v295);
  v542 = &v514 - v298;
  v299 = MEMORY[0x28223BE20](v297);
  v541 = &v514 - v300;
  v301 = MEMORY[0x28223BE20](v299);
  v540 = &v514 - v302;
  v303 = MEMORY[0x28223BE20](v301);
  v539 = &v514 - v304;
  v305 = MEMORY[0x28223BE20](v303);
  v538 = &v514 - v306;
  v307 = MEMORY[0x28223BE20](v305);
  v537 = &v514 - v308;
  v309 = MEMORY[0x28223BE20](v307);
  v536 = &v514 - v310;
  v311 = MEMORY[0x28223BE20](v309);
  v535 = &v514 - v312;
  v313 = MEMORY[0x28223BE20](v311);
  v534 = &v514 - v314;
  v315 = MEMORY[0x28223BE20](v313);
  v533 = &v514 - v316;
  v317 = MEMORY[0x28223BE20](v315);
  v532 = &v514 - v318;
  v319 = MEMORY[0x28223BE20](v317);
  v678 = &v514 - v320;
  v321 = MEMORY[0x28223BE20](v319);
  v531 = &v514 - v322;
  v323 = MEMORY[0x28223BE20](v321);
  v530 = &v514 - v324;
  v325 = MEMORY[0x28223BE20](v323);
  v529 = &v514 - v326;
  v327 = MEMORY[0x28223BE20](v325);
  v528 = &v514 - v328;
  v329 = MEMORY[0x28223BE20](v327);
  v527 = &v514 - v330;
  v331 = MEMORY[0x28223BE20](v329);
  v526 = &v514 - v332;
  v333 = MEMORY[0x28223BE20](v331);
  v525 = &v514 - v334;
  v335 = MEMORY[0x28223BE20](v333);
  v524 = &v514 - v336;
  v337 = MEMORY[0x28223BE20](v335);
  v523 = &v514 - v338;
  v339 = MEMORY[0x28223BE20](v337);
  v522 = &v514 - v340;
  v341 = MEMORY[0x28223BE20](v339);
  v521 = &v514 - v342;
  MEMORY[0x28223BE20](v341);
  v344 = &v514 - v343;
  sub_21700CE04();
  sub_21700CD74();
  v680 = v211;
  v345 = *(v211 + 8);
  v687 = v210;
  v345(v293, v210);
  if (__swift_getEnumTagSinglePayload(v209, 1, v294) == 1)
  {
    sub_216697664(v209, &qword_27CAB78D0);
    v346 = sub_21700E2E4();
    sub_2169BB7B4(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v348 = v347;
    v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE60);
    *v348 = 0x736D657469;
    v348[1] = 0xE500000000000000;
    v348[2] = v349;
    (*(*(v346 - 8) + 104))(v348, *MEMORY[0x277D22530], v346);
    return swift_willThrow();
  }

  else
  {
    v351 = v686;
    (*(v686 + 32))(v344, v209, v294);
    sub_21700CE04();
    sub_21682FF4C();
    v352 = v685;
    sub_21700CCD4();
    if (v352)
    {
      v345(v688, v687);
      return (*(v351 + 8))(v344, v294);
    }

    else
    {
      v685 = 0;
      v353 = a1;
      v345(v688, v687);
      v354 = v344;
      v356 = v682;
      v355 = v683;
      switch(v689)
      {
        case 1:
          (*(v351 + 16))(v521, v344, v294);
          v688 = *(v356 + 16);
          (v688)(v584, v355, v684);
          type metadata accessor for AlbumTrackLockup();
          sub_2169BB7B4(&qword_280E41538, type metadata accessor for AlbumTrackLockup);
          v440 = v685;
          v441 = sub_21700E934();
          if (v440)
          {
            goto LABEL_67;
          }

          v504 = v441;
          v505 = v515;
          sub_21700CE04();
          v506 = v517;
          (v688)(v517, v355, v684);
          ContentDescriptor.init(deserializing:using:)(v505, v506, v507, v508, v509, v510, v511, v512, v514, v515, SWORD2(v515), SBYTE6(v515), SHIBYTE(v515));
          (*(v686 + 8))(v344, v294);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8);
          *v681 = v504;
          sub_2169BBB94();
          type metadata accessor for SectionContent();
          goto LABEL_131;
        case 2:
          v430 = v545;
          sub_21700E2D4();
          v431 = v583;
          (*(v356 + 16))(v583, v355, v684);
          v432 = v685;
          sub_216B13B54(v430, v431, v642);
          if (!v432)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 3:
          (*(v351 + 16))(v522, v344, v294);
          (*(v356 + 16))(v587, v355, v684);
          type metadata accessor for AppsWithAccessComponentModel();
          sub_2169BB7B4(&qword_280E32790, type metadata accessor for AppsWithAccessComponentModel);
          v436 = v685;
          v358 = sub_21700E934();
          if (!v436)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 4:
          v402 = v546;
          sub_21700E2D4();
          v403 = v585;
          (*(v356 + 16))(v585, v355, v684);
          v404 = v685;
          sub_216AD1AB4(v402, v403, v643);
          if (!v404)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 5:
          v444 = v547;
          sub_21700E2D4();
          v445 = v586;
          (*(v356 + 16))(v586, v355, v684);
          v446 = v685;
          sub_216DE00DC(v444, v445, v644);
          if (!v446)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 6:
          v456 = v548;
          sub_21700E2D4();
          v457 = v588;
          (*(v356 + 16))(v588, v355, v684);
          v458 = v685;
          sub_216BE7ADC(v456, v457, v645);
          if (!v458)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 7:
        case 28:
          (*(v351 + 16))(v678, v344, v294);
          (*(v356 + 16))(v679, v355, v684);
          type metadata accessor for SearchLandingBrickLockup();
          sub_2169BB7B4(&qword_280E363C8, type metadata accessor for SearchLandingBrickLockup);
          v357 = v685;
          v358 = sub_21700E934();
          if (!v357)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 8:
          (*(v351 + 16))(v523, v344, v294);
          (*(v356 + 16))(v591, v355, v684);
          type metadata accessor for BubbleLockup();
          sub_2169BB7B4(&qword_280E44DB8, type metadata accessor for BubbleLockup);
          v415 = v685;
          v358 = sub_21700E934();
          if (!v415)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 9:
          v462 = v549;
          sub_21700E2D4();
          v463 = v589;
          (*(v356 + 16))(v589, v355, v684);
          v464 = v685;
          sub_2167FE6E0(v462, v463, v646);
          if (!v464)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 10:
          v399 = v550;
          sub_21700E2D4();
          v400 = v590;
          (*(v356 + 16))(v590, v355, v684);
          v401 = v685;
          sub_216A2E494(v399, v400, v647);
          if (!v401)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 11:
          v412 = v551;
          sub_21700E2D4();
          v413 = v592;
          (*(v356 + 16))(v592, v355, v684);
          v414 = v685;
          sub_21686EF88(v412, v413, v648);
          if (!v414)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 12:
          (*(v351 + 16))(v524, v344, v294);
          (*(v356 + 16))(v595, v355, v684);
          type metadata accessor for FlowcaseLockup();
          sub_2169BB7B4(&qword_280E43618, type metadata accessor for FlowcaseLockup);
          v460 = v685;
          v358 = sub_21700E934();
          if (!v460)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 13:
          v387 = v552;
          sub_21700E2D4();
          v388 = v593;
          (*(v356 + 16))(v593, v355, v684);
          v389 = v685;
          sub_21686DF70(v387, v388, v649);
          if (!v389)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 14:
          v433 = v553;
          sub_21700E2D4();
          v434 = v594;
          (*(v356 + 16))(v594, v355, v684);
          v435 = v685;
          sub_216E4A7D8(v433, v434, v650);
          if (!v435)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 15:
          v381 = v554;
          sub_21700E2D4();
          v382 = v596;
          (*(v356 + 16))(v596, v355, v684);
          v383 = v685;
          sub_216E50810(v381, v382, v651);
          if (!v383)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 16:
          (*(v351 + 16))(v525, v344, v294);
          (*(v356 + 16))(v598, v355, v684);
          type metadata accessor for HorizontalLockup();
          sub_2169BB7B4(&unk_280E410E0, type metadata accessor for HorizontalLockup);
          v443 = v685;
          v358 = sub_21700E934();
          if (!v443)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 17:
          (*(v351 + 16))(v526, v344, v294);
          (*(v356 + 16))(v600, v355, v684);
          type metadata accessor for HorizontalPosterLockup();
          sub_2169BB7B4(&qword_280E39368, type metadata accessor for HorizontalPosterLockup);
          v461 = v685;
          v358 = sub_21700E934();
          if (!v461)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 18:
          v472 = v555;
          sub_21700E2D4();
          v473 = v597;
          (*(v356 + 16))(v597, v355, v684);
          v474 = v685;
          sub_216A0C148(v472, v473, v652);
          if (!v474)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 19:
          v450 = v556;
          sub_21700E2D4();
          v451 = v599;
          (*(v356 + 16))(v599, v355, v684);
          v452 = v685;
          sub_216B9E458(v450, v451, v653);
          if (!v452)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 20:
          (*(v351 + 16))(v527, v344, v294);
          (*(v356 + 16))(v602, v355, v684);
          type metadata accessor for LinkComponentModel();
          sub_2169BB7B4(&qword_280E3EC48, type metadata accessor for LinkComponentModel);
          v459 = v685;
          v358 = sub_21700E934();
          if (!v459)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 21:
          (*(v351 + 16))(v528, v344, v294);
          (*(v356 + 16))(v604, v355, v684);
          type metadata accessor for LiveRadioGridLockup();
          sub_2169BB7B4(&qword_280E3DB30, type metadata accessor for LiveRadioGridLockup);
          v470 = v685;
          v358 = sub_21700E934();
          if (!v470)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 22:
          v484 = v557;
          sub_21700E2D4();
          v485 = v601;
          (*(v356 + 16))(v601, v355, v684);
          v486 = v685;
          sub_21697DD50(v484, v485, v654);
          if (!v486)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 23:
          v427 = v558;
          sub_21700E2D4();
          v428 = v603;
          (*(v356 + 16))(v603, v355, v684);
          v429 = v685;
          sub_216BF9F7C(v427, v428, v655);
          if (!v429)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 24:
          (*(v351 + 16))(v529, v344, v294);
          v688 = *(v356 + 16);
          (v688)(v606, v355, v684);
          type metadata accessor for PlaylistTrackLockup();
          sub_2169BB7B4(&unk_280E3D5E0, type metadata accessor for PlaylistTrackLockup);
          v416 = v685;
          v417 = sub_21700E934();
          if (!v416)
          {
            v418 = v417;
            v419 = v516;
            sub_21700CE04();
            v420 = v518;
            (v688)(v518, v355, v684);
            ContentDescriptor.init(deserializing:using:)(v419, v420, v421, v422, v423, v424, v425, v426, v514, v515, SWORD2(v515), SBYTE6(v515), SHIBYTE(v515));
            (*(v686 + 8))(v344, v294);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0);
            *v681 = v418;
            sub_2169BBB94();
            type metadata accessor for SectionContent();
            goto LABEL_131;
          }

LABEL_67:
          result = (*(v351 + 8))(v344, v294);
          break;
        case 25:
          v494 = v559;
          sub_21700E2D4();
          v495 = v605;
          (*(v356 + 16))(v605, v355, v684);
          v496 = v685;
          sub_2167AFCE8(v494, v495, v656);
          if (!v496)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 26:
          (*(v351 + 16))(v530, v344, v294);
          (*(v356 + 16))(v607, v355, v684);
          type metadata accessor for PosterLockup();
          sub_2169BB7B4(&qword_280E44988, type metadata accessor for PosterLockup);
          v377 = v685;
          v358 = sub_21700E934();
          if (!v377)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 27:
          (*(v351 + 16))(v531, v344, v294);
          (*(v356 + 16))(v609, v355, v684);
          type metadata accessor for RecentSearchLockup();
          sub_2169BB7B4(&qword_27CABEE70, type metadata accessor for RecentSearchLockup);
          v487 = v685;
          v358 = sub_21700E934();
          if (!v487)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 29:
          v488 = v561;
          (*(v680 + 16))(v561, v353, v687);
          v489 = v610;
          (*(v356 + 16))(v610, v355, v684);
          v490 = v685;
          sub_216A26610(v488, v489, v658);
          if (!v490)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 30:
          (*(v351 + 16))(v532, v344, v294);
          (*(v356 + 16))(v611, v355, v684);
          _s6LockupVMa();
          sub_2169BB7B4(&qword_280E439E0, _s6LockupVMa);
          v465 = v685;
          v358 = sub_21700E934();
          if (!v465)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 31:
          (*(v351 + 16))(v533, v344, v294);
          (*(v356 + 16))(v613, v355, v684);
          type metadata accessor for SocialCardLockup();
          sub_2169BB7B4(&qword_280E407E8, type metadata accessor for SocialCardLockup);
          v442 = v685;
          v358 = sub_21700E934();
          if (!v442)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 32:
          (*(v351 + 16))(v534, v344, v294);
          (*(v356 + 16))(v615, v355, v684);
          type metadata accessor for SocialOnboardingFindFriendsPageLockup();
          sub_2169BB7B4(&qword_280E2DC20, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
          v466 = v685;
          v358 = sub_21700E934();
          if (!v466)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 33:
          v390 = v562;
          sub_21700E2D4();
          v391 = v612;
          (*(v356 + 16))(v612, v355, v684);
          v392 = v685;
          sub_21694104C(v390, v391, v659);
          if (!v392)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 34:
          v378 = v563;
          sub_21700E2D4();
          v379 = v614;
          (*(v356 + 16))(v614, v355, v684);
          v380 = v685;
          sub_2169F00B4(v378, v379, v660);
          if (!v380)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 35:
          (*(v351 + 16))(v535, v344, v294);
          (*(v356 + 16))(v618, v355, v684);
          type metadata accessor for SocialOnboardingSharedPlaylistLockup();
          sub_2169BB7B4(&unk_280E2DFE0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
          v373 = v685;
          v358 = sub_21700E934();
          if (!v373)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 36:
          v374 = v564;
          sub_21700E2D4();
          v375 = v616;
          (*(v356 + 16))(v616, v355, v684);
          v376 = v685;
          sub_216B6B718(v374, v375, v661);
          if (!v376)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 37:
          v363 = v565;
          sub_21700E2D4();
          v364 = v617;
          (*(v356 + 16))(v617, v355, v684);
          v365 = v685;
          sub_216B7DF80(v363, v364, v662);
          if (!v365)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 38:
          v491 = v567;
          sub_21700E2D4();
          v492 = v620;
          (*(v356 + 16))(v620, v355, v684);
          v493 = v685;
          sub_216A5295C(v491, v492, v664);
          if (!v493)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 39:
          (*(v351 + 16))(v536, v344, v294);
          (*(v356 + 16))(v623, v355, v684);
          type metadata accessor for SocialProfileHorizontalLockup();
          sub_2169BB7B4(&qword_280E310D8, type metadata accessor for SocialProfileHorizontalLockup);
          v471 = v685;
          v358 = sub_21700E934();
          if (!v471)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 40:
          v408 = v568;
          (*(v680 + 16))(v568, v353, v687);
          v409 = v621;
          (*(v356 + 16))(v621, v355, v684);
          v410 = v685;
          sub_216C3FFF4(v408, v409, v665);
          if (!v410)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 41:
          v447 = v566;
          (*(v680 + 16))(v566, v353, v687);
          v448 = v619;
          (*(v356 + 16))(v619, v355, v684);
          v449 = v685;
          sub_216BF12B4(v447, v448, v663);
          if (!v449)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 42:
          v478 = v569;
          sub_21700E2D4();
          v479 = v622;
          (*(v356 + 16))(v622, v355, v684);
          v480 = v685;
          sub_21696CCD4(v478, v479, v666);
          if (!v480)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 43:
          v360 = v570;
          sub_21700E2D4();
          v361 = v624;
          (*(v356 + 16))(v624, v355, v684);
          v362 = v685;
          sub_216EA7F2C(v360, v361, v667);
          if (!v362)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 44:
          v384 = v571;
          sub_21700E2D4();
          v385 = v625;
          (*(v356 + 16))(v625, v355, v684);
          v386 = v685;
          sub_216A285E4(v384, v385, v668);
          if (!v386)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 45:
          v467 = v572;
          sub_21700E2D4();
          v468 = v626;
          (*(v356 + 16))(v626, v355, v684);
          v469 = v685;
          sub_216956A3C(v467, v468, v669);
          if (!v469)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 46:
          v500 = v573;
          sub_21700E2D4();
          v501 = v627;
          (*(v356 + 16))(v627, v355, v684);
          v502 = v685;
          sub_216BD86D0(v500, v501, v670);
          if (v502)
          {
            goto LABEL_127;
          }

          goto LABEL_117;
        case 47:
          v369 = v574;
          sub_21700E2D4();
          v370 = v628;
          (*(v356 + 16))(v628, v355, v684);
          v371 = v685;
          sub_2167EB3C8(v369, v370, v671);
          if (!v371)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 48:
          v393 = v576;
          (*(v680 + 16))(v576, v353, v687);
          v394 = v630;
          (*(v356 + 16))(v630, v355, v684);
          v395 = v685;
          sub_216A8E280(v393, v394, v673);
          if (!v395)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 49:
          v405 = v575;
          sub_21700E2D4();
          v406 = v629;
          (*(v356 + 16))(v629, v355, v684);
          v407 = v685;
          sub_21699038C(v405, v406, v672);
          if (!v407)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 50:
          (*(v351 + 16))(v537, v344, v294);
          (*(v356 + 16))(v631, v355, v684);
          type metadata accessor for SplitPosterLockup(0);
          sub_2169BB7B4(&qword_27CABEE68, type metadata accessor for SplitPosterLockup);
          v359 = v685;
          v358 = sub_21700E934();
          if (!v359)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 51:
          (*(v351 + 16))(v538, v344, v294);
          (*(v356 + 16))(v633, v355, v684);
          type metadata accessor for SquareLockup();
          sub_2169BB7B4(&unk_280E445E0, type metadata accessor for SquareLockup);
          v503 = v685;
          v358 = sub_21700E934();
          if (v503)
          {
            goto LABEL_127;
          }

          goto LABEL_130;
        case 52:
          (*(v351 + 16))(v539, v344, v294);
          (*(v356 + 16))(v634, v355, v684);
          type metadata accessor for SuggestionItem();
          sub_2169BB7B4(&unk_280E42A18, type metadata accessor for SuggestionItem);
          v499 = v685;
          v358 = sub_21700E934();
          if (!v499)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 53:
          v366 = v577;
          sub_21700E2D4();
          v367 = v632;
          (*(v356 + 16))(v632, v355, v684);
          v368 = v685;
          sub_216B0B620(v366, v367, v674);
          if (!v368)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 54:
          (*(v351 + 16))(v540, v344, v294);
          (*(v356 + 16))(v635, v355, v684);
          type metadata accessor for TextListComponentModel();
          sub_2169BB7B4(&qword_280E38AC8, type metadata accessor for TextListComponentModel);
          v497 = v685;
          v358 = sub_21700E934();
          if (!v497)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 55:
          (*(v351 + 16))(v541, v344, v294);
          (*(v356 + 16))(v637, v355, v684);
          type metadata accessor for TopSearchLockup();
          sub_2169BB7B4(&qword_280E41CF8, type metadata accessor for TopSearchLockup);
          v498 = v685;
          v358 = sub_21700E934();
          if (!v498)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 56:
          (*(v351 + 16))(v542, v344, v294);
          (*(v356 + 16))(v639, v355, v684);
          type metadata accessor for TrackLockup();
          sub_2169BB7B4(&qword_280E44F98, type metadata accessor for TrackLockup);
          v372 = v685;
          v358 = sub_21700E934();
          if (!v372)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 57:
          v475 = v578;
          sub_21700E2D4();
          v476 = v636;
          (*(v356 + 16))(v636, v355, v684);
          v477 = v685;
          sub_216E439C4(v475, v476, v675);
          if (!v477)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 58:
          v396 = v579;
          sub_21700E2D4();
          v397 = v638;
          (*(v356 + 16))(v638, v355, v684);
          v398 = v685;
          sub_216AD3F44(v396, v397, v676);
          if (!v398)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 59:
          v481 = v580;
          sub_21700E2D4();
          v482 = v640;
          (*(v356 + 16))(v640, v355, v684);
          v483 = v685;
          sub_216BD8DA8(v481, v482, v677);
          if (!v483)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 60:
          (*(v351 + 16))(v543, v344, v294);
          (*(v356 + 16))(v641, v355, v684);
          type metadata accessor for VerticalVideoLockup();
          sub_2169BB7B4(&qword_280E3CD88, type metadata accessor for VerticalVideoLockup);
          v411 = v685;
          v358 = sub_21700E934();
          if (v411)
          {
            goto LABEL_127;
          }

LABEL_130:
          v513 = v358;
          (*(v351 + 8))(v344, v294);
          *v681 = v513;
          type metadata accessor for SectionContent();
          goto LABEL_131;
        case 61:
          v453 = v560;
          sub_21700E2D4();
          v454 = v608;
          (*(v356 + 16))(v608, v355, v684);
          v455 = v685;
          sub_21696D638(v453, v454, v657);
          if (!v455)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        default:
          v437 = v544;
          sub_21700E2D4();
          v438 = v581;
          (*(v356 + 16))(v581, v355, v684);
          v439 = v685;
          sub_216AC7144(v437, v438, v582);
          if (v439)
          {
LABEL_127:
            result = (*(v351 + 8))(v354, v294);
          }

          else
          {
LABEL_117:
            (*(v351 + 8))(v354, v294);
            sub_2169BBB94();
            type metadata accessor for SectionContent();
LABEL_131:
            result = swift_storeEnumTagMultiPayload();
          }

          break;
      }
    }
  }

  return result;
}

uint64_t sub_2169A25CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v60 = a3;
  v4 = type metadata accessor for SongDetailList();
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
  MEMORY[0x28223BE20](FriendsPageSectionLockup - 8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchResultsListSection();
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21700CF34();
  v61 = *(v63 - 8);
  v12 = MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v51 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v52 = &v51 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v54 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v51 = &v51 - v20;
  v21 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  MEMORY[0x28223BE20](v21 - 8);
  v53 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21700CDF4();
  v23 = *(v66 - 8);
  v24 = MEMORY[0x28223BE20](v66);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v51 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v51 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v51 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v51 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v51 - v39;
  sub_21700CE04();
  sub_2169BB7FC();
  v41 = v65;
  sub_21700CCD4();
  if (v41)
  {
    return (*(v23 + 8))(v40, v66);
  }

  v65 = a1;
  (*(v23 + 8))(v40, v66);
  v43 = *(v23 + 16);
  v44 = v62;
  v45 = (v61 + 16);
  switch(v67)
  {
    case 1:
      v43(v35, v65, v66);
      v50 = v54;
      (*v45)(v54, v64, v63);
      sub_2168CDA30(v35, v50, v56);
      break;
    case 2:
      v43(v29, v65, v66);
      v47 = v55;
      (*v45)(v55, v64, v63);
      sub_216B6B718(v29, v47, v58);
      break;
    case 3:
      v48 = v32;
      v43(v32, v65, v66);
      v49 = v52;
      (*v45)(v52, v64, v63);
      sub_216B7DF80(v48, v49, v57);
      break;
    case 4:
      v43(v26, v65, v66);
      (*v45)(v44, v64, v63);
      sub_216A8E280(v26, v44, v59);
      break;
    default:
      v43(v38, v65, v66);
      v46 = v51;
      (*v45)(v51, v64, v63);
      sub_216BE7ADC(v38, v46, v53);
      break;
  }

  sub_2169BBB94();
  type metadata accessor for SectionContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2169A2CF0()
{
  v0 = type metadata accessor for SearchResultsListSection();
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_0();
  v142 = v2;
  OUTLINED_FUNCTION_4_1();
  v143 = type metadata accessor for VerticalArtworkListItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v144 = v4;
  OUTLINED_FUNCTION_4_1();
  v141[0] = type metadata accessor for TVMovieDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v141[1] = v6;
  OUTLINED_FUNCTION_4_1();
  v140[0] = type metadata accessor for TVMovieDescription();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v140[1] = v8;
  OUTLINED_FUNCTION_4_1();
  v138 = type metadata accessor for SuperHeroLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v139 = v10;
  OUTLINED_FUNCTION_4_1();
  v137[0] = type metadata accessor for Spacer();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v137[1] = v12;
  OUTLINED_FUNCTION_4_1();
  v136[0] = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v136[1] = v14;
  OUTLINED_FUNCTION_4_1();
  v135[0] = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v135[1] = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v134[0] = type metadata accessor for SocialProfileEditorHeaderLockup(v17);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v134[1] = v19;
  OUTLINED_FUNCTION_4_1();
  v133[0] = type metadata accessor for SocialProfileDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v133[1] = v21;
  OUTLINED_FUNCTION_4_1();
  v22 = type metadata accessor for SocialOnboardingWelcomePageLockup();
  v23 = OUTLINED_FUNCTION_1_77(v22, &v150);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v132 = v24;
  OUTLINED_FUNCTION_4_1();
  v25 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  v26 = OUTLINED_FUNCTION_1_77(v25, &v149);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v27);
  v28 = type metadata accessor for SocialProfileHorizontalLockupSection();
  v29 = OUTLINED_FUNCTION_1_77(v28, &v147);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v30);
  v31 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  v32 = OUTLINED_FUNCTION_1_77(v31, &v148);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v33);
  v34 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
  v35 = OUTLINED_FUNCTION_1_77(v34, &v145);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v36);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
  v38 = OUTLINED_FUNCTION_1_77(FriendsPageSectionLockup, &v146);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v39);
  v40 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  v41 = OUTLINED_FUNCTION_1_77(v40, &v144);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v42);
  v43 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  v44 = OUTLINED_FUNCTION_1_77(v43, &v142);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v45);
  v46 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  v47 = OUTLINED_FUNCTION_1_77(v46, v141);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v48);
  v49 = type metadata accessor for ListSection();
  v50 = OUTLINED_FUNCTION_1_77(v49, &v139);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v51);
  ContextLockup = type metadata accessor for SearchQueryContextLockup();
  v53 = OUTLINED_FUNCTION_1_77(ContextLockup, v140);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v54);
  v55 = type metadata accessor for PopoverSelector();
  v56 = OUTLINED_FUNCTION_1_77(v55, v137);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v57);
  v58 = type metadata accessor for PlaylistDetailHeaderLockup();
  v59 = OUTLINED_FUNCTION_1_77(v58, v136);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v60);
  v61 = type metadata accessor for ParagraphComponentModel();
  v62 = OUTLINED_FUNCTION_1_77(v61, v135);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v63);
  v64 = type metadata accessor for SongDetailList();
  v65 = OUTLINED_FUNCTION_1_77(v64, v134);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v66);
  v67 = type metadata accessor for LandingUpsell();
  v68 = OUTLINED_FUNCTION_1_77(v67, v133);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v69);
  v70 = type metadata accessor for InlineUpsell();
  v71 = OUTLINED_FUNCTION_1_77(v70, v131);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v72);
  v73 = type metadata accessor for HeaderComponentModel();
  v74 = OUTLINED_FUNCTION_1_77(v73, v130);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v75);
  v76 = type metadata accessor for GroupedTextListLockup();
  v77 = OUTLINED_FUNCTION_1_77(v76, v129);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v78);
  v79 = type metadata accessor for GradientListRowModel();
  v80 = OUTLINED_FUNCTION_1_77(v79, v128);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v81);
  v82 = type metadata accessor for EmptyStateLockup();
  v83 = OUTLINED_FUNCTION_1_77(v82, v127);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v84);
  v85 = type metadata accessor for CuratorDetailHeaderComponentModel();
  v86 = OUTLINED_FUNCTION_1_77(v85, v126);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v87);
  v88 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v89 = OUTLINED_FUNCTION_1_77(v88, v125);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v90);
  v91 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  v92 = OUTLINED_FUNCTION_1_77(v91, v124);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v93);
  v94 = type metadata accessor for ArtistLatestReleaseLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_7();
  v96 = type metadata accessor for ArtistDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_7();
  v98 = type metadata accessor for AnimatedTextListItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  v100 = type metadata accessor for AlbumDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_7();
  type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_7();
  v105 = v104 - v103;
  OUTLINED_FUNCTION_2_68();
  sub_2169BBAE8();
  OUTLINED_FUNCTION_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8) + 48);
      sub_2169F2900();
      goto LABEL_60;
    case 2u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v98;
      v113 = sub_2169BB7B4(&qword_27CABE138, type metadata accessor for AnimatedTextListItem);
      OUTLINED_FUNCTION_96_4(v113);
      goto LABEL_67;
    case 3u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F172C();
      goto LABEL_69;
    case 4u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v96;
      v112 = sub_2169BB7B4(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup);
      OUTLINED_FUNCTION_96_4(v112);
      goto LABEL_67;
    case 5u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v115 = OUTLINED_FUNCTION_75_7();
      *(v115 + 16) = xmmword_217013DA0;
      *(v115 + 56) = v94;
      v94 = v115;
      v116 = sub_2169BB7B4(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup);
      OUTLINED_FUNCTION_96_4(v116);
      goto LABEL_67;
    case 6u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v124);
      v107 = &unk_280E2E350;
      v108 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup;
      goto LABEL_66;
    case 7u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2A48();
      goto LABEL_69;
    case 8u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v125);
      v107 = &unk_280E2E290;
      v108 = type metadata accessor for ContainerDetailTracklistFooterLockup;
      goto LABEL_66;
    case 9u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v126);
      v107 = &unk_280E2F350;
      v108 = type metadata accessor for CuratorDetailHeaderComponentModel;
      goto LABEL_66;
    case 0xAu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v127);
      v107 = &unk_280E41380;
      v108 = type metadata accessor for EmptyStateLockup;
      goto LABEL_66;
    case 0xBu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2B90();
      goto LABEL_69;
    case 0xCu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v128);
      v107 = &unk_27CABE108;
      v108 = type metadata accessor for GradientListRowModel;
      goto LABEL_66;
    case 0xDu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v129);
      v107 = &unk_280E3A888;
      v108 = type metadata accessor for GroupedTextListLockup;
      goto LABEL_66;
    case 0xEu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v130);
      v107 = &qword_280E3C3A8;
      v108 = type metadata accessor for HeaderComponentModel;
      goto LABEL_66;
    case 0xFu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2CD8();
      goto LABEL_69;
    case 0x10u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2E20();
      goto LABEL_69;
    case 0x11u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v131);
      v107 = &unk_280E44CE0;
      v108 = type metadata accessor for InlineUpsell;
      goto LABEL_66;
    case 0x12u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v133);
      v107 = &unk_280E43EB0;
      v108 = type metadata accessor for LandingUpsell;
      goto LABEL_66;
    case 0x13u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F1B38();
      goto LABEL_69;
    case 0x14u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2F68();
      goto LABEL_69;
    case 0x15u:
      OUTLINED_FUNCTION_51_7();
      v105 = v142;
      sub_2169BBB94();
      sub_2169F39A8();
      v94 = v117;
      v111 = type metadata accessor for SearchResultsListSection;
      goto LABEL_49;
    case 0x16u:
      OUTLINED_FUNCTION_25_24();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBB94();
      sub_2169F1EB8();
      v94 = v119;
      v111 = type metadata accessor for ListSection;
      goto LABEL_49;
    case 0x17u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v134);
      v107 = &unk_280E42AE0;
      v108 = type metadata accessor for SongDetailList;
      goto LABEL_66;
    case 0x18u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v135);
      v107 = &unk_280E37B38;
      v108 = type metadata accessor for ParagraphComponentModel;
      goto LABEL_66;
    case 0x19u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v136);
      v107 = qword_280E34400;
      v108 = type metadata accessor for PlaylistDetailHeaderLockup;
      goto LABEL_66;
    case 0x1Au:
      v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0) + 48);
      sub_2169F30B0();
LABEL_60:
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_5_54();
      v121 = v105 + v114;
      goto LABEL_61;
    case 0x1Bu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v137);
      v107 = &unk_27CAB9C38;
      v108 = type metadata accessor for PopoverSelector;
      goto LABEL_66;
    case 0x1Cu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F31F8();
      goto LABEL_69;
    case 0x1Du:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3340();
      goto LABEL_69;
    case 0x1Eu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F1D10();
      goto LABEL_69;
    case 0x1Fu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v140);
      v107 = &unk_280E36308;
      v108 = type metadata accessor for SearchQueryContextLockup;
      goto LABEL_66;
    case 0x20u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3488();
      goto LABEL_69;
    case 0x21u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2030();
      goto LABEL_69;
    case 0x22u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2178();
      goto LABEL_69;
    case 0x23u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, v141);
      v107 = &unk_280E2CAC0;
      v108 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      goto LABEL_66;
    case 0x24u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, &v142);
      v107 = &unk_280E2D280;
      v108 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      goto LABEL_66;
    case 0x25u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F35D0();
      goto LABEL_69;
    case 0x26u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, &v149);
      v107 = &unk_280E2D5F8;
      v108 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      goto LABEL_66;
    case 0x27u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, &v150);
      v107 = &unk_280E2EF10;
      v108 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      goto LABEL_66;
    case 0x28u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v133[0];
      v107 = &unk_280E2FEC8;
      v108 = type metadata accessor for SocialProfileDetailHeaderLockup;
      goto LABEL_66;
    case 0x29u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v134[0];
      v107 = &unk_280E2FE08;
      v108 = type metadata accessor for SocialProfileEditorHeaderLockup;
      goto LABEL_66;
    case 0x2Au:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v135[0];
      v107 = &unk_280E2CDC8;
      v108 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      goto LABEL_66;
    case 0x2Bu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v136[0];
      v107 = &unk_280E2CFC0;
      v108 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      goto LABEL_66;
    case 0x2Cu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, &v148);
      v107 = &unk_280E2D540;
      v108 = type metadata accessor for SocialProfileFollowRequestResponseHeader;
      goto LABEL_66;
    case 0x2Du:
      OUTLINED_FUNCTION_26_25();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBB94();
      sub_2169F2468();
      v94 = v118;
      v111 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel;
      goto LABEL_49;
    case 0x2Eu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, &v144);
      v107 = &unk_280E2D6A8;
      v108 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
      goto LABEL_66;
    case 0x2Fu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v94, &v146);
      v107 = &unk_280E2CE80;
      v108 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
      goto LABEL_66;
    case 0x30u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2320();
      goto LABEL_69;
    case 0x31u:
      OUTLINED_FUNCTION_27_23();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBB94();
      sub_2169F2320();
      v94 = v110;
      v111 = type metadata accessor for SocialProfileHorizontalLockupSection;
LABEL_49:
      v120 = v111;
      v121 = v105;
LABEL_61:
      sub_2169BBB3C(v121, v120);
      return v94;
    case 0x32u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v137[0];
      v107 = &unk_280E2C268;
      v108 = type metadata accessor for Spacer;
      goto LABEL_66;
    case 0x33u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3718();
      goto LABEL_69;
    case 0x34u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3860();
      goto LABEL_69;
    case 0x35u:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v138;
      v107 = qword_280E41E98;
      v108 = type metadata accessor for SuperHeroLockup;
      goto LABEL_66;
    case 0x36u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F25E0();
      goto LABEL_69;
    case 0x37u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2728();
      goto LABEL_69;
    case 0x38u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F39A8();
      goto LABEL_69;
    case 0x39u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3AF0();
      goto LABEL_69;
    case 0x3Au:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v140[0];
      v107 = qword_280E3E588;
      v108 = type metadata accessor for TVMovieDescription;
      goto LABEL_66;
    case 0x3Bu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v141[0];
      v107 = qword_280E34CE8;
      v108 = type metadata accessor for TVMovieDetailHeaderLockup;
      goto LABEL_66;
    case 0x3Cu:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v143;
      v107 = &unk_27CABE110;
      v108 = type metadata accessor for VerticalArtworkListItem;
LABEL_66:
      v122 = sub_2169BB7B4(v107, v108);
      OUTLINED_FUNCTION_96_4(v122);
      goto LABEL_67;
    case 0x3Du:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3C38();
LABEL_69:
      v94 = v109;

      return v94;
    default:
      sub_2169BBB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120);
      v94 = OUTLINED_FUNCTION_75_7();
      *(v94 + 16) = xmmword_217013DA0;
      *(v94 + 56) = v100;
      v106 = sub_2169BB7B4(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup);
      OUTLINED_FUNCTION_96_4(v106);
LABEL_67:
      sub_2169BBB94();
      return v94;
  }
}

void sub_2169A4B24()
{
  OUTLINED_FUNCTION_22_3();
  v320 = v1;
  v321 = v5;
  v322 = v0;
  v323 = v6;
  v7 = type metadata accessor for TVMovieDetailHeaderLockup();
  v8 = OUTLINED_FUNCTION_1_77(v7, v311);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v10);
  v11 = type metadata accessor for TVMovieDescription();
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v14);
  v15 = type metadata accessor for SuperHeroLockup();
  v16 = OUTLINED_FUNCTION_1_77(v15, &v306);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v18);
  v19 = type metadata accessor for Spacer();
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v22);
  v23 = type metadata accessor for SocialProfileHorizontalLockupSection();
  v24 = OUTLINED_FUNCTION_1_77(v23, &v303);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v26);
  v27 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
  v28 = OUTLINED_FUNCTION_1_77(v27, &v302);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v30);
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  v32 = OUTLINED_FUNCTION_1_77(FriendsButtonComponentModel, &v301);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  v35 = OUTLINED_FUNCTION_8_0(v34);
  v36 = type metadata accessor for SocialProfileEditorHeaderLockup(v35);
  v37 = OUTLINED_FUNCTION_1_77(v36, v300);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v39);
  v40 = type metadata accessor for SocialProfileDetailHeaderLockup();
  v41 = OUTLINED_FUNCTION_1_77(v40, &v299);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v43);
  v44 = type metadata accessor for SocialOnboardingWelcomePageLockup();
  v45 = OUTLINED_FUNCTION_1_77(v44, &v298);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v47);
  v48 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  v49 = OUTLINED_FUNCTION_36(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v51);
  v52 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  v53 = OUTLINED_FUNCTION_36(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v55);
  v56 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  v57 = OUTLINED_FUNCTION_36(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v59);
  ContextLockup = type metadata accessor for SearchQueryContextLockup();
  v61 = OUTLINED_FUNCTION_1_77(ContextLockup, &v297);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v63);
  v64 = type metadata accessor for PopoverSelector();
  v65 = OUTLINED_FUNCTION_1_77(v64, &v296);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v67);
  v68 = type metadata accessor for ParagraphComponentModel();
  v69 = OUTLINED_FUNCTION_1_77(v68, &v295);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v71);
  v72 = type metadata accessor for InlineUpsell();
  v73 = OUTLINED_FUNCTION_36(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v75);
  v76 = type metadata accessor for HeaderComponentModel();
  v77 = OUTLINED_FUNCTION_36(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v79);
  v80 = type metadata accessor for GroupedTextListLockup();
  v81 = OUTLINED_FUNCTION_1_77(v80, &v294);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v83);
  v84 = type metadata accessor for EmptyStateLockup();
  v85 = OUTLINED_FUNCTION_36(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v87);
  v88 = type metadata accessor for CuratorDetailHeaderComponentModel();
  v89 = OUTLINED_FUNCTION_1_77(v88, &v293);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v91);
  v92 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v93 = OUTLINED_FUNCTION_1_77(v92, &v292);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v95);
  v96 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
  v97 = OUTLINED_FUNCTION_1_77(v96, &v291);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v99);
  v100 = type metadata accessor for ArtistLatestReleaseLockup();
  v101 = OUTLINED_FUNCTION_1_77(v100, &v290);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v103);
  v104 = type metadata accessor for ArtistDetailHeaderLockup();
  v105 = OUTLINED_FUNCTION_1_77(v104, &v289);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v107);
  v108 = type metadata accessor for ContentDescriptor();
  v109 = OUTLINED_FUNCTION_36(v108);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_6_0();
  v319 = v110;
  OUTLINED_FUNCTION_4_1();
  type metadata accessor for SectionContent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_1_0();
  v316 = v112;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_6_4();
  v318 = v114;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_6_4();
  v317 = v116;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_6_4();
  v314 = v118;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_6_4();
  v313 = v120;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_6_4();
  v311[1] = v122;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_6_4();
  v315 = v124;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_6_4();
  v310 = v126;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_6_4();
  v312 = v128;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_6_4();
  v311[0] = v130;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_6_4();
  v306 = v132;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_6_4();
  v309 = v134;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_6_4();
  v308 = v136;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_6_4();
  v307 = v138;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_6_4();
  v305 = v140;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_6_4();
  v304 = v142;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_100_3();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_102_7();
  MEMORY[0x28223BE20](v172);
  v174 = (v287 - v173);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB58);
  OUTLINED_FUNCTION_36(v175);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_106_1();
  v178 = v3 + *(v177 + 56);
  sub_2169BBAE8();
  v323 = v178;
  sub_2169BBAE8();
  OUTLINED_FUNCTION_39();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v179 = v3;
      sub_2169BBAE8();
      v180 = *v174;
      v181 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8) + 48);
      v182 = v323;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v183 = *v182;
        sub_2169BBB94();
        v184 = sub_2169A7470(v180, v183);

        *v321 = v184;
        sub_2169BBB94();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_54();
        sub_2169BBB3C(v182 + v181, v185);
        v3 = v179;
        goto LABEL_98;
      }

      sub_2169BBB3C(v174 + v181, type metadata accessor for ContentDescriptor);

      v3 = v179;
      goto LABEL_129;
    case 3u:
      OUTLINED_FUNCTION_91();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 3)
      {
        goto LABEL_121;
      }

      v236 = OUTLINED_FUNCTION_19_30();
      sub_2169A7F94(v236, v237);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 4u:
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v221 = OUTLINED_FUNCTION_42_19(v220);
        sub_2169BBB3C(v221, type metadata accessor for ArtistDetailHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v284 = type metadata accessor for ArtistDetailHeaderLockup;
      v285 = v4;
      goto LABEL_128;
    case 5u:
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v251 = OUTLINED_FUNCTION_42_19(v250);
        sub_2169BBB3C(v251, type metadata accessor for ArtistLatestReleaseLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v284 = type metadata accessor for ArtistLatestReleaseLockup;
      v285 = v2;
      goto LABEL_128;
    case 6u:
      sub_2169BBAE8();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v284 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup;
        v285 = v0;
        goto LABEL_128;
      }

      v252 = v287[7];
      sub_2169BBB94();
      OUTLINED_FUNCTION_37_23();
      if (MEMORY[0x21CEA0160](v252 + *(v288 + 20), v0 + *(v288 + 20)))
      {
        v253 = v252;
      }

      else
      {
        v253 = v0;
      }

      sub_2169BBB3C(v253, type metadata accessor for ArtistLatestReleaseAndTopSongsLockup);
      OUTLINED_FUNCTION_23_26();
      OUTLINED_FUNCTION_90();
      goto LABEL_97;
    case 7u:
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_121;
      }

      v228 = OUTLINED_FUNCTION_19_30();
      sub_2169A8AB8(v228, v229);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 8u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v239 = OUTLINED_FUNCTION_42_19(v238);
        sub_2169BBB3C(v239, type metadata accessor for ContainerDetailTracklistFooterLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for ContainerDetailTracklistFooterLockup;
      goto LABEL_127;
    case 9u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v241 = OUTLINED_FUNCTION_42_19(v240);
        sub_2169BBB3C(v241, type metadata accessor for CuratorDetailHeaderComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for CuratorDetailHeaderComponentModel;
      goto LABEL_127;
    case 0xAu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v259 = OUTLINED_FUNCTION_42_19(v258);
        sub_2169BBB3C(v259, type metadata accessor for EmptyStateLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for EmptyStateLockup;
      goto LABEL_127;
    case 0xBu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 11)
      {
        goto LABEL_121;
      }

      v256 = OUTLINED_FUNCTION_19_30();
      sub_2169A95DC(v256, v257);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0xDu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v207 = OUTLINED_FUNCTION_42_19(v206);
        sub_2169BBB3C(v207, type metadata accessor for GroupedTextListLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for GroupedTextListLockup;
      goto LABEL_127;
    case 0xEu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v231 = OUTLINED_FUNCTION_42_19(v230);
        sub_2169BBB3C(v231, type metadata accessor for HeaderComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for HeaderComponentModel;
      goto LABEL_127;
    case 0xFu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 15)
      {
        goto LABEL_121;
      }

      v216 = OUTLINED_FUNCTION_19_30();
      sub_2169AA100(v216, v217);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x10u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 16)
      {
        goto LABEL_121;
      }

      v200 = OUTLINED_FUNCTION_19_30();
      sub_2169AAC24(v200, v201);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x11u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v245 = OUTLINED_FUNCTION_42_19(v244);
        sub_2169BBB3C(v245, type metadata accessor for InlineUpsell);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for InlineUpsell;
      goto LABEL_127;
    case 0x13u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 19)
      {
        goto LABEL_121;
      }

      v246 = OUTLINED_FUNCTION_19_30();
      sub_2169AB748(v246, v247);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x18u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v270 = OUTLINED_FUNCTION_42_19(v269);
        sub_2169BBB3C(v270, type metadata accessor for ParagraphComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for ParagraphComponentModel;
      goto LABEL_127;
    case 0x1Au:
      v260 = v300[2];
      sub_2169BBAE8();
      v261 = *v260;
      v262 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0) + 48);
      v263 = v323;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v264 = *v263;
        sub_2169BBB94();
        v322 = v3;
        v265 = sub_2169AC26C(v261, v264);

        *v321 = v265;
        v3 = v322;
        sub_2169BBB94();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_54();
        sub_2169BBB3C(v263 + v262, v266);
        goto LABEL_98;
      }

      sub_2169BBB3C(v260 + v262, type metadata accessor for ContentDescriptor);
LABEL_121:

      goto LABEL_129;
    case 0x1Bu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v197 = OUTLINED_FUNCTION_42_19(v196);
        sub_2169BBB3C(v197, type metadata accessor for PopoverSelector);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for PopoverSelector;
      goto LABEL_127;
    case 0x1Cu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 28)
      {
        goto LABEL_121;
      }

      v218 = OUTLINED_FUNCTION_19_30();
      sub_2169ACD90(v218, v219);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x1Du:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 29)
      {
        goto LABEL_121;
      }

      v273 = OUTLINED_FUNCTION_19_30();
      sub_2169AD8B4(v273, v274);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x1Eu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 30)
      {
        goto LABEL_121;
      }

      v198 = OUTLINED_FUNCTION_19_30();
      sub_2169AE3D8(v198, v199);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x1Fu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v215 = OUTLINED_FUNCTION_42_19(v214);
        sub_2169BBB3C(v215, type metadata accessor for SearchQueryContextLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SearchQueryContextLockup;
      goto LABEL_127;
    case 0x20u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 32)
      {
        goto LABEL_121;
      }

      v204 = OUTLINED_FUNCTION_19_30();
      sub_2169AEEFC(v204, v205);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x21u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 33)
      {
        goto LABEL_121;
      }

      v232 = OUTLINED_FUNCTION_19_30();
      sub_2169AFA20(v232, v233);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x22u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 34)
      {
        goto LABEL_121;
      }

      v202 = OUTLINED_FUNCTION_19_30();
      sub_2169B0544(v202, v203);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x23u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 35)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v278 = OUTLINED_FUNCTION_42_19(v277);
        sub_2169BBB3C(v278, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      goto LABEL_127;
    case 0x24u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v276 = OUTLINED_FUNCTION_42_19(v275);
        sub_2169BBB3C(v276, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      goto LABEL_127;
    case 0x25u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 37)
      {
        goto LABEL_121;
      }

      v210 = OUTLINED_FUNCTION_19_30();
      sub_2169B1068(v210, v211);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x26u:
      OUTLINED_FUNCTION_78_9();
      v222 = v323;
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        v223 = v290;
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        v224 = MEMORY[0x21CEA0160](v223 + 16, v222 + 2);
        v225 = OUTLINED_FUNCTION_42_19(v224);
        sub_2169BBB3C(v225, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      goto LABEL_127;
    case 0x27u:
      v174 = v304;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v249 = OUTLINED_FUNCTION_42_19(v248);
        sub_2169BBB3C(v249, type metadata accessor for SocialOnboardingWelcomePageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      goto LABEL_127;
    case 0x28u:
      v174 = v305;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v227 = OUTLINED_FUNCTION_42_19(v226);
        sub_2169BBB3C(v227, type metadata accessor for SocialProfileDetailHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialProfileDetailHeaderLockup;
      goto LABEL_127;
    case 0x29u:
      v174 = v307;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v282 = OUTLINED_FUNCTION_42_19(v281);
        sub_2169BBB3C(v282, type metadata accessor for SocialProfileEditorHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialProfileEditorHeaderLockup;
      goto LABEL_127;
    case 0x2Au:
      v174 = v308;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v209 = OUTLINED_FUNCTION_42_19(v208);
        sub_2169BBB3C(v209, type metadata accessor for SocialProfileFindFriendsButtonComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      goto LABEL_127;
    case 0x2Bu:
      v174 = v309;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v268 = OUTLINED_FUNCTION_42_19(v267);
        sub_2169BBB3C(v268, type metadata accessor for SocialProfileDetailViewFollowRequestsHeader);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      goto LABEL_127;
    case 0x30u:
      OUTLINED_FUNCTION_97_6();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 48)
      {
        goto LABEL_121;
      }

      v279 = OUTLINED_FUNCTION_19_30();
      sub_2169B1B8C(v279, v280);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x31u:
      v174 = v311[0];
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 49)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v193 = OUTLINED_FUNCTION_42_19(v192);
        sub_2169BBB3C(v193, type metadata accessor for SocialProfileHorizontalLockupSection);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SocialProfileHorizontalLockupSection;
      goto LABEL_127;
    case 0x32u:
      v174 = v312;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 50)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v255 = OUTLINED_FUNCTION_42_19(v254);
        sub_2169BBB3C(v255, type metadata accessor for Spacer);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for Spacer;
      goto LABEL_127;
    case 0x34u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 52)
      {
        goto LABEL_121;
      }

      v190 = OUTLINED_FUNCTION_19_30();
      sub_2169B26B0(v190, v191);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x35u:
      v174 = v315;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 53)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v189 = OUTLINED_FUNCTION_42_19(v188);
        sub_2169BBB3C(v189, type metadata accessor for SuperHeroLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for SuperHeroLockup;
      goto LABEL_127;
    case 0x37u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 55)
      {
        goto LABEL_121;
      }

      v212 = OUTLINED_FUNCTION_19_30();
      sub_2169B31D4(v212, v213);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x38u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 56)
      {
        goto LABEL_121;
      }

      v234 = OUTLINED_FUNCTION_19_30();
      sub_2169B3CF8(v234, v235);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x39u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 57)
      {
        goto LABEL_121;
      }

      v271 = OUTLINED_FUNCTION_19_30();
      sub_2169B481C(v271, v272);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x3Au:
      v174 = v317;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 58)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v187 = OUTLINED_FUNCTION_42_19(v186);
        sub_2169BBB3C(v187, type metadata accessor for TVMovieDescription);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v283 = type metadata accessor for TVMovieDescription;
      goto LABEL_127;
    case 0x3Bu:
      v174 = v318;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 59)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v195 = OUTLINED_FUNCTION_42_19(v194);
        sub_2169BBB3C(v195, type metadata accessor for TVMovieDetailHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
LABEL_97:
        swift_storeEnumTagMultiPayload();
LABEL_98:
        sub_2169BBB3C(v3, type metadata accessor for SectionContent);
      }

      else
      {
        v283 = type metadata accessor for TVMovieDetailHeaderLockup;
LABEL_127:
        v284 = v283;
        v285 = v174;
LABEL_128:
        sub_2169BBB3C(v285, v284);
LABEL_129:
        sub_2169BB698();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_88_6(v286, 130);
        sub_216697664(v3, &qword_27CABEB58);
      }

      OUTLINED_FUNCTION_21_4();
      return;
    case 0x3Du:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 61)
      {
        goto LABEL_121;
      }

      v242 = OUTLINED_FUNCTION_19_30();
      sub_2169B5340(v242, v243);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    default:
      goto LABEL_129;
  }
}

uint64_t sub_2169A7470(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB68);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB70);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB78);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for AlbumTrackLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AlbumTrackLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AlbumTrackLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEB70);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEB78);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C54();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for AlbumTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AlbumTrackLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for AlbumTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AlbumTrackLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEB68);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for AlbumTrackLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169A7F94(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB88);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB90);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB98);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for AppsWithAccessComponentModel();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AppsWithAccessComponentModel);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AppsWithAccessComponentModel);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEB90);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEB98);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C3C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for AppsWithAccessComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AppsWithAccessComponentModel);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for AppsWithAccessComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AppsWithAccessComponentModel);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEB88);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for AppsWithAccessComponentModel);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169A8AB8(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA8);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBB0);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBB8);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for BubbleLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for BubbleLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for BubbleLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEBB0);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEBB8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C24();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for BubbleLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for BubbleLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for BubbleLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for BubbleLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEBA8);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for BubbleLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169A95DC(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC8);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBD0);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBD8);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for FlowcaseLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for FlowcaseLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for FlowcaseLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEBD0);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEBD8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C0C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for FlowcaseLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for FlowcaseLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for FlowcaseLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for FlowcaseLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEBC8);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for FlowcaseLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169AA100(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE8);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBF0);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBF8);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = type metadata accessor for HorizontalLockup();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for HorizontalLockup);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for HorizontalLockup);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABEBF0);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABEBF8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BF4();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, type metadata accessor for HorizontalLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for HorizontalLockup);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, type metadata accessor for HorizontalLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for HorizontalLockup);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CABEBE8);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, type metadata accessor for HorizontalLockup);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

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
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169AAC24(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC08);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC10);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC18);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for HorizontalPosterLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for HorizontalPosterLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for HorizontalPosterLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC10);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC18);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BDC();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for HorizontalPosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for HorizontalPosterLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for HorizontalPosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for HorizontalPosterLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEC08);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for HorizontalPosterLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169AB748(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC28);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC30);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for LinkComponentModel();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for LinkComponentModel);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for LinkComponentModel);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC28);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC30);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BC4();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for LinkComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for LinkComponentModel);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for LinkComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for LinkComponentModel);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CAB7A30);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for LinkComponentModel);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169AC26C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC40);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC48);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC50);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for PlaylistTrackLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC58);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PlaylistTrackLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PlaylistTrackLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC48);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC50);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BAC();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC58);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for PlaylistTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PlaylistTrackLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for PlaylistTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PlaylistTrackLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEC40);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for PlaylistTrackLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169ACD90(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC60);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC68);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC70);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for PosterLockup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC78);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PosterLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PosterLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC68);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC70);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B94();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC78);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for PosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PosterLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for PosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PosterLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEC60);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for PosterLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}