uint64_t sub_255D446E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255D44740()
{
  result = qword_27F7E6448;
  if (!qword_27F7E6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6448);
  }

  return result;
}

unint64_t sub_255D44794()
{
  result = qword_27F7E6450;
  if (!qword_27F7E6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6450);
  }

  return result;
}

unint64_t sub_255D447E8()
{
  result = qword_27F7E6458;
  if (!qword_27F7E6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6458);
  }

  return result;
}

unint64_t sub_255D448A4()
{
  result = qword_27F7E6468;
  if (!qword_27F7E6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6468);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacementString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarItemPlacementString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D44A6C()
{
  result = qword_27F7E6470;
  if (!qword_27F7E6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6470);
  }

  return result;
}

unint64_t sub_255D44AC4()
{
  result = qword_27F7E6478;
  if (!qword_27F7E6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6478);
  }

  return result;
}

unint64_t sub_255D44B1C()
{
  result = qword_27F7E6480;
  if (!qword_27F7E6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6480);
  }

  return result;
}

unint64_t sub_255D44B74()
{
  result = qword_27F7E6488;
  if (!qword_27F7E6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6488);
  }

  return result;
}

unint64_t sub_255D44BCC()
{
  result = qword_27F7E6490;
  if (!qword_27F7E6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6490);
  }

  return result;
}

unint64_t sub_255D44C24()
{
  result = qword_27F7E6498;
  if (!qword_27F7E6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6498);
  }

  return result;
}

unint64_t sub_255D44C7C()
{
  result = qword_27F7E64A0;
  if (!qword_27F7E64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64A0);
  }

  return result;
}

unint64_t sub_255D44CD0()
{
  result = qword_27F7E64A8;
  if (!qword_27F7E64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOySbGSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_255D44D84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255D44DCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_255D44E30@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64B8, &qword_255E3D938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D456E0();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
  LOBYTE(v27) = 0;
  sub_255D45734();
  sub_255E3ABC8();
  v24 = v30;
  v25 = v31;
  v41 = v32;
  v42 = 1;
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v11 = *(&v37 + 1);
  v23 = v37;
  v12 = v38;
  v13 = v39;
  v40 = v39;
  v14 = v24;
  v27 = v24;
  v15 = v25;
  *&v28 = v25;
  v16 = v41;
  BYTE8(v28) = v41;
  *v29 = v37;
  *&v29[16] = v38;
  v29[24] = v39;
  v17 = v24;
  v18 = v28;
  v19 = v37;
  v20 = v26;
  *(v26 + 41) = *&v29[9];
  v20[1] = v18;
  v20[2] = v19;
  *v20 = v17;
  sub_255D45798(&v27, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v23;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  return sub_255D457D0(&v30);
}

uint64_t sub_255D45124(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C61636974726576;
  }

  else
  {
    v4 = 0x746E6F7A69726F68;
  }

  if (v3)
  {
    v5 = 0xEA00000000006C61;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C61636974726576;
  }

  else
  {
    v6 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA00000000006C61;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D451D0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45258()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D452CC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45350@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D453B0(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D453F4()
{
  if (*v0)
  {
    result = 0x6C61636974726576;
  }

  else
  {
    result = 0x746E6F7A69726F68;
  }

  *v0;
  return result;
}

uint64_t sub_255D45434@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D45498(uint64_t a1)
{
  v2 = sub_255D456E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D454D4(uint64_t a1)
{
  v2 = sub_255D456E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D45510@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    sub_255DDF1BC(a2, v8, v9, v10, v11);
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = sub_255E38AE8();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39CD8();
  }
}

unint64_t sub_255D45664(uint64_t a1)
{
  result = sub_255D4568C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4568C()
{
  result = qword_27F7E64B0;
  if (!qword_27F7E64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64B0);
  }

  return result;
}

unint64_t sub_255D456E0()
{
  result = qword_27F7E64C0;
  if (!qword_27F7E64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64C0);
  }

  return result;
}

unint64_t sub_255D45734()
{
  result = qword_27F7E64D0;
  if (!qword_27F7E64D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E64C8, &qword_255E3D940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64D0);
  }

  return result;
}

unint64_t sub_255D45814()
{
  result = qword_27F7E64D8;
  if (!qword_27F7E64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64D8);
  }

  return result;
}

unint64_t sub_255D4586C()
{
  result = qword_27F7E64E0;
  if (!qword_27F7E64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64E0);
  }

  return result;
}

unint64_t sub_255D458C4()
{
  result = qword_27F7E64E8;
  if (!qword_27F7E64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E64E8);
  }

  return result;
}

uint64_t type metadata accessor for ControlSizeModifier()
{
  result = qword_27F7E64F0;
  if (!qword_27F7E64F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255D4598C()
{
  result = sub_255E38868();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255D45A04()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45AB4()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D45B50()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D46728();
  *a2 = result;
  return result;
}

void sub_255D45C2C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1768843629;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6C616D73;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D45D48()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D45DA4()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D45DEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D45E64@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D45EBC(uint64_t a1)
{
  v2 = sub_255D46308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D45EF8(uint64_t a1)
{
  v2 = sub_255D46308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D45F34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6518, &unk_255E3DB10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ControlSizeModifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D46308();
  sub_255E3AE28();
  if (!v2)
  {
    v14 = v19;
    sub_255D4635C();
    sub_255E3ABC8();
    (*(v5 + 8))(v8, v4);
    v15 = v20;
    v16 = sub_255E38868();
    (*(*(v16 - 8) + 104))(v12, **(&unk_279812170 + v15), v16);
    sub_255D463B0(v12, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D4613C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
  a2[3] = sub_255E38AE8();
  sub_255D462A4();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E398C8();
}

unint64_t sub_255D46224(uint64_t a1)
{
  result = sub_255D4624C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4624C()
{
  result = qword_27F7E6500;
  if (!qword_27F7E6500)
  {
    type metadata accessor for ControlSizeModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6500);
  }

  return result;
}

unint64_t sub_255D462A4()
{
  result = qword_27F7E6510;
  if (!qword_27F7E6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6510);
  }

  return result;
}

unint64_t sub_255D46308()
{
  result = qword_27F7E6520;
  if (!qword_27F7E6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6520);
  }

  return result;
}

unint64_t sub_255D4635C()
{
  result = qword_27F7E6528;
  if (!qword_27F7E6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6528);
  }

  return result;
}

uint64_t sub_255D463B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSizeModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ControlSizeString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlSizeString(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D46578()
{
  result = qword_27F7E6530;
  if (!qword_27F7E6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6530);
  }

  return result;
}

unint64_t sub_255D465D0()
{
  result = qword_27F7E6538;
  if (!qword_27F7E6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6538);
  }

  return result;
}

unint64_t sub_255D46628()
{
  result = qword_27F7E6540;
  if (!qword_27F7E6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6540);
  }

  return result;
}

unint64_t sub_255D46680()
{
  result = qword_27F7E6548;
  if (!qword_27F7E6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6548);
  }

  return result;
}

unint64_t sub_255D466D4()
{
  result = qword_27F7E6550;
  if (!qword_27F7E6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6550);
  }

  return result;
}

uint64_t sub_255D46728()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t AnyViewContent<>.body.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(a1 + 40))(v6);
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = View.anyView.getter(v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *a2 = v4;
  return result;
}

uint64_t AnyViewContent<>.anyView.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_255E3A038();
}

uint64_t View.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

unint64_t sub_255D46990@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277CE1120];
  result = sub_255D3EF4C();
  *(a1 + 32) = result;
  return result;
}

uint64_t AnyViewContent<>.partialBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  (*(a2 + 24))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = v7[2];
  v15(v13, v11, AssociatedTypeWitness);
  v16 = v7[1];
  v16(v11, AssociatedTypeWitness);
  a3[3] = AssociatedTypeWitness;
  a3[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v15(boxed_opaque_existential_1, v13, AssociatedTypeWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

unint64_t sub_255D46BA0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277CE1278];
  result = sub_255D3EEF8();
  *(a1 + 32) = result;
  return result;
}

__n128 sub_255D46C34@<Q0>(__n128 *a1@<X8>)
{
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + 8);
  v5 = *v1;
  v6 = v1[1];
  sub_255D3ACDC(&v10);
  v3 = sub_255D3D120();
  result = v10;
  a1[1].n128_u64[1] = &type metadata for AnyShape;
  a1[2].n128_u64[0] = v3;
  *a1 = result;
  return result;
}

unint64_t sub_255D46CD0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x277CE14A8];
  result = sub_255D3EAC8();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D46D04()
{
  v1 = v0[3];
  v2 = v0[5];
  v20 = v0[4];
  v21 = v2;
  v3 = v0[1];
  v17[0] = *v0;
  v17[1] = v3;
  v4 = v0[3];
  v6 = *v0;
  v5 = v0[1];
  v18 = v0[2];
  v19 = v4;
  v7 = v0[5];
  v14 = v20;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  v22 = *(v0 + 12);
  v16 = *(v0 + 12);
  v12 = v18;
  v13 = v1;
  sub_255D3EA60(v17, v9);
  sub_255D3E34C();
  return sub_255E3A038();
}

uint64_t sub_255D46D94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 80);
  v13[4] = *(v2 + 64);
  v13[5] = v4;
  v14 = *(v2 + 96);
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v6 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v13[3] = v6;
  a2[3] = a1;
  a2[4] = sub_255D3E34C();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 80);
  *(v7 + 80) = *(v2 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v2 + 96);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  v10 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v10;
  return sub_255D3EA60(v13, v12);
}

__n128 sub_255D46E30@<Q0>(__n128 *a1@<X8>)
{
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + 12);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  sub_255D3BAA4(&v12);
  v3 = sub_255D3D120();
  result = v12;
  a1[1].n128_u64[1] = &type metadata for AnyShape;
  a1[2].n128_u64[0] = v3;
  *a1 = result;
  return result;
}

uint64_t View.anyView.getter(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_255E3A038();
}

uint64_t View.liftUI_viewWithAppliedModifiers(_:store:localStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  result = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v7, a4);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    do
    {
      v17 = v16[3];
      v18 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v18 + 16))(&v19, a6, a2, a3, v17, v18);
      sub_255D34630(&v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(a6);
      result = sub_255D34630(v20, a6);
      v16 += 5;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t ViewContent.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ViewContent.modifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_255D47204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ViewContent.store.getter()
{
  if (*(v0 + 120))
  {
  }

  else
  {
    v2 = *(v0 + 128);
    type metadata accessor for RemoteStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t ViewContent.$store.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for RemoteStateStore(0);
  v4 = sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t ViewContent.localStore.getter()
{
  if (*(v0 + 136))
  {
  }

  else
  {
    v2 = *(v0 + 144);
    type metadata accessor for LocalStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t ViewContent.$localStore.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = type metadata accessor for LocalStateStore(0);
  v4 = sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t sub_255D474B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D4C62C();
  *a2 = result;
  return result;
}

uint64_t sub_255D474E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D4C62C();
  *a1 = result;
  return result;
}

uint64_t sub_255D4750C(uint64_t a1)
{
  v2 = sub_255D4C11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D47548(uint64_t a1)
{
  v2 = sub_255D4C11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6568, &unk_255E3DD90);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v70 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v74 = &v57 - v13;
  type metadata accessor for RemoteStateStore(0);
  sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  memset(v80, 0, sizeof(v80));
  v85 = sub_255E38CC8();
  v81 = v85;
  v82 = v14;
  type metadata accessor for LocalStateStore(0);
  sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
  v15 = sub_255E38CC8();
  v83 = v15;
  v84 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v19 = sub_255E3AAE8();
  v20 = __swift_project_value_buffer(v19, qword_27F8152F0);
  if (!*(v18 + 16) || (v21 = sub_255D3CA98(v20), (v22 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_255D3951C(*(v18 + 56) + 32 * v21, v77);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    type metadata accessor for ContentRegistryError();
    sub_255D4EE70(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_11;
  }

  v63 = v3;
  v64 = v4;
  v65 = a1;
  v66 = v15;
  v23 = v76[0];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_255D3CAFC();
  v26 = v73;
  v27 = v74;
  sub_255E3AE28();
  if (v26)
  {

LABEL_8:
    a1 = v65;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D395E4(v80, &qword_27F7E6558, &qword_255E3DD80);
    sub_255D395E4(&v80[40], &qword_27F7E6560, &qword_255E3DD88);
  }

  v62 = v25;
  v73 = v23;
  v29 = v72;
  v30 = sub_255E3ABD8();
  if (!*(v30 + 16))
  {

    type metadata accessor for DynamicKeyError();
    sub_255D4EE70(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
    swift_allocError();
    sub_255E3AB68();
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v71 + 8))(v27, v29);
    goto LABEL_8;
  }

  v32 = *(v30 + 32);
  v31 = *(v30 + 40);
  v33 = *(v30 + 48);
  v34 = *(v30 + 56);

  v79[2] = v32;
  v79[3] = v31;
  v77[0] = v32;
  v77[1] = v31;
  v61 = v33;
  v77[2] = v33;
  v60 = v34;
  v78 = v34;
  sub_255D4C11C();

  sub_255E3AB58();
  v58 = v32;
  v59 = v31;
  LOBYTE(v77[0]) = 0;
  v35 = sub_255E3AB88();
  if (!v36)
  {
    sub_255E385C8();
    v37 = sub_255E385B8();
    v39 = v38;
    (*(v64 + 8))(v7, v63);
    v36 = v39;
    v35 = v37;
  }

  v40 = v59;
  v41 = v61;
  v79[0] = v35;
  v79[1] = v36;
  v64 = v36;

  v42 = sub_255E3AB68();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
  inited = swift_initStackObject();
  v57 = xmmword_255E3BBC0;
  *(inited + 16) = xmmword_255E3BBC0;
  v44 = v62;
  *(inited + 56) = &type metadata for DynamicKey;
  *(inited + 64) = v44;
  v45 = swift_allocObject();
  *(inited + 32) = v45;
  v46 = v58;
  *(v45 + 16) = v58;
  *(v45 + 24) = v40;
  *(v45 + 32) = v41;
  *(v45 + 40) = v60;
  v77[0] = v42;

  sub_255D3CDA0(inited);
  v47 = sub_255E0800C(v46, v40);
  v49 = v48;
  v50 = v47;

  swift_bridgeObjectRelease_n();
  LOBYTE(v76[0]) = 1;
  v51 = v69;
  sub_255E3AB78();
  sub_255D3CE1C(v77, &v75);
  v76[3] = v50;
  v76[4] = v49;
  __swift_allocate_boxed_opaque_existential_1(v76);
  v52 = *(*(v49 + 8) + 16);
  sub_255E3A7B8();
  v53 = v65;
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  sub_255D47204(v76, &v80[40], &qword_27F7E6560, &qword_255E3DD88);
  v54 = v74;
  v55 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61C0, &qword_255E3BBE8);
  LOBYTE(v76[0]) = 2;
  sub_255D3CF34();
  sub_255E3ABA8();
  v56 = v77[0];

  if (!v56)
  {
    v56 = MEMORY[0x277D84F90];
  }

  (*(v68 + 8))(v55, v51);
  (*(v71 + 8))(v54, v72);
  v79[4] = v56;
  sub_255D4C170(v79, v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  return sub_255D4C1A8(v79);
}

uint64_t ViewContent.view.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for ViewContent;
  a1[4] = sub_255D4C1D8();
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_255D4C170(v1, v3 + 16);
}

unint64_t ViewContent.partialBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_255D3957C((v1 + 5), &v39, &qword_27F7E6558, &qword_255E3DD80);
  if (v40)
  {
    sub_255D34630(&v39, &v42);
    v4 = v45;
    v5 = v46;
    __swift_project_boxed_opaque_existential_1(&v42, v45);
    (*(v5 + 32))(&v39, v4, v5);
    v6 = v40;
    v7 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v8 = sub_255D48C6C(v2[4]);
    v9 = v2[15];
    if (v9)
    {
      v10 = v2[17];
      if (v10)
      {
        v11 = v8;
        v12 = v2[15];

        View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v11, v9, v10, v6, v7, &v37);

        v13 = v38;
        __swift_project_boxed_opaque_existential_1(&v37, v38);
        v14 = View.anyView.getter(v13);
        __swift_destroy_boxed_opaque_existential_1Tm(&v37);
        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        *&v37 = v14;
        BYTE8(v37) = 0;

        sub_255E39258();
        *&v37 = v39;
        WORD4(v37) = BYTE8(v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
        sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0);
        sub_255E39258();

        v15 = v39;
        v16 = BYTE8(v39);
        v17 = BYTE9(v39);
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
LABEL_18:
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6590, &qword_255E3DDA8);
        result = sub_255D4C22C();
        *(a1 + 32) = result;
        *a1 = v15;
        *(a1 + 8) = v16;
        *(a1 + 9) = v17;
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:
    v33 = v2[16];
    type metadata accessor for RemoteStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    sub_255E38CB8();
    __break(1u);
LABEL_20:
    v34 = v2[18];
    type metadata accessor for LocalStateStore(0);
    sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

    sub_255E38CB8();
    __break(1u);
    goto LABEL_21;
  }

  sub_255D395E4(&v39, &qword_27F7E6558, &qword_255E3DD80);
  sub_255D3957C((v1 + 10), &v42, &qword_27F7E6560, &qword_255E3DD88);
  v18 = v45;
  if (!v45)
  {
    sub_255D395E4(&v42, &qword_27F7E6560, &qword_255E3DD88);
    *&v39 = 0;
    WORD4(v39) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
    sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0);
    sub_255E39258();
LABEL_17:
    v15 = v42;
    v16 = v43;
    v17 = v44;
    goto LABEL_18;
  }

  v19 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  v20 = v1[15];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v1[17];
  if (v21)
  {
    v22 = *(v19 + 48);
    v23 = v1[15];

    v22(&v39, v20, v21, v18, v19);

    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    v25 = sub_255D48C6C(v1[4]);
    v40 = &type metadata for AnyShape;
    v41 = sub_255D3D120();
    v39 = v24;
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v25 + 32;

      do
      {
        sub_255D3CE1C(v27, &v42);
        v28 = v45;
        v29 = v46;
        __swift_project_boxed_opaque_existential_1(&v42, v45);
        (*(v29 + 16))(&v36, &v39, v20, v21, v28, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        sub_255D34630(&v36, &v37);
        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        sub_255D34630(&v37, &v39);
        v27 += 40;
        --v26;
      }

      while (v26);
    }

    else
    {
    }

    sub_255D34630(&v39, &v42);
    v30 = v45;
    __swift_project_boxed_opaque_existential_1(&v42, v45);
    v31 = View.anyView.getter(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    *&v39 = v31;
    BYTE8(v39) = 1;

    sub_255E39258();
    *&v39 = v42;
    WORD4(v39) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
    sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0);
    sub_255E39258();

    goto LABEL_17;
  }

LABEL_21:
  v35 = v2[18];
  type metadata accessor for LocalStateStore(0);
  sub_255D4EE70(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D48968(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_255DE5F30(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_255D4C170(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255DE5F30((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for ViewContent;
      v10 = sub_255D44794();
      *&v8 = swift_allocObject();
      sub_255D4C170(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_255D34630(&v8, v2 + 40 * v6 + 32);
      sub_255D4C1A8(v11);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_255D48A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_255DE6070(0, v1, 0);
    v4 = a1 + 32;
    v2 = v20;
    do
    {
      sub_255D3CE1C(v4, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6330, &qword_255E3E0F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65D0, &qword_255E3E0F8);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255DE6070((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v10 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12);
      sub_255D4C594(v6, v12, &v20, v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_255D48C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_255DE6070(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_255D4C728(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_255DE6070((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for AnyViewModifier;
      v10 = sub_255D4C784();
      *&v8 = swift_allocObject();
      sub_255D4C728(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_255D34630(&v8, v2 + 40 * v6 + 32);
      sub_255D4C7D8(v11);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t ViewContent.body.getter@<X0>(uint64_t *a1@<X8>)
{
  ViewContent.partialBody.getter(v5);
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = View.anyView.getter(v2);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v5);
  *a1 = v3;
  return result;
}

uint64_t sub_255D48E14()
{
  sub_255D4C170(v0, v2);
  sub_255D4C1D8();
  return sub_255E3A038();
}

uint64_t sub_255D48E94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_255D48EA0@<X0>(uint64_t *a1@<X8>)
{
  ViewContent.partialBody.getter(v5);
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = View.anyView.getter(v2);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v5);
  *a1 = v3;
  return result;
}

unint64_t ViewContent.description.getter()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_255E3A9A8();

  v5 = 0xD000000000000016;
  v6 = 0x8000000255E65C20;
  sub_255D3957C(v0 + 40, v4, &qword_27F7E6558, &qword_255E3DD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  v1 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v1);

  MEMORY[0x259C4E8F0](0x696669646F6D202CLL, 0xED0000203A737265);
  v2 = MEMORY[0x259C4E9D0](*(v0 + 32), &type metadata for AnyViewModifier);
  MEMORY[0x259C4E8F0](v2);

  MEMORY[0x259C4E8F0](15904, 0xE200000000000000);
  return v5;
}

uint64_t sub_255D49060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[3];
  v11 = *(v2 + 2);
  v5 = sub_255D4D04C();
  v6 = *(v5 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66B8, &qword_255E3E180);
  a2[4] = sub_255D38950(&qword_27F7E66C0, &qword_27F7E66B8, &qword_255E3E180);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v6(a1, v5);
}

uint64_t sub_255D49144()
{
  sub_255D4D2E4(v0, &v2);
  sub_255D4D290();
  return sub_255E3A038();
}

uint64_t sub_255D491C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4D0F4();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66D8, &qword_255E3E188);
  a2[4] = sub_255D4D148();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D4927C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_255E3A0C8();
  a1[4] = sub_255D4EE70(&qword_27F7E6710, MEMORY[0x277CDF088]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E3A0B8();
}

uint64_t sub_255D492F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = v2;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v3;
  v4 = *(v0 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(v0 + 64);
  v11 = *(v0 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_255D4CA38(v12, v6);
  sub_255D4C9DC();
  return sub_255E3A038();
}

uint64_t sub_255D49370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v4;
  v12 = *(v2 + 64);
  v5 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v5;
  a2[3] = a1;
  a2[4] = sub_255D4C9DC();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = *(v2 + 48);
  *(v6 + 48) = *(v2 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v2 + 64);
  v8 = *(v2 + 16);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v8;
  return sub_255D4CA38(v11, v10);
}

__n128 sub_255D493F8@<Q0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v19 = *(v1 + 8);
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  sub_255D66948(v12);
  v5 = v13;
  v6 = v14;
  v7 = sub_255D4C82C();
  v10 = v12[1];
  v11 = v12[0];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65D8, &unk_255E3E100);
  a1[4] = v7;
  v8 = swift_allocObject();
  *a1 = v8;
  result = v11;
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v5;
  *(v8 + 49) = v6;
  return result;
}

uint64_t sub_255D494D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _BYTE *), void (*a4)(uint64_t))
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 48);
  v19 = *(v4 + 32);
  v20 = v7;
  v8 = *(v4 + 16);
  v18[0] = *v4;
  v18[1] = v8;
  v9 = *(v4 + 48);
  v15 = v19;
  v16 = v9;
  v21 = *(v4 + 64);
  v17 = *(v4 + 64);
  v13 = v18[0];
  v14 = v6;
  v10 = a3(v18, v12);
  a4(v10);
  return sub_255E3A038();
}

uint64_t sub_255D4959C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(_OWORD *, char *)@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(v4 + 48);
  v14[2] = *(v4 + 32);
  v14[3] = v7;
  v15 = *(v4 + 64);
  v8 = *(v4 + 16);
  v14[0] = *v4;
  v14[1] = v8;
  a4[3] = a1;
  a4[4] = a2();
  v9 = swift_allocObject();
  *a4 = v9;
  v10 = *(v4 + 48);
  *(v9 + 48) = *(v4 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v4 + 64);
  v11 = *(v4 + 16);
  *(v9 + 16) = *v4;
  *(v9 + 32) = v11;
  return a3(v14, v13);
}

unint64_t sub_255D49638@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v14 = v1[2];
  v15 = v3;
  v16 = *(v1 + 8);
  v4 = v1[1];
  v12 = *v1;
  v13 = v4;
  sub_255D67B50(&v9);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6788, &qword_255E3E1D0);
  result = sub_255D4D738();
  *(a1 + 32) = result;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  return result;
}

uint64_t sub_255D49754@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67A8, &qword_255E3E1D8);
  a1[4] = sub_255D4D914();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D684D8(boxed_opaque_existential_1);
}

uint64_t sub_255D497DC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F08, &qword_255E3B9A0);
  a1[4] = sub_255D38950(&qword_27F7E5FC8, &qword_27F7E5F08, &qword_255E3B9A0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E388C8();
}

uint64_t sub_255D49860()
{
  sub_255D4DA74(v0, &v2);
  sub_255D4DA20();
  return sub_255E3A038();
}

void *sub_255D498DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_255D4D9CC();
  result = (*(v4 + 24))(&v8, a1, v4);
  v6 = v8;
  v7 = MEMORY[0x277CE0F70];
  a2[3] = MEMORY[0x277CE0F78];
  a2[4] = v7;
  *a2 = v6;
  return result;
}

uint64_t sub_255D49950()
{
  sub_255D4E190(v0, v2);
  sub_255D4E13C();
  return sub_255E3A038();
}

uint64_t sub_255D49998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4E13C();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4E190(v2, v4 + 16);
}

uint64_t sub_255D499F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4E0E8();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68A8, &qword_255E3E228);
  a2[4] = sub_255D38950(&qword_27F7E68B0, &qword_27F7E68A8, &qword_255E3E228);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D49AAC()
{
  sub_255D4DF88(v0, &v2);
  sub_255D4DF34();
  return sub_255E3A038();
}

uint64_t sub_255D49B28@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6868, &qword_255E3E218);
  a1[4] = sub_255D38950(&qword_27F7E6870, &qword_27F7E6868, &qword_255E3E218);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D6AF58();
}

uint64_t sub_255D49BAC()
{
  sub_255D4E08C(v0, v2);
  sub_255D4E038();
  return sub_255E3A038();
}

uint64_t sub_255D49BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4E038();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4E08C(v2, v4 + 16);
}

uint64_t sub_255D49C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4DFE4();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6888, &qword_255E3E220);
  a2[4] = sub_255D38950(&qword_27F7E6890, &qword_27F7E6888, &qword_255E3E220);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D49D40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[3];
  v11 = *(v2 + 2);
  v5 = sub_255D4E1EC();
  v6 = *(v5 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68C8, &unk_255E3E230);
  a2[4] = sub_255D4E240();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v6(a1, v5);
}

uint64_t sub_255D49DF0()
{
  sub_255D4E744(v0, &v2);
  sub_255D4E68C();
  return sub_255E3A038();
}

uint64_t sub_255D49E6C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68E8, &qword_255E44080);
  a1[4] = sub_255D4E474();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D6CA20(boxed_opaque_existential_1);
}

uint64_t sub_255D49ED4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  v12 = *(v6 + 2);
  a3(a1, a2, a3, a4, a5, a6);

  return sub_255E3A038();
}

uint64_t sub_255D49F84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  a3[3] = a1;
  a3[4] = a2();
  v11 = swift_allocObject();
  *a3 = v11;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v10;
  v11[7] = v9;
}

uint64_t sub_255D4A028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[3];
  v11 = *(v2 + 2);
  v5 = sub_255D4E7A0();
  v6 = *(v5 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6938, &unk_255E44030);
  a2[4] = sub_255D38950(&qword_27F7E6940, &qword_27F7E6938, &unk_255E44030);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v6(a1, v5);
}

uint64_t sub_255D4A124(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 3);
  a3();

  return sub_255E3A038();
}

uint64_t sub_255D4A1CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  a3[3] = a1;
  a3[4] = a2();
  v10 = swift_allocObject();
  *a3 = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;
}

void sub_255D4A268(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CE1410];
  *(a1 + 24) = MEMORY[0x277CE1428];
  *(a1 + 32) = v1;
}

uint64_t sub_255D4A280()
{
  sub_255D4E418(v0, &v2);
  sub_255D4E344();
  return sub_255E3A038();
}

uint64_t sub_255D4A2FC@<X0>(uint64_t a1@<X8>)
{
  sub_255D715C0(&v5);
  v2 = v5;
  v3 = v6;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6580, &qword_255E3DDA0);
  result = sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0);
  *(a1 + 32) = result;
  *a1 = v2;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_255D4A3BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v5 = sub_255D4EF0C();
  v6 = *(v5 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A08, &unk_255E4A890);
  a2[4] = sub_255D4EF60();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v6(a1, v5);
}

uint64_t sub_255D4A45C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v26 = *(v0 + 96);
  v27 = v1;
  v3 = *(v0 + 112);
  v28 = *(v0 + 128);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v22 = *(v0 + 32);
  v23 = v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 80);
  v24 = *(v0 + 64);
  v25 = v7;
  v8 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v8;
  v17 = v26;
  v18 = v3;
  v19 = *(v0 + 128);
  v13 = v22;
  v14 = v6;
  v15 = v24;
  v16 = v2;
  v29 = *(v0 + 144);
  v20 = *(v0 + 144);
  v11 = v21[0];
  v12 = v5;
  sub_255D4C6CC(v21, v10);
  sub_255D4C678();
  return sub_255E3A038();
}

uint64_t sub_255D4A508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 112);
  v15[6] = *(v2 + 96);
  v15[7] = v4;
  v15[8] = *(v2 + 128);
  v16 = *(v2 + 144);
  v5 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v5;
  v6 = *(v2 + 80);
  v15[4] = *(v2 + 64);
  v15[5] = v6;
  v7 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v7;
  a2[3] = a1;
  a2[4] = sub_255D4C678();
  v8 = swift_allocObject();
  *a2 = v8;
  v9 = *(v2 + 112);
  *(v8 + 112) = *(v2 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(v2 + 128);
  *(v8 + 160) = *(v2 + 144);
  v10 = *(v2 + 48);
  *(v8 + 48) = *(v2 + 32);
  *(v8 + 64) = v10;
  v11 = *(v2 + 80);
  *(v8 + 80) = *(v2 + 64);
  *(v8 + 96) = v11;
  v12 = *(v2 + 16);
  *(v8 + 16) = *v2;
  *(v8 + 32) = v12;
  return sub_255D4C6CC(v15, v14);
}

uint64_t sub_255D4A5C4@<X0>(uint64_t *a1@<X8>)
{
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v14 = *(v1 + 18);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v5 = *v1;
  v6 = v1[1];
  a1[3] = type metadata accessor for RemoteContentView(0);
  a1[4] = sub_255D4EE70(&qword_27F7E65B8, type metadata accessor for RemoteContentView);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return DecodableRemoteContentView.unmodifiedBody.getter(boxed_opaque_existential_1);
}

uint64_t sub_255D4A674()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v15 = *(v0 + 32);
  v16 = v1;
  v3 = *(v0 + 48);
  v17 = *(v0 + 64);
  v4 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v4;
  v9 = v2;
  v10 = v15;
  v5 = *(v0 + 64);
  v11 = v3;
  v12 = v5;
  v18 = *(v0 + 80);
  v13 = *(v0 + 80);
  v8 = v14[0];
  sub_255D4CBEC(v14, v7);
  sub_255D4CB44();
  return sub_255E3A038();
}

uint64_t sub_255D4A700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  v12[3] = *(v2 + 48);
  v12[4] = v5;
  v13 = *(v2 + 80);
  v6 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v6;
  v12[2] = v4;
  a2[3] = a1;
  a2[4] = sub_255D4CB44();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 48);
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v2 + 64);
  *(v7 + 96) = *(v2 + 80);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  return sub_255D4CBEC(v12, v11);
}

uint64_t sub_255D4A79C@<X0>(uint64_t *a1@<X8>)
{
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + 10);
  v5 = *v1;
  v6 = v1[1];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6600, &qword_255E3E110);
  a1[4] = sub_255D4CA94();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D97C4C(boxed_opaque_existential_1);
}

uint64_t sub_255D4A818()
{
  v1 = v0[1];
  v2 = v0[3];
  v8 = v0[2];
  v9 = v2;
  v3 = v0[3];
  v10 = v0[4];
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  v6[7] = v8;
  v6[8] = v3;
  v6[9] = v0[4];
  v6[5] = v7[0];
  v6[6] = v1;
  sub_255D4CD4C(v7, v6);
  sub_255D4CCF8();
  return sub_255E3A038();
}

uint64_t sub_255D4A890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v11[2] = v2[2];
  v11[3] = v4;
  v11[4] = v2[4];
  v5 = v2[1];
  v11[0] = *v2;
  v11[1] = v5;
  a2[3] = a1;
  a2[4] = sub_255D4CCF8();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[3];
  v6[3] = v2[2];
  v6[4] = v7;
  v6[5] = v2[4];
  v8 = v2[1];
  v6[1] = *v2;
  v6[2] = v8;
  return sub_255D4CD4C(v11, &v10);
}

uint64_t sub_255D4A918@<X0>(uint64_t *a1@<X8>)
{
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v5 = *v1;
  v6 = v1[1];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6628, &unk_255E3E120);
  a1[4] = sub_255D4CC48();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D98968(boxed_opaque_existential_1);
}

uint64_t sub_255D4A98C()
{
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v2 = v0[3];
  v4 = *v0;
  v3 = v0[1];
  v8[2] = v0[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = v0[3];
  v7[6] = v0[2];
  v7[7] = v5;
  sub_255D4CDFC(v8, v7);
  sub_255D4CDA8();
  return sub_255E3A038();
}

uint64_t sub_255D4A9F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[1];
  v11[0] = *v2;
  v11[1] = v4;
  v5 = v2[3];
  v11[2] = v2[2];
  v11[3] = v5;
  a2[3] = a1;
  a2[4] = sub_255D4CDA8();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[1];
  v6[1] = *v2;
  v6[2] = v7;
  v8 = v2[3];
  v6[3] = v2[2];
  v6[4] = v8;
  return sub_255D4CDFC(v11, &v10);
}

uint64_t sub_255D4AA6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6650, &unk_255E3E130);
  a1[4] = sub_255D38950(&qword_27F7E6658, &qword_27F7E6650, &unk_255E3E130);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  *boxed_opaque_existential_1 = v3;
  boxed_opaque_existential_1[1] = v4;
  LODWORD(v4) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6660, &qword_255E4D0F0) + 44);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255D4AC30@<X0>(uint64_t *a1@<X8>)
{
  v11 = v1[6];
  v12 = v1[7];
  v13 = *(v1 + 16);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v5 = *v1;
  v6 = v1[1];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6680, &qword_255E3E170);
  a1[4] = sub_255D38950(&qword_27F7E6688, &qword_27F7E6680, &qword_255E3E170);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D99ED4(boxed_opaque_existential_1);
}

uint64_t sub_255D4AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _BYTE *), void (*a4)(uint64_t))
{
  v6 = *(v4 + 80);
  v7 = *(v4 + 112);
  v31 = *(v4 + 96);
  v32 = v7;
  v8 = *(v4 + 16);
  v9 = *(v4 + 48);
  v27 = *(v4 + 32);
  v28 = v9;
  v10 = *(v4 + 48);
  v11 = *(v4 + 80);
  v29 = *(v4 + 64);
  v30 = v11;
  v12 = *(v4 + 16);
  v26[0] = *v4;
  v26[1] = v12;
  v13 = *(v4 + 112);
  v23 = v31;
  v24 = v13;
  v19 = v27;
  v20 = v10;
  v21 = v29;
  v22 = v6;
  v33 = *(v4 + 128);
  v25 = *(v4 + 128);
  v17 = v26[0];
  v18 = v8;
  v14 = a3(v26, v16);
  a4(v14);
  return sub_255E3A038();
}

uint64_t sub_255D4ADFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(_OWORD *, char *)@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(v4 + 112);
  v18[6] = *(v4 + 96);
  v18[7] = v7;
  v19 = *(v4 + 128);
  v8 = *(v4 + 48);
  v18[2] = *(v4 + 32);
  v18[3] = v8;
  v9 = *(v4 + 80);
  v18[4] = *(v4 + 64);
  v18[5] = v9;
  v10 = *(v4 + 16);
  v18[0] = *v4;
  v18[1] = v10;
  a4[3] = a1;
  a4[4] = a2();
  v11 = swift_allocObject();
  *a4 = v11;
  v12 = *(v4 + 112);
  *(v11 + 112) = *(v4 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(v4 + 128);
  v13 = *(v4 + 48);
  *(v11 + 48) = *(v4 + 32);
  *(v11 + 64) = v13;
  v14 = *(v4 + 80);
  *(v11 + 80) = *(v4 + 64);
  *(v11 + 96) = v14;
  v15 = *(v4 + 16);
  *(v11 + 16) = *v4;
  *(v11 + 32) = v15;
  return a3(v18, v17);
}

uint64_t sub_255D4AEBC@<X0>(uint64_t *a1@<X8>)
{
  v11 = v1[6];
  v12 = v1[7];
  v13 = *(v1 + 16);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v5 = *v1;
  v6 = v1[1];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6698, &qword_255E3E178);
  a1[4] = sub_255D38950(&qword_27F7E66A0, &qword_27F7E6698, &qword_255E3E178);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D9A5D0(boxed_opaque_existential_1);
}

uint64_t sub_255D4AF74()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  sub_255D4DB24();

  return sub_255E3A038();
}

uint64_t sub_255D4B00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  a2[3] = a1;
  a2[4] = sub_255D4DB24();
  v10 = swift_allocObject();
  *a2 = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v9;
  v10[7] = v8;
}

uint64_t sub_255D4B0B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = *(v2 + 3);
  v11 = v2[5];
  v5 = sub_255D4DAD0();
  v6 = *(v5 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67E8, &qword_255E4DB90);
  a2[4] = sub_255D38950(&qword_27F7E67F0, &qword_27F7E67E8, &qword_255E4DB90);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v6(a1, v5);
}

uint64_t sub_255D4B198()
{
  sub_255D4DC70(v0, &v2);
  sub_255D4DBCC();
  return sub_255E3A038();
}

uint64_t sub_255D4B214@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2();
  v6 = swift_allocObject();
  *a4 = v6;

  return a3(v4, v6 + 16);
}

uint64_t sub_255D4B290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4DB78();
  v5 = *(v4 + 24);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6808, &qword_255E3E1F0);
  a2[4] = sub_255D38950(&qword_27F7E6810, &qword_27F7E6808, &qword_255E3E1F0);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1, v4);
}

uint64_t sub_255D4B348()
{
  sub_255D4DED8(v0, v2);
  sub_255D4DE30();
  return sub_255E3A038();
}

uint64_t sub_255D4B390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4DE30();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4DED8(v2, v4 + 16);
}

uint64_t sub_255D4B3EC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6820, &qword_255E3E1F8);
  a1[4] = sub_255D4DCCC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255D9D2F0(boxed_opaque_existential_1);
}

uint64_t sub_255D4B43C()
{
  sub_255D4EE14(v0, &v2);
  sub_255D4EDC0();
  return sub_255E3A038();
}

uint64_t sub_255D4B484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4EDC0();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4EE14(v2, v4 + 16);
}

uint64_t sub_255D4B4E0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6998, &qword_255E3E270);
  a1[4] = sub_255D4EB9C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255DA1088(boxed_opaque_existential_1);
}

uint64_t sub_255D4B530()
{
  sub_255D4D8B8(v0, v2);
  sub_255D4D864();
  return sub_255E3A038();
}

uint64_t sub_255D4B578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_255D4D864();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_255D4D8B8(v2, v4 + 16);
}

uint64_t sub_255D4B5D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255DA695C(&v5);
  v3 = v5;
  v4 = MEMORY[0x277CE11C0];
  a1[3] = MEMORY[0x277CE11C8];
  a1[4] = v4;
  *a1 = v3;
  return result;
}

uint64_t sub_255D4B638(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  a3();

  return sub_255E3A038();
}

uint64_t sub_255D4B6BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  a3[3] = a1;
  a3[4] = a2();
  *a3 = v6;
  a3[1] = v5;
  a3[2] = v7;
}

uint64_t sub_255D4B720@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_255E38808();
  a1[4] = sub_255D4EE70(&qword_27F7E69F0, MEMORY[0x277CDD680]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E387F8();
}

uint64_t sub_255D4B794()
{
  v1 = v0[5];
  v2 = v0[7];
  v16 = v0[6];
  v17 = v2;
  v3 = v0[7];
  v18 = v0[8];
  v4 = v0[1];
  v5 = v0[3];
  v12 = v0[2];
  v13 = v5;
  v6 = v0[3];
  v7 = v0[5];
  v14 = v0[4];
  v15 = v7;
  v8 = v0[1];
  v11[0] = *v0;
  v11[1] = v8;
  v10[15] = v16;
  v10[16] = v3;
  v10[17] = v0[8];
  v10[11] = v12;
  v10[12] = v6;
  v10[13] = v14;
  v10[14] = v1;
  v10[9] = v11[0];
  v10[10] = v4;
  sub_255D4D4F8(v11, v10);
  sub_255D4D4A4();
  return sub_255E3A038();
}

uint64_t sub_255D4B82C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[7];
  v15[6] = v2[6];
  v15[7] = v4;
  v15[8] = v2[8];
  v5 = v2[3];
  v15[2] = v2[2];
  v15[3] = v5;
  v6 = v2[5];
  v15[4] = v2[4];
  v15[5] = v6;
  v7 = v2[1];
  v15[0] = *v2;
  v15[1] = v7;
  a2[3] = a1;
  a2[4] = sub_255D4D4A4();
  v8 = swift_allocObject();
  *a2 = v8;
  v9 = v2[7];
  v8[7] = v2[6];
  v8[8] = v9;
  v8[9] = v2[8];
  v10 = v2[3];
  v8[3] = v2[2];
  v8[4] = v10;
  v11 = v2[5];
  v8[5] = v2[4];
  v8[6] = v11;
  v12 = v2[1];
  v8[1] = *v2;
  v8[2] = v12;
  return sub_255D4D4F8(v15, &v14);
}

unint64_t sub_255D4B8D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v22 = v1[8];
  v4 = v1[3];
  v16 = v1[2];
  v17 = v4;
  v5 = v1[5];
  v18 = v1[4];
  v19 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  sub_255E12E5C(&v11);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6720, &unk_255E3E1A0);
  result = sub_255D4D394();
  *(a1 + 32) = result;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 9) = v9;
  return result;
}

uint64_t sub_255D4B970()
{
  sub_255D4D688(v0, v2);
  sub_255D4D634();
  return sub_255E3A038();
}

uint64_t sub_255D4B9EC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2();
  v6 = swift_allocObject();
  *a4 = v6;

  return a3(v4, v6 + 16);
}

uint64_t sub_255D4BA68@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6748, &qword_255E3E1B0);
  a1[4] = sub_255D4D554();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_255E13EE8(boxed_opaque_existential_1);
}

uint64_t sub_255D4BB00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *(*(a1 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v5);
  sub_255D4EAE0(v9, &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_255D4EE70(a4, a5);
  return sub_255E3A038();
}

uint64_t sub_255D4BBF4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  a5[3] = a1;
  a5[4] = sub_255D4EE70(a2, a3);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return sub_255D4EAE0(v5, boxed_opaque_existential_1, a4);
}

uint64_t sub_255D4BC68()
{
  sub_255D4E898(v0, &v2);
  sub_255D4E8FC();
  return sub_255E3A038();
}

uint64_t sub_255D4BCE4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2();
  v6 = swift_allocObject();
  *a4 = v6;

  return a3(v4, v6 + 16);
}

uint64_t sub_255D4BD60@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  sub_255D4E898(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  *(v3 + 5) = v8[4];
  *(v3 + 6) = v4;
  *(v3 + 7) = v8[6];
  v5 = v8[1];
  *(v3 + 1) = v8[0];
  *(v3 + 2) = v5;
  v6 = v8[3];
  *(v3 + 3) = v8[2];
  *(v3 + 4) = v6;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6958, &unk_255E3E260);
  result = sub_255D38950(&qword_27F7E6960, &qword_27F7E6958, &unk_255E3E260);
  a1[4] = result;
  *a1 = sub_255D4E8F4;
  a1[1] = v3;
  return result;
}

uint64_t sub_255D4BE34()
{
  sub_255D4E9B8(v0, &v2);
  sub_255D4EA1C();
  return sub_255E3A038();
}

uint64_t sub_255D4BEB0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2();
  v6 = swift_allocObject();
  *a4 = v6;

  return a3(v4, v6 + 16);
}

uint64_t sub_255D4BF2C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  sub_255D4E9B8(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  *(v3 + 5) = v9[4];
  *(v3 + 6) = v4;
  v5 = v9[7];
  *(v3 + 7) = v9[6];
  *(v3 + 8) = v5;
  v6 = v9[1];
  *(v3 + 1) = v9[0];
  *(v3 + 2) = v6;
  v7 = v9[3];
  *(v3 + 3) = v9[2];
  *(v3 + 4) = v7;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6970, &qword_255E62DC0);
  result = sub_255D38950(&qword_27F7E6978, &qword_27F7E6970, &qword_255E62DC0);
  a1[4] = result;
  *a1 = sub_255D4EA14;
  a1[1] = v3;
  return result;
}

__n128 sub_255D4C0A8@<Q0>(void (*a1)(__n128 *__return_ptr)@<X2>, __n128 *a2@<X8>)
{
  a1(&v7);
  v3 = v8;
  v4 = sub_255D3849C();
  v6 = v7;
  a2[1].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
  a2[2].n128_u64[0] = v4;
  result = v6;
  *a2 = v6;
  a2[1].n128_u64[0] = v3;
  return result;
}

unint64_t sub_255D4C11C()
{
  result = qword_27F7E6570;
  if (!qword_27F7E6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6570);
  }

  return result;
}

unint64_t sub_255D4C1D8()
{
  result = qword_27F7E6578;
  if (!qword_27F7E6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6578);
  }

  return result;
}

unint64_t sub_255D4C22C()
{
  result = qword_27F7E6598;
  if (!qword_27F7E6598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6590, &qword_255E3DDA8);
    sub_255D4C8D4(&qword_27F7E6588, &qword_27F7E6580, &qword_255E3DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6598);
  }

  return result;
}

unint64_t sub_255D4C2D8(uint64_t a1)
{
  result = sub_255D447E8();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_255D4C3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D4C408(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_255D4C490()
{
  result = qword_27F7E65A0;
  if (!qword_27F7E65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65A0);
  }

  return result;
}

unint64_t sub_255D4C4E8()
{
  result = qword_27F7E65A8;
  if (!qword_27F7E65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65A8);
  }

  return result;
}

unint64_t sub_255D4C540()
{
  result = qword_27F7E65B0;
  if (!qword_27F7E65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65B0);
  }

  return result;
}

uint64_t sub_255D4C594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_255D34630(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_255D4C62C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D4C678()
{
  result = qword_27F7E65C0;
  if (!qword_27F7E65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65C0);
  }

  return result;
}

unint64_t sub_255D4C784()
{
  result = qword_27F7E65C8;
  if (!qword_27F7E65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65C8);
  }

  return result;
}

unint64_t sub_255D4C82C()
{
  result = qword_27F7E65E0;
  if (!qword_27F7E65E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E65D8, &unk_255E3E100);
    sub_255D4C8D4(&qword_27F7E65E8, &qword_27F7E65F0, &qword_255E43FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65E0);
  }

  return result;
}

uint64_t sub_255D4C8D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D4C93C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_255D4C9A0(a1, a2, a3);
  }

  else
  {
    sub_255D4C990(a1, a2, a3 & 1);
  }
}

uint64_t sub_255D4C990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255D4C9A0(uint64_t a1, uint64_t a2, char a3)
{
  sub_255D4C990(a1, a2, a3 & 1);
}

unint64_t sub_255D4C9DC()
{
  result = qword_27F7E65F8;
  if (!qword_27F7E65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E65F8);
  }

  return result;
}

unint64_t sub_255D4CA94()
{
  result = qword_27F7E6608;
  if (!qword_27F7E6608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6600, &qword_255E3E110);
    sub_255D38950(&qword_27F7E6610, &qword_27F7E6618, &qword_255E3E118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6608);
  }

  return result;
}

unint64_t sub_255D4CB44()
{
  result = qword_27F7E6620;
  if (!qword_27F7E6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6620);
  }

  return result;
}

void sub_255D4CB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    v5 = a4 & 1;

    sub_255D34870(a1, a2, a3, v5);
  }
}

unint64_t sub_255D4CC48()
{
  result = qword_27F7E6630;
  if (!qword_27F7E6630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6628, &unk_255E3E120);
    sub_255D38950(&qword_27F7E6638, &qword_27F7E6640, &qword_255E4D0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6630);
  }

  return result;
}

unint64_t sub_255D4CCF8()
{
  result = qword_27F7E6648;
  if (!qword_27F7E6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6648);
  }

  return result;
}

unint64_t sub_255D4CDA8()
{
  result = qword_27F7E6678;
  if (!qword_27F7E6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6678);
  }

  return result;
}

unint64_t sub_255D4CE58()
{
  result = qword_27F7E6690;
  if (!qword_27F7E6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6690);
  }

  return result;
}

unint64_t sub_255D4CF08()
{
  result = qword_27F7E66A8;
  if (!qword_27F7E66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66A8);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 96);
  if (v4 != 254)
  {
    if (v4 != 255)
    {
      sub_255D34870(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) & 1);
    }

    v5 = *(v0 + 128);
    if (v5 != 255)
    {
      sub_255D34870(*(v0 + 104), *(v0 + 112), *(v0 + 120), v5 & 1);
    }
  }

  v6 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

unint64_t sub_255D4D04C()
{
  result = qword_27F7E66B0;
  if (!qword_27F7E66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66B0);
  }

  return result;
}

unint64_t sub_255D4D0A0()
{
  result = qword_27F7E66C8;
  if (!qword_27F7E66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66C8);
  }

  return result;
}

unint64_t sub_255D4D0F4()
{
  result = qword_27F7E66D0;
  if (!qword_27F7E66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66D0);
  }

  return result;
}

unint64_t sub_255D4D148()
{
  result = qword_27F7E66E0;
  if (!qword_27F7E66E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66D8, &qword_255E3E188);
    sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
    sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66E0);
  }

  return result;
}

uint64_t sub_255D4D230(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D4D290()
{
  result = qword_27F7E6708;
  if (!qword_27F7E6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6708);
  }

  return result;
}

unint64_t sub_255D4D340()
{
  result = qword_27F7E6718;
  if (!qword_27F7E6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6718);
  }

  return result;
}

unint64_t sub_255D4D394()
{
  result = qword_27F7E6728;
  if (!qword_27F7E6728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6720, &unk_255E3E1A0);
    sub_255D4D420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6728);
  }

  return result;
}

unint64_t sub_255D4D420()
{
  result = qword_27F7E6730;
  if (!qword_27F7E6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6738, &unk_255E5BC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6730);
  }

  return result;
}

unint64_t sub_255D4D4A4()
{
  result = qword_27F7E6740;
  if (!qword_27F7E6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6740);
  }

  return result;
}

unint64_t sub_255D4D554()
{
  result = qword_27F7E6750;
  if (!qword_27F7E6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6748, &qword_255E3E1B0);
    sub_255D38950(&qword_27F7E6758, &qword_27F7E6760, &qword_255E3E1B8);
    sub_255D38950(&qword_27F7E6768, &qword_27F7E6770, &unk_255E3E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6750);
  }

  return result;
}

unint64_t sub_255D4D634()
{
  result = qword_27F7E6778;
  if (!qword_27F7E6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6778);
  }

  return result;
}

unint64_t sub_255D4D6E4()
{
  result = qword_27F7E6780;
  if (!qword_27F7E6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6780);
  }

  return result;
}

unint64_t sub_255D4D738()
{
  result = qword_27F7E6790;
  if (!qword_27F7E6790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6788, &qword_255E3E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6790);
  }

  return result;
}

unint64_t sub_255D4D7B4()
{
  result = qword_27F7E6798;
  if (!qword_27F7E6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6798);
  }

  return result;
}

unint64_t sub_255D4D864()
{
  result = qword_27F7E67A0;
  if (!qword_27F7E67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E67A0);
  }

  return result;
}

unint64_t sub_255D4D914()
{
  result = qword_27F7E67B0;
  if (!qword_27F7E67B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E67A8, &qword_255E3E1D8);
    sub_255D38950(&qword_27F7E67B8, &qword_27F7E67C0, &unk_255E3E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E67B0);
  }

  return result;
}

unint64_t sub_255D4D9CC()
{
  result = qword_27F7E67D0;
  if (!qword_27F7E67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E67D0);
  }

  return result;
}

unint64_t sub_255D4DA20()
{
  result = qword_27F7E67D8;
  if (!qword_27F7E67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E67D8);
  }

  return result;
}

unint64_t sub_255D4DAD0()
{
  result = qword_27F7E67E0;
  if (!qword_27F7E67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E67E0);
  }

  return result;
}

unint64_t sub_255D4DB24()
{
  result = qword_27F7E67F8;
  if (!qword_27F7E67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E67F8);
  }

  return result;
}

unint64_t sub_255D4DB78()
{
  result = qword_27F7E6800;
  if (!qword_27F7E6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6800);
  }

  return result;
}

unint64_t sub_255D4DBCC()
{
  result = qword_27F7E6818;
  if (!qword_27F7E6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6818);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_255D4DCCC()
{
  result = qword_27F7E6828;
  if (!qword_27F7E6828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6820, &qword_255E3E1F8);
    sub_255D4DD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6828);
  }

  return result;
}

unint64_t sub_255D4DD50()
{
  result = qword_27F7E6830;
  if (!qword_27F7E6830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6838, &qword_255E3E200);
    sub_255D38950(&qword_27F7E6840, &qword_27F7E6848, &qword_255E3E208);
    sub_255D38950(&qword_27F7E6850, &qword_27F7E6858, &qword_255E3E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6830);
  }

  return result;
}

unint64_t sub_255D4DE30()
{
  result = qword_27F7E6860;
  if (!qword_27F7E6860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6860);
  }

  return result;
}

uint64_t sub_255D4DE84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D2F870(a3);
  }

  else
  {
  }
}

unint64_t sub_255D4DF34()
{
  result = qword_27F7E6878;
  if (!qword_27F7E6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6878);
  }

  return result;
}

unint64_t sub_255D4DFE4()
{
  result = qword_27F7E6880;
  if (!qword_27F7E6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6880);
  }

  return result;
}

unint64_t sub_255D4E038()
{
  result = qword_27F7E6898;
  if (!qword_27F7E6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6898);
  }

  return result;
}

unint64_t sub_255D4E0E8()
{
  result = qword_27F7E68A0;
  if (!qword_27F7E68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68A0);
  }

  return result;
}

unint64_t sub_255D4E13C()
{
  result = qword_27F7E68B8;
  if (!qword_27F7E68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68B8);
  }

  return result;
}

unint64_t sub_255D4E1EC()
{
  result = qword_27F7E68C0;
  if (!qword_27F7E68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68C0);
  }

  return result;
}

unint64_t sub_255D4E240()
{
  result = qword_27F7E68D0;
  if (!qword_27F7E68D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E68C8, &unk_255E3E230);
    sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68D0);
  }

  return result;
}

unint64_t sub_255D4E2F0()
{
  result = qword_27F7E68D8;
  if (!qword_27F7E68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68D8);
  }

  return result;
}

unint64_t sub_255D4E344()
{
  result = qword_27F7E68E0;
  if (!qword_27F7E68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68E0);
  }

  return result;
}

uint64_t objectdestroy_43Tm(void (*a1)(void))
{
  v3 = v1[3];

  v4 = v1[4];

  if (v1[8])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 5);
  }

  if (v1[13])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
  }

  a1(v1[15]);
  v5 = v1[16];

  return MEMORY[0x2821FE8E8](v1, 144, 7);
}

unint64_t sub_255D4E474()
{
  result = qword_27F7E68F0;
  if (!qword_27F7E68F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E68E8, &qword_255E44080);
    sub_255D4E500();
    sub_255D4E584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68F0);
  }

  return result;
}

unint64_t sub_255D4E500()
{
  result = qword_27F7E68F8;
  if (!qword_27F7E68F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6900, &qword_255E3E240);
    sub_255D3849C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E68F8);
  }

  return result;
}

unint64_t sub_255D4E584()
{
  result = qword_27F7E6908;
  if (!qword_27F7E6908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6910, &qword_255E3E248);
    sub_255D4E608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6908);
  }

  return result;
}

unint64_t sub_255D4E608()
{
  result = qword_27F7E6918;
  if (!qword_27F7E6918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6920, &unk_255E3E250);
    sub_255D3849C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6918);
  }

  return result;
}

unint64_t sub_255D4E68C()
{
  result = qword_27F7E6928;
  if (!qword_27F7E6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6928);
  }

  return result;
}

uint64_t sub_255D4E6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  if (a4)
  {

    return a5(a3);
  }

  else
  {
  }
}

unint64_t sub_255D4E7A0()
{
  result = qword_27F7E6930;
  if (!qword_27F7E6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6930);
  }

  return result;
}

unint64_t sub_255D4E7F4()
{
  result = qword_27F7E6948;
  if (!qword_27F7E6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6948);
  }

  return result;
}

uint64_t objectdestroy_40Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_255D4E8FC()
{
  result = qword_27F7E6968;
  if (!qword_27F7E6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6968);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 96);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v2);
  }

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_255D4EA1C()
{
  result = qword_27F7E6980;
  if (!qword_27F7E6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6980);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 96);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v2);
  }

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D4EAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_255D4EB48()
{
  result = qword_27F7E6990;
  if (!qword_27F7E6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6990);
  }

  return result;
}

unint64_t sub_255D4EB9C()
{
  result = qword_27F7E69A0;
  if (!qword_27F7E69A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6998, &qword_255E3E270);
    sub_255D4EC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E69A0);
  }

  return result;
}

unint64_t sub_255D4EC28()
{
  result = qword_27F7E69A8;
  if (!qword_27F7E69A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E69B0, &qword_255E3E278);
    sub_255D4ECE0();
    sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E69A8);
  }

  return result;
}

unint64_t sub_255D4ECE0()
{
  result = qword_27F7E69B8;
  if (!qword_27F7E69B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E69C0, &qword_255E3E280);
    sub_255D38950(&qword_27F7E69C8, &qword_27F7E69D0, &qword_255E3E288);
    sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E69B8);
  }

  return result;
}

unint64_t sub_255D4EDC0()
{
  result = qword_27F7E69E8;
  if (!qword_27F7E69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E69E8);
  }

  return result;
}

uint64_t sub_255D4EE70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D4EEB8()
{
  result = qword_27F7E69F8;
  if (!qword_27F7E69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E69F8);
  }

  return result;
}

unint64_t sub_255D4EF0C()
{
  result = qword_27F7E6A00;
  if (!qword_27F7E6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A00);
  }

  return result;
}

unint64_t sub_255D4EF60()
{
  result = qword_27F7E6A10;
  if (!qword_27F7E6A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A08, &unk_255E4A890);
    sub_255D38950(&qword_27F7E6A18, &qword_27F7E6A20, &qword_255E3E2A0);
    sub_255D4E240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A10);
  }

  return result;
}

unint64_t sub_255D4F024()
{
  result = qword_27F7E6A28;
  if (!qword_27F7E6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A28);
  }

  return result;
}

uint64_t objectdestroy_58Tm(void (*a1)(void, void, void))
{
  v3 = *(v1 + 24);

  if (*(v1 + 56) <= 0xFDu)
  {
    a1(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  }

  v4 = *(v1 + 64);

  v5 = *(v1 + 72);

  return MEMORY[0x2821FE8E8](v1, 88, 7);
}

uint64_t objectdestroy_46Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255D4F164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D4F1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_255D4F238@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 64);
  if (v6 > 0xFD)
  {
    goto LABEL_6;
  }

  v8 = a1;
  v15 = *(v3 + 40);
  v16 = *(v3 + 48);
  v17 = *(v3 + 56);
  v18 = *(v3 + 64);
  sub_255D3E5A8(v15, v16, v17, v6);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {

    sub_255D38060(v15, v16, v17, v18);
LABEL_5:
    a1 = v8;
LABEL_6:
    v10 = a1[4];
    v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v11);
    sub_255E3A228();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
    a3[3] = sub_255E38AE8();
    sub_255D4FC30();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
    sub_255D4FC94();
    return sub_255E39B88();
  }

  sub_255D38060(v15, v16, v17, v18);
  v9 = sub_255E0C470();
  if (v9 == 9)
  {
    goto LABEL_5;
  }

  v13 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v14 = sub_255E3A248();
      }

      else
      {
        v14 = sub_255E3A208();
      }
    }

    else if (v9)
    {
      v14 = sub_255E3A238();
    }

    else
    {
      v14 = sub_255E3A228();
    }
  }

  else if (v9 <= 5)
  {
    if (v9 == 4)
    {
      v14 = sub_255E3A218();
    }

    else
    {
      v14 = sub_255E3A1C8();
    }
  }

  else if (v9 == 6)
  {
    v14 = sub_255E3A1D8();
  }

  else if (v9 == 7)
  {
    v14 = sub_255E3A1E8();
  }

  else
  {
    v14 = sub_255E3A1F8();
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
  a3[3] = sub_255E38AE8();
  sub_255D4FC30();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255D4FC94();
  return sub_255E39B88();
}

uint64_t sub_255D4F5A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4FB3C(a1, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D4FBAC(v7);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255D4F630()
{
  v1 = *v0;
  sub_255E3AD98();
  MEMORY[0x259C4F100](v1);
  return sub_255E3ADD8();
}

uint64_t sub_255D4F678()
{
  v1 = *v0;
  sub_255E3AD98();
  MEMORY[0x259C4F100](v1);
  return sub_255E3ADD8();
}

uint64_t sub_255D4F6BC()
{
  if (*v0)
  {
    result = 0x6E656D6E67696C61;
  }

  else
  {
    result = 1802723693;
  }

  *v0;
  return result;
}

uint64_t sub_255D4F6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v5 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255D4F7D8(uint64_t a1)
{
  v2 = sub_255D4FD10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D4F814(uint64_t a1)
{
  v2 = sub_255D4FD10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D4F850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A48, &qword_255E3E568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D4FD10();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = 0;
  sub_255D447E8();
  sub_255E3ABC8();
  sub_255D4FB3C(&v17, v18);
  sub_255D4C1A8(&v14);
  v13 = 1;
  sub_255D3EA0C();
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v19 = v14;
  v20 = v15;
  v21 = v16;
  sub_255D4FD64(v18, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D4FD9C(v18);
}

unint64_t sub_255D4FAC0(uint64_t a1)
{
  result = sub_255D4FAE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4FAE8()
{
  result = qword_27F7E6A30;
  if (!qword_27F7E6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A30);
  }

  return result;
}

uint64_t sub_255D4FB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D4FBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D4FC30()
{
  result = qword_27F7E6A40;
  if (!qword_27F7E6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A40);
  }

  return result;
}

unint64_t sub_255D4FC94()
{
  result = qword_27F7E66E8;
  if (!qword_27F7E66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66E8);
  }

  return result;
}

unint64_t sub_255D4FD10()
{
  result = qword_27F7E6A50;
  if (!qword_27F7E6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A50);
  }

  return result;
}

unint64_t sub_255D4FDE0()
{
  result = qword_27F7E6A58;
  if (!qword_27F7E6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A58);
  }

  return result;
}

unint64_t sub_255D4FE38()
{
  result = qword_27F7E6A60;
  if (!qword_27F7E6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A60);
  }

  return result;
}

unint64_t sub_255D4FE90()
{
  result = qword_27F7E6A68;
  if (!qword_27F7E6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6A68);
  }

  return result;
}

uint64_t sub_255D4FF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_255D5D0A4;

  return sub_255D5AAD8(a2, a3);
}

uint64_t RemoteAction.performAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_255D5D0A4;

  return sub_255D5AAD8(a2, a3);
}

uint64_t sub_255D50074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255D50138;

  return (sub_255D5ABF0)(a1, a3, a4);
}

uint64_t sub_255D50138()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t RemoteAction.performAction(with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255D5D0A4;

  return (sub_255D5ABF0)(a1, a3, a4);
}

uint64_t sub_255D50308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0x6974634165766F4DLL, 0xEA00000000006E6FLL, v20);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v3[3];
  *(v16 + 64) = v3[2];
  *(v16 + 80) = v17;
  *(v16 + 96) = v3[4];
  *(v16 + 105) = *(v3 + 73);
  v18 = v3[1];
  *(v16 + 32) = *v3;
  *(v16 + 48) = v18;
  *(v16 + 128) = a1;
  *(v16 + 136) = a2;
  sub_255D5CB60(v3, v20);

  sub_255D51B90(0, 0, v9, &unk_255E3EFF8, v16);
}

uint64_t sub_255D50580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0x63416574656C6544, 0xEC0000006E6F6974, v19);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v3[1];
  *(v16 + 32) = *v3;
  *(v16 + 48) = v17;
  *(v16 + 64) = v3[2];
  *(v16 + 73) = *(v3 + 41);
  *(v16 + 96) = a1;
  *(v16 + 104) = a2;
  sub_255D5CC94(v3, v19);

  sub_255D51B90(0, 0, v9, &unk_255E3F018, v16);
}

uint64_t sub_255D507F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0x634164616F6C6552, 0xEC0000006E6F6974, v23);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = *(v3 + 144);
  *(v16 + 160) = *(v3 + 128);
  *(v16 + 176) = v17;
  *(v16 + 192) = *(v3 + 160);
  v18 = *(v3 + 80);
  *(v16 + 96) = *(v3 + 64);
  *(v16 + 112) = v18;
  v19 = *(v3 + 112);
  *(v16 + 128) = *(v3 + 96);
  *(v16 + 144) = v19;
  v20 = *(v3 + 16);
  *(v16 + 32) = *v3;
  *(v16 + 48) = v20;
  v21 = *(v3 + 48);
  *(v16 + 64) = *(v3 + 32);
  *(v16 + 80) = v21;
  *(v16 + 200) = a1;
  *(v16 + 208) = a2;
  sub_255D5C7BC(v3, v23);

  sub_255D51B90(0, 0, v9, &unk_255E3EF98, v16);
}

uint64_t sub_255D50A80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0x417373696D736944, 0xED00006E6F697463, &v19);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v3;
  v16[5] = a1;
  v16[6] = a2;

  sub_255D51B90(0, 0, v9, &unk_255E3E930, v16);
}

uint64_t sub_255D50CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0x6F6974616D696E41, 0xEF6E6F697463416ELL, v20);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v3[3];
  *(v16 + 64) = v3[2];
  *(v16 + 80) = v17;
  *(v16 + 89) = *(v3 + 57);
  v18 = v3[1];
  *(v16 + 32) = *v3;
  *(v16 + 48) = v18;
  *(v16 + 112) = a1;
  *(v16 + 120) = a2;
  sub_255D5C9C8(v3, v20);

  sub_255D51B90(0, 0, v9, &unk_255E3EFD8, v16);
}

uint64_t sub_255D50F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0xD000000000000010, 0x8000000255E65CF0, v19);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v3[1];
  *(v16 + 32) = *v3;
  *(v16 + 48) = v17;
  *(v16 + 64) = v3[2];
  *(v16 + 73) = *(v3 + 41);
  *(v16 + 96) = a1;
  *(v16 + 104) = a2;
  sub_255D5CDC8(v3, v19);

  sub_255D51B90(0, 0, v9, &unk_255E3F038, v16);
}

uint64_t sub_255D511C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_255D378C0(0xD000000000000011, 0x8000000255E65CD0, v24);
    _os_log_impl(&dword_255D2E000, v11, v12, "%s has not implemented a synchronous action. Running async.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v15 = sub_255E3A778();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = *(v3 + 144);
  *(v16 + 160) = *(v3 + 128);
  *(v16 + 176) = v17;
  v18 = *(v3 + 160);
  v19 = *(v3 + 80);
  *(v16 + 96) = *(v3 + 64);
  *(v16 + 112) = v19;
  v20 = *(v3 + 112);
  *(v16 + 128) = *(v3 + 96);
  *(v16 + 144) = v20;
  v21 = *(v3 + 16);
  *(v16 + 32) = *v3;
  *(v16 + 48) = v21;
  v22 = *(v3 + 48);
  *(v16 + 64) = *(v3 + 32);
  *(v16 + 80) = v22;
  *(v16 + 192) = v18;
  *(v16 + 200) = a1;
  *(v16 + 208) = a2;
  sub_255D5C4D4(v3, v24);

  sub_255D51B90(0, 0, v9, &unk_255E3EF70, v16);
}

uint64_t sub_255D5144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v30 - v13;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v15 = sub_255E386A8();
  __swift_project_value_buffer(v15, qword_27F8152D8);
  v16 = sub_255E38688();
  v17 = sub_255E3A848();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[1] = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30[0] = a5;
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = v20;
    v31 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_255D378C0(0x6E6F697463416649, 0xE800000000000000, &v31);
    _os_log_impl(&dword_255D2E000, v16, v17, "%s has not implemented a synchronous action. Running async.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v26 = v25;
    a4 = v24;
    a3 = v23;
    a2 = v22;
    a1 = v21;
    a5 = v30[0];
    MEMORY[0x259C4F9E0](v26, -1, -1);
    MEMORY[0x259C4F9E0](v19, -1, -1);
  }

  v27 = sub_255E3A778();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a3;
  v28[5] = a4;
  v28[6] = a5;
  v28[7] = a1;
  v28[8] = a2;

  sub_255D51B90(0, 0, v14, &unk_255E3EFB8, v28);
}

uint64_t RemoteAction.performSynchronousAction(with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v5 = v4;
  v40 = a4;
  v6 = a3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v35 - v12;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v13 = sub_255E386A8();
  __swift_project_value_buffer(v13, qword_27F8152D8);
  v14 = sub_255E38688();
  v15 = sub_255E3A848();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v16;
    v37 = swift_slowAlloc();
    v42 = v37;
    *v16 = 136315138;
    v17 = sub_255E3AEA8();
    v19 = v9;
    v20 = v8;
    v21 = v6;
    v22 = v5;
    v23 = a2;
    v24 = sub_255D378C0(v17, v18, &v42);

    v25 = v36;
    *(v36 + 1) = v24;
    a2 = v23;
    v5 = v22;
    v6 = v21;
    v8 = v20;
    v9 = v19;
    _os_log_impl(&dword_255D2E000, v14, v15, "%s has not implemented a synchronous action. Running async.", v25, 0xCu);
    v26 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x259C4F9E0](v26, -1, -1);
    MEMORY[0x259C4F9E0](v25, -1, -1);
  }

  v27 = sub_255E3A778();
  v28 = v38;
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  v29 = v39;
  (*(v8 + 16))(v39, v5, v6);
  v30 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = v40;
  *(v32 + 4) = v6;
  *(v32 + 5) = v33;
  (*(v8 + 32))(&v32[v30], v29, v6);
  *&v32[v31] = v41;
  *&v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_255D51B90(0, 0, v28, &unk_255E3E6C8, v32);
}

uint64_t sub_255D51A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a8 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_255D5D0A4;

  return v17(a5, a6, a7, a8);
}

uint64_t sub_255D51B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_255D3957C(a3, v24 - v10, &qword_27F7E6A70, &unk_255E559E0);
  v12 = sub_255E3A778();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_255D395E4(v11, &qword_27F7E6A70, &unk_255E559E0);
  }

  else
  {
    sub_255E3A768();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_255E3A738();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_255E3A548() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t Array<A>.performAllAsync(store:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_255E3A778();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;

  sub_255D52540(0, 0, v7, &unk_255E3E6D8, v9);
}

uint64_t sub_255D51FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D52058, 0, 0);
}

uint64_t sub_255D52058()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = *(v0 + 144);
      v5 = *(v0 + 152);
      v6 = *(v0 + 136);
      sub_255D3CE1C(v3, v0 + 16);
      v7 = sub_255E3A778();
      v8 = *(v7 - 8);
      (*(v8 + 56))(v5, 1, 1, v7);
      sub_255D3CE1C(v0 + 16, v0 + 56);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      sub_255D34630((v0 + 56), (v9 + 4));
      v9[9] = v6;
      sub_255D3957C(v5, v4, &qword_27F7E6A70, &unk_255E559E0);
      LODWORD(v4) = (*(v8 + 48))(v4, 1, v7);

      v10 = *(v0 + 144);
      if (v4 == 1)
      {
        sub_255D395E4(*(v0 + 144), &qword_27F7E6A70, &unk_255E559E0);
      }

      else
      {
        sub_255E3A768();
        (*(v8 + 8))(v10, v7);
      }

      v12 = v9[2];
      v11 = v9[3];
      swift_unknownObjectRetain();

      if (v12)
      {
        swift_getObjectType();
        v13 = sub_255E3A738();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      sub_255D395E4(*(v0 + 152), &qword_27F7E6A70, &unk_255E559E0);
      if (v15 | v13)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v13;
        *(v0 + 120) = v15;
      }

      swift_task_create();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v17 = *(v0 + 144);
  v16 = *(v0 + 152);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_255D52300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_255D52320, 0, 0);
}

uint64_t sub_255D52320()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_255D5244C;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t sub_255D5244C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_255D52540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_255D3957C(a3, v27 - v11, &qword_27F7E6A70, &unk_255E559E0);
  v13 = sub_255E3A778();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_255D395E4(v12, &qword_27F7E6A70, &unk_255E559E0);
  }

  else
  {
    sub_255E3A768();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_255E3A738();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_255E3A548() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);

      return v25;
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

  sub_255D395E4(a3, &qword_27F7E6A70, &unk_255E559E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t Array<A>.performAllAsync(store:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_255E3A778();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;

  sub_255D52540(0, 0, v9, &unk_255E5A580, v11);
}

uint64_t sub_255D52970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D52A1C, 0, 0);
}

uint64_t sub_255D52A1C()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v21 = v3;
      v22 = v2;
      v5 = *(v0 + 152);
      v4 = *(v0 + 160);
      v7 = *(v0 + 136);
      v6 = *(v0 + 144);
      sub_255D3CE1C(v3, v0 + 16);
      v8 = sub_255E3A778();
      v9 = *(v8 - 8);
      (*(v9 + 56))(v4, 1, 1, v8);
      sub_255D3CE1C(v0 + 16, v0 + 56);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      sub_255D34630((v0 + 56), (v10 + 4));
      v10[9] = v7;
      v10[10] = v6;
      sub_255D3957C(v4, v5, &qword_27F7E6A70, &unk_255E559E0);
      LODWORD(v4) = (*(v9 + 48))(v5, 1, v8);

      v11 = *(v0 + 152);
      if (v4 == 1)
      {
        sub_255D395E4(*(v0 + 152), &qword_27F7E6A70, &unk_255E559E0);
      }

      else
      {
        sub_255E3A768();
        (*(v9 + 8))(v11, v8);
      }

      v13 = v10[2];
      v12 = v10[3];
      swift_unknownObjectRetain();

      if (v13)
      {
        swift_getObjectType();
        v14 = sub_255E3A738();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      sub_255D395E4(*(v0 + 160), &qword_27F7E6A70, &unk_255E559E0);
      if (v16 | v14)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v14;
        *(v0 + 120) = v16;
      }

      swift_task_create();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v3 = v21 + 40;
      v2 = v22 - 1;
    }

    while (v22 != 1);
  }

  v18 = *(v0 + 152);
  v17 = *(v0 + 160);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_255D52CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_255D52D00, 0, 0);
}

uint64_t sub_255D52D00()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_255D52E2C;
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_255D52E2C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Array<A>.performAllSync(store:localStore:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = a3 + 32;
    do
    {
      sub_255D3CE1C(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 40))(v6, a2, v8, v9);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
      if (v3)
      {
        break;
      }

      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t RemoteActionBox.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v12 = sub_255E3AAE8();
  v13 = __swift_project_value_buffer(v12, qword_27F8152F0);
  if (!*(v11 + 16) || (v14 = sub_255D3CA98(v13), (v15 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v11 + 56) + 32 * v14, &v47);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError();
    sub_255D5AFE4(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v41 = v5;
  v52 = v6;
  v40 = a2;
  v16 = v46;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v39 = v16;
    v20 = v41;
    v21 = sub_255E3ABD8();
    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);
      v38 = *(v21 + 48);
      v37 = *(v21 + 56);
      swift_bridgeObjectRetain_n();

      v24 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v18;
      v26 = swift_allocObject();
      *(inited + 32) = v26;
      *(v26 + 16) = v22;
      *(v26 + 24) = v23;
      *(v26 + 32) = v38;
      *(v26 + 40) = v37;
      *&v47 = v24;

      sub_255D3CDA0(inited);
      v27 = v22;
      v28 = sub_255E08654(v22, v23);
      v29 = v52;
      v36 = v30;
      v35 = v28;

      v42 = v27;
      v43 = v23;
      v44 = v38;
      v45 = v37;
      sub_255E3AB78();

      v31 = v36;
      v48 = v35;
      v49 = v36;
      __swift_allocate_boxed_opaque_existential_1(&v47);
      v32 = *(*(v31 + 8) + 8);
      sub_255E3A7B8();
      (*(v29 + 8))(v9, v20);

      sub_255D34630(&v47, v50);
      v33 = v50[1];
      v34 = v40;
      *v40 = v50[0];
      v34[1] = v33;
      *(v34 + 4) = v51;
    }

    else
    {

      type metadata accessor for DynamicKeyError();
      sub_255D5AFE4(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v52 + 8))(v9, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D53600()
{
  v1 = sub_255E3A3B8();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255E3A3D8();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v9 = sub_255E3A878();
  aBlock[4] = sub_255D5B874;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255D5D0C8;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  sub_255E3A3C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v8, v4, v10);
  _Block_release(v10);

  (*(v13 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v12);
}

uint64_t sub_255D538E0(uint64_t a1)
{
  v2 = sub_255E38918();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v7 = sub_255E386A8();
  __swift_project_value_buffer(v7, qword_27F8152D8);
  v8 = sub_255E38688();
  v9 = sub_255E3A868();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_255D2E000, v8, v9, "Dismiss Action", v10, 2u);
    MEMORY[0x259C4F9E0](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC6LiftUI13DismissAction_dismissAction;
  swift_beginAccess();
  result = (*(v3 + 48))(a1 + v11, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v6, a1 + v11, v2);
    sub_255E38908();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_255D53ACC()
{
  sub_255D395E4(v0 + OBJC_IVAR____TtC6LiftUI13DismissAction_dismissAction, &qword_27F7E6B00, &qword_255E3E970);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_255D53B40()
{
  v2 = *v0;
  sub_255D53600();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_255D53C0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_255E38918();
  sub_255D5AFE4(&qword_27F7E6AF8, MEMORY[0x277CDD848]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_255E39A98();
}

uint64_t sub_255D53D64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC6LiftUI13DismissAction_dismissAction;
  v8 = sub_255E38918();
  result = (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *a2 = v6;
  return result;
}

void sub_255D53DF8(uint64_t a1)
{
  v3 = *v1;
  v355 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v358 = *(v1 + 40);
  v359 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v360 = v8;
  v357 = v6;
  if (!*v1)
  {
LABEL_244:
    if (v6 != 255 && v8 != 255)
    {
      v306 = v8;
      sub_255D5C240(v355, v5, v4, v6);
      sub_255D5C240(v358, v359, v7, v306);
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v307 = sub_255E386A8();
      __swift_project_value_buffer(v307, qword_27F8152D8);
      v308 = sub_255E38688();
      v309 = sub_255E3A868();
      if (os_log_type_enabled(v308, v309))
      {
        v310 = swift_slowAlloc();
        *v310 = 0;
        _os_log_impl(&dword_255D2E000, v308, v309, "LiftUI Set Action with reference", v310, 2u);
        MEMORY[0x259C4F9E0](v310, -1, -1);
      }

      sub_255DDEBF8(a1, v358, v359, v7, v360 & 1, &v382);
      v311 = v382;
      v382 = v355;
      v383 = v5;
      v384 = v4;
      v385 = v357 & 1;
      v386 = v311;
      RemoteStateStore.set(reference:value:)(&v382, &v386);
      sub_255D5C2F4(v358, v359, v7, v360);

      sub_255D5C2F4(v355, v5, v4, v357);
    }

    return;
  }

  v354 = *(v1 + 56);
  if (qword_27F7E5E80 != -1)
  {
LABEL_253:
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);

  v10 = sub_255E38688();
  v11 = sub_255E3A868();

  v361 = a1;
  v351 = v5;
  v352 = v4;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v377 = swift_slowAlloc();
    v382 = v377;
    *v12 = 136315138;
    v388 = sub_255D570D4(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
    sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60);
    v13 = sub_255E3A498();
    v15 = v14;

    v16 = sub_255D378C0(v13, v15, &v382);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_255D2E000, v10, v11, "Set Action: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v377);
    MEMORY[0x259C4F9E0](v377, -1, -1);
    MEMORY[0x259C4F9E0](v12, -1, -1);
  }

  v17 = v3 + 64;
  v18 = 1 << *(v3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v4 = v19 & *(v3 + 64);
  v356 = qword_27F7E85F8;
  v353 = qword_27F7E8600;
  v20 = (v18 + 63) >> 6;

  v5 = 0;
  v370 = v3;
  v362 = v20;
  for (i = v3 + 64; ; v17 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v4)
        {
          while (1)
          {
            v24 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            if (v24 >= v20)
            {

              v5 = v351;
              v4 = v352;
              v6 = v357;
              v7 = v354;
              v8 = v360;
              goto LABEL_244;
            }

            v4 = *(v17 + 8 * v24);
            ++v5;
            if (v4)
            {
              v5 = v24;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_253;
        }

LABEL_16:
        v25 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v26 = v25 | (v5 << 6);
        v27 = (*(v370 + 48) + 16 * v26);
        v3 = v27[1];
        v28 = *(v370 + 56) + 32 * v26;
        v22 = *v28;
        v29 = *(v28 + 8);
        v30 = *(v28 + 16);
        v371 = *(v28 + 24);
        v376 = v30;
        v378 = *v27;
        if ((v371 & 1) == 0)
        {
          sub_255D5C258(v22, v29, v30, 0);
          sub_255D5C258(v22, v29, v30, 0);

          v57 = v22;
          v35 = v29;
          v31 = v3;
          goto LABEL_31;
        }

        v369 = v27[1];
        v372 = *v28;
        v374 = *(v28 + 8);
        if ((~v30 & 0xF000000000000007) == 0)
        {
          v3 = *(a1 + v356);
          v31 = v27[1];
          if (!v3)
          {
            v35 = *(v28 + 8);
            sub_255D5C258(v22, v374, *(v28 + 16), 1);

            goto LABEL_58;
          }

          swift_beginAccess();
          v32 = *(a1 + v353);
          v33 = *(v32 + 16);
          v34 = v30;
          v35 = v374;
          sub_255D5C258(v22, v374, v34, 1);

          if (!v33 || (v36 = sub_255D3CA20(v22, v374), (v37 & 1) == 0))
          {
            swift_endAccess();

            v20 = v362;
            goto LABEL_58;
          }

          v38 = *(v32 + 56) + 32 * v36;
          v40 = *v38;
          v39 = *(v38 + 8);
          v41 = *(v38 + 16);
          v42 = *(v38 + 24);
          swift_endAccess();
          v20 = v362;
          if ((v42 & 1) == 0)
          {
            sub_255D5C258(v40, v39, v41, 0);

            v389[0] = v40;
            v123 = v40;
            v22 = v372;
            v35 = v374;
            v31 = v369;
            goto LABEL_79;
          }

          v347 = v39;
          v349 = v40;
          v345 = v41;
          if ((~v41 & 0xF000000000000007) == 0)
          {
            v43 = *(v3 + qword_27F7E85F8);
            if (v43)
            {
              v44 = qword_27F7E8600;
              swift_beginAccess();
              v45 = *(v3 + v44);
              v46 = *(v45 + 16);
              sub_255D5C258(v40, v347, v41, 1);

              if (v46)
              {
                v47 = sub_255D3CA20(v40, v347);
                if (v48)
                {
                  v49 = *(v45 + 56) + 32 * v47;
                  v50 = *(v49 + 8);
                  v341 = *v49;
                  v51 = *(v49 + 16);
                  v52 = *(v49 + 24);
                  swift_endAccess();
                  v20 = v362;
                  if ((v52 & 1) == 0)
                  {
                    sub_255D5C258(v341, v50, v51, 0);

                    v215 = v341;
                    v380 = v341;
                    v22 = v372;
                    v35 = v374;
                    v31 = v369;
                    goto LABEL_153;
                  }

                  v333 = v51;
                  v337 = v50;
                  v35 = v374;
                  if ((~v51 & 0xF000000000000007) == 0)
                  {

                    sub_255D34858(v51);
                    RemoteStateStore.subscript.getter(v341, v337, &v382);
                    v53 = v382;
                    v22 = v372;
                    if ((~v382 & 0xF000000000000007) != 0)
                    {
                      sub_255D5C30C(v382);
                      sub_255D5C324(v53);

                      sub_255D4DE84(v341, v337, v51, 1);
                      v380 = v53;
                      v215 = v53;
                      v31 = v369;
                      goto LABEL_153;
                    }

                    sub_255D5C324(v382);
                    sub_255D5C33C();
                    v54 = swift_allocError();
                    *v55 = v341;
                    *(v55 + 8) = v337;
                    *(v55 + 16) = &type metadata for DecodableState;
                    *(v55 + 32) = 0;
                    swift_willThrow();
                    a1 = v361;

                    v31 = v369;
                    v56 = v333;
                    goto LABEL_222;
                  }

                  v234 = *(v43 + qword_27F7E85F8);
                  v235 = v43;
                  v22 = v372;
                  v332 = v235;
                  if (v234)
                  {
                    v236 = qword_27F7E8600;
                    swift_beginAccess();
                    v237 = *(v235 + v236);
                    v322 = *(v237 + 16);
                    v238 = v337;
                    sub_255D5C258(v341, v337, v51, 1);
                    sub_255D34858(v51);
                    v327 = v234;

                    v31 = v369;
                    if (v322)
                    {
                      v239 = sub_255D3CA20(v341, v337);
                      if (v240)
                      {
                        v241 = *(v237 + 56) + 32 * v239;
                        v242 = *v241;
                        v243 = *(v241 + 8);
                        v244 = *(v241 + 16);
                        v245 = *(v241 + 24);
                        swift_endAccess();
                        sub_255D5C258(v242, v243, v244, v245);
                        sub_255DDEBF8(v327, v242, v243, v244, v245, &v382);

                        sub_255D4DE84(v242, v243, v244, v245);
                        v301 = v382;
                        v20 = v362;
                        v22 = v372;
                        v35 = v374;
                        v31 = v369;
LABEL_219:
                        if ((~v301 & 0xF000000000000007) != 0)
                        {
                          sub_255DE08EC(v301, v332, v333, &v379);
                          sub_255D5C324(v301);
                          sub_255D2F870(v333);

                          sub_255D4DE84(v341, v337, v333, 1);
                          v215 = v379;
                          v380 = v379;
                          a1 = v361;
                          goto LABEL_153;
                        }

                        sub_255D5C33C();
                        v366 = swift_allocError();
                        *v293 = v341;
                        *(v293 + 8) = v337;
                        *(v293 + 16) = &type metadata for DecodableState;
                        *(v293 + 32) = 0;
                        swift_willThrow();

                        v56 = v333;
                        sub_255D2F870(v333);

                        a1 = v361;
LABEL_222:

                        sub_255D4DE84(v341, v337, v56, 1);
                        v181 = v347;
LABEL_114:
                        v382 = v349;
                        v383 = v181;
                        v182 = *(*v3 + 112);
                        swift_beginAccess();
                        v183 = *(v3 + v182);
                        if (*(v183 + 16))
                        {

                          v184 = sub_255D3CA20(v349, v347);
                          if (v185)
                          {
                            v186 = *(*(v183 + 56) + 8 * v184);

                            MEMORY[0x28223BE20](v187);
                            KeyPath = swift_getKeyPath();
                            MEMORY[0x28223BE20](KeyPath);
                            swift_getKeyPath();
                            sub_255E38728();

                            if ((v186 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_260;
                            }

                            v20 = v362;
                            v22 = v372;
                            if (v186 >= *(v379 + 16))
                            {
                              goto LABEL_264;
                            }

                            v380 = *(v379 + 8 * v186 + 32);

                            v35 = v374;
                            v31 = v369;
                            goto LABEL_152;
                          }
                        }

                        v211 = *(v3 + *(*v3 + 120));
                        if (v211)
                        {
                          (*(*v211 + 248))(&v380, &v382);
                        }

                        else
                        {
                          v380 = 0xF000000000000007;
                        }

LABEL_152:
                        v215 = v380;
LABEL_153:
                        if ((~v215 & 0xF000000000000007) != 0)
                        {
                          v344 = v215;
                          sub_255D5C30C(v215);
                          sub_255D5C324(v344);

                          sub_255D4DE84(v349, v347, v345, 1);
                          v123 = v344;
                          v389[0] = v344;
                          goto LABEL_79;
                        }

                        sub_255D5C324(v215);
                        sub_255D5C33C();
                        v216 = v22;
                        v217 = v35;
                        v218 = swift_allocError();
                        v219 = v347;
                        *v220 = v349;
                        *(v220 + 8) = v347;
                        *(v220 + 16) = &type metadata for DecodableState;
                        *(v220 + 32) = 0;
                        swift_willThrow();
                        a1 = v361;

                        v221 = v218;
                        v35 = v217;
                        v22 = v216;
                        v31 = v369;

                        goto LABEL_166;
                      }
                    }

                    swift_endAccess();

                    v20 = v362;
                    v279 = v341;
                  }

                  else
                  {
                    v238 = v337;
                    v279 = v341;
                    sub_255D5C258(v341, v337, v51, 1);
                    sub_255D34858(v51);
                    v31 = v369;
                  }

                  sub_255DE3530(v279, v238, &v382);
                  v301 = v382;
                  goto LABEL_219;
                }
              }

              swift_endAccess();

              v20 = v362;
            }

            else
            {

              sub_255D34858(v41);
            }

            v22 = v372;
            v35 = v374;
            v181 = v347;
            v31 = v369;
            goto LABEL_114;
          }

          v130 = *(v3 + qword_27F7E85F8);
          if (v130)
          {
            v131 = qword_27F7E8600;
            swift_beginAccess();
            v132 = *(v3 + v131);
            v133 = *(v132 + 16);
            v134 = v40;
            sub_255D5C258(v40, v347, v41, 1);
            sub_255D34858(v41);

            v35 = v374;
            if (v133)
            {
              v135 = sub_255D3CA20(v40, v347);
              if (v136)
              {
                v343 = v130;
                v137 = *(v132 + 56) + 32 * v135;
                v138 = *v137;
                v139 = *(v137 + 8);
                v140 = *(v137 + 16);
                v141 = *(v137 + 24);
                swift_endAccess();
                v22 = v372;
                if ((v141 & 1) == 0)
                {
                  sub_255D5C258(v138, v139, v140, 0);

                  v20 = v362;
                  v300 = v138;
                  v31 = v369;
                  goto LABEL_163;
                }

                v335 = v139;
                v339 = v138;
                v330 = v140;
                v142 = (~v140 & 0xF000000000000007) == 0;
                v20 = v362;
                v31 = v369;
                if (!v142)
                {
                  v256 = *(v343 + qword_27F7E85F8);
                  if (v256)
                  {
                    v257 = qword_27F7E8600;
                    swift_beginAccess();
                    v258 = *(v343 + v257);
                    v328 = *(v258 + 16);
                    sub_255D5C258(v138, v335, v330, 1);
                    sub_255D34858(v330);

                    v259 = v256;
                    if (v328)
                    {
                      v260 = sub_255D3CA20(v339, v335);
                      if (v261)
                      {
                        v262 = *(v258 + 56) + 32 * v260;
                        v263 = *v262;
                        v264 = *(v262 + 8);
                        v265 = *(v262 + 16);
                        v266 = *(v262 + 24);
                        swift_endAccess();
                        sub_255D5C258(v263, v264, v265, v266);
                        sub_255DDEBF8(v259, v263, v264, v265, v266, &v382);

                        sub_255D4DE84(v263, v264, v265, v266);
                        v304 = v382;
                        v20 = v362;
                        v22 = v372;
                        v35 = v374;
                        v31 = v369;
LABEL_231:
                        if ((~v304 & 0xF000000000000007) != 0)
                        {
                          v296 = v304;
                          sub_255DE08EC(v304, v343, v330, &v380);
                          sub_255D5C324(v296);
                          sub_255D2F870(v330);

                          sub_255D4DE84(v339, v335, v330, 1);
                          v300 = v380;
                          goto LABEL_163;
                        }

                        sub_255D5C33C();
                        v368 = swift_allocError();
                        v286 = v335;
                        *v295 = v339;
                        *(v295 + 8) = v335;
                        *(v295 + 16) = &type metadata for DecodableState;
                        *(v295 + 32) = 0;
                        swift_willThrow();

                        v288 = v330;
                        sub_255D2F870(v330);

LABEL_234:

                        sub_255D4DE84(v339, v286, v288, 1);
                        v196 = v347;
                        v134 = v349;
LABEL_127:
                        v382 = v134;
                        v383 = v196;
                        v197 = *(*v3 + 112);
                        swift_beginAccess();
                        v198 = *(v3 + v197);
                        if (*(v198 + 16))
                        {

                          v199 = sub_255D3CA20(v349, v347);
                          if (v200)
                          {
                            v201 = *(*(v198 + 56) + 8 * v199);

                            MEMORY[0x28223BE20](v202);
                            v203 = swift_getKeyPath();
                            MEMORY[0x28223BE20](v203);
                            swift_getKeyPath();
                            sub_255E38728();

                            if ((v201 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_263;
                            }

                            v20 = v362;
                            v22 = v372;
                            if (v201 >= *(v380 + 16))
                            {
                              goto LABEL_267;
                            }

                            v380 = *(v380 + 8 * v201 + 32);

                            v35 = v374;
                            v31 = v369;
                            goto LABEL_162;
                          }
                        }

                        v213 = *(v3 + *(*v3 + 120));
                        if (v213)
                        {
                          (*(*v213 + 248))(&v380, &v382);
                        }

                        else
                        {
                          v380 = 0xF000000000000007;
                        }

LABEL_162:
                        v300 = v380;
LABEL_163:
                        if ((~v300 & 0xF000000000000007) != 0)
                        {
                          sub_255DE08EC(v300, v3, v345, &v381);
                          sub_255D5C324(v300);
                          sub_255D2F870(v345);

                          sub_255D4DE84(v349, v347, v345, 1);
                          v123 = v381;
                          v389[0] = v381;
                          a1 = v361;
                          goto LABEL_79;
                        }

                        sub_255D5C33C();
                        v227 = v22;
                        v228 = v35;
                        v229 = swift_allocError();
                        v219 = v347;
                        *v230 = v349;
                        *(v230 + 8) = v347;
                        *(v230 + 16) = &type metadata for DecodableState;
                        *(v230 + 32) = 0;
                        swift_willThrow();

                        sub_255D2F870(v345);
                        v231 = v229;
                        v35 = v228;
                        v22 = v227;
                        v31 = v369;

                        a1 = v361;
LABEL_166:

                        sub_255D4DE84(v349, v219, v345, 1);
LABEL_58:
                        v382 = v22;
                        v383 = v35;
                        v107 = *(*a1 + 112);
                        swift_beginAccess();
                        v108 = *(a1 + v107);
                        if (*(v108 + 16))
                        {

                          v109 = sub_255D3CA20(v22, v35);
                          if (v110)
                          {
                            v3 = *(*(v108 + 56) + 8 * v109);

                            MEMORY[0x28223BE20](v111);
                            v112 = swift_getKeyPath();
                            MEMORY[0x28223BE20](v112);
                            swift_getKeyPath();
                            sub_255E38728();

                            if ((v3 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_256;
                            }

                            v20 = v362;
                            if (v3 >= *(v381 + 16))
                            {
                              goto LABEL_258;
                            }

                            v389[0] = *(v381 + 8 * v3 + 32);

                            v22 = v372;
                            v35 = v374;
                            v31 = v369;
                            goto LABEL_78;
                          }
                        }

                        v121 = *(a1 + *(*a1 + 120));
                        if (v121)
                        {
                          (*(*v121 + 248))(v389, &v382);
                        }

                        else
                        {
                          v389[0] = 0xF000000000000007;
                        }

LABEL_78:
                        v123 = v389[0];
LABEL_79:
                        if ((~v123 & 0xF000000000000007) == 0)
                        {
                          sub_255D5C324(v123);
                          sub_255D5C33C();
                          v21 = swift_allocError();
                          *v124 = v22;
                          *(v124 + 8) = v35;
                          *(v124 + 16) = &type metadata for DecodableState;
                          *(v124 + 32) = 0;
                          swift_willThrow();

                          goto LABEL_9;
                        }

                        v3 = a1;
                        v125 = v31;
                        v126 = v22;
                        v127 = v35;
                        v128 = v123;
                        sub_255D5C30C(v123);
                        sub_255D5C324(v128);
                        v57 = v128;
                        v35 = v127;
                        v22 = v126;
                        v31 = v125;
                        a1 = v3;
                        goto LABEL_31;
                      }
                    }

                    swift_endAccess();

                    v20 = v362;
                    v281 = v339;
                  }

                  else
                  {
                    v281 = v138;
                    sub_255D5C258(v138, v335, v330, 1);
                    sub_255D34858(v330);
                  }

                  sub_255DE3530(v281, v335, &v382);
                  v304 = v382;
                  goto LABEL_231;
                }

                v143 = *(v343 + qword_27F7E85F8);
                if (v143)
                {
                  v144 = qword_27F7E8600;
                  swift_beginAccess();
                  v316 = *(v343 + v144);
                  v320 = *(v316 + 16);
                  v145 = v335;
                  sub_255D5C258(v339, v335, v330, 1);
                  v325 = v143;

                  if (v320)
                  {
                    v146 = sub_255D3CA20(v339, v335);
                    if (v147)
                    {
                      v148 = *(v316 + 56) + 32 * v146;
                      v149 = *v148;
                      v150 = *(v148 + 8);
                      v151 = *(v148 + 16);
                      v152 = *(v148 + 24);
                      swift_endAccess();
                      sub_255D5C258(v149, v150, v151, v152);
                      sub_255DDEBF8(v325, v149, v150, v151, v152, &v382);

                      sub_255D4DE84(v149, v150, v151, v152);
                      v300 = v382;
                      v20 = v362;
                      v22 = v372;
                      v35 = v374;
                      v31 = v369;
LABEL_209:
                      if ((~v300 & 0xF000000000000007) != 0)
                      {
                        sub_255D5C30C(v300);
                        sub_255D5C324(v300);

                        sub_255D4DE84(v339, v335, v330, 1);
                        goto LABEL_163;
                      }

                      sub_255D5C324(v300);
                      sub_255D5C33C();
                      v365 = swift_allocError();
                      v286 = v335;
                      *v287 = v339;
                      *(v287 + 8) = v335;
                      *(v287 + 16) = &type metadata for DecodableState;
                      *(v287 + 32) = 0;
                      swift_willThrow();

                      v288 = v330;
                      goto LABEL_234;
                    }
                  }

                  swift_endAccess();

                  v20 = v362;
                }

                else
                {
                  v145 = v335;

                  sub_255D34858(v330);
                }

                sub_255DE3530(v339, v145, &v379);
                v300 = v379;
                goto LABEL_209;
              }
            }

            swift_endAccess();

            v20 = v362;
          }

          else
          {
            v134 = v40;
            sub_255D5C258(v40, v347, v41, 1);
            sub_255D34858(v41);
            v35 = v374;
          }

          v22 = v372;
          v196 = v347;
          v31 = v369;
          goto LABEL_127;
        }

        v73 = *(a1 + v356);
        v31 = v27[1];
        if (!v73)
        {
          v113 = *(v28 + 16);
          v35 = *(v28 + 8);
          sub_255D5C258(v22, v374, v113, 1);

          sub_255D34858(v113);
          goto LABEL_64;
        }

        swift_beginAccess();
        v74 = *(a1 + v353);
        v75 = *(v74 + 16);
        sub_255D5C258(v22, v374, v30, 1);

        v76 = v30;
        v35 = v374;
        sub_255D34858(v76);

        if (!v75 || (v77 = sub_255D3CA20(v372, v374), (v78 & 1) == 0))
        {
          swift_endAccess();

          v20 = v362;
          goto LABEL_64;
        }

        v350 = v73;
        v79 = *(v74 + 56) + 32 * v77;
        v80 = *v79;
        v81 = *(v79 + 8);
        v82 = *(v79 + 16);
        v83 = *(v79 + 24);
        swift_endAccess();
        v20 = v362;
        if ((v83 & 1) == 0)
        {
          v129 = v80;
          v3 = v372;
          sub_255D5C258(v129, v81, v82, 0);

          v35 = v374;
          v31 = v369;
          goto LABEL_84;
        }

        v346 = v81;
        v348 = v80;
        v84 = v82;
        v342 = v82;
        if ((~v82 & 0xF000000000000007) == 0)
        {
          v85 = *(v350 + qword_27F7E85F8);
          if (!v85)
          {
            v89 = v346;

            sub_255D34858(v82);
            v180 = v348;
            v35 = v374;
            v31 = v369;
            goto LABEL_120;
          }

          v86 = qword_27F7E8600;
          swift_beginAccess();
          v87 = *(v350 + v86);
          v88 = *(v87 + 16);
          v89 = v346;
          sub_255D5C258(v348, v346, v82, 1);
          v338 = v85;

          v31 = v369;
          if (!v88 || (v90 = sub_255D3CA20(v348, v346), (v91 & 1) == 0))
          {
            swift_endAccess();

            v20 = v362;
            v180 = v348;
            v35 = v374;
            goto LABEL_120;
          }

          v92 = *(v87 + 56) + 32 * v90;
          v329 = *(v92 + 8);
          v334 = *v92;
          v93 = *(v92 + 16);
          v94 = *(v92 + 24);
          swift_endAccess();
          v20 = v362;
          v35 = v374;
          if ((v94 & 1) == 0)
          {
            sub_255D5C258(v334, v329, v93, 0);

            v222 = v334;
            v381 = v334;
            goto LABEL_158;
          }

          v324 = v93;
          if ((~v93 & 0xF000000000000007) == 0)
          {
            v95 = *(v338 + qword_27F7E85F8);
            if (v95)
            {
              v96 = qword_27F7E8600;
              swift_beginAccess();
              v312 = *(v338 + v96);
              v315 = *(v312 + 16);
              v97 = v329;
              sub_255D5C258(v334, v329, v324, 1);
              v319 = v95;

              if (v315)
              {
                v98 = sub_255D3CA20(v334, v329);
                if (v99)
                {
                  v100 = *(v312 + 56) + 32 * v98;
                  v101 = *v100;
                  v102 = *(v100 + 8);
                  v103 = *(v100 + 16);
                  v104 = *(v100 + 24);
                  swift_endAccess();
                  sub_255D5C258(v101, v102, v103, v104);
                  sub_255DDEBF8(v319, v101, v102, v103, v104, &v382);

                  sub_255D4DE84(v101, v102, v103, v104);
                  v299 = v382;
                  a1 = v361;
                  v20 = v362;
                  v22 = v372;
                  v35 = v374;
                  v31 = v369;
LABEL_204:
                  if ((~v299 & 0xF000000000000007) != 0)
                  {
                    sub_255D5C30C(v299);
                    sub_255D5C324(v299);

                    sub_255D4DE84(v334, v329, v324, 1);
                    v381 = v299;
                    v222 = v299;
                    goto LABEL_158;
                  }

                  sub_255D5C324(v299);
                  sub_255D5C33C();
                  v364 = swift_allocError();
                  v283 = v329;
                  v284 = v334;
                  *v285 = v334;
                  *(v285 + 8) = v329;
                  *(v285 + 16) = &type metadata for DecodableState;
                  *(v285 + 32) = 0;
                  swift_willThrow();
                  a1 = v361;

                  goto LABEL_228;
                }
              }

              swift_endAccess();

              v20 = v362;
            }

            else
            {
              v97 = v329;

              sub_255D34858(v324);
            }

            sub_255DE3530(v334, v97, &v379);
            v299 = v379;
            goto LABEL_204;
          }

          v246 = *(v338 + qword_27F7E85F8);
          if (v246)
          {
            v247 = qword_27F7E8600;
            swift_beginAccess();
            v314 = *(v338 + v247);
            v318 = *(v314 + 16);
            sub_255D5C258(v334, v329, v324, 1);
            sub_255D34858(v324);
            v323 = v246;
            v248 = v334;

            if (v318)
            {
              v249 = sub_255D3CA20(v334, v329);
              if (v250)
              {
                v251 = *(v314 + 56) + 32 * v249;
                v252 = *v251;
                v253 = *(v251 + 8);
                v254 = *(v251 + 16);
                v255 = *(v251 + 24);
                swift_endAccess();
                sub_255D5C258(v252, v253, v254, v255);
                sub_255DDEBF8(v323, v252, v253, v254, v255, &v382);

                sub_255D4DE84(v252, v253, v254, v255);
                v302 = v382;
                v20 = v362;
                v22 = v372;
                v35 = v374;
                v31 = v369;
                v303 = v324;
LABEL_225:
                if ((~v302 & 0xF000000000000007) != 0)
                {
                  sub_255DE08EC(v302, v338, v303, &v380);
                  sub_255D5C324(v302);
                  sub_255D2F870(v303);

                  sub_255D4DE84(v334, v329, v303, 1);
                  v222 = v380;
                  v381 = v380;
                  a1 = v361;
                  goto LABEL_158;
                }

                sub_255D5C33C();
                v367 = swift_allocError();
                v283 = v329;
                v284 = v334;
                *v294 = v334;
                *(v294 + 8) = v329;
                *(v294 + 16) = &type metadata for DecodableState;
                *(v294 + 32) = 0;
                swift_willThrow();

                sub_255D2F870(v324);

                a1 = v361;
LABEL_228:

                sub_255D4DE84(v284, v283, v324, 1);
                v89 = v346;
                v180 = v348;
LABEL_120:
                v382 = v180;
                v383 = v89;
                v189 = *(*v350 + 112);
                swift_beginAccess();
                v190 = *(v350 + v189);
                if (*(v190 + 16))
                {

                  v191 = sub_255D3CA20(v348, v346);
                  if (v192)
                  {
                    v193 = *(*(v190 + 56) + 8 * v191);

                    MEMORY[0x28223BE20](v194);
                    v195 = swift_getKeyPath();
                    MEMORY[0x28223BE20](v195);
                    swift_getKeyPath();
                    sub_255E38728();

                    if ((v193 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_262;
                    }

                    v20 = v362;
                    v31 = v369;
                    if (v193 >= *(v380 + 16))
                    {
                      goto LABEL_266;
                    }

                    v381 = *(v380 + 8 * v193 + 32);

                    a1 = v361;
                    v22 = v372;
                    v35 = v374;
                    goto LABEL_157;
                  }
                }

                v212 = *(v350 + *(*v350 + 120));
                if (v212)
                {
                  (*(*v212 + 248))(&v381, &v382);
                }

                else
                {
                  v381 = 0xF000000000000007;
                }

LABEL_157:
                v222 = v381;
LABEL_158:
                if ((~v222 & 0xF000000000000007) != 0)
                {
                  v3 = v22;
                  v129 = v222;
                  sub_255D5C30C(v222);
                  sub_255D5C324(v129);

                  sub_255D4DE84(v348, v346, v342, 1);
                  goto LABEL_84;
                }

                sub_255D5C324(v222);
                sub_255D5C33C();
                v223 = swift_allocError();
                *v224 = v348;
                *(v224 + 8) = v346;
                *(v224 + 16) = &type metadata for DecodableState;
                *(v224 + 32) = 0;
                swift_willThrow();
                a1 = v361;

                v225 = v223;
                v226 = v348;
                v35 = v374;

                goto LABEL_172;
              }
            }

            swift_endAccess();

            v20 = v362;
            v280 = v329;
            v303 = v324;
          }

          else
          {
            v280 = v329;
            v248 = v334;
            v303 = v324;
            sub_255D5C258(v334, v329, v324, 1);
            sub_255D34858(v324);
          }

          sub_255DE3530(v248, v280, &v382);
          v302 = v382;
          goto LABEL_225;
        }

        v153 = *(v350 + qword_27F7E85F8);
        if (!v153)
        {
          v160 = v81;
          v158 = v348;
          sub_255D5C258(v348, v81, v84, 1);
          sub_255D34858(v84);
          goto LABEL_133;
        }

        v154 = v84;
        v155 = qword_27F7E8600;
        swift_beginAccess();
        v156 = *(v350 + v155);
        v157 = *(v156 + 16);
        v158 = v348;
        sub_255D5C258(v348, v81, v154, 1);
        v159 = v154;
        v160 = v81;
        sub_255D34858(v159);

        if (!v157 || (v161 = sub_255D3CA20(v348, v81), (v162 & 1) == 0))
        {
          swift_endAccess();

          v20 = v362;
LABEL_133:
          v31 = v369;
          goto LABEL_134;
        }

        v340 = v153;
        v163 = *(v156 + 56) + 32 * v161;
        v165 = *v163;
        v164 = *(v163 + 8);
        v166 = *(v163 + 16);
        v167 = *(v163 + 24);
        swift_endAccess();
        v31 = v369;
        if ((v167 & 1) == 0)
        {
          sub_255D5C258(v165, v164, v166, 0);

          v20 = v362;
LABEL_177:
          v168 = v350;
          goto LABEL_169;
        }

        v331 = v164;
        v336 = v165;
        v326 = v166;
        v142 = (~v166 & 0xF000000000000007) == 0;
        v20 = v362;
        v168 = v350;
        if (!v142)
        {
          v267 = v340;
          v268 = *(v340 + qword_27F7E85F8);
          if (v268)
          {
            v269 = qword_27F7E8600;
            swift_beginAccess();
            v270 = *(v340 + v269);
            v271 = *(v270 + 16);
            sub_255D5C258(v336, v331, v326, 1);
            sub_255D34858(v326);

            if (v271)
            {
              v272 = sub_255D3CA20(v336, v331);
              if (v273)
              {
                v274 = *(v270 + 56) + 32 * v272;
                v275 = *v274;
                v276 = *(v274 + 8);
                v277 = *(v274 + 16);
                v278 = *(v274 + 24);
                swift_endAccess();
                sub_255D5C258(v275, v276, v277, v278);
                sub_255DDEBF8(v268, v275, v276, v277, v278, &v382);

                sub_255D4DE84(v275, v276, v277, v278);
                v305 = v382;
                v20 = v362;
                v22 = v372;
                v31 = v369;
                v267 = v340;
LABEL_237:
                if ((~v305 & 0xF000000000000007) != 0)
                {
                  sub_255DE08EC(v305, v267, v326, &v381);
                  sub_255D5C324(v305);
                  sub_255D2F870(v326);

                  sub_255D4DE84(v336, v331, v326, 1);
                  v165 = v381;
                  goto LABEL_177;
                }

                sub_255D5C33C();
                v297 = swift_allocError();
                v290 = v331;
                *v298 = v336;
                *(v298 + 8) = v331;
                *(v298 + 16) = &type metadata for DecodableState;
                *(v298 + 32) = 0;
                swift_willThrow();

                v292 = v326;
                sub_255D2F870(v326);

                goto LABEL_240;
              }
            }

            swift_endAccess();

            v20 = v362;
            v282 = v336;
            v267 = v340;
          }

          else
          {
            v282 = v336;
            sub_255D5C258(v336, v331, v326, 1);
            sub_255D34858(v326);
          }

          sub_255DE3530(v282, v331, &v382);
          v305 = v382;
          goto LABEL_237;
        }

        v169 = *(v340 + qword_27F7E85F8);
        if (!v169)
        {
          v172 = v331;

          sub_255D34858(v326);
          goto LABEL_213;
        }

        v170 = qword_27F7E8600;
        swift_beginAccess();
        v313 = *(v340 + v170);
        v317 = *(v313 + 16);
        v171 = v169;
        v172 = v331;
        sub_255D5C258(v336, v331, v326, 1);
        v321 = v171;

        if (!v317 || (v173 = sub_255D3CA20(v336, v331), (v174 & 1) == 0))
        {
          swift_endAccess();

          v20 = v362;
LABEL_213:
          sub_255DE3530(v336, v172, &v380);
          v165 = v380;
          goto LABEL_214;
        }

        v175 = *(v313 + 56) + 32 * v173;
        v176 = *v175;
        v177 = *(v175 + 8);
        v178 = *(v175 + 16);
        v179 = *(v175 + 24);
        swift_endAccess();
        sub_255D5C258(v176, v177, v178, v179);
        sub_255DDEBF8(v321, v176, v177, v178, v179, &v382);

        sub_255D4DE84(v176, v177, v178, v179);
        v165 = v382;
        v20 = v362;
        v22 = v372;
        v31 = v369;
        v168 = v350;
LABEL_214:
        if ((~v165 & 0xF000000000000007) != 0)
        {
          sub_255D5C30C(v165);
          sub_255D5C324(v165);

          sub_255D4DE84(v336, v331, v326, 1);
          goto LABEL_169;
        }

        sub_255D5C324(v165);
        sub_255D5C33C();
        v289 = swift_allocError();
        v290 = v331;
        *v291 = v336;
        *(v291 + 8) = v331;
        *(v291 + 16) = &type metadata for DecodableState;
        *(v291 + 32) = 0;
        swift_willThrow();

        v292 = v326;
LABEL_240:

        sub_255D4DE84(v336, v290, v292, 1);
        v158 = v348;
LABEL_134:
        v382 = v158;
        v383 = v160;
        v168 = v350;
        v204 = *(*v350 + 112);
        swift_beginAccess();
        v205 = *(v350 + v204);
        if (*(v205 + 16))
        {

          v206 = sub_255D3CA20(v348, v160);
          if (v207)
          {
            v208 = *(*(v205 + 56) + 8 * v206);

            MEMORY[0x28223BE20](v209);
            v210 = swift_getKeyPath();
            MEMORY[0x28223BE20](v210);
            swift_getKeyPath();
            sub_255E38728();

            if ((v208 & 0x8000000000000000) != 0)
            {
              goto LABEL_261;
            }

            v20 = v362;
            v31 = v369;
            if (v208 >= *(v381 + 16))
            {
              goto LABEL_265;
            }

            v381 = *(v381 + 8 * v208 + 32);

            v22 = v372;
            goto LABEL_168;
          }
        }

        v214 = *(v350 + *(*v350 + 120));
        if (v214)
        {
          (*(*v214 + 248))(&v381, &v382);
        }

        else
        {
          v381 = 0xF000000000000007;
        }

LABEL_168:
        v165 = v381;
LABEL_169:
        if ((~v165 & 0xF000000000000007) != 0)
        {
          v3 = v22;
          sub_255DE08EC(v165, v168, v342, v389);
          sub_255D5C324(v165);
          sub_255D2F870(v342);

          sub_255D4DE84(v348, v346, v342, 1);
          v129 = v389[0];
          a1 = v361;
          v35 = v374;
          goto LABEL_84;
        }

        sub_255D5C33C();
        v232 = swift_allocError();
        v226 = v348;
        *v233 = v348;
        *(v233 + 8) = v160;
        *(v233 + 16) = &type metadata for DecodableState;
        *(v233 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(v342);

        a1 = v361;
        v35 = v374;
LABEL_172:

        sub_255D4DE84(v226, v346, v342, 1);
LABEL_64:
        v382 = v22;
        v383 = v35;
        v114 = *(*a1 + 112);
        swift_beginAccess();
        v115 = *(a1 + v114);
        if (*(v115 + 16))
        {

          v116 = sub_255D3CA20(v22, v35);
          if (v117)
          {
            v118 = *(*(v115 + 56) + 8 * v116);

            MEMORY[0x28223BE20](v119);
            v120 = swift_getKeyPath();
            MEMORY[0x28223BE20](v120);
            swift_getKeyPath();
            sub_255E38728();

            if ((v118 & 0x8000000000000000) != 0)
            {
              goto LABEL_257;
            }

            v20 = v362;
            if (v118 >= *(v389[0] + 16))
            {
              goto LABEL_259;
            }

            v389[0] = *(v389[0] + 8 * v118 + 32);

            v3 = v372;
            v35 = v374;
            v31 = v369;
            goto LABEL_83;
          }
        }

        v3 = v22;
        v122 = *(a1 + *(*a1 + 120));
        if (v122)
        {
          (*(*v122 + 248))(v389, &v382);
        }

        else
        {
          v389[0] = 0xF000000000000007;
        }

LABEL_83:
        v129 = v389[0];
LABEL_84:
        if ((~v129 & 0xF000000000000007) == 0)
        {
          sub_255D5C33C();
          v21 = swift_allocError();
          v22 = v3;
          *v23 = v3;
          *(v23 + 8) = v35;
          *(v23 + 16) = &type metadata for DecodableState;
          *(v23 + 32) = 0;
          swift_willThrow();

          sub_255D2F870(v376);
LABEL_9:

          v386 = v378;
          v387 = v31;
          a1 = v361;
          goto LABEL_10;
        }

        sub_255DE08EC(v129, a1, v376, &v386);
        v22 = v3;
        sub_255D5C324(v129);
        sub_255D2F870(v376);
        v57 = v386;
        a1 = v361;
        v35 = v374;
LABEL_31:
        v386 = v378;
        v387 = v31;
        if ((~v57 & 0xF000000000000007) != 0)
        {
          break;
        }

LABEL_10:

        sub_255D4DE84(v22, v35, v376, v371);
        v17 = i;
      }

      v373 = v22;
      v375 = v35;
      v58 = v57;
      v59 = *(*a1 + 112);
      swift_beginAccess();
      v60 = *(a1 + v59);
      v61 = *(v60 + 16);

      if (!v61)
      {
        goto LABEL_55;
      }

      v62 = sub_255D3CA20(v378, v31);
      if (v63)
      {
        break;
      }

LABEL_55:
      v105 = *(a1 + *(*a1 + 120));
      if (v105)
      {
        v382 = v58;
        v106 = *(*v105 + 256);
        v3 = *v105 + 256;
        sub_255D5C30C(v58);

        v106(&v382, &v386);

        sub_255D5C324(v58);
      }

      else
      {
        sub_255DD5C54(v378, v31, v58);
        sub_255D5C324(v58);
        swift_bridgeObjectRelease_n();
      }

      sub_255D4DE84(v22, v375, v376, v371);
      v20 = v362;
      v17 = i;
    }

    v64 = *(*(v60 + 56) + 8 * v62);

    MEMORY[0x28223BE20](v65);
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    swift_getKeyPath();
    v67 = sub_255E38718();
    v3 = v68;
    v69 = *v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_254;
    }

LABEL_36:
    if (v64 >= *(v69 + 2))
    {
      goto LABEL_255;
    }

    v71 = &v69[8 * v64];
    v72 = *(v71 + 4);
    *(v71 + 4) = v58;

    v67(&v382, 0);

    sub_255D5C324(v58);

    sub_255D4DE84(v373, v375, v376, v371);
    a1 = v361;
    v20 = v362;
  }

  v69 = sub_255DF5ECC(v69);
  *v3 = v69;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
}

uint64_t sub_255D570D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v39 = MEMORY[0x277D84F90];
  sub_255DE5D20(0, v1, 0);
  v2 = v39;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_255E3A938();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v32 = v3 + 72;
  v33 = v1;
  v34 = v9;
  v35 = v3 + 64;
  v36 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v37 = v8;
    v12 = *(v3 + 56);
    v13 = (*(v3 + 48) + 16 * v7);
    v14 = *v13;
    v15 = v13[1];
    v16 = v12 + 32 * v7;
    v38 = v2;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    swift_bridgeObjectRetain_n();
    sub_255D5C258(v18, v17, v19, v20);
    sub_255D5C258(v18, v17, v19, v20);

    sub_255D4DE84(v18, v17, v19, v20);
    MEMORY[0x259C4E8F0](v14, v15);
    MEMORY[0x259C4E8F0](2112800, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    sub_255E3AAC8();

    v21 = v17;
    v2 = v38;
    result = sub_255D4DE84(v18, v21, v19, v20);
    v23 = *(v38 + 16);
    v22 = *(v38 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_255DE5D20((v22 > 1), v23 + 1, 1);
      v2 = v38;
    }

    *(v2 + 16) = v23 + 1;
    v24 = v2 + 16 * v23;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0xE000000000000000;
    v3 = v36;
    v10 = 1 << *(v36 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v35;
    v25 = *(v35 + 8 * v11);
    if ((v25 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v34;
    if (v34 != *(v36 + 36))
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v7 & 0x3F));
    if (v26)
    {
      v10 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v11 << 6;
      v28 = v11 + 1;
      v29 = (v32 + 8 * v11);
      while (v28 < (v10 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_255D5C390(v7, v34, 0);
          v10 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_255D5C390(v7, v34, 0);
    }

LABEL_4:
    v8 = v37 + 1;
    v7 = v10;
    if (v37 + 1 == v33)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_255D573FC(uint64_t a1)
{
  v3 = sub_255E3A3B8();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_255E3A3D8();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *v1;
  v25[1] = v1[1];
  v25[2] = v11;
  v25[3] = v12;
  v26 = *(v1 + 64);
  v25[0] = v13;
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v14 = sub_255E3A878();
  v15 = swift_allocObject();
  v16 = v1[3];
  *(v15 + 48) = v1[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = *(v1 + 64);
  v17 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v17;
  *(v15 + 88) = a1;
  aBlock[4] = sub_255D5C39C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255D5D0C8;
  aBlock[3] = &block_descriptor_115;
  v18 = _Block_copy(aBlock);
  sub_255D5C3C4(v25, v23);

  sub_255E3A3C8();
  v23[0] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v10, v6, v18);
  _Block_release(v18);

  (*(v22 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v21);
}

uint64_t sub_255D57750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636E657265666572;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x636E657265666572;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D577F8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5787C()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D578EC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5796C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D579CC(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x636E657265666572;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D57A0C()
{
  if (*v0)
  {
    result = 0x636E657265666572;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_255D57A48@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D57AAC(uint64_t a1)
{
  v2 = sub_255D5CEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D57AE8(uint64_t a1)
{
  v2 = sub_255D5CEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D57B24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v70 = *(v73 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B88, &qword_255E3F070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B90, &qword_255E3F078);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5CEF8();
  sub_255E3AE28();
  if (v2)
  {

    (*(v11 + 56))(v9, 1, 1, v10);
    sub_255D395E4(v9, &qword_27F7E6B88, &qword_255E3F070);
  }

  else
  {
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    LOBYTE(v84) = 1;
    if (sub_255E3ABE8())
    {
      sub_255D3CE1C(a1, &v84);
      sub_255D8F230(&v84, &v79);
      v68 = a1;
      v59 = *(&v79 + 1);
      v60 = v79;
      v78 = v80;
      v61 = BYTE8(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
      LOBYTE(v79) = 0;
      sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
      sub_255E3ABC8();
      (*(v11 + 8))(v14, v10);
      v95 = 0;
      v62 = 0;
      v64 = v84;
      v63 = v85;
      v65 = v86;
      v66 = v87;
      v67 = v78;
LABEL_23:
      *&v79 = v62;
      *(&v79 + 1) = v60;
      *&v80 = v59;
      *(&v80 + 1) = v67;
      LOBYTE(v81) = v61;
      *(&v81 + 1) = v94[0];
      DWORD1(v81) = *(v94 + 3);
      *(&v81 + 1) = v64;
      *&v82 = v63;
      *(&v82 + 1) = v65;
      v83 = v66;
      v53 = v69;
      *(v69 + 64) = v66;
      v54 = v82;
      v53[2] = v81;
      v53[3] = v54;
      v55 = v80;
      *v53 = v79;
      v53[1] = v55;
      v56 = v61;
      v57 = v67;
      sub_255D5C3C4(&v79, &v84);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v84 = v62;
      v85 = v60;
      v86 = v59;
      v87 = v57;
      v88 = v56;
      *v89 = v94[0];
      *&v89[3] = *(v94 + 3);
      v90 = v64;
      v91 = v63;
      v92 = v65;
      v93 = v66;
      return sub_255D5CF4C(&v84);
    }

    (*(v11 + 8))(v14, v10);
  }

  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3CAFC();
  v17 = v74;
  sub_255E3AE28();
  v95 = 0;
  v68 = a1;
  v18 = sub_255E3ABD8();
  v19 = v18;
  v72 = *(v18 + 16);
  if (!v72)
  {
    v62 = MEMORY[0x277D84F98];
LABEL_22:
    (*(v70 + 8))(v17, v73);

    v65 = 0;
    v63 = 0;
    v64 = 0;
    v67 = 0;
    v59 = 0;
    v60 = 0;
    v66 = -1;
    v61 = -1;
    goto LABEL_23;
  }

  v20 = 0;
  v62 = MEMORY[0x277D84F98];
  v21 = (v18 + 56);
  v71 = v18;
  while (v20 < *(v19 + 16))
  {
    v27 = v62;
    v77 = v21;
    v78 = v20;
    v29 = *(v21 - 3);
    v28 = *(v21 - 2);
    v30 = *v21;
    v31 = v17;
    v32 = *(v21 - 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    *&v79 = v29;
    *(&v79 + 1) = v28;
    *&v80 = v32;
    BYTE8(v80) = v30;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
    swift_bridgeObjectRetain_n();
    v33 = v95;
    sub_255E3ABC8();
    if (v33)
    {
      (*(v70 + 8))(v31, v73);

      swift_bridgeObjectRelease_n();
      return __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    v95 = 0;

    v34 = v85;
    v75 = v84;
    v76 = v86;
    v35 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v27;
    v38 = sub_255D3CA20(v29, v28);
    v39 = v27[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_26;
    }

    v42 = v37;
    if (v27[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_255D824D4();
      }
    }

    else
    {
      sub_255D80994(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_255D3CA20(v29, v28);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_28;
      }

      v38 = v43;
    }

    v45 = v35;
    v46 = v75;
    v47 = v76;
    if (v42)
    {

      v62 = v79;
      v22 = *(v79 + 56) + 32 * v38;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      *v22 = v46;
      *(v22 + 8) = v34;
      *(v22 + 16) = v47;
      *(v22 + 24) = v45;
      sub_255D4DE84(v23, v24, v25, v26);
    }

    else
    {
      v62 = v79;
      *(v79 + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v48 = (v62[6] + 16 * v38);
      *v48 = v29;
      v48[1] = v28;
      v49 = v62[7] + 32 * v38;
      *v49 = v46;
      *(v49 + 8) = v34;
      *(v49 + 16) = v47;
      *(v49 + 24) = v45;
      v50 = v62[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_27;
      }

      v62[2] = v52;
    }

    v20 = v78 + 1;
    v21 = v77 + 32;
    v17 = v74;
    v19 = v71;
    if (v72 == v78 + 1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255D5833C(uint64_t a1)
{
  sub_255D573FC(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_255D583DC()
{
  sub_255E3AD98();
  MEMORY[0x259C4F100](0);
  return sub_255E3ADD8();
}

uint64_t sub_255D58420()
{
  sub_255E3AD98();
  MEMORY[0x259C4F100](0);
  return sub_255E3ADD8();
}

uint64_t sub_255D58470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255D584F8(uint64_t a1)
{
  v2 = sub_255D5BB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D58534(uint64_t a1)
{
  v2 = sub_255D5BB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D58570(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_255E3A3B8();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_255E3A3D8();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255D5868C, 0, 0);
}

uint64_t sub_255D5868C()
{
  v2 = v0[9];
  v1 = v0[10];
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = *(v1 + 32);
  v24 = *(v1 + 40);
  sub_255D3E5A8(v21, v22, v23, v24);
  v3 = StringResolvable.resolved(with:)(v2);
  v5 = v4;
  v6 = v0[16];
  v7 = v0[13];
  v19 = v0[15];
  v20 = v0[14];
  v8 = v0[11];
  v18 = v0[12];
  v9 = v0[10];
  sub_255D38060(v21, v22, v23, v24);
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v17 = sub_255E3A878();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v5;
  v10[4] = v9;
  v0[6] = sub_255D5BB64;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_255D5D0C8;
  v0[5] = &block_descriptor_63;
  v11 = _Block_copy(v0 + 2);

  sub_255E3A3C8();
  v0[8] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v6, v7, v11);
  _Block_release(v11);

  (*(v18 + 8))(v7, v8);
  (*(v19 + 8))(v6, v20);
  v12 = v0[7];

  v13 = v0[16];
  v14 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_255D58960(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v40 = a3;
  v42 = a1;
  v4 = sub_255E38958();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B10, &qword_255E3E9A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_255E38588();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v20 = sub_255E386A8();
  __swift_project_value_buffer(v20, qword_27F8152D8);

  v21 = sub_255E38688();
  v22 = sub_255E3A868();

  v23 = os_log_type_enabled(v21, v22);
  v39 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v37 = v7;
    v25 = v4;
    v26 = v24;
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_255D378C0(v42, a2, &v43);
    _os_log_impl(&dword_255D2E000, v21, v22, "Open URL Action: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x259C4F9E0](v27, -1, -1);
    v28 = v26;
    v4 = v25;
    v7 = v37;
    MEMORY[0x259C4F9E0](v28, -1, -1);
  }

  sub_255E38578();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_255D395E4(v15, &qword_27F7E6B28, &unk_255E48060);
  }

  v30 = v38;
  (*(v17 + 32))(v38, v15, v16);
  v31 = OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction;
  v32 = v40;
  swift_beginAccess();
  v33 = v32 + v31;
  v34 = v39;
  sub_255D3957C(v33, v39, &qword_27F7E6B10, &qword_255E3E9A8);
  if ((*(v41 + 48))(v34, 1, v4))
  {
    (*(v17 + 8))(v30, v16);
    return sub_255D395E4(v34, &qword_27F7E6B10, &qword_255E3E9A8);
  }

  else
  {
    v35 = v41;
    (*(v41 + 16))(v7, v34, v4);
    sub_255D395E4(v34, &qword_27F7E6B10, &qword_255E3E9A8);
    sub_255E38948();
    (*(v35 + 8))(v7, v4);
    return (*(v17 + 8))(v30, v16);
  }
}

uint64_t sub_255D58DF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_255D58E38(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B18, qword_255E3E9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction;
  v11 = sub_255E38958();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5BB10();
  sub_255E3AE28();
  if (v2)
  {
    sub_255D395E4(v3 + OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction, &qword_27F7E6B10, &qword_255E3E9A8);
    type metadata accessor for OpenURLAction(0);
    v13 = *(*v3 + 48);
    v14 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v16 = v19;
    v17 = v20;
    *(v3 + 16) = v18;
    *(v3 + 32) = v16;
    *(v3 + 40) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_255D59080(uint64_t a1)
{
  v2 = sub_255E38958();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E38D28();
}

uint64_t sub_255D59148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26[1] = a4;
  v27 = a2;
  v8 = sub_255E3A3B8();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255E3A3D8();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v26 - v19;
  sub_255D5C2AC(0, &qword_27F7E6AD8, 0x277D85C78);
  v21 = sub_255E3A878();
  (*(v17 + 16))(v20, a1, v16);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  (*(v17 + 32))(v23 + v22, v20, v16);
  aBlock[4] = v28;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255D5D0C8;
  aBlock[3] = v29;
  v24 = _Block_copy(aBlock);

  sub_255E3A3C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_255D5AFE4(&qword_27F7E6AE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938);
  sub_255E3A928();
  MEMORY[0x259C4EBE0](0, v15, v11, v24);
  _Block_release(v24);

  (*(v32 + 8))(v11, v8);
  return (*(v30 + 8))(v15, v31);
}

uint64_t sub_255D59500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = a5(0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a2, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = *a6;
  swift_beginAccess();
  sub_255D47204(v15, a1 + v18, a3, a4);
  return swift_endAccess();
}

uint64_t sub_255D59644()
{
  sub_255D38060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D395E4(v0 + OBJC_IVAR____TtC6LiftUI13OpenURLAction_openURLAction, &qword_27F7E6B10, &qword_255E3E9A8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_255D596C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255D5D0A4;

  return sub_255D58570(a1);
}

uint64_t sub_255D59760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255D5D0A4;

  return (sub_255D5ABF0)(a1, a3, a4);
}

uint64_t sub_255D5989C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_255E38958();
  sub_255D5AFE4(&qword_27F7E6B08, MEMORY[0x277CDF708]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_255E39A98();
}

uint64_t sub_255D599F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for OpenURLAction(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_255D58E38(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_255D59A58(uint64_t a1, uint64_t a2)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = *(v2 + 20);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_255D511C4(a1, a2);
}

uint64_t sub_255D59AB4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  *v7 = v2[3];
  *&v7[9] = *(v2 + 57);
  v4 = *v2;
  v5 = v2[1];
  return sub_255D50CDC(a1, a2);
}

uint64_t sub_255D59AF8(uint64_t a1)
{
  v4 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v4;
  *(v2 + 176) = *(v1 + 160);
  v5 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v5;
  v6 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v6;
  v7 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v7;
  v8 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v8;
  v9 = swift_task_alloc();
  *(v2 + 184) = v9;
  *v9 = v2;
  v9[1] = sub_255D59BC0;

  return sub_255E1BFF4(a1);
}

uint64_t sub_255D59BC0()
{
  v1 = *(*v0 + 184);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_255D59CB4(uint64_t a1, uint64_t a2)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = *(v2 + 160);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_255D507F4(a1, a2);
}

uint64_t sub_255D59D10(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_255D50F54(a1, a2);
}

uint64_t sub_255D59D74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  *v8 = v2[4];
  *&v8[9] = *(v2 + 73);
  v4 = *v2;
  v5 = v2[1];
  return sub_255D50308(a1, a2);
}

uint64_t sub_255D59DC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_255D50580(a1, a2);
}

uint64_t sub_255D59E04(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255D59EFC;

  return v7(a1);
}

uint64_t sub_255D59EFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_255D59FF4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_255D5A068(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v7 = a4[3];
  *(v5 + 48) = a4[2];
  *(v5 + 64) = v7;
  *(v5 + 80) = a4[4];
  *(v5 + 89) = *(a4 + 73);
  v8 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  v9 = swift_task_alloc();
  *(v5 + 112) = v9;
  *v9 = v5;
  v9[1] = sub_255D5A138;

  return (sub_255E2D990)(a5);
}

uint64_t sub_255D5A138()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_255D5A22C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v7 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v7;
  *(v5 + 48) = a4[2];
  *(v5 + 57) = *(a4 + 41);
  v8 = swift_task_alloc();
  *(v5 + 80) = v8;
  *v8 = v5;
  v8[1] = sub_255D5A2F4;

  return (sub_255E2E0A8)(a5);
}

uint64_t sub_255D5A2F4()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_255D5A3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 144);
  *(v5 + 144) = *(a4 + 128);
  *(v5 + 160) = v7;
  *(v5 + 176) = *(a4 + 160);
  v8 = *(a4 + 80);
  *(v5 + 80) = *(a4 + 64);
  *(v5 + 96) = v8;
  v9 = *(a4 + 112);
  *(v5 + 112) = *(a4 + 96);
  *(v5 + 128) = v9;
  v10 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v10;
  v11 = *(a4 + 48);
  *(v5 + 48) = *(a4 + 32);
  *(v5 + 64) = v11;
  v12 = swift_task_alloc();
  *(v5 + 184) = v12;
  *v12 = v5;
  v12[1] = sub_255D5D0C4;

  return sub_255E1BFF4(a5);
}

uint64_t sub_255D5A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  sub_255D53600();
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_255D5A514(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unint64_t a5, uint64_t a6)
{
  v11 = a4[2];
  *v12 = a4[3];
  *&v12[9] = *(a4 + 57);
  v9 = *a4;
  v10 = a4[1];
  sub_255DF6C98(a5, a6);
  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_255D5A5B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 144) = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v8 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  *(v5 + 48) = a4[2];
  *(v5 + 57) = *(a4 + 41);

  return MEMORY[0x2822009F8](sub_255D5A668, 0, 0);
}

uint64_t sub_255D5A668()
{
  v1 = sub_255DDEDA0(*(v0 + 144), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = v2;
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = sub_255E3A778();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_255E3A758();
  sub_255D5CDC8(v0 + 16, v0 + 80);

  v7 = sub_255E3A748();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v10;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 73) = *(v0 + 57);
  *(v8 + 96) = v5;
  *(v8 + 104) = v1;
  *(v8 + 112) = v3;
  sub_255D51B90(0, 0, v4, &unk_255E60820, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_255D5A7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 352) = a5;
  *(v6 + 360) = a6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  v9 = *(a4 + 144);
  *(v6 + 144) = *(a4 + 128);
  *(v6 + 160) = v9;
  *(v6 + 176) = *(a4 + 160);
  v10 = *(a4 + 80);
  *(v6 + 80) = *(a4 + 64);
  *(v6 + 96) = v10;
  v11 = *(a4 + 112);
  *(v6 + 112) = *(a4 + 96);
  *(v6 + 128) = v11;
  v12 = *(a4 + 16);
  *(v6 + 16) = *a4;
  *(v6 + 32) = v12;
  v13 = *(a4 + 48);
  *(v6 + 48) = *(a4 + 32);
  *(v6 + 64) = v13;

  return MEMORY[0x2822009F8](sub_255D5A8CC, 0, 0);
}

uint64_t sub_255D5A8CC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = sub_255E3A778();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 160);
  *(v5 + 160) = *(v0 + 144);
  *(v5 + 176) = v6;
  v7 = *(v0 + 176);
  v8 = *(v0 + 96);
  *(v5 + 96) = *(v0 + 80);
  *(v5 + 112) = v8;
  v9 = *(v0 + 128);
  *(v5 + 128) = *(v0 + 112);
  *(v5 + 144) = v9;
  v10 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 16);
  *(v5 + 48) = v10;
  v11 = *(v0 + 64);
  *(v5 + 64) = *(v0 + 48);
  *(v5 + 80) = v11;
  *(v5 + 192) = v7;
  *(v5 + 200) = v3;
  *(v5 + 208) = v1;
  sub_255D5C4D4(v0 + 16, v0 + 184);

  sub_255D51B90(0, 0, v2, &unk_255E3EF78, v5);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_255D5AA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_255D5D0A4;

  return sub_255E2982C(a5, a6, v9, v10, v11);
}

uint64_t sub_255D5AAD8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return v9(a1, a2);
}

uint64_t sub_255D5ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_255D5D0A4;

  return v11(a1, a2, a3);
}

uint64_t sub_255D5AD18(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_255D5D0A4;

  return sub_255D51A58(a1, v8, v9, v1 + v6, v10, v11, v5, v4);
}

uint64_t sub_255D5AE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D51FB0(a1, v4, v5, v7, v6);
}

uint64_t sub_255D5AF1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D50138;

  return sub_255D52970(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_255D5AFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of RemoteAction.performAction()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RemoteAction.performAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_255D5D0A4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteAction.performAction(with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_255D50138;

  return v13(a1, a2, a3, a4);
}

void sub_255D5B3FC()
{
  sub_255D5B588(319, &qword_27F7E6A90, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_255D5B4D0()
{
  sub_255D5B588(319, &qword_27F7E6AB0, MEMORY[0x277CDF708]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_255D5B588(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255E3A8A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_255D5B5DC(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AB8, type metadata accessor for OpenURLAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255D5B634(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AC0, type metadata accessor for OpenURLAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255D5B68C(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AC8, type metadata accessor for DismissAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255D5B6E4(uint64_t a1)
{
  result = sub_255D5AFE4(&qword_27F7E6AD0, type metadata accessor for DismissAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_11Tm(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  a1(v1[4]);
  v4 = v1[5];

  v5 = v1[6];

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255D5B79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A4B0(a1, v4, v5, v1 + 4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_39Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_255D5BB10()
{
  result = qword_27F7E6B20;
  if (!qword_27F7E6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B20);
  }

  return result;
}

uint64_t sub_255D5BB70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D52CDC(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_255D5BC34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_255D5D0A4;

  return sub_255D59E04(a1, v5);
}

uint64_t sub_255D5BCEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255D52300(a1, v4, v5, (v1 + 4), v6);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOyAA14DecodableStateOGSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOyAA14DecodableStateOGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D5BE10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D5BE6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_255D5BEF8()
{
  result = qword_27F7E6B30;
  if (!qword_27F7E6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B30);
  }

  return result;
}

unint64_t sub_255D5BF4C(uint64_t a1)
{
  result = sub_255D5BF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D5BF74()
{
  result = qword_27F7E6B38;
  if (!qword_27F7E6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B38);
  }

  return result;
}

unint64_t sub_255D5BFC8(uint64_t a1)
{
  result = sub_255D5BFF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D5BFF0()
{
  result = qword_27F7E6B40;
  if (!qword_27F7E6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B40);
  }

  return result;
}

unint64_t sub_255D5C048()
{
  result = qword_27F7E6B48;
  if (!qword_27F7E6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B48);
  }

  return result;
}

unint64_t sub_255D5C0A0()
{
  result = qword_27F7E6B50;
  if (!qword_27F7E6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B50);
  }

  return result;
}

void sub_255D5C0F4(uint64_t a1)
{
  LOBYTE(v7) = *(v1 + 64);
  if ([objc_opt_self() isMainThread])
  {

    sub_255D53DF8(a1);
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v3 = sub_255E386A8();
    __swift_project_value_buffer(v3, qword_27F8152D8);
    v4 = sub_255E38688();
    v5 = sub_255E3A868();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_255D2E000, v4, v5, "Synchronous call to SetAction is not on main thread, falling back to default performAction", v6, 2u);
      MEMORY[0x259C4F9E0](v6, -1, -1);
    }

    sub_255D573FC(a1);
  }
}

uint64_t sub_255D5C240(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D5C258(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_255D5C258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D34858(a3);
  }

  else
  {
  }
}

uint64_t sub_255D5C2AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}