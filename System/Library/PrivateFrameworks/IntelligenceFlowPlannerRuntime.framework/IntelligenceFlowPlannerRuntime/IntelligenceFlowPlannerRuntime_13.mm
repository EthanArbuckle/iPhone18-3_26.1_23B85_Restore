uint64_t sub_22C47C34C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];

  MEMORY[0x2318B7850](0x746E65746E6F635FLL, 0xE90000000000005FLL);
  v11 = sub_22C90B47C();
  MEMORY[0x2318B7850](v11);

  v12 = sub_22C47C440(v8, v10, a2, a3);

  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = v12;
  }

  return result;
}

uint64_t sub_22C47C440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[3];
  v11 = v4[4];
  sub_22C374168(v4, v10);
  v12 = (*(v11 + 8))(a1, a2, v10, v11);
  if (!v5)
  {
    v14 = v12;
    v15 = 0;
    v16 = *(v12 + 16);
    v17 = v12 + 40;
    v18 = MEMORY[0x277D84F90];
LABEL_4:
    v19 = (v17 + 16 * v15);
    while (v16 != v15)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
LABEL_35:
        v43 = *(v10 + 16);
        sub_22C5902A0();
        v10 = v44;
        goto LABEL_31;
      }

      ++v15;
      v10 = *(v19 - 1);
      v20 = *v19;
      v19 += 2;
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v48 = v17;

        v49[0] = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v18 + 16);
          sub_22C3B5E2C();
          v18 = v49[0];
        }

        v23 = *(v18 + 16);
        v24 = v23 + 1;
        v17 = v48;
        if (v23 >= *(v18 + 24) >> 1)
        {
          v46 = *(v18 + 16);
          v47 = v23 + 1;
          sub_22C3B5E2C();
          v23 = v46;
          v24 = v47;
          v17 = v48;
          v18 = v49[0];
        }

        *(v18 + 16) = v24;
        v25 = v18 + 16 * v23;
        *(v25 + 32) = v10;
        *(v25 + 40) = v20;
        goto LABEL_4;
      }
    }

    v26 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
    v27 = *(v18 + 16);

    v28 = 0;
    v29 = (v18 + 16 * v27 + 24);
    if (v27)
    {
      while (1)
      {
        v30 = *(v18 + 16);
        v31 = v27 == v30 ? *(v18 + 16) : v28;
        v28 = v31 - 1;
        if (__OFSUB__(v31, 1))
        {
          break;
        }

        if (v27 > v30)
        {
          goto LABEL_29;
        }

        v32 = *(v29 - 1);
        v14 = *v29;
        v49[0] = v31 - 1;
        v49[1] = v32;
        v49[2] = v14;

        sub_22C47C818(&v50, v49, v18, a3, a4);

        v29 -= 2;
        if (!--v27)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_22:

      v10 = v50;
      v33 = *(v50 + 16);
      if (v33 <= 1)
      {
        return v10;
      }

      v49[0] = v26;
      sub_22C3B63F4();
      v14 = v49[0];
      v47 = v10;
      v34 = (v10 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v35;
        v39 = *(v14 + 16);
        v38 = *(v14 + 24);
        v49[0] = v14;

        if (v39 >= v38 >> 1)
        {
          sub_22C3B63F4();
          v14 = v49[0];
        }

        *(v14 + 16) = v39 + 1;
        *(v14 + 8 * v39 + 32) = v37 | 0x4000000000000000;
        v34 += 3;
        --v33;
      }

      while (v33);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v14;
    v14 = v40 | 0x8000000000000000;

    v10 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_31:
    v41 = *(v10 + 16);
    if (v41 >= *(v10 + 24) >> 1)
    {
      sub_22C5902A0();
      v10 = v45;
    }

    *(v10 + 16) = v41 + 1;
    v42 = (v10 + 24 * v41);
    v42[4] = a3;
    v42[5] = a4;
    v42[6] = v14;
  }

  return v10;
}

double sub_22C47C7D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C3A5D48(*a1);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_22C47C818(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = sub_22C90A2BC();
  v14 = v13;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v16 = *a1 + 24 * v15;
    v40 = a4;
    v17 = *(v16 + 16);
    v39 = *(v16 + 8);
    v18 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v19 = v12;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22C90F870;
    v21 = swift_allocObject();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_22C90F870;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v14;
    *(v22 + 32) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v39;
    *(v24 + 24) = v17;
    *(v22 + 40) = v24 | 0x4000000000000000;
    *(v21 + 16) = v22;
    v25 = v21 | 0xC000000000000000;
    a4 = v40;
    *(v20 + 32) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v20 + 40) = v26;
    *(v18 + 16) = v20;
    v27 = v18 | 0x8000000000000000;
  }

  else if (*(a3 + 16) <= 1uLL)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v12;
    *(v27 + 24) = v14;
  }

  else
  {
    v41 = a4;
    v28 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v29 = v14;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22C90F870;
    v31 = swift_allocObject();
    *(v31 + 16) = v12;
    *(v31 + 24) = v29;
    *(v30 + 32) = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0xE000000000000000;
    *(v30 + 40) = v32;
    *(v28 + 16) = v30;
    v27 = v28 | 0x8000000000000000;
    a4 = v41;
  }

  MEMORY[0x2318B7850](95, 0xE100000000000000);
  v33 = sub_22C90B47C();
  MEMORY[0x2318B7850](v33);

  v34 = a4;

  sub_22C3D0F20();
  v35 = *(*a1 + 16);
  sub_22C3D10B4(v35);

  v37 = *a1;
  *(v37 + 16) = v35 + 1;
  v38 = (v37 + 24 * v35);
  v38[4] = v34;
  v38[5] = a5;
  v38[6] = v27;
  *a1 = v37;
  return result;
}

uint64_t sub_22C47CB14(uint64_t a1)
{
  v2 = sub_22C47CDE0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C47CB50(uint64_t a1)
{
  v2 = sub_22C47CDE0();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C47CBE8()
{
  result = qword_27D9BC8E8;
  if (!qword_27D9BC8E8)
  {
    sub_22C3AC1A0(&qword_27D9BAE30, &qword_22C914EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC8E8);
  }

  return result;
}

unint64_t sub_22C47CC4C()
{
  result = qword_27D9BC8F0;
  if (!qword_27D9BC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC8F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QuotableStringGrammarConverter.GeneratorError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C47CD8C()
{
  result = qword_27D9BC8F8;
  if (!qword_27D9BC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC8F8);
  }

  return result;
}

unint64_t sub_22C47CDE0()
{
  result = qword_27D9BC900;
  if (!qword_27D9BC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC900);
  }

  return result;
}

uint64_t sub_22C47CE34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C90128C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C47CE78(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB6A8, &qword_22C90FAB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C47CEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C47CF44(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C47CFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C47D004()
{
  v2 = sub_22C906FCC();
  v3 = sub_22C369CE4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = sub_22C36A8DC(v8, v13);
  v10(v9);
  v11 = (*(v5 + 88))(v1, v0);
  if (v11 == *MEMORY[0x277D1DF10])
  {
    return 43;
  }

  if (v11 == *MEMORY[0x277D1DF18])
  {
    return 45;
  }

  if (v11 == *MEMORY[0x277D1DF08])
  {
    return 33;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C47D10C()
{
  v2 = sub_22C906D9C();
  v3 = sub_22C369CE4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = sub_22C36A8DC(v8, v13);
  v10(v9);
  v11 = (*(v5 + 88))(v1, v0);
  if (v11 == *MEMORY[0x277D1DE50])
  {
    return 61;
  }

  if (v11 == *MEMORY[0x277D1DE38])
  {
    return 43;
  }

  if (v11 == *MEMORY[0x277D1DE88])
  {
    return 15659;
  }

  if (v11 == *MEMORY[0x277D1DE80])
  {
    return 45;
  }

  if (v11 == *MEMORY[0x277D1DE18])
  {
    return 15661;
  }

  if (v11 == *MEMORY[0x277D1DE58])
  {
    return 47;
  }

  if (v11 == *MEMORY[0x277D1DE00])
  {
    return 15663;
  }

  if (v11 == *MEMORY[0x277D1DE70])
  {
    return 42;
  }

  if (v11 == *MEMORY[0x277D1DE10])
  {
    return 15658;
  }

  if (v11 == *MEMORY[0x277D1DE60])
  {
    return 94;
  }

  if (v11 == *MEMORY[0x277D1DE48])
  {
    return 15677;
  }

  if (v11 == *MEMORY[0x277D1DE78])
  {
    return 15649;
  }

  if (v11 == *MEMORY[0x277D1DE28])
  {
    return 28265;
  }

  if (v11 == *MEMORY[0x277D1DE20])
  {
    return 15678;
  }

  if (v11 == *MEMORY[0x277D1DDF8])
  {
    return 62;
  }

  if (v11 == *MEMORY[0x277D1DE08])
  {
    return 15676;
  }

  if (v11 == *MEMORY[0x277D1DE68])
  {
    return 60;
  }

  if (v11 == *MEMORY[0x277D1DE40])
  {
    return 6581857;
  }

  if (v11 == *MEMORY[0x277D1DE30])
  {
    return 29295;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C47D420(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  sub_22C3B6AB4();
  if (v2)
  {
    for (i = (a1 + 72); ; i += 48)
    {
      v4 = *(i - 5);
      if (*i)
      {
        break;
      }

      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      sub_22C456C30(*(i - 5), v5, v6, v7, v8, 0);
      v9 = *(v14 + 16);
      v10 = v9 + 1;
      if (v9 >= *(v14 + 24) >> 1)
      {
        sub_22C3B6AB4();
        v10 = v9 + 1;
      }

      *(v14 + 16) = v10;
      v11 = (v14 + 40 * v9);
      v11[4] = v4;
      v11[5] = v5;
      v11[6] = v6;
      v11[7] = v7;
      v11[8] = v8;
      if (!--v2)
      {
        return v14;
      }
    }

    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v12 = v4;
  }

  return v14;
}

unint64_t sub_22C47D588(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_22C36D2A8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v6 + 32) = v7;
  sub_22C480170(a1, a2);

  return v6 | 0x8000000000000000;
}

uint64_t sub_22C47D60C(uint64_t a1, uint64_t a2)
{
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v6 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = v7;
  return v6 | 0x6000000000000000;
}

uint64_t sub_22C47D6D8(uint64_t a1)
{
  v1 = sub_22C3DB9B0(a1);
  sub_22C369AEC();
  v2 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v2 + 16) = v3;
  return v2 | 0x6000000000000000;
}

uint64_t sub_22C47D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3DB9B0(a3);
  sub_22C36D2A8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 32) = v7;
  sub_22C369AEC();
  v8 = swift_allocObject();
  sub_22C369AEC();
  v9 = swift_allocObject();
  *(v9 + 16) = v6 | 0x8000000000000000;
  *(v8 + 16) = v9;

  return v8 | 0x6000000000000000;
}

void sub_22C47D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v183 = v24;
  v189 = v25;
  v190 = sub_22C90931C();
  v26 = sub_22C369824(v190);
  v168 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v185 = v30;
  v31 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  v186 = &v158 - v35;
  sub_22C36BA0C();
  v184 = sub_22C90430C();
  v36 = sub_22C369824(v184);
  v177 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  v179 = v40;
  sub_22C36BA0C();
  v171 = sub_22C9063DC();
  v41 = sub_22C369824(v171);
  v170 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  v169 = v45;
  sub_22C36BA0C();
  v46 = sub_22C90906C();
  v47 = sub_22C369824(v46);
  v173 = v48;
  v174 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  v172 = v51;
  v52 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v52);
  v54 = *(v53 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v55);
  v182 = &v158 - v56;
  sub_22C36BA0C();
  v57 = sub_22C9093BC();
  v58 = sub_22C369824(v57);
  v175 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369ABC();
  v187 = (v62 - v63);
  sub_22C369930();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  v191 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  v178 = v67;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  v176 = &v158 - v69;
  sub_22C36BA0C();
  v70 = sub_22C90952C();
  v71 = sub_22C369824(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C369ABC();
  v78 = (v76 - v77);
  MEMORY[0x28223BE20](v79);
  v81 = &v158 - v80;
  v82 = sub_22C90963C();
  v83 = sub_22C369824(v82);
  v85 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22C369838();
  v90 = v89 - v88;
  v91 = v85[2];
  v188 = v23;
  v91(v90, v23, v82);
  v92 = v85[11];
  v93 = sub_22C36BA00();
  v95 = v94(v93);
  LODWORD(v23) = *MEMORY[0x277D72E08];
  v96 = v85[1];
  v97 = sub_22C36BA00();
  v98(v97);
  if (v95 != v23)
  {
    goto LABEL_25;
  }

  sub_22C90959C();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v78);
  v99 = *(v73 + 8);
  v99(v81, v70);
  if (qword_27D9BA670 != -1)
  {
    swift_once();
  }

  sub_22C37AA60(v70, qword_27D9E3EF8);
  v100 = sub_22C90950C();
  v99(v78, v70);
  if ((v100 & 1) == 0)
  {
    goto LABEL_25;
  }

  v101 = sub_22C90914C();
  v102 = v182;
  sub_22C6053C8(v101, v182);

  if (sub_22C370B74(v102, 1, v57) == 1)
  {
    sub_22C3770B0(v102, &qword_27D9BB908, &qword_22C910960);
LABEL_25:
    sub_22C47E38C();
    sub_22C386130();
    goto LABEL_26;
  }

  v104 = v175;
  v103 = v176;
  (*(v175 + 32))(v176, v102, v57);
  v105 = *(v104 + 16);
  v106 = v178;
  v182 = v104 + 16;
  v183 = v105;
  v105(v178, v103, v57);
  v180 = *(v104 + 88);
  v181 = v104 + 88;
  if (v180(v106, v57) != *MEMORY[0x277D729E0])
  {
    v148 = *(v104 + 8);
    v148(v103, v57);
    v148(v106, v57);
    goto LABEL_25;
  }

  v107 = *(v104 + 96);
  v167 = v104 + 96;
  v166 = v107;
  v107(v106, v57);
  v108 = *v106;
  v109 = swift_projectBox();
  v110 = v173;
  v111 = v174;
  (*(v173 + 16))(v172, v109, v174);

  v159 = sub_22C90905C();
  v112 = *(v159 + 16);
  if (v112)
  {
    v113 = v104;
    v114 = v159 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v189 = *(v113 + 72);
    LODWORD(v178) = *MEMORY[0x277D72A58];
    v188 = (v113 + 8);
    v165 = (v168 + 16);
    v164 = v168 + 88;
    v163 = *MEMORY[0x277D729B8];
    v162 = v168 + 8;
    v161 = v168 + 96;
    v160 = (v177 + 32);
    v168 = MEMORY[0x277D84F90];
    v115 = v184;
    v116 = v190;
    v117 = v191;
    v118 = v186;
    v119 = v187;
    while (1)
    {
      v120 = v183;
      v183(v117, v114, v57);
      v120(v119, v117, v57);
      v121 = v180(v119, v57);
      if (v121 != v178)
      {
        break;
      }

      v166(v119, v57);
      v122 = *v119;
      v123 = swift_projectBox();
      v124 = v185;
      (*v165)(v185, v123, v116);
      v125 = sub_22C377C18(&a11);
      v127 = v126(v125);
      if (v127 != v163)
      {
        v141 = sub_22C370640();
        v142(v141);
        v143 = sub_22C377C18(&a9);
        v144(v143);

        v118 = v186;
        v119 = v187;
        goto LABEL_20;
      }

      v128 = sub_22C377C18(&v193);
      v129(v128);
      v130 = *v124;
      v131 = v124[1];

      v118 = v186;
      sub_22C36BA00();
      v115 = v184;
      sub_22C90431C();
      v132 = sub_22C370640();
      v133(v132);
      v134 = sub_22C370B74(v118, 1, v115);
      v119 = v187;
      if (v134 != 1)
      {
        v135 = *v160;
        (*v160)(v179, v118, v115);
        v136 = v168;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = *(v136 + 16);
          sub_22C5921DC();
          v136 = v146;
        }

        v168 = v136;
        v137 = *(v136 + 16);
        if (v137 >= *(v136 + 24) >> 1)
        {
          sub_22C5921DC();
          v168 = v147;
        }

        v138 = v168;
        *(v168 + 16) = v137 + 1;
        v139 = v138 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v137;
        v115 = v184;
        v135(v139, v179, v184);
        v119 = v187;
        goto LABEL_22;
      }

LABEL_21:
      sub_22C3770B0(v118, &qword_27D9BB638, &unk_22C9150C0);
LABEL_22:
      v116 = v190;
      v114 += v189;
      --v112;
      v117 = v191;
      if (!v112)
      {

        v111 = v174;
        v104 = v175;
        v110 = v173;
        v149 = v168;
        goto LABEL_28;
      }
    }

    v140 = *v188;
    (*v188)(v117, v57);
    v140(v119, v57);
LABEL_20:
    sub_22C36C640(v118, 1, 1, v115);
    goto LABEL_21;
  }

  v149 = MEMORY[0x277D84F90];
LABEL_28:
  v150 = v169;
  sub_22C903F7C();

  v151 = sub_22C9063CC();
  v152 = sub_22C90AACC();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v192 = v154;
    *v153 = 136315138;
    v155 = MEMORY[0x2318B7AD0](v149, v184);
    v157 = sub_22C36F9F4(v155, v156, &v192);

    *(v153 + 4) = v157;
    _os_log_impl(&dword_22C366000, v151, v152, "UTTypes extracted from dynamic properties on SearchGlobalEntity: %s", v153, 0xCu);
    sub_22C36FF94(v154);
    v110 = v173;
    sub_22C3699EC();
    v111 = v174;
    sub_22C3699EC();
  }

  (*(v170 + 8))(v150, v171);
  sub_22C7F4FB4();
  sub_22C386130();
  (*(v110 + 8))(v172, v111);
  (*(v104 + 8))(v176, v57);
LABEL_26:
  sub_22C36BA00();
  sub_22C36CC48();
}

void sub_22C47E38C()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90430C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_22C9095BC();
  v44[2] = v1;
  sub_22C47B5D0(sub_22C480250, v44, v14);
  v43 = v1;
  sub_22C3B2B00();
  v16 = v15;

  sub_22C7F4FB4();
  v17 = 0;
  v45 = v18;
  v46 = v19;
  v34 = *(v16 + 16);
  v35 = v16;
  v33 = v16 + 32;
  v42 = v5 + 16;
  v38 = v5;
  v20 = (v5 + 8);
LABEL_2:
  if (v17 == v34)
  {

    sub_22C36CC48();
  }

  else
  {
    if (v17 < *(v35 + 16))
    {
      v21 = (v33 + 16 * v17);
      v22 = *v21;
      v23 = v21[1];
      v39 = *(v23 + 16);
      v36 = v22;
      v37 = v17 + 1;

      v40 = v23;

      v24 = 0;
      while (1)
      {
        if (v24 == v39)
        {

          v17 = v37;
          goto LABEL_2;
        }

        v25 = *(v38 + 72);
        v26 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = v24;
        v27 = *(v38 + 16);
        v27(v13, v40 + v26 + v25 * v24, v2);
        v28 = v46 + v26;
        if (v45)
        {

          sub_22C7DB73C();
          v30 = v29;

          if ((v30 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v31 = *(v46 + 16) + 1;
          while (--v31)
          {
            v27(v10, v28, v2);
            sub_22C4802A4();
            v32 = sub_22C90A0BC();
            (*v20)(v10, v2);
            v28 += v25;
            if (v32)
            {
              goto LABEL_12;
            }
          }
        }

        sub_22C7D4BE0();
LABEL_12:
        v24 = v41 + 1;
        (*v20)(v13, v2);
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C47E688()
{
  v0 = sub_22C90963C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90964C();
  v5 = sub_22C90962C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_22C47E774()
{
  sub_22C36BA7C();
  v0 = sub_22C90941C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C90963C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C90964C();
  v18 = sub_22C90962C();
  (*(v12 + 8))(v17, v9);
  if (v18)
  {
    sub_22C90961C();
    sub_22C47E8FC();
    (*(v3 + 8))(v8, v0);
  }

  else
  {
    sub_22C7F4FB4();
  }

  sub_22C36CC48();
}

void sub_22C47E8FC()
{
  sub_22C36BA7C();
  v123 = v0;
  v127 = v1;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v118 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v117 = v7;
  sub_22C36BA0C();
  v115 = sub_22C9094EC();
  v8 = sub_22C369824(v115);
  v131 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v130 = v12;
  sub_22C36BA0C();
  v13 = sub_22C90963C();
  v14 = sub_22C369824(v13);
  v121 = v15;
  v122 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v120 = v18;
  sub_22C36BA0C();
  v19 = sub_22C90969C();
  v20 = sub_22C369824(v19);
  v132 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v129 = (v24 - v25);
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  v128 = &v109 - v27;
  v28 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  v29 = *(*(v28 - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  v33 = sub_22C90941C();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v41 = (v40 - v39);
  v42 = sub_22C90952C();
  v43 = sub_22C369824(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C369ABC();
  v114 = (v48 - v49);
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  v116 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v119 = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  v56 = &v109 - v55;
  (*(v36 + 16))(v41, v127, v33);
  if ((*(v36 + 88))(v41, v33) != *MEMORY[0x277D72AB8])
  {
    (*(v36 + 8))(v41, v33);
    sub_22C7F4FB4();
    sub_22C386130();
LABEL_33:
    sub_22C36BA00();
    sub_22C36CC48();
    return;
  }

  (*(v36 + 96))(v41, v33);
  v57 = *v41;
  v58 = swift_projectBox();
  sub_22C4802FC(v58, v32);
  v59 = *&v32[*(v28 + 48)];
  v112 = v45;
  v60 = *(v45 + 32);
  v113 = v56;
  v60(v56, v32, v42);

  v61 = *(v59 + 16);
  v62 = v42;
  v111 = v2;
  if (v61)
  {
    v110 = v42;
    v127 = v132[2];
    v63 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v109 = v59;
    v64 = v59 + v63;
    v125 = v132[9];
    v65 = v132 + 11;
    v126 = *MEMORY[0x277D72E68];
    v66 = v132 + 1;
    v132 += 2;
    v124 = v132 + 10;
    v67 = MEMORY[0x277D84F90];
    while (1)
    {
      v68 = v127;
      v69 = v128;
      v127(v128, v64, v19);
      v70 = v129;
      v68(v129, v69, v19);
      v71 = (*v65)(v70, v19);
      v72 = *v66;
      if (v71 == v126)
      {
        v72(v69, v19);
        (*v124)(v70, v19);
        v73 = *v70;
      }

      else
      {
        v72(v70, v19);
        v72(v69, v19);
        v73 = MEMORY[0x277D84F90];
      }

      v74 = *(v73 + 16);
      v75 = *(v67 + 16);
      if (__OFADD__(v75, v74))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v75 + v74 > *(v67 + 24) >> 1)
      {
        sub_22C5921DC();
        v67 = v76;
      }

      if (*(v73 + 16))
      {
        v77 = (*(v67 + 24) >> 1) - *(v67 + 16);
        v78 = *(sub_22C90430C() - 8);
        if (v77 < v74)
        {
          goto LABEL_36;
        }

        v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v80 = *(v78 + 72);
        swift_arrayInitWithCopy();

        if (v74)
        {
          v81 = *(v67 + 16);
          v82 = __OFADD__(v81, v74);
          v83 = v81 + v74;
          if (v82)
          {
            goto LABEL_37;
          }

          *(v67 + 16) = v83;
        }
      }

      else
      {

        if (v74)
        {
          goto LABEL_35;
        }
      }

      v64 += v125;
      --v61;
      v85 = v130;
      v84 = v131;
      if (!v61)
      {

        v62 = v110;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v85 = v130;
  v84 = v131;
LABEL_21:
  v87 = v120;
  v86 = v121;
  v88 = v122;
  (*(v121 + 16))(v120, v123, v122);
  v89 = (*(v86 + 88))(v87, v88);
  v90 = v113;
  v91 = v112;
  if (v89 == *MEMORY[0x277D72E10])
  {
    v92 = *(v112 + 16);
    v93 = v119;
    v92(v119, v113, v62);
    if ((*(v91 + 88))(v93, v62) == *MEMORY[0x277D72D50])
    {
      (*(v91 + 96))(v93, v62);
      v94 = *v93;
      v95 = swift_projectBox();
      v96 = v115;
      (*(v84 + 16))(v85, v95, v115);
      if ((*(v84 + 88))(v85, v96) == *MEMORY[0x277D72CC0])
      {
        (*(v84 + 8))(v85, v96);

LABEL_26:
        sub_22C7F4FB4();
        sub_22C386130();
        (*(v91 + 8))(v90, v62);
        goto LABEL_33;
      }

      (*(v84 + 8))(v85, v96);
    }

    else
    {

      (*(v91 + 8))(v93, v62);
    }

    v97 = v117;
    sub_22C903F7C();
    v98 = v116;
    v92(v116, v90, v62);
    v99 = sub_22C9063CC();
    v100 = sub_22C90AACC();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = v132;
      *v101 = 136315138;
      v92(v114, v98, v62);
      v102 = sub_22C90A1AC();
      v103 = v91;
      v104 = v97;
      v106 = v105;
      v107 = *(v103 + 8);
      v107(v98, v62);
      v108 = sub_22C36F9F4(v102, v106, &v133);

      *(v101 + 4) = v108;
      _os_log_impl(&dword_22C366000, v99, v100, "Skipping UTType extraction for non-file import: %s", v101, 0xCu);
      sub_22C36FF94(v132);
      sub_22C3699EC();
      sub_22C3699EC();

      v90 = v113;
      (*(v118 + 8))(v104, v111);
    }

    else
    {

      v107 = *(v91 + 8);
      v107(v98, v62);
      (*(v118 + 8))(v97, v111);
    }

    sub_22C7F4FB4();
    sub_22C386130();
    v107(v90, v62);
    goto LABEL_33;
  }

  if (v89 == *MEMORY[0x277D72E08])
  {
    goto LABEL_26;
  }

LABEL_38:
  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C47F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = sub_22C47D420(a1);
  sub_22C47F4C8(v4, a2);

  *(a2 + 40) = 0;
  return result;
}

void sub_22C47F4C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v6 = v26;
    v7 = (v3 + 32);
    v8 = *(v26 + 16);
    do
    {
      v10 = *v7;
      v7 += 5;
      v9 = v10;
      v11 = v8 + 1;
      v12 = *(v26 + 24);

      if (v8 >= v12 >> 1)
      {
        sub_22C3B63D4();
      }

      *(v26 + 16) = v11;
      *(v26 + 8 * v8++ + 32) = v9;
      --v4;
    }

    while (v4);
  }

  else
  {
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      v14 = MEMORY[0x277D84F90];
LABEL_15:

      v19 = sub_22C47D738(2604, 0xE200000000000000, v14);

      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90FB40;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_22C90A49C();
      *(v21 + 24) = v22;
      *(inited + 32) = v21;
      *(inited + 40) = v19;
      v23 = swift_allocObject();

      *(v23 + 16) = sub_22C90A49C();
      *(v23 + 24) = v24;
      *(inited + 48) = v23;
      v25 = sub_22C47D738(10, 0xE100000000000000, inited);

      swift_setDeallocating();
      sub_22C58FFB0();
      *a2 = v25;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      return;
    }

    v6 = MEMORY[0x277D84F90];
  }

  v27 = v5;
  sub_22C3B63D4();
  v13 = 0;
  v14 = v27;
  v15 = *(v6 + 16);
  while (v15 != v13)
  {
    if (v13 >= *(v6 + 16))
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v13 + 32);

    v17 = sub_22C47F7A0(v13, v16);

    v18 = *(v27 + 16);
    if (v18 >= *(v27 + 24) >> 1)
    {
      sub_22C3B63D4();
    }

    *(v27 + 16) = v18 + 1;
    *(v27 + 8 * v18 + 32) = v17;
    if (v11 == ++v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_22C47F7A0(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  sub_22C591324();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v22;
  }

  *(v5 + 16) = v6 + 1;
  *(v5 + 8 * v6 + 32) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22C90B47C();
  *(v7 + 24) = v8;
  v9 = *(v5 + 16);
  v10 = v9 + 1;
  if (v9 >= *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v23;
  }

  *(v5 + 16) = v10;
  *(v5 + 8 * v9 + 32) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = 8250;
  *(v11 + 24) = 0xE200000000000000;
  v12 = v9 + 2;
  if ((v9 + 2) > *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v24;
  }

  *(v5 + 16) = v12;
  *(v5 + 8 * v10 + 32) = v11;
  v13 = v9 + 3;
  if ((v9 + 3) > *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v25;
  }

  *(v5 + 16) = v13;
  *(v5 + 8 * v12 + 32) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0xE000000000000000;
  v15 = *(v5 + 24);

  if ((v9 + 4) > (v15 >> 1))
  {
    sub_22C591324();
    v5 = v26;
  }

  *(v5 + 16) = v9 + 4;
  *(v5 + 8 * v13 + 32) = v14;
  v16 = sub_22C3DB9B0(v5);

  v17 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  *(v19 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v20 = swift_allocObject();
  *(v20 + 16) = v17 | 0x6000000000000000;
  *(v19 + 32) = v20;
  return v19 | 0xA000000000000000;
}

void sub_22C47FA7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = sub_22C47D420(a1);
  sub_22C47FB68(v4, &v3);

  *a2 = v3;
  sub_22C37274C();
  *(a2 + 40) = 0;
}

uint64_t sub_22C47FB68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v5 = v17;
    v6 = (v3 + 32);
    v7 = *(v17 + 16);
    do
    {
      v9 = *v6;
      v6 += 5;
      v8 = v9;
      v10 = *(v17 + 24);

      if (v7 >= v10 >> 1)
      {
        sub_22C3B63D4();
      }

      *(v17 + 16) = v7 + 1;
      *(v17 + 8 * v7++ + 32) = v8;
      --v4;
    }

    while (v4);
  }

  v11 = sub_22C47D738(8236, 0xE200000000000000, v5);

  v12 = swift_allocObject();
  *(v12 + 16) = 91;
  *(v12 + 24) = 0xE100000000000000;
  v13 = sub_22C47D60C(v12, v11);

  v14 = swift_allocObject();
  *(v14 + 16) = 93;
  *(v14 + 24) = 0xE100000000000000;
  v15 = sub_22C47D60C(v13, v14);

  *a2 = v15;
  return result;
}

void sub_22C47FCDC()
{
  sub_22C36BA7C();
  v47 = v0;
  v48 = v1;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v43 = v4;
  v44 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v42 = v7;
  v8 = sub_22C3A5908(&qword_27D9BC908, &qword_22C915090);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v45 = &v41 - v12;
  sub_22C36BA0C();
  v13 = sub_22C9096EC();
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C90977C();
  v21 = sub_22C369824(v20);
  v46 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v27 = v26 - v25;
  sub_22C3A5908(&qword_27D9BC910, &qword_22C915098);
  v28 = *(v14 + 72);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C90F870;
  v31 = v30 + v29;
  v32 = *(v15 + 104);
  v32(v31, *MEMORY[0x277D730B0], v13);
  v32(v31 + v28, *MEMORY[0x277D730B8], v13);
  v33 = v46;
  sub_22C908DDC();
  sub_22C90970C();
  (*(v33 + 8))(v27, v20);
  v49[2] = v19;
  LOBYTE(v27) = sub_22C5EC5CC(sub_22C480184, v49, v30);
  swift_setDeallocating();
  sub_22C58FF98();
  (*(v15 + 8))(v19, v13);
  if ((v27 & 1) == 0)
  {
    v34 = v48;
    v35 = v45;
    sub_22C908E3C();
    if (sub_22C370B74(v35, 1, v20) != 1)
    {
      (*(v33 + 32))(v34, v35, v20);
      goto LABEL_8;
    }

    sub_22C3770B0(v35, &qword_27D9BC908, &qword_22C915090);
    v36 = v42;
    sub_22C903F7C();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AACC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22C36F9F4(0xD000000000000011, 0x800000022C930B40, &v50);
      _os_log_impl(&dword_22C366000, v37, v38, "%s Falling back on using sourceContainer for the tool rendering", v39, 0xCu);
      sub_22C36FF94(v40);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v43 + 8))(v36, v44);
  }

  sub_22C908DDC();
LABEL_8:
  sub_22C36CC48();
}

uint64_t sub_22C48010C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = type metadata accessor for SegmentedPrompt.Segment(0);
  sub_22C369914(v3);
  v5 = *(v4 + 80);
  return a1;
}

uint64_t sub_22C480170(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t type metadata accessor for DirectionalTypedValue()
{
  result = qword_27D9BC918;
  if (!qword_27D9BC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4801F0()
{
  result = sub_22C9093BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C480270(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_22C47E774();
  *a1 = v4;
  a1[1] = v5;
}

unint64_t sub_22C4802A4()
{
  result = qword_27D9BC808;
  if (!qword_27D9BC808)
  {
    sub_22C90430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC808);
  }

  return result;
}

uint64_t sub_22C4802FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_22C480370(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL sub_22C480448(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_22C48819C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    v22 = sub_22C480748();
    sub_22C456C94(v22, v23);
    if (!v8)
    {
      sub_22C377C2C();
      v37 = sub_22C480748();
      sub_22C456D48(v37, v38);
      return 1;
    }

    v24 = sub_22C37331C();
    sub_22C456C94(v24, v25);
    goto LABEL_10;
  }

  if (!v8)
  {
    v26 = sub_22C36A908();
    sub_22C456C94(v26, v27);
    sub_22C377C2C();
    v28 = sub_22C36A908();
    sub_22C456C94(v28, v29);

LABEL_10:
    v30 = sub_22C36A908();
    sub_22C456D48(v30, v31);
    v32 = sub_22C37331C();
LABEL_12:
    sub_22C456D48(v32, v33);
    return 0;
  }

  v40[0] = v2;
  v40[1] = v4;
  v40[2] = v3;
  v39[0] = v6;
  v39[1] = v8;
  v39[2] = v7;
  v10 = sub_22C36A908();
  sub_22C456C94(v10, v11);
  v12 = sub_22C37331C();
  sub_22C456C94(v12, v13);
  v14 = sub_22C36A908();
  sub_22C456C94(v14, v15);

  v16 = static BNFGrammarRule.== infix(_:_:)(v40, v39);

  if ((v16 & 1) == 0)
  {
    v34 = sub_22C37331C();
    sub_22C456D48(v34, v35);

    v32 = sub_22C36A908();
    goto LABEL_12;
  }

  v17 = sub_22C46D2C8(v5, v9);
  v18 = sub_22C37331C();
  sub_22C456D48(v18, v19);

  v20 = sub_22C36A908();
  sub_22C456D48(v20, v21);
  return (v17 & 1) != 0;
}

unint64_t sub_22C480614()
{
  result = qword_27D9BC930;
  if (!qword_27D9BC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC930);
  }

  return result;
}

uint64_t sub_22C480674(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C48068C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C4806E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *static RenderingState.clean.getter()
{
  v1 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_22C906D3C();
  sub_22C36C640(v4, 1, 1, v5);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  swift_allocObject();
  return sub_22C480800(v4);
}

void *sub_22C480800(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_22C909F0C();
  v5 = MEMORY[0x277D84FA0];
  v1[2] = v4;
  v1[3] = v5;
  type metadata accessor for LSDeveloperType(0);
  v1[4] = sub_22C909F0C();
  v1[5] = v3;
  sub_22C480B10(a1, v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime14RenderingState_datetimeContext);
  return v1;
}

void *RenderingState.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_22C4808E8(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime14RenderingState_datetimeContext);
  return v0;
}

uint64_t sub_22C4808E8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RenderingState.__deallocating_deinit()
{
  RenderingState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RenderingState()
{
  result = qword_27D9BC938;
  if (!qword_27D9BC938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4809FC()
{
  sub_22C480AB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22C480AB8()
{
  if (!qword_27D9BC948)
  {
    sub_22C906D3C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC948);
    }
  }
}

uint64_t sub_22C480B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FullPlannerRenderableToolName.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v52 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v15 = sub_22C90B4FC();
        v54 = sub_22C373330();
        sub_22C480D88(v54, v55, v56, v57, 0);
        v58 = sub_22C36A91C();
        sub_22C480D88(v58, v59, v60, v61, 0);
        v62 = sub_22C36A91C();
        sub_22C43627C(v62, v63, v64, v65, 0);
        v28 = sub_22C373330();
        v32 = 0;
        goto LABEL_22;
      }

      sub_22C4823A8();
      sub_22C480D88(v66, v67, v68, v69, v70);
      v71 = sub_22C36A91C();
      sub_22C480D88(v71, v72, v73, v74, 0);
      v75 = sub_22C36A91C();
      sub_22C43627C(v75, v76, v77, v78, 0);
      sub_22C4823A8();
      sub_22C43627C(v79, v80, v81, v82, v83);
      return 1;
    }

    goto LABEL_14;
  }

  if ((a2[4] & 1) == 0)
  {
LABEL_14:
    v33 = sub_22C373330();
    sub_22C480D88(v33, v34, v35, v36, v11);
    v37 = sub_22C36A91C();
    sub_22C480D88(v37, v38, v39, v40, v6);
    v41 = sub_22C36A91C();
    sub_22C43627C(v41, v42, v43, v44, v6);
    v45 = sub_22C373330();
    v49 = v11;
LABEL_15:
    sub_22C43627C(v45, v46, v47, v48, v49);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v13 = *a1;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      v102 = sub_22C373330();
      sub_22C480D88(v102, v103, v104, v105, 1);
      v106 = sub_22C36A91C();
      sub_22C480D88(v106, v107, v108, v109, 1);
      v110 = sub_22C36A91C();
      sub_22C43627C(v110, v111, v112, v113, 1);
      v45 = sub_22C373330();
      v49 = 1;
      goto LABEL_15;
    }
  }

  if (v5 == v10 && v4 == v9)
  {
    v50 = 1;
    v84 = sub_22C38B8B4();
    sub_22C480D88(v84, v85, v86, v87, v88);
    v89 = sub_22C36A91C();
    sub_22C480D88(v89, v90, v91, v92, 1);
    v93 = sub_22C36A91C();
    sub_22C43627C(v93, v94, v95, v96, 1);
    v97 = sub_22C38B8B4();
    sub_22C43627C(v97, v98, v99, v100, v101);
    return v50;
  }

  sub_22C4823A8();
  v15 = sub_22C90B4FC();
  v16 = sub_22C373330();
  sub_22C480D88(v16, v17, v18, v19, 1);
  v20 = sub_22C36A91C();
  sub_22C480D88(v20, v21, v22, v23, 1);
  v24 = sub_22C36A91C();
  sub_22C43627C(v24, v25, v26, v27, 1);
  v28 = sub_22C373330();
  v32 = 1;
LABEL_22:
  sub_22C43627C(v28, v29, v30, v31, v32);
  return v15 & 1;
}

uint64_t sub_22C480D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_22C480DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6F6F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEE006C6F636F746FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C480E98(char a1)
{
  if (a1)
  {
    return 0x72506D6574737973;
  }

  else
  {
    return 0x656D614E6C6F6F74;
  }
}

uint64_t sub_22C480EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F636F746F7270 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C480FA8(char a1)
{
  if (a1)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x6C6F636F746F7270;
  }
}

uint64_t sub_22C481008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C480DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C481030(uint64_t a1)
{
  v2 = sub_22C4814E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C48106C(uint64_t a1)
{
  v2 = sub_22C4814E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4810A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C4810FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C480EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C481124(uint64_t a1)
{
  v2 = sub_22C481534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C481160(uint64_t a1)
{
  v2 = sub_22C481534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C48119C(uint64_t a1)
{
  v2 = sub_22C481588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4811D8(uint64_t a1)
{
  v2 = sub_22C481588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerRenderableToolName.encode(to:)(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BC950, &qword_22C9153C0);
  v4 = sub_22C369824(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v33 = v31 - v9;
  v10 = sub_22C3A5908(&qword_27D9BC958, &qword_22C9153C8);
  sub_22C369824(v10);
  v32 = v11;
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v39 = sub_22C3A5908(&qword_27D9BC960, &qword_22C9153D0);
  sub_22C369824(v39);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = v31 - v22;
  v24 = *v1;
  v36 = v1[1];
  v37 = v24;
  v25 = v1[2];
  v31[0] = v1[3];
  v31[1] = v25;
  v26 = *(v1 + 32);
  v27 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C4814E0();
  sub_22C90B6CC();
  if (v26)
  {
    v43 = 1;
    sub_22C481534();
    v16 = v33;
    sub_22C36BC64();
    v42 = 0;
    v10 = v35;
    v28 = v38;
    sub_22C90B3CC();
    if (!v28)
    {
      v41 = 1;
      sub_22C90B3CC();
    }

    v29 = v34;
  }

  else
  {
    v40 = 0;
    sub_22C481588();
    sub_22C36BC64();
    sub_22C90B3CC();
    v29 = v32;
  }

  (*(v29 + 8))(v16, v10);
  return (*(v18 + 8))(v23, v26);
}

unint64_t sub_22C4814E0()
{
  result = qword_27D9BC968;
  if (!qword_27D9BC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC968);
  }

  return result;
}

unint64_t sub_22C481534()
{
  result = qword_27D9BC970;
  if (!qword_27D9BC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC970);
  }

  return result;
}

unint64_t sub_22C481588()
{
  result = qword_27D9BC978;
  if (!qword_27D9BC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC978);
  }

  return result;
}

uint64_t FullPlannerRenderableToolName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x2318B8B10](1);
    sub_22C37275C();
    sub_22C909FFC();
  }

  else
  {
    MEMORY[0x2318B8B10](0);
    sub_22C37275C();
  }

  return sub_22C909FFC();
}

uint64_t FullPlannerRenderableToolName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22C90B62C();
  if (v5)
  {
    MEMORY[0x2318B8B10](1);
    sub_22C37275C();
    sub_22C909FFC();
  }

  else
  {
    MEMORY[0x2318B8B10](0);
    sub_22C37275C();
  }

  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t FullPlannerRenderableToolName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_22C3A5908(&qword_27D9BC980, &qword_22C9153D8);
  v4 = sub_22C369824(v3);
  v74 = v5;
  v75 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = sub_22C3A5908(&qword_27D9BC988, &qword_22C9153E0);
  sub_22C369824(v11);
  v73 = v12;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v18 = sub_22C3A5908(&qword_27D9BC990, &unk_22C9153E8);
  sub_22C369824(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v77 = a1;
  sub_22C374168(a1, v27);
  sub_22C4814E0();
  v28 = v78;
  sub_22C90B6BC();
  if (v28)
  {
    return sub_22C36FF94(v77);
  }

  v71 = v11;
  v72 = v17;
  v29 = v10;
  v78 = v20;
  v30 = v76;
  v31 = v25;
  v32 = sub_22C90B34C();
  result = sub_22C3E1F24(v32, 0);
  if (v35 == v36 >> 1)
  {
    goto LABEL_7;
  }

  v70 = 0;
  if (v35 >= (v36 >> 1))
  {
    __break(1u);
    return result;
  }

  v37 = *(v34 + v35);
  v38 = sub_22C3E1F20(v35 + 1);
  v40 = v39;
  v42 = v41;
  swift_unknownObjectRelease();
  if (v40 != v42 >> 1)
  {
LABEL_7:
    v45 = sub_22C90AFBC();
    swift_allocError();
    v47 = v46;
    v48 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v47 = &type metadata for FullPlannerRenderableToolName;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v78 + 8))(v31, v18);
    return sub_22C36FF94(v77);
  }

  v79 = v37;
  if (v37)
  {
    v83 = 1;
    sub_22C481534();
    v43 = v29;
    sub_22C38862C();
    v44 = v78;
    v51 = v30;
    v82 = 0;
    v70 = sub_22C90B2DC();
    v72 = v38;
    v73 = v55;
    v81 = 1;
    v56 = sub_22C90B2DC();
    v57 = (v74 + 8);
    v62 = v56;
    v64 = v63;
    swift_unknownObjectRelease();
    (*v57)(v43, v75);
    v65 = *(v44 + 8);
    v66 = sub_22C377C4C();
    v67(v66);
  }

  else
  {
    v80 = 0;
    sub_22C481588();
    v49 = v72;
    sub_22C38862C();
    v50 = v78;
    v51 = v30;
    v52 = v71;
    v53 = sub_22C90B2DC();
    v54 = (v73 + 8);
    v70 = v53;
    v73 = v58;
    swift_unknownObjectRelease();
    (*v54)(v49, v52);
    v59 = *(v50 + 8);
    v60 = sub_22C377C4C();
    v61(v60);
    v62 = 0;
    v64 = 0;
  }

  v68 = v73;
  *v51 = v70;
  *(v51 + 8) = v68;
  *(v51 + 16) = v62;
  *(v51 + 24) = v64;
  *(v51 + 32) = v79;
  return sub_22C36FF94(v77);
}

uint64_t sub_22C481D34()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_22C90B62C();
  FullPlannerRenderableToolName.hash(into:)();
  return sub_22C90B66C();
}

uint64_t sub_22C481D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v9;
  v12 = v7;
  v13 = v8;
  return (*(a7 + 16))(a1, a2, 0, v11, a4, a5, a6);
}

unint64_t sub_22C481DEC()
{
  result = qword_27D9BC998;
  if (!qword_27D9BC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC998);
  }

  return result;
}

uint64_t sub_22C481E40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_22C481E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerRenderableToolName.ToolNameCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22C481FA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C482080()
{
  result = qword_27D9BC9A0;
  if (!qword_27D9BC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9A0);
  }

  return result;
}

unint64_t sub_22C4820D8()
{
  result = qword_27D9BC9A8;
  if (!qword_27D9BC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9A8);
  }

  return result;
}

unint64_t sub_22C482130()
{
  result = qword_27D9BC9B0;
  if (!qword_27D9BC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9B0);
  }

  return result;
}

unint64_t sub_22C482188()
{
  result = qword_27D9BC9B8;
  if (!qword_27D9BC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9B8);
  }

  return result;
}

unint64_t sub_22C4821E0()
{
  result = qword_27D9BC9C0;
  if (!qword_27D9BC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9C0);
  }

  return result;
}

unint64_t sub_22C482238()
{
  result = qword_27D9BC9C8;
  if (!qword_27D9BC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9C8);
  }

  return result;
}

unint64_t sub_22C482290()
{
  result = qword_27D9BC9D0;
  if (!qword_27D9BC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9D0);
  }

  return result;
}

unint64_t sub_22C4822E8()
{
  result = qword_27D9BC9D8;
  if (!qword_27D9BC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9D8);
  }

  return result;
}

unint64_t sub_22C482340()
{
  result = qword_27D9BC9E0;
  if (!qword_27D9BC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9E0);
  }

  return result;
}

uint64_t sub_22C4823C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22C482400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C4824A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22C4824E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for RenderableTool()
{
  result = qword_27D9BC9E8;
  if (!qword_27D9BC9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C48258C()
{
  sub_22C482600();
  if (v0 <= 0x3F)
  {
    sub_22C482674();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C482600()
{
  if (!qword_27D9BC9F8)
  {
    sub_22C9036EC();
    sub_22C9037DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BC9F8);
    }
  }
}

void sub_22C482674()
{
  if (!qword_27D9BCA00)
  {
    sub_22C3AC1A0(&qword_27D9BCA08, &qword_22C916008);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BCA00);
    }
  }
}

uint64_t sub_22C4826EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9036EC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = type metadata accessor for RenderableTool();
  v14 = sub_22C36985C(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v19 = v18 - v17;
  sub_22C43786C(v2, v18 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C483C8C(v19);
    v20 = sub_22C908EAC();
    return sub_22C36C640(a1, 1, 1, v20);
  }

  else
  {
    v22 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    (*(v7 + 32))(v12, v19, v4);
    sub_22C9036BC();
    (*(v7 + 8))(v12, v4);
    v23 = sub_22C9037DC();
    sub_22C36985C(v23);
    return (*(v24 + 8))(v19 + v22);
  }
}

uint64_t sub_22C48289C()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3EC8);
  sub_22C483D60();
  sub_22C380498();
  swift_allocObject();
  sub_22C483D48();
  sub_22C372768(v1, v2);
  v3 = *MEMORY[0x277D72D28];
  sub_22C36BBA8(v0);
  v5 = *(v4 + 104);

  return v5(qword_27D9E3EC8);
}

uint64_t sub_22C482970()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3EF8);
  sub_22C483D60();
  sub_22C380498();
  swift_allocObject();
  sub_22C483D48();
  sub_22C372768(v1, v2);
  v3 = *MEMORY[0x277D72D28];
  sub_22C36BBA8(v0);
  v5 = *(v4 + 104);

  return v5(qword_27D9E3EF8);
}

uint64_t sub_22C482A18()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3F10);
  v1 = sub_22C37AA60(v0, qword_27D9E3F10);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022C92EB40;
  v2[4] = 0xD000000000000015;
  v2[5] = 0x800000022C92EBD0;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22C482AF4()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3F28);
  v1 = sub_22C37AA60(v0, qword_27D9E3F28);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022C92EB40;
  v2[4] = 0xD000000000000013;
  v2[5] = 0x800000022C930C80;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22C482C28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C90952C();
  sub_22C3F0160(v7, a2);
  v8 = sub_22C37AA60(v7, a2);
  sub_22C380498();
  v9 = swift_allocObject();
  v10 = sub_22C38864C(v9, "com.apple.omniSearch.SearchToolExtension");
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *v8 = v10;
  v11 = *MEMORY[0x277D72D28];
  sub_22C36BBA8(v7);
  v13 = *(v12 + 104);

  return v13(v8);
}

void sub_22C482CE4()
{
  sub_22C3A5908(&qword_27D9BAFB0, &qword_22C90D850);
  v0 = sub_22C90952C();
  sub_22C369824(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C915D70;
  v7 = v6 + v5;
  if (qword_27D9BA660 != -1)
  {
    v6 = swift_once();
  }

  sub_22C377C58(v6, qword_27D9E3EC8);
  v8 = *(v2 + 16);
  v9 = v8(v7);
  if (qword_27D9BA668 != -1)
  {
    v9 = swift_once();
  }

  sub_22C377C58(v9, qword_27D9E3EE0);
  v10 = v8(v7 + v4);
  if (qword_27D9BA670 != -1)
  {
    v10 = swift_once();
  }

  sub_22C377C58(v10, qword_27D9E3EF8);
  v11 = v8(v7 + 2 * v4);
  if (qword_27D9BA678 != -1)
  {
    v11 = swift_once();
  }

  sub_22C377C58(v11, qword_27D9E3F10);
  v12 = v8(v7 + 3 * v4);
  if (qword_27D9BA680 != -1)
  {
    v12 = swift_once();
  }

  sub_22C377C58(v12, qword_27D9E3F28);
  v13 = v8(v7 + 4 * v4);
  if (qword_27D9BA688 != -1)
  {
    v13 = swift_once();
  }

  sub_22C377C58(v13, qword_27D9E3F40);
  v14 = v8(v7 + 5 * v4);
  if (qword_27D9BA690 != -1)
  {
    v14 = swift_once();
  }

  sub_22C377C58(v14, qword_27D9E3F58);
  v8(v7 + 6 * v4);
  sub_22C3AD9E8();
  qword_27D9E3F70 = v15;
}

uint64_t sub_22C483004@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C90033C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C380498();
  v11 = swift_allocObject();
  sub_22C38864C(v11, "com.apple.omniSearch.SearchToolExtension");
  sub_22C8FFDDC();
  sub_22C90032C();
  (*(v5 + 8))(v10, v2);
  while (1)
  {
    v12 = sub_22C90A3AC();
    if (!v13)
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    if ((sub_22C909FAC() & 1) == 0)
    {
      MEMORY[0x2318B7840](v14, v15);
    }
  }

  MEMORY[0x2318B7850](0, 0xE000000000000000);

  MEMORY[0x2318B7850](0x797469746E45, 0xE600000000000000);
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  *a1 = v11;
  v16 = *MEMORY[0x277D72D28];
  v17 = sub_22C90952C();
  sub_22C36985C(v17);
  return (*(v18 + 104))(a1, v16);
}

uint64_t sub_22C4831E8()
{
  result = sub_22C3AD928(&unk_283FAF2E0);
  qword_27D9E3F78 = result;
  return result;
}

uint64_t sub_22C483210()
{
  v4 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v0 = v4;
  v1 = *(v4 + 16);
  if (v1 >= *(v4 + 24) >> 1)
  {
    sub_22C3B5E2C();
    v0 = v4;
  }

  *(v0 + 16) = v1 + 1;
  v2 = v0 + 16 * v1;
  strcpy((v2 + 32), "search_in_app");
  *(v2 + 46) = -4864;
  result = sub_22C3AD928(v0);
  qword_27D9E3F80 = result;
  return result;
}

uint64_t sub_22C4832C8()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, &qword_27D9E3F88);
  sub_22C483D60();
  sub_22C380498();
  v1 = swift_allocObject();
  v1[2] = sub_22C90849C();
  v1[3] = v2;
  v1[4] = sub_22C9081DC();
  v1[5] = v3;
  qword_27D9E3F88 = v1;
  v4 = *MEMORY[0x277D72D28];
  sub_22C36BBA8(v0);
  v6 = *(v5 + 104);

  return v6(&qword_27D9E3F88);
}

uint64_t sub_22C483378()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_22C387054(v0 + 5);
  v3 = sub_22C36BC88();
  v4(v3);
  sub_22C387054(v11);
  v5 = sub_22C36BC88();
  v6(v5);
  sub_22C387054(v10);
  v7 = sub_22C36BC88();
  v8(v7);
  sub_22C36FF94(v10);
  return sub_22C36FF94(v11);
}

BOOL sub_22C483418(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9037DC();
  v5 = sub_22C369824(v4);
  v59 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - v11;
  v60 = sub_22C9036EC();
  v12 = sub_22C369824(v60);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v19 = (v18 - v17);
  v20 = type metadata accessor for RenderableTool();
  v21 = sub_22C36985C(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v29 = sub_22C3A5908(&qword_27D9BCA18, &unk_22C916080);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v56 - v32;
  v34 = (&v56 + *(v31 + 56) - v32);
  sub_22C43786C(a1, &v56 - v32);
  sub_22C43786C(a2, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C43786C(v33, v26);
    v35 = *v26;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *v34;
      sub_22C46E2C8();
      v38 = v37;

LABEL_11:
      sub_22C483C8C(v33);
      return v38;
    }

    goto LABEL_7;
  }

  sub_22C43786C(v33, v28);
  v39 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v59 + 8))(&v28[v39], v4);
    (*(v14 + 8))(v28, v60);
LABEL_7:
    sub_22C483C24(v33);
    return 0;
  }

  v40 = *(v14 + 32);
  v56 = v14;
  v41 = v60;
  v40(v19, v34, v60);
  v42 = v59;
  v43 = *(v59 + 32);
  v43(v58, &v28[v39], v4);
  v44 = v34 + v39;
  v45 = v57;
  v43(v57, v44, v4);
  v46 = v41;
  v47 = v56;
  v48 = sub_22C9036DC();
  v49 = *(v47 + 8);
  v49(v28, v46);
  if (v48)
  {
    sub_22C483D30();
    sub_22C483CE8(v50, v51);
    v52 = v58;
    sub_22C90A56C();
    sub_22C90A56C();
    v53 = *(v42 + 8);
    v53(v45, v4);
    v53(v52, v4);
    v49(v19, v60);
    v38 = v62 == v61;
    goto LABEL_11;
  }

  v55 = *(v42 + 8);
  v55(v45, v4);
  v55(v58, v4);
  v49(v19, v46);
  sub_22C483C8C(v33);
  return 0;
}

uint64_t sub_22C4838A8(uint64_t a1)
{
  v3 = sub_22C9037DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C9036EC();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = type metadata accessor for RenderableTool();
  v22 = sub_22C36985C(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v27 = (v26 - v25);
  sub_22C43786C(v1, v26 - v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    MEMORY[0x2318B8B10](1);
    MEMORY[0x2318B8B10](0);
    sub_22C472124(a1, v28);
  }

  else
  {
    v30 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    (*(v15 + 32))(v20, v27, v12);
    (*(v6 + 32))(v11, v27 + v30, v3);
    MEMORY[0x2318B8B10](0);
    sub_22C483CE8(&qword_281435770, MEMORY[0x277D1ED00]);
    sub_22C909F8C();
    sub_22C483D30();
    sub_22C483CE8(v31, v32);
    sub_22C909F8C();
    (*(v6 + 8))(v11, v3);
    return (*(v15 + 8))(v20, v12);
  }
}

uint64_t sub_22C483B54()
{
  sub_22C90B62C();
  sub_22C4838A8(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C483B9C()
{
  sub_22C90B62C();
  sub_22C4838A8(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C483C24(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BCA18, &unk_22C916080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C483C8C(uint64_t a1)
{
  v2 = type metadata accessor for RenderableTool();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C483CE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C483DA0()
{
  type metadata accessor for PromptTreeIdentifier.TranscriptReference(319);
  if (v0 <= 0x3F)
  {
    sub_22C483E78();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PromptTreeIdentifier.ContextSubItem(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PromptTreeIdentifier.TurnChange(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C483E78()
{
  if (!qword_27D9BCA30)
  {
    type metadata accessor for PromptTreeIdentifier.TranscriptReference(255);
    sub_22C48409C(&qword_27D9BCA38, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    v0 = type metadata accessor for PromptTreeIdentifier.Enriched();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BCA30);
    }
  }
}

uint64_t sub_22C483FAC()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C48409C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C4840E4()
{
  if (!qword_27D9BCA60)
  {
    sub_22C90430C();
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BCA60);
    }
  }
}

uint64_t sub_22C4841A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C48425C()
{
  if (!qword_27D9BCA78)
  {
    v0 = type metadata accessor for PromptTree();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BCA78);
    }
  }
}

__n128 sub_22C4842B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_22C4842D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22C484310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C48436C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4843E4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22C370B74(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22C484520(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_22C36C640(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C484738()
{
  result = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(319);
  if (v1 <= 0x3F)
  {
    result = sub_22C902D0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4847BC()
{
  result = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C484870()
{
  result = sub_22C902D0C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C484904()
{
  v0 = sub_22C902D0C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_22C48495C()
{
  sub_22C36BA7C();
  v74 = v1;
  v75 = v4;
  v5 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v6 = sub_22C369914(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v70 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = &v68 - v12;
  v13 = sub_22C36BA0C();
  v68 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v13);
  v14 = sub_22C36985C(v68);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v72 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v71 = (&v68 - v20);
  sub_22C36BA0C();
  v21 = sub_22C902D0C();
  v22 = sub_22C369824(v21);
  v73 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = &v68 - v30;
  v32 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v33 = sub_22C36985C(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v40);
  v42 = &v68 - v41;
  v43 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v46);
  sub_22C3721C8();
  sub_22C36FC5C(v47);
  sub_22C48A668(v74, v0);
  sub_22C48A668(v75, v0 + v3);
  sub_22C37BD98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = sub_22C36D39C();
      sub_22C48A668(v49, v50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v2;
        v52 = v71;
        sub_22C48A058(v51, v71);
        v53 = v72;
        sub_22C48A058(v0 + v3, v72);
        if (sub_22C48819C(*v52, *v53))
        {
          v54 = v52[1];
          v55 = v53[1];
          sub_22C46D610();
          if (v56)
          {
            v57 = *(v68 + 24);
            sub_22C90962C();
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_22C48A668(v0, v38);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22C48A058(v38, v69);
        sub_22C48A058(v0 + v3, v70);
        sub_22C36EBF0();
        sub_22C485EC4();
        sub_22C48AEF0();
LABEL_13:
        sub_22C48A004();
        sub_22C48A004();
LABEL_15:
        sub_22C48A004();
        goto LABEL_16;
      }
    }

    sub_22C48A004();
  }

  else
  {
    v58 = v73;
    sub_22C377C74();
    v59 = sub_22C36BAFC();
    sub_22C48A668(v59, v60);
    if (!swift_getEnumCaseMultiPayload())
    {
      v61 = *(v58 + 32);
      v61(v31, v42, v21);
      v61(v28, (v0 + v3), v21);
      sub_22C484E80();
      sub_22C3ADC38();
      v63 = v62;
      sub_22C484E80();
      sub_22C3ADC38();
      v65 = sub_22C805D60(v64, v63);

      v66 = *(v58 + 8);
      v66(v28, v21);
      v66(v31, v21);
      v67 = *(v65 + 16);

      goto LABEL_15;
    }

    (*(v58 + 8))(v42, v21);
  }

  sub_22C36DD28(v0, &qword_27D9BCBA0, &unk_22C9166D0);
LABEL_16:
  sub_22C36CC48();
}

void sub_22C484E80()
{
  v1 = sub_22C902C4C();
  v2 = *(v1 - 8);
  v157 = v1;
  v158 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v156 = v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C902CDC();
  v153 = *(v5 - 8);
  v154 = v5;
  v6 = *(v153 + 64);
  MEMORY[0x28223BE20](v5);
  v152 = v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C901FAC();
  v159 = *(v8 - 8);
  v160 = v8;
  v9 = *(v159 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C902D0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v155 = v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v150 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v150 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v150 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v150 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v150 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v150 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v150 - v35;
  v37 = v0;
  v39 = v38;
  v161 = *(v13 + 16);
  v162 = v13 + 16;
  v161(v28, v37, v38);
  v40 = (*(v13 + 88))(v28, v39);
  if (v40 == *MEMORY[0x277D1D7C8])
  {
    (*(v13 + 8))(v28, v39);
    return;
  }

  if (v40 == *MEMORY[0x277D1D798])
  {
    (*(v13 + 96))(v28, v39);
    v41 = *v28;
    v42 = swift_projectBox();
    v44 = v159;
    v43 = v160;
    (*(v159 + 16))(v11, v42, v160);
    sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_22C90F800;
    (*(v44 + 32))(v47 + v46, v11, v43);
    goto LABEL_6;
  }

  if (v40 == *MEMORY[0x277D1D7E8])
  {
    (*(v13 + 96))(v28, v39);
    v48 = *v28;
    v28 = *(*v28 + 16);
    v49 = *(v48 + 3);
    v50 = v48[32];
    if (((1 << v50) & 0xCF) != 0)
    {
      goto LABEL_6;
    }

    v157 = v28;
    if (v50 != 4)
    {
      v156 = v48;
      v90 = *(v28 + 8);
      v154 = v28 + 64;
      v91 = 1 << v28[32];
      v92 = -1;
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      v34 = v92 & v90;
      sub_22C4403D8(v28, v49, 5);
      v155 = v49;
      sub_22C4403D8(v28, v49, 5);
      v93 = (v91 + 63) >> 6;
      v158 = v13 + 8;

      v19 = 0;
      v31 = MEMORY[0x277D84F90];
      v151 = v39;
      while (v34)
      {
LABEL_41:
        v95 = (v161)(v22, *(v28 + 7) + *(v13 + 72) * (__clz(__rbit64(v34)) | (v19 << 6)), v39);
        v96 = v39;
        v97 = sub_22C484E80(v95);
        (*(v13 + 8))(v22, v96);
        v98 = *(v97 + 16);
        v36 = *(v31 + 2);
        if (__OFADD__(v36, v98))
        {
          goto LABEL_113;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v36 + v98) > *(v31 + 3) >> 1)
        {
          sub_22C59298C();
          v31 = v99;
        }

        v28 = v157;
        v34 &= v34 - 1;
        if (*(v97 + 16))
        {
          v100 = *(v31 + 2);
          if ((*(v31 + 3) >> 1) - v100 < v98)
          {
            goto LABEL_115;
          }

          v101 = &v31[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v100];
          swift_arrayInitWithCopy();

          v39 = v151;
          if (v98)
          {
            v102 = *(v31 + 2);
            v83 = __OFADD__(v102, v98);
            v103 = v102 + v98;
            if (v83)
            {
              goto LABEL_116;
            }

            *(v31 + 2) = v103;
          }
        }

        else
        {

          v39 = v151;
          if (v98)
          {
            __break(1u);
            goto LABEL_52;
          }
        }
      }

      while (1)
      {
        v94 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_108;
        }

        if (v94 >= v93)
        {
          break;
        }

        v34 = *&v154[8 * v94];
        ++v19;
        if (v34)
        {
          v19 = v94;
          goto LABEL_41;
        }
      }

      v106 = v155;
      sub_22C4242E4(v28, v155, 5);
      v85 = v28;
      v86 = v106;
      v87 = 5;
LABEL_55:
      sub_22C4242E4(v85, v86, v87);
      goto LABEL_6;
    }

    v70 = *(v28 + 2);
    if (!v70)
    {
LABEL_6:

      return;
    }

    v155 = v49;
    v156 = v48;
    v71 = &v28[(*(v13 + 80) + 32) & ~*(v13 + 80)];
    v158 = *(v13 + 72);
    v72 = (v13 + 8);

    v73 = MEMORY[0x277D84F90];
    while (1)
    {
      v74 = (v161)(v25, v71, v39);
      v75 = sub_22C484E80(v74);
      v76 = v39;
      (*v72)(v25, v39);
      v77 = *(v75 + 16);
      v78 = *(v73 + 16);
      if (__OFADD__(v78, v77))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v78 + v77 > *(v73 + 24) >> 1)
      {
        sub_22C59298C();
        v73 = v79;
      }

      if (*(v75 + 16))
      {
        v80 = *(v73 + 16);
        if ((*(v73 + 24) >> 1) - v80 < v77)
        {
          goto LABEL_110;
        }

        v81 = v73 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v80;
        swift_arrayInitWithCopy();

        if (v77)
        {
          v82 = *(v73 + 16);
          v83 = __OFADD__(v82, v77);
          v84 = v82 + v77;
          if (v83)
          {
            goto LABEL_112;
          }

          *(v73 + 16) = v84;
        }
      }

      else
      {

        if (v77)
        {
          goto LABEL_109;
        }
      }

      v71 += v158;
      --v70;
      v39 = v76;
      if (!v70)
      {
        v85 = v157;
        v86 = v155;
        v87 = 4;
        goto LABEL_55;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v40 == *MEMORY[0x277D1D7E0])
  {
    (*(v13 + 96))(v28, v39);
    v51 = *v28;
    v52 = v39;
    v53 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
    v54 = swift_projectBox();
    v55 = *(v53 + 48);
    v39 = v52;
    v56 = v54 + v55;
LABEL_32:
    v161(v36, v56, v39);

    sub_22C484E80(v89);
    (*(v13 + 8))(v36, v39);
    return;
  }

  if (v40 == *MEMORY[0x277D1D7D8])
  {
    (*(v13 + 96))(v28, v39);
    v57 = *v28;
    v58 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
    v59 = v39;
    v60 = swift_projectBox();
    v61 = v60 + *(v58 + 48);
    v62 = (v58 + 64);
LABEL_14:
    v63 = *v62;
    v64 = v161;
    v161(v34, v61, v59);
    v64(v31, v60 + v63, v59);

    v66 = sub_22C484E80(v65);
    v67 = *(v13 + 8);
    v68 = v67(v34, v59);
    v69 = sub_22C484E80(v68);
    v67(v31, v59);
    v163 = v66;
    sub_22C3CE2FC(v69);
    return;
  }

  if (v40 == *MEMORY[0x277D1D7B8])
  {
LABEL_31:
    (*(v13 + 96))(v28, v39);
    v88 = *v28;
    v56 = swift_projectBox();
    goto LABEL_32;
  }

LABEL_52:
  if (v40 == *MEMORY[0x277D1D7D0])
  {
    (*(v13 + 96))(v28, v39);
    v104 = *v28;
    v105 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
    v59 = v39;
    v60 = swift_projectBox();
    v62 = (v105 + 48);
    v61 = v60;
    goto LABEL_14;
  }

  if (v40 == *MEMORY[0x277D1D7C0])
  {
    v107 = *(v13 + 96);
    v151 = v39;
    v107(v28);
    v108 = *v28;
    v109 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
    v155 = v108;
    v110 = *(swift_projectBox() + *(v109 + 48));
    v28 = (v110 + 64);
    v111 = 1 << *(v110 + 32);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v36 = v112 & *(v110 + 64);
    v113 = (v111 + 63) >> 6;
    v157 = (v13 + 8);
    v158 = v110;
    swift_bridgeObjectRetain_n();
    v114 = 0;
    v31 = MEMORY[0x277D84F90];
    v156 = v28;
    while (v36)
    {
      v115 = v151;
LABEL_67:
      v117 = (v161)(v19, *(v158 + 56) + *(v13 + 72) * (__clz(__rbit64(v36)) | (v114 << 6)), v115);
      v39 = sub_22C484E80(v117);
      (*(v13 + 8))(v19, v115);
      v118 = *(v39 + 16);
      v119 = *(v31 + 2);
      if (__OFADD__(v119, v118))
      {
        goto LABEL_117;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v119 + v118 > *(v31 + 3) >> 1)
      {
        sub_22C59298C();
        v31 = v120;
      }

      v28 = v156;
      v36 &= v36 - 1;
      if (*(v39 + 16))
      {
        v121 = *(v31 + 2);
        if ((*(v31 + 3) >> 1) - v121 < v118)
        {
          goto LABEL_118;
        }

        v122 = &v31[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v121];
        swift_arrayInitWithCopy();

        if (v118)
        {
          v123 = *(v31 + 2);
          v83 = __OFADD__(v123, v118);
          v124 = v123 + v118;
          if (v83)
          {
            goto LABEL_120;
          }

          *(v31 + 2) = v124;
        }
      }

      else
      {

        if (v118)
        {
          __break(1u);
          goto LABEL_78;
        }
      }
    }

    v115 = v151;
    while (1)
    {
      v116 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v116 >= v113)
      {
LABEL_98:

        return;
      }

      v36 = *&v28[8 * v116];
      ++v114;
      if (v36)
      {
        v114 = v116;
        goto LABEL_67;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_78:
  if (v40 != *MEMORY[0x277D1D7B0])
  {
    if (v40 != *MEMORY[0x277D1D7F0] && v40 != *MEMORY[0x277D1D7A0])
    {
      if (v40 != *MEMORY[0x277D1D7F8] && v40 != *MEMORY[0x277D1D7A8])
      {
        sub_22C90B4EC();
        __break(1u);
LABEL_106:

        v163 = v150[0];
        sub_22C3CE2FC(v31);
        (*(v153 + 8))(v152, v154);
      }

      return;
    }

    goto LABEL_31;
  }

  v126 = *(v13 + 96);
  v125 = v13 + 96;
  v151 = v39;
  v126(v28, v39);
  v150[1] = *v28;
  v127 = swift_projectBox();
  (*(v153 + 16))(v152, v127, v154);
  sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
  v128 = (*(v159 + 80) + 32) & ~*(v159 + 80);
  v150[3] = *(v159 + 72);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_22C90F800;
  v150[0] = v129;
  v150[2] = v128;
  sub_22C902CCC();
  v130 = sub_22C902CAC();
  v131 = v130 + 64;
  v132 = 1 << *(v130 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & *(v130 + 64);
  v135 = (v132 + 63) >> 6;
  v161 = (v158 + 16);
  v162 = v130;
  v159 = v125 - 88;
  v150[4] = v158 + 8;

  v136 = 0;
  v31 = MEMORY[0x277D84F90];
  v137 = v155;
  while (v134)
  {
LABEL_87:
    v139 = v157;
    v140 = v158;
    v141 = v156;
    (*(v158 + 16))(v156, *(v162 + 56) + *(v158 + 72) * (__clz(__rbit64(v134)) | (v136 << 6)), v157);
    v142 = sub_22C902C1C();
    v143 = sub_22C484E80(v142);
    (*v159)(v137, v151);
    (*(v140 + 8))(v141, v139);
    v144 = *(v143 + 16);
    v145 = *(v31 + 2);
    if (__OFADD__(v145, v144))
    {
      goto LABEL_119;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v145 + v144 > *(v31 + 3) >> 1)
    {
      sub_22C59298C();
      v31 = v146;
    }

    v134 &= v134 - 1;
    if (*(v143 + 16))
    {
      if ((*(v31 + 3) >> 1) - *(v31 + 2) < v144)
      {
        goto LABEL_121;
      }

      swift_arrayInitWithCopy();

      if (v144)
      {
        v147 = *(v31 + 2);
        v83 = __OFADD__(v147, v144);
        v148 = v147 + v144;
        if (v83)
        {
          goto LABEL_122;
        }

        *(v31 + 2) = v148;
      }
    }

    else
    {

      if (v144)
      {
        __break(1u);
        goto LABEL_98;
      }
    }
  }

  while (1)
  {
    v138 = v136 + 1;
    if (__OFADD__(v136, 1))
    {
      break;
    }

    if (v138 >= v135)
    {
      goto LABEL_106;
    }

    v134 = *(v131 + 8 * v138);
    ++v136;
    if (v134)
    {
      v136 = v138;
      goto LABEL_87;
    }
  }

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
}

uint64_t sub_22C485E54()
{
  sub_22C36986C();
  if ((sub_22C48819C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 8);
  v5 = *(v0 + 8);
  sub_22C46D610();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  sub_22C386C70(*(v7 + 24));

  return sub_22C90962C();
}

uint64_t sub_22C485EC4()
{
  sub_22C36986C();
  v4 = *v3;
  switch(*v2)
  {
    case 3:
      if (v4 == 3)
      {
        goto LABEL_14;
      }

      return 0;
    case 4:
      if (v4 != 4)
      {
        return 0;
      }

      goto LABEL_14;
    case 5:
      if (v4 != 5)
      {
        return 0;
      }

      goto LABEL_14;
    case 6:
      if (v4 != 6)
      {
        return 0;
      }

      goto LABEL_14;
    default:
      if (*v2 != v4 || (v4 - 7) >= 0xFFFFFFFC)
      {
        return 0;
      }

LABEL_14:
      v6 = v1[1] == v0[1] && v1[2] == v0[2];
      if (!v6 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }

      v7 = v1[3] == v0[3] && v1[4] == v0[4];
      if (!v7 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }

      v8 = v1[5] == v0[5] && v1[6] == v0[6];
      if (!v8 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }

      v9 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
      sub_22C386C70(*(v9 + 32));

      return sub_22C90067C();
  }
}

void sub_22C485FE8()
{
  sub_22C36BA7C();
  v57 = v2;
  v4 = v3;
  v5 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v6 = sub_22C369914(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v54 = v10 - v9;
  v11 = sub_22C36BA0C();
  v53 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v11);
  v12 = sub_22C36985C(v53);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v55 = (v16 - v15);
  sub_22C36BA0C();
  v17 = sub_22C902D0C();
  v18 = sub_22C369824(v17);
  v56 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v26 = sub_22C36985C(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v52 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = &v52 - v33;
  v35 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C3721C8();
  sub_22C36FC5C(v39);
  sub_22C48A668(v4, v0);
  sub_22C48A668(v57, v0 + v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = v56;
    sub_22C377C74();
    v47 = sub_22C36BA00();
    sub_22C48A668(v47, v48);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v46 + 8))(v34, v17);
LABEL_15:
      sub_22C36DD28(v0, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_19;
    }

    (*(v46 + 32))(v24, v0 + v1, v17);
    sub_22C902CFC();
    v51 = *(v46 + 8);
    v51(v24, v17);
    v51(v34, v17);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22C377C74();
    v49 = sub_22C36BAFC();
    sub_22C48A668(v49, v50);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C48AEA8();
      goto LABEL_14;
    }

    sub_22C38B8CC();
    sub_22C48A058(v0 + v1, v54);
    sub_22C37335C();
    sub_22C485EC4();
    sub_22C48A004();
    sub_22C37EF10();
    sub_22C48A004();
LABEL_18:
    sub_22C387074();
    sub_22C48A004();
    goto LABEL_19;
  }

  sub_22C377C74();
  sub_22C48A668(v0, v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C48AE90();
LABEL_14:
    sub_22C48A004();
    goto LABEL_15;
  }

  sub_22C36BC98();
  v41 = v55;
  sub_22C48A058(v0 + v1, v55);
  if (sub_22C48819C(*v32, *v41))
  {
    v42 = v32[1];
    v43 = v41[1];
    sub_22C46D610();
    if (v44)
    {
      v45 = *(v53 + 24);
      sub_22C90962C();
    }
  }

  sub_22C385588();
  sub_22C48A004();
  sub_22C48A004();
  sub_22C387074();
  sub_22C48A004();
LABEL_19:
  sub_22C36CC48();
}

void sub_22C48640C()
{
  sub_22C36BA7C();
  v4 = sub_22C3704C4();
  v45 = type metadata accessor for PromptTreeIdentifier.TurnChange(v4);
  v5 = sub_22C36985C(v45);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C371770();
  v9 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v8);
  v10 = sub_22C36985C(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C37BDA4();
  v13 = sub_22C902D0C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v23 = sub_22C36985C(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v28 = v27 - v26;
  sub_22C377C74();
  sub_22C48A668(v1, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C36BC98();
      sub_22C48A058(v28, v3);
      sub_22C48AF94();
      sub_22C48A9B4(v0, *v3);
      sub_22C471960(v0, *(v3 + 8));
      v30 = *(v9 + 24);
      sub_22C90963C();
      sub_22C388664();
      sub_22C48409C(v31, v32);
      sub_22C36BAFC();
      sub_22C909F8C();
      sub_22C48AE90();
    }

    else
    {
      sub_22C38B8CC();
      sub_22C48A058(v28, v2);
      MEMORY[0x2318B8B10](2);
      v35 = *v2;
      if ((v35 - 3) >= 4u)
      {
        sub_22C48AF94();
      }

      else
      {
        v35 = qword_22C9167B8[(v35 - 3)];
      }

      MEMORY[0x2318B8B10](v35);
      v36 = v2[1];
      v37 = v2[2];
      sub_22C909FFC();
      v38 = v2[3];
      v39 = v2[4];
      sub_22C909FFC();
      v40 = v2[5];
      v41 = v2[6];
      sub_22C909FFC();
      v42 = *(v45 + 32);
      sub_22C90069C();
      sub_22C48AED8();
      sub_22C48409C(v43, v44);
      sub_22C37BD98();
      sub_22C909F8C();
      sub_22C48AEA8();
    }

    sub_22C48A004();
  }

  else
  {
    (*(v16 + 32))(v21, v28, v13);
    MEMORY[0x2318B8B10](0);
    sub_22C373344();
    sub_22C48409C(v33, v34);
    sub_22C909F8C();
    (*(v16 + 8))(v21, v13);
  }

  sub_22C36CC48();
}

void sub_22C486784()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v6 = sub_22C36985C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C375E48();
  v9 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22C369838();
  v58 = v12 - v11;
  sub_22C36BA0C();
  v54 = sub_22C902D0C();
  v13 = sub_22C369824(v54);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C37BDA4();
  v18 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C3721C8();
  v22 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v23 = sub_22C36985C(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v28 = v27 - v26;
  v29 = type metadata accessor for PromptTreeIdentifier(0);
  v30 = sub_22C36985C(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v35 = v34 - v33;
  sub_22C36A930();
  sub_22C48A668(v1, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C48A6F0(v35, v0);
      sub_22C48A668(v0, v28);
      sub_22C36DD28(v0, &qword_27D9BCBA8, &qword_22C9166E0);
      goto LABEL_12;
    case 2u:
      v36 = *(v35 + 48);
      v61 = v36;
      v37 = *(v35 + 32);
      v60[1] = *(v35 + 16);
      v60[2] = v37;
      v60[0] = *v35;
      v38 = *(v36 + 16);
      if (v38)
      {
        v59 = MEMORY[0x277D84F90];
        sub_22C3B69C4(0, v38, 0);
        v39 = v59;
        v40 = v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v57 = *(v55 + 72);
        v56 = *MEMORY[0x277D1D798];
        v41 = v54;
        do
        {
          sub_22C48A668(v40, v58);
          v42 = sub_22C901FAC();
          v43 = swift_allocBox();
          (*(*(v42 - 8) + 32))(v44, v58, v42);
          *v2 = v43;
          (*(v15 + 104))(v2, v56, v41);
          v45 = v41;
          v47 = *(v59 + 16);
          v46 = *(v59 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_22C3B69C4(v46 > 1, v47 + 1, 1);
          }

          *(v59 + 16) = v47 + 1;
          (*(v15 + 32))(v59 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v47, v2, v45);
          v40 += v57;
          --v38;
          v41 = v45;
        }

        while (v38);
        sub_22C48A6C0(v60);
      }

      else
      {
        sub_22C48A6C0(v60);
        v39 = MEMORY[0x277D84F90];
        v41 = v54;
      }

      v53 = swift_allocObject();
      *(v53 + 16) = v39;
      *(v53 + 24) = 0;
      *(v53 + 32) = 4;
      *v4 = v53;
      (*(v15 + 104))(v4, *MEMORY[0x277D1D7E8], v41);
      goto LABEL_16;
    case 3u:
      sub_22C379FEC();
      sub_22C48A058(v35, v1);
      v48 = sub_22C901FAC();
      v49 = swift_allocBox();
      v50 = v5;
      v51 = v49;
      (*(*(v48 - 8) + 16))(v52, v1 + *(v50 + 20), v48);
      sub_22C38A8D8();
      sub_22C48A004();
      *v4 = v51;
      (*(v15 + 104))(v4, *MEMORY[0x277D1D798], v54);
      goto LABEL_16;
    case 4u:
      sub_22C36BC98();
      sub_22C48A058(v35, v4);
      sub_22C48AFAC();
      goto LABEL_17;
    case 5u:
      sub_22C38B8CC();
      sub_22C48A058(v35, v4);
      sub_22C48AFAC();
      goto LABEL_17;
    default:
      sub_22C376664();
      sub_22C48A058(v35, v28);
LABEL_12:
      (*(v15 + 16))(v4, v28 + *(v22 + 20), v54);
      sub_22C369CFC();
      sub_22C48A004();
LABEL_16:
      sub_22C48AFAC();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      sub_22C36CC48();
      return;
  }
}

void sub_22C486D10()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C902D0C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = sub_22C371770();
  v14 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(v13);
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C3881C0();
  v18 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C375E48();
  v23 = *(v22 + 56);
  sub_22C48A668(v6, v0);
  sub_22C48A668(v4, v0 + v23);
  switch(sub_22C370B74(v0, 3, v7))
  {
    case 1u:
      if (sub_22C48AF40() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_22C48AF40() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (sub_22C48AF40() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_22C374B00();
      sub_22C48A004();
      break;
    default:
      sub_22C37B5B0();
      sub_22C48A668(v0, v2);
      if (sub_22C48AF40())
      {
        v24 = *(v10 + 8);
        v25 = sub_22C371530();
        v26(v25);
LABEL_7:
        sub_22C36DD28(v0, &qword_27D9BCBC0, &qword_22C9166F8);
      }

      else
      {
        (*(v10 + 32))(v1, v0 + v23, v7);
        sub_22C902CFC();
        v27 = *(v10 + 8);
        v28 = sub_22C36A724();
        v27(v28);
        v29 = sub_22C371530();
        v27(v29);
        sub_22C374B00();
        sub_22C48A004();
      }

      break;
  }

  sub_22C36CC48();
}

uint64_t sub_22C486F70()
{
  sub_22C369A48();
  v1 = sub_22C902D0C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = sub_22C371770();
  v8 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(v7);
  v9 = sub_22C369914(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C37B5B0();
  v12 = sub_22C36EBF0();
  sub_22C48A668(v12, v13);
  switch(sub_22C370B74(v0, 3, v1))
  {
    case 1u:
      v23 = 0;
      goto LABEL_6;
    case 2u:
      v23 = 1;
      goto LABEL_6;
    case 3u:
      v23 = 2;
LABEL_6:
      result = MEMORY[0x2318B8B10](v23);
      break;
    default:
      v14 = *(v4 + 32);
      v15 = sub_22C37335C();
      v16(v15);
      MEMORY[0x2318B8B10](3);
      sub_22C373344();
      sub_22C48409C(v17, v18);
      sub_22C374404();
      sub_22C909F8C();
      v19 = *(v4 + 8);
      v20 = sub_22C36A724();
      result = v21(v20);
      break;
  }

  return result;
}

void sub_22C4870F8()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C902D0C();
  v7 = sub_22C369824(v6);
  v40 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = sub_22C371770();
  v12 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v11);
  v13 = sub_22C36985C(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v16);
  v18 = (&v39 - v17);
  v19 = sub_22C3A5908(&qword_27D9BCBC8, &unk_22C916700);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C3721C8();
  v24 = (v0 + *(v23 + 56));
  sub_22C48A668(v5, v0);
  sub_22C48A668(v3, v24);
  sub_22C36D39C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C3773E0();
    sub_22C48A668(v0, v18);
    v33 = *v18;
    v32 = v18[1];
    sub_22C3819EC();
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v33 == *v24 && v32 == v24[1])
      {
        v38 = v24[1];
      }

      else
      {
        sub_22C37EF10();
        sub_22C90B4FC();
      }

      goto LABEL_18;
    }

LABEL_10:
    sub_22C36DD28(v0, &qword_27D9BCBC8, &unk_22C916700);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22C3819EC();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_18:
      sub_22C372780();
      sub_22C48A004();
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_22C3773E0();
  v26 = sub_22C37BD98();
  sub_22C48A668(v26, v27);
  sub_22C3819EC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *(v40 + 8);
    v35 = sub_22C38674C();
    v36(v35);
    goto LABEL_10;
  }

  v28 = v40;
  (*(v40 + 32))(v1, v24, v6);
  sub_22C902CFC();
  v29 = *(v28 + 8);
  v30 = sub_22C37EF10();
  v29(v30);
  v31 = sub_22C38674C();
  v29(v31);
  sub_22C372780();
  sub_22C48A004();
LABEL_19:
  sub_22C36CC48();
}

uint64_t sub_22C4873DC()
{
  sub_22C369A48();
  v1 = sub_22C902D0C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = sub_22C371770();
  v8 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v7);
  v9 = sub_22C36985C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3773E0();
  v12 = sub_22C36EBF0();
  sub_22C48A668(v12, v13);
  v14 = sub_22C48AF5C();
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = *(v4 + 32);
      v16 = sub_22C37335C();
      v17(v16);
      MEMORY[0x2318B8B10](2);
      sub_22C373344();
      sub_22C48409C(v18, v19);
      sub_22C374404();
      sub_22C909F8C();
      v20 = *(v4 + 8);
      v21 = sub_22C36A724();
      return v22(v21);
    }

    else
    {
      return MEMORY[0x2318B8B10](0);
    }
  }

  else
  {
    v24 = *v0;
    v25 = v0[1];
    MEMORY[0x2318B8B10](1);
    sub_22C36BBCC();
    sub_22C909FFC();
  }
}

void sub_22C487560()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v8 = sub_22C369914(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C375E48();
  v11 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22C371770();
  v16 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v15);
  v17 = sub_22C36985C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22C3A5908(&qword_27D9BCBB8, &qword_22C9166F0);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C3721C8();
  v26 = *(v25 + 56);
  sub_22C48A668(v6, v0);
  sub_22C48A668(v4, v0 + v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C382F90();
    v27 = sub_22C37BD98();
    sub_22C48A668(v27, v28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C48AF08();
      sub_22C48A058(v0 + v26, v1);
      sub_22C38674C();
      sub_22C4870F8();
      sub_22C48A004();
LABEL_9:
      sub_22C48A004();
      sub_22C48A004();
      goto LABEL_10;
    }

    sub_22C372780();
  }

  else
  {
    sub_22C382F90();
    v29 = sub_22C36D39C();
    sub_22C48A668(v29, v30);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C379878();
      sub_22C48A058(v0 + v26, v2);
      sub_22C486D10();
      sub_22C48A004();
      goto LABEL_9;
    }

    sub_22C374B00();
  }

  sub_22C48A004();
  sub_22C36DD28(v0, &qword_27D9BCBB8, &qword_22C9166F0);
LABEL_10:
  sub_22C36CC48();
}

uint64_t sub_22C487808()
{
  v3 = sub_22C369A48();
  v4 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v3);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22C371770();
  v16 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v15);
  v17 = sub_22C36985C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C382F90();
  sub_22C48A668(v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C48AF08();
    sub_22C48A058(v2, v10);
    MEMORY[0x2318B8B10](1);
    sub_22C4873DC();
    sub_22C372780();
  }

  else
  {
    sub_22C379878();
    sub_22C48A058(v2, v1);
    MEMORY[0x2318B8B10](0);
    sub_22C374404();
    sub_22C486F70();
    sub_22C374B00();
  }

  return sub_22C48A004();
}

uint64_t sub_22C487958()
{
  sub_22C36986C();
  sub_22C487560();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C386C70(*(v1 + 20));

  return sub_22C902CFC();
}

uint64_t sub_22C4879B0()
{
  sub_22C487808();
  v0 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  sub_22C902D0C();
  sub_22C373344();
  sub_22C48409C(v1, v2);
  sub_22C36BAFC();
  return sub_22C909F8C();
}

uint64_t sub_22C487A28()
{
  sub_22C37B5C8();
  sub_22C487808();
  v0 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  sub_22C902D0C();
  sub_22C373344();
  sub_22C48409C(v1, v2);
  sub_22C48AF20();
  return sub_22C90B66C();
}

uint64_t sub_22C487AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if ((sub_22C90A0BC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for PromptTreeIdentifier.Enriched() + 36);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_22C90B4FC();
}

uint64_t sub_22C487B48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_22C909F8C();
  v6 = (v2 + *(a2 + 36));
  v7 = *v6;
  v8 = v6[1];

  return sub_22C909FFC();
}

uint64_t sub_22C487BA0(uint64_t a1)
{
  sub_22C37B5C8();
  sub_22C487B48(v3, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C487BE0()
{
  sub_22C36986C();
  if ((sub_22C901F6C() & 1) != 0 && (v2 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0), *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20))))
  {
    v3 = *(v1 + *(v2 + 24)) ^ *(v0 + *(v2 + 24)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22C487C44()
{
  sub_22C901FAC();
  sub_22C48AEC0();
  sub_22C48409C(v1, v2);
  sub_22C37335C();
  sub_22C909F8C();
  v3 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v4 = *(v0 + *(v3 + 20));
  sub_22C90B64C();
  v5 = *(v0 + *(v3 + 24));
  return sub_22C90B64C();
}

uint64_t sub_22C487E98(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C487808();
  v3 = *(a2 + 20);
  sub_22C902D0C();
  sub_22C373344();
  sub_22C48409C(v4, v5);
  sub_22C48AF20();
  return sub_22C90B66C();
}

uint64_t sub_22C487F24(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C487B48(v4, a2);
  return sub_22C90B66C();
}

uint64_t sub_22C487FDC()
{
  sub_22C36986C();
  sub_22C374168(v3, v3[3]);
  sub_22C36A948();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  (*(v7 + 16))(v2);
  sub_22C48A760();
  sub_22C90AECC();
  v8 = v0[3];
  v9 = sub_22C37BD98();
  sub_22C374168(v9, v10);
  sub_22C36A948();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  (*(v16 + 16))(v15 - v14);
  sub_22C90AECC();
  v17 = MEMORY[0x2318B8380](v27, v26);
  sub_22C48A7B4(v26);
  sub_22C48A7B4(v27);
  if (v17 & 1) != 0 && (sub_22C48819C(*(v1 + 40), v0[5]))
  {
    sub_22C46D424(*(v1 + 48), v0[6], v18, v19, v20, v21, v22, v23, v26[0], v26[1], v26[2], v26[3], v26[4], v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6]);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_22C48819C(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for PromptTreeIdentifier(0);
  v6 = sub_22C369914(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-v10];
  v12 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_30;
      }

      v38 = swift_projectBox();
      v39 = swift_projectBox();
      sub_22C48A668(v38, v18);
      sub_22C48A668(v39, v2);
      sub_22C485FE8();
      v34 = v40;
      sub_22C48A004();
      goto LABEL_20;
    case 2uLL:
      v23 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v24 = swift_projectBox();
      if (a2 >> 61 != 2)
      {
        goto LABEL_30;
      }

      v25 = v24;
      v26 = *(v23 + 48);
      v27 = *(v24 + v26);
      v28 = *(swift_projectBox() + v26);
      sub_22C48A668(v25, v11);
      v29 = sub_22C37EF10();
      sub_22C48A668(v29, v30);

      sub_22C36BA00();
      sub_22C488E5C();
      if ((v31 & 1) == 0)
      {

        sub_22C48A004();
        sub_22C36BAFC();
        sub_22C48A004();
        goto LABEL_30;
      }

      sub_22C36CA70();
      v32 = *(v27 + 16);
      sub_22C36CA70();
      v33 = *(v28 + 16);

      v34 = sub_22C48819C(v32, v33);

      sub_22C48A004();
      sub_22C37BD98();
LABEL_20:
      sub_22C48A004();
      return v34 & 1;
    case 3uLL:
      if (a2 >> 61 != 3)
      {
        goto LABEL_30;
      }

      sub_22C48AF74(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));

      v35 = sub_22C37170C();
      v37 = sub_22C48A26C(v35, v36);

      return v37 & 1;
    case 4uLL:
      if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_30;
      }

      v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      goto LABEL_40;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_30;
      }

      v41 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v42 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v43 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
      {
        switch(v41)
        {
          case 1:
            v44 = v42 == 1;
            break;
          case 2:
            v44 = v42 == 2;
            break;
          case 3:
            v44 = v42 == 3;
            break;
          case 4:
            v44 = v42 == 4;
            break;
          case 5:
            v44 = v42 == 5;
            break;
          case 6:
            if (v42 <= 5)
            {
              v43 = 0;
            }

            if (v43 == 1)
            {
              goto LABEL_40;
            }

            goto LABEL_30;
          default:
            v44 = v42 == 0;
            break;
        }

        if (!v44)
        {
          LOBYTE(v43) = 0;
        }

        if (v43)
        {
          goto LABEL_40;
        }

LABEL_30:
        v34 = 0;
        return v34 & 1;
      }

      if (v41 != v42)
      {
        LOBYTE(v43) = 1;
      }

      if (v43)
      {
        goto LABEL_30;
      }

LABEL_40:
      sub_22C36CA70();
      v45 = *(v21 + 16);
      sub_22C36CA70();
      v46 = *(v22 + 16);

      v47 = sub_22C36BA00();
      v34 = sub_22C48819C(v47, v48);

      return v34 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_30;
      }

      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
      {
        v34 = 1;
        return v34 & 1;
      }

      return sub_22C90B4FC();
  }
}

uint64_t sub_22C48865C(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_31;
      }

      return sub_22C90B5DC();
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_31;
      }

      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      if (sub_22C90B5DC())
      {
        sub_22C36CA70();
        v11 = *(v9 + 16);
        sub_22C36CA70();
        v12 = *(v10 + 16);

        v13 = sub_22C37335C();
        v14 = sub_22C48865C(v13);

        goto LABEL_43;
      }

      goto LABEL_31;
    case 3uLL:
      if (a2 >> 61 != 3)
      {
        goto LABEL_31;
      }

      sub_22C48AF74(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));

      v15 = sub_22C37170C();
      v17 = sub_22C48A2AC(v15, v16);

      return v17 & 1;
    case 4uLL:
      if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_31;
      }

      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36CA70();
      v7 = *(v5 + 16);
      sub_22C36CA70();
      v8 = *(v6 + 16);
      goto LABEL_42;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_31;
      }

      v18 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if ((*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 1) == 0)
      {
        if (v18 != v20)
        {
          LOBYTE(v21) = 1;
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_31:
        v14 = 0;
        return v14 & 1;
      }

      switch(v18)
      {
        case 1:
          v23 = v20 == 1;
          break;
        case 2:
          v23 = v20 == 2;
          break;
        case 3:
          v23 = v20 == 3;
          break;
        case 4:
          v23 = v20 == 4;
          break;
        case 5:
          v23 = v20 == 5;
          break;
        case 6:
          if (v20 <= 5)
          {
            v21 = 0;
          }

          if (v21 == 1)
          {
            goto LABEL_41;
          }

          goto LABEL_31;
        default:
          v23 = v20 == 0;
          break;
      }

      if (!v23)
      {
        LOBYTE(v21) = 0;
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_41:
      sub_22C36CA70();
      v24 = *(v19 + 16);
      sub_22C36CA70();
      v25 = *(v22 + 16);
LABEL_42:

      v26 = sub_22C37170C();
      v14 = sub_22C48865C(v26);

LABEL_43:

      return v14 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_31;
      }

      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
      {
        v14 = 1;
        return v14 & 1;
      }

      v3 = *(a1 + 16);

      return sub_22C90B4FC();
  }
}

void sub_22C488960(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 24);
  v6 = sub_22C37EF10();
  sub_22C374168(v6, v7);
  sub_22C36A948();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C3881C0();
  (*(v11 + 16))(v2);
  sub_22C48A760();
  sub_22C90AECC();
  sub_22C90AEBC();
  sub_22C48A7B4(v13);
  sub_22C48A9B4(a1, *(v3 + 40));
  v12 = *(v3 + 48);
  sub_22C4719E8();
}

uint64_t sub_22C488A5C()
{
  sub_22C37B5C8();
  sub_22C488960(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C488A94()
{
  sub_22C36986C();
  if ((sub_22C48865C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C386C70(*(v4 + 20));
  if ((sub_22C901F6C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(v1 + v5);
  v7 = *(v0 + v5);

  return sub_22C48819C(v6, v7);
}

uint64_t sub_22C488B18(uint64_t a1)
{
  v2 = v1;
  sub_22C48A828(a1, *v1);
  v4 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v5 = *(v4 + 20);
  sub_22C901FAC();
  sub_22C48AEC0();
  sub_22C48409C(v6, v7);
  sub_22C909F8C();
  v8 = *(v2 + *(v4 + 24));

  return sub_22C48A9B4(a1, v8);
}

uint64_t sub_22C488BC4()
{
  v1 = v0;
  sub_22C37B5C8();
  sub_22C48A828(v7, *v0);
  v2 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v3 = *(v2 + 20);
  sub_22C901FAC();
  sub_22C48AEC0();
  sub_22C48409C(v4, v5);
  sub_22C909F8C();
  sub_22C48A9B4(v7, *(v1 + *(v2 + 24)));
  return sub_22C90B66C();
}

uint64_t sub_22C488C70(uint64_t a1)
{
  sub_22C48A9B4(a1, *v1);
  sub_22C471960(a1, *(v1 + 8));
  v3 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  sub_22C90963C();
  sub_22C388664();
  sub_22C48409C(v4, v5);
  sub_22C36BAFC();
  return sub_22C909F8C();
}

uint64_t sub_22C488CF8()
{
  sub_22C37B5C8();
  sub_22C48A9B4(v5, *v0);
  sub_22C471960(v5, *(v0 + 8));
  v1 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  sub_22C90963C();
  sub_22C388664();
  sub_22C48409C(v2, v3);
  sub_22C48AF20();
  return sub_22C90B66C();
}

uint64_t sub_22C488D88()
{
  v1 = *v0;
  if ((v1 - 3) >= 4u)
  {
    sub_22C48AF94();
  }

  else
  {
    v1 = qword_22C9167B8[(v1 - 3)];
  }

  MEMORY[0x2318B8B10](v1);
  v2 = v0[1];
  v3 = v0[2];
  sub_22C909FFC();
  v4 = v0[3];
  v5 = v0[4];
  sub_22C909FFC();
  v6 = v0[5];
  v7 = v0[6];
  sub_22C909FFC();
  v8 = *(type metadata accessor for PromptTreeIdentifier.TurnChange(0) + 32);
  sub_22C90069C();
  sub_22C48AED8();
  sub_22C48409C(v9, v10);
  sub_22C37BD98();
  return sub_22C909F8C();
}

void sub_22C488E5C()
{
  sub_22C36BA7C();
  v95 = v2;
  v96 = v3;
  v4 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v93 = v9 - v8;
  v10 = sub_22C36BA0C();
  v87 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v10);
  v11 = sub_22C36985C(v87);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v94 = (v15 - v14);
  v16 = sub_22C36BA0C();
  v89 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v16);
  v17 = sub_22C36985C(v89);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v92 = (v21 - v20);
  v86 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C(v86);
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v91 = &v85 - v25;
  v26 = sub_22C36BA0C();
  v90 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v26);
  v27 = sub_22C36985C(v90);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v88 = v31 - v30;
  v32 = sub_22C36BA0C();
  v33 = type metadata accessor for PromptTreeIdentifier(v32);
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v39 = v37 - v38;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v85 - v42);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = (&v85 - v45);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v85 - v48;
  MEMORY[0x28223BE20](v47);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v50);
  v51 = sub_22C3A5908(&qword_27D9BCBB0, &qword_22C9166E8);
  sub_22C369914(v51);
  v53 = *(v52 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v54);
  sub_22C3721C8();
  v56 = v0 + *(v55 + 56);
  sub_22C48A668(v95, v0);
  sub_22C48A668(v96, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C36A930();
      v70 = sub_22C36D39C();
      sub_22C48A668(v70, v71);
      if (sub_22C48AF5C() != 1)
      {
        sub_22C36DD28(v1, &qword_27D9BCBA8, &qword_22C9166E0);
        goto LABEL_33;
      }

      v72 = v56;
      v73 = v91;
      sub_22C48A6F0(v72, v91);
      sub_22C36EBF0();
      sub_22C487560();
      if (v74)
      {
        v75 = *(v90 + 20);
        if (sub_22C902CFC())
        {
          v76 = *(v86 + 36);
          v77 = *(v1 + v76);
          v78 = *(v1 + v76 + 8);
          v79 = (v73 + v76);
          if (v77 != *v79 || v78 != v79[1])
          {
            sub_22C90B4FC();
          }
        }
      }

      v81 = sub_22C371530();
      sub_22C36DD28(v81, v82, &qword_22C9166E0);
      sub_22C36DD28(v1, &qword_27D9BCBA8, &qword_22C9166E0);
      goto LABEL_37;
    case 2u:
      sub_22C36A930();
      sub_22C48A668(v0, v49);
      if (sub_22C48AF5C() == 2)
      {
        v67 = *(v56 + 16);
        v97[0] = *v56;
        v97[1] = v67;
        v97[2] = *(v56 + 32);
        v98 = *(v56 + 48);
        sub_22C487FDC();
        sub_22C48A6C0(v97);
        sub_22C48A6C0(v49);
        sub_22C48AE78();
        goto LABEL_42;
      }

      sub_22C48A6C0(v49);
      goto LABEL_33;
    case 3u:
      sub_22C36A930();
      sub_22C48A668(v0, v46);
      if (sub_22C48AF5C() != 3)
      {
        sub_22C38A8D8();
        goto LABEL_32;
      }

      sub_22C379FEC();
      v68 = v92;
      sub_22C48A058(v56, v92);
      if (sub_22C48865C(*v46, *v68))
      {
        v69 = *(v89 + 20);
        if (sub_22C901F6C())
        {
          sub_22C48819C(*(v46 + *(v89 + 24)), *(v68 + *(v89 + 24)));
        }
      }

      sub_22C370164();
      sub_22C48A004();
      goto LABEL_41;
    case 4u:
      sub_22C36A930();
      v59 = sub_22C36BA00();
      sub_22C48A668(v59, v60);
      if (sub_22C48AF5C() != 4)
      {
        sub_22C48AE90();
        goto LABEL_32;
      }

      sub_22C36BC98();
      v61 = v56;
      v62 = v94;
      sub_22C48A058(v61, v94);
      if (sub_22C48819C(*v43, *v62))
      {
        v63 = v43[1];
        v64 = v62[1];
        sub_22C46D610();
        if (v65)
        {
          v66 = *(v87 + 24);
          sub_22C90962C();
        }
      }

      sub_22C37B9E0();
      sub_22C48A004();
      sub_22C36BBCC();
      sub_22C48A004();
LABEL_37:
      sub_22C48AE78();
      goto LABEL_42;
    case 5u:
      sub_22C36A930();
      sub_22C48A668(v0, v39);
      if (sub_22C48AF5C() == 5)
      {
        sub_22C38B8CC();
        sub_22C48A058(v56, v93);
        sub_22C485EC4();
        sub_22C48AEF0();
        sub_22C48A004();
        sub_22C48A004();
        sub_22C48AE78();
        goto LABEL_42;
      }

      sub_22C48AEA8();
      goto LABEL_32;
    default:
      sub_22C36A930();
      v57 = sub_22C36BAFC();
      sub_22C48A668(v57, v58);
      if (sub_22C48AF5C())
      {
        sub_22C369CFC();
LABEL_32:
        sub_22C48A004();
LABEL_33:
        sub_22C36DD28(v0, &qword_27D9BCBB0, &qword_22C9166E8);
      }

      else
      {
        sub_22C376664();
        sub_22C48A058(v56, v88);
        sub_22C37335C();
        sub_22C487560();
        if (v83)
        {
          v84 = *(v90 + 20);
          sub_22C902CFC();
        }

        sub_22C369CFC();
        sub_22C48A004();
        sub_22C369CFC();
LABEL_41:
        sub_22C48A004();
        sub_22C48AE78();
LABEL_42:
        sub_22C48A004();
      }

      sub_22C36CC48();
      return;
  }
}

void sub_22C489574()
{
  sub_22C36BA7C();
  v73 = v4;
  v74 = v0;
  v72 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v5 = sub_22C36985C(v72);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22C371770();
  v71 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v8);
  v9 = sub_22C36985C(v71);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C37BDA4();
  v12 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v13 = sub_22C36985C(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v18 = (v17 - v16);
  v19 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C(v19);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v25 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v26 = sub_22C36985C(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C3881C0();
  v29 = type metadata accessor for PromptTreeIdentifier(0);
  v30 = sub_22C36985C(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v35 = v34 - v33;
  sub_22C36A930();
  sub_22C48A668(v74, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C48A6F0(v35, v24);
      sub_22C48AFCC();
      sub_22C487808();
      v54 = *(v25 + 20);
      sub_22C902D0C();
      sub_22C373344();
      sub_22C48409C(v55, v56);
      sub_22C36A724();
      sub_22C909F8C();
      v57 = &v24[*(v19 + 36)];
      v58 = *v57;
      v59 = *(v57 + 1);
      sub_22C909FFC();
      sub_22C36DD28(v24, &qword_27D9BCBA8, &qword_22C9166E0);
      goto LABEL_12;
    case 2u:
      v44 = *(v35 + 16);
      v76 = *v35;
      v77 = v44;
      v78 = *(v35 + 32);
      v79 = *(v35 + 48);
      v45 = v73;
      v46 = v73;
      MEMORY[0x2318B8B10](2);
      sub_22C374168(&v76, *(&v77 + 1));
      sub_22C36A948();
      v48 = *(v47 + 64);
      MEMORY[0x28223BE20](v49);
      sub_22C369838();
      sub_22C375E48();
      (*(v50 + 16))(v46);
      sub_22C48A760();
      sub_22C90AECC();
      sub_22C90AEBC();
      sub_22C48A7B4(&v75);
      sub_22C48A9B4(v45, *(&v78 + 1));
      sub_22C4719E8();
      sub_22C48A6C0(&v76);
      goto LABEL_12;
    case 3u:
      sub_22C379FEC();
      sub_22C48A058(v35, v18);
      sub_22C48AFCC();
      sub_22C48A828(v1, *v18);
      v51 = *(v12 + 20);
      sub_22C901FAC();
      sub_22C48AEC0();
      sub_22C48409C(v52, v53);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C48A9B4(v1, *(v18 + *(v12 + 24)));
      sub_22C38A8D8();
      goto LABEL_11;
    case 4u:
      sub_22C36BC98();
      v39 = sub_22C3819EC();
      sub_22C48A058(v39, v40);
      sub_22C48AFCC();
      sub_22C48A9B4(v1, *v3);
      sub_22C471960(v1, v3[1]);
      v41 = *(v71 + 24);
      sub_22C90963C();
      sub_22C388664();
      sub_22C48409C(v42, v43);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C48AE90();
      goto LABEL_11;
    case 5u:
      sub_22C38B8CC();
      sub_22C48A058(v35, v1);
      MEMORY[0x2318B8B10](5);
      v60 = *v1;
      if ((v60 - 3) >= 4u)
      {
        MEMORY[0x2318B8B10](1);
      }

      else
      {
        v60 = qword_22C9167B8[(v60 - 3)];
      }

      MEMORY[0x2318B8B10](v60);
      v61 = v1[1];
      v62 = v1[2];
      sub_22C909FFC();
      v63 = v1[3];
      v64 = v1[4];
      sub_22C909FFC();
      v65 = v1[5];
      v66 = v1[6];
      sub_22C909FFC();
      v67 = *(v72 + 32);
      sub_22C90069C();
      sub_22C48AED8();
      sub_22C48409C(v68, v69);
      sub_22C371530();
      sub_22C909F8C();
      sub_22C48AEA8();
      goto LABEL_11;
    default:
      sub_22C376664();
      sub_22C48A058(v35, v2);
      sub_22C48AFCC();
      sub_22C487808();
      v36 = *(v25 + 20);
      sub_22C902D0C();
      sub_22C373344();
      sub_22C48409C(v37, v38);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C369CFC();
LABEL_11:
      sub_22C48A004();
LABEL_12:
      sub_22C36CC48();
      return;
  }
}

uint64_t sub_22C489B38(void (*a1)(_BYTE *))
{
  sub_22C37B5C8();
  a1(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C489B80()
{
  sub_22C90B62C();
  sub_22C488960(v1);
  return sub_22C90B66C();
}

unint64_t sub_22C489BC4()
{
  result = qword_27D9BCB58;
  if (!qword_27D9BCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCB58);
  }

  return result;
}

uint64_t sub_22C489DCC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

uint64_t sub_22C489F0C(uint64_t a1)
{
  result = sub_22C48409C(&qword_27D9BCB90, type metadata accessor for PromptTreeIdentifier);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C489F64(uint64_t a1)
{
  result = sub_22C48409C(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C48A004()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C48A058(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C48A0B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C90069C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C375E48();
  v8 = swift_allocObject();
  sub_22C90068C();
  v9 = sub_22C90065C();
  v11 = v10;
  v12 = *(v5 + 8);
  v13 = sub_22C37170C();
  v14(v13);
  *(v8 + 16) = v9;
  *(v8 + 24) = v11;
  *(v8 + 32) = 3;
  *a1 = v8;
  v15 = *MEMORY[0x277D1D7E8];
  v16 = sub_22C902D0C();
  sub_22C36985C(v16);
  return (*(v17 + 104))(a1, v15);
}

uint64_t sub_22C48A20C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_22C36CA70();
  v4 = *(v2 + 16);

  v5 = sub_22C37EF10();
  a2(v5);
}

uint64_t sub_22C48A2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v24 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v25 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v26 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = v26[3];
    v28 = v26[4];
    if (v24)
    {
      if (v24 == 1)
      {
        if (v27 != 1)
        {
          return 0;
        }
      }

      else if (v24 == 2)
      {
        if (v27 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v27 < 3)
        {
          return 0;
        }

        v29 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == v26[2] && v24 == v27;
        if (!v29 && (sub_22C90B4FC() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v27)
    {
      return 0;
    }

    v30 = *(v25 + 16);
    v31 = *(v28 + 16);

    v32 = sub_22C36BAFC();
    v33 = a5(v32);

    return v33 & 1;
  }

  if (a2 < 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = a3(v7);
  result = a3(v8);
  if (v9 != result)
  {
    return 0;
  }

  if (!v9)
  {
    return 1;
  }

  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v7 < 0)
  {
    v11 = v7;
  }

  if (v7 >> 62)
  {
    v12 = v11;
  }

  v13 = v8 & 0xFFFFFFFFFFFFFF8;
  v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v8 < 0)
  {
    v13 = v8;
  }

  if (v8 >> 62)
  {
    v14 = v13;
  }

  if (v12 == v14)
  {
    return 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {

    for (i = 4; ; ++i)
    {
      v16 = i - 4;
      v17 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318B8460](i - 4, v7);
        v18 = result;
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v18 = *(v7 + 8 * i);
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2318B8460](i - 4, v8);
      }

      else
      {
        if (v16 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v19 = *(v8 + 8 * i);
      }

      sub_22C36CA70();
      v20 = *(v18 + 16);
      sub_22C36CA70();
      v21 = *(v19 + 16);

      v22 = a4(v20, v21);

      if ((v22 & 1) == 0)
      {

        return 0;
      }

      if (v17 == v9)
      {

        return 1;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C48A608(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v6 = *(v3 + 16);

  v7 = sub_22C38674C();
  sub_22C48AC18(v7, v8, a2, a3);
}

uint64_t sub_22C48A668(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C48A6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C48A760()
{
  result = qword_27D9BCBD0;
  if (!qword_27D9BCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCBD0);
  }

  return result;
}

uint64_t sub_22C48A828(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      MEMORY[0x2318B8B10](1);

      return sub_22C90B5EC();
    case 2uLL:
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x2318B8B10](2);

      sub_22C90B5EC();
      v11 = sub_22C37F11C();
      sub_22C48A20C(v11, v12);
      goto LABEL_8;
    case 3uLL:
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x2318B8B10](3);

      sub_22C48A5B0(a1);
LABEL_8:

    case 4uLL:
      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x2318B8B10](4);
      sub_22C90B64C();
      v8 = sub_22C37F11C();
      goto LABEL_15;
    case 5uLL:
      v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x2318B8B10](5);
      v17 = sub_22C36BBCC();
      sub_22C48D778(v17, v18, v15);
      v8 = sub_22C37F11C();
LABEL_15:
      result = sub_22C48A20C(v8, v9);
      break;
    default:
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);
      MEMORY[0x2318B8B10](0);

      sub_22C36BBCC();
      sub_22C909FFC();

      break;
  }

  return result;
}

uint64_t sub_22C48A9B4(uint64_t a1, unint64_t a2)
{
  v6 = sub_22C3704C4();
  v7 = type metadata accessor for PromptTreeIdentifier(v6);
  v8 = sub_22C369914(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_22C371770();
  v12 = type metadata accessor for PromptTreeIdentifier.Label(v11);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C3881C0();
  switch(a2 >> 61)
  {
    case 1uLL:
      swift_projectBox();
      sub_22C377C74();
      sub_22C48A668(v29, v4);
      sub_22C48AF94();
      sub_22C48640C(v2);
      sub_22C387074();
      return sub_22C48A004();
    case 2uLL:
      v23 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v24 = *(swift_projectBox() + *(v23 + 48));
      sub_22C36A930();
      sub_22C48A668(v25, v3);
      MEMORY[0x2318B8B10](2);

      sub_22C489574();
      v26 = sub_22C37FD3C();
      sub_22C48A20C(v26, v27);

      sub_22C48AE78();
      return sub_22C48A004();
    case 3uLL:
      v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x2318B8B10](3);

      sub_22C48A5DC(v2);

    case 4uLL:
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x2318B8B10](4);
      sub_22C90B64C();
      v21 = sub_22C37FD3C();
      goto LABEL_13;
    case 5uLL:
      v30 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v32 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x2318B8B10](5);
      v33 = sub_22C36BAFC();
      sub_22C48D778(v33, v34, v31);
      v21 = sub_22C37FD3C();
LABEL_13:
      result = sub_22C48A20C(v21, v22);
      break;
    default:
      v16 = *(a2 + 16);
      v17 = *(a2 + 24);
      MEMORY[0x2318B8B10](0);

      sub_22C36BAFC();
      sub_22C909FFC();

      break;
  }

  return result;
}

uint64_t sub_22C48AC18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    v9 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v11 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x2318B8B10](1);
    if (v10)
    {
      if (v10 == 1)
      {
        v12 = 1;
      }

      else
      {
        if (v10 != 2)
        {
          MEMORY[0x2318B8B10](2);
          sub_22C909FFC();
          goto LABEL_13;
        }

        v12 = 3;
      }
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x2318B8B10](v12);
LABEL_13:
    v13 = sub_22C374404();
    return a4(v13);
  }

  v5 = *(a2 + 16);
  MEMORY[0x2318B8B10](0);

  v6 = sub_22C36BBCC();
  a3(v6);
}

uint64_t sub_22C48AD04()
{
  result = sub_22C902D0C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PromptTreeIdentifier.TurnChange(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C48ADB4()
{
  result = sub_22C901FAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C48AF20()
{

  return sub_22C909F8C();
}

uint64_t sub_22C48AF40()
{

  return sub_22C370B74(v1 + v2, 3, v0);
}

uint64_t sub_22C48AF5C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C48AF74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(*(v1 + 16) + 16);
}

void sub_22C48AF94()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C48AFCC()
{
  v2 = *(v0 - 200);

  JUMPOUT(0x2318B8B10);
}

unint64_t sub_22C48AFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902D0C();
  v106 = *(v4 - 8);
  v5 = *(v106 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v100 - v9;
  v11 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (v100 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v100 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v100 - v22;
  if (!*(a2 + 16) || (v24 = sub_22C62832C(a1), (v25 & 1) == 0))
  {
    sub_22C48B76C(a1, v23);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_5:
      v27 = v23;
LABEL_6:
      sub_22C48B7D0(v27);
      return 0xF000000000000007;
    }

    v105 = a2;
    sub_22C48B76C(v23, v21);
    v29 = v106;
    v30 = *(v106 + 88);
    v31 = sub_22C369D14();
    v33 = v32(v31);
    v34 = v33;
    if (v33 == *MEMORY[0x277D1D7E8])
    {
      v35 = *(v29 + 96);
      v36 = sub_22C369D14();
      v37(v36);
      v38 = *v21;
      if (*(*v21 + 32) != 4)
      {
        v71 = *v21;

        goto LABEL_5;
      }

      v100[1] = *v21;
      v101 = v23;
      v40 = *(v38 + 16);
      v39 = *(v38 + 24);
      v104 = swift_allocBox();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = v40;
      *(v43 + 24) = v39;
      *(v43 + 32) = 4;
      *v42 = v43;
      v44 = *(v29 + 104);
      v45 = v42;
      v46 = v40;
      v44(v45, v34, v4);
      *v18 = v104;
      v44(v18, *MEMORY[0x277D1D7A0], v4);
      swift_storeEnumTagMultiPayload();

      v26 = sub_22C605458(v18, v105);
      sub_22C48B7D0(v18);
      if ((v26 & 0xF000000000000007) == 0xD000000000000007)
      {
        v47 = *(v40 + 16);
        v48 = v101;
        if (v47)
        {
          v49 = *(v106 + 16);
          v50 = *(v106 + 80);
          v100[0] = v46;
          v51 = (v46 + ((v50 + 32) & ~v50));
          v102 = *(v106 + 72);
          v103 = v49;
          v52 = (v106 + 8);
          v104 = MEMORY[0x277D84F90];
          v106 += 16;
          do
          {
            v53 = v103;
            v103(v10, v51, v4);
            v53(v15, v10, v4);
            swift_storeEnumTagMultiPayload();
            v54 = sub_22C48AFE4(v15, v105);
            sub_22C48B7D0(v15);
            (*v52)(v10, v4);
            if ((~v54 & 0xF000000000000007) != 0)
            {
              v55 = v104;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = *(v55 + 16);
                sub_22C591324();
                v55 = v60;
              }

              v57 = *(v55 + 16);
              v56 = *(v55 + 24);
              v104 = v55;
              if (v57 >= v56 >> 1)
              {
                sub_22C36A958(v56);
                sub_22C591324();
                v104 = v61;
              }

              v58 = v104;
              *(v104 + 16) = v57 + 1;
              *(v58 + 8 * v57 + 32) = v54;
              v48 = v101;
            }

            v51 += v102;
            --v47;
          }

          while (v47);
          v75 = *(v100[0] + 16);
          v76 = v104;
        }

        else
        {
          v75 = 0;
          v76 = MEMORY[0x277D84F90];
        }

        if (*(v76 + 16) != v75)
        {

          v27 = v48;
          goto LABEL_6;
        }

        v77 = v76;
        v78 = swift_allocObject();
        *(v78 + 16) = 91;
        *(v78 + 24) = 0xE100000000000000;
        sub_22C591324();
        v80 = v79;
        v82 = *(v79 + 16);
        v81 = *(v79 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_22C36A958(v81);
          sub_22C591324();
          v80 = v97;
        }

        *(v80 + 16) = v82 + 1;
        *(v80 + 8 * v82 + 32) = v78;
        v83 = sub_22C3DB9B0(v77);

        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_22C912A90;
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        sub_22C369AEC();
        v85 = swift_allocObject();
        *(v85 + 16) = v83;
        *(v84 + 32) = v85;
        sub_22C369AEC();
        v86 = swift_allocObject();
        sub_22C369AEC();
        v87 = swift_allocObject();
        *(v87 + 16) = v84 | 0x8000000000000000;
        *(v86 + 16) = v87;
        v88 = v86 | 0x6000000000000000;
        v89 = *(v80 + 16);
        v90 = v89 + 1;
        if (v89 >= *(v80 + 24) >> 1)
        {
          sub_22C591324();
          v80 = v98;
        }

        *(v80 + 16) = v90;
        *(v80 + 8 * v89 + 32) = v88;
        v91 = swift_allocObject();
        *(v91 + 16) = 93;
        *(v91 + 24) = 0xE100000000000000;
        v92 = *(v80 + 24);
        v93 = v89 + 2;
        if (v93 > (v92 >> 1))
        {
          sub_22C36A958(v92);
          sub_22C591324();
          v80 = v99;
        }

        *(v80 + 16) = v93;
        *(v80 + 8 * v90 + 32) = v91;
        v94 = sub_22C3DB9B0(v80);

        sub_22C369AEC();
        v95 = swift_allocObject();

        sub_22C369AEC();
        v96 = swift_allocObject();
        *(v96 + 16) = v94;
        *(v95 + 16) = v96;
        v26 = v95 | 0x6000000000000000;
      }

      else
      {
      }

      v70 = v101;
    }

    else
    {
      if (v33 != *MEMORY[0x277D1D7A0])
      {
        v72 = *(v106 + 8);
        v73 = sub_22C369D14();
        v74(v73);
        goto LABEL_5;
      }

      v62 = v106;
      v63 = *(v106 + 96);
      v64 = sub_22C369D14();
      v65(v64);
      v66 = *v21;
      v67 = swift_projectBox();
      v68 = v23;
      v69 = *(v62 + 16);
      v69(v8, v67, v4);
      v69(v15, v8, v4);
      swift_storeEnumTagMultiPayload();
      v26 = sub_22C48AFE4(v15, v105);
      sub_22C48B7D0(v15);
      (*(v62 + 8))(v8, v4);

      v70 = v68;
    }

    sub_22C48B7D0(v70);
    return v26;
  }

  v26 = *(*(a2 + 56) + 8 * v24);
  sub_22C454710(v26);
  return v26;
}

uint64_t sub_22C48B76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C48B7D0(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C48B850(uint64_t a1)
{
  sub_22C371798();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22C48B87C(uint64_t result)
{
  v2 = *v1 >> 62;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v7 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
    *v1 = 0x8000000000000000;
    v3 = *(result + 16);
    v4 = *(result + 24);
    _s3BoxCMa_0();
    if (sub_22C90B4BC())
    {

      sub_22C48B9B8();
    }
  }

  else
  {
    v8 = *v1;
    *v1 = 0x8000000000000000;
    v5 = *(result + 16);
    v6 = *(result + 24);
    _s3BoxCMa();
    if (sub_22C90B4BC())
    {

      sub_22C48B934();
    }
  }
}

uint64_t sub_22C48B934()
{
  v1 = *v0;
  sub_22C369D20();
  v3 = *(v2 + 80);
  sub_22C369D20();
  v5 = *(v4 + 88);
  v6 = sub_22C490608();
  swift_beginAccess();
  v7 = v0[2];
  v0[2] = v6;
}

uint64_t sub_22C48B9B8()
{
  v1 = *v0;
  sub_22C369D20();
  v3 = *(v2 + 80);
  sub_22C369D20();
  v5 = *(v4 + 88);
  type metadata accessor for PromptTree();
  v6 = sub_22C909E9C();
  v7 = sub_22C490324(v6, v3, v5);

  v8 = v0[2];
  v0[2] = v7;
}

uint64_t sub_22C48BA54(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      type metadata accessor for EitherBox();
      return sub_22C90A63C();
    }

    v6 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v7 = sub_22C48BCCC(v6, a2, a3);
  }

  else
  {
    swift_beginAccess();
    v8 = *(a1 + 16);

    v7 = sub_22C48BB2C(v8);
  }

  return v7;
}

uint64_t sub_22C48BB2C(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 2uLL:
      _s3BoxCMa();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v6 = (swift_projectBox() + *(TupleTypeMetadata2 + 48));
      goto LABEL_9;
    case 3uLL:
      v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for EitherBox();
      sub_22C90B48C();
      swift_allocObject();

      v3 = sub_22C90A60C();
      *v4 = v2 | 0x4000000000000000;
      goto LABEL_10;
    case 4uLL:
      v6 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 24);
      goto LABEL_9;
    case 5uLL:
      v6 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 32);
LABEL_9:
      v7 = *v6;
      type metadata accessor for EitherBox();
      sub_22C90B48C();
      swift_allocObject();

      v3 = sub_22C90A60C();
      *v8 = v7;
LABEL_10:
      sub_22C90A68C();
      result = v3;
      break;
    default:
      type metadata accessor for EitherBox();

      result = sub_22C90A63C();
      break;
  }

  return result;
}

uint64_t sub_22C48BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v10 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    type metadata accessor for EitherBox();
    sub_22C90B48C();
    swift_allocObject();
    v9 = sub_22C90A60C();
    *v11 = v10 | 0x4000000000000000;
    sub_22C90A68C();
  }

  else
  {
    v13[5] = *(a1 + 16);
    MEMORY[0x28223BE20](a1);
    v13[2] = a2;
    v13[3] = a3;
    _s3BoxCMa();
    v5 = sub_22C90A68C();
    v6 = type metadata accessor for EitherBox();

    WitnessTable = swift_getWitnessTable();
    v9 = sub_22C48FF50(sub_22C48C570, v13, v5, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  }

  return v9;
}

uint64_t sub_22C48BE48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v8 = *(v2 + 80);
  v7 = *(v2 + 88);

  sub_22C48C930(v5, v6, v8, v7);
  LOBYTE(v7) = v9;

  return v7 & 1;
}

uint64_t sub_22C48BEEC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);

  sub_22C48D068(a1, v4, v5, v6);
}

uint64_t *sub_22C48BF8C()
{
  v1 = *v0;
  sub_22C369D20();
  v3 = *(v2 + 80);
  sub_22C369D20();
  v5 = *(v4 + 88);
  sub_22C37178C();
  sub_22C48BA54(v6, v7, v8);

  sub_22C48B934();
  sub_22C37178C();
  v9 = type metadata accessor for EitherBox();
  sub_22C90A68C();
  while (1)
  {
    sub_22C48C6B8();
    sub_22C36A96C();
    sub_22C38B8E4();
    if ((~v17 & 0xF000000000000007) == 0)
    {
      break;
    }

    sub_22C37178C();
    sub_22C48BA54(v10, v11, v12);
    sub_22C48C558(v17);
    v13 = sub_22C373368();
    sub_22C36BCB0(v13, v14);
    sub_22C48B87C(v9);
  }

  v15 = v0[2];

  return v0;
}

uint64_t sub_22C48C0A8()
{
  sub_22C48BF8C();
  sub_22C371798();

  return swift_deallocClassInstance();
}

uint64_t sub_22C48C1B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);

  sub_22C37178C();
  LOBYTE(v5) = sub_22C48CE88(v7, v8);

  return v5 & 1;
}

uint64_t sub_22C48C21C()
{
  v1 = *v0;
  v2 = v0[2];
  sub_22C369D20();
  v4 = *(v3 + 80);
  sub_22C369D20();
  v6 = *(v5 + 88);

  sub_22C37178C();
  sub_22C48D4C8(v7, v8);
}

uint64_t *sub_22C48C298()
{
  v1 = *v0;
  sub_22C369D20();
  v3 = *(v2 + 80);
  sub_22C369D20();
  v5 = *(v4 + 88);
  sub_22C37178C();
  sub_22C48BA54(v6, v7, v8);

  sub_22C48B9B8();
  sub_22C37178C();
  v9 = type metadata accessor for EitherBox();
  sub_22C90A68C();
  while (1)
  {
    sub_22C48C6B8();
    sub_22C36A96C();
    sub_22C38B8E4();
    if ((~v17 & 0xF000000000000007) == 0)
    {
      break;
    }

    sub_22C37178C();
    sub_22C48BA54(v10, v11, v12);
    sub_22C48C558(v17);
    v13 = sub_22C373368();
    sub_22C36BCB0(v13, v14);
    sub_22C48B87C(v9);
  }

  v15 = v0[2];

  return v0;
}

uint64_t sub_22C48C3B4()
{
  sub_22C48C298();
  sub_22C371798();

  return swift_deallocClassInstance();
}

uint64_t sub_22C48C3F8(void (*a1)(_BYTE *))
{
  sub_22C90B62C();
  a1(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C48C4B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22C90B62C();
  v6 = *v4;
  a4(v8);
  return sub_22C90B66C();
}

uint64_t sub_22C48C558(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_22C48C590()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_22C48C5CC(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_22C48C5E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C48C63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_22C48C68C(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_22C48C6B8()
{

  return swift_getWitnessTable();
}

uint64_t sub_22C48C6E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C48C728(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C48C77C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22C48C808()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C48C850(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C48C8A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_22C48C930(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36A948();
  v64 = v8;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 == 1)
      {
        v47 = swift_projectBox();
        v48 = swift_projectBox();
        v49 = *(v19 + 16);
        v49(v27, v47, AssociatedTypeWitness);
        v49(v25, v48, AssociatedTypeWitness);
        v50 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
        sub_22C90A0BC();
        v51 = *(v19 + 8);
        v51(v25, AssociatedTypeWitness);
        v51(v27, AssociatedTypeWitness);
      }

      goto LABEL_29;
    case 2uLL:
      v32 = _s3BoxCMa();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v34 = swift_projectBox();
      if (a2 >> 61 == 2)
      {
        v35 = v34;
        v36 = *(TupleTypeMetadata2 + 48);
        v62 = *(v34 + v36);
        v63 = v32;
        v37 = swift_projectBox();
        v38 = *(v37 + v36);
        v39 = v64;
        v40 = *(v64 + 16);
        v40(v16, v35, a3);
        v40(v14, v37, a3);
        v41 = *(*(a4 + 8) + 8);

        sub_22C37335C();
        if (sub_22C90A0BC())
        {
          sub_22C48BE48(v62, v38);

          v42 = *(v39 + 8);
          v42(v14, a3);
          v42(v16, a3);
        }

        else
        {

          v58 = *(v39 + 8);
          v58(v14, a3);
          v58(v16, a3);
        }
      }

      goto LABEL_29;
    case 3uLL:
      if (a2 >> 61 == 3)
      {
        v43 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v44 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        _s3BoxCMa_0();

        v45 = sub_22C37335C();
        sub_22C48C1B4(v45, v46);
      }

      goto LABEL_29;
    case 4uLL:
      if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_29;
      }

      v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v31 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
LABEL_38:
      _s3BoxCMa();
      v59 = sub_22C37335C();
      sub_22C48BE48(v59, v60);
LABEL_29:
      sub_22C36CC48();
      break;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_29;
      }

      v52 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v56 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1)
      {
        switch(v52)
        {
          case 1:
            v57 = v54 == 1;
            goto LABEL_35;
          case 2:
            v57 = v54 == 2;
            goto LABEL_35;
          case 3:
            v57 = v54 == 3;
            goto LABEL_35;
          case 4:
            v57 = v54 == 4;
            goto LABEL_35;
          case 5:
            v57 = v54 == 5;
            goto LABEL_35;
          case 6:
            if (v54 <= 5)
            {
              v55 = 0;
            }

            if (v55 == 1)
            {
              goto LABEL_38;
            }

            goto LABEL_29;
          default:
            v57 = v54 == 0;
LABEL_35:
            if (!v57)
            {
              LOBYTE(v55) = 0;
            }

            if (v55)
            {
              goto LABEL_38;
            }

            goto LABEL_29;
        }
      }

      if (v52 != v54)
      {
        LOBYTE(v55) = 1;
      }

      if (v55)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    default:
      if (a2 >> 61)
      {
        goto LABEL_29;
      }

      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
      {
        goto LABEL_29;
      }

      sub_22C36CC48();

      sub_22C90B4FC();
      break;
  }
}

uint64_t sub_22C48CE88(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v3 = *(a1 + 16);
      v4 = *(a2 + 16);
      _s3BoxCMa();

      swift_getWitnessTable();
      sub_22C37335C();
      v5 = sub_22C90A6AC();

      return v5 & 1;
    }

    return 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v9 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
  v10 = v9[3];
  v11 = v9[4];
  if (v7)
  {
    if (v7 == 1)
    {
      if (v10 != 1)
      {
        return 0;
      }
    }

    else if (v7 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v10 < 3)
      {
        return 0;
      }

      v12 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == v9[2] && v7 == v10;
      if (!v12 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  _s3BoxCMa_0();
  v13 = sub_22C37335C();
  return sub_22C48C1B4(v13) & 1;
}

uint64_t sub_22C48CFBC(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 6:
        if ((a4 & 1) == 0 || a3 <= 5)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      default:
        if ((a4 & 1) == 0 || a3)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
    }

    return 1;
  }

  else if (a4)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  else
  {
    return a1 == a3;
  }
}

void sub_22C48D068(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36A948();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  switch(a2 >> 61)
  {
    case 1uLL:
      v35 = swift_projectBox();
      (*(v17 + 16))(v22, v35, AssociatedTypeWitness);
      MEMORY[0x2318B8B10](1);
      v36 = *(swift_getAssociatedConformanceWitness() + 8);
      sub_22C909F8C();
      (*(v17 + 8))(v22, AssociatedTypeWitness);
      goto LABEL_13;
    case 2uLL:
      sub_22C37178C();
      _s3BoxCMa();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v30 = swift_projectBox();
      v31 = *(v30 + *(TupleTypeMetadata2 + 48));
      (*(v9 + 16))(v14, v30, a3);
      MEMORY[0x2318B8B10](2);
      v32 = *(a4 + 8);

      sub_22C37178C();
      sub_22C909F8C();
      sub_22C48BEEC(a1);

      (*(v9 + 8))(v14, a3);
      goto LABEL_13;
    case 3uLL:
      v33 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x2318B8B10](3);

      sub_22C48C21C();
      sub_22C36CC48();

      return;
    case 4uLL:
      v26 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x2318B8B10](4);
      sub_22C90B64C();
      v28 = a1;
      goto LABEL_12;
    case 5uLL:
      v37 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v39 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x2318B8B10](5);
      sub_22C48D778(a1, v37, v38);
      v28 = a1;
LABEL_12:
      sub_22C48BEEC(v28);
LABEL_13:
      sub_22C36CC48();
      break;
    default:
      v23 = *(a2 + 16);
      v24 = *(a2 + 24);
      MEMORY[0x2318B8B10](0);

      sub_22C37178C();
      sub_22C909FFC();
      sub_22C36CC48();

      break;
  }
}

uint64_t sub_22C48D46C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (!a4)
      {
        return 1;
      }

      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    case 1:
      if (a4 == 1)
      {
        return 1;
      }

      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    case 2:
      if (a4 == 2)
      {
        return 1;
      }

      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (a4 < 3)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_22C90B4FC();
  }

  return 1;
}

uint64_t sub_22C48D4C8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v5 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x2318B8B10](1);
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = 1;
      }

      else
      {
        if (v6 != 2)
        {
          MEMORY[0x2318B8B10](2);
          sub_22C37178C();
          sub_22C909FFC();
          return sub_22C48C21C(a1);
        }

        v8 = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x2318B8B10](v8);
    return sub_22C48C21C(a1);
  }

  v3 = *(a2 + 16);
  MEMORY[0x2318B8B10](0);
  _s3BoxCMa();

  swift_getWitnessTable();
  sub_22C90A69C();
}

uint64_t sub_22C48D5DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  sub_22C90B62C();
  a4(v9, a1, a2, a3);
  return sub_22C90B66C();
}

uint64_t sub_22C48D644(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        v4 = 2;
        if ((a4 & 1) != 0 && a3 == 1)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a4 & 1) == 0 || a3 != 2)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 3:
        v4 = 4;
        if ((a4 & 1) == 0 || a3 != 3)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 4:
        v4 = 5;
        if ((a4 & 1) == 0 || a3 != 4)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 5:
        v4 = 6;
        if ((a4 & 1) == 0 || a3 != 5)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 6:
        v4 = 7;
        if ((a4 & 1) != 0 && a3 > 5)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        goto LABEL_27;
      default:
        v4 = 1;
        if ((a4 & 1) != 0 && !a3)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

LABEL_27:
        if (a4)
        {
          goto LABEL_28;
        }

        v6 = 0;
        break;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      return a1 < a3;
    }

    v4 = 0;
LABEL_28:
    v6 = 1;
    switch(a3)
    {
      case 1uLL:
        v6 = 2;
        break;
      case 2uLL:
        v6 = 3;
        break;
      case 3uLL:
        v6 = 4;
        break;
      case 4uLL:
        v6 = 5;
        break;
      case 5uLL:
        v6 = 6;
        break;
      case 6uLL:
        v6 = 7;
        break;
      default:
        return v4 < v6;
    }
  }

  return v4 < v6;
}

uint64_t sub_22C48D778(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = a2 + 1;
  }

  else
  {
    MEMORY[0x2318B8B10](0);
  }

  return MEMORY[0x2318B8B10](v3);
}

uint64_t sub_22C48D7B8(uint64_t a1, char a2)
{
  sub_22C90B62C();
  sub_22C48D778(v5, a1, a2 & 1);
  return sub_22C90B66C();
}

uint64_t sub_22C48D808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (a4)
      {
        v4 = 0;
        goto LABEL_12;
      }

      return 0;
    case 1:
      if (a4 != 1)
      {
        v4 = 1;
        goto LABEL_12;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        v4 = 3;
LABEL_12:
        if (a4 > 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = qword_22C916EA0[a4];
        }

        return v4 < v5;
      }

      return 0;
  }

  if (a4 < 3)
  {
    v4 = 2;
    goto LABEL_12;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  sub_22C38B908();
  if (sub_22C90B4FC())
  {
    return 0;
  }

  sub_22C38B908();

  return sub_22C90B4FC();
}

uint64_t sub_22C48D8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x2318B8B10](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x2318B8B10](v3);
    case 2:
      v3 = 3;
      return MEMORY[0x2318B8B10](v3);
  }

  MEMORY[0x2318B8B10](2);

  return sub_22C909FFC();
}

uint64_t sub_22C48D988(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        MEMORY[0x2318B8B10](2);
        sub_22C909FFC();
        return sub_22C90B66C();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x2318B8B10](v3);
  return sub_22C90B66C();
}

uint64_t sub_22C48DA54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_22C48D4C8(a1, *v2);
}

uint64_t sub_22C48DA7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_22C90B62C();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_22C90B66C();
}

uint64_t sub_22C48DAD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_22C48CE88(*a1, *a2);
}

uint64_t sub_22C48DB38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22C90B62C();
  sub_22C48D778(v4, v1, v2);
  return sub_22C90B66C();
}

uint64_t sub_22C48DC20()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C90B62C();
  sub_22C48D8F8(v4, v1, v2);
  return sub_22C90B66C();
}

uint64_t sub_22C48DCCC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22C48DCE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C48DD00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22C48DD30(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C48DD4C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_22C48DD84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C48DD9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C48DDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_22C48DE48(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_22C48DE74()
{
  result = qword_27D9BCE80;
  if (!qword_27D9BCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCE80);
  }

  return result;
}

unint64_t sub_22C48DEC8()
{
  result = qword_27D9BCE88;
  if (!qword_27D9BCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCE88);
  }

  return result;
}

uint64_t sub_22C48DF40@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12 = TupleTypeMetadata;
  v102 = a3;
  v101 = a4;
  v100 = a8;
  v99 = 8 * a5;
  if (a5 == 1)
  {
    v13 = *(a6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    for (i = 0; a5 != i; ++i)
    {
      *(&v96[i] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v13 = TupleTypeMetadata;
  }

  v108 = *(v13 - 8);
  v16 = v108[8];
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v110 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v96;
  v19 = MEMORY[0x28223BE20](v17);
  v109 = v96 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v113 = v96 - v22;
  v104 = v96;
  v23 = MEMORY[0x28223BE20](v21);
  v111 = v96 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v115 = v96 - v26;
  v96[4] = v96;
  v27 = MEMORY[0x28223BE20](v25);
  v114 = v96 - v28;
  v96[3] = v96;
  v29 = MEMORY[0x28223BE20](v27);
  v117 = v96 - v30;
  v96[2] = v96;
  v31 = MEMORY[0x28223BE20](v29);
  v116 = v96 - v32;
  v96[1] = v96;
  v33 = MEMORY[0x28223BE20](v31);
  v96[0] = v96;
  MEMORY[0x28223BE20](v33);
  v121 = v96 - v35;
  v122 = (a6 & 0xFFFFFFFFFFFFFFFELL);
  v36 = v34;
  v103 = v96;
  if (a5)
  {
    v37 = a7;
    v38 = v34;
    v39 = (v13 + 32);
    v40 = v122;
    v41 = a5;
    do
    {
      if (a5 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = *v39;
      }

      v44 = *v40++;
      v43 = v44;
      v45 = *v12++;
      (*(*(v43 - 8) + 16))(&v121[v42], v45);
      v39 += 4;
      --v41;
    }

    while (v41);
    v46 = (v13 + 32);
    v47 = v122;
    v48 = a5;
    v36 = v38;
    a7 = v37;
    do
    {
      if (a5 == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = *v46;
      }

      v51 = *v47++;
      v50 = v51;
      v52 = *a2++;
      (*(*(v50 - 8) + 16))(&v36[v49], v52);
      v46 += 4;
      --v48;
    }

    while (v48);
  }

  v105 = v96;
  v53 = v108 + 2;
  v54 = v108[2];
  v54(v116, v121, v13);
  v107 = v36;
  v98 = v53;
  v97 = v54;
  v55 = (v54)(v117, v36, v13);
  v56 = 0;
  v112 = a7 & 0xFFFFFFFFFFFFFFFELL;
  v57 = 32;
  v118 = v13;
  while (a5 != v56)
  {
    v120 = v96;
    v58 = v122[v56];
    v59 = *(v112 + 8 * v56);
    v60 = *(v58 - 8);
    v61 = v60[8];
    v62 = MEMORY[0x28223BE20](v55);
    v64 = v96 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    v119 = v96;
    MEMORY[0x28223BE20](v62);
    v66 = v96 - v65;
    if (a5 == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(v13 + v57);
    }

    v68 = v60[2];
    v68(v64, &v116[v67], v58);
    if (a5 == 1)
    {
      v69 = 0;
    }

    else
    {
      v69 = *(v118 + v57);
    }

    v68(v66, &v117[v69], v58);
    v70 = sub_22C90A06C();
    if (v70)
    {
      v113 = v96;
      MEMORY[0x28223BE20](v70);
      v82 = v96 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = v118;
      v97(v115, v121, v118);
      v83 = 0;
      v84 = 32;
      do
      {
        if (a5 == 1)
        {
          v85 = 0;
          v86 = v114;
        }

        else
        {
          v85 = *(v13 + v84);
          v86 = &v114[v85];
        }

        (*(*(v122[v83] - 8) + 16))(v86, &v115[v85]);
        *&v82[8 * v83++] = v86;
        v84 += 16;
      }

      while (a5 != v83);
      v102(v82);
      v87 = v60[1];
      v87(v66, v58);
      v87(v64, v58);
      v80 = v108[1];
      v80(v114, v13);
      v80(v115, v13);
      goto LABEL_48;
    }

    v71 = sub_22C90A05C();
    v13 = v118;
    if (v71)
    {
      v115 = v96;
      MEMORY[0x28223BE20](v71);
      v89 = v96 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      v97(v113, v107, v13);
      v90 = 0;
      v91 = 32;
      do
      {
        if (a5 == 1)
        {
          v92 = 0;
          v93 = v111;
        }

        else
        {
          v92 = *(v13 + v91);
          v93 = &v111[v92];
        }

        (*(*(v122[v90] - 8) + 16))(v93, &v113[v92]);
        *&v89[8 * v90++] = v93;
        v91 += 16;
      }

      while (a5 != v90);
      v102(v89);
      v94 = v60[1];
      v94(v66, v58);
      v94(v64, v58);
      v80 = v108[1];
      v80(v111, v13);
      v80(v113, v13);
      goto LABEL_48;
    }

    v72 = v60[1];
    v72(v66, v58);
    v55 = (v72)(v64, v58);
    ++v56;
    v57 += 16;
  }

  v120 = v96;
  MEMORY[0x28223BE20](v55);
  v119 = (v96 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97(v110, v121, v13);
  if (a5)
  {
    v74 = (v13 + 32);
    v75 = v119;
    v76 = a5;
    do
    {
      if (a5 == 1)
      {
        v77 = 0;
        v78 = v109;
      }

      else
      {
        v77 = *v74;
        v78 = &v109[v77];
      }

      v79 = v122;
      (*(*(*v122 - 8) + 16))(v78, &v110[v77]);
      *v75++ = v78;
      v74 += 4;
      v122 = v79 + 1;
      --v76;
    }

    while (v76);
  }

  v102(v119);
  v80 = v108[1];
  v80(v109, v13);
  v80(v110, v13);
LABEL_48:
  v80(v117, v13);
  v80(v116, v13);
  v80(v107, v13);
  return (v80)(v121, v13);
}

uint64_t sub_22C48E9D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v8 = *(v2 + 80);
  v7 = *(v2 + 88);

  sub_22C48FF20();
  v9 = sub_22C48EA84();

  return v9 & 1;
}

uint64_t sub_22C48EA84()
{
  sub_22C373394();
  sub_22C48C930(v0, v1, v2, v3);
  if (v4)
  {
    return 0;
  }

  v6 = sub_22C36A998();
  sub_22C48EBDC(v6, v7, v8, v9, v10, v11);
  v12 = sub_22C369D2C();
  sub_22C48C930(v12, v13, v14, v15);
  v17 = v16;

  return v17 & 1;
}

uint64_t sub_22C48EAE4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - 16;
  v6 = *(a4 - 16);
  v4 = *(v5 + 8);
  return sub_22C48E9D4(*a1, *a2);
}