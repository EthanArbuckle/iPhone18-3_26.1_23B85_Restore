void sub_24E87323C()
{
  sub_24E8738AC(319, &qword_27F21FA20, type metadata accessor for SearchPromptItem, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      sub_24F928818();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E87334C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_24F9289E8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_24F928AD8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_24E87352C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_24F9289E8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_24F928AD8();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_24E8736F8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E8738AC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F9289E8();
          if (v4 <= 0x3F)
          {
            sub_24E6BCB04();
            if (v5 <= 0x3F)
            {
              sub_24F928AD8();
              if (v6 <= 0x3F)
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

uint64_t sub_24E873864(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E8738AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E873910(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E87546C();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158E0);
    sub_24E8754C0(&qword_27F21FA68, &qword_27F21FA70);
    sub_24F92CD48();
    type metadata accessor for SearchSuggestionsResult(0);
    v10[14] = 2;
    sub_24F928AD8();
    sub_24E873864(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
    v10[13] = 3;
    sub_24F928818();
    sub_24E873864(&qword_27F21F898, MEMORY[0x277D21BF8]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E873BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_24F928818();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928AD8();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA40);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v22 - v7;
  v9 = type metadata accessor for SearchSuggestionsResult(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E87546C();
  v30 = v8;
  v12 = v31;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v6;
  v14 = a1;
  v31 = v9;
  v16 = v27;
  v15 = v28;
  v36 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v17;
  v22[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158E0);
  v35 = 1;
  sub_24E8754C0(&qword_27F21FA50, &qword_27F21FA58);
  sub_24F92CC68();
  v11[2] = v32;
  v34 = 2;
  sub_24E873864(&qword_27F254CB0, MEMORY[0x277D21C88]);
  sub_24F92CC68();
  (*(v15 + 32))(v11 + *(v31 + 24), v13, v4);
  v33 = 3;
  sub_24E873864(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
  v18 = v26;
  v22[0] = v11;
  v19 = v25;
  sub_24F92CC68();
  (*(v16 + 8))(v30, v29);
  v20 = v22[0];
  (*(v23 + 32))(v22[0] + *(v31 + 28), v18, v19);
  sub_24E8755B0(v20, v24, type metadata accessor for SearchSuggestionsResult);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24E875618(v20, type metadata accessor for SearchSuggestionsResult);
}

unint64_t sub_24E87414C()
{
  v1 = 1836213620;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7274654D65676170;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E8741C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E876098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E8741F0(uint64_t a1)
{
  v2 = sub_24E87546C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E87422C(uint64_t a1)
{
  v2 = sub_24E87546C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E874298(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6554686372616573;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x654D6E6F69746361;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1852793705;
    if (a1 != 4)
    {
      v3 = 0x5479616C70736964;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E8743C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E87555C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for SearchPromptItem(0);
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24E873864(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F9289E8();
    sub_24E873864(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CD08();
    v8[9] = 6;
    sub_24F92CD08();
    v8[8] = 7;
    sub_24F92CCA8();
    v8[7] = 8;
    sub_24F928AD8();
    sub_24E873864(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E87481C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_24F928AD8();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9289E8();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA78);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = v45 - v12;
  v14 = type metadata accessor for SearchPromptItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v58 = v16 + 40;
  sub_24E61DA68(&v62, (v16 + 40), qword_27F21B590);
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v61 = v17;
  v19(&v16[v17], 1, 1, v18);
  v59 = v14;
  v20 = *(v14 + 28);
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v60 = v20;
  v22(&v16[v20], 1, 1, v21);
  v23 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24E87555C();
  v55 = v13;
  v24 = v57;
  sub_24F92D108();
  if (v24)
  {
    v25 = v58;
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_24E601704(v25, qword_27F24EC90);
    sub_24E601704(&v16[v61], &qword_27F215440);
    sub_24E601704(&v16[v60], &qword_27F213E68);
  }

  else
  {
    v45[1] = v9;
    v57 = v11;
    v45[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v65 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v63;
    *v16 = v62;
    *(v16 + 1) = v26;
    *(v16 + 4) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v65 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v27 = v51;
    sub_24E61DA68(&v62, v58, qword_27F24EC90);
    LOBYTE(v62) = 2;
    sub_24E65CAA0();
    v28 = v57;
    sub_24F92CC68();
    sub_24E61DA68(v28, &v16[v61], &qword_27F215440);
    LOBYTE(v62) = 3;
    sub_24E873864(&qword_27F213F48, MEMORY[0x277D21F70]);
    v29 = v45[0];
    sub_24F92CC18();
    sub_24E61DA68(v29, &v16[v60], &qword_27F213E68);
    LOBYTE(v62) = 4;
    sub_24E873864(&qword_27F214018, MEMORY[0x277D21C48]);
    v30 = v50;
    v31 = v53;
    sub_24F92CC68();
    v32 = v59;
    (*(v52 + 32))(&v16[v59[8]], v30, v31);
    LOBYTE(v62) = 5;
    v33 = sub_24F92CC28();
    v34 = &v16[v32[9]];
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v62) = 6;
    v36 = sub_24F92CC28();
    v37 = &v16[v32[10]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v62) = 7;
    v39 = sub_24F92CBC8();
    v40 = &v16[v59[11]];
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v62) = 8;
    sub_24E873864(&qword_27F254CB0, MEMORY[0x277D21C88]);
    v42 = v48;
    v43 = v49;
    sub_24F92CC68();
    (*(v27 + 8))(v55, v54);
    (*(v46 + 32))(&v16[v59[12]], v43, v42);
    sub_24E8755B0(v16, v47, type metadata accessor for SearchPromptItem);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_24E875618(v16, type metadata accessor for SearchPromptItem);
  }
}

uint64_t sub_24E875294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E876204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E8752BC(uint64_t a1)
{
  v2 = sub_24E87555C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8752F8(uint64_t a1)
{
  v2 = sub_24E87555C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E875334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

unint64_t sub_24E87546C()
{
  result = qword_27F21FA48;
  if (!qword_27F21FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FA48);
  }

  return result;
}

uint64_t sub_24E8754C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158E0);
    sub_24E873864(a2, type metadata accessor for SearchPromptItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E87555C()
{
  result = qword_27F21FA80;
  if (!qword_27F21FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FA80);
  }

  return result;
}

uint64_t sub_24E8755B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E875618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E8756AC()
{
  result = qword_27F21FA90;
  if (!qword_27F21FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FA90);
  }

  return result;
}

unint64_t sub_24E875704()
{
  result = qword_27F21FA98;
  if (!qword_27F21FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FA98);
  }

  return result;
}

uint64_t sub_24E8757A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v41 - v10;
  v11 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_24F91F008();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for SearchPromptItem(0);

  sub_24F91F0B8();
  sub_24F91F018();
  v19 = (a1 + *(v18 + 44));
  v20 = v19[1];
  if (v20)
  {
    v48[0] = *v19;
    v48[1] = v20;
    v21 = sub_24F91F7C8();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_24E873864(&qword_27F22D320, MEMORY[0x277CC8C40]);
    sub_24E600AEC();
    sub_24F91F2D8();
    sub_24E601704(v5, &qword_27F21FAD8);
    if ((*(v43 + 48))(v8, 1, v44) == 1)
    {
      v22 = &qword_27F21FAE0;
      v23 = v8;
    }

    else
    {
      v24 = v42;
      sub_24E6009C8(v8, v42, &qword_27F22D330);
      v25 = sub_24F926D18();
      sub_24E602068(&qword_27F22D340, &qword_27F22D330);
      v26 = sub_24F91F048();
      v47 = v25;
      sub_24E876600();
      sub_24F91F148();
      v26(v48, 0);
      v23 = v24;
      v22 = &qword_27F22D330;
    }

    sub_24E601704(v23, v22);
  }

  (*(v45 + 32))(v17, v14, v12);
  v27 = sub_24F925DF8();
  v29 = v28;
  v31 = v30;
  if (v20)
  {
    sub_24F926D38();
  }

  else
  {
    sub_24F926D18();
  }

  v32 = sub_24F925C48();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_24E600B40(v27, v29, v31 & 1);

  v40 = v46;
  *v46 = v32;
  v40[1] = v34;
  *(v40 + 16) = v36 & 1;
  v40[3] = v38;
  return result;
}

uint64_t sub_24E875CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SearchPromptItem(0) + 32);
  v5 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  v7 = sub_24F9289E8();
  (*(*(v7 - 8) + 16))(a2, a1 + v4, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAC8);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

uint64_t sub_24E875D54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAC8);
  sub_24E876510();
  return sub_24F926EA8();
}

uint64_t sub_24E875DF0()
{
  sub_24E66B688();

  return sub_24F9218E8();
}

unint64_t sub_24E875E38()
{
  result = qword_27F21FAA0;
  if (!qword_27F21FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAA0);
  }

  return result;
}

unint64_t sub_24E875F3C()
{
  result = qword_27F21FAA8;
  if (!qword_27F21FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAA8);
  }

  return result;
}

unint64_t sub_24E875F94()
{
  result = qword_27F21FAB0;
  if (!qword_27F21FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAB0);
  }

  return result;
}

unint64_t sub_24E875FEC()
{
  result = qword_27F21FAB8;
  if (!qword_27F21FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAB8);
  }

  return result;
}

unint64_t sub_24E876044()
{
  result = qword_27F21FAC0;
  if (!qword_27F21FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAC0);
  }

  return result;
}

uint64_t sub_24E876098(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA48790 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24E876204(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB000000006D7265 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA487B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_24E876510()
{
  result = qword_27F21FAD0;
  if (!qword_27F21FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FAC8);
    sub_24E873864(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAD0);
  }

  return result;
}

unint64_t sub_24E876600()
{
  result = qword_27F21FAE8;
  if (!qword_27F21FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FAE8);
  }

  return result;
}

unint64_t OverlayHighlightsShelfConstructionIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v7 = v1[2];
  v6 = v1[3];
  v8 = MEMORY[0x277D222B0];
  *(inited + 128) = MEMORY[0x277D222B8];
  *(inited + 136) = v8;
  v9 = swift_allocObject();
  *(inited + 104) = v9;
  v9[5] = MEMORY[0x277D837D0];
  v9[6] = v5;
  v9[2] = v7;
  v9[3] = v6;
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v10 = *(type metadata accessor for OverlayHighlightsShelfConstructionIntent() + 24);
  *(inited + 184) = MEMORY[0x277D222B8];
  *(inited + 192) = v8;
  v11 = swift_allocObject();
  *(inited + 160) = v11;
  v11[5] = type metadata accessor for Player(0);
  v11[6] = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  sub_24E876E54(v1 + v10, boxed_opaque_existential_1, type metadata accessor for Player);

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24E8768E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for OverlayHighlightsShelfConstructionIntent()
{
  result = qword_27F21FB10;
  if (!qword_27F21FB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E87696C()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E8769C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E877224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E8769E8(uint64_t a1)
{
  v2 = sub_24E876E00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E876A24(uint64_t a1)
{
  v2 = sub_24E876E00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayHighlightsShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB00);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for OverlayHighlightsShelfConstructionIntent();
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E876E00();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v13 = v23;
  v12 = v24;
  v27 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v15;
  v25 = 2;
  sub_24E61C064(&qword_27F213E38);
  v19 = v11;
  sub_24F92CC68();
  (*(v13 + 8))(v8, v12);
  v16 = *(v9 + 24);
  v17 = v19;
  sub_24E61C0A8(v5, v19 + v16);
  sub_24E876E54(v17, v21, type metadata accessor for OverlayHighlightsShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_24E876EBC(v17);
}

unint64_t sub_24E876E00()
{
  result = qword_27F21FB08;
  if (!qword_27F21FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FB08);
  }

  return result;
}

uint64_t sub_24E876E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E876EBC(uint64_t a1)
{
  v2 = type metadata accessor for OverlayHighlightsShelfConstructionIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E876F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E876FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E877090()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E877120()
{
  result = qword_27F21FB20;
  if (!qword_27F21FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FB20);
  }

  return result;
}

unint64_t sub_24E877178()
{
  result = qword_27F21FB28;
  if (!qword_27F21FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FB28);
  }

  return result;
}

unint64_t sub_24E8771D0()
{
  result = qword_27F21FB30;
  if (!qword_27F21FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FB30);
  }

  return result;
}

uint64_t sub_24E877224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24E877348(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for ChallengesPlayerPickerPageInfo();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_24E877530(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for GameActivityCustomizePlayersRowView()
{
  result = qword_27F21FB38;
  if (!qword_27F21FB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E877750()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E8778B4(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo);
    if (v1 <= 0x3F)
    {
      sub_24E6D5010(319, &qword_27F2182A8);
      if (v2 <= 0x3F)
      {
        sub_24E6D5010(319, &qword_27F218170);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ChallengesPlayerPickerPageInfo();
          if (v4 <= 0x3F)
          {
            sub_24E6CFC68();
            if (v5 <= 0x3F)
            {
              sub_24E8778B4(319, &unk_27F212758, type metadata accessor for PlayTogetherReviewMetricsInfo);
              if (v6 <= 0x3F)
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

void sub_24E8778B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E877924@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v19 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameActivityCustomizePlayersRowView();
  sub_24E60169C(v1 + *(v13 + 48), v8, &unk_27F212718);
  v14 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_24E601704(v8, &unk_27F212718);
    return sub_24F928A98();
  }

  else
  {
    sub_24E60169C(v1 + *(v13 + 20), v5, &qword_27F212B28);
    v16 = type metadata accessor for GameActivityDraftGameInfo(0);
    if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
    {
      sub_24E601704(v5, &qword_27F212B28);
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = *v5;
      v18 = v5[1];

      sub_24E87C040(v5, type metadata accessor for GameActivityDraftGameInfo);
    }

    sub_24EDA5FB8(v17, v18, v12);

    sub_24E87C040(v8, type metadata accessor for PlayTogetherReviewMetricsInfo);
    return (*(v10 + 32))(a1, v12, v9);
  }
}

uint64_t sub_24E877C10@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v126 = sub_24F929888();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v123 = &v102 - v4;
  v121 = sub_24F9241F8();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GameActivityCustomizePlayersRowView();
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v107 = v7;
  v108 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24F91F6B8();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v102 - v10;
  v131 = sub_24F928AD8();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v102 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB50);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB58);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v102 - v21;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB60);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v102 - v22;
  v23 = sub_24F9232F8();
  v24 = *(*(v23 - 8) + 56);
  v109 = v19;
  v24(v19, 1, 1, v23);
  if (qword_27F211188 != -1)
  {
    swift_once();
  }

  sub_24E65864C(&unk_27F39E438, &v134);
  v128 = v16;
  sub_24E877924(v16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB68);
  v127 = swift_allocBox();
  v27 = v26;
  v28 = v25[12];
  v29 = v25[16];
  v30._countAndFlagsBits = 0xD00000000000002DLL;
  v30._object = 0x800000024FA487D0;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  *v27 = localizedString(_:comment:)(v30, v31);
  v132 = v6;
  v32 = *(v6 + 32);
  v133 = v1;
  v33 = v1 + v32;
  v34 = sub_24F92A708();
  (*(*(v34 - 8) + 16))(v27 + v28, v33, v34);
  *(&v27->_countAndFlagsBits + v29) = MEMORY[0x277D84F90];
  sub_24F928A98();
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  v105 = v11;
  if (byte_27F39D1B1 == 1)
  {
    sub_24F92A698();
  }

  else
  {
    sub_24F92A678();
  }

  v35 = v27 + v25[20];
  v36 = v25[24];
  v37 = v25[28];
  v38 = v25[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB70);
  *(&v148 + 1) = sub_24F92A6B8();
  v149 = MEMORY[0x277D223D8];
  __swift_allocate_boxed_opaque_existential_1(&v147);
  sub_24F92A668();
  sub_24E612C80(&v147, v35);
  sub_24F928A98();
  type metadata accessor for ChallengesPlayerPickerMode(0);
  swift_storeEnumTagMultiPayload();
  v39 = v132;
  v40 = v133;
  sub_24E60169C(v133 + *(v132 + 40), v27 + v36, &qword_27F2169E8);
  sub_24E60169C(v40 + *(v39 + 44), v27 + v37, &qword_27F2169E8);
  v41 = *(type metadata accessor for ChallengesPlayerPickerPageInfo() + 20);
  v42 = sub_24F928818();
  (*(*(v42 - 8) + 16))(v27 + v38, v33 + v41, v42);
  if (byte_27F39D1B1 == 1)
  {
    v43 = sub_24F929D18();
  }

  else
  {
    v43 = sub_24F929D08();
  }

  v45 = v43;
  v46 = v44;
  v47 = v105;
  v48 = v127 | 0x4000000000000004;
  sub_24E60169C(&v134, &v147, &qword_27F235830);
  v49 = sub_24F91F4A8();
  (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
  v146[3] = &type metadata for FlowDestination;
  v146[0] = v48;
  v50 = *(v130 + 16);
  v51 = v129;
  v52 = v131;
  v50(v129, v128, v131);
  v53 = type metadata accessor for FlowAction();
  v54 = swift_allocObject();
  *(v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v55 = v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  *(v55 + 32) = 0;
  v56 = (v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v56 = 0;
  v56[1] = 0;
  *(v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  sub_24E60169C(v47, v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v57 = (v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v57 = 0;
  v57[1] = 0;
  v58 = v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v58 = xmmword_24F9406F0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *(v58 + 16) = 0;
  *(v58 + 40) = 0;
  *(v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v59 = (v54 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v59 = v45;
  v59[1] = v46;
  sub_24E60169C(&v147, v145, &qword_27F235830);
  v50((v54 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v51, v52);
  v60 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v61 = sub_24F929608();
  (*(*(v61 - 8) + 56))(v54 + v60, 1, 1, v61);
  v62 = (v54 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v62 = 0u;
  v62[1] = 0u;
  v63 = v54 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v145, &v142, &qword_27F235830);
  if (*(&v143 + 1))
  {
    v64 = v143;
    *v63 = v142;
    *(v63 + 16) = v64;
    *(v63 + 32) = v144;
  }

  else
  {
    v65 = v102;
    sub_24F91F6A8();
    v66 = sub_24F91F668();
    v68 = v67;
    (*(v103 + 8))(v65, v104);
    v140 = v66;
    v141 = v68;
    sub_24F92C7F8();
    sub_24E601704(&v142, &qword_27F235830);
  }

  sub_24E601704(v145, &qword_27F235830);
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0u;

  FlowAction.setPageData(_:)(v146);

  v69 = *(v130 + 8);
  v70 = v131;
  v69(v128, v131);
  sub_24E601704(&v134, &qword_27F235830);
  v69(v129, v70);
  sub_24E601704(v47, &qword_27F228530);
  sub_24E601704(&v147, &qword_27F235830);
  sub_24E601704(v146, &qword_27F2129B0);
  *(&v148 + 1) = v53;
  v149 = sub_24E87BF08(&qword_27F216400, type metadata accessor for FlowAction);
  *&v147 = v54;
  v71 = v108;
  sub_24E87B210(v133, v108);
  v72 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v73 = swift_allocObject();
  sub_24E87BF68(v71, v73 + v72, type metadata accessor for GameActivityCustomizePlayersRowView);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB78);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB80);
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB88);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB90);
  v78 = sub_24E87BB10();
  v79 = sub_24E6A4C1C();
  *&v134 = &type metadata for GameOverlayViewPredicate;
  *(&v134 + 1) = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = sub_24E602068(&qword_27F21FBF0, &qword_27F21FB88);
  *&v134 = v74;
  *(&v134 + 1) = v78;
  v82 = swift_getOpaqueTypeConformance2();
  *&v134 = v74;
  *(&v134 + 1) = v75;
  *&v135 = v76;
  *(&v135 + 1) = v77;
  v136 = v78;
  v137 = OpaqueTypeConformance2;
  v138 = v81;
  v139 = v82;
  swift_getOpaqueTypeConformance2();
  v83 = v110;
  sub_24F921788();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBF8);
  v85 = sub_24E602068(&qword_27F21FC00, &qword_27F21FB50);
  v101 = sub_24E87BDC4();
  v86 = v113;
  v87 = v112;
  sub_24F926B08();
  (*(v111 + 8))(v83, v87);
  v88 = v119;
  sub_24F9241E8();
  *&v134 = v87;
  *(&v134 + 1) = &type metadata for GameOverlayViewPredicate;
  *&v135 = v84;
  *(&v135 + 1) = v85;
  v136 = v79;
  v137 = v101;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_24E87BF08(&qword_27F212838, MEMORY[0x277CDDB18]);
  v91 = v115;
  v92 = v116;
  v93 = v121;
  sub_24F926178();
  (*(v120 + 8))(v88, v93);
  (*(v114 + 8))(v86, v92);
  v135 = 0u;
  v134 = 0u;
  v147 = 0u;
  v148 = 0u;
  v94 = v122;
  sub_24F9297C8();
  sub_24E601704(&v147, &qword_27F2129B0);
  sub_24E601704(&v134, &qword_27F2129B0);
  v95 = *(*(v133 + *(v132 + 24)) + 16);
  *(&v135 + 1) = MEMORY[0x277D83B88];
  *&v134 = v95;
  v96 = v123;
  sub_24F929868();
  v97 = *(v124 + 8);
  v98 = v126;
  v97(v94, v126);
  sub_24E601704(&v134, &qword_27F2129B0);
  *&v134 = v92;
  *(&v134 + 1) = v93;
  *&v135 = v89;
  *(&v135 + 1) = v90;
  swift_getOpaqueTypeConformance2();
  v99 = v118;
  sub_24F925EE8();
  v97(v96, v98);
  return (*(v117 + 8))(v91, v99);
}

uint64_t sub_24E878EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB80);
  MEMORY[0x28223BE20](v57);
  v8 = &v55 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC38);
  sub_24E8793D8(a1, &v8[*(v9 + 44)]);
  v10 = sub_24F9257F8();
  sub_24F923318();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBC8) + 36)];
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  v20 = sub_24F925868();
  sub_24F923318();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBB8) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v55 = sub_24F927618();
  v31 = v30;
  v32 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBA8) + 36)];
  v33 = sub_24F926C98();
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC40) + 36);
  sub_24F927438();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48);
  v36 = &v34[*(v35 + 52)];
  v37 = *(sub_24F924258() + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24F924B38();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #20.0 }

  *v36 = _Q0;
  *&v34[*(v35 + 56)] = 256;
  *v32 = v33;
  KeyPath = swift_getKeyPath();
  v46 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC50) + 36));
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v48 = *MEMORY[0x277CDF3C0];
  v49 = sub_24F9234D8();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = KeyPath;
  v50 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBE8) + 36));
  *v50 = v55;
  v50[1] = v31;
  v51 = sub_24E6A4C1C();
  sub_24F924B68();
  v61 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB90);
  v52 = sub_24E87BB10();
  v62 = &type metadata for GameOverlayViewPredicate;
  v63 = v51;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F21FBF0, &qword_27F21FB88);
  v62 = v57;
  v63 = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v58;
  sub_24F926AF8();
  (*(v59 + 8))(v6, v53);
  return sub_24E601704(v8, &qword_27F21FB80);
}

uint64_t sub_24E8793D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v113 = sub_24F91EAA8();
  v98 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC58);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = (&v96 - v7);
  v8 = type metadata accessor for PlayerAvatar(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v111 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v96 - v14;
  v99 = type metadata accessor for PlayerGroupView();
  MEMORY[0x28223BE20](v99);
  v102 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC60);
  MEMORY[0x28223BE20](v101);
  v104 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = &v96 - v19;
  MEMORY[0x28223BE20](v20);
  v103 = &v96 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E010);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v120 = *(v9 + 72);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24F93DE60;
  v119 = v22;
  v110 = v23;
  v24 = (v23 + v22);
  v25 = a1;
  v27 = *(a1 + 16);
  v26 = *(a1 + 24);
  v28 = type metadata accessor for PlayerAvatar.Overlay(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v30(v15, 1, 1, v28);
  *&v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v32 = *(v8 + 20);
  v117 = v30;
  v118 = v28;
  v116 = v31;
  v30(&v24[v32], 1, 1, v28);
  v122 = v8;
  v33 = &v24[*(v8 + 24)];
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0;

  sub_24E61DA68(&v124, v33, qword_27F21B590);
  *v24 = v27;
  *(v24 + 1) = v26;
  v121 = v15;
  sub_24E61DA68(v15, &v24[v32], &qword_27F22DF80);
  sub_24E61DA68(&v127, v33, qword_27F21B590);
  v34 = type metadata accessor for GameActivityCustomizePlayersRowView();
  v35 = *(v34 + 24);
  v109 = v25;
  v36 = *(v25 + v35);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x277D84F90];
  v108 = v34;
  if (v37)
  {
    v123 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v37, 0);
    v39 = (v36 + 72);
    v38 = v123;
    v40 = v115;
    v41 = v121;
    do
    {
      v115 = v37;
      v42 = *v39;
      v114 = *(v39 - 1);
      v43 = v117;
      v44 = v118;
      v117(v41, 1, 1, v118);
      *&v129 = 0;
      v127 = 0u;
      v128 = 0u;
      v45 = v122;
      v46 = *(v122 + 20);
      v43(&v40[v46], 1, 1, v44);
      v47 = &v40[*(v45 + 24)];
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 32) = 0;

      sub_24E61DA68(&v124, v47, qword_27F21B590);
      *v40 = v114;
      *(v40 + 1) = v42;
      sub_24E61DA68(v41, &v40[v46], &qword_27F22DF80);
      sub_24E61DA68(&v127, v47, qword_27F21B590);
      v123 = v38;
      v49 = *(v38 + 16);
      v48 = *(v38 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_24F457BF8(v48 > 1, v49 + 1, 1);
        v38 = v123;
      }

      *(v38 + 16) = v49 + 1;
      sub_24E87BF68(v40, v38 + v119 + v49 * v120, type metadata accessor for PlayerAvatar);
      v39 += 9;
      v37 = (v115 - 1);
    }

    while (v115 != 1);
    v50 = v108;
  }

  else
  {
    v50 = v34;
  }

  *&v127 = v110;
  sub_24EA0ABB4(v38);
  v51 = v127;
  v52 = *(v109 + *(v50 + 28));
  v53 = *(v52 + 16);
  v54 = MEMORY[0x277D84F90];
  if (v53)
  {
    v97 = v127;
    v123 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v53, 0);
    v110 = (v98 + 8);
    v55 = (v52 + 40);
    v54 = v123;
    do
    {
      v114 = v54;
      v115 = v53;
      v56 = *(v55 - 1);
      v57 = *v55;
      *&v127 = v56;
      *(&v127 + 1) = v57;

      v58 = v112;
      sub_24F91EA28();
      sub_24E600AEC();
      v59 = sub_24F92C578();
      v61 = v60;
      (*v110)(v58, v113);
      if (!v61)
      {

        v59 = v56;
        v61 = v57;
      }

      *&v127 = 0x3A746361746E6F63;
      *(&v127 + 1) = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v59, v61);

      v62 = v127;
      v63 = v121;
      v65 = v117;
      v64 = v118;
      v117(v121, 1, 1, v118);
      *&v129 = 0;
      v127 = 0u;
      v128 = 0u;
      v66 = v122;
      v67 = *(v122 + 20);
      v68 = v111;
      v65(&v111[v67], 1, 1, v64);
      v69 = v68 + *(v66 + 24);
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      *v69 = 0u;
      *(v69 + 16) = 0u;
      *(v69 + 32) = 0;
      sub_24E61DA68(&v124, v69, qword_27F21B590);
      *v68 = v62;
      sub_24E61DA68(v63, v68 + v67, &qword_27F22DF80);
      sub_24E61DA68(&v127, v69, qword_27F21B590);
      v54 = v114;
      v123 = v114;
      v71 = *(v114 + 16);
      v70 = *(v114 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_24F457BF8(v70 > 1, v71 + 1, 1);
        v54 = v123;
      }

      *(v54 + 16) = v71 + 1;
      sub_24E87BF68(v68, v54 + v119 + v71 * v120, type metadata accessor for PlayerAvatar);
      v55 += 2;
      v53 = (v115 - 1);
    }

    while (v115 != 1);
    v51 = v97;
  }

  *&v127 = v51;
  sub_24EA0ABB4(v54);
  v72 = v127;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v73 = sub_24F926D08();

  v74 = v99;
  v75 = *(v99 + 24);
  v76 = *MEMORY[0x277CE13D8];
  v77 = sub_24F927748();
  v78 = v102;
  (*(*(v77 - 8) + 104))(&v102[v75], v76, v77);
  *(v78 + *(v74 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
  *(v78 + *(v74 + 32)) = 7;
  *v78 = v72;
  v78[1] = v73;
  v79 = v109;
  sub_24F927618();
  sub_24F9238C8();
  v80 = v100;
  sub_24E87BF68(v78, v100, type metadata accessor for PlayerGroupView);
  v81 = (v80 + *(v101 + 36));
  v82 = v128;
  *v81 = v127;
  v81[1] = v82;
  v81[2] = v129;
  v83 = v80;
  v84 = v103;
  sub_24E87BFD0(v83, v103);
  v85 = sub_24F924C98();
  v86 = v105;
  *v105 = v85;
  *(v86 + 8) = 0;
  *(v86 + 16) = 1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC68);
  sub_24E879FCC(v79, v86 + *(v87 + 44));
  v88 = sub_24F926DF8();
  v89 = v104;
  sub_24E60169C(v84, v104, &qword_27F21FC60);
  v90 = v106;
  sub_24E60169C(v86, v106, &qword_27F21FC58);
  v91 = v107;
  sub_24E60169C(v89, v107, &qword_27F21FC60);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC70);
  sub_24E60169C(v90, v91 + v92[12], &qword_27F21FC58);
  v93 = v91 + v92[16];
  *v93 = 0;
  *(v93 + 8) = 1;
  v94 = v92[20];

  sub_24E601704(v86, &qword_27F21FC58);
  sub_24E601704(v84, &qword_27F21FC60);
  *(v91 + v94) = v88;

  sub_24E601704(v90, &qword_27F21FC58);
  return sub_24E601704(v89, &qword_27F21FC60);
}

uint64_t sub_24E879FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - v7;
  if (qword_27F2114F0 != -1)
  {
    swift_once();
  }

  v65 = qword_27F39EAA8;
  v66 = unk_27F39EAB0;
  v8 = sub_24E600AEC();

  v57 = v8;
  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  LODWORD(v65) = sub_24F9251C8();
  v14 = sub_24F925C58();
  v16 = v15;
  v18 = v17;
  sub_24E600B40(v9, v11, v13 & 1);

  sub_24F925A18();
  v19 = sub_24F925C98();
  v58 = v20;
  v59 = v19;
  v56 = v21;
  v60 = v22;

  sub_24E600B40(v14, v16, v18 & 1);

  v23 = type metadata accessor for GameActivityCustomizePlayersRowView();
  v24 = *(a1 + *(v23 + 24));
  v25 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v55 = a1;
    v65 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v25, 0);
    v26 = v65;
    v27 = (v24 + 56);
    do
    {
      v29 = *(v27 - 1);
      v28 = *v27;
      v65 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_24F4578E0((v30 > 1), v31 + 1, 1);
        v26 = v65;
      }

      *(v26 + 16) = v31 + 1;
      v32 = v26 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v27 += 9;
      --v25;
    }

    while (v25);
    a1 = v55;
  }

  v33 = *(a1 + *(v23 + 28));
  v34 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v35 = sub_24F31ADC0(v26, v33, v34);
  v37 = v36;

  v65 = v35;
  v66 = v37;
  v38 = sub_24F925E18();
  v40 = v39;
  v65 = v38;
  v66 = v39;
  v42 = v41 & 1;
  v67 = v41 & 1;
  v68 = v43;
  v44 = v64;
  sub_24F9268B8();
  sub_24E600B40(v38, v40, v42);

  v46 = v61;
  v45 = v62;
  v47 = *(v62 + 16);
  v48 = v63;
  v47(v61, v44, v63);
  v49 = v58;
  v50 = v59;
  *a2 = v59;
  *(a2 + 8) = v49;
  v51 = v56 & 1;
  *(a2 + 16) = v56 & 1;
  *(a2 + 24) = v60;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21FC78);
  v47((a2 + *(v52 + 48)), v46, v48);
  sub_24E5FD138(v50, v49, v51);
  v53 = *(v45 + 8);

  v53(v64, v48);
  v53(v46, v48);
  sub_24E600B40(v50, v49, v51);
}

uint64_t sub_24E87A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a2 + *(type metadata accessor for GameActivityCustomizePlayersRowView() + 52));
  sub_24E60169C(a1, a3, &qword_27F21FB80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB88);
  v7 = (a3 + *(v6 + 36));
  v8 = v5[1];
  *v7 = *v5;
  v7[1] = v8;
  v9 = a3 + *(v6 + 40);
  result = sub_24F923398();
  *v9 = result & 1;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12 & 1;
  return result;
}

uint64_t sub_24E87A4A8()
{
  v0 = sub_24F9248C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9248B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB80);
  sub_24E87BB10();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E87A5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924258();
  v33[3] = v4;
  v33[4] = sub_24E87BF08(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v6 = *(v4 + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_24F924B38();
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_1 + v6, v7, v8);
  __asm { FMOV            V0.2D, #20.0 }

  *boxed_opaque_existential_1 = _Q0;
  sub_24E60169C(v33, a2, &qword_27F21FC30);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC28);
  v15 = v14[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB50);
  (*(*(v16 - 8) + 16))(a2 + v15, a1, v16);
  v17 = a2 + v14[10];
  *v17 = sub_24F923398() & 1;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19 & 1;
  v20 = a2 + v14[11];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v21 = qword_27F24E488;
  v22 = sub_24F923398();
  v24 = v23;
  v26 = v25;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC18) + 36);
  *v27 = v21;
  *(v27 + 8) = v22 & 1;
  *(v27 + 16) = v24;
  *(v27 + 24) = v26 & 1;
  LOBYTE(v21) = sub_24F923398();
  v29 = v28;
  LOBYTE(v24) = v30;
  sub_24E601704(v33, &qword_27F21FC30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBF8);
  v32 = a2 + *(result + 36);
  *v32 = v21 & 1;
  *(v32 + 8) = v29;
  *(v32 + 16) = v24 & 1;
  return result;
}

uint64_t sub_24E87A82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v2 = *(a1 + 16);
  v75 = a1;
  v83 = v2;
  v4 = sub_24F924038();
  v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = v56 - v5;
  v82 = *(a1 + 24);
  v98 = v82;
  v99 = MEMORY[0x277CDF918];
  v86 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v93 = v4;
  v94 = WitnessTable;
  v73 = v4;
  v7 = WitnessTable;
  v74 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v72 = v56 - v9;
  v93 = v4;
  v94 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v94 = OpaqueTypeConformance2;
  v11 = OpaqueTypeConformance2;
  v69 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v67 = v56 - v13;
  v93 = OpaqueTypeMetadata2;
  v94 = v11;
  v14 = swift_getOpaqueTypeConformance2();
  v93 = v12;
  v94 = v14;
  v57 = v12;
  v15 = v14;
  v58 = v14;
  v70 = swift_getOpaqueTypeMetadata2();
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = v56 - v16;
  v17 = sub_24F924038();
  v77 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v65 = v56 - v18;
  v19 = sub_24F924B38();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  v23 = sub_24F924038();
  v71 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v63 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v66 = v56 - v27;
  (*(v20 + 104))(v22, *MEMORY[0x277CE0118], v19, v26);
  v28 = sub_24F924258();
  v96 = v28;
  v97 = sub_24E87BF08(&qword_27F212868, MEMORY[0x277CDFC08]);
  v29 = __swift_allocate_boxed_opaque_existential_1(&v93);
  (*(v20 + 16))(v29 + *(v28 + 20), v22, v19);
  __asm { FMOV            V0.2D, #20.0 }

  *v29 = _Q0;
  (*(v20 + 8))(v22, v19);
  v89 = v12;
  v90 = v15;
  v61 = swift_getOpaqueTypeConformance2();
  v91 = v61;
  v92 = MEMORY[0x277CDF918];
  v62 = swift_getWitnessTable();
  sub_24F76A54C(&v93, 2.0);
  v60 = v35;
  v59 = v36;
  v37 = v80 + *(v75 + 40);
  v38 = *(v37 + 8);
  LOBYTE(v19) = *(v37 + 16);
  LOBYTE(v93) = *v37;
  LOBYTE(v15) = v93;
  v94 = v38;
  v95 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923328();
  v56[1] = v89;
  v39 = v81;
  sub_24F926A38();
  v40 = v72;
  v41 = v73;
  sub_24F926B78();
  (*(v84 + 8))(v39, v41);
  v42 = v67;
  v43 = v68;
  sub_24F926608();
  (*(v79 + 8))(v40, v43);
  LOBYTE(v93) = v15;
  v94 = v38;
  v95 = v19;
  sub_24F923348();
  v44 = v64;
  v45 = v57;
  sub_24F9269C8();

  (*(v78 + 8))(v42, v45);
  v46 = v65;
  v47 = v70;
  sub_24F926A38();
  (*(v76 + 8))(v44, v47);
  v48 = v63;
  v49 = v62;
  sub_24F76A678();

  (*(v77 + 8))(v46, v17);
  v50 = sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  v87 = v49;
  v88 = v50;
  v51 = swift_getWitnessTable();
  v52 = v66;
  v53 = v48;
  sub_24E7896B8(v48, v23, v51);
  v54 = *(v71 + 8);
  v54(v53, v23);
  sub_24E7896B8(v52, v23, v51);
  return (v54)(v52, v23);
}

uint64_t sub_24E87B210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityCustomizePlayersRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E87B274()
{
  v1 = type metadata accessor for GameActivityCustomizePlayersRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v39 = *(v6 - 8);
  v40 = *(v39 + 8);
  v41 = v6;
  v40(v3 + v5);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v39 + 48))(v7 + v11, 1, v41))
      {
        (v40)(v7 + v11, v41);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v39 + 48))(v12 + v13, 1, v41))
      {
        (v40)(v12 + v13, v41);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    (v40)(v14 + v16[18], v41);
    v17 = v16[19];
    if (!(*(v39 + 48))(v14 + v17, 1, v41))
    {
      (v40)(v14 + v17, v41);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    (v40)(v21 + v23[18], v41);
    v24 = v23[19];
    if (!(*(v39 + 48))(v21 + v24, 1, v41))
    {
      (v40)(v21 + v24, v41);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v3 + v1[5];
  v29 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {

    (v40)(v28 + *(v29 + 28), v41);
  }

  v30 = v3 + v1[8];
  v31 = sub_24F92A708();
  (*(*(v31 - 8) + 8))(v30, v31);
  v32 = *(type metadata accessor for ChallengesPlayerPickerPageInfo() + 20);
  v33 = sub_24F928818();
  (*(*(v33 - 8) + 8))(v30 + v32, v33);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[11]);
  v34 = v3 + v1[12];
  v35 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v36 = *(v35 + 20);
    v37 = sub_24F928698();
    (*(*(v37 - 8) + 8))(v34 + v36, v37);
  }

  return swift_deallocObject();
}

uint64_t sub_24E87BAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GameActivityCustomizePlayersRowView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E878EC8(v4, a1);
}

unint64_t sub_24E87BB10()
{
  result = qword_27F21FB98;
  if (!qword_27F21FB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB80);
    sub_24E87BBC8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FB98);
  }

  return result;
}

unint64_t sub_24E87BBC8()
{
  result = qword_27F21FBA0;
  if (!qword_27F21FBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FBA8);
    sub_24E87BC80();
    sub_24E602068(&qword_27F21FBE0, &qword_27F21FBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FBA0);
  }

  return result;
}

unint64_t sub_24E87BC80()
{
  result = qword_27F21FBB0;
  if (!qword_27F21FBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FBB8);
    sub_24E87BD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FBB0);
  }

  return result;
}

unint64_t sub_24E87BD0C()
{
  result = qword_27F21FBC0;
  if (!qword_27F21FBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FBC8);
    sub_24E602068(&qword_27F21FBD0, &qword_27F21FBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FBC0);
  }

  return result;
}

unint64_t sub_24E87BDC4()
{
  result = qword_27F21FC08;
  if (!qword_27F21FC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FBF8);
    sub_24E87BE50();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FC08);
  }

  return result;
}

unint64_t sub_24E87BE50()
{
  result = qword_27F21FC10;
  if (!qword_27F21FC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FC18);
    sub_24E602068(&qword_27F21FC20, &qword_27F21FC28);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FC10);
  }

  return result;
}

uint64_t sub_24E87BF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E87BF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E87BFD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E87C040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24E87C0A0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_24E65E73C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24E87C130(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

void sub_24E87C2A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v18 + 16) = 0;
          *v18 = a2 - 0x7FFFFFFF;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 8) = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24E87C4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB58);
  sub_24F9241F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FB50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FBF8);
  sub_24E602068(&qword_27F21FC00, &qword_27F21FB50);
  sub_24E6A4C1C();
  sub_24E87BDC4();
  swift_getOpaqueTypeConformance2();
  sub_24E87BF08(&qword_27F212838, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E87C69C()
{
  sub_24F924038();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  return swift_getWitnessTable();
}

uint64_t sub_24E87C898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FDA8);
  __swift_allocate_value_buffer(v0, qword_27F21FD10);
  __swift_project_value_buffer(v0, qword_27F21FD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FDB0);
  sub_24E87D2B4();
  return sub_24F922CB8();
}

void *sub_24E87C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F20FFA8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FDA8);
  __swift_project_value_buffer(v4, qword_27F21FD10);
  swift_beginAccess();
  sub_24F922C98();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21FDC0);
  sub_24F925788();
  [v7 setDelegate_];

  [v7 setPlayer_];
  swift_unknownObjectWeakAssign();
  return v7;
}

id sub_24E87CA64@<X0>(void *a1@<X8>)
{
  result = sub_24E87D318();
  *a1 = result;
  return result;
}

uint64_t sub_24E87CA8C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_24E87CC0C(void *a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v15 = sub_24E87CED8;
  v16 = v5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24E87CA8C;
  v14 = &block_descriptor_25;
  v6 = _Block_copy(&v11);
  v7 = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v15 = sub_24E87CF04;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24E87CA8C;
  v14 = &block_descriptor_11_1;
  v9 = _Block_copy(&v11);
  v10 = v2;

  [a2 animateAlongsideTransition:v6 completion:v9];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_24E87CE38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GSKVideoPlayerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E87CEA0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24E87CF04()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator_viewModel);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) = 0;
  result = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (result)
  {
    return [result setMuted_];
  }

  return result;
}

uint64_t sub_24E87CF4C()
{

  return swift_deallocObject();
}

id sub_24E87CF8C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setShowsPlaybackControls_];
  result = *(*(v1 + OBJC_IVAR____TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator_viewModel) + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (result)
  {

    return [result play];
  }

  return result;
}

uint64_t sub_24E87D020(void *a1)
{
  [a1 setDelegate_];
  [a1 setPlayer_];
  if (qword_27F20FFA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FDA8);
  __swift_project_value_buffer(v2, qword_27F21FD10);
  swift_beginAccess();
  sub_24F922CA8();
  return swift_endAccess();
}

id sub_24E87D0F8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = type metadata accessor for GSKVideoPlayerView.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV12GameStoreKit18GSKVideoPlayerView11Coordinator_viewModel] = v3;
  v7.receiver = v5;
  v7.super_class = v4;

  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24E87D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E87D260();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E87D1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E87D260();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E87D238()
{
  sub_24E87D260();
  sub_24F925628();
  __break(1u);
}

unint64_t sub_24E87D260()
{
  result = qword_27F21FDA0;
  if (!qword_27F21FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FDA0);
  }

  return result;
}

unint64_t sub_24E87D2B4()
{
  result = qword_27F21FDB8;
  if (!qword_27F21FDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FDB8);
  }

  return result;
}

id sub_24E87D318()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
  [v0 setVideoGravity_];
  [v0 setShowsPlaybackControls_];
  [v0 setUpdatesNowPlayingInfoCenter_];
  [v0 setEntersFullScreenWhenPlaybackBegins_];
  [v0 setAllowsPictureInPicturePlayback_];
  [v0 setCanPausePlaybackWhenExitingFullScreen_];
  [v0 setShowsMinimalPlaybackControlsWhenEmbeddedInline_];
  v1 = v0;
  result = [v1 view];
  if (result)
  {
    v3 = result;
    [result setClipsToBounds_];

    [v1 setModalPresentationStyle_];
    [v1 setCanToggleVideoGravityWhenEmbeddedInline_];
    [v1 setAllowsVideoFrameAnalysis_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E87D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for GSKShelf();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for ArcadeSubscription();
  v7 = swift_task_alloc();
  v3[16] = v7;
  *v7 = v3;
  v7[1] = sub_24E87D6A8;

  return MEMORY[0x28217F228](v3 + 2, v6, v6);
}

uint64_t sub_24E87D6A8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24E87DC04;
  }

  else
  {
    v2 = sub_24E87D7BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87D7BC()
{
  v1 = v0[2];
  v0[18] = v1;
  swift_getKeyPath();
  v0[3] = v1;
  sub_24E880F9C(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();

  v2 = *(v1 + 16) < 2u;
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_24E87D8E4;
  v4 = v0[15];
  v5 = v0[5];
  v6 = v0[6];

  return sub_24E87DD24(v4, v5, v2, v6);
}

uint64_t sub_24E87D8E4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24E87DC90;
  }

  else
  {
    v2 = sub_24E87D9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87D9F8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v15 = *(v0 + 32);
  v8 = swift_task_alloc();
  v9 = *(v0 + 40);
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v9;
  (*(v5 + 104))(v6, *MEMORY[0x277D85778], v7);
  sub_24F92B928();

  (*(v3 + 16))(v14, v13, v4);
  sub_24E613678();
  sub_24F9280F8();

  (*(v3 + 8))(v13, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);
  sub_24E880F3C(v2, type metadata accessor for GSKShelf);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24E87DC04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E87DC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E87DD24(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = a4;
  *(v4 + 364) = a3;
  *(v4 + 120) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  v6 = sub_24F92A498();
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 - 8);
  *(v4 + 184) = swift_task_alloc();
  type metadata accessor for Player(0);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = type metadata accessor for GameLibraryMenuShelfConstructionIntent();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = type metadata accessor for GameLibraryArcadeChicletMetadataIntent();
  *(v4 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E87DEE0, 0, 0);
}

uint64_t sub_24E87DEE0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for GameLibraryMenuShelfIntent();
  *(v0 + 232) = v3;
  v4 = *(v3 + 20);
  *(v0 + 360) = v4;
  sub_24E880E6C(v2 + v4, v1, type metadata accessor for Player);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  *(v0 + 240) = v5;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_24E87DFDC;

  return MEMORY[0x28217F228](v0 + 16, v5, v5);
}

uint64_t sub_24E87DFDC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24E87E300;
  }

  else
  {
    v2 = sub_24E87E0F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87E0F0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[33] = v3;
  v4 = sub_24E880F9C(&qword_27F21D5B0, type metadata accessor for GameLibraryArcadeChicletMetadataIntent);
  *v3 = v0;
  v3[1] = sub_24E87E1EC;
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[17];

  return MEMORY[0x28217F4B0](v0 + 12, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24E87E1EC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24E87E628;
  }

  else
  {
    v2 = sub_24E87E3BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87E300()
{
  sub_24E880F3C(*(v0 + 224), type metadata accessor for GameLibraryArcadeChicletMetadataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E87E3BC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v5 = *(v0 + 104);
  *(v0 + 280) = *(v0 + 96);
  *(v0 + 288) = v5;
  *(v0 + 296) = *v4;
  *(v0 + 304) = v4[1];
  sub_24E880E6C(v4 + v1, v3, type metadata accessor for Player);
  *(v0 + 365) = *(v4 + *(v2 + 24));

  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_24E87E4D8;
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);

  return MEMORY[0x28217F228](v7, v8, v8);
}

uint64_t sub_24E87E4D8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    sub_24E880F3C(*(v2 + 192), type metadata accessor for Player);

    v3 = sub_24E87EEA4;
  }

  else
  {
    v3 = sub_24E87E6EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24E87E628()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E880F3C(*(v0 + 224), type metadata accessor for GameLibraryArcadeChicletMetadataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E87E6EC()
{
  if (qword_27F211890 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 296);
  v15 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v16 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);
  v17 = *(v0 + 364);
  v18 = *(v0 + 365);
  sub_24F92A398();
  sub_24F92A408();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  v9 = *(v0 + 112);
  *v2 = v14;
  v2[1] = v15;
  sub_24E880ED4(v16, v2 + v1[5], type metadata accessor for Player);
  *(v2 + v1[6]) = v18;
  *(v2 + v1[7]) = v9;
  *(v2 + v1[8]) = v17;
  v10 = (v2 + v1[9]);
  *v10 = v19;
  v10[1] = v20;
  v11 = swift_task_alloc();
  *(v0 + 328) = v11;
  *v11 = v0;
  v11[1] = sub_24E87E8DC;
  v12 = *(v0 + 240);

  return MEMORY[0x28217F228](v0 + 56, v12, v12);
}

uint64_t sub_24E87E8DC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24E87EC00;
  }

  else
  {
    v2 = sub_24E87E9F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87E9F0()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[43] = v3;
  v4 = sub_24E880F9C(&qword_27F21FE58, type metadata accessor for GameLibraryMenuShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24E87EAEC;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x28217F4B0](v8, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24E87EAEC()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_24E87EDC0;
  }

  else
  {
    v2 = sub_24E87ECDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87EC00()
{
  v1 = v0[28];
  sub_24E880F3C(v0[26], type metadata accessor for GameLibraryMenuShelfConstructionIntent);
  sub_24E880F3C(v1, type metadata accessor for GameLibraryArcadeChicletMetadataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24E87ECDC()
{
  v1 = v0[28];
  v2 = v0[26];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24E880F3C(v2, type metadata accessor for GameLibraryMenuShelfConstructionIntent);
  sub_24E880F3C(v1, type metadata accessor for GameLibraryArcadeChicletMetadataIntent);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24E87EDC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[28];
  sub_24E880F3C(v0[26], type metadata accessor for GameLibraryMenuShelfConstructionIntent);
  sub_24E880F3C(v1, type metadata accessor for GameLibraryArcadeChicletMetadataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24E87EEA4()
{
  sub_24E880F3C(*(v0 + 224), type metadata accessor for GameLibraryArcadeChicletMetadataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E87EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a5;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v8 = *(v7 - 8);
  v33 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v30 - v9;
  v10 = type metadata accessor for GameLibraryMenuShelfIntent();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  sub_24E880E6C(v31, v14, type metadata accessor for GSKShelf);
  v19 = v7;
  sub_24F92B8C8();
  (*(v16 + 8))(v18, v15);
  sub_24E880E6C(a4, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameLibraryMenuShelfIntent);
  v20 = v32;
  v21 = v19;
  (*(v8 + 16))(v32, a1, v19);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v8 + 80) + v24 + 8) & ~*(v8 + 80);
  v26 = swift_allocObject();
  sub_24E880ED4(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v22, type metadata accessor for GameLibraryMenuShelfIntent);
  v28 = v34;
  v27 = v35;
  *(v26 + v23) = v34;
  *(v26 + v24) = v27;
  (*(v8 + 32))(v26 + v25, v20, v21);
  v36 = sub_24E8803D8;
  v37 = v26;
  v38 = v28;

  sub_24F91FD68();
}

uint64_t sub_24E87F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for GameLibraryMenuShelfIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_24E880E6C(a1, v13, type metadata accessor for GameLibraryMenuShelfIntent);
  (*(v7 + 16))(v9, a4, v6);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_24E880ED4(v13, v22 + v18, type metadata accessor for GameLibraryMenuShelfIntent);
  v23 = v26;
  *(v22 + v19) = v25;
  *(v22 + v20) = v23;
  (*(v7 + 32))(v22 + v21, v9, v6);

  sub_24F1D3DA4(0, 0, v16, &unk_24F961F68, v22);
}

uint64_t sub_24E87F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E87F6FC, 0, 0);
}

uint64_t sub_24E87F6FC()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_24E880F9C(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();

  v2 = *(v1 + 16) < 2u;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_24E87F824;
  v4 = v0[11];
  v5 = v0[5];
  v6 = v0[3];

  return sub_24E87DD24(v4, v6, v2, v5);
}

uint64_t sub_24E87F824()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E87FA40;
  }

  else
  {
    v2 = sub_24E87F938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E87F938()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_24E880E6C(v1, v0[10], type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24E880F3C(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E87FA40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E87FAB8()
{
  swift_getKeyPath();
  sub_24E880F9C(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();
}

uint64_t (*sub_24E87FB54(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_24E880520;
}

uint64_t sub_24E87FBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24E87D4E4(a1, a2, a3);
}

uint64_t sub_24E87FC94()
{
  v1 = v0;
  v2 = (type metadata accessor for GameLibraryMenuShelfIntent() - 8);
  v41 = *(*v2 + 80);
  v39 = *(*v2 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = *(v3 - 8);
  v38 = *(v4 + 80);
  v40 = (v41 + 16) & ~v41;

  v5 = v0 + v40 + v2[7];

  v6 = type metadata accessor for Player(0);
  v7 = v6[6];
  v8 = sub_24F9289E8();
  v42 = *(v8 - 8);
  v37 = *(v42 + 8);
  v37(v5 + v7, v8);

  if (*(v5 + v6[9] + 8) != 1)
  {
  }

  v9 = v5 + v6[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v33 = v4;
    v35 = v3;
    v32 = v1;
    v11 = type metadata accessor for CallProviderConversationHandle();
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v42 + 48))(v9 + v13, 1, v8))
      {
        v37(v9 + v13, v8);
      }
    }

    v14 = v9 + *(v10 + 20);
    v15 = v12(v14, 1, v11);
    v1 = v32;
    if (!v15)
    {

      v16 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v42 + 48))(v14 + v16, 1, v8))
      {
        v37(v14 + v16, v8);
      }
    }

    v4 = v33;
    v3 = v35;
  }

  if (*(v5 + v6[15] + 8))
  {
  }

  v17 = v5 + v6[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v17, 1, PlayedTogetherInfo))
  {
    v34 = v4;
    v36 = v3;

    v19 = type metadata accessor for Game();
    v37(v17 + v19[18], v8);
    v20 = v19[19];
    if (!(*(v42 + 48))(v17 + v20, 1, v8))
    {
      v37(v17 + v20, v8);
    }

    v21 = v19[21];
    v22 = sub_24F920818();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v17 + v21, 1, v22))
    {
      (*(v23 + 8))(v17 + v21, v22);
    }

    v4 = v34;
    v3 = v36;
  }

  v24 = v5 + v6[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v24, 1, ChallengeInfo))
  {

    v26 = type metadata accessor for Game();
    v37(v24 + v26[18], v8);
    v27 = v26[19];
    if (!(*(v42 + 48))(v24 + v27, 1, v8))
    {
      v37(v24 + v27, v8);
    }

    v28 = v26[21];
    v29 = sub_24F920818();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v24 + v28, 1, v29))
    {
      (*(v30 + 8))(v24 + v28, v29);
    }
  }

  (*(v4 + 8))(v1 + ((((((v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v38 + 8) & ~v38), v3);

  return swift_deallocObject();
}

uint64_t sub_24E8803D8()
{
  v1 = *(type metadata accessor for GameLibraryMenuShelfIntent() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  return sub_24E87F310(v0 + v2, v6, v7, v8);
}

uint64_t sub_24E8804E0()
{

  return swift_deallocObject();
}

uint64_t sub_24E8805A8()
{
  v1 = (type metadata accessor for GameLibraryMenuShelfIntent() - 8);
  v38 = *(*v1 + 80);
  v36 = *(*v1 + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v3 = *(v2 - 8);
  v35 = *(v3 + 80);
  swift_unknownObjectRelease();
  v37 = (v38 + 32) & ~v38;

  v4 = v0 + v37 + v1[7];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v39 = *(v7 - 8);
  v40 = v7;
  v34 = *(v39 + 8);
  v34(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v32 = v3;
    v31 = v2;
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v39 + 48))(v8 + v12, 1, v40))
      {
        (v34)(v8 + v12, v40);
      }
    }

    v13 = v8 + *(v9 + 20);
    v14 = v11(v13, 1, v10);
    v2 = v31;
    if (!v14)
    {

      v15 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v39 + 48))(v13 + v15, 1, v40))
      {
        (v34)(v13 + v15, v40);
      }
    }

    v3 = v32;
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v16 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v33 = v3;

    v18 = type metadata accessor for Game();
    (v34)(v16 + v18[18], v40);
    v19 = v18[19];
    if (!(*(v39 + 48))(v16 + v19, 1, v40))
    {
      (v34)(v16 + v19, v40);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v3 = v33;
  }

  v23 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game();
    (v34)(v23 + v25[18], v40);
    v26 = v25[19];
    if (!(*(v39 + 48))(v23 + v26, 1, v40))
    {
      (v34)(v23 + v26, v40);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  (*(v3 + 8))(v0 + ((((((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v35 + 8) & ~v35), v2);

  return swift_deallocObject();
}

uint64_t sub_24E880CE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GameLibraryMenuShelfIntent() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24E614970;

  return sub_24E87F5F4(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_24E880E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E880ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E880F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E880F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E880FEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v3)
  {
    v5 = 0;
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v4 = v3;
  v5 = sub_24EA9C658();

  v6 = *(v1 + v2);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks] != 1 || v6[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks + 1] == 0;
  if (!v7 && (v6[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks + 2] & 1) != 0)
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  sub_24F923098();

  v9 = v12 - 5 < 0xFFFFFFFD;
LABEL_11:
  result = 0;
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) & 1) == 0 && (v5 & 1) == 0)
  {
    v11 = *(v1 + v2);
    if (v11)
    {
      [v11 currentTime];
      return !v12 || v9;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_24E881128()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_24F923098();

  return v4 == 4;
}

uint64_t sub_24E8811C4()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
  swift_beginAccess();
  v2 = type metadata accessor for VideoConfiguration();
  if (*(v1 + *(v2 + 36)) == 1)
  {
    v3 = 24;
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isAutoPlayVideoSettingsEnabled))
    {
      v3 = 28;
    }
  }

  else
  {
    v3 = 24;
  }

  if (*(v1 + *(v2 + v3)))
  {
    v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      v4 = *(v5 + v6) ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_24E88129C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    LODWORD(v2) = v1[v2];
    v3 = v1;
    v4 = v3;
    if (v2 == 1)
    {
      [v3 pause];
      v19[0] = 1;
      LOBYTE(v17) = 1;
      sub_24F3A0470(v19, &v17);
      v5 = v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        v8 = v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
        v9 = (v8 + *(type metadata accessor for GSKVideo() + 44));
        v10 = v9[1];
        v17 = *v9;
        v18 = v10;

        sub_24F92C7F8();
        (*(v6 + 32))(v19, ObjectType, v6);
LABEL_7:

        swift_unknownObjectRelease();
        sub_24E6585F8(v19);
        return;
      }
    }

    else
    {
      sub_24E8815CC();
      v19[0] = 0;
      LOBYTE(v17) = 0;
      sub_24F3A0470(v19, &v17);
      v11 = v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        v13 = swift_getObjectType();
        v14 = v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
        v15 = (v14 + *(type metadata accessor for GSKVideo() + 44));
        v16 = v15[1];
        v17 = *v15;
        v18 = v16;

        sub_24F92C7F8();
        (*(v12 + 40))(v19, v13, v12);
        goto LABEL_7;
      }
    }
  }
}

void sub_24E881494()
{
  if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) & 1) == 0)
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    if (v3)
    {
      [v3 pause];
      v4 = *(v0 + v2);
      if (v4)
      {
        v5 = v4;
        sub_24EA9EF78();

        v4 = *(v1 + v2);
      }
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;

    sub_24E88237C();
    v6 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_subscriptions;
    swift_beginAccess();
    *(v1 + v6) = MEMORY[0x277D84FA0];
  }
}

uint64_t sub_24E881554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

id sub_24E8815CC()
{
  v1 = sub_24F91F4A8();
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
  result = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (result)
  {
    return [result play];
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video, v3);
  v8 = objc_allocWithZone(type metadata accessor for VideoPlayer());
  v9 = v5;
  v10 = v0;
  v11 = VideoPlayer.init(with:)(v9);
  v12 = *(v0 + v6);
  *(v10 + v6) = v11;
  v13 = v11;

  sub_24E88237C();
  sub_24E881AB0();
  result = *(v10 + v6);
  if (result)
  {
    return [result play];
  }

  return result;
}

uint64_t sub_24E8816F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isAutoPlayVideoSettingsEnabled) = 0;
  sub_24E8836B8(a1, v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video, type metadata accessor for GSKVideo);
  (*(v11 + 16))(v13, a1, v10);
  v15 = objc_allocWithZone(type metadata accessor for VideoPlayer());
  v16 = VideoPlayer.init(with:)(v13);
  v17 = *(v5 + v14);
  *(v5 + v14) = v16;

  sub_24E8836B8(a3, v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration, type metadata accessor for VideoConfiguration);
  sub_24E60169C(a4, v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_metricsPipeline, &qword_27F21C570);
  v18 = *(v5 + v14);
  if (v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_24F923098();

    v20 = v28[24];
  }

  else
  {
    v20 = 0;
  }

  swift_beginAccess();
  v28[0] = v20;
  sub_24F923058();
  swift_endAccess();
  v21 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isAutoPlayVideoSettingsEnabledPublisher;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v5 + v21, a2, v22);
  v24 = *(v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v24)
  {
    v25 = v5 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
    swift_beginAccess();
    LOBYTE(v25) = *(v25 + *(type metadata accessor for VideoConfiguration() + 40));
    v26 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
    swift_beginAccess();
    *(v24 + v26) = v25;
  }

  sub_24E881AB0();
  sub_24E601704(a4, &qword_27F21C570);
  sub_24E883658(a3, type metadata accessor for VideoConfiguration);
  (*(v23 + 8))(a2, v22);
  sub_24E883658(a1, type metadata accessor for GSKVideo);
  return v5;
}

uint64_t sub_24E881AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F460);
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v36 = v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250970);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE98);
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = (v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_subscriptions);
  swift_beginAccess();
  *v15 = MEMORY[0x277D84FA0];

  v42 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v17)
  {
    v31 = v1;
    swift_beginAccess();
    v41 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
    sub_24F923068();
    swift_endAccess();
    v28[1] = sub_24E74EC40();
    v18 = sub_24F92BEF8();
    v44 = v18;
    v38 = sub_24F92BEB8();
    v19 = *(v38 - 8);
    v29 = *(v19 + 56);
    v39 = v19 + 56;
    v29(v7, 1, 1, v38);
    v30 = MEMORY[0x277CBCEC8];
    sub_24E602068(&qword_27F21FEA8, &qword_27F21FE90);
    v40 = sub_24E883574(&qword_27F21F498, sub_24E74EC40);
    sub_24F923118();
    sub_24E601704(v7, &qword_27F21F468);

    (*(v9 + 8))(v11, v8);
    swift_allocObject();
    swift_weakInit();
    v20 = v32;
    v28[0] = MEMORY[0x277CBCD60];
    sub_24E602068(&qword_27F21FEB0, &qword_27F21FE98);
    sub_24F923148();

    (*(v20 + 8))(v14, v12);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();

    v44 = *&v41[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980);
    sub_24E602068(&qword_27F21FEB8, &unk_27F250980);
    v44 = sub_24F9230C8();
    v21 = sub_24F92BEF8();
    v43 = v21;
    v22 = v29;
    v29(v7, 1, 1, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC0);
    sub_24E602068(&unk_27F250990, &qword_27F21FEC0);
    v23 = v33;
    sub_24F923118();
    sub_24E601704(v7, &qword_27F21F468);

    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&unk_27F2509A0, &unk_27F250970);
    v24 = v35;
    sub_24F923148();

    (*(v34 + 8))(v23, v24);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();

    v25 = sub_24F92BEF8();
    v44 = v25;
    v22(v7, 1, 1, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
    sub_24E602068(&qword_27F21F4B8, &qword_27F21F458);
    v26 = v36;
    sub_24F923118();
    sub_24E601704(v7, &qword_27F21F468);

    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&qword_27F21F4C0, &qword_27F21F460);
    v27 = v31;
    sub_24F923148();

    (*(v37 + 8))(v26, v27);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
  }

  return result;
}

void sub_24E88237C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_24F923098();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setPlayer_];
  }

  v6 = *(v0 + v1);
  if (v6)
  {
    v7 = v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
    swift_beginAccess();
    LOBYTE(v7) = *(v7 + *(type metadata accessor for VideoConfiguration() + 40));
    v8 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
    swift_beginAccess();
    *(v6 + v8) = v7;
  }
}

uint64_t sub_24E8824D8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24E882558()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24E8825CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24E8825EC, 0, 0);
}

uint64_t sub_24E8825EC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  *(v0 + 32) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_24E8826DC;

    return sub_24EA9CDD8();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24E8826DC()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_24E8827F0, 0, 0);
}

void sub_24E882818()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setModalPresentationStyle_];
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 exitFullScreenWithCompletion_];
    }
  }
}

uint64_t sub_24E882990(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v7[0] = v1;

    sub_24F9230A8();
    v4 = v3 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v8 = v1;
      type metadata accessor for GSKVideo();

      sub_24F92C7F8();
      (*(v5 + 8))(&v8, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      return sub_24E6585F8(v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24E882AE8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E882B48(a1);
  }

  return result;
}

uint64_t sub_24E882B48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = type metadata accessor for VideoPlayer.Event();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  sub_24E60169C(a1, v5, &qword_27F21FEC8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24E601704(v5, &qword_27F21FEC8);
  }

  sub_24E8835BC(v5, v12);
  v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v14)
  {
    goto LABEL_16;
  }

  sub_24E8836B8(v12, v10, type metadata accessor for VideoPlayer.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v31 = *v10;
      v32 = v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_16:
        v39 = v12;
        return sub_24E883658(v39, type metadata accessor for VideoPlayer.Event);
      }

      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      v35 = v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
      v36 = (v35 + *(type metadata accessor for GSKVideo() + 44));
      v37 = v36[1];
      v41 = *v36;
      v42 = v37;
      v38 = v14;

      sub_24F92C7F8();
      (*(v33 + 16))(v43, ObjectType, v33, v31);

LABEL_13:
      swift_unknownObjectRelease();
      sub_24E6585F8(v43);
      goto LABEL_16;
    case 2:
      v16 = v14;
      sub_24E882818();
      v23 = v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 8);
        v25 = swift_getObjectType();
        v26 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
        swift_beginAccess();
        v27 = v16[v26];
        v28 = v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
        v29 = (v28 + *(type metadata accessor for GSKVideo() + 44));
        v30 = v29[1];
        v40[0] = *v29;
        v40[1] = v30;

        sub_24F92C7F8();
        (*(v24 + 24))(v27, v43, v25, v24);

        goto LABEL_13;
      }

      goto LABEL_15;
    case 5:
      v16 = v14;
      sub_24E882818();
      v17 = v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 8);
        v19 = swift_getObjectType();
        v20 = v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
        v21 = (v20 + *(type metadata accessor for GSKVideo() + 44));
        v22 = v21[1];
        v41 = *v21;
        v42 = v22;

        sub_24F92C7F8();
        (*(v18 + 48))(v43, v19, v18);

        goto LABEL_13;
      }

LABEL_15:

      goto LABEL_16;
  }

  sub_24E883658(v12, type metadata accessor for VideoPlayer.Event);
  v39 = v10;
  return sub_24E883658(v39, type metadata accessor for VideoPlayer.Event);
}

uint64_t sub_24E882FB0(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isAutoPlayVideoSettingsEnabled) = v1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for GSKVideoViewModel();
    sub_24E883574(&qword_27F218648, type metadata accessor for GSKVideoViewModel);
    sub_24F922FA8();
    sub_24F923008();
  }

  return result;
}

uint64_t sub_24E883098()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isAutoPlayVideoSettingsEnabledPublisher;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E883658(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video, type metadata accessor for GSKVideo);

  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_playerViewController);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_metricsPipeline, &qword_27F21C570);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate);
  v3 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel__playerState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24E883658(v0 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration, type metadata accessor for VideoConfiguration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GSKVideoViewModel()
{
  result = qword_27F21FE78;
  if (!qword_27F21FE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E883288()
{
  sub_24E883484(319, &qword_27F21F440, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GSKVideo();
    if (v1 <= 0x3F)
    {
      sub_24E78F45C();
      if (v2 <= 0x3F)
      {
        sub_24E883484(319, &qword_27F21FE88, &type metadata for VideoPlayer.PlayerState, MEMORY[0x277CBCED0]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for VideoConfiguration();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24E883484(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24E8834D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24E883524()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E883574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E8835BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlayer.Event();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E883658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8836B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ChallengesHubHeaderShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ChallengesHubHeaderShelfIntent()
{
  result = qword_27F21FEE8;
  if (!qword_27F21FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChallengesHubHeaderShelfIntent.game.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChallengesHubHeaderShelfIntent() + 36);

  return sub_24E736938(v3, a1);
}

uint64_t sub_24E8838B4()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x746E756F436E6977;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 1701667175;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726579616C70;
  if (v1 != 1)
  {
    v5 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E883970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E8846F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E883998(uint64_t a1)
{
  v2 = sub_24E883CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8839D4(uint64_t a1)
{
  v2 = sub_24E883CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHubHeaderShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FED0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E883CC4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for ChallengesHubHeaderShelfIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E637000(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD38();
    v8[12] = 3;
    sub_24F92CD38();
    v8[11] = 4;
    sub_24F92CD38();
    v8[10] = 5;
    type metadata accessor for Game();
    sub_24E637000(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E883CC4()
{
  result = qword_27F21FED8;
  if (!qword_27F21FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FED8);
  }

  return result;
}

uint64_t ChallengesHubHeaderShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = &v20 - v4;
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEE0);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ChallengesHubHeaderShelfIntent();
  MEMORY[0x28223BE20](v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E883CC4();
  v24 = v10;
  v14 = v25;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v22;
  v31 = 0;
  *v13 = sub_24F92CC28();
  v13[1] = v16;
  v30 = 1;
  sub_24E637000(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v7, v13 + v11[5]);
  v29 = 2;
  v17 = a1;
  *(v13 + v11[6]) = sub_24F92CC58();
  v28 = 3;
  *(v13 + v11[7]) = sub_24F92CC58();
  v27 = 4;
  *(v13 + v11[8]) = sub_24F92CC58();
  type metadata accessor for Game();
  v26 = 5;
  sub_24E637000(&qword_27F214968, type metadata accessor for Game);
  v18 = v21;
  sub_24F92CC18();
  (*(v15 + 8))(v24, v23);
  sub_24E7374E4(v18, v13 + v11[9]);
  sub_24E8841A0(v13, v20, type metadata accessor for ChallengesHubHeaderShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24E884208(v13, type metadata accessor for ChallengesHubHeaderShelfIntent);
}

uint64_t sub_24E8841A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E884208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8842CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E884410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E884540()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E737854();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E8845F4()
{
  result = qword_27F21FEF8;
  if (!qword_27F21FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FEF8);
  }

  return result;
}

unint64_t sub_24E88464C()
{
  result = qword_27F21FF00;
  if (!qword_27F21FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FF00);
  }

  return result;
}

unint64_t sub_24E8846A4()
{
  result = qword_27F21FF08;
  if (!qword_27F21FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FF08);
  }

  return result;
}

uint64_t sub_24E8846F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F436E6977 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA48960 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24E8848FC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x64496D616461;
      break;
    case 4:
      result = 1869768040;
      break;
    case 5:
      result = 0x736C6961746564;
      break;
    case 6:
      result = 0x6E6F62626972;
      break;
    case 7:
      result = 0x72656E6E6162;
      break;
    case 8:
      result = 0x7975426F546B7361;
      break;
    case 9:
      result = 0x747542726566666FLL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x7542656E696C6E69;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E884A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v64 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF38);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF30);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = v63 - v11;
  v71 = type metadata accessor for GameHeroDetails(0);
  MEMORY[0x28223BE20](v71);
  v70 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for GameHero(0);
  MEMORY[0x28223BE20](v74);
  v73 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v72 = v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FFB8);
  v75 = *(v16 - 8);
  v76 = v16;
  MEMORY[0x28223BE20](v16);
  v87 = v63 - v17;
  v18 = type metadata accessor for GameDetailsHeader(0);
  MEMORY[0x28223BE20](v18);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 40) = 0u;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 9) = 0;
  v81 = v20 + 40;
  sub_24E61DA68(&v89, (v20 + 40), qword_27F21B590);
  v21 = v18[6];
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v85 = v21;
  v23(&v20[v21], 1, 1, v22);
  v24 = v18[10];
  v25 = type metadata accessor for GameDetailsRibbon();
  v26 = *(*(v25 - 8) + 56);
  v82 = v24;
  v26(&v20[v24], 1, 1, v25);
  v27 = v18[11];
  v28 = type metadata accessor for GameDetailsBanner();
  v29 = *(*(v28 - 8) + 56);
  v80 = v27;
  v29(&v20[v27], 1, 1, v28);
  v79 = v18[12];
  v29(&v20[v79], 1, 1, v28);
  v30 = v18[13];
  v31 = type metadata accessor for ButtonGroupItem();
  v32 = *(*(v31 - 8) + 56);
  v78 = v30;
  v32(&v20[v30], 1, 1, v31);
  v83 = v18;
  v77 = v18[15];
  v86 = v20;
  v32(&v20[v77], 1, 1, v31);
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  sub_24E88D340();
  v33 = v84;
  sub_24F92D108();
  if (v33)
  {
    v84 = v33;
    v37 = v81;
    v36 = v82;
    v38 = v80;
    v39 = v83;
    __swift_destroy_boxed_opaque_existential_1(v88);
    v40 = 0;
    v41 = 0;
    v42 = v86;
  }

  else
  {
    v34 = v72;
    v63[2] = v28;
    v84 = v25;
    v35 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v92 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v63[1] = v31;
    v44 = v90;
    v45 = v86;
    *v86 = v89;
    v45[1] = v44;
    *(v45 + 4) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v92 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v37 = v81;
    v36 = v82;
    v39 = v83;
    sub_24E61DA68(&v89, v81, qword_27F24EC90);
    LOBYTE(v89) = 2;
    sub_24E88CC18(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    v42 = v86;
    sub_24E61DA68(v34, v86 + v85, &qword_27F213E68);
    LOBYTE(v89) = 3;
    v46 = sub_24F92CBC8();
    v47 = v75;
    v48 = (v42 + v39[7]);
    *v48 = v46;
    v48[1] = v49;
    v72 = v49;
    LOBYTE(v89) = 4;
    sub_24E88CC18(&qword_27F21FFC8, type metadata accessor for GameHero);
    sub_24F92CC68();
    v50 = v47;
    sub_24E88D3F4(v35, v42 + v39[8], type metadata accessor for GameHero);
    LOBYTE(v89) = 5;
    sub_24E88CC18(&qword_27F21FFD0, type metadata accessor for GameHeroDetails);
    v51 = v70;
    sub_24F92CC68();
    sub_24E88D3F4(v51, v42 + v39[9], type metadata accessor for GameHeroDetails);
    LOBYTE(v89) = 6;
    sub_24E88CC18(&qword_27F21FFD8, type metadata accessor for GameDetailsRibbon);
    v52 = v69;
    sub_24F92CC18();
    v84 = 0;
    sub_24E61DA68(v52, v42 + v36, &qword_27F21FF30);
    LOBYTE(v89) = 7;
    sub_24E88CC18(&qword_27F21FFE0, type metadata accessor for GameDetailsBanner);
    v53 = v68;
    v54 = v84;
    sub_24F92CC18();
    v84 = v54;
    if (v54)
    {
      (*(v50 + 8))(v87, v76);
      v40 = 1;
      v41 = 1;
      v38 = v80;
    }

    else
    {
      v38 = v80;
      sub_24E61DA68(v53, v42 + v80, &qword_27F21FF38);
      LOBYTE(v89) = 8;
      v55 = v67;
      v56 = v84;
      sub_24F92CC18();
      v84 = v56;
      if (v56)
      {
        (*(v50 + 8))(v87, v76);
        v40 = 1;
        v41 = 1;
      }

      else
      {
        sub_24E61DA68(v55, v42 + v79, &qword_27F21FF38);
        LOBYTE(v89) = 9;
        sub_24E88CC18(&qword_27F21C668, type metadata accessor for ButtonGroupItem);
        v57 = v84;
        sub_24F92CC18();
        v84 = v57;
        if (!v57)
        {
          sub_24E61DA68(v66, v86 + v78, &qword_27F21FF40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
          v92 = 10;
          sub_24E79193C();
          v58 = v84;
          sub_24F92CC18();
          v84 = v58;
          if (!v58)
          {
            *(v86 + v83[14]) = v89;
            LOBYTE(v89) = 11;
            sub_24F92CC18();
            v84 = 0;
            sub_24E61DA68(v65, v86 + v77, &qword_27F21FF40);
            LOBYTE(v89) = 12;
            v59 = v84;
            v60 = sub_24F92CC38();
            v84 = v59;
            if (!v59)
            {
              v61 = v60;
              (*(v75 + 8))(v87, v76);
              v62 = v86;
              *(v86 + v83[16]) = v61 & 1;
              sub_24E88D45C(v62, v64, type metadata accessor for GameDetailsHeader);
              __swift_destroy_boxed_opaque_existential_1(v88);
              return sub_24E88D394(v62, type metadata accessor for GameDetailsHeader);
            }
          }
        }

        (*(v75 + 8))(v87, v76);
        v40 = 1;
        v41 = 1;
        v37 = v81;
        v36 = v82;
        v38 = v80;
        v39 = v83;
        v42 = v86;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v88);
    sub_24E601704(v42, &qword_27F213F18);
  }

  sub_24E601704(v37, qword_27F24EC90);
  sub_24E601704(v42 + v85, &qword_27F213E68);

  if (v40)
  {
    sub_24E88D394(v42 + v39[8], type metadata accessor for GameHero);
  }

  if (v41)
  {
    sub_24E88D394(v42 + v39[9], type metadata accessor for GameHeroDetails);
  }

  sub_24E601704(v42 + v36, &qword_27F21FF30);
  sub_24E601704(v42 + v38, &qword_27F21FF38);
  sub_24E601704(v42 + v79, &qword_27F21FF38);
  sub_24E601704(v42 + v78, &qword_27F21FF40);

  return sub_24E601704(v42 + v77, &qword_27F21FF40);
}

uint64_t sub_24E88599C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E88DA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E8859C4(uint64_t a1)
{
  v2 = sub_24E88D340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E885A00(uint64_t a1)
{
  v2 = sub_24E88D340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E885A54@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_24F924848();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F925218();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_24F923E98();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F769788(v21);
  v22 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v24 = 1;
    goto LABEL_13;
  }

  v40 = type metadata accessor for GameDetailsHeaderComponent(0);
  v41 = v2;
  sub_24F769764(v17);
  v25 = v47;
  (*(v5 + 104))(v14, *MEMORY[0x277CE0558], v47);
  (*(v5 + 56))(v14, 0, 1, v25);
  v26 = *(v7 + 48);
  sub_24E60169C(v17, v9, &qword_27F215598);
  sub_24E60169C(v14, &v9[v26], &qword_27F215598);
  v27 = *(v5 + 48);
  if (v27(v9, 1, v25) == 1)
  {
    sub_24E601704(v14, &qword_27F215598);
    sub_24E601704(v17, &qword_27F215598);
    if (v27(&v9[v26], 1, v25) == 1)
    {
      result = sub_24E601704(v9, &qword_27F215598);
      v24 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v28 = v46;
    sub_24E60169C(v9, v46, &qword_27F215598);
    if (v27(&v9[v26], 1, v25) != 1)
    {
      v35 = &v9[v26];
      v36 = v42;
      (*(v5 + 32))(v42, v35, v25);
      sub_24E88CC18(&qword_27F215650, MEMORY[0x277CE0570]);
      v37 = v28;
      v38 = sub_24F92AFF8();
      v39 = *(v5 + 8);
      v39(v36, v25);
      sub_24E601704(v14, &qword_27F215598);
      sub_24E601704(v17, &qword_27F215598);
      v39(v37, v25);
      result = sub_24E601704(v9, &qword_27F215598);
      v29 = v41;
      if (v38)
      {
        v24 = 0;
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    sub_24E601704(v14, &qword_27F215598);
    sub_24E601704(v17, &qword_27F215598);
    (*(v5 + 8))(v28, v25);
  }

  sub_24E601704(v9, &unk_27F254F20);
  v29 = v41;
LABEL_9:
  v30 = v29 + *(v40 + 20);
  v31 = *v30;
  if (*(v30 + 8) == 1)
  {
    v32 = *v30;
  }

  else
  {

    sub_24F92BDC8();
    v33 = sub_24F9257A8();
    sub_24F921FD8();

    v34 = v43;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v31, 0);
    (*(v44 + 8))(v34, v45);
    v32 = v49;
  }

  result = sub_24E6B00B4(v32);
  v24 = result < 4u;
LABEL_13:
  *v48 = v24;
  return result;
}

double sub_24E8860B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v24 - v6;
  v7 = type metadata accessor for GameDetailsHeader(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E88D45C(a1, v10, type metadata accessor for GameDetailsHeader);
  sub_24E885A54(&v30);
  LOBYTE(a1) = v30;
  v11 = *(v2 + *(type metadata accessor for GameDetailsHeaderComponent(0) + 28));
  v12 = type metadata accessor for GameDetailsHeaderView(0);
  v26 = v12[8];
  v28 = 0;

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FFA0);
  sub_24F926F28();
  v25 = *v29;
  v13 = v12[9];
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FFA8);
  sub_24F926F28();
  *(a2 + v13) = *v29;
  v14 = a2 + v12[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a2 + v12[11];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  sub_24E88D45C(v10, a2, type metadata accessor for GameDetailsHeader);
  *(a2 + v12[5]) = a1;
  v16 = &v10[v8[9]];
  v18 = *v16;
  v17 = v16[1];
  v19 = v10[v8[18]];
  type metadata accessor for GameDetailsHeaderPresenter(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();

  v28 = sub_24E8897F4(v18, v17, v19);
  sub_24F926F28();
  v20 = v29[1];
  v21 = (a2 + v12[7]);
  *v21 = v29[0];
  v21[1] = v20;
  type metadata accessor for ProductAskToBuyPresenter();
  v22 = v27;
  sub_24E60169C(&v10[v8[15]], v27, &qword_27F21FF40);

  v28 = sub_24E8F9C04(v18, v17, v22, v11);
  sub_24F926F28();
  sub_24E88D394(v10, type metadata accessor for GameDetailsHeader);

  result = v29[0];
  *(a2 + v26) = *v29;
  *(a2 + v12[6]) = v11;
  return result;
}

uint64_t sub_24E8863D0()
{
  MEMORY[0x28223BE20](v0);
  sub_24E88D45C(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsHeaderComponent);
  sub_24E88CC18(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent);
  return sub_24F9218E8();
}

uint64_t sub_24E8864A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v61 = sub_24F925508();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GameDetailsHeaderView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220030);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220038);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220040);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - v12;
  *v10 = sub_24F924C88();
  *(v10 + 1) = 0x4040000000000000;
  v10[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220048);
  sub_24E886C14(v1, &v10[*(v13 + 44)]);
  v14 = sub_24F925818();
  sub_24E888E00();
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220050) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  sub_24E88D45C(v1, &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsHeaderView);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  sub_24E88D3F4(&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for GameDetailsHeaderView);
  v53 = v8;
  v26 = &v10[*(v8 + 36)];
  *v26 = sub_24E88DE2C;
  *(v26 + 1) = v25;
  *(v26 + 1) = 0u;
  v68 = *(v2 + *(v5 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220058);
  sub_24F926F38();
  v27 = v63;
  if (v63)
  {
    swift_getKeyPath();
    *&v68 = v27;
    sub_24E88CC18(&qword_27F220060, type metadata accessor for ProductAskToBuyPresenter);
    sub_24F91FD88();

    v28 = *(v27 + 192);
    v70 = *(v27 + 176);
    v71 = v28;
    v72 = *(v27 + 208);
    v29 = *(v27 + 160);
    v68 = *(v27 + 144);
    v69 = v29;
    sub_24E88C3F8(&v68, &v63);

    v31 = v68;
    v30 = v69;
    v32 = v70;
    v33 = v71;
    v34 = v72;
  }

  else
  {
    v34 = 0;
    v30 = xmmword_24F962330;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
  }

  v63 = v31;
  v64 = v30;
  v65 = v32;
  v66 = v33;
  v67 = v34;
  sub_24E88D45C(v2, &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsHeaderView);
  v35 = swift_allocObject();
  sub_24E88D3F4(&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v24, type metadata accessor for GameDetailsHeaderView);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220068);
  v37 = sub_24E88E8F4();
  v38 = sub_24E88EA38();
  v39 = v52;
  v40 = v53;
  sub_24F926AB8();

  v70 = v65;
  v71 = v66;
  v72 = v67;
  v68 = v63;
  v69 = v64;
  sub_24E601704(&v68, &qword_27F220068);
  sub_24E601704(v10, &qword_27F220030);
  v41 = v59;
  sub_24F9254F8();
  *&v63 = v40;
  *(&v63 + 1) = v36;
  *&v64 = v37;
  *(&v64 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v42 = v56;
  v43 = v55;
  sub_24F926678();
  (*(v60 + 8))(v41, v61);
  (*(v54 + 8))(v39, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A0);
  v45 = v62;
  v46 = v62 + *(v44 + 36);
  *v46 = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 32) = sub_24F923398() & 1;
  *(v46 + 40) = v47;
  *(v46 + 48) = v48 & 1;
  v49 = *(type metadata accessor for FocusableItemScrollViewOffsetModifier() + 24);
  *(v46 + v49) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8);
  swift_storeEnumTagMultiPayload();
  return (*(v57 + 32))(v45, v42, v58);
}

uint64_t sub_24E886C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200C0);
  MEMORY[0x28223BE20](v40);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200C8);
  MEMORY[0x28223BE20](v5);
  v39 = &v34 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200D0);
  MEMORY[0x28223BE20](v38);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200D8);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v34 - v12;
  v13 = type metadata accessor for GameDetailsHeaderView(0);
  v64 = *(a1 + *(v13 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200B8);
  sub_24F926F38();
  v14 = *&v55[0];
  if (*&v55[0])
  {
    v36 = *(a1 + *(v13 + 20));

    sub_24F927618();
    sub_24F9242E8();
    *&v43[55] = v60;
    *&v43[71] = v61;
    *&v43[87] = v62;
    *&v43[103] = v63;
    *&v43[7] = v57;
    *&v43[23] = v58;
    *&v43[39] = v59;
    sub_24F9238F8();
    sub_24F9238F8();
    v35 = sub_24F9238E8();

    *(&v55[4] + 9) = *&v43[64];
    *(&v55[5] + 9) = *&v43[80];
    *(&v55[6] + 9) = *&v43[96];
    *(v55 + 9) = *v43;
    *(&v55[1] + 9) = *&v43[16];
    *(&v55[2] + 9) = *&v43[32];
    *&v55[0] = v14;
    BYTE8(v55[0]) = v36;
    *(&v55[3] + 9) = *&v43[48];
    *(&v55[7] + 1) = *&v43[111];
    v56 = v35;
    CGSizeMake(v55, v15, v16);
    v70 = v55[6];
    v71 = v55[7];
    v72 = v56;
    v66 = v55[2];
    v67 = v55[3];
    v68 = v55[4];
    v69 = v55[5];
    v64 = v55[0];
    v65 = v55[1];
  }

  else
  {
    sub_24E88EBA4(&v64);
  }

  if (*(a1 + *(v13 + 20)))
  {
    *v4 = sub_24F924C88();
    *(v4 + 1) = 0x4028000000000000;
    v4[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200E0);
    sub_24E8880C4(a1, &v4[*(v17 + 44)]);
    v18 = &qword_27F2200C0;
    sub_24E60169C(v4, v39, &qword_27F2200C0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F2200E8, &qword_27F2200D0);
    sub_24E602068(&qword_27F2200F0, &qword_27F2200C0);
    v19 = v41;
    sub_24F924E28();
    v20 = v4;
  }

  else
  {
    *v8 = sub_24F924988();
    *(v8 + 1) = 0x4040000000000000;
    v8[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220108);
    sub_24E8872F8(a1, &v8[*(v21 + 44)]);
    v18 = &qword_27F2200D0;
    sub_24E60169C(v8, v39, &qword_27F2200D0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F2200E8, &qword_27F2200D0);
    sub_24E602068(&qword_27F2200F0, &qword_27F2200C0);
    v22 = v41;
    sub_24F924E28();
    v20 = v8;
    v19 = v22;
  }

  sub_24E601704(v20, v18);
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v48 = v68;
  v52 = v72;
  v44 = v64;
  v23 = v42;
  sub_24E60169C(v19, v42, &qword_27F2200D8);
  v24 = v49;
  v53[6] = v50;
  v53[7] = v51;
  v25 = v45;
  v26 = v46;
  v27 = v48;
  v53[2] = v46;
  v53[3] = v47;
  v28 = v47;
  v53[4] = v48;
  v53[5] = v49;
  v29 = v44;
  v53[0] = v44;
  v53[1] = v45;
  v30 = v51;
  v31 = v37;
  *(v37 + 96) = v50;
  *(v31 + 112) = v30;
  *(v31 + 32) = v26;
  *(v31 + 48) = v28;
  *(v31 + 64) = v27;
  *(v31 + 80) = v24;
  v54 = v52;
  *(v31 + 128) = v52;
  *v31 = v29;
  *(v31 + 16) = v25;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200F8);
  sub_24E60169C(v23, v31 + *(v32 + 48), &qword_27F2200D8);
  sub_24E60169C(v53, v55, &qword_27F220100);
  sub_24E601704(v19, &qword_27F2200D8);
  sub_24E601704(v23, &qword_27F2200D8);
  v55[6] = v50;
  v55[7] = v51;
  v55[2] = v46;
  v55[3] = v47;
  v56 = v52;
  v55[4] = v48;
  v55[5] = v49;
  v55[0] = v44;
  v55[1] = v45;
  return sub_24E601704(v55, &qword_27F220100);
}

uint64_t sub_24E8872F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220110);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220118);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  *&v30 = *(a1 + *(type metadata accessor for GameDetailsHeaderView(0) + 24));
  type metadata accessor for GameDetailsHeader(0);
  sub_24E6E64E8();
  sub_24F921D38();
  sub_24F927618();
  sub_24F9238C8();
  v17 = &v16[*(v11 + 44)];
  v18 = v28;
  *v17 = v27;
  *(v17 + 1) = v18;
  *(v17 + 2) = v29;
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220120);
  sub_24E8875E0(a1, &v9[*(v19 + 44)]);
  sub_24F927628();
  sub_24F9238C8();
  v20 = &v9[*(v4 + 44)];
  v21 = v31;
  *v20 = v30;
  *(v20 + 1) = v21;
  *(v20 + 2) = v32;
  sub_24E60169C(v16, v13, &qword_27F220118);
  sub_24E60169C(v9, v6, &qword_27F220110);
  v22 = v26;
  sub_24E60169C(v13, v26, &qword_27F220118);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220128);
  sub_24E60169C(v6, v22 + *(v23 + 48), &qword_27F220110);
  sub_24E601704(v9, &qword_27F220110);
  sub_24E601704(v16, &qword_27F220118);
  sub_24E601704(v6, &qword_27F220110);
  return sub_24E601704(v13, &qword_27F220118);
}

uint64_t sub_24E8875E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v72 - v6;
  v86 = type metadata accessor for GameDetailsButtonContainerView(0);
  MEMORY[0x28223BE20](v86);
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  MEMORY[0x28223BE20](v11);
  v88 = &v72 - v12;
  v78 = sub_24F9241F8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220130);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220138);
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  v72 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v20 = type metadata accessor for GameDetailsRibbon();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220140);
  MEMORY[0x28223BE20](v24 - 8);
  v85 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v94 = &v72 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220148);
  v83 = *(v28 - 8);
  v84 = v28;
  MEMORY[0x28223BE20](v28);
  v92 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v72 - v31;
  v33 = type metadata accessor for GameDetailsHeaderView(0);
  v79 = *(v33 + 20);
  v80 = v33;
  LOBYTE(v96) = *(a1 + v79);
  v34 = type metadata accessor for GameDetailsHeader(0);
  sub_24E88EBE0();
  v91 = v32;
  sub_24F921D38();
  sub_24E60169C(a1 + v34[10], v19, &qword_27F21FF30);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_24E601704(v19, &qword_27F21FF30);
    v35 = 1;
    v36 = v94;
    v38 = v81;
    v37 = v82;
  }

  else
  {
    sub_24E88D3F4(v19, v23, type metadata accessor for GameDetailsRibbon);
    v39 = sub_24E62BAC0();
    v40 = v73;
    sub_24F921D38();
    v41 = v76;
    sub_24F9241E8();
    *&v96 = &type metadata for GameDetailsRibbonComponent;
    *(&v96 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    sub_24E88CC18(&qword_27F212838, MEMORY[0x277CDDB18]);
    v42 = v72;
    v43 = v75;
    v44 = v78;
    sub_24F926178();
    (*(v77 + 8))(v41, v44);
    (*(v74 + 8))(v40, v43);
    sub_24E88D394(v23, type metadata accessor for GameDetailsRibbon);
    v46 = v81;
    v45 = v82;
    v47 = v94;
    (*(v81 + 32))(v94, v42, v82);
    v35 = 0;
    v36 = v47;
    v37 = v45;
    v38 = v46;
  }

  (*(v38 + 56))(v36, v35, 1, v37);
  sub_24E60169C(a1 + v34[13], v93, &qword_27F21FF40);
  v48 = v34[15];
  v49 = *(a1 + v34[14]);
  v50 = v87;
  sub_24E60169C(a1 + v48, v87, &qword_27F21FF40);
  v51 = v80;
  v52 = *(a1 + v79);
  v53 = (a1 + *(v80 + 28));
  v55 = *v53;
  v54 = v53[1];
  *&v96 = v55;
  *(&v96 + 1) = v54;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220158);
  sub_24F926F38();
  v56 = v95;
  swift_getKeyPath();
  *&v96 = v56;
  sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
  sub_24F91FD88();

  v57 = *(v56 + 16);

  v96 = *(a1 + *(v51 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200B8);
  sub_24F926F38();
  v58 = v95;
  if (v95)
  {
  }

  sub_24E6009C8(v93, v10, &qword_27F21FF40);
  v59 = v86;
  *&v10[*(v86 + 20)] = v49;
  sub_24E6009C8(v50, &v10[v59[6]], &qword_27F21FF40);
  v10[v59[7]] = v52;
  v10[v59[8]] = v57;
  v10[v59[9]] = v58 != 0;
  v60 = v10;
  v61 = v88;
  sub_24E88D3F4(v60, v88, type metadata accessor for GameDetailsButtonContainerView);
  v62 = v83;
  v63 = v84;
  v64 = *(v83 + 16);
  v65 = v92;
  v64(v92, v91, v84);
  v66 = v85;
  sub_24E60169C(v94, v85, &qword_27F220140);
  v67 = v89;
  sub_24E88D45C(v61, v89, type metadata accessor for GameDetailsButtonContainerView);
  v68 = v90;
  v64(v90, v65, v63);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220160);
  sub_24E60169C(v66, &v68[*(v69 + 48)], &qword_27F220140);
  sub_24E88D45C(v67, &v68[*(v69 + 64)], type metadata accessor for GameDetailsButtonContainerView);
  sub_24E88D394(v61, type metadata accessor for GameDetailsButtonContainerView);
  sub_24E601704(v94, &qword_27F220140);
  v70 = *(v62 + 8);
  v70(v91, v63);
  sub_24E88D394(v67, type metadata accessor for GameDetailsButtonContainerView);
  sub_24E601704(v66, &qword_27F220140);
  return (v70)(v92, v63);
}

uint64_t sub_24E888024()
{
  swift_getKeyPath();
  sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24E8880C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v86 - v6;
  v105 = type metadata accessor for GameDetailsButtonContainerView(0);
  MEMORY[0x28223BE20](v105);
  v106 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v114 = &v86 - v11;
  v96 = sub_24F9241F8();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220130);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v86 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220168);
  MEMORY[0x28223BE20](v92);
  v93 = &v86 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220170);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v91 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v86 - v17;
  v19 = type metadata accessor for GameDetailsRibbon();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v87 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220178);
  MEMORY[0x28223BE20](v22 - 8);
  v103 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v108 = &v86 - v25;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220148);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v113 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220180);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v111 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v86 - v34;
  v36 = type metadata accessor for GameDetailsHeaderView(0);
  *&v117 = *(a1 + *(v36 + 24));
  v37 = type metadata accessor for GameDetailsHeader(0);
  sub_24E6E64E8();
  sub_24F921D38();
  v38 = sub_24F925828();
  sub_24F923318();
  v39 = *(v31 + 44);
  v109 = v35;
  v40 = &v35[v39];
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v98 = v36;
  v45 = *(v36 + 20);
  LOBYTE(v117) = *(a1 + v45);
  sub_24E88EBE0();
  v110 = v29;
  sub_24F921D38();
  sub_24E60169C(a1 + v37[10], v18, &qword_27F21FF30);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_24E601704(v18, &qword_27F21FF30);
    v46 = v108;
    v47 = v99;
  }

  else
  {
    v48 = v87;
    sub_24E88D3F4(v18, v87, type metadata accessor for GameDetailsRibbon);
    sub_24E62BAC0();
    v49 = v88;
    sub_24F921D38();
    sub_24F927618();
    sub_24F9242E8();
    v50 = v93;
    (*(v89 + 32))(v93, v49, v90);
    v51 = (v50 + *(v92 + 36));
    v52 = v122;
    v51[4] = v121;
    v51[5] = v52;
    v51[6] = v123;
    v53 = v118;
    *v51 = v117;
    v51[1] = v53;
    v54 = v120;
    v51[2] = v119;
    v51[3] = v54;
    v55 = v94;
    sub_24F9241E8();
    sub_24E88EC34();
    sub_24E88CC18(&qword_27F212838, MEMORY[0x277CDDB18]);
    v56 = v91;
    v57 = v96;
    sub_24F926178();
    (*(v95 + 8))(v55, v57);
    sub_24E601704(v50, &qword_27F220168);
    sub_24E88D394(v48, type metadata accessor for GameDetailsRibbon);
    v58 = v99;
    v59 = v108;
    (*(v99 + 32))(v108, v56, v100);
    v46 = v59;
    v47 = v58;
  }

  v60 = v46;
  (*(v47 + 56))();
  sub_24E60169C(a1 + v37[13], v112, &qword_27F21FF40);
  v61 = v37[15];
  v62 = *(a1 + v37[14]);
  v63 = v104;
  sub_24E60169C(a1 + v61, v104, &qword_27F21FF40);
  v64 = *(a1 + v45);
  v65 = v98;
  v66 = (a1 + *(v98 + 28));
  v68 = *v66;
  v67 = v66[1];
  *&v116 = v68;
  *(&v116 + 1) = v67;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220158);
  sub_24F926F38();
  v69 = v115;
  swift_getKeyPath();
  *&v116 = v69;
  sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
  sub_24F91FD88();

  v70 = *(v69 + 16);

  v116 = *(a1 + *(v65 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200B8);
  sub_24F926F38();
  v71 = v115;
  if (v115)
  {
  }

  v72 = v97;
  sub_24E6009C8(v112, v97, &qword_27F21FF40);
  v73 = v105;
  *(v72 + *(v105 + 20)) = v62;
  sub_24E6009C8(v63, v72 + v73[6], &qword_27F21FF40);
  *(v72 + v73[7]) = v64;
  *(v72 + v73[8]) = v70;
  *(v72 + v73[9]) = v71 != 0;
  v74 = v114;
  sub_24E88D3F4(v72, v114, type metadata accessor for GameDetailsButtonContainerView);
  v75 = v111;
  sub_24E60169C(v109, v111, &qword_27F220180);
  v76 = v101;
  v77 = *(v101 + 16);
  v78 = v113;
  v79 = v102;
  v77(v113, v110, v102);
  v80 = v103;
  sub_24E60169C(v60, v103, &qword_27F220178);
  v81 = v106;
  sub_24E88D45C(v74, v106, type metadata accessor for GameDetailsButtonContainerView);
  v82 = v107;
  sub_24E60169C(v75, v107, &qword_27F220180);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220188);
  v77((v82 + v83[12]), v78, v79);
  sub_24E60169C(v80, v82 + v83[16], &qword_27F220178);
  sub_24E88D45C(v81, v82 + v83[20], type metadata accessor for GameDetailsButtonContainerView);
  sub_24E88D394(v114, type metadata accessor for GameDetailsButtonContainerView);
  sub_24E601704(v108, &qword_27F220178);
  v84 = *(v76 + 8);
  v84(v110, v79);
  sub_24E601704(v109, &qword_27F220180);
  sub_24E88D394(v81, type metadata accessor for GameDetailsButtonContainerView);
  sub_24E601704(v80, &qword_27F220178);
  v84(v113, v79);
  return sub_24E601704(v111, &qword_27F220180);
}

double sub_24E888E00()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GameDetailsHeaderView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 32.0;
  if ((v6 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_24E888F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF38);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  v5 = type metadata accessor for GameDetailsHeader(0);
  sub_24E60169C(a1 + *(v5 + 44), v4, &qword_27F21FF38);
  v6 = type metadata accessor for GameDetailsBanner();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    return sub_24E601704(v4, &qword_27F21FF38);
  }

  v8 = *&v4[*(v6 + 28)];

  v9 = sub_24E88D394(v4, type metadata accessor for GameDetailsBanner);
  MEMORY[0x28223BE20](v9);
  *&v10[-16] = a1;
  *&v10[-8] = v8;
  sub_24F9276F8();
  sub_24F923B18();
}

uint64_t sub_24E889114()
{
  type metadata accessor for GameDetailsHeaderView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200B8);
  return sub_24F926F48();
}

uint64_t sub_24E889194(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v4;
  v34 = *(a1 + 64);
  v5 = *(a1 + 16);
  v30 = *a1;
  v31 = v5;
  v6 = *(a2 + 48);
  v35[2] = *(a2 + 32);
  v35[3] = v6;
  v36 = *(a2 + 64);
  v7 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v7;
  v8 = v31;
  v9 = v7;
  if ((v31 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v25 = *a1;
      v26[0] = v31;
      *&v26[1] = *(a1 + 24);
      *&v26[3] = *(a1 + 40);
      *&v26[5] = *(a1 + 56);
      sub_24E60169C(&v30, &v20, &qword_27F220068);
      sub_24E60169C(v35, &v20, &qword_27F220068);
      return sub_24E601704(&v25, &qword_27F220068);
    }

    sub_24E60169C(&v30, &v25, &qword_27F220068);
    sub_24E60169C(v35, &v25, &qword_27F220068);
    goto LABEL_7;
  }

  v25 = *a1;
  v26[0] = v31;
  *&v26[1] = *(a1 + 24);
  *&v26[3] = *(a1 + 40);
  *&v26[5] = *(a1 + 56);
  v20 = v25;
  v21 = *v26;
  v22 = *&v26[2];
  v23 = *&v26[4];
  v24 = v26[6];
  if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v19[1] = *&v26[2];
    v19[2] = *&v26[4];
    *&v19[3] = v26[6];
    v18 = v25;
    v19[0] = *v26;
    sub_24E60169C(&v30, v16, &qword_27F220068);
    sub_24E60169C(v35, v16, &qword_27F220068);
    sub_24E60169C(&v25, v16, &qword_27F220068);
    sub_24E88EB34(&v18);
LABEL_7:
    v25 = *a1;
    *&v26[1] = *(a1 + 24);
    *&v26[3] = *(a1 + 40);
    *&v26[5] = *(a1 + 56);
    *&v26[7] = *a2;
    v26[0] = v8;
    v26[9] = v9;
    v11 = *(a2 + 56);
    v12 = *(a2 + 24);
    v28 = *(a2 + 40);
    v29 = v11;
    v27 = v12;
    result = sub_24E601704(&v25, &qword_27F2200B0);
LABEL_8:
    MEMORY[0x28223BE20](result);
    sub_24F9276F8();
    sub_24F923B18();
  }

  v18 = *a2;
  *(v19 + 8) = *(a2 + 24);
  *(&v19[1] + 8) = *(a2 + 40);
  *(&v19[2] + 8) = *(a2 + 56);
  *&v19[0] = v7;
  sub_24E60169C(&v30, v16, &qword_27F220068);
  sub_24E60169C(v35, v16, &qword_27F220068);
  sub_24E60169C(&v25, v16, &qword_27F220068);
  v13 = sub_24E88C134(&v20, &v18);
  v14[2] = v19[1];
  v14[3] = v19[2];
  v15 = *&v19[3];
  v14[0] = v18;
  v14[1] = v19[0];
  sub_24E88EB34(v14);
  v16[2] = v22;
  v16[3] = v23;
  v17 = v24;
  v16[0] = v20;
  v16[1] = v21;
  sub_24E88EB34(v16);
  v18 = *a1;
  *&v19[0] = v8;
  *(v19 + 8) = *(a1 + 24);
  *(&v19[1] + 8) = *(a1 + 40);
  *(&v19[2] + 8) = *(a1 + 56);
  result = sub_24E601704(&v18, &qword_27F220068);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_24E889568()
{
  type metadata accessor for GameDetailsHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220058);
  sub_24F926F38();
  if (v1)
  {
    sub_24E8FBE9C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200B8);
  return sub_24F926F48();
}

uint64_t sub_24E88963C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24E8896E4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24E8897F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  sub_24F91FDB8();
  if (a3)
  {

    if (*(v4 + 16) == 1)
    {

      *(v4 + 16) = 1;
      return v4;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v20 = v4;
    sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
    sub_24F91FD78();

    return v4;
  }

  if (!a2)
  {
    if ((*(v4 + 16) & 1) == 0)
    {

      *(v4 + 16) = 0;
      return v4;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928F28();
  ObjectType = swift_getObjectType();
  v19[0] = a1;
  v19[1] = a2;
  (*(v21 + 56))(v19, ObjectType, v21);
  v10 = v9;
  swift_unknownObjectRelease();

  v11 = swift_getObjectType();
  (*(v10 + 16))(&v20, v11, v10);
  v12 = v22 & 0xF000000000000000;
  v13 = (v22 & 0xF000000000000000) == 0x7000000000000000;
  sub_24E88D2AC(&v20);
  if ((v13 ^ *(v4 + 16)))
  {
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    v19[0] = v4;
    sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
    sub_24F91FD78();
  }

  else
  {
    *(v4 + 16) = v12 == 0x7000000000000000;
  }

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v10 + 72);

  v17(v4, sub_24E88D338, v16, v11, v10);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_24E889C30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v9, ObjectType, a2);
    v6 = v10 & 0xF000000000000000;
    v7 = (v10 & 0xF000000000000000) == 0x7000000000000000;
    sub_24E88D2AC(v9);
    if ((v7 ^ *(v4 + 16)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24E88CC18(&qword_27F21FFB0, type metadata accessor for GameDetailsHeaderPresenter);
      sub_24F91FD78();
    }

    else
    {
      *(v4 + 16) = v6 == 0x7000000000000000;
    }
  }

  return result;
}

uint64_t sub_24E889DC8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_3E3BF2D89718BF3D78A00238C22DFD1126GameDetailsHeaderPresenter___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E889E8C()
{
  result = sub_24F91FDC8();
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

uint64_t sub_24E889F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201D0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201D8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for GameDetailsButtonContainerView(0);
  if (*(a1 + *(v11 + 28)) == 1 && (*(a1 + *(v11 + 32)) & 1) == 0)
  {
    *v10 = sub_24F924C88();
    *(v10 + 1) = 0x4034000000000000;
    v10[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220200);
    sub_24E88A268(a1, &v10[*(v15 + 44)]);
    sub_24E60169C(v10, v7, &qword_27F2201E0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F2201F0, &qword_27F2201E0);
    sub_24E602068(&qword_27F2201F8, &qword_27F2201D0);
    sub_24F924E28();
    v13 = v10;
    v14 = &qword_27F2201E0;
  }

  else
  {
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0x4024000000000000;
    v4[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201E8);
    sub_24E88A904(a1, &v4[*(v12 + 44)]);
    sub_24E60169C(v4, v7, &qword_27F2201D0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F2201F0, &qword_27F2201E0);
    sub_24E602068(&qword_27F2201F8, &qword_27F2201D0);
    sub_24F924E28();
    v13 = v4;
    v14 = &qword_27F2201D0;
  }

  return sub_24E601704(v13, v14);
}

uint64_t sub_24E88A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v47 = sub_24F929888();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220208);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ButtonGroupItem();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220210);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v42 - v15;
  v16 = type metadata accessor for GameDetailsButtonContainerView.OfferButtonView(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v49 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v22 = type metadata accessor for GameDetailsButtonContainerView(0);
  v23 = *(a1 + *(v22 + 36));
  sub_24E60169C(a1, v21, &qword_27F21FF40);
  v21[*(v17 + 28)] = v23;
  sub_24E60169C(a1 + *(v22 + 24), v8, &qword_27F21FF40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F21FF40);
    v24 = 1;
    v26 = v51;
    v25 = v52;
    v27 = v48;
  }

  else
  {
    v28 = v8;
    v29 = v43;
    sub_24E88D3F4(v28, v43, type metadata accessor for ButtonGroupItem);
    v58[3] = v9;
    v58[4] = sub_24E88CC18(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    sub_24E88D45C(v29, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24E88CC18(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    v56 = sub_24F923598();
    v57 = v31 & 1;
    memset(v55, 0, sizeof(v55));
    memset(v54, 0, sizeof(v54));
    v32 = v45;
    sub_24F9297C8();
    sub_24E601704(v54, &qword_27F2129B0);
    sub_24E601704(v55, &qword_27F2129B0);
    sub_24E66C1E0();
    v33 = v44;
    sub_24F925EE8();
    (*(v46 + 8))(v32, v47);
    sub_24E88F154(&v56);
    sub_24E88D394(v29, type metadata accessor for ButtonGroupItem);
    v34 = v51;
    v27 = v48;
    v35 = v33;
    v36 = v52;
    (*(v51 + 32))(v48, v35, v52);
    v24 = 0;
    v25 = v36;
    v26 = v34;
  }

  (*(v26 + 56))(v27, v24, 1, v25);
  v37 = v49;
  sub_24E88D45C(v21, v49, type metadata accessor for GameDetailsButtonContainerView.OfferButtonView);
  v38 = v50;
  sub_24E60169C(v27, v50, &qword_27F220210);
  v39 = v53;
  sub_24E88D45C(v37, v53, type metadata accessor for GameDetailsButtonContainerView.OfferButtonView);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220218);
  sub_24E60169C(v38, v39 + *(v40 + 48), &qword_27F220210);
  sub_24E601704(v27, &qword_27F220210);
  sub_24E88D394(v21, type metadata accessor for GameDetailsButtonContainerView.OfferButtonView);
  sub_24E601704(v38, &qword_27F220210);
  return sub_24E88D394(v37, type metadata accessor for GameDetailsButtonContainerView.OfferButtonView);
}

uint64_t sub_24E88A904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v65 = sub_24F929888();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220208);
  v67 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v66 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v72 = type metadata accessor for ButtonGroupItem();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220220);
  MEMORY[0x28223BE20](v76);
  v77 = &v62 - v9;
  v10 = type metadata accessor for GameDetailsButtonContainerView(0);
  v68 = *(v10 - 1);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220228);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v62 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220230);
  MEMORY[0x28223BE20](v75);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220238);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v62 - v18;
  v19 = type metadata accessor for GameDetailsButtonContainerView.OfferButtonView(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220240);
  MEMORY[0x28223BE20](v23);
  v79 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  MEMORY[0x28223BE20](v28);
  v83 = &v62 - v29;
  v30 = *(a1 + v10[9]);
  sub_24E60169C(a1, v22, &qword_27F21FF40);
  v22[*(v20 + 28)] = v30;
  if (*(a1 + v10[7]) == 1)
  {
    sub_24F927618();
  }

  else
  {
    sub_24F927628();
  }

  sub_24F9242E8();
  sub_24E88D3F4(v22, v27, type metadata accessor for GameDetailsButtonContainerView.OfferButtonView);
  v31 = &v27[*(v23 + 36)];
  v32 = v94;
  *(v31 + 4) = v93;
  *(v31 + 5) = v32;
  *(v31 + 6) = v95;
  v33 = v90;
  *v31 = v89;
  *(v31 + 1) = v33;
  v34 = v92;
  *(v31 + 2) = v91;
  *(v31 + 3) = v34;
  sub_24E6009C8(v27, v83, &qword_27F220240);
  if (*(a1 + v10[8]) == 1)
  {
    v35 = v10[5];
    if (*(a1 + v35))
    {
      v86 = *(a1 + v35);
      swift_getKeyPath();
      v36 = v69;
      sub_24E88D45C(a1, v69, type metadata accessor for GameDetailsButtonContainerView);
      v37 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v38 = swift_allocObject();
      sub_24E88D3F4(v36, v38 + v37, type metadata accessor for GameDetailsButtonContainerView);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220270);
      sub_24E602068(&qword_27F21C600, &qword_27F21C5F0);
      sub_24E88F2B0();
      v39 = v70;
      sub_24F927228();
      v40 = v73;
      v41 = v74;
      (*(v73 + 32))(v14, v39, v74);
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v74;
      v40 = v73;
    }

    (*(v40 + 56))(v14, v42, 1, v41);
    sub_24E60169C(v14, v77, &qword_27F220230);
    swift_storeEnumTagMultiPayload();
    sub_24E88F1A8();
    v54 = sub_24E66C1E0();
    v86 = &type metadata for GSKComponentView;
    v87 = v54;
    swift_getOpaqueTypeConformance2();
    v45 = v80;
    sub_24F924E28();
    sub_24E601704(v14, &qword_27F220230);
    goto LABEL_12;
  }

  sub_24E60169C(a1 + v10[6], v7, &qword_27F21FF40);
  v43 = v72;
  if ((*(v71 + 48))(v7, 1, v72) != 1)
  {
    v46 = v62;
    sub_24E88D3F4(v7, v62, type metadata accessor for ButtonGroupItem);
    v88[3] = v43;
    v88[4] = sub_24E88CC18(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
    sub_24E88D45C(v46, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24E88CC18(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    v86 = sub_24F923598();
    LOBYTE(v87) = v48 & 1;
    memset(v85, 0, sizeof(v85));
    memset(v84, 0, sizeof(v84));
    v49 = v63;
    sub_24F9297C8();
    sub_24E601704(v84, &qword_27F2129B0);
    sub_24E601704(v85, &qword_27F2129B0);
    v50 = sub_24E66C1E0();
    v51 = v66;
    sub_24F925EE8();
    (*(v64 + 8))(v49, v65);
    sub_24E88F154(&v86);
    v52 = v67;
    v53 = v78;
    (*(v67 + 16))(v77, v51, v78);
    swift_storeEnumTagMultiPayload();
    sub_24E88F1A8();
    v86 = &type metadata for GSKComponentView;
    v87 = v50;
    swift_getOpaqueTypeConformance2();
    v45 = v80;
    sub_24F924E28();
    (*(v52 + 8))(v51, v53);
    sub_24E88D394(v46, type metadata accessor for ButtonGroupItem);
LABEL_12:
    v44 = 0;
    goto LABEL_13;
  }

  sub_24E601704(v7, &qword_27F21FF40);
  v44 = 1;
  v45 = v80;
LABEL_13:
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220248);
  (*(*(v55 - 8) + 56))(v45, v44, 1, v55);
  v56 = v83;
  v57 = v79;
  sub_24E60169C(v83, v79, &qword_27F220240);
  v58 = v81;
  sub_24E60169C(v45, v81, &qword_27F220238);
  v59 = v82;
  sub_24E60169C(v57, v82, &qword_27F220240);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220250);
  sub_24E60169C(v58, v59 + *(v60 + 48), &qword_27F220238);
  sub_24E601704(v45, &qword_27F220238);
  sub_24E601704(v56, &qword_27F220240);
  sub_24E601704(v58, &qword_27F220238);
  return sub_24E601704(v57, &qword_27F220240);
}

__n128 sub_24E88B658@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = type metadata accessor for ButtonGroupItemType();
  MEMORY[0x28223BE20](v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_24F929888();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220288);
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ButtonGroupItem();
  *(&v35 + 1) = v14;
  v36.n128_u64[0] = sub_24E88CC18(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_24E88D45C(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24E88CC18(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *&v33 = sub_24F923598();
  BYTE8(v33) = v16 & 1;
  LOBYTE(a2) = *(a2 + *(type metadata accessor for GameDetailsButtonContainerView(0) + 36));
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v36.n128_u64[1] = KeyPath;
  *&v37 = sub_24E600A48;
  *(&v37 + 1) = v18;
  *&v32[0] = 0;
  *(&v32[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v32[0] = 0x7261646E6F636573;
  *(&v32[0] + 1) = 0xEF6E6F7474754279;
  sub_24E88D45C(a1 + *(v14 + 20), v7, type metadata accessor for ButtonGroupItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24E601704(v7, &qword_27F212E30);
      v20 = 0xEA00000000007265;
      v21 = 0x66664F656772616CLL;
      goto LABEL_7;
    }

LABEL_6:
    v21 = *v7;
    v20 = v7[1];

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  v21 = *v7;
  v20 = v7[1];
LABEL_7:
  MEMORY[0x253050C20](v21, v20);

  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  sub_24F9297C8();

  sub_24E601704(v31, &qword_27F2129B0);
  sub_24E601704(v32, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220278);
  sub_24E88F378();
  sub_24F925EE8();
  (*(v8 + 8))(v10, v28);
  sub_24E601704(&v33, &qword_27F220278);
  sub_24F927618();
  sub_24F9242E8();
  v22 = v30;
  (*(v11 + 32))(v30, v13, v29);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220270) + 36);
  v24 = v38;
  *(v23 + 64) = v37;
  *(v23 + 80) = v24;
  *(v23 + 96) = v39;
  v25 = v34;
  *v23 = v33;
  *(v23 + 16) = v25;
  result = v36;
  *(v23 + 32) = v35;
  *(v23 + 48) = result;
  return result;
}

uint64_t sub_24E88BB80@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_24F929888();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220288);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ButtonGroupItem();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v1, v9, &qword_27F21FF40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F21FF40);
    v14 = 1;
    v15 = v27;
  }

  else
  {
    sub_24E88D3F4(v9, v13, type metadata accessor for ButtonGroupItem);
    v32[3] = v10;
    v32[4] = sub_24E88CC18(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    sub_24E88D45C(v13, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24E88CC18(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    v30 = sub_24F923598();
    v31 = v17 & 1;
    v18 = *(v1 + *(type metadata accessor for GameDetailsButtonContainerView.OfferButtonView(0) + 20));
    KeyPath = swift_getKeyPath();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v32[5] = KeyPath;
    v32[6] = sub_24E602370;
    v32[7] = v20;
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
    sub_24F9297C8();
    sub_24E601704(v28, &qword_27F2129B0);
    sub_24E601704(v29, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220278);
    sub_24E88F378();
    v21 = v24;
    sub_24F925EE8();
    (*(v25 + 8))(v3, v26);
    sub_24E601704(&v30, &qword_27F220278);
    sub_24E88D394(v13, type metadata accessor for ButtonGroupItem);
    v22 = v27;
    (*(v5 + 32))(v27, v21, v4);
    v14 = 0;
    v15 = v22;
  }

  return (*(v5 + 56))(v15, v14, 1, v4);
}

uint64_t sub_24E88C068@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_24F927618();
  a2[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201B8);
  sub_24E889F28(v2);
  v6 = sub_24F9276F8();
  v7 = *(v2 + *(a1 + 36));
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201C0) + 36);
  *v8 = v6;
  v8[8] = v7;
  v9 = sub_24F9276F8();
  LOBYTE(a1) = *(v2 + *(a1 + 32));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2201C8);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  v11[8] = a1;
  return result;
}

uint64_t sub_24E88C134(int8x16_t *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v21 = a1[2];
  v22 = v2;
  v4 = a1[1];
  v19 = *a1;
  v20 = v4;
  v5 = a2[3];
  v6 = a2[1];
  *v26 = a2[2];
  *&v26[16] = v5;
  v7 = a2[1];
  v24 = *a2;
  v25 = v7;
  v8 = a1[3];
  v27[2] = v21;
  v27[3] = v8;
  v27[0] = v19;
  v27[1] = v3;
  v29 = v24;
  v32 = a2[3];
  v31 = *v26;
  v23 = a1[4].i64[0];
  *&v26[32] = *(a2 + 8);
  v9 = *(a2 + 8);
  v28 = a1[4].i64[0];
  v33 = v9;
  v30 = v6;
  v10 = v4.i64[0] >> 61;
  v11 = v19.i8[8];
  if ((v4.i64[0] >> 61) <= 1)
  {
    if (!v10)
    {
      if (v25 >> 61)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    if (v25 >> 61 == 1)
    {
      v15 = BYTE8(v24);
      sub_24E88C3F8(&v24, v18);
      sub_24E88C3F8(&v19, v18);
      sub_24E601704(v27, &qword_27F21FF28);
      v12 = v11 ^ v15 ^ 1;
      return v12 & 1;
    }

    goto LABEL_24;
  }

  if (v10 == 2)
  {
    if (v25 >> 61 == 2)
    {
      goto LABEL_10;
    }

LABEL_24:
    sub_24E88C3F8(&v24, v18);
    sub_24E88C3F8(&v19, v18);
    sub_24E601704(v27, &qword_27F21FF28);
    v12 = 0;
    return v12 & 1;
  }

  if (v10 != 3)
  {
    if (v20.i64[0] != 0x8000000000000000 || (v13 = vorrq_s8(v21, v22), v19.i64[0] | *&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v23 | v19.u8[8] | (*(&v19.u32[2] + 1) << 8) | ((*(&v19.u16[6] + 1) | (v19.u8[15] << 16)) << 40) | v20.i64[1]))
    {
      if (v25 >> 61 != 4)
      {
        goto LABEL_24;
      }

      if (v25 != 0x8000000000000000)
      {
        goto LABEL_24;
      }

      if (v24 != 1)
      {
        goto LABEL_24;
      }

      v16 = vorrq_s8(*&v26[8], *&v26[24]);
      if (*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *v26 | *(&v25 + 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v25 >> 61 != 4)
      {
        goto LABEL_24;
      }

      if (v25 != 0x8000000000000000)
      {
        goto LABEL_24;
      }

      v14 = vorrq_s8(*&v26[8], *&v26[24]);
      if (*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *v26 | *(&v25 + 1) | *(&v24 + 1) | v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (v25 >> 61 != 3)
  {
    goto LABEL_24;
  }

LABEL_10:
  sub_24E88C3F8(&v24, v18);
  sub_24E88C3F8(&v19, v18);
LABEL_11:
  sub_24E601704(v27, &qword_27F21FF28);
  v12 = 1;
  return v12 & 1;
}

uint64_t sub_24E88C468(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameHero(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v13 = type metadata accessor for GameHeroDetails(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF38);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_24E88C6F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameHero(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v13 = type metadata accessor for GameHeroDetails(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF30);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF38);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[13];

  return v18(v19, a2, a2, v17);
}

void sub_24E88C984()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E88D844(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_24E88CC60(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E819578(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GameHero(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for GameHeroDetails(319);
            if (v5 <= 0x3F)
            {
              sub_24E88CC60(319, &qword_27F21FF58, type metadata accessor for GameDetailsRibbon, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24E88CC60(319, &qword_27F21FF60, type metadata accessor for GameDetailsBanner, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_24E88CC60(319, &qword_27F21FF68, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_24E88D844(319, &qword_27F21FF70, &qword_27F21C5F0, &unk_24F955EE0, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
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
  }
}

uint64_t sub_24E88CC18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E88CC60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E88CCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24E88CE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E88CF50()
{
  sub_24E88CC60(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E819578(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E88D844(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24F928FD8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E88D300()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24E88D340()
{
  result = qword_27F21FFC0;
  if (!qword_27F21FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FFC0);
  }

  return result;
}

uint64_t sub_24E88D394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E88D3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E88D45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E88D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameDetailsHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E88D5B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameDetailsHeader(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24E88D670()
{
  type metadata accessor for GameDetailsHeader(319);
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24E88CC60(319, &qword_27F21FFF8, type metadata accessor for GameDetailsHeaderPresenter, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24E88D844(319, &qword_27F220000, &qword_27F21FFA0, &unk_24F962590, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24E88D844(319, &qword_27F220008, &qword_27F21FFA8, &unk_24F962598, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24E819578(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24E819578(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

void sub_24E88D844(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24E88D910()
{
  result = qword_27F220018;
  if (!qword_27F220018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220018);
  }

  return result;
}

unint64_t sub_24E88D968()
{
  result = qword_27F220020;
  if (!qword_27F220020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220020);
  }

  return result;
}

unint64_t sub_24E88D9C0()
{
  result = qword_27F220028;
  if (!qword_27F220028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220028);
  }

  return result;
}

uint64_t sub_24E88DA14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1869768040 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F62626972 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E6E6162 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7975426F546B7361 && a2 == 0xEE0072656E6E6142 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x747542726566666FLL && a2 == 0xEB000000006E6F74 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA489E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7542656E696C6E69 && a2 == 0xEC0000006E6F7474 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA48A00 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24E88DE2C()
{
  v1 = *(type metadata accessor for GameDetailsHeaderView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E888F68(v2);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for GameDetailsHeaderView(0);
  v51 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v51 + 16) & ~v51);
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  v3 = type metadata accessor for GameDetailsHeader(0);
  v4 = v3[6];
  v5 = sub_24F929608();
  v52 = *(v5 - 8);
  v53 = *(v52 + 48);
  if (!v53(v2 + v4, 1, v5))
  {
    (*(v52 + 8))(v2 + v4, v5);
  }

  v6 = v2 + v3[8];
  __swift_destroy_boxed_opaque_existential_1(v6);
  v7 = type metadata accessor for GameHero(0);
  v8 = v7[5];
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = v6 + v7[8];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v7[9];
  v13 = sub_24F92A6D8();
  v48 = *(v13 - 8);
  v49 = *(v48 + 48);
  if (!v49(v6 + v12, 1, v13))
  {
    (*(v48 + 8))(v6 + v12, v13);
  }

  v14 = v7[10];
  if (!v53(v6 + v14, 1, v5))
  {
    (*(v52 + 8))(v6 + v14, v5);
  }

  if (*(v6 + v7[11] + 24))
  {
  }

  v15 = v2 + v3[9];
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (*(v15 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v15 + 40);
  }

  v16 = *(type metadata accessor for GameHeroDetails(0) + 24);
  if (!v53(v15 + v16, 1, v5))
  {
    (*(v52 + 8))(v15 + v16, v5);
  }

  v17 = v2 + v3[10];
  v18 = type metadata accessor for GameDetailsRibbon();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (*(v17 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 40);
    }

    v19 = *(v18 + 24);
    if (!v53(v17 + v19, 1, v5))
    {
      (*(v52 + 8))(v17 + v19, v5);
    }
  }

  v50 = v13;
  v20 = v2 + v3[11];
  v21 = type metadata accessor for GameDetailsBanner();
  v22 = *(*(v21 - 8) + 48);
  if (!v22(v20, 1, v21))
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (*(v20 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1(v20 + 40);
    }

    v23 = *(v21 + 24);
    if (!v53(v20 + v23, 1, v5))
    {
      (*(v52 + 8))(v20 + v23, v5);
    }
  }

  v24 = v2 + v3[12];
  if (!v22(v24, 1, v21))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    if (*(v24 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1(v24 + 40);
    }

    v25 = *(v21 + 24);
    if (!v53(v24 + v25, 1, v5))
    {
      (*(v52 + 8))(v24 + v25, v5);
    }
  }

  v26 = v2 + v3[13];
  v27 = type metadata accessor for ButtonGroupItem();
  v28 = *(*(v27 - 1) + 48);
  if (!v28(v26, 1, v27))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v29 = v26 + v27[5];
    type metadata accessor for ButtonGroupItemType();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {

        v47 = *(type metadata accessor for OfferButtonInfo() + 24);
        v31 = sub_24F91F4A8();
        v45 = *(v31 - 8);
        v46 = v31;
        if (!(*(v45 + 48))(v29 + v47, 1))
        {
          (*(v45 + 8))(v29 + v47, v46);
        }

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload != 3)
      {
LABEL_48:
        v32 = v26 + v27[6];
        if (*(v32 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v32);
        }

        v33 = v27[7];
        if (!v49(v26 + v33, 1, v50))
        {
          (*(v48 + 8))(v26 + v33, v50);
        }

        v34 = v27[8];
        if (!v53(v26 + v34, 1, v5))
        {
          (*(v52 + 8))(v26 + v34, v5);
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

LABEL_54:

  v35 = v2 + v3[15];
  if (v28(v35, 1, v27))
  {
    goto LABEL_71;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  v36 = v35 + v27[5];
  type metadata accessor for ButtonGroupItemType();
  v37 = swift_getEnumCaseMultiPayload();
  if (v37 <= 1)
  {
    if (!v37)
    {

      goto LABEL_65;
    }

    if (v37 != 1)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if (v37 == 2)
  {

    v38 = *(type metadata accessor for OfferButtonInfo() + 24);
    v39 = sub_24F91F4A8();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v36 + v38, 1, v39))
    {
      (*(v40 + 8))(v36 + v38, v39);
    }

    goto LABEL_65;
  }

  if (v37 == 3)
  {
LABEL_61:
  }

LABEL_65:
  v41 = v35 + v27[6];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v27[7];
  if (!v49(v35 + v42, 1, v50))
  {
    (*(v48 + 8))(v35 + v42, v50);
  }

  v43 = v27[8];
  if (!v53(v35 + v43, 1, v5))
  {
    (*(v52 + 8))(v35 + v43, v5);
  }

LABEL_71:

  sub_24E62A5EC(*(v2 + *(v1 + 40)), *(v2 + *(v1 + 40) + 8));
  sub_24E62A5EC(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_24E88E874(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameDetailsHeaderView(0);

  return sub_24E889194(a1, a2);
}

unint64_t sub_24E88E8F4()
{
  result = qword_27F220070;
  if (!qword_27F220070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220030);
    sub_24E88E980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220070);
  }

  return result;
}

unint64_t sub_24E88E980()
{
  result = qword_27F220078;
  if (!qword_27F220078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220050);
    sub_24E602068(&qword_27F220080, &qword_27F220088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220078);
  }

  return result;
}

unint64_t sub_24E88EA38()
{
  result = qword_27F220090;
  if (!qword_27F220090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220068);
    sub_24E88EABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220090);
  }

  return result;
}

unint64_t sub_24E88EABC()
{
  result = qword_27F220098;
  if (!qword_27F220098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220098);
  }

  return result;
}

double sub_24E88EBA4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_24E88EBE0()
{
  result = qword_27F220150;
  if (!qword_27F220150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220150);
  }

  return result;
}

unint64_t sub_24E88EC34()
{
  result = qword_27F220190;
  if (!qword_27F220190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220168);
    sub_24E62BAC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220190);
  }

  return result;
}

uint64_t sub_24E88ED00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_24E88EDE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_24E88EEAC()
{
  sub_24E88CC60(319, &qword_27F21FF68, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E88D844(319, &qword_27F21FF70, &qword_27F21C5F0, &unk_24F955EE0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E88EFB0()
{
  result = qword_27F2201A8;
  if (!qword_27F2201A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2200A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220068);
    sub_24E88E8F4();
    sub_24E88EA38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E88CC18(&qword_27F2201B0, type metadata accessor for FocusableItemScrollViewOffsetModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2201A8);
  }

  return result;
}

unint64_t sub_24E88F1A8()
{
  result = qword_27F220258;
  if (!qword_27F220258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220230);
    sub_24E88F22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220258);
  }

  return result;
}

unint64_t sub_24E88F22C()
{
  result = qword_27F220260;
  if (!qword_27F220260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220228);
    sub_24E88F2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220260);
  }

  return result;
}

unint64_t sub_24E88F2B0()
{
  result = qword_27F220268;
  if (!qword_27F220268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220278);
    sub_24E88F378();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220268);
  }

  return result;
}

unint64_t sub_24E88F378()
{
  result = qword_27F220280;
  if (!qword_27F220280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220278);
    sub_24E66C1E0();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220280);
  }

  return result;
}

double sub_24E88F430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24E88F488()
{
  v1 = type metadata accessor for GameDetailsButtonContainerView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ButtonGroupItem();
  v5 = *(*(v4 - 1) + 48);
  if (v5(v0 + v2, 1, v4))
  {
    goto LABEL_18;
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  v6 = v3 + v4[5];
  type metadata accessor for ButtonGroupItemType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v8 = *(type metadata accessor for OfferButtonInfo() + 24);
    v9 = sub_24F91F4A8();
    v10 = *(v9 - 8);
    v34 = v8;
    v11 = v6 + v8;
    v12 = v9;
    if (!(*(v10 + 48))(v11, 1, v9))
    {
      (*(v10 + 8))(v6 + v34, v12);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_8:
  }

LABEL_12:
  v13 = v3 + v4[6];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v14 = v4[7];
  v15 = sub_24F92A6D8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v3 + v14, v15);
  }

  v17 = v4[8];
  v18 = sub_24F929608();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

LABEL_18:

  v20 = v3 + *(v1 + 24);
  if (v5(v20, 1, v4))
  {
    goto LABEL_35;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  v21 = v20 + v4[5];
  type metadata accessor for ButtonGroupItemType();
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 <= 1)
  {
    if (!v22)
    {

      goto LABEL_29;
    }

    if (v22 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v22 == 2)
  {

    v23 = *(type metadata accessor for OfferButtonInfo() + 24);
    v24 = sub_24F91F4A8();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v21 + v23, 1, v24))
    {
      (*(v25 + 8))(v21 + v23, v24);
    }

    goto LABEL_29;
  }

  if (v22 == 3)
  {
LABEL_25:
  }

LABEL_29:
  v26 = v20 + v4[6];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v27 = v4[7];
  v28 = sub_24F92A6D8();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v20 + v27, 1, v28))
  {
    (*(v29 + 8))(v20 + v27, v28);
  }

  v30 = v4[8];
  v31 = sub_24F929608();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v20 + v30, 1, v31))
  {
    (*(v32 + 8))(v20 + v30, v31);
  }

LABEL_35:

  return swift_deallocObject();
}

double sub_24E88FA14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GameDetailsButtonContainerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_24E88B658(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_24E88FAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E88FBAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_24E88FC70()
{
  sub_24E88CC60(319, &qword_27F21FF68, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24E88FD18()
{
  result = qword_27F2202A0;
  if (!qword_27F2202A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2201C8);
    sub_24E88FDD0();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2202A0);
  }

  return result;
}

unint64_t sub_24E88FDD0()
{
  result = qword_27F2202A8;
  if (!qword_27F2202A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2201C0);
    sub_24E602068(&qword_27F2202B0, &qword_27F2202B8);
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2202A8);
  }

  return result;
}

unint64_t sub_24E88FED4()
{
  result = qword_27F2202C0;
  if (!qword_27F2202C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F2202C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220278);
    sub_24E88F378();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2202C0);
  }

  return result;
}

uint64_t sub_24E88FFB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_24E890050(__int128 *a1, char a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 connectedScenes];

  sub_24E69A5C4(0, &qword_27F220358);
  sub_24E890DCC();
  v5 = sub_24F92BAA8();

  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_24F92C6F8();
    sub_24F92BAE8();
    v6 = v82;
    v7 = v83;
    v9 = v84;
    v8 = v85;
    v10 = v86;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);

    v8 = 0;
    v6 = v5;
  }

  v14 = 0;
  v15 = (v9 + 64) >> 6;
  v55 = v6;
  v56 = v8;
  v54 = v9;
LABEL_21:
  v16 = 0;
  if (v6 < 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v21 = v56;
    if (!v10)
    {
      while (1)
      {
        v8 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_58;
        }

        if (v8 >= v15)
        {
          break;
        }

        v10 = *(v7 + 8 * v8);
        ++v21;
        if (v10)
        {
          v56 = v8;
          goto LABEL_31;
        }
      }

      v10 = 0;
      if (v15 <= v56 + 1)
      {
        v26 = v56 + 1;
      }

      else
      {
        v26 = v15;
      }

      v8 = v26 - 1;
      goto LABEL_47;
    }

    v8 = v56;
LABEL_31:
    v22 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = *(*(v6 + 48) + ((v8 << 9) | (8 * v22)));
    if (!v20)
    {
      break;
    }

LABEL_32:
    if (![v20 activationState])
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = [v23 windows];
        sub_24E69A5C4(0, &qword_27F216450);
        v25 = sub_24F92B5A8();

        v14 = v25;
        v6 = v55;
        if (!v25)
        {
          goto LABEL_21;
        }

        v16 = 0;
        if (!(v14 >> 62))
        {
          goto LABEL_11;
        }

        while (1)
        {
          if (v16 == sub_24F92C738())
          {
            goto LABEL_35;
          }

          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x253052270](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            if (__OFADD__(v16, 1))
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            if ([v17 isKeyWindow])
            {
              v65 = v55;
              v66 = v7;
              v67 = v54;
              v68 = v8;
              v69 = v10;
              v70 = sub_24E67986C;
              v71 = 0;
              v72 = sub_24E679898;
              v73 = 0;
              v74 = sub_24E890B0C;
              v75 = 0;
              v76 = sub_24E890B1C;
              v77 = 0;
              v78 = sub_24E6798EC;
              v79 = 0;
              v80 = v14;
              v81 = v16 + 1;
              sub_24E890E34(&v65);

              v27 = [v18 windowScene];
              if (v27)
              {
                v28 = v27;
                v29 = a1[2];
                v30 = a1[4];
                v31 = a1[5];
                v62 = a1[3];
                v63 = v30;
                v64 = v31;
                v32 = a1[1];
                v59 = *a1;
                v60 = v32;
                v61 = v29;
                v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220368));
                sub_24E6EB8D8(a1, v58);
                v34 = sub_24F924D28();
                result = [v34 view];
                if (result)
                {
                  v36 = result;
                  v37 = [objc_opt_self() clearColor];
                  [v36 setBackgroundColor_];

                  v38 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v39 = swift_allocObject();
                  *(v39 + 16) = a2 & 1;
                  *(v39 + 24) = v38;
                  v40 = type metadata accessor for PassthroughWindow();
                  v41 = objc_allocWithZone(v40);
                  v42 = &v41[OBJC_IVAR____TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow_isPointInside];
                  *v42 = sub_24E890F0C;
                  v42[1] = v39;
                  v57.receiver = v41;
                  v57.super_class = v40;
                  v43 = objc_msgSendSuper2(&v57, sel_initWithWindowScene_, v28);
                  type metadata accessor for Level(0);
                  v58[0] = *MEMORY[0x277D772A8];
                  sub_24E890F18(&qword_27F220370, type metadata accessor for Level);
                  v44 = v43;
                  sub_24F922D28();
                  [v44 setWindowLevel_];
                  [v44 setRootViewController_];

                  [v44 makeKeyAndVisible];
                  [v18 makeKeyWindow];

                  return v44;
                }

                else
                {
                  __break(1u);
                }

                return result;
              }

              if (qword_27F211400 != -1)
              {
                swift_once();
              }

              v49 = sub_24F9220D8();
              __swift_project_value_buffer(v49, qword_27F39E850);
              v50 = sub_24F9220B8();
              v51 = sub_24F92BDB8();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                *v52 = 0;
                _os_log_impl(&dword_24E5DD000, v50, v51, "Unable to create overlay window as key window is missing", v52, 2u);
                MEMORY[0x2530542D0](v52, -1, -1);
              }

              return 0;
            }

            ++v16;
            if (v14 >> 62)
            {
              break;
            }

LABEL_11:
            if (v16 == *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }
          }
        }
      }
    }

LABEL_35:
    v6 = v55;
    if ((v55 & 0x8000000000000000) != 0)
    {
LABEL_22:
      v19 = sub_24F92C778();
      if (!v19)
      {
        break;
      }

      *&v59 = v19;
      swift_dynamicCast();
      v20 = v65;
      if (!v65)
      {
        break;
      }

      goto LABEL_32;
    }
  }

  v6 = v55;
LABEL_47:
  v65 = v6;
  v66 = v7;
  v67 = v54;
  v68 = v8;
  v69 = v10;
  v70 = sub_24E67986C;
  v71 = 0;
  v72 = sub_24E679898;
  v73 = 0;
  v74 = sub_24E890B0C;
  v75 = 0;
  v76 = sub_24E890B1C;
  v77 = 0;
  v78 = sub_24E6798EC;
  v79 = 0;
  v80 = v14;
  v81 = v16;
  sub_24E890E34(&v65);

  if (qword_27F211400 != -1)
  {
LABEL_60:
    swift_once();
  }

  v45 = sub_24F9220D8();
  __swift_project_value_buffer(v45, qword_27F39E850);
  v46 = sub_24F9220B8();
  v47 = sub_24F92BDB8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24E5DD000, v46, v47, "Unable to create overlay window as key window is missing", v48, 2u);
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  return 0;
}

void sub_24E8908A8(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong view];

      if (!v11)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v12 = [v11 subviews];

      sub_24E69A5C4(0, &qword_27F220378);
      v13 = sub_24F92B5A8();

      if (v13 >> 62)
      {
        if (sub_24F92C738())
        {
          goto LABEL_6;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](0, v13);
          goto LABEL_9;
        }

        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v13 + 32);
LABEL_9:
          v15 = v14;

          [v15 convertPoint:a1 fromCoordinateSpace:a4, a5];
          [v15 pointInside:a2 withEvent:?];
LABEL_17:

          return;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E850);
    v15 = sub_24F9220B8();
    v17 = sub_24F92BDB8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v17, "No content view for handling the event", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    goto LABEL_17;
  }
}

id sub_24E890B1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E890B30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_24F928AE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v14 = a4;

  sub_24E6EB5D4(sub_24E890D1C, v13, v17);
  v15 = sub_24E890050(v17, 1);
  sub_24E890D78(v17);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220350);
  sub_24F927178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v10 + 104))(v12, *MEMORY[0x277D21CA8], v9);
  return sub_24F92A988();
}

uint64_t sub_24E890CD4()
{

  return swift_deallocObject();
}

unint64_t sub_24E890DCC()
{
  result = qword_27F238590;
  if (!qword_27F238590)
  {
    sub_24E69A5C4(255, &qword_27F220358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238590);
  }

  return result;
}

uint64_t sub_24E890E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E890E9C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24E890ED4()
{

  return swift_deallocObject();
}

uint64_t sub_24E890F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E890F8C()
{
  v1 = sub_24F925018();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220380);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v12 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v12;
  v17 = *(v0 + 32);
  if (BYTE8(v12) > 2u)
  {
    if (BYTE8(v12) > 4u)
    {
      if (BYTE8(v12) != 5)
      {
        sub_24F924F88();
        goto LABEL_14;
      }
    }

    else if (BYTE8(v12) == 3)
    {
      sub_24F925008();
      goto LABEL_14;
    }

    sub_24F924F98();
    goto LABEL_14;
  }

  if (BYTE8(v12))
  {
    if (BYTE8(v12) == 1)
    {
      sub_24F924FB8();
    }

    else
    {
      sub_24F924FE8();
    }
  }

  else
  {
    sub_24F924FF8();
  }

LABEL_14:
  v13 = (*(v2 + 32))(v7, v4, v1);
  MEMORY[0x28223BE20](v13);
  *&v16[-1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220388);
  sub_24E891494();
  sub_24F9242A8();
  v14 = sub_24E602068(&qword_27F2203A0, &qword_27F220380);
  MEMORY[0x25304AA30](v11, v8, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24E89126C(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = v6;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_24E8915A0(&v7, v5);
  sub_24E891610(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB00);
  type metadata accessor for PageToolbarItemView(0);
  sub_24E602068(&qword_27F2203A8, &qword_27F21DB00);
  sub_24E891648(&qword_27F220398, type metadata accessor for PageToolbarItemView);
  sub_24E891648(&qword_27F2203B0, type metadata accessor for PageToolbarItem);
  return sub_24F927238();
}

uint64_t sub_24E8913F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = type metadata accessor for PageToolbarItemView(0);
  sub_24E891690(a1, a3 + *(v9 + 36));
  *a3 = 0x4046000000000000;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
}

unint64_t sub_24E891494()
{
  result = qword_27F220390;
  if (!qword_27F220390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220388);
    sub_24E891648(&qword_27F220398, type metadata accessor for PageToolbarItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220390);
  }

  return result;
}

uint64_t sub_24E891548()
{

  return swift_deallocObject();
}

uint64_t sub_24E8915A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E891648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E891690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageToolbarItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8916F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220380);
  sub_24E602068(&qword_27F2203A0, &qword_27F220380);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E8917B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E891900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for BoolSetting()
{
  result = qword_27F2203B8;
  if (!qword_27F2203B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E891A88()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E891B90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E893604();
  sub_24F92D128();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = 1;
    sub_24F92CD08();
    v10[13] = *(v3 + 56);
    v10[12] = 2;
    sub_24E893708();
    sub_24F92CD48();
    v10[11] = 3;
    sub_24F92CD18();
    v10[10] = 4;
    sub_24F92CD18();
    v10[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for BoolSetting();
    v10[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v10[7] = 7;
    sub_24F929608();
    sub_24E89375C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E891F54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220418);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for BoolSetting();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 4) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 12) = 0;
  v42 = v14 + 64;
  sub_24E61DA68(&v45, (v14 + 64), qword_27F21B590);
  v15 = *(v12 + 48);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 52);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v43 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E893604();
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v25 = v41;
    v24 = v42;
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_24E601704(v24, qword_27F24EC90);
    sub_24E601704(&v14[v25], &qword_27F215440);
    return sub_24E601704(&v14[v43], &qword_27F213E68);
  }

  else
  {
    v35 = v5;
    v40 = v7;
    v23 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v46;
    *v14 = v45;
    *(v14 + 1) = v26;
    *(v14 + 4) = v47;
    LOBYTE(v45) = 1;
    v27 = sub_24F92CC28();
    v29 = v41;
    v28 = v42;
    *(v14 + 5) = v27;
    *(v14 + 6) = v30;
    v48 = 2;
    sub_24E893658();
    sub_24F92CC68();
    v14[56] = v45;
    LOBYTE(v45) = 3;
    v14[57] = sub_24F92CC38() & 1;
    LOBYTE(v45) = 4;
    v14[58] = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v48 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v28, qword_27F24EC90);
    LOBYTE(v45) = 6;
    sub_24E65CAA0();
    v31 = v40;
    sub_24F92CC68();
    sub_24E61DA68(v31, &v14[v29], &qword_27F215440);
    LOBYTE(v45) = 7;
    sub_24E89375C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v32 = v37;
    v33 = v39;
    sub_24F92CC18();
    (*(v23 + 8))(v10, v33);
    sub_24E61DA68(v32, &v14[v43], &qword_27F213E68);
    sub_24E8931C0(v14, v36);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24E8936AC(v14);
  }
}