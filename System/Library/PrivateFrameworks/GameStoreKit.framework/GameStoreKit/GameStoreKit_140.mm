unint64_t sub_24F460470()
{
  result = qword_27F243F78;
  if (!qword_27F243F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F78);
  }

  return result;
}

unint64_t sub_24F4604C8()
{
  result = qword_27F243F80;
  if (!qword_27F243F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F80);
  }

  return result;
}

unint64_t sub_24F460520()
{
  result = qword_27F243F88;
  if (!qword_27F243F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F88);
  }

  return result;
}

unint64_t sub_24F460578()
{
  result = qword_27F243F90;
  if (!qword_27F243F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F90);
  }

  return result;
}

unint64_t sub_24F4605D0()
{
  result = qword_27F243F98;
  if (!qword_27F243F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F98);
  }

  return result;
}

unint64_t sub_24F460628()
{
  result = qword_27F243FA0;
  if (!qword_27F243FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FA0);
  }

  return result;
}

unint64_t sub_24F460680()
{
  result = qword_27F243FA8;
  if (!qword_27F243FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FA8);
  }

  return result;
}

unint64_t sub_24F4606D8()
{
  result = qword_27F243FB0;
  if (!qword_27F243FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FB0);
  }

  return result;
}

unint64_t sub_24F460730()
{
  result = qword_27F243FB8;
  if (!qword_27F243FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FB8);
  }

  return result;
}

unint64_t sub_24F460788()
{
  result = qword_27F243FC0;
  if (!qword_27F243FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FC0);
  }

  return result;
}

unint64_t sub_24F4607E0()
{
  result = qword_27F243FC8;
  if (!qword_27F243FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FC8);
  }

  return result;
}

unint64_t sub_24F460838()
{
  result = qword_27F243FD0;
  if (!qword_27F243FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FD0);
  }

  return result;
}

unint64_t sub_24F460890()
{
  result = qword_27F243FD8;
  if (!qword_27F243FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FD8);
  }

  return result;
}

unint64_t sub_24F4608E8()
{
  result = qword_27F243FE0;
  if (!qword_27F243FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FE0);
  }

  return result;
}

unint64_t sub_24F460940()
{
  result = qword_27F243FE8;
  if (!qword_27F243FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FE8);
  }

  return result;
}

unint64_t sub_24F460998()
{
  result = qword_27F243FF0;
  if (!qword_27F243FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FF0);
  }

  return result;
}

unint64_t sub_24F4609F0()
{
  result = qword_27F243FF8;
  if (!qword_27F243FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FF8);
  }

  return result;
}

unint64_t sub_24F460A48()
{
  result = qword_27F244000;
  if (!qword_27F244000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244000);
  }

  return result;
}

uint64_t sub_24F460AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244008);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_24F460B4C()
{
  result = qword_27F244030;
  if (!qword_27F244030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244020);
    sub_24E602068(&qword_27F244028, &qword_27F244020);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244030);
  }

  return result;
}

uint64_t sub_24F460C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E646E65697266 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (sub_24F92CE08() & 1) != 0)
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

uint64_t sub_24F460DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461676976616ELL && a2 == 0xEF656C7469546E6FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA756C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4C1B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA4C1D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F46104C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F53676E696D6F63 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xED0000656761506CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6F4365676170 && a2 == 0xED000072656E6961 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA74950 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA74990 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x504174726F706572 && a2 == 0xED0000726579616CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA755A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA74910 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA755C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA755E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA75600 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA75620 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75640 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA42EA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x45656C69666F7270 && a2 == 0xED0000726F746964 || (sub_24F92CE08() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7246657469766E69 && a2 == 0xED000073646E6569)
  {

    return 20;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_24F4616F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
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

uint64_t sub_24F461820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
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

unint64_t sub_24F461950()
{
  result = qword_27F244048;
  if (!qword_27F244048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244048);
  }

  return result;
}

unint64_t sub_24F4619A4()
{
  result = qword_27F244068;
  if (!qword_27F244068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244068);
  }

  return result;
}

unint64_t sub_24F4619F8()
{
  result = qword_27F2440B0;
  if (!qword_27F2440B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2440B0);
  }

  return result;
}

unint64_t sub_24F461A4C()
{
  result = qword_27F2440B8;
  if (!qword_27F2440B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2440B8);
  }

  return result;
}

unint64_t sub_24F461AA0()
{
  result = qword_27F244148;
  if (!qword_27F244148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244148);
  }

  return result;
}

unint64_t sub_24F461AF4()
{
  result = qword_27F244160;
  if (!qword_27F244160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244160);
  }

  return result;
}

unint64_t sub_24F461B48()
{
  result = qword_27F2441A8;
  if (!qword_27F2441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2441A8);
  }

  return result;
}

unint64_t sub_24F461B9C()
{
  result = qword_27F2441C0;
  if (!qword_27F2441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2441C0);
  }

  return result;
}

uint64_t sub_24F461D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F461DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F461E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F461F00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244018);
  sub_24F460B4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F461FBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = sub_24F9249A8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244308);
  v7 = *a2;
  v8 = v5 * *a2;
  if ((v5 * *a2) >> 64 != v8 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 >= v8)
  {
    swift_getKeyPath();
    v10 = swift_allocObject();
    v11 = *(a2 + 1);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v11;
    *(v10 + 48) = *(a2 + 2);
    *(v10 + 64) = a2[6];
    *(v10 + 72) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244310);
    sub_24E62A6CC();
    sub_24E602068(&qword_27F244318, &qword_27F244310);
    return sub_24F927228();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_24F462158(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244320);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *a1;
  sub_24F4622E8(v14, &v22 - v12);
  v15 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < v15)
    {
      v17 = *a2 & 0xFFFFFFFFFFFFFFFELL;
      v18 = 0x4038000000000000;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x4028000000000000;
      }

      if (*a2 >= 8)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x4028000000000000;
      }

      if (v17 == 6)
      {
        v19 = 0x4032000000000000;
      }

      if (v17 == 4)
      {
        v16 = 0x4028000000000000;
      }

      else
      {
        v16 = v19;
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = v14 >= v15;
    sub_24F463784(v13, v10);
    sub_24F463784(v10, a4);
    v21 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244328) + 48);
    *v21 = v16;
    *(v21 + 8) = 0;
    *(v21 + 9) = v20;
    sub_24E601704(v13, &qword_27F244320);
    sub_24E601704(v10, &qword_27F244320);
  }
}

void sub_24F4622E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F924218();
  v120 = *(v6 - 8);
  v121 = v6;
  MEMORY[0x28223BE20](v6);
  v118 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContinuePlayingIcon(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244330);
  v116 = *(v11 - 8);
  v117 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v112 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244338);
  MEMORY[0x28223BE20](v115);
  v15 = &v112 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244340);
  MEMORY[0x28223BE20](v136);
  v123 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244348);
  v125 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v124 = &v112 - v18;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244350);
  MEMORY[0x28223BE20](v130);
  v133 = &v112 - v19;
  v20 = sub_24F929888();
  v128 = *(v20 - 8);
  v129 = v20;
  MEMORY[0x28223BE20](v20);
  v119 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v122 = &v112 - v23;
  MEMORY[0x28223BE20](v24);
  v127 = &v112 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v112 - v27;
  MEMORY[0x28223BE20](v29);
  v114 = &v112 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244358);
  v113 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v126 = &v112 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244360);
  MEMORY[0x28223BE20](v32);
  v35 = &v112 - v34;
  v36 = *(v3 + 16);
  v37 = *(v36 + 16);
  v134 = v17;
  v135 = a2;
  v132 = v38;
  if (v37 <= a1)
  {
    *&v139 = 0;
    sub_24F926F28();
    v53 = v144;
    *&v139 = 0;
    sub_24F926F28();
    v139 = v53;
    v140 = v144;
    strcpy(&v144, "placeholder_");
    BYTE13(v144) = 0;
    HIWORD(v144) = -5120;
    v126 = a1;
    *&v151 = a1;
    v54 = sub_24F92CD88();
    MEMORY[0x253050C20](v54);

    sub_24F92C7F8();
    sub_24F9289D8();
    *&v146 = 0;
    v145 = 0u;
    v144 = 0u;
    v55 = v8[9];
    v56 = sub_24F92A6D8();
    (*(*(v56 - 8) + 56))(&v10[v55], 1, 1, v56);
    v57 = v8[10];
    v58 = sub_24F929608();
    (*(*(v58 - 8) + 56))(&v10[v57], 1, 1, v58);
    v10[v8[6]] = 0;
    v59 = &v10[v8[7]];
    *v59 = 0;
    *(v59 + 1) = 0;
    v60 = &v10[v8[8]];
    *(v60 + 32) = 0;
    *v60 = 0u;
    *(v60 + 16) = 0u;
    sub_24E7D5870(&v144, v60);
    v61 = sub_24F4637F4();
    sub_24F921D38();

    sub_24F463848(v10);
    v62 = v118;
    sub_24F924208();
    *&v144 = &type metadata for ContinuePlayingIconComponent;
    *(&v144 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    v63 = v117;
    sub_24F926AE8();
    (*(v120 + 8))(v62, v121);
    (*(v116 + 8))(v13, v63);
    v64 = &v15[*(v115 + 36)];
    *v64 = 0x3FF0000000000000;
    *(v64 + 4) = 0;
    v65 = *(v3 + 24);
    v66 = *(v3 + 32);
    v67 = *(v3 + 40);
    v68 = *(v3 + 48);
    sub_24F927618();
    v69 = v66;
    if (v67)
    {
      v69 = v65;
    }

    v70 = v15;
    if (v65 > v69 || v69 > v68)
    {
      sub_24F92BDC8();
      v71 = sub_24F9257A8();
      sub_24F921FD8();
    }

    sub_24F9242E8();
    v72 = v123;
    sub_24F4638A4(v70, v123);
    v73 = (v72 + *(v136 + 36));
    v74 = v147;
    v75 = v149;
    v76 = v150;
    v73[4] = v148;
    v73[5] = v75;
    v73[6] = v76;
    v77 = v145;
    v78 = v146;
    *v73 = v144;
    v73[1] = v77;
    v73[2] = v78;
    v73[3] = v74;
    v139 = 0u;
    v140 = 0u;
    v151 = 0u;
    v152 = 0u;
    v79 = v119;
    sub_24F929878();
    sub_24E601704(&v151, &qword_27F2129B0);
    sub_24E601704(&v139, &qword_27F2129B0);
    *(&v140 + 1) = MEMORY[0x277D83B88];
    *&v139 = v126;
    v80 = v122;
    sub_24F929868();
    v81 = v129;
    v82 = *(v128 + 8);
    v82(v79, v129);
    sub_24E601704(&v139, &qword_27F2129B0);
    *(&v140 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v139) = 1;
    v83 = v127;
    sub_24F929868();
    v82(v80, v81);
    sub_24E601704(&v139, &qword_27F2129B0);
    v84 = sub_24F463914();
    v85 = v124;
    sub_24F925EE8();
    v82(v83, v81);
    sub_24E601704(v72, &qword_27F244340);
    v86 = v125;
    v87 = v134;
    (*(v125 + 16))(v133, v85, v134);
    swift_storeEnumTagMultiPayload();
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238958);
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238960);
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380);
    v91 = sub_24F463A94();
    *&v139 = v90;
    *(&v139 + 1) = v91;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v93 = sub_24F09B638();
    v94 = sub_24F463BAC();
    *&v139 = v88;
    *(&v139 + 1) = &type metadata for IsDebugImpressionIndexOverlayEnabled;
    *&v140 = v89;
    *(&v140 + 1) = OpaqueTypeConformance2;
    *&v141 = v93;
    *(&v141 + 1) = v94;
    v95 = swift_getOpaqueTypeConformance2();
    *&v139 = v131;
    *(&v139 + 1) = v95;
    swift_getOpaqueTypeConformance2();
    *&v139 = v136;
    *(&v139 + 1) = v84;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v86 + 8))(v85, v87);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v124 = v35;
    v125 = v33;
    sub_24E615E00(v36 + 40 * a1 + 32, &v151);
    sub_24E615E00(&v151, &v140);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24F3981B0();
    *&v139 = sub_24F923598();
    BYTE8(v139) = v39 & 1;
    *(&v142 + 1) = 0x3FF0000000000000;
    v143 = 0;
    v40 = *(v3 + 24);
    v41 = *(v3 + 32);
    v42 = *(v3 + 40);
    v43 = *(v3 + 48);
    sub_24F927618();
    v44 = v41;
    if (v42)
    {
      v44 = v40;
    }

    if (v40 > v44 || v44 > v43)
    {
      sub_24F92BDC8();
      v45 = sub_24F9257A8();
      sub_24F921FD8();
    }

    sub_24F9242E8();
    v145 = v140;
    v146 = v141;
    v147 = v142;
    LOWORD(v148) = v143;
    v144 = v139;
    sub_24F54D550(&v151, a1, v126);
    sub_24E601704(&v144, &qword_27F244380);
    __swift_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    *(&v145 + 1) = MEMORY[0x277D84030];
    *&v144 = swift_allocObject();
    sub_24F928D68();
    v139 = 0u;
    v140 = 0u;
    v46 = v127;
    sub_24F929878();
    sub_24E601704(&v139, &qword_27F2129B0);
    sub_24E601704(&v144, &qword_27F2129B0);
    *(&v145 + 1) = MEMORY[0x277D83B88];
    *&v144 = a1;
    sub_24F929868();
    v47 = v129;
    v48 = *(v128 + 8);
    v48(v46, v129);
    sub_24E601704(&v144, &qword_27F2129B0);
    __swift_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    sub_24F928D78();
    sub_24E7538CC(&v144, &v137);
    if (v138)
    {
      sub_24E612C80(&v137, &v139);
      __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
      *&v137 = swift_getDynamicType();
      *(&v137 + 1) = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8);
      v49 = sub_24F92B188();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v139);
      sub_24E601704(&v144, qword_27F21B590);
      v52 = MEMORY[0x277D837D0];
    }

    else
    {
      sub_24E601704(&v144, qword_27F21B590);
      sub_24E601704(&v137, qword_27F21B590);
      v49 = 0;
      v51 = 0;
      v52 = 0;
      *&v145 = 0;
    }

    *&v144 = v49;
    *(&v144 + 1) = v51;
    *(&v145 + 1) = v52;
    v96 = v114;
    sub_24F929868();
    v48(v28, v47);
    sub_24E601704(&v144, &qword_27F2129B0);
    v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238958);
    v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238960);
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380);
    v100 = sub_24F463A94();
    *&v144 = v99;
    *(&v144 + 1) = v100;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = sub_24F09B638();
    v103 = sub_24F463BAC();
    *&v144 = v97;
    *(&v144 + 1) = &type metadata for IsDebugImpressionIndexOverlayEnabled;
    *&v145 = v98;
    *(&v145 + 1) = v101;
    *&v146 = v102;
    *(&v146 + 1) = v103;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = v48;
    v106 = v124;
    v107 = v131;
    v108 = v126;
    sub_24F925EE8();
    v105(v96, v47);
    (*(v113 + 8))(v108, v107);
    v109 = v125;
    v110 = v132;
    (*(v125 + 16))(v133, v106, v132);
    swift_storeEnumTagMultiPayload();
    *&v144 = v107;
    *(&v144 + 1) = v104;
    swift_getOpaqueTypeConformance2();
    v111 = sub_24F463914();
    *&v144 = v136;
    *(&v144 + 1) = v111;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v109 + 8))(v106, v110);
    __swift_destroy_boxed_opaque_existential_1(&v151);
  }
}

uint64_t sub_24F463428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F925508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442E0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  result = sub_24F924C88();
  *v9 = result;
  *(v9 + 1) = 0;
  v9[16] = 1;
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442E8);
    v18 = v3;
    v19 = 0;
    v17[1] = *(v14 + 44);
    v20 = v10;
    KeyPath = swift_getKeyPath();
    v17[2] = a1;
    v17[0] = KeyPath;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v10;
    *(v16 + 32) = v12;
    *(v16 + 40) = *(v1 + 3);
    *(v16 + 56) = *(v1 + 5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442F0);
    sub_24E62A6CC();
    sub_24E602068(&qword_27F2442F8, &qword_27F2442F0);
    sub_24F927228();
    sub_24F9254F8();
    sub_24E602068(&qword_27F244300, &qword_27F2442E0);
    sub_24F926678();
    (*(v4 + 8))(v6, v18);
    return sub_24E601704(v9, &qword_27F2442E0);
  }

  return result;
}

uint64_t sub_24F463700()
{

  return swift_deallocObject();
}

uint64_t sub_24F463740()
{

  return swift_deallocObject();
}

uint64_t sub_24F463784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F4637F4()
{
  result = qword_27F244368;
  if (!qword_27F244368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244368);
  }

  return result;
}

uint64_t sub_24F463848(uint64_t a1)
{
  v2 = type metadata accessor for ContinuePlayingIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4638A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F463914()
{
  result = qword_27F244370;
  if (!qword_27F244370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244340);
    sub_24F4639A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244370);
  }

  return result;
}

unint64_t sub_24F4639A0()
{
  result = qword_27F244378;
  if (!qword_27F244378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244330);
    sub_24F4637F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244378);
  }

  return result;
}

unint64_t sub_24F463A94()
{
  result = qword_27F244388;
  if (!qword_27F244388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380);
    sub_24F463B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244388);
  }

  return result;
}

unint64_t sub_24F463B20()
{
  result = qword_27F244390;
  if (!qword_27F244390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244398);
    sub_24E66C1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244390);
  }

  return result;
}

unint64_t sub_24F463BAC()
{
  result = qword_27F2443A0;
  if (!qword_27F2443A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380);
    sub_24F463A94();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443A0);
  }

  return result;
}

uint64_t sub_24F463CA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F463CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2442E0);
  sub_24E602068(&qword_27F244300, &qword_27F2442E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F463D70@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F47DF2C(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  result = sub_24F924888();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24F463E88@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24F47DF2C(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  result = sub_24F924888();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24F463FA0@<X0>(_BYTE *a1@<X8>)
{
  sub_24F47DF84();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F46403C@<X0>(void *a1@<X8>)
{
  sub_24F189AF8();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t View.componentContentBuilder(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GSKComponentContentBuilder();
  v6 = swift_allocObject();

  sub_24F91FDB8();
  *(v6 + 16) = a1;

  *(v6 + 24) = sub_24F479930(v7);

  sub_24F926F28();
  MEMORY[0x25304C420](&v9, a2, &type metadata for ComponentContentBuilderViewModifier, a3);
}

uint64_t type metadata accessor for GSKComponentContentBuilder()
{
  result = qword_27F2443B0;
  if (!qword_27F2443B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F464208@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443C8);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443D0);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v31 = &v29 - v9;
  v10 = *(v1 + 8);

  if ((v10 & 1) == 0)
  {
    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_24F921A88();

  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215778);
  v14 = sub_24E6695B8();
  v15 = sub_24E66960C();
  v16 = MEMORY[0x277CE11C8];
  v17 = v30;
  sub_24F926B08();

  v18 = sub_24F926C28();
  v29 = &v29;
  MEMORY[0x28223BE20](v18);
  *(&v29 - 4) = v19;
  *(&v29 - 3) = 0x3FE0000000000000;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157A0);
  v37 = v16;
  v38 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v39 = v13;
  v40 = MEMORY[0x277CE11C0];
  v41 = v14;
  v42 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_24E669340();
  v23 = sub_24F47CCA4();
  v28 = v23;
  v24 = v31;
  v25 = v33;
  sub_24F926B08();

  (*(v32 + 8))(v17, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443E0);
  v37 = v25;
  v38 = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
  v39 = v20;
  v40 = OpaqueTypeConformance2;
  v41 = v22;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  sub_24F09B68C();
  v28 = sub_24F47CD9C();
  v26 = v35;
  sub_24F926B08();
  return (*(v34 + 8))(v24, v26);
}

uint64_t sub_24F464700()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443F0);
  sub_24F926F38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443F8);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24E602068(&qword_27F244400, &qword_27F2443F8);
  sub_24F47DF2C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  sub_24F9261A8();
}

uint64_t sub_24F464824()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit26GSKComponentContentBuilder___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F4648D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_24F464950(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SocialSuggestionsComponentGrid();

  sub_24F928EA8();
  v13 = &type metadata for SocialSuggestionsComponentGridComponent;
  v14 = sub_24EC15B7C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SocialSuggestionsComponentGridComponent, sub_24EC15B7C, sub_24EC15B7C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464ABC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SocialSuggestionLockup(0);

  sub_24F928EA8();
  v13 = &type metadata for SocialSuggestionLockupComponent;
  v14 = sub_24F256264();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SocialSuggestionLockupComponent, sub_24F256264, sub_24F256264);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464C28(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBrick(0);

  sub_24F928EA8();
  v13 = &type metadata for SmallBrickComponent;
  v14 = sub_24EACD72C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SmallBrickComponent, sub_24EACD72C, sub_24EACD72C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464D94(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingsResetButton();

  sub_24F928EA8();
  v13 = &type metadata for SettingsResetButtonComponent;
  v14 = sub_24F47D170();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SettingsResetButtonComponent, sub_24F47D170, sub_24F47D170);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464F00(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchPromptItem(0);

  sub_24F928EA8();
  v13 = &type metadata for SearchPromptItemComponent;
  v14 = sub_24E66B688();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SearchPromptItemComponent, sub_24E66B688, sub_24E66B688);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46506C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAppStoreButton();

  sub_24F928EA8();
  v13 = &type metadata for SearchAppStoreButtonComponent;
  v14 = sub_24F3B28D8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SearchAppStoreButtonComponent, sub_24F3B28D8, sub_24F3B28D8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4651D8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RibbonBarItem();

  sub_24F928EA8();
  v22 = &type metadata for RibbonBarItemComponent;
  v23 = sub_24F47D1C4();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for RibbonBarItemComponent, sub_24F47D1C4, sub_24F47D1C4);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F465400(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReleaseStateIndicator();

  sub_24F928EA8();
  v13 = &type metadata for ReleaseStateIndicatorComponent;
  v14 = sub_24F004F34();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ReleaseStateIndicatorComponent, sub_24F004F34, sub_24F004F34);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46556C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecordingRowLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for RecordingRowLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F2444D0, type metadata accessor for RecordingRowLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for RecordingRowLockupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F46F8C0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F465798(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayerLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for PlayerLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47D218(a1, boxed_opaque_existential_1);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F46FB8C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F4659B0(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayTogetherTile();

  sub_24F928EA8();
  v13 = &type metadata for PlayTogetherTileComponent;
  v14 = sub_24F47D2E0();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for PlayTogetherTileComponent, sub_24F47D2E0, sub_24F47D2E0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F465B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayTogetherActivityTile(0);

  sub_24F928EA8();
  v20 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for PlayTogetherActivityTileComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F46FE44(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F465D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GSKDivider(0);

  sub_24F928EA8();
  v20 = type metadata accessor for GSKDividerComponent(0);
  v21 = sub_24F47DF2C(&qword_27F238C08, type metadata accessor for GSKDividerComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GSKDividerComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F470110(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F465F74(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GSKParagraph();

  sub_24F928EA8();
  v13 = &type metadata for GSKParagraphComponent;
  v14 = sub_24F47D334();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GSKParagraphComponent, sub_24F47D334, sub_24F47D334);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4660E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverviewTile(0);

  sub_24F928EA8();
  v20 = type metadata accessor for OverviewTileComponent(0);
  v21 = sub_24F47DF2C(&qword_27F244508, type metadata accessor for OverviewTileComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for OverviewTileComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4703DC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46630C(__int128 *a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for OverlayHomeButtonReservedNotice(0);

  sub_24F928EA8();
  v22 = &type metadata for OverlayHomeButtonReservedNoticeComponent;
  v23 = sub_24E9CC0A8();
  v8 = swift_allocObject();
  *&v21 = v8;
  v9 = a1[1];
  v25 = *a1;
  v26 = *(a1 + 16);
  v24 = *(a1 + 4);
  v10 = v24;
  *(v8 + 16) = v25;
  *(v8 + 32) = v9;
  *(v8 + 48) = v10;
  sub_24E612C80(&v21, v19);
  sub_24E60169C(&v25, v27, &qword_27F224448);

  sub_24E60169C(&v24, v27, &qword_27F244510);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v18 = a2;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v15 + 16))(v14, v12);
  v16 = *(v14 + 1);
  v27[0] = *v14;
  v27[1] = v16;
  v28 = *(v14 + 4);
  sub_24F4706A8(v27, v7, a1, &v18);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F466568(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayUnavailableNowPlayingFeatures();

  sub_24F928EA8();
  v13 = &type metadata for OverlayUnavailableNowPlayingFeaturesComponent;
  v14 = sub_24ED9CCBC();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for OverlayUnavailableNowPlayingFeaturesComponent, sub_24ED9CCBC, sub_24ED9CCBC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4666D4(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayPlatterLockup(0);

  sub_24F928EA8();
  v24 = &type metadata for OverlayPlatterLockupComponent;
  v25 = sub_24E69EB34();
  *&v22 = a1;
  a2 &= 1u;
  BYTE8(v22) = a2;
  v23 = a4;
  sub_24E612C80(&v22, v20);
  sub_24E62AB1C(a1, a2);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v19 = a3;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  sub_24F470978(*v15, *(v15 + 8), v11, a1, &v19, v15[2]);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24F4668E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCardLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for OverlayCardLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCardLockupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F470C14(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F466B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCapsuleLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCapsuleLockupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F470EE0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F466D3C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OptionSetting(0);

  sub_24F928EA8();
  v13 = &type metadata for OptionSettingComponent;
  v14 = sub_24E8BB204();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for OptionSettingComponent, sub_24E8BB204, sub_24E8BB204);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F466EA8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotImplemented();

  sub_24F928EA8();
  v13 = &type metadata for NotImplementedComponent;
  v14 = sub_24F47D3D4();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for NotImplementedComponent, sub_24F47D3D4, sub_24F47D3D4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467014(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiplayerInviteLockup();

  sub_24F928EA8();
  v13 = &type metadata for MultiplayerInviteLockupComponent;
  v14 = sub_24F4424F8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for MultiplayerInviteLockupComponent, sub_24F4424F8, sub_24F4424F8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467180(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LinkPlatter(0);

  sub_24F928EA8();
  v13 = &type metadata for LinkPlatterComponent;
  v14 = sub_24F47D428();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LinkPlatterComponent, sub_24F47D428, sub_24F47D428);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4672EC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardTimer();

  sub_24F928EA8();
  v13 = &type metadata for LeaderboardTimerComponent;
  v14 = sub_24E768848();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardTimerComponent, sub_24E768848, sub_24E768848);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467458(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardsCountHeaderItem(0);

  sub_24F928EA8();
  v13 = &type metadata for LeaderboardsCountHeaderItemComponent;
  v14 = sub_24F47D47C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardsCountHeaderItemComponent, sub_24F47D47C, sub_24F47D47C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4675C4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardSetCard();

  sub_24F928EA8();
  v23 = &type metadata for LeaderboardSetCardComponent;
  v24 = sub_24F47D4D0();
  v14 = swift_allocObject();
  *&v22 = v14;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  sub_24E612C80(&v22, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = a1;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  sub_24F4711AC(v13, isUniquelyReferenced_nonNull_native, &v19, *v16, v16[1], v16[2], v16[3]);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24F46774C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardEntryTableRow(0);

  sub_24F928EA8();
  v20 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRowComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4713CC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F467978(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardEntryTable();

  sub_24F928EA8();
  v22 = &type metadata for LeaderboardEntryTableComponent;
  v23 = sub_24F32F220();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for LeaderboardEntryTableComponent, sub_24F32F220, sub_24F32F220);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F467BA0(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardActionButton();

  sub_24F928EA8();
  v13 = &type metadata for LeaderboardActionButtonComponent;
  v14 = sub_24E7E48B8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardActionButtonComponent, sub_24E7E48B8, sub_24E7E48B8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467D0C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardChallengeSuggestionLockup();

  sub_24F928EA8();
  v13 = &type metadata for LeaderboardChallengeSuggestionLockupComponent;
  v14 = sub_24F3D295C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardChallengeSuggestionLockupComponent, sub_24F3D295C, sub_24F3D295C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467E78(_OWORD *a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardCard();

  sub_24F928EA8();
  v18 = &type metadata for LeaderboardCardComponent;
  v19 = sub_24F47D544();
  v8 = swift_allocObject();
  *&v17 = v8;
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  sub_24E612C80(&v17, v15);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v14 = a2;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v11 = v10[1];
  v20[0] = *v10;
  v20[1] = v11;
  v20[2] = v10[2];
  sub_24F471930(v20, v7, a1, &v14);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v14;
}

uint64_t sub_24F467FF8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LargePlayerLockup();

  sub_24F928EA8();
  v13 = &type metadata for LargePlayerLockupComponent;
  v14 = sub_24F47D5A8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LargePlayerLockupComponent, sub_24F47D5A8, sub_24F47D5A8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F468164(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsUpsellComponent();

  sub_24F928EA8();
  v13 = &type metadata for InviteFriendsUpsellComponentView;
  v14 = sub_24EA3E4CC();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for InviteFriendsUpsellComponentView, sub_24EA3E4CC, sub_24EA3E4CC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4682D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsRow(0);

  sub_24F928EA8();
  v20 = type metadata accessor for InviteFriendsRowComponent(0);
  v21 = sub_24F47DF2C(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for InviteFriendsRowComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F471B48(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F4684FC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsCardComponent(0);

  sub_24F928EA8();
  v22 = &type metadata for InviteFriendsCardComponentView;
  v23 = sub_24EE50BFC();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for InviteFriendsCardComponentView, sub_24EE50BFC, sub_24EE50BFC);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F468724(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IncomingFriendRequest();

  sub_24F928EA8();
  v22 = &type metadata for IncomingFriendRequestComponent;
  v23 = sub_24E72D014();
  v8 = swift_allocObject();
  *&v21 = v8;
  v25 = *(a1 + 8);
  v26 = *(a1 + 16);
  v24 = *(a1 + 24);
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  sub_24E612C80(&v21, v19);
  sub_24E60169C(&v25, v27, &qword_27F218208);
  sub_24E60169C(&v24, v27, &qword_27F21A6F0);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v18 = a2;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = *(v13 + 1);
  v27[0] = *v13;
  v27[1] = v15;
  v28 = *(v13 + 4);
  sub_24F471E14(v27, v7, a1, &v18);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F468980(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupedTableRow(0);

  sub_24F928EA8();
  v20 = type metadata accessor for GroupedTableRowComponent(0);
  v21 = sub_24F47DF2C(&qword_27F244548, type metadata accessor for GroupedTableRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GroupedTableRowComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4720E4(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F468BAC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupedTable();

  sub_24F928EA8();
  v13 = &type metadata for GroupedTableComponent;
  v14 = sub_24F47D640();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GroupedTableComponent, sub_24F47D640, sub_24F47D640);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F468D18(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComponentGrid();

  sub_24F928EA8();
  v13 = &type metadata for ComponentGridComponent;
  v14 = sub_24F47D694();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ComponentGridComponent, sub_24F47D694, sub_24F47D694);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F468E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for GameLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F216AC0, type metadata accessor for GameLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GameLockupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4723B0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F4690B0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameLibraryMenuLockup(0);

  sub_24F928EA8();
  v22 = &type metadata for GameLibraryMenuLockupComponent;
  v23 = sub_24F47D6E8();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for GameLibraryMenuLockupComponent, sub_24F47D6E8, sub_24F47D6E8);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F4692D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameInstallLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for GameInstallLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GameInstallLockupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F47267C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F469504(char a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameHeroDetails(0);

  sub_24F928EA8();
  v16 = &type metadata for GameHeroDetailsComponent;
  v17 = sub_24E88EBE0();
  LOBYTE(v15) = a1 & 1;
  sub_24E612C80(&v15, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  sub_24F472948(*v9, v7, isUniquelyReferenced_nonNull_native, &v12);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v12;
}

uint64_t sub_24F469654(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsSummary();

  sub_24F928EA8();
  v18 = &type metadata for GameDetailsSummaryComponent;
  v19 = sub_24E630740();
  *&v17 = a1;
  BYTE8(v17) = a2 & 1;
  sub_24E612C80(&v17, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  sub_24F472B30(*v11, *(v11 + 8), v9, isUniquelyReferenced_nonNull_native, &v14);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v14;
}

uint64_t sub_24F4697BC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GameDetailsSummaryCard();

  sub_24F928EA8();
  v27 = &type metadata for GameDetailsSummaryCardComponent;
  v28 = sub_24EAC8268();
  v14 = swift_allocObject();
  *&v26 = v14;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2 & 1;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4 & 1;
  sub_24E612C80(&v26, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = a5;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v17 = *v16;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v22 = *(v16 + 8);
  v21[8] = v19;
  sub_24F472D40(v17, v22, v18, v19, v13, isUniquelyReferenced_nonNull_native, &v23);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v23;
}

uint64_t sub_24F46996C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsRibbon();

  sub_24F928EA8();
  v13 = &type metadata for GameDetailsRibbonComponent;
  v14 = sub_24E62BAC0();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsRibbonComponent, sub_24E62BAC0, sub_24E62BAC0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F469AD8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsRatings();

  sub_24F928EA8();
  v13 = &type metadata for GameDetailsRatingsComponent;
  v14 = sub_24E61D264();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsRatingsComponent, sub_24E61D264, sub_24E61D264);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F469C44(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsRatingsAndReviews(0);

  sub_24F928EA8();
  v13 = &type metadata for GameDetailsRatingsAndReviewsComponent;
  v14 = sub_24E62D408();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsRatingsAndReviewsComponent, sub_24E62D408, sub_24E62D408);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F469DB0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsMediaPreview();

  sub_24F928EA8();
  v23 = &type metadata for GameDetailsMediaPreviewComponent;
  v24 = sub_24E62A190();
  *&v22 = a1;
  WORD4(v22) = a2 & 0x101;
  sub_24E612C80(&v22, v20);
  sub_24E62AB1C(a1, a2 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  if (v14[9])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_24F472F74(*v14, v16 | v14[8], v9, isUniquelyReferenced_nonNull_native, &v19);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24F469FC8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsMediaPreviewCard(0);

  sub_24F928EA8();
  v22 = &type metadata for GameDetailsMediaPreviewCardComponent;
  v23 = sub_24EAC5904();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for GameDetailsMediaPreviewCardComponent, sub_24EAC5904, sub_24EAC5904);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46A1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsHeader(0);

  sub_24F928EA8();
  v20 = type metadata accessor for GameDetailsHeaderComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GameDetailsHeaderComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F473218(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46A41C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsDeveloper();

  sub_24F928EA8();
  v13 = &type metadata for GameDetailsDeveloperComponent;
  v14 = sub_24F156B98();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsDeveloperComponent, sub_24F156B98, sub_24F156B98);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46A588(char a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(__n128))
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  v17 = sub_24F928EA8();
  v25 = a4;
  v26 = a5(v17);
  LOBYTE(v24) = a1;
  sub_24E612C80(&v24, v22);
  LOBYTE(a5) = swift_isUniquelyReferenced_nonNull_native();
  v21 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  sub_24F4734E4(*v18, v16, a5, &v21, a4, a6, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v21;
}

uint64_t sub_24F46A700(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsAnnotationCard(0);

  sub_24F928EA8();
  v22 = &type metadata for GameDetailsAnnotationCardComponent;
  v23 = sub_24EA576D8();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for GameDetailsAnnotationCardComponent, sub_24EA576D8, sub_24EA576D8);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46A928(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestsPrivacyToggle();

  sub_24F928EA8();
  v13 = &type metadata for FriendRequestsPrivacyToggleComponent;
  v14 = sub_24E65BD28();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendRequestsPrivacyToggleComponent, sub_24E65BD28, sub_24E65BD28);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46AA94(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestOverlayLockup();

  sub_24F928EA8();
  v18 = &type metadata for FriendRequestOverlayLockupComponent;
  v19 = sub_24E9373D0();
  *&v17 = a2;
  *(&v17 + 1) = a3;
  sub_24E612C80(&v17, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = a1;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  sub_24F4736D8(v9, isUniquelyReferenced_nonNull_native, &v14, *v11, v11[1]);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v14;
}

uint64_t sub_24F46ABEC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestOverlayHeader();

  sub_24F928EA8();
  v13 = &type metadata for FriendRequestOverlayHeaderComponent;
  v14 = sub_24EF7CA54();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendRequestOverlayHeaderComponent, sub_24EF7CA54, sub_24EF7CA54);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46AD58(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestOverlayComponentGrid();

  sub_24F928EA8();
  v13 = &type metadata for FriendRequestOverlayComponentGridComponent;
  v14 = sub_24EDBC720();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendRequestOverlayComponentGridComponent, sub_24EDBC720, sub_24EDBC720);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46AEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestLockup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for FriendRequestLockupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for FriendRequestLockupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4738C8(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46B0F0(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendSuggestionLockup();

  sub_24F928EA8();
  v13 = &type metadata for FriendSuggestionLockupComponent;
  v14 = sub_24F47D73C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendSuggestionLockupComponent, sub_24F47D73C, sub_24F47D73C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B25C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendsPlayingHeaderItem();

  sub_24F928EA8();
  v13 = &type metadata for FriendsPlayingHeaderItemComponent;
  v14 = sub_24F47D790();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendsPlayingHeaderItemComponent, sub_24F47D790, sub_24F47D790);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B3C8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendInviteButton();

  sub_24F928EA8();
  v13 = &type metadata for FriendInviteButtonComponent;
  v14 = sub_24F47D7E4();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendInviteButtonComponent, sub_24F47D7E4, sub_24F47D7E4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B534(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DashboardHero();

  sub_24F928EA8();
  v13 = &type metadata for DashboardHeroComponent;
  v14 = sub_24F47D838();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for DashboardHeroComponent, sub_24F47D838, sub_24F47D838);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B6A0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EmptyState();

  sub_24F928EA8();
  v22 = &type metadata for EmptyStateComponent;
  v23 = sub_24E78AE10();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for EmptyStateComponent, sub_24E78AE10, sub_24E78AE10);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46B8C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContinuePlayingIcon(0);

  sub_24F928EA8();
  v26 = &type metadata for ContinuePlayingIconComponent;
  v27 = sub_24F4637F4();
  v14 = swift_allocObject();
  *&v25 = v14;
  *(v14 + 16) = a4;
  *(v14 + 24) = a1;
  *(v14 + 32) = a5;
  *(v14 + 40) = a2;
  sub_24E612C80(&v25, v23);

  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v22 = a3;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  sub_24F473B94(*(v18 + 1), *(v18 + 3), v13, a1, &v22, *v18, *(v18 + 2));
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v22;
}

uint64_t sub_24F46BAFC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactLockup();

  sub_24F928EA8();
  v13 = &type metadata for ContactLockupComponent;
  v14 = sub_24ECEF8AC();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ContactLockupComponent, sub_24ECEF8AC, sub_24ECEF8AC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46BC68(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComingSoonPlatter();

  sub_24F928EA8();
  v13 = &type metadata for ComingSoonPlatterComponent;
  v14 = sub_24F4204A4();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ComingSoonPlatterComponent, sub_24F4204A4, sub_24F4204A4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46BDD4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClampingComponentGrid();

  sub_24F928EA8();
  v13 = &type metadata for ClampingComponentGridComponent;
  v14 = sub_24F47D88C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ClampingComponentGridComponent, sub_24F47D88C, sub_24F47D88C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46BF40(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesLeaderboardSuggestionLockup();

  sub_24F928EA8();
  v13 = &type metadata for ChallengesLeaderboardSuggestionLockupComponent;
  v14 = sub_24F47D8E0();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesLeaderboardSuggestionLockupComponent, sub_24F47D8E0, sub_24F47D8E0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C0AC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryPlayerLockup();

  sub_24F928EA8();
  v13 = &type metadata for ChallengesHistoryPlayerLockupComponent;
  v14 = sub_24F47D934();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHistoryPlayerLockupComponent, sub_24F47D934, sub_24F47D934);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C218(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryHero(0);

  sub_24F928EA8();
  v13 = &type metadata for ChallengesHistoryHeroComponent;
  v14 = sub_24F47D988();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHistoryHeroComponent, sub_24F47D988, sub_24F47D988);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C384(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryGameLockup();

  sub_24F928EA8();
  v13 = &type metadata for ChallengesHistoryGameLockupComponent;
  v14 = sub_24F47D9DC();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHistoryGameLockupComponent, sub_24F47D9DC, sub_24F47D9DC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C4F0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryChallengeLockup();

  sub_24F928EA8();
  v21 = &type metadata for ChallengesHistoryChallengeLockupComponent;
  v22 = sub_24F47DA30();
  *&v20 = a1;
  *(&v20 + 1) = a3;
  sub_24E612C80(&v20, v18);

  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  sub_24F473E50(*v13, v9, a1, &v17, v13[1]);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v17;
}

uint64_t sub_24F46C6E4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeInviteLockup();

  sub_24F928EA8();
  v13 = &type metadata for ChallengeInviteLockupComponent;
  v14 = sub_24F47DA84();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeInviteLockupComponent, sub_24F47DA84, sub_24F47DA84);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C850(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHubHeaderButton();

  sub_24F928EA8();
  v13 = &type metadata for ChallengesHubHeaderButtonComponent;
  v14 = sub_24F47DAD8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHubHeaderButtonComponent, sub_24F47DAD8, sub_24F47DAD8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C9BC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesGameSuggestionLockup();

  sub_24F928EA8();
  v13 = &type metadata for ChallengesGameSuggestionLockupComponent;
  v14 = sub_24E6DA0E0();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesGameSuggestionLockupComponent, sub_24E6DA0E0, sub_24E6DA0E0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46CB28(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesFriendComparisonHeader();

  sub_24F928EA8();
  v13 = &type metadata for ChallengesFriendComparisonHeaderComponent;
  v14 = sub_24F47DB2C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesFriendComparisonHeaderComponent, sub_24F47DB2C, sub_24F47DB2C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46CC94(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesFriendComparisonChart();

  sub_24F928EA8();
  v22 = &type metadata for ChallengesFriendComparisonChartComponent;
  v23 = sub_24F47DB80();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_24E612C80(&v21, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for ChallengesFriendComparisonChartComponent, sub_24F47DB80, sub_24F47DB80);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46CEBC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailPlayerLockup();

  sub_24F928EA8();
  v24 = &type metadata for ChallengeDetailPlayerLockupComponent;
  v25 = sub_24F47DBD4();
  v8 = swift_allocObject();
  *&v23 = v8;
  v28 = *a1;
  v29 = *(a1 + 8);
  v10 = *(a1 + 2);
  v26[0] = *(a1 + 1);
  v9 = v26[0];
  v26[1] = v10;
  v27 = *(a1 + 48);
  v11 = v27;
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = v10;
  *(v8 + 64) = v11;
  sub_24E612C80(&v23, v21);
  sub_24E60169C(&v28, v30, &qword_27F218208);
  sub_24E60169C(v26, v30, &qword_27F2445E0);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v20 = a2;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = *(v15 + 1);
  v30[0] = *v15;
  v30[1] = v17;
  v30[2] = *(v15 + 2);
  v31 = v15[48];
  sub_24F4740DC(v30, v7, a1, &v20);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

uint64_t sub_24F46D13C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup();

  sub_24F928EA8();
  v13 = &type metadata for ChallengeDetailHiddenInvitedPlayerLockupComponent;
  v14 = sub_24E9CE000();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeDetailHiddenInvitedPlayerLockupComponent, sub_24E9CE000, sub_24E9CE000);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D2A8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailHero(0);

  sub_24F928EA8();
  v13 = &type metadata for ChallengeDetailHeroComponent;
  v14 = sub_24F47DC74();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeDetailHeroComponent, sub_24F47DC74, sub_24F47DC74);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D414(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailDescription(0);

  sub_24F928EA8();
  v13 = &type metadata for ChallengeDetailDescriptionComponent;
  v14 = sub_24F47DCC8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeDetailDescriptionComponent, sub_24F47DCC8, sub_24F47DCC8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D580(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CenteredCapsuleButton();

  sub_24F928EA8();
  v13 = &type metadata for CenteredCapsuleButtonComponent;
  v14 = sub_24EAD8D5C();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for CenteredCapsuleButtonComponent, sub_24EAD8D5C, sub_24EAD8D5C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D6EC(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  sub_24F928EA8();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v30 = sub_24E602068(a6, a4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_24E60169C(a1, boxed_opaque_existential_1, a4);
  sub_24E612C80(&v28, v26);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v25 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  sub_24F474398(v21, v16, a1, &v25, a4, a5, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v25;
}

uint64_t sub_24F46D930(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(__n128))
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  v17 = sub_24F928EA8();
  v29 = a4;
  v30 = a5(v17);
  *&v28 = a1;
  sub_24E612C80(&v28, v26);

  LOBYTE(a5) = swift_isUniquelyReferenced_nonNull_native();
  v25 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  sub_24F474668(*v21, v16, a5, &v25, a4, a6, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v25;
}

uint64_t sub_24F46DB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ButtonGroup(0);

  sub_24F928EA8();
  v20 = type metadata accessor for ButtonGroupComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4748F0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46DD68(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolSetting();

  sub_24F928EA8();
  v26 = &type metadata for BoolSettingComponent;
  v27 = sub_24E8928D8();
  v14 = swift_allocObject();
  *&v25 = v14;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  sub_24E612C80(&v25, v23);

  LOBYTE(a2) = swift_isUniquelyReferenced_nonNull_native();
  v22 = a5;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  sub_24F474BBC(*v18, *(v18 + 1), v18[16], *(v18 + 3), v13, a2, &v22);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v22;
}

uint64_t sub_24F46DF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeUpsellCard();

  sub_24F928EA8();
  v20 = type metadata accessor for ArcadeUpsellCardComponent();
  v21 = sub_24F47DF2C(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for ArcadeUpsellCardComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F474E70(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46E1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventDetail(0);

  sub_24F928EA8();
  v20 = type metadata accessor for AppEventDetailComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21F078, type metadata accessor for AppEventDetailComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for AppEventDetailComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F47513C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46E3F4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityFeedLockup();

  sub_24F928EA8();
  v13 = &type metadata for ActivityFeedLockupComponent;
  v14 = sub_24E67EDC0();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ActivityFeedLockupComponent, sub_24E67EDC0, sub_24E67EDC0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E560(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionButtonRow();

  sub_24F928EA8();
  v13 = &type metadata for ActionButtonRowComponent;
  v14 = sub_24E764C68();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ActionButtonRowComponent, sub_24E764C68, sub_24E764C68);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E6CC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementDetailsHeader();

  sub_24F928EA8();
  v13 = &type metadata for AchievementDetailsHeaderComponent;
  v14 = sub_24EC5F4E8();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AchievementDetailsHeaderComponent, sub_24EC5F4E8, sub_24EC5F4E8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E838(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementDetailsGlobalPlayer();

  sub_24F928EA8();
  v13 = &type metadata for AchievementDetailsGlobalPlayerComponent;
  v14 = sub_24F47DDB4();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AchievementDetailsGlobalPlayerComponent, sub_24F47DDB4, sub_24F47DDB4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E9A4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementsCountHeaderItem(0);

  sub_24F928EA8();
  v13 = &type metadata for AchievementsCountHeaderItemComponent;
  v14 = sub_24F47DE08();
  sub_24E612C80(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AchievementsCountHeaderItemComponent, sub_24F47DE08, sub_24F47DE08);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46EB10(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(__n128))
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  v17 = sub_24F928EA8();
  v28 = a4;
  v29 = a5(v17);
  v18 = swift_allocObject();
  *&v27 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  sub_24E612C80(&v27, v25);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v24 = a2;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v21 = *(v20 + 16);
  v30[0] = *v20;
  v30[1] = v21;
  v30[2] = *(v20 + 32);
  v31 = *(v20 + 48);
  sub_24F475408(v30, v16, a1, &v24, a4, a6, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v24;
}

uint64_t sub_24F46ECCC(uint64_t a1, double a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementCard(0);

  sub_24F928EA8();
  v16 = &type metadata for AchievementCardComponent;
  v17 = sub_24F02E870();
  *&v15 = a2;
  sub_24E612C80(&v15, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  sub_24F475640(v7, isUniquelyReferenced_nonNull_native, &v12, *v9);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v12;
}

uint64_t sub_24F46EE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointHighlight(0);

  sub_24F928EA8();
  v20 = type metadata accessor for AccessPointHighlightComponent(0);
  v21 = sub_24F47DF2C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlightComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F47582C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46F04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfileHero(0);

  sub_24F928EA8();
  v20 = type metadata accessor for ProfileHeroComponent(0);
  v21 = sub_24F47DF2C(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for ProfileHeroComponent);
  sub_24E612C80(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F475AF8(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfileEditor();

  sub_24F928EA8();
  v25 = &type metadata for ProfileEditorComponent;
  v12 = sub_24F362168();
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v26 = v12;
  v24 = a3;
  sub_24E612C80(&v23, v21);

  LOBYTE(a2) = swift_isUniquelyReferenced_nonNull_native();
  v20 = a4;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  sub_24F475DC4(*v16, v16[1], v16[2], v11, a2, &v20);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

unint64_t sub_24F46F480(uint64_t a1)
{
  sub_24F928E98();
  sub_24F47DF2C(&qword_27F2444B0, MEMORY[0x277D21D58]);
  v2 = sub_24F92AEE8();

  return sub_24F46F518(a1, v2);
}

unint64_t sub_24F46F518(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_24F47DF2C(&qword_27F2444B8, MEMORY[0x277D21D58]);
      v16 = sub_24F92AFF8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_24F46F6D8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t (*a6)(void))
{
  v29 = a6;
  v11 = sub_24F928E98();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v32 = a5(v13);
  v16 = *a3;
  v18 = sub_24F46F480(a1);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a2 & 1) != 0)
  {
LABEL_7:
    v24 = *a3;
    if (v22)
    {
LABEL_8:
      v25 = v24[7] + 40 * v18;
      __swift_destroy_boxed_opaque_existential_1(v25);
      return sub_24E612C80(&v30, v25);
    }

    goto LABEL_11;
  }

  if (v23 >= v21 && (a2 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v21, a2 & 1);
  v27 = sub_24F46F480(a1);
  if ((v22 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v18 = v27;
  v24 = *a3;
  if (v22)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v12 + 16))(v15, a1, v11);
  __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  sub_24F478460(v18, v15, v24, a4, v29);
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_24F46F8C0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecordingRowLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F2444D0, type metadata accessor for RecordingRowLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for RecordingRowLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47604C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F46FB8C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PlayerLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47D27C(a1, boxed_opaque_existential_1);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47617C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F46FE44(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for PlayTogetherActivityTileComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476298(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F470110(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GSKDividerComponent(0);
  v34 = sub_24F47DF2C(&qword_27F238C08, type metadata accessor for GSKDividerComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GSKDividerComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F4763C8(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4703DC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverviewTileComponent(0);
  v34 = sub_24F47DF2C(&qword_27F244508, type metadata accessor for OverviewTileComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for OverviewTileComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F4764F8(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4706A8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for OverlayHomeButtonReservedNoticeComponent;
  v36 = sub_24E9CC0A8();
  v12 = swift_allocObject();
  *&v34 = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  v32 = *(v30 + 1);
  v37[0] = *v30;
  v37[1] = v32;
  v38 = *(v30 + 4);
  sub_24F476DFC(v16, v11, v37, v22, &type metadata for OverlayHomeButtonReservedNoticeComponent, sub_24E9CC0A8);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F470978(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, double a6)
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &type metadata for OverlayPlatterLockupComponent;
  v38 = sub_24E69EB34();
  *&v35 = a1;
  BYTE8(v35) = a2 & 1;
  v36 = a6;
  v16 = *a5;
  v18 = sub_24F46F480(a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    v22 = v17;
    v23 = v16[3];
    if (v23 >= v21 && (a4 & 1) != 0)
    {
LABEL_7:
      v24 = *a5;
      if (v22)
      {
LABEL_8:
        v25 = v24[7] + 40 * v18;
        __swift_destroy_boxed_opaque_existential_1(v25);
        return sub_24E612C80(&v35, v25);
      }

      goto LABEL_11;
    }

    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v21, a4 & 1);
    v27 = sub_24F46F480(a3);
    if ((v22 & 1) == (v28 & 1))
    {
      v18 = v27;
      v24 = *a5;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v13 + 16))(v15, a3, v12);
      v29 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v37);
      v30 = MEMORY[0x28223BE20](v29);
      v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v33 + 16))(v32, v30);
      sub_24F476628(v18, v15, *v32, *(v32 + 8), v24, v32[2]);
      return __swift_destroy_boxed_opaque_existential_1(&v35);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F470C14(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverlayCardLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCardLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476728(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F470EE0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCapsuleLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476858(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4711AC(uint64_t a1, char a2, void *a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for LeaderboardSetCardComponent;
  v36 = sub_24F47D4D0();
  v18 = swift_allocObject();
  *&v34 = v18;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = *a3;
  v21 = sub_24F46F480(a1);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = v19[3];
    if (v26 >= v24 && (a2 & 1) != 0)
    {
LABEL_7:
      v27 = *a3;
      if (v25)
      {
LABEL_8:
        v28 = v27[7] + 40 * v21;
        __swift_destroy_boxed_opaque_existential_1(v28);
        return sub_24E612C80(&v34, v28);
      }

      goto LABEL_11;
    }

    if (v26 >= v24 && (a2 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v24, a2 & 1);
    v30 = sub_24F46F480(a1);
    if ((v25 & 1) == (v31 & 1))
    {
      v21 = v30;
      v27 = *a3;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v15 + 16))(v17, a1, v14);
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
      sub_24F476988(v21, v17, v27, *v32, v32[1], v32[2], v32[3]);
      return __swift_destroy_boxed_opaque_existential_1(&v34);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4713CC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRowComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476A9C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F471698(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t (*a7)(__n128), uint64_t (*a8)(void))
{
  v38 = a8;
  v15 = sub_24F928E98();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a6;
  v41 = a7(v17);
  *&v39 = a1;
  BYTE8(v39) = a2 & 1;
  v20 = *a5;
  v22 = sub_24F46F480(a3);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v21;
  v27 = v20[3];
  if (v27 >= v25 && (a4 & 1) != 0)
  {
LABEL_7:
    v28 = *a5;
    if (v26)
    {
LABEL_8:
      v29 = v28[7] + 40 * v22;
      __swift_destroy_boxed_opaque_existential_1(v29);
      return sub_24E612C80(&v39, v29);
    }

    goto LABEL_11;
  }

  if (v27 >= v25 && (a4 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v25, a4 & 1);
  v31 = sub_24F46F480(a3);
  if ((v26 & 1) != (v32 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v22 = v31;
  v28 = *a5;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v16 + 16))(v19, a3, v15);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  sub_24F477BB4(v22, v19, *v36, v36[8], v28, a6, v38);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

uint64_t sub_24F471930(_OWORD *a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &type metadata for LeaderboardCardComponent;
  v32 = sub_24F47D544();
  v12 = swift_allocObject();
  *&v30 = v12;
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v30, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  v28 = v27[1];
  v33[0] = *v27;
  v33[1] = v28;
  v33[2] = v27[2];
  sub_24F476BCC(v16, v11, v33, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_24F471B48(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for InviteFriendsRowComponent(0);
  v34 = sub_24F47DF2C(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for InviteFriendsRowComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476CCC(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F471E14(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for IncomingFriendRequestComponent;
  v36 = sub_24E72D014();
  v12 = swift_allocObject();
  *&v34 = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  v32 = *(v30 + 1);
  v37[0] = *v30;
  v37[1] = v32;
  v38 = *(v30 + 4);
  sub_24F476DFC(v16, v11, v37, v22, &type metadata for IncomingFriendRequestComponent, sub_24E72D014);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F4720E4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GroupedTableRowComponent(0);
  v34 = sub_24F47DF2C(&qword_27F244548, type metadata accessor for GroupedTableRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GroupedTableRowComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476F00(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4723B0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GameLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F216AC0, type metadata accessor for GameLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GameLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F477030(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F47267C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GameInstallLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GameInstallLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F477160(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F472948(char a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for GameHeroDetailsComponent;
  v29 = sub_24E88EBE0();
  LOBYTE(v27) = a1 & 1;
  v12 = *a4;
  v14 = sub_24F46F480(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7] + 40 * v14;
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_24E612C80(&v27, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v17, a3 & 1);
  v23 = sub_24F46F480(a2);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
  sub_24F477290(v14, v11, *v25, v20);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

uint64_t sub_24F472B30(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &type metadata for GameDetailsSummaryComponent;
  v31 = sub_24E630740();
  *&v29 = a1;
  BYTE8(v29) = a2 & 1;
  v14 = *a5;
  v16 = sub_24F46F480(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v29, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a4 & 1);
  v25 = sub_24F46F480(a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a3, v10);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  sub_24F477BB4(v16, v13, *v27, *(v27 + 8), v22, &type metadata for GameDetailsSummaryComponent, sub_24E630740);
  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_24F472D40(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = &type metadata for GameDetailsSummaryCardComponent;
  v40 = sub_24EAC8268();
  v18 = swift_allocObject();
  *&v38 = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2 & 1;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4 & 1;
  v19 = *a7;
  v21 = sub_24F46F480(a5);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = v20;
  v26 = v19[3];
  if (v26 >= v24 && (a6 & 1) != 0)
  {
LABEL_7:
    v27 = *a7;
    if (v25)
    {
LABEL_8:
      v28 = v27[7] + 40 * v21;
      __swift_destroy_boxed_opaque_existential_1(v28);
      return sub_24E612C80(&v38, v28);
    }

    goto LABEL_11;
  }

  if (v26 >= v24 && (a6 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v24, a6 & 1);
  v30 = sub_24F46F480(a5);
  if ((v25 & 1) != (v31 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v21 = v30;
  v27 = *a7;
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v15 + 16))(v17, a5, v14);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
  v33 = *v32;
  v34 = *(v32 + 16);
  v35 = *(v32 + 24);
  v37 = *(v32 + 8);
  v36[8] = v35;
  sub_24F477370(v21, v17, v33, v37, v34, v35, v27);
  return __swift_destroy_boxed_opaque_existential_1(&v38);
}

uint64_t sub_24F472F74(uint64_t a1, __int16 a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for GameDetailsMediaPreviewComponent;
  v36 = sub_24E62A190();
  *&v34 = a1;
  WORD4(v34) = a2 & 0x101;
  v14 = *a5;
  v16 = sub_24F46F480(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a4 & 1);
  v25 = sub_24F46F480(a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_17:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a3, v10);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  if (v30[9])
  {
    v32 = 256;
  }

  else
  {
    v32 = 0;
  }

  sub_24F477494(v16, v13, *v30, v32 | v30[8], v22);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F473218(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GameDetailsHeaderComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GameDetailsHeaderComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47758C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4734E4(char a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t (*a7)(void))
{
  v32 = a7;
  v13 = sub_24F928E98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a5;
  v35 = a6(v15);
  LOBYTE(v33) = a1;
  v18 = *a4;
  v20 = sub_24F46F480(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = v26[7] + 40 * v20;
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_24E612C80(&v33, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v23, a3 & 1);
  v29 = sub_24F46F480(a2);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v17, a2, v13);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  sub_24F4776BC(v20, v17, *v31, v26, a5, v32);
  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t sub_24F4736D8(uint64_t a1, char a2, void *a3, double a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &type metadata for FriendRequestOverlayLockupComponent;
  v31 = sub_24E9373D0();
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v14 = *a3;
  v16 = sub_24F46F480(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= v19 && (a2 & 1) != 0)
    {
LABEL_7:
      v22 = *a3;
      if (v20)
      {
LABEL_8:
        v23 = v22[7] + 40 * v16;
        __swift_destroy_boxed_opaque_existential_1(v23);
        return sub_24E612C80(&v29, v23);
      }

      goto LABEL_11;
    }

    if (v21 >= v19 && (a2 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v19, a2 & 1);
    v25 = sub_24F46F480(a1);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *a3;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a1, v10);
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
      sub_24F477794(v16, v13, v22, *v27, v27[1]);
      return __swift_destroy_boxed_opaque_existential_1(&v29);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4738C8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FriendRequestLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for FriendRequestLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47787C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F473B94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6, double a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for ContinuePlayingIconComponent;
  v40 = sub_24F4637F4();
  v18 = swift_allocObject();
  *&v38 = v18;
  *(v18 + 16) = a6;
  *(v18 + 24) = a1;
  *(v18 + 32) = a7;
  *(v18 + 40) = a2;
  v19 = *a5;
  v21 = sub_24F46F480(a3);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = v19[3];
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_7:
      v27 = *a5;
      if (v25)
      {
LABEL_8:
        v28 = v27[7] + 40 * v21;
        __swift_destroy_boxed_opaque_existential_1(v28);
        return sub_24E612C80(&v38, v28);
      }

      goto LABEL_11;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v24, a4 & 1);
    v30 = sub_24F46F480(a3);
    if ((v25 & 1) == (v31 & 1))
    {
      v21 = v30;
      v27 = *a5;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v15 + 16))(v17, a3, v14);
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
      v33 = MEMORY[0x28223BE20](v32);
      v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35, v33);
      sub_24F4779AC(v21, v17, *(v35 + 1), *(v35 + 3), v27, *v35, *(v35 + 2));
      return __swift_destroy_boxed_opaque_existential_1(&v38);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F473E50(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &type metadata for ChallengesHistoryChallengeLockupComponent;
  v35 = sub_24F47DA30();
  *&v33 = a1;
  *(&v33 + 1) = a5;
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= v19 && (a3 & 1) != 0)
    {
LABEL_7:
      v22 = *a4;
      if (v20)
      {
LABEL_8:
        v23 = v22[7] + 40 * v16;
        __swift_destroy_boxed_opaque_existential_1(v23);
        return sub_24E612C80(&v33, v23);
      }

      goto LABEL_11;
    }

    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v19, a3 & 1);
    v25 = sub_24F46F480(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a2, v10);
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
      v28 = MEMORY[0x28223BE20](v27);
      v30 = (&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v31 + 16))(v30, v28);
      sub_24F477AC8(v16, v13, *v30, v22, v30[1]);
      return __swift_destroy_boxed_opaque_existential_1(&v33);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4740DC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for ChallengeDetailPlayerLockupComponent;
  v36 = sub_24F47DBD4();
  v12 = swift_allocObject();
  *&v34 = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  v32 = *(v30 + 1);
  v37[0] = *v30;
  v37[1] = v32;
  v37[2] = *(v30 + 2);
  v38 = v30[48];
  sub_24F477CA0(v16, v11, v37, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F474398(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v37 = sub_24F928E98();
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v38 = a7;
  v41 = sub_24E602068(a7, a5);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_24E6009C8(a1, boxed_opaque_existential_1, a5);
  v18 = *a4;
  v20 = sub_24F46F480(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = v26[7] + 40 * v20;
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_24E612C80(&v39, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v23, a3 & 1);
  v29 = sub_24F46F480(a2);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v16, a2, v37);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v32);
  sub_24F477DA8(v20, v16, v34, v26, a5, a6, v38);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

uint64_t sub_24F474668(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t (*a7)(void))
{
  v36 = a7;
  v13 = sub_24F928E98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a5;
  v39 = a6(v15);
  *&v37 = a1;
  v18 = *a4;
  v20 = sub_24F46F480(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = v26[7] + 40 * v20;
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_24E612C80(&v37, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v23, a3 & 1);
  v29 = sub_24F46F480(a2);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v17, a2, v13);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v37, v38);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  sub_24F477EDC(v20, v17, *v34, v26, a5, v36);
  return __swift_destroy_boxed_opaque_existential_1(&v37);
}

uint64_t sub_24F4748F0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ButtonGroupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F477FB4(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F474BBC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for BoolSettingComponent;
  v40 = sub_24E8928D8();
  v18 = swift_allocObject();
  *&v38 = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = *a7;
  v21 = sub_24F46F480(a5);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = v20;
  v26 = v19[3];
  if (v26 >= v24 && (a6 & 1) != 0)
  {
LABEL_7:
    v27 = *a7;
    if (v25)
    {
LABEL_8:
      v28 = v27[7] + 40 * v21;
      __swift_destroy_boxed_opaque_existential_1(v28);
      return sub_24E612C80(&v38, v28);
    }

    goto LABEL_11;
  }

  if (v26 >= v24 && (a6 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v24, a6 & 1);
  v30 = sub_24F46F480(a5);
  if ((v25 & 1) != (v31 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v21 = v30;
  v27 = *a7;
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v15 + 16))(v17, a5, v14);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v33);
  sub_24F4780E4(v21, v17, *v35, *(v35 + 1), v35[16], *(v35 + 3), v27);
  return __swift_destroy_boxed_opaque_existential_1(&v38);
}

uint64_t sub_24F474E70(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ArcadeUpsellCardComponent();
  v34 = sub_24F47DF2C(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for ArcadeUpsellCardComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478200(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F47513C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AppEventDetailComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21F078, type metadata accessor for AppEventDetailComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for AppEventDetailComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478330(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F475408(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t (*a7)(void))
{
  v35 = a7;
  v13 = sub_24F928E98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6(v15);
  v18 = swift_allocObject();
  *&v36 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  v20 = *a4;
  v22 = sub_24F46F480(a2);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v21;
  v27 = v20[3];
  if (v27 >= v25 && (a3 & 1) != 0)
  {
LABEL_7:
    v28 = *a4;
    if (v26)
    {
LABEL_8:
      v29 = v28[7] + 40 * v22;
      __swift_destroy_boxed_opaque_existential_1(v29);
      return sub_24E612C80(&v36, v29);
    }

    goto LABEL_11;
  }

  if (v27 >= v25 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v25, a3 & 1);
  v31 = sub_24F46F480(a2);
  if ((v26 & 1) != (v32 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v22 = v31;
  v28 = *a4;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v17, a2, v13);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v34 = *(v33 + 16);
  v39[0] = *v33;
  v39[1] = v34;
  v39[2] = *(v33 + 32);
  v40 = *(v33 + 48);
  sub_24F478530(v22, v17, v39, v28, a5, v35);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_24F475640(uint64_t a1, char a2, void *a3, double a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for AchievementCardComponent;
  v29 = sub_24F02E870();
  *&v27 = a4;
  v12 = *a3;
  v14 = sub_24F46F480(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= v17 && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *a3;
      if (v18)
      {
LABEL_8:
        v21 = v20[7] + 40 * v14;
        __swift_destroy_boxed_opaque_existential_1(v21);
        return sub_24E612C80(&v27, v21);
      }

      goto LABEL_11;
    }

    if (v19 >= v17 && (a2 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v17, a2 & 1);
    v23 = sub_24F46F480(a1);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *a3;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      v25 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
      sub_24F478634(v14, v11, v20, *v25);
      return __swift_destroy_boxed_opaque_existential_1(&v27);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F47582C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AccessPointHighlightComponent(0);
  v34 = sub_24F47DF2C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlightComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478718(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F475AF8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ProfileHeroComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for ProfileHeroComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478848(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F475DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &type metadata for ProfileEditorComponent;
  v16 = sub_24F362168();
  *&v36 = a1;
  *(&v36 + 1) = a2;
  v39 = v16;
  v37 = a3;
  v17 = *a6;
  v19 = sub_24F46F480(a4);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a5 & 1) != 0)
  {
LABEL_7:
    v25 = *a6;
    if (v23)
    {
LABEL_8:
      v26 = v25[7] + 40 * v19;
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_24E612C80(&v36, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a5 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v22, a5 & 1);
  v28 = sub_24F46F480(a4);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a6;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a4, v12);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v38);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  sub_24F478978(v19, v15, *v33, v33[1], v33[2], v25);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_24F47604C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for RecordingRowLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F2444D0, type metadata accessor for RecordingRowLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for RecordingRowLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F47617C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for PlayerLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47D27C(a3, boxed_opaque_existential_1);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476298(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for PlayTogetherActivityTileComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4763C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GSKDividerComponent(0);
  v17 = sub_24F47DF2C(&qword_27F238C08, type metadata accessor for GSKDividerComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GSKDividerComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4764F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for OverviewTileComponent(0);
  v17 = sub_24F47DF2C(&qword_27F244508, type metadata accessor for OverviewTileComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for OverviewTileComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476628(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  v20 = &type metadata for OverlayPlatterLockupComponent;
  v21 = sub_24E69EB34();
  *&v18 = a3;
  BYTE8(v18) = a4 & 1;
  v19 = a6;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24F476728(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for OverlayCardLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for OverlayCardLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476858(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for OverlayCapsuleLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476988(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v22 = &type metadata for LeaderboardSetCardComponent;
  v23 = sub_24F47D4D0();
  v14 = swift_allocObject();
  *&v21 = v14;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a3[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a3[7] + 40 * a1);
  v18 = a3[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v20;
  }

  return result;
}

uint64_t sub_24F476A9C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRowComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476BCC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v17 = &type metadata for LeaderboardCardComponent;
  v18 = sub_24F47D544();
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = a3[1];
  v8[1] = *a3;
  v8[2] = v9;
  v8[3] = a3[2];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F476CCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for InviteFriendsRowComponent(0);
  v17 = sub_24F47DF2C(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for InviteFriendsRowComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476DFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v19 = a5;
  v20 = a6();
  v10 = swift_allocObject();
  *&v18 = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24F476F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GroupedTableRowComponent(0);
  v17 = sub_24F47DF2C(&qword_27F244548, type metadata accessor for GroupedTableRowComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GroupedTableRowComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F477030(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GameLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F216AC0, type metadata accessor for GameLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GameLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F477160(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GameInstallLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GameInstallLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F477290(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v15 = &type metadata for GameHeroDetailsComponent;
  v16 = sub_24E88EBE0();
  LOBYTE(v14) = a3 & 1;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24F928E98();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24E612C80(&v14, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24F477370(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  v22 = &type metadata for GameDetailsSummaryCardComponent;
  v23 = sub_24EAC8268();
  v14 = swift_allocObject();
  *&v21 = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4 & 1;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6 & 1;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a7[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a7[7] + 40 * a1);
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_24F477494(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  v17 = &type metadata for GameDetailsMediaPreviewComponent;
  v18 = sub_24E62A190();
  *&v16 = a3;
  WORD4(v16) = a4 & 0x101;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_24F47758C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GameDetailsHeaderComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GameDetailsHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4776BC(unint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v17 = a5;
  v18 = a6();
  LOBYTE(v16) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477794(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v17 = &type metadata for FriendRequestOverlayLockupComponent;
  v18 = sub_24E9373D0();
  *&v16 = a4;
  *(&v16 + 1) = a5;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a3[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a3[7] + 40 * a1);
  v13 = a3[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v15;
  }

  return result;
}

uint64_t sub_24F47787C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for FriendRequestLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for FriendRequestLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4779AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v22 = &type metadata for ContinuePlayingIconComponent;
  v23 = sub_24F4637F4();
  v14 = swift_allocObject();
  *&v21 = v14;
  *(v14 + 16) = a6;
  *(v14 + 24) = a3;
  *(v14 + 32) = a7;
  *(v14 + 40) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a5[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a5[7] + 40 * a1);
  v18 = a5[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v20;
  }

  return result;
}

uint64_t sub_24F477AC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v17 = &type metadata for ChallengesHistoryChallengeLockupComponent;
  v18 = sub_24F47DA30();
  *&v16 = a3;
  *(&v16 + 1) = a5;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477BB4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v19 = a6;
  v20 = a7();
  *&v18 = a3;
  BYTE8(v18) = a4 & 1;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24F477CA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = &type metadata for ChallengeDetailPlayerLockupComponent;
  v18 = sub_24F47DBD4();
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = *(a3 + 48);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477DA8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v22 = sub_24E602068(a7, a5);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  sub_24E6009C8(a3, boxed_opaque_existential_1, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a4[6];
  v15 = sub_24F928E98();
  (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  result = sub_24E612C80(&v20, a4[7] + 40 * a1);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_24F477EDC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v17 = a5;
  v18 = a6();
  *&v16 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477FB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ButtonGroupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for ButtonGroupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4780E4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  v22 = &type metadata for BoolSettingComponent;
  v23 = sub_24E8928D8();
  v14 = swift_allocObject();
  *&v21 = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a7[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a7[7] + 40 * a1);
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_24F478200(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ArcadeUpsellCardComponent();
  v17 = sub_24F47DF2C(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for ArcadeUpsellCardComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478330(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for AppEventDetailComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21F078, type metadata accessor for AppEventDetailComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for AppEventDetailComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478460(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v15 = a4;
  v16 = a5();
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_24F928E98();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24E612C80(&v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_24F478530(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v19 = a5;
  v20 = a6();
  v10 = swift_allocObject();
  *&v18 = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  *(v10 + 64) = *(a3 + 48);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24F478634(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  v15 = &type metadata for AchievementCardComponent;
  v16 = sub_24F02E870();
  *&v14 = a4;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_24F928E98();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24E612C80(&v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_24F478718(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for AccessPointHighlightComponent(0);
  v17 = sub_24F47DF2C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlightComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478848(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ProfileHeroComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for ProfileHeroComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478978(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = &type metadata for ProfileEditorComponent;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v19 = sub_24F362168();
  v17 = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a6[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a6[7] + 40 * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

void *sub_24F478A68()
{
  v1 = v0;
  v29 = sub_24F928E98();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444A8);
  v3 = *v0;
  v4 = sub_24F92CB28();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_24E615E00(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_24E612C80(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_24F478CF0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24F928E98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444A8);
  v38 = a2;
  result = sub_24F92CB38();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_24E612C80((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_24E615E00(*(v9 + 56) + 40 * v23, v43);
      }

      sub_24F47DF2C(&qword_27F2444B0, MEMORY[0x277D21D58]);
      result = sub_24F92AEE8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_24E612C80(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24F4790D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E0) + 48);
  v6 = sub_24F928E98();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_24E615E00(a1 + v4, a2 + v5);
}

void sub_24F479178(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E8);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - v3;
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v39 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v5 + 16))(v7, *(v15 + 48) + *(v5 + 72) * v24, v4, v13);
    sub_24E615E00(*(v15 + 56) + 40 * v24, v44);
    v25 = *(v41 + 48);
    v26 = v4;
    v27 = v41;
    (*(v5 + 32))(v14, v7, v26);
    sub_24E612C80(v44, &v14[v25]);
    v28 = v40;
    (*(v40 + 56))(v14, 0, 1, v27);
    v29 = v39;
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v29;
    v30 = v1[5];
    sub_24E6009C8(v14, v10, &qword_27F2444F0);
    v31 = 1;
    v32 = (*(v28 + 48))(v10, 1, v27);
    v33 = v43;
    if (v32 != 1)
    {
      v34 = v10;
      v35 = v38;
      sub_24E6009C8(v34, v38, &qword_27F2444E8);
      v30(v35);
      sub_24E601704(v35, &qword_27F2444E8);
      v31 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E0);
    (*(*(v36 - 8) + 56))(v33, v31, 1, v36);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v28 = v40;
        v27 = v41;
        (*(v40 + 56))(&v37 - v12, 1, 1, v41, v13);
        v29 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24F479558@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_24E615E00(a2, a3 + 8);
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  *a3 = v4;
}

uint64_t sub_24F4795B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = sub_24F928E98();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v42 = (v10 + 8);
  v43 = v10;

  v41 = a3;

  while (1)
  {
    sub_24F479178(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E0);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_24E6586B4();
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_24E612C80(&v15[v24], v44);
    v27 = *v52;
    v29 = sub_24F46F480(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_24F478A68();
      }
    }

    else
    {
      sub_24F478CF0(v32, a4 & 1);
      v34 = sub_24F46F480(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {
      v9 = v26;
      (*v42)(v12, v26);
      v22 = v36[7] + 40 * v29;
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_24E612C80(v44, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v43 + 72) * v29), v12, v26);
      sub_24E612C80(v44, v36[7] + 40 * v29);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F479930(uint64_t a1)
{
  v406 = a1;
  v1 = type metadata accessor for RecordingRowLockupComponent(0);
  MEMORY[0x28223BE20](v1 - 8);
  v374 = (&v334 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v335 = type metadata accessor for ProfileHeroComponent(0);
  MEMORY[0x28223BE20](v335);
  v336 = (&v334 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PlayerLockupComponent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v373 = (&v334 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v351 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  MEMORY[0x28223BE20](v351);
  v405 = (&v334 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for GSKDividerComponent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v404 = (&v334 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v349 = type metadata accessor for OverviewTileComponent(0);
  MEMORY[0x28223BE20](v349);
  v403 = (&v334 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for OverlayCardLockupComponent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v402 = (&v334 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  MEMORY[0x28223BE20](v12 - 8);
  v401 = &v334 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  MEMORY[0x28223BE20](v350);
  v400 = (&v334 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v356 = (type metadata accessor for InviteFriendsRowComponent(0) - 8);
  MEMORY[0x28223BE20](v356);
  v399 = (&v334 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for GroupedTableRowComponent(0);
  MEMORY[0x28223BE20](v16 - 8);
  v398 = &v334 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for GameLockupComponent(0) - 8;
  MEMORY[0x28223BE20](v357);
  v397 = (&v334 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = type metadata accessor for GameInstallLockupComponent(0) - 8;
  MEMORY[0x28223BE20](v358);
  v396 = (&v334 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v360 = type metadata accessor for GameDetailsHeaderComponent(0) - 8;
  MEMORY[0x28223BE20](v360);
  v395 = (&v334 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v361 = type metadata accessor for FriendRequestLockupComponent(0) - 8;
  MEMORY[0x28223BE20](v361);
  v394 = (&v334 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244408) - 8;
  MEMORY[0x28223BE20](v366);
  v393 = &v334 - v22;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244410) - 8;
  MEMORY[0x28223BE20](v365);
  v392 = &v334 - v23;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B58) - 8;
  MEMORY[0x28223BE20](v364);
  v391 = &v334 - v24;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244418) - 8;
  MEMORY[0x28223BE20](v363);
  v390 = &v334 - v25;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244420) - 8;
  MEMORY[0x28223BE20](v362);
  v389 = &v334 - v26;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244428) - 8;
  MEMORY[0x28223BE20](v359);
  v388 = &v334 - v27;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244430) - 8;
  MEMORY[0x28223BE20](v355);
  v387 = &v334 - v28;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244438) - 8;
  MEMORY[0x28223BE20](v354);
  v386 = &v334 - v29;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244440) - 8;
  MEMORY[0x28223BE20](v353);
  v385 = &v334 - v30;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244448) - 8;
  MEMORY[0x28223BE20](v352);
  v384 = &v334 - v31;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244450) - 8;
  MEMORY[0x28223BE20](v345);
  v383 = &v334 - v32;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244458) - 8;
  MEMORY[0x28223BE20](v344);
  v382 = &v334 - v33;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244460) - 8;
  MEMORY[0x28223BE20](v343);
  v381 = &v334 - v34;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244468) - 8;
  MEMORY[0x28223BE20](v342);
  v380 = &v334 - v35;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244470) - 8;
  MEMORY[0x28223BE20](v341);
  v379 = &v334 - v36;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244478) - 8;
  MEMORY[0x28223BE20](v340);
  v378 = &v334 - v37;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244480) - 8;
  MEMORY[0x28223BE20](v339);
  v377 = &v334 - v38;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244488) - 8;
  MEMORY[0x28223BE20](v338);
  v376 = &v334 - v39;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244490) - 8;
  MEMORY[0x28223BE20](v337);
  v375 = &v334 - v40;
  v372 = (type metadata accessor for ButtonGroupComponent(0) - 8);
  MEMORY[0x28223BE20](v372);
  v42 = (&v334 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for ArcadeUpsellCardComponent();
  v44 = v43 - 8;
  MEMORY[0x28223BE20](v43);
  v46 = &v334 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AppEventDetailComponent(0);
  v48 = v47 - 8;
  MEMORY[0x28223BE20](v47);
  v50 = (&v334 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for AccessPointHighlightComponent(0);
  v52 = v51 - 8;
  MEMORY[0x28223BE20](v51);
  v54 = &v334 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointHighlightComponent.GestureHandler(0);
  sub_24F47DF2C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler);
  *v54 = sub_24F923598();
  v54[8] = v55 & 1;
  v56 = *(v52 + 28);
  *&v54[v56] = swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v58 = *(v52 + 32);
  v369 = v54;
  v59 = &v54[v58];
  *&v408[0] = 0;
  BYTE8(v408[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8);
  sub_24F926F28();
  v60 = BYTE8(v426);
  v61 = v427;
  *v59 = v426;
  v59[8] = v60;
  *(v59 + 2) = v61;
  *v50 = swift_getKeyPath();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v63 = *(v48 + 28);
  *(v50 + v63) = swift_getKeyPath();
  v348 = v62;
  swift_storeEnumTagMultiPayload();
  v64 = *(v48 + 32);
  v370 = v50;
  v65 = v406;
  *(v50 + v64) = v406;
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v66 = *(v44 + 28);
  *&v46[v66] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v67 = *(v44 + 32);
  v371 = v46;
  *&v46[v67] = v65;
  LOBYTE(v408[0]) = 0;
  swift_retain_n();
  sub_24F926F28();
  v347 = v426;
  v368 = *(&v426 + 1);
  LOBYTE(v408[0]) = 0;
  sub_24F926F28();
  v346 = v426;
  v367 = *(&v426 + 1);
  *v42 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v68 = *(v372 + 7);
  *(v42 + v68) = swift_getKeyPath();
  v372 = v42;
  swift_storeEnumTagMultiPayload();
  v69 = v337;
  v70 = v375;
  *(v375 + *(v337 + 56)) = v65;
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  v71 = *(v69 + 52);
  *(v70 + v71) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v72 = v338;
  v73 = v376;
  *(v376 + *(v338 + 56)) = v65;
  *v73 = swift_getKeyPath();
  *(v73 + 8) = 0;
  v74 = *(v72 + 52);
  *(v73 + v74) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v75 = v339;
  v76 = v377;
  *(v377 + *(v339 + 56)) = v65;
  *v76 = swift_getKeyPath();
  *(v76 + 8) = 0;
  v77 = *(v75 + 52);
  *(v76 + v77) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v78 = v340;
  v79 = v378;
  *(v378 + *(v340 + 56)) = v65;
  *v79 = swift_getKeyPath();
  *(v79 + 8) = 0;
  v80 = *(v78 + 52);
  *(v79 + v80) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v81 = v341;
  v82 = v379;
  v83 = (v379 + *(v341 + 56));
  *v83 = v65;
  v83[1] = v65;

  *v82 = swift_getKeyPath();
  *(v82 + 8) = 0;
  v84 = *(v81 + 52);
  *(v82 + v84) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v85 = v342;
  v86 = v380;
  *(v380 + *(v342 + 56)) = v65;

  *v86 = swift_getKeyPath();
  *(v86 + 8) = 0;
  v87 = *(v85 + 52);
  *(v86 + v87) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v88 = v343;
  v89 = v381;
  *(v381 + *(v343 + 56)) = v65;

  *v89 = swift_getKeyPath();
  *(v89 + 8) = 0;
  v90 = *(v88 + 52);
  *(v89 + v90) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v91 = v344;
  v92 = v382;
  *(v382 + *(v344 + 56)) = v65;

  *v92 = swift_getKeyPath();
  *(v92 + 8) = 0;
  v93 = *(v91 + 52);
  *(v92 + v93) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v94 = v345;
  v95 = v383;
  *(v383 + *(v345 + 56)) = v65;

  *v95 = swift_getKeyPath();
  *(v95 + 8) = 0;
  v96 = *(v94 + 52);
  *(v95 + v96) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v97 = v352;
  v98 = v384;
  *(v384 + *(v352 + 56)) = v65;

  *v98 = swift_getKeyPath();
  *(v98 + 8) = 0;
  v99 = *(v97 + 52);
  *(v98 + v99) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v100 = v353;
  v101 = v385;
  *(v385 + *(v353 + 56)) = v65;

  *v101 = swift_getKeyPath();
  *(v101 + 8) = 0;
  v102 = *(v100 + 52);
  *(v101 + v102) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v103 = v354;
  v104 = v386;
  *(v386 + *(v354 + 56)) = v65;

  *v104 = swift_getKeyPath();
  *(v104 + 8) = 0;
  v105 = *(v103 + 52);
  *(v104 + v105) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v106 = v355;
  v107 = v387;
  *(v387 + *(v355 + 56)) = v65;

  *v107 = swift_getKeyPath();
  *(v107 + 8) = 0;
  v108 = *(v106 + 52);
  *(v107 + v108) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v109 = v359;
  v110 = v388;
  *(v388 + *(v359 + 56)) = v65;

  *v110 = swift_getKeyPath();
  *(v110 + 8) = 0;
  v111 = *(v109 + 52);
  *(v110 + v111) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v112 = v362;
  v113 = v389;
  *(v389 + *(v362 + 56)) = v65;

  *v113 = swift_getKeyPath();
  *(v113 + 8) = 0;
  v114 = *(v112 + 52);
  *(v113 + v114) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v115 = v363;
  v116 = v390;
  *(v390 + *(v363 + 56)) = v65;

  *v116 = swift_getKeyPath();
  *(v116 + 8) = 0;
  v117 = *(v115 + 52);
  *(v116 + v117) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v118 = v364;
  v119 = v391;
  *(v391 + *(v364 + 56)) = v65;

  *v119 = swift_getKeyPath();
  *(v119 + 8) = 0;
  v120 = *(v118 + 52);
  *(v119 + v120) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v121 = v365;
  v122 = v392;
  *(v392 + *(v365 + 56)) = v65;

  *v122 = swift_getKeyPath();
  *(v122 + 8) = 0;
  v123 = *(v121 + 52);
  *(v122 + v123) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v124 = v366;
  v125 = v393;
  *(v393 + *(v366 + 56)) = v65;

  *v125 = swift_getKeyPath();
  *(v125 + 8) = 0;
  v126 = *(v124 + 52);
  *(v125 + v126) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v354 = swift_getKeyPath();
  v355 = KeyPath;
  v419 = KeyPath;
  v420 = 0;
  v421 = v354;
  v422 = 0;
  v423 = 0;
  v424 = 0;
  v425 = 0;
  v364 = swift_getKeyPath();
  swift_retain_n();
  v128 = sub_24F92B098();
  CTFontCreateWithNameAndOptions(v128, 56.0, 0, 0x20000uLL);

  v363 = sub_24F925A78();
  *&v408[0] = 0;
  sub_24F926F28();
  v366 = *(&v426 + 1);
  v129 = *&v426;
  *&v408[0] = 0;
  sub_24F926F28();
  v365 = *(&v426 + 1);
  v130 = *&v426;
  v362 = swift_getKeyPath();
  v131 = swift_getKeyPath();
  v132 = v394;
  *v394 = v131;
  v133 = v132;
  swift_storeEnumTagMultiPayload();
  v134 = v361;
  v135 = *(v361 + 28);
  *(v133 + v135) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444A0);
  swift_storeEnumTagMultiPayload();
  *(v133 + *(v134 + 32)) = 0x4048000000000000;
  v361 = swift_getKeyPath();
  v136 = swift_getKeyPath();
  v137 = v395;
  *v395 = v136;
  swift_storeEnumTagMultiPayload();
  v138 = v360;
  v139 = v137 + *(v360 + 28);
  *v139 = swift_getKeyPath();
  v139[8] = 0;
  v140 = *(v138 + 32);
  *(v137 + v140) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v137 + *(v138 + 36)) = v65;
  v360 = swift_getKeyPath();
  v359 = swift_getKeyPath();
  v141 = swift_getKeyPath();
  v142 = v396;
  *v396 = v141;
  *(v142 + 8) = 0;
  v142[2] = swift_getKeyPath();
  v142[3] = 0;
  v142[4] = 0;
  v142[5] = 0;
  *(v142 + 48) = 0;
  v142[7] = swift_getKeyPath();
  *(v142 + 64) = 0;
  v143 = *(v358 + 36);
  *(v142 + v143) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v358 = swift_getKeyPath();
  v144 = v357;
  v145 = *(v357 + 28);
  v146 = swift_getKeyPath();
  v147 = v397;
  *(v397 + v145) = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v148 = *(v144 + 32);
  *(v147 + v148) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v147 = v65;
  *&v426 = 0x4038000000000000;
  sub_24E66ED98();
  swift_retain_n();
  sub_24F9237C8();
  v149 = swift_getKeyPath();
  *&v408[0] = 0;
  sub_24F926F28();
  v416[0] = 0x4030000000000000;
  v352 = v149;
  v353 = *(&v426 + 1);
  v416[1] = v149;
  v417 = 0;
  v418 = v426;
  v150 = swift_getKeyPath();
  v151 = swift_getKeyPath();
  v152 = v399;
  *v399 = v151;
  v153 = v152;
  swift_storeEnumTagMultiPayload();
  v154 = v356;
  *&v426 = 0x402E000000000000;
  v357 = v150;

  sub_24F9237C8();
  *(v153 + v154[8]) = 0x4020000000000000;
  *(v153 + v154[9]) = 0x4050000000000000;
  v155 = v154[10];
  *(v153 + v155) = sub_24F9258D8();
  v156 = v154[11];
  *(v153 + v156) = sub_24F925A18();
  v157 = swift_getKeyPath();
  v158 = qword_27F210148;
  v356 = v157;

  if (v158 != -1)
  {
    swift_once();
  }

  v159 = xmmword_27F39BA30;
  v160 = xmmword_27F39BA40;
  v430 = xmmword_27F39BA30;
  v431 = xmmword_27F39BA40;
  v161 = unk_27F39BA50;
  v432 = unk_27F39BA50;
  v162 = xmmword_27F39BA20;
  v428 = xmmword_27F39BA10;
  v429 = xmmword_27F39BA20;
  v164 = xmmword_27F39B9F0;
  v163 = *&qword_27F39BA00;
  v426 = xmmword_27F39B9F0;
  v427 = *&qword_27F39BA00;
  v165 = v400;
  v400[2] = xmmword_27F39BA10;
  v165[3] = v162;
  v165[4] = v159;
  v165[5] = v160;
  v165[6] = v161;
  *v165 = v164;
  v165[1] = v163;
  v166 = *(v350 + 20);
  *(v165 + v166) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v167 = *MEMORY[0x277CE0118];
  v168 = sub_24F924B38();
  v169 = *(v168 - 8);
  v170 = *(v169 + 104);
  v171 = v169 + 104;
  v170(v401, v167, v168);
  v341 = sub_24F924258();
  v342 = v171;
  v172 = v402;
  v173 = v402 + *(v341 + 20);
  LODWORD(v345) = v167;
  v343 = v170;
  v344 = v168;
  v170(v173, v167, v168);
  __asm { FMOV            V0.2D, #24.0 }

  *v172 = _Q0;
  v179 = swift_getKeyPath();
  v180 = swift_getKeyPath();
  v350 = v179;

  sub_24E784FF8(&v426, v408);
  if (qword_27F210088 != -1)
  {
    swift_once();
  }

  *&v413[0] = qword_27F39B3A8;
  type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel(0);

  sub_24F926F28();
  v181 = v408[0];
  v410 = v180;
  v411 = 0;
  v412 = v408[0];
  v182 = swift_getKeyPath();
  v183 = v403;
  *v403 = v182;
  swift_storeEnumTagMultiPayload();
  v184 = v183 + *(v349 + 20);
  *v184 = swift_getKeyPath();
  v184[8] = 0;
  *v404 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v185 = swift_getKeyPath();
  v186 = v405;
  *v405 = v185;
  *(v186 + 8) = 0;
  v187 = v351;
  v188 = *(v351 + 20);
  *(v186 + v188) = swift_getKeyPath();
  v340 = v57;
  swift_storeEnumTagMultiPayload();
  v189 = v187[6];
  *(v186 + v189) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v190 = v187[7];
  *(v186 + v190) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v191 = v186 + v187[8];
  *v191 = swift_getKeyPath();
  v191[8] = 0;
  v192 = v373;
  (v343)(v373 + *(v341 + 20), v345, v344);
  __asm { FMOV            V0.2D, #12.0 }

  *v192 = _Q0;
  v194 = (v192 + *(type metadata accessor for AsymmetricalInsetRoundedRectangle() + 20));
  *v194 = xmmword_24F93F520;
  v194[1] = xmmword_24F93F520;
  type metadata accessor for LocalPlayerProvider();
  v348 = *(&v181 + 1);

  v351 = v180;

  v349 = v181;

  v195 = v406;
  sub_24F928EF8();
  v196 = *&v408[0];
  if (*&v408[0])
  {
    type metadata accessor for ASKBagContract();

    sub_24F928F28();
    v197 = sub_24F361C34(v196);
    v199 = v198;
    v201 = v200;
    v202 = swift_getKeyPath();
    v204 = v335;
    v203 = v336;
    *(v336 + *(v335 + 20)) = v202;
    swift_storeEnumTagMultiPayload();
    *v203 = v196;
    v205 = v203 + *(v204 + 24);
    *v205 = swift_getKeyPath();
    v205[8] = 0;

    v206 = sub_24F46F278(v197, v199, v201, MEMORY[0x277D84F98]);

    v345 = sub_24F46F04C(v203, v206);

    sub_24F47D110(v203, type metadata accessor for ProfileHeroComponent);
  }

  else
  {
    v345 = MEMORY[0x277D84F98];
  }

  v207 = v402;
  v208 = v401;
  v209 = v400;
  v408[0] = xmmword_24F9FAF10;
  v408[1] = xmmword_24F9FAF20;
  v408[2] = xmmword_24F9FAF30;
  v409 = 0x401C000000000000;
  v413[0] = xmmword_24F9FAF10;
  v413[1] = xmmword_24F9FAF20;
  v413[2] = xmmword_24F9FAF30;
  v414 = 0x401C000000000000;
  *v374 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v344 = swift_getKeyPath();

  v210 = sub_24F46EE20(v369, MEMORY[0x277D84F98]);
  v211 = sub_24F46ECCC(v210, 1.0);

  v212 = sub_24F46EB10(v408, v211, type metadata accessor for AchievementRow, &type metadata for AchievementRowComponent, sub_24ED2382C, sub_24ED2382C);

  v213 = sub_24F46E9A4(v212);

  v214 = sub_24F46E838(v213);

  v215 = sub_24F46E6CC(v214);

  v216 = sub_24F46E560(v215);

  v217 = sub_24F46E3F4(v216);

  v218 = sub_24F46E1C8(v370, v217);

  v219 = sub_24F46DF9C(v371, v218);

  v220 = sub_24F46DD68(v347, v368, v346, v367, v219);

  v221 = sub_24F46DB3C(v372, v220);

  v222 = sub_24F46D930(v195, v221, type metadata accessor for ButtonGroupItem, &type metadata for ButtonGroupItemComponent, sub_24F47DD1C, sub_24F47DD1C);

  v223 = sub_24F46D6EC(v375, v222, type metadata accessor for AchievementsCard, &qword_27F244490, &unk_24F9FB210, &qword_27F244680);

  v224 = sub_24F46D6EC(v376, v223, type metadata accessor for ActivityCard, &qword_27F244488, &unk_24F9FB208, &qword_27F244678);

  v225 = sub_24F46D6EC(v377, v224, type metadata accessor for ActivityInviteCard, &qword_27F244480, &unk_24F9FB200, &qword_27F244670);

  v226 = sub_24F46D6EC(v378, v225, type metadata accessor for AppEventCard, &qword_27F244478, &unk_24F9FB1F8, &qword_27F244668);

  v227 = sub_24F46D6EC(v379, v226, type metadata accessor for AppEventSearchCard, &qword_27F244470, &unk_24F9FB1F0, &qword_27F244660);

  v228 = sub_24F46D6EC(v380, v227, type metadata accessor for ChallengeCard, &qword_27F244468, &unk_24F9FB1E8, &qword_27F244658);

  v229 = sub_24F46D6EC(v381, v228, type metadata accessor for ChallengeCompletedCard, &qword_27F244460, &unk_24F9FB1E0, &qword_27F244650);

  v230 = sub_24F46D6EC(v382, v229, type metadata accessor for ChallengeInviteCard, &qword_27F244458, &unk_24F9FB1D8, &qword_27F244648);

  v231 = sub_24F46D6EC(v383, v230, type metadata accessor for ChallengeSuggestionCard, &qword_27F244450, &unk_24F9FB1D0, &qword_27F244640);

  v232 = sub_24F46D6EC(v384, v231, type metadata accessor for ChartCard, &qword_27F244448, &unk_24F9FB1C8, &qword_27F244638);

  v233 = sub_24F46D6EC(v385, v232, type metadata accessor for FriendRequestCard, &qword_27F244440, &unk_24F9FB1C0, &qword_27F244630);

  v234 = sub_24F46D6EC(v386, v233, type metadata accessor for FriendSuggestionCard, &qword_27F244438, &unk_24F9FB1B8, &qword_27F244628);

  v235 = sub_24F46D6EC(v387, v234, type metadata accessor for FriendsArePlayingCard, &qword_27F244430, &unk_24F9FB1B0, &qword_27F244620);

  v236 = sub_24F46D6EC(v388, v235, type metadata accessor for InviteFriendsCard, &qword_27F244428, &unk_24F9FB1A8, &qword_27F244618);

  v237 = sub_24F46D6EC(v389, v236, type metadata accessor for LeaderboardPersonalBestCard, &qword_27F244420, &unk_24F9FB1A0, &qword_27F244610);

  v238 = sub_24F46D6EC(v390, v237, type metadata accessor for LeaderboardWithFriendCard, &qword_27F244418, &unk_24F9FB198, &qword_27F244608);

  v239 = sub_24F46D6EC(v391, v238, type metadata accessor for MediaCard, &qword_27F215B58, &unk_24F9FB190, &qword_27F215B60);

  v240 = sub_24F46D6EC(v392, v239, type metadata accessor for SearchCard, &qword_27F244410, &unk_24F9FB188, &qword_27F244600);

  v241 = sub_24F46D6EC(v393, v240, type metadata accessor for DebugErrorCard, &qword_27F244408, &unk_24F9FB180, &qword_27F2445F8);

  v242 = sub_24F46D580(v241);

  v243 = sub_24F46D414(v242);

  v244 = sub_24F46D2A8(v243);

  v245 = sub_24F46D13C(v244);

  v246 = sub_24F46CEBC(&v419, v245);

  v247 = sub_24F46CC94(v364, 0, v246);

  v248 = sub_24F46CB28(v247);

  v249 = sub_24F46C9BC(v248);

  v250 = sub_24F46C850(v249);

  v251 = sub_24F46C6E4(v250);

  v252 = sub_24F46C4F0(v363, v251, 20.0);

  v253 = sub_24F46C384(v252);

  v254 = sub_24F46C218(v253);

  v255 = sub_24F46C0AC(v254);

  v256 = sub_24F46BF40(v255);

  v257 = sub_24F46BDD4(v256);

  v258 = sub_24F46BC68(v257);

  v259 = sub_24F46BAFC(v258);

  v260 = sub_24F46B8C8(v366, v365, v259, v129, v130);

  v261 = sub_24F46B6A0(v362, 0, v260);

  v262 = sub_24F46B534(v261);

  v263 = sub_24F46B3C8(v262);

  v264 = sub_24F46B25C(v263);

  v265 = sub_24F46B0F0(v264);

  v266 = sub_24F46AEC4(v394, v265);

  v267 = sub_24F46AD58(v266);

  v268 = sub_24F46ABEC(v267);

  v269 = sub_24F46AA94(v268, 44.0, 32.0);

  v270 = sub_24F46A928(v269);

  v271 = sub_24F46A700(v361, 0, v270);

  v272 = sub_24F46A588(0, v271, type metadata accessor for GameDetailsBanner, &type metadata for GameDetailsBannerComponent, sub_24EA3CB9C, sub_24EA3CB9C);

  v273 = sub_24F46A41C(v272);

  v274 = sub_24F46A1F0(v395, v273);

  v275 = sub_24F46A588(0, v274, type metadata accessor for GameDetailsMediaItem, &type metadata for GameDetailsMediaItemComponent, sub_24E6207C4, sub_24E6207C4);

  v276 = sub_24F469FC8(v360, 0, v275);

  v277 = sub_24F469DB0(v359, 256, v276);

  v278 = sub_24F469C44(v277);

  v279 = sub_24F469AD8(v278);

  v280 = sub_24F46996C(v279);

  LOBYTE(v415[0]) = 0;
  LOBYTE(v407[0]) = 1;
  v281 = sub_24F4697BC(4, 0, 0, 1, v280);

  v282 = sub_24F469654(0, 1, v281);

  v283 = sub_24F46D930(v195, v282, type metadata accessor for GameHero, &type metadata for GameHeroComponent, sub_24E6E64E8, sub_24E6E64E8);

  v284 = sub_24F469504(1, v283);

  v285 = sub_24F4692D8(v396, v284);

  v286 = sub_24F4690B0(v358, 0, v285);

  v287 = sub_24F468E84(v397, v286);

  v288 = sub_24F468D18(v287);

  v289 = sub_24F468BAC(v288);

  v290 = sub_24F468980(v398, v289);

  v291 = sub_24F468724(v416, v290);

  v292 = sub_24F4684FC(v357, 0, v291);

  v293 = sub_24F4682D0(v399, v292);

  v294 = sub_24F468164(v293);

  v295 = sub_24F467FF8(v294);

  v415[0] = xmmword_24F9FAF40;
  v415[1] = xmmword_24F9FAF50;
  v415[2] = xmmword_24F944E00;
  v296 = sub_24F467E78(v415, v295);

  v297 = sub_24F467D0C(v296);

  v298 = sub_24F467BA0(v297);

  v299 = sub_24F467978(v356, 0, v298);

  v300 = sub_24F46774C(v209, v299);

  v301 = sub_24F46EB10(v413, v300, type metadata accessor for LeaderboardRow, &type metadata for LeaderboardRowComponent, sub_24F0C0328, sub_24F0C0328);

  v302 = sub_24F4675C4(v301, 210.0, 20.0, 70.0, 12.0);

  v303 = sub_24F467458(v302);

  v304 = sub_24F4672EC(v303);

  v305 = sub_24F467180(v304);

  v306 = sub_24F467014(v305);

  v307 = sub_24F466EA8(v306);

  v308 = sub_24F466D3C(v307);

  v309 = sub_24F466B10(v208, v308);

  v310 = sub_24F4668E4(v207, v309);

  v311 = sub_24F4666D4(v350, 0, v310, 60.0);

  v312 = sub_24F466568(v311);

  v313 = sub_24F46630C(&v410, v312);

  v314 = sub_24F4660E0(v403, v313);

  v315 = sub_24F465F74(v314);

  v316 = sub_24F465D48(v404, v315);

  v317 = sub_24F465B1C(v405, v316);

  v318 = sub_24F4659B0(v317);

  v319 = v373;
  v320 = sub_24F465798(v373, v318);

  v321 = v345;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v407[0] = v320;
  sub_24F4795B8(v321, sub_24F4790D4, 0, isUniquelyReferenced_nonNull_native, v407);

  swift_bridgeObjectRelease_n();
  v323 = v374;
  v324 = sub_24F46556C(v374, v407[0]);

  v325 = sub_24F465400(v324);

  v326 = sub_24F4651D8(v344, 0, v325);

  v327 = sub_24F46506C(v326);

  v328 = sub_24F464F00(v327);

  v329 = sub_24F464D94(v328);

  v330 = sub_24F464C28(v329);

  v331 = sub_24F464ABC(v330);

  v332 = sub_24F464950(v331);

  sub_24F47D110(v323, type metadata accessor for RecordingRowLockupComponent);
  sub_24E6455E8(v319);
  sub_24F47D110(v405, type metadata accessor for PlayTogetherActivityTileComponent);
  sub_24F47D110(v404, type metadata accessor for GSKDividerComponent);
  sub_24F47D110(v403, type metadata accessor for OverviewTileComponent);
  sub_24F47D110(v402, type metadata accessor for OverlayCardLockupComponent);
  sub_24F47D110(v401, type metadata accessor for OverlayCapsuleLockupComponent);
  sub_24F47D110(v400, type metadata accessor for LeaderboardEntryTableRowComponent);
  sub_24F47D110(v399, type metadata accessor for InviteFriendsRowComponent);
  sub_24F47D110(v398, type metadata accessor for GroupedTableRowComponent);
  sub_24F47D110(v397, type metadata accessor for GameLockupComponent);
  sub_24F47D110(v396, type metadata accessor for GameInstallLockupComponent);
  sub_24F47D110(v395, type metadata accessor for GameDetailsHeaderComponent);
  sub_24F47D110(v394, type metadata accessor for FriendRequestLockupComponent);
  sub_24E601704(v393, &qword_27F244408);
  sub_24E601704(v392, &qword_27F244410);
  sub_24E601704(v391, &qword_27F215B58);
  sub_24E601704(v390, &qword_27F244418);
  sub_24E601704(v389, &qword_27F244420);
  sub_24E601704(v388, &qword_27F244428);
  sub_24E601704(v387, &qword_27F244430);
  sub_24E601704(v386, &qword_27F244438);
  sub_24E601704(v385, &qword_27F244440);
  sub_24E601704(v384, &qword_27F244448);
  sub_24E601704(v383, &qword_27F244450);
  sub_24E601704(v382, &qword_27F244458);
  sub_24E601704(v381, &qword_27F244460);
  sub_24E601704(v380, &qword_27F244468);
  sub_24E601704(v379, &qword_27F244470);
  sub_24E601704(v378, &qword_27F244478);
  sub_24E601704(v377, &qword_27F244480);
  sub_24E601704(v376, &qword_27F244488);
  sub_24E601704(v375, &qword_27F244490);
  sub_24F47D110(v372, type metadata accessor for ButtonGroupComponent);
  sub_24F47D110(v371, type metadata accessor for ArcadeUpsellCardComponent);
  sub_24F47D110(v370, type metadata accessor for AppEventDetailComponent);
  sub_24F47D110(v369, type metadata accessor for AccessPointHighlightComponent);
  return v332;
}

uint64_t sub_24F47CAC4()
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

uint64_t sub_24F47CB70()
{
  sub_24F924038();
  sub_24F47CBD4();
  return swift_getWitnessTable();
}

unint64_t sub_24F47CBD4()
{
  result = qword_27F2443C0;
  if (!qword_27F2443C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443C0);
  }

  return result;
}

unint64_t sub_24F47CCA4()
{
  result = qword_27F2443D8;
  if (!qword_27F2443D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778);
    sub_24E6695B8();
    sub_24E66960C();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443D8);
  }

  return result;
}

unint64_t sub_24F47CD9C()
{
  result = qword_27F2443E8;
  if (!qword_27F2443E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778);
    sub_24E6695B8();
    sub_24E66960C();
    swift_getOpaqueTypeConformance2();
    sub_24E669340();
    sub_24F47CCA4();
    swift_getOpaqueTypeConformance2();
    sub_24F178120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443E8);
  }

  return result;
}

uint64_t sub_24F47CF04@<X0>(void *a1@<X8>)
{
  sub_24F189AF8();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F47CFB8@<X0>(_BYTE *a1@<X8>)
{
  sub_24F47DF84();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F47D110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F47D170()
{
  result = qword_27F2444C0;
  if (!qword_27F2444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2444C0);
  }

  return result;
}

unint64_t sub_24F47D1C4()
{
  result = qword_27F2444C8;
  if (!qword_27F2444C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2444C8);
  }

  return result;
}

uint64_t sub_24F47D218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerLockupComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F47D27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerLockupComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F47D2E0()
{
  result = qword_27F2444F8;
  if (!qword_27F2444F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2444F8);
  }

  return result;
}

unint64_t sub_24F47D334()
{
  result = qword_27F244500;
  if (!qword_27F244500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244500);
  }

  return result;
}

uint64_t sub_24F47D388()
{
  sub_24E74C370(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F47D3D4()
{
  result = qword_27F244518;
  if (!qword_27F244518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244518);
  }

  return result;
}

unint64_t sub_24F47D428()
{
  result = qword_27F244520;
  if (!qword_27F244520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244520);
  }

  return result;
}

unint64_t sub_24F47D47C()
{
  result = qword_27F244528;
  if (!qword_27F244528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244528);
  }

  return result;
}

unint64_t sub_24F47D4D0()
{
  result = qword_27F244530;
  if (!qword_27F244530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244530);
  }

  return result;
}

unint64_t sub_24F47D544()
{
  result = qword_27F244538;
  if (!qword_27F244538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244538);
  }

  return result;
}

unint64_t sub_24F47D5A8()
{
  result = qword_27F244540;
  if (!qword_27F244540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244540);
  }

  return result;
}

uint64_t sub_24F47D5FC()
{
  sub_24E62A5EC(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F47D640()
{
  result = qword_27F244550;
  if (!qword_27F244550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244550);
  }

  return result;
}

unint64_t sub_24F47D694()
{
  result = qword_27F244558;
  if (!qword_27F244558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244558);
  }

  return result;
}

unint64_t sub_24F47D6E8()
{
  result = qword_27F244560;
  if (!qword_27F244560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244560);
  }

  return result;
}

unint64_t sub_24F47D73C()
{
  result = qword_27F244568;
  if (!qword_27F244568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244568);
  }

  return result;
}

unint64_t sub_24F47D790()
{
  result = qword_27F244570;
  if (!qword_27F244570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244570);
  }

  return result;
}

unint64_t sub_24F47D7E4()
{
  result = qword_27F244578;
  if (!qword_27F244578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244578);
  }

  return result;
}

unint64_t sub_24F47D838()
{
  result = qword_27F244580;
  if (!qword_27F244580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244580);
  }

  return result;
}

unint64_t sub_24F47D88C()
{
  result = qword_27F244588;
  if (!qword_27F244588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244588);
  }

  return result;
}

unint64_t sub_24F47D8E0()
{
  result = qword_27F244590;
  if (!qword_27F244590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244590);
  }

  return result;
}

unint64_t sub_24F47D934()
{
  result = qword_27F244598;
  if (!qword_27F244598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244598);
  }

  return result;
}

unint64_t sub_24F47D988()
{
  result = qword_27F2445A0;
  if (!qword_27F2445A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445A0);
  }

  return result;
}

unint64_t sub_24F47D9DC()
{
  result = qword_27F2445A8;
  if (!qword_27F2445A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445A8);
  }

  return result;
}

unint64_t sub_24F47DA30()
{
  result = qword_27F2445B0;
  if (!qword_27F2445B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445B0);
  }

  return result;
}

unint64_t sub_24F47DA84()
{
  result = qword_27F2445B8;
  if (!qword_27F2445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445B8);
  }

  return result;
}

unint64_t sub_24F47DAD8()
{
  result = qword_27F2445C0;
  if (!qword_27F2445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445C0);
  }

  return result;
}

unint64_t sub_24F47DB2C()
{
  result = qword_27F2445C8;
  if (!qword_27F2445C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445C8);
  }

  return result;
}

unint64_t sub_24F47DB80()
{
  result = qword_27F2445D0;
  if (!qword_27F2445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445D0);
  }

  return result;
}

unint64_t sub_24F47DBD4()
{
  result = qword_27F2445D8;
  if (!qword_27F2445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445D8);
  }

  return result;
}

uint64_t sub_24F47DC28()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));
  sub_24E669FC4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

unint64_t sub_24F47DC74()
{
  result = qword_27F2445E8;
  if (!qword_27F2445E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445E8);
  }

  return result;
}

unint64_t sub_24F47DCC8()
{
  result = qword_27F2445F0;
  if (!qword_27F2445F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445F0);
  }

  return result;
}

unint64_t sub_24F47DD1C()
{
  result = qword_27F244688;
  if (!qword_27F244688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244688);
  }

  return result;
}

uint64_t objectdestroy_95Tm()
{

  return swift_deallocObject();
}

unint64_t sub_24F47DDB4()
{
  result = qword_27F244698;
  if (!qword_27F244698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244698);
  }

  return result;
}

unint64_t sub_24F47DE08()
{
  result = qword_27F2446A0;
  if (!qword_27F2446A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446A0);
  }

  return result;
}