uint64_t sub_24E0A5844(char *a1, id *a2, void **a3, char *a4)
{
  v91 = sub_24E343368();
  MEMORY[0x28223BE20](v91);
  v83 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v82 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = (&v78 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  MEMORY[0x28223BE20](v16);
  v81 = (&v78 - v17);
  MEMORY[0x28223BE20](v18);
  v80 = &v78 - v19;
  MEMORY[0x28223BE20](v20);
  v86 = (&v78 - v21);
  MEMORY[0x28223BE20](v22);
  v84 = &v78 - v23;
  v24 = (a2 - a1) / 8;
  v89 = (v25 + 8);
  v90 = (v25 + 32);
  v26 = a3 - a2;
  if (v24 < v26)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v95 = &a4[8 * v24];
    v27 = &selRef_iconURLString;
    v28 = v84;
    v94 = a3;
    while (1)
    {
      if (a4 >= v95 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_36;
      }

      v30 = *a4;
      v31 = *a2;
      v32 = v30;
      v33 = [v31 v27[380]];
      if (!v33)
      {
        goto LABEL_12;
      }

      v34 = v33;
      v92 = a1;
      v93 = a2;
      v35 = v86;
      sub_24E343328();

      v36 = *v90;
      v37 = v35;
      v38 = v91;
      (*v90)(v28, v37, v91);
      v39 = [v32 v27[380]];
      if (!v39)
      {
        break;
      }

      v40 = v39;
      v41 = v81;
      sub_24E343328();

      v42 = v27;
      v43 = v80;
      v44 = v41;
      v28 = v84;
      v36(v80, v44, v38);
      v88 = sub_24E343348();
      v45 = *v89;
      v46 = v43;
      v27 = v42;
      (*v89)(v46, v38);
      v45(v28, v38);

      a1 = v92;
      a2 = v93;
      if (v88 == 1)
      {
        v47 = v93;
        v48 = v92 == v93;
        a2 = v93 + 1;
        goto LABEL_14;
      }

LABEL_13:
      v47 = a4;
      v48 = a1 == a4;
      a4 += 8;
LABEL_14:
      a3 = v94;
      if (!v48)
      {
        *a1 = *v47;
      }

      a1 += 8;
    }

    (*v89)(v28, v38);
    a1 = v92;
    a2 = v93;
LABEL_12:

    goto LABEL_13;
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v95 = &a4[8 * v26];
  v49 = &selRef_iconURLString;
  v92 = a1;
  v85 = a4;
  v79 = v15;
LABEL_18:
  v50 = a2 - 1;
  v51 = a3 - 1;
  v93 = a2;
  v86 = a2 - 1;
  while (v95 > a4 && a2 > a1)
  {
    v94 = v51;
    v53 = (v95 - 8);
    v54 = *v50;
    v55 = *(v95 - 1);
    v56 = v54;
    v57 = [v55 v49[380]];
    if (!v57)
    {
      goto LABEL_29;
    }

    v58 = v57;
    v59 = v87;
    sub_24E343328();

    v60 = v56;
    v61 = *v90;
    v62 = v59;
    v63 = v91;
    (*v90)(v15, v62, v91);
    v64 = v49[380];
    v88 = v60;
    v65 = [v60 v64];
    if (!v65)
    {
      (*v89)(v15, v63);
      a4 = v85;
      v56 = v88;
LABEL_29:

      goto LABEL_30;
    }

    v66 = v65;
    v67 = v49;
    v68 = v83;
    sub_24E343328();

    v69 = v82;
    v70 = v68;
    v49 = v67;
    v15 = v79;
    v61(v82, v70, v63);
    v71 = sub_24E343348();
    v72 = *v89;
    v73 = v69;
    v50 = v86;
    (*v89)(v73, v63);
    v72(v15, v63);

    a4 = v85;
    if (v71 == 1)
    {
      a3 = v94;
      a2 = v50;
      a1 = v92;
      if (v94 + 1 != v93)
      {
        *v94 = *v50;
        a2 = v50;
      }

      goto LABEL_18;
    }

LABEL_30:
    v74 = v94;
    if (v95 != (v94 + 1))
    {
      *v94 = *v53;
    }

    v51 = v74 - 1;
    v95 = v53;
    a1 = v92;
    a2 = v93;
  }

LABEL_36:
  v75 = (v95 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v75])
  {
    memmove(a2, a4, 8 * v75);
  }

  return 1;
}

uint64_t sub_24E0A5E18(char *a1, char *a2, id *a3, char *a4, uint64_t (*a5)(id, id))
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v11 = a4;
    v12 = &a4[8 * v8];
    for (i = v12; ; v12 = i)
    {
      if (v11 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_29;
      }

      v14 = v5;
      v15 = v7;
      v16 = v6;
      v17 = v11;
      v18 = *v11;
      v19 = *v6;
      v20 = v18;
      v21 = a5(v19, v20);
      if (v55)
      {

        v45 = (i - v17) / 8;
        if (v15 < v17 || v15 >= &v17[v45])
        {
          v43 = 8 * v45;
          v44 = v15;
          v11 = v17;
          goto LABEL_51;
        }

        if (v15 != v17)
        {
          v43 = 8 * v45;
          v44 = v15;
          v11 = v17;
LABEL_51:
          memmove(v44, v11, v43);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v16;
      v6 = v16 + 1;
      v11 = v17;
      if (v15 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = v15 + 8;
      v5 = v14;
    }

    v23 = v17;
    v11 = v17 + 1;
    v6 = v16;
    if (v15 == v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v15 = *v23;
    goto LABEL_13;
  }

  sub_24E130EB0(a2, (a3 - a2) / 8, a4);
  v12 = &a4[8 * v9];
  v50 = v7;
  v51 = a4;
  v25 = -a4;
  v49 = -a4;
LABEL_15:
  v26 = v6 - 1;
  --v5;
  v27 = &v12[v25];
  while (1)
  {
    if (v12 <= v51 || v6 <= v7)
    {
      v11 = v51;
LABEL_29:
      v41 = (v12 - v11) / 8;
      if (v6 < v11 || v6 >= &v11[v41])
      {
        v43 = 8 * v41;
        v44 = v6;
        goto LABEL_51;
      }

      if (v6 != v11)
      {
        v43 = 8 * v41;
        v44 = v6;
        goto LABEL_51;
      }

      return 1;
    }

    v53 = v27;
    v29 = v6;
    v30 = v12;
    v32 = (v12 - 8);
    v31 = *(v12 - 1);
    v33 = v26;
    v34 = *v26;
    v35 = v31;
    v36 = v34;
    v37 = a5(v35, v36);

    if (v55)
    {
      break;
    }

    v6 = v29;
    v55 = 0;
    v38 = (v5 + 1);
    if (v37)
    {
      v39 = v38 == v29;
      v40 = v33;
      v6 = v33;
      v25 = v49;
      v7 = v50;
      v12 = v30;
      if (!v39)
      {
        *v5 = *v40;
        v25 = v49;
        v6 = v40;
      }

      goto LABEL_15;
    }

    v26 = v33;
    if (v30 != v38)
    {
      *v5 = *v32;
    }

    --v5;
    v27 = v53 - 8;
    v12 = v32;
    v7 = v50;
  }

  v11 = v51;
  v44 = v29;
  v47 = v29 < v51 || v29 >= &v51[v53 / 8];
  if (v47 || v29 != v51)
  {
    v43 = 8 * (v53 / 8);
    goto LABEL_51;
  }

  return 1;
}

unint64_t sub_24E0A61C0()
{
  result = qword_27F1E2E38;
  if (!qword_27F1E2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2E38);
  }

  return result;
}

uint64_t sub_24E0A6234(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3);
  OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return v3;
}

uint64_t sub_24E0A627C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E0A62D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0A631C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E0A637C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_24E0A6434()
{
  result = qword_27F1E00D8;
  if (!qword_27F1E00D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1E3000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E00D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FriendsListPresenter.SectionIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0A6578()
{
  result = qword_27F1E2E58;
  if (!qword_27F1E2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2E58);
  }

  return result;
}

uint64_t sub_24E0A65F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E0A6634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0A66BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E0A66FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E0A6770(void (*a1)(uint64_t, uint64_t), double a2)
{
  v5 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  swift_getObjectType();
  sub_24E0B7968();
  v14 = a2 - v12 - v13;
  sub_24DF8968C(v2 + 192, v17);
  v15 = v18;
  sub_24DF8C95C(v17, &qword_27F1DEE30);
  if (v15)
  {
    sub_24E0A6924(a1, v11);
    sub_24E3445F8();
    OUTLINED_FUNCTION_7_10();
    (*(v7 + 8))(v11, v5);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + 152), *(v2 + 176));
    sub_24E3440D8();
    OUTLINED_FUNCTION_7_10();
  }

  return v14;
}

uint64_t sub_24E0A6924@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a1;
  v89 = a2;
  v90 = sub_24E344648();
  v93 = *(v90 - 8);
  v98 = v93;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_7_1();
  v92 = v5 - v4;
  v88 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v100 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v91 = v9 - v8;
  v95 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  v99 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v94 = sub_24E344688();
  OUTLINED_FUNCTION_0_14();
  v97 = v16;
  MEMORY[0x28223BE20](v17);
  v86 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = (&v71 - v20);
  v21 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v27 = v26 - v25;
  v28 = *(v2 + 136);
  v29 = *(v3 + 144);
  __swift_project_boxed_opaque_existential_1((v3 + 112), v28);
  sub_24E2548A0(v28, v29);
  sub_24E344198();
  v31 = v30;
  (*(v23 + 8))(v27, v21);
  v32 = v90;
  v33 = v98;
  *&v105[3] = MEMORY[0x277D85048];
  *&v105[4] = MEMORY[0x277D225F8];
  v105[0] = v31 + 4.0;
  *(&v103 + 1) = MEMORY[0x277D85048];
  v104 = MEMORY[0x277D225F8];
  *&v102 = v31 + 4.0;
  v34 = *(v11 + 104);
  v85 = *MEMORY[0x277D227D0];
  v87 = (v11 + 104);
  v84 = v34;
  v34(v15);
  v35 = v100;
  v36 = *(v100 + 104);
  v37 = v91;
  v82 = *MEMORY[0x277D227E8];
  v38 = v88;
  v83 = v100 + 104;
  v81 = v36;
  v36(v91);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v40 = *(v33 + 80);
  v41 = (v40 + 32) & ~v40;
  v78 = *(v93 + 72);
  v77 = v40;
  v80 = v39;
  v42 = swift_allocObject();
  v75 = xmmword_24E367D20;
  *(v42 + 16) = xmmword_24E367D20;
  v79 = v41;
  sub_24E344618();
  v101 = v42;
  v43 = sub_24DF8A8A4();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  v45 = sub_24DF8A8FC();
  v46 = v92;
  v74 = v44;
  v73 = v45;
  v76 = v43;
  sub_24E3487E8();
  v93 = v3;
  v47 = v37;
  sub_24E344678();
  v48 = *(v33 + 8);
  v98 = v33 + 8;
  v48(v46, v32);
  v49 = *(v35 + 8);
  v50 = v38;
  v100 = v35 + 8;
  v49(v47, v38);
  v51 = *(v99 + 8);
  v52 = v15;
  v53 = v15;
  v54 = v95;
  v99 += 8;
  v51(v53);
  sub_24DF8C95C(&v102, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(v105);
  sub_24E076A38();
  v56 = v55;
  v57 = *(v55 + 16);
  if (v57 >= *(v55 + 24) >> 1)
  {
    sub_24E076A38();
    v56 = v69;
  }

  *(v56 + 16) = v57 + 1;
  v58 = v97 + 32;
  v59 = *(v97 + 32);
  v72 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v71 = *(v97 + 72);
  v59(v56 + v72 + v71 * v57, v96, v94);
  sub_24DF8968C(v93 + 192, &v102);
  if (*(&v103 + 1))
  {
    v96 = v59;
    v97 = v58;
    sub_24DF88BF0(&v102, v105);
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v60 = v54;
    v84(v52, v85, v54);
    v61 = v91;
    v81(v91, v82, v50);
    v87 = v51;
    v62 = swift_allocObject();
    *(v62 + 16) = v75;
    sub_24E344618();
    v101 = v62;
    v63 = v92;
    v64 = v90;
    sub_24E3487E8();
    v65 = v86;
    sub_24E344678();
    v48(v63, v64);
    v49(v61, v50);
    v87(v52, v60);
    sub_24DF8C95C(&v102, &qword_27F1DEE48);
    v66 = *(v56 + 16);
    if (v66 >= *(v56 + 24) >> 1)
    {
      sub_24E076A38();
      v56 = v70;
    }

    v67 = v94;
    __swift_destroy_boxed_opaque_existential_1(v105);
    *(v56 + 16) = v66 + 1;
    v96(v56 + v72 + v66 * v71, v65, v67);
  }

  else
  {
    sub_24DF8C95C(&v102, &qword_27F1DEE30);
  }

  return sub_24E344668();
}

uint64_t sub_24E0A7190(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v4 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v23 = v22 - v21;
  swift_getObjectType();
  sub_24E0B7968();
  sub_24E3484F8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24DF8968C((v2 + 24), v39);
  if (v40)
  {
    sub_24DF8C95C(v39, &qword_27F1DEE30);
    v36 = v11;
    v32 = v6;
    sub_24E0A6924(a1, v23);
    sub_24E3440D8();
    OUTLINED_FUNCTION_7_10();
    v41.origin.x = v25;
    v41.origin.y = v27;
    v41.size.width = v29;
    v41.size.height = v31;
    CGRectGetMinY(v41);
    v37 = v4;
    v34 = v2[7];
    v33 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v34);
    sub_24E2548A0(v34, v33);
    sub_24E344198();
    (*(v38 + 8))(v16, v36);
    v42.origin.x = OUTLINED_FUNCTION_3_55();
    CGRectGetMidX(v42);
    sub_24E344608();
    (*(v32 + 8))(v10, v37);
    (*(v19 + 8))(v23, v17);
  }

  else
  {
    sub_24DF8C95C(v39, &qword_27F1DEE30);
    __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
    sub_24E3440E8();
    OUTLINED_FUNCTION_7_10();
    v43.origin.x = OUTLINED_FUNCTION_3_55();
    CGRectGetMidY(v43);
    v44.origin.x = OUTLINED_FUNCTION_2_52();
    CGRectGetMidX(v44);
    __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
    OUTLINED_FUNCTION_2_52();
    sub_24E348508();
    sub_24E344088();
  }

  OUTLINED_FUNCTION_2_52();
  return sub_24E343FD8();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24E0A75EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 49))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0A762C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

id sub_24E0A7690()
{
  if (qword_27F1DDD80 != -1)
  {
    swift_once();
  }

  v1 = qword_27F20B7A8;
  qword_27F20AD90 = qword_27F20B7A8;
  *algn_27F20AD98 = 0u;
  *algn_27F20ADA8 = 0u;
  *(&qword_27F20ADB0 + 1) = 0u;

  return v1;
}

double sub_24E0A7708()
{
  v0 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DFEC928();
  v1 = sub_24E347F08();

  qword_27F20ADC8 = v1;
  result = 0.0;
  unk_27F20ADD0 = 0u;
  unk_27F20ADE0 = 0u;
  qword_27F20ADF0 = 0;
  byte_27F20ADF8 = 2;
  return result;
}

uint64_t sub_24E0A7788(uint64_t a1)
{
  v2 = sub_24E347418();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;

  sub_24E3473E8();
  v10 = sub_24E347408();
  v12 = v11;
  (*(v4 + 8))(v8, v2);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_24E347C28();
  sub_24E0A79A8(v13, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E60);
  sub_24E3479D8();
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E347998();
  sub_24E1ACE80();
  return sub_24E347078();
}

uint64_t sub_24E0A79A8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_24E0A86A4(a1, sub_24E0A866C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_24E0A7A2C()
{
  v0 = sub_24E347058();
  __swift_allocate_value_buffer(v0, qword_27F20AE00);
  __swift_project_value_buffer(v0, qword_27F20AE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E98);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2EA0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E36A270;
  v5 = v4 + v3;
  v6 = v1[14];
  sub_24E3473F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E60);
  sub_24E3479D8();
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E347998();
  sub_24E1ACE80();
  *(v5 + v6) = v7;
  v8 = v1[14];
  sub_24E3473D8();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  sub_24E3479A8();
  sub_24E347998();
  sub_24E1ACE80();
  *(v5 + v2 + v8) = v9;
  sub_24E347418();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2EA8);
  sub_24E0A8DE4(&qword_27F1E2EB0, MEMORY[0x277D21E98]);
  sub_24E347C28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2EB8);
  sub_24E347C28();
  return sub_24E347048();
}

uint64_t sub_24E0A7CF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0EE8);
  v33 = a2;
  result = sub_24E348B48();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_24E1C30E0(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_24E024710(v22, v34);
    }

    else
    {
      sub_24DFB4104(v22, v34);
    }

    sub_24E348D18();
    sub_24E347DC8();
    result = sub_24E348D68();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_24E024710(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_24E0A7FAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E78);
  v43 = a2;
  v13 = sub_24E348B48();
  if (!v12[2])
  {
LABEL_26:

LABEL_27:
    *v3 = v13;
    return;
  }

  v46 = v11;
  v47 = v5;
  v42 = v2;
  v14 = 0;
  v15 = v12 + 8;
  OUTLINED_FUNCTION_2_53();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v21 = v13 + 8;
  v22 = v7;
  if ((v17 & v16) == 0)
  {
LABEL_4:
    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v14 >= v20)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_9;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_5_47();
    v3 = v42;
    if (v40 != v41)
    {
      *v15 = -1 << v39;
    }

    else
    {
      sub_24E1C30E0(0, (v39 + 63) >> 6, v15);
    }

    v12[2] = 0;
    goto LABEL_26;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_9:
    v26 = v23 | (v14 << 6);
    v45 = *(v22 + 72);
    v27 = OUTLINED_FUNCTION_4_48();
    v28(v27);
    v44 = *(v12[7] + 16 * v26);
    sub_24E0A8DE4(&qword_27F1DEFB0, MEMORY[0x277D21D58]);
    sub_24E347C48();
    OUTLINED_FUNCTION_7_33();
    v32 = (v31 << v29) & ~v21[v30];
    if (!v32)
    {
      break;
    }

    v33 = __clz(__rbit64(v32)) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    (*(v7 + 32))(v13[6] + v45 * v33, v46, v47);
    *(v13[7] + 16 * v33) = v44;
    ++v13[2];
    v22 = v7;
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_41();
  while (++v34 != v36 || (v35 & 1) == 0)
  {
    v37 = v34 == v36;
    if (v34 == v36)
    {
      v34 = 0;
    }

    v35 |= v37;
    v38 = v21[v34];
    if (v38 != -1)
    {
      v33 = __clz(__rbit64(~v38)) + (v34 << 6);
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_24E0A830C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E70);
  v39 = a2;
  v6 = sub_24E348B48();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v38 = v5;
  v7 = 0;
  v8 = v5 + 8;
  OUTLINED_FUNCTION_2_53();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_5_47();
    v3 = v2;
    if (v36 != v37)
    {
      *v8 = -1 << v35;
    }

    else
    {
      sub_24E1C30E0(0, (v35 + 63) >> 6, v8);
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = (v5[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5[7] + 8 * v18);
    if ((v39 & 1) == 0)
    {

      v23 = v22;
    }

    sub_24E348D18();
    sub_24E347DC8();
    sub_24E348D68();
    OUTLINED_FUNCTION_7_33();
    v27 = (v26 << v24) & ~v14[v25];
    if (!v27)
    {
      break;
    }

    v28 = __clz(__rbit64(v27)) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v34 = (v6[6] + 16 * v28);
    *v34 = v20;
    v34[1] = v21;
    *(v6[7] + 8 * v28) = v22;
    ++v6[2];
    v5 = v38;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_41();
  while (++v29 != v31 || (v30 & 1) == 0)
  {
    v32 = v29 == v31;
    if (v29 == v31)
    {
      v29 = 0;
    }

    v30 |= v32;
    v33 = v14[v29];
    if (v33 != -1)
    {
      v28 = __clz(__rbit64(~v33)) + (v29 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_24E0A8574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DFB4104(a4, a1);

  return a2;
}

uint64_t sub_24E0A85B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E3472B8();
  OUTLINED_FUNCTION_5_2();
  (*(v6 + 16))(a1, a2);
  return a3;
}

uint64_t sub_24E0A8624(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_24E0A866C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24E0A8574((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_24E0A86A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_24E0A88D8(a1, a2, a3, v31);
  v29[2] = v31[0];
  v29[3] = v31[1];
  v29[4] = v31[2];
  v30 = v32;

  while (1)
  {
    sub_24E0A8914(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_24DFFCE68();
    }

    v8 = v28;
    sub_24E024710(v29, v27);
    v9 = *a5;
    v11 = sub_24E26AE3C();
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1E90);
        sub_24E348AC8();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_24E0A7CF8(v14, a4 & 1);
      v16 = sub_24E26AE3C();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_24DFB4104(*(*a5 + 56) + 32 * v11, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);

        v19 = (*(v18 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_24E024710(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_24E024710(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24E348C98();
  __break(1u);
  return result;
}

uint64_t sub_24E0A88D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_24E0A8914@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_24DFB4104(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_24E024710(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_24DF8BFF4(v18, &qword_27F1E2E68);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24E0A8A64(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E80);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E88);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v39 = v5;
  v43 = &v38 - v23;
  v44 = v20;
  if (v22)
  {
    v42 = v15;
    v24 = v21;
LABEL_7:
    v41 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    (*(v8 + 16))(v12, *(v19 + 48) + *(v8 + 72) * v25, v6, v17);
    v26 = *(v2 + 48);
    v27 = *(v8 + 32);
    v40 = *(*(v19 + 56) + 16 * v25);
    v28 = v43;
    v27();
    v29 = 0;
    *(v28 + v26) = v40;
    v30 = v41;
    v15 = v42;
LABEL_8:
    v31 = 1;
    __swift_storeEnumTagSinglePayload(v28, v29, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v30;
    v32 = v1[5];
    sub_24E0A8D84(v28, v15, &qword_27F1E2E88);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v2);
    v34 = v45;
    if (EnumTagSinglePayload != 1)
    {
      v35 = v15;
      v36 = v39;
      sub_24E0A8D84(v35, v39, &qword_27F1E2E80);
      v32(v36);
      sub_24DF8BFF4(v36, &qword_27F1E2E80);
      v31 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E90);
    __swift_storeEnumTagSinglePayload(v34, v31, 1, v37);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v30 = 0;
        v29 = 1;
        v28 = v43;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v42 = v15;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24E0A8D84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_24E0A8DE4(unint64_t *a1, void (*a2)(uint64_t))
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

id PageGrid.__allocating_init(containerSize:traitCollection:)()
{
  v3 = [OUTLINED_FUNCTION_5_48() initWithSize:v0 traitCollection:{v2, v1}];

  return v3;
}

id PageGrid.__allocating_init(size:traitCollection:)()
{
  v3 = [OUTLINED_FUNCTION_5_48() initWithSize:v0 traitCollection:0 idealColumnSizeCategory:{v2, v1}];

  return v3;
}

unint64_t PageGrid.ColumnSizeCategory.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24E0A8F4C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PageGrid.ColumnSizeCategory.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id PageGrid.init(containerSize:traitCollection:)(void *a1)
{
  v3 = [v1 initWithSize:a1 traitCollection:?];

  return v3;
}

id PageGrid.init(size:traitCollection:)(void *a1)
{
  v3 = [v1 initWithSize:a1 traitCollection:0 idealColumnSizeCategory:?];

  return v3;
}

char *PageGrid.__allocating_init(size:traitCollection:idealColumnSizeCategory:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_2_54());
  v1 = OUTLINED_FUNCTION_4_49();
  return PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(v1);
}

char *PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_24E348458();

  if ((v3 & 1) == 0)
  {
    v4 = [a1 preferredContentSizeCategory];
    sub_24E348478();
  }

  v5 = objc_allocWithZone(type metadata accessor for PageGrid());
  v6 = OUTLINED_FUNCTION_0_81();
  v8 = PageGrid.init(width:columnSizeCategory:maxColumns:minColumns:rowHeight:)(v6, 0, 1, 0, 1, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v9 = v8;
  v10 = [a1 preferredContentSizeCategory];
  v11 = *&v9[OBJC_IVAR___GameLayerPageGrid_contentSizeCategory];
  *&v9[OBJC_IVAR___GameLayerPageGrid_contentSizeCategory] = v10;

  v12 = [a1 horizontalSizeClass];
  v13 = &v9[OBJC_IVAR___GameLayerPageGrid_horizontalSizeClass];
  *v13 = v12;
  v13[8] = 0;
  return v9;
}

id PageGrid.__allocating_init(width:columnSizeCategory:maxColumns:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_2_54());
  v1 = OUTLINED_FUNCTION_4_49();
  return PageGrid.init(width:columnSizeCategory:maxColumns:)(v1, v2);
}

id PageGrid.init(width:columnSizeCategory:maxColumns:)(int a1, id a2)
{
  if (a2)
  {
    v3 = [a2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(type metadata accessor for PageGrid());
  v5 = OUTLINED_FUNCTION_0_81();
  v7 = PageGrid.init(width:columnSizeCategory:maxColumns:minColumns:rowHeight:)(v5, v3, a2 == 0, 0, 1, v6);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id PageGrid.init(width:columnSizeCategory:maxColumns:minColumns:rowHeight:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_54();
  swift_getObjectType();
  *&v6[OBJC_IVAR___GameLayerPageGrid_contentSizeCategory] = 0;
  v14 = &v6[OBJC_IVAR___GameLayerPageGrid_horizontalSizeClass];
  *v14 = 0;
  v14[8] = 1;
  sub_24E0A9748();
  v19 = v16;
  if (v7 == 2)
  {
    v20 = v8 - (v15 + v15);
  }

  else
  {
    v20 = v17;
    if ((a5 & 1) == 0 && a4 >= 1)
    {
      v21 = (a4 + -1.0) * v16;
      if ((v8 - (v15 + v15) - v21) / a4 < v20)
      {
        v20 = (v8 - (v15 + v15) - v21) / a4;
      }
    }
  }

  if ((a6 & 0x100000000) != 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = *&a6;
  }

  v23 = &v6[OBJC_IVAR___GameLayerPageGrid_minimumInsets];
  *v23 = 0.0;
  v23[1] = v15;
  v23[2] = 0.0;
  v23[3] = v15;
  *&v6[OBJC_IVAR___GameLayerPageGrid_interColumnSpacing] = v16;
  *&v6[OBJC_IVAR___GameLayerPageGrid_columnWidth] = v20;
  *&v6[OBJC_IVAR___GameLayerPageGrid_rowHeight] = v22;
  v24 = sub_24E0A9970(v8, v15, v16, v20);
  if (v24 >= a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if (a3)
  {
    v25 = v24;
  }

  *&v6[OBJC_IVAR___GameLayerPageGrid_columnCount] = v25;
  v26 = (v19 + v8 - (v19 + v20) * v25) * 0.5;
  v27 = &v6[OBJC_IVAR___GameLayerPageGrid_centeringInsets];
  *v27 = 0.0;
  v27[1] = v26;
  v27[2] = 0.0;
  v27[3] = v26;
  *&v6[OBJC_IVAR___GameLayerPageGrid_representingWidth] = v8;
  *&v6[OBJC_IVAR___GameLayerPageGrid_columnSizeCategory] = v7;
  v29.receiver = v6;
  v29.super_class = type metadata accessor for PageGrid();
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_24E0A9970(double a1, double a2, double a3, double a4)
{
  v4 = floor((a1 - (a2 + a2) - a4) / (a3 + a4)) + 1.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

id PageGrid.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PageGrid.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageGrid();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E0A9A84()
{
  result = qword_27F1E2F10;
  if (!qword_27F1E2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2F10);
  }

  return result;
}

id OUTLINED_FUNCTION_5_48()
{

  return objc_allocWithZone(v0);
}

char *sub_24E0A9BBC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ActivityFeedLoadMoreView();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 8);
  v13 = *(MEMORY[0x277D768C8] + 16);
  v14 = *(MEMORY[0x277D768C8] + 24);
  v15 = v10;
  [v15 setLayoutMargins_];
  v16 = OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator;
  [*&v15[OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator] setHidesWhenStopped_];
  [v15 addSubview_];

  return v15;
}

void sub_24E0A9CE8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E0A9D8C()
{
  sub_24E2D4E50();
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator) intrinsicContentSize];
  OUTLINED_FUNCTION_0_82();

  return sub_24E348558();
}

id sub_24E0A9E24()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for ActivityFeedLoadMoreView();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI24ActivityFeedLoadMoreView_loadingIndicator];
  [v1 intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  v11 = v10;
  v29.origin.x = v12;
  v14 = v7 - v12 - v13;
  v29.size.height = v9 - v11 - v15;
  v29.origin.y = v11;
  v29.size.width = v14;
  v16 = floor(CGRectGetMidX(v29) - v3 * 0.5);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  [v0 layoutMargins];
  v22 = v21;
  v30.origin.x = v23;
  v25 = v18 - v23 - v24;
  v30.size.height = v20 - v22 - v26;
  v30.origin.y = v22;
  v30.size.width = v25;
  return [v1 setFrame_];
}

double sub_24E0A9FB4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  sub_24E2D4E50();
  [v0 intrinsicContentSize];
  OUTLINED_FUNCTION_0_82();
  sub_24E348558();
  v2 = v1;

  return v2;
}

id sub_24E0AA030()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  MoreAction = type metadata accessor for LoadMoreAction();
  MEMORY[0x28223BE20](MoreAction);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F20);
  sub_24E347128();

  v12 = v19;
  if (v19)
  {
    v13 = v18;
    sub_24E3471C8();
    *v11 = v13;
    v11[1] = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
    {
      sub_24E0AA4A8(v11);
      sub_24E0AA504(v8);
    }

    else
    {
      v20 = MoreAction;
      v21 = sub_24E0AA56C(&qword_27F1E2F28, type metadata accessor for LoadMoreAction);
      v15 = __swift_allocate_boxed_opaque_existential_1(&v18);
      sub_24E0AA5B4(v11, v15);
      (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v2);
      sub_24E3473B8();

      (*(v3 + 8))(v5, v2);
      sub_24E0AA4A8(v11);
      __swift_destroy_boxed_opaque_existential_1(&v18);
      (*(*(v14 - 8) + 8))(v8, v14);
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_24E0AA340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_24E0AA350(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

id sub_24E0AA3AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLoadMoreView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E0AA4A8(uint64_t a1)
{
  MoreAction = type metadata accessor for LoadMoreAction();
  (*(*(MoreAction - 8) + 8))(a1, MoreAction);
  return a1;
}

uint64_t sub_24E0AA504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E0AA56C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0AA5B4(uint64_t a1, uint64_t a2)
{
  MoreAction = type metadata accessor for LoadMoreAction();
  (*(*(MoreAction - 8) + 16))(a2, a1, MoreAction);
  return a2;
}

uint64_t sub_24E0AA634()
{
  v7 = sub_24E348358();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v3 = v2 - v1;
  v4 = sub_24E348328();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v5 = sub_24E346F08();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7_1();
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  sub_24E346EF8();
  sub_24E0AB264(&qword_27F1E2F50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F58);
  sub_24E0AB2AC(&unk_27F1E2F60, &qword_27F1E2F58);
  sub_24E3487E8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v7);
  result = sub_24E348388();
  qword_27F1E2F30 = result;
  return result;
}

void sub_24E0AA87C()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  qword_27F1E2F38 = v1;
}

void sub_24E0AA8E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      v9 = a1;
      v8(a1, 1, ObjectType, v6);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v12[4] = sub_24E0AB22C;
    v12[5] = a3;
    OUTLINED_FUNCTION_1_35();
    v12[1] = 1107296256;
    v12[2] = sub_24E216C88;
    v12[3] = &block_descriptor_34;
    v11 = _Block_copy(v12);

    [a4 monogramImageWithPhotoSize:1 handler:v11];
    _Block_release(v11);
  }
}

uint64_t sub_24E0AAA20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a1, 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24E0AAAAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27F1DD818 != -1)
  {
    swift_once();
  }

  v9 = qword_27F1E2F38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E369990;
  *(v10 + 32) = a2;
  sub_24DF88A8C(0, &qword_27F1E2F40);
  v11 = a2;
  v12 = sub_24E347EE8();

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v16[4] = sub_24E0AB24C;
  v16[5] = v13;
  OUTLINED_FUNCTION_1_35();
  v16[1] = 1107296256;
  v16[2] = sub_24E0AB0B8;
  v16[3] = &block_descriptor_6_1;
  v14 = _Block_copy(v16);
  swift_unknownObjectRetain();

  v15 = [v9 renderAvatarsForContacts:v12 handler:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0AAC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E346EE8();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24E346F08();
  v11 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v14 = sub_24E348368();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_24E0AB258;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_12_0;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_24E346EF8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E0AB264(&qword_27F1DFD00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24E0AB2AC(&qword_27F1DFD10, &unk_27F1E1C90);
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

void sub_24E0AAF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_24DFD8654(a1))
  {
    sub_24DFFA844(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25303F560](0, a1);
    }

    else
    {
      v5 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v7 = [v5 imageForSize:0 scale:300.0 style:{300.0, sub_24E0AB058()}];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  ObjectType = swift_getObjectType();
  (*(a3 + 32))(v7, 1, ObjectType, a3);
}

double sub_24E0AB058()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

uint64_t sub_24E0AB0B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F48);
  v2 = sub_24E347F08();

  v1(v2);
}

uint64_t sub_24E0AB150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0AB190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E0AB264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0AB2AC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_24E0AB310(double a1)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_0_16(v1 + 2);
  OUTLINED_FUNCTION_1_72();
  sub_24E344198();
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_18_2();
  v6(v7);
  OUTLINED_FUNCTION_0_16(v1 + 17);
  OUTLINED_FUNCTION_1_72();
  sub_24E344198();
  v8 = OUTLINED_FUNCTION_18_2();
  v6(v8);
  __swift_project_boxed_opaque_existential_1(v1 + 29, v1[32]);
  sub_24E3440D8();
  OUTLINED_FUNCTION_0_16(v1 + 7);
  OUTLINED_FUNCTION_1_72();
  sub_24E344198();
  v9 = OUTLINED_FUNCTION_18_2();
  v6(v9);
  OUTLINED_FUNCTION_0_16(v1 + 12);
  OUTLINED_FUNCTION_1_72();
  sub_24E344198();
  v10 = OUTLINED_FUNCTION_18_2();
  v6(v10);
  return a1;
}

uint64_t sub_24E0AB504(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v8 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  v19.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMinX(v19);
  v20.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMidY(v20);
  v21.origin.x = OUTLINED_FUNCTION_8_33();
  CGRectGetMaxX(v21);
  OUTLINED_FUNCTION_1_17(v4 + 2);
  OUTLINED_FUNCTION_13_10();
  v15 = *(v10 + 8);
  v15(v14, v8);
  v22.origin.x = OUTLINED_FUNCTION_8_33();
  CGRectGetWidth(v22);
  OUTLINED_FUNCTION_1_17(v4 + 2);
  OUTLINED_FUNCTION_13_10();
  v15(v14, v8);
  __swift_project_boxed_opaque_existential_1(v5 + 24, v5[27]);
  OUTLINED_FUNCTION_28();
  sub_24E348508();
  sub_24E344088();
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMaxX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMidY(v24);
  v25.origin.x = OUTLINED_FUNCTION_8_17();
  CGRectGetWidth(v25);
  OUTLINED_FUNCTION_1_17(v4 + 17);
  OUTLINED_FUNCTION_13_10();
  v15(v14, v8);
  __swift_project_boxed_opaque_existential_1(v5 + 34, v5[37]);
  sub_24E348508();
  sub_24E344088();
  __swift_project_boxed_opaque_existential_1(v5 + 29, v5[32]);
  sub_24E3440D8();
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  OUTLINED_FUNCTION_8_17();
  sub_24E3441B8();
  __swift_project_boxed_opaque_existential_1(v5 + 29, v5[32]);
  OUTLINED_FUNCTION_7_34();
  CGRectGetMinY(v26);
  OUTLINED_FUNCTION_7_34();
  sub_24E348508();
  sub_24E344088();
  OUTLINED_FUNCTION_7_34();
  return sub_24E343FD8();
}

double sub_24E0AB884(void *a1, double a2)
{
  v4 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_0_16(a1 + 7);
  OUTLINED_FUNCTION_1_72();
  sub_24E344198();
  v11 = *(v6 + 8);
  v11(v10, v4);
  v12 = a1[15];
  v13 = a1[16];
  __swift_project_boxed_opaque_existential_1(a1 + 12, v12);
  sub_24E2548A0(v12, v13);
  OUTLINED_FUNCTION_1_72();
  sub_24E344198();
  v11(v10, v4);
  return a2;
}

uint64_t sub_24E0ABA14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E0ABA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0ABAF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E0ABB34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E0ABBC4()
{
  result = qword_27F1E2F70;
  if (!qword_27F1E2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2F70);
  }

  return result;
}

uint64_t sub_24E0ABD10(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_24E26F7EC(a1, a3, a4);
  v7 = floor(v6);
  v9 = floor(v8);
  sub_24E2CEFC0(a2, v32);
  v10 = v32[0];
  v11 = v33;
  v12 = v34;
  v13 = v35;
  v31 = v4[2];

  v14 = sub_24E0AB058();
  v29 = v4[8];
  v30 = v4[9];
  HIBYTE(v28) = v10;
  v32[0] = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;

  sub_24E0ABDF8(v32);
  type metadata accessor for ArtworkLoaderConfig();
  v15 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_0_83(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31);
  return sub_24E120FD0(v23, v24, v25, v11, v12, v26, v7, v9, v14);
}

BOOL sub_24E0ABDF8(uint64_t a1)
{
  if (*(a1 + 17) != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainScreen];
  v2 = [v1 traitCollection];

  v3 = [v2 displayGamut];
  return v3 == 1;
}

uint64_t sub_24E0ABE8C(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = *a1;
  v7 = a1[1];
  sub_24E2CEFC0(a2, v31);
  v9 = v31[0];
  v10 = v32;
  v11 = v33;
  v12 = v34;
  v30 = *(v4 + 16);

  v13 = sub_24E0AB058();
  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v8 = *(v4 + 64);
  }

  v29 = v14;
  HIBYTE(v28) = v9;
  v31[0] = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;

  sub_24E0ABDF8(v31);
  type metadata accessor for ArtworkLoaderConfig();
  v15 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_0_83(v15, v16, v17, v18, v19, v20, v21, v22, v28, v8, v29, v30);
  return sub_24E120FD0(v23, v24, v25, v10, v11, v26, floor(a3), floor(a4), v13);
}

double sub_24E0ABFA8(void *a1)
{
  v1 = a1;
  v2 = sub_24E0ABFE4();

  return v2;
}

double sub_24E0ABFE4()
{
  [v0 frame];

  return CGRectGetMaxY(*&v1);
}

double sub_24E0AC028(void *a1)
{
  v1 = a1;
  v2 = sub_24E0AC064();

  return v2;
}

double sub_24E0AC064()
{
  [v0 frame];
  MaxY = CGRectGetMaxY(v4);
  [v0 lastBaselineFromBottom];
  return MaxY - v2;
}

double sub_24E0AC0AC(void *a1)
{
  v1 = a1;
  sub_24E0AC0E8();
  v3 = v2;

  return v3;
}

double sub_24E0AC0F8(void *a1)
{
  v1 = a1;
  sub_24E0AC134();
  v3 = v2;

  return v3;
}

double sub_24E0AC144(void *a1)
{
  v1 = a1;
  v2 = sub_24E0AC180();

  return v2;
}

double sub_24E0AC180()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 contentRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v19 = [v0 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = vabdd_f64(Height, MaxY);
  [v0 contentEdgeInsets];
  v25 = v24;
  [v0 titleEdgeInsets];
  return v23 + v22 + v25 + v26;
}

id sub_24E0AC29C@<X0>(char *a1@<X8>)
{
  v2 = sub_24E343FC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() labelColor];
  if (qword_27F1DDF38 != -1)
  {
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, &unk_27F20B9A8);
  v9 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v10 = *(*(v7 - 8) + 16);
  v10(&a1[*(v9 + 24)], v8, v7);
  v10(v5, v8, v7);
  (*(v3 + 104))(v5, *MEMORY[0x277D22618], v2);
  v20[3] = v2;
  v20[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  sub_24E344508();
  (*(v3 + 8))(v5, v2);
  if (qword_27F1DDC38 != -1)
  {
    swift_once();
  }

  v12 = sub_24E3444F8();
  v13 = __swift_project_value_buffer(v12, qword_27F20B4B8);
  (*(*(v12 - 8) + 16))(&a1[*(v9 + 32)], v13, v12);
  sub_24E098E2C();
  *a1 = v6;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  __swift_storeEnumTagSinglePayload(&a1[v14[5]], 1, 1, v9);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for PlayerCardTheme();
  v16 = *(__swift_project_value_buffer(v15, qword_27F20BF00) + *(v15 + 40));
  v17 = v14[8];
  a1[v14[6]] = 0;
  a1[v14[7]] = 0;
  a1[v17] = 0;
  a1[v14[9]] = 0;
  *&a1[v14[11]] = 0;
  *&a1[v14[13]] = v16;
  a1[v14[10]] = 1;
  a1[v14[12]] = 0;

  return v16;
}

id sub_24E0AC60C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id CloseButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_24E0AC6E8(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent_];

  *a4 = v7;
}

id CloseButton.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for CloseButton());
  v1 = CloseButton.init(with:)(0x6B72616D78, 0xE500000000000000);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t type metadata accessor for CloseButton()
{
  result = qword_280BE09F8;
  if (!qword_280BE09F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CloseButton.init(with:)(uint64_t a1, uint64_t a2)
{
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CloseButton();
  v5 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  OUTLINED_FUNCTION_18_5(v5, sel_setContentEdgeInsets_);
  OUTLINED_FUNCTION_18_5(v5, sel_setTitleEdgeInsets_);
  v6 = v5;
  OUTLINED_FUNCTION_18_5(v6, sel_setImageEdgeInsets_);
  v7 = sub_24E347CB8();
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();

  v10 = sub_24E347CF8();
  v12 = v11;

  sub_24E0ACCD8(v10, v12, v6);
  v13 = qword_27F1DD820;
  v14 = v6;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setTintColor_];
  if (qword_27F1DD828 != -1)
  {
    swift_once();
  }

  [v14 setBackgroundColor_];
  [v14 setClipsToBounds_];
  [v14 _setCornerRadius_];
  v15 = [v14 layer];

  v16 = *MEMORY[0x277CDA5E8];
  [v15 setCompositingFilter_];

  v17 = [objc_opt_self() configurationWithPointSize:8 weight:15.0];
  sub_24DFC2C38();
  v18 = v17;
  v19 = sub_24E0AC60C(a1, a2, v17);
  [v14 setImage:v19 forState:0];
  v20 = [v14 imageView];

  if (v20)
  {
    v21 = [v20 layer];

    v22 = v16;
    [v21 setCompositingFilter_];
  }

  return v14;
}

id CloseButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloseButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E0ACCD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setAccessibilityLabel_];
}

id sub_24E0ACDA8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI29GameCenterDataUpdatePresenter_onGameCenterDataUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3000);
  swift_allocObject();
  *&v0[v1] = sub_24E346F88();
  v13.receiver = v0;
  v13.super_class = type metadata accessor for GameCenterDataUpdatePresenter();
  v2 = objc_msgSendSuper2(&v13, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 daemonProxy];
  [v5 addDataUpdateDelegate_];

  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = sub_24E347CB8();
  [v7 addObserver:v4 selector:sel_refreshFriendContents_ name:v8 object:0];

  v9 = [v6 defaultCenter];
  v10 = v4;
  v11 = sub_24E347CB8();
  [v9 addObserver:v10 selector:sel_refreshFriendSuggestionContents_ name:v11 object:0];

  return v10;
}

id sub_24E0ACFA0()
{
  v1 = [objc_opt_self() daemonProxy];
  [v1 removeDataUpdateDelegate_];

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for GameCenterDataUpdatePresenter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24E0AD084()
{
  v0 = sub_24E347C28();
  sub_24E0AD224(2, v0);
}

uint64_t sub_24E0AD14C(void *a1)
{
  v1 = sub_24E1567DC(a1);
  if (!v1)
  {
    v1 = sub_24E347C28();
  }

  sub_24E0AD224(4, v1);
}

uint64_t sub_24E0AD224(int a1, unint64_t a2)
{
  v15 = a2;
  v3 = sub_24E347358();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  v19 = MEMORY[0x277D837D0];
  v16 = 0xD000000000000033;
  v17 = 0x800000024E3A50D0;
  sub_24E346FE8();
  sub_24DF8894C(&v16);
  HIDWORD(v14) = a1;
  v7 = GKRefreshDataTypeAsString();
  if (v7)
  {
    v8 = v7;
    v9 = sub_24E347CF8();
    v11 = v10;

    v12 = MEMORY[0x277D837D0];
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v18 = 0;
  }

  v16 = v9;
  v17 = v11;
  v19 = v12;
  sub_24E346FE8();
  sub_24DF8894C(&v16);
  (*(v4 + 104))(v6, *MEMORY[0x277D21DD8], v3);
  sub_24E0EF428();

  (*(v4 + 8))(v6, v3);
  LODWORD(v16) = HIDWORD(v14);
  v17 = v15;

  sub_24E346F78();
}

uint64_t ContinuePlayingData.GameData.init(adamID:bundleID:title:icon:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t ContinuePlayingData.init(id:games:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for ContinuePlayingData() + 24);
  v9 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v10;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;

  return sub_24DF8BEB4(a3, a4 + v8);
}

uint64_t type metadata accessor for ContinuePlayingData()
{
  result = qword_27F1E3018;
  if (!qword_27F1E3018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContinuePlayingData.games.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ContinuePlayingData.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContinuePlayingData() + 24);

  return sub_24E0AD708(v3, a1);
}

uint64_t sub_24E0AD708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContinuePlayingData.impressionMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ContinuePlayingData() + 24);

  return sub_24DF8BEB4(a1, v3);
}

double ContinuePlayingData.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_24E0AD818()
{
  result = qword_27F1E3010;
  if (!qword_27F1E3010)
  {
    type metadata accessor for ContinuePlayingData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3010);
  }

  return result;
}

void sub_24E0AD8B8()
{
  sub_24E0AD94C();
  if (v0 <= 0x3F)
  {
    sub_24DF9E0E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E0AD94C()
{
  if (!qword_27F1E3028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3030);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E3028);
    }
  }
}

uint64_t type metadata accessor for AppStoreLockupData()
{
  result = qword_27F1E3040;
  if (!qword_27F1E3040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0ADACC()
{
  sub_24DF88A8C(319, &qword_27F1E3560);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Size(319);
    if (v1 <= 0x3F)
    {
      sub_24E0007CC(319, &qword_27F1E3050, &qword_27F1E3058);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Context(319);
        if (v3 <= 0x3F)
        {
          sub_24E0007CC(319, &qword_27F1E3060, &qword_27F1E3068);
          if (v4 <= 0x3F)
          {
            sub_24E0ADC44();
            if (v5 <= 0x3F)
            {
              sub_24DF9E07C();
              if (v6 <= 0x3F)
              {
                sub_24DF9E0E0();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24E0ADC44()
{
  if (!qword_280BE0128)
  {
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0128);
    }
  }
}

uint64_t sub_24E0ADC94(uint64_t a1)
{
  result = sub_24E0ADCD8(&qword_27F1DEFD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E0ADCD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppStoreLockupData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24E0ADD20(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    *v18 = a6;
    *&v18[8] = a7;
    *&v18[16] = a8;
    *&v18[24] = a9;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = *a1;
    v15 = *(a1 + 8);
    MaxX = CGRectGetMaxX(*&a2);
    v19.origin.x = v14;
    v19.origin.y = v15;
    v19.size.width = v13;
    v19.size.height = v12;
    if (CGRectGetMinX(v19) < MaxX || (v20.origin.x = a2, v20.origin.y = a3, v20.size.width = a4, v20.size.height = a5, CGRectGetMinX(v20), v21.origin.x = OUTLINED_FUNCTION_0_84(), CGRectGetMaxX(v21) < v15))
    {
      CGRectGetMaxY(*v18);
      v22.origin.x = OUTLINED_FUNCTION_0_84();
      if (CGRectGetMinY(v22) < v15)
      {
        OUTLINED_FUNCTION_5_49();
        v23.origin.x = OUTLINED_FUNCTION_0_84();
        if (v15 <= CGRectGetMaxY(v23) + COERCE_DOUBLE(1))
        {
          OUTLINED_FUNCTION_5_49();
          v24.origin.x = v14;
          v24.origin.y = v15;
          v24.size.width = v13;
          v24.size.height = v12;
          CGRectGetMinY(v24);
        }
      }
    }
  }
}

id static SectionHeaderView.boundarySupplementaryItem.getter()
{
  sub_24DFCF654();
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = sub_24E347CF8();
  return sub_24E0ADF80(v3, v4, v5, 1);
}

id sub_24E0ADF80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24E347CB8();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

id sub_24E0AE008()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F20AE18);
  v1 = __swift_project_value_buffer(v0, qword_27F20AE18);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v2 = *MEMORY[0x277D74420];
    v5 = *MEMORY[0x277D76A28];
    *v1 = *MEMORY[0x277D76A28];
    v1[1] = v2;
    v3 = MEMORY[0x277D22688];
  }

  else
  {
    v5 = *MEMORY[0x277D76968];
    *v1 = *MEMORY[0x277D76968];
    *(v1 + 2) = 2;
    v3 = MEMORY[0x277D22680];
  }

  (*(*(v0 - 8) + 104))(v1, *v3, v0);

  return v5;
}

id SectionHeaderView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *SectionHeaderView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - v4;
  v6 = v1 + OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_avoidanceRegion;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v7 = OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_achievementsTheme;
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
    swift_once();
  }

  *(v1 + v7) = byte_27F20AFF8;
  v8 = OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel;
  v9 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v8) = OUTLINED_FUNCTION_4_50(v9, sel_initWithFrame_);
  v28[0] = v1;
  v28[1] = ObjectType;
  v10 = OUTLINED_FUNCTION_28();
  v13 = objc_msgSendSuper2(v11, v12, v10);
  v14 = OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel;
  v15 = qword_27F1DD830;
  v16 = *&v13[OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel];
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_24E344158();
  v18 = __swift_project_value_buffer(v17, qword_27F20AE18);
  (*(*(v17 - 8) + 16))(v5, v18, v17);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v17);
  sub_24E0AED24(v5);

  [*&v13[v14] setAdjustsFontForContentSizeCategory_];
  v19 = *&v13[v14];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 secondaryLabelColor];
  [v21 setTextColor_];

  [*&v13[v14] setNumberOfLines_];
  [*&v13[v14] setLineBreakMode_];
  [*&v13[v14] setAdjustsFontSizeToFitWidth_];
  [v13 addSubview_];
  v23 = *&v13[v14];
  if (v13[OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_achievementsTheme] == 1)
  {
    v24 = [v23 layer];
    [v24 setCompositingFilter_];

    v25 = [v13 layer];
    [v25 setAllowsGroupBlending_];
  }

  else
  {
    v26 = v23;
    v25 = [v20 systemBackgroundColor];
    [v26 setBackgroundColor_];
  }

  return v13;
}

void sub_24E0AE4C8(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_avoidanceRegion;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_achievementsTheme;
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
    swift_once();
  }

  *(v1 + v3) = byte_27F20AFF8;
  v4 = OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel;
  v5 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v4) = OUTLINED_FUNCTION_4_50(v5, sel_initWithFrame_);
  sub_24E348AE8();
  __break(1u);
}

CGSize __swiftcall SectionHeaderView.sizeThatFits(_:)(CGSize a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel) measurementsWithFitting:v1 in:{1.79769313e308, 1.79769313e308}];

  MEMORY[0x2821813F0](v2);
  result.height = v4;
  result.width = v3;
  return result;
}

Swift::Void __swiftcall SectionHeaderView.layoutSubviews()()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel];
  [v0 bounds];
  [v1 setFrame_];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 bounds];
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v15 = v14;
  v17 = v11 - v14 - v16;
  v19 = *&v0[OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_avoidanceRegion + 16];
  v23[0] = *&v0[OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_avoidanceRegion];
  v23[1] = v19;
  v24 = v0[OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_avoidanceRegion + 32];
  sub_24E0ADD20(v23, v3, v5, v7, v9, v15, v20, v17, v13 - v20 - v18);
  if (v21 > COERCE_DOUBLE(1))
  {
    [v1 frame];
    [v1 setFrame_];
  }
}

void SectionHeaderView.apply(contentsOf:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17SectionHeaderView_sectionHeaderLabel);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  sub_24E347128();

  sub_24DFA0B40(v2, v3, v1);
}

id SectionHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_4_50(id a1, SEL a2)
{

  return [a1 a2];
}

double OUTLINED_FUNCTION_5_49()
{
  v5 = v1;
  v6 = v4;
  v7 = v3;
  v8 = v2;

  return CGRectGetMaxY(*&v5);
}

id sub_24E0AEA08()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_24E347CF8();
  v5 = v4;
  if (v3 == sub_24E347CF8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_24E348C08();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  sub_24DF88A8C(0, &qword_27F1E0BA0);
  v10 = sub_24E3483D8();

  return v10;
}

void sub_24E0AEB14(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_systemDesign];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 fontDescriptor];
    v6 = [v5 fontDescriptorWithDesign_];

    if (v6)
    {
      [a1 pointSize];
      v8 = [objc_opt_self() fontWithDescriptor:v6 size:v7];

      goto LABEL_6;
    }
  }

  v8 = a1;
LABEL_6:
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v9, sel_setFont_, v8);
  if (v1[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] == 1)
  {
    [v1 set:a1 fontForShortcutBaselineCalculation:?];
  }
}

void sub_24E0AEC50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E0AEA08();
  v5 = [v4 preferredContentSizeCategory];

  v6 = *(v2 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory) = v5;

  sub_24DF88A8C(0, &qword_27F1DEE28);
  v7 = sub_24E0AEA08();
  v8 = MEMORY[0x25303F0C0](a1, v7);

  sub_24E0AEB14(v8);
}

uint64_t sub_24E0AED24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(v1 + v7, v6);
  swift_beginAccess();
  sub_24E0B0480(a1, v1 + v7);
  swift_endAccess();
  sub_24E0AF410(v6);
  sub_24DF8C95C(a1, &unk_27F1E5CE0);
  return sub_24DF8C95C(v6, &unk_27F1E5CE0);
}

void sub_24E0AEE20(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment) = a1;
  sub_24E0AFDD4(v2);
}

void sub_24E0AEE38()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment))
  {
    v1 = v0;
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment) == 1)
    {
      v2 = [v0 traitCollection];
      v3 = sub_24E3483B8();

      if (v3)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      v8.super_class = type metadata accessor for DynamicTypeLabel();
      objc_msgSendSuper2(&v8, sel_setTextAlignment_, v4, v1, v8.super_class, v9.receiver, v9.super_class);
    }

    else
    {
      v5 = [v0 traitCollection];
      v6 = sub_24E3483B8();

      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = 2;
      }

      v9.super_class = type metadata accessor for DynamicTypeLabel();
      objc_msgSendSuper2(&v9, sel_setTextAlignment_, v7, v8.receiver, v8.super_class, v1, v9.super_class);
    }
  }
}

char *sub_24E0AEF24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v33 = a6;
  v32 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory] = 0;
  *&v6[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_systemDesign] = 0;
  __swift_storeEnumTagSinglePayload(&v6[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCase], 1, 1, v15);
  v6[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] = 0;
  v6[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment] = 0;
  v21 = type metadata accessor for DynamicTypeLabel();
  v34.receiver = v6;
  v34.super_class = v21;
  v22 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = *&v22[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_systemDesign];
  *&v22[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_systemDesign] = a2;
  v24 = v22;
  v25 = a2;

  [v24 setNumberOfLines_];
  if (a5)
  {
    v26 = v24;
    if (a3)
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    [v26 setLineBreakMode_];
  }

  else
  {
    v28 = v24;
    [v28 setLineBreakMode_];
  }

  v24[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment] = v33;
  v29 = OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E0B0480(a1, &v24[v29]);
  swift_endAccess();
  sub_24E0B01B4(a1, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_24DF8C95C(v14, &unk_27F1E5CE0);
  }

  else
  {
    (*(v17 + 32))(v20, v14, v15);
    sub_24E0AEC50(v20);
    (*(v17 + 8))(v20, v15);
  }

  sub_24E0AEE38();

  sub_24DF8C95C(a1, &unk_27F1E5CE0);
  return v24;
}

uint64_t sub_24E0AF208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  ObjectType = swift_getObjectType();
  v5 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  v6 = (*(ObjectType + 120))(v3, 0, 2, 0, 1, 0);
  swift_deallocPartialClassInstance();
  return v6;
}

void sub_24E0AF344()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_systemDesign) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCase;
  v2 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E0AF410(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30B0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_24E344158();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(v1 + v20, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_24DF8C95C(v12, &unk_27F1E5CE0);
  }

  v26 = v1;
  v22 = *(v14 + 32);
  v22(v19, v12, v13);
  (*(v14 + 16))(v10, v19, v13);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  v23 = *(v2 + 48);
  sub_24E0B01B4(v10, v4);
  sub_24E0B01B4(v28, &v4[v23]);
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {
    sub_24DF8C95C(v10, &unk_27F1E5CE0);
    if (__swift_getEnumTagSinglePayload(&v4[v23], 1, v13) == 1)
    {
      sub_24DF8C95C(v4, &unk_27F1E5CE0);
      return (*(v14 + 8))(v19, v13);
    }

    goto LABEL_8;
  }

  v24 = v27;
  sub_24E0B01B4(v4, v27);
  if (__swift_getEnumTagSinglePayload(&v4[v23], 1, v13) == 1)
  {
    sub_24DF8C95C(v10, &unk_27F1E5CE0);
    (*(v14 + 8))(v24, v13);
LABEL_8:
    sub_24DF8C95C(v4, &qword_27F1E30B0);
LABEL_9:
    sub_24E0AEC50(v19);
    return (*(v14 + 8))(v19, v13);
  }

  v22(v17, &v4[v23], v13);
  sub_24E0B04F0();
  LODWORD(v28) = sub_24E347CA8();
  v25 = *(v14 + 8);
  v25(v17, v13);
  sub_24DF8C95C(v10, &unk_27F1E5CE0);
  v25(v24, v13);
  sub_24DF8C95C(v4, &unk_27F1E5CE0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v25)(v19, v13);
}

uint64_t type metadata accessor for DynamicTypeLabel()
{
  result = qword_27F1E3098;
  if (!qword_27F1E3098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0AF968(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for DynamicTypeLabel();
  v10.receiver = v1;
  v10.super_class = v7;
  objc_msgSendSuper2(&v10, sel_setFont_, a1);
  if (v1[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] == 1)
  {
    [v1 set:a1 fontForShortcutBaselineCalculation:?];
  }

  v8 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  sub_24E0AED24(v6);

  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory];
  *&v1[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory] = 0;
}

void sub_24E0AFA60()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement) == 1)
  {
    v1 = [v0 font];
    [v0 set:v1 fontForShortcutBaselineCalculation:?];
  }

  else
  {

    [v0 set:0 fontForShortcutBaselineCalculation:?];
  }
}

id sub_24E0AFB34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v2, sel_textAlignment);
}

id sub_24E0AFBC0(uint64_t a1)
{
  sub_24E0AEE20(0);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v4, sel_setTextAlignment_, a1);
}

id sub_24E0AFC78(SEL *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DynamicTypeLabel();
  v3 = objc_msgSendSuper2(&v5, *a1);

  return v3;
}

void sub_24E0AFD58(void *a1)
{
  v3 = [v1 lineBreakMode];
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicTypeLabel();
  objc_msgSendSuper2(&v4, sel_setAttributedText_, a1);
  [v1 setLineBreakMode_];
}

void sub_24E0AFDD4(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_directionalTextAlignment) != a1)
  {
    sub_24E0AEE38();
  }
}

uint64_t sub_24E0AFDF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DynamicTypeLabel();
  v27.receiver = v1;
  v27.super_class = v13;
  objc_msgSendSuper2(&v27, sel_traitCollectionDidChange_, a1);
  v14 = [v1 traitCollection];
  v15 = [v14 layoutDirection];

  if (!a1 || v15 != [a1 layoutDirection])
  {
    sub_24E0AEE38();
  }

  v16 = OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E0B01B4(&v1[v16], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_24DF8C95C(v6, &unk_27F1E5CE0);
  }

  (*(v9 + 32))(v12, v6, v7);
  v18 = [v1 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  if (*&v1[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_fontUseCaseContentSizeCategory])
  {
    v20 = sub_24E347CF8();
    v22 = v21;
    if (v20 == sub_24E347CF8() && v22 == v23)
    {

      return (*(v9 + 8))(v12, v7);
    }

    v25 = sub_24E348C08();

    if (v25)
    {
      return (*(v9 + 8))(v12, v7);
    }
  }

  else
  {
  }

  sub_24E0AEC50(v12);
  return (*(v9 + 8))(v12, v7);
}

id DynamicTypeLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E0B01B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24E0B022C()
{
  sub_24E0B02F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E0B02F4()
{
  if (!qword_280BE0678)
  {
    sub_24E344158();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0678);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DynamicTypeLabel.DirectionalTextAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E0B042C()
{
  result = qword_27F1E30A8;
  if (!qword_27F1E30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E30A8);
  }

  return result;
}

uint64_t sub_24E0B0480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E0B04F0()
{
  result = qword_27F1E30B8;
  if (!qword_27F1E30B8)
  {
    sub_24E344158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E30B8);
  }

  return result;
}

uint64_t sub_24E0B0548()
{
  type metadata accessor for TitleHeaderView(0);
  v0 = *MEMORY[0x277D767D8];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_24E347CF8();
    sub_24E347CB8();
    OUTLINED_FUNCTION_1_74();
  }

  OUTLINED_FUNCTION_0_85();

  type metadata accessor for SectionFooterView();
  v4 = *MEMORY[0x277D767D0];
  v5 = swift_getObjCClassFromMetadata();
  v6 = v4;
  v7 = NSStringFromClass(v5);
  if (!v7)
  {
    sub_24E347CF8();
    sub_24E347CB8();
    OUTLINED_FUNCTION_1_74();
  }

  OUTLINED_FUNCTION_0_85();

  type metadata accessor for SectionHeaderPlaceholderView();
  OUTLINED_FUNCTION_5_50();
  sub_24E347CB8();
  OUTLINED_FUNCTION_4_51();
  v8 = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(v8);
  if (!v9)
  {
    sub_24E347CF8();
    sub_24E347CB8();
    OUTLINED_FUNCTION_1_74();
  }

  OUTLINED_FUNCTION_0_85();

  type metadata accessor for SectionFooterPlaceholderView();
  OUTLINED_FUNCTION_5_50();
  sub_24E347CB8();
  OUTLINED_FUNCTION_4_51();
  v10 = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(v10);
  if (!v11)
  {
    sub_24E347CF8();
    sub_24E347CB8();
    OUTLINED_FUNCTION_1_74();
  }

  OUTLINED_FUNCTION_0_85();

  type metadata accessor for SeparatorView();
  OUTLINED_FUNCTION_5_50();
  sub_24E347CB8();
  OUTLINED_FUNCTION_4_51();
  v12 = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(v12);
  if (!v13)
  {
    sub_24E347CF8();
    sub_24E347CB8();
    OUTLINED_FUNCTION_1_74();
  }

  OUTLINED_FUNCTION_0_85();

  type metadata accessor for LoadingIndicatorAccessoryView();
  OUTLINED_FUNCTION_5_50();
  sub_24E347CB8();
  OUTLINED_FUNCTION_4_51();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    sub_24E347CF8();
    sub_24E347CB8();
    OUTLINED_FUNCTION_1_74();
  }

  OUTLINED_FUNCTION_0_85();

  OUTLINED_FUNCTION_21_2();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_21_2();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;

  sub_24E344CC8();
}

unint64_t sub_24E0B0834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  v10 = sub_24E0B08F8(a2, a3, a4, a1, Strong, v9);

  return v10;
}

unint64_t sub_24E0B08F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v91 = a6;
  v92 = a4;
  v93 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v88 - v12;
  MEMORY[0x28223BE20](v14);
  v90 = &v88 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30C0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v88 - v29;
  v89 = v13;
  if (a5)
  {
    sub_24E344CF8();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
    v32 = v30;
    v33 = 0;
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
    v32 = v30;
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
  sub_24DF9DEAC(v30, v27, &qword_27F1E30C0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v34) == 1)
  {
    sub_24DF8C95C(v27, &qword_27F1E30C0);
  }

  else
  {
    v35 = sub_24E344B88();
    (*(*(v34 - 8) + 8))(v27, v34);
    if (v35)
    {
      v36 = *(v35 + 16);
      v37 = sub_24E3434D8();
      if ((v37 & 0x8000000000000000) == 0 && v37 < v36)
      {

        result = sub_24E3434D8();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v39 = result;
          if (result < *(v35 + 16))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
            (*(*(v40 - 8) + 16))(v24, v35 + ((*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80)) + *(*(v40 - 8) + 72) * v39, v40);

            v41 = v24;
            v42 = 0;
            v43 = v40;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_86;
      }
    }
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v41 = v24;
  v42 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v43);
  type metadata accessor for SectionBackgroundView();
  if (sub_24DFEA80C() == a1 && v44 == a2)
  {

    goto LABEL_20;
  }

  v46 = sub_24E348C08();

  if (v46)
  {
LABEL_20:
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v47) == 1)
    {
      goto LABEL_21;
    }

    sub_24DF9DEAC(v24, v21, &unk_27F1E1CB0);
    result = __swift_getEnumTagSinglePayload(v21, 1, v47);
    if (result != 1)
    {

      v57 = sub_24E0B155C(v21, v93, v92, type metadata accessor for SectionBackgroundView);
      sub_24DF8C95C(v30, &qword_27F1E30C0);
      sub_24DF8C95C(v24, &unk_27F1E1CB0);
      (*(*(v47 - 8) + 8))(v21, v47);
      return v57;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_21:
  v48 = *MEMORY[0x277D767D8];
  if (sub_24E347CF8() == a1 && v49 == a2)
  {

    v52 = v91;
    goto LABEL_35;
  }

  v51 = sub_24E348C08();

  v52 = v91;
  if (v51)
  {
LABEL_35:
    if (!v52)
    {
      goto LABEL_55;
    }

    sub_24DF9DEAC(v24, v18, &unk_27F1E1CB0);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    result = __swift_getEnumTagSinglePayload(v18, 1, v58);
    if (result != 1)
    {

      type metadata accessor for TitleHeaderView(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v60 = v48;
      v61 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v61)
      {
        sub_24E347CF8();
        v61 = sub_24E347CB8();
      }

      v62 = sub_24E343488();
      v63 = [v92 dequeueReusableSupplementaryViewOfKind:v60 withReuseIdentifier:v61 forIndexPath:v62];

      v57 = swift_dynamicCastClassUnconditional();
      sub_24E280768(v18, v52);
      [*(v57 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel) setNumberOfLines_];

      goto LABEL_40;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v53 = *MEMORY[0x277D767D0];
  if (sub_24E347CF8() == a1 && v54 == a2)
  {

LABEL_43:
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v67) == 1)
    {
      goto LABEL_44;
    }

    if (v52)
    {
      v71 = v90;
      sub_24DF9DEAC(v24, v90, &unk_27F1E1CB0);
      result = __swift_getEnumTagSinglePayload(v71, 1, v67);
      if (result != 1)
      {

        type metadata accessor for SectionFooterView();
        v72 = swift_getObjCClassFromMetadata();
        v73 = v53;
        v74 = NSStringFromClass(v72);
        if (!v74)
        {
          sub_24E347CF8();
          v74 = sub_24E347CB8();
        }

        v75 = sub_24E343488();
        v76 = [v92 dequeueReusableSupplementaryViewOfKind:v73 withReuseIdentifier:v74 forIndexPath:v75];

        v57 = swift_dynamicCastClassUnconditional();
        sub_24E2B1C50(v71, v52);

        sub_24DF8C95C(v30, &qword_27F1E30C0);
        sub_24DF8C95C(v24, &unk_27F1E1CB0);
        v64 = *(*(v67 - 8) + 8);
        v65 = v71;
        goto LABEL_68;
      }

      goto LABEL_88;
    }

LABEL_55:

    v77 = [objc_allocWithZone(MEMORY[0x277D75298]) init];
LABEL_56:
    v57 = v77;
    sub_24DF8C95C(v30, &qword_27F1E30C0);
    sub_24DF8C95C(v24, &unk_27F1E1CB0);
    return v57;
  }

  v56 = sub_24E348C08();

  if (v56)
  {
    goto LABEL_43;
  }

LABEL_44:
  type metadata accessor for SectionHeaderPlaceholderView();
  if (sub_24DFEA80C() == a1 && v68 == a2)
  {

LABEL_59:
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v67) == 1)
    {
      goto LABEL_60;
    }

    v81 = v89;
    sub_24DF9DEAC(v24, v89, &unk_27F1E1CB0);
    result = __swift_getEnumTagSinglePayload(v81, 1, v67);
    if (result != 1)
    {

      v57 = sub_24E0B155C(v81, v93, v92, type metadata accessor for SectionHeaderPlaceholderView);
      sub_24DF8C95C(v30, &qword_27F1E30C0);
      sub_24DF8C95C(v24, &unk_27F1E1CB0);
      v64 = *(*(v67 - 8) + 8);
      v65 = v81;
LABEL_68:
      v66 = v67;
      goto LABEL_41;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v70 = sub_24E348C08();

  if (v70)
  {
    goto LABEL_59;
  }

LABEL_60:
  type metadata accessor for SectionFooterPlaceholderView();
  if (sub_24DFEA80C() == a1 && v78 == a2)
  {
  }

  else
  {
    v80 = sub_24E348C08();

    if ((v80 & 1) == 0)
    {
LABEL_71:

      type metadata accessor for LoadingIndicatorAccessoryView();
      if (sub_24DFEA80C() == a1 && v82 == a2)
      {
      }

      else
      {
        v84 = sub_24E348C08();

        if ((v84 & 1) == 0)
        {
          v96 = a1;
          v97 = a2;
          type metadata accessor for SeparatorView();
          v94 = sub_24DFEA80C();
          v95 = v85;
          sub_24DF90C4C();
          v86 = sub_24E348788();

          if ((v86 & 1) == 0)
          {
            sub_24DF8C95C(v30, &qword_27F1E30C0);
            sub_24DF8C95C(v24, &unk_27F1E1CB0);
            return 0;
          }

          v87 = type metadata accessor for SeparatorView;
          goto LABEL_82;
        }
      }

      v87 = type metadata accessor for LoadingIndicatorAccessoryView;
LABEL_82:
      v77 = sub_24E0B1620(v93, v92, v87);
      goto LABEL_56;
    }
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v58) == 1)
  {
    goto LABEL_71;
  }

  v18 = v88;
  sub_24DF9DEAC(v24, v88, &unk_27F1E1CB0);
  result = __swift_getEnumTagSinglePayload(v18, 1, v58);
  if (result != 1)
  {

    v57 = sub_24E0B155C(v18, v93, v92, type metadata accessor for SectionFooterPlaceholderView);
LABEL_40:
    sub_24DF8C95C(v30, &qword_27F1E30C0);
    sub_24DF8C95C(v24, &unk_27F1E1CB0);
    v64 = *(*(v58 - 8) + 8);
    v65 = v18;
    v66 = v58;
LABEL_41:
    v64(v65, v66);
    return v57;
  }

LABEL_90:
  __break(1u);
  return result;
}

id sub_24E0B155C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  sub_24DFEA80C();
  v4 = sub_24E347CB8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    sub_24E347CF8();
    v6 = sub_24E347CB8();
  }

  v7 = sub_24E343488();
  v8 = OUTLINED_FUNCTION_3_57(v7, sel_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

  return v8;
}

id sub_24E0B1620(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_24DFEA80C();
  v3 = sub_24E347CB8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_24E347CF8();
    v5 = sub_24E347CB8();
  }

  v6 = sub_24E343488();
  v7 = OUTLINED_FUNCTION_3_57(v6, sel_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

  return v7;
}

id OUTLINED_FUNCTION_0_85()
{

  return [v1 (v4 + 2436)];
}

uint64_t OUTLINED_FUNCTION_1_74()
{
}

id OUTLINED_FUNCTION_3_57(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_4_51()
{
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return sub_24DFEA80C();
}

uint64_t AppStoreContentPresenterSection.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

unint64_t sub_24E0B1808()
{
  result = qword_27F1E30C8;
  if (!qword_27F1E30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E30C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppStoreContentPresenterSection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E0B19C0()
{
  v1 = 0;
  switch(*v0)
  {
    case 4:
      return v1;
    default:
      v2 = sub_24E347CB8();
      v3 = GKGameCenterUIFrameworkBundle();
      v4 = GKGetLocalizedStringFromTableInBundle();

      v1 = sub_24E347CF8();
      break;
  }

  return v1;
}

id sub_24E0B1AB8(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SectionHeaderPlaceholderView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24E0B1B40(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SectionHeaderPlaceholderView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E0B1BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderPlaceholderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E0B1C24(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E0B43F0();
  }

  return result;
}

uint64_t GameCenterSettingsContainerView.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for GameCenterContainerViewModel(0);
  OUTLINED_FUNCTION_1_30();
  sub_24E0B48F4();
  sub_24E346B78();
  *a1 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30D0);
  sub_24E346B78();
  a1[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30D8);
  sub_24E346B78();
  a1[2] = v4;
  v2 = *(type metadata accessor for GameCenterSettingsContainerView(0) + 28);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24E0B1DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E345B68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GameCenterSettingsContainerView(0);
  sub_24E0B5574(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24E346158();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24E348268();
    v13 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t GameCenterSettingsContainerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE200);
  OUTLINED_FUNCTION_0_14();
  v55 = v3;
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30E0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E30E8);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  sub_24E0B262C(v1, &v50 - v11);
  type metadata accessor for ProfileEditorData();
  OUTLINED_FUNCTION_1_30();
  sub_24E1AF268();
  sub_24E0B4988();
  sub_24E0B4D14(&qword_27F1DF920, type metadata accessor for ProfileEditorData);
  sub_24E3465A8();

  sub_24DF8BFF4(v12, &qword_27F1E30E8);
  KeyPath = swift_getKeyPath();
  v14 = &v9[*(v6 + 36)];
  *v14 = KeyPath;
  v14[8] = 0;
  sub_24E343AA8();
  v59 = sub_24E343648();
  v60 = v15;
  sub_24DF90C4C();
  v16 = sub_24E3464E8();
  v18 = v17;
  v20 = v19;
  sub_24E0B4DB0();
  v54 = v5;
  sub_24E3466A8();
  sub_24DFA92EC(v16, v18, v20 & 1);

  sub_24DF8BFF4(v9, &qword_27F1E30E0);
  v21 = type metadata accessor for GameCenterSettingsContainerView(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_24E0B4EF4(v53, &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E348068();
  v24 = sub_24E348058();
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_24E0B4F58(&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v28 = sub_24E348098();
  OUTLINED_FUNCTION_0_14();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v50 - v34;
  sub_24E348078();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v52 = sub_24E345608();
    v53 = &v50;
    OUTLINED_FUNCTION_0_14();
    v51 = v36;
    MEMORY[0x28223BE20](v37);
    v39 = &v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_24E348998();

    v59 = 0xD00000000000003FLL;
    v60 = 0x800000024E3A5390;
    v58 = 57;
    v40 = sub_24E348BA8();
    MEMORY[0x25303E950](v40);

    v42 = MEMORY[0x28223BE20](v41);
    (*(v30 + 16))(&v50 - v34, v35, v28, v42);
    sub_24E3455F8();
    (*(v30 + 8))(v35, v28);
    v43 = v57;
    (*(v55 + 32))(v57, v54, v56);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE208);
    return (*(v51 + 32))(v43 + *(v44 + 36), v39, v52);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE210);
    v47 = v57;
    v48 = (v57 + *(v46 + 36));
    v49 = sub_24E345528();
    (*(v30 + 32))(&v48[*(v49 + 20)], &v50 - v34, v28);
    *v48 = &unk_24E374F68;
    *(v48 + 1) = v26;
    return (*(v55 + 32))(v47, v54, v56);
  }
}

uint64_t sub_24E0B262C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for GameCenterSettingsContainerView(0);
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = v4;
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3120);
  MEMORY[0x28223BE20](v50);
  v48 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3118);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v43 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3190);
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = &v43 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3110);
  MEMORY[0x28223BE20](v62);
  v59 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3198);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = *a1;
  v18 = a1[1];
  v55 = a1;
  v19 = v17;
  v63 = v17;
  v64 = v18;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
  sub_24E346B88();
  v21 = sub_24E0B2DCC();

  if (v21 > 1)
  {
    v45 = v12;
    v46 = v10;
    v47 = v13;
    v23 = v19;
    v63 = v19;
    v64 = v20;
    v24 = v20;
    sub_24E346B88();
    v25 = sub_24E0B2E4C();

    if (v25)
    {
      v26 = v48;
      sub_24E02F7A4(v48);
      type metadata accessor for GameCenterSettings();
      sub_24E0B4D14(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
      v27 = sub_24E344DC8();
      v28 = v50;
      v29 = (v26 + *(v50 + 36));
      *v29 = v27;
      v29[1] = v25;
      v63 = v23;
      v64 = v24;

      sub_24E346B88();
      v44 = type metadata accessor for GameCenterContainerViewModel(0);
      v30 = sub_24E0B4C2C();
      v31 = sub_24E0B4D14(&qword_27F1E1270, type metadata accessor for GameCenterContainerViewModel);
      sub_24E3465A8();

      sub_24E0B54B0(v26);
      v63 = v23;
      v64 = v24;
      sub_24E346B88();
      v32 = sub_24E0B2DCC();

      LOBYTE(v67) = v32;
      v33 = v53;
      sub_24E0B4EF4(v55, v53);
      v34 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v35 = swift_allocObject();
      sub_24E0B4F58(v33, v35 + v34);
      v63 = v28;
      v64 = v44;
      v65 = v30;
      v66 = v31;
      swift_getOpaqueTypeConformance2();
      sub_24E0B4D5C();
      v36 = v49;
      v37 = v57;
      v38 = v60;
      sub_24E3468D8();

      (*(v56 + 8))(v38, v37);
      v39 = v58;
      v40 = v59;
      (*(v54 + 32))(v59, v36, v58);
      v41 = 0;
    }

    else
    {
      v41 = 1;
      v39 = v58;
      v40 = v59;
    }

    v42 = v45;
    __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
    sub_24DE5F558(v40, v42);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230);
    sub_24E0B4AC4();
    sub_24E345E38();
    return sub_24DF8BFF4(v40, &qword_27F1E3110);
  }

  else
  {
    sub_24E345348();
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230);
    sub_24E0B4AC4();
    sub_24E345E38();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_24E0B2DCC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_86();
  sub_24E0B4D14(v1, v2);
  OUTLINED_FUNCTION_6_42();

  return *(v0 + 16);
}

uint64_t sub_24E0B2E4C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_86();
  sub_24E0B4D14(v0, v1);
  OUTLINED_FUNCTION_6_42();
}

uint64_t sub_24E0B2ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
  sub_24E346B88();
  v0 = sub_24E0B2DCC();

  switch(v0)
  {
    case 2:
      result = sub_24E0B2F78();
      break;
    case 3:
      result = sub_24E0B30D8();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E0B2F78()
{
  v1 = sub_24E346158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v9[2] = *v0;
  v9[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
  sub_24E346B88();
  v6 = sub_24E0B2DCC();

  if (v6 == 2)
  {
    v8 = sub_24E0B1DF0(v4);
    MEMORY[0x28223BE20](v8);
    v9[-2] = v0;
    sub_24E346148();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_24E0B30D8()
{
  v1 = sub_24E346158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v9[2] = *v0;
  v9[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
  sub_24E346B88();
  v6 = sub_24E0B2DCC();

  if (v6 == 3)
  {
    v8 = sub_24E0B1DF0(v4);
    MEMORY[0x28223BE20](v8);
    v9[-2] = v0;
    sub_24E346148();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_24E0B3238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_24E348068();
  v3[6] = sub_24E348058();
  v5 = sub_24E347FF8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24E0B32D0, v5, v4);
}

uint64_t sub_24E0B32D0()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
  sub_24E346B88();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24E0B3390;

  return sub_24E0B3528();
}

uint64_t sub_24E0B3390()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24E0B34D0, v5, v4);
}

uint64_t sub_24E0B34D0()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0B3528()
{
  OUTLINED_FUNCTION_9_7();
  v1[2] = v0;
  sub_24E348068();
  v1[3] = sub_24E348058();
  v3 = sub_24E347FF8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24E0B35BC, v3, v2);
}

uint64_t sub_24E0B35BC()
{
  OUTLINED_FUNCTION_9_7();
  if (sub_24E0B2E4C())
  {

    OUTLINED_FUNCTION_12_5();

    return v1();
  }

  else
  {
    sub_24E0B1C24(1);
    type metadata accessor for GameCenterSettings();
    OUTLINED_FUNCTION_1_30();
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_24E0B36B0;

    return GameCenterSettings.init()();
  }
}

uint64_t sub_24E0B36B0()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v7 + 56) = v6;

  v8 = *(v1 + 40);
  v9 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24E0B37CC, v9, v8);
}

uint64_t sub_24E0B37CC()
{

  OUTLINED_FUNCTION_5_51();
  sub_24E0B4628();
  type metadata accessor for SettingsContactsIntegrationInitiator();
  OUTLINED_FUNCTION_1_30();
  sub_24DFFD04C();
  OUTLINED_FUNCTION_4_52();
  sub_24E0B4628();
  v0 = sub_24DFECF6C();
  v1 = sub_24E245A0C();

  if ((v1 & 1) != 0 && (v2 = sub_24DFECF6C(), v3 = [v2 shouldShowAnyOnboardingScreen], v2, v3))
  {
    sub_24E0B46D0();
  }

  else
  {
    sub_24E0B1C24(4);
  }

  OUTLINED_FUNCTION_12_5();

  return v4();
}

void sub_24E0B38E0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterSettingsContainerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_24E343F88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = objc_allocWithZone(MEMORY[0x277CECAC8]);
    v16 = a1;
    v17 = [v15 init];
    v18 = *(a2 + 8);
    *&aBlock = *a2;
    *(&aBlock + 1) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
    sub_24E346B88();
    v19 = sub_24E0B2E4C();

    if (v19)
    {
      sub_24E0B4EF4(a2, v10);
      v20 = *(v5 + 80);
      v37 = v16;
      v21 = (v20 + 16) & ~v20;
      v22 = swift_allocObject();
      sub_24E0B4F58(v10, v22 + v21);
      sub_24E0B4EF4(a2, v7);
      v23 = swift_allocObject();
      sub_24E0B4F58(v7, v23 + v21);
      v24 = objc_allocWithZone(type metadata accessor for SignInControllerDelegate());

      v26 = sub_24E14F37C(v25, sub_24E0B5714, v22, sub_24E0B5774, v23);
      aBlock = *(a2 + 16);
      v43 = v26;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E31B0);
      sub_24E346B98();
      [v17 setDelegate_];
      [v17 setServiceType_];
      [v17 _setShouldForceOperation_];
      sub_24E0B4EF4(a2, v10);
      v28 = swift_allocObject();
      v29 = v37;
      v28[2] = v37;
      v28[3] = v17;
      v28[4] = v19;
      sub_24E0B4F58(v10, v28 + ((v20 + 40) & ~v20));
      v41 = sub_24E0B577C;
      v42 = v28;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v39 = sub_24E0D7B80;
      v40 = &block_descriptor_35;
      v30 = _Block_copy(&aBlock);
      v31 = v29;

      v32 = v17;

      [v32 prepareInViewController:v31 completion:v30];
      _Block_release(v30);
    }

    else
    {
    }
  }

  else
  {
    sub_24E343C98();
    v33 = sub_24E343F78();
    v34 = sub_24E348258();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24DE53000, v33, v34, "Could not find hosting controller to present sign in sheet", v35, 2u);
      MEMORY[0x253040EE0](v35, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_24E0B3D7C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
  sub_24E346B88();
  sub_24E0B1C24(a2);
}

id sub_24E0B3DE0(char a1, int a2, id a3, uint64_t a4)
{
  if (a1)
  {

    return [a3 presentViewController:a4 animated:1 completion:0];
  }

  else
  {
    v6 = [objc_opt_self() local];
    sub_24E245A0C();

    sub_24DFECE04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
    sub_24E346B88();
    sub_24E0B1C24(4);
  }
}

id sub_24E0B3EB8(void *a1, void *a2)
{
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  if (a1)
  {
    v46 = a1;
    sub_24E343C58();
    v11 = sub_24E343F78();
    v12 = sub_24E348238();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24DE53000, v11, v12, "SettingsContainerViewController.showOnboardingUI: Onboarding flow is going to start from Settings", v13, 2u);
      MEMORY[0x253040EE0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v14 = objc_opt_self();
    v15 = [v14 shared];
    v16 = [v15 landingViewControllerWithGameBundleId_];

    v17 = [v14 &selRef_setWithArray_ + 5];
    [v17 setOrigin_];

    v19 = a2[1];
    *&v51 = *a2;
    v18 = v51;
    *(&v51 + 1) = v19;
    v20 = v16;
    v47 = a2;
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3188);
    sub_24E346B88();
    v23 = *(v48 + 40);

    v44 = v19;
    v45 = v18;
    v48 = v18;
    v49 = v19;
    v43 = v22;
    sub_24E346BA8();
    v24 = v51;
    v25 = v52;
    swift_getKeyPath();
    v51 = v24;
    v52 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E31A0);
    sub_24E346C78();

    v26 = v48;
    v27 = v49;
    LOBYTE(v22) = v50;

    type metadata accessor for OnboardingControllerDelegate();
    swift_allocObject();
    v28 = v22;
    v29 = v21;
    v30 = sub_24E25EB48(v16, v23, v26, v27, v28);
    v51 = *(v47 + 2);
    v48 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E31A8);
    sub_24E346B98();
    v31 = [v14 shared];
    [v31 setDelegate_];

    v32 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v32 setModalPresentationStyle_];
    result = [objc_opt_self() sharedTheme];
    if (result)
    {
      v34 = result;
      [result authenticateExtensionFormSheetSize];
      v36 = v35;
      v38 = v37;

      [v32 setPreferredContentSize_];
      [v32 setModalInPresentation_];

      v39 = v46;
      [v46 presentViewController:v32 animated:1 completion:0];
      *&v51 = v45;
      *(&v51 + 1) = v44;
      sub_24E346B88();

      sub_24E2AD940(2, 1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_24E343C58();
    v40 = sub_24E343F78();
    v41 = sub_24E348238();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_24DE53000, v40, v41, "showOnboardingUI: Unable to find hosting controller, unable to show onboarding inline.", v42, 2u);
      MEMORY[0x253040EE0](v42, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_24E0B43F0()
{
  OUTLINED_FUNCTION_0_86();
  sub_24E0B4D14(v0, v1);
  return sub_24E343528();
}

uint64_t sub_24E0B4500(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
}

uint64_t sub_24E0B453C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_86();
  sub_24E0B4D14(v0, v1);
  OUTLINED_FUNCTION_6_42();
}

uint64_t sub_24E0B4628()
{
  swift_getKeyPath();
  sub_24E0B43F0();
}

uint64_t sub_24E0B4694(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

id sub_24E0B46D0()
{
  v0 = sub_24E343F88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C58();
  v4 = sub_24E343F78();
  v5 = sub_24E348238();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v4, v5, "SettingsContainerViewController.showOnboardingUI: Onboarding flow is going to start from Settings", v6, 2u);
    MEMORY[0x253040EE0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_24E0B1C24(2);
  return sub_24E2AD940(2, 1);
}

uint64_t sub_24E0B482C()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI28GameCenterContainerViewModel___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_24E0B489C()
{
  sub_24E0B482C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24E0B48F4()
{
  *(v0 + 16) = 0;
  type metadata accessor for AuthenticationMetricsHandler();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  OUTLINED_FUNCTION_1_30();
  *(v0 + 40) = sub_24E2AE048(0xD00000000000001CLL, 0x800000024E3A3140);
  sub_24E343568();
  return v0;
}

unint64_t sub_24E0B4988()
{
  result = qword_27F1E30F0;
  if (!qword_27F1E30F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E30E8);
    sub_24E0B4A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E30F0);
  }

  return result;
}

unint64_t sub_24E0B4A0C()
{
  result = qword_27F1E30F8;
  if (!qword_27F1E30F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3100);
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230);
    sub_24E0B4AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E30F8);
  }

  return result;
}

unint64_t sub_24E0B4AC4()
{
  result = qword_27F1E3108;
  if (!qword_27F1E3108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3120);
    type metadata accessor for GameCenterContainerViewModel(255);
    sub_24E0B4C2C();
    sub_24E0B4D14(&qword_27F1E1270, type metadata accessor for GameCenterContainerViewModel);
    swift_getOpaqueTypeConformance2();
    sub_24E0B4D5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3108);
  }

  return result;
}

unint64_t sub_24E0B4C2C()
{
  result = qword_27F1E3128;
  if (!qword_27F1E3128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3120);
    sub_24E0B4D14(&qword_27F1E3130, type metadata accessor for SettingsView);
    sub_24DFB4C28(&qword_27F1E1100, &qword_27F1E1108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3128);
  }

  return result;
}

uint64_t sub_24E0B4D14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E0B4D5C()
{
  result = qword_27F1E3138;
  if (!qword_27F1E3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3138);
  }

  return result;
}

unint64_t sub_24E0B4DB0()
{
  result = qword_27F1E3140;
  if (!qword_27F1E3140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E30E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E30E8);
    type metadata accessor for ProfileEditorData();
    sub_24E0B4988();
    sub_24E0B4D14(&qword_27F1DF920, type metadata accessor for ProfileEditorData);
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1DF610, &qword_27F1DF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3140);
  }

  return result;
}

uint64_t sub_24E0B4EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterSettingsContainerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E0B4F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterSettingsContainerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E0B4FBC()
{
  OUTLINED_FUNCTION_8_34();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E04B314;

  return sub_24E0B3238(v4, v5, v0 + v3);
}

void sub_24E0B50D0()
{
  sub_24E0B5268(319, &qword_27F1E3158, type metadata accessor for GameCenterContainerViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24E0B5214(319, &qword_27F1E3160, &qword_27F1E30D0);
    if (v1 <= 0x3F)
    {
      sub_24E0B5214(319, &qword_27F1E3168, &qword_27F1E30D8);
      if (v2 <= 0x3F)
      {
        sub_24E0B5268(319, &qword_27F1E0FA8, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E0B5214(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24E346BB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E0B5268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E0B52D4()
{
  result = sub_24E343578();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameCenterContainerViewModel.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E0B54B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E0B5518()
{
  OUTLINED_FUNCTION_8_34();

  return sub_24E0B2ED0();
}

uint64_t sub_24E0B5574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_32Tm()
{
  type metadata accessor for GameCenterSettingsContainerView(0);
  OUTLINED_FUNCTION_16_12();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E346158();
    OUTLINED_FUNCTION_5_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_9_32();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

id sub_24E0B577C(char a1, int a2)
{
  OUTLINED_FUNCTION_8_34();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_24E0B3DE0(a1, a2, v5, v6);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_6_42()
{

  return sub_24E343538();
}

uint64_t sub_24E0B58A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E31F0);
  sub_24E346118();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  sub_24E346108();
  sub_24E3460F8();
  sub_24E0B6884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3200);
  sub_24DFB4C28(&qword_27F1E3208, &qword_27F1E3200);
  return sub_24E3487E8();
}

uint64_t sub_24E0B59F8(void *a1, void *a2)
{
  v4 = [a1 childViewControllers];
  sub_24DF88A8C(0, &qword_27F1E05B0);
  v5 = sub_24E347F08();

  v6 = sub_24DFD8654(v5);

  if (!v6)
  {
    return 0;
  }

  if (a1 != a2)
  {
    if (qword_27F1DD838 != -1)
    {
      swift_once();
    }

    sub_24E0B5AE0(a2, a1);
    return 0;
  }

  return 1;
}

void sub_24E0B5AE0(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E31C0);
  OUTLINED_FUNCTION_0_14();
  v34 = v7;
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E31C8);
  OUTLINED_FUNCTION_0_14();
  v33 = v11;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = v31 - v14;
  v16 = [a1 navigationItem];
  v17 = [a2 navigationItem];
  v18 = sub_24E0B60CC();

  if ((v18 & 1) == 0)
  {
    v19 = [a1 navigationItem];
    v31[1] = v19;
    v32 = [a2 navigationItem];

    sub_24DF88A8C(0, &qword_27F1E31D0);
    v31[0] = sub_24E0B6144([a2 navigationItem], objc_msgSend(a1, sel_navigationItem));
    swift_getKeyPath();
    sub_24E3431F8();

    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = v20;
    v21[4] = a1;
    sub_24DFB4C28(&qword_27F1E31D8, &qword_27F1E31C8);
    v22 = a2;
    v23 = a1;
    v24 = sub_24E344F38();

    (*(v33 + 8))(v15, v10);
    swift_getKeyPath();
    sub_24E3431F8();

    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v22;
    sub_24DFB4C28(&qword_27F1E31E0, &qword_27F1E31C0);
    v26 = v22;
    v27 = v23;
    v28 = v35;
    v29 = sub_24E344F38();

    (*(v34 + 8))(v9, v28);
    swift_beginAccess();
    v30 = v31[0];

    swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v3 + 16);
    sub_24E058784(v30, v24, v29);
    *(v3 + 16) = v36;
    swift_endAccess();
  }
}

uint64_t sub_24E0B5F90(uint64_t a1, uint64_t a2)
{
  sub_24E348D18();
  MEMORY[0x25303F880](a1);
  MEMORY[0x25303F880](a2);
  return sub_24E348D68();
}

uint64_t sub_24E0B6000()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  MEMORY[0x25303F880](v2);
  return sub_24E348D68();
}

uint64_t sub_24E0B606C()
{
  type metadata accessor for UINavigationItemProxyManager();
  v0 = swift_allocObject();
  sub_24E0B6830();
  result = sub_24E347C28();
  *(v0 + 16) = result;
  qword_27F20AE40 = v0;
  return result;
}

uint64_t sub_24E0B60CC()
{
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    sub_24E26AEE8();
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  swift_endAccess();
  return v2 & 1;
}

id sub_24E0B6144(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDestinationNavigationItem:a1 sourceNavigationItem:a2];

  return v4;
}

id sub_24E0B61A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

void *sub_24E0B61DC(void *result, void *a2, uint64_t a3, void *a4)
{
  if (*result)
  {
    v4 = *result == a2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_24E0B6264(a4, a2);
    }
  }

  return result;
}

void sub_24E0B6264(void *a1, void *a2)
{
  v4 = [a1 navigationItem];
  v5 = [a2 navigationItem];
  v6 = sub_24E0B60CC();

  if (v6)
  {
    v7 = [a1 navigationItem];

    swift_beginAccess();
    v8 = sub_24E2032F4();
    swift_endAccess();
    if (v8)
    {
      sub_24E344DB8();
      sub_24E344DB8();
    }
  }
}

void sub_24E0B638C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 toolbarItems];
  if (v3)
  {
    v4 = v3;
    sub_24DF88A8C(0, &unk_27F1E21B0);
    v5 = sub_24E347F08();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_24E0B640C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_24DF88A8C(0, &unk_27F1E21B0);
    v3 = sub_24E347EE8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setToolbarItems_];
}

void sub_24E0B6494(uint64_t *a1, id a2, void *a3)
{
  v4 = *a1;
  v5 = [a2 parentViewController];
  if (v5)
  {
    v6 = v5;
    sub_24DF88A8C(0, &qword_27F1E05B0);
    v7 = a3;
    v8 = sub_24E348628();

    if (v8)
    {
      v9 = sub_24E0B67C0(v7);
      v10 = v9;
      if (v4)
      {
        if (v9)
        {

          sub_24E12DB20(v11, v10);
          v13 = v12;

          if (v13)
          {
            return;
          }
        }

        sub_24DF88A8C(0, &unk_27F1E21B0);
        v14 = sub_24E347EE8();
      }

      else
      {
        if (!v9)
        {
          return;
        }

        v14 = 0;
      }

      v15 = v14;
      [v7 setToolbarItems_];
    }
  }
}

uint64_t sub_24E0B6614(uint64_t *a1, int a2)
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

uint64_t sub_24E0B6654(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UINavigationItemProxyManager.ProxyKey(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UINavigationItemProxyManager.ProxyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_24E0B6730()
{
  result = qword_27F1E31B8;
  if (!qword_27F1E31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E31B8);
  }

  return result;
}

uint64_t sub_24E0B67C0(void *a1)
{
  v1 = [a1 toolbarItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_24DF88A8C(0, &unk_27F1E21B0);
  v3 = sub_24E347F08();

  return v3;
}

unint64_t sub_24E0B6830()
{
  result = qword_27F1E31E8;
  if (!qword_27F1E31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E31E8);
  }

  return result;
}

unint64_t sub_24E0B6884()
{
  result = qword_27F1E31F8;
  if (!qword_27F1E31F8)
  {
    sub_24E346118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E31F8);
  }

  return result;
}

void sub_24E0B6968(void *a1, char a2)
{
  v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView);
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = sub_24E1DD038();
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  sub_24E1DD390(a1, v6);
}

id GKMultiplayerPickerPlayerCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *GKMultiplayerPickerPlayerCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerPickerPlayerCell_lockupView) = [objc_allocWithZone(type metadata accessor for SmallFriendLockupView()) initWithFrame_];
  v2 = OUTLINED_FUNCTION_28();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, ObjectType);
  OUTLINED_FUNCTION_0_87();
  [v5 setLayoutMargins_];
  if (qword_27F1DDDA8 != -1)
  {
    swift_once();
  }

  [v5 setBackgroundColor_];
  v6 = OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerPickerPlayerCell_lockupView;
  v7 = *(*&v5[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerPickerPlayerCell_lockupView] + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 whiteColor];
  [v9 setTextColor_];

  v11 = *(*&v5[v6] + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel);
  v12 = [v8 secondaryLabelColor];
  [v11 setTextColor_];

  v13 = [*(*&v5[v6] + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel) layer];
  [v13 setCompositingFilter_];

  v14 = [v5 contentView];
  [v14 addSubview_];

  return v5;
}

Swift::Void __swiftcall GKMultiplayerPickerPlayerCell.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerPickerPlayerCell_lockupView];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [v0 layoutMargins];
  [v1 setFrame_];
}

uint64_t sub_24E0B6E68@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24E3433A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v67 - v12;
  v14 = [a1 displayNameWithOptions_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_24E347CF8();
    v71 = v17;
    v72 = v16;

    if (a2)
    {
      v18 = sub_24E347CB8();
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v21 = sub_24E347CF8();
      v23 = v22;
LABEL_17:

LABEL_18:
      v54 = [a1 contact];
      v55 = v54;
      if (!v54)
      {
        v55 = [a1 internal];
      }

      *(a3 + 136) = 0;
      v56 = v54 != 0;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      v76 = 0;
      memset(v75, 0, sizeof(v75));
      v74 = 0;
      memset(v73, 0, sizeof(v73));
      v57 = v55;
      sub_24E343398();
      (*(v7 + 16))(v9, v13, v6);
      sub_24E0B7F3C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();

      (*(v7 + 8))(v13, v6);
      v58 = type metadata accessor for SmallFriendLockupData();
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0;
      *(a3 + 144) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0;
      *(a3 + 240) = 0u;
      v59 = *(v58 + 56);
      v60 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(a3 + v59, 1, 1, v60);
      v61 = *(v58 + 60);
      v62 = v71;
      *(a3 + 40) = v72;
      *(a3 + 48) = v62;
      *(a3 + 56) = v21;
      *(a3 + 64) = v23;
      *(a3 + 72) = v55;
      *(a3 + 80) = v56;
      *(a3 + 88) = 0;
      sub_24DFE981C(v75, a3 + 144);
      *(a3 + 184) = 1;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0;
      *(a3 + 232) = 2;
      sub_24DFE981C(v73, a3 + 240);
      *(a3 + v61) = 0;
      *(a3 + 96) = 0;
      return __swift_storeEnumTagSinglePayload(a3, 0, 1, v58);
    }

    v26 = [a1 lastPlayedGame];
    v70 = v9;
    if (v26)
    {
      v20 = v26;
      v27 = [v26 name];
      v28 = sub_24E347CF8();
      v30 = v29;

      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = sub_24E347CB8();
        v33 = GKGameCenterUIFrameworkBundle();
        v34 = GKGetLocalizedStringFromTableInBundle();

        v35 = sub_24E347CF8();
        v68 = v36;
        v69 = v35;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_24E367D20;
        v38 = [v20 name];
        v39 = sub_24E347CF8();
        v41 = v40;

        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = sub_24DF95A7C();
        *(v37 + 32) = v39;
        *(v37 + 40) = v41;
        goto LABEL_15;
      }
    }

    v42 = [a1 lastPlayedDate];
    if (!v42)
    {
      v63 = [a1 contact];
      if (!v63)
      {
        v21 = 0;
        v23 = 0;
        v9 = v70;
        goto LABEL_18;
      }

      v64 = sub_24E347CB8();
      v65 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v21 = sub_24E347CF8();
      v23 = v66;
      goto LABEL_16;
    }

    v20 = v42;
    v43 = sub_24E347CB8();
    v44 = GKGameCenterUIFrameworkBundle();
    v45 = GKGetLocalizedStringFromTableInBundle();

    v46 = sub_24E347CF8();
    v68 = v47;
    v69 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_24E367D20;
    v49 = [v20 _gkFormattedWhenStringWithOptions_];
    v50 = sub_24E347CF8();
    v52 = v51;

    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 64) = sub_24DF95A7C();
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
LABEL_15:
    v21 = sub_24E347D18();
    v23 = v53;

LABEL_16:
    v9 = v70;
    goto LABEL_17;
  }

  v24 = type metadata accessor for SmallFriendLockupData();

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
}

Swift::Void __swiftcall GKMultiplayerPickerPlayerCell.apply(player:isCoreRecent:)(GKPlayer player, Swift::Bool isCoreRecent)
{
  v3 = v2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SmallFriendLockupData();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E0B6E68(player.super.super.isa, isCoreRecent, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24E09DE40(v8);
  }

  else
  {
    sub_24DFDBC54(v8, v11);
    v12 = *(v3 + OBJC_IVAR____TtC12GameCenterUI29GKMultiplayerPickerPlayerCell_lockupView);
    sub_24E1E53C4(v11);
    v13 = type metadata accessor for AvatarArtworkLoader();
    v14 = *(v11 + 9);
    v15 = v11[80];
    sub_24E025030(v14, v15);
    sub_24E0B79D8(v14, v15, v12, v13);
    sub_24DFD8108(v14, v15);
    sub_24DFDBCB8(v11);
  }
}

void static GKMultiplayerPickerPlayerCell.preferredSize(fitting:in:)(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_87();
  sub_24E0B7968();
  type metadata accessor for SmallFriendLockupView();
  sub_24E1E89A8(a1);
}

Swift::Void __swiftcall GKMultiplayerPickerPlayerCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  OUTLINED_FUNCTION_0_87();
  [v1 setLayoutMargins_];
}

id GKMultiplayerPickerPlayerCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E0B7904(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E3432A8();

  return v3;
}

double sub_24E0B7968()
{
  OUTLINED_FUNCTION_29();
  v2 = [v1 traitCollection];
  [v2 layoutDirection];

  return v0;
}

void sub_24E0B79D8(void *a1, char a2, void *a3, uint64_t a4)
{
  v8 = ~a2;
  v9 = sub_24E346EE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24E346F08();
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    if (a2)
    {
      v32 = v14;
      v33 = v10;
      v34 = a3;
      v17 = a1;
      v18 = sub_24E0B7904(v17);
      if (v19 >> 60 == 15)
      {
        if (qword_27F1DD810 != -1)
        {
          swift_once();
        }

        v20 = swift_allocObject();
        v20[2] = a4;
        v20[3] = v17;
        v21 = v34;
        v20[4] = v34;
        v20[5] = &off_286124030;
        v20[6] = a4;
        v40 = sub_24E0B7F0C;
        v41 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_24E00B24C;
        v39 = &block_descriptor_36;
        v22 = _Block_copy(&aBlock);
        sub_24E025030(a1, a2);
        v23 = v21;
        sub_24E346EF8();
        v35 = MEMORY[0x277D84F90];
        sub_24E0B7F3C(&qword_27F1DFD00, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
        sub_24DFCD5F4();
        sub_24E3487E8();
        MEMORY[0x25303EED0](0, v16, v12, v22);
        _Block_release(v22);
        sub_24DFD8108(a1, a2);
        sub_24DFD8108(a1, a2);
        (*(v33 + 8))(v12, v9);
        (*(v32 + 8))(v16, v13);
      }

      else
      {
        v29 = v18;
        v30 = v19;
        sub_24DFC2C38();
        sub_24DFF6284(v29, v30);
        v31 = sub_24DFEDC54(v29, v30);
        sub_24E0B6968(v31, 1);

        sub_24DFF6204(v29, v30);
        sub_24DFD8108(a1, a2);

        sub_24DFD8108(a1, a2);
      }
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
      v25 = swift_allocObject();
      *(v25 + 24) = &off_286124030;
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v24;
      v40 = sub_24E0B7F34;
      v41 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24E0121FC;
      v39 = &block_descriptor_9;
      v27 = _Block_copy(&aBlock);
      v28 = v24;

      [v28 loadPhotoForSize:1 withCompletionHandler:v27];
      _Block_release(v27);

      sub_24DFD8108(a1, a2);
      sub_24DFD8108(a1, a2);
    }
  }
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E0B7F3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0B7FAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_24E0B7FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0B8070(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 344))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_24E0B80B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0B8158(void *a1, double a2, double a3, double a4, double a5)
{
  CGRectGetMinX(*&a2);
  v10.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMinY(v10);
  v11.origin.x = OUTLINED_FUNCTION_28();
  Width = CGRectGetWidth(v11);
  v12.origin.x = OUTLINED_FUNCTION_28();
  Height = CGRectGetHeight(v12);
  sub_24E0B8250(a1, v9, Width, Height);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_24E344978();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_24E0B8250@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D2>, double a4@<D3>)
{
  v9 = sub_24E3447C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v33 - v13;
  v14 = sub_24E3446A8();
  v34 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  sub_24E0B8824(a1, &v33 - v19);
  v21 = sub_24E0B95F0(a3, a4);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v15 + 16))(v17, v20, v14);
  v28 = sub_24E0B979C(v17, v21, v23, v25, v27);
  v42 = &type metadata for InsetLayout;
  v43 = sub_24E0B988C();
  v41 = v28;
  __swift_project_boxed_opaque_existential_1((v4 + 184), *(v4 + 208));

  sub_24E3440C8();
  sub_24DF89628(v4 + 24, v40);
  v29 = *(v10 + 104);
  v29(v33, *MEMORY[0x277D228C0], v9);
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  v36[3] = sub_24E3442F8();
  v36[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_24E3442E8();
  v29(v35, *MEMORY[0x277D228C8], v9);
  v30 = sub_24E344828();
  v31 = MEMORY[0x277D228D0];
  a2[3] = v30;
  a2[4] = v31;
  a2[5] = sub_24E0B98E0(&qword_27F1E3220, MEMORY[0x277D228D8]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_24E344808();

  return (*(v15 + 8))(v20, v34);
}

double sub_24E0B8610(void *a1, double a2)
{
  v3 = v2;
  v21 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E0B8824(a1, v16);
  v17 = *(v2 + 48);
  v18 = *(v3 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), v17);
  sub_24E2548A0(v17, v18);
  sub_24E344198();
  (*(v7 + 8))(v10, v21);
  sub_24E3445F8();
  (*(v13 + 8))(v16, v11);
  return a2;
}

uint64_t sub_24E0B8824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v117 = a1;
  v118 = a2;
  v4 = sub_24E348BC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v113 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E344648();
  v128 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_24E344658();
  v10 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24E3445E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_24E344688();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v109 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = (&v98 - v19);
  MEMORY[0x28223BE20](v20);
  v112 = &v98 - v21;
  sub_24DF98AC8((v3 + 28), &v134);
  v125 = v7;
  v120 = v9;
  v119 = v12;
  v116 = v16;
  v115 = v13;
  v129 = v10;
  if (v135)
  {
    v110 = v5;
    v111 = v4;
    sub_24DF88BF0(&v134, &v137);
    v22 = v138;
    v23 = v139;
    v24 = __swift_project_boxed_opaque_existential_1(&v137, v138);
    v135 = v22;
    v136 = *(v23 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v134);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v26 = *(v14 + 104);
    LODWORD(v121) = *MEMORY[0x277D227D0];
    v26(v16);
    v27 = *(v10 + 104);
    v127 = *MEMORY[0x277D227F0];
    v28 = v128;
    v27(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24E367D20;
    sub_24E344618();
    v130 = v29;
    sub_24E0B98E0(&qword_27F1E5D20, MEMORY[0x277D227D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
    sub_24DF8A8FC();
    v30 = v125;
    sub_24E3487E8();
    v31 = v112;
    sub_24E344678();
    (*(v28 + 8))(v9, v30);
    v32 = v124;
    (*(v129 + 8))(v12, v124);
    v33 = v14;
    (*(v14 + 8))(v16, v13);
    sub_24DF8C95C(&v131, &qword_27F1DEE48);
    __swift_destroy_boxed_opaque_existential_1(&v134);
    sub_24E076A38();
    v35 = v34;
    v36 = *(v34 + 2);
    v37 = v32;
    if (v36 >= *(v34 + 3) >> 1)
    {
      sub_24E076A38();
      v35 = v96;
    }

    v114 = v35;
    *(v35 + 2) = v36 + 1;
    (*(v122 + 32))(&v35[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v36], v31, v123);
    v38 = v3[16];
    v39 = v3[17];
    __swift_project_boxed_opaque_existential_1(v3 + 13, v38);
    v40 = v113;
    sub_24E2548A0(v38, v39);
    sub_24E344198();
    v42 = v41;
    v110[1](v40, v111);
    __swift_destroy_boxed_opaque_existential_1(&v137);
    v43 = v121;
    v44 = v127;
  }

  else
  {
    v33 = v14;
    sub_24DF8C95C(&v134, &qword_27F1DF0C0);
    v43 = *MEMORY[0x277D227D0];
    v44 = *MEMORY[0x277D227F0];
    v114 = MEMORY[0x277D84F90];
    v42 = 0;
    v37 = v124;
  }

  v45 = v3[36];
  v46 = v3[37];
  v117 = v3;
  v47 = __swift_project_boxed_opaque_existential_1(v3 + 33, v45);
  v138 = v45;
  v139 = *(v46 + 8);
  v48 = __swift_allocate_boxed_opaque_existential_1(&v137);
  (*(*(v45 - 8) + 16))(v48, v47, v45);
  v135 = MEMORY[0x277D85048];
  v136 = MEMORY[0x277D225F8];
  *&v134 = v42;
  v49 = v33;
  v50 = (v33 + 104);
  v51 = *(v33 + 104);
  v133 = 0;
  v131 = 0u;
  v132 = 0u;
  v52 = v116;
  LODWORD(v121) = v43;
  v53 = v43;
  v54 = v115;
  v113 = v50;
  v112 = v51;
  (v51)(v116, v53, v115);
  v55 = v129;
  v56 = *(v129 + 104);
  v57 = v119;
  v127 = v44;
  v111 = v129 + 104;
  v110 = v56;
  (v56)(v119, v44, v37);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v59 = v128;
  v60 = v37;
  v61 = v55;
  v62 = (*(v128 + 80) + 32) & ~*(v128 + 80);
  v63 = v62 + *(v128 + 72);
  v106 = *(v128 + 80);
  v107 = v58;
  v105 = v63;
  v64 = swift_allocObject();
  v104 = xmmword_24E367D20;
  *(v64 + 16) = xmmword_24E367D20;
  v108 = v62;
  sub_24E344618();
  v130 = v64;
  v65 = sub_24E0B98E0(&qword_27F1E5D20, MEMORY[0x277D227D8]);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  v67 = sub_24DF8A8FC();
  v68 = v120;
  v102 = v66;
  v101 = v67;
  v69 = v125;
  v103 = v65;
  sub_24E3487E8();
  sub_24E344678();
  v71 = *(v59 + 8);
  v70 = v59 + 8;
  v100 = v71;
  v71(v68, v69);
  v72 = *(v61 + 8);
  v129 = v61 + 8;
  v99 = v72;
  v72(v57, v60);
  v73 = *(v49 + 8);
  v73(v52, v54);
  sub_24DF8C95C(&v131, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v134);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  v74 = v114;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_24E076A38();
    v74 = v94;
  }

  v75 = v122;
  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  v128 = v70;
  v78 = v127;
  if (v77 >= v76 >> 1)
  {
    sub_24E076A38();
    v74 = v95;
  }

  v79 = v117;
  *(v74 + 2) = v77 + 1;
  v82 = *(v75 + 32);
  v81 = v75 + 32;
  v80 = v82;
  v122 = (*(v81 + 48) + 32) & ~*(v81 + 48);
  v117 = *(v81 + 40);
  (v82)(&v74[v122 + v117 * v77], v126, v123);
  sub_24DF98AC8((v79 + 38), &v134);
  if (v135)
  {
    v126 = v80;
    sub_24DF88BF0(&v134, &v137);
    __swift_project_boxed_opaque_existential_1(&v137, v138);
    if (sub_24E344058())
    {
      __swift_project_boxed_opaque_existential_1(&v137, v138);
      if ((sub_24E344098() & 1) == 0)
      {
        v83 = v138;
        v84 = v139;
        v114 = __swift_project_boxed_opaque_existential_1(&v137, v138);
        v135 = v83;
        v136 = *(v84 + 8);
        v85 = __swift_allocate_boxed_opaque_existential_1(&v134);
        (*(*(v83 - 8) + 16))(v85, v114, v83);
        v133 = 0;
        v131 = 0u;
        v132 = 0u;
        (v112)(v52, v121, v54);
        v121 = v73;
        v86 = v119;
        v87 = v124;
        (v110)(v119, v78, v124);
        v88 = swift_allocObject();
        *(v88 + 16) = v104;
        sub_24E344618();
        v130 = v88;
        v89 = v120;
        v90 = v125;
        sub_24E3487E8();
        v91 = v109;
        sub_24E344678();
        v100(v89, v90);
        v99(v86, v87);
        v121(v52, v54);
        sub_24DF8C95C(&v131, &qword_27F1DEE48);
        __swift_destroy_boxed_opaque_existential_1(&v134);
        v92 = *(v74 + 2);
        if (v92 >= *(v74 + 3) >> 1)
        {
          sub_24E076A38();
          v74 = v97;
        }

        *(v74 + 2) = v92 + 1;
        v126(&v74[v122 + v92 * v117], v91, v123);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v137);
  }

  else
  {
    sub_24DF8C95C(&v134, &qword_27F1DF0C0);
  }

  return sub_24E344668();
}

double sub_24E0B95F0(double a1, double a2)
{
  v3 = v2;
  v5 = sub_24E348BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v3 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), v9);
  sub_24E2548A0(v9, v10);
  sub_24E344198();
  (*(v6 + 8))(v8, v5);
  sub_24E3446A8();
  sub_24E3440D8();
  return (a2 - v11 - *v3) * 0.5;
}

uint64_t sub_24E0B979C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_24E3446A8();
  v16 = v10;
  v17 = MEMORY[0x277D22808];
  v18 = MEMORY[0x277D22810];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, a1, v10);
  sub_24DFFE564(&v15, v14);
  *&v14[3] = a2;
  *(&v14[3] + 1) = a3;
  *&v14[4] = a4;
  *(&v14[4] + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3228);
  v12 = swift_allocObject();
  memcpy((v12 + 16), v14, 0x50uLL);
  return v12;
}

unint64_t sub_24E0B988C()
{
  result = qword_27F1E3218;
  if (!qword_27F1E3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3218);
  }

  return result;
}

uint64_t sub_24E0B98E0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24E0B9928(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PrivacyAndSettingsActionImplementation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_24E0B999C()
{
  v0 = sub_24E347218();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for PrivacyAndSettingsAction();
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    LOBYTE(v22[0]) = 1;
    v7 = objc_allocWithZone(type metadata accessor for PlayerProfilePresenter());

    sub_24E245B74();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
    v10 = v9;
    sub_24E347328();
    v11 = objc_allocWithZone(type metadata accessor for PlayerProfileViewController());

    sub_24E0CACF0();
    v13 = v12;
    sub_24E347328();
    if (v21)
    {
      sub_24DE56CE8(&v20, v22);
      v14 = v23;
      v15 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v15 + 8))(v13, 1, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_24E0B9DD0(&v20);
      v17 = [v6 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 pushViewController:v13 animated:1];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
    v16 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
    return sub_24E347AA8();
  }

  return v16;
}

id sub_24E0B9CE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyAndSettingsActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E0B9D54()
{
  result = qword_27F1E3238;
  if (!qword_27F1E3238)
  {
    type metadata accessor for PrivacyAndSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3238);
  }

  return result;
}

uint64_t sub_24E0B9DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E0B9E38()
{
  type metadata accessor for FriendsProfileSection();
  result = swift_allocObject();
  *(result + 16) = 259;
  return result;
}

uint64_t sub_24E0B9E64(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347478();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_14();
  v112 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v95 - v5;
  v7 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v111 = v8;
  MEMORY[0x28223BE20](v9);
  v109 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v95 - v12;
  OUTLINED_FUNCTION_18_1();
  v13 = type metadata accessor for DetailData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343428();
  OUTLINED_FUNCTION_0_14();
  v107 = v18;
  v108 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AllFriendsListFlowAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_14();
  v119 = v23;
  OUTLINED_FUNCTION_18_1();
  v24 = sub_24E347458();
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_3_14();
  v113 = v25;
  OUTLINED_FUNCTION_18_1();
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v117 = v27;
  v118 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_14();
  v115 = v28;
  OUTLINED_FUNCTION_18_1();
  v116 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_14();
  v114 = v32;
  memcpy(v131, __src, sizeof(v131));
  v33 = 0;
  if (sub_24DF8BF80(v131) != 1)
  {
    memcpy(v132, v131, sizeof(v132));
    v34 = v132[0];
    memcpy(v130, __dst, sizeof(v130));
    sub_24DF8BF98(v130, v125);
    if (([v34 isLocalPlayer] & 1) != 0 || objc_msgSend(v34, sel_achievementsVisibility) != 2)
    {
      v102 = v7;
      v103 = v6;
      v106 = v13;
      v104 = __src;
      v35 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76A08] scale:-1];
      v99 = sub_24E012D68(v35, 5);

      v36 = sub_24E347CB8();
      v37 = GKGameCenterUIFrameworkBundle();
      v38 = OUTLINED_FUNCTION_24_5();

      sub_24E347CF8();
      v40 = v39;

      v41 = sub_24E347D18();
      v100 = v42;
      v101 = v41;

      v43 = sub_24E347CB8();
      v44 = GKGameCenterUIFrameworkBundle();
      v45 = OUTLINED_FUNCTION_24_5();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
      v46 = swift_allocObject();
      v105 = xmmword_24E367D20;
      *(v46 + 16) = xmmword_24E367D20;
      v47 = v132[9];
      v48 = MEMORY[0x277D83C10];
      *(v46 + 56) = MEMORY[0x277D83B88];
      *(v46 + 64) = v48;
      *(v46 + 32) = v47;
      v49 = sub_24E347CC8();
      v96 = v50;
      v97 = v49;

      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      v51 = swift_allocObject();
      *(v51 + 16) = v105;
      v52 = MEMORY[0x277D837D0];
      *(v51 + 32) = 0x79546E6F69746361;
      *(v51 + 40) = 0xEA00000000006570;
      *(v51 + 72) = v52;
      *(v51 + 48) = 0x657461676976616ELL;
      *(v51 + 56) = 0xE800000000000000;
      v53 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v54 = sub_24E347058();
      v55 = __swift_project_value_buffer(v54, qword_27F20AE00);
      v56 = v114;
      MEMORY[0x25303DB90](0x73646E65697266, 0xE700000000000000, 0x74656C63696863, 0xE700000000000000, v53, v55);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
      v57 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = v105;
      *&v105 = v30;
      (*(v30 + 16))(v58 + v57, v56, v116);
      sub_24E347448();
      v59 = v115;
      sub_24E3471D8();
      v60 = v132[14];
      v61 = v132[15];
      v62 = v132[16];
      v63 = v132[17];
      v64 = v119;
      (*(v117 + 16))(v119 + *(v21 + 36), v59, v118);
      *v64 = 0;
      *(v64 + 8) = 1;
      *(v64 + 16) = v60;
      *(v64 + 24) = v61;
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;

      sub_24DFE2518();
      v65 = [objc_opt_self() currentLocale];
      sub_24E3433D8();

      v66 = sub_24E3433C8();
      (*(v107 + 8))(v20, v108);
      v67 = JECountFormatterMakeStringFromNumber();

      if (v67)
      {
        v68 = sub_24E347CF8();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      v71 = v102;
      sub_24DFE2518();
      if (v72 <= 0)
      {

        v68 = 0;
        v70 = 0;
        v73 = -1;
      }

      else
      {
        v73 = 3;
      }

      v125[0] = v68;
      v125[1] = v70;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = v73;
      sub_24DF8C8EC(v125, &v122);
      v121[3] = v21;
      v121[4] = sub_24E0BABC0(&qword_27F1E3240, type metadata accessor for AllFriendsListFlowAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
      sub_24E0BAC08(v119, boxed_opaque_existential_1, type metadata accessor for AllFriendsListFlowAction);
      v75 = v99;
      v108 = v99;
      v76 = v110;
      sub_24E343398();
      v77 = v111;
      (*(v111 + 16))(v109, v76, v71);
      sub_24E0BABC0(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();
      (*(v77 + 8))(v76, v71);
      *(v16 + 27) = 0;
      *(v16 + 200) = 0u;
      *(v16 + 184) = 0u;
      v78 = v106;
      v79 = v106[14];
      v80 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(&v16[v79], 1, 1, v80);
      v81 = &v16[v78[15]];
      sub_24DF8BD34(v120, v16);
      v16[40] = 1;
      v83 = v100;
      v82 = v101;
      *(v16 + 6) = v101;
      *(v16 + 7) = v83;
      v84 = v96;
      *(v16 + 8) = v97;
      *(v16 + 9) = v84;
      *(v16 + 10) = v75;
      sub_24DF8C8EC(&v122, (v16 + 88));
      *(v16 + 20) = 0;
      *(v16 + 21) = 0;
      *(v16 + 88) = 256;
      *v81 = 1;
      v81[8] = 0;

      sub_24DF8BDF0(v121, (v16 + 184));
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_24E369E30;
      strcpy((v85 + 32), "impressionType");
      *(v85 + 47) = -18;
      *(v85 + 48) = 0x74656C63696863;
      *(v85 + 56) = 0xE700000000000000;
      v86 = MEMORY[0x277D837D0];
      *(v85 + 72) = MEMORY[0x277D837D0];
      *(v85 + 80) = 0x6973736572706D69;
      *(v85 + 88) = 0xEF7865646E496E6FLL;
      *(v85 + 96) = 1;
      *(v85 + 120) = MEMORY[0x277D83B88];
      *(v85 + 128) = 0x657079546469;
      *(v85 + 136) = 0xE600000000000000;
      *(v85 + 144) = 0x636974617473;
      *(v85 + 152) = 0xE600000000000000;
      *(v85 + 168) = v86;
      *(v85 + 176) = 1701667182;
      *(v85 + 216) = v86;
      *(v85 + 184) = 0xE400000000000000;
      *(v85 + 192) = v82;
      *(v85 + 200) = v83;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v87 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v87);
      v88 = v103;
      sub_24E347488();
      sub_24DF8BE60(v120);
      sub_24DF8BFF4(&v122, &qword_27F1DEE88);
      sub_24DF8BFF4(v121, &qword_27F1DEE90);
      __swift_storeEnumTagSinglePayload(v88, 0, 1, v80);
      sub_24DF8BEB4(v88, &v16[v79]);
      sub_24E076EE4();
      v33 = v89;
      v90 = *(v89 + 16);
      if (v90 >= *(v89 + 24) >> 1)
      {
        sub_24E076EE4();
        v33 = v94;
      }

      v91 = v105;
      sub_24DF8BFF4(v104, &qword_27F1DEEA0);

      sub_24DF8BFF4(v125, &qword_27F1DEE88);
      sub_24E0BAC68(v119, type metadata accessor for AllFriendsListFlowAction);
      (*(v117 + 8))(v115, v118);
      (*(v91 + 8))(v114, v116);
      v123 = v106;
      v124 = sub_24E0BABC0(&qword_27F1DEE80, type metadata accessor for DetailData);
      v92 = __swift_allocate_boxed_opaque_existential_1(&v122);
      sub_24E0BAC08(v16, v92, type metadata accessor for DetailData);
      *(v33 + 16) = v90 + 1;
      sub_24DE56CE8(&v122, v33 + 40 * v90 + 32);
      sub_24E0BAC68(v16, type metadata accessor for DetailData);
    }

    else
    {
      sub_24DF8BFF4(__src, &qword_27F1DEEA0);
      return 0;
    }
  }

  return v33;
}

uint64_t sub_24E0BABC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0BAC08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E0BAC68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E0BACC0()
{
  v0 = sub_24E3433A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = [objc_opt_self() linkWithBundleIdentifier_];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 flow];

  v10 = sub_24E028F3C(v9);
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24E367D20;
  v22 = &type metadata for PrivacyPolicyAction;
  v23 = sub_24DF9D364();
  sub_24E343398();
  (*(v1 + 16))(v3, v6, v0);
  v15 = type metadata accessor for OnboardingKitButtonData();
  *(v14 + 56) = v15;
  *(v14 + 64) = sub_24E0BAF9C(&qword_27F1E3248, type metadata accessor for OnboardingKitButtonData);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_24E0BAF9C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v1 + 8))(v6, v0);
  boxed_opaque_existential_1[11] = 0;
  *(boxed_opaque_existential_1 + 9) = 0u;
  *(boxed_opaque_existential_1 + 7) = 0u;
  v17 = *(v15 + 28);
  v18 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v17, 1, 1, v18);
  *boxed_opaque_existential_1 = v12;
  boxed_opaque_existential_1[1] = v13;
  sub_24DFC280C((boxed_opaque_existential_1 + 7));
  sub_24DE56CE8(&v21, (boxed_opaque_existential_1 + 7));
  return v14;
}

uint64_t sub_24E0BAF9C(unint64_t *a1, void (*a2)(uint64_t))
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

id DashboardSplitViewController.init(launchContext:request:navigationProxy:)()
{
  OUTLINED_FUNCTION_2_55();
  ObjectType = swift_getObjectType();
  v5 = *v3;
  *&v1[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler] = xmmword_24E36CD50;
  *&v1[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___sidebarViewController] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___primaryNavigationController] = 0;
  v6 = OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_cacheSecondaryNavigationControllers;
  type metadata accessor for CustomNavigationController();
  *&v1[v6] = sub_24E347C28();
  v1[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_launchContext] = v5;
  *&v1[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_request] = v2;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_24DF8C95C(v0, &qword_27F1E1B70);
  return v7;
}

void sub_24E0BB138()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler) = xmmword_24E36CD50;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___sidebarViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___primaryNavigationController) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_cacheSecondaryNavigationControllers;
  type metadata accessor for CustomNavigationController();
  *(v0 + v1) = sub_24E347C28();
  sub_24E348AE8();
  __break(1u);
}

void (*DashboardSplitViewController.dismissHandler.getter())()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler);
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *v1;
    v3 = sub_24E0BB454;
    *v1 = sub_24E0BB454;
    v1[1] = v4;

    sub_24E0BB45C(v5);
  }

  sub_24E0BB46C(v2);
  return v3;
}

uint64_t sub_24E0BB2D0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = DashboardSplitViewController.dismissHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E0BB340(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1);
  return DashboardSplitViewController.dismissHandler.setter(v4, v3);
}

uint64_t DashboardSplitViewController.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler);
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_24E0BB45C(v4);
}

void sub_24E0BB3F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_24E0BB45C(uint64_t result)
{
  if (result != 1)
  {
    return sub_24DE73FA0(result);
  }

  return result;
}

uint64_t sub_24E0BB46C(uint64_t result)
{
  if (result != 1)
  {
    return sub_24DE56C38(result);
  }

  return result;
}

uint64_t (*DashboardSplitViewController.dismissHandler.modify(void (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DashboardSplitViewController.dismissHandler.getter();
  a1[1] = v3;
  return sub_24E0BB4C4;
}

uint64_t sub_24E0BB4C4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = (a1[2] + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler);
  v5 = *v4;
  *v4 = *a1;
  v4[1] = v2;
  if (a2)
  {
    sub_24DE56C38(v3);
    sub_24E0BB45C(v5);

    return sub_24DE73FA0(v3);
  }

  else
  {

    return sub_24E0BB45C(v5);
  }
}

uint64_t sub_24E0BB560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFAC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - v4;
  LOBYTE(v21[0]) = *(a1 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_launchContext);
  v6 = *(a1 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_request);
  objc_allocWithZone(type metadata accessor for DashboardSidebarPresenter());
  v7 = v6;
  sub_24E03C178(v21, v6, 0);
  v9 = v8;
  if (qword_27F1DD8F8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DashboardSidebarViewController();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v11 = objc_allocWithZone(v10);

  v12 = v9;
  sub_24DFB89DC();
  v14 = v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E32A0);
  sub_24E0BD588();

  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  (*(v3 + 8))(v5, v2);
  v15 = DashboardSplitViewController.dismissHandler.getter();
  v17 = v16;

  v18 = (v14 + OBJC_IVAR____TtC12GameCenterUI30DashboardSidebarViewController_dismissHandler);
  swift_beginAccess();
  v19 = *v18;
  *v18 = v15;
  v18[1] = v17;
  sub_24DE73FA0(v19);
  return v14;
}

void sub_24E0BB818(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_24E0BB8A8(v1, v2, v3, v4, v5);
  }
}

void sub_24E0BB8A8(void *a1, unsigned __int8 a2, void *a3, char a4, char a5)
{
  v6 = v5;
  if (a2 >= 5u)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
    v13 = sub_24E347CB8();
    v39 = v6;
    v14 = a1;
    v15 = a3;
    v16 = sub_24E347CB8();
    v17 = sub_24E347CB8();
    v38 = a5;
    v18 = a4;
    v19 = sub_24E347CB8();
    v20 = sub_24E347CB8();
    [v12 recordClickWithAction:v13 targetId:v16 targetType:v17 pageId:v19 pageType:v20];

    a3 = v15;
    a1 = v14;
    v6 = v39;

    a4 = v18;
    a5 = v38;
  }

  sub_24E2A07FC();
  v21 = OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_cacheSecondaryNavigationControllers;
  swift_beginAccess();
  v22 = sub_24E12CA08(v40, *(v6 + v21));
  if (v22)
  {
    v23 = v22;
    swift_endAccess();
    sub_24DF8BE60(v40);
    v24 = [v23 viewControllers];
    sub_24DF88A8C(0, &qword_27F1E05B0);
    v25 = sub_24E347F08();

    v26 = sub_24DFD8654(v25);

    if (v26)
    {
      if (a4 == -1)
      {
        v27 = 0;
      }

      else
      {
        v27 = sub_24E2A08FC(a1, a2, a3, a4);
      }

      sub_24E0BC368(v23, v27 & 1, a5 & 1);

      return;
    }
  }

  else
  {
    swift_endAccess();
    sub_24DF8BE60(v40);
  }

  v28 = sub_24E0BBCAC(&OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___sidebarViewController, sub_24E0BB560);
  v29 = *&v28[OBJC_IVAR____TtC12GameCenterUI30DashboardSidebarViewController_sidebarPresenter];

  v30 = a5 & 1;
  sub_24E03E914(a1, a2, a5 & 1);
  v32 = v31;

  if (v32)
  {
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = a1;
    *(v34 + 32) = a2;
    *(v34 + 40) = a3;
    *(v34 + 48) = a4;
    *(v34 + 49) = v30;
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    *(v35 + 24) = a2;
    v36 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    sub_24DF959BC(a1, a2);
    sub_24DF959BC(a1, a2);
    sub_24E041C34(a3, a4);
    v37 = sub_24E348368();
    v40[3] = v36;
    v40[4] = MEMORY[0x277D225C0];
    v40[0] = v37;
    sub_24E347A78();

    __swift_destroy_boxed_opaque_existential_1(v40);
  }
}

id sub_24E0BBCAC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_24E0BBD10()
{
  type metadata accessor for CustomNavigationController();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = DashboardSplitViewController.dismissHandler.getter();
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v2 = v1;
  v2[1] = v4;
  sub_24DE73FA0(v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v6 = sub_24E0BD618;
  v6[1] = v5;

  return v0;
}

uint64_t sub_24E0BBDCC()
{
  if (GKIsXRUIIdiom())
  {
    return 1;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v0 = [Strong isCollapsed];

  return v0;
}

Swift::Void __swiftcall DashboardSplitViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  [v0 setMinimumPrimaryColumnWidth_];
  [v0 setMaximumPrimaryColumnWidth_];
  OUTLINED_FUNCTION_1_75();
  v2 = sub_24E0BBCAC(&OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___primaryNavigationController, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24E369990;
  OUTLINED_FUNCTION_0_88();
  *(v3 + 32) = sub_24E0BBCAC(v4, v5);
  sub_24DF88A8C(0, &qword_27F1E05B0);
  v6 = sub_24E347EE8();

  [v2 setViewControllers_];

  [v0 setViewController:*&v0[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___primaryNavigationController] forColumn:0];
}

Swift::Void __swiftcall DashboardSplitViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  OUTLINED_FUNCTION_0_88();
  v5 = sub_24E0BBCAC(v3, v4);
  sub_24DFBC038([v1 displayMode]);
}

Swift::Void __swiftcall DashboardSplitViewController.splitViewController(_:willChangeTo:)(UISplitViewController *_, UISplitViewControllerDisplayMode willChangeTo)
{
  v3 = v2;
  OUTLINED_FUNCTION_0_88();
  v6 = sub_24E0BBCAC(&OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___sidebarViewController, v5);
  sub_24DFBC038(willChangeTo);

  v7 = *&v3[OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___sidebarViewController];
  v8 = willChangeTo == UISplitViewControllerDisplayModeOneBesideSecondary;
  v7[OBJC_IVAR____TtC12GameCenterUI30DashboardSidebarViewController_selectionFollowsFocus] = v8;
  v9 = v7;
  sub_24DFB9AE8();

  [v3 setDisplayModeButtonVisibility_];
}

void sub_24E0BC1C8()
{
  v1 = [v0 topViewController];
  if (v1)
  {
    v2 = v1;
    sub_24E0BCE58(v1);
  }
}

uint64_t sub_24E0BC298(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_1_75();
  v7 = sub_24E0BBCAC(v5, v6);
  sub_24E0BC1C8();

  return a3(a1, a2);
}

void sub_24E0BC368(void *a1, char a2, char a3)
{
  v4 = v3;
  [v4 setViewController:a1 forColumn:2];
  if ([v4 displayMode] == 3 && (a3 & 1) != 0)
  {
    [v4 hideColumn_];
  }

  if (a2)
  {
    v8 = [a1 popToRootViewControllerAnimated_];
  }
}

void sub_24E0BC424(unint64_t *a1, uint64_t a2, void *a3, char a4, void *a5, char a6, char a7)
{
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v12 >> 62)
    {
      if (sub_24E348878())
      {
        goto LABEL_4;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      type metadata accessor for CustomNavigationController();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_24DF88A8C(0, &qword_27F1E05B0);
      v16 = v15;
      v17 = sub_24E347EE8();
      [v16 setViewControllers_];

      v18 = DashboardSplitViewController.dismissHandler.getter();
      v19 = &v16[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
      v20 = *&v16[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
      *v19 = v18;
      v19[1] = v21;
      sub_24DE73FA0(v20);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = &v16[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
      *v23 = sub_24E0BD610;
      v23[1] = v22;

      sub_24E2A07FC();
      v24 = OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController_cacheSecondaryNavigationControllers;
      swift_beginAccess();
      v25 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *&v14[v24];
      sub_24E0588D8(v25, v29, isUniquelyReferenced_nonNull_native);
      *&v14[v24] = v28;
      sub_24DF8BE60(v29);
      swift_endAccess();
      if (a6 == -1)
      {
        v27 = 0;
      }

      else
      {
        v27 = sub_24E2A08FC(a3, a4, a5, a6);
      }

      sub_24E0BC368(v25, v27 & 1, a7 & 1);

      goto LABEL_10;
    }

    v25 = v14;
LABEL_10:
  }
}

void *sub_24E0BC670()
{
  if (GKIsXRUIIdiom())
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result isCollapsed];

    return (v2 ^ 1);
  }

  return result;
}

uint64_t sub_24E0BC6E4()
{
  v0 = sub_24E347358();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  v6 = MEMORY[0x277D837D0];
  v5[0] = 0xD000000000000035;
  v5[1] = 0x800000024E3A58B0;
  sub_24E346FE8();
  sub_24DF8C95C(v5, &qword_27F1E0370);
  v6 = MEMORY[0x277D84030];
  v5[0] = swift_allocObject();
  sub_24E2A07FC();
  sub_24E346FE8();
  sub_24DF8C95C(v5, &qword_27F1E0370);
  (*(v1 + 104))(v3, *MEMORY[0x277D21DE8], v0);
  sub_24E0EF428();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E0BC970()
{
  sub_24E0BB45C(*(v0 + OBJC_IVAR____TtC12GameCenterUI28DashboardSplitViewController____lazy_storage___dismissHandler));
}

id sub_24E0BCA68()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 navigationBar];
  [v1 setPrefersLargeTitles_];

  return [v0 setDelegate_];
}

void sub_24E0BCB34(void *a1)
{
  if ((GKIsXRUIIdiom() & 1) != 0 || (sub_24E0BCD8C(a1) & 1) == 0)
  {
    v3 = [objc_opt_self() _gkXmarkedCloseButtonWithTarget_action_];
    if (v3)
    {
      v4 = v3;
      v5 = qword_27F1E3250;
      v6 = off_27F1E3258;

      v17 = v4;
      sub_24DFD8050(v5, v6, v17);
      if (!GKIsXRUIIdiom())
      {
        v15 = [a1 navigationItem];
        v16 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

        [v15 setRightBarButtonItem_];
LABEL_16:

        goto LABEL_17;
      }

      v7 = [objc_opt_self() mainBundle];
      v8 = sub_24E0CFF20(v7);
      v10 = v9;
      v11 = sub_24E347CF8();
      if (!v10)
      {

LABEL_15:
        v15 = [a1 navigationItem];
        v16 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

        [v15 setLeftBarButtonItem_];
        goto LABEL_16;
      }

      if (v8 != v11 || v10 != v12)
      {
        v14 = sub_24E348C08();

        if (v14)
        {

LABEL_17:

          return;
        }

        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_24E0BCD8C(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 customView];

  if (!v3)
  {
    return v3 & 1;
  }

  v4 = sub_24E0BD510(v3);
  if (!v5)
  {
LABEL_9:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (v4 == qword_27F1E3250 && v5 == off_27F1E3258)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v3) = sub_24E348C08();
  }

  return v3 & 1;
}

void sub_24E0BCE58(void *a1)
{
  if (([a1 _gkExtensionWantsCustomRightBarButtonItemInViewService] & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton);

    LOBYTE(v3) = v3(a1);

    if (v3)
    {

      sub_24E0BCB34(a1);
    }

    else if (sub_24E0BCD8C(a1))
    {
      v4 = [a1 navigationItem];
      [v4 setRightBarButtonItem_];
    }
  }
}

void sub_24E0BCFF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

id sub_24E0BD0BC(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v7 = OUTLINED_FUNCTION_0_13;
  v7[1] = 0;
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    v8 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v8 = 0;
  }

  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v8);
}

id sub_24E0BD1D0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v5 = OUTLINED_FUNCTION_0_13;
  v5[1] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithRootViewController_, a1);

  return v6;
}

id sub_24E0BD27C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v8 = OUTLINED_FUNCTION_0_13;
  v8[1] = 0;
  if (a2)
  {
    v9 = sub_24E347CB8();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_24E0BD3A8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v5 = OUTLINED_FUNCTION_0_13;
  v5[1] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_24E0BD510(void *a1)
{
  v2 = [a1 accessibilityIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

unint64_t sub_24E0BD588()
{
  result = qword_27F1DFAD0;
  if (!qword_27F1DFAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E32A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFAD0);
  }

  return result;
}

uint64_t sub_24E0BD668()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E0BD6DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_24E344E68();
}

id sub_24E0BD748(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double a4, double a5, double a6)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  if (!*(a1 + 32))
  {
    v28 = *a2;
    v15 = objc_allocWithZone(v6);
    v14 = sub_24E0BD864(v10, &v28, a4);

    v16 = OUTLINED_FUNCTION_0_89();
    v20 = 0;
LABEL_6:
    sub_24E0BE79C(v16, v17, v18, v19, v20);
    return v14;
  }

  if (*(a1 + 32) != 1)
  {
    v29[1] = *a2;
    v21 = objc_allocWithZone(v6);

    v22 = OUTLINED_FUNCTION_0_89();
    v14 = sub_24E0BDC80(v22, v23, v24, v25, v26, a4);

    v16 = OUTLINED_FUNCTION_0_89();
    v20 = 2;
    goto LABEL_6;
  }

  v29[0] = *a2;
  v12 = objc_allocWithZone(v6);
  return sub_24E0BDA6C(v10, v9, v29, a3, a4, v13, a6);
}

id sub_24E0BD864(void *a1, unsigned __int8 *a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3300);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *a2;
  v15 = OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig__image;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988);
  sub_24E344E28();
  (*(v10 + 32))(&v3[v15], v13, v8);
  swift_beginAccess();
  v16 = *(v10 + 8);
  v17 = a1;
  v16(&v3[v15], v8);
  v27 = a1;
  sub_24E344E28();
  swift_endAccess();
  v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style] = v14;
  v18 = a3;
  if (v14 == 3)
  {
    v19 = OUTLINED_FUNCTION_2_56();
    v18 = v19 / v20;
  }

  v21 = &v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
  *v21 = a3;
  v21[1] = v18;
  *&v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader] = 0;
  v22 = &v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias];
  *v23 = 0;
  v23[1] = 0;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  return v24;
}

id sub_24E0BDA6C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3300);
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  v22 = *a3;
  v23 = OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig__image;
  v35[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988);
  sub_24E344E28();
  (*(v18 + 32))(&v8[v23], v21, v16);
  v24 = a5;
  if (v22 == 3)
  {
    v25 = OUTLINED_FUNCTION_2_56();
    v24 = v25 / v26;
  }

  v35[0] = a1;
  v35[1] = a2;
  v34[0] = 25186;
  v34[1] = 0xE200000000000000;
  v33 = 2;
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  *&v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config] = sub_24E120FD0(v35, v34, &v33, 0, 1, 0, a5, v24, a7);
  *&v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader] = a4;
  v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style] = v22;
  v27 = &v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
  *v27 = a5;
  v27[1] = v24;
  v28 = &v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias];
  *v29 = 0;
  v29[1] = 0;
  v32.receiver = v8;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

id sub_24E0BDC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, double a6)
{
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3300);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &ObjectType - v17;
  LODWORD(a5) = *a5;
  v19 = OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig__image;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988);
  sub_24E344E28();
  (*(v15 + 32))(&v6[v19], v18, v13);
  v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style] = a5;
  v20 = &v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias];
  *v21 = a3;
  v21[1] = a4;
  v22 = a6;
  if (a5 == 3)
  {
    v23 = OUTLINED_FUNCTION_2_56();
    v22 = v23 / v24;
  }

  v25 = &v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
  *v25 = a6;
  v25[1] = v22;
  *&v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config] = 0;
  *&v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader] = 0;
  v28.receiver = v6;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init, ObjectType);
}

uint64_t sub_24E0BDE54()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID + 8);
  if (v2 && (v3 = (v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias), (v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias + 8)) != 0))
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID);
    v6 = *v3;
    v7 = swift_task_alloc();
    v0[3] = v7;
    *v7 = v0;
    v7[1] = sub_24E0BDFC0;

    return sub_24E0BE0B4(v5, v2, v6, v4);
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader) && *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config))
    {

      sub_24E0624E4(v9, 2, 1, v1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24E0BDFC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24E0BE0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  sub_24E348068();
  v5[26] = sub_24E348058();
  v7 = sub_24E347FF8();
  v5[27] = v7;
  v5[28] = v6;

  return MEMORY[0x2822009F8](sub_24E0BE154, v7, v6);
}

uint64_t sub_24E0BE154()
{
  sub_24DF95978();

  v1 = sub_24E1C6A3C();
  v0[29] = v1;
  v2 = sub_24E347CB8();
  [v1 setAlias_];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24E0BE2DC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E1DA3E4;
  v0[13] = &block_descriptor_37;
  v0[14] = v3;
  [v1 playerAvatarImageWithSize:0x10000 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E0BE2DC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_24E0BE3E4, v2, v1);
}

uint64_t sub_24E0BE3E4()
{
  v1 = *(v0 + 232);

  sub_24E0BD6DC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for AsyncArtworkViewConfig()
{
  result = qword_27F1E32E0;
  if (!qword_27F1E32E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0BE5BC()
{
  sub_24E0BE678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E0BE678()
{
  if (!qword_27F1E32F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0988);
    v0 = sub_24E344E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E32F0);
    }
  }
}

unint64_t sub_24E0BE6DC(uint64_t a1)
{
  result = sub_24E0BE704();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E0BE704()
{
  result = qword_27F1E32F8;
  if (!qword_27F1E32F8)
  {
    type metadata accessor for AsyncArtworkViewConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E32F8);
  }

  return result;
}

uint64_t sub_24E0BE75C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_24E344DD8();
  *a1 = result;
  return result;
}

void sub_24E0BE79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      break;
  }
}

uint64_t GKLocalPlayer.loadAuthenticatedProfileWithProfile(discardingStaleData:)(char a1)
{
  *(v2 + 216) = v1;
  *(v2 + 224) = a1;
  v3 = OUTLINED_FUNCTION_6_20();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0BE8B0()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_24E0BE9C8;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1298);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_24E0BEDB0;
  v0[21] = &block_descriptor_38;
  v0[22] = v2;
  [v1 refreshInternalWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E0BE9C8()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0BEA98()
{
  OUTLINED_FUNCTION_29_5();
  if (*(v0 + 208) != 1)
  {
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_24E0BEBFC;
  v3 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3318);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_24E0BF2DC;
  *(v0 + 168) = &block_descriptor_3_0;
  *(v0 + 176) = v3;
  [v1 loadProfileDiscardingStaleData:v2 completionHandler:v0 + 144];
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x282200938]();
}